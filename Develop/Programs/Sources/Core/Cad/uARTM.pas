unit uARTM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls, DBCGrids;

type
  TARTM = class(TIDefBrowseEdit)
    DBCtrlGrid1: TDBCtrlGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ARTM: TARTM;

implementation

uses uDM;

{$R *.dfm}

end.
