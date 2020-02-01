unit uLabUnidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, ZSequence;

type
  TLabUnidade = class(TIDefBrowse)
    IBrwSrcrecno: TIntegerField;
    IBrwSrcdescri: TStringField;
    ZSequence1: TZSequence;
  private
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  LabUnidade: TLabUnidade;

implementation

uses uDM, uLabUnidadeM;

{$R *.dfm}

{ TLabUnidade }

procedure TLabUnidade.OnEdit;
begin
  LabUnidadeM := TLabUnidadeM.Create(nil);
  try
    LabUnidadeM.DataSet := DataSet;
    LabUnidadeM.ShowModal;
  finally
    FreeAndNil(LabUnidadeM);
  end;

end;

initialization
  RegisterClass(TLabUnidade);

finalization
  UnRegisterClass(TLabUnidade);

end.
