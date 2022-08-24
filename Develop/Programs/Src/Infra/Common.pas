unit Common;

interface

uses
  CommonIntf, SysUtils, Classes;

type
  TRElapsedTime = class(TRObject, IRElapsedTime)
  private
    FStarted: TDateTime;
    FFinished: TDateTime;
    function Elapsed: TDateTime;
    function Finished: TDateTime;
    function Started: TDateTime;
  public
    class function New: IRElapsedTime;
    function ElapsedToText: string;
    function FinishedToText: string;
    function Reset: IRElapsedTime;
    function Start: IRElapsedTime;
    function StartedToText: string;
    function Stop: IRElapsedTime;
    function ToString: string; override;
  end;

  ERAssertion = Exception;

  TRAssertion = class
  private
    class function CalculaDigito(Value: string): string;
  public
    class function CheckCNPJ(Value: string): string;
    class function CheckCPF(Value: string): string;
    class procedure Equals(Str1, Str2: string); overload;
    class procedure Equals(Str1, Str2, Message: string); overload;
    class function LenMin(Value: string; Min: Integer): string; overload;
    class function LenMin(Value: string; Min: Integer; Message: string): string; overload;
    class function LenMax(Value: string; Max: Integer): string; overload;
    class function LenMax(Value: string; Max: Integer; Message: string): string; overload;
    class function LenRange(Value: string; Min: Integer; Max: Integer): string; overload;
    class function LenRange(Value: string; Min: Integer; Max: Integer; Message: string): string; overload;
    class function NotEmpty(Value: string): string; overload;
    class function NotEmpty(Value: string; Message: string): string; overload;
  end;

  TRLogger = class(TRObject, IRLogger)
  private
    FProviderName : string;
    FObservers: TInterfaceList;
    FLogs: IRLogList;
    FLevel: TRLogLevel;
    constructor Create(Provider: string); reintroduce;

    procedure CreateListLogs;
    function NewLog(Logger: IRLogger): IRLog;
  public
    destructor Destroy; override;
    class function New(Provider: string): IRLogger;

    function Attach(Observer: IRLoggerObserver): IRLogger;
    function Detach(Observer: IRLoggerObserver): IRLogger;
    function Notify(Log: IRLog): IRLogger;
    function ProviderName: string;
    function Reset: IRLogger;
    function Save: IRLogger;

    function Debug: IRLog;
    function Notice: IRLog;
    function Warning: IRLog;
    function Error: IRLog;
  end;

  TRLog = class(TRObject, IRLog)
  private
    FDateTime: TDateTime;
    FLevel: TRLogLevel;
    FLogger: Pointer;
    FText: string;
  public
    constructor Create(Logger: IRLogger); reintroduce; overload;
    constructor Create(Logger: IRLogger; Text: string); reintroduce; overload;
    constructor Create(Logger: IRLogger; Text: string; Level: TRLogLevel); reintroduce; overload;

    class function New(Logger: IRLogger): IRLog; overload;
    class function New(Logger: IRLogger; Text: string): IRLog; overload;
    class function New(Logger: IRLogger; Text: string; Level: TRLogLevel): IRLog; overload;

    function DateTime: TDateTime;
    function Level: TRLogLevel; overload;
    function Level(Value: TRLogLevel): IRLog; overload;
    function Logger: IRLogger;
    function Text: string;

    {Métodos}
    function FormatedText: string;
    function PlainLog: TRPlainLog;
    function LevelToStr: string;
    function Write(const Value: string): IRLog; overload;
    function Write(const Value: string; const Args: array of const): IRLog; overload;
    function Write(Ident: Integer): IRLog; overload;
    function Write(ResStringRec: PResStringRec): IRLog; overload;
    function Write(Ident: Integer; const Args: array of const): IRLog; overload;
    function Write(ResStringRec: PResStringRec; const Args: array of const): IRLog; overload;
    function Write(Value: Exception): IRLog; overload;
  end;

  {$region 'Listas de suporte'}
  TRLogList = class(TInterfaceList, IRLogList)
  private
    constructor Create; reintroduce;
  protected
    function Get(Index: Integer): IRLog; reintroduce;
    function GetCapacity: Integer; reintroduce;
    function GetCount: Integer; reintroduce;
  public
    class function New: IRLogList;

    function Add(const Item: IRLog): Integer;
    function First: IRLog;
    function IndexOf(const Item: IRLog): Integer;
    procedure Insert(Index: Integer; const Item: IRLog);
    function Last: IRLog;

    property Capacity: Integer read GetCapacity;
    property Count: Integer read GetCount;
    property Items[Index: Integer]: IRLog read Get; default;
  end;
  {$endregion}

implementation

uses
  CommonResource;

{ TElapsedTime }

function TRElapsedTime.Elapsed: TDateTime;
begin
  Result := FFinished - FStarted;
end;

function TRElapsedTime.ElapsedToText: string;
begin
  Result := FormatDateTime('hh:nn:ss:zzz', Elapsed);
end;

function TRElapsedTime.Finished: TDateTime;
begin
  Result := FFinished;
end;

function TRElapsedTime.FinishedToText: string;
begin
  Result := FormatDateTime('hh:nn:ss:zzz', Finished);
end;

class function TRElapsedTime.New: IRElapsedTime;
begin
  Result := Self.Create;
end;

function TRElapsedTime.Reset: IRElapsedTime;
begin
  Result := Self;
  FStarted := Now;
  FFinished := FStarted;
end;

function TRElapsedTime.Start: IRElapsedTime;
begin
  Result := Self;
  FStarted := Now;
end;

function TRElapsedTime.Started: TDateTime;
begin
  Result := FStarted;
end;

function TRElapsedTime.StartedToText: string;
begin
  Result := FormatDateTime('hh:nn:ss:zzz', Started);
end;

function TRElapsedTime.Stop: IRElapsedTime;
begin
  Result := Self;
  FFinished := Now;
end;

function TRElapsedTime.ToString: string;
begin
  Result := ElapsedToText;
end;

{ TCFAssertion }

class function TRAssertion.CalculaDigito(Value: string): string;
var
  i,j,k, Soma, Digito : Integer;
  CNPJ : Boolean;
begin
  Result := EmptyStr;

  CNPJ := Length(Value) = 12;

  for j := 1 to 2 do
  begin
    k := 2;
    Soma := 0;
    for i := Length(Result) downto 1 do
    begin
      Soma := Soma + (Ord(Result[i]) - Ord('0')) * k;
      Inc(k);
      if (k > 9) and CNPJ then
        k := 2;
    end;

    Digito := 11 - Soma mod 11;
    if Digito >= 10 then
      Digito := 0;
    Result := Result + Chr(Digito + Ord('0'));
  end;
end;

class function TRAssertion.CheckCNPJ(Value: string): string;
const
  REGISTRATION_NAME : string = 'CNPJ';
begin
  Result := Value;
  TRAssertion.NotEmpty(Value, Format(LoadResString(@SAssertRegistrationEmpty), [REGISTRATION_NAME]));
  TRAssertion.LenRange(Value, 14, 14, Format(LoadResString(@SAssertRegistrationInvalidLen), [REGISTRATION_NAME, Value]));
  TRAssertion.Equals(CalculaDigito(Copy(Value, 1, 12)), Value,
    Format(LoadResString(@SAssertRegistrationInvalid), [REGISTRATION_NAME, Value]));
end;

class function TRAssertion.CheckCPF(Value: string): string;
const
  REGISTRATION_NAME : string = 'CPF';
begin
  Result := Value;
  TRAssertion.NotEmpty(Value, Format(LoadResString(@SAssertRegistrationEmpty), [REGISTRATION_NAME]));
  TRAssertion.LenRange(Value, 11, 11, Format(LoadResString(@SAssertRegistrationInvalidLen), [REGISTRATION_NAME, Value]));
  TRAssertion.Equals(CalculaDigito(Copy(Value, 1, 9)), Value,
    Format(LoadResString(@SAssertRegistrationInvalid), [REGISTRATION_NAME, Value]));
end;

class procedure TRAssertion.Equals(Str1, Str2, Message: string);
begin
    if (Str1 <> Str2) then
    raise ERAssertion.Create(Message);
end;

class procedure TRAssertion.Equals(Str1, Str2: string);
begin
  Equals(Str1, Str2, Format(LoadResString(@SCFAssertStrNotEquals), [Str1, Str2]));
end;

class function TRAssertion.LenMax(Value: string; Max: Integer; Message: string): string;
begin
  Result := Value;
  if Length(Value) > Max then
    raise ERAssertion.Create(Message);
end;

class function TRAssertion.LenMax(Value: string; Max: Integer): string;
begin
  Result := LenMax(Value, Max, Format(LoadResString(@SCFAssertLenMax), [Value, Max]));
end;

class function TRAssertion.LenMin(Value: string; Min: Integer): string;
begin
  Result := LenMin(Value, Min, Format(LoadResString(@SCFAssertLenMin), [Value, Min]));
end;

class function TRAssertion.LenMin(Value: string; Min: Integer; Message: string): string;
begin
  Result := Value;
  if Length(Value) < Min then
    raise ERAssertion.Create(Message);
end;

class function TRAssertion.LenRange(Value: string; Min, Max: Integer): string;
begin
  Result := LenRange(Value, Min, Max, Format(LoadResString(@SCFAssertLenBetween), [Value, Min, Max]));
end;

class function TRAssertion.LenRange(Value: string; Min, Max: Integer; Message: string): string;
begin
  Result := Value;
  try
    LenMin(Value, Min);
    LenMax(Value, Max);
  except
    on E:ERAssertion do
      raise ERAssertion.Create(Message);
  end;
end;

class function TRAssertion.NotEmpty(Value: string): string;
begin
  TRAssertion.NotEmpty(Value, LoadResString(@SCFAssertStrNotEmpty));
end;

class function TRAssertion.NotEmpty(Value, Message: string): string;
begin
  Result := Value;
  if Trim(Value) = EmptyStr then
    raise ERAssertion.Create(Message);
end;

{ TCFLogger }

function TRLogger.Attach(Observer: IRLoggerObserver): IRLogger;
begin
  Result := Self;
  if Assigned(Observer) and not FObservers.Exists(Observer) then
    FObservers.Add(Observer);
end;

constructor TRLogger.Create(Provider: string);
var
  id: TGUID;
begin
  inherited Create;
  if Provider = EmptyStr then
  begin
    CreateGUID(id);
    Provider := GUIDToString(id);
  end;
  FProviderName := Provider;
  CreateListLogs;
  FObservers := TInterfaceList.Create;  
end;

procedure TRLogger.CreateListLogs;
begin
  FLogs := TRLogList.New;
end;

function TRLogger.Debug: IRLog;
begin

end;

destructor TRLogger.Destroy;
begin
  FLogs := nil;
  FreeAndNil(FObservers);
  inherited;
end;

function TRLogger.Detach(Observer: IRLoggerObserver): IRLogger;
begin

end;

function TRLogger.Error: IRLog;
begin

end;

class function TRLogger.New(Provider: string): IRLogger;
begin
  Result := Self.Create(Provider);
end;

function TRLogger.NewLog(Logger: IRLogger): IRLog;
begin
  Result := TRLog.New(Self);
  FLogs.Insert(0, Result);
end;

function TRLogger.Notice: IRLog;
begin

end;

function TRLogger.Notify(Log: IRLog): IRLogger;
begin

end;

function TRLogger.ProviderName: string;
begin

end;

function TRLogger.Reset: IRLogger;
begin

end;

function TRLogger.Save: IRLogger;
begin

end;

function TRLogger.Warning: IRLog;
begin

end;

{ TCFLog }

constructor TRLog.Create(Logger: IRLogger; Text: string; Level: TRLogLevel);
begin

end;

constructor TRLog.Create(Logger: IRLogger; Text: string);
begin

end;

constructor TRLog.Create(Logger: IRLogger);
begin

end;

function TRLog.DateTime: TDateTime;
begin

end;

function TRLog.FormatedText: string;
begin

end;

function TRLog.Level(Value: TRLogLevel): IRLog;
begin

end;

function TRLog.Level: TRLogLevel;
begin

end;

function TRLog.LevelToStr: string;
begin

end;

function TRLog.Logger: IRLogger;
begin

end;

class function TRLog.New(Logger: IRLogger; Text: string; Level: TRLogLevel): IRLog;
begin

end;

class function TRLog.New(Logger: IRLogger; Text: string): IRLog;
begin

end;

class function TRLog.New(Logger: IRLogger): IRLog;
begin

end;

function TRLog.PlainLog: TRPlainLog;
begin

end;

function TRLog.Text: string;
begin

end;

function TRLog.Write(const Value: string; const Args: array of const): IRLog;
begin

end;

function TRLog.Write(Ident: Integer): IRLog;
begin

end;

function TRLog.Write(ResStringRec: PResStringRec): IRLog;
begin

end;

function TRLog.Write(const Value: string): IRLog;
begin

end;

function TRLog.Write(Value: Exception): IRLog;
begin

end;

function TRLog.Write(ResStringRec: PResStringRec; const Args: array of const): IRLog;
begin

end;

function TRLog.Write(Ident: Integer; const Args: array of const): IRLog;
begin

end;

{ TRLogList }

function TRLogList.Add(const Item: IRLog): Integer;
begin
  Result := inherited Add(Item);
end;

constructor TRLogList.Create;
begin
  inherited;
end;

function TRLogList.First: IRLog;
begin
  Result := IRLog(inherited First);
end;

function TRLogList.Get(Index: Integer): IRLog;
begin
  Result := IRLog(inherited Get(Index));
end;

function TRLogList.GetCapacity: Integer;
begin
  Result := inherited Capacity;
end;

function TRLogList.GetCount: Integer;
begin
  Result := inherited Count;
end;

function TRLogList.IndexOf(const Item: IRLog): Integer;
begin
  Result := inherited IndexOf(Item);
end;

procedure TRLogList.Insert(Index: Integer; const Item: IRLog);
begin
  inherited Insert(Index, Item);
end;

function TRLogList.Last: IRLog;
begin
  Result := IRLog(inherited Last);
end;

class function TRLogList.New: IRLogList;
begin
  Result := Self.Create;
end;

end.
