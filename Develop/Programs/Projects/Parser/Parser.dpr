program Parser;

uses
  Forms,
  uHelpers in '..\..\Sources\Common\uHelpers.pas',
  umain in '..\..\Sources\parser\umain.pas' {Main},
  CFParser in '..\..\Sources\Common\CFParser.pas',
  uLogRegister in '..\..\Sources\Core\Infra\uLogRegister.pas' {LogRegister},
  uDBLog in '..\..\Sources\Core\Class\uDBLog.pas',
  uIBrowse in '..\..\Sources\Core\Infra\uIBrowse.pas' {IDefBrowse},
  uIForm in '..\..\Sources\Common\uIForm.pas' {IForm},
  uIUtils in '..\..\Sources\Common\uIUtils.pas',
  uIConnection in '..\..\Sources\Common\uIConnection.pas' {IConnection},
  uResources in '..\..\Sources\Common\uResources.pas' {Resources: TDataModule},
  iTypes in '..\..\Sources\Core\Infra\iTypes.pas',
  uDMReport in '..\..\Sources\Core\Infra\uDMReport.pas' {DMReport: TDataModule},
  uReport in '..\..\Sources\Core\Class\uReport.pas',
  uSysReportsParam in '..\..\Sources\Core\Sys\uSysReportsParam.pas' {SysReportsParam},
  uIWizard in '..\..\Sources\Common\uIWizard.pas' {IWizard},
  uDM in '..\..\Sources\Core\Infra\uDM.pas' {DM: TDataModule},
  uIBrowseQry in '..\..\Sources\Core\Infra\uIBrowseQry.pas' {IDefBrowseQry},
  uIBrowseSQL in '..\..\Sources\Core\Infra\uIBrowseSQL.pas' {IDefBrowseSQL},
  uSysCompromisso in '..\..\Sources\Core\Sys\uSysCompromisso.pas' {SysCompromisso},
  uidefeditform in '..\..\Sources\Core\Infra\uidefeditform.pas' {IDefEditForm},
  SecurityIntf in '..\..\Sources\Core\Class\SecurityIntf.pas',
  CCore in '..\..\Sources\Packages\CCore\CCore.pas';

{$R *.res}

begin
  {$IFDEF DEBUG}
  ReportMemoryLeaksOnShutdown := True;
  {$ENDIF}

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMain, Main);
  Application.Run;
end.
