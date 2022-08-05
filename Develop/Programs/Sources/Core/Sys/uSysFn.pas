unit uSysFn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, uIBrowse, ZSqlUpdate, Menus, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons, ComCtrls, ExtCtrls,
  ToolWin, uFrameData, uFrameCheckBar;

type
  TSysFn = class(TIDefBrowse)
    IBrwSrcfn: TStringField;
    IBrwSrcdescri: TStringField;
    IBrwSrctipo: TIntegerField;
    IBrwSrctable_recno: TIntegerField;
    IBrwSrctabela: TStringField;
    IBrwSrctable_name: TStringField;
    IBrwSrcevento: TIntegerField;
    IBrwSrcins: TBooleanField;
    IBrwSrcupd: TBooleanField;
    IBrwSrcdel: TBooleanField;
    IBrwSrcrecno: TIntegerField;
    IBrwSrcstatus: TIntegerField;
    IBrwSrcmodification: TDateTimeField;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    cbStatus: TComboBox;
    Label1: TLabel;
    Label3: TLabel;
    cbTipo: TComboBox;
    N2: TMenuItem;
    actFilesLoad: TAction;
    CarregarAtualizarRotinas1: TMenuItem;
    IBrwSrcstmt: TMemoField;
    IBrwSrcchecksum: TStringField;
    actSync: TAction;
    Panel7: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    FrameData1: TFrameData;
    IBrwSrcmark: TBooleanField;
    FrameCheckBar1: TFrameCheckBar;
    Sincronizar1: TMenuItem;
    actReady: TAction;
    Marcacomodisponvel1: TMenuItem;
    IBrwSrcschema_: TStringField;
    Panel5: TPanel;
    Label6: TLabel;
    cbEsquema: TComboBox;
    procedure IBrwSrctipoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure IBrwSrctipoSetText(Sender: TField; const Text: string);
    procedure IBrwSrceventoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure IBrwSrceventoSetText(Sender: TField; const Text: string);
    procedure IBrwSrcAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cbStatusChange(Sender: TObject);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure actFilesLoadExecute(Sender: TObject);
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
    procedure FrameData1CCalendarDiff1Change(Sender: TObject);
    procedure DBGridKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure actSyncExecute(Sender: TObject);
    procedure actReadyExecute(Sender: TObject);
  private
    procedure OnLoad; override;
    procedure OnEdit; override;
    procedure RefreshCtrl; override;
    procedure OnChangeMark(Sender: TObject);
  public
    { Public declarations }
  end;

var
  SysFn: TSysFn;

implementation

uses uDM, uSysFnM, uIUtils, uResources, uSysFnLoader, ccalendardiff, 
  uSysFnSyncResult;

{$R *.dfm}

procedure TSysFn.actFilesLoadExecute(Sender: TObject);
var
  functionLoader: TSysFnLoader;
  cursorSave: TCursor;
begin
  inherited;
  IBrwSrc.DisableControls;
  actFilesLoad.Enabled := False;
  cursorSave := Screen.Cursor;
  Screen.Cursor := crHourGlass;
  functionLoader := TSYSFNLoader.Create;
  try
    functionLoader.LoadAll;

    if functionLoader.Errors.Count > 0 then
      U.Out.ShowErro(functionLoader.Errors.Text)
    else
      U.Out.ShowInfo('Processamento efetuado com sucesso!');
  finally
    IBrwSrc.EnableControls;
    FreeAndNil(functionLoader);
    G.RefreshDataSet(IBrwSrc);
    RefreshCtrl;
    Screen.Cursor := cursorSave;
  end;
end;

procedure TSysFn.actQueryProcessExecute(Sender: TObject);
var
  fWhere: String;
  ccal: TCCalendarDiff;
begin
  inherited;

  if not Assigned(DataSet) then
    Exit;

  ccal := FrameData1.CCalendarDiff1;

  with DataSet do
  begin
    if cbStatus.ItemIndex > 0 then
      fWhere := 'f.status = :status';

    if FrameData1.ComboBox1.ItemIndex > 0 then
    begin
      if fWhere <> EmptyStr then
        fWhere := fWhere + ' and ';

      fWhere := fWhere + 'f.modification between :mod_de and :mod_ate ';
    end;

    if cbTipo.ItemIndex > 0 then
    begin
      if fWhere <> EmptyStr then
        fWhere := fWhere + ' and ';

      fWhere := fWhere + 'f.tipo = :tipo';
    end;

    if cbEsquema.ItemIndex > 0 then
    begin
      if fWhere <> EmptyStr then
        fWhere := fWhere + ' and ';

      fWhere := fWhere + 'f.schema_ = :schema_';
    end;

    if fWhere <> EmptyStr then
    begin
      if fWhere <> EmptyStr then
        SQL.Add('where ' + fWhere);

      if Assigned(Params.FindParam('status')) then
        Params.ParamByName('status').AsInteger := cbStatus.ItemIndex;

      if Assigned(Params.FindParam('tipo')) then
        Params.ParamByName('tipo').AsInteger := cbTipo.ItemIndex;

      if Assigned(Params.FindParam('schema_')) then
        Params.ParamByName('schema_').AsString := cbEsquema.Text;

      if Assigned(Params.FindParam('mod_de')) then
      begin
        Params.ParamByName('mod_de').AsDateTime := ccal.BeginDate;
        Params.ParamByName('mod_ate').AsDateTime := ccal.EndDate;
      end;
    end;

    G.RefreshDataSet(DataSet);
  end;
end;

procedure TSysFn.actReadyExecute(Sender: TObject);
var
  bBookMark : TBookmark;
begin
  bBookMark := IBrwSrc.GetBookmark;

  with IBrwSrc do
  try
    DisableControls;
    First;

    while not Eof do
    begin
      if FieldByName('mark').AsBoolean then
      begin
        Edit;
        FieldByName('status').AsInteger := 2;
        Post;
      end;

      Next;
    end;
  finally
    GotoBookmark(bBookMark);
    FreeBookmark(bBookMark);
    
    EnableControls;

    G.RefreshDataSet(IBrwSrc)
  end;
end;

procedure TSysFn.actSyncExecute(Sender: TObject);
begin
  with U.Data.Query do
  try
    SQL.Text := 'select sys_sincroniza_local();';
    Open;

    if Fields[0].AsString <> EmptyStr then
    begin
      SysFnSyncResult := TSysFnSyncResult.Create(nil);
      try
        SysFnSyncResult.Memo1.Text := Fields[0].AsString;
        SysFnSyncResult.ShowModal;
      finally
        FreeAndNil(SysFnSyncResult);
      end;
    end
    else
      U.Out.ShowInfo('Nenhum processamento realizado!');
  finally
    Close;
  end;
end;

procedure TSysFn.cbStatusChange(Sender: TObject);
begin
  inherited;
  actQueryProcess.Enabled := True;
  with PageControl1 do
    if (cbStatus.ItemIndex <> ActivePageIndex) and (ActivePageIndex > 0) then
    begin
      ActivePageIndex := cbStatus.ItemIndex;
      inherited PageControl1Change(PageControl1);
    end;
    
  actQueryProcessExecute(actQuery);
end;

procedure TSysFn.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  fBitMap: TBitmap;
begin
  if (Column.Index <> 1) then
    inherited
  else
    with TDBGrid(Sender), DM do
    try
      fBitMap:= TBitmap.Create;
      fBitMap.Transparent:= True;

      with Resources do
        case IBrwSrcstatus.AsInteger of
          1: small_n.GetBitmap(213, fBitMap); //Em Desenolvimento
          2: small_n.GetBitmap(208, fBitMap); //Pronto
        end;

      if Column.Width <> fBitMap.Width + 2 then
        Column.Width:= fBitMap.Width + 2;

      {Desenha o status da OS}
      Canvas.Draw(Rect.Left + 1, Rect.Top + 1, fBitMap);
    finally
      fBitMap.Free;
    end;
end;

procedure TSysFn.DBGridKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #32) and (IBrwSrc.State = dsBrowse) then
    FrameCheckBar1.actProcessMarkExecute(actInverse);

  inherited;
end;

procedure TSysFn.FormCreate(Sender: TObject);
begin
  inherited;
  AllowInsert := False;
  AllowDelete := False;
  FrameCheckBar1.Table := 'sys_fn';
  FrameCheckBar1.OnChange := OnChangeMark;
end;

procedure TSysFn.FormDestroy(Sender: TObject);
begin
  FrameCheckBar1.OnChange := nil;
  inherited;
end;

procedure TSysFn.FrameData1CCalendarDiff1Change(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TSysFn.IBrwSrcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  IBrwSrctipo.AsInteger := 1;
end;

procedure TSysFn.IBrwSrcAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if Assigned(SysFnM) and SysFnM.Visible then
    SysFnM.SynEdit1.Text := IBrwSrcstmt.AsString;
end;

procedure TSysFn.IBrwSrceventoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Before';
    2: Text := 'After';
  end;
end;

procedure TSysFn.IBrwSrceventoSetText(Sender: TField; const Text: string);
begin
  inherited;
  if not (DataSet.State in [dsEdit, dsInsert]) or (Text = EmptyStr) then
    Exit;

  case Text[1] of
    'B': Sender.AsInteger := 1;
    'A': Sender.AsInteger := 2;
  end;

end;

procedure TSysFn.IBrwSrctipoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Procedure';
    2: Text := 'Trigger';
  end;
end;

procedure TSysFn.IBrwSrctipoSetText(Sender: TField; const Text: string);
begin
  inherited;
  if not (DataSet.State in [dsEdit, dsInsert]) or (Text = EmptyStr) then
    Exit;

  case Text[1] of
    'P': Sender.AsInteger := 1;
    'T': Sender.AsInteger := 2;
  end;
end;

procedure TSysFn.OnLoad;
begin
  inherited;
  with U.Query, cbEsquema do
  try
    SQL.Text :=
    'select schema_ '+
      'from sys_fn '+
     'group by schema_ '+
     'order by 1';

    Open;

    while not Eof do
    begin
      Items.Add(FieldByName('schema_').AsString);
      Next;
    end;
  finally
    cbEsquema.Enabled := cbEsquema.Items.Count > 1;
    Close;
  end;
end;

procedure TSysFn.OnChangeMark(Sender: TObject);
begin
  actSync.Enabled := TFrameCheckBar(Sender).CheckedCount > 0;
  actReady.Enabled := actSync.Enabled;
end;

procedure TSysFn.OnEdit;
begin
  SysFnM := TSysFnM.Create(nil);
  try
    SysFnM.AllowInsert := False;
    SysFnM.AllowDelete := False;
    SysFnM.DataSet := IBrwSrc;
    SysFnM.ShowModal;
  finally
    FreeAndNil(SysFnM);
  end;

end;

procedure TSysFn.PageControl1Change(Sender: TObject);
begin
  inherited;
  FrameCheckBar1.Parent := PageControl1.ActivePage;
  if cbStatus.ItemIndex <> PageControl1.ActivePageIndex then
  begin
    cbStatus.ItemIndex := PageControl1.ActivePageIndex;
    cbStatusChange(cbStatus);
  end;
end;

procedure TSysFn.RefreshCtrl;
begin
  inherited;
  actFilesLoad.Enabled := (IBrwSrc.State = dsBrowse);
  actReady.Enabled := (IBrwSrc.State = dsBrowse) and (FrameCheckBar1.CheckedCount > 0);
end;

initialization
  RegisterClass(TSysFn);

finalization
  UnRegisterClass(TSysFn);

end.
