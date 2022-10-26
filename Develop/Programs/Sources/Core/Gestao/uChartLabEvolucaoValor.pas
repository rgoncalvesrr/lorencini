unit uChartLabEvolucaoValor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIChart, DB, ActnList, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, ExtCtrls, TeeProcs, TeEngine,
  Chart, DBChart, ComCtrls, ToolWin, ZAbstractRODataset, ZDataset, Series, Buttons, TeeFunci;

type
  TChartLabEvolucaoValor = class(TIChart)
    qData: TZReadOnlyQuery;
    qDataano_anterior: TFloatField;
    qDataano_corrente: TFloatField;
    Series1: TBarSeries;
    Series2: TBarSeries;
    qDatames: TSmallintField;
    qDatalabel: TStringField;
    TeeFunction1: TAverageTeeFunction;
    Series3: TFastLineSeries;
    procedure qDataCalcFields(DataSet: TDataSet);
  private
    procedure RefreshData; override;
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

implementation

uses uDM, dateutils, uIUtils;

{$R *.dfm}

procedure TChartLabEvolucaoValor.qDataCalcFields(DataSet: TDataSet);
begin
  inherited;
  with qData do
    FieldByName('label').AsString := FMeses[FieldByName('mes').AsInteger];
end;

procedure TChartLabEvolucaoValor.RefreshControls;
begin
  inherited;
  DBChart1.Series[0].Title := qData.ParamByName('ano_de').AsString;
  DBChart1.Series[1].Title := qData.ParamByName('ano_ate').AsString;
  
  qDataano_anterior.DisplayLabel := Format('Ano %s', [qData.ParamByName('ano_de').AsString]);
  qDataano_corrente.DisplayLabel := Format('Ano %s', [qData.ParamByName('ano_ate').AsString]);
end;

procedure TChartLabEvolucaoValor.RefreshData;
var
  de, ate: TDateTime;
begin
  de := IncYear(StartOfTheYear(Now), -1);
  ate := EndOfTheYear(Now);

  with qData do
  begin
    ParamByName('emissao_de').AsDateTime := de;
    ParamByName('emissao_ate').AsDateTime := ate;
    ParamByName('ano_de').AsInteger := YearOf(de);
    ParamByName('ano_ate').AsInteger := YearOf(ate);

    Close;
  end;

  G.RefreshDataSet(qData);
  DBChart1.Refresh;
  
  inherited;
end;

end.
