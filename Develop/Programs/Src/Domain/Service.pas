unit Service;

interface

uses
  ServiceIntf, Classes;

type
  TService = class(TInterfacedObject, IService)
  private
    FId: Integer;
    FName: string;
    FProcess: Integer;
    FStatus: TServiceStatus;
    FState: TServiceState;

    constructor Create(AId: Longint; AName: string; AProcess: Integer; AStatus: TServiceStatus); reintroduce;
  public
    class function New(AId: Longint; AName: string; AProcess: Integer; AStatus: TServiceStatus): IService;

    function Id: Longint;
    function Name: string;
    function Process: Integer;
    function Status: TServiceStatus;
    function State: TServiceState;

    function Start: IService;
    function Stop: IService;
  end;

  {$region 'Classes de suporte a interface'}
  TServiceList = class(TInterfaceList, IServiceList)
  private
    constructor Create; reintroduce;
  protected
    function Get(Index: Integer): IService; reintroduce;
    function GetCapacity: Integer; reintroduce;
    function GetCount: Integer; reintroduce;
  public
    class function New: IServiceList;

    function IndexOf(const Item: IService): Integer;
    function Add(const Item: IService): Integer;
    function First: IService;
    function Last: IService;

    property Capacity: Integer read GetCapacity;
    property Count: Integer read GetCount;
    property Items[Index: Integer]: IService read Get; default;
  end;
  {$endregion}

implementation

{ TService }

constructor TService.Create(AId: Integer; AName: string; AProcess: Integer; AStatus: TServiceStatus);
begin
  FId := AId;
  FName := AName;
  FProcess := AProcess;
  FStatus := AStatus;
end;

function TService.Id: Longint;
begin
  Result := FId;
end;

function TService.Name: string;
begin
  Result := FName;
end;

class function TService.New(AId: Integer; AName: string; AProcess: Integer; AStatus: TServiceStatus): IService;
begin
  Result := Self.Create(AId, AName, AProcess, AStatus);
end;

function TService.Process: Integer;
begin
  Result := FProcess;
end;

function TService.Start: IService;
begin
  Result := Self;
end;

function TService.State: TServiceState;
begin
  Result := FState;
end;

function TService.Status: TServiceStatus;
begin
  Result := FStatus;
end;

function TService.Stop: IService;
begin
  Result := Self;
end;

{ TIServiceList }

function TServiceList.Add(const Item: IService): Integer;
begin
  Result := inherited Add(Item);
end;

constructor TServiceList.Create;
begin
  inherited;
end;

function TServiceList.First: IService;
begin
  Result := IService(inherited First);
end;

function TServiceList.Get(Index: Integer): IService;
begin
  Result := IService(inherited Get(Index));
end;

function TServiceList.GetCapacity: Integer;
begin
  Result := inherited Capacity;
end;

function TServiceList.GetCount: Integer;
begin
  Result := Count;
end;

function TServiceList.IndexOf(const Item: IService): Integer;
begin
  Result := inherited IndexOf(Item);
end;

function TServiceList.Last: IService;
begin
  Result := IService(inherited Last);
end;

class function TServiceList.New: IServiceList;
begin
  Result := Self.Create;
end;

end.
