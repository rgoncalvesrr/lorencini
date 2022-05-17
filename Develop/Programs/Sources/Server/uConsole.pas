unit uConsole;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIForm, ActnList, ComCtrls, StdCtrls, ServiceSMTP, Buttons, ExtCtrls, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdSASL, IdSASLUserPass, IdSASLLogin, IdUserPassProvider;

type
  TConsole = class(TIForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Memo1: TMemo;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    actMonitor: TAction;
    Memo2: TMemo;
    IdUserPassProvider1: TIdUserPassProvider;
    TabSheet3: TTabSheet;
    Memo3: TMemo;
    TabSheet4: TTabSheet;
    Memo4: TMemo;
    procedure actMonitorExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    procedure OnLogSchedule(Sender: TObject; const MsgLog: string);
    procedure OnLogSMTP(Sender: TObject; const MsgLog: string);
    procedure OnLogPrint(Sender: TObject; const MsgLog: string);
    procedure OnLogHttpClient(Sender: TObject; const MsgLog: string);
    procedure OnLog(Sender: TObject; const MsgLog: string);
  public
    { Public declarations }
    procedure OnLoad; override;
  end;

var
  Console: TConsole;

implementation

uses uDMCore, uIUtils;

{$R *.dfm}

{ TConsole }

procedure TConsole.actMonitorExecute(Sender: TObject);
begin
  inherited;
  with TAction(Sender), dmCore do
  begin
    Checked := not Checked;
    
    if Checked then
      Caption := 'Desativar Servi�o'
    else
      Caption := 'Ativar Servi�o';

    Monitor.Enabled := Checked;
    try
      if Monitor.Enabled then
        MonitorTimer(Monitor);
    except
      on e:Exception do
      begin
        actMonitor.Checked := False;
        actMonitorExecute(actMonitor);
      end;
    end;
  end;
end;

procedure TConsole.FormActivate(Sender: TObject);
begin
  inherited;
  Caption := Format('%s. Threads %d', [Caption, dmCore.MaxThreads]);
end;

procedure TConsole.OnLoad;
begin
  inherited;
  WindowState := wsMaximized;
  dmCore.OnLog := OnLog;
  dmCore.OnLogSchedule := OnLog;
  dmCore.OnLogSMTP := OnLogSMTP;
  dmCore.OnLogPrint := OnLogPrint;
  dmCore.OnLogHttpClient := OnLogHttpClient;
end;

procedure TConsole.OnLog(Sender: TObject; const MsgLog: string);
begin
  Memo2.Lines.Insert(0, MsgLog);
end;

procedure TConsole.OnLogHttpClient(Sender: TObject; const MsgLog: string);
begin
  Memo4.Lines.Insert(0, MsgLog);
end;

procedure TConsole.OnLogPrint(Sender: TObject; const MsgLog: string);
begin
  Memo3.Lines.Insert(0, MsgLog);
end;

procedure TConsole.OnLogSchedule(Sender: TObject; const MsgLog: string);
begin
  Memo2.Lines.Insert(0, MsgLog);
end;

procedure TConsole.OnLogSMTP(Sender: TObject; const MsgLog: string);
begin
  Memo1.Lines.Insert(0, MsgLog);
end;

end.
