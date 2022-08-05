program MMonitor;

uses
  Forms,
  uFrameData in '..\..\Sources\Common\uFrameData.pas' {FrameData: TFrame},
  uIConnection in '..\..\Sources\Common\uIConnection.pas' {IConnection},
  uIForm in '..\..\Sources\Common\uIForm.pas' {IForm},
  uIUtils in '..\..\Sources\Common\uIUtils.pas',
  uIWizard in '..\..\Sources\Common\uIWizard.pas' {IWizard},
  uResources in '..\..\Sources\Common\uResources.pas' {Resources: TDataModule},
  uDM in '..\..\Sources\Core\infra\uDM.pas' {DM: TDataModule},
  uMain in '..\..\Sources\MMonitor\uMain.pas' {Main},
  uFPainel in '..\..\Sources\MMonitor\uFPainel.pas' {FPainel},
  Remessa in '..\..\Sources\MMonitor\Remessa.pas',
  uDBLog in '..\..\Sources\Core\Class\uDBLog.pas',
  CCore in '..\..\Sources\Packages\CCore\CCore.pas',
  uHelpers in '..\..\Sources\Common\uHelpers.pas';

{$R *.res}

begin
  {$IFDEF DEBUG}
  ReportMemoryLeaksOnShutdown := True;
  {$ENDIF}
  
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Manager Monitor';
  AApplication.CreateForm(TResources, Resources);
  AApplication.CreateForm(TDM, DM);
  Application.CreateForm(TMain, Main);
  plication.Run;
end.
