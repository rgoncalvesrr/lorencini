unit uMarkup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIForm, ActnList, ComCtrls, DB, DBClient, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, StdCtrls, ExtCtrls, Mask, JvExMask, JvToolEdit,
  JvBaseEdits, Buttons;

type
  TMarkupOperacao = (mkpSoma, mkpSubtrai, mkpTotal);
   
  TMarkup = class(TIForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cdsDemo: TClientDataSet;
    cdsDemodescricao: TStringField;
    cdsDemooperador: TStringField;
    cdsDemovalor: TFloatField;
    cdsDemosaldo: TFloatField;
    JvDBGrid1: TJvDBGrid;
    DataSource1: TDataSource;
    pnAprov: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    actCalcMarkup: TAction;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    edMO: TJvCalcEdit;
    Panel5: TPanel;
    Label2: TLabel;
    edDesp: TJvCalcEdit;
    Label3: TLabel;
    Panel3: TPanel;
    Label4: TLabel;
    Panel4: TPanel;
    Label5: TLabel;
    edSrvFix: TJvCalcEdit;
    Panel6: TPanel;
    Label6: TLabel;
    Panel7: TPanel;
    Label7: TLabel;
    edSrvVar: TJvCalcEdit;
    Panel8: TPanel;
    Label8: TLabel;
    Panel9: TPanel;
    Label9: TLabel;
    edNF: TJvCalcEdit;
    procedure PageControl1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actOkExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure actCalcMarkupExecute(Sender: TObject);
  private
    FMarkupID: Integer;
    FSaldo: Double;
    FSubTotal: Double;
    FMarkupAprovacao: Boolean;
    FAprovado: Boolean;
    FRegistro: Integer;
    FTabela: string;
    procedure SetMarkupID(const Value: Integer);

    procedure MkpReg(Operacao: TMarkupOperacao; Texto: string; Valor: Double);

    procedure MkpAdd(Texto: string; Valor: Double);
    procedure MkpSub(Texto: string; Valor: Double);
    procedure MkpTot(Texto: string);
    procedure SetMarkupAprovacao(const Value: Boolean);
    procedure SetAprovado(const Value: Boolean);
    procedure SetRegistro(const Value: Integer);
    procedure SetTabela(const Value: string);
  public
    { Public declarations }
    procedure RefreshMarkup;
    property MarkupID: Integer read FMarkupID write SetMarkupID;
    property MarkupAprovacao: Boolean read FMarkupAprovacao write SetMarkupAprovacao;
    property Aprovado: Boolean read FAprovado write SetAprovado;
    property Tabela: string read FTabela write SetTabela;
    property Registro: Integer read FRegistro write SetRegistro;
  end;

var
  Markup: TMarkup;

implementation

uses uIUtils, Midas, MidConst, Math, uMarkupReprovMot, uDBLog;

{$R *.dfm}

{ TMarkup }

procedure TMarkup.actCalcMarkupExecute(Sender: TObject);
begin
  inherited;
  actCalcMarkup.Enabled := False;
  try
    U.ExecuteSQL('select calcula_markup(%d)', [FMarkupID]);
    RefreshMarkup;
  finally
    actCalcMarkup.Enabled := True;
  end;
end;

procedure TMarkup.actCancelExecute(Sender: TObject);
begin
  MarkupReprovMot := TMarkupReprovMot.Create(nil);
  try
    MarkupReprovMot.ShowModal;
    if MarkupReprovMot.Execute then
    begin
      if Trim(MarkupReprovMot.Memo1.Text) = EmptyStr then
      begin
        U.Out.ShowErro('Para reprovar um markup é necessário informar um motivo!');
        Exit;
      end;

      DbLog := DbLogFactory.getInstanace(FTabela, FRegistro, llError);
      DbLog.Description := 'Reprovação do markup';
      DbLog.History.AddStrings(MarkupReprovMot.Memo1.Lines);

      U.Data.WriteLog(DbLog);

      inherited actOkExecute(actOk);
      inherited;
    end;
  finally
    FreeAndNil(MarkupReprovMot);
  end;
end;

procedure TMarkup.actOkExecute(Sender: TObject);
begin
  inherited;
  FAprovado := True;
  DbLog := DbLogFactory.getInstanace(FTabela, FRegistro, llInfo, 'Cotação aprovada pronta para envio ao cliente!');
  U.Data.WriteLog(DbLog);
  Close;
end;

procedure TMarkup.FormCreate(Sender: TObject);
begin
  inherited;
  cdsDemo.CreateDataSet;
  cdsDemo.LogChanges := False;
end;

procedure TMarkup.JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  with TJvDBGrid(Sender) do
  try
    if (gdSelected in State) then
      Exit;

    Canvas.Font.Style := [];
    Canvas.Font.Color := Font.Color;

    if Column.Index in [0, 2, 3] then
    begin
      case cdsDemooperador.AsString[1] of
        '+': Canvas.Font.Color := clBlue;
        '-': Canvas.Font.Color := clRed;
        '=': Canvas.Font.Color := clBlack;
      end;
    end;

    if (Column.Index = 0) or (cdsDemooperador.AsString = '=') then
      Canvas.Font.Style := [fsBold];
  finally
    JvDBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;

end;

procedure TMarkup.MkpAdd(Texto: string; Valor: Double);
begin
  MkpReg(mkpSoma, Texto, Valor);
end;

procedure TMarkup.MkpReg(Operacao: TMarkupOperacao; Texto: string;
  Valor: Double);
begin
  cdsDemo.Append;
  cdsDemodescricao.AsString := Texto;
  case Operacao of
    mkpSoma: cdsDemooperador.AsString := '+';
    mkpSubtrai: cdsDemooperador.AsString := '-';
    mkpTotal: cdsDemooperador.AsString := '=';
  end;

  if Operacao = mkpTotal then
  begin
    Valor := FSubTotal;
    FSubTotal := 0;
  end else
  begin
    FSubTotal := FSubTotal + Valor;

    if Operacao = mkpSubtrai then
      FSaldo := FSaldo + Valor * -1
    else
      FSaldo := FSaldo + Valor;
  end;

  cdsDemovalor.AsFloat := Valor;
  cdsDemosaldo.AsFloat := FSaldo;

  cdsDemo.Post;
end;

procedure TMarkup.MkpSub(Texto: string; Valor: Double);
begin
  MkpReg(mkpSubtrai, Texto, Valor);
end;

procedure TMarkup.MkpTot(Texto: string);
begin
  MkpReg(mkpTotal, Texto, 0);
end;

procedure TMarkup.PageControl1Change(Sender: TObject);
begin
  inherited;
  JvDBGrid1.Parent := PageControl1.ActivePage;
  RefreshMarkup;
end;

procedure TMarkup.RefreshMarkup;
var
  nSoma: Double;
  nLucro: Double;
begin
  if cdsDemo.Active then
    cdsDemo.EmptyDataSet
  else
    cdsDemo.Open;

  with U.Data.Query do
  try
    SQL.Text :=
    'select vliqui_srv, vlsrvvar, '+
           'bdi_srv, vlcom_srv, vlsrvfixo, vimpos_srv, vlcssl_srv, vlpis_srv, ' +
           'vlirpj_srv, vlcofins_srv, vlinss_srv, vliss, vlcom_srv, vimpos_fix, '+
           'vliqui_mat, bdi_mat, vlcom_mat, vimpos_mat, vlcssl_mat, vlpis_mat, '+
           'vlirpj_mat, vlcofins_mat, vlinss_mat, vlicms, vldespe, vlmobra, '+
           'vlmat '+
      'from markup '+
     'where recno = :id';
    ParamByName('id').AsInteger := FMarkupID;

    Open;

    TabSheet1.TabVisible := FieldByName('vliqui_srv').AsFloat + FieldByName('vlsrvfixo').AsFloat > 0;
    TabSheet2.TabVisible := FieldByName('vliqui_mat').AsFloat > 0;

    if PageControl1.ActivePageIndex = 0 then
    begin
      FSaldo := FieldByName('vlsrvvar').AsFloat + FieldByName('vlmobra').AsFloat +
          FieldByName('vlsrvfixo').AsFloat + FieldByName('vldespe').AsFloat;
      FSubTotal := FSaldo;
      
      // Painel de composição dos valores
      edMO.Value := FieldByName('vlmobra').AsFloat;
      edDesp.Value := FieldByName('vldespe').AsFloat;
      edSrvFix.Value := FieldByName('vlsrvfixo').AsFloat;
      edSrvVar.Value := FieldByName('vlsrvvar').AsFloat;
      edNF.Value := FSaldo;

      MkpTot('VALOR DA NOTA FISCAL');

      MkpSub('CSSL', FieldByName('vlcssl_srv').AsFloat);
      MkpSub('PIS', FieldByName('vlpis_srv').AsFloat);
      MkpSub('COFINS', FieldByName('vlcofins_srv').AsFloat);
      MkpSub('IRPJ', FieldByName('vlirpj_srv').AsFloat);
      MkpSub('INSS', FieldByName('vlinss_srv').AsFloat);
      MkpSub('ISS', FieldByName('vliss').AsFloat);
      
      MkpTot('IMPOSTOS');

      if (FieldByName('vlcom_srv').AsFloat > 0) or
        (FieldByName('vliqui_srv').AsFloat > 0) then
      begin
        if FieldByName('vlcom_srv').AsFloat > 0 then
          MkpSub('Comissão', FieldByName('vlcom_srv').AsFloat);

        if FieldByName('vliqui_srv').AsFloat > 0 then
          MkpSub('Custos variáveis', FieldByName('vliqui_srv').AsFloat);

        MkpTot('CUSTO SERVIÇOS VARIÁVEIS');
      end;

      if (FieldByName('vldespe').AsFloat > 0) then
      begin
        MkpSub('Despesas', FieldByName('vldespe').AsFloat);
        MkpTot('DESPESAS');
      end;

      if (FieldByName('vliqui_srv').AsFloat > 0) and (FieldByName('bdi_srv').AsFloat > 0) then
      begin
        MkpSub(FormatFloat(',0.#0', FieldByName('bdi_srv').AsFloat) + '% de lucro sobre custo variável',
          FieldByName('bdi_srv').AsFloat * FieldByName('vliqui_srv').AsFloat / 100);
      end;

      if (FieldByName('vlsrvfixo').AsFloat > 0) then

        nLucro := (1 - FieldByName('vimpos_fix').AsFloat / FieldByName('vlsrvfixo').AsFloat) * 100;
        if nLucro < 0 then
          nLucro := -1 * nLucro;

        MkpSub(Format('%s de lucro sobre custo fixo',
          [FormatFloat(',0.#0%', nLucro)]), FieldByName('vlsrvfixo').AsFloat - FieldByName('vimpos_fix').AsFloat);

      Exit;
    end;

    FSaldo := FieldByName('vlmat').AsFloat;
    FSubTotal := FSaldo;

    MkpTot('Valor da Nota');

    MkpSub('CSSL', FieldByName('vlcssl_mat').AsFloat);
    MkpSub('PIS', FieldByName('vlpis_mat').AsFloat);
    MkpSub('COFINS', FieldByName('vlcofins_mat').AsFloat);
    MkpSub('IRPJ', FieldByName('vlirpj_mat').AsFloat);
    MkpSub('INSS', FieldByName('vlinss_mat').AsFloat);
    MkpSub('ICMS', FieldByName('vlicms').AsFloat);

    MkpTot('IMPOSTOS');

    if (FieldByName('vlcom_mat').AsFloat > 0) or
      (FieldByName('vliqui_mat').AsFloat > 0) then
    begin
      if FieldByName('vlcom_mat').AsFloat > 0 then
        MkpSub('Comissão', FieldByName('vlcom_mat').AsFloat);

      if FieldByName('vliqui_mat').AsFloat > 0 then
        MkpSub('Custo', FieldByName('vliqui_mat').AsFloat);

      MkpTot('CUSTOS TOTAIS');
    end;

    if (FieldByName('vliqui_mat').AsFloat > 0) and (FieldByName('bdi_mat').AsFloat > 0) then
      MkpSub(FormatFloat(',0.#0', FieldByName('bdi_mat').AsFloat) + '% de lucro sobre materiais',
        FieldByName('bdi_mat').AsFloat * FieldByName('vliqui_mat').AsFloat / 100);

  finally
    close;
    MkpTot('LUCRO LÍQUIDO');
    JvDBGrid1.Parent := PageControl1.ActivePage;
  end;
end;

procedure TMarkup.SetAprovado(const Value: Boolean);
begin
  FAprovado := Value;
end;

procedure TMarkup.SetMarkupAprovacao(const Value: Boolean);
begin
  FMarkupAprovacao := Value;
  actOk.Visible := Value;
  actCancel.Visible := Value;
end;

procedure TMarkup.SetMarkupID(const Value: Integer);
begin
  if FMarkupID = Value then
    Exit;

  Caption :=  Format('Markup %d: %s', [Value, Caption]);

//  with U.Query do
//  try
//    SQL.Text :=
//    'select vlmat, vliqui_mat, vimpos_mat, vlsrvvar, vlmobra, vliqui_srv, '+
//           'vimpos_srv, vlsrvfixo ' +
//      'from markup '+
//     'where recno = :recno';
//
//    ParamByName('recno').AsInteger := Value;
//
//    Open;
//
//    vMatLiq.Value := FieldByName('vliqui_mat').AsFloat;
//    vImpMat.Value := FieldByName('vimpos_mat').AsFloat;
//    vMat.Value := FieldByName('vlmat').AsFloat;
//    vServ.Value := FieldByName('vlsrvvar').AsFloat +
//      FieldByName('vlmobra').AsFloat + FieldByName('vlsrvfixo').AsFloat;
//    vServLiqui.Value := FieldByName('vliqui_srv').AsFloat;
//    vImpServ.Value := FieldByName('vimpos_srv').AsFloat;
//    vServFixo.Value := FieldByName('vlsrvfixo').AsFloat;
//  finally
//    Close;
//  end;

  FMarkupID := Value;
  RefreshMarkup;
end;

procedure TMarkup.SetRegistro(const Value: Integer);
begin
  FRegistro := Value;
end;

procedure TMarkup.SetTabela(const Value: string);
begin
  FTabela := Value;
end;

end.
