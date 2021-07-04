unit uIDefReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uiwizard, ActnList, StdCtrls, ExtCtrls, ComCtrls, ToolWin, uReport;

type
  TIDefReport = class(TIWizard)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    ListView1: TListView;
    ToolButton3: TToolButton;
    actReg: TAction;
    ToolButton4: TToolButton;
    actRefersh: TAction;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    StatusBar1: TStatusBar;
    ToolButton7: TToolButton;
    actStruct: TAction;
    ControlBar1: TControlBar;
    procedure actRegExecute(Sender: TObject);
    procedure ListView1Deletion(Sender: TObject; Item: TListItem);
    procedure FormDestroy(Sender: TObject);
    procedure actRefershExecute(Sender: TObject);
    procedure ListView1Change(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure actOkExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actStructExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FReport: TReport;
    FActiveReport: TReport;
    FReportActive: TReport;
    procedure SetReportActive(const Value: TReport);
  public
    property ReportActive: TReport read FReportActive write SetReportActive;
    procedure LoadReports;
  end;

var
  IDefReport: TIDefReport;

implementation

uses uDM, uIUtils, uDMReport, uSysReports, db, frxClass, iTypes, uResources;

{$R *.dfm}

procedure TIDefReport.actOkExecute(Sender: TObject);
var
  fExecute: Boolean;
begin
  inherited;
  with DMReport do
  begin
    fExecute := true;
    ReportBase.LoadFromFile(U.Path.ReportTemplates + ReportActive.ReportName);

    if ReportActive.FormParam <> nil then
       fExecute := ReportActive.FormParam.Execute(ReportActive);

    if fExecute then
    begin
      // Configura o nome do usuário
      if Assigned(ReportBase.FindObject('username')) then
        TfrxMemoView(ReportBase.FindObject('username')).Text := 'Usuário:' +
          U.Info.Name;

      ReportBase.ShowReport;
    end;
  end;
end;

procedure TIDefReport.actRefershExecute(Sender: TObject);
begin
  inherited;
  LoadReports;
end;

procedure TIDefReport.actRegExecute(Sender: TObject);
begin
  inherited;
  SysReports := TSysReports.Create(nil);
  try
    SysReports.DataSet := DM.qSysReports;
    SysReports.ScreenType := stMasterDetail; 
    SysReports.ShowModal;
  finally
    FreeAndNil(SysReports);
  end;
end;

procedure TIDefReport.actStructExecute(Sender: TObject);
begin
  inherited;
  with DMReport do
  begin
    ReportBase.LoadFromFile(ReportActive.FileName);
    ReportBase.DesignReport;
  end;

end;

procedure TIDefReport.FormCreate(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TDMReport, DMReport);
end;

procedure TIDefReport.FormDestroy(Sender: TObject);
begin
  ListView1.Clear;
  DM.qSysReports.Close;
  inherited;
end;

procedure TIDefReport.FormShow(Sender: TObject);
begin
  inherited;
  actRefershExecute(actRefersh);
end;

procedure TIDefReport.ListView1Change(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
  ReportActive := nil;
  StatusBar1.Panels[1].Text := '';
  actOk.Enabled := False;
  actStruct.Enabled := False;
  actRefersh.Enabled := True;

  if not Assigned(Item) or not Assigned(Item.Data) then
    Exit;

  ReportActive := TReport(Item.Data);
  actOk.Enabled := True;
  actStruct.Enabled := True;

  with DM.qSysReports do
      Locate('report', ReportActive.ID, [loPartialKey]);

  StatusBar1.Panels[1].Text := Format('%s - %s', [ReportActive.Name,
    ReportActive.Caption]);
end;

procedure TIDefReport.ListView1Deletion(Sender: TObject; Item: TListItem);
begin
  TReport(Item.Data).Free;
  Item.Data := nil;
end;

procedure TIDefReport.LoadReports;
var
  row: TListItem;
begin
  with ListView1, DM.qSysReports do
  try
    Items.Clear;
    Items.BeginUpdate;

    if not Active then
      Open
    else
      Refresh;

    First;

    while not Eof do
    begin
      FReport := TReport.New
        .ID(FieldByName('report').AsInteger)
        .Caption(FieldByName('descri').AsString)
        .FormParamName(FieldByName('form').AsString);

      row := Items.Add;
      row.Caption := FReport.Caption;
      row.Data := FReport;
      row.ImageIndex := 35;
      
      Next;
    end;
  finally
    Items.EndUpdate;
  end;
end;

procedure TIDefReport.SetReportActive(const Value: TReport);
begin
  FReportActive := Value;
end;

initialization
  RegisterClass(TIDefReport);

finalization
  UnRegisterClass(TIDefReport);

end.
