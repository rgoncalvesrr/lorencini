unit uAtivosTipos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Menus,
  ActnList, Grids, DBGrids, ComCtrls, StdCtrls, Buttons, Mask, ExtCtrls, ToolWin,
  ZSqlUpdate, ZSequence, System.Actions;

type
  TAtivosTipos = class(TIDefBrowse)
    IBrwSrctipo: TIntegerField;
    IBrwSrcdescri: TStringField;
    IBrwSrcqtd: TFloatField;
    ZSequence1: TZSequence;
    procedure IBrwSrcAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  AtivosTipos: TAtivosTipos;

implementation

{$R *.dfm}

uses uDM, uAtivosTiposM;


{ TAtivosTipos }

procedure TAtivosTipos.IBrwSrcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  IBrwSrcqtd.AsFloat:= 0;
end;

procedure TAtivosTipos.OnEdit;
begin
  Application.CreateForm(TAtivosTiposM, AtivosTiposM);
  AtivosTiposM.DataSet:= IBrwSrc;
  AtivosTiposM.ShowModal;
end;

initialization
  RegisterClass(TAtivosTipos);

Finalization
  UnRegisterClass(TAtivosTipos);

end.
