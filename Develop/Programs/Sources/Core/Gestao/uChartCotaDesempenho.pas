unit uChartCotaDesempenho;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIChart, DB, ActnList, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, TeEngine, Series, ExtCtrls,
  TeeProcs, Chart, DBChart, ComCtrls, ToolWin, Menus, ZAbstractRODataset, ZDataset, Buttons;

type
  TChartCotaDesempenho = class(TIChart)
    qCotaMesAtual: TZReadOnlyQuery;
    qCotaMesAtualstatus_code: TIntegerField;
    qCotaMesAtualcotacoes: TLargeintField;
    qCotaMesAtualLabel: TStringField;
    pmMeses: TPopupMenu;
    ToolButton6: TToolButton;
    tbMesSelecionado: TToolButton;
    Series1: TBarSeries;
    procedure qCotaMesAtualCalcFields(DataSet: TDataSet);
  private
    procedure OnLoad; override;
    procedure RefreshData; override;
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  ChartCotaDesempenho: TChartCotaDesempenho;

implementation

uses
  dateutils, uIUtils;

{$R *.dfm}

procedure TChartCotaDesempenho.OnLoad;
begin
  inherited;
  BuildMenuMeses(pmMeses, tbMesSelecionado);
end;

procedure TChartCotaDesempenho.qCotaMesAtualCalcFields(DataSet: TDataSet);
begin
  inherited;
  with DataSet do
    case FieldByName('status_code').AsInteger of
      1: FieldByName('label').AsString := 'Emitidas';
      2: FieldByName('label').AsString := 'Aguardando Aprovação';
      3: FieldByName('label').AsString := 'Aprovadas';
      4: FieldByName('label').AsString := 'Em Estudo';
      5: FieldByName('label').AsString := 'Autorizadas';
      6: FieldByName('label').AsString := 'Executadas';
      7: FieldByName('label').AsString := 'Expiradas';
      8: FieldByName('label').AsString := 'Canceladas';
    end;
end;

procedure TChartCotaDesempenho.RefreshControls;
var
  MesTitulo: string;
begin
  inherited;

  MesTitulo := EmptyStr;

  if tbMesSelecionado.Tag = MonthOf(Now) then
    MesTitulo:= ' (Em Andamento)';

  DBChart1.Title.Text.Text := Format('Contações do mês de %s de %d%s', [FMeses[Mes], YearOf(Now), MesTitulo]);
end;

procedure TChartCotaDesempenho.RefreshData;
begin
  inherited;
  with qCotaMesAtual do
  begin
    ParamByName('ano').AsInteger := YearOf(Now);
    ParamByName('mes').AsInteger := Mes;
    Close;
  end;
  
  G.RefreshDataSet(qCotaMesAtual);
end;

end.
