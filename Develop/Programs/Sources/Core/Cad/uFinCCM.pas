unit uFinCCM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls, JvExStdCtrls, JvCombobox, JvDBCombobox, JvExMask,
  JvToolEdit, JvDBControls;

type
  TFinCCM = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FinCCM: TFinCCM;

implementation

uses uFinCC;

{$R *.dfm}

end.
