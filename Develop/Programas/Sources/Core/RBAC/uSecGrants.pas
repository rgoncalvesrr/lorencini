unit uSecGrants;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids,
  DBGrids, StdCtrls, Mask, Buttons;

type
  TSecGrants = class(TIDefBrowse)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SecGrants: TSecGrants;

implementation

uses uDM;

{$R *.dfm}

end.
