unit uIBrowse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIForm, Grids, DBGrids, DB, ZAbstractRODataset, iTypes,
  ZAbstractDataset, ZDataset, Menus, ComCtrls, StdCtrls, Buttons, Mask,
  ExtCtrls, ToolWin, ActnList, Inifiles, uIUtils, SecurityIntf, ZSequence,
  ZSqlUpdate, uReport;

type
  TIDefBrowse = class(TIForm, ISecurityForm)
    ToolBar1: TToolBar;
    StatusBar1: TStatusBar;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    actRefresh: TAction;
    ToolButton4: TToolButton;
    actRel: TAction;
    pmRel: TPopupMenu;
    ToolButton1: TToolButton;
    actLoc: TAction;
    Panel1: TPanel;
    actFind: TAction;
    tbOrder: TToolButton;
    pmOrder: TPopupMenu;
    alRunTime: TActionList;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    actNew: TAction;
    actEdit: TAction;
    actDel: TAction;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    actQuery: TAction;
    ToolButton8: TToolButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    IBrwSrc: TZQuery;
    ToolButton9: TToolButton;
    actView: TAction;
    tbOpcao: TToolButton;
    pmOpcao: TPopupMenu;
    pctlFind: TPageControl;
    tsQuery: TTabSheet;
    tsFind: TTabSheet;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    actQueryProcess: TAction;
    edSearch: TMaskEdit;
    Label2: TLabel;
    actShowSQL: TAction;
    N1: TMenuItem;
    VerSQL1: TMenuItem;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    actRGrid: TAction;
    RedimensionarGrade1: TMenuItem;
    N3: TMenuItem;
    zIBrwSrc: TZUpdateSQL;
    tbReport: TToolButton;
    ctrlBarTop: TControlBar;
    actCkAll: TAction;
    actUCkAll: TAction;
    actInverseAll: TAction;
    actInverse: TAction;
    actLog: TAction;
    Inspecionar1: TMenuItem;
    procedure DBGridDblClick(Sender: TObject);
    procedure DBGridKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEnter(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actLocExecute(Sender: TObject);
    procedure Panel1Resize(Sender: TObject);
    procedure edSearchKeyPress(Sender: TObject; var Key: Char);
    procedure edSearchChange(Sender: TObject);
    procedure actFindExecute(Sender: TObject);
    procedure IBrwSrcAfterRefresh(DataSet: TDataSet);
    procedure PageControl1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actDelExecute(Sender: TObject);
    procedure actManExecute(Sender: TObject);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure actShowSQLExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure actRGridExecute(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure actLogExecute(Sender: TObject);
  protected
    fOnEdit: Boolean;
    //fGridRestored: TList;
    procedure RefreshCtrl; virtual;
    procedure RefreshOrderMenu;
    procedure RefreshRptMenu;
    procedure OnEdit; virtual;
    procedure SetDataSet(const Value: TZQuery); virtual;
    procedure OnLoad; override;
    procedure SetActiveDBGrid(DBGrid: TDBGrid);
    procedure CopySecurity(Form : ISecurityForm);
    procedure OnPrint(Sender: TReport; var Continue: Boolean); virtual;
    procedure OnLog(var TableName: string; var Recno: Integer); virtual;

    procedure DoRpt(Sender: TObject);

    function GetTabela: string; virtual;
    function GetTabelaOrigem: Integer; virtual;
  private
    fFieldSeek: TField;
    FDataSet: TZQuery;
    fOnSort: TDataSetFieldEvent;
    FAllowInsert: Boolean;
    FAllowDelete: Boolean;
    FAllowEdit: Boolean;
    FAllowView: Boolean;
    FActiveDBGrid: TDBGrid;
    FDataSetList: TStrings;
    FDisplayMode: TDisplayMode;
    FReadOnly: Boolean;
    procedure OnOrder(Sender: TObject);
    procedure DoSort;
    procedure SetDisplayMode(const Value: TDisplayMode);
    function GetAllowDelete: Boolean;
    function GetAllowEdit: Boolean;
    function GetAllowInsert: Boolean;
    function GetAllowView: Boolean;
    procedure SetAllowDelete(const Value: Boolean);
    procedure SetAllowEdit(const Value: Boolean);
    procedure SetAllowInsert(const Value: Boolean);
    procedure SetAllowView(const Value: Boolean);
    procedure SetReadOnly(const Value: Boolean);
  public
    function FindReport(ID: Integer): TReport;

    { Public declarations }
    property DataSet: TZQuery read FDataSet write SetDataSet;
    property DisplayMode: TDisplayMode read FDisplayMode write SetDisplayMode;
    property OnSort: TDataSetFieldEvent read fOnSort write fOnSort;
    property AllowInsert: Boolean read GetAllowInsert write SetAllowInsert;
    property AllowEdit: Boolean read GetAllowEdit write SetAllowEdit;
    property AllowView: Boolean read GetAllowView write SetAllowView;
    property AllowDelete: Boolean read GetAllowDelete write SetAllowDelete;
    property ReadOnly: Boolean read FReadOnly write SetReadOnly;
  end;

var
  IDefBrowse: TIDefBrowse;

implementation

{$R *.dfm}

uses uDM, mcUtils, uIBrowseQry, uIBrowseSQL, uDMReport, frxClass, uResources, uSysLog;

procedure TIDefBrowse.actRefreshExecute(Sender: TObject);
var
  Recno: Integer;
begin
  Recno := -1;

    if FDataSet.Active then
    try
      FDataSet.DisableControls;
      
      if Assigned(FDataSet.FindField('recno')) then
        Recno := FDataSet.FieldByName('recno').AsInteger;

      FDataSet.Close;
      G.RefreshDataSet(FDataSet);

      if Recno <> - 1 then
        FDataSet.Locate('recno', Recno, [loPartialKey]);
    finally
      FDataSet.EnableControls;
    end;
end;

procedure TIDefBrowse.actRGridExecute(Sender: TObject);
begin
  inherited;
  FActiveDBGrid.Columns.Clear;
  FActiveDBGrid.Columns.RestoreDefaults;
end;

procedure TIDefBrowse.actShowSQLExecute(Sender: TObject);
var
  i: integer;
begin
  inherited;
  IDefBrowseSQL := TIDefBrowseSQL.Create(Application);

  IDefBrowseSQL.Memo1.Lines.Text := 'Formulário: '+ ClassName + ' - ' + Name;
  IDefBrowseSQL.Memo1.Lines.Add('');
  IDefBrowseSQL.Memo1.Lines.Add('');
  IDefBrowseSQL.Memo1.Lines.Add(StringOfChar('-', 50));
  IDefBrowseSQL.Memo1.Lines.Add('Instrução SQL');
  IDefBrowseSQL.Memo1.Lines.Add(StringOfChar('-', 50));
  IDefBrowseSQL.Memo1.Lines.Add(FDataSet.SQL.Text);

  if FDataSet.Params.Count > 0 then
  begin
    IDefBrowseSQL.Memo1.Lines.Add('');
    IDefBrowseSQL.Memo1.Lines.Add(StringOfChar('-', 50));
    IDefBrowseSQL.Memo1.Lines.Add('Parâmetros');
    IDefBrowseSQL.Memo1.Lines.Add(StringOfChar('-', 50));


    for I := 0 to FDataSet.Params.Count - 1 do
      IDefBrowseSQL.Memo1.Lines.Add(FDataSet.Params[i].Name + ': ' +
        FDataSet.Params[i].AsString);
  end;

  IDefBrowseSQL.ShowModal;
end;

procedure TIDefBrowse.CopySecurity(Form: ISecurityForm);
begin
  Form.AllowInsert := GetAllowInsert;
  Form.AllowEdit := GetAllowEdit;
  Form.AllowDelete := GetAllowDelete;
  Form.AllowView := GetAllowView;
end;

procedure TIDefBrowse.actLocExecute(Sender: TObject);
var
  i: integer;
begin
  inherited;
  Panel1.Realign;

  TAction(Sender).Checked:= not TAction(Sender).Checked;
  Panel1.Visible:= TAction(Sender).Checked;

  if Panel1.Visible then
  begin
    pctlFind.ActivePageIndex := TAction(Sender).Tag;
    if TAction(Sender).Tag = 1 then
      edSearch.SetFocus;
  end;
end;

procedure TIDefBrowse.Panel1Resize(Sender: TObject);
begin
  inherited;
  BitBtn1.Left:= tsFind.Width - BitBtn1.Width - 5;
  edSearch.Width:= BitBtn1.Left - edSearch.Left - 5;
  BitBtn2.Left:= tsFind.Width - BitBtn2.Width - 5;
end;

procedure TIDefBrowse.OnOrder(Sender: TObject);
begin
  TAction(Sender).Checked:= True;
  {Obtem o campo de ordenação}
  fFieldSeek:= FDataSet.Fields.Fields[TAction(Sender).Tag];

  {Checa se é mestre/detalhe}
  if Assigned(FDataSet.MasterSource) then
    FDataSet.SortedFields:= FDataSet.LinkedFields + ';' + fFieldSeek.FieldName
  else
    FDataSet.SortedFields:= fFieldSeek.FieldName;

  {Dispara evento de classificação}
  DoSort;

  {Atualiza dataset para refletir as alterações}
  if not Assigned(FDataSet) then
    Exit;

  FDataSet.Refresh;
  tbOrder.Caption:= fFieldSeek.DisplayLabel;
  edSearch.EditMask:= fFieldSeek.EditMask;
end;

procedure TIDefBrowse.OnPrint(Sender: TReport; var Continue: Boolean);
begin
  inherited;
end;

procedure TIDefBrowse.DoRpt(Sender: TObject);
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

    if Assigned(Rpt.FormParam) then
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

procedure TIDefBrowse.edSearchKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (fFieldSeek.DataType = ftInteger) and not (Key in ['0'..'9', #8, #13]) then
  begin
    Key:= #0;
    ShowMessage('Somente números são aceitos em campos numéricos!');
  end;

  if (Key = #13) and actFind.Enabled then
  begin
    key:= #0;
    actFindExecute(nil);
  end;
end;

procedure TIDefBrowse.edSearchChange(Sender: TObject);
begin
  actFind.Enabled:= not mcEmpty(edSearch.Text);
end;

procedure TIDefBrowse.actFindExecute(Sender: TObject);
begin
  inherited;
  if fFieldSeek.DataType = ftInteger then
    FDataSet.Locate(fFieldSeek.FieldName, StrToInt(edSearch.Text), [loPartialKey])
  else
    FDataSet.Locate(fFieldSeek.FieldName, edSearch.Text, [loPartialKey]);
end;

{procedure TIDefBrowse.actInspectExecute(Sender: TObject);
begin
  inherited;

end;

procedure TIDefBrowse.actInspectExecute(Sender: TObject);
begin
  inherited;

end;

procedure TIDefBrowse.actInspectExecute(Sender: TObject);
begin
  inherited;

end;

 Summary:
    Atualiza controles conforme estado da tabela
   Description:
      Método disparado quando ocorre alguma iteração
      com o DataSet
   <keywords Infra/Browse>
}
procedure TIDefBrowse.RefreshCtrl;
var
  i: integer;
begin
  tbOrder.Enabled:= tbOrder.DropdownMenu.Items.Count > 0;
  tbOpcao.Visible:= tbOpcao.DropdownMenu.Items.Count > 0;

  for i:= 0 to alDef.ActionCount - 1 do
    with TAction(alDef.Actions[i]) do
    begin
      Enabled:= False;
      Hint := Caption;
    end;

  actRGrid.Enabled := true;
  actOk.Enabled := FDisplayMode = dmQuery;
  actOk.Visible := actOk.Enabled;
  ToolButton11.Visible := actOk.Visible;

  if not Assigned(FDataSet) or not FDataSet.Active then
    Exit;

  actNew.Enabled:= FAllowInsert;
  actNew.Visible := FAllowInsert;
  actRefresh.Enabled:= True;
  actLoc.Enabled:= True;
  actQuery.Enabled:= tsQuery.ControlCount > 1;
  actEdit.Enabled:= FAllowEdit and (FDataSet.RecordCount > 0);
  actEdit.Visible := FAllowEdit;
  actDel.Enabled:= FAllowDelete and (FDataSet.RecordCount > 0);
  actDel.Visible := FAllowDelete;
  actView.Enabled:= FAllowView and (FDataSet.RecordCount > 0);
  actView.Visible := FAllowView;
  actShowSQL.Enabled := FDataSet.SQL.Text <> EmptyStr;
end;

procedure TIDefBrowse.IBrwSrcAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  RefreshCtrl;
end;

procedure TIDefBrowse.SetActiveDBGrid(DBGrid: TDBGrid);
begin
  if FActiveDBGrid = DBGrid then
    Exit;
    
  FActiveDBGrid := DBGrid;
end;

procedure TIDefBrowse.SetAllowDelete(const Value: Boolean);
begin
  FAllowDelete := Value;
  actDel.ShortCut := TextToShortCut(EmptyStr);
  actDel.SecondaryShortCuts.Clear;

  if FAllowDelete then
  begin
    actDel.ShortCut := TextToShortCut('Del');
    actDel.SecondaryShortCuts.Add('F5');
  end;

  RefreshCtrl;
end;

procedure TIDefBrowse.SetAllowEdit(const Value: Boolean);
begin
  FAllowEdit := Value;
  actEdit.ShortCut := TextToShortCut(EmptyStr);
  actEdit.SecondaryShortCuts.Clear;

  if FAllowEdit then
    actEdit.ShortCut := TextToShortCut('F3');

  RefreshCtrl;
end;

procedure TIDefBrowse.SetAllowInsert(const Value: Boolean);
begin
  FAllowInsert := Value;
  actNew.ShortCut := TextToShortCut(EmptyStr);
  actNew.SecondaryShortCuts.Clear;

  if FAllowInsert then
  begin
    actNew.ShortCut := TextToShortCut('F3');
    actNew.SecondaryShortCuts.Add('Ctrl+N');
  end;

  RefreshCtrl;
end;

procedure TIDefBrowse.SetAllowView(const Value: Boolean);
begin
  FAllowView := Value;
  RefreshCtrl;
end;

procedure TIDefBrowse.SetDataSet(const Value: TZQuery);
var
  fFieldSeekName: String;
  fField: TField;
  i: integer;
begin
  FDataSet := Value;
  fFieldSeek:= nil;

  if not mcEmpty(FDataSet.SQL.Text) and not FDataSet.Active then
    FDataSet.Active := True;

  {Obtem o nome do campo de índice}
  fFieldSeekName:= '';
  for i:= length(FDataSet.SortedFields) downto 1 do
    if FDataSet.SortedFields[i] = ';' then
      Break
    else
      fFieldSeekName:=  FDataSet.SortedFields[i] + fFieldSeekName;

  if not mcEmpty(fFieldSeekName) then
    fFieldSeek:= FDataSet.FindField(fFieldSeekName)
  else
    for fField in FDataSet.Fields do
      if fField.Visible then
      begin
        fFieldSeek:= fField;
        Break;
      end;

  RefreshOrderMenu;

  RefreshCtrl;

  fOnEdit:= True;
end;

procedure TIDefBrowse.SetDisplayMode(const Value: TDisplayMode);
begin
  FDisplayMode := Value;
end;

procedure TIDefBrowse.SetReadOnly(const Value: Boolean);
begin
  FReadOnly := Value;
  AllowInsert := not FReadOnly;
  AllowEdit := not FReadOnly;
  AllowDelete := not FReadOnly;
  RefreshCtrl;
end;

procedure TIDefBrowse.RefreshOrderMenu;
var
  Menu: TMenuItem;
  act: TAction;
  i: integer;
  fField: TField;
begin
  pmOrder.Items.Clear;

  for i:= alRunTime.ActionCount - 1 downto 0 do
    TAction(alRunTime.Actions[i]).Free;

  i:= -1;
  
  {Monta menu de pesquisa}
  with FDataSet do
  if pmOrder.Items.Count = 0 then
    for fField in Fields do
    begin
      inc(i);
      
      if  not (fField.DataType in [ftString, ftInteger, ftDate, ftDateTime, ftTimeStamp]) or
        not fField.Visible or (Trim(fField.DisplayLabel) = EmptyStr) then
        Continue;

      act:= TAction.Create(self);
      act.ActionList:= alRunTime;
      act.GroupIndex:= 876;
      act.Caption:= fField.DisplayLabel;
      act.Checked:= Assigned(fFieldSeek) and (fFieldSeek = fField);
      act.OnExecute:= OnOrder;
      act.Tag:= i;

      Menu:= TMenuItem.Create(self);
      Menu.Action:= act;

      pmOrder.Items.Add(Menu);

      if act.Checked then
      begin
        tbOrder.Caption:= act.Caption;
        OnOrder(act);
      end;
    end;

  RefreshCtrl;
end;

procedure TIDefBrowse.RefreshRptMenu;
var
  Rpt: TReport;
  Dv: TMenuItem;
begin
  with U.Data.Query do
  try
    SQL.Text :=
    'select r.report, r.descri, r.form, f.label '+
      'from sys_reports r '+
           'join sys_forms_rpt f '+
             'on f.report = r.report '+
            'and f.form = :form '+
     'order by f.ordem ';

    ParamByName('form').AsString := UpperCase(Self.ClassName);

    Open;

    if not IsEmpty and (pmRel.Items.Count > 0) then
    begin
      Dv := TMenuItem.Create(pmRel);
      Dv.Caption := '-';
      pmRel.Items.Add(Dv);
    end;

    while not Eof do
    begin
      Rpt := TReport.Create(pmRel);
      Rpt.ID := FieldByName('report').AsInteger;
      Rpt.Caption := FieldByName('label').AsString;
      Rpt.FormParamName := FieldByName('form').AsString;
      Rpt.OnClick := DoRpt;

      pmRel.Items.Add(Rpt);

      Next;
    end;
  finally
    Close;
    tbReport.Visible := pmRel.Items.Count > 0;
  end;  
end;

procedure TIDefBrowse.PageControl1Change(Sender: TObject);
begin
  inherited;
  DBGrid1.Parent := PageControl1.ActivePage;
end;

procedure TIDefBrowse.PageControl1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  case PageControl1.ActivePageIndex of
    0: DBGrid1.SetFocus;
  end;
end;

function TIDefBrowse.FindReport(ID: Integer): TReport;
var
  Rpt: TMenuItem;
begin
  Result := nil;

  for Rpt in pmRel.Items do
    if TReport(Rpt).ID = ID then
    begin
      Result := TReport(Rpt);
      Break;
    end;
end;

procedure TIDefBrowse.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  FDataSet:= nil;
  //fGridRestored := TList.Create;
  FDisplayMode := dmNormal;

  {Preenche a lista com as instruções SQL padrão}
  FDataSetList := TStringList.Create;
  for i := 0 to ComponentCount - 1 do
  begin
    if Components[i] is TZQuery then
        FDataSetList.AddObject(TZQuery(Components[i]).SQL.Text,
          TZQuery(Components[i]));

    if Components[i] is TZSequence then
      TZSequence(Components[i]).Connection := U.Data;
  end;

  FAllowInsert := True;
  FAllowEdit := True;
  FAllowDelete := True;
  FAllowView := True;
end;

procedure TIDefBrowse.FormDestroy(Sender: TObject);
var
  i: Integer;
  dbGrid: TDBGrid;
begin
  for i := 0 to ComponentCount - 1 do
    if Components[i] is TDBGrid then
    begin
      dbGrid := TDBGrid(Components[i]);
      U.SaveGridWidts(Format('%s_%s_%s',[self.Name, dbGrid.DataSource.DataSet.Name, dbGrid.Name]), dbGrid);
    end;

  dbGrid := nil;

  if Assigned(Application.FindComponent('IDefBrowseQry')) then
    IDefBrowseQry.Release;

  fOnSort:= nil;
  //fGridRestored.Free;

  FDataSetList.Clear;
  FreeAndNil(FDataSetList);
  inherited;
end;

procedure TIDefBrowse.FormShow(Sender: TObject);
begin
  inherited;
  PageControl1Change(PageControl1);
    
  if (tsQuery.ControlCount > 1) then
  begin
    actLocExecute(actQuery);
    actQueryProcessExecute(actQueryProcess);
  end;

  RefreshRptMenu;
end;

function TIDefBrowse.GetAllowDelete: Boolean;
begin
  Result := FAllowDelete;
end;

function TIDefBrowse.GetAllowEdit: Boolean;
begin
  Result := FAllowEdit;
end;

function TIDefBrowse.GetAllowInsert: Boolean;
begin
  Result := FAllowInsert;
end;

function TIDefBrowse.GetAllowView: Boolean;
begin
  Result := FAllowView;
end;

function TIDefBrowse.GetTabela: string;
begin
  Result := EmptyStr;
end;

function TIDefBrowse.GetTabelaOrigem: Integer;
begin
  Result := -1;
end;

procedure TIDefBrowse.DBGridDblClick(Sender: TObject);
begin
  inherited;
  RefreshCtrl;
  
  if FDataSet.RecordCount > 0 then
  begin
    if actOk.Visible then
      actOkExecute(actOk)
    else if actView.Enabled then
      actManExecute(actView)
    else
      U.Out.ShowInfo('Rotina para visualização da tabela não existe!');
  end else if actNew.Visible and actNew.Enabled then
    actManExecute(actNew);
end;

procedure TIDefBrowse.DBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Bmp: TBitmap;
  x, y: integer;
begin
  with TDBGrid(Sender) do
  begin
    if not (gdFocused in State) and (DataSource.DataSet.State = dsBrowse) then
    begin
      Canvas.Brush.Color:= clWhite;

      if DataSource.DataSet.RecNo mod 2 = 0 then
        Canvas.Brush.Color:= $00D9EAD9
      else
        Canvas.Brush.Color:= clWhite;

      Canvas.FillRect(Rect);
    end;

    DefaultDrawColumnCell(Rect, DataCol, Column, State);

    if Column.Field is TBooleanField then
      try
        Bmp:= TBitmap.Create;

        if Column.Field.AsBoolean then
          Resources.small_n.GetBitmap(67, Bmp)
        else
          Resources.small_n.GetBitmap(69, Bmp);

        x:= Rect.Left + (Rect.Right - Rect.Left - Bmp.Width) div 2;
        y:= Rect.Top + (Rect.Bottom - Rect.Top - Bmp.Height) div 2;

        Canvas.FillRect(Rect);
        Canvas.Draw(x, y, Bmp);
      finally
        Bmp.Free;
      end;
  end;
end;

procedure TIDefBrowse.DBGridKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key:= #0;
    DBGridDblClick(Sender);
  end else
    inherited;
end;

procedure TIDefBrowse.DoSort;
begin
  if Assigned(fOnSort) then
    fOnSort(Self, FDataSet, fFieldSeek);
end;

procedure TIDefBrowse.DBGridEnter(Sender: TObject);
begin
  SetActiveDBGrid(TDBGrid(Sender));
  if Assigned(Sender) and Assigned(FActiveDBGrid.DataSource) and
    Assigned(FActiveDBGrid.DataSource.DataSet) then
    DataSet:= TZQuery(FActiveDBGrid.DataSource.DataSet);
end;

procedure TIDefBrowse.actDelExecute(Sender: TObject);
begin
  inherited;
  if not U.Out.ConfWarn('Deseja realmente EXCLUIR registro?') then
    exit;

  {Exclui Registro}
  try
    FDataSet.Delete;
    FDataSet.Refresh;
  except
    on E:Exception do
    begin
      U.Out.ShowErro(E.Message);
    end;
  end;

  {Atualiza estados do controles}
  RefreshCtrl;
end;

procedure TIDefBrowse.actManExecute(Sender: TObject);
var
  bNew: Boolean;
  bBookMark: TBookmark;
begin
  try
    try
      {Verifica a opção acionada}
      case TAction(Sender).Tag of
        1: FDataSet.Insert;
        2: FDataSet.Edit;
        3: FDataSet.Cancel;
      end;

      {Chama rotina de edição}
      OnEdit;

      if not fOnEdit then
      begin
        FDataSet.Cancel;
        U.Out.ShowErro('Rotina de manutenção de registros não implementada.');
        Exit;
      end;
    except
      on e:exception do
        U.Out.ShowErro(e.Message);
    end;
  finally
    //FDataSet.DisableControls;

    if (FDataSet.State <> dsBrowse) then
      FDataSet.Cancel;

    //if TAction(Sender).Tag <> 1 then
      //iRec:= FDataSet.RecNo;

    {Atualiza grade de dados}
    //bBookMark := FDataSet.GetBookmark;
    G.RefreshDataSet(FDataSet, True);
    //FDataSet.Refresh;
    //FDataSet.GotoBookmark(bBookMark);
    //FDataSet.FreeBookmark(bBookMark);

    //if TAction(Sender).Tag <> 1 then
      //FDataSet.RecNo:= iRec;

    //FDataSet.EnableControls;
  end;
end;

procedure TIDefBrowse.actOkExecute(Sender: TObject);
begin
  inherited;
  actCancelExecute(actCancel);
end;

procedure TIDefBrowse.actQueryProcessExecute(Sender: TObject);
var
  idx: integer;
begin
  if not Assigned(FDataSet) or not Assigned(FDataSetList) then
    Exit;

  idx := FDataSetList.IndexOfObject(FDataSet);
  if idx > -1 then
    FDataSet.SQL.Text := FDataSetList[idx];

  actQueryProcess.Enabled := False;
end;

procedure TIDefBrowse.OnEdit;
begin
  fOnEdit:= False;
end;

procedure TIDefBrowse.OnLoad;
var
  i: Integer;
  dbGrid: TDBGrid;
begin
  inherited;

  for i := 0 to ComponentCount - 1 do
    if Components[i] is TDBGrid then
    begin
      dbGrid := TDBGrid(Components[i]);
      U.RestoreGridWidts(Format('%s_%s_%s',[self.Name,
        dbGrid.DataSource.DataSet.Name, dbGrid.Name]), dbGrid);
    end;

  dbGrid := nil;

  if not Assigned(DataSet) then
  begin
    if PageControl1.ActivePage.Controls[0] is TDBGrid then
    begin
      TDBGrid(PageControl1.ActivePage.Controls[0]).SetFocus;
    end;
  end;

  WindowState := wsMaximized;
end;

procedure TIDefBrowse.OnLog(var TableName: string; var Recno: Integer);
begin
end;

procedure TIDefBrowse.actLogExecute(Sender: TObject);
var
  table: string;
  recno: Integer;
begin

  table := EmptyStr;
  recno := -1;

  OnLog(table, recno);

  if (table = EmptyStr) or (recno = -1) then
    Exit;

  SysLog := TSysLog.Create(nil);
  try
    SysLog.TableName := table;
    SysLog.Recno := recno;
    G.RefreshDataSet(SysLog.qLog);

    if SysLog.qLog.IsEmpty then
    begin
      U.Out.ShowInfo('Não há informações para inspecionar');
      Exit;
    end;

    SysLog.ShowModal;
  finally
    FreeAndNil(SysLog);
  end;
end;

end.
