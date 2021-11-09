unit uLabCrit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, ZSequence;

type
  TLabCrit = class(TIDefBrowse)
    IBrwSrcrecno: TIntegerField;
    IBrwSrcdescri: TStringField;
    ZSequence1: TZSequence;
    qRelato: TZQuery;
    uRelato: TZUpdateSQL;
    sRelato: TZSequence;
    qRelatolabcrit_recno: TIntegerField;
    qRelatorelato_recno: TIntegerField;
    qRelatodescri: TStringField;
    qRelatoativo: TBooleanField;
    qRelatorecno: TIntegerField;
    dsRelato: TDataSource;
    IBrwSrcnivel: TIntegerField;
    IBrwSrclabel: TStringField;
    IBrwSrcexige_revisao: TBooleanField;
    procedure qRelatoAfterInsert(DataSet: TDataSet);
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  LabCrit: TLabCrit;

implementation

uses uDM, uIUtils, uLabCritM, iTypes;

{$R *.dfm}

procedure TLabCrit.IBrwSrcAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qRelato.ParamByName('crit').AsInteger := IBrwSrcrecno.AsInteger;
  G.RefreshDataSet(qRelato);

//  if Assigned(LabCritM) then
//    if not IBrwSrccor.IsNull then          
//      LabCritM.JvColorComboBox1.ColorValue := StringToColor(IBrwSrccor.AsString)
//    else
//      LabCritM.JvColorComboBox1.ColorValue := clGreen;
end;

procedure TLabCrit.OnEdit;
begin
  LabCritM := TLabCritM.Create(nil);
  try
    LabCritM.DataSet := IBrwSrc;
    LabCritM.ScreenType := stMasterDetail;
    LabCritM.ShowModal;
  finally
    FreeAndNil(LabCritM);
  end;

end;

procedure TLabCrit.qRelatoAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qRelatolabcrit_recno.AsInteger := IBrwSrcrecno.AsInteger;
end;

initialization
  RegisterClass(TLabCrit);

finalization
  UnRegisterClass(TLabCrit);

end.
