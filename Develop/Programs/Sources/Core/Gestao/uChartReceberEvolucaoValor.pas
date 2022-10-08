unit uChartReceberEvolucaoValor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIChart, DB, ActnList, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, ExtCtrls, TeeProcs, TeEngine,
  Chart, DBChart, ComCtrls, ToolWin, ZAbstractRODataset, ZDataset, Series, Buttons;

type
  TChartReceberEvolucaoValor = class(TIChart)
    qData: TZReadOnlyQuery;
    qDatabaixa_mes: TSmallintField;
    qDataano_anterior: TFloatField;
    qDataano_corrente: TFloatField;
    qDataMes: TStringField;
    Series2: TBarSeries;
    qDataevolucao: TFloatField;
    Series1: TBarSeries;
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

procedure TChartReceberEvolucaoValor.qDataCalcFields(DataSet: TDataSet);
var
  Percentual: Double;
begin
  inherited;
  with qData do
  begin
    FieldByName('mes').AsString := FMeses[FieldByName('baixa_mes').AsInteger];

    Percentual := 1;

    if FieldByName('ano_anterior').AsFloat > 0 then
      Percentual := FieldByName('ano_corrente').AsFloat / FieldByName('ano_anterior').AsFloat - 1;

    FieldByName('evolucao').AsFloat :=  Percentual * 100;
  end;
end;

procedure TChartReceberEvolucaoValor.RefreshControls;
var
  Corrente, Anterior: Integer;
begin
  inherited;
  with qData do
  begin
    Corrente := ParamByName('anocorrente').AsInteger;
    Anterior := ParamByName('anoanterior').AsInteger;
  end;

  qDataano_corrente.DisplayLabel := Format('Ano %d', [Corrente]);
  qDataano_anterior.DisplayLabel := Format('Ano %d', [Anterior]);

  with DBChart1 do
  begin
    Series[0].Title := IntToStr(Anterior);
    Series[1].Title := IntToStr(Corrente);
    Title.Text.Text := Format('Valores recebidos entre %s e %s', [FMeses[1], FMeses[qData.ParamByName('mes').AsInteger]]);
  end;
end;

procedure TChartReceberEvolucaoValor.RefreshData;
begin
  with qData do
  begin
    ParamByName('mes').AsInteger := MonthOf(Now);
    ParamByName('anoanterior').AsInteger := YearOf(IncYear(Now, -1));
    ParamByName('anocorrente').AsInteger := YearOf(Now);
  end;

  G.RefreshDataSet(qData);

  inherited;
end;

end.
