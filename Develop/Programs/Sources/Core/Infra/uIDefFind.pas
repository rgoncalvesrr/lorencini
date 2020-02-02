unit uIDefFind;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIForm, ActnList, DB, ZAbstractRODataset, ZDataset,
  ComCtrls, ToolWin, Grids, StdCtrls, Buttons, Mask, ExtCtrls,
  Menus, DBGrids;

type
  TIDefFind = class(TIForm)
    IBrwSrc: TZReadOnlyQuery;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    tbOrder: TToolButton;
    ToolButton4: TToolButton;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    edSearch: TMaskEdit;
    BitBtn1: TBitBtn;
    pmOrder: TPopupMenu;
    alRunTime: TActionList;
    actFind: TAction;
    dsIBrowse: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    ControlBar1: TControlBar;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Panel1Resize(Sender: TObject);
    procedure actFindExecute(Sender: TObject);
    procedure IBrwSrcAfterOpen(DataSet: TDataSet);
    procedure IBrwSrcBeforeOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edSearchKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
  private
    fFieldSeek: TField;
    FTabCaption: String;
    FResultField: String;
    FUserFilter: TStringList;
    procedure OnOrder(Sender: TObject);
    procedure RefreshOrderMenu;
    procedure SetTabCaption(const Value: String);
    procedure SetResultField(const Value: String);
    procedure SetUserFilter(const Value: TStringList);
  public
    { Public declarations }
    property TabCaption: String read FTabCaption write SetTabCaption;
    property ResultField: String read FResultField write SetResultField;
    property UserFilter: TStringList read FUserFilter write SetUserFilter;
  end;

var
  IDefFind: TIDefFind;

implementation

{$R *.dfm}

uses uDM, uIUtils, mcUtils, DateUtils, uResources;

procedure TIDefFind.OnOrder(Sender: TObject);
begin
  TAction(Sender).Checked:= True;
  fFieldSeek:= IBrwSrc.Fields.Fields[TAction(Sender).Tag];
  IBrwSrc.SortedFields:= fFieldSeek.FieldName;
  IBrwSrc.Refresh;
  tbOrder.Caption:= fFieldSeek.DisplayLabel;
  edSearch.EditMask:= fFieldSeek.EditMask;
end;

procedure TIDefFind.Panel1Resize(Sender: TObject);
begin
  inherited;
  BitBtn1.Left:= GroupBox1.Width - BitBtn1.Width - 5;
  edSearch.Width:= BitBtn1.Left - edSearch.Left - 5;
end;

procedure TIDefFind.RefreshOrderMenu;
var
  Menu: TMenuItem;
  act: TAction;
  i: integer;
begin
  pmOrder.Items.Clear;

  for i:= alRunTime.ActionCount - 1 downto 0 do
    TAction(alRunTime.Actions[i]).Free;


  if mcEmpty(IBrwSrc.SortedFields) then
    IBrwSrc.SortedFields:= IBrwSrc.Fields.Fields[0].FieldName;

  {Monta menu de pesquisa}
  with IBrwSrc do
  if pmOrder.Items.Count = 0 then
    for i:= 0 to FieldCount - 1 do
    begin
      if  not (Fields.Fields[i].DataType in [ftString, ftInteger]) or
        not Fields.Fields[i].Visible then
        Continue;

      act:= TAction.Create(self);
      act.ActionList:= alRunTime;
      act.GroupIndex:= 876;
      act.Caption:= Fields.Fields[i].DisplayLabel;
      act.Checked:= pmOrder.Items.Count = 0;
      act.OnExecute:= OnOrder;
      act.Tag:= i;

      Menu:= TMenuItem.Create(self);
      Menu.Action:= act;

      pmOrder.Items.Add(Menu);

      if act.Checked then
      begin
        tbOrder.Caption:= act.Caption;
        fFieldSeek:= Fields.Fields[i];
      end;
    end;

end;

procedure TIDefFind.actFindExecute(Sender: TObject);
begin
  inherited;
  if fFieldSeek.DataType = ftInteger then
    IBrwSrc.Locate(fFieldSeek.FieldName, StrToInt(edSearch.Text), [loPartialKey])
  else
    IBrwSrc.Locate(fFieldSeek.FieldName, edSearch.Text, [loPartialKey]);
end;

procedure TIDefFind.IBrwSrcAfterOpen(DataSet: TDataSet);
begin
  inherited;
  RefreshOrderMenu;
end;

procedure TIDefFind.SetTabCaption(const Value: String);
begin
  FTabCaption := Value;

  TabSheet1.Caption:= FTabCaption;
end;

procedure TIDefFind.SetResultField(const Value: String);
begin
  FResultField := Value;

  if not Assigned(IBrwSrc.FindField(FResultField)) then
    Raise Exception.Create('Campo de retorno "' + FResultField + '" não localizado na tabela de pesquisa.');
end;

procedure TIDefFind.IBrwSrcBeforeOpen(DataSet: TDataSet);
var
  i: integer;
begin
  inherited;
  {Adiciona cláusula para filtragem}
  with IBrwSrc do
    for i:= 0 to FUserFilter.Count - 1 do
    begin
      if Pos('where', LowerCase(SQL.Text)) > 0 then
        SQL.Text:= ' and '
      else
        SQL.Text:= ' where ';

      SQL.Text:= FUserFilter[i];
    end;
end;

procedure TIDefFind.SetUserFilter(const Value: TStringList);
begin
  FUserFilter.Assign(Value);
end;

procedure TIDefFind.FormCreate(Sender: TObject);
var
  i: integer;
begin
  inherited;
  for i:= 0 to ComponentCount - 1 do
    if Components[i] is TZReadOnlyQuery then
      TZReadOnlyQuery(Components[i]).Connection:= U.Data;

  FUserFilter:= TStringList.Create;
end;

procedure TIDefFind.FormDestroy(Sender: TObject);
begin
  FUserFilter.Free;
  inherited;
end;

procedure TIDefFind.FormShow(Sender: TObject);
begin
  inherited;
  if (IBrwSrc.SQL.Text <> EmptyStr) and not IBrwSrc.Active then
    IBrwSrc.Open;
end;

procedure TIDefFind.actOkExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TIDefFind.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
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
  end;
end;

procedure TIDefFind.edSearchKeyPress(Sender: TObject; var Key: Char);
begin
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

end.
