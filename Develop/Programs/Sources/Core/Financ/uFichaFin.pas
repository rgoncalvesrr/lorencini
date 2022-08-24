unit uFichaFin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, uFrameData, uIUtils, DBCtrls;

type
  TFichaFin = class(TIDefBrowse)
    IBrwSrcdata: TDateField;
    IBrwSrchistorico: TMemoField;
    IBrwSrcdocto: TStringField;
    IBrwSrcvalor: TFloatField;
    IBrwSrcsaldo: TFloatField;
    FrameData1: TFrameData;
    Label3: TLabel;
    Label18: TLabel;
    ComboBox1: TComboBox;
    Label4: TLabel;
    IBrwSrcdescri: TStringField;
    Panel3: TPanel;
    lbSaldoAntValor: TLabel;
    lbSaldoAnt: TLabel;
    lbSaldo: TLabel;
    lbSaldoValor: TLabel;
    lbSaldoFut: TLabel;
    lbSaldoFutValor: TLabel;
    lbSaldoCobrar: TLabel;
    lbSaldoCobrarValor: TLabel;
    zSaldos: TZQuery;
    zSaldosempresa: TStringField;
    zSaldosnome_chave: TStringField;
    zSaldoscnpj: TStringField;
    zSaldoscpf: TStringField;
    zSaldostelefone: TStringField;
    zSaldosatual: TFloatField;
    zSaldosfuturo: TFloatField;
    zSaldosdebitos: TFloatField;
    zSaldoscreditos: TFloatField;
    zSaldosacobrar: TFloatField;
    dsSaldos: TDataSource;
    zSaldoscodigo: TIntegerField;
    IBrwSrcrecno: TIntegerField;
    zSaldosAnterior: TFloatField;
    Panel4: TPanel;
    lbCliente: TLabel;
    lbCliCodigo: TLabel;
    lbCliEmpresa: TLabel;
    lbCliInsc: TLabel;
    IBrwSrceditavel: TBooleanField;
    IBrwSrccodigo: TIntegerField;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    IBrwSrcpedido: TIntegerField;
    IBrwSrcos: TIntegerField;
    IBrwSrctitulo: TIntegerField;
    actEstorno: TAction;
    EstornarLanamento1: TMenuItem;
    IBrwSrcventrada: TFloatField;
    IBrwSrcvsaida: TFloatField;
    ToolBar2: TToolBar;
    ToolButton17: TToolButton;
    IBrwSrcrecno_pai: TIntegerField;
    IBrwSrctipo: TIntegerField;
    ControlBar1: TControlBar;
    procedure IBrwSrcCalcFields(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure FrameData1CCalendarDiff1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
    procedure zSaldosCalcFields(DataSet: TDataSet);
    procedure IBrwSrcAfterInsert(DataSet: TDataSet);
    procedure IBrwSrcAfterPost(DataSet: TDataSet);
    procedure actEstornoExecute(Sender: TObject);
  private
    { Private declarations }
    FCBClientes: TComboList;
    FCodigo: Integer;
    function Cor(Valor: Double): TColor;
    procedure SetCodigo(const Value: Integer);
    procedure OnLoad; override;
    procedure OnEdit; override;
    procedure RefreshCtrl; override;
    procedure ConfigLabel(ALabel: TLabel);
  public
    { Public declarations }
    property Codigo: Integer read FCodigo write SetCodigo;
  end;

var
  FichaFin: TFichaFin;

implementation

uses uDM, ccalendardiff, uFichaFinM;

{$R *.dfm}

procedure TFichaFin.actEstornoExecute(Sender: TObject);
var
  bRec: TBookmark;
begin
  inherited;
  if not U.Out.ConfWarn('Deseja realmente estornar o lançamento?'+#13#10+#13#10+
    '%s valor %s', [IBrwSrchistorico.AsString,
      FormatFloat(',0.#0', IBrwSrcvalor.AsFloat)]) then
    Exit;

  bRec := IBrwSrc.GetBookmark;
  try
    try
      U.Data.ExecSQL('select fin_caixaEstornar(%d)', [IBrwSrcrecno.AsInteger]);
      U.Out.ShowInfo('Lançamento estornado!');
      actQueryProcessExecute(actQueryProcess);
      IBrwSrc.Last;
    except
      on E:Exception do
      begin
        U.Out.ShowErro('Não foi possível estornar lançamento!'+#13#10+'%s',
          [E.Message]);
        IBrwSrc.GotoBookmark(bRec);
      end;
    end;
  finally
    IBrwSrc.FreeBookmark(bRec);
  end;
end;

procedure TFichaFin.actQueryProcessExecute(Sender: TObject);
var
  fWhere: String;
  ACal : TCCalendarDiff;
begin
  inherited;

  lbSaldoAntValor.Font.Color := clWindowText;
  lbSaldoValor.Font.Color := clWindowText;
  lbSaldoFutValor.Font.Color := clWindowText;
  lbSaldoCobrarValor.Font.Color := clWindowText;

  if not Assigned(DataSet) then
    Exit;

  ACal := FrameData1.CCalendarDiff1;

  DataSet.ParamByName('datasaldo').AsDate := ACal.BeginDate - 1;
  DataSet.ParamByName('de').AsDate := ACal.BeginDate;
  DataSet.ParamByName('ate').AsDate := ACal.EndDate;
  {Aplica filtro por cliente}
  if Assigned(FCBClientes.Selected) and (FCBClientes.Selected.Value > 0) then
    DataSet.ParamByName('codigo').AsInteger:= FCBClientes.Selected.Value;

  G.RefreshDataSet(DataSet);
  RefreshCtrl;

  zSaldos.ParamByName('codigo').AsInteger := DataSet.ParamByName('codigo').AsInteger;
  G.RefreshDataSet(zSaldos);

  with zSaldos do
  begin
    lbSaldoValor.Caption := zSaldosatual.DisplayText;
    lbSaldoFutValor.Caption := zSaldosfuturo.DisplayText;
    lbSaldoCobrarValor.Caption := zSaldosacobrar.DisplayText;
    lbSaldoValor.Font.Color := Cor(zSaldosatual.AsFloat);
    lbSaldoFutValor.Font.Color := Cor(zSaldosfuturo.AsFloat);
    lbSaldoCobrarValor.Font.Color := Cor(zSaldosacobrar.AsFloat);
    lbCliCodigo.Caption := zSaldoscodigo.AsString;
    lbCliEmpresa.Caption := ' - ' + zSaldosempresa.AsString;
    if zSaldoscnpj.AsString <> EmptyStr then
      lbCliInsc.Caption := ' ' + zSaldoscnpj.DisplayText
    else
      lbCliInsc.Caption := ' ' + zSaldoscpf.DisplayText;
  end;

  lbSaldoAntValor.Caption := FormatFloat(',0.#0', IBrwSrcsaldo.AsFloat);
  lbSaldoAntValor.Font.Color := Cor(IBrwSrcsaldo.AsFloat);

  lbSaldo.Caption := 'Saldo em ' + FormatDateTime('dd/mm/yyyy:', Now);
end;

procedure TFichaFin.ComboBox1Change(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TFichaFin.ConfigLabel(ALabel: TLabel);
begin
  ALabel.Font.Style := [fsBold];
  ALabel.Font.Size := 12;
end;

function TFichaFin.Cor(Valor: Double): TColor;
begin
  Result := clWindowText;

  if Valor < 0 then
    Result := clRed;

  if Valor > 0 then
    Result := clBlue;
end;

procedure TFichaFin.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  with TDBGrid(Sender) do
  begin
    if (gdFocused in State) then
      Canvas.Font.Color := clWhite
    else
      Canvas.Font.Color := clWindowText;

    if Column.Field is TFloatField then
    begin
      if (Column.Field = IBrwSrcvsaida) then
        Canvas.Font.Color := clRed;

      if (Column.Field = IBrwSrcventrada) then
        Canvas.Font.Color := clBlue;
    end;
  end;

  inherited DBGridDrawColumnCell(Sender, Rect, DataCol, Column, State)
end;

procedure TFichaFin.FormCreate(Sender: TObject);
begin
  inherited;
  FCBClientes := TComboList.Create(ComboBox1, 'vclicaixa', 'codigo', 'nome_chave');
end;

procedure TFichaFin.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FCBClientes);
  inherited;
end;

procedure TFichaFin.FormShow(Sender: TObject);
begin
  inherited;
  ConfigLabel(lbSaldoAnt);
  ConfigLabel(lbSaldoAntValor);
  ConfigLabel(lbSaldo);
  ConfigLabel(lbSaldoValor);
  ConfigLabel(lbSaldoFut);
  ConfigLabel(lbSaldoFutValor);
  ConfigLabel(lbSaldoCobrar);
  ConfigLabel(lbSaldoCobrarValor);
  ConfigLabel(lbCliente);
  ConfigLabel(lbCliCodigo);
  ConfigLabel(lbCliEmpresa);
  ConfigLabel(lbCliInsc);
end;

procedure TFichaFin.FrameData1CCalendarDiff1Change(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TFichaFin.IBrwSrcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  IBrwSrcdata.AsDateTime := Now;
  IBrwSrcvalor.AsFloat := 0;
  IBrwSrccodigo.AsInteger := zSaldoscodigo.AsInteger;
end;

procedure TFichaFin.IBrwSrcAfterPost(DataSet: TDataSet);
begin
  inherited;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TFichaFin.IBrwSrcAfterScroll(DataSet: TDataSet);
begin
  inherited;
  RefreshCtrl;
end;

procedure TFichaFin.IBrwSrcCalcFields(DataSet: TDataSet);
begin
  inherited;
  IBrwSrcdescri.AsString := IBrwSrchistorico.AsString;
  if IBrwSrcvalor.AsFloat < 0 then
    IBrwSrcvsaida.AsFloat := IBrwSrcvalor.AsFloat * -1
  else
    IBrwSrcventrada.AsFloat := IBrwSrcvalor.AsFloat;
end;

procedure TFichaFin.OnEdit;
begin
  FichaFinM := TFichaFinM.Create(nil);
  try
    FichaFinM.DataSet := DataSet;
    FichaFinM.ShowModal;
  finally
    FreeAndNil(FichaFinM);
  end;
end;

procedure TFichaFin.OnLoad;
begin
  inherited;
  FrameData1.CCalendarDiff1.Interval := diQuarterlyToDate;
end;

procedure TFichaFin.RefreshCtrl;
begin
  inherited;
  actEdit.Enabled := IBrwSrceditavel.AsBoolean;
  actDel.Enabled := IBrwSrceditavel.AsBoolean;
  actEstorno.Enabled := IBrwSrc.Active and not IBrwSrc.IsEmpty and (IBrwSrctipo.AsInteger = 10);
end;

procedure TFichaFin.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
  FCBClientes.Criteria.Add(Format('codigo = %d', [FCodigo]));
  FCBClientes.UpdateList;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TFichaFin.zSaldosCalcFields(DataSet: TDataSet);
begin
  inherited;
  zSaldosAnterior.AsFloat := IBrwSrcsaldo.AsFloat;
end;

initialization
  RegisterClass(TFichaFin);

finalization
  UnRegisterClass(TFichaFin);

end.
