unit uMenuItens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Menus,
  ActnList, Grids, DBGrids, ComCtrls, StdCtrls, Buttons, Mask, ExtCtrls, ToolWin;

type
  TSysForms = class(TIDefBrowse)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SysForms: TSysForms;

implementation

{$R *.dfm}

end.
