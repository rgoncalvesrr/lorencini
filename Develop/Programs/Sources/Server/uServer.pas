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
  private
    { Private declarations }
    procedure OnLogSMTP(Sender: TObject; const MsgLog: string);
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

procedure TManagerService.OnLogSMTP(Sender: TObject; const MsgLog: string);
begin
  LogMessage(MsgLog, EVENTLOG_INFORMATION_TYPE);
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
    dmCore.OnLog := OnLogSMTP;
    dmCore.OnLogSMTP := OnLogSMTP;
    dmCore.Monitor.Enabled := True;
    LogMessage('Serviço inicializado com sucesso!', EVENTLOG_SUCCESS);
  end;
end;

procedure TManagerService.ServiceStop(Sender: TService; var Stopped: Boolean);
begin
  dmCore.Monitor.Enabled := False;
end;

end.
