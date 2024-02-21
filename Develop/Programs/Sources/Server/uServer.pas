unit uServer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, SvcMgr, Dialogs;

type
  TManagerService = class(TService)
    procedure ServiceExecute(Sender: TService);
    procedure ServiceAfterInstall(Sender: TService);
    procedure ServiceStart(Sender: TService; var Started: Boolean);
    procedure ServiceAfterUninstall(Sender: TService);
    procedure ServiceStop(Sender: TService; var Stopped: Boolean);
    procedure ServiceCreate(Sender: TObject);
    procedure ServiceDestroy(Sender: TObject);
  private
    FLogger: TEventLogger;
    FLoggerSchedule: TEventLogger;
    FLoggerPrint: TEventLogger;
    FLoggerHttp: TEventLogger;
    procedure OnLog(Sender: TObject; const MsgLog: string);
    procedure OnLogSchedule(Sender: TObject; const MsgLog: string);
    procedure OnLogPrint(Sender: TObject; const MsgLog: string);
    procedure OnLogHttpClient(Sender: TObject; const MsgLog: string);
  public
    function GetServiceController: TServiceController; override;
    { Public declarations }
  end;

var
  ManagerService: TManagerService;

implementation

{$R *.DFM}

uses Registry, uDMCore;

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  ManagerService.Controller(CtrlCode);
end;

function TManagerService.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

procedure TManagerService.OnLog(Sender: TObject; const MsgLog: string);
begin
  FLogger.LogMessage(MsgLog, EVENTLOG_INFORMATION_TYPE, 100);
end;

procedure TManagerService.OnLogHttpClient(Sender: TObject; const MsgLog: string);
begin
  FLoggerHttp.LogMessage(MsgLog, EVENTLOG_INFORMATION_TYPE, 200);
end;

procedure TManagerService.OnLogPrint(Sender: TObject; const MsgLog: string);
begin
  FLoggerPrint.LogMessage(MsgLog, EVENTLOG_INFORMATION_TYPE, 300);
end;

procedure TManagerService.OnLogSchedule(Sender: TObject; const MsgLog: string);
begin
  FLoggerSchedule.LogMessage(MsgLog, EVENTLOG_INFORMATION_TYPE, 400);
end;

procedure TManagerService.ServiceAfterInstall(Sender: TService);
var
  regEdit : TRegistry;
  key: string;
begin
  regEdit := TRegistry.Create(KEY_READ or KEY_WRITE);
  try
    regEdit.RootKey := HKEY_LOCAL_MACHINE;

    if regEdit.OpenKey('\SYSTEM\CurrentControlSet\Services\' + Name,False) then
    begin
      regEdit.WriteString('Description','Serviço de processamento de E-mails e agendamentos de rotinas do sistema Manager da Lorencini Brasil');
      regEdit.CloseKey;
    end;
 
  finally
    FreeAndNil(regEdit);
  end;
  
  // Create registry entries so that the event viewer show messages properly when we use the LogMessage method.
  Key := '\SYSTEM\CurrentControlSet\Services\Eventlog\Application\' + Name;
  regEdit := TRegistry.Create(KEY_READ or KEY_WRITE);
  try
    regEdit.RootKey := HKEY_LOCAL_MACHINE;
    if regEdit.OpenKey(Key, True) then
    begin
      regEdit.WriteString('EventMessageFile', ParamStr(0));
      regEdit.WriteInteger('TypesSupported', 7);
      regEdit.CloseKey;
    end;
  finally
    regEdit.Free;
  end;
end;

procedure TManagerService.ServiceAfterUninstall(Sender: TService);
var
  Reg: TRegistry;
  Key: string;
begin
  // Delete registry entries for event viewer.
  Key := '\SYSTEM\CurrentControlSet\Services\Eventlog\Application\' + Name;
  Reg := TRegistry.Create(KEY_READ or KEY_WRITE);
  try
    Reg.RootKey := HKEY_LOCAL_MACHINE;
    if Reg.KeyExists(Key) then
      Reg.DeleteKey(Key);
  finally
    Reg.Free;
  end;
end;

procedure TManagerService.ServiceCreate(Sender: TObject);
begin
  FLogger         := TEventLogger.Create('ManagerGeneral');
  FLoggerSchedule := TEventLogger.Create('ManagerSchedule');
  FLoggerPrint    := TEventLogger.Create('ManagerPrint');
  FLoggerHttp     := TEventLogger.Create('ManagerHTTP');
end;

procedure TManagerService.ServiceDestroy(Sender: TObject);
begin
  FLogger.Free;
  FLoggerSchedule.Free;
  FLoggerPrint.Free;
  FLoggerHttp.Free;
  inherited;
end;

procedure TManagerService.ServiceExecute(Sender: TService);
begin
  while not self.Terminated do
    ServiceThread.ProcessRequests(true);
end;

procedure TManagerService.ServiceStart(Sender: TService; var Started: Boolean);
begin
  Started := dmCore.DBError = EmptyStr;

  if not Started then
    Sender.LogMessage(dmCore.DBError)
  else
  begin
    dmCore.OnLog          := OnLog;
    dmCore.OnLogSchedule  := OnLogSchedule;
    dmCore.OnLogPrint     := OnLogPrint;
    dmCore.OnLogHttpClient:= OnLogHttpClient;
    dmCore.Monitor.Enabled:= True;
    LogMessage('Serviço inicializado com sucesso!', EVENTLOG_SUCCESS);
  end;
end;

procedure TManagerService.ServiceStop(Sender: TService; var Stopped: Boolean);
begin
  dmCore.Monitor.Enabled := False;
end;

end.
