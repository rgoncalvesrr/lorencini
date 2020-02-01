unit uSysAgenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uiwizard, ActnList, StdCtrls, ExtCtrls, ComCtrls, uIUtils,
  zdataset, db, ToolWin;

type
  TSysAgenda = class(TIWizard)
    Panel2: TPanel;
    Panel3: TPanel;
    ListView1: TListView;
    Splitter1: TSplitter;
    Panel4: TPanel;
    Memo1: TMemo;
    Panel5: TPanel;
    Panel6: TPanel;
    lbUsers: TListBox;
    Panel7: TPanel;
    Image2: TImage;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ControlBar1: TControlBar;
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ListView1Deletion(Sender: TObject; Item: TListItem);
    procedure ListView1Change(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure FormDestroy(Sender: TObject);
    procedure lbUsersDrawItem(Control: TWinControl; Index: Integer; Rect: TRect;
      State: TOwnerDrawState);
    procedure actCancelExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
  private
    { Private declarations }
    fCreate: Boolean;
    fQuery: TZReadOnlyQuery;
    fContatos: TZReadOnlyQuery;
    procedure FillCompromissos;
  public
    { Public declarations }
  end;

var
  SysAgenda: TSysAgenda;

implementation

uses mcUtils, uDM, uSysCompromisso, uResources;

{$R *.dfm}

procedure TSysAgenda.actCancelExecute(Sender: TObject);
var
  fItem: TListItem;
  iRecno: ^Integer;
begin
  fItem:= ListView1.Selected;

  if not Assigned(fItem) then
    Exit;

  iRecno:= fItem.Data;
  fQuery.RecNo:= iRecno^;

  {Encerra compromisso}
  U.ExecuteSQL(
  'Update sys_agenda '+
     'set status = 2 '+
   'where recno = ' + fQuery.FieldByName('recno').AsString);

  FillCompromissos;
end;

procedure TSysAgenda.actOkExecute(Sender: TObject);
begin
  application.CreateForm( TSysCompromisso, SysCompromisso );
  SysCompromisso.State:= dsInsert;
  SysCompromisso.ShowModal;
  SysCompromisso.Free;
end;

procedure TSysAgenda.FillCompromissos;
var
  fRow: TListItem;
  iRecno: ^integer;
begin
  {Obtem data set}
  if not Assigned(fQuery) then
    fQuery:= U.QueryPersistent;
    	
  with fQuery, ListView1 do
  try
    Items.BeginUpdate;
    Items.Clear;
    
    SQL.Text:=
    'select a.recno, a.data, a.hini, a.hfin, a.assunto, '+
           'a.descricao, a.prioridade, a.status, a.owner_, '+
           'a.orig_tabela, a.orig_recno, b.name '+
      'from sys_agenda a '+
           'join sys_users b '+
             'on b.username = a.owner_ '+
     'where a.owner_ = :username '+
       'and a.status = 1 '+
    'union '+
     'select a.recno, a.data, a.hini, a.hfin, a.assunto, '+
            'a.descricao, a.prioridade, a.status, a.owner_, '+
            'a.orig_tabela, a.orig_recno, c.name '+
      'from sys_agenda a '+
           'join sys_agenda_ativ b '+
             'on b.recno_agenda = a.recno '+
            'and b.username = :username '+
           'join sys_users c '+
             'on c.username = a.owner_ '+
      'where a.owner_ <> :username '+
        'and status = 1 '+
    'order by data desc, hini';

    ParamByName('username').AsString := U.Info.UserName;

    Open;

    while not EOF do
    begin
      {Cria ponteiro para recuperação da informação}
      New(iRecno);
      iRecno^:= recno;

      fRow:= Items.Add;
      fRow.Data:= iRecno;
      fRow.Caption:= FieldByName('assunto').AsString;
      fRow.SubItems.Add(FieldByName('name').AsString);
      fRow.SubItems.Add(FormatDateTime('dd/mm/yyyy', FieldByName('data').AsDateTime));
      fRow.SubItems.Add(FormatDateTime('hh:nn:ss', FieldByName('hini').AsDateTime));
      fRow.SubItems.Add(FormatDateTime('hh:nn:ss', FieldByName('hfin').AsDateTime));

      {Carrega imagem de severidade do compromisso}
      case FieldByName('prioridade').AsInteger of
        1: fRow.ImageIndex:= 67;
        2: fRow.ImageIndex:= 62;
        3: fRow.ImageIndex:= 61;
      end;

      Next;
    end;

  finally
    Items.EndUpdate;
  end;


end;

procedure TSysAgenda.FormActivate(Sender: TObject);
begin
  inherited;
  if fCreate then
  begin
    WindowState:= wsMaximized;
    fCreate:= False;
  end;
end;

procedure TSysAgenda.FormCreate(Sender: TObject);
begin
  inherited;
  fCreate:= True;
end;

procedure TSysAgenda.FormDestroy(Sender: TObject);
begin
  ListView1.Clear;
  fQuery.Free;
  fContatos.Free;
  inherited;
end;

procedure TSysAgenda.FormResize(Sender: TObject);
begin
  inherited;
  Panel3.Height:= Round(ClientHeight * 0.45);
end;

procedure TSysAgenda.FormShow(Sender: TObject);
begin
  inherited;
  Label1.Caption:= 'Compromissos de ' + U.Info.Name;
  {Carrega os compromissos do usuário}
  FillCompromissos;
end;

procedure TSysAgenda.lbUsersDrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
var
  fBmp: TBitmap;
begin
  inherited;
  fBmp:= TBitmap.Create;
  with TListBox(Control), Resources do
  try
    small_n.GetBitmap(59, fBmp);
    Canvas.TextRect(Rect, Rect.Left + fBmp.Width + 2, Rect.Top, Items[Index]);
    Canvas.Draw(Rect.Left, Rect.Top, fBmp);
  finally
    fBmp.Free;
  end;
end;

procedure TSysAgenda.ListView1Change(Sender: TObject; Item: TListItem;
  Change: TItemChange);
var
  iRecno: ^Integer;
begin
  iRecno:= Item.Data;
  fQuery.RecNo:= iRecno^;
  Memo1.Lines.Text:= TMemoField(fQuery.FieldByName('descricao')).Value;
  Panel5.Caption:= '         Assunto: ' + fQuery.FieldByName('assunto').AsString;
  {Exibi severidade}
  Resources.small_n.GetBitmap(Item.ImageIndex, Image2.Picture.Bitmap);
  Image2.Repaint;

  lbUsers.Clear;
  
  {Recupera lista de envolvidos no compromisso}
  with U.Query do
  try
    SQL.Text:=
    'select b.name '+
      'from sys_agenda_ativ a '+
           'join sys_users b '+
             'on a.username = b.username '+
     'where a.recno_agenda = ' + fQuery.FieldByName('recno').AsString;

    Open;

    while not Eof do
    begin
      lbUsers.AddItem(FieldByName('name').AsString, nil);
      Next;
    end;
  finally
    close;
  end;
end;

procedure TSysAgenda.ListView1Deletion(Sender: TObject; Item: TListItem);
begin
  Dispose(Item.Data);
end;

initialization
  RegisterClass(TSysAgenda);

finalization
  UnRegisterClass(TSysAgenda);

end.
