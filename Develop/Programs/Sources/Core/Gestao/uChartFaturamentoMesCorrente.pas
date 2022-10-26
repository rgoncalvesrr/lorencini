unit uChartFaturamentoMesCorrente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIChart, DB, ActnList, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, ExtCtrls, Buttons, TeeProcs,
  TeEngine, Chart, DBChart, ComCtrls, ToolWin, ZAbstractRODataset, ZDataset, Menus, Series, TeeFunci;

type
  TChartFaturamentoMesCorrente = class(TIChart)
    qFaturamento: TZReadOnlyQuery;
    qFaturamentoemissao: TDateField;
    qFaturamentofaturamento: TFloatField;
    tbMesSelecionado: TToolButton;
    pmMes: TPopupMenu;
    qProducao: TZReadOnlyQuery;
    qProducaoemissao: TDateTimeField;
    qProducaoproducao: TFloatField;
    TabSheet2: TTabSheet;
    Series1: TBarSeries;
    Series2: TBarSeries;
    procedure PageControl2Change(Sender: TObject);
  private
    procedure OnLoad; override;
    procedure RefreshData; override;
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

implementation

uses uDM, uResources, dateutils, uIUtils;

{$R *.dfm}

{ TChartMesCorrente }

procedure TChartFaturamentoMesCorrente.OnLoad;
begin
  inherited;
  BuildMenuMeses(pmMes, tbMesSelecionado);
end;

procedure TChartFaturamentoMesCorrente.PageControl2Change(Sender: TObject);
begin
  case PageControl2.ActivePageIndex of
    0: dsDataGrid.DataSet := qFaturamento;
    1: dsDataGrid.DataSet := qProducao;
  end;

  inherited;
end;

procedure TChartFaturamentoMesCorrente.RefreshControls;
begin
  inherited;
  DBChart1.Title.Text.Text := Format('Faturamento vs Produção de %s de %d', [FMeses[Mes], YearOf(Now)]);
end;

procedure TChartFaturamentoMesCorrente.RefreshData;
begin
  inherited;
  with qFaturamento do
  begin
    ParamByName('emissao_de').AsDateTime := StartOfTheMonth(RecodeMonth(Now, Mes));
    ParamByName('emissao_ate').AsDateTime := EndOfTheMonth(RecodeMonth(Now, Mes));
    Close;
  end;

  with qProducao do
  begin
    ParamByName('emissao_de').AsDateTime := StartOfTheMonth(RecodeMonth(Now, Mes));
    ParamByName('emissao_ate').AsDateTime := EndOfTheMonth(RecodeMonth(Now, Mes));
    Close;
  end;

  G.RefreshDataSet(qFaturamento);
  G.RefreshDataSet(qProducao);
end;

end.
