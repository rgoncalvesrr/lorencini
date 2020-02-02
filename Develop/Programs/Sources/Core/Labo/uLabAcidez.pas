unit uLabAcidez;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, ZSequence;

type
  TLabAcidez = class(TIDefBrowse)
    IBrwSrcrecno: TIntegerField;
    IBrwSrcusername: TStringField;
    IBrwSrcname: TStringField;
    IBrwSrcvigencia: TDateField;
    IBrwSrcbiftalato_a: TFloatField;
    IBrwSrcbiftalato_b: TFloatField;
    IBrwSrcvolume_a: TFloatField;
    IBrwSrcvolume_b: TFloatField;
    IBrwSrcagua: TFloatField;
    IBrwSrccon_a: TFloatField;
    IBrwSrccon_b: TFloatField;
    IBrwSrcmedia: TFloatField;
    ZSequence1: TZSequence;
    procedure IBrwSrcAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  LabAcidez: TLabAcidez;

implementation

uses uDM, uLabAcidezM, uIUtils;

{$R *.dfm}

{ TLabAcidez }

procedure TLabAcidez.IBrwSrcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  IBrwSrcusername.AsString := U.Info.UserName;
  IBrwSrcname.AsString := U.Info.Name;
  IBrwSrcvigencia.AsDateTime := Now;
end;

procedure TLabAcidez.OnEdit;
begin
  LabAcidezM := TLabAcidezM.Create(nil);
  try
    LabAcidezM.AllowEdit := False;
    LabAcidezM.AllowDelete := False;
    LabAcidezM.DataSet := IBrwSrc;
    LabAcidezM.ShowModal;
  finally
    FreeAndNil(LabAcidezM);
  end;

end;

initialization
  RegisterClass(TLabAcidez);

finalization
  UnRegisterClass(TLabAcidez);
  
end.
