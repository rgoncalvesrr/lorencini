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
    FThreadList: TList;
    FOnLog: TNotifyEventLog;
    FFirstExec: Boolean;
    FOnLogSMTP: TNotifyEventLog;
    procedure ProcessoFinalizado(Sender: TObject);
    procedure SetDBError(const Value: String);
    procedure SendNextEMail;
    procedure Log(const Msg: string); overload;
    procedure Log(const Msg: string; const Args: array of const); overload;
    procedure Initialize;
  public
    { Public declarations }
    property DBError: String read FDBError write SetDBError;
    property ID: string read FID;

    property OnLogSMTP: TNotifyEventLog read FOnLogSMTP write FOnLogSMTP;
    property OnLog: TNotifyEventLog read FOnLog write FOnLog;
  end;

var
  dmCore: TdmCore;

implementation

uses ServiceCFG, ActiveX, ComObj, uIUtils, ServiceSMTP, mcutils, IdSSLOpenSSL, 
  IdExplicitTLSClientServerBase, IdSMTP;

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

  FThreadList := TList.Create;
end;

procedure TdmCore.DataModuleDestroy(Sender: TObject);
var
  i: Integer;
begin
  Monitor.Enabled := False;

  for i := 0 to FThreadList.Count - 1 do
    TServiceSMTP(FThreadList[i]).Free;

  FThreadList.Clear;
  FreeAndNil(FThreadList);

  zQry.SQL.Text := 'select sys_release_session()';
  zQry.ExecSQL;
end;

procedure TdmCore.Initialize;
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
      if SSL_Enabled then
      begin
        if zQry.Fields[6].AsString = 'SSLv2' then
          SSLMode := sslvSSLv2;
        if zQry.Fields[6].AsString = 'SSLv23' then
          SSLMode := sslvSSLv23;
        if zQry.Fields[6].AsString = 'SSLv3' then
          SSLMode := sslvSSLv3;
        if zQry.Fields[6].AsString = 'TLSv1' then
          SSLMode := sslvTLSv1;
        if zQry.Fields[6].AsString = 'TLSv1_1' then
          SSLMode := sslvTLSv1_1;
        if zQry.Fields[6].AsString = 'TLSv1_2' then
          SSLMode := sslvTLSv1_2;

        TLS := utNoTLSSupport;

        if zQry.Fields[7].AsString = 'Implicit' then
          TLS := utUseImplicitTLS;
        if zQry.Fields[7].AsString = 'Require' then
          TLS := utUseRequireTLS;
        if zQry.Fields[7].AsString = 'Explicit' then
          TLS := utUseExplicitTLS;
      end;
    end;
  finally
    zQry.Close;
  end;

  FFirstExec := False;
end;

procedure TdmCore.Log(const Msg: string; const Args: array of const);
begin
  Log(Format(Msg, Args));
end;

procedure TdmCore.Log(const Msg: string);
begin
  if Assigned(FOnLog) then
    FOnLog(Self, FormatDateTime('dd/mm/yyyy hh:nn:ss:zzz', Now) + ' ' + Msg);
end;

procedure TdmCore.MonitorTimer(Sender: TObject);
var
  oMail: TServiceSMTP;
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
        Log('Processando 0 mensagens', [zQry.RecordCount]);

    while not zQry.Eof do
    begin
      oMail := TServiceSMTP.Create(TServiceCFG.GetInstance.ConnParams);
      oMail.Description := 'Serviço de envio de e-mail.';
      oMail.OnLog := FOnLogSMTP;
      oMail.OnTerminate := ProcessoFinalizado;
      oMail.Recno := zQry.Fields[0].AsInteger;
      oMail.Recno_ := zQry.Fields[2].AsInteger;
      oMail.SMTP.Assign(TServiceCFG.GetInstance.Smtp);
      oMail.Table_ := zQry.Fields[1].AsInteger;

      FThreadList.Add(oMail);

      zQry.Next;
    end;
  finally
    zQry.Close;
  end;

  SendNextEMail;
end;

procedure TdmCore.pgConnAfterConnect(Sender: TObject);
var
  oQry: TZReadOnlyQuery;
begin
  pgConn.AfterConnect := nil;
  oQry := TZReadOnlyQuery.Create(nil);
  oQry.Connection := pgConn;
  try
    oQry.SQL.Text := Format(
      'select sys_create_session(%s, %s)',
        [QuotedStr('MANAGER'), QuotedStr(mcMD5('m4n4g3r.@'))]);
    oQry.ExecSQL;

    oQry.SQL.Text := 'select current_user';
    oQry.Open;
    
    U.Info.Session := oQry.Fields[0].AsString;
    U.Info.RefreshSessionFromDB;
  finally
    oQry.Close;
    FreeAndNil(oQry);
    pgConn.AfterConnect := pgConnAfterConnect;
  end;
end;

procedure TdmCore.ProcessoFinalizado(Sender: TObject);
begin
  FThreadList.Remove(Sender);
  FThreadList.Pack;
  SendNextEMail;
end;

procedure TdmCore.SendNextEMail;
begin
  // Executa próxima thread
  if FThreadList.Count > 0 then
    TServiceSMTP(FThreadList.First).Resume
  else
    Monitor.Enabled := True;
end;

procedure TdmCore.SetDBError(const Value: String);
begin
  FDBError := Value;
end;

end.
