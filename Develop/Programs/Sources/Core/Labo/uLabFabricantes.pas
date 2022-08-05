unit uLabFabricantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, DB, ZSqlUpdate, Menus, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, ZSequence;

type
  TLabFabricantes = class(TIDefBrowse)
    IBrwSrcrecno: TIntegerField;
    IBrwSrcnome: TStringField;
    ZSequence1: TZSequence;
  private
    { Private declarations }
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  LabFabricantes: TLabFabricantes;

implementation

uses uDM, uLabFabricantesM;

{$R *.dfm}

{ TLabFabricantes }

procedure TLabFabricantes.OnEdit;
begin
  LabFabricantesM := TLabFabricantesM.Create(Application);
  LabFabricantesM.DataSet := IBrwSrc;
  LabFabricantesM.ShowModal;

  FreeAndNil(LabFabricantesM);
end;

initialization
  RegisterClass(TLabFabricantes);

finalization
  UnRegisterClass(TLabFabricantes);

end.
