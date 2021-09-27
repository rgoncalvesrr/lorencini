unit uGestaoProducao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIForm, ActnList, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, TeEngine, Series, TeeProcs, Chart,
  DBChart, ExtCtrls, ComCtrls, ToolWin, Grids, DBGrids, JvExDBGrids, JvDBGrid, OleCtrls, SHDocVw, Readhtml, FramView,
  FramBrwz, Htmlview;

type
  TGestaoProducao = class(TIForm)
    pnCharts: TPanel;
    Panel4: TPanel;
    DBChart1: TDBChart;
    Panel7: TPanel;
    DBChart3: TDBChart;
    DBChart4: TDBChart;
    qProducao: TZQuery;
    ControlBar1: TControlBar;
    actRefresh: TAction;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    qProducaodata: TDateField;
    qProducaocriado: TFloatField;
    qProducaoapontado: TFloatField;
    qProducaoemitido: TFloatField;
    dsProducao: TDataSource;
    Series3: TFastLineSeries;
    Series1: TLineSeries;
    Series2: TLineSeries;
    HTMLViewer1: THTMLViewer;
    procedure FormActivate(Sender: TObject);
    procedure pnChartsResize(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure qProducaoAfterRefresh(DataSet: TDataSet);
    procedure qEmitidosAfterRefresh(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GestaoProducao: TGestaoProducao;

implementation

uses uDM, uResources, uIUtils;

{$R *.dfm}

procedure TGestaoProducao.actRefreshExecute(Sender: TObject);
begin
  inherited;
  G.RefreshDataSet(qProducao);
  HTMLViewer1.LoadFromFile(U.Path.Temp + 'grafico1.html');
end;

procedure TGestaoProducao.FormActivate(Sender: TObject);
begin
  inherited;
  WindowState := wsMaximized;
end;

procedure TGestaoProducao.pnChartsResize(Sender: TObject);
begin
  inherited;
  DBChart1.Width := DBChart1.Parent.ClientWidth div 2;
  DBChart3.Width := DBChart3.Parent.ClientWidth div 2;
  Panel4.Height := Panel4.Parent.ClientHeight div 2;
end;

procedure TGestaoProducao.qProducaoAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  DBChart1.RefreshData;
end;

procedure TGestaoProducao.qEmitidosAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  DBChart1.RefreshData;
end;

initialization
  RegisterClass(TGestaoProducao);

finalization
  UnRegisterClass(TGestaoProducao);

end.
