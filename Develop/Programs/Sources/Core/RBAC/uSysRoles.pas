unit uSysRoles;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids,
  DBGrids, StdCtrls, Mask, Buttons, ZSequence;

type
  TSysRoles = class(TIDefBrowse)
    IBrwSrcrecno: TIntegerField;
    IBrwSrcdescri: TStringField;
    IBrwSrcsys_: TBooleanField;
    sBrwSrc: TZSequence;
    qUsers: TZQuery;
    qUsersrole: TIntegerField;
    qUsersrecno: TIntegerField;
    qUsersusername: TStringField;
    qUsersname: TStringField;
    qUsersactive: TBooleanField;
    qUsersemail: TStringField;
    uUsers: TZUpdateSQL;
    sUsers: TZSequence;
    dsUsers: TDataSource;
    qGrants: TZQuery;
    qGrantsgrant_: TStringField;
    qGrantsrole: TIntegerField;
    qGrantsrecno: TIntegerField;
    qGrantsdescri: TStringField;
    qGrantsform: TStringField;
    dsGrants: TDataSource;
    uGrants: TZUpdateSQL;
    sGrants: TZSequence;
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
    procedure qUsersAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qGrantsAfterInsert(DataSet: TDataSet);
    procedure qGrantsAfterRefresh(DataSet: TDataSet);
  private
    { Private declarations }
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  SysRoles: TSysRoles;

implementation

{$R *.dfm}

uses uDM, uSysRolesM, uIUtils, iTypes;


{ TSysRoles }

procedure TSysRoles.FormCreate(Sender: TObject);
begin
  inherited;
  SysRoles := Self;
end;

procedure TSysRoles.IBrwSrcAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qUsers.ParamByName('role').AsInteger := IBrwSrcrecno.AsInteger;
  qGrants.ParamByName('role').AsInteger := IBrwSrcrecno.AsInteger;
  G.RefreshDataSet(qUsers);
  G.RefreshDataSet(qGrants);
end;

procedure TSysRoles.OnEdit;
begin
  SysRolesM := TSysRolesM.Create(nil);
  try
    SysRolesM.ScreenType := stMasterDetail;
    SysRolesM.DataSet := IBrwSrc;
    SysRolesM.ChildDataSet := qUsers;
    SysRolesM.ShowModal;
  finally
    FreeAndNil(SysRolesM);
  end;

end;

procedure TSysRoles.qGrantsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qGrantsrole.AsInteger := IBrwSrcrecno.AsInteger;
end;

procedure TSysRoles.qGrantsAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  if Assigned(SysRolesM) then
    SysRolesM.RefreshTreeGrants;
end;

procedure TSysRoles.qUsersAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qUsersrole.AsInteger := IBrwSrcrecno.AsInteger;
end;

initialization
  RegisterClass(TSysRoles);

finalization
  UnRegisterClass(TSysRoles);

end.
