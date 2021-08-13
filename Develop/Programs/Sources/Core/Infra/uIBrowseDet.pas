unit uIBrowseDet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIForm, ActnList, DB, ToolWin, ComCtrls, ExtCtrls, ZDbcIntfs,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, iTypes, Grids, DBGrids,
  SecurityIntf;

type
  TIDefBrowseEdit = class(TIForm, ISecurityForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel3: TPanel;
    ToolBar3: TToolBar;
    ToolButton10: TToolButton;
    PageControl3: TPageControl;
    tsDet: TTabSheet;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    actNew: TAction;
    actEdit: TAction;
    actDel: TAction;
    actRefresh: TAction;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    actEditMaster: TAction;
    DBGrid1: TDBGrid;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton14: TToolButton;
    actDelMaster: TAction;
    actNewMaster: TAction;
    actView: TAction;
    actFirst: TAction;
    actPrior: TAction;
    actNext: TAction;
    actLast: TAction;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    pnLookup: TPanel;
    tbClose: TToolButton;
    tbDiv3: TToolButton;
    actShowSQL: TAction;
    tbSQL: TToolButton;
    tbDiv: TToolButton;
    tbSQLDet: TToolButton;
    tbDivDet: TToolButton;
    actShowSQLDet: TAction;
    tbRefazGrid: TToolButton;
    actRGrid: TAction;
    ControlBar1: TControlBar;
    ControlBar2: TControlBar;
    procedure FormShow(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ChildGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actNewExecute(Sender: TObject);
    procedure actDelExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure PageControl3Change(Sender: TObject);
    procedure actChangeMasterExecute(Sender: TObject);
    procedure ChildGridEnter(Sender: TObject);
    procedure ChildGridDblClick(Sender: TObject);
    procedure ChildGridKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actShowSQLExecute(Sender: TObject);
    procedure actRGridExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FDataSet: TZQuery;
    FScreenType: TScreenType;
    FChildDataSet: TZQuery;
    fOnAfterMasterInsert: TDataSetEvent;
    FActiveChildDBGrid: TDBGrid;
    fCommitEvent: TDataSetEvent;
    FBeforePostEvent: TDataSetBeforeEvent;
    FCloseAfterPost: TCloseAfterPosts;
    FAllowDelete: Boolean;
    FAllowEdit: Boolean;
    FAllowInsert: Boolean;
    FAllowView: Boolean;
    FReadOnly: Boolean;
    procedure SetDataSet(const Value: TZQuery);
    procedure SetScreenType(const Value: TScreenType);
    procedure SetChildDataSet(const Value: TZQuery);
    procedure OnAfterCommit;
    procedure SetCloseAfterPost(const Value: TCloseAfterPosts);
    function GetAllowDelete: Boolean;
    function GetAllowEdit: Boolean;
    function GetAllowInsert: Boolean;
    function GetAllowView: Boolean;
    procedure SetAllowDelete(const Value: Boolean);
    procedure SetAllowEdit(const Value: Boolean);
    procedure SetAllowInsert(const Value: Boolean);
    procedure SetAllowView(const Value: Boolean);
    procedure SetReadOnly(const Value: Boolean);
  protected
    fOnEdit: Boolean;
    FirstControl: TWinControl;
    procedure OnBeforeDataSet; virtual;
    procedure OnDataSet; virtual;
    procedure OnEdit; virtual;
    procedure OnPost; Virtual;
    procedure RefreshControls; virtual;
    procedure OnLoad; override;
  public
    { Public declarations }
    property CloseAfterPost: TCloseAfterPosts read FCloseAfterPost write SetCloseAfterPost;
    property DataSet: TZQuery read FDataSet write SetDataSet;
    property ScreenType: TScreenType read FScreenType write SetScreenType;
    property ChildDataSet: TZQuery read FChildDataSet write SetChildDataSet;
    property OnBeforePost: TDataSetBeforeEvent read FBeforePostEvent
      write FBeforePostEvent;
    property OnAfterMasterInsert: TDataSetEvent read fOnAfterMasterInsert
        write fOnAfterMasterInsert;
    property OnCommit: TDataSetEvent read fCommitEvent write fCommitEvent;
    property AllowInsert: Boolean read GetAllowInsert write SetAllowInsert;
    property AllowEdit: Boolean read GetAllowEdit write SetAllowEdit;
    property AllowView: Boolean read GetAllowView write SetAllowView;
    property AllowDelete: Boolean read GetAllowDelete write SetAllowDelete;
    property ReadOnly: Boolean read FReadOnly write SetReadOnly;
  end;

var
  IDefBrowseEdit: TIDefBrowseEdit;

implementation

{$R *.dfm}
Uses uIBrowse, uResources, uDM, uIUtils, ufieldnotnull, uIBrowseSQL;

{ TIBrowseDet }

procedure TIDefBrowseEdit.SetAllowDelete(const Value: Boolean);
begin
  FAllowDelete := Value;
  actDelMaster.Visible := FAllowDelete;
  RefreshControls;
end;

procedure TIDefBrowseEdit.SetAllowEdit(const Value: Boolean);
begin
  FAllowEdit := Value;
  actEditMaster.Visible := FAllowEdit;
  RefreshControls;
end;

procedure TIDefBrowseEdit.SetAllowInsert(const Value: Boolean);
begin
  FAllowInsert := Value;
  actNewMaster.Visible := FAllowInsert;
  RefreshControls;
end;

procedure TIDefBrowseEdit.SetAllowView(const Value: Boolean);
begin
  FAllowView := Value;
  RefreshControls;
end;

procedure TIDefBrowseEdit.SetChildDataSet(const Value: TZQuery);
begin
  FChildDataSet := Value;

  if Assigned(FChildDataSet) and not FChildDataSet.Active then
    FChildDataSet.Open;
    
  fOnEdit:= True;
  RefreshControls;
end;

procedure TIDefBrowseEdit.SetCloseAfterPost(const Value: TCloseAfterPosts);
begin
  FCloseAfterPost := Value;
end;

procedure TIDefBrowseEdit.SetDataSet(const Value: TZQuery);
begin
  FDataSet := Value;

  {Executa procedimento para configurações antes atribuição do DataSet}
  OnBeforeDataSet;

  if not (DataSet.State in [dsEdit, dsInsert]) then
    G.RefreshDataSet(FDataSet);

  {Executa procedimento para configurações após atribuição do DataSet}
  OnDataSet;
  RefreshControls;
end;

procedure TIDefBrowseEdit.SetReadOnly(const Value: Boolean);
begin
  FReadOnly := Value;
  AllowInsert := not ReadOnly;
  AllowEdit := not ReadOnly;
  AllowDelete := not ReadOnly;
end;

procedure TIDefBrowseEdit.SetScreenType(const Value: TScreenType);
begin
  FScreenType := Value;
  Panel3.Visible:= (Value = stMasterDetail);

  {Ativa a tabela detalhe}
  if Value = stMasterDetail then
    PageControl3Change(PageControl3);

  RefreshControls;
end;

procedure TIDefBrowseEdit.actChangeMasterExecute(Sender: TObject);
begin
  case TAction(Sender).Tag of
    1:
    begin
      FDataSet.Insert;
      SelectFirst;
    end;
    2: FDataSet.Edit;
    3:
    begin
      if not U.Out.ConfWarn('Deseja realmente EXCLUIR esse registro?') then
        exit;

      FDataSet.Delete;
    end;
    4: FDataSet.First;
    5: FDataSet.Prior;
    6: FDataSet.Next;
    7: FDataSet.Last;
  end;

  if Assigned(ChildDataSet) and (TAction(Sender).Tag > 2) then
    ChildDataSet.Refresh;

  RefreshControls;
end;

procedure TIDefBrowseEdit.actDelExecute(Sender: TObject);
begin
  if not U.Out.ConfWarn('Deseja realmente EXCLUIR registro?') then
    exit;

  {Exclui Registro}
  try
    FChildDataSet.Delete;
    //FChildDataSet.Refresh;

    // Dispara evento
//    if Assigned(fCommitEvent) then
  //    fCommitEvent(Sender, FDataSet);
  except
    on E:Exception do
    begin
      U.Out.ShowErro(E.Message);
    end;
  end;

  {Atualiza estados do controles}
  RefreshControls;
end;

procedure TIDefBrowseEdit.actNewExecute(Sender: TObject);
var
  iRec: Integer;
begin
  try
    {Verifica a opção acionada}
    case TAction(Sender).Tag of
      1: FChildDataSet.Insert;
      2: FChildDataSet.Edit;
      3: FChildDataSet.Cancel;
    end;

    {Chama rotina de edição}
    OnEdit;

    if not fOnEdit then
    begin
      FChildDataSet.Cancel;
      U.Out.ShowErro('Rotina de manutenção de registros não implementada');
      Exit;
    end;
  finally
    if (FChildDataSet.State <> dsBrowse) then
      FChildDataSet.Cancel;

    //if TAction(Sender).Tag <> 1 then
     // iRec:= FChildDataSet.RecNo;

    {Atualiza grade de dados}

    FChildDataSet.Refresh;

    //if TAction(Sender).Tag <> 1 then
    //  FChildDataSet.RecNo:= iRec;

    RefreshControls;
  end;
end;

procedure TIDefBrowseEdit.actOkExecute(Sender: TObject);
var
//  bkMark: TBookmark;
  lastState: TDataSetState;
  fField: TField;
  Recno: integer;
  bRepos: Boolean;
  bAllowPost: Boolean;
begin
  // Armazena o estado antes da gravação
  lastState := FDataSet.State;

  bRepos := Assigned(FDataSet.FindField('recno'));

  try
    U.Data.StartTransaction;

    bAllowPost:= True;
    if Assigned(FBeforePostEvent) then
      FBeforePostEvent(Sender, FDataSet, bAllowPost);

    if not bAllowPost then
      Exit;

    //SelectFirst;
    FDataSet.Post;

    if bRepos then
      Recno := FDataSet.FieldByName('recno').AsInteger;

    OnPost; {Executa procedimentos após a gravação}
    
    U.Data.Commit; // Efetiva gravação

    // Dispara evento
    if Assigned(fCommitEvent) then
      fCommitEvent(Sender, FDataSet);

    inherited; // Incrementa o número de registros gravados

    // Atualiza dataset
    try
      FDataSet.DisableControls;
      if bRepos then
        Recno := FDataSet.FieldByName('recno').AsInteger;

      FDataSet.Refresh;

      if bRepos then
        FDataSet.Locate('recno', Recno, []);
    finally
      FDataSet.EnableControls;
    end;

    // Cria um novo registro
    if lastState = dsInsert then
    begin
      if (FScreenType = stMasterDetail) and Assigned(fOnAfterMasterInsert) then // Verifica se deve executar alguma ação após a inserção
        fOnAfterMasterInsert(Self, FDataSet);

      if (aapInsert in FCloseAfterPost) then
        Close;
    end else
      if (aapEdit in FCloseAfterPost) then
        Close;

    SelectFirst;
    RefreshControls;
  except
    on Ez:EDatabaseError do
    begin
      U.Data.Rollback;
      {Checa se os campos requeridos estão preenchidos}
      for fField in FDataSet.Fields do
        if fField.Required and fField.IsNull then
        begin
          if not Assigned(FieldsNotNull) then
            Application.CreateForm(TFieldsNotNull, FieldsNotNull);

          FieldsNotNull.ListBox1.Items.Add(fField.DisplayLabel);
        end;

      if Assigned(FieldsNotNull) then
      begin
        FieldsNotNull.ShowModal;
        FieldsNotNull.Free;
        FieldsNotNull:= nil;
      end else
        try
          U.Out.ShowErro(Ez.Message);
        except
          U.Out.ShowErro('Registro não gravado. Erro %s.', [Ez.Message]);
        end;
    end;
    on E:Exception do
    begin
      U.Data.Rollback;
      U.Out.ShowErro('Registro não gravado. Erro %s.', [E.Message]);
    end;
  end;
end;

procedure TIDefBrowseEdit.actRefreshExecute(Sender: TObject);
begin
  inherited;
  FChildDataSet.Refresh;
  RefreshControls;
end;

procedure TIDefBrowseEdit.actRGridExecute(Sender: TObject);
begin
  inherited;
  FActiveChildDBGrid.Columns.Clear;
  FActiveChildDBGrid.Columns.RestoreDefaults;
end;

procedure TIDefBrowseEdit.actShowSQLExecute(Sender: TObject);
var
  i: integer;
  Db: TZQuery;
begin
  inherited;
  IDefBrowseSQL := TIDefBrowseSQL.Create(nil);
  try

    if TAction(Sender).Tag = 1 then
      Db := FDataSet
    else
      Db := FChildDataSet;

    IDefBrowseSQL.Memo1.Lines.Text := 'Formulário: '+ ClassName + ' - ' + Name;
    IDefBrowseSQL.Memo1.Lines.Add('');
    IDefBrowseSQL.Memo1.Lines.Add('');
    IDefBrowseSQL.Memo1.Lines.Add(StringOfChar('-', 50));
    IDefBrowseSQL.Memo1.Lines.Add('Instrução SQL');
    IDefBrowseSQL.Memo1.Lines.Add(StringOfChar('-', 50));
    IDefBrowseSQL.Memo1.Lines.Add(Db.SQL.Text);

    if Db.Params.Count > 0 then
    begin
      IDefBrowseSQL.Memo1.Lines.Add('');
      IDefBrowseSQL.Memo1.Lines.Add(StringOfChar('-', 50));
      IDefBrowseSQL.Memo1.Lines.Add('Parâmetros');
      IDefBrowseSQL.Memo1.Lines.Add(StringOfChar('-', 50));


      for I := 0 to Db.Params.Count - 1 do
        IDefBrowseSQL.Memo1.Lines.Add(Db.Params[i].Name + ': ' +
          Db.Params[i].AsString);
    end;

    IDefBrowseSQL.ShowModal;
  finally
    FreeAndNil(IDefBrowseSQL);
  end;
end;

procedure TIDefBrowseEdit.ChildGridEnter(Sender: TObject);
begin
  inherited;
  FActiveChildDBGrid:= TDBGrid(Sender);
  if Assigned(Sender) and Assigned(TDBGrid(Sender).DataSource) and
    Assigned(TDBGrid(Sender).DataSource.DataSet) then
    ChildDataSet:= TZQuery(TDBGrid(Sender).DataSource.DataSet);
end;

procedure TIDefBrowseEdit.ChildGridDblClick(Sender: TObject);
begin
  inherited;
  if not Assigned(DataSet) or not Assigned(ChildDataSet) or DataSet.IsEmpty then
    Exit;
    
  if ChildDataSet.RecordCount > 0 then
  begin
    if actView.Enabled then
      actNewExecute(actView)
    else
      U.Out.ShowInfo('Rotina para visualização da tabela não existe!');
  end else
    actNewExecute(actNew);
end;

procedure TIDefBrowseEdit.ChildGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Bmp: TBitmap;
  x, y: integer;
begin
  with TDBGrid(Sender) do
  begin
    if not (gdFocused in State) then
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
        FreeAndNil(Bmp);
      end;
  end;
end;

procedure TIDefBrowseEdit.ChildGridKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key:= #0;
    ChildGridDblClick(Sender);
  end else
    inherited;
end;

procedure TIDefBrowseEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  actCancelExecute(actCancel);
  inherited;
end;

procedure TIDefBrowseEdit.FormCreate(Sender: TObject);
begin
  inherited;
  SetScreenType(FScreenType);
  FCloseAfterPost := [];
  SetAllowInsert(True);
  SetAllowEdit(True);
  SetAllowView(True);
  SetAllowDelete(True);
end;

procedure TIDefBrowseEdit.FormDestroy(Sender: TObject);
var
  i: Integer;
  dbGrid: TDBGrid;
begin
  if ScreenType = stMasterDetail then
  begin
    for i := 0 to ComponentCount - 1 do
      if Components[i] is TDBGrid then
      begin
        dbGrid := TDBGrid(Components[i]);
        U.SaveGridWidts(Format('%s_%s_%s',[self.Name, dbGrid.DataSource.DataSet.Name, dbGrid.Name]), dbGrid);
      end;

    dbGrid := nil;
  end;

  inherited;
end;

procedure TIDefBrowseEdit.FormShow(Sender: TObject);
begin
  inherited;
  if ScreenType = stMasterDetail then
    ChildGridEnter(DBGrid1);

  if Assigned(FirstControl) then
    FirstControl.SetFocus;
end;

function TIDefBrowseEdit.GetAllowDelete: Boolean;
begin
  Result := FAllowDelete;
end;

function TIDefBrowseEdit.GetAllowEdit: Boolean;
begin
  Result := FAllowEdit;
end;

function TIDefBrowseEdit.GetAllowInsert: Boolean;
begin
  Result := FAllowInsert;
end;

function TIDefBrowseEdit.GetAllowView: Boolean;
begin
  Result := FAllowView;
end;

procedure TIDefBrowseEdit.OnAfterCommit;
begin

end;

procedure TIDefBrowseEdit.OnBeforeDataSet;
begin

end;

procedure TIDefBrowseEdit.OnDataSet;
begin

end;

procedure TIDefBrowseEdit.OnEdit;
begin
  fOnEdit:= False;
end;

procedure TIDefBrowseEdit.OnLoad;
var
  i: Integer;
  dbGrid: TDBGrid;
begin
  inherited;

  if ScreenType = stMasterDetail then
  begin
    for i := 0 to ComponentCount - 1 do
      if Components[i] is TDBGrid then
      begin
        dbGrid := TDBGrid(Components[i]);
        U.RestoreGridWidts(Format('%s_%s_%s',[self.Name,
          dbGrid.DataSource.DataSet.Name, dbGrid.Name]), dbGrid);
      end;

    dbGrid := nil;
  end;
end;

procedure TIDefBrowseEdit.OnPost;
begin

end;

procedure TIDefBrowseEdit.PageControl3Change(Sender: TObject);
var
  i: Integer;
begin
  {Atribui dataset}
  with PageControl3.ActivePage do
    for i := 0 to ControlCount - 1 do
      if (Controls[i] is TDBGrid) then
      begin
        ChildGridEnter(Controls[i]);
        Break;
      end;
end;

procedure TIDefBrowseEdit.RefreshControls;
var
  i: Integer;
begin
  //PageControl3.Enabled:= False;
  for i := 0 to alDef.ActionCount - 1 do
    TAction(alDef.Actions[i]).Enabled:= False;

  actClose.Enabled := True;

  if not Assigned(FDataSet) or not FDataSet.Active then
    Exit;

  // Controles associados a tabela mestre
  actNewMaster.Enabled:= FAllowInsert and not (DataSet.State in [dsEdit,dsInsert]);
  actOk.Enabled:= (DataSet.State in [dsEdit,dsInsert]);
  actCancel.Enabled:= (DataSet.State in [dsEdit,dsInsert]);
  actEditMaster.Enabled:= FAllowEdit and not (DataSet.State in [dsEdit,dsInsert]) and
    (FDataSet.RecordCount > 0);
  actDelMaster.Enabled := FAllowDelete and actEditMaster.Enabled;
  actShowSQL.Enabled := (DataSet.State = dsBrowse);

  if not (DataSet.State in [dsEdit,dsInsert]) and (FDataSet.RecordCount > 1) then
  begin
    actFirst.Enabled:= not FDataSet.Bof;
    actPrior.Enabled:= not FDataSet.Bof;
    actNext.Enabled:= not FDataSet.Eof;
    actLast.Enabled:= not FDataSet.Eof;
  end;

  if Assigned(FActiveChildDBGrid) then
    FActiveChildDBGrid.Enabled := not (DataSet.State in [dsEdit,dsInsert]);

  if (FScreenType = stSimple) or not Assigned(FChildDataSet) or
    not FChildDataSet.Active or (FDataSet.State in [dsEdit, dsInsert]) or
    DataSet.IsEmpty then                             
    Exit;

  //PageControl3.Enabled := True;
  if Assigned(FActiveChildDBGrid) then
  begin
    FActiveChildDBGrid.Enabled := not (FChildDataSet.State in [dsEdit,dsInsert])
      and (FChildDataSet.RecordCount > 0);
      
    actRGrid.Enabled := FChildDataSet.Active;
  end;

  // Controles associados a tabela detalhe
  actNew.Enabled:= not (FChildDataSet.State in [dsEdit,dsInsert]);
  actEdit.Enabled:= not (FChildDataSet.State in [dsEdit,dsInsert]) and
    (FChildDataSet.RecordCount > 0);
  actDel.Enabled:= not (FChildDataSet.State in [dsEdit,dsInsert]) and
    (FChildDataSet.RecordCount > 0);
  actRefresh.Enabled:= not (FChildDataSet.State in [dsEdit,dsInsert]);
  actView.Enabled:= not (FChildDataSet.State in [dsEdit,dsInsert]) and
    (FChildDataSet.RecordCount > 0);
  actShowSQLDet.Enabled := (FChildDataSet.State = dsBrowse);

end;

procedure TIDefBrowseEdit.actCancelExecute(Sender: TObject);
var
  Fechar: Boolean;
begin
  Fechar := ((FDataSet.State = dsInsert) and (aapInsert in FCloseAfterPost)) or
            ((FDataSet.State = dsEdit) and (aapEdit in FCloseAfterPost));

  if Assigned(FDataSet) then
    FDataSet.Cancel;

  if Fechar then
    Close;

  RefreshControls;
end;

end.
