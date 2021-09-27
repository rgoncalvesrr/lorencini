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
    Panel9: TPanel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    procedure DBEdit3Exit(Sender: TObject);
  private
  public
  end;

var
  SysRolesMUsers: TSysRolesMUsers;

implementation

{$R *.dfm}

uses uSysRoles, uIUtils, mcutils, DB;

procedure TSysRolesMUsers.DBEdit3Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(TDBEdit(Sender).Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  if (Pos('@', TDBEdit(Sender).Text) = 0) then
    TDBEdit(Sender).Text := TDBEdit(Sender).Text + '@lorencini.com.br';

  try
    fLkp:= TStringList.Create;
    fLkp.Add('nome');

    if U.Data.CheckFK('contatos', 'email', QuotedStr(TDBEdit(Sender).Text), fLkp) then
      DataSet.FieldByName('nome').AsString := fLkp[0]
    else
    begin
      U.Out.ShowErro('Contato não localizado.');
      TDBEdit(Sender).SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

end.
