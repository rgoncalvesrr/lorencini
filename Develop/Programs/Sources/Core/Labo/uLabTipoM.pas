unit uLabTipoM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, StdCtrls, Mask, DBCtrls, ActnList, Grids, DBGrids,
  ComCtrls, ExtCtrls, ToolWin, JvExStdCtrls, JvCombobox, JvDBCombobox;

type
  TLabTipoM = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    JvDBComboBox1: TJvDBComboBox;
    Label3: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LabTipoM: TLabTipoM;

implementation

uses uLabTipo;

{$R *.dfm}

end.
