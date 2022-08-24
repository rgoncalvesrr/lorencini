unit uLabTipo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, DB, ZSqlUpdate, Menus, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, ZSequence;

type
  TLabTipo = class(TIDefBrowse)
    IBrwSrcrecno: TIntegerField;
    IBrwSrcdescri: TStringField;
    ZSequence1: TZSequence;
    IBrwSrcinf_te: TBooleanField;
    procedure IBrwSrcAfterInsert(DataSet: TDataSet);
  private
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  LabTipo: TLabTipo;

implementation

uses uDM, uLabTipoM;

{$R *.dfm}

{ TLabTipo }

procedure TLabTipo.IBrwSrcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  IBrwSrcinf_te.AsBoolean := True;
end;

procedure TLabTipo.OnEdit;
begin
  LabTipoM := TLabTipoM.Create(nil);
  try
    LabTipoM.DataSet := DataSet;
    LabTipoM.ShowModal;
  finally
    FreeAndNil(LabTipoM);
  end;

end;

initialization
  RegisterClass(TLabTipo);

finalization
  UnRegisterClass(TLabTipo);

end.
