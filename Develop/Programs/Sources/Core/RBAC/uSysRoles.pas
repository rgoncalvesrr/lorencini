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
    qAccounts: TZQuery;
    uAccounts: TZUpdateSQL;
    sAccounts: TZSequence;
    dsAccounts: TDataSource;
    qGrants: TZQuery;
    qGrantsgrant_: TStringField;
    qGrantsrole: TIntegerField;
    qGrantsrecno: TIntegerField;
    qGrantsdescri: TStringField;
    qGrantsform: TStringField;
    dsGrants: TDataSource;
    uGrants: TZUpdateSQL;
    sGrants: TZSequence;
    qAccountsrole: TIntegerField;
    qAccountsrecno: TIntegerField;
    qAccountsaccount: TLargeintField;
    qAccountsnome: TStringField;
    qAccountssituacao: TIntegerField;
    qAccountsemail: TStringField;
    qAccountsstatus: TIntegerField;
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
    procedure qAccountsAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qGrantsAfterInsert(DataSet: TDataSet);
    procedure qGrantsAfterRefresh(DataSet: TDataSet);
    procedure qAccountssituacaoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
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
  qAccounts.ParamByName('role').AsInteger := IBrwSrcrecno.AsInteger;
  qGrants.ParamByName('role').AsInteger := IBrwSrcrecno.AsInteger;
  G.RefreshDataSet(qAccounts);
  G.RefreshDataSet(qGrants);
end;

procedure TSysRoles.OnEdit;
begin
  SysRolesM := TSysRolesM.Create(nil);
  try
    SysRolesM.ScreenType := stMasterDetail;
    SysRolesM.DataSet := IBrwSrc;
    SysRolesM.ChildDataSet := qAccounts;
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

procedure TSysRoles.qAccountsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qAccountsrole.AsInteger := IBrwSrcrecno.AsInteger;
end;

procedure TSysRoles.qAccountssituacaoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  case sender.AsInteger of
    0: Text := 'Inativo';
    1: Text := 'Ativo';
  end;
end;

initialization
  RegisterClass(TSysRoles);

finalization
  UnRegisterClass(TSysRoles);

end.
