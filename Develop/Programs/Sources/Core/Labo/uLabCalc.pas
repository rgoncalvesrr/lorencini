unit uLabCalc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, ZSequence;

type
  TLabCalc = class(TIDefBrowse)
    IBrwSrcproc: TStringField;
    IBrwSrcdescri: TStringField;
    IBrwSrcrecno: TIntegerField;
    ZSequence1: TZSequence;
    sCalcParam: TZSequence;
    uCalcParam: TZUpdateSQL;
    qCalcParam: TZQuery;
    dsCalcParam: TDataSource;
    qCalcParamproc: TStringField;
    qCalcParamparam: TStringField;
    qCalcParamtitulo: TStringField;
    qCalcParamint_: TIntegerField;
    qCalcParamdec_: TIntegerField;
    qCalcParamrecno: TIntegerField;
    qCalcParamensaio_recno: TIntegerField;
    qCalcParamnome: TStringField;
    qCalcParamunidade: TStringField;
    qCalcParammetodo: TStringField;
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
    procedure qCalcParamAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    procedure OnEdit; override;
  public
    { Public declarations }

  end;

var
  LabCalc: TLabCalc;

implementation

uses uDM, uIUtils, uLabCalcM, iTypes;

{$R *.dfm}

procedure TLabCalc.IBrwSrcAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qCalcParam.ParamByName('proc').AsString := IBrwSrcproc.AsString;
  G.RefreshDataSet(qCalcParam);
end;

procedure TLabCalc.OnEdit;
begin
  LabCalcM := TLabCalcM.Create(nil);
  try
    LabCalcM.DataSet := IBrwSrc;
    LabCalcM.ScreenType := stMasterDetail;
    LabCalcM.ShowModal;
  finally
    FreeAndNil(LabCalcM);
  end;

end;

procedure TLabCalc.qCalcParamAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qCalcParamproc.AsString := IBrwSrcproc.AsString;
end;

initialization
  RegisterClass(TLabCalc);

finalization
  UnRegisterClass(TLabCalc);

end.
