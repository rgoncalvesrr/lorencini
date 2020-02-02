unit uLabTensao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons, ComCtrls,
  ExtCtrls, ToolWin, ZSequence;

type
  TLabTensao = class(TIDefBrowse)
    IBrwSrcclasse: TStringField;
    IBrwSrcmin: TFloatField;
    IBrwSrcmax: TFloatField;
    IBrwSrcrecno: TIntegerField;
    ZSequence1: TZSequence;
  private
    { Private declarations }
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  LabTensao: TLabTensao;

implementation

uses uDM, uLabTensaoM;

{$R *.dfm}

{ TLabTensao }

procedure TLabTensao.OnEdit;
begin
  LabTensaoM := TLabTensaoM.Create(nil);
  try
    LabTensaoM.DataSet := DataSet;
    LabTensaoM.ShowModal;
  finally
    FreeAndNil(LabTensaoM);
  end;
end;

initialization
  RegisterClass(TLabTensao);

finalization
  UnRegisterClass(TLabTensao);

end.
