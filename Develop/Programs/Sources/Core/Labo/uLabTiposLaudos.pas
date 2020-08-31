unit uLabTiposLaudos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, DB, ZSqlUpdate, Menus, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, ZSequence;

type
  TLabTiposLaudos = class(TIDefBrowse)
    IBrwSrcrecno: TIntegerField;
    IBrwSrcdescri: TStringField;
    IBrwSrcativo: TBooleanField;
    ZSequence1: TZSequence;
    zEnsaios: TZQuery;
    uEnsaios: TZUpdateSQL;
    sEnsaios: TZSequence;
    dsEnsaios: TDataSource;
    zEnsaiosrelato_recno: TIntegerField;
    zEnsaiosensaio_recno: TIntegerField;
    zEnsaiosnome: TStringField;
    zEnsaiosunidade: TStringField;
    zEnsaiosmetodo: TStringField;
    zEnsaiosrecno: TIntegerField;
    sDiag: TZSequence;
    uDiag: TZUpdateSQL;
    qDiag: TZQuery;
    dsDiag: TDataSource;
    sCrit: TZSequence;
    uCrit: TZUpdateSQL;
    qCrit: TZQuery;
    dsCrit: TDataSource;
    qDiagrelato_recno: TIntegerField;
    qDiaglabdiag_recno: TIntegerField;
    qDiagdescri: TStringField;
    qDiagrecno: TIntegerField;
    qDiagdias: TIntegerField;
    qCritrelato_recno: TIntegerField;
    qCritlabcrit_recno: TIntegerField;
    qCritdescri: TStringField;
    qCritrecno: TIntegerField;
    qDiagdiag: TMemoField;
    IBrwSrctitulo: TStringField;
    zEnsaiosordem: TIntegerField;
    IBrwSrcinmetro: TBooleanField;
    IBrwSrcacreditacao: TDateField;
    IBrwSrcsigla: TStringField;
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
    procedure zEnsaiosAfterInsert(DataSet: TDataSet);
    procedure qCritAfterInsert(DataSet: TDataSet);
    procedure qDiagAfterInsert(DataSet: TDataSet);
    procedure IBrwSrcdescriSetText(Sender: TField; const Text: string);
  private
    { Private declarations }
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  LabTiposLaudos: TLabTiposLaudos;

implementation

uses uDM, uIUtils, uLabTiposLaudosM, iTypes;

{$R *.dfm}

procedure TLabTiposLaudos.IBrwSrcAfterScroll(DataSet: TDataSet);
begin
  inherited;
  zEnsaios.ParamByName('laudo').AsInteger := IBrwSrcrecno.AsInteger;
  qDiag.ParamByName('laudo').AsInteger := IBrwSrcrecno.AsInteger;
  qCrit.ParamByName('laudo').AsInteger := IBrwSrcrecno.AsInteger;

  G.RefreshDataSet(zEnsaios);
  G.RefreshDataSet(qDiag);
  G.RefreshDataSet(qCrit);
end;

procedure TLabTiposLaudos.IBrwSrcdescriSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if (IBrwSrc.State in [dsEdit, dsInsert]) then
  begin
    if IBrwSrctitulo.IsNull then
      IBrwSrctitulo.AsString := Text;

    Sender.AsString := Text;
  end;


end;

procedure TLabTiposLaudos.OnEdit;
begin
  LabTiposLaudosM := TLabTiposLaudosM.Create(nil);
  try
    LabTiposLaudosM.DataSet := DataSet;
    LabTiposLaudosM.ScreenType := stMasterDetail;
    LabTiposLaudosM.ShowModal;
  finally
    FreeAndNil(LabTiposLaudosM);
  end;

end;

procedure TLabTiposLaudos.qCritAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qCritrelato_recno.AsInteger := IBrwSrcrecno.AsInteger;
end;

procedure TLabTiposLaudos.qDiagAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qDiagrelato_recno.AsInteger := IBrwSrcrecno.AsInteger;
end;

procedure TLabTiposLaudos.zEnsaiosAfterInsert(DataSet: TDataSet);
begin
  inherited;
  zEnsaiosrelato_recno.AsInteger := IBrwSrcrecno.AsInteger;
end;

initialization
  RegisterClass(TLabTiposLaudos);

finalization
  UnRegisterClass(TLabTiposLaudos);

end.
