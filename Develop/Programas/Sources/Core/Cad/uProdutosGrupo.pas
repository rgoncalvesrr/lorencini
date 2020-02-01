unit uProdutosGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ActnList, Grids, DBGrids, ComCtrls, StdCtrls, Buttons, Mask, ExtCtrls, ToolWin,
  iTypes, ZSqlUpdate;

type
  TProdutosGrupo = class(TIDefBrowse)
  private
    { Private declarations }
  public
    { Public declarations }
    procedure OnEdit; override;
  end;

var
  ProdutosGrupo: TProdutosGrupo;

implementation

{$R *.dfm}

uses uDM, uProdutosGrupoM;

{ TProdutosGrupo }

procedure TProdutosGrupo.OnEdit;
begin
  Application.CreateForm(TProdutosGrupoM, ProdutosGrupoM);
  ProdutosGrupoM.ScreenType := stMasterDetail;
  ProdutosGrupoM.DataSet := DataSet;
  ProdutosGrupoM.ShowModal;
end;

initialization
  RegisterClass(TProdutosGrupo);

end.
