unit uLabTensaoM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  JvExMask, JvToolEdit, JvBaseEdits, JvDBControls, StdCtrls, Mask, DBCtrls;

type
  TLabTensaoM = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    JvDBCalcEdit1: TJvDBCalcEdit;
    JvDBCalcEdit2: TJvDBCalcEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LabTensaoM: TLabTensaoM;

implementation

uses uLabTensao;

{$R *.dfm}

end.
