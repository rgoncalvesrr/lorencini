unit uProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ActnList, Grids, DBGrids, ComCtrls, StdCtrls, Buttons, Mask, ExtCtrls, ToolWin,
  ZSqlUpdate;

type
  TProdutos = class(TIDefBrowse)
  private
    { Private declarations }
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  Produtos: TProdutos;

implementation

{$R *.dfm}

uses uDM, uProdutosM;

{ TProdutos }

procedure TProdutos.OnEdit;
begin
  Application.CreateForm(TProdutosM, ProdutosM);
  ProdutosM.DataSet:= DataSet;
  ProdutosM.ShowModal;
end;

initialization
  RegisterClass(TProdutos);

finalization
  UnRegisterClass(TProdutos);

end.
