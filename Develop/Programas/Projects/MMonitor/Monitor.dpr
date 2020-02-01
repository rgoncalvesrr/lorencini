program Monitor;

uses
  Forms,
  uFrameData in '..\..\Fontes\Comum\uFrameData.pas' {FrameData: TFrame},
  uIConnection in '..\..\Fontes\Comum\uIConnection.pas' {IConnection},
  uIForm in '..\..\Fontes\Comum\uIForm.pas' {IForm},
  uIUtils in '..\..\Fontes\Comum\uIUtils.pas',
  uIWizard in '..\..\Fontes\Comum\uIWizard.pas' {IWizard},
  uResources in '..\..\Fontes\Comum\uResources.pas' {Resources: TDataModule},
  uDM in '..\..\Fontes\manager\infra\uDM.pas' {DM: TDataModule},
  uMain in '..\..\Fontes\MMonitor\uMain.pas' {Main},
  uFPainel in '..\..\Fontes\MMonitor\uFPainel.pas' {FPainel},
  Remessa in '..\..\Fontes\MMonitor\Remessa.pas',
  uHelpers in '..\..\Fontes\Comum\uHelpers.pas',
  uDBLog in '..\..\Fontes\Manager\Class\uDBLog.pas',
  CCore in '..\..\Fontes\Pacotes\CCore\CCore.pas',
  CMsg in '..\..\Fontes\Pacotes\CCore\CMsg.pas';

{$R *.res}

begin
  // Inicialização do Ambiente
  TEnvironment.Setup;
    
  {$IFDEF DEBUG}
  ReportMemoryLeaksOnShutdown := True;
  {$ENDIF}
  
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Manager Monitor';
  Application.CreateForm(TResources, Resources);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TMain, Main);
  Application.Run;
end.
