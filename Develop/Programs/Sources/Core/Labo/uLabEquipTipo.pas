unit uLabEquipTipo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, ZSequence;

type
  TLabEquipTipo = class(TIDefBrowse)
    IBrwSrctipo: TIntegerField;
    IBrwSrcdescri: TStringField;
    IBrwSrcsigla: TStringField;
    IBrwSrcrecno: TIntegerField;
    ZSequence1: TZSequence;
    sClasse: TZSequence;
    uClasse: TZUpdateSQL;
    qClasse: TZQuery;
    dsClasse: TDataSource;
    qClasseclasse: TStringField;
    qClassemin: TFloatField;
    qClassemax: TFloatField;
    qClassetipo: TIntegerField;
    qClasserecno: TIntegerField;
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
    procedure qClasseAfterInsert(DataSet: TDataSet);
  private
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  LabEquipTipo: TLabEquipTipo;

implementation

uses uDM, uLabEquipTipoM, iTypes, uIUtils;

{$R *.dfm}

procedure TLabEquipTipo.IBrwSrcAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qClasse.ParamByName('tipo').AsInteger := IBrwSrctipo.AsInteger;
  G.RefreshDataSet(qClasse);
end;

procedure TLabEquipTipo.OnEdit;
begin
  LabEquipTipoM := TLabEquipTipoM.Create(nil);
  try
    LabEquipTipoM.ScreenType := stMasterDetail; 
    LabEquipTipoM.DataSet := DataSet;
    LabEquipTipoM.ShowModal;
  finally
    FreeAndNil(LabEquipTipoM);
  end;
end;

procedure TLabEquipTipo.qClasseAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qClassetipo.AsInteger := IBrwSrctipo.AsInteger;
end;

initialization
  RegisterClass(TLabEquipTipo);

finalization
  UnRegisterClass(TLabEquipTipo);

end.
