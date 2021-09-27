unit uDMCore;

interface

uses
  SysUtils, Classes, ZConnection, ExtCtrls, DB, ZAbstractRODataset, ZDataset,
  ServiceBase, ZAbstractConnection;

type
  TdmCore = class(TDataModule)
    pgConn: TZConnection;
    Monitor: TTimer;
    zQry: TZReadOnlyQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure MonitorTimer(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure pgConnAfterConnect(Sender: TObject);
  private
    FDBError: String;
    FID: string;
    FTasks: TThreadList;
    FOnLog: TNotifyEventLog;
    FFirstExec: Boolean;
    FOnLogSMTP: TNotifyEventLog;
    FOnLogSchedule: TNotifyEventLog;
    procedure ProcessFinished(Sender: TObject);
    procedure SetDBError(const Value: String);
    procedure ProcessNextTask;
    procedure Log(Sender: TObject; const MsgLog: string); overload;
    procedure Log(Sender: TObject; const MsgLog: string; const Args: array of const); overload;
    procedure Log(const MsgLog: string); overload;
    procedure Log(const MsgLog: string; const Args: array of const); overload;
    procedure Initialize;
    procedure ProcessMailQueue;
    procedure ProcessScheduleQueue;
  public
    { Public declarations }
    property DBError: String read FDBError write SetDBError;
    property ID: string read FID;

    property OnLog: TNotifyEventLog read FOnLog write FOnLog;
    property OnLogSchedule: TNotifyEventLog read FOnLogSchedule write FOnLogSchedule;
    property OnLogSMTP: TNotifyEventLog read FOnLogSMTP write FOnLogSMTP;
  end;

var
  dmCore: TdmCore;

implementation

uses ServiceCFG, ActiveX, ComObj, uIUtils, ServiceSMTP, mcutils, IdSSLOpenSSL,
  IdExplicitTLSClientServerBase, IdSMTP, ServiceTask;

{$R *.dfm}

procedure TdmCore.DataModuleCreate(Sender: TObject);
var
  aGuid: TGUID;
  appname: string;
  appimage: string;
begin
  inherited;
  FFirstExec := True;
  appname := ParamStr(0);
  appimage := ExtractFileName(appname);

  if CoCreateGuid(aGuid) = S_OK then
    FID := GUIDToString(aGuid)
  else
    FID := FormatDateTime('ddmmyyyhhnnsszzz', Now);

  FDBError := EmptyStr;
  with TServiceCFG.GetInstance.ConnParams do
  begin
    pgConn.Protocol := Protocol;
    pgConn.HostName := Host;
    pgConn.Port := Port;
    pgConn.Database := DataBase;
    pgConn.User := User;
    pgConn.Password := Pass;
    pgConn.Properties.Clear;
    pgConn.Properties.Add('codepage=latin1');
    pgConn.Properties.Add(Format('application_name=Lorencini: %s %s',
      [StringReplace(appimage, ExtractFileExt(appimage), EmptyStr, [rfReplaceAll, rfIgnoreCase]) ,
       GetBuildInfo(appname)]));
  end;

  try
    pgConn.Connect;
    pgConn.Disconnect;

    with U.Data.DataInfo do
    begin
      Protocol := pgConn.Protocol;
      HostName := pgConn.HostName;
      Port := pgConn.Port;
      Database := pgConn.Database;
      User := pgConn.User;
      Password := pgConn.Password;
    end;

    U.Data.RefreshConnParams;

    pgConn.AfterConnect := pgConnAfterConnect;
  except
    on e:Exception do
      FDBError := e.Message;
  end;

  FTasks := TThreadList.Create;
end;

procedure TdmCore.DataModuleDestroy(Sender: TObject);
var
  i: Integer;
  tasks: TList;
begin
  Monitor.Enabled := False;

  tasks := FTasks.LockList;
  try
    FTasks.Clear;
  finally
    FTasks.UnlockList;
  end;
  FreeAndNil(FTasks);

  zQry.SQL.Text := 'select sys_session_release()';
  zQry.ExecSQL;
end;

procedure TdmCore.Initialize;
var
  authTyp: string;
  tlsTyp: string;
begin
  if not FFirstExec then
    Exit;

  zQry.SQL.Text :=
  'select sys_paramv(''smtp_server''), sys_parami(''smtp_port''), '+
         'sys_paramv(''smtp_user''), sys_paramv(''smtp_username''), '+
         'sys_paramv(''smtp_pass''), sys_paramb(''smtp_tls_enable''), '+
         'sys_paramv(''smtp_tls_mode''), sys_paramv(''smtp_tls_use''), '+
         'sys_paramv(''smtp_auth_type'')';
  zQry.Open;
  try
    with TServiceCFG.GetInstance.Smtp do
    begin
      AuthType := satDefault;

      if zQry.Fields[8].AsString = 'SASL' then
        AuthType := satSASL;

      Server := zQry.Fields[0].AsString;
      Port := zQry.Fields[1].AsInteger;
      User := zQry.Fields[2].AsString;
      UserName := zQry.Fields[3].AsString;
      Password := zQry.Fields[4].AsString;
      SSL_Enabled := zQry.Fields[5].AsBoolean;
      authTyp := zQry.Fields[6].AsString;
      tlsTyp := zQry.Fields[7].AsString;
      if SSL_Enabled then
      begin
        if authTyp = 'SSLv2' then
          SSLMode := sslvSSLv2;
        if authTyp = 'SSLv23' then
          SSLMode := sslvSSLv23;
        if authTyp = 'SSLv3' then
          SSLMode := sslvSSLv3;
        if authTyp = 'TLSv1' then
          SSLMode := sslvTLSv1;
        if authTyp = 'TLSv1_1' then
          SSLMode := sslvTLSv1_1;
        if authTyp = 'TLSv1_2' then
          SSLMode := sslvTLSv1_2;

        TLS := utNoTLSSupport;

        if tlsTyp = 'Implicit' then
          TLS := utUseImplicitTLS;
        if tlsTyp = 'Require' then
          TLS := utUseRequireTLS;
        if tlsTyp = 'Explicit' then
          TLS := utUseExplicitTLS;
      end;
    end;
  finally
    zQry.Close;
  end;

  FFirstExec := False;
end;

procedure TdmCore.Log(const MsgLog: string);
begin
  Log(Self, MsgLog);
end;

procedure TdmCore.Log(const MsgLog: string; const Args: array of const);
begin
  Log(Self, MsgLog, Args);
end;

procedure TdmCore.Log(Sender: TObject; const MsgLog: string; const Args: array of const);
begin
  Log(Sender, Format(MsgLog, Args));
end;

procedure TdmCore.Log(Sender: TObject; const MsgLog: string);
begin
  if Assigned(FOnLog) then
    FOnLog(Self, FormatDateTime('dd/mm/yyyy hh:nn:ss:zzz', Now) + ' | ' + MsgLog);
end;

procedure TdmCore.MonitorTimer(Sender: TObject);
begin
  Monitor.Enabled := False;

  try
    Initialize;
  except
    on e:exception do
    begin
      Log('Erro de inicialização: %s', [e.Message]);
      raise;
    end;
  end;

  ProcessMailQueue;
  ProcessScheduleQueue;

  ProcessNextTask;
end;

procedure TdmCore.pgConnAfterConnect(Sender: TObject);
var
  oQry: TZReadOnlyQuery;
  loginEvent, account: Integer;
begin
  pgConn.AfterConnect := nil;
  oQry := TZReadOnlyQuery.Create(nil);
  oQry.Connection := pgConn;
  try
    oQry.SQL.Text := 'select sys_auth(:user, md5(:pass))';
    oQry.ParamByName('user').AsString := 'sistema@lorencinibrasil.com.br';
    oQry.ParamByName('pass').AsString := 'm4n4g3r.@';
    oQry.Open;

    loginEvent := oQry.Fields.Fields[0].AsInteger;

    oQry.SQL.Text :=
      'select event, label, account '+
        'from vlogin_events '+
       'where recno = :transaction';

    oQry.ParamByName('transaction').AsInteger := loginEvent;
    oQry.Open;

    if oQry.FieldByName('event').AsInteger <> 0 then
      raise Exception.Create(oQry.FieldByName('label').AsString);

    account := oQry.FieldByName('account').AsInteger;

    try
      oQry.SQL.Text := 'select sys_session_create(:account);';
      oQry.ParamByName('account').AsInteger := account;
      oQry.Open;
    except
    end;

    U.Info.RefreshSessionFromDB(account);
  finally
    oQry.Close;
    FreeAndNil(oQry);
    pgConn.AfterConnect := pgConnAfterConnect;
  end;
end;

procedure TdmCore.ProcessFinished(Sender: TObject);
begin
  try
    if (TServiceBase(Sender).LastError <> EmptyStr) then
      Log(TServiceBase(Sender).LastError);
    
    FTasks.Remove(Sender);
  finally
    ProcessNextTask;
  end;
end;

procedure TdmCore.ProcessMailQueue;
var
  ThreadMail: TServiceSMTP;
begin
  try
    {Marcando mensagens}
    zQry.SQL.Text :=
    'update sys_email '+
       'set id = :id '+
     'where id is null '+
       'and status = 1 '+
       'and coalesce(schedule, localtimestamp) <= localtimestamp ';

    zQry.Params[0].AsString := FID;
    zQry.ExecSQL;

    {Selecionando mensagens}
    zQry.SQL.Text :=
    'select recno, table_, recno_ '+
      'from sys_email '+
     'where id = :id '+
     'order by entry_';

    zQry.Params[0].AsString := FID;
    zQry.Open;

    if not zQry.IsEmpty then
      if zQry.RecordCount = 1 then
        Log('Processando 1 mensagem')
      else
        Log('Processando %d mensagens', [zQry.RecordCount]);

    while not zQry.Eof do
    begin
      ThreadMail := TServiceSMTP.Create(TServiceCFG.GetInstance.ConnParams);
      ThreadMail.Description := 'Serviço de envio de e-mail.';
      ThreadMail.OnLog := FOnLogSMTP;
      ThreadMail.OnTerminate := ProcessFinished;
      ThreadMail.Recno := zQry.Fields[0].AsInteger;
      ThreadMail.Table_ := zQry.Fields[1].AsInteger;
      ThreadMail.Recno_ := zQry.Fields[2].AsInteger;
      ThreadMail.SMTP.Assign(TServiceCFG.GetInstance.Smtp);

      FTasks.Add(ThreadMail);

      zQry.Next;
    end;
  finally
    zQry.Close;
  end;
end;

procedure TdmCore.ProcessNextTask;
var
  tasks: TList;
begin
  tasks := FTasks.LockList;
  try
  // Executa próxima thread
  if tasks.Count > 0 then
    TThread(tasks.First).Resume
  else
    Monitor.Enabled := True;
  finally
    FTasks.UnlockList;
  end;
end;

procedure TdmCore.ProcessScheduleQueue;
const
  SYS_SCHEDULES: integer = 262;
var
  task : TServiceTask;
begin
  try
    zQry.SQL.Text :=
    'select ss.descri, ss.recno, x.schedule_recno, x.execucao, ss.fn '+
      'from sys_schedules_setup ss '+
           'join (select s.agendamento, min(recno) schedule_recno, min(execucao) execucao '+
                   'from sys_schedules s '+
                  'where s.status = 0 '+
                    'and s.execucao <= now() '+
                  'group by s.agendamento) x '+
             'on x.agendamento = ss.recno;';

    zQry.Open;

    while not zQry.Eof do
    begin
      task := TServiceTask.Create(TServiceCFG.GetInstance.ConnParams);
      task.Description := zQry.FieldByName('descri').AsString;
      task.Routine := zQry.FieldByName('fn').AsString;
      task.ScheduledTo := zQry.FieldByName('execucao').AsDateTime;
      task.OnLog := FOnLogSchedule;
      task.OnTerminate := ProcessFinished;
      task.Table_ := SYS_SCHEDULES;
      task.Recno_ := zQry.FieldByName('schedule_recno').AsInteger;

      FTasks.Add(task);

      zQry.Next;
    end;
  finally
    zQry.Close;
  end;
end;

procedure TdmCore.SetDBError(const Value: String);
begin
  FDBError := Value;
end;

end.
