unit uLabIsolantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, ZSequence;

type
  TLabIsolantes = class(TIDefBrowse)
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
  LabIsolantes: TLabIsolantes;

implementation

uses uDM, uLabIsolantesM;

{$R *.dfm}

{ TLabIsolantes }

procedure TLabIsolantes.OnEdit;
begin
  LabIsolantesM := TLabIsolantesM.Create(Application);
  LabIsolantesM.DataSet := IBrwSrc;
  LabIsolantesM.ShowModal;

  FreeAndNil(LabIsolantesM);
end;

initialization
  RegisterClass(TLabIsolantes);

finalization
  UnRegisterClass(TLabIsolantes);

end.
