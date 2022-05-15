unit uServicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ActnList, Grids, DBGrids, ComCtrls, StdCtrls, Buttons, Mask, ExtCtrls, ToolWin,
  ZSqlUpdate, ZSequence, JvExMask, JvToolEdit, JvBaseEdits;

type
  TServicos = class(TIDefBrowse)
    IBrwSrccodserv: TIntegerField;
    IBrwSrcdescri: TStringField;
    IBrwSrcun: TStringField;
    IBrwSrcvalor: TFloatField;
    ZUpdateSQL1: TZUpdateSQL;
    IBrwSrctipo: TIntegerField;
    IBrwSrctipo_desc: TStringField;
    IBrwSrcgrupo: TIntegerField;
    IBrwSrcdescri_1: TStringField;
    cbCat: TComboBox;
    Label1: TLabel;
    qCate: TZQuery;
    qCaterecno: TIntegerField;
    qCatedescri: TStringField;
    IBrwSrcprnsecserv: TBooleanField;
    qNatDet: TZQuery;
    sBrwSrc: TZSequence;
    IBrwSrcrecno: TIntegerField;
    qNatDetcodserv: TIntegerField;
    qNatDetrecno: TIntegerField;
    qNatDetdescri: TStringField;
    zNatDet: TZUpdateSQL;
    sNatDet: TZSequence;
    qUnidade: TZQuery;
    qUnidadeun: TStringField;
    qUnidadedescri: TStringField;
    IBrwSrcconsumo: TFloatField;
    Label3: TLabel;
    edServico: TJvCalcEdit;
    IBrwSrcvidraria: TIntegerField;
    Label4: TLabel;
    cbVidraria: TComboBox;
    qTipoLaudo: TZQuery;
    qTipoLaudorecno: TIntegerField;
    qTipoLaudodescri: TStringField;
    qTipoLaudoServ: TZQuery;
    qTipoLaudoServrelato_recno: TIntegerField;
    qTipoLaudoServrecno: TIntegerField;
    qTipoLaudoServcodserv: TIntegerField;
    IBrwSrcrecipiente: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure qCateAfterOpen(DataSet: TDataSet);
    procedure cbCatChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure IBrwSrcCalcFields(DataSet: TDataSet);
    procedure IBrwSrcAfterInsert(DataSet: TDataSet);
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
    procedure qNatDetAfterInsert(DataSet: TDataSet);
    procedure IBrwSrcAfterOpen(DataSet: TDataSet);
    procedure edServicoChange(Sender: TObject);
    procedure cbVidrariaChange(Sender: TObject);
    procedure IBrwSrcBeforeOpen(DataSet: TDataSet);
    procedure qTipoLaudoServAfterInsert(DataSet: TDataSet);
    procedure IBrwSrcvidrariaChange(Sender: TField);
  private
    FFilter: string;
    { Private declarations }
    procedure OnEdit; override;
    procedure SetFilter(const Value: string);
  public
    { Public declarations }
    property Filter: string read FFilter write SetFilter;
  end;

var
  Servicos: TServicos;

implementation

uses uDM, uServicosM, iTypes, uIUtils;

{$R *.dfm}

{ TServicos }

procedure TServicos.actQueryProcessExecute(Sender: TObject);
var
  sWhere: string;
begin
  inherited;

  sWhere := EmptyStr;

  if (qCate.RecordCount = 1) or (cbCat.ItemIndex > 0) then
    sWhere := 'a.grupo = :grupo ';

  if edServico.Value > 0 then
  begin
    if sWhere <> EmptyStr then
      sWhere := sWhere + 'and ';

    sWhere := sWhere + 'a.codserv = :servico ';
  end;

  if cbVidraria.ItemIndex < 3 then
  begin
    if sWhere <> EmptyStr then
      sWhere := sWhere + 'and ';

    sWhere := sWhere + 'a.vidraria = :vidraria ';
  end;

  if sWhere <> EmptyStr then
    IBrwSrc.SQL.Add(' where ' + sWhere);


  if Assigned(IBrwSrc.Params.FindParam('grupo')) then
    IBrwSrc.ParamByName('grupo').AsInteger := qCaterecno.AsInteger;

  if Assigned(IBrwSrc.Params.FindParam('servico')) then
    IBrwSrc.ParamByName('servico').AsInteger := Round(edServico.Value);

  if Assigned(IBrwSrc.Params.FindParam('vidraria')) then
    IBrwSrc.ParamByName('vidraria').AsInteger := cbVidraria.ItemIndex;


  G.RefreshDataSet(IBrwSrc);

  RefreshCtrl;
end;

procedure TServicos.cbCatChange(Sender: TObject);
begin
  if (cbCat.ItemIndex > 0) and (qCate.RecordCount > 1) then
    qCate.RecNo := cbCat.ItemIndex;

  actQueryProcessExecute(actQueryProcess);
end;

procedure TServicos.cbVidrariaChange(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TServicos.edServicoChange(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TServicos.FormActivate(Sender: TObject);
begin
  inherited;
  G.RefreshDataSet(qCate);
end;

procedure TServicos.FormCreate(Sender: TObject);
begin
  inherited;
  Servicos:= Self;
end;

procedure TServicos.FormShow(Sender: TObject);
begin
  inherited;
  G.RefreshDataSet(qCate);
end;

procedure TServicos.IBrwSrcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  IBrwSrctipo.AsInteger:= 1;
  IBrwSrcconsumo.AsFloat := 0;
  IBrwSrcvidraria.AsInteger := 0;
end;

procedure TServicos.IBrwSrcAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qUnidade.Open;
end;

procedure TServicos.IBrwSrcAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qNatDet.Params[0].AsInteger := IBrwSrccodserv.AsInteger;
  qTipoLaudoServ.ParamByName('servico').AsInteger := IBrwSrccodserv.AsInteger;
  G.RefreshDataSet(qNatDet);
  G.RefreshDataSet(qTipoLaudoServ);
end;

procedure TServicos.IBrwSrcBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qTipoLaudo.Open;
end;

procedure TServicos.IBrwSrcCalcFields(DataSet: TDataSet);
begin
  inherited;
  Case IBrwSrctipo.AsInteger of
    1: IBrwSrctipo_desc.AsString:= 'Variável';
    2: IBrwSrctipo_desc.AsString:= 'Fixo';
  Else
    IBrwSrctipo_desc.AsString:= 'ERRO';
  End;
end;

procedure TServicos.IBrwSrcvidrariaChange(Sender: TField);
begin
  inherited;
  if not (Sender.DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  if Sender.IsNull then
    IBrwSrcrecipiente.SetData(nil);
end;

procedure TServicos.OnEdit;
begin
  Application.CreateForm(TServicosM, ServicosM);
  ServicosM.ScreenType:= stMasterDetail;
  ServicosM.DataSet:= DataSet;
  ServicosM.ShowModal;
end;

procedure TServicos.qCateAfterOpen(DataSet: TDataSet);
begin
  inherited;
  with cbCat do
  try
    Items.BeginUpdate;
    Items.Clear;

    while not qCate.Eof do
    begin
      Items.Add(qCatedescri.AsString);
      qCate.Next;
    end;

    if qCate.RecordCount > 1 then
      Items.Insert(0, '(Todas)');

    ItemIndex := 0;
  finally
    Items.EndUpdate;
    cbCat.Enabled := qCate.RecordCount > 1;
  end;
end;

procedure TServicos.qNatDetAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qNatDetcodserv.AsInteger := IBrwSrccodserv.AsInteger;
end;

procedure TServicos.qTipoLaudoServAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qTipoLaudoServcodserv.AsInteger := IBrwSrccodserv.AsInteger;
end;

procedure TServicos.SetFilter(const Value: string);
begin
  FFilter := Value;

  if FFilter <> EmptyStr then
    qCate.SQL.Add(' where ' + Filter);

  G.RefreshDataSet(qCate);
  cbCatChange(cbCat);
end;

initialization
  RegisterClass(TServicos);

Finalization
  UnRegisterClass(TServicos);

end.
