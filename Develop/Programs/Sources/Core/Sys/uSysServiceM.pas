unit uSysServiceM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, StdCtrls, Mask, DBCtrls, JvExStdCtrls,
  JvCombobox, JvDBCombobox, JvExMask, JvSpin, JvDBSpinEdit;

type
  TSysServiceM = class(TIDefBrowseEdit)
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    JvDBComboBox1: TJvDBComboBox;
    Panel7: TPanel;
    Label4: TLabel;
    JvDBSpinEdit1: TJvDBSpinEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SysServiceM: TSysServiceM;

implementation

{$R *.dfm}

uses
  uSysService;

end.
