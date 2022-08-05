unit uR00004;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uSysReportsParam, ActnList, ComCtrls, ToolWin, StdCtrls, ExtCtrls,
  uFrameData;

type
  TR00004 = class(TSysReportsParam)
    FrameData1: TFrameData;
    Label3: TLabel;
    Label4: TLabel;
    procedure actOkExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  R00004: TR00004;

implementation

uses uDMReport, ZDataSet, DateUtils, ccalendardiff, uIUtils, uResources;

{$R *.dfm}

procedure TR00004.actOkExecute(Sender: TObject);
var
  DataSet: TZReadOnlyQuery;
  ACal: TCCalendarDiff;
begin
  ACal := FrameData1.CCalendarDiff1;

  with DMReport do
    case Report.ID of
      4: DataSet := R00004;
      5: DataSet := R00005;
      6: DataSet := R00006;
      9: DataSet := R00009;
    end;

  with DataSet do
  begin
    case Report.ID of
      4: begin
        ParamByName('baixa_de').AsDate := ACal.BeginDate;
        ParamByName('baixa_ate').AsDate := ACal.EndDate;
      end else
      begin
        ParamByName('vencto_de').AsDate := ACal.BeginDate;
        ParamByName('vencto_ate').AsDate := ACal.EndDate;
      end
    end;

    G.RefreshDataSet(DataSet);
  end;
  inherited;
end;

procedure TR00004.FormCreate(Sender: TObject);
begin
  inherited;
  FrameData1.CCalendarDiff1.Interval := diMonthly;
end;

procedure TR00004.FormShow(Sender: TObject);
begin
  inherited;
  if Report.ID <> 4 then
    Label3.Caption := 'Vencimento';
end;

initialization
  RegisterClass(TR00004);

finalization
  UnRegisterClass(TR00004);

end.
