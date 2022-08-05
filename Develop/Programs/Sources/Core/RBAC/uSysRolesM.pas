unit uSysRolesM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids,
  StdCtrls, DBCtrls, Mask, ZDataset, uSysMenuComum, Menus, JvExExtCtrls, JvImage;

type
  TSysRolesM = class(TIDefBrowseEdit)
    Panel2: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel5: TPanel;
    Panel6: TPanel;
    DBCheckBox1: TDBCheckBox;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    TabSheet2: TTabSheet;
    trMenu: TTreeView;
    pmGrants: TPopupMenu;
    actCheckAll: TAction;
    actUncheckAll: TAction;
    actCheckAll1: TMenuItem;
    actUncheckAll1: TMenuItem;
    Panel7: TPanel;
    JvImage1: TJvImage;
    lbLeg1: TLabel;
    JvImage2: TJvImage;
    lbLeg2: TLabel;
    lbLeg3: TLabel;
    JvImage3: TJvImage;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure trMenuDeletion(Sender: TObject; Node: TTreeNode);
    procedure trMenuDblClick(Sender: TObject);
    procedure trMenuKeyPress(Sender: TObject; var Key: Char);
    procedure actCheckAllExecute(Sender: TObject);
    procedure actUncheckAllExecute(Sender: TObject);
    procedure pmGrantsPopup(Sender: TObject);
    procedure PageControl3Change(Sender: TObject);
    procedure ChildGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    FMenu: TMenuFactory;
    procedure RefreshItemAllowed(DataItem: TDataItem);
    procedure CreateItem(Menu: TMenuFactory; DataItem: TDataItem);
    procedure GrantChildNodes(DataItem: TDataItem; Allowed: Boolean);
    procedure UpdateGrant(DataItem: TDataItem);
    procedure OnEdit; override;
    procedure RefreshControls; override;
  public
    { Public declarations }
    procedure RefreshTreeGrants;
  end;

var
  SysRolesM: TSysRolesM;

implementation

{$R *.dfm}

uses uSysRoles, uSysRolesMUsers, uSysRolesMGrants, uResources, uIUtils, DB;

{ TSysRolesM }

procedure TSysRolesM.actCheckAllExecute(Sender: TObject);
var
  oDataItem: TDataItem;
begin
  inherited;
  oDataItem := trMenu.Selected.Data;
  GrantChildNodes(oDataItem, True);
end;

procedure TSysRolesM.actUncheckAllExecute(Sender: TObject);
var
  oDataItem: TDataItem;
begin
  inherited;
  oDataItem := trMenu.Selected.Data;
  GrantChildNodes(oDataItem, False);
end;

procedure TSysRolesM.ChildGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  fBitMap: TBitmap;
begin
  if (Column.Index <> 0) then
    inherited ChildGridDrawColumnCell(Sender, Rect, DataCol, Column, State)
  else
    with TDBGrid(Sender) do
    try
      fBitMap:= TBitmap.Create;
      fBitMap.Transparent:= True;

      with Resources do
        case SysRoles.qAccountsstatus.AsInteger of
          1: small_n.GetBitmap(215, fBitMap); //Novo
          2: small_n.GetBitmap(208, fBitMap); //Ativo
          3: small_n.GetBitmap(209, fBitMap); //Inativo
        else
          small_n.GetBitmap(204, fBitMap); //Indefinido  
        end;

      if Column.Width <> fBitMap.Width + 2 then
        Column.Width:= fBitMap.Width + 2;

      {Desenha o status da remessa}
      Canvas.Draw(Rect.Left + 1, Rect.Top + 1, fBitMap);
    finally
      fBitMap.Free;
    end;
end;

procedure TSysRolesM.CreateItem(Menu: TMenuFactory; DataItem: TDataItem);
begin
  RefreshItemAllowed(DataItem);
end;

procedure TSysRolesM.FormCreate(Sender: TObject);
begin
  inherited;
  FMenu := TMenuFactory.Create(trMenu);
  FMenu.OnCreateItem := CreateItem;
end;

procedure TSysRolesM.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FMenu);
  inherited;
end;

procedure TSysRolesM.FormShow(Sender: TObject);
begin
  inherited;
  FMenu.Load(mmSecutiry);
end;

procedure TSysRolesM.GrantChildNodes(DataItem: TDataItem; Allowed: Boolean);
var
  oNode: TTreeNode;
  oDataItem: TDataItem;
begin
  if not (DataItem.ItemType = itMenu) or not DataItem.Node.HasChildren then
    Exit;

  oNode := DataItem.Node.GetNext;

  while Assigned(oNode) and (oNode.Level > DataItem.Node.Level) do
  begin
    oDataItem := oNode.Data;
    oDataItem.Allowed := Allowed;
    UpdateGrant(oDataItem);
    oNode := oNode.GetNext;
  end;
end;

procedure TSysRolesM.OnEdit;
begin
  if ChildDataSet = SysRoles.qAccounts then
  begin
    SysRolesMUsers := TSysRolesMUsers.Create(nil);
    try
      SysRolesMUsers.DataSet := SysRoles.qAccounts;
      SysRolesMUsers.ShowModal;
    finally
      FreeAndNil(SysRolesMUsers);
    end;
  end;

  if ChildDataSet = SysRoles.qGrants then
  begin
    SysRolesMGrants := TSysRolesMGrants.Create(nil);
    try
      SysRolesMGrants.DataSet := SysRoles.qGrants;
      SysRolesMGrants.ShowModal;
    finally
      FreeAndNil(SysRolesMGrants);
    end;
  end;

end;

procedure TSysRolesM.PageControl3Change(Sender: TObject);
begin
  inherited;
  RefreshControls;
end;

procedure TSysRolesM.pmGrantsPopup(Sender: TObject);
var
  oNode: TTreeNode;
begin
  inherited;
  oNode := trMenu.Selected;
  actCheckAll.Enabled := Assigned(oNode) and oNode.HasChildren and
    Assigned(oNode.Data) and (TDataItem(oNode.Data).ItemType = itMenu);
  actUncheckAll.Enabled := actCheckAll.Enabled and not SysRoles.IBrwSrcsys_.AsBoolean;

  actCheckAll.Caption := 'Conceder todos os acessos';
  actUncheckAll.Caption := 'Revogar todos os acessos';

end;

procedure TSysRolesM.RefreshControls;
begin
  inherited;
  actNew.Enabled := actNew.Enabled and (PageControl3.ActivePageIndex = 0);
  actEdit.Enabled := False;
  actView.Enabled := actView.Enabled and (PageControl3.ActivePageIndex = 0);
  actDel.Enabled := actDel.Enabled and (PageControl3.ActivePageIndex = 0);
  actRefresh.Enabled := actRefresh.Enabled and (PageControl3.ActivePageIndex = 0);
  actRGrid.Enabled := actRGrid.Enabled and (PageControl3.ActivePageIndex = 0);
end;

procedure TSysRolesM.RefreshItemAllowed(DataItem: TDataItem);
begin
  with SysRoles.qGrants do
    if (DataItem.ItemType = itAction) then
      DataItem.Allowed := Locate('grant_', DataItem.Grant, [loCaseInsensitive]);
end;

procedure TSysRolesM.RefreshTreeGrants;
var
  oNode: TTreeNode;
  oDataItem: TDataItem;
begin
  with trMenu do
  try
    Items.BeginUpdate;

    // Atualiza marcação do item
    for oNode in Items do
      if Assigned(oNode.Data) then
      begin
        oDataItem := oNode.Data;
        RefreshItemAllowed(oDataItem);
      end;
  finally
    Items.EndUpdate;
  end;

end;

procedure TSysRolesM.trMenuDblClick(Sender: TObject);
var
  iKey: Char;
begin
  inherited;
  iKey := #32;

  trMenuKeyPress(trMenu, iKey);
end;

procedure TSysRolesM.trMenuDeletion(Sender: TObject; Node: TTreeNode);
begin
  if Assigned(Node.Data) then
    TDataItem(Node.Data).Free;

  Node.Data := nil;

  inherited;
end;

procedure TSysRolesM.trMenuKeyPress(Sender: TObject; var Key: Char);
var
  oDataItem: TDataItem;
begin
  with trMenu, SysRoles do
    if (Key = #32) and Assigned(Selected) and Assigned(Selected.Data) then
    begin
      Key := #0;
      oDataItem := Selected.Data;

      if oDataItem.ItemType = itAction then
      begin
        if SysRoles.IBrwSrcsys_.AsBoolean and oDataItem.Allowed then
        begin
          U.Out.ShowWarn('ATENÇÃO! Não é possível remover permissões de perfis internos.');
          Exit;
        end;

        oDataItem.Allowed := not oDataItem.Allowed;
        UpdateGrant(oDataItem);
      end;
    end;

    inherited;
end;

procedure TSysRolesM.UpdateGrant(DataItem: TDataItem);
begin
  if not (DataItem.ItemType = itAction) or (DataItem.Grant = EmptyStr) then
    Exit;
    
  with SysRoles do
    if not DataItem.Allowed then
    begin
      if qGrants.Locate('grant_', DataItem.Grant, []) then
        qGrants.Delete;
    end
    else
    begin
      if not qGrants.Locate('grant_', DataItem.Grant, []) then
      begin
        qGrants.Append;
        qGrantsgrant_.AsString := DataItem.Grant;
        try
          qGrants.Post;
        except
          on E:Exception do
            qGrants.Cancel;
        end;
      end;
    end;
end;

end.
