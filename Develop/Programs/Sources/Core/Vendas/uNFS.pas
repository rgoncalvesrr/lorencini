unit uNFS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, DB, Menus, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons, ComCtrls, ExtCtrls, ToolWin,
  ZSqlUpdate, JvExStdCtrls, JvCombobox, uFrameData, ZSequence;

type
  TNFS = class(TIDefBrowse)
    IBrwSrcrecno: TIntegerField;
    IBrwSrcnf: TIntegerField;
    IBrwSrcserie: TIntegerField;
    IBrwSrccodigo: TIntegerField;
    IBrwSrcnatureza: TIntegerField;
    IBrwSrcdescri: TStringField;
    IBrwSrcemissao: TDateField;
    IBrwSrcvalor: TFloatField;
    IBrwSrcvencto: TDateField;
    IBrwSrcvlicms: TFloatField;
    IBrwSrcvlipi: TFloatField;
    IBrwSrcvlirpj: TFloatField;
    IBrwSrcvlcofins: TFloatField;
    IBrwSrcvlinss: TFloatField;
    IBrwSrcvlcssl: TFloatField;
    IBrwSrcvlpis: TFloatField;
    IBrwSrcvlcom: TFloatField;
    IBrwSrcvliss: TFloatField;
    IBrwSrcstatus: TIntegerField;
    IBrwSrctipo: TIntegerField;
    IBrwSrcnome_chave: TStringField;
    IBrwSrccnpj: TStringField;
    N2: TMenuItem;
    JvComboBox1: TJvComboBox;
    Label1: TLabel;
    qItens: TZQuery;
    dsqItens: TDataSource;
    uqItens: TZUpdateSQL;
    qItensrecno_nf: TIntegerField;
    qItensos: TIntegerField;
    qItensvalor: TFloatField;
    qItensidos: TStringField;
    qItensdata: TDateField;
    qItenscom_srv: TFloatField;
    qItensvlsrv: TFloatField;
    qItenscom_mat: TFloatField;
    qItensvlmat: TFloatField;
    qItensvlcom: TFloatField;
    qItenstipo: TIntegerField;
    FrameData1: TFrameData;
    Label3: TLabel;
    Label4: TLabel;
    FrameData2: TFrameData;
    Label5: TLabel;
    Label6: TLabel;
    IBrwSrchistorico: TStringField;
    sIBrwSrc: TZSequence;
    sItens: TZSequence;
    qItensrecno: TIntegerField;
    IBrwSrcpqtd: TIntegerField;
    IBrwSrcpdias: TIntegerField;
    IBrwSrcobservacao: TMemoField;
    procedure IBrwSrctipoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure IBrwSrctipoSetText(Sender: TField; const Text: string);
    procedure IBrwSrcstatusGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure IBrwSrcstatusSetText(Sender: TField; const Text: string);
    procedure IBrwSrcAfterInsert(DataSet: TDataSet);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure JvComboBox1Change(Sender: TObject);
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qItensAfterInsert(DataSet: TDataSet);
    procedure qItenstipoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qItenstipoSetText(Sender: TField; const Text: string);
    procedure qItenstipoChange(Sender: TField);
  private
    { Private declarations }
    fInternalCalc: Boolean;
    procedure OnEdit; override;
    procedure SetDataSet(const Value: TZQuery); override;
    procedure OnLog(var TableName: string; var Recno: Integer); virtual;
  public
    { Public declarations }
  end;

var
  NFS: TNFS;

implementation

uses uDM, uIUtils, uNFSm, iTypes, ccalendardiff;

{$R *.dfm}

procedure TNFS.actQueryProcessExecute(Sender: TObject);
var
  sWhere: String;
  emissao: TCCalendarDiff;
  vencto: TCCalendarDiff;
begin
  inherited;

  sWhere := '';
  emissao := FrameData1.CCalendarDiff1;
  vencto := FrameData2.CCalendarDiff1;
  
  if JvComboBox1.ItemIndex > 0 then
    sWhere := ' a.status = :status ';

  if emissao.Interval <> diNone then
  begin
    if sWhere <> EmptyStr then
      sWhere := sWhere + ' and ';

    sWhere := sWhere + 'emissao between :emissaoini and :emissaofin ';
  end;

  if vencto.Interval <> diNone then
  begin
    if sWhere <> EmptyStr then
      sWhere := sWhere + ' and ';

    sWhere := sWhere + 'vencto between :venctoini and :venctofin ';
  end;

  if sWhere <> '' then
  begin
    DataSet.SQL.Add('where ' + sWhere);

    if Assigned(DataSet.Params.FindParam('status')) then
      DataSet.ParamByName('status').AsInteger := JvComboBox1.ItemIndex;

    if emissao.Interval <> diNone then
    begin
      DataSet.ParamByName('emissaoini').AsDate := emissao.BeginDate;
      DataSet.ParamByName('emissaofin').AsDate := emissao.EndDate;
    end;

    if vencto.Interval <> diNone then
    begin
      DataSet.ParamByName('venctoini').AsDate := vencto.BeginDate;
      DataSet.ParamByName('venctofin').AsDate := vencto.EndDate;
    end;
  end;

  G.RefreshDataSet(DataSet);
end;

procedure TNFS.FormCreate(Sender: TObject);
begin
  inherited;
  NFS := Self;
end;

procedure TNFS.IBrwSrcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  IBrwSrcemissao.AsDateTime := U.Data.CurrentDate;
  IBrwSrcstatus.AsInteger := 1;
  IBrwSrcpqtd.AsInteger := 0;
  IBrwSrcpdias.AsInteger := 1;
end;

procedure TNFS.IBrwSrcAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if Assigned(NFSM) then
  begin
    qItens.ParamByName('recno').AsInteger := IBrwSrcrecno.AsInteger;
    G.RefreshDataSet(qItens);
  end;
end;

procedure TNFS.IBrwSrcstatusGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Digitação';
    2: Text := 'Faturada';
    3: Text := 'Cancelada';
  end;
end;

procedure TNFS.IBrwSrcstatusSetText(Sender: TField; const Text: string);
begin
  inherited;
  if Text = 'Digitação' then
    Sender.AsInteger := 1;

  if Text = 'Faturada' then
    Sender.AsInteger := 2;

  if Text = 'Cancelada' then
    Sender.AsInteger := 3;
end;

procedure TNFS.IBrwSrctipoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Materiais';
    2: Text := 'Serviços';
  end;
end;

procedure TNFS.IBrwSrctipoSetText(Sender: TField; const Text: string);
begin
  inherited;
  if Text = 'Materiais' then
    Sender.AsInteger := 1
  else
    Sender.AsInteger := 2;
end;

procedure TNFS.JvComboBox1Change(Sender: TObject);
begin
  inherited;
  actQueryProcess.Enabled := True;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TNFS.OnEdit;
begin
  NFSM := TNFSM.Create(Application);
  NFSM.ScreenType := stMasterDetail;
  NFSM.DataSet := DataSet;
  NFSM.ShowModal;
end;

procedure TNFS.OnLog(var TableName: string; var Recno: Integer);
begin
  TableName := 'nf';
  Recno := IBrwSrcrecno.AsInteger;
end;

procedure TNFS.qItensAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qItensrecno_nf.AsInteger := IBrwSrcrecno.AsInteger;
  qItenstipo.AsInteger := 3;
end;

procedure TNFS.qItenstipoChange(Sender: TField);
begin
  inherited;
  if not (qItens.State in [dsEdit, dsInsert]) or fInternalCalc then
    Exit;

  fInternalCalc := True;
  qItensvalor.AsFloat := 0;
  qItensvlcom.AsFloat := 0;

  try
    if (qItenstipo.AsInteger in [1,3]) then
    begin
      if (qItenscom_srv.AsFloat > 0) and (qItensvlsrv.AsFloat > 0) then
      begin
        qItensvlcom.AsFloat := qItenscom_srv.AsFloat * qItensvlsrv.AsFloat / 100;
        qItensvalor.AsFloat := qItensvlsrv.AsFloat;
      end;
    end else
    begin
      qItenscom_srv.AsFloat := 0;
      qItensvlsrv.AsFloat := 0;
    end;

    if (qItenstipo.AsInteger in [2,3]) then
    begin
      if (qItenscom_mat.AsFloat > 0) and (qItensvlmat.AsFloat > 0) then
      begin
        qItensvlcom.AsFloat := qItensvlcom.AsFloat +
          qItenscom_mat.AsFloat * qItensvlmat.AsFloat / 100;
        qItensvalor.AsFloat := qItensvalor.AsFloat + qItensvlmat.AsFloat;
      end;
    end else
    begin
      qItenscom_mat.AsFloat := 0;
      qItensvlmat.AsFloat := 0;
    end;
  finally
    fInternalCalc := False;
  end;
end;

procedure TNFS.qItenstipoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Serviços';
    2: Text := 'Materiais';
    3: Text := 'Ambos';
  end;
end;

procedure TNFS.qItenstipoSetText(Sender: TField; const Text: string);
begin
  if Text = 'Serviços' then
    Sender.AsInteger := 1;

  if Text = 'Materiais' then
    Sender.AsInteger := 2;

  if Text = 'Ambos' then
    Sender.AsInteger := 3;
end;

procedure TNFS.SetDataSet(const Value: TZQuery);
begin
  inherited;
  if (Value = IBrwSrc) then
    JvComboBox1Change(JvComboBox1);
end;

initialization
  RegisterClass(TNFS);

end.
