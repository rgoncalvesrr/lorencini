unit uR00001;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uSysReportsParam, ActnList, ComCtrls, ToolWin, StdCtrls, ExtCtrls,
  uFrameData, uReport;

type
  TR00001 = class(TSysReportsParam)
    FrameData1: TFrameData;
    Label3: TLabel;
    Label4: TLabel;
    procedure actOkExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Execute(Report: TReport):Boolean; override;
  end;

var
  R00001: TR00001;

implementation

uses DateUtils, uDMReport, ZDataSet, uDM, ccalendardiff, uIUtils, uResources;

{$R *.dfm}

procedure TR00001.actOkExecute(Sender: TObject);
var
  ACal : TCCalendarDiff;
begin
  ACal := FrameData1.CCalendarDiff1;

  with DMReport do
    case Report.ID of
      1:
      begin
        R00001.ParamByName('datade').AsDate := ACal.BeginDate;
        R00001.ParamByName('dataate').AsDate := ACal.EndDate;
        R00001a.ParamByName('datade').AsDate := ACal.BeginDate;

        G.RefreshDataSet(R00001);
        G.RefreshDataSet(R00001a);
      end;
      2:
      begin
        R00002.ParamByName('emissao_de').AsDate := ACal.BeginDate;
        R00002.ParamByName('emissao_ate').AsDate := ACal.EndDate;
        G.RefreshDataSet(R00002);
      end;
      8:
      begin
        R00008.ParamByName('datade').AsDate := ACal.BeginDate;
        R00008.ParamByName('dataate').AsDate := ACal.EndDate;
        R00001a.ParamByName('datade').AsDate := ACal.BeginDate;

        G.RefreshDataSet(R00008);
        G.RefreshDataSet(R00001a);
      end;
      16:
      begin
        R00016.ParamByName('emissao_de').AsDate := ACal.BeginDate;
        R00016.ParamByName('emissao_ate').AsDate := ACal.EndDate;
        G.RefreshDataSet(R00016);
      end;
    end;

  inherited;
end;

function TR00001.Execute(Report: TReport): Boolean;
begin
  case Report.ID of
    1: Label3.Caption := 'Extrato';
    2: Label3.Caption := 'Emissão';
    8: Label3.Caption := 'Extrato';
  end;

  Result := inherited Execute(Report);
end;

initialization
  RegisterClass(TR00001);

finalization
  UnRegisterClass(TR00001);

end.
