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
    procedure ClickMes(Sender: TObject);
    procedure BuildMenuMeses;
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

procedure TChartCotaDesempenho.BuildMenuMeses;
var
  Item: TMenuItem;
  Items: array of TMenuItem;
  I, MesLimite: Byte;
begin
  MesLimite := MonthOf(Now);
  SetLength(Items, MesLimite);

  for I := 1 to MesLimite do
  begin
    Item := TMenuItem.Create(nil);
    Item.Caption := FMeses[i];
    Item.Tag := I;

    Items[i-1] := Item;
  end;

  BuildRadioMenu(pmMeses, Items, ClickMes);
  ClickMes(Items[MesLimite-1]);
end;

procedure TChartCotaDesempenho.ClickMes(Sender: TObject);
var
  Mes: TMenuItem;
begin
  Mes := TMenuItem(Sender);
  Mes.Checked := True;

  tbMesSelecionado.Caption := Mes.Caption;
  tbMesSelecionado.Tag := Mes.Tag;

  RefreshData;
end;

procedure TChartCotaDesempenho.OnLoad;
begin
  BuildMenuMeses;
  inherited;
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
  
  if not (tbMesSelecionado.Tag in [1..12]) then
    Exit;

  MesTitulo := EmptyStr;

  if tbMesSelecionado.Tag = MonthOf(Now) then
    MesTitulo:= ' (Em Andamento)';

  DBChart1.Title.Text.Text := Format('Evolução Mensal - %s de %d%s', [FMeses[tbMesSelecionado.Tag], YearOf(Now), MesTitulo]);

end;

procedure TChartCotaDesempenho.RefreshData;
begin
  inherited;
  with qCotaMesAtual do
  begin
    ParamByName('ano').AsInteger := YearOf(Now);
    ParamByName('mes').AsInteger := tbMesSelecionado.Tag;
    Close;
  end;
  
  G.RefreshDataSet(qCotaMesAtual);
end;

end.
