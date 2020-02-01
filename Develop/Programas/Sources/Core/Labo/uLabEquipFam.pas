unit uLabEquipFam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, ZSequence;

type
  TLabEquipFam = class(TIDefBrowse)
    IBrwSrcrecno: TIntegerField;
    IBrwSrcdescri: TStringField;
    ZSequence1: TZSequence;
  private
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  LabEquipFam: TLabEquipFam;

implementation

uses uDM, uLabEquipFamM;

{$R *.dfm}

{ TLabEquipFam }

procedure TLabEquipFam.OnEdit;
begin
  LabEquipFamM := TLabEquipFamM.Create(nil);
  try
    LabEquipFamM.DataSet := DataSet;
    LabEquipFamM.ShowModal;
  finally
    FreeAndNil(LabEquipFamM);
  end;

end;

initialization
  RegisterClass(TLabEquipFam);

finalization
  UnRegisterClass(TLabEquipFam);

end.
