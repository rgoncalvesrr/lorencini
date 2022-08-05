unit uProdutosGrupoM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls;

type
  TProdutosGrupoM = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
  private
    { Private declarations }
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  ProdutosGrupoM: TProdutosGrupoM;

implementation

{$R *.dfm}

uses uDM, uProdutosSGrupoM, iTypes;

{ TProdutosGrupoM }

procedure TProdutosGrupoM.OnEdit;
begin
  Application.CreateForm(TProdutosSGrupoM, ProdutosSGrupoM);
  ProdutosSGrupoM.DataSet := ChildDataSet;
  ProdutosSGrupoM.ShowModal;
end;

end.
