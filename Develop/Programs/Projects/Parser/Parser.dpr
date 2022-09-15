program Parser;

uses
  Forms,
  umain in '..\..\Sources\parser\umain.pas' {Main},
  uHelpers in '..\..\Sources\Common\uHelpers.pas';

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
