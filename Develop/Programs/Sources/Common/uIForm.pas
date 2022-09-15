unit uIForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, Grids, ZDataSet, ZSequence, ExtCtrls, ToolWin, CCore,
  uReport;

type

  TEventType = (etEnter, etExit);

  TEvent = class
  private
    FControl: TWinControl;
    FEventType: TEventType;
    FOnEvent: TNotifyEvent;
    procedure SetControl(const Value: TWinControl);
    procedure SetEventType(const Value: TEventType);
    procedure SetOnEvent(const Value: TNotifyEvent);
  published
    property Control: TWinControl read FControl write SetControl;
    property EventType: TEventType read FEventType write SetEventType;
    property OnEvent: TNotifyEvent read FOnEvent write SetOnEvent;
  end;

  // Esta classe foi criada somente com o objetivo de publicar os eventos
  // OnEnter e OnExit que eram protegidos
  TControle = class( TWinControl )
  public
    property BevelInner;
    property BevelKind default bkNone;
    property BevelOuter;
    property OnEnter;
    property OnExit;
    property OnKeyPress;
  end;

  TIForm = class(TForm, ICObject)
    alDef: TActionList;
    actOk: TAction;
    actCancel: TAction;
    actClose: TAction;
    actVersion: TAction;
    procedure actOkExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actVersionExecute(Sender: TObject);
  private
    FLoadExec: Boolean;
    FExecute: Boolean;
    FOkCount: Integer;
    FBevelInner: TBevelCut;
    FBevelOuter: TBevelCut;
    FBevelKind: TBevelKind;
    FBorder: TBorderStyle;
    FLsCtrl: TList;
    FID: Longint;
    class function GetObjID: Longint;
    function GetExecute: Boolean;
    procedure OnCtrlEnter(Sender: TObject);
    procedure OnCtrlExit(Sender: TObject);
    function FindCtrlEvent(Control: TControle; Type_: TEventType):TEvent;
    function GetParent: TWinControl;
    procedure SetParent(const Value: TWinControl);
  protected
    //procedure SaveControlsStyle(Control: TComponent);
    //procedure RestoreControlsStyle(Control: TComponent);
    procedure OnLoad; virtual;
    procedure ResizeControlBar(Sender: TControlBar);
    procedure OnPrint(Sender: TReport; var Continue: Boolean); virtual;
    procedure DoRpt(Sender: TObject);
  public
    procedure RefreshControlsStyle(Control: TComponent);

    function ObjectAddress: Pointer;
    function ClassName: String;
    function PersistentClass: TPersistentClass;
    function ToString: String;
    function GetId: String;

    procedure ResetExecute;

    property Execute: Boolean read GetExecute;
    property ExecCount: integer read FOkCount;
    property Parent: TWinControl read GetParent write SetParent;
  end;

var
  IForm: TIForm;

implementation

{$R *.dfm}

uses StdCtrls, ComCtrls, uIUtils, NetWorks, TypInfo, JvExComCtrls, JvDateTimePicker, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, JvBaseEdits, uResources, mcutils, ZSqlProcessor, uDMReport, frxClass;

function TIForm.GetExecute: Boolean;
begin
  Result:= FOkCount > 0;
end;

function TIForm.GetId: String;
begin
  if FID = 0 then
    FID := GetObjID;

  Result := IntToStr(FID);
end;

class function TIForm.GetObjID: Longint;
const
  {$J+}
  IntID: Longint = 1;
  {$J-}
begin
  Result := IntID;
  IntID := IntID + 1;
end;

function TIForm.GetParent: TWinControl;
begin
  Result := inherited Parent;
end;

function TIForm.ObjectAddress: Pointer;
begin
  Result := Self;
end;

procedure TIForm.OnCtrlEnter(Sender: TObject);
begin
  if TControle(Sender).Enabled then
  begin
    TControle(Sender).Color:= clNavy;
    TControle(Sender).Font.Color:= clWhite;
  end;

  {Executa evento OnEnter original}
  if Assigned(FindCtrlEvent(TControle(Sender), etEnter)) then
    FindCtrlEvent(TControle(Sender), etEnter).OnEvent(Sender);
end;

procedure TIForm.OnCtrlExit(Sender: TObject);
begin
  TControle(Sender).Color:= clWindow;
  TControle(Sender).Font.Color:= clWindowText;

  {Executa evento OnExit original}
  if Assigned(FindCtrlEvent(TControle(Sender), etExit)) then
    FindCtrlEvent(TControle(Sender), etExit).OnEvent(Sender);
end;

procedure TIForm.OnLoad;
begin
  if not FLoadExec then
    Exit;

end;

procedure TIForm.OnPrint(Sender: TReport; var Continue: Boolean);
begin
end;

function TIForm.PersistentClass: TPersistentClass;
begin
  Result := TPersistentClass(ObjectAddress);
end;

procedure TIForm.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TIForm.actOkExecute(Sender: TObject);
begin
  Inc(FOkCount);
end;


procedure TIForm.actVersionExecute(Sender: TObject);
begin
  ShowMessage('Versão: ' + GetBuildInfo(Application.ExeName));
end;

function TIForm.ClassName: String;
begin
  Result := TObject(ObjectAddress).ClassName;
end;

procedure TIForm.DoRpt(Sender: TObject);
var
  fExecute: Boolean;
  Rpt: TReport;
  bContinue: Boolean;
begin
  inherited;
  bContinue := True;
  Rpt := TReport(Sender);

  OnPrint(Rpt, bContinue);

  if not bContinue then
    Exit;

  with DMReport do
  begin
    fExecute := true;
    if not ReportBase.LoadFromFile(U.Path.ReportTemplates + Rpt.ReportName) then
      raise Exception.CreateFmt('Não consegui carregar o relatório "%s"', [Rpt.ReportName]);

    if Rpt.FormParam <> nil then
       fExecute := Rpt.FormParam.Execute(Rpt);

    if fExecute then
    begin
      // Configura o nome do usuário
      if Assigned(ReportBase.FindObject('username')) then
        TfrxMemoView(ReportBase.FindObject('username')).Text := 'Usuário: ' +
          U.Info.Name;

      if Rpt.PrintToDevice then
        ReportBase.ShowReport;

      if Rpt.PrintToPDF then
      begin
        frxPDF.FileName := Rpt.FileName;
        frxPDF.Background := False;
        frxPDF.ShowDialog := False;
        frxPDF.OpenAfterExport := False;
        ReportBase.PrepareReport;
        ReportBase.Export(frxPDF);
      end;
    end;
  end;

end;

procedure TIForm.actCancelExecute(Sender: TObject);
begin
  Close;
end;

procedure TIForm.RefreshControlsStyle(Control: TComponent);
var
  i: integer;
  ev: TEvent;
begin
  try
    if (Control is TJvCustomNumEdit) or
       (Control is TJvCustomMaskEdit) or
       (Control is TComboBox) or
       (Control is TJvCalcEdit) or
       (Control is TCustomEdit) then
    begin
      {if Assigned(TControle(Control).OnEnter) and
        not Assigned(FindCtrlEvent(TControle(Control), etEnter))
      then
      begin
        ev := TEvent.Create;
        ev.Control := TWinControl(Control);
        ev.EventType := etEnter;
      end;


      TControle(Control).OnEnter := OnCtrlEnter;
      TControle(Control).OnExit := OnCtrlExit;}

      if Assigned(GetPropInfo(Control, 'BevelKind')) then
        SetPropValue(Control, 'BevelKind', FBevelKind);

      if Assigned(GetPropInfo(Control, 'BevelInner')) then
        SetPropValue(Control, 'BevelInner', FBevelInner);

      if Assigned(GetPropInfo(Control, 'BevelOuter')) then
        SetPropValue(Control, 'BevelOuter', FBevelOuter);

      if Assigned(GetPropInfo(Control, 'BorderStyle')) then
        SetPropValue(Control, 'BorderStyle', FBorder);

      if (Control is TComboBox) and Assigned(GetPropInfo(Control, 'BevelEdges')) then
          SetPropValue(Control, 'BevelEdges', '[]');

      if Assigned(GetPropInfo(Control, 'ButtonFlat')) then
        SetPropValue(Control, 'ButtonFlat', True);

      if Assigned(GetPropInfo(Control, 'ReadOnly')) and
        Assigned(GetPropInfo(Control, 'Color')) then
      begin
        if (GetPropValue(Control, 'ReadOnly') = true) then
          SetPropValue(Control, 'Color', clBtnFace)
        else
          SetPropValue(Control, 'Color', clWindow);
      end;
    end;

    if Control is TControlBar then
      ResizeControlBar(TControlBar(Control));
  finally
    for i:= 0 to Control.ComponentCount - 1 do
      RefreshControlsStyle(Control.Components[i]);
  end;
end;

procedure TIForm.ResetExecute;
begin
  FOkCount := 0;
end;

procedure TIForm.ResizeControlBar(Sender: TControlBar);
var
  AWidth, i, j, iL: Integer;
  oTb: TToolBar;
begin
  iL := 12;
  oTb := nil;
  for i := 0 to Sender.ControlCount - 1 do
    if (Sender.Controls[i] is TToolBar) and (TToolBar(Sender.Controls[i]).Visible) then
    begin
      if Assigned(oTb) then
        iL := iL + oTb.Width + 5;

      AWidth := 0;
      oTb := TToolBar(Sender.Controls[i]);
      oTb.DrawingStyle := dsGradient;
      oTb.Flat := True;
      oTb.EdgeBorders := [];
      oTb.EdgeInner := esNone;
      oTb.EdgeOuter := esNone;
      oTb.BorderWidth := 0;

      with oTb do
      begin
        for j := 0 to ButtonCount - 1 do
          if Buttons[j].Visible then
            AWidth := AWidth + Buttons[j].Width + 1;

        ClientWidth := AWidth + 4;
        Left := iL;
      end;
    end;

  Sender.AlignWithMargins := True;
  Sender.DrawingStyle := ExtCtrls.dsGradient;
  Sender.BevelEdges := [];
  Sender.BevelKind := bkNone;

  if (i = Sender.ControlCount) and Assigned(oTb) then
    oTb.Width := oTb.Parent.ClientWidth - oTb.Left;
end;

procedure TIForm.SetParent(const Value: TWinControl);
begin
  inherited Parent := Value;
  BorderIcons := [];
  BorderStyle := bsNone;
  Align := alClient;
  BringToFront;
end;

function TIForm.ToString: String;
begin
  Result := Format('%s <%p>', [ClassName, Pointer(Self)]);
end;

procedure TIForm.FormShow(Sender: TObject);
var
  i: integer;
begin
  for i:= 0 to ComponentCount -1 do
    RefreshControlsStyle(Components[i]);
end;

procedure TIForm.FormCreate(Sender: TObject);
var
  i: integer;
begin
  inherited;
  ModalResult := mrNone;
  
  FLsCtrl:= TList.Create;

  for i:= 0 to ComponentCount - 1 do
  begin
    if Components[i] is TZQuery then
      with TZQuery(Components[i]) do
      begin
        Connection:= U.Data;
        FetchRow := 100;
      end;

    if Components[i] is TZSequence then
      with TZSequence(Components[i]) do
        Connection:= U.Data;

    if Components[i] is TZSqlProcessor then
      with TZSqlProcessor(Components[i]) do
        Connection:= U.Data;
  end;

  FBevelKind:= bkNone;
  FBorder:= bsSingle;

  FBevelInner:= bvSpace;
  FBevelOuter:= bvRaised;
  FLoadExec := False;
end;

procedure TIForm.FormDestroy(Sender: TObject);
var
  i: Integer;
begin
  if Assigned(FLsCtrl) then
  begin
    for i := 0 to FLsCtrl.Count - 1 do
      TEvent(FLsCtrl[i]).Free;

    FreeAndNil(FLsCtrl);
  end;

  inherited;
end;

function TIForm.FindCtrlEvent(Control: TControle; Type_: TEventType): TEvent;
var
  i: Integer;
begin
  Result:= nil;
  for i := 0 to FLsCtrl.Count - 1 do
    if (TEvent(FLsCtrl[i]).Control = Control) and (TEvent(FLsCtrl[i]).EventType = Type_) then
    begin
      Result:= TEvent(FLsCtrl[i]);
      Break;
    end;
end;

procedure TIForm.FormActivate(Sender: TObject);
begin
  if not FLoadExec then
  begin
    try
      OnLoad;
    except
      on e:Exception do
        U.Out.ShowErro('Método OnLoad apresentou o erro %s.', [e.Message]);
    end;
    FLoadExec := True;
  end;
end;

procedure TIForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TIForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and Assigned(ActiveControl) then
  begin
    Key:= #0;
    SelectNext(ActiveControl, True, True);
  end;

  inherited;
end;

procedure TIForm.FormResize(Sender: TObject);
begin
  RefreshControlsStyle(Self);
end;

{ TEvent }

procedure TEvent.SetControl(const Value: TWinControl);
begin
  FControl := Value;
end;

procedure TEvent.SetEventType(const Value: TEventType);
begin
  FEventType := Value;
end;

procedure TEvent.SetOnEvent(const Value: TNotifyEvent);
begin
  FOnEvent := Value;
end;

end.
