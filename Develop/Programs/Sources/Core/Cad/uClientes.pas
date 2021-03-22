unit uClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Menus,
  ActnList, Grids, DBGrids, ComCtrls, StdCtrls, Buttons, Mask, ExtCtrls, ToolWin,
  ZSqlUpdate, iTypes, JvExMask, JvToolEdit, JvBaseEdits, ZSequence, uIUtils;

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
    Splitter1: TSplitter;
    actOrca: TAction;
    Oramentos1: TMenuItem;
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
    qClientesFinais: TZQuery;
    qClientesFinaiscodigo: TIntegerField;
    qClientesFinaiscliente: TIntegerField;
    qClientesFinaisempresa: TStringField;
    qClientesFinaisnome_chave: TStringField;
    qClientesFinaiscidade: TStringField;
    qClientesFinaisestado: TStringField;
    qClientesFinaistelefone: TStringField;
    qClientesFinaisemail: TStringField;
    qClientesFinaiscnpj: TStringField;
    qClientesFinaiscpf: TStringField;
    qClientesFinaislogo: TBlobField;
    qClientesFinaisrecno: TIntegerField;
    dsClientesFinais: TDataSource;
    uClientesFinais: TZUpdateSQL;
    sClientesFinais: TZSequence;
    ZSequence1: TZSequence;
    IBrwSrctipo: TIntegerField;
    IBrwSrccpf: TStringField;
    IBrwSrcrg: TStringField;
    IBrwSrcrestricao: TStringField;
    IBrwSrcrestrmotiv: TMemoField;
    IBrwSrcrecno: TIntegerField;
    IBrwSrclogo: TBlobField;
    dsContatos: TDataSource;
    qContatos: TZQuery;
    qContatossituacao: TIntegerField;
    qContatoscliente: TIntegerField;
    qContatosnome: TStringField;
    qContatosfuncao: TStringField;
    qContatostelefone: TStringField;
    qContatoscelular: TStringField;
    qContatosemail: TStringField;
    qContatosrecno: TIntegerField;
    uContatos: TZUpdateSQL;
    IBrwSrcvendedornome: TStringField;
    qContatospadrao: TBooleanField;
    qContatosenviar_pedido_venda: TBooleanField;
    qContatosenviar_cotacao_venda: TBooleanField;
    qContatosenviar_laudo_critico: TBooleanField;
    qContatosenviar_laudo_atencao: TBooleanField;
    qContatosenviar_laudo_normal: TBooleanField;
    qContatoscontato: TIntegerField;
    sContatos: TZSequence;
    qVendedores: TZQuery;
    qVendedoresidvendedor: TIntegerField;
    qVendedoresnome: TStringField;
    qVendedorescnpj: TStringField;
    qVendedorescpf: TStringField;
    qVendedoresrecno: TIntegerField;
    dsVendedores: TDataSource;
    qContatosportal_acessivel: TBooleanField;
    qContatosportal_senha: TStringField;
    qContatosobs: TMemoField;
    qContatosramal: TStringField;
    qContatosenviar_os: TBooleanField;
    procedure FormCreate(Sender: TObject);
    procedure actOrcaExecute(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure PageControl2Change(Sender: TObject);
    procedure edCNPJChange(Sender: TObject);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure cbSituacaoChange(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure IBrwSrcAfterInsert(DataSet: TDataSet);
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
    procedure qClientesFinaisAfterInsert(DataSet: TDataSet);
    procedure qContatosAfterInsert(DataSet: TDataSet);
    procedure qContatosBeforePost(DataSet: TDataSet);
    procedure IBrwSrctipoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure IBrwSrctipoSetText(Sender: TField; const Text: string);
    procedure qContatossituacaoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qContatossituacaoSetText(Sender: TField; const Text: string);
    procedure qContatossituacaoChange(Sender: TField);
    procedure IBrwSrcAfterOpen(DataSet: TDataSet);
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

uses
  uResources, uDM, uIBrowseDet, uClienteM, uClientesMContatos;

{$R *.dfm}

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
    sWhere := 'c.codigo = :codigo ';

  if Length(edCNPJ.Text) > 0 then
  begin
    if sWhere <> EmptyStr then
      sWhere := sWhere + 'and ';

    sWhere := sWhere + 'c.cnpj like :cnpj ';
  end;

  if cbSituacao.ItemIndex > 0 then
  begin
    if sWhere <> EmptyStr then
      sWhere := sWhere + 'and ';

    sWhere := sWhere + 'c.situacao = :situacao ';
  end;

  if Length(edCPF.Text) > 0 then
  begin
    if sWhere <> EmptyStr then
      sWhere := sWhere + 'and ';

    sWhere := sWhere + 'c.cpf like :cpf ';
  end;

  if Length(edEmpresa.Text) > 0 then
  begin
    if sWhere <> EmptyStr then
      sWhere := sWhere + 'and ';

    sWhere := sWhere + 'c.nome_chave ilike :empresa ';
  end;

  if Length(edRazao.Text) > 0 then
  begin
    if sWhere <> EmptyStr then
      sWhere := sWhere + 'and ';

    sWhere := sWhere + 'c.empresa ilike :razao ';
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
    with TDBGrid(Sender) do
    begin
      fBitMap:= TBitmap.Create;
      try
        fBitMap.Transparent:= True;

        with Resources do
          case qContatossituacao.AsInteger of
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
    begin
      fBitMap:= TBitmap.Create;
      try
        fBitMap.Transparent:= True;

        img := 204;
        if IBrwSrcsituacao.AsString = 'ATIVO' then
          img := 208;

        if IBrwSrcsituacao.AsString = 'INATIVO' then
          img := 209;

        if IBrwSrcsituacao.AsString = 'PROSPECT' then
          img := 215;

        with Resources do
          small_n.GetBitmap(img, fBitMap);

        if Column.Width <> fBitMap.Width + 2 then
          Column.Width:= fBitMap.Width + 2;

        {Desenha o status da OS}
        Canvas.Draw(Rect.Left + 1, Rect.Top + 1, fBitMap);
      finally
        FreeAndNil(fBitMap);
      end;
    end;
end;

procedure TClientes.edCNPJChange(Sender: TObject);
begin
  inherited;
  actQueryProcess.Enabled := True; 
end;

procedure TClientes.FormCreate(Sender: TObject);
begin
  inherited;
  Clientes:= Self;
  OnSort:= OnSortCliente;
end;

procedure TClientes.IBrwSrcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  IBrwSrcdtcadastro.AsDateTime:= now;
  IBrwSrcsituacao.AsString := 'ATIVO';
  IBrwSrctipo.AsInteger := 1;
end;

procedure TClientes.IBrwSrcAfterOpen(DataSet: TDataSet);
begin
  inherited;
  G.RefreshDataSet(qVendedores);
end;

procedure TClientes.IBrwSrcAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qContatos.ParamByName('cliente').AsInteger := IBrwSrccodigo.AsInteger;
  qClientesFinais.ParamByName('codigo').AsInteger := IBrwSrccodigo.AsInteger;
  G.RefreshDataSet(qContatos);
  G.RefreshDataSet(qClientesFinais);
end;

procedure TClientes.IBrwSrctipoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Jurídico';
    2: Text := 'Físico';
    3: Text := 'Estrangeiro';
  end;
end;

procedure TClientes.IBrwSrctipoSetText(Sender: TField; const Text: string);
begin
  inherited;
  if Text = EmptyStr then
    Exit;
    
  case Text[1] of
    'J': Sender.AsInteger := 1;
    'F': Sender.AsInteger := 2;
    'E': Sender.AsInteger := 3;
  end;
end;

procedure TClientes.OnEdit;
var
  FormClass: TFormClass;
  Form: TIDefBrowseEdit;
begin
  case DataSet.Tag of
    0: FormClass:= TClientesM;
    1: FormClass:= TClientesMContatos;
  end;

  Form := TIDefBrowseEdit(FormClass.Create(Application));
  Form.DataSet:= DataSet;
  if (DataSet.Tag = 0) then
  begin
    Form.ScreenType := stMasterDetail;
    Form.ChildDataSet := Clientes.qClientesFinais;
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

  if (Field = IBrwSrcempresa) or (Field = IBrwSrcnome_chave) then
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

  with qContatos do
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

procedure TClientes.qClientesFinaisAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qClientesFinaiscodigo.AsInteger := IBrwSrccodigo.AsInteger;
end;

procedure TClientes.qContatosAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qContatossituacao.AsInteger := 1;
  qContatospadrao.AsBoolean := False;
end;

procedure TClientes.qContatosBeforePost(DataSet: TDataSet);
begin
  inherited;
  qContatoscliente.AsInteger:= IBrwSrccodigo.AsInteger;
end;

procedure TClientes.qContatossituacaoChange(Sender: TField);
begin
  inherited;
  if (Sender.DataSet.State = dsInsert) then
  begin
    qContatosenviar_pedido_venda.AsBoolean := (qContatossituacao.AsInteger = 1) and (qContatosemail.AsString <> EmptyStr);
    qContatosenviar_cotacao_venda.AsBoolean := qContatosenviar_pedido_venda.AsBoolean;
    qContatosenviar_laudo_normal.AsBoolean := qContatosenviar_pedido_venda.AsBoolean;
    qContatosenviar_laudo_atencao.AsBoolean := qContatosenviar_pedido_venda.AsBoolean;
    qContatosenviar_laudo_critico.AsBoolean := qContatosenviar_pedido_venda.AsBoolean;
    qContatosenviar_os.AsBoolean := qContatosenviar_pedido_venda.AsBoolean;
  end;
end;

procedure TClientes.qContatossituacaoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0: Text := 'Inativo';
    1: Text := 'Ativo';
  end;
end;

procedure TClientes.qContatossituacaoSetText(Sender: TField; const Text: string);
begin
  inherited;
  if Text <> EmptyStr then
    case Text[1] of
      'I': Sender.AsInteger := 0;
      'A': Sender.AsInteger := 1;
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
