unit ServiceCFG;

interface

uses
  IdExplicitTLSClientServerBase, IdSMTPBase, IdSSLOpenSSL, IdIOHandler,
  Classes, SysUtils;

type
  TServiceCFGConnParams = class(TPersistent)
  private
    FPort: integer;
    FPass: string;
    FDataBase: string;
    FHost: string;
    FUser: string;
    FProtocol: string;
    procedure SetDataBase(const Value: string);
    procedure SetHost(const Value: string);
    procedure SetPass(const Value: string);
    procedure SetPort(const Value: integer);
    procedure SetUser(const Value: string);
    procedure SetProtocol(const Value: string);
  public
    constructor Create;
    property Protocol: string read FProtocol write SetProtocol;
    property Host: string read FHost write SetHost;
    property Port: integer read FPort write SetPort;
    property DataBase: string read FDataBase write SetDataBase;
    property User: string read FUser write SetUser;
    property Pass: string read FPass write SetPass;
  end;

  TServiceCFGSmtp = class(TPersistent)
  private
    FSSL_Enabled: boolean;
    FPort: integer;
    FPassword: string;
    FTLS: TIdUseTLS;
    FSSLMode: TIdSSLVersion;
    FUser: string;
    FServer: string;
    FUserName: string;
    procedure SetPassword(const Value: string);
    procedure SetPort(const Value: integer);
    procedure SetServer(const Value: string);
    procedure SetSSL_Enabled(const Value: boolean);
    procedure SetSSLMode(const Value: TIdSSLVersion);
    procedure SetTLS(const Value: TIdUseTLS);
    procedure SetUser(const Value: string);
    procedure SetUserName(const Value: string);
  public
    constructor Create;
    procedure Assign(Source: TPersistent); virtual;

    property User: string read FUser write SetUser;
    property UserName: string read FUserName write SetUserName;
    property Password: string read FPassword write SetPassword;
    property Port: integer read FPort write SetPort;
    property Server: string read FServer write SetServer;
    property SSL_Enabled: boolean read FSSL_Enabled write SetSSL_Enabled;
    property SSLMode: TIdSSLVersion read FSSLMode write SetSSLMode;
    property TLS: TIdUseTLS read FTLS write SetTLS;
  end;

  EServiceCFG = Exception;
  TServiceCFG = class
  private
    class var SvcCfg: TServiceCFG;
  private
    FFileConfig: TFileName;
    FConnParams: TServiceCFGConnParams;
    FSmtp: TServiceCFGSmtp;

    constructor PrivateCreate;
    procedure Initialize;
  public
    class function GetInstance: TServiceCFG;
  public
    constructor Create;
    destructor Destroy; override;

    property ConnParams: TServiceCFGConnParams read FConnParams;
    property Smtp: TServiceCFGSmtp read FSmtp;
  end;

implementation

uses IniFiles, uIUtils;

const
  _SERVICE : string = 'service';

{ TServiceCFG }

constructor TServiceCFG.Create;
begin
  raise EServiceCFG.Create('Para obter um objeto de configuração utilize "TServiceCFG.GetInstance".');
end;

destructor TServiceCFG.Destroy;
begin
  FreeAndNil(FConnParams);
  FreeAndNil(FSmtp);
  inherited;
end;

class function TServiceCFG.GetInstance: TServiceCFG;
begin
  if not Assigned(SvcCfg) then
    SvcCfg := TServiceCFG.PrivateCreate;

  Result := SvcCfg;
end;

procedure TServiceCFG.Initialize;
begin
  FFileConfig := U.Path.System + 'config.txt';
  FConnParams := TServiceCFGConnParams.Create;
  FSmtp := TServiceCFGSmtp.Create;
end;

constructor TServiceCFG.PrivateCreate;
var
  Conf: TIniFile;
  dbSession: string;
begin
  inherited Create;

  Initialize; // inicializa objeto

  // Carregar Configurações
  Conf := TIniFile.Create(FFileConfig);
  try
    if not Conf.SectionExists(_SERVICE) then
      raise EServiceCFG.CreateFmt('[Conf. Serviços] Seção %s não localizada no arquivo "%s"',
        [_SERVICE, FFileConfig]);

    dbSession := Conf.ReadString(_SERVICE, 'DBConnection', EmptyStr);

    if not Conf.SectionExists(dbSession) then
      raise EServiceCFG.CreateFmt('[Conf. Banco de Dados] Seção "%s" não localizada no arquivo "%s"',
        [_SERVICE, FFileConfig]);

    with FConnParams, Conf do
    begin
      Host := ReadString(dbSession, 'hostname', 'localhost');
      Port := ReadInteger(dbSession, 'port', 5432);
      DataBase := ReadString(dbSession, 'database', 'lorencini');
      User := ReadString(dbSession, 'user_name', 'postgres');
      Pass := ReadString(dbSession, 'password', 'postgres.');
    end;
  finally
    FreeAndNil(Conf);
  end;
end;

{ TServiceCFConnParams }

constructor TServiceCFGConnParams.Create;
begin
  inherited;
  FProtocol := 'postgresql';
end;

procedure TServiceCFGConnParams.SetDataBase(const Value: string);
begin
  FDataBase := Value;
end;

procedure TServiceCFGConnParams.SetHost(const Value: string);
begin
  FHost := Value;
end;

procedure TServiceCFGConnParams.SetPass(const Value: string);
begin
  FPass := Value;
end;

procedure TServiceCFGConnParams.SetPort(const Value: integer);
begin
  FPort := Value;
end;

procedure TServiceCFGConnParams.SetProtocol(const Value: string);
begin
  FProtocol := Value;
end;

procedure TServiceCFGConnParams.SetUser(const Value: string);
begin
  FUser := Value;
end;

{ TServiceCFGSmtp }

procedure TServiceCFGSmtp.Assign(Source: TPersistent);
begin
  if Source is TServiceCFGSmtp then
    with TServiceCFGSmtp(Source) do
    begin
      Self.Server := Server;
      Self.User := User;
      Self.Password := Password;
      Self.Port := Port;
      Self.SSL_Enabled := SSL_Enabled;
      Self.SSLMode := SSLMode;
      Self.TLS := TLS;

      Exit;
    end;
    
  inherited;
end;

constructor TServiceCFGSmtp.Create;
begin
  FPort := 587;
end;

procedure TServiceCFGSmtp.SetPassword(const Value: string);
begin
  FPassword := Value;
end;

procedure TServiceCFGSmtp.SetPort(const Value: integer);
begin
  FPort := Value;
end;

procedure TServiceCFGSmtp.SetServer(const Value: string);
begin
  FServer := Value;
end;

procedure TServiceCFGSmtp.SetSSLMode(const Value: TIdSSLVersion);
begin
  FSSLMode := Value;
end;

procedure TServiceCFGSmtp.SetSSL_Enabled(const Value: boolean);
begin
  FSSL_Enabled := Value;
end;

procedure TServiceCFGSmtp.SetTLS(const Value: TIdUseTLS);
begin
  FTLS := Value;
end;

procedure TServiceCFGSmtp.SetUser(const Value: string);
begin
  FUser := Value;
end;

procedure TServiceCFGSmtp.SetUserName(const Value: string);
begin
  FUserName := Value;
end;

Initialization

Finalization
  TServiceCFG.GetInstance.Free;

end.


