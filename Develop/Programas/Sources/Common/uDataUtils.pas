unit uDataUtils;

interface

uses DB.Driver, Classes, DBClient, SysUtils;

type
  TDataAccess = class
  private
    FDriver: TDriver;
    FSpool: TList;
    function GetQuery: TClientDataSet;
  public
    constructor Create(DataBase: TDriverType);
    destructor Destroy; override;
    function IsEmpty(TableName: string): Boolean;
    function Execute(Stmt: string): integer;
    function Query(Stmt: string): TClientDataSet;
    function QueryCmd(Stmt: string): TClientDataSet;
    procedure Release(AQuery: TClientDataSet);
  end;

implementation

uses DB.Driver.Utils;

{ TSQL }

constructor TDataAccess.Create(DataBase: TDriverType);
begin
  FDriver := DriverFactory.getDriver(DataBase);    
end;

destructor TDataAccess.Destroy;
begin
  FreeAndNil(FDriver);
  inherited;
end;

function TDataAccess.Execute(Stmt: string): integer;
begin
  Assert(Stmt <> EmptyStr, 'Instrução SQL não informada!');
  Result := FDriver.Execute(Stmt);
end;

function TDataAccess.IsEmpty(TableName: string): Boolean;
begin
  Assert(TableName <> EmptyStr, 'Nome da tabela não informado!');

  with FDriver.Query('select count(*) from %s', [QuotedStr(TableName)]) do
  try
    Result := (Fields[0].AsInteger = 0);
  finally
    Free;
  end;
end;

function TDataAccess.Query(Stmt: string): TClientDataSet;
begin
  Result := FDriver.Query(Stmt);
end;

function TDataAccess.QueryCmd(Stmt: string): TZReadOnlyQuery;
begin
  Result := GetQuery;
  Result.SQL.Add(Stmt);
end;

procedure TDataAccess.Release(AQuery: TZReadOnlyQuery);
begin
  AQuery.Close;
  AQuery.SQL.Clear;
  FSpool.Add(AQuery);
end;

end.
