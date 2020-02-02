unit uOrcaOrigens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons, ComCtrls, ExtCtrls, ToolWin,
  ZSqlUpdate;

type
  TOrcaOrigens = class(TIDefBrowse)
    IBrwSrcrecno: TIntegerField;
    IBrwSrcdescri: TStringField;
    ZUpdateSQL1: TZUpdateSQL;
  private
    { Private declarations }
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  OrcaOrigens: TOrcaOrigens;

implementation

uses uDM, uOrcaOrigensM;

{$R *.dfm}

{ TOrcaOrigens }

procedure TOrcaOrigens.OnEdit;
begin
  OrcaOrigensM := TOrcaOrigensM.Create(Application);
  OrcaOrigensM.DataSet := DataSet;
  OrcaOrigensM.ShowModal;
  FreeAndNil(OrcaOrigensM);
end;

initialization
  RegisterClass(TOrcaOrigens);

finalization
  UnRegisterClass(TOrcaOrigens);

end.
