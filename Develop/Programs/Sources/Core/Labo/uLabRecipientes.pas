unit uLabRecipientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ActnList, ComCtrls, ToolWin,
  ExtCtrls, Grids, DBGrids, StdCtrls, Mask, Buttons, ZSequence;

type
  TLabRecipientes = class(TIDefBrowse)
    IBrwSrcdescri: TStringField;
    IBrwSrcrecno: TLargeintField;
    sIbrwSrc: TZSequence;
  private
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  LabRecipientes: TLabRecipientes;

implementation

{$R *.dfm}

uses
  uDM, uLabRecipientesM;

{ TLabRecipientes }

procedure TLabRecipientes.OnEdit;
begin
  LabRecipientesM := TLabRecipientesM.Create(nil);
  try
    LabRecipientesM.DataSet := IBrwSrc;
    LabRecipientesM.ShowModal;
  finally
    FreeAndNil(LabRecipientesM);
  end;

end;

initialization
  RegisterClass(TLabRecipientes);

finalization
  UnRegisterClass(TLabRecipientes);

end.
