unit uSysCompromisso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIDefEditForm, ActnList, ComCtrls, ToolWin, StdCtrls, Buttons, db,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, dateutils,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP, IdMessage,
  ExtCtrls;

type
  {Ponteiro e Registro com dados do contato}
  PSysContact = ^TSysContact;
  TSysContact = record
    UserName: String;
    Type_: String;
    Name: String;
  end;
  
  TSysCompromisso = class(TIDefEditForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edData: TDateTimePicker;
    edHT: TDateTimePicker;
    cbPrioriodade: TComboBox;
    edHI: TDateTimePicker;
    cbPos: TComboBox;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    edAssunto: TEdit;
    edHisto: TMemo;
    GroupBox3: TGroupBox;
    lbUsers: TListBox;
    lbUsersCo: TListBox;
    Label8: TLabel;
    Label9: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    actAddAll: TAction;
    actAdd: TAction;
    actDel: TAction;
    actDelAll: TAction;
    IdSMTP1: TIdSMTP;
    gbSendMail: TGroupBox;
    lbMail: TListBox;
    SpeedButton5: TSpeedButton;
    actMailClose: TAction;
    actSendMail: TAction;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    IdMessage1: TIdMessage;
    procedure FormShow(Sender: TObject);
    procedure lbUsersDrawItem(Control: TWinControl; Index: Integer; Rect: TRect;
      State: TOwnerDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure lbUsersClick(Sender: TObject);
    procedure actAddExecute(Sender: TObject);
    procedure actAddAllExecute(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actMailCloseExecute(Sender: TObject);
    procedure actSendMailExecute(Sender: TObject);
    procedure cbPrioriodadeDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure cbPrioriodadeDropDown(Sender: TObject);
  private
    fItem: PSysContact;
    FTable: string;
    FRecno: string;
    FId: String;
    fRecnoSql: string;
    procedure FillContacts;
    procedure FreeContacts;
    procedure RefreshCtrls;
    procedure SetId(const Value: String);
    procedure SetRecno(const Value: string);
    procedure SetTable(const Value: string);
  public

    {Identificação do Compromisso}
    property Id: String read FId write SetId;

    {Tabela e registro que originou o compromisso}
    property Table: string read FTable write SetTable;
    property Recno: string read FRecno write SetRecno;
  end;

var
  SysCompromisso: TSysCompromisso;

implementation

uses uIUtils, mcUtils, uDM, uResources;

{$R *.dfm}

procedure TSysCompromisso.actAddAllExecute(Sender: TObject);
var
  lbBox: TListBox;
begin
  inherited;
  lbBox:= lbUsersCo;
  if TAction(Sender).Tag = 1 then
    lbBox:= lbUsers;

  lbBox.SelectAll;
  actAddExecute(Sender);
end;

procedure TSysCompromisso.actAddExecute(Sender: TObject);
var
  lbSrc, lbTrg: TListBox;
begin
  lbSrc:= lbUsers;
  lbTrg:= lbUsersCo;

  if TAction(Sender).Tag = 2 then
  begin
    lbSrc:= lbUsersCo;
    lbTrg:= lbUsers;
  end;

  lbSrc.CopySelection(lbTrg);
  lbSrc.DeleteSelected;
  RefreshCtrls;
end;

procedure TSysCompromisso.actMailCloseExecute(Sender: TObject);
begin
  gbSendMail.Visible:= False;
  actMailClose.Enabled:= False;
  lbMail.Clear;
end;

procedure TSysCompromisso.actOkExecute(Sender: TObject);
var
  i: integer;
begin
  with U do
  try
    Data.StartTransaction;

    if mcEmpty(FRecno) then
      fRecno:= 'null';

    { TODO -oRicardo : Revisar inserção de agenda }
    {Cria o compromisso na agenda}
//    ExecuteSQL('insert into sys_agenda '+
//      '( data, hini, hfin, assunto, descricao, prioridade, status, owner_, '+
//      'public_, orig_tabela, orig_recno) values ('''+
//      mcDateSql(edData.Date)+''', '''+mcTimeSql(edHI.Time)+''', '''+
//      mcTimeSql(edHT.Time)+''', '+U.SqlIsNull(edAssunto.Text)+', '+
//      U.SqlIsNull(edHisto.Lines.Text)+', '+IntToStr(cbPrioriodade.itemindex+1)+
//      ', '+IntToStr(cbPos.ItemIndex + 1)+','+Info.UserNameSQL+', false, '+
//      SqlIsNull(FTable)+', '+fRecno+')');

    {Caso não haja comprometimento de outras áreas sai da rotina}
    if lbUsersCo.Count = 0 then
    begin
      Data.Commit;
      Exit;
    end;

    {Obtem o compromisso rescem criado}
    with Query do
    try
      SQL.Text:=
      'select max(recno) as recno '+
        'from sys_agenda '+
       'where owner_ = :owner_ ';


      ParamByName('owner_').AsString := Info.UserName;

      Open;

      if IsEmpty then
        Raise Exception.Create('Erro ao criar compromisso.');

      fRecnoSQL:= FieldByName('recno').AsString;
    finally
      Close;
    end;

    {Insere lista de contatos}
    for i:= 0 to lbUsersCo.Count - 1 do
    begin
      fItem:= PSysContact(lbUsersCo.Items.Objects[i]);
      ExecuteSQL('insert into sys_agenda_para (recno_agenda, username) values ('+
        fRecnoSql+','''+fItem.UserName+''')');
    end;

    {Confirma transação}
    Data.Commit;

    {Nofica pessoas comprometidas}
    actSendMailExecute(nil);
  except
    Data.Rollback;
  end;

  inherited;

  close;

end;

procedure TSysCompromisso.actSendMailExecute(Sender: TObject);
var
  bShowMailClose: Boolean;
begin
  {Dispara e-mail para os usuários}
  with U.Query do
  try
    {Exibe painel de envio de e-mail}
    gbSendMail.Visible:= True;
    gbSendMail.BringToFront;
    gbSendMail.Repaint;
    lbMail.AddItem('Abrindo listagem de notificações...', nil);

    SQL.Text:=
    'select b.name, b.email '+
      'from sys_agenda_ativ a '+
           'join sys_users b '+
             'on b.username = a.username '+
            'and b.email is not null '+
     'where recno_agenda = '+fRecnoSql;

    Open;

    lbMail.Items[lbMail.Count - 1]:= '[ok] Abrindo listagem de notificações';

    try
      IdSMTP1.Connect;

      while not EOF do
      begin
        try
          lbMail.AddItem('Enviando para '+fieldbyname('name').AsString+'...', nil);

          IdMessage1.Recipients.EMailAddresses:= fieldbyname('email').AsString;
          IdMessage1.Subject:= 'Compromisso Agendado para '+
            FormatDateTime('dd/mm/yyyy', edData.DateTime)+' as '+
            FormatDateTime('hh:nn', edHI.DateTime)+' - '+edAssunto.Text;
          IdMessage1.Body:= edHisto.Lines;
          IdMessage1.Body.Add('MENSAGEM GERADA AUTOMATICAMENTE PELO SISTEMA. FAVOR NÃO RESPONDE-LA.');
          IdMessage1.From.Address:= 'informatica@lorencini.com.br';
          IdMessage1.From.Name:= 'Sistema Manager';

          {Prioridade}
          case cbPrioriodade.ItemIndex of
            0: IdMessage1.Priority:= mpLowest;
            1: IdMessage1.Priority:= mpNormal;
            2: IdMessage1.Priority:= mpHighest;
          end;

          IdSMTP1.Send(IdMessage1);

          lbMail.Items[lbMail.Count - 1]:= '[ok] Enviando para '+fieldbyname('name').AsString;
        except
          on E:Exception do
          begin
            lbMail.Items[lbMail.Count - 1]:= '[erro] Enviando para '+fieldbyname('name').AsString;
            lbMail.AddItem('      ' + E.Message, nil);
            bShowMailClose:= True;
          end;
        end;

        Next;
      end;

      IdSMTP1.Disconnect;
      actMailClose.Enabled:= True; //bShowMailClose;
    except
      U.Out.ShowErro('Não foi possível conectar-se ao provedor de e-mail.');
    end;

  finally
    Close;

    if not actMailClose.Enabled then
      gbSendMail.Visible:= False; {Oculta painel de envio de e-mail}
  end;
end;

procedure TSysCompromisso.cbPrioriodadeDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  fBmp: TBitmap;
begin
  fBmp:= TBitmap.Create;
  with TComboBox(Control), Resources do
  try
    case ItemIndex of
      0: small_n.GetBitmap(67, fBmp);
      1: small_n.GetBitmap(62, fBmp);
      2: small_n.GetBitmap(61, fBmp);
    end;

    Canvas.TextRect(Rect, Rect.Left + fBmp.Width + 3, Rect.Top, Items[Index]);
    Canvas.Draw(Rect.Left, Rect.Top, fBmp);
  finally
    fBmp.Free;
    //inherited;
  end;
end;

procedure TSysCompromisso.cbPrioriodadeDropDown(Sender: TObject);
begin
  inherited;
  cbPrioriodade.Repaint;
end;

procedure TSysCompromisso.FillContacts;
var
  lbox: TListBox;
begin
  {Limpa as listas de contatos}
  FreeContacts;

  with U.Query do
  try
    SQL.Text:=
    'select a.username, a.name, a.type_, b.recno '+
      'from sys_users a '+
           'left join sys_agenda_para b '+
             'on b.username = a.username '+
            'and b.recno_agenda = ' + FId + ' ' +
     'where a.active '+
     'order by 3 desc, 2 ';

    Open;

    while not EOF do
    begin
      {Cria o registro do contato}
      New(fItem);
      fItem.UserName:= FieldByName('username').AsString;
      fItem.Name:= FieldByName('name').AsString;
      fItem.Type_:= FieldByName('type_').AsString;

      lbox:= lbUsersCo;

      if FieldByName('recno').IsNull then
        lbox:= lbUsers;

      lbox.Items.AddObject(FieldByName('name').AsString, TObject(fItem));

      Next;
    end;

  finally
    close;
    RefreshCtrls;
  end;
end;

procedure TSysCompromisso.FormCreate(Sender: TObject);
begin
  inherited;
  FId:= '0';
end;

procedure TSysCompromisso.FormDestroy(Sender: TObject);
begin
  {Limpa as listas de contatos}
  FreeContacts;
  inherited;
end;

procedure TSysCompromisso.FormShow(Sender: TObject);
begin
  inherited;
  // Preenche listas de contatos
  FillContacts;
  edData.DateTime:= U.Data.CurrentDate;
  edHI.Time:= U.Data.CurrentTime;
  edHT.Time:= IncMinute(U.Data.CurrentTime,30);
end;

procedure TSysCompromisso.FreeContacts;
  procedure InternalFreeContacts(ListBox: TListBox);
  var
    i: Integer;
  begin
    for i := 0 to ListBox.Count - 1 do
      if Assigned(ListBox.Items.Objects[i]) then
      begin
        Dispose(PSysContact(ListBox.Items.Objects[i]));
        ListBox.Items.Objects[i]:= nil;
      end;

    {Limpa Lista}
    ListBox.Clear;
  end;
begin
  {Libera ponteiro dos contatos não comprometidos}
  InternalFreeContacts(lbUsers);
  {Libera ponteiro dos contatos comprometidos}
  InternalFreeContacts(lbUsersCo);
end;

procedure TSysCompromisso.lbUsersClick(Sender: TObject);
begin
  RefreshCtrls;
end;

procedure TSysCompromisso.lbUsersDrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
var
  fBmp: TBitmap;
begin
  inherited;
  fItem:= PSysContact(TListBox(Control).Items.Objects[index]);
  if not Assigned(fItem) then
    Exit;

  fBmp:= TBitmap.Create;
  with TListBox(Control), Resources do
  try
    if fItem.Type_ = '1' then
      small_n.GetBitmap(59, fBmp)
    else
      small_n.GetBitmap(60, fBmp);

    Canvas.TextRect(Rect, Rect.Left + fBmp.Width + 2, Rect.Top, Items[Index]);
    Canvas.Draw(Rect.Left, Rect.Top, fBmp);
  finally
    fBmp.Free;
  end;

end;

procedure TSysCompromisso.RefreshCtrls;
begin
  actAddAll.Enabled:= lbUsers.Count > 0;
  actAdd.Enabled:= lbUsers.SelCount > 0;
  actDelAll.Enabled:= lbUsersCo.Count > 0;
  actDel.Enabled:= lbUsersCo.SelCount > 0;
  actSendMail.Enabled:= (State = dsEdit) and (lbUsersCo.Count > 0);
end;

procedure TSysCompromisso.SetId(const Value: String);
begin
  FId := Value;

  if mcEmpty(FId) or (FId = '0') or (State <> dsEdit) then
    Exit;

  {Recupera informações do compromisso}
  with U.Query do
  try
    SQL.Text:=
    'select * '+
      'from sys_agenda '+
     'where recno = '+FId;

    Open;

    if IsEmpty then
      Exit;

    edData.Date:= FieldByName('data').AsDateTime;
    edHI.Time:= FieldByName('hini').AsDateTime;
    edHT.Time:= FieldByName('hfin').AsDateTime;
    edAssunto.Text:= FieldByName('assunto').AsString;
    edHisto.Text:= FieldByName('descricao').AsString;
    cbPrioriodade.ItemIndex:= FieldByName('prioridade').AsInteger - 1;
    cbPos.ItemIndex:= FieldByName('status').AsInteger - 1;
  finally
    Close;
  end;

end;

procedure TSysCompromisso.SetRecno(const Value: string);
begin
  FRecno := Value;
end;

procedure TSysCompromisso.SetTable(const Value: string);
begin
  FTable := Value;
end;

initialization
  RegisterClass(TSysCompromisso);

finalization
  UnRegisterClass(TSysCompromisso);


end.
