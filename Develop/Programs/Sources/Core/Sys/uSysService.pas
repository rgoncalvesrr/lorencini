unit uSysService;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ActnList, ComCtrls, ToolWin,
  ExtCtrls, Grids, DBGrids, StdCtrls, Mask, Buttons, uIUtils, ZSequence;

type
  TSysService = class(TIDefBrowse)
    IBrwSrcrecno: TIntegerField;
    IBrwSrcname: TStringField;
    IBrwSrcstatus: TIntegerField;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel6: TPanel;
    Label1: TLabel;
    cbStatus: TComboBox;
    IBrwSrcmaxprocs: TIntegerField;
    sIBrwSrc: TZSequence;
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure cbStatusChange(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure actQueryProcessExecute(Sender: TObject);
  private
    { Private declarations }
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  SysService: TSysService;

implementation

{$R *.dfm}

uses
  uDM, uResources, uSysServiceM;

procedure TSysService.actQueryProcessExecute(Sender: TObject);
var
  sWhere : string;
begin
  inherited;

  if not Assigned(DataSet) or (DataSet <> IBrwSrc) then
    Exit;

  with DataSet do
  begin
    if cbStatus.ItemIndex > 0 then
      sWhere := 'status = :status ';

    if sWhere <> EmptyStr then
      SQL.Add('where ' + sWhere);

    if Assigned(Params.FindParam('status')) then
      case cbStatus.ItemIndex of
        1: ParamByName('status').AsInteger := 1;
        2: ParamByName('status').AsInteger := 0;
    end;

    G.RefreshDataSet(DataSet);
    RefreshCtrl;
  end;
end;

procedure TSysService.cbStatusChange(Sender: TObject);
begin
  actQueryProcess.Enabled := True;
  with PageControl1 do
  begin
    DBGrid1.SetFocus;
    ActivePageIndex := cbStatus.ItemIndex;
    inherited PageControl1Change(PageControl1);
  end;

  actQueryProcessExecute(actQueryProcess);
end;

procedure TSysService.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  fBitMap: TBitmap;
begin
  if (Column.Index <> 0) then
    inherited
  else
    with TDBGrid(Sender), DM do
    try
      fBitMap:= TBitmap.Create;
      fBitMap.Transparent:= True;

      with Resources do
        case IBrwSrcstatus.AsInteger of
          1: small_n.GetBitmap(208, fBitMap); //Ativos
          0: small_n.GetBitmap(213, fBitMap); //Inativos
        end;

      if Column.Width <> fBitMap.Width + 2 then
        Column.Width:= fBitMap.Width + 2;

      {Desenha o status da OS}
      Canvas.Draw(Rect.Left + 1, Rect.Top + 1, fBitMap);
    finally
      fBitMap.Free;
    end;
end;

procedure TSysService.OnEdit;
begin
  SysServiceM := TSysServiceM.Create(nil);
  try
    SysServiceM.DataSet := IBrwSrc;
    SysServiceM.ShowModal;
  finally
    FreeAndNil(SysServiceM);
  end;

end;

procedure TSysService.PageControl1Change(Sender: TObject);
begin
  inherited;
  if cbStatus.ItemIndex <> PageControl1.ActivePageIndex then
  begin
    cbStatus.ItemIndex := PageControl1.ActivePageIndex;
    cbStatusChange(cbStatus);
  end;
end;

initialization
  RegisterClass(TSysService);

finalization
  UnRegisterClass(TSysService);

end.
