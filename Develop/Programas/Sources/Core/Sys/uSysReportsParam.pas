unit uSysReportsParam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uiwizard, ActnList, StdCtrls, ExtCtrls, uReport, ComCtrls, ToolWin;

type
  TSysReportsParam = class(TIWizard, IReportParam)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ControlBar1: TControlBar;
    procedure actOkExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FReport: TReport;
  public
    function Execute(Report: TReport):Boolean; virtual;
    property Report: TReport read FReport;
  end;

var
  SysReportsParam: TSysReportsParam;

implementation

{$R *.dfm}

uses uDM, uResources;

{ TSysReportsParam }

procedure TSysReportsParam.actOkExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

function TSysReportsParam.Execute(Report: TReport): Boolean;
begin
  if not Assigned(Report) then
    raise Exception.Create('O método execute da interface IReportParam deve receber um relatório "TReport" válido.');
  
  FReport := Report;
  Caption := Report.Caption;
  
  ResetExecute;

  ShowModal;

  Result := inherited Execute; 
end;

procedure TSysReportsParam.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caHide;
end;

end.
