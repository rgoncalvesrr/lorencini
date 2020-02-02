unit uLabEnsaios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, ZSequence;

type
  TLabEnsaios = class(TIDefBrowse)
    IBrwSrcrecno: TIntegerField;
    IBrwSrcnome: TStringField;
    IBrwSrcunidade_recno: TIntegerField;
    IBrwSrcmetodo_recno: TIntegerField;
    IBrwSrcunidade: TStringField;
    IBrwSrcmetodo: TStringField;
    IBrwSrcdescri: TMemoField;
    ZSequence1: TZSequence;
    sLabRef: TZSequence;
    uLabRef: TZUpdateSQL;
    qLabRef: TZQuery;
    dsLabRef: TDataSource;
    sLabRefs: TZSequence;
    uLabRefs: TZUpdateSQL;
    qLabRefs: TZQuery;
    dsLabRefs: TDataSource;
    qLabRefensaio_recno: TIntegerField;
    qLabReftipo_recno: TIntegerField;
    qLabRefdescri: TStringField;
    qLabRefinf_te: TBooleanField;
    qLabReftipo: TIntegerField;
    qLabRefvalor: TFloatField;
    qLabRefrecno: TIntegerField;
    qLabRefsensaio_recno: TIntegerField;
    qLabRefsclasse: TStringField;
    qLabRefsmin: TFloatField;
    qLabRefsmax: TFloatField;
    qLabRefstpamostra_recno: TIntegerField;
    qLabRefsdescri: TStringField;
    qLabRefsinf_te: TBooleanField;
    qLabRefsvalor: TFloatField;
    qLabRefsrecno: TIntegerField;
    sLabInst: TZSequence;
    uLabInst: TZUpdateSQL;
    qLabInst: TZQuery;
    dsLabInst: TDataSource;
    qLabInstensaio_recno: TIntegerField;
    qLabInstlabinst_recno: TIntegerField;
    qLabInstserie: TStringField;
    qLabInstdescri: TStringField;
    qLabInstmodelo: TStringField;
    qLabInstvalidade: TDateField;
    qLabInstlabdiag_gp_recno: TIntegerField;
    qLabInstgrupo: TStringField;
    qLabInstrecno: TIntegerField;
    IBrwSrcobs: TStringField;
    IBrwSrcproc: TStringField;
    IBrwSrccalculo: TStringField;
    IBrwSrcreftipo: TIntegerField;
    qLabRefstipo: TIntegerField;
    IBrwSrcdec: TIntegerField;
    IBrwSrcarred: TIntegerField;
    IBrwSrcsezerotxt: TStringField;
    IBrwSrccoluna: TStringField;
    IBrwSrctabela: TStringField;
    qAtivoTipos: TZQuery;
    qAtivoTipostipo: TIntegerField;
    qAtivoTiposdescri: TStringField;
    qLabEnsAtivo: TZQuery;
    qLabEnsAtivotipoativo: TIntegerField;
    qLabEnsAtivorecno: TIntegerField;
    qSolTipo: TZQuery;
    qSolTiporecno: TIntegerField;
    qSolTipodescri: TStringField;
    qLabensSolucao: TZQuery;
    qLabensSolucaolabsoltipo_recno: TIntegerField;
    qLabEnsComp: TZQuery;
    dsLabEnsComp: TDataSource;
    qLabEnsCompensaio_recno: TIntegerField;
    qLabEnsCompensaio_comp: TIntegerField;
    qLabEnsCompnome: TStringField;
    qLabEnsComprecno: TIntegerField;
    uLabEnsComp: TZUpdateSQL;
    sLabEnsComp: TZSequence;
    qLabEnsCompunidade: TStringField;
    qLabEnsCompmetodo: TStringField;
    procedure qLabReftipoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qLabReftipoSetText(Sender: TField; const Text: string);
    procedure qLabRefAfterInsert(DataSet: TDataSet);
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
    procedure qLabRefsAfterInsert(DataSet: TDataSet);
    procedure qLabInstAfterInsert(DataSet: TDataSet);
    procedure IBrwSrcreftipoSetText(Sender: TField; const Text: string);
    procedure IBrwSrcreftipoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure IBrwSrcAfterInsert(DataSet: TDataSet);
    procedure IBrwSrcprocChange(Sender: TField);
    procedure IBrwSrcprocSetText(Sender: TField; const Text: string);
    procedure IBrwSrcarredGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure IBrwSrcarredSetText(Sender: TField; const Text: string);
    procedure IBrwSrcBeforeOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qLabEnsCompAfterInsert(DataSet: TDataSet);
  private
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  LabEnsaios: TLabEnsaios;

implementation

uses uDM, uLabEnsaiosM, uIUtils, iTypes;

{$R *.dfm}

{ TLabEnsaios }

procedure TLabEnsaios.FormCreate(Sender: TObject);
begin
  inherited;
  LabEnsaios := Self;
end;

procedure TLabEnsaios.IBrwSrcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  IBrwSrcreftipo.AsInteger := 1;
  IBrwSrcdec.AsInteger := 4;
  IBrwSrcarred.AsInteger := 1;
end;

procedure TLabEnsaios.IBrwSrcAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qLabRef.ParamByName('ensaio').AsInteger := IBrwSrcrecno.AsInteger;
  qLabRefs.ParamByName('ensaio').AsInteger := IBrwSrcrecno.AsInteger;
  qLabInst.ParamByName('ensaio').AsInteger := IBrwSrcrecno.AsInteger;
  qLabEnsAtivo.ParamByName('ensaio').AsInteger := IBrwSrcrecno.AsInteger;
  qLabensSolucao.ParamByName('ensaio').AsInteger := IBrwSrcrecno.AsInteger;
  qLabEnsComp.ParamByName('ensaio').AsInteger := IBrwSrcrecno.AsInteger;

  G.RefreshDataSet(qLabRef);
  G.RefreshDataSet(qLabRefs);
  G.RefreshDataSet(qLabInst);
  G.RefreshDataSet(qLabEnsAtivo);
  G.RefreshDataSet(qLabensSolucao);
  G.RefreshDataSet(qLabEnsComp);
end;

procedure TLabEnsaios.IBrwSrcarredGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := '1.Não';
    2: Text := '2.Sim';
  end;
end;

procedure TLabEnsaios.IBrwSrcarredSetText(Sender: TField; const Text: string);
begin
  inherited;
  if not (Sender.DataSet.State in [dsEdit, dsInsert]) or (Text = EmptyStr) then
    Exit;

  Sender.AsInteger := StrToInt(Text[1]);
end;

procedure TLabEnsaios.IBrwSrcBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qAtivoTipos.Open;
  qSolTipo.Open;
end;

procedure TLabEnsaios.IBrwSrcprocChange(Sender: TField);
begin
  inherited;
  if (IBrwSrc.State in [dsEdit, dsInsert]) and Sender.IsNull then
    IBrwSrccalculo.SetData(nil);
end;

procedure TLabEnsaios.IBrwSrcprocSetText(Sender: TField; const Text: string);
begin
  inherited;
  if (IBrwSrc.State in [dsEdit, dsInsert]) and (Text = EmptyStr) then
    Sender.SetData(nil);
end;

procedure TLabEnsaios.IBrwSrcreftipoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Não Utilizar';
    2: Text := 'Valor Fixo';
    3: Text := 'Classe de Tensão (Faixa)';
  end;
end;

procedure TLabEnsaios.IBrwSrcreftipoSetText(Sender: TField; const Text: string);
begin
  inherited;

  if not (IBrwSrc.State in [dsInsert, dsEdit]) or (Text = EmptyStr) then
    Exit;

  case Text[1] of
    'N': Sender.AsInteger := 1;
    'V': Sender.AsInteger := 2;
    'C': Sender.AsInteger := 3;
  end;
end;

procedure TLabEnsaios.OnEdit;
begin
  LabEnsaiosM := TLabEnsaiosM.Create(nil);
  try
    LabEnsaiosM.DataSet := DataSet;
    LabEnsaiosM.ScreenType := stMasterDetail;
    LabEnsaiosM.ShowModal;
  finally
    FreeAndNil(LabEnsaiosM);
  end;

end;

procedure TLabEnsaios.qLabEnsCompAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qLabEnsCompensaio_recno.AsInteger := IBrwSrcrecno.AsInteger;
end;

procedure TLabEnsaios.qLabInstAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qLabInstensaio_recno.AsInteger := IBrwSrcrecno.AsInteger;
end;

procedure TLabEnsaios.qLabRefAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qLabRefensaio_recno.AsInteger := IBrwSrcrecno.AsInteger;
end;

procedure TLabEnsaios.qLabRefsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qLabRefsensaio_recno.AsInteger := IBrwSrcrecno.AsInteger;
end;

procedure TLabEnsaios.qLabReftipoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Mínimo';
    2: Text := 'Máximo';
  end;
end;

procedure TLabEnsaios.qLabReftipoSetText(Sender: TField; const Text: string);
begin
  inherited;
  if not (Sender.DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  if Text = 'Mínimo' then
    Sender.AsInteger := 1;

  if Text = 'Máximo' then
    Sender.AsInteger := 2;
end;

initialization
  RegisterClass(TLabEnsaios);

finalization
  UnRegisterClass(TLabEnsaios);

end.
