unit ServiceHttpClient;

interface

uses
  ServiceBase, ServiceCFG, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdZLibCompressorBase, IdCompressorZLib, uLkJSON, Classes,
  SysUtils;

type
  EServiceHttpClient = Exception;

  TServiceHttpClient = class(TServiceBase)
  private
    FHttpClient: TIdHTTP;
    FHTTPSSL: TIdSSLIOHandlerSocketOpenSSL;
    FHTTPCompressor: TIdCompressorZLib;
    FHeaders: TlkJSONobject;
    FBody: TlkJSONobject;
    FURI: string;
    FMethod: TIdHTTPMethod;
    FCallBack: string;
    FResponse: TStream;
    procedure SetHeaders(const Value: TlkJSONobject);
    procedure SetBody(const Value: TlkJSONobject);
    procedure SetURI(const Value: string);
    procedure SetMethod(const Value: TIdHTTPMethod);
    procedure SetCallBack(const Value: string);
    procedure Execute(HTTPMethod: string);
    procedure DoPost;
    procedure DoGet;
    procedure WriteResponse;
  protected
    procedure DoExec; override;
    procedure Initialize; override;
    procedure Finish;
  public
    constructor Create(ConnParam: TServiceCFGConnParams); override;
    destructor Destroy; override;

    property Body: TlkJSONobject read FBody write SetBody;
    property CallBack: string read FCallBack write SetCallBack;
    property Headers: TlkJSONobject read FHeaders write SetHeaders;
    property Method: TIdHTTPMethod read FMethod write SetMethod;
    property URI: string read FURI write SetURI;
  end;

implementation

uses
  IdGlobal, ZDataset, DB;

{ TServiceHttpClient }

constructor TServiceHttpClient.Create(ConnParam: TServiceCFGConnParams);
begin
  inherited;
  FHTTPSSL := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
  FHTTPCompressor := TIdCompressorZLib.Create(nil);
  FHttpClient := TIdHTTP.Create(nil);
  FHttpClient.IOHandler := FHTTPSSL;
  FHttpClient.Compressor := FHTTPCompressor;
  FResponse := TMemoryStream.Create;

  Trash.Add(FHttpClient);
  Trash.Add(FHTTPSSL);
  Trash.Add(FHTTPCompressor);
  Trash.Add(FResponse);
end;

destructor TServiceHttpClient.Destroy;
begin
  Synchronize(Finish);
  inherited;
end;

procedure TServiceHttpClient.DoExec;
begin
  inherited;

  try
    try
      Log('Executando requisição: %s %s', [Method, URI]);
      Execute(Method);
      SetStatus(Success);
      Log('Status %d Requisição: %s %s', [FHttpClient.ResponseCode, Method, URI]);
    except
      on E:Exception do
      begin
        Log(E.Message);
        SetStatus(Fail);
      end;
    end;
  finally
    WriteResponse;
  end;
end;

procedure TServiceHttpClient.DoGet;
begin
  FHttpClient.Get(URI, FResponse);
end;

procedure TServiceHttpClient.DoPost;
var
  RequestBody: TStream;
begin
  RequestBody := TMemoryStream.Create;
  try
    if Assigned(Body) then
      WriteStringToStream(RequestBody, TLkJson.GenerateText(Body));

    FHttpClient.Post(URI, RequestBody, FResponse);
  finally
    FreeAndNil(RequestBody);
  end;
end;

procedure TServiceHttpClient.Execute(HTTPMethod: string);
begin
  FResponse.Position := 0;
  
  if HTTPMethod = 'GET' then
    DoGet
  else if HTTPMethod = 'POST' then
    DoPost
  else
    raise EServiceHttpClient.CreateFmt('Http Method %s unknow', [HTTPMethod]);
end;

procedure TServiceHttpClient.Finish;
begin
  if Assigned(FHeaders) then
    FreeAndNil(FHeaders);

  if Assigned(FBody) then
    FreeAndNil(FBody);
end;

procedure TServiceHttpClient.Initialize;
var
  I: Integer;
  key: string;
  value: string;
begin
  inherited;
  FHttpClient.Request.CustomHeaders.Clear;

  FHTTPSSL.SSLOptions.Method := sslvTLSv1_2;
  FHTTPSSL.SSLOptions.Mode := sslmUnassigned;
  FHTTPSSL.SSLOptions.VerifyMode := [];

  if Assigned(FHeaders) then
    for I := 0 to FHeaders.Count - 1 do
    begin
      key := FHeaders.NameOf[i];
      value := FHeaders.FieldByIndex[i].Value;

      FHttpClient.Request.CustomHeaders.AddValue(key, value);
    end;
end;

procedure TServiceHttpClient.SetBody(const Value: TlkJSONobject);
begin
  FBody := Value;
end;

procedure TServiceHttpClient.SetCallBack(const Value: string);
begin
  FCallBack := Value;
end;

procedure TServiceHttpClient.SetHeaders(const Value: TlkJSONobject);
begin
  FHeaders := Value;
end;

procedure TServiceHttpClient.SetMethod(const Value: TIdHTTPMethod);
begin
  FMethod := Value;
end;

procedure TServiceHttpClient.SetURI(const Value: string);
begin
  FURI := Value;
end;

procedure TServiceHttpClient.WriteResponse;
var
  js: TlkJSONobject;
  I: Integer;
  HeaderName, HeaderContent, ResponseBody: string;
  WriteJson: boolean;
  Qry: TZReadOnlyQuery;
begin
  FResponse.Position := 0;

  Qry := QryRO(
  'update svc_cliapi '+
     'set res_headers = :res_headers, res_body = :res_body, res_code = :res_code, status = :status, '+
         'res_body_raw = :res_body_raw '+
   'where recno = :recno');

  Qry.ParamByName('recno').AsInteger    := Recno_;
  Qry.ParamByName('res_code').AsInteger := FHttpClient.ResponseCode;
  Qry.ParamByName('status').AsString    := StatusText;

  js := TlkJSONobject.Create;
  try
    for I := 0 to FHttpClient.Response.RawHeaders.Count - 1 do
    begin
      HeaderName    := FHttpClient.Response.RawHeaders.Names[i];
      HeaderContent := FHttpClient.Response.RawHeaders.Values[HeaderName];

      js.Add(HeaderName, HeaderContent);

      if LowerCase(HeaderName) = 'content-type' then
        WriteJson := Pos('application/json', LowerCase(HeaderContent)) > 0;
    end;
  finally
    Qry.ParamByName('res_headers').AsString := TLkJson.GenerateText(js);
    FreeAndNil(js);
  end;

  if FResponse.Size > 0 then
  begin
    FResponse.Seek(0, soBeginning);
    ResponseBody := UTF8Decode(ReadStringFromStream(FResponse));
    if WriteJson then
      Qry.ParamByName('res_body').AsString := ResponseBody
    else
      Qry.ParamByName('res_body_raw').AsString := ResponseBody;
  end;

  try
    Qry.ExecSQL;
  except
    on E:Exception do
    begin
      Log('ERRO!!! Não possível persistir as informações. Erro: %s', [E.Message]);
    end;
  end;

  if (CallBack <> EmptyStr) and (Status = Success) then
  begin
    Qry.SQL.Text := Format('select %s(%d);', [CallBack, Recno_]);
    Qry.ExecSQL;
  end;
end;

end.
