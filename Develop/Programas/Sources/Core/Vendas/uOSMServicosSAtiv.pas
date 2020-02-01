unit uOSMServicosSAtiv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uiwizard, ActnList, StdCtrls, ExtCtrls, ComCtrls, ToolWin, DB,
  ZAbstractRODataset, ZDataset;

type
  {Atividade Ligadas ao nó}
  PAtividade = ^TAtividade;
  TAtividade = record
    Atividade: String;
    Descri: String;
    ISS: String;
    Item: String;
    TextoOS: String;
    Loaded: Boolean;
    Node: TTreeNode;
  end;

  TOSMServicosSAtiv = class(TIWizard)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    TreeView1: TTreeView;
    Panel2: TPanel;
    Memo1: TMemo;
    qAtiv: TZReadOnlyQuery;
    Panel3: TPanel;
    Splitter1: TSplitter;
    procedure FormCreate(Sender: TObject);
    procedure TreeView1Deletion(Sender: TObject; Node: TTreeNode);
    procedure FormDestroy(Sender: TObject);
    procedure TreeView1DblClick(Sender: TObject);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    fLocateAtiv: Boolean;
    fItem: PAtividade;
    fCurrent: PAtividade;
    procedure FillTree;
    procedure LoadChild(aParent: PAtividade);
    procedure CreateNode;
    procedure SetCurrent(const Value: PAtividade);
  public
    { Public declarations }
    property Current: PAtividade read fCurrent write SetCurrent;
  end;

var
  OSMServicosSAtiv: TOSMServicosSAtiv;

implementation

{$R *.dfm}

uses uDM, uIUtils, mcUtils, uResources;

{ TOrcamentosMServicosSAtiv }

procedure TOSMServicosSAtiv.CreateNode;
begin
  with qAtiv do
  begin
    New(fItem);
    fItem.Atividade := FieldByName('codativ').Text;
    fItem.Descri := FieldByName('descri').Text;
    fItem.ISS := FormatFloat(',0.0%', FieldByName('iss').AsFloat);
    fItem.TextoOS := FieldByName('TextoOS').Value;
    fItem.Item := FieldByName('item').Text;
    fItem.Loaded := False;
  end;
end;

procedure TOSMServicosSAtiv.FillTree;
begin
  with qAtiv, TreeView1 do
  try
    Items.BeginUpdate;
    Items.Clear;
    Memo1.Clear;

    if not Active then
    begin
      SQL.Text:=
      'select a.codativ, a.descri, a.iss, b.item, b.descri as textoos '+
        'from atividades a '+
             'join textos_os b '+
               'on b.codativ = a.codativ '+
       'order by a.codativ, b.Item ';

      Open;
    end;

    First;

    while not EOF do
    begin
      if Assigned(fItem) and (fItem.Atividade = FieldByName('codativ').Text) then
      begin
        Next;
        Continue;
      end;


      {Cria ponteiro para registro}
      CreateNode;

      {Cria nó}
      fItem.Node := Items.AddObject(nil, fItem.Atividade + ' - ' + fItem.Descri,
        fItem);
        
      with fItem.Node do
      begin
        ImageIndex := 16;
        SelectedIndex := 17;
      end;

      Next;
    end;
  finally
    Items.EndUpdate;
  end;
end;

procedure TOSMServicosSAtiv.FormActivate(Sender: TObject);
var
  i: Integer;
  Node: TTreeNode;
  NodeChild: TTreeNode;
begin
  inherited;
  with TreeView1, DM do
    if fLocateAtiv then
      for Node in Items do
      begin
        fItem := Node.Data;

        if (Node.Level = 0) and (fItem.Atividade =  qOScodativ.Text) then
        begin
          {Carrega os itens filhos}
          LoadChild(fItem);

          {Pequisa o item da atividade}
          NodeChild := Node.GetNext;
          while Assigned(NodeChild) do
          begin
            fItem := NodeChild.Data;
            if (fItem.Item =  qOSitem.Text) then
            begin
              NodeChild.Selected := True;
              Current:= fItem;
              Break;
            end;
            NodeChild := NodeChild.GetNext;
          end;
          Break;
        end;
      end;
      
  fLocateAtiv := False;
end;

procedure TOSMServicosSAtiv.FormCreate(Sender: TObject);
begin
  inherited;
  qAtiv.Connection := U.Data;
  fCurrent := nil;
  FillTree;
  Memo1.Clear;
  actOk.Enabled := (DM.qOS.State in [dsEdit, dsInsert]);
  fLocateAtiv := (DM.qOS.State <> dsInsert);
end;

procedure TOSMServicosSAtiv.FormDestroy(Sender: TObject);
begin
  qAtiv.Close;
  fCurrent := nil;
  TreeView1.Items.Clear;
  inherited;
end;

procedure TOSMServicosSAtiv.LoadChild(aParent: PAtividade);
begin
  if (aParent.Node.Level = 1) or aParent.Loaded then
    Exit;

  with qAtiv, TreeView1 do
  try
    Items.BeginUpdate;

    Locate('codativ', aParent.Atividade, [loPartialKey]);

    while (FieldByName('codativ').Text = aParent.Atividade) and not Eof do
    begin
      CreateNode;

      fItem.Node := Items.AddChildObject(aParent.Node,
        mcRight('000000' + fitem.Item, 3), fItem);
      with fItem.Node do
      begin
        ImageIndex := 16;
        SelectedIndex := 17;
      end;

      Next;
    end;
  finally
    Items.EndUpdate;
    aParent.Node.Expand(True);
    aParent.Loaded := True;
  end;

end;

procedure TOSMServicosSAtiv.SetCurrent(const Value: PAtividade);
begin
  fCurrent := Value;

  Memo1.Clear;
  Panel3.Caption := '';

  if not Assigned(fCurrent) then
    Exit;

  {Descrição do painel}
  Panel3.Caption := '    Atividade: ' + fCurrent.Atividade + ' - ' + fCurrent.Descri +
    '. Alíquota de ISS: ' + fCurrent.ISS;

  if fCurrent.Node.Level = 1 then
    Memo1.Text := fCurrent.TextoOS;

  //fCurrent.Node.Selected := True;
end;

procedure TOSMServicosSAtiv.TreeView1Change(Sender: TObject;
  Node: TTreeNode);
begin
  inherited;
  Current := Node.Data;
  Node.Selected := True;
end;

procedure TOSMServicosSAtiv.TreeView1DblClick(Sender: TObject);
begin
  inherited;
  Current := TreeView1.Selected.Data;
  LoadChild(Current);
end;

procedure TOSMServicosSAtiv.TreeView1Deletion(Sender: TObject;
  Node: TTreeNode);
begin
  inherited;
  if fCurrent = Node.Data then
    fCurrent := nil;

  Dispose(PAtividade(Node.Data));
  Node.Data := nil;
end;

end.
