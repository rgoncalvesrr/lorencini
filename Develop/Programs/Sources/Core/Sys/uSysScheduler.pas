unit uSysScheduler;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ActnList, ComCtrls, ToolWin,
  ExtCtrls, Grids, DBGrids, StdCtrls, Mask, Buttons, ZSequence;

type
  TSysScheduler = class(TIDefBrowse)
    IBrwSrcrecno: TIntegerField;
    IBrwSrcdescri: TStringField;
    IBrwSrcfn: TStringField;
    IBrwSrcdescri_1: TStringField;
    IBrwSrcagendamento: TStringField;
    IBrwSrchabilitado: TBooleanField;
    sIBrwSrc: TZSequence;
    IBrwSrcinicio: TDateField;
    IBrwSrcexpiracao: TDateField;
    IBrwSrcnome: TStringField;
    IBrwSrcaccount: TLargeintField;
    procedure IBrwSrcAfterInsert(DataSet: TDataSet);
  private
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  SysScheduler: TSysScheduler;

implementation

uses uDM, uIUtils, uSysSchedulerM;

{$R *.dfm}

procedure TSysScheduler.IBrwSrcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  IBrwSrchabilitado.AsBoolean := False;
  IBrwSrcaccount.AsLargeInt := U.Info.Account;
  IBrwSrcnome.AsString := U.Info.Name;
  IBrwSrcinicio.AsDateTime := Now;
end;

procedure TSysScheduler.OnEdit;
begin
  SysSchedulerM := TSysSchedulerM.Create(nil);
  try
    SysSchedulerM.DataSet := DataSet;
    SysSchedulerM.ShowModal;
  finally
    FreeAndNil(SysSchedulerM);
  end;

end;

initialization
  RegisterClass(TSysScheduler);

finalization
  UnRegisterClass(TSysScheduler);

end.
