unit uServicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ActnList, Grids, DBGrids, ComCtrls, StdCtrls, Buttons, Mask, ExtCtrls, ToolWin,
  ZSqlUpdate, ZSequence, JvExMask, JvToolEdit, JvBaseEdits, uFrameCheckBar;

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
    TabSheet2: TTabSheet;
    IBrwSrcstatus: TSmallintField;
    FrameCheckBar1: TFrameCheckBar;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label5: TLabel;
    edDescri: TEdit;
    IBrwSrcmark: TBooleanField;
    actProcessMarked: TAction;
    DesativarMarcados1: TMenuItem;
    N2: TMenuItem;
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
    procedure PageControl1Change(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridKeyPress(Sender: TObject; var Key: Char);
    procedure actProcessMarkedExecute(Sender: TObject);
  private
    FFilter: string;
    { Private declarations }
    procedure OnEdit; override;
    procedure SetFilter(const Value: string);
    procedure OnChangeMark(Sender: TObject);
    procedure RefreshCtrl; override;
  public
    { Public declarations }
    property Filter: string read FFilter write SetFilter;
  end;

var
  Servicos: TServicos;

implementation

uses uDM, uServicosM, iTypes, uIUtils, uResources;

{$R *.dfm}

{ TServicos }

procedure TServicos.actProcessMarkedExecute(Sender: TObject);
var
  bBookMark : TBookmark;
  status: Word;
begin
  bBookMark := IBrwSrc.GetBookmark;
  status := 0;

  if PageControl1.ActivePageIndex = 1 then
    status := 1;

  with IBrwSrc do
  try
    DisableControls;
    First;

    while not Eof do
    begin
      if FieldByName('mark').AsBoolean then
      begin
        Edit;
        FieldByName('status').AsInteger := status;
        Post;
      end;

      Next;
    end;
  finally
    GotoBookmark(bBookMark);
    FreeBookmark(bBookMark);
    
    EnableControls;

    actQueryProcessExecute(actQueryProcess);
  end;
end;

procedure TServicos.actQueryProcessExecute(Sender: TObject);
var
  sWhere: string;
begin
  inherited;

  sWhere := EmptyStr;

  if (qCate.RecordCount = 1) or (cbCat.ItemIndex > 0) then
    sWhere := 'and a.grupo = :grupo ';

  if edServico.Value > 0 then
    sWhere := sWhere + 'and a.codserv = :servico ';

  if cbVidraria.ItemIndex < 3 then
    sWhere := sWhere + 'and a.vidraria = :vidraria ';

  if Length(edDescri.Text) > 0 then
    sWhere := sWhere + 'and a.descri ilike :descri ';

  if sWhere <> EmptyStr then
    IBrwSrc.SQL.Add(sWhere);

  IBrwSrc.ParamByName('status').AsInteger := 1;

  if PageControl1.ActivePageIndex = 1 then
    IBrwSrc.ParamByName('status').AsInteger := 0;

  if Assigned(IBrwSrc.Params.FindParam('grupo')) then
    IBrwSrc.ParamByName('grupo').AsInteger := qCaterecno.AsInteger;

  if Assigned(IBrwSrc.Params.FindParam('servico')) then
    IBrwSrc.ParamByName('servico').AsInteger := Round(edServico.Value);

  if Assigned(IBrwSrc.Params.FindParam('vidraria')) then
    IBrwSrc.ParamByName('vidraria').AsInteger := cbVidraria.ItemIndex;

  if Assigned(IBrwSrc.Params.FindParam('descri')) then
    IBrwSrc.ParamByName('descri').AsString := '%' + edDescri.Text + '%';

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

procedure TServicos.DBGridKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #32) and (IBrwSrc.State = dsBrowse) then
    FrameCheckBar1.actProcessMarkExecute(actInverse);

  inherited;
end;

procedure TServicos.edServicoChange(Sender: TObject);
begin
  inherited;
  actQueryProcess.Enabled := True;
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
  FrameCheckBar1.Table := 'servicos';
  FrameCheckBar1.OnChange := OnChangeMark;
end;

procedure TServicos.FormDestroy(Sender: TObject);
begin
  FrameCheckBar1.OnChange := nil;
  inherited;
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
  IBrwSrc.ParamByName('session').AsString := U.Info.Session;
  IBrwSrc.ParamByName('origem').AsInteger := U.Data.TableIdFromName('servicos');
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

procedure TServicos.OnChangeMark(Sender: TObject);
begin
  RefreshCtrl;
end;

procedure TServicos.OnEdit;
begin
  Application.CreateForm(TServicosM, ServicosM);
  ServicosM.ScreenType:= stMasterDetail;
  ServicosM.DataSet:= DataSet;
  ServicosM.ShowModal;
end;

procedure TServicos.PageControl1Change(Sender: TObject);
begin
  inherited;
  DBGrid1.Parent := PageControl1.ActivePage;
  FrameCheckBar1.Parent := PageControl1.ActivePage;
  actQueryProcessExecute(actQueryProcess);
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

procedure TServicos.RefreshCtrl;
begin
  inherited;
  actProcessMarked.Enabled := (FrameCheckBar1.CheckedCount > 0);
  actProcessMarked.Caption := 'Desativar Serviços Marcados';
  actProcessMarked.ImageIndex := 69;
  if PageControl1.ActivePageIndex = 1 then
  begin
    actProcessMarked.Caption := 'Ativar Serviços Marcados';
    actProcessMarked.ImageIndex := 67;
  end;
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
