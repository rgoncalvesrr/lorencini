unit uComodato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids,
  DBGrids, StdCtrls, Mask, Buttons, uIUtils;

type
  TComodato = class(TIDefBrowse)
    IBrwSrcrecno: TIntegerField;
    IBrwSrccodigo: TIntegerField;
    IBrwSrcsituacao: TIntegerField;
    IBrwSrcqtd: TFloatField;
    IBrwSrcsaldo: TFloatField;
    IBrwSrcempresa: TStringField;
    IBrwSrcnome_chave: TStringField;
    IBrwSrccnpj: TStringField;
    IBrwSrccpf: TStringField;
    IBrwSrccidade: TStringField;
    IBrwSrcestado: TStringField;
    Label18: TLabel;
    ComboBox1: TComboBox;
    IBrwSrcconsumido: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FCBClientes: TComboList;
    FCodigo: Integer;
    FSaldo: Double;
    procedure SetCodigo(const Value: Integer);
    procedure SetSaldo(const Value: Double);
  public
    { Public declarations }
    property Codigo: Integer read FCodigo write SetCodigo;
    property Saldo: Double read FSaldo write SetSaldo;
  end;

var
  Comodato: TComodato;

implementation

{$R *.dfm}

uses
  uDM;

procedure TComodato.actQueryProcessExecute(Sender: TObject);
var
  sWhere : string;
begin
  inherited;
  with IBrwSrc do
  begin
    {Aplica filtro por cliente}
    if Assigned(FCBClientes.Selected) and  (FCBClientes.Selected.Value > 0) then
      swhere := swhere + 'and c.codigo = :codigo ';

    if sWhere <> EmptyStr then
      SQL.Add(' ' + sWhere);

    if Assigned(Params.FindParam('codigo')) then
      ParamByName('codigo').AsInteger := FCBClientes.Selected.Value;

    ParamByName('saldo').AsFloat := FSaldo;
  end;

  G.RefreshDataSet(IBrwSrc);
  RefreshCtrl;
end;

procedure TComodato.ComboBox1Change(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TComodato.FormCreate(Sender: TObject);
begin
  inherited;
  FCBClientes := TComboList.Create(ComboBox1, 'tbclientes', 'codigo', 'nome_chave');
end;

procedure TComodato.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FCBClientes);
  inherited;
end;

procedure TComodato.FormShow(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TComodato.SetCodigo(const Value: Integer);
var
  i: Integer;
begin
  FCodigo := Value;
  for i := 0 to FCBClientes.Count - 1 do
    if FCBClientes.Items[i].Value = FCodigo then
    begin
      ComboBox1.ItemIndex := i;
      ComboBox1.Enabled := False;
      ComboBox1Change(ComboBox1);
      Break;
    end;
end;

procedure TComodato.SetSaldo(const Value: Double);
begin
  FSaldo := Value;
end;

initialization
  RegisterClass(TComodato);

finalization
  UnRegisterClass(TComodato);

end.
