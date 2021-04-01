unit CommonIntf;

interface

uses
  SysUtils, Classes;

type
  IRLogger = interface;

  IRObject = interface
    ['{132D54D2-F13C-46A0-BFAB-24960DB55DA3}']
    function Equals(const AObject: IRObject): Boolean;
    function Guid: TGUID;
    function ObjectAddress: Pointer;
    function ToString: String;
  end;

  IRElapsedTime = interface(IRObject)
    ['{D49DC1FE-32F1-4974-B90D-A150EBDA7AEC}']
    {Propriedades}
    function Elapsed: TDateTime;
    function Finished: TDateTime;
    function Started: TDateTime;

    {Métodos}
    function ElapsedToText: string;
    function FinishedToText: string;
    function Reset: IRElapsedTime;
    function Start: IRElapsedTime;
    function StartedToText: string;
    function Stop: IRElapsedTime;
  end;
  TRLogLevel = (llDebug, llNotice, llWarning, llError);

  TRPlainLog = record
    DataTime: TDateTime;
    Level: TRLogLevel;
    Logger: string;
    Text: string;
  end;

  IRLog = interface(IRObject)
    ['{FEFF9DC2-EACD-41C4-A29F-F76C6F0BE160}']
    {Propriedades}
    function DateTime: TDateTime;
    function Level: TRLogLevel; overload;
    function Level(Value: TRLogLevel): IRLog; overload;
    function Logger: IRLogger;
    function Text: string;

    {Métodos}
    function PlainLog: TRPlainLog;
    function FormatedText: string;
    function LevelToStr: string;

    function Write(const Value: string): IRLog; overload;
    function Write(const Value: string; const Args: array of const): IRLog; overload;
    function Write(Ident: Integer): IRLog; overload;
    function Write(ResStringRec: PResStringRec): IRLog; overload;
    function Write(Ident: Integer; const Args: array of const): IRLog; overload;
    function Write(ResStringRec: PResStringRec; const Args: array of const): IRLog; overload;
    function Write(Value: Exception): IRLog; overload;
  end;

  IRLoggerObserver = interface(IRObject)
    ['{30574922-952F-4A6A-BBAA-C1E52E5E843E}']
    procedure Update(const Log: IRLog);
  end;

  IRLogger = interface(IRObject)
    ['{9C604537-1B06-4346-93F9-5CAAF5562C33}']
    function Attach(Observer: IRLoggerObserver): IRLogger;
    function Detach(Observer: IRLoggerObserver): IRLogger;
    function Notify(Log: IRLog): IRLogger;
    function Save: IRLogger;
    function Reset: IRLogger;
    function ProviderName: string;
    function Debug: IRLog;
    function Notice: IRLog;
    function Warning: IRLog;
    function Error: IRLog;
  end;

  {$region 'Listas'}
  IRList = interface
    ['{BD6E85EB-8E1E-497B-A587-D082AFDFEE45}']

    function Add(const Item: IInterface): Integer;
    function Exists(const Item: IInterface): Boolean;
    function First: IInterface;
    function IndexOf(const Item: IInterface): Integer;
    procedure Insert(Index: Integer; const Item: IRLog);
    function Last: IInterface;

    property Capacity: Integer read GetCapacity;
    property Count: Integer read GetCount;
    property Items[Index: Integer]: IRLog read Get; default;
  end;

  IRLogList = interface(IRList)
    ['{F2E7441D-4F8B-49F9-814F-9BF2423794D2}']
    function Get(Index: Integer): IRLog;
    function GetCapacity: Integer;
    function GetCount: Integer;

    function Add(const Item: IRLog): Integer;
    function First: IRLog;
    function IndexOf(const Item: IRLog): Integer;
    procedure Insert(Index: Integer; const Item: IRLog);
    function Last: IRLog;

    property Capacity: Integer read GetCapacity;
    property Count: Integer read GetCount;
    property Items[Index: Integer]: IRLog read Get; default;
  end;

  IRLoggerObserverList = interface
    ['{F2E7441D-4F8B-49F9-814F-9BF2423794D2}']
    function Get(Index: Integer): IRLoggerObserver;
    function GetCapacity: Integer;
    function GetCount: Integer;

    function Add(const Item: IRLoggerObserver): Integer;
    function Exists(const Item: IRLoggerObserver): Boolean;
    function First: IRLoggerObserver;
    function IndexOf(const Item: IRLoggerObserver): Integer;
    procedure Insert(Index: Integer; const Item: IRLoggerObserver);
    function Last: IRLoggerObserver;

    property Capacity: Integer read GetCapacity;
    property Count: Integer read GetCount;
    property Items[Index: Integer]: IRLoggerObserver read Get; default;
  end;

  
  {$endregion}


  // Implementação especial. Este arquivo não deve conter outras implementações
  TRObject = class(TInterfacedObject, IRObject)
  private
    FGuid: TGuid;
  public
    constructor Create; virtual;
    function Equals(const AObject: IRObject): Boolean; virtual;
    function Guid: TGUID;
    function ObjectAddress: Pointer;
    function ToString: string; virtual;
  end;

implementation


{ TRObject }

constructor TRObject.Create;
begin
  inherited Create;
  CreateGUID(FGuid);
end;

function TRObject.Equals(const AObject: IRObject): Boolean;
begin
  Result := Assigned(AObject) and (Self = AObject.ObjectAddress);
end;

function TRObject.Guid: TGUID;
begin
  Result := FGuid;
end;

function TRObject.ObjectAddress: Pointer;
begin
  Result := Self;
end;

function TRObject.ToString: string;
begin
  Result := Format('%s <%p>', [ClassName, Pointer(Self)]);
end;

end.
