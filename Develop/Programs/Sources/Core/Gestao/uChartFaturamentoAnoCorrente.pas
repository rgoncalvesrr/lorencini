unit uChartFaturamentoAnoCorrente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIChart, DB, ActnList, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, ExtCtrls, Buttons, TeeProcs,
  TeEngine, Chart, DBChart, ComCtrls, ToolWin, ZAbstractRODataset, ZDataset, Series;

type
  TChartFaturamentoAnoCorrente = class(TIChart)
    qData: TZReadOnlyQuery;
    Series1: TBarSeries;
    Series2: TBarSeries;
    qDatames: TFloatField;
    qDataanterior: TFloatField;
    qDatacorrente: TFloatField;
    qDatalabel: TStringField;
    procedure qDataCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure RefreshData; override;
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

implementation

uses uIUtils, DateUtils;

{$R *.dfm}

{ TChartFaturamentoAnoCorrente }

procedure TChartFaturamentoAnoCorrente.qDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('label').AsString := FMeses[DataSet.FieldByName('mes').AsInteger];
end;

procedure TChartFaturamentoAnoCorrente.RefreshControls;
var
  anoCorrente, anoAnterior: string;
begin
  inherited;
  anoCorrente := qData.ParamByName('ano_corrente').AsString;
  anoAnterior := qData.ParamByName('ano_anterior').AsString;

  with DBChart1 do
  begin
    Title.Text.Text := 'Faturamento Anual';
    Series1.Title := anoAnterior;
    Series2.Title := anoCorrente;
  end;

  with qData do
  begin
    FieldByName('anterior').DisplayLabel := Format('Ano %s', [anoAnterior]);
    FieldByName('corrente').DisplayLabel := Format('Ano %s', [anoCorrente]);
  end;
end;

procedure TChartFaturamentoAnoCorrente.RefreshData;
var
  de, ate: TDateTime;
begin
  inherited;

  de := IncYear(StartOfTheYear(Now), -1);
  ate := EndOfTheYear(Now);

  with qData do
  begin
    ParamByName('emissao_de').AsDateTime := de;
    ParamByName('emissao_ate').AsDateTime := ate;
    ParamByName('ano_anterior').AsInteger := YearOf(de);
    ParamByName('ano_corrente').AsInteger := YearOf(ate);
    Close;
  end;

  G.RefreshDataSet(qData);
end;

end.
