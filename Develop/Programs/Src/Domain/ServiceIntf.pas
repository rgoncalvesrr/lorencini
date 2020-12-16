unit ServiceIntf;

interface

uses
  Classes;

Type
  TServiceStatus = (ssInactive, ssActive);
  TServiceState = (stStopped, stStopping, stStarting, stRunning);

  IService = interface
    ['{9DBADDBF-48A4-4821-A291-4A2C22B377CF}']
    function Id: Longint;
    function Name: string;
    function Process: Integer;
    function Status: TServiceStatus;
    function State: TServiceState;

    function Start: IService;
    function Stop: IService;
  end;

  IServiceList = interface
    ['{F2E7441D-4F8B-49F9-814F-9BF2423794D2}']
    function Get(Index: Integer): IService;
    function GetCapacity: Integer;
    function GetCount: Integer;

    function Add(const Item: IService): Integer;
    function First: IService;
    function IndexOf(const Item: IService): Integer;
    function Last: IService;

    property Capacity: Integer read GetCapacity;
    property Count: Integer read GetCount;
    property Items[Index: Integer]: IService read Get; default;
  end;

  IServiceRepository = interface
    ['{A5971D0B-6732-435C-9788-E1B4687F36D4}']
    function FindAll: IServiceList;
  end;


implementation

end.
