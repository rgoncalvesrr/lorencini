unit uLabLaudos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, DB, ZSqlUpdate, Menus, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin;

type
  TIDefBrowse1 = class(TIDefBrowse)
    IBrwSrcrecno: TIntegerField;
    IBrwSrcdescri: TStringField;
    IBrwSrcativo: TBooleanField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IDefBrowse1: TIDefBrowse1;

implementation

uses uDM;

{$R *.dfm}

end.
