unit uChartFaturamentoHistorico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIChart, DB, ActnList, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, ExtCtrls, Buttons, TeeProcs,
  TeEngine, Chart, DBChart, ComCtrls, ToolWin, ZAbstractRODataset, ZDataset, Series, TeeFunci;

type
  TChartFaturamentoHistorico = class(TIChart)
    qData: TZReadOnlyQuery;
    qDataano: TFloatField;
    qDatafaturamento: TFloatField;
    Series1: TBarSeries;
    TeeFunction1: THighTeeFunction;
    Series2: TFastLineSeries;
    TeeFunction2: TLowTeeFunction;
    Series3: TFastLineSeries;
    Series4: TFastLineSeries;
    TeeFunction3: TAverageTeeFunction;
  private
    { Private declarations }
    procedure RefreshData; override;
  public
    { Public declarations }
  end;

implementation

uses uIUtils, DateUtils;

{$R *.dfm}

{ TChartFaturamentoHistorico }

procedure TChartFaturamentoHistorico.RefreshData;
begin
  inherited;
  
  with qData do
  begin
    ParamByName('emissao_de').AsDateTime := EncodeDate(2010, 1, 1);
    ParamByName('emissao_ate').AsDateTime := EndOfTheYear(Now);
    Close;
  end;

  G.RefreshDataSet(qData);
end;

end.
