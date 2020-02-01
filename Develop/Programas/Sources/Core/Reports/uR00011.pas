unit uR00011;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uSysReportsParam, ActnList, StdCtrls, ExtCtrls, ComCtrls, ToolWin,
  Mask, JvExMask, JvToolEdit, JvBaseEdits;

type
  TR00011 = class(TSysReportsParam)
    Label3: TLabel;
    procDe: TJvCalcEdit;
    procAte: TJvCalcEdit;
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
  R00011: TR00011;

implementation

uses uDMReport, uIUtils, uLabProc, uResources;

{$R *.dfm}

procedure TR00011.actOkExecute(Sender: TObject);
begin
  inherited;
  with DMReport.R00011 do
  begin
    ParamByName('proc_de').AsInteger := round(procDe.Value);
    ParamByName('proc_ate').AsInteger := round(procAte.Value);
  end;

  G.RefreshDataSet(DMReport.R00011);
end;

procedure TR00011.FormCreate(Sender: TObject);
begin
  inherited;
  procDe.Enabled := not Assigned(LabProc);
  procAte.Enabled := not Assigned(LabProc);

  if not procDe.Enabled then
  begin
    procDe.Value := LabProc.IBrwSrcrecno.AsInteger;
    procAte.Value := LabProc.IBrwSrcrecno.AsInteger;
  end;
end;

procedure TR00011.FormShow(Sender: TObject);
begin
  inherited;
  if Assigned(LabProc) then
    actOkExecute(actOk);
end;

initialization
  RegisterClass(TR00011);

finalization
  UnRegisterClass(TR00011);

end.
