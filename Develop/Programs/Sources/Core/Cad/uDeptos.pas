unit uDeptos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Menus,
  ActnList, Grids, DBGrids, ComCtrls, StdCtrls, Buttons, Mask, ExtCtrls, ToolWin,
  ZSqlUpdate;

type
  TDeptos = class(TIDefBrowse)
    IBrwSrcdepto: TIntegerField;
    IBrwSrcdescri: TStringField;
    IBrwSrcqtdativos: TFloatField;
    IBrwSrcrecno: TIntegerField;
    ZUpdateSQL1: TZUpdateSQL;
    procedure IBrwSrcAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    procedure OnEdit; Override;
  public
    { Public declarations }
  end;

var
  Deptos: TDeptos;

implementation

{$R *.dfm}

uses uDM, uDeptosM;


{ TDeptos }

procedure TDeptos.IBrwSrcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  IBrwSrcqtdativos.AsFloat:= 0;
end;

procedure TDeptos.OnEdit;
begin
  Application.CreateForm(TDeptosM, DeptosM);
  DeptosM.DataSet:= IBrwSrc;
  DeptosM.ShowModal;
end;

initialization
  RegisterClass(TDeptos);


end.
