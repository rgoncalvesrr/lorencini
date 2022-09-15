unit uPrecosClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids,
  DBGrids, StdCtrls, Mask, Buttons, uIUtils, ZSequence, DBCtrls;

type
  TPrecosClientes = class(TIDefBrowse)
    Label18: TLabel;
    ComboBox1: TComboBox;
    sIBrwSrc: TZSequence;
    IBrwSrccliente: TIntegerField;
    IBrwSrcservico: TIntegerField;
    IBrwSrcvalor: TFloatField;
    IBrwSrcrecno: TIntegerField;
    IBrwSrcempresa: TStringField;
    IBrwSrcnome_chave: TStringField;
    IBrwSrccnpj: TStringField;
    IBrwSrccpf: TStringField;
    IBrwSrccidade: TStringField;
    IBrwSrcestado: TStringField;
    IBrwSrcdescri: TStringField;
    IBrwSrcemail: TStringField;
    IBrwSrctelefone: TStringField;
    GroupBox1: TGroupBox;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel5: TPanel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Panel6: TPanel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Panel7: TPanel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Panel8: TPanel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Panel9: TPanel;
    Panel10: TPanel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Panel11: TPanel;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Panel13: TPanel;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Panel14: TPanel;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IBrwSrcAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    FCBClientes: TComboList;
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  PrecosClientes: TPrecosClientes;

implementation

uses uDM, uPrecosClientesM;

{$R *.dfm}

procedure TPrecosClientes.actQueryProcessExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(DataSet) or (DataSet <> IBrwSrc) then
    Exit;

  with DataSet do
  begin
    if Assigned(Params.FindParam('cliente')) then
      Params.ParamByName('cliente').AsInteger := FCBClientes.Selected.Value;
  end;

  G.RefreshDataSet(DataSet);

  RefreshCtrl;
end;

procedure TPrecosClientes.ComboBox1Change(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQuery);
end;

procedure TPrecosClientes.FormCreate(Sender: TObject);
begin
  inherited;
  FCBClientes := TComboList.Create(ComboBox1, 'tbclientes', 'codigo', 'nome_chave');
  ComboBox1.ItemIndex := 0;
end;

procedure TPrecosClientes.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FCBClientes);
  inherited;
end;

procedure TPrecosClientes.FormShow(Sender: TObject);
begin
  inherited;
  DBGrid1.SetFocus;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TPrecosClientes.IBrwSrcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  IBrwSrccliente.AsInteger := IBrwSrc.ParamByName('cliente').AsInteger;
end;

procedure TPrecosClientes.OnEdit;
begin
  PrecosClientesM := TPrecosClientesM.Create(nil);
  with PrecosClientesM do
  try
    DataSet := Self.DataSet;
    ShowModal;
  finally
    FreeAndNil(PrecosClientesM);
    RefreshCtrl;
  end;
end;

initialization
  RegisterClass(TPrecosClientes);

finalization
  UnRegisterClass(TPrecosClientes);

end.
