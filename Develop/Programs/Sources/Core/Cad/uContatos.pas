unit uContatos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ActnList, ComCtrls, ToolWin,
  ExtCtrls, Grids, DBGrids, StdCtrls, Mask, Buttons, ZSequence, uIUtils, JvExMask, JvToolEdit, JvBaseEdits;

type
  TContatos = class(TIDefBrowse)
    IBrwSrcsituacao: TIntegerField;
    IBrwSrcnome: TStringField;
    IBrwSrctelefone: TStringField;
    IBrwSrccelular: TStringField;
    IBrwSrcemail: TStringField;
    IBrwSrcdata: TDateField;
    IBrwSrcrecno: TIntegerField;
    sContatos: TZSequence;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel4: TPanel;
    Label5: TLabel;
    cbSituacao: TComboBox;
    Panel8: TPanel;
    Label6: TLabel;
    edNome: TEdit;
    Panel9: TPanel;
    Label7: TLabel;
    edEmail: TEdit;
    Panel5: TPanel;
    Label4: TLabel;
    edContato: TJvCalcEdit;
    Panel3: TPanel;
    Label1: TLabel;
    edTel: TMaskEdit;
    Panel6: TPanel;
    Label3: TLabel;
    edCel: TMaskEdit;
    sContCli: TZSequence;
    zContCli: TZUpdateSQL;
    qContCli: TZQuery;
    dsContCli: TDataSource;
    qContCliempresa: TStringField;
    qContClinome_chave: TStringField;
    qContClicidade: TStringField;
    qContCliestado: TStringField;
    qContCliemail: TStringField;
    qContClitelefone: TStringField;
    qContClisituacao: TIntegerField;
    qContClipadrao: TBooleanField;
    qContClifuncao: TStringField;
    qContClirecno: TIntegerField;
    qContClicnpj: TStringField;
    qContClicpf: TStringField;
    qContClicliente: TIntegerField;
    qContClicontato: TIntegerField;
    qContCliportal_acessivel: TBooleanField;
    qContCliportal_senha: TStringField;
    qContCliobs: TMemoField;
    IBrwSrcramal: TStringField;
    IBrwSrcobs: TMemoField;
    qContClicontato_financeiro: TBooleanField;
    qContClicontato_tecnico: TBooleanField;
    qContClicontato_comercial: TBooleanField;
    procedure IBrwSrcsituacaoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure IBrwSrcsituacaoSetText(Sender: TField; const Text: string);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure cbSituacaoChange(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure edNomeChange(Sender: TObject);
    procedure IBrwSrctelefoneSetText(Sender: TField; const Text: string);
    procedure FormActivate(Sender: TObject);
    procedure qContCliBeforeRefresh(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qContCliAfterInsert(DataSet: TDataSet);
    procedure IBrwSrcAfterInsert(DataSet: TDataSet);
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
  private
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  Contatos: TContatos;

implementation

{$R *.dfm}

uses
  uDM, uResources, uContatosM, iTypes, mcUtils;

procedure TContatos.actQueryProcessExecute(Sender: TObject);
var
  sWhere: string;
begin
  inherited;

  if not Assigned(DataSet) then
    Exit;

  sWhere := EmptyStr;

  if edContato.Value > 0 then
    sWhere := 'recno = :contato ';

  if cbSituacao.ItemIndex > 0 then
  begin
    if sWhere <> EmptyStr then
      sWhere := sWhere + 'and ';

    sWhere := sWhere + 'situacao = :situacao ';
  end;

  if Length(edNome.Text) > 0 then
  begin
    if sWhere <> EmptyStr then
      sWhere := sWhere + 'and ';

    sWhere := sWhere + 'nome ilike :nome ';
  end;

  if Length(edTel.Text) > 0 then
  begin
    if sWhere <> EmptyStr then
      sWhere := sWhere + 'and ';

    sWhere := sWhere + 'telefone like :tel ';
  end;

  if Length(edCel.Text) > 0 then
  begin
    if sWhere <> EmptyStr then
      sWhere := sWhere + 'and ';

    sWhere := sWhere + 'celular like :cel ';
  end;

  if Length(edEmail.Text) > 0 then
  begin
    if sWhere <> EmptyStr then
      sWhere := sWhere + 'and ';

    sWhere := sWhere + 'email ilike :email ';
  end;

  if sWhere <> EmptyStr then
    DataSet.SQL.Add(' where ' + sWhere);

  if Assigned(DataSet.Params.FindParam('contato')) then
    DataSet.ParamByName('contato').AsInteger := Round(edContato.Value);

  if Assigned(DataSet.Params.FindParam('situacao')) then
    case cbSituacao.ItemIndex of
      1: DataSet.ParamByName('situacao').AsInteger := 1;
      2: DataSet.ParamByName('situacao').AsInteger := 0;
    end;

  if Assigned(DataSet.Params.FindParam('nome')) then
    DataSet.ParamByName('nome').AsString := '%' + edNome.Text + '%';

  if Assigned(DataSet.Params.FindParam('email')) then
    DataSet.ParamByName('email').AsString := '%' + edEmail.Text + '%';

  if Assigned(DataSet.Params.FindParam('tel')) then
    DataSet.ParamByName('tel').AsString := edTel.Text + '%';

  if Assigned(DataSet.Params.FindParam('cel')) then
    DataSet.ParamByName('cel').AsString := edCel.Text + '%';

  try
    G.RefreshDataSet(DataSet);
  finally
    RefreshCtrl;
  end;
end;

procedure TContatos.cbSituacaoChange(Sender: TObject);
begin
  inherited;
  actQueryProcess.Enabled := True;
  with PageControl1 do
  begin
    DBGrid1.SetFocus;
    ActivePageIndex := cbSituacao.ItemIndex;
    inherited PageControl1Change(PageControl1);
  end;

  actQueryProcessExecute(actQueryProcess);
end;

procedure TContatos.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  fBitMap: TBitmap;
begin
  if (Column.Index <> 0) then
    inherited DBGridDrawColumnCell(Sender, Rect, DataCol, Column, State)
  else
    with TDBGrid(Sender) do
    begin
      fBitMap:= TBitmap.Create;
      try
        fBitMap.Transparent:= True;

        with Resources do
          case IBrwSrcsituacao.AsInteger of
            0: small_n.GetBitmap(209, fBitMap); // Inativos
            1: small_n.GetBitmap(208, fBitMap); // Ativos
          end;

        if Column.Width <> fBitMap.Width + 2 then
          Column.Width:= fBitMap.Width + 2;

        {Desenha o status da OS}
        Canvas.Draw(Rect.Left + 1, Rect.Top + 1, fBitMap);
      finally
        FreeAndNil(fBitMap);
      end;
    end;
end;

procedure TContatos.edNomeChange(Sender: TObject);
begin
  inherited;
  actQueryProcess.Enabled := True;
end;

procedure TContatos.FormActivate(Sender: TObject);
begin
  inherited;
  cbSituacaoChange(cbSituacao);
end;

procedure TContatos.FormCreate(Sender: TObject);
begin
  inherited;
  Contatos := Self;
end;

procedure TContatos.IBrwSrcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  IBrwSrcdata.AsDateTime := Now;
  IBrwSrcsituacao.AsInteger := 1;
end;

procedure TContatos.IBrwSrcAfterScroll(DataSet: TDataSet);
begin
  inherited;
  G.RefreshDataSet(qContCli);
end;

procedure TContatos.IBrwSrcsituacaoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0: Text := 'Inativo';
    1: Text := 'Ativo';
  end;
end;

procedure TContatos.IBrwSrcsituacaoSetText(Sender: TField; const Text: string);
begin
  inherited;

  if not (Sender.DataSet.State in [dsEdit, dsInsert]) or (Text = EmptyStr) then
    Exit;

  case Text[1] of
    'I': Sender.AsInteger := 0;
    'A': Sender.AsInteger := 1;
  end;
end;

procedure TContatos.IBrwSrctelefoneSetText(Sender: TField; const Text: string);
begin
  inherited;
  Sender.Value := Text;
  if (Sender.DataSet.State in [dsEdit, dsInsert]) and (Trim(Text) = EmptyStr) then
    Sender.Clear;
end;

procedure TContatos.OnEdit;
begin
  ContatosM := TContatosM.Create(nil);
  try
    ContatosM.ScreenType := stMasterDetail;
    ContatosM.DataSet := IBrwSrc;
    ContatosM.ChildDataSet := qContCli;
    ContatosM.ShowModal;
  finally
    FreeAndNil(ContatosM);
  end;

end;

procedure TContatos.PageControl1Change(Sender: TObject);
begin
  inherited;
  if cbSituacao.ItemIndex <> PageControl1.ActivePageIndex then
  begin
    cbSituacao.ItemIndex := PageControl1.ActivePageIndex;
    cbSituacaoChange(cbSituacao);
  end;
end;

procedure TContatos.qContCliAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qContClicontato.AsInteger := IBrwSrcrecno.AsInteger;
  qContClicontato_comercial.AsBoolean := not IBrwSrcemail.IsNull;
  qContClicontato_tecnico.AsBoolean := not IBrwSrcemail.IsNull;
  qContClicontato_financeiro.AsBoolean := not IBrwSrcemail.IsNull;
  qContClisituacao.AsInteger := IBrwSrcsituacao.AsInteger;
  qContClipadrao.AsBoolean := False;
  qContCliportal_acessivel.AsBoolean := False;
end;

procedure TContatos.qContCliBeforeRefresh(DataSet: TDataSet);
begin
  inherited;
  qContCli.ParamByName('contato').AsInteger := IBrwSrcrecno.AsInteger;
end;

initialization
  RegisterClass(TContatos);

finalization
  UnRegisterClass(TContatos);

end.
