unit uSysUsers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids,
  DBGrids, StdCtrls, Mask, Buttons, ZSequence;

type
  TSysUsers = class(TIDefBrowse)
    IBrwSrcactive: TBooleanField;
    IBrwSrcusername: TStringField;
    IBrwSrcname: TStringField;
    IBrwSrcpassword: TStringField;
    IBrwSrcemail: TStringField;
    IBrwSrcchangepass: TBooleanField;
    IBrwSrcrecno: TIntegerField;
    sBrwSrc: TZSequence;
    Label1: TLabel;
    ComboBox1: TComboBox;
    IBrwSrcrole: TIntegerField;
    IBrwSrcdescri: TStringField;
    procedure actQueryProcessExecute(Sender: TObject);
    procedure IBrwSrcpasswordSetText(Sender: TField; const Text: string);
    procedure IBrwSrcAfterInsert(DataSet: TDataSet);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
    procedure SetDataSet(const Value: TZQuery); override;
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  SysUsers: TSysUsers;

implementation

{$R *.dfm}

uses uDM, uIUtils, mcUtils, uSysUsersM;

procedure TSysUsers.actQueryProcessExecute(Sender: TObject);
begin
  inherited;

  if ComboBox1.ItemIndex > 0 then
  begin
    case ComboBox1.ItemIndex of
      1: IBrwSrc.SQL.Add(' where active ');
      2: IBrwSrc.SQL.Add(' where not active ');
    end;
  end;
  
  G.RefreshDataSet(IBrwSrc);
end;

procedure TSysUsers.ComboBox1Change(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TSysUsers.IBrwSrcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  IBrwSrcactive.AsBoolean := True;
end;

procedure TSysUsers.IBrwSrcpasswordSetText(Sender: TField; const Text: string);
begin
  inherited;
  if not (IBrwSrc.State in [dsEdit, dsInsert]) then
    Exit;

  Sender.AsString := mcMD5(Text);
end;

procedure TSysUsers.OnEdit;
begin
  SysUsersM := TSysUsersM.Create(nil);
  try
    SysUsersM.DataSet := IBrwSrc;
    SysUsersM.ShowModal;
  finally
    FreeAndNil(SysUsersM);
  end;  

end;

procedure TSysUsers.SetDataSet(const Value: TZQuery);
begin
  inherited;
  actQueryProcessExecute(actQueryProcess);
end;

initialization
  RegisterClass(TSysUsers);

finalization
  UnRegisterClass(TSysUsers);

end.
