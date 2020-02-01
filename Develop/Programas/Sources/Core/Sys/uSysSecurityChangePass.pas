unit uSysSecurityChangePass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uiwizard, ActnList, StdCtrls, ExtCtrls, Buttons;

type
  TSysSecurityChangePass = class(TIWizard)
    Label3: TLabel;
    Label4: TLabel;
    edPass: TEdit;
    edRePass: TEdit;
    Bevel1: TBevel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure edPassChange(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SysSecurityChangePass: TSysSecurityChangePass;

implementation

{$R *.dfm}

uses mcUtils, uIUtils;

procedure TSysSecurityChangePass.actOkExecute(Sender: TObject);
begin
  U.ExecuteSQL(
    'update sys_users '+
       'set password = ''%s'', changepass = false '+
     'where username = ''%s''', [mcMD5(edPass.Text), U.Info.UserName]);

  inherited;
  Close;
end;

procedure TSysSecurityChangePass.edPassChange(Sender: TObject);
begin
  actOk.Enabled:= not mcEmpty(edPass.Text) and (edPass.Text = edRePass.Text);
end;

end.
