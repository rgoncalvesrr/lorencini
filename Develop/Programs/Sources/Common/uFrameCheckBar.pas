unit uFrameCheckBar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, ComCtrls, ToolWin, ExtCtrls, ActnList, db;

type
  TMarkType = (mtInvert, mtInvertAll, mtCheckAll, mtUnCheckAll);
  
  TFrameCheckBar = class(TFrame)
    alDef: TActionList;
    actCkAll: TAction;
    actUCkAll: TAction;
    actInverseAll: TAction;
    actInverse: TAction;
    ControlBar1: TControlBar;
    ToolBar2: TToolBar;
    ToolButton13: TToolButton;
    ToolButton12: TToolButton;
    ToolButton1: TToolButton;
    ToolButton17: TToolButton;
    ToolButton16: TToolButton;
    dsMark: TDataSource;
    procedure dsMarkDataChange(Sender: TObject; Field: TField);
    procedure actProcessMarkExecute(Sender: TObject);
  private
    FTable: string;
    FOnChange: TNotifyEvent;
    procedure SetTable(const Value: string);
    procedure ProcessMark(const MarkType: TMarkType);
  public
    function CheckedCount: Integer;
    property Table: string read FTable write SetTable;    
    property OnChange: TNotifyEvent read FOnChange write FOnChange; 
  end;

implementation

{$R *.dfm}

uses
  uIUtils;

{ TFrame1 }

procedure TFrameCheckBar.actProcessMarkExecute(Sender: TObject);
begin
  ProcessMark(TMarkType(TAction(Sender).Tag));
end;

function TFrameCheckBar.CheckedCount: Integer;
begin
  Result := 0;

  with U.Data.Query do
  try
    SQL.Text :=
    'select count(*) '+
      'from sys_flag '+
     'where session = sys_session() '+
       'and table_ = :table';
       
    ParamByName('table').AsString := FTable;

    Open;

    Result := Fields[0].AsInteger;
  finally
    Close;
  end;
end;

procedure TFrameCheckBar.dsMarkDataChange(Sender: TObject; Field: TField);
begin
  actCkAll.Enabled := False;
  actUCkAll.Enabled := False;
  actInverseAll.Enabled := False;
  actInverse.Enabled := False;

  if not Assigned(dsMark.DataSet) then
    Exit;

  if not Assigned(dsMark.DataSet.FindField('recno')) then
    raise Exception.Create('Campo "Recno" não localizado no DataSet');

  actCkAll.Enabled := not dsMark.DataSet.IsEmpty and (dsMark.DataSet.State = dsBrowse);
  actUCkAll.Enabled := actCkAll.Enabled;
  actInverseAll.Enabled := actCkAll.Enabled;
  actInverse.Enabled := actCkAll.Enabled;
end;

procedure TFrameCheckBar.ProcessMark(const MarkType: TMarkType);
var
  rec: TBookmark;
  bMark: Boolean;
  table: TDataSet;
  cmd: string;
begin
  inherited;
  table := dsMark.DataSet;
  rec := table.GetBookmark;
  table.DisableControls;
  try
    if (MarkType <> mtInvert) then
      table.First;

    bMark := True;

    if MarkType = mtUnCheckAll then
      bMark := False;

    repeat
      if (MarkType in [mtInvert, mtInvertAll]) then
        bMark := not table.FieldByName('mark').AsBoolean;

      if bMark then
        cmd := 'select sys_flag_mark(%s, %d)'
      else
        cmd := 'select sys_flag_del(%s, %d)';

      U.Data.ExecSQL(cmd, [QuotedStr(FTable), table.FieldByName('recno').AsInteger]);

      table.Next;
    until (table.Eof or (MarkType = mtInvert));
  finally
    table.GotoBookmark(rec);
    table.FreeBookmark(rec);
    table.EnableControls;
  end;
  dsMark.DataSet.DisableControls;
  rec := dsMark.DataSet.GetBookmark;
  dsMark.DataSet.Refresh;
  dsMark.DataSet.GotoBookmark(rec);
  dsMark.DataSet.FreeBookmark(rec);
  dsMark.DataSet.EnableControls;

  if Assigned(FOnChange) then
    FOnChange(Self);
end;

procedure TFrameCheckBar.SetTable(const Value: string);
begin
  FTable := Value;
end;

end.
