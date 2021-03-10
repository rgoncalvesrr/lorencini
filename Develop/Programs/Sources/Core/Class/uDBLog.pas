unit uDBLog;

interface

uses Classes, SysUtils, Contnrs;

type
  TDbLogType = (ltCreate, ltUpdate, ltDelete, ltUnknow);
  TDbLogLevel = (llInfo, llWarning, llError, llDebug);

  TDbLog = class
  private
    FLogType: TDbLogType;
    FDescription: string;
    FHistorico: TStrings;
    FSourceTable: string;
    FSourceRecno: Integer;
    FLogLevel: TDbLogLevel;
    procedure SetDescription(const Value: string);
    procedure SetLogType(const Value: TDbLogType);
    procedure SetSourceRecno(const Value: Integer);
    procedure SetSourceTable(const Value: string);
    procedure SetLogLevel(const Value: TDbLogLevel);
  public
    constructor Create;
    destructor Destroy; override;

    function LevelToText: string;

    property Description: string read FDescription write SetDescription;
    property History: TStrings read FHistorico;
    property LogType: TDbLogType read FLogType write SetLogType;
    property LogLevel: TDbLogLevel read FLogLevel write SetLogLevel;
    property SourceTable: string read FSourceTable write SetSourceTable;
    property SourceRecno: Integer read FSourceRecno write SetSourceRecno;
  end;

  TDbLogFactory = class
  private
    FreeListObjects: TObjectList;
  public
    constructor Create;
    destructor Destroy; override;
    function getInstanace(Table: string; Recno: Integer): TDbLog; overload;
    function getInstanace(Table: string; Recno: Integer; LogLevel: TDbLogLevel): TDbLog; overload;
    function getInstanace(Table: string; Recno: Integer; LogLevel: TDbLogLevel; Description: string): TDbLog; overload;
  end;

var
  DbLogFactory: TDbLogFactory;
  DbLog: TDbLog;

implementation

{ TDbLog }

constructor TDbLog.Create;
begin
  FHistorico := TStringList.Create;
  FDescription := EmptyStr;
  FHistorico.Clear;
  FLogType := ltUnknow;
  FLogLevel := llInfo;
end;

destructor TDbLog.Destroy;
begin
  FreeAndNil(FHistorico);
  inherited;
end;

function TDbLog.LevelToText: string;
begin
  case FLogLevel of
    llInfo:
      result := 'info';
    llWarning:
      result := 'warn';
    llError:
      result := 'error';
    llDebug:
      result := 'debug';
  else
    result := 'trace';
  end;
end;

procedure TDbLog.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

procedure TDbLog.SetLogLevel(const Value: TDbLogLevel);
begin
  FLogLevel := Value;
end;

procedure TDbLog.SetLogType(const Value: TDbLogType);
begin
  FLogType := Value;
end;

procedure TDbLog.SetSourceRecno(const Value: Integer);
begin
  FSourceRecno := Value;
end;

procedure TDbLog.SetSourceTable(const Value: string);
begin
  FSourceTable := Value;
end;

{ DbLogFactory }

constructor TDbLogFactory.Create;
begin
  FreeListObjects := TObjectList.Create;
end;

destructor TDbLogFactory.Destroy;
begin
  FreeAndNil(FreeListObjects);
  inherited;
end;

function TDbLogFactory.getInstanace(Table: string; Recno: Integer): TDbLog;
begin
  Result := TDbLog.Create;
  Result.SourceTable := Table;
  Result.SourceRecno := Recno;
  FreeListObjects.Add(Result);
end;

function TDbLogFactory.getInstanace(Table: string; Recno: Integer;
  LogLevel: TDbLogLevel): TDbLog;
begin
  Result := getInstanace(Table, Recno);
  Result.LogLevel := LogLevel;
end;

function TDbLogFactory.getInstanace(Table: string; Recno: Integer;
  LogLevel: TDbLogLevel; Description: string): TDbLog;
begin
  Result := getInstanace(Table, Recno, LogLevel);
  Result.Description := Description;
end;

initialization
  DbLogFactory := TDbLogFactory.Create;

finalization
  FreeAndNil(DbLogFactory);

end.
