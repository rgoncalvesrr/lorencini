unit uAmostras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids,
  DBGrids, StdCtrls, Mask, Buttons, uIUtils, JvExMask, JvToolEdit, JvBaseEdits,
  JvExExtCtrls, JvImage, uFrameData, ccalendardiff, ZSequence;

type
  TAmostras = class(TIDefBrowse)
    IBrwSrcrecno: TIntegerField;
    IBrwSrccodigo: TIntegerField;
    IBrwSrcqtd: TFloatField;
    IBrwSrcsaldo: TFloatField;
    IBrwSrcempresa: TStringField;
    IBrwSrcnome_chave: TStringField;
    IBrwSrccnpj: TStringField;
    IBrwSrccpf: TStringField;
    IBrwSrccidade: TStringField;
    Label18: TLabel;
    ComboBox1: TComboBox;
    IBrwSrcconsumido: TFloatField;
    edAmostra: TJvCalcEdit;
    Label1: TLabel;
    qPedidos: TZReadOnlyQuery;
    dsPedidos: TDataSource;
    qPedidospedido: TIntegerField;
    qPedidoscodserv: TIntegerField;
    qPedidosdescri: TStringField;
    qPedidosconsumo: TFloatField;
    Panel3: TPanel;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    qLaudos: TZReadOnlyQuery;
    qLaudosstatus: TIntegerField;
    qLaudosrecno: TIntegerField;
    qLaudosemissao: TDateTimeField;
    qLaudosrelato_recno: TIntegerField;
    qLaudosdescri: TStringField;
    TabSheet3: TTabSheet;
    DBGrid3: TDBGrid;
    Panel4: TPanel;
    JvImage1: TJvImage;
    lbLeg1: TLabel;
    JvImage2: TJvImage;
    lbLeg2: TLabel;
    lbLeg3: TLabel;
    JvImage3: TJvImage;
    dsLaudos: TDataSource;
    JvImage4: TJvImage;
    Label3: TLabel;
    qLaudosrevisao: TIntegerField;
    qLaudosdiagnostico: TStringField;
    qLaudosrecomendacao: TStringField;
    cbSaldo: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    cbConsumo: TComboBox;
    IBrwSrcdescartado: TFloatField;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    DBGrid4: TDBGrid;
    Label6: TLabel;
    cbEstado: TComboBox;
    IBrwSrcpedido: TIntegerField;
    IBrwSrccomodato: TIntegerField;
    Label7: TLabel;
    edEtiqueta: TJvCalcEdit;
    dsHist: TDataSource;
    qHist: TZReadOnlyQuery;
    qHistamostra: TIntegerField;
    qHistestado: TIntegerField;
    qHistocorrencia: TDateTimeField;
    qHisthistorico: TMemoField;
    qHistname: TStringField;
    qHistemail: TStringField;
    qHisthistorico_desc: TStringField;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    FrameData1: TFrameData;
    Label8: TLabel;
    Label9: TLabel;
    ZSequence1: TZSequence;
    IBrwSrcumidade: TIntegerField;
    IBrwSrcequip_recno: TIntegerField;
    IBrwSrcentrada: TDateField;
    IBrwSrccoleta: TDateField;
    IBrwSrctpamostra_recno: TIntegerField;
    IBrwSrcamostrador: TStringField;
    IBrwSrctamb: TIntegerField;
    IBrwSrctoleo: TIntegerField;
    IBrwSrclabsubest_recno: TIntegerField;
    IBrwSrctensao: TFloatField;
    IBrwSrcestado: TIntegerField;
    IBrwSrcorigem: TIntegerField;
    IBrwSrctag: TStringField;
    IBrwSrclocal: TStringField;
    IBrwSrcdestinatario: TStringField;
    IBrwSrctelefone: TStringField;
    IBrwSrcestado_1: TStringField;
    IBrwSrcemail: TStringField;
    IBrwSrcfabricante: TStringField;
    IBrwSrcserie: TStringField;
    IBrwSrctipo: TStringField;
    IBrwSrcdescri: TStringField;
    IBrwSrcpotencia: TFloatField;
    IBrwSrcimped: TFloatField;
    IBrwSrctensao_1: TFloatField;
    IBrwSrcfases: TIntegerField;
    IBrwSrcano: TIntegerField;
    IBrwSrclote: TStringField;
    IBrwSrcisolante: TStringField;
    IBrwSrcvolume: TIntegerField;
    IBrwSrcdrenos: TStringField;
    IBrwSrcfamilia: TStringField;
    IBrwSrctensao_un: TStringField;
    IBrwSrcpotencia_un: TStringField;
    IBrwSrcdescri_1: TStringField;
    IBrwSrcinf_te: TBooleanField;
    IBrwSrcsigla: TStringField;
    IBrwSrcnome: TStringField;
    IBrwSrcregional: TIntegerField;
    IBrwSrcreg_nome: TStringField;
    IBrwSrccliente: TIntegerField;
    IBrwSrcempresacli: TStringField;
    IBrwSrcnome_chavecli: TStringField;
    IBrwSrccnpj_cli: TStringField;
    IBrwSrccpf_cli: TStringField;
    IBrwSrctelefone_cli: TStringField;
    IBrwSrccidade_cli: TStringField;
    IBrwSrcestado_cli: TStringField;
    IBrwSrcemail_cli: TStringField;
    JvImage5: TJvImage;
    Label10: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edAmostraChange(Sender: TObject);
    procedure cbSaldoChange(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure cbEstadoChange(Sender: TObject);
    procedure qHistCalcFields(DataSet: TDataSet);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FrameData1CCalendarDiff1ChangeInterval(Sender: TObject);
    procedure qPedidosBeforeRefresh(DataSet: TDataSet);
    procedure qLaudosBeforeRefresh(DataSet: TDataSet);
    procedure qHistBeforeRefresh(DataSet: TDataSet);
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    FCBClientes: TComboList;
    FCodigo: Integer;
    FSaldo: Double;
    procedure SetCodigo(const Value: Integer);
    procedure SetSaldo(const Value: Double);
    procedure RefreshCtrl; override;
    procedure OnEdit; override;
  public
    { Public declarations }
    property Codigo: Integer read FCodigo write SetCodigo;
    property Saldo: Double read FSaldo write SetSaldo;
  end;

var
  Amostras: TAmostras;

implementation

{$R *.dfm}

uses
  uDM, uResources, uLabAmostrasM;

procedure TAmostras.actQueryProcessExecute(Sender: TObject);
var
  sWhere : string;
  ACal : TCCalendarDiff;
begin
  inherited;

  ACal := FrameData1.CCalendarDiff1;
  
  with IBrwSrc do
  begin
    sWhere := EmptyStr;

    if (cbEstado.ItemIndex > 0) then
      sWhere := 'a.estado = :estado ';

    {Aplica filtro por cliente}
    if Assigned(FCBClientes.Selected) and  (FCBClientes.Selected.Value > 0) then
    begin
      if sWhere <> EmptyStr then
        swhere := swhere + 'and ';
        
      swhere := swhere + 'a.codigo = :codigo ';
    end;

    if edAmostra.Value > 0 then
    begin
      if sWhere <> EmptyStr then
        swhere := swhere + 'and ';

      swhere := swhere + 'a.recno = :amostra ';
    end;

    if edEtiqueta.Value > 0 then
    begin
      if sWhere <> EmptyStr then
        swhere := swhere + 'and ';

      swhere := swhere + 'a.comodato = :etiqueta ';
    end;

    if cbSaldo.ItemIndex > 0 then
    begin
      if sWhere <> EmptyStr then
        swhere := swhere + 'and ';

      swhere := swhere + 'a.saldo > 0 ';
    end;

    if cbConsumo.ItemIndex > 0 then
    begin
      if sWhere <> EmptyStr then
        swhere := swhere + 'and ';

      case cbConsumo.ItemIndex of
        1: swhere := swhere + 'a.consumido > 0 ';
        2: swhere := swhere + 'a.consumido = 0 ';
      end;
    end;

    if ACal.Interval <> diNone then
    begin
      if sWhere <> EmptyStr then
        swhere := swhere + 'and ';

      swhere := swhere + 'a.estado_data between :estado_de and :estado_ate ';
    end;

    if sWhere <> EmptyStr then
      SQL.Add(' where ' + sWhere);

    if Assigned(Params.FindParam('codigo')) then
      ParamByName('codigo').AsInteger := FCBClientes.Selected.Value;

    if Assigned(Params.FindParam('amostra')) then
      ParamByName('amostra').AsInteger := Round(edAmostra.Value);

    if Assigned(Params.FindParam('etiqueta')) then
      ParamByName('etiqueta').AsInteger := Round(edEtiqueta.Value);

    if Assigned(Params.FindParam('saldo')) then
      ParamByName('saldo').AsFloat := FSaldo;

    if Assigned(Params.FindParam('estado')) then
      ParamByName('estado').AsInteger := (cbEstado.ItemIndex * 10);

    if Assigned(Params.FindParam('estado_de')) then
    begin
      Params.ParamByName('estado_de').AsDateTime := ACal.BeginDate;
      Params.ParamByName('estado_ate').AsDateTime := ACal.EndDate;
    end;
  end;

  G.RefreshDataSet(IBrwSrc);
  RefreshCtrl;
end;

procedure TAmostras.cbEstadoChange(Sender: TObject);
begin
  inherited;
  with PageControl1 do
  begin
    DBGrid1.SetFocus;
    ActivePageIndex := cbEstado.ItemIndex;
    inherited PageControl1Change(PageControl1);
  end;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TAmostras.cbSaldoChange(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TAmostras.ComboBox1Change(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TAmostras.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
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
        case IBrwSrcestado.AsInteger of
          10: small_n.GetBitmap(210, fBitMap); // Geradas
          20: small_n.GetBitmap(211, fBitMap); // Impressas
          30: small_n.GetBitmap(205, fBitMap); // Enviadas
          40: small_n.GetBitmap(212, fBitMap); // Recebidas
          50: small_n.GetBitmap(208, fBitMap); // Disponíveis
          60: small_n.GetBitmap(209, fBitMap); // Consumidas
          70: small_n.GetBitmap(204, fBitMap); // Cancelado
        end;

      if Column.Width <> fBitMap.Width + 2 then
        Column.Width:= fBitMap.Width + 2;

      {Desenha o status da remessa}
      Canvas.Draw(Rect.Left + 1, Rect.Top + 1, fBitMap);
    finally
      fBitMap.Free;
    end;
end;

procedure TAmostras.DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
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
        case qLaudosstatus.AsInteger of
          0: small_n.GetBitmap(213, fBitMap); // Digitação
          1: small_n.GetBitmap(215, fBitMap); // Apontamento
          2: small_n.GetBitmap(205, fBitMap); // Executando
          3: small_n.GetBitmap(208, fBitMap); // Assinado
          4: small_n.GetBitmap(204, fBitMap); // Cancelado
        end;

      if Column.Width <> fBitMap.Width + 2 then
        Column.Width:= fBitMap.Width + 2;

      {Desenha o status da remessa}
      Canvas.Draw(Rect.Left + 1, Rect.Top + 1, fBitMap);
    finally
      fBitMap.Free;
    end;
end;

procedure TAmostras.DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
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
        case qHistestado.AsInteger of
          10: small_n.GetBitmap(210, fBitMap); // Geradas
          20: small_n.GetBitmap(211, fBitMap); // Impressas
          30: small_n.GetBitmap(205, fBitMap); // Enviadas
          40: small_n.GetBitmap(212, fBitMap); // Recebidas
          50: small_n.GetBitmap(208, fBitMap); // Disponíveis
          60: small_n.GetBitmap(209, fBitMap); // Consumidas
          70: small_n.GetBitmap(204, fBitMap); // Cancelado
        end;

      if Column.Width <> fBitMap.Width + 2 then
        Column.Width:= fBitMap.Width + 2;

      {Desenha o status da remessa}
      Canvas.Draw(Rect.Left + 1, Rect.Top + 1, fBitMap);
    finally
      fBitMap.Free;
    end;
end;

procedure TAmostras.edAmostraChange(Sender: TObject);
begin
  inherited;
  actQueryProcess.Enabled := True;
end;

procedure TAmostras.FormCreate(Sender: TObject);
begin
  inherited;
  FCBClientes := TComboList.Create(ComboBox1, 'tbclientes', 'codigo', 'nome_chave');
  ComboBox1.Items.Insert(0, '(Todos)');
  ComboBox1.ItemIndex := 0;

  FrameData1.CCalendarDiff1.Interval := diMonthly;
  FrameData1.CCalendarDiff1.OnChange := FrameData1CCalendarDiff1ChangeInterval;

  AllowInsert := False;
  AllowDelete := False;
end;

procedure TAmostras.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FCBClientes);
  inherited;
end;

procedure TAmostras.FormShow(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TAmostras.FrameData1CCalendarDiff1ChangeInterval(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TAmostras.IBrwSrcAfterScroll(DataSet: TDataSet);
begin
  inherited;
  G.RefreshDataSet(qPedidos);
  G.RefreshDataSet(qLaudos);
  G.RefreshDataSet(qHist);
end;

procedure TAmostras.OnEdit;
begin
  LabAmostrasM := TLabAmostrasM.Create(nil);
  try
    LabAmostrasM.DataSet := IBrwSrc;
    LabAmostrasM.ShowModal;
  finally
    FreeAndNil(LabAmostrasM);
  end;

end;

procedure TAmostras.PageControl1Change(Sender: TObject);
begin
  inherited;
  if cbEstado.ItemIndex <> PageControl1.ActivePageIndex then
  begin
    cbEstado.ItemIndex := PageControl1.ActivePageIndex;
    cbEstadoChange(cbEstado);
  end;
end;

procedure TAmostras.qHistBeforeRefresh(DataSet: TDataSet);
begin
  inherited;
  qHist.ParamByName('amostra').Clear;

  if not IBrwSrc.IsEmpty then
    qHist.ParamByName('amostra').AsInteger := IBrwSrcrecno.AsInteger;
end;

procedure TAmostras.qHistCalcFields(DataSet: TDataSet);
begin
  inherited;
  qHisthistorico_desc.AsString := qHisthistorico.AsString;
end;

procedure TAmostras.qLaudosBeforeRefresh(DataSet: TDataSet);
begin
  inherited;
  qLaudos.ParamByName('amostra').Clear;

  if not IBrwSrc.IsEmpty then
    qLaudos.ParamByName('amostra').AsInteger := IBrwSrcrecno.AsInteger;
end;

procedure TAmostras.qPedidosBeforeRefresh(DataSet: TDataSet);
begin
  inherited;
  qPedidos.ParamByName('amostra').Clear;

  if not IBrwSrc.IsEmpty then
    qPedidos.ParamByName('amostra').AsInteger := IBrwSrcrecno.AsInteger;
end;

procedure TAmostras.RefreshCtrl;
begin
  inherited;
  actEdit.Enabled := actEdit.Enabled and (IBrwSrcestado.AsInteger in [50, 60]);
  actView.Enabled := actEdit.Enabled;   
end;

procedure TAmostras.SetCodigo(const Value: Integer);
var
  i: Integer;
begin
  FCodigo := Value;
  for i := 1 to FCBClientes.Count - 1 do
    if FCBClientes.Items[i].Value = FCodigo then
    begin
      ComboBox1.ItemIndex := i;
      ComboBox1.Enabled := False;
      FrameData1.ComboBox1.ItemIndex := 0;
      FrameData1.ComboBox1.Enabled := False;
      Break;
    end;
end;

procedure TAmostras.SetSaldo(const Value: Double);
begin
  FSaldo := Value;

  if FSaldo > 0 then
  begin
    cbSaldo.ItemIndex := 1;
    cbSaldo.Enabled := False;
  end;

end;

initialization
  RegisterClass(TAmostras);

finalization
  UnRegisterClass(TAmostras);

end.
