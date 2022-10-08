unit uChartLabEvolucaoValor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIChart, DB, ActnList, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, ExtCtrls, TeeProcs, TeEngine,
  Chart, DBChart, ComCtrls, ToolWin, ZAbstractRODataset, ZDataset, Series, Buttons;

type
  TChartLabEvolucaoValor = class(TIChart)
    qData: TZReadOnlyQuery;
    qDataemissao_mes: TSmallintField;
    qDataano_anterior: TFloatField;
    qDataano_corrente: TFloatField;
    qDataMes: TStringField;
    Series1: TBarSeries;
    Series2: TBarSeries;
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
    FieldByName('mes').AsString := FMeses[FieldByName('emissao_mes').AsInteger];
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
begin
  with qData do
  begin
    ParamByName('mes').AsInteger := MonthOf(Now);
    ParamByName('ano_de').AsInteger := YearOf(IncYear(Now, -1));
    ParamByName('ano_ate').AsInteger := YearOf(Now);
    Close;
  end;

  G.RefreshDataSet(qData);
  DBChart1.Refresh;
  
  inherited;
end;

end.
