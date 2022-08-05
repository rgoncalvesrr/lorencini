unit uLabDiagGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, ZSequence;

type
  TLabDiagGrupo = class(TIDefBrowse)
    IBrwSrcrecno: TIntegerField;
    IBrwSrcdescri: TStringField;
    ZSequence1: TZSequence;
  private
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  LabDiagGrupo: TLabDiagGrupo;

implementation

uses uDM, uLabDiagGrupoM;

{$R *.dfm}

{ TLabDiagGrupo }

procedure TLabDiagGrupo.OnEdit;
begin
  LabDiagGrupoM := TLabDiagGrupoM.Create(nil);
  try
    LabDiagGrupoM.DataSet := IBrwSrc;
    LabDiagGrupoM.ShowModal;
  finally
    FreeAndNil(LabDiagGrupoM);
  end;

end;

initialization
  RegisterClass(TLabDiagGrupo);

finalization
  UnRegisterClass(TLabDiagGrupo);

end.
