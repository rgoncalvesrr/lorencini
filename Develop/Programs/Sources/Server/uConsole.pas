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
    procedure actMonitorExecute(Sender: TObject);
  private
    { Private declarations }
    procedure OnLogSMTP(Sender: TObject; const MsgLog: string);
    procedure OnLog(Sender: TObject; const MsgLog: string);
  public
    { Public declarations }
    procedure OnLoad; override;
  end;

var
  Console: TConsole;

implementation

uses uDMCore;

{$R *.dfm}

{ TConsole }

procedure TConsole.actMonitorExecute(Sender: TObject);
begin
  inherited;
  with TAction(Sender), dmCore do
  begin
    Checked := not Checked;
    
    if Checked then
      Caption := 'Desativar Serviço'
    else
      Caption := 'Ativar Serviço';
      
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

procedure TConsole.OnLoad;
begin
  inherited;
  WindowState := wsMaximized;
  dmCore.OnLogSMTP := OnLogSMTP;
  dmCore.OnLog := OnLog;
end;

procedure TConsole.OnLog(Sender: TObject; const MsgLog: string);
begin
  Memo2.Lines.Add(MsgLog);
end;

procedure TConsole.OnLogSMTP(Sender: TObject; const MsgLog: string);
begin
  Memo1.Lines.Add(MsgLog);
end;

end.
