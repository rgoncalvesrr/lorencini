unit ServiceSMTP;

interface

uses
  Classes, SysUtils, ServiceBase, IdMessage, IdEMailAddress, IdAttachmentFile, IdAttachment, idText, IdSSLOpenSSL,
  IdIOHandler, idCTypes, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdMessageClient, IdSMTPBase, IdSMTP, ServiceCFG, ZDataset, IdSASLLogin, IdUserPassProvider;

type
  EServiceSMTP = Exception;

  TServiceSMTP = class(TServiceBase)
  private
    FIdSMTP : TIdSMTP;
    FIdSASLLogin: TIdSASLLogin;
    FIdUserPassProvider: TIdUserPassProvider;
    FIdSSL : TIdSSLIOHandlerSocketOpenSSL;
    FIdMessage : TIdMessage;
	  FIdCorpo : TIdText;
	  FIdAnexo : TIdAttachmentFile;
    FRecno: Integer;
    FSMTP: TServiceCFGSmtp;
    qMSG: TZReadOnlyQuery;
    qDST: TZReadOnlyQuery;
    qAtt: TZReadOnlyQuery;
    procedure SetRecno(const Value: Integer);
  protected
    procedure PrepareData;
    procedure DoExec; override;
    procedure Initialize; override;
  public
    constructor Create(ConnParam: TServiceCFGConnParams); override;
    property Recno: Integer read FRecno write SetRecno;
    property SMTP: TServiceCFGSmtp read FSMTP;
  end;

implementation

{ TServiceSMTP }

constructor TServiceSMTP.Create(ConnParam: TServiceCFGConnParams);
begin
  inherited;
  FIdSMTP := TIdSMTP.Create(nil);
  FIdSASLLogin := TIdSASLLogin.Create(nil);
  FIdUserPassProvider := TIdUserPassProvider.Create(nil);
  FSMTP := TServiceCFGSmtp.Create;
  Trash.Add(FIdSMTP);
  Trash.Add(FIdSASLLogin);
  Trash.Add(FIdUserPassProvider);
  Trash.Add(FSMTP);
end;

procedure TServiceSMTP.DoExec;
var
  idEMA : TIdEMailAddressItem;
  sAnexo: String;
  iStatus: Integer; 
begin
  inherited;
  try
    PrepareData;

    with qMSG do
    begin
      FIdMessage := TIdMessage.Create(nil);
      Trash.Add(FIdMessage);

      with FIdSMTP do
      begin
        // Cria a Estrutura da Mensagem
        FIdMessage.Clear;
        FIdMessage.IsEncoded := True;
        FIdMessage.AttachmentEncoding := 'MIME';
        FIdMessage.Encoding := meMIME; // meDefault;
        FIdMessage.ConvertPreamble := True;
        FIdMessage.Priority := mpNormal;
        FIdMessage.ContentType := 'multipart/mixed'; // obrigatoriamente!
        FIdMessage.CharSet := FieldByName('charset_').AsString;
        FIdMessage.Date := Now;
        FIdMessage.ReplyTo.Add.Address := 'nao-responda@lorencini.com.br';

        qDST.First;

        // Processa contatos
        while not qDST.Eof do
        begin
          // Adiciona contato a lista apropriada
          case qDST.FieldByName('type_').AsInteger of
            1: idEMA := FIdMessage.Recipients.Add;
            2: idEMA := FIdMessage.CCList.Add;
            3: idEMA := FIdMessage.BccList.Add;
          else
            raise EServiceSMTP.Create('Tipo de destinatário desconhecido.');
          end;

          idEMA.Name := qDST.FieldByName('to_name').AsString;
          idEMA.Address := qDST.FieldByName('to_').AsString;

          Log(Format('Enviando mensagem: "%s" para "%s <%s>"',
            [FieldByName('subject').AsString, idEMA.Name, idEMA.Address]));

          qDST.Next;
        end;

        // Define o Remetente
        idEMA := FIdMessage.FromList.Add;
        idEMA.Address := FieldByName('from_').AsString; // ou '[EMAIL PROTECTED]'
        idEMA.Name := FieldByName('from_name').AsString;

        // Assunto
        FIdMessage.Subject := FieldByName('subject').AsString;

        // Adiciona o CORPO da Mensagem:
        FIdCorpo := TIdText.Create(FIdMessage.MessageParts,nil);
        FIdCorpo.ContentType := FieldByName('contenttype').AsString;
        FIdCorpo.ContentDescription := 'multipart-1';
        FIdCorpo.CharSet := FieldByName('charset_').AsString; // LINGUAGEM
        FIdCorpo.ContentTransfer := '16bit'; // para SAIR ACENTUADO !!!! Pois, 8bit SAI SEM ACENTO !!!!
        FIdCorpo.ContentDescription := 'Corpo da Mensagem';
        FIdCorpo.Body.Clear;
        FIdCorpo.Body.Add(FieldByName('message').AsString);

        qAtt.First;

        // Processa anexos da mensagem
        while not qAtt.Eof do
        begin
          if FileExists(qAtt.FieldByName('attach_name').AsString) then
          begin
            // Cria anexo
            FIdAnexo := TIdAttachmentFile.Create(FIdMessage.MessageParts, qAtt.FieldByName('attach_name').AsString);
            Trash.Add(FIdAnexo);

            FIdAnexo.ContentType := qAtt.FieldByName('contenttype').AsString;
            FIdAnexo.FileName := ExtractFileName(qAtt.FieldByName('attach_name').AsString);
            FIdAnexo.ContentDescription := 'Arquivo Anexo: ' + ExtractFileName(FIdAnexo.FileName);
          end else
            raise EServiceSMTP.CreateFmt('Anexo %s não localizado.', [qAtt.FieldByName('attach_name').AsString]);

          qAtt.Next;
        end;

        Send(FIdMessage);
      end;
    end;
    iStatus := 2;
    Log('E-mail enviado com sucesso.');
  except
    on E:Exception do
    begin
      Log(E.Message);
      iStatus := 3;
    end;
  end;

  with Qry do
  begin
    SQL.Text :=
    'update sys_email '+
       'set status = :status, id = null, send_ = localtimestamp '+
     'where recno = :recno ';

    Params[0].AsInteger := iStatus;
    Params[1].AsInteger := FRecno;

    ExecSQL;
  end;
end;

procedure TServiceSMTP.Initialize;
begin
  inherited;

  // Configura Conexão
  with FIdSMTP Do
  begin
    AuthType := SMTP.AuthType;
    ReadTimeout := 0;
    ConnectTimeout := 0;
    Host := SMTP.Server;
    Port := SMTP.Port;
    UserName := SMTP.User;
    Password := SMTP.Password;

    if AuthType = satSASL then
    begin
      FIdUserPassProvider.Username := SMTP.User;
      FIdUserPassProvider.Password := SMTP.Password;
      FIdSASLLogin.UserPassProvider := FIdUserPassProvider;
      SASLMechanisms.Add.SASL := FIdSASLLogin;
    end;

    if SMTP.SSL_Enabled or (SMTP.TLS <> utNoTLSSupport) then
    begin
      FIdSSL := TIdSSLIOHandlerSocketOpenSSL.Create( nil );
      IOHandler := FIdSSL;
      FIdSSL.DefaultPort := Port;
      FIdSSL.SSLOptions.Method := SMTP.SSLMode;
      FIdSSL.SSLOptions.Mode := sslmClient;
      UseTLS := SMTP.TLS;
      Trash.Add(FIdSSL);
    end;
  end;
end;

procedure TServiceSMTP.PrepareData;
begin
  // Configura Conexão
  with FIdSMTP Do
  try
    Connect;
    Authenticate;
  except
    on E: Exception do
    begin
      IOHandler := TIdIOHandler.MakeDefaultIOHandler( nil );
      UseTLS := utNoTLSSupport;
      if SMTP.SSL_Enabled or (SMTP.TLS <> utNoTLSSupport) then
        Log('SSL da Autenticação Segura Falhou.')
      else
        Log('Autenticação Falhou.');

      Log('Pode ser uma instabilidade temporária na conexão de sua Internet.');
      Log('Uma nova tentativa de envio ocorrerá em 10 minutos.');
      Log('Mensagem:');
      Log(E.Message);

      raise EServiceSMTP.Create(E.Message);
    end;
  end;

  // Tabela da fila de mensagens
  qMSG := Qry;
  qMSG.SQL.Text :=
  'select from_, from_name, contenttype, charset_, subject, message ' +
    'from sys_email '+
   'where recno = :recno';

  qMSG.Params[0].AsInteger := FRecno;
  qMSG.Open;

  // Tabela de destinatários da mensagem
  qDST := Qry;
  qDST.SQL.Text :=
  'select type_, to_, to_name '+
    'from sys_emailto '+
   'where email = :email '+
   'order by type_, to_name, to_';
  qDST.Params[0].AsInteger := FRecno;
  qDST.Open;

  // Tabela de anexos
  qAtt := Qry;
  qAtt.SQL.Text :=
  'select contenttype, attach_name ' +
    'from sys_emailatach '+
   'where email = :email ';
  qAtt.Params[0].AsInteger := FRecno;
  qAtt.Open;
end;

procedure TServiceSMTP.SetRecno(const Value: Integer);
begin
  FRecno := Value;
end;

end.
