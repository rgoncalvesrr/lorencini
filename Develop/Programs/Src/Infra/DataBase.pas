unit DataBase;

interface

uses
  DataBaseIntf, IniFiles, Classes, ZConnection, db, CommonIntf, DbClient, ZDataSet, Contnrs, 
  SysUtils;

type
  ERStmt = Exception;
  
  TRConnection = class(TRObject, IRConnection)
  private
    FConnection: TZConnection;
    FGarbage: TObjectList;
    FDataBase: string;
    FHost: string;
    FPass: string;
    FPort: Integer;
    FUser: string;
    FUserSession: string;
    FCaption: string;
    FProtocol: string;
    FLogger: IRLogger;
    FID: TGuid;
    FMode: TRObjectMode;

    constructor Create; reintroduce;

    procedure AfterConnection(Sender: TObject);
  public
    // Propriedades locais
    function DataConnection: TZConnection;
    function AddGarbage(Sender: TObject): IRConnection;
  public
    class function New: IRConnection; overload;
    class function New(AProcol: string; ADataBase: string; AHost: string; APass: string; APort: Integer; AUser: string;
      AUserSession: string): IRConnection; overload;

    function Caption: string; overload;
    function Caption(Value: string): IRConnection; overload;
    function DataBase: string; overload;
    function DataBase(Value: string): IRConnection; overload;
    function Host: string; overload;
    function Host(Value: string): IRConnection; overload;
    function ID: TGuid;
    function Logger: IRLogger;
    function Mode: TRObjectMode; overload;
    function Mode(Value: TRObjectMode): IRConnection; overload;
    function Pass: string; overload;
    function Pass(Value: string): IRConnection; overload;
    function Port: Integer; overload;
    function Port(Value: Integer): IRConnection; overload;
    function Prop(Key: string): string; overload;
    function Prop(Key, Value: string): IRConnection; overload;
    function Protocol: string; overload;
    function Protocol(Value: string): IRConnection; overload;
    function User: string; overload;
    function User(Value: string): IRConnection; overload;
    function UserSession: string; overload;
    function UserSession(Value: string): IRConnection; overload;

    // Métodos
    function CheckConnection: Boolean;
    function Clean: IRConnection;
    function Clone: IRConnection;
    function Commit: IRConnection;
    function InTransaction: Boolean;
    function NewStmt: IRStmt; overload;
    function NewStmt(Value: string): IRStmt; overload;
    function NewStmt(Value: TStrings): IRStmt; overload;
    function Rollback: IRConnection;
    function StartTransaction: IRConnection;
  end;

  TRStmt = class(TRObject, IRStmt)
  private
    FConnection: TRConnection;
    FParams: TParams;
    FStmt: TStrings;
    FStmtElipsedTime: TDateTime;
    FElapsedTime: IRElapsedTime;
    FID: TGuid;
    FRowCount: Integer;
    FMode: TRObjectMode;

    constructor Create(AConnection: TRConnection); reintroduce;

    function Logger: IRLogger;
    function PrepareStmt: TZReadOnlyQuery;
    procedure ParserBeforeOpen(DataSet: TDataSet);
  public
    destructor Destroy; override;

    class function New(AConnection: TRConnection): IRStmt;

    function ElapsedTime: IRElapsedTime;
    function ExecQuery: TClientDataSet;
    function ExecQueryAndFree: TClientDataSet;
    function ExecUpdate: Integer;
    function FindParam(const Value: WideString): TParam;
    function ID: TGuid;
    function Mode: TRObjectMode; overload;
    function Mode(Value: TRObjectMode): IRStmt; overload;
    function ParamByName(const Value: string): TParam;
    function ParamCount: Integer;
    function Params: TParams;
    procedure RefreshParams;
    function RowCount: Integer;
    function Stmt: TStrings; overload;
    function Stmt(Value: string): IRStmt; overload;
    function Stmt(Value: TStrings): IRStmt; overload;
  end;

  TRConnectionRepositoryFromFile = class(TRObject, IRConnectionRepository)
  private
    constructor Create; reintroduce;

    function OpenFile: TIniFile;

    function ReadConnection(AFile: TIniFile; Section: string): IRConnection;
  public
    class function New: IRConnectionRepository;

    function FindAll: IRConnectionList;
    function Find(ACaption: string): IRConnection;
  end;

  {$region 'Lista de conexões'}
  TRConnectionList = class(TInterfaceList, IRConnectionList)
  private
    constructor Create; reintroduce;
  protected
    function Get(Index: Integer): IRConnection; reintroduce;
    function GetCapacity: Integer; reintroduce;
    function GetCount: Integer; reintroduce;
  public
    class function New: IRConnectionList;

    function IndexOf(const Item: IRConnection): Integer;
    function Add(const Item: IRConnection): Integer;
    function First: IRConnection;
    function Last: IRConnection;

    property Capacity: Integer read GetCapacity;
    property Count: Integer read GetCount;
    property Items[Index: Integer]: IRConnection read Get; default;
  end;
  {$endregion}

implementation

uses
  Helpers, CommonFactory, DataBaseResource, Provider;

{ TConnectionRepository }
constructor TRConnectionRepositoryFromFile.Create;
begin
  inherited;
end;

function TRConnectionRepositoryFromFile.Find(ACaption: string): IRConnection;
var
  dbFile: TIniFile;
begin
  Result := nil;

  dbFile := OpenFile;
  with dbFile do
  try
    if SectionExists(ACaption) then
      Result := ReadConnection(dbFile, ACaption);
  finally
    FreeAndNil(dbFile);
  end;

end;

function TRConnectionRepositoryFromFile.FindAll: IRConnectionList;
var
  dbFile: TIniFile;
  sections: TStrings;
  section: string;
begin
  Result := TRConnectionList.New;

  dbFile := OpenFile;
  sections := TStringList.Create;
  with dbFile do
  try
    ReadSections(sections);

    for section in sections do
      if ValueExists(section, 'DataBase') then
        Result.Add(ReadConnection(dbFile, section));
  finally
    FreeAndNil(dbFile);
    FreeAndNil(sections);
  end;

end;

{ TConnection }

function TRConnection.Caption: string;
begin
  Result := FCaption;
end;

function TRConnection.AddGarbage(Sender: TObject): IRConnection;
begin
  Result := Self;
  FGarbage.Add(Sender);
end;

procedure TRConnection.AfterConnection(Sender: TObject);
var
  Query: TZReadOnlyQuery;
begin
  if (FUserSession <> EmptyStr) then
  begin
    Query := TZReadOnlyQuery.Create(nil);
    Query.Connection := FConnection;
    try
      Query.SQL.Add(Format('set session authorization "%s"; ', [FUserSession]));
      Query.ExecSQL;
    finally
      FreeAndNil(Query);
    end;
  end;
end;

function TRConnection.Caption(Value: string): IRConnection;
begin
  Result := Self;
  FCaption := Value;
end;

function TRConnection.CheckConnection: Boolean;
begin
  Result := False;
  FConnection.Connect;
  try
    Result := True;
  finally
    FConnection.Disconnect;
  end;
end;

function TRConnection.Clean: IRConnection;
var
  cds: TClientDataSet;
  i: Integer;
begin
  Result := Self;
  for I := FGarbage.Count - 1 downto 0 do
    if FGarbage[i] is TClientDataSet then
    begin
      cds := TClientDataSet(FGarbage[i]);
      if not cds.Active then
        FGarbage.Delete(i);
    end;
end;

function TRConnection.Clone: IRConnection;
begin
  Result := Self.New(Protocol, DataBase, Host, Pass, Port, User, UserSession);
end;

function TRConnection.Commit: IRConnection;
begin
  Result := Self;
  if FConnection.InTransaction then
    FConnection.AutoCommit := True;
end;

constructor TRConnection.Create;
begin
  inherited;
  CreateGUID(FID);
  FGarbage := TObjectList.Create;
  FLogger := TRCommonFactory.NewLogger(Self.ClassName);
  FConnection := TZConnection.Create(nil);
  FConnection.AfterConnect := AfterConnection;
  AddGarbage(FConnection);
end;

function TRConnection.DataBase(Value: string): IRConnection;
begin
  Result := Self;
  FDataBase := Value;
end;

function TRConnection.DataConnection: TZConnection;
begin
  Result := FConnection;
end;

function TRConnection.DataBase: string;
begin
  Result := FDataBase;
end;

function TRConnection.Host: string;
begin
  Result := FHost;
end;

function TRConnection.Host(Value: string): IRConnection;
begin
  Result := Self;
  FHost := Value;
end;

function TRConnection.ID: TGuid;
begin
  Result := FID;
end;

function TRConnection.InTransaction: Boolean;
begin
  Result := FConnection.InTransaction;
end;

function TRConnection.Logger: IRLogger;
begin
  Result := FLogger;
end;

function TRConnection.Mode: TRObjectMode;
begin
  Result := FMode;  
end;

function TRConnection.Mode(Value: TRObjectMode): IRConnection;
begin
  Result := Self;
  FMode := Value;
end;

class function TRConnection.New(AProcol: string; ADataBase, AHost, APass: string; APort: Integer; AUser,
  AUserSession: string): IRConnection;
begin
  Result := Self.Create
    .Protocol(AProcol)
    .Host(AHost)
    .Port(APort)
    .DataBase(ADataBase)
    .User(AUser)
    .Pass(APass)
    .UserSession(AUserSession);
end;

function TRConnection.NewStmt(Value: TStrings): IRStmt;
begin
  Result := Self.NewStmt.Stmt(Value);
end;

function TRConnection.NewStmt(Value: string): IRStmt;
begin
  Result := Self.NewStmt.Stmt(Value);
end;

function TRConnection.NewStmt: IRStmt;
begin
  Result := TRStmt.New(Self)
    .Mode(Mode);
end;

class function TRConnection.New: IRConnection;
begin
  Result := Self.Create;
end;

function TRConnection.Pass(Value: string): IRConnection;
begin
  Result := Self;
  FPass := Value;
end;

function TRConnection.Pass: string;
begin
  Result := FPass;
end;

function TRConnection.Port: Integer;
begin
  Result := FPort;
end;

function TRConnection.Port(Value: Integer): IRConnection;
begin
  Result := Self;
  FPort := Value;
end;

function TRConnection.Protocol: string;
begin
  Result := FProtocol;
end;

function TRConnection.Prop(Key: string): string;
begin
  Result := FConnection.Properties.Values[Key];
end;

function TRConnection.Prop(Key, Value: string): IRConnection;
begin
  Result := Self;
  FConnection.Properties.Values[Key] := Value;
end;

function TRConnection.Protocol(Value: string): IRConnection;
begin
  Result := Self;
  FProtocol := Value;
end;

function TRConnection.Rollback: IRConnection;
begin
  Result := Self;
  if FConnection.InTransaction then
    FConnection.Rollback;
end;

function TRConnection.StartTransaction: IRConnection;
begin
  Result := Self;
  if not FConnection.InTransaction then
    FConnection.StartTransaction;
end;

function TRConnection.User: string;
begin
  Result := FUser;
end;

function TRConnection.User(Value: string): IRConnection;
begin
  Result := Self;
  FUser := Value;
end;

function TRConnection.UserSession: string;
begin
  Result := FUserSession;
end;

function TRConnection.UserSession(Value: string): IRConnection;
begin
  Result := Self;
  FUserSession := Value;
end;

class function TRConnectionRepositoryFromFile.New: IRConnectionRepository;
begin
  Result := Self.Create;
end;

function TRConnectionRepositoryFromFile.OpenFile: TIniFile;
var
  fileName: string;
begin
  fileName := Environment.System + 'config.txt';

  Result := TIniFile.Create(fileName);
end;

function TRConnectionRepositoryFromFile.ReadConnection(AFile: TIniFile; Section: string): IRConnection;
begin
  with AFile do
    result := TRConnection.New
      .Caption(section)
      .Protocol(ReadString(section, 'Protocol', 'postgresql'))
      .Host(ReadString(section, 'HostName', 'localhost'))
      .Port(ReadInteger(section, 'Port', 0))
      .DataBase(ReadString(section, 'Database', 'lorencini'))
      .User(ReadString(section, 'User_Name', 'pstgres'))
      .UserSession(ReadString(section, 'User_Name', 'postgres'))
      .Pass(ReadString(section, 'Password', 'postgres.'))
end;

{ TIConnectionList }

function TRConnectionList.Add(const Item: IRConnection): Integer;
begin
  Result := inherited Add(Item);
end;

constructor TRConnectionList.Create;
begin
  inherited;
end;

function TRConnectionList.First: IRConnection;
begin
  Result := IRConnection(inherited First);
end;

function TRConnectionList.Get(Index: Integer): IRConnection;
begin
  Result := IRConnection(inherited Get(Index));
end;

function TRConnectionList.GetCapacity: Integer;
begin
  Result := inherited Capacity;
end;

function TRConnectionList.GetCount: Integer;
begin
  Result := inherited Count;
end;

function TRConnectionList.IndexOf(const Item: IRConnection): Integer;
begin
  Result := inherited IndexOf(Item);
end;

function TRConnectionList.Last: IRConnection;
begin
  Result := IRConnection(inherited Last);
end;

class function TRConnectionList.New: IRConnectionList;
begin
  Result := Self.Create;
end;

{ TStmt }

constructor TRStmt.Create(AConnection: TRConnection);
begin
  inherited Create;
  CreateGUID(FID);
  FConnection := AConnection;
  FMode := FConnection.Mode;
  FStmt := TStringList.Create;
  FParams := TParams.Create;
  FElapsedTime := TRCommonFactory.NewElapsedTime;

  if FMode = omDebug then
    Logger.Debug.Write(SDebug00003, [GUIDToString(FID)]);
end;

destructor TRStmt.Destroy;
begin
  FreeAndNil(FParams);
  FreeAndNil(FStmt);
  inherited;
end;

function TRStmt.ElapsedTime: IRElapsedTime;
begin
  Result := FElapsedTime;
end;

function TRStmt.ExecQuery: TClientDataSet;
var
  dsp: TDataSetProvider;
  rs: TZReadOnlyQuery;
begin
  Result := nil;
  FRowCount := 0;

  if Trim(FStmt.Text) = EmptyStr then
    raise ERStmt.CreateResFmt(@SDBSQLEmpty, [Self.ClassName + '.ExecQuery']);

  FElapsedTime.Reset.Start;
  FConnection.DataConnection.Connect;
  dsp := TDataSetProvider.Create(nil);
  try
    if FConnection.DataConnection.Connected then
    try
      rs := PrepareStmt;
      dsp.DataSet := rs;
      // Preprarando o resultado
      Result := TClientDataSet.Create(nil);
      Result.FetchOnDemand := False;
      Result.SetProvider(dsp);
      Result.Open;
      Result.LogChanges := False;
      Result.SetProvider(nil);
      FRowCount := Result.RecordCount;
    except
      on E:Exception do
      begin
        FreeAndNil(Result);
        raise;
      end;
    end;
  finally
    FElapsedTime.Stop;

    if Mode = omDebug then
      Logger.Notice.Write(@SDebug00005, [FElapsedTime.StartedToText, FElapsedTime.FinishedToText, FElapsedTime.ElapsedToText]);

    if not FConnection.InTransaction then
      FConnection.DataConnection.Disconnect;

    if Assigned(dsp.DataSet) then
      dsp.DataSet.Free;
      
    FreeAndNil(dsp);
  end;

end;

function TRStmt.ExecQueryAndFree: TClientDataSet;
begin

end;

function TRStmt.ExecUpdate: Integer;
begin

end;

function TRStmt.FindParam(const Value: WideString): TParam;
begin

end;

function TRStmt.ID: TGuid;
begin

end;

function TRStmt.Logger: IRLogger;
begin
  
end;

function TRStmt.Mode: TRObjectMode;
begin

end;

function TRStmt.Mode(Value: TRObjectMode): IRStmt;
begin

end;

class function TRStmt.New(AConnection: TRConnection): IRStmt;
begin
  Result := Self.Create(AConnection);
end;

function TRStmt.ParamByName(const Value: string): TParam;
begin

end;

function TRStmt.ParamCount: Integer;
begin

end;

function TRStmt.Params: TParams;
begin

end;

procedure TRStmt.ParserBeforeOpen(DataSet: TDataSet);
begin

end;

function TRStmt.PrepareStmt: TZReadOnlyQuery;
begin

end;

procedure TRStmt.RefreshParams;
begin

end;

function TRStmt.RowCount: Integer;
begin

end;

function TRStmt.Stmt(Value: TStrings): IRStmt;
begin

end;

function TRStmt.Stmt: TStrings;
begin

end;

function TRStmt.Stmt(Value: string): IRStmt;
begin

end;

end.
