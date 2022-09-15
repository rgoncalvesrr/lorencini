unit uilogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uiwizard, ActnList, StdCtrls, ExtCtrls, Buttons, uIForm, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvExStdCtrls, JvEdit;

type
  TILogin = class(TIForm)
    Label3: TLabel;
    Label4: TLabel;
    edUserName: TEdit;
    Label1: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Panel3: TPanel;
    Label6: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    edPassword: TJvEdit;
    Shape1: TShape;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    actPassRenew: TAction;
    procedure edUserNameChange(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure edUserNameExit(Sender: TObject);
    procedure actPassRenewExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ILogin: TILogin;

implementation

{$R *.dfm}

uses mcUtils, uIUtils, ZDataset, DB, iExcept, uSysSecurityChangePass, uResources;

procedure TILogin.actPassRenewExecute(Sender: TObject);
begin
  inherited;
  with U.Data.Query do
  try
    SQL.Text := 'select sys_account_reset_pass(:email)';
    ParamByName('email').AsString := edUserName.Text;
    ExecSQL;
    
    ShowMessage(Format('Senha provisória enviada para %s', [edUserName.Text]));
  finally
    Close;
  end;
end;

procedure TILogin.edUserNameChange(Sender: TObject);
begin
  actOk.Enabled:= not mcEmpty(edUserName.Text) and not mcEmpty(edPassword.Text);
  actPassRenew.Enabled := not mcEmpty(edUserName.Text);
end;

procedure TILogin.edUserNameExit(Sender: TObject);
begin
  inherited;
  if (pos('@', edUserName.Text) = 0) then
    edUserName.Text := edUserName.Text + '@lorencini.com.br';
end;

procedure TILogin.FormResize(Sender: TObject);
begin
  inherited;

  Panel1.Left := (ClientWidth - Panel1.Width) div 2;
  Panel3.Left := (ClientWidth - Panel3.Width) div 2;
  Panel3.Top := Panel1.Top + Panel1.Height + 60;

  Label1.Top := ClientHeight - Label1.Height - 20;
  Label1.Left := 0;
  Label1.Width := ClientWidth;
end;

procedure TILogin.actOkExecute(Sender: TObject);
var
  loginEvent: Integer;
  msgLabel: string;
  account: Integer;
begin
  with U.Query do
  try
    SQL.Text := 'select sys_login(:user, :pass)';
    ParamByName('user').AsString := LowerCase(edUserName.Text);
    ParamByName('pass').AsString := mcMD5(edPassword.Text);
    Open;

    loginEvent := Fields.Fields[0].AsInteger;

    SQL.Text :=
      'select le.event, le.registred, e.label, le.email, le.account, le.detail '+
        'from sys_login_events le '+
             'join sys_auth_events e '+
               'on e.event = le.event '+
       'where le.recno = :login_event';

    ParamByName('login_event').AsInteger := loginEvent;

    Open;

    account := FieldByName('account').AsInteger;

    if Fields.Fields[0].AsInteger <> 0 then
      if Fields.Fields[0].AsInteger = 60 then
      begin
        msgLabel := FieldByName('label').AsString;

        SQL.Text := 'select sys_account_reset_pass(:email);';
        ParamByName('email').AsString := LowerCase(edUserName.Text);
        ExecSQL;

        raise ELogin.CreateFmt('%s. Enviamos um nova senha temporária para o e-mail "%s".',
          [msgLabel, LowerCase(edUserName.Text)]);
      end
      else
        raise ELogin.Create(FieldByName('label').AsString);

    U.Info.RefreshSessionFromDB(account);

    SQL.Text := 'select sys_chpass()';

    Open;

    if Fields[0].AsBoolean then
    begin
      Application.CreateForm(TSysSecurityChangePass, SysSecurityChangePass);
      SysSecurityChangePass.ShowModal;
      if SysSecurityChangePass.ExecCount <= 0 then
      begin
        U.ExecuteSQL('select sys_session_release()');
        Abort;
      end;
    end;

    U.Info.RefreshSessionFromDB(account);
    
    inherited;

    Self.Close;
  finally
    Close;
  end;
end;

end.
