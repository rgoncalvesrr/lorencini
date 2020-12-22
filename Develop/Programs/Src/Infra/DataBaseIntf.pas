unit DataBaseIntf;

interface

uses
  Classes, CommonIntf, DB, DBClient, SysUtils;

type
  IRStmt = interface;

  TRObjectMode = (omRelease, omDebug);
  ERConnection = Exception;

  IRConnection = interface(IRObject)
    ['{C46C353B-86E8-4065-9977-E0DC9CAC2EA6}']
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
    function Clone: IRConnection;
    function Commit: IRConnection;
    function InTransaction: Boolean;
    function NewStmt: IRStmt; overload;
    function NewStmt(Value: string): IRStmt; overload;
    function NewStmt(Value: TStrings): IRStmt; overload;
    function Rollback: IRConnection;
    function StartTransaction: IRConnection;
    function Clean: IRConnection;
  end;

  IRStmt = interface(IRObject)
    ['{4EA6BFD1-4A7E-4154-8898-AFD5D8853B76}']
    function ElapsedTime: IRElapsedTime;
    function ExecUpdate: Integer;
    function ExecQuery: TClientDataSet;
    function ExecQueryAndFree: TClientDataSet;
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

  IRConnectionList = interface
    ['{F2E7441D-4F8B-49F9-814F-9BF2423794D2}']
    function Get(Index: Integer): IRConnection;
    function GetCapacity: Integer;
    function GetCount: Integer;

    function Add(const Item: IRConnection): Integer;
    function First: IRConnection;
    function IndexOf(const Item: IRConnection): Integer;
    function Last: IRConnection;

    property Capacity: Integer read GetCapacity;
    property Count: Integer read GetCount;
    property Items[Index: Integer]: IRConnection read Get; default;
  end;

  IRConnectionRepository = interface(IRObject)
    ['{A0FFE88A-255D-40EB-AC9F-FF6510428897}']
    function FindAll: IRConnectionList;
    function Find(ACaption: string): IRConnection;
  end;

implementation

end.
