unit uSysForms;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Menus,
  ActnList, Grids, DBGrids, ComCtrls, StdCtrls, Buttons, Mask, ExtCtrls, ToolWin,
  ZSqlUpdate, ZSequence;

type
  TSysForms = class(TIDefBrowse)
    IBrwSrcform: TStringField;
    IBrwSrcdescri: TStringField;
    IBrwSrcrecno: TIntegerField;
    ZSequence1: TZSequence;
    uRpt: TZUpdateSQL;
    qRpt: TZQuery;
    dsRpt: TDataSource;
    sRpt: TZSequence;
    qRptform: TStringField;
    qRptdescri: TStringField;
    qRptreport: TIntegerField;
    qRptordem: TIntegerField;
    qRptrecno: TIntegerField;
    qRptlabel: TStringField;
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
    procedure qRptAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  SysForms: TSysForms;

implementation

{$R *.dfm}

uses uDM, uSysFormsEdit, uIUtils, iTypes;

{ TSysForms }

procedure TSysForms.IBrwSrcAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qRpt.ParamByName('form').AsString := IBrwSrcform.AsString;
  G.RefreshDataSet(qRpt);
end;

procedure TSysForms.OnEdit;
begin
  Application.CreateForm(TSysFormsEdit, SysFormsEdit);
  SysFormsEdit.DataSet:= DataSet;
  SysFormsEdit.ScreenType := stMasterDetail;
  SysFormsEdit.ShowModal;
end;

procedure TSysForms.qRptAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qRptform.AsString := IBrwSrcform.AsString;
end;

initialization
  RegisterClass(TSysForms);

finalization
  UnRegisterClass(TSysForms);


end.
