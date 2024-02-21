program LService;

uses
  midaslib,
  SvcMgr,
  classes,
  SysUtils,
  Forms,
  uHelpers in '..\..\Sources\Common\uHelpers.pas',
  uServer in '..\..\Sources\Server\uServer.pas' {ManagerService: TService},
  uIForm in '..\..\Sources\Common\uIForm.pas' {IForm},
  uIUtils in '..\..\Sources\Common\uIUtils.pas',
  uIConnection in '..\..\Sources\Common\uIConnection.pas' {IConnection},
  uConsole in '..\..\Sources\Server\uConsole.pas' {Console},
  uDMCore in '..\..\Sources\Server\uDMCore.pas' {dmCore: TDataModule},
  ServiceSMTP in '..\..\Sources\Server\ServiceSMTP.pas',
  ServiceCFG in '..\..\Sources\Server\ServiceCFG.pas',
  ServiceBase in '..\..\Sources\Server\ServiceBase.pas',
  uLogRegister in '..\..\Sources\Core\Infra\uLogRegister.pas' {LogRegister},
  uDBLog in '..\..\Sources\Core\Class\uDBLog.pas',
  uIBrowse in '..\..\Sources\Core\Infra\uIBrowse.pas' {IDefBrowse},
  iTypes in '..\..\Sources\Core\Infra\iTypes.pas',
  uReport in '..\..\Sources\Core\Class\uReport.pas',
  uSysReportsParam in '..\..\Sources\Core\Sys\uSysReportsParam.pas' {SysReportsParam},
  uIWizard in '..\..\Sources\Common\uIWizard.pas' {IWizard},
  uResources in '..\..\Sources\Common\uResources.pas' {Resources: TDataModule},
  uDM in '..\..\Sources\Core\Infra\uDM.pas' {DM: TDataModule},
  uIBrowseQry in '..\..\Sources\Core\Infra\uIBrowseQry.pas' {IDefBrowseQry},
  uidefeditform in '..\..\Sources\Core\Infra\uidefeditform.pas' {IDefEditForm},
  uIBrowseSQL in '..\..\Sources\Core\Infra\uIBrowseSQL.pas' {IDefBrowseSQL},
  uDMReport in '..\..\Sources\Core\Infra\uDMReport.pas' {DMReport: TDataModule},
  CCore in '..\..\Sources\Packages\CCore\CCore.pas',
  CMsg in '..\..\Sources\Packages\CCore\CMsg.pas',
  SecurityIntf in '..\..\Sources\Core\Class\SecurityIntf.pas',
  uSysLog in '..\..\Sources\Core\Sys\uSysLog.pas' {SysLog},
  uFrameData in '..\..\Sources\Common\uFrameData.pas' {FrameData: TFrame},
  ServiceTask in '..\..\Sources\Server\ServiceTask.pas',
  ServiceSpoolReport in '..\..\Sources\Server\ServiceSpoolReport.pas',
  uDMR00014 in '..\..\Sources\Server\uDMR00014.pas' {DMR00014: TDataModule},
  ServiceHttpClient in '..\..\Sources\Server\ServiceHttpClient.pas';

{$R *.RES}

var
  i: Integer;
  Debug: boolean;
begin
  Debug := False;

  for i := 1 to ParamCount do
    if Pos('debug', LowerCase(ParamStr(i))) > 0 then
      Debug := True;

  {$IFDEF DEBUG}
  ReportMemoryLeaksOnShutdown := Debug;
  Debug := True;
  {$ENDIF}

  Application.CreateForm(TdmCore, dmCore);
  if not Debug then
  begin
    // Windows 2003 Server requires StartServiceCtrlDispatcher to be
    // called before CoRegisterClassObject, which can be called indirectly
    // by Application.Initialize. TServiceApplication.DelayInitialize allows
    // Application.Initialize to be called from TService.Main (after
    // StartServiceCtrlDispatcher has been called).
    // Delayed initialization of the Application object may affect
    // events which then occur prior to initialization, such as
    // TService.OnCreate. It is only recommended if the ServiceApplication
    // registers a class object with OLE and is intended for use with
    // Windows 2003 Server.
    // Application.DelayInitialize := True;

    if not SvcMgr.Application.DelayInitialize or SvcMgr.Application.Installing then
      SvcMgr.Application.Initialize;

    SvcMgr.Application.CreateForm(TManagerService, ManagerService);
    SvcMgr.Application.Run;
  end
  else
  begin
    forms.Application.CreateForm(TResources, Resources);
    forms.Application.CreateForm(TConsole, Console);
    forms.Application.Run;
  end;
end.
