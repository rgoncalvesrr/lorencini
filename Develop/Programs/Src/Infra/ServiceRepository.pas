unit ServiceRepository;

interface

uses
  ServiceIntf, DataBaseIntf;

type
  TServiceRepositorySQL = class(TInterfacedObject, IServiceRepository)
  private
    FConnection: Pointer;
  public
    constructor Create(AConnection: IRConnection); reintroduce;
    
    class function New(AConnection: IRConnection): IServiceRepository;

    function FindAll: IServiceList;
  end;


implementation

uses
  Service;

{ TServiceRepository }

constructor TServiceRepositorySQL.Create(AConnection: IRConnection);
begin
  FConnection := Pointer(AConnection);
end;

function TServiceRepositorySQL.findAll: IServiceList;
begin
  Result := TServiceList.New;
end;

class function TServiceRepositorySQL.New(AConnection: IRConnection): IServiceRepository;
begin
  Result := Self.Create(AConnection);
end;

end.
