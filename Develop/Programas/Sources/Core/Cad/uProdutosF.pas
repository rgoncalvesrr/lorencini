unit uProdutosF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIDefFind, DB, Menus, ZAbstractRODataset, ZDataset, ActnList, Grids,
  DBGrids, ComCtrls, StdCtrls, Buttons, Mask, ExtCtrls, ToolWin;

type

  PGrupo = ^TGrupo;
  TGrupo = record
    Grupo: Integer;
    SubGrupo: Integer;
    Descricao: String;
    Node: TTreeNode;
  end;

  TProdutosF = class(TIDefFind)
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    TreeView1: TTreeView;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProdutosF: TProdutosF;

implementation

{$R *.dfm}

end.
