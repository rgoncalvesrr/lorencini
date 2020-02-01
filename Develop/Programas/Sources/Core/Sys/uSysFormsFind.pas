unit uSysFormsFind;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIDefFind, DB, Menus, ZAbstractRODataset, ZDataset, ActnList, Grids,
  DBGrids, ComCtrls, StdCtrls, Buttons, Mask, ExtCtrls, ToolWin;

type
  TSysFormsFind = class(TIDefFind)
    IBrwSrcform: TStringField;
    IBrwSrcdescri: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SysFormsFind: TSysFormsFind;

implementation

uses uDM;

{$R *.dfm}

end.
