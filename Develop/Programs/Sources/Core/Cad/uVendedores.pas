unit uVendedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Menus,
  ActnList, Grids, DBGrids, ComCtrls, StdCtrls, Buttons, Mask, ExtCtrls, ToolWin,
  ZSqlUpdate;

type
  TVendedores = class(TIDefBrowse)
    IBrwSrcidvendedor: TIntegerField;
    IBrwSrcnome: TStringField;
    IBrwSrccpf: TStringField;
    IBrwSrcrg: TStringField;
    IBrwSrccep: TStringField;
    IBrwSrcendereco: TStringField;
    IBrwSrcbairro: TStringField;
    IBrwSrccidade: TStringField;
    IBrwSrcestado: TStringField;
    IBrwSrctelefone: TStringField;
    IBrwSrccelular: TStringField;
    IBrwSrccomissao: TFloatField;
    IBrwSrcajudacusto: TFloatField;
    IBrwSrcemail: TStringField;
    IBrwSrccnpj: TStringField;
    IBrwSrcinscrestadual: TStringField;
    IBrwSrcusername: TStringField;
    IBrwSrcativo: TBooleanField;
  private
    { Private declarations }
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  Vendedores: TVendedores;

implementation

uses uDM, uVendedoresM;

{$R *.dfm}

{ TVendedores }

procedure TVendedores.OnEdit;
begin
  Application.CreateForm(TVendedoresM, VendedoresM);
  VendedoresM.DataSet:= DataSet;
  VendedoresM.ShowModal;
  VendedoresM.Free;
end;

initialization
  RegisterClass(TVendedores);

end.
