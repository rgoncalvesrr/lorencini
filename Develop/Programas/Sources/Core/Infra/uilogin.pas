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
    procedure edUserNameChange(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
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

procedure TILogin.edUserNameChange(Sender: TObject);
begin
  actOk.Enabled:= not mcEmpty(edUserName.Text) and not mcEmpty(edPassword.Text);
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
begin

  with U.Query do
  try
    try
      U.ExecuteSQL('select sys_create_session(%s, %s)',
        [QuotedStr(edUserName.Text), QuotedStr(mcMD5(edPassword.Text))]);
    except
      on E:Exception do
        raise ELogin.Create(U.Out.TranslateMSG(E.Message));
    end;

    SQL.Text := 'select sys_chpass()';

    Open;

    if Fields[0].AsBoolean then
    begin
      Application.CreateForm(TSysSecurityChangePass,SysSecurityChangePass);
      SysSecurityChangePass.ShowModal;
      if SysSecurityChangePass.ExecCount <= 0 then
      begin
        U.ExecuteSQL('select sys_release_session()');
        Abort;
      end;
    end;

    U.Info.RefreshSessionFromDB;
    
    inherited;

    Self.Close;
  finally
    Close;
  end;
end;

end.
