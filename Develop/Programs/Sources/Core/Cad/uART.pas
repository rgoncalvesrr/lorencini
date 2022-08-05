unit uART;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ActnList, Grids, DBGrids, ComCtrls, StdCtrls, Buttons, Mask, ExtCtrls, ToolWin,
  ZSqlUpdate;

type
  TART = class(TIDefBrowse)
  private
    { Private declarations }
    procedure OnEdit; Override;
  public
    { Public declarations }
  end;

var
  ART: TART;

implementation

uses uDM, uARTM;

{$R *.dfm}

{ TART }

procedure TART.OnEdit;
begin
  Application.CreateForm(TARTM, ARTM);
  ARTM.DataSet:= DataSet;
  ARTM.ShowModal;
end;

initialization
  RegisterClass(TART);

end.
