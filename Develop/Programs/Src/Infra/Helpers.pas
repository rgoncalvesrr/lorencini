unit Helpers;

interface

type
  IEnvironment = interface
    ['{82E0B58A-A50F-445E-B572-3B61B0270257}']
    function Data: string;
    function Lib: string;
    function Root: string;
    function System: string;
  end;

  TEnvironment = class(TInterfacedObject, IEnvironment)
  private
    FData: string;
    FLib: string;
    FRoot: string;
    
    procedure Initialize;

    constructor Create; reintroduce;
  public
    class function New: IEnvironment;

    function Data: string;
    function Lib: string;
    function Root: string;
    function System: string;
  end;

var
  Environment: IEnvironment;  

implementation

uses
  SysUtils, Windows;

{ TEnvironment }

constructor TEnvironment.Create;
begin
  inherited;
  Initialize;
end;

function TEnvironment.Data: string;
begin
  Result := FData;
end;

procedure TEnvironment.Initialize;
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

function TEnvironment.Lib: string;
begin
  Result := FLib;
end;

class function TEnvironment.New: IEnvironment;
begin
  Result := Self.Create;
end;

function TEnvironment.Root: string;
begin
  Result := FRoot;
end;

function TEnvironment.System: string;
begin
  Result := FRoot + 'System\';
end;

initialization
  Environment := TEnvironment.New;

finalization
  Environment := nil;

end.
