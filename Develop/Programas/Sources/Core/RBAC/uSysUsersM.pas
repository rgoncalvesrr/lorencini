unit uSysUsersM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids,
  StdCtrls, DBCtrls, Mask, JvExStdCtrls, JvCombobox, JvDBCombobox;

type
  TSysUsersM = class(TIDefBrowseEdit)
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Panel9: TPanel;
    Panel10: TPanel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    Panel11: TPanel;
    Label5: TLabel;
    JvDBComboBox1: TJvDBComboBox;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure FillRoles;
  public
    { Public declarations }
  end;

var
  SysUsersM: TSysUsersM;

implementation

uses uSysUsers, uIUtils;

{$R *.dfm}

procedure TSysUsersM.FillRoles;
begin
  with JvDBComboBox1, U.Data.Query do
  try
    Items.BeginUpdate;
    Values.BeginUpdate;

    SQL.Text :=
    'select recno, descri ' +
      'from sys_roles ';

    Open;

    while not Eof do
    begin
      Items.Add(FieldByName('descri').AsString);
      Values.Add(FieldByName('recno').AsString);
      Next;
    end;
  finally
    Items.EndUpdate;
    Values.EndUpdate;
    Close;
  end;

end;

procedure TSysUsersM.FormShow(Sender: TObject);
begin
  inherited;
  FillRoles;  
end;

end.
