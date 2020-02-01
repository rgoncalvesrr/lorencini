unit uClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Menus,
  ActnList, Grids, DBGrids, ComCtrls, StdCtrls, Buttons, Mask, ExtCtrls, ToolWin,
  ZSqlUpdate, iTypes, JvExMask, JvToolEdit, JvBaseEdits;

type
  TClientes = class(TIDefBrowse)
    IBrwSrccodigo: TIntegerField;
    IBrwSrcempresa: TStringField;
    IBrwSrcnome_chave: TStringField;
    IBrwSrcendereco: TStringField;
    IBrwSrcbairro: TStringField;
    IBrwSrccep: TStringField;
    IBrwSrccidade: TStringField;
    IBrwSrcestado: TStringField;
    IBrwSrccnpj: TStringField;
    IBrwSrcinscricao: TStringField;
    IBrwSrctelefone: TStringField;
    IBrwSrcfax: TStringField;
    IBrwSrcwebsite: TStringField;
    IBrwSrcemail: TStringField;
    IBrwSrcid_vendedor: TIntegerField;
    IBrwSrcsituacao: TStringField;
    IBrwSrcfat_ende: TStringField;
    IBrwSrcfat_bair: TStringField;
    IBrwSrcfat_cep: TStringField;
    IBrwSrcfat_cida: TStringField;
    IBrwSrcfat_esta: TStringField;
    IBrwSrcent_ende: TStringField;
    IBrwSrcent_bair: TStringField;
    IBrwSrcent_cep: TStringField;
    IBrwSrcent_cida: TStringField;
    IBrwSrcent_esta: TStringField;
    IBrwSrccobra_ende: TStringField;
    IBrwSrccobra_bairro: TStringField;
    IBrwSrccobra_cep: TStringField;
    IBrwSrccobra_cida: TStringField;
    IBrwSrccobra_esta: TStringField;
    IBrwSrcobservacao: TMemoField;
    IBrwSrcdtcadastro: TDateField;
    IBrwSrcsenha: TStringField;
    IBrwSrctag_caption: TStringField;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    IBrwSrcnome: TStringField;
    Splitter1: TSplitter;
    IBrwSrccontato_tel: TStringField;
    IBrwSrccontato_func: TStringField;
    IBrwSrccontato_cel: TStringField;
    IBrwSrccontato_mail: TStringField;
    IBrwSrccontato: TStringField;
    actOrca: TAction;
    Oramentos1: TMenuItem;
    IBrwSrccontato_nextel: TStringField;
    IBrwSrccontato_nextelcel: TStringField;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Panel3: TPanel;
    Label1: TLabel;
    edCNPJ: TMaskEdit;
    edCPF: TMaskEdit;
    Label3: TLabel;
    edCodigo: TJvCalcEdit;
    Label4: TLabel;
    Panel4: TPanel;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    Label5: TLabel;
    cbSituacao: TComboBox;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    edEmpresa: TEdit;
    edRazao: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure actOrcaExecute(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure PageControl2Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edCNPJChange(Sender: TObject);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure cbSituacaoChange(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
  private
    { Private declarations }
    FSQL : string;
    procedure SetDataSet(const Value: TZQuery); override;
    procedure OnEdit; override;
    procedure OnSortCliente(Sender: TObject; DataSet: TZQuery; Field: TField);
    procedure RefreshCtrl; override;
    procedure OnLoad; override;
  public
    { Public declarations }
  end;

var
  Clientes: TClientes;

implementation

{$R *.dfm}

uses uDM, uClienteM, uClienteContatoM, uIUtils, uIBrowseDet, uResources;

procedure TClientes.actOrcaExecute(Sender: TObject);
begin
  inherited;
  U.Out.ShowForm('TOrcamentos');
end;

procedure TClientes.actQueryProcessExecute(Sender: TObject);
var
  sWhere: string;
begin
  inherited;

  if not Assigned(DataSet) then
    Exit;

  DataSet.SQL.Text := FSQL;

  sWhere := EmptyStr;

  if edCodigo.Value > 0 then
    sWhere := 'codigo = :codigo ';

  if Length(edCNPJ.Text) > 0 then
  begin
    if sWhere <> EmptyStr then
      sWhere := sWhere + 'and ';

    sWhere := sWhere + 'cnpj like :cnpj ';
  end;

  if cbSituacao.ItemIndex > 0 then
  begin
    if sWhere <> EmptyStr then
      sWhere := sWhere + 'and ';

    sWhere := sWhere + 'situacao = :situacao ';
  end;

  if Length(edCPF.Text) > 0 then
  begin
    if sWhere <> EmptyStr then
      sWhere := sWhere + 'and ';

    sWhere := sWhere + 'cpf like :cpf ';
  end;

  if Length(edEmpresa.Text) > 0 then
  begin
    if sWhere <> EmptyStr then
      sWhere := sWhere + 'and ';

    sWhere := sWhere + 'nome_chave ilike :empresa ';
  end;

  if Length(edRazao.Text) > 0 then
  begin
    if sWhere <> EmptyStr then
      sWhere := sWhere + 'and ';

    sWhere := sWhere + 'empresa ilike :razao ';
  end;

  if sWhere <> EmptyStr then
    DataSet.SQL.Add(' where ' + sWhere);

  if Assigned(DataSet.Params.FindParam('codigo')) then
    DataSet.ParamByName('codigo').AsInteger := Round(edCodigo.Value);

  if Assigned(DataSet.Params.FindParam('cnpj')) then
    DataSet.ParamByName('cnpj').AsString := edCNPJ.Text + '%';

  if Assigned(DataSet.Params.FindParam('cpf')) then
    DataSet.ParamByName('cpf').AsString := edCPF.Text + '%';

  if Assigned(DataSet.Params.FindParam('empresa')) then
    DataSet.ParamByName('empresa').AsString := '%' + edEmpresa.Text + '%';

  if Assigned(DataSet.Params.FindParam('razao')) then
    DataSet.ParamByName('razao').AsString := '%' + edRazao.Text + '%';

  if Assigned(DataSet.Params.FindParam('situacao')) then
    DataSet.ParamByName('situacao').AsString := cbSituacao.Text;
    
  try
    G.RefreshDataSet(DataSet);
  finally
    RefreshCtrl;
  end;
end;

procedure TClientes.cbSituacaoChange(Sender: TObject);
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

procedure TClientes.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fBitMap: TBitmap;
begin
  if (Column.Index <> 0) then
    inherited DBGridDrawColumnCell(Sender, Rect, DataCol, Column, State)
  else
    with TDBGrid(Sender), DM do
    try
      fBitMap:= TBitmap.Create;
      fBitMap.Transparent:= True;

      with Resources do
        case DM.qContatossituacao.AsInteger of
          0: small_n.GetBitmap(209, fBitMap); // Inativos
          1: small_n.GetBitmap(208, fBitMap); // Ativos
        end;

      if Column.Width <> fBitMap.Width + 2 then
        Column.Width:= fBitMap.Width + 2;

      {Desenha o status da OS}
      Canvas.Draw(Rect.Left + 1, Rect.Top + 1, fBitMap);
    finally
      fBitMap.Free;
    end;
end;

procedure TClientes.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  fBitMap: TBitmap;
  img: integer;
begin
  if (Column.Index <> 0) then
    inherited DBGridDrawColumnCell(Sender, Rect, DataCol, Column, State)
  else
    with TDBGrid(Sender), DM do
    try
      fBitMap:= TBitmap.Create;
      fBitMap.Transparent:= True;

      img := 204;
      if DM.qClientessituacao.AsString = 'ATIVO' then
        img := 208;

      if DM.qClientessituacao.AsString = 'INATIVO' then
        img := 209;

      if DM.qClientessituacao.AsString = 'PROSPECT' then
        img := 215;

      with Resources do
        small_n.GetBitmap(img, fBitMap);

      if Column.Width <> fBitMap.Width + 2 then
        Column.Width:= fBitMap.Width + 2;

      {Desenha o status da OS}
      Canvas.Draw(Rect.Left + 1, Rect.Top + 1, fBitMap);
    finally
      fBitMap.Free;
    end;
end;

procedure TClientes.edCNPJChange(Sender: TObject);
begin
  inherited;
  actQueryProcess.Enabled := True; 
end;

procedure TClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  DM.qContatos.Filtered := False;
end;

procedure TClientes.FormCreate(Sender: TObject);
begin
  inherited;
  Clientes:= Self;
  OnSort:= OnSortCliente;
end;

procedure TClientes.OnEdit;
var
  FormClass: TFormClass;
  Form: TIDefBrowseEdit;
begin
  case DataSet.Tag of
    0: FormClass:= TClientesM;
    1: FormClass:= TClientesContatoM;
  end;

  Form:= TIDefBrowseEdit(FormClass.Create(Application));
  Form.DataSet:= DataSet;
  if (DataSet.Tag = 0) then
  begin
    Form.ScreenType := stMasterDetail;
    Form.ChildDataSet := DM.qClientesFinais;
  end;
  Form.ShowModal;
end;

procedure TClientes.OnLoad;
begin
  inherited;
  
end;

procedure TClientes.OnSortCliente(Sender: TObject; DataSet: TZQuery; Field: TField);
begin
  edSearch.CharCase:= ecNormal;

  with DM do
  if (Field = qClientesempresa) or (Field = qClientesnome_chave) then
    edSearch.CharCase:= ecUpperCase;
end;

procedure TClientes.PageControl1Change(Sender: TObject);
begin
  inherited;
  if cbSituacao.ItemIndex <> PageControl1.ActivePageIndex then
  begin
    cbSituacao.ItemIndex := PageControl1.ActivePageIndex;
    cbSituacaoChange(cbSituacao);
  end;
end;

procedure TClientes.PageControl2Change(Sender: TObject);
begin
  inherited;
  DBGrid2.Parent := PageControl2.ActivePage;

  with DM.qContatos do
  begin
    if PageControl2.ActivePageIndex = 1 then
      Filter := Format('situacao = %d', [1])
    else if PageControl2.ActivePageIndex = 2 then
      Filter := Format('situacao = %d', [0])
    else
      Filter := EmptyStr;

    Filtered := Filter <> EmptyStr;
  end;
end;

procedure TClientes.RefreshCtrl;
begin
  inherited;
  actOrca.Enabled:= True;
end;

procedure TClientes.SetDataSet(const Value: TZQuery);
begin
  inherited;
  if Assigned(Value) and (FSQL = EmptyStr) then
    FSQL := Value.SQL.Text;
end;

initialization
  RegisterClass(TClientes);

finalization
  UnRegisterClass(TClientes);

end.
