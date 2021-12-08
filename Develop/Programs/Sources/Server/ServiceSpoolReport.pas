unit ServiceSpoolReport;

interface

uses
  ServiceBase, ServiceCFG, ZDataset, frxDBSet, uReport, DB, Classes, uDMR00014;

type
  TServiceSpoolReport = class(TServiceBase)
  private
    FDM: TDMR00014;
    FId: Integer;
    procedure SetId(const Value: Integer);
  protected
    procedure Finish;
    procedure Initialize; override;
    procedure DoExec; override;
  public
    constructor Create(ConnParam: TServiceCFGConnParams; ReportCFG: TReport); reintroduce;
    destructor Destroy; override;

    property Id: Integer read FId write SetId;
  end;


implementation

uses
  uDMReport, SysUtils, uHelpers, uIUtils, frxExportPDFHelpers, DBClient, TypInfo,
  ActiveX;

{ TServiceSpoolReport }

constructor TServiceSpoolReport.Create(ConnParam: TServiceCFGConnParams; ReportCFG: TReport);
begin
  inherited Create(ConnParam);
  FDM := TDMR00014.Create(nil);
  FDM.Config := ReportCFG;
  Trash.Add(ReportCFG);
end;

destructor TServiceSpoolReport.Destroy;
begin
  Synchronize(Finish);
  CoUninitialize;
  inherited;
end;

procedure TServiceSpoolReport.DoExec;
var
  status: string;
begin
  inherited;
  Log('Imprimindo Laudo %s', [Description]);

  FDM.Print;

  while FDM.Printing do
    Sleep(1000);

  if FDM.Executed then
     status := 'success'
  else
     status := 'fail';

  with Qry('update svc_spool set status = :status where recno = :recno') do
  begin
    ParamByName('status').AsString := status;
    ParamByName('recno').AsInteger := Id;
    ExecSQL;
  end;
end;

procedure TServiceSpoolReport.Finish;
begin
  FreeAndNil(FDM);
end;

procedure TServiceSpoolReport.Initialize;
begin
  inherited;
  CoInitialize(nil);
  FDM.Connection := Connection;
  FDM.R00014.ParamByName('recno').AsInteger := Recno_;
end;

procedure TServiceSpoolReport.SetId(const Value: Integer);
begin
  FId := Value;
end;

end.
