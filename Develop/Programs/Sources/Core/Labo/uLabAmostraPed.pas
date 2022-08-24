unit uLabAmostraPed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids,
  DBGrids, StdCtrls, Mask, Buttons, JvExMask, JvToolEdit, JvBaseEdits, uIUtils,
  ZSequence;

type
  TLabAmostraPed = class(TIDefBrowse)
    IBrwSrccodigo: TIntegerField;
    IBrwSrcempresa: TStringField;
    IBrwSrccnpj: TStringField;
    IBrwSrccpf: TStringField;
    IBrwSrcemail: TStringField;
    IBrwSrctelefone: TStringField;
    IBrwSrcpedido: TIntegerField;
    IBrwSrccodserv: TIntegerField;
    IBrwSrcdescri: TStringField;
    IBrwSrcqtd: TIntegerField;
    IBrwSrcamostras: TIntegerField;
    IBrwSrcrecno: TIntegerField;
    ComboBox1: TComboBox;
    Label18: TLabel;
    edPedido: TJvCalcEdit;
    Label3: TLabel;
    dsPedAmostras: TDataSource;
    qPedAmostras: TZQuery;
    uPedAmostras: TZUpdateSQL;
    zPedAmostras: TZSequence;
    qPedAmostraspedido: TIntegerField;
    qPedAmostrascodserv: TIntegerField;
    qPedAmostrasconsumo: TFloatField;
    qPedAmostrasrecno: TIntegerField;
    qPedAmostrassaldo: TFloatField;
    IBrwSrcconsumo: TFloatField;
    qPedAmostrasamostra: TIntegerField;
    qPedAmostrascomodato: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure edPedidoChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qPedAmostrasAfterInsert(DataSet: TDataSet);
    procedure qPedAmostrasAfterPost(DataSet: TDataSet);
    procedure qPedAmostrasAfterDelete(DataSet: TDataSet);
    procedure qPedAmostrasBeforeRefresh(DataSet: TDataSet);
    procedure IBrwSrcAfterRefresh(DataSet: TDataSet);
  private
    { Private declarations }
    FCBClientes: TComboList;
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  LabAmostraPed: TLabAmostraPed;

implementation

{$R *.dfm}

uses uDM, uLabAmostraPedM, iTypes;

procedure TLabAmostraPed.actQueryProcessExecute(Sender: TObject);
var
  sWhere : string;
begin
  inherited;
  if not Assigned(DataSet) or (DataSet <> IBrwSrc) then
    Exit;

  with DataSet do
  begin
    {Aplica filtro por cliente}
    if Assigned(FCBClientes.Selected) and  (FCBClientes.Selected.Value > 0) then
      swhere := swhere + 'and p.codigo = :codigo ';

    if Trim(edPedido.Text) <> EmptyStr then
      swhere := swhere + 'and p.recno = :pedido ';

    if sWhere <> EmptyStr then
      SQL.Add(' ' + sWhere);

    if Assigned(Params.FindParam('pedido')) then
      Params.ParamByName('pedido').AsInteger := Round(edPedido.Value);

    if Assigned(Params.FindParam('codigo')) then
      Params.ParamByName('codigo').AsInteger := FCBClientes.Selected.Value;
  end;

  G.RefreshDataSet(DataSet);
  RefreshCtrl;
end;

procedure TLabAmostraPed.ComboBox1Change(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQuery);
end;

procedure TLabAmostraPed.edPedidoChange(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TLabAmostraPed.FormCreate(Sender: TObject);
begin
  inherited;
  LabAmostraPed := Self;
  FCBClientes := TComboList.Create(ComboBox1, 'tbclientes', 'codigo', 'nome_chave');

  ComboBox1.Items.Insert(0, '(Todos)');
  ComboBox1.ItemIndex := 0;
end;

procedure TLabAmostraPed.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FCBClientes);
  inherited;
end;

procedure TLabAmostraPed.IBrwSrcAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  G.RefreshDataSet(qPedAmostras);
end;

procedure TLabAmostraPed.OnEdit;
begin
  LabAmostraPedM := TLabAmostraPedM.Create(nil);
  with LabAmostraPedM do
  try
    ReadOnly := True;
    DataSet := IBrwSrc;
    ChildDataSet := qPedAmostras;
    ScreenType := stMasterDetail; 
    LabAmostraPedM.ShowModal;
  finally
    FreeAndNil(LabAmostraPedM);
  end;

end;

procedure TLabAmostraPed.qPedAmostrasAfterDelete(DataSet: TDataSet);
begin
  inherited;
  G.RefreshDataSet(IBrwSrc, True);
  IBrwSrcAfterRefresh(IBrwSrc);
end;

procedure TLabAmostraPed.qPedAmostrasAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qPedAmostraspedido.AsInteger := IBrwSrcpedido.AsInteger;
  qPedAmostrascodserv.AsInteger := IBrwSrccodserv.AsInteger;
  qPedAmostrasconsumo.AsFloat := IBrwSrcconsumo.AsFloat;
end;

procedure TLabAmostraPed.qPedAmostrasAfterPost(DataSet: TDataSet);
begin
  inherited;
  G.RefreshDataSet(IBrwSrc, True);
  IBrwSrcAfterRefresh(IBrwSrc);
end;

procedure TLabAmostraPed.qPedAmostrasBeforeRefresh(DataSet: TDataSet);
begin
  inherited;
  qPedAmostras.ParamByName('pedido').Clear;
  qPedAmostras.ParamByName('codserv').Clear;

  if not IBrwSrc.IsEmpty then
  begin
    qPedAmostras.ParamByName('pedido').AsInteger := IBrwSrcpedido.AsInteger;
    qPedAmostras.ParamByName('codserv').AsInteger := IBrwSrccodserv.AsInteger;
  end;
end;

initialization
  RegisterClass(TLabAmostraPed);

finalization
  UnRegisterClass(TLabAmostraPed);

end.
