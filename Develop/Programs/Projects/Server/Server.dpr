program Server;

uses
  Forms,
  uServer in '..\..\Src\App\uServer.pas' {Main},
  ServiceIntf in '..\..\Src\Domain\ServiceIntf.pas',
  ServerIntf in '..\..\Src\App\ServerIntf.pas',
  ServiceRepository in '..\..\Src\Infra\ServiceRepository.pas',
  DataBaseIntf in '..\..\Src\Infra\DataBaseIntf.pas',
  Service in '..\..\Src\Domain\Service.pas',
  DataBase in '..\..\Src\Infra\DataBase.pas',
  Helpers in '..\..\Src\Infra\Helpers.pas',
  Dialogs,
  CommonIntf in '..\..\Src\Infra\CommonIntf.pas',
  CommonFactory in '..\..\Src\Infra\CommonFactory.pas',
  Common in '..\..\Src\Infra\Common.pas',
  DataBaseResource in '..\..\Src\Infra\DataBaseResource.pas',
  CommonResource in '..\..\Src\Infra\CommonResource.pas';

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
