unit ServiceBase;

interface

uses
  Classes, SysUtils, ZConnection, ZDataset, DB, DBClient, ServiceCFG, Contnrs;

type
  TNotifyEventLog = procedure (Sender: TObject; const MsgLog: string) of object;

  TServiceBase = class(TThread)
  private
    FConn: TZConnection;
    FTrash: TObjectList;
    FLastError: string;
    FLog: string;
    FOnLog: TNotifyEventLog;
    FRecno_: Integer;
    FTable_: Integer;
    FDescription: string;
    procedure DoLog;
    procedure CreateSession;
    procedure SetRecno_(const Value: Integer);
    procedure SetTable_(const Value: Integer);
    procedure SetDescription(const Value: string);
    procedure DoAfterConnection(Sender: TObject);
  protected
    function Qry: TZReadOnlyQuery;
    procedure Log(const Msg: string); overload;
    procedure Log(const Msg: string; const Args: array of const); overload;
    procedure Initialize; virtual;
    procedure DoExec; virtual;
    procedure Execute; override;

    property Trash: TObjectList read FTrash;
  public
    constructor Create(ConnParam: TServiceCFGConnParams); virtual;
    destructor Destroy; override;

    property LastError: string read FLastError;
    property Description: string read FDescription write SetDescription;
    property OnLog: TNotifyEventLog read FOnLog write FOnLog;
    property Recno_: Integer read FRecno_ write SetRecno_;
    property Table_: Integer read FTable_ write SetTable_;
  end;


implementation

uses ComObj, ActiveX, uIUtils, mcutils;

{ TServiceBase }

procedure TServiceBase.DoAfterConnection(Sender: TObject);
var
  oQry: TZReadOnlyQuery;
begin
  FConn.AfterConnect := nil;
  try
    Synchronize(CreateSession);

    oQry := Qry;
    oQry.SQL.Text := Format('SET SESSION AUTHORIZATION "%s";', [U.Info.Session]);
    oQry.ExecSQL;
  finally
    FConn.AfterConnect := DoAfterConnection;
  end;
end;

constructor TServiceBase.Create(ConnParam: TServiceCFGConnParams);
var
  appname: string;
  appimage: string;
begin
  appname := ParamStr(0);
  appimage := ExtractFileName(appname);

  inherited Create(True);
  FreeOnTerminate := True;
  FTrash := TObjectList.Create;
  FTable_ := -1;
  FRecno_ := -1;

  {Criando conexão com o banco de dados}
  FConn := TZConnection.Create(nil);
  with FConn do
  begin
    Protocol := ConnParam.Protocol;
    HostName := ConnParam.Host;
    Port := ConnParam.Port;
    Database := ConnParam.DataBase;
    User := ConnParam.User;
    Password := ConnParam.Pass;
    Properties.Clear;
    Properties.Add('codepage=latin1');
    Properties.Add(Format('application_name=Lorencini: %s %s',
      [StringReplace(appimage, ExtractFileExt(appimage), EmptyStr, [rfReplaceAll, rfIgnoreCase]) ,
       GetBuildInfo(appname)]));
    AfterConnect := DoAfterConnection; 
  end;
  
  FTrash.Add(FConn);
end;

procedure TServiceBase.CreateSession;
begin
  if U.Info.Session = EmptyStr then
    with U.Data.Query do
    try
      SQL.Text := Format(
        'select sys_login(%s, %s)',
          [QuotedStr('nao-responda@lorencini.com.br'), QuotedStr(mcMD5('LdjbrVW7KUE3I1Br'))]);
      Open;
      U.Info.RefreshSessionFromDB;
    finally
      Close;
    end;
end;

destructor TServiceBase.Destroy;
begin
  FTrash.Clear;
  FreeAndNil(FTrash);
  inherited;
end;

procedure TServiceBase.DoExec;
begin

end;

procedure TServiceBase.DoLog;
begin
  if (FTable_ <> -1) and  (FRecno_ <> -1) then
  try
    with Qry do
    begin
      SQL.Add('select log(:desc, :log, :table_, :recno_, false, 4, 3)');
      Params[0].AsString := FDescription;
      Params[1].AsMemo := FLog;
      Params[2].AsInteger := FTable_;
      Params[3].AsInteger := FRecno_;

      ExecSQL;
    end;
  except
    on E:exception do
      FLastError := E.Message;
  end;

  if Assigned(FOnLog) then
  try
    FOnLog(Self, FLog);
  except
    on E:exception do
      FLastError := E.Message;
  end;
end;

procedure TServiceBase.Execute;
begin
  try
    Initialize;  

    DoExec;
  except
    on E:Exception do
      FLastError := E.Message
  end;
end;

function TServiceBase.Qry: TZReadOnlyQuery;
begin
  Result := TZReadOnlyQuery.Create(nil);
  Result.Connection := FConn;
  FTrash.Add(Result);
end;

procedure TServiceBase.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

procedure TServiceBase.SetRecno_(const Value: Integer);
begin
  FRecno_ := Value;
end;

procedure TServiceBase.SetTable_(const Value: Integer);
begin
  FTable_ := Value;
end;

procedure TServiceBase.Initialize;
begin

end;

procedure TServiceBase.Log(const Msg: string);
begin
  FLog := Msg;
  Synchronize(DoLog);
end;

procedure TServiceBase.Log(const Msg: string; const Args: array of const);
begin
  Log(Format(Msg, Args));
end;

end.
