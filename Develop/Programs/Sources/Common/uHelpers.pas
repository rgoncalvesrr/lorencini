unit uHelpers;

interface

uses Windows, SysUtils;

type
  TEnvironment = class
  private
    class var FLib: string;
    class var FData: string;
    class var FRoot: string;
  public
    class procedure Setup;
    class property Lib: string read FLib;
    class property Data: string read FData;
    class property Root: string read FRoot;
  end;

implementation

{ TEnvironment }
class procedure TEnvironment.Setup;
var
  envPath, envRoot: string;
  i: Integer;
begin
  // Configurando variáveis de ambiente
  envRoot := ExtractFileDir(ParamStr(0));
  envPath := envRoot + ';';

  // Configurando diretorio raíz
  for i := Length(envRoot) downto 0 do
    if envRoot[i] = '\' then
    begin
      envRoot := Copy(envRoot, 1, i - 1);
      Break;
    end;

  FRoot := envRoot + '\';
  FLib := FRoot + 'Lib';
  envPath := envPath + FLib + ';' + GetEnvironmentVariable('PATH');
  FLib := FLib + '\';
  if not SetEnvironmentVariable(PChar('PATH'), PChar(envPath)) then
    raise Exception.CreateFmt('Não foi possível preencher a variável de ambiente PATH. Erro: %d',
      [GetLastError]);

  FData := FRoot + 'Data\';

  if not DirectoryExists(FData) then
    CreateDir(FData);
end;

initialization
  TEnvironment.Setup;   // Inicialização do Ambiente

end.
