unit uChartFaturamentoAcumuladoMesCorrente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIChart, DB, ActnList, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, ExtCtrls, Buttons, TeeProcs,
  TeEngine, Chart, DBChart, ComCtrls, ToolWin, ZAbstractRODataset, ZDataset, Series, Menus;

type
  TChartFaturamentoAcumuladoMesCorrente = class(TIChart)
    qFaturamento: TZReadOnlyQuery;
    qFaturamentofaturamento: TFloatField;
    qProducao: TZReadOnlyQuery;
    qProducaoemissao: TDateTimeField;
    qProducaoproducao: TFloatField;
    qFaturamentoemissao: TDateTimeField;
    Series1: TBarSeries;
    Series2: TBarSeries;
    pmMes: TPopupMenu;
    tbMesSelecionado: TToolButton;
    TabSheet2: TTabSheet;
    procedure PageControl2Change(Sender: TObject);
  private
    { Private declarations }
    procedure OnLoad; override;
    procedure RefreshData; override;
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

implementation

uses uDM, dateutils, uIUtils;

{$R *.dfm}

{ TChartMesCorrenteAcumulado }

procedure TChartFaturamentoAcumuladoMesCorrente.OnLoad;
begin
  inherited;
  BuildMenuMeses(pmMes, tbMesSelecionado);
end;

procedure TChartFaturamentoAcumuladoMesCorrente.PageControl2Change(Sender: TObject);
begin
  case PageControl2.ActivePageIndex of
    0: dsDataGrid.DataSet := qFaturamento;
    1: dsDataGrid.DataSet := qProducao;
  end;

  inherited;
end;

procedure TChartFaturamentoAcumuladoMesCorrente.RefreshControls;
begin
  inherited;
  DBChart1.Title.Text.Text := Format('Faturamento vs Produção - Acumulado em %s de %d', [FMeses[Mes], YearOf(Now)]);
end;

procedure TChartFaturamentoAcumuladoMesCorrente.RefreshData;
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
