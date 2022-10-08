unit uChartCotaEvolucao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIChart, DB, ZAbstractRODataset, ZDataset, ActnList, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  TeEngine, Series, ExtCtrls, TeeProcs, Chart, DBChart, ComCtrls, ToolWin, Menus, Buttons;

type

  TCotaTipoMenuItem = class(TMenuItem)
  private
    FField: string;
    procedure SetField(const Value: string);
  public
    property Field: string read FField write SetField;
  end;

  TChartCotaEvolucao = class(TIChart)
    ToolButton12: TToolButton;
    TabSheet2: TTabSheet;
    qAnoCorrente: TZReadOnlyQuery;
    qAnoCorrentemonth: TSmallintField;
    qAnoCorrenteemitidas: TLargeintField;
    qAnoCorrenteaprovadas: TLargeintField;
    qAnoCorrenteestudo: TLargeintField;
    qAnoCorrenteautorizadas: TLargeintField;
    qAnoCorrenteexecutadas: TLargeintField;
    qAnoCorrenteexpiradas: TLargeintField;
    qAnoCorrentecanceladas: TLargeintField;
    qAnoCorrentemes: TStringField;
    qAnoAnterior: TZReadOnlyQuery;
    SmallintField1: TSmallintField;
    StringField1: TStringField;
    LargeintField1: TLargeintField;
    LargeintField2: TLargeintField;
    LargeintField3: TLargeintField;
    LargeintField4: TLargeintField;
    LargeintField5: TLargeintField;
    LargeintField6: TLargeintField;
    LargeintField7: TLargeintField;
    tbTipoCota: TToolButton;
    pmTipoCota: TPopupMenu;
    Series2: TBarSeries;
    Series1: TBarSeries;
    procedure qAnoCorrenteCalcFields(DataSet: TDataSet);
    procedure PageControl2Change(Sender: TObject);
  private
    procedure ClickTipoCotacao(Sender: TObject);
    procedure BuildMenuTipoCota; 
  protected
    procedure RefreshData; override;
    procedure RefreshControls; override;
    procedure OnLoad; override;
  public
    { Public declarations }
  end;

implementation

uses
  dateutils, uDM, uIUtils;

{$R *.dfm}

const
  Status: Array[0..5] of string = ('emitidas', 'autorizadas', 'estudo', 'executadas', 'expiradas','canceladas');

procedure TChartCotaEvolucao.RefreshControls;
var
  AnoAnterior, AnoCorrente: Integer;
begin
  inherited;
  AnoAnterior := qAnoAnterior.ParamByName('ano').AsInteger;
  AnoCorrente := qAnoCorrente.ParamByName('ano').AsInteger;

  TabSheet1.Caption := Format('Ano %d', [AnoCorrente]);
  TabSheet2.Caption := Format('Ano %d', [AnoAnterior]);

  with DBChart1 do
  begin
    Title.Text.Text := 'Cotações ' + qAnoCorrente.FieldByName(Series[1].YValues.ValueSource).DisplayLabel;
    
    Series[1].Title := Format('%d', [AnoCorrente]);
    Series[0].Title := Format('%d', [AnoAnterior]);

    SeriesUp(Series[0]);
  end;
  
  DBChart1.Refresh;
end;

procedure TChartCotaEvolucao.RefreshData;
var
  AnoAnterior, AnoAtual: Integer;
begin
  AnoAnterior := YearOf(IncYear(Now, -1));
  AnoAtual := YearOf(Now);

  try
    with qAnoCorrente do
    begin
      ParamByName('ano').AsInteger := AnoAtual;
      ParamByName('mes_inicial').AsInteger := 1;
      ParamByName('mes_final').AsInteger := MonthOf(Now);
    end;

    with qAnoAnterior do
    begin
      ParamByName('ano').AsInteger := AnoAnterior;
      ParamByName('mes_inicial').AsInteger := 1;
      ParamByName('mes_final').AsInteger := MonthOf(Now);
    end;
  finally
    G.RefreshDataSet(qAnoCorrente);
    G.RefreshDataSet(qAnoAnterior);
  end;

  inherited;
end;

procedure TChartCotaEvolucao.BuildMenuTipoCota;
var
  Item: TCotaTipoMenuItem;
  Items: array of TMenuItem;
  I: Byte;
begin
  SetLength(Items, length(Status));

  for I := Low(Status) to High(Status) do
  begin
    Item := TCotaTipoMenuItem.Create(nil);
    Item.Caption := qAnoCorrente.FieldByName(Status[i]).DisplayLabel;
    Item.Field := Status[i];
    Item.Tag := I;

    Items[i] := Item;
  end;

  Items[0].Checked := True;

  BuildRadioMenu(pmTipoCota, Items, ClickTipoCotacao);
end;

procedure TChartCotaEvolucao.ClickTipoCotacao(Sender: TObject);
var
  Item: TCotaTipoMenuItem;
begin
  Item := TCotaTipoMenuItem(Sender);
  Item.Checked := True;
  tbTipoCota.Caption := Item.Caption;

  DBChart1.Series[0].YValues.ValueSource := Item.Field;
  DBChart1.Series[1].YValues.ValueSource := Item.Field;
  DBChart1.Repaint;
end;

procedure TChartCotaEvolucao.OnLoad;
begin
  inherited;
  BuildMenuTipoCota;
end;

procedure TChartCotaEvolucao.PageControl2Change(Sender: TObject);
begin
  case PageControl2.ActivePageIndex of
    0: dsDataGrid.DataSet := qAnoCorrente;
    1: dsDataGrid.DataSet := qAnoAnterior;
  end;

  inherited;
end;

procedure TChartCotaEvolucao.qAnoCorrenteCalcFields(DataSet: TDataSet);
begin
  inherited;
  with DataSet do
    FieldByName('mes').AsString := FMeses[FieldByName('month').AsInteger];
end;

{ TCotaTipoMenuItem }

procedure TCotaTipoMenuItem.SetField(const Value: string);
begin
  FField := Value;
end;

end.
