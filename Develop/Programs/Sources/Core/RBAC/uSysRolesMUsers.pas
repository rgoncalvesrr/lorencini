unit uSysRolesMUsers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids,
  StdCtrls, DBCtrls, Mask, Buttons;

type
  TSysRolesMUsers = class(TIDefBrowseEdit)
    Panel2: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel5: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Panel6: TPanel;
    DBCheckBox1: TDBCheckBox;
    Bevel1: TBevel;
    Panel7: TPanel;
    Panel8: TPanel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Panel14: TPanel;
    SpeedButton3: TSpeedButton;
    Panel9: TPanel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Panel10: TPanel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Panel11: TPanel;
    DBCheckBox2: TDBCheckBox;
    actFindUser: TAction;
    procedure DBEdit3Exit(Sender: TObject);
    procedure actFindUserExecute(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  SysRolesMUsers: TSysRolesMUsers;

implementation

{$R *.dfm}

uses uSysRoles, uIUtils, mcutils, DB, uSysUsers;

procedure TSysRolesMUsers.actFindUserExecute(Sender: TObject);
begin
  inherited;
  SysUsers := TSysUsers.Create(nil);
  try
    SysUsers.DisplayMode := dmQuery;
    SysUsers.ShowModal;
    if (SysUsers.Execute) then
    begin
      DataSet.FieldByName('username').AsString := SysUsers.IBrwSrcusername.AsString;
      DBEdit3Exit(DBEdit3);
    end;
  finally
    FreeAndNil(SysUsers);
  end;
  
end;

procedure TSysRolesMUsers.DBEdit3Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(TDBEdit(Sender).Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('name');
    fLkp.Add('email');
    fLkp.Add('active');

    if U.Data.CheckFK('sys_users', 'username', QuotedStr(TDBEdit(Sender).Text), fLkp) then
    begin
      DataSet.FieldByName('name').AsString := fLkp[0];
      DataSet.FieldByName('email').AsString := fLkp[1];
      DataSet.FieldByName('active').AsString := fLkp[2];
    end
    else
    begin
      U.Out.ShowErro('Usuário não cadastrado.');
      TDBEdit(Sender).SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TSysRolesMUsers.RefreshControls;
begin
  inherited;
  if not Assigned(DataSet) then
    Exit;

  actFindUser.Enabled := (DataSet.State in [dsEdit, dsInsert]);
end;

end.
