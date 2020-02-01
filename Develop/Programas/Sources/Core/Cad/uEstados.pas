unit uEstados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, ZSequence;

type
  TEstados = class(TIDefBrowse)
    IBrwSrcuf: TStringField;
    IBrwSrcnome: TStringField;
    IBrwSrcdias_coleta: TIntegerField;
    IBrwSrcrecno: TIntegerField;
    ZSequence1: TZSequence;
  private
    { Private declarations }
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  Estados: TEstados;

implementation

uses uDM, uEstadosM;

{$R *.dfm}

{ TEstados }

procedure TEstados.OnEdit;
begin
  EstadosM := TEstadosM.Create(nil);
  try
    EstadosM.DataSet := DataSet;
    EstadosM.ShowModal;
  finally
    FreeAndNil(EstadosM);
  end;
end;

initialization
  RegisterClass(TEstados);

finalization
  UnRegisterClass(TEstados);

end.
