unit uSysMenuComum;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, ComCtrls, ZDataset;

type
  TMenuFactory = class;

  TDataItemType = (itMenu, itAction);
  
  {Ponteiro que ficará amarrado ao TreeNode}
  TDataItem = class
  private
    FNode: TTreeNode;
    FParent: TDataItem;
    FForm: String;
    FDescri: String;
    FID: Integer;
    FReport: Integer;
    FChecked: Boolean;
    FAllowed: Boolean;
    FGrant: string;
    procedure SetDescri(const Value: String);
    procedure SetForm(const Value: String);
    procedure SetNode(const Value: TTreeNode);
    procedure SetParent(const Value: TDataItem);
    procedure SetReport(const Value: Integer);
    procedure SetChecked(const Value: Boolean);
    procedure SetAllowed(const Value: Boolean);
    function GetItemType: TDataItemType;
    procedure SetGrant(const Value: string);
  public
    Constructor Create(const ID: Integer);
    Destructor Destroy; override;
  published
    property Allowed: Boolean read FAllowed write SetAllowed;
    property Descri: String read FDescri write SetDescri;
    property Form: String read FForm write SetForm;
    property Grant: string read FGrant write SetGrant;
    property ID: Integer read FID write FID;
    property ItemType: TDataItemType read GetItemType;
    property Node: TTreeNode read FNode write SetNode;
    property Parent: TDataItem read FParent write SetParent;
    property Report: Integer read FReport write SetReport;
  end;

  TMenuMode = (mmEditor, mmSecutiry);
  TCreateItemEvent = procedure(Menu: TMenuFactory; DataItem: TDataItem) of object;

  TMenuFactory = class
  private
    FMenu: TTreeView;
    FDataSet: TZReadOnlyQuery;
    FNode: TTreeNode;
    FMenuMode: TMenuMode;
    FOnBeforeLoad: TNotifyEvent;
    FOnCreateItem: TCreateItemEvent;
    function GetDataItem: TDataItem;
    procedure CreateItem(DataItem: TDataItem); {Cria nós no treeview}
    procedure CreateSubMenus(ParentDataItem: TDataItem);
  public
    constructor Create(AMenu: TTreeView); virtual;
    destructor Destroy; override;
    procedure Load; overload;
    procedure Load(MenuMode: TMenuMode); overload;

    property OnBeforeLoad: TNotifyEvent read FOnBeforeLoad write FOnBeforeLoad;
    property OnCreateItem: TCreateItemEvent read FOnCreateItem write FOnCreateItem; 
  end;

const
  ICO_FOLDER_CLOSE: Integer = 140;
  ICO_FOLDER_OPEN: Integer = 142;
  ICO_STACK_PAPER: Integer = 357;
  ICO_SCREEN: Integer = 357;
  ICO_CHECKED: Integer = 67;
  ICO_UNCHECKED: Integer = 69;

implementation

uses
  mcutils, uIUtils;

{ TDataItem }

constructor TDataItem.Create(const ID: Integer);
begin
  FID := ID;
  FNode := nil;
  FParent := nil;
end;

destructor TDataItem.Destroy;
begin
  FNode := nil;
  FParent := nil;
  inherited;
end;

function TDataItem.GetItemType: TDataItemType;
begin
  Result := itMenu;
  if (FForm <> EmptyStr) or (FReport <> 0) then
    Result := itAction;
end;

procedure TDataItem.SetAllowed(const Value: Boolean);
begin
  FAllowed := Value;

  if Assigned(FNode) and (FNode.ImageIndex in [ICO_CHECKED, ICO_UNCHECKED]) then
  begin
    if Value then
    begin
      FNode.ImageIndex := ICO_CHECKED;
      FNode.SelectedIndex := ICO_CHECKED;
    end
    else
    begin
      FNode.ImageIndex := ICO_UNCHECKED;
      FNode.SelectedIndex := ICO_UNCHECKED;
    end;
  end;
end;

procedure TDataItem.SetChecked(const Value: Boolean);
begin
  FChecked := Value;
end;

procedure TDataItem.SetDescri(const Value: String);
begin
  FDescri := Value;
end;

procedure TDataItem.SetForm(const Value: String);
begin
  FForm := Value;
end;

procedure TDataItem.SetGrant(const Value: string);
begin
  FGrant := Value;
end;

procedure TDataItem.SetNode(const Value: TTreeNode);
begin
  FNode := Value;
end;

procedure TDataItem.SetParent(const Value: TDataItem);
begin
  FParent := Value;
end;

procedure TDataItem.SetReport(const Value: Integer);
begin
  FReport := Value;
end;

{ TMenuEditorBuild }

constructor TMenuFactory.Create(AMenu: TTreeView);
begin
  Assert(Assigned(AMenu), 'Container de menu não pode ser nulo');

  FMenu:= AMenu;
  FDataSet := U.QueryPersistent;

  FDataSet.SQL.Text:=
    'select m.id, m.descri, m.level, m.parent, m.form, m.report, m.order_, '+
           'g.grant_ '+
      'from sys_menu m '+
           'left join sys_grants g '+
		         'on g.form = m.form '+
     'order by m.level, m.order_, m.parent';
end;

procedure TMenuFactory.CreateItem(DataItem: TDataItem);
var
  ItemIdx: Integer;
  SelIDX: Integer;
begin
  with FMenu do
    if Assigned(DataItem.Parent) then
       DataItem.Node := Items.AddChildObject(DataItem.Parent.node, DataItem.descri, DataItem)
    else
       DataItem.Node := Items.AddObject(nil, DataItem.descri, DataItem);

  if Assigned(FOnCreateItem) then
    FOnCreateItem(Self, DataItem);
    
  {Atribui imagem ao nó rescem criado}
  if mcEmpty(DataItem.form) then
  begin
    ItemIdx := ICO_FOLDER_CLOSE;
    SelIDX := ICO_FOLDER_OPEN;
  end
  else if (FMenuMode = mmSecutiry) then
  begin
    ItemIdx := ICO_UNCHECKED;
    SelIDX := ICO_UNCHECKED;
    
    if DataItem.Allowed then
    begin
      ItemIdx := ICO_CHECKED;
      SelIDX := ICO_CHECKED;
    end;
  end
  else if DataItem.Report <> 0 then
  begin
    ItemIdx := ICO_STACK_PAPER;
    SelIDX := ICO_STACK_PAPER;
  end
  else
  begin
    ItemIdx := ICO_SCREEN;
    SelIDX := ICO_SCREEN;
  end;

  DataItem.node.ImageIndex:= ItemIdx;
  DataItem.node.SelectedIndex:= SelIDX;
end;

procedure TMenuFactory.CreateSubMenus(ParentDataItem: TDataItem);
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

destructor TMenuFactory.Destroy;
begin
  FOnBeforeLoad := nil;
  FOnCreateItem := nil;
  FreeAndNil(FDataSet); 
  inherited;
end;

function TMenuFactory.GetDataItem: TDataItem;
begin
  with FDataSet do
  begin
    Result := TDataItem.Create(FieldByName('id').AsInteger);
    Result.Descri := FieldByName('descri').AsString;
    Result.Form := FieldByName('form').AsString;
    Result.Report := FieldByName('report').AsInteger;
    Result.Grant := FieldByName('grant_').AsString;
  end;
end;

procedure TMenuFactory.Load(MenuMode: TMenuMode);
begin
  FMenuMode := MenuMode;
  Load;
end;

procedure TMenuFactory.Load;
var
  iRecno: integer;
  FItem: TDataItem;
begin
  if Assigned(FOnBeforeLoad) then
    FOnBeforeLoad(Self);

  // Carregando conteúdo a partir do banco de dados
  G.RefreshDataSet(FDataSet);

  with FDataSet do
  try
    FMenu.Items.BeginUpdate;

    {Limpa itens do treeview}
    FMenu.Items.Clear;

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
    FMenu.Items.EndUpdate;
  end;
end;

end.
