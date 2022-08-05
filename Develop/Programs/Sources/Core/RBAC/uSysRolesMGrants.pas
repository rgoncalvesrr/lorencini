unit uSysRolesMGrants;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids,
  StdCtrls, DBCtrls, Mask;

type
  TSysRolesMGrants = class(TIDefBrowseEdit)
    Panel2: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel5: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Panel6: TPanel;
    DBCheckBox1: TDBCheckBox;
    Bevel1: TBevel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SysRolesMGrants: TSysRolesMGrants;

implementation

{$R *.dfm}

end.
