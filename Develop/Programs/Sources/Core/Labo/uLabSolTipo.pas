unit uLabSolTipo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, ZSequence;

type
  TLabSolTipo = class(TIDefBrowse)
    IBrwSrcrecno: TIntegerField;
    IBrwSrcdescri: TStringField;
    ZSequence1: TZSequence;
  private
    { Private declarations }
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  LabSolTipo: TLabSolTipo;

implementation

uses uResources, uDM, uLabSolTipoM;

{$R *.dfm}

{ TLabSolTipo }

procedure TLabSolTipo.OnEdit;
begin
  LabSolTipoM := TLabSolTipoM.Create(nil);
  try
    LabSolTipoM.DataSet := DataSet;
    LabSolTipoM.ShowModal;
  finally
    FreeAndNil(LabSolTipoM);
  end;

end;

Initialization
  RegisterClass(TLabSolTipo);

Finalization
  UnRegisterClass(TLabSolTipo);

end.
