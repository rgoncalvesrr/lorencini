unit uFichaFinPos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, uIUtils;

type
  TFichaFinPos = class(TIDefBrowse)
    IBrwSrccodigo: TIntegerField;
    IBrwSrcempresa: TStringField;
    IBrwSrcnome_chave: TStringField;
    IBrwSrccnpj: TStringField;
    IBrwSrccpf: TStringField;
    IBrwSrctelefone: TStringField;
    IBrwSrcemail: TStringField;
    IBrwSrcrestricao: TStringField;
    IBrwSrcrestrmotiv: TMemoField;
    IBrwSrcrecno: TIntegerField;
    IBrwSrctitulos: TLargeintField;
    IBrwSrcsaldo: TFloatField;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    cbStatus: TComboBox;
    TabSheet3: TTabSheet;
    IBrwSrcstatus: TIntegerField;
    qTitulos: TZQuery;
    qTitulosrecno: TIntegerField;
    qTitulosos: TIntegerField;
    qTitulosnatureza: TIntegerField;
    qTitulosdescri: TStringField;
    qTitulosid_cli: TIntegerField;
    qTitulosdocto: TStringField;
    qTitulosemissao: TDateField;
    qTitulosvencimento: TDateField;
    qTitulosvencimento_real: TDateField;
    qTitulosbaixa: TDateField;
    qTitulosvalor: TFloatField;
    qTitulosvalor_baixado: TFloatField;
    qTitulosobs: TMemoField;
    qTituloscc: TStringField;
    qTituloshistorico: TStringField;
    qTitulosjuros: TFloatField;
    qTitulosmulta: TFloatField;
    qTitulosdescto: TFloatField;
    qTitulostotal: TFloatField;
    dsTit: TDataSource;
    qTitulosdiasatraso: TIntegerField;
    actGraph: TAction;
    Panel3: TPanel;
    Label3: TLabel;
    lbQtdTitulos: TLabel;
    Label4: TLabel;
    lbVlTitulos: TLabel;
    BitBtn3: TBitBtn;
    Label18: TLabel;
    ComboBox1: TComboBox;
    Label5: TLabel;
    ComboBox2: TComboBox;
    actFichaFin: TAction;
    FichaFinanceira1: TMenuItem;
    procedure cbStatusChange(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure IBrwSrcrestricaoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure IBrwSrcCalcFields(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qTitulosCalcFields(DataSet: TDataSet);
    procedure IBrwSrcAfterRefresh(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure actGraphExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure actFichaFinExecute(Sender: TObject);
  private
    { Private declarations }
    FCBClientes: TComboList;
    procedure OnEdit; override;
    procedure RefreshCtrl; override;
    procedure RefreshChart;
  public
    { Public declarations }
  end;

var
  FichaFinPos: TFichaFinPos;

implementation

uses uDM, uResources, uFichaFinPosM, iTypes, uFichaFinPosGrafico, uFichaFin;

{$R *.dfm}

procedure TFichaFinPos.actFichaFinExecute(Sender: TObject);
begin
  inherited;
  FichaFin := TFichaFin.Create(nil);
  try
    FichaFin.Codigo := IBrwSrccodigo.AsInteger;
    FichaFin.ShowModal;
  finally
    FreeAndNil(FichaFin);
  end;
end;

procedure TFichaFinPos.actGraphExecute(Sender: TObject);
begin
  inherited;
  actGraph.Checked := not actGraph.Checked;
  RefreshChart;
end;

procedure TFichaFinPos.actQueryProcessExecute(Sender: TObject);
var
  sJoin: string;
  sWhere: string;
begin
  inherited;
  sWhere := EmptyStr;  
  IBrwSrc.SQL.Text :=
  'select c.codigo, c.empresa, c.nome_chave, c.cnpj, c.cpf, '+
         'c.telefone, c.email, c.situacao, c.restricao, c.restrmotiv, '+
         'c.recno, f.titulos, f.saldo '+
    'from tbclientes c ';

  sJoin :=
  'join (select f.id_cli, count(*) titulos, sum(f.valor) saldo '+
          'from fin_receber f '+
         'where f.vencimento_real < current_date '+
           'and f.baixa is null '+
         'group by f.id_cli) f '+
    'on f.id_cli = c.codigo';

  // Listando todos os clientes
  if cbStatus.ItemIndex in [0, 2] then
    sJoin := 'left ' + sJoin;

  IBrwSrc.SQL.Add(sJoin);

  // Filtrar adimplentes
  if cbStatus.ItemIndex = 2 then
    sWhere := 'f.titulos is null ';

  if Assigned(FCBClientes.Selected) and (FCBClientes.Selected.Value > 0) then
  begin
    if sWhere <> EmptyStr then
      sWhere := sWhere + ' and ';

    sWhere := sWhere + ' c.codigo = :codigo ';
  end;

   // Filtrar bloqueio manual
  if ComboBox2.ItemIndex > 0 then
  begin
      if sWhere <> EmptyStr then
      sWhere := sWhere + ' and ';

    sWhere := sWhere + 'c.restricao = :restricao ';
  end;

  if sWhere <> EmptyStr then
    IBrwSrc.SQL.Add(' where ' + sWhere);

   {Aplica filtro por cliente}
  with DataSet do
  begin
    if Assigned(FCBClientes.Selected) and (FCBClientes.Selected.Value > 0) then
      ParamByName('codigo').AsInteger:= FCBClientes.Selected.Value;
      
    if Assigned(Params.FindParam('restricao')) then
      ParamByName('restricao').AsString := ComboBox2.Text;
  end;

  G.RefreshDataSet(DataSet);
  RefreshCtrl;
end;

procedure TFichaFinPos.cbStatusChange(Sender: TObject);
begin
  actQueryProcess.Enabled := True;
  with PageControl1 do
  begin
    ActivePageIndex := cbStatus.ItemIndex;
    inherited PageControl1Change(PageControl1);
    RefreshChart;
  end;

  actQueryProcessExecute(actQueryProcess);
end;

procedure TFichaFinPos.ComboBox1Change(Sender: TObject);
begin
  inherited;
  actQueryProcess.Enabled:= trim(ComboBox1.Text) <> EmptyStr;
  if actQueryProcess.Enabled then
    actQueryProcessExecute(actQueryProcess);
end;

procedure TFichaFinPos.ComboBox2Change(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TFichaFinPos.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fBitMap: TBitmap;
begin
  if (Column.Index <> 0) then
    inherited DBGridDrawColumnCell(Sender, Rect, DataCol, Column, State)
  else
    with TDBGrid(Sender) do
    try
      fBitMap:= TBitmap.Create;
      fBitMap.Transparent:= True;

      with Resources do
      begin
        small_n.GetBitmap(208, fBitMap); //Adimplente
        if IBrwSrcstatus.AsInteger = 2 then
          small_n.GetBitmap(213, fBitMap); //Inadimplente
      end;

      if Column.Width <> fBitMap.Width + 2 then
        Column.Width:= fBitMap.Width + 2;

      {Desenha o status da remessa}
      Canvas.Draw(Rect.Left + 1, Rect.Top + 1, fBitMap);
    finally
      fBitMap.Free;
    end;
end;

procedure TFichaFinPos.FormCreate(Sender: TObject);
begin
  inherited;
  AllowInsert := False;
  AllowDelete := False;
  
  FCBClientes := TComboList.Create(ComboBox1, 'tbclientes', 'codigo', 'nome_chave');

  ComboBox1.Items.Insert(0, '(Todos)');
  ComboBox1.ItemIndex := 0;
end;

procedure TFichaFinPos.FormDestroy(Sender: TObject);
begin
  if Assigned(FichaFinPosGrafico) then
    FreeAndNil(FichaFinPosGrafico);

  FreeAndNil(FCBClientes);
  inherited;
end;

procedure TFichaFinPos.FormShow(Sender: TObject);
begin
  inherited;
  DataSet := IBrwSrc;
end;

procedure TFichaFinPos.IBrwSrcAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  with U.Data.Query do
  try
    SQL.Text :=
    'select count(*) titulos, sum(f.valor) saldo '+
      'from fin_receber f '+
     'where f.vencimento_real < current_date '+
       'and f.baixa is null';

    Open;

    lbQtdTitulos.Caption := Fields[0].AsString;
    lbVlTitulos.Caption := FormatFloat(',0.#0', Fields[1].AsFloat);
  finally
    Close;
  end;
end;

procedure TFichaFinPos.IBrwSrcAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if Assigned(FichaFinPosM) then
  begin
    qTitulos.ParamByName('codigo').AsInteger := IBrwSrccodigo.AsInteger;
    G.RefreshDataSet(qTitulos);
  end;
end;

procedure TFichaFinPos.IBrwSrcCalcFields(DataSet: TDataSet);
begin
  inherited;
  if IBrwSrctitulos.AsInteger = 0 then
    IBrwSrcstatus.AsInteger := 1
  else
    IBrwSrcstatus.AsInteger := 2;
end;

procedure TFichaFinPos.IBrwSrcrestricaoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull or (Sender.AsString = EmptyStr) then
    Text := 'NÃO'
  else
    Text := Sender.AsString;
end;

procedure TFichaFinPos.OnEdit;
begin
  FichaFinPosM := TFichaFinPosM.Create(nil);
  try
    FichaFinPosM.AllowInsert := False;
    FichaFinPosM.AllowDelete := False;    
    FichaFinPosM.DataSet := IBrwSrc;
    FichaFinPosM.ChildDataSet := qTitulos;
    FichaFinPosM.ScreenType := stMasterDetail;
    FichaFinPosM.ShowModal;
  finally
    FreeAndNil(FichaFinPosM);
  end;
end;

procedure TFichaFinPos.PageControl1Change(Sender: TObject);
begin
  inherited;
  if cbStatus.ItemIndex <> PageControl1.ActivePageIndex then
  begin
    cbStatus.ItemIndex := PageControl1.ActivePageIndex;
    cbStatusChange(cbStatus);
  end;
end;

procedure TFichaFinPos.qTitulosCalcFields(DataSet: TDataSet);
begin
  inherited;
  qTitulosdiasatraso.AsInteger := 0;

  if qTitulosbaixa.IsNull and (Now > qTitulosvencimento_real.AsDateTime) then
    qTitulosdiasatraso.AsInteger := Round(Now - qTitulosvencimento_real.AsDateTime);
end;

procedure TFichaFinPos.RefreshChart;
begin

  if actGraph.Checked then
  begin
    if not Assigned(FichaFinPosGrafico) then
    begin
      FichaFinPosGrafico := TFichaFinPosGrafico.Create(nil);
      FichaFinPosGrafico.Parent := TabSheet2;
      FichaFinPosGrafico.Visible := True;
    end;

    if PageControl1.ActivePageIndex = 1 then
      FichaFinPosGrafico.BringToFront;
  end else
    FreeAndNil(FichaFinPosGrafico);
end;

procedure TFichaFinPos.RefreshCtrl;
begin
  inherited;
  actGraph.Enabled := True;
  actFichaFin.Enabled := not IBrwSrc.IsEmpty;
end;

initialization
  RegisterClass(TFichaFinPos);

finalization
  UnRegisterClass(TFichaFinPos);

end.
