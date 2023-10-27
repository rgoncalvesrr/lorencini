unit uSysMenuEditor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uiwizard, ActnList, StdCtrls, ExtCtrls, ComCtrls, Menus, ZDataSet,
  ToolWin, uSysMenuComum;

type
  TSysMenuEditor = class(TIWizard)
    trMenu: TTreeView;
    PopupMenu1: TPopupMenu;
    actNew: TAction;
    actEdit: TAction;
    actDel: TAction;
    Inserir1: TMenuItem;
    Propriedades1: TMenuItem;
    Excluir1: TMenuItem;
    N1: TMenuItem;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    actEditText: TAction;
    ControlBar1: TControlBar;
    procedure actCancelExecute(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure actNewExecute(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure trMenuDeletion(Sender: TObject; Node: TTreeNode);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure trMenuDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure trMenuDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure trMenuStartDrag(Sender: TObject; var DragObject: TDragObject);
    procedure trMenuMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure actDelExecute(Sender: TObject);
    procedure trMenuEdited(Sender: TObject; Node: TTreeNode; var S: string);
    procedure actEditTextExecute(Sender: TObject);
  private
    { Private declarations }
    FDataSet: TZReadOnlyQuery;
    FNode: TTreeNode;
    FEditing: Boolean;
    FFolderMove: Boolean;
    FMenu: TMenuFactory;
    procedure LoadMenu;
    procedure CreateSubMenus(ParentDataItem: TDataItem); {Cria submenus}
    procedure _ClassCallBack(AClass: TPersistentClass);
    function GetDataItem: TDataItem;
  public
    procedure CreateItem(DataItem: TDataItem); {Cria nós no treeview}
  end;

//var
//  SysMenuEditor: TSysMenuEditor;

implementation

{$R *.dfm}

uses uDM, uIUtils, mcUtils, DB, ZAbstractRODataset, uSysMenuEditorItem, Types,
  uIForm, uResources, uMain;

{ TSysMenuEditor }

procedure TSysMenuEditor.actCancelExecute(Sender: TObject);
begin
  LoadMenu;
  inherited;
end;

procedure TSysMenuEditor.actDelExecute(Sender: TObject);
var
  fData: TDataItem;
begin
  fData:= FNode.Data;

  if not U.Out.ConfWarn('Realmente excluir o items "%s"?', [fData.descri]) then
    Exit;

  U.StartTransaction;
  try
    U.ExecuteSQL('delete from sys_menu where parent = '+IntToStr(Fdata.id));
    U.ExecuteSQL('delete from sys_menu where id = '+IntToStr(Fdata.id));

    fData.node.DeleteChildren;
    fData.node.Delete;

    U.Commit;
  except
    on E:Exception do
    begin
      U.RollBack;
      U.Out.ShowErro(E.Message);
    end;
  end;
end;

procedure TSysMenuEditor.actEditExecute(Sender: TObject);
begin
  Application.CreateForm(TSysMenuEditorItem, SysMenuEditorItem);
  SysMenuEditorItem.Form:= Self;
  SysMenuEditorItem.DataItem:= FNode.Data; // Item Editado
  SysMenuEditorItem.ShowModal;

  actOk.Enabled:= actOk.Enabled or (SysMenuEditorItem.ExecCount > 0);
  actCancel.Enabled:= actCancel.Enabled or (SysMenuEditorItem.ExecCount > 0);

  FNode:= nil;
end;

procedure TSysMenuEditor.actEditTextExecute(Sender: TObject);
begin
  inherited;
  if Assigned(trMenu.Selected) then
    trMenu.Selected.EditText;
end;

procedure TSysMenuEditor.actNewExecute(Sender: TObject);
begin
  // teste
  Application.CreateForm(TSysMenuEditorItem, SysMenuEditorItem);
  SysMenuEditorItem.Form:= Self;
  SysMenuEditorItem.ParentDataItem:= nil;

  if Assigned(FNode) then
    if not mcEmpty(TDataItem(FNode.Data).Form) then
    begin
      U.Out.ShowInfo('Telas não pode ter sub-itens');
      Exit;
    end
    else
      SysMenuEditorItem.ParentDataItem:= TDataItem(FNode.Data);

  SysMenuEditorItem.ShowModal;
  actOk.Enabled:= actOk.Enabled or (SysMenuEditorItem.ExecCount > 0);
  actCancel.Enabled:= actCancel.Enabled or (SysMenuEditorItem.ExecCount > 0);

  FNode:= nil;
end;

procedure TSysMenuEditor.actOkExecute(Sender: TObject);
var
  i: integer;
  fSQL: string;
  FItem: TDataItem;
begin
  inherited;
  with trMenu do
  try
    //Items.BeginUpdate;

    try
      U.Data.StartTransaction;
      U.ExecuteSQL('delete from sys_menu;');

      for i:= 0 to Items.Count - 1 do
      begin
        FItem:= Items[i].Data;
        FItem.id:= i + 1;

        fSQL:= 'insert into sys_menu (id, descri, level, parent, form, report, order_ ) values (';

        fSQL:= fSQL + IntToStr(FItem.id) + ', ' + QuotedStr(FItem.descri) + ', ' + IntToStr(FItem.node.Level);

        if not Assigned(FItem.parent) then
          fSQL:= fSQL + ', null'
        else
          fSQL:= fSQL + ', ' + IntToStr(FItem.parent.id);

        if mcEmpty(FItem.form) then
          fSQL:= fSQL + ', null'
        else
          fSQL:= fSQL + ', ' + QuotedStr(FItem.form);

        if FItem.Report <> 0 then
          fSQL:= fSQL + ', ' + IntToStr(FItem.Report)
        else
          fSQL:= fSQL + ', null';

        fSQL:= fSQL + ', ' + IntToStr(i+1) + ')';

        U.ExecuteSQL(fSQL);
      end;

      U.Data.Commit;
      
      Main.UnLoadMenu;
      Main.LoadMenu;
    except
      U.Data.Rollback;
    end;
  finally
    //Items.EndUpdate;
    actOk.Enabled:= False;
    actCancel.Enabled:= False;
  end;
end;

procedure TSysMenuEditor.CreateItem(DataItem: TDataItem);
begin
  with trMenu do
    if Assigned(DataItem.Parent) then
       DataItem.Node := Items.AddChildObject(DataItem.Parent.node, DataItem.descri, DataItem)
    else
       DataItem.Node := Items.AddObject(nil, DataItem.descri, DataItem);

  {Atribui imagem ao nó rescem criado}
  if mcEmpty(DataItem.form) then
  begin
    DataItem.node.ImageIndex:= 140;
    DataItem.node.SelectedIndex:= 142;
  end
  else if DataItem.Report <> 0 then
  begin
    DataItem.node.ImageIndex:= 357;
    DataItem.node.SelectedIndex:= 357;
  end
  else
  begin
    DataItem.node.ImageIndex:= 228;
    DataItem.node.SelectedIndex:= 228;
  end;
end;

procedure TSysMenuEditor.CreateSubMenus(ParentDataItem: TDataItem);
var
  iRecno: Integer;
  FItem: TDataItem;
begin

  {Localiza o primeiro subitem}
  with FDataSet do
  begin
    Locate('parent;level', VarArrayOf([ParentDataItem.id, ParentDataItem.node.Level + 1]), []);

    while (FieldByName('parent').AsInteger = ParentDataItem.id) and
      (FieldByName('level').AsInteger = ParentDataItem.node.level + 1) and not EOF do
    begin
      {Cria subitem}
      FItem := GetDataItem;
      FItem.Parent:= ParentDataItem;
      FItem.Node:= nil;

      CreateItem(fItem); {Cria nó no treeview}

      {Processa submenus quando não tratar-se de sub-formulário}
      if mcEmpty(FItem.Form) then
      begin
        iRecNo:= Recno; {Salva posição do registro}
        CreateSubMenus(FItem); {Cria subitens}
        Recno:= iRecNo; {Restaura posição do registro}
      end;

      Next;
    end;
  end;
end;

procedure TSysMenuEditor.FormDestroy(Sender: TObject);
begin
  trMenu.Items.Clear;
  inherited;
end;


procedure TSysMenuEditor.FormShow(Sender: TObject);
var
  fClass: TClassFinder;
begin
  inherited;
  LoadMenu;

  FDataSet:= U.QueryPersistent;

  with FDataSet do
  try
    SQL.Text:=
    'select form, descri '+
      'from sys_forms ';

    Open;

    {Preenche tabela de menus}
    fClass:= TClassFinder.Create(nil, true);
    fClass.GetClasses(_ClassCallBack);
    fClass.Free;
  finally
    FreeAndNil(FDataSet);
  end;
end;

function TSysMenuEditor.GetDataItem: TDataItem;
begin
  with FDataSet do
  begin
    Result := TDataItem.Create(FieldByName('id').AsInteger);
    Result.Descri := FieldByName('descri').AsString;
    Result.Form := FieldByName('form').AsString;
    Result.Report := FieldByName('report').AsInteger;
  end;
end;

procedure TSysMenuEditor.LoadMenu;
var
  iRecno: integer;
  FItem: TDataItem;
begin
  FDataSet := U.QueryPersistent;
  with FDataSet do
  try
    actOk.Enabled:= False;
    actCancel.Enabled:= False;

    trMenu.Items.Clear;

    {Limpa itens do treeview}
    trMenu.Items.BeginUpdate;

    SQL.Text:=
    'select id, descri, level, parent, form, report, order_ '+
      'from sys_menu '+
     'order by level, order_, parent';

    Open;

    while (FieldByName('level').AsInteger = 0) and not EOF do
    begin
      FItem := GetDataItem;

      CreateItem(fItem); {Cria nó no treeview}

      iRecNo:= Recno; {Salva posição do registro}
      CreateSubMenus(fItem); {Cria subitens}
      Recno:= iRecNo; {Restaura posição do registro}

      Next;
    end;
  finally
    Close;
    FreeAndNil(FDataSet);
    trMenu.Items.EndUpdate;
  end;
end;

procedure TSysMenuEditor.PopupMenu1Popup(Sender: TObject);
var
  fPoint: TPoint;
begin
  fPoint:= trMenu.ScreenToClient(Mouse.CursorPos);
  FNode:= trMenu.GetNodeAt(fPoint.X, fPoint.Y);

  actEdit.Enabled:= Assigned(FNode);
  actDel.Enabled:= Assigned(FNode);
end;

procedure TSysMenuEditor.trMenuDeletion(Sender: TObject; Node: TTreeNode);
begin
  if Assigned(Node.Data) then
    TDataItem(Node.Data).Free;

  Node.Data := nil;

  inherited;
end;

procedure TSysMenuEditor.trMenuDragDrop(Sender, Source: TObject; X, Y: Integer);
var
  fTmpNode: TTreeNode;
  fSrc, fTrg: TDataItem;
begin
  fTmpNode:= TTreeView(Sender).GetNodeAt(X, Y);

  if not Assigned(fTmpNode) then
    Exit;

  {Obtem os dados de origem e destino}
  fSrc:= FNode.Data;
  fTrg:= fTmpNode.Data;

  {Realoca item}
  if not mcEmpty(fTrg.form) or FFolderMove then
  begin
    FNode.MoveTo(fTmpNode, naInsert);
    fSrc.Parent:= fTrg.Parent;
  end
  else
  begin
    FNode.MoveTo(fTmpNode, naAddChild);
    fSrc.Parent:= fTrg;
  end;

  actOk.Enabled:= True;
  actCancel.Enabled:= True;
end;

procedure TSysMenuEditor.trMenuDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
var
  fTmpNode: TTreeNode;
begin
  fTmpNode:= TTreeView(Sender).GetNodeAt(X, Y);

  Accept:= (Source is TTreeView) and Assigned(fTmpNode) and
    Assigned(FNode) and (FNode <> fTmpNode);
end;

procedure TSysMenuEditor.trMenuEdited(Sender: TObject; Node: TTreeNode;
  var S: string);
begin
  inherited;
  if Assigned(Node) and (TDataItem(Node.Data).Descri <> S) then
  begin
    TDataItem(Node.Data).Descri := S;
    actOk.Enabled := True;
    actCancel.Enabled:= True;
  end;

end;

procedure TSysMenuEditor.trMenuMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  FFolderMove:= (ssCtrl in Shift);
end;

procedure TSysMenuEditor.trMenuStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  FNode:= TTreeView(Sender).Selected;
end;

procedure TSysMenuEditor._ClassCallBack(AClass: TPersistentClass);
var
  Form: TForm;
  Refresh: Boolean;
begin
  if not AClass.InheritsFrom(TForm) or (UpperCase(AClass.ClassName) = 'TFORM') then
    Exit;

  try
    if FDataSet.Locate('form', UpperCase(AClass.ClassName), []) then
      U.ExecuteSQL(Format('update sys_forms set excluir = 0 where form = %s', [QuotedStr(UpperCase(AClass.ClassName))]))
    else
      try
        Form := TFormClass(AClass).Create(nil);

        U.ExecuteSQL(Format('insert into sys_forms (descri, form) values (%s, %s)',
          [QuotedStr(Form.Caption), QuotedStr(UpperCase(AClass.ClassName))]));
        Refresh := True;
      finally
        FreeAndNil(Form);
      end
  except
    on  E:Exception do
      U.Out.ShowErro('Erro: %s. Formulário %s:', [E.Message, AClass.ClassName]);
  end;

  if Refresh then
    G.RefreshDataSet(FDataSet);
end;

initialization
  RegisterClass(TSysMenuEditor);

finalization
  UnRegisterClass(TSysMenuEditor);

end.
