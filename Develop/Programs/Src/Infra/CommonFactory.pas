unit CommonFactory;

interface

uses
  DataBaseIntf, CommonIntf;

type
  TRCommonFactory = class
  public
    class function NewConnectionPgSQL: IRConnection;
    class function NewConnectionSQLite: IRConnection;
    class function NewElapsedTime: IRElapsedTime;
    class function NewLogger(ProviderName: string): IRLogger;
  end;

implementation

uses
  Common;

{ TCommonFactory }

class function TRCommonFactory.NewConnectionPgSQL: IRConnection;
begin

end;

class function TRCommonFactory.NewConnectionSQLite: IRConnection;
begin

end;

class function TRCommonFactory.NewElapsedTime: IRElapsedTime;
begin
  Result := TRElapsedTime.New;
end;

class function TRCommonFactory.NewLogger(ProviderName: string): IRLogger;
begin

end;

end.
