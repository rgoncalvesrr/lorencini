unit uIChart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIForm, ActnList, TeEngine, Series, ExtCtrls, TeeProcs, Chart, DBChart, ComCtrls, ToolWin, DB,
  ZAbstractRODataset, ZDataset, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  Menus, Contnrs, Buttons;

type
  TIChart = class(TIForm)
    ControlBar1: TControlBar;
    ToolBar1: TToolBar;
    DBChart1: TDBChart;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    actChartSetMarks: TAction;
    actChartSet3D: TAction;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    actDataRefresh: TAction;
    PageControl1: TPageControl;
    tsChart: TTabSheet;
    tsData: TTabSheet;
    ToolButton5: TToolButton;
    actDataGrid: TAction;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    DataGrid: TJvDBUltimGrid;
    dsDataGrid: TDataSource;
    actShowHideToolBar: TAction;
    sbShowHideControlBar: TSpeedButton;
    actZoomWindow: TAction;
    tbZoomWindow: TToolButton;
    sbShowHideZoomWindow: TSpeedButton;
    pnDataEmpty: TPanel;
    procedure actChartSetMarksExecute(Sender: TObject);
    procedure actChartSet3DExecute(Sender: TObject);
    procedure actDataRefreshExecute(Sender: TObject);
    procedure actDataGridExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PageControl2Change(Sender: TObject);
    procedure actShowHideToolBarExecute(Sender: TObject);
    procedure actZoomWindowExecute(Sender: TObject);
    procedure DBChart1AfterDraw(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dsDataGridDataChange(Sender: TObject; Field: TField);
    procedure tsChartResize(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ControlBar1Resize(Sender: TObject);
  private
    procedure LocalRefreshControls;
    procedure LocalRefreshData;
  protected
    FLastParent: TWinControl;
    FMeses: Array[1..12] of String;
    procedure OnLoad; override;
    procedure LoadChartDefaults; virtual;
    procedure RefreshData; virtual;
    procedure RefreshControls; virtual;
    procedure BuildRadioMenu(Menu: TPopupMenu; const Items: array of TMenuItem; ExecEvent: TNotifyEvent);
  public
    class function New(AParent: TWinControl; AllowConfig: Boolean = True): TIChart;
  end;

implementation

uses uResources, uDM, uIUtils;

{$R *.dfm}

procedure TIChart.actChartSet3DExecute(Sender: TObject);
begin
  inherited;
  TAction(Sender).Checked := not TAction(Sender).Checked;
  DBChart1.View3D := TAction(Sender).Checked;
end;

procedure TIChart.actChartSetMarksExecute(Sender: TObject);
var
  Serie: TChartSeries;
begin
  inherited;
  TAction(Sender).Checked := not TAction(Sender).Checked;
  for Serie in DBChart1.SeriesList do
    Serie.Marks.Visible := TAction(Sender).Checked;
end;

procedure TIChart.actDataGridExecute(Sender: TObject);
begin
  inherited;
  TAction(Sender).Checked := not TAction(Sender).Checked;

  if TAction(Sender).Checked then
    PageControl1.ActivePageIndex := 1
  else
    PageControl1.ActivePageIndex := 0;
  
end;

procedure TIChart.actDataRefreshExecute(Sender: TObject);
begin
  inherited;
  RefreshData;
end;

procedure TIChart.actShowHideToolBarExecute(Sender: TObject);
begin
  inherited;
  TAction(Sender).Checked := not TAction(Sender).Checked;
  LocalRefreshControls;
end;

procedure TIChart.actZoomWindowExecute(Sender: TObject);
begin
  inherited;
  TAction(Sender).Checked := not TAction(Sender).Checked;
  try
    if TAction(Sender).Checked then
    begin
      FLastParent := Parent;
      Parent := nil;
      BorderIcons := [biSystemMenu];
      BorderStyle := bsSingle;
      Align := alNone;
      WindowState := wsMaximized;
      Exit;
    end;

    Parent := FLastParent;
    FLastParent := nil;
    BorderIcons := [];
    BorderStyle := bsNone;
    WindowState := wsNormal;
    Align := alClient;

  finally
    LocalRefreshControls;
  end;
end;

procedure TIChart.BuildRadioMenu(Menu: TPopupMenu; const Items: array of TMenuItem; ExecEvent: TNotifyEvent);
var
  Item: TMenuItem;
  Group, I: Byte;
begin
  group := 1 + Random(100);

  for I := Low(Items) to High(Items) do
  begin
    Item := Items[i];

    if not Assigned(Item) then
      Continue;

    Item.GroupIndex := Group;
    Item.RadioItem := True;
    Item.OnClick := ExecEvent;
    Menu.Items.Add(Item);
  end;
end;

procedure TIChart.ControlBar1Resize(Sender: TObject);
begin
  inherited;
  ToolBar1.Width := ControlBar1.ClientWidth;
  
end;

procedure TIChart.DBChart1AfterDraw(Sender: TObject);
begin
  inherited;
  Caption := DBChart1.Title.Text.Text;
end;

procedure TIChart.dsDataGridDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  LocalRefreshControls;
end;

procedure TIChart.RefreshData;
begin
end;

procedure TIChart.tsChartResize(Sender: TObject);
begin
  inherited;
  sbShowHideControlBar.Top := 3;
  sbShowHideControlBar.Left := 3;
  sbShowHideZoomWindow.Top := 3;
  with sbShowHideZoomWindow do
    Left := Parent.ClientWidth - Width - 3;
end;

procedure TIChart.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if actZoomWindow.Checked then
  begin
    Action := caNone;
    actZoomWindowExecute(actZoomWindow);
  end;

end;

procedure TIChart.FormCreate(Sender: TObject);
begin
  inherited;
  FMeses[1] := 'Janeiro';   FMeses[2] := 'Fevereiro'; FMeses[3] := 'Março';     FMeses[4] := 'Abril';
  FMeses[5] := 'Maio';      FMeses[6] := 'Junho';     FMeses[7] := 'Julho';     FMeses[8] := 'Agosto';
  FMeses[9] := 'Setembro';  FMeses[10] := 'Outubro';  FMeses[11] := 'Novembro'; FMeses[12] := 'Dezembro';

  tsChart.TabVisible:= False;
  tsData.TabVisible:= False;
  PageControl1.ActivePage := tsChart;
  pnDataEmpty.Align := alClient;
  pnDataEmpty.Visible := False;
  pnDataEmpty.BringToFront;
end;

procedure TIChart.FormResize(Sender: TObject);
begin
  inherited;
  ResizeControlBar(ControlBar1);
end;

procedure TIChart.LoadChartDefaults;
var
  Serie: TChartSeries;
begin
  with DBChart1 do
  begin
    View3D := True;
    // Zoom
    Zoom.Animated := True;
    Zoom.Allow := True;
    Zoom.Pen.Color := $00804000;

    Gradient.Visible := True;
    Gradient.StartColor := $00FFF8F0;
    Gradient.Visible := True;

    BackWall.AutoHide := True;
  end;
end;

procedure TIChart.LocalRefreshControls;

  procedure SetupWindow;
  begin
    sbShowHideZoomWindow.Caption := EmptyStr;

    if pnDataEmpty.Visible then
    begin
      sbShowHideControlBar.Parent := pnDataEmpty;
      sbShowHideZoomWindow.Parent := pnDataEmpty;
    end
    else
    begin
      sbShowHideControlBar.Parent := DBChart1;
      sbShowHideZoomWindow.Parent := DBChart1;
    end;
  end;

  procedure SetupControlBar;
  var
    TextHint: string;
  begin
    if actShowHideToolBar.Checked then
      TextHint := 'Ocultar'
    else
      TextHint := 'Exibir';

    actShowHideToolBar.Hint := Format('%s barra de configurações', [TextHint]);
  end;
begin
  try
    actDataGrid.Enabled := Assigned(dsDataGrid.DataSet) and dsDataGrid.DataSet.Active and not dsDataGrid.DataSet.IsEmpty;
    actDataRefresh.Enabled := Assigned(dsDataGrid.DataSet) and dsDataGrid.DataSet.Active;
    sbShowHideZoomWindow.Visible := not actShowHideToolBar.Checked;
    ControlBar1.Visible := actShowHideToolBar.Checked;
    pnDataEmpty.Visible := not actDataGrid.Enabled;

    SetupControlBar;
    SetupWindow;
  finally
    RefreshControls;
  end;
end;

procedure TIChart.LocalRefreshData;
begin
  try
    RefreshData;
  finally
    LocalRefreshControls;
  end;
end;

class function TIChart.New(AParent: TWinControl; AllowConfig: Boolean = True): TIChart;
begin
  Result := Self.Create(AParent);
  Result.Parent := AParent;
  Result.actShowHideToolBar.Visible := AllowConfig;
end;

procedure TIChart.OnLoad;
begin
  inherited;
  TabSheet1.TabVisible := PageControl2.PageCount > 1;
  PageControl2.ActivePage := TabSheet1;

  if Assigned(dsDataGrid.DataSet) then
    RefreshData;
end;

procedure TIChart.PageControl2Change(Sender: TObject);
begin
  inherited;
  DataGrid.Parent := PageControl2.ActivePage;
end;

procedure TIChart.RefreshControls;
begin
  
end;

end.
