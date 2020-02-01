unit uLabMetodos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, DB, ZSqlUpdate, Menus, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, ZSequence;

type
  TLabMetodos = class(TIDefBrowse)
    IBrwSrcrecno: TIntegerField;
    IBrwSrcdescri: TStringField;
    ZSequence1: TZSequence;
  private
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  LabMetodos: TLabMetodos;

implementation

uses uDM, uLabMetodosM;

{$R *.dfm}

{ TLabMetodos }

procedure TLabMetodos.OnEdit;
begin
  LabMetodosM := TLabMetodosM.Create(Application);
  try
    LabMetodosM.DataSet := DataSet;
    LabMetodosM.ShowModal;
  finally
    FreeAndNil(LabMetodosM);
  end;

end;

initialization
  RegisterClass(TLabMetodos);

finalization
  UnRegisterClass(TLabMetodos);

end.
