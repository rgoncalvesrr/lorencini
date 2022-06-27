unit uOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Menus,
  XPMan, ActnList, Grids, DBGrids, ComCtrls, StdCtrls, Buttons, Mask, ExtCtrls,
  ToolWin, DBCtrls, TeEngine, Series, TeeProcs, Chart, DBChart, iTypes,
  uIUtils, uFrameData, JvExMask, JvToolEdit, JvBaseEdits, JvDBControls,
  ZSqlUpdate, JvExDBGrids, JvDBGrid, JvExStdCtrls, JvCombobox, JvDBCombobox,
  uReport, ZSequence;

type
  TOS = class(TIDefBrowse)
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    actCli: TAction;
    Clientes1: TMenuItem;
    AprovarOramento1: TMenuItem;
    FrameData1: TFrameData;
    Label3: TLabel;
    Label4: TLabel;
    TabSheet13: TTabSheet;
    actCancelOS: TAction;
    Cancelamento1: TMenuItem;
    actMarkup: TAction;
    Label10: TLabel;
    edPedido: TJvCalcEdit;
    edCota: TJvCalcEdit;
    Label11: TLabel;
    actModelo: TAction;
    ToolBar2: TToolBar;
    ToolButton28: TToolButton;
    ToolButton29: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ControlBar1: TControlBar;
    TabSheet5: TTabSheet;
    ToolButton12: TToolButton;
    actExecutar: TAction;
    IBrwSrcidos: TStringField;
    IBrwSrcdata: TDateField;
    IBrwSrcano: TIntegerField;
    IBrwSrcidcliente: TIntegerField;
    IBrwSrcidvendedor: TIntegerField;
    IBrwSrcid_servico: TIntegerField;
    IBrwSrcdescricao: TMemoField;
    IBrwSrcstatus_data: TDateField;
    IBrwSrcos: TIntegerField;
    IBrwSrcchamado: TIntegerField;
    IBrwSrctype_: TIntegerField;
    IBrwSrcvlmat: TFloatField;
    IBrwSrcvlsrvfixo: TFloatField;
    IBrwSrcvlsrvvar: TFloatField;
    IBrwSrcvlmobra: TFloatField;
    IBrwSrcvlsrvdesp: TFloatField;
    IBrwSrcmarkup: TIntegerField;
    IBrwSrcpedidocliente: TStringField;
    IBrwSrcorigem: TIntegerField;
    IBrwSrcrecno: TIntegerField;
    IBrwSrcgrupo: TIntegerField;
    IBrwSrccnpj: TStringField;
    IBrwSrcqtdorcs: TIntegerField;
    IBrwSrcid_vendedor: TIntegerField;
    IBrwSrcnome_chave: TStringField;
    IBrwSrcempresa: TStringField;
    IBrwSrcmotivo: TMemoField;
    IBrwSrcobservacao: TMemoField;
    IBrwSrcpedido: TIntegerField;
    IBrwSrcdescri_grupo: TStringField;
    IBrwSrcatividade: TStringField;
    IBrwSrccotacao: TIntegerField;
    sOS: TZSequence;
    qServ: TZQuery;
    qServos: TIntegerField;
    qServcat: TStringField;
    qServcodserv: TIntegerField;
    qServdescri: TStringField;
    qServqtd: TFloatField;
    qServun: TStringField;
    qServundescri: TStringField;
    qServvalor: TFloatField;
    qServvl_venda: TFloatField;
    qServtotal: TFloatField;
    qServgrupo: TIntegerField;
    qServprnos: TBooleanField;
    qServprnsecserv: TBooleanField;
    uServ: TZUpdateSQL;
    dsServ: TDataSource;
    qServDet: TZQuery;
    qServDetos: TIntegerField;
    qServDetcodserv: TIntegerField;
    qServDetdescri: TStringField;
    qServDetrecno_serv: TIntegerField;
    uServDet: TZUpdateSQL;
    qMObra: TZQuery;
    qMObraos: TIntegerField;
    qMObrafunc: TIntegerField;
    qMObrafuncao: TStringField;
    qMObraqtde: TIntegerField;
    qMObrauteis_dias: TIntegerField;
    qMObrauteis_hrs_dia: TFloatField;
    qMObrauteis_vlr_hora: TFloatField;
    qMObrasabado_dias: TIntegerField;
    qMObrasabado_hrs_dia: TFloatField;
    qMObrasabado_vlr_hora: TFloatField;
    qMObradomingo_dias: TIntegerField;
    qMObradomingo_hrs_dia: TFloatField;
    qMObradomingo_vlr_hora: TFloatField;
    qMObraadic_not_dias: TIntegerField;
    qMObraadic_not_hrs_dia: TFloatField;
    qMObraadic_not_vlr_hora: TFloatField;
    qMObravalor_total: TFloatField;
    qMObrapercentual: TFloatField;
    qMObravl_venda: TFloatField;
    uMObra: TZUpdateSQL;
    dsMObra: TDataSource;
    qMat: TZQuery;
    qMatos: TIntegerField;
    qMatcodigo: TIntegerField;
    qMatmaterial: TStringField;
    qMatqtd: TFloatField;
    qMatun: TStringField;
    qMatunitario: TFloatField;
    qMatvl_venda: TFloatField;
    qMattotal: TCurrencyField;
    qMaticms_compra: TFloatField;
    qMatexptot: TBooleanField;
    qMatitem: TIntegerField;
    uMat: TZUpdateSQL;
    dsMat: TDataSource;
    dsServDet: TDataSource;
    qFatu: TZQuery;
    qFatuos: TIntegerField;
    qFatunf: TIntegerField;
    qFatuemissao: TDateField;
    qFatuvalor: TFloatField;
    qFatudtvenc: TDateField;
    qFatudtreci: TDateField;
    qFatudtbaixa: TDateField;
    qFatuvlicms: TFloatField;
    qFatuvlipi: TFloatField;
    qFatuvliss: TFloatField;
    qFatuvlcssl: TFloatField;
    qFatuvlpis: TFloatField;
    qFatuvlcofins: TFloatField;
    qFatuvlirpj: TFloatField;
    qFatuvlirpf: TFloatField;
    qFatuvlcom: TFloatField;
    qFatunatureza: TIntegerField;
    qFatudescri: TStringField;
    qFatutipo: TStringField;
    uFatu: TZUpdateSQL;
    dsFatu: TDataSource;
    qDesp: TZQuery;
    uDesp: TZUpdateSQL;
    dsDesp: TDataSource;
    sServ: TZSequence;
    qServrecno: TIntegerField;
    sServDet: TZSequence;
    qServDetrecno: TIntegerField;
    sMat: TZSequence;
    qMatrecno: TIntegerField;
    qMObrarecno: TIntegerField;
    sMObra: TZSequence;
    qFaturecno: TIntegerField;
    sFatu: TZSequence;
    sDesp: TZSequence;
    IBrwSrcvlsrv: TFloatField;
    IBrwSrcvltotal: TFloatField;
    Panel3: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Label7: TLabel;
    edEmpresa: TEdit;
    Panel9: TPanel;
    Label8: TLabel;
    edRazao: TEdit;
    Panel10: TPanel;
    Label1: TLabel;
    edOS: TJvCalcEdit;
    Panel11: TPanel;
    Label5: TLabel;
    edID: TEdit;
    qDespos: TIntegerField;
    qDespdespesa: TIntegerField;
    qDesprecno: TIntegerField;
    qDespdata: TDateField;
    qDespdocto: TStringField;
    qDesphistorico: TMemoField;
    qDespvalor: TFloatField;
    qDesphistorico_desc: TStringField;
    TabSheet3: TTabSheet;
    ToolButton15: TToolButton;
    actAntecipacao: TAction;
    IBrwSrcstatus: TIntegerField;
    IBrwSrccondicaopg: TStringField;
    qContatos: TZQuery;
    qContatoscliente: TIntegerField;
    qContatospadrao: TBooleanField;
    qContatosrecno: TIntegerField;
    qContatosnome: TStringField;
    qContatoscelular: TStringField;
    qContatostelefone: TStringField;
    qContatosramal: TStringField;
    qContatosemail: TStringField;
    dsContatos: TDataSource;
    qContatosos: TIntegerField;
    qContatoscontato: TIntegerField;
    uContatos: TZUpdateSQL;
    sContatos: TZSequence;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure PageControl1Change(Sender: TObject);
    procedure actCliExecute(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure actCancelOSExecute(Sender: TObject);
    procedure actMarkupExecute(Sender: TObject);
    procedure actModeloExecute(Sender: TObject);
    procedure actExecutarExecute(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure IBrwSrcAfterInsert(DataSet: TDataSet);
    procedure IBrwSrcCalcFields(DataSet: TDataSet);
    procedure IBrwSrcidclienteChange(Sender: TField);
    procedure qServAfterInsert(DataSet: TDataSet);
    procedure qServAfterScroll(DataSet: TDataSet);
    procedure qServCalcFields(DataSet: TDataSet);
    procedure qMObraAfterInsert(DataSet: TDataSet);
    procedure qFatuAfterInsert(DataSet: TDataSet);
    procedure qMatCalcFields(DataSet: TDataSet);
    procedure qMatcodigoChange(Sender: TField);
    procedure qServcodservChange(Sender: TField);
    procedure qServqtdChange(Sender: TField);
    procedure CriteriaChange(Sender: TObject);
    procedure qServAfterPost(DataSet: TDataSet);
    procedure qMatAfterPost(DataSet: TDataSet);
    procedure qMObraAfterPost(DataSet: TDataSet);
    procedure qDespAfterDelete(DataSet: TDataSet);
    procedure qDespCalcFields(DataSet: TDataSet);
    procedure qMObraAfterDelete(DataSet: TDataSet);
    procedure qMatAfterDelete(DataSet: TDataSet);
    procedure qServAfterDelete(DataSet: TDataSet);
    procedure qMatqtdChange(Sender: TField);
    procedure qMatAfterInsert(DataSet: TDataSet);
    procedure actAntecipacaoExecute(Sender: TObject);
  private
    { Private declarations }
    fLoad: Boolean;
    procedure RefreshCtrl; override;
    procedure OnEdit; Override;
    procedure OnPrint(Sender: TReport; var Continue: Boolean); override;
    function GetTabela: string; override;
    function GetTabelaOrigem: Integer; override;
    procedure OnLog(var TableName: string; var Recno: Integer); override;
  public
    { Public declarations }
  end;

var
  OS: TOS;

implementation

{$R *.dfm}

uses uDM, DateUtils, uOSM, uContatoF, ccalendardiff, uOSMCancelamento, uResources, uMarkup, uDMReport, uDoc;

{ TOrcamentos }

procedure TOS.actAntecipacaoExecute(Sender: TObject);
begin
  inherited;

  if not G.Out.ConfQues('Confirma baixa por antecipação da OS: %s do cliente: %d - %s?',
    [IBrwSrcidos.AsString, IBrwSrcidcliente.AsInteger, IBrwSrcempresa.AsString]) then
    Exit;

  try
    U.Data.ExecSQL('update tb_orcamentos set status = 5 where os = %d', [IBrwSrcos.AsInteger]);
  finally
    G.RefreshDataSet(IBrwSrc);
    RefreshCtrl;
  end;
end;

procedure TOS.actCancelOSExecute(Sender: TObject);
begin
  inherited;
  OSMCancelamento := TOSMCancelamento.Create(nil);
  with OSMCancelamento do
  try
    CloseAfterPost := [aapInsert, aapEdit];
    OS.IBrwSrc.Edit;
    DataSet := OS.IBrwSrc;
    ShowModal;
    actQueryProcessExecute(actQueryProcess);
  finally
    FreeAndNil(OSMCancelamento);
  end;

end;

procedure TOS.actCliExecute(Sender: TObject);
begin
  U.Out.ShowForm('TClientes');
end;

procedure TOS.actExecutarExecute(Sender: TObject);
begin
  inherited;
  if not U.Out.ConfWarn('Confirma execução da OS %s?', [IBrwSrcidos.DisplayText]) then
    exit;

  U.Data.ExecSQL('select sys_flag_mark(''tb_orcamentos'', cast(%d asinteger))',
        [IBrwSrcrecno.AsInteger]);
  try
    try
      U.Data.ExecSQL('update tb_orcamentos set status = 3 where os = %d',
        [IBrwSrcos.AsInteger]);
      G.RefreshDataSet(IBrwSrc);
    except
      on E:Exception do
      begin
        U.Out.ShowErro('Não foi possível aprovar OS. Motivo: %s', [E.Message]);
      end;
    end;
  finally
    U.Data.ExecSQL('select sys_flag_del(''tb_orcamentos'', cast(%d as integer))',
        [IBrwSrcrecno.AsInteger]);
  end;
end;

procedure TOS.actMarkupExecute(Sender: TObject);
begin
  inherited;
  Markup := TMarkup.Create(nil);
  try
    Markup.MarkupID := IBrwSrcmarkup.AsInteger;
    Markup.MarkupAprovacao := False;
    Markup.Tabela := 'tb_orcamentos';
    Markup.Registro := IBrwSrcrecno.AsInteger;
    Markup.ShowModal;
  finally
    FreeAndNil(Markup);
    G.RefreshDataSet(IBrwSrc, True);
  end;
end;

procedure TOS.actModeloExecute(Sender: TObject);
begin
  inherited;
   Doc := TDoc.Create(nil);
  try
    Doc._Table := 'tb_orcamentos';
    Doc._Recno := IBrwSrcrecno.AsInteger;
    Doc.ShowModal;
  finally
    FreeAndNil(Doc);
  end;
end;

procedure TOS.actQueryProcessExecute(Sender: TObject);
var
  ACal: TCCalendarDiff;
  iStatus: integer;
  sWhere: string;
begin
  inherited;

  ACal := FrameData1.CCalendarDiff1;

  iStatus:= -2;

  with IBrwSrc do
  try
    actQueryProcess.Enabled:= False;
    sWhere := EmptyStr;

    if PageControl1.ActivePageIndex > 0 then
      iStatus := PageControl1.ActivePageIndex;

    if Trim(edPedido.Text) <> EmptyStr then
      swhere := swhere + ' a.pedido = :pedido ';

    if Trim(edCota.Text) <> EmptyStr then
    begin
      if sWhere <> EmptyStr then
        swhere := swhere + ' and ';

      swhere := swhere + 'a.cotacao = :cotacao ';
    end;

    if Trim(edID.Text) <> EmptyStr then
    begin
      if sWhere <> EmptyStr then
        swhere := swhere + ' and ';

      swhere := swhere + 'a.idos = :id ';
    end;

    if ACal.Interval <> diNone then
    begin
      if sWhere <> EmptyStr then
        swhere := swhere + ' and ';

      swhere := swhere + 'a.data between :data_de and :data_ate ';
    end;

    if Trim(edEmpresa.Text) <> EmptyStr then
    begin
      if sWhere <> EmptyStr then
        swhere := swhere + ' and ';

      sWhere := sWhere + 'c.nome_chave ilike :empresa ';
    end;

    if Trim(edRazao.Text) <> EmptyStr then
    begin
      if sWhere <> EmptyStr then
        swhere := swhere + ' and ';

      sWhere := sWhere + 'c.empresa ilike :razao ';
    end;

    if iStatus <> -2 then
    begin
      if sWhere <> EmptyStr then
        swhere := swhere + ' and ';
      sWhere := sWhere + 'a.status = :status ';
    end;

    if swhere <> '' then
      SQL.Add(' where ' + swhere);

    if Assigned(Params.FindParam('data_de')) then
    begin
      Params.ParamByName('data_de').AsDate := ACal.BeginDate;
      Params.ParamByName('data_ate').AsDate := ACal.EndDate;
    end;

    if Assigned(Params.FindParam('empresa')) then
      ParamByName('empresa').AsString := '%' + edEmpresa.Text + '%';

    if Assigned(Params.FindParam('razao')) then
      ParamByName('razao').AsString := '%' + edRazao.Text + '%';

    if Assigned(Params.FindParam('pedido')) then
      Params.ParamByName('pedido').AsInteger := Round(edPedido.Value);

    if Assigned(Params.FindParam('cotacao')) then
      Params.ParamByName('cotacao').AsInteger := Round(edCota.Value);

    if Assigned(Params.FindParam('id')) then
      Params.ParamByName('id').AsString := edID.Text;

    if Assigned(Params.FindParam('status')) then
      Params.ParamByName('status').AsInteger := iStatus;

    {Filtra registros caso trata-se de vendedores}
//    if U.Info.IsVendor then
//    begin
//      ParamByName('VendDe').AsInteger:= U.Info.IdVendor;
//      ParamByName('VendAte').AsInteger:= U.Info.IdVendor;
//    end;

    G.RefreshDataSet(IBrwSrc);
  finally
    RefreshCtrl;
    actQueryProcess.Enabled:= True;
  end;
end;

procedure TOS.DataSource1StateChange(Sender: TObject);
begin
  inherited;
  RefreshCtrl;
end;

procedure TOS.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited DBGridDrawColumnCell(Sender, Rect, DataCol, Column, State);
end;

procedure TOS.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fBitMap: TBitmap;
begin
  if (Column.Index <> 0) then
    inherited
  else
    with TDBGrid(Sender), DM do
    try
      fBitMap:= TBitmap.Create;
      fBitMap.Transparent:= True;

      with Resources do
        case IBrwSrcstatus.AsInteger of
          1: small_n.GetBitmap(205, fBitMap); //ossAprovado
          2: small_n.GetBitmap(210, fBitMap); //ossExecutando
          3: small_n.GetBitmap(213, fBitMap); //ossFinalizados
          4: small_n.GetBitmap(208, fBitMap); //ossFaturado
          5: small_n.GetBitmap(212, fBitMap); //ossAntecipação
          6: small_n.GetBitmap(209, fBitMap); //ossCancelado
        else
          small_n.GetBitmap(204, fBitMap); //ossOutroEstado
        end;

      if Column.Width <> fBitMap.Width + 2 then
        Column.Width:= fBitMap.Width + 2;

      {Desenha o status da OS}
      Canvas.Draw(Rect.Left + 1, Rect.Top + 1, fBitMap);
    finally
      fBitMap.Free;
    end;
end;

procedure TOS.CriteriaChange(Sender: TObject);
begin
  inherited;
  actQueryProcess.Enabled := True;
end;

procedure TOS.FormActivate(Sender: TObject);
begin
  inherited;
  if fLoad then
  begin
    WindowState:= wsMaximized;
    fLoad:= False;
  end;
end;

procedure TOS.FormCreate(Sender: TObject);
begin
  inherited;
  OS := Self;
  FLoad := True;

  FrameData1.ComboBox1.ItemIndex := 2;
  FrameData1.ComboBox1Change(FrameData1.ComboBox1);
end;

function TOS.GetTabela: string;
begin
  Result := 'tb_orcamentos';
end;

function TOS.GetTabelaOrigem: Integer;
begin
  Result := IBrwSrcrecno.AsInteger;
end;

procedure TOS.IBrwSrcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  IBrwSrcdata.AsDateTime := Now;
  IBrwSrcstatus.AsInteger := -1;
  IBrwSrctype_.AsInteger := 0;
end;

procedure TOS.IBrwSrcAfterScroll(DataSet: TDataSet);
begin
  qServ.ParamByName('os').AsInteger := IBrwSrcos.AsInteger;
  qMat.ParamByName('os').AsInteger := IBrwSrcos.AsInteger;
  qMObra.ParamByName('os').AsInteger := IBrwSrcos.AsInteger;
  qFatu.ParamByName('os').AsInteger := IBrwSrcos.AsInteger;
  qDesp.ParamByName('os').AsInteger := IBrwSrcos.AsInteger;
  qContatos.ParamByName('os').AsInteger := IBrwSrcos.AsInteger;

  G.RefreshDataSet(qServ);
  G.RefreshDataSet(qMat);
  G.RefreshDataSet(qMObra);
  G.RefreshDataSet(qFatu);
  G.RefreshDataSet(qDesp);
  G.RefreshDataSet(qContatos);

  RefreshCtrl;
end;

procedure TOS.IBrwSrcCalcFields(DataSet: TDataSet);
begin
  inherited;
  IBrwSrcvlsrv.AsFloat := IBrwSrcvlsrvvar.AsFloat + IBrwSrcvlsrvfixo.AsFloat;
  IBrwSrcvltotal.AsFloat := IBrwSrcvlmat.AsFloat + IBrwSrcvlsrv.AsFloat +
    IBrwSrcvlmobra.AsFloat + IBrwSrcvlsrvdesp.AsFloat;
end;

procedure TOS.IBrwSrcidclienteChange(Sender: TField);
begin
  inherited;
  // Sugere a origem do último orçamento realizado para o cliente
  if IBrwSrc.State = dsInsert then
      with U.Query do
      try
        IBrwSrcorigem.SetData(nil);

        SQL.Add(
        'select origem ' +
          'from tb_orcamentos ' +
         'where idcliente = :cliente ' +
           'and origem is not null ' +
         'order by os desc ' +
         'limit 1 ');

        ParamByName('cliente').AsInteger := IBrwSrcidcliente.AsInteger;

        Open;

        if not IsEmpty then
          IBrwSrcorigem.AsInteger := FieldByName('origem').AsInteger;
      finally
        Close;
      end;
end;

procedure TOS.OnEdit;
begin
  with DM do
  begin
    if DataSet = IBrwSrc then
    begin
      Application.CreateForm(TOSM, OSM);
      OSM.ScreenType:= stMasterDetail;
      OSM.DataSet:= IBrwSrc;
      OSM.ChildDataSet := qServ;
      OSM.ShowModal;
    end;
  end;
end;

procedure TOS.OnLog(var TableName: string; var Recno: Integer);
begin
  inherited;
  TableName := 'tb_orcamentos';
  Recno := IBrwSrcrecno.AsInteger;
end;

procedure TOS.OnPrint(Sender: TReport; var Continue: Boolean);
begin
  inherited;
  with DMReport do
    case Sender.ID of
      18:
      begin
        R00018.ParamByName('origem').AsInteger := 9;
        R00018.ParamByName('recno').AsInteger := IBrwSrcrecno.AsInteger;
        G.RefreshDataSet(R00018);
      end;
      19:
      begin
        R00019.ParamByName('os').AsInteger := IBrwSrcos.AsInteger;
        G.RefreshDataSet(R00019);
      end;
    end;
end;

procedure TOS.PageControl1Change(Sender: TObject);
begin
  inherited;
  ControlBar1.Parent := PageControl1.ActivePage;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TOS.qDespAfterDelete(DataSet: TDataSet);
begin
  inherited;
  G.RefreshDataSet(IBrwSrc, True);
end;

procedure TOS.qDespCalcFields(DataSet: TDataSet);
begin
  inherited;
  qDesphistorico_desc.AsString := qDesphistorico.AsString;
end;

procedure TOS.qFatuAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qFatuemissao.AsDateTime := now;
  qFatudtvenc.AsDateTime := qFatuemissao.AsDateTime + 21;
end;

procedure TOS.qMatAfterDelete(DataSet: TDataSet);
begin
  inherited;
  G.RefreshDataSet(IBrwSrc, True);
end;

procedure TOS.qMatAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qMatos.AsInteger := IBrwSrcos.AsInteger;
end;

procedure TOS.qMatAfterPost(DataSet: TDataSet);
begin
  inherited;
  G.RefreshDataSet(qMat, True);
  G.RefreshDataSet(IBrwSrc, True);
end;

procedure TOS.qMatCalcFields(DataSet: TDataSet);
begin
  inherited;
  qMattotal.AsCurrency:= qMatqtd.AsFloat * qMatvl_venda.AsFloat;
end;

procedure TOS.qMatcodigoChange(Sender: TField);
begin
  inherited;
  if (qMat.State = dsInsert) then
  begin
    qMatunitario.AsFloat := 0;
    qMaticms_compra.AsFloat := 18.0;
    qMatexptot.AsBoolean := True;

    if not DM.qProdutos.Active then
      DM.qProdutos.Open;

    if (DM.qProdutos.Locate('codigo', qMatcodigo.AsInteger, [])) then
      qMatunitario.AsFloat := DM.qProdutosvlrcusto.AsFloat;
  end;
end;

procedure TOS.qMatqtdChange(Sender: TField);
begin
  inherited;
  if not (Sender.DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  qMatvl_venda.AsFloat := qMatunitario.AsFloat;

  if qMaticms_compra.AsFloat > 0 then
    qMatvl_venda.AsFloat := qMatvl_venda.AsFloat / (1 - qMaticms_compra.AsFloat / 100);
end;

procedure TOS.qMObraAfterDelete(DataSet: TDataSet);
begin
  inherited;
  G.RefreshDataSet(IBrwSrc, True);
end;

procedure TOS.qMObraAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qMObraos.AsInteger := IBrwSrcos.AsInteger;
end;

procedure TOS.qMObraAfterPost(DataSet: TDataSet);
begin
  inherited;
  G.RefreshDataSet(qMObra, True);
  G.RefreshDataSet(IBrwSrc, True);
end;

procedure TOS.qServAfterDelete(DataSet: TDataSet);
begin
  inherited;
  G.RefreshDataSet(IBrwSrc, True);
end;

procedure TOS.qServAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qServos.AsInteger := IBrwSrcos.AsInteger;
  qServprnos.AsBoolean := False;
  qServprnsecserv.AsBoolean := False;
end;

procedure TOS.qServAfterPost(DataSet: TDataSet);
begin
  inherited;
  G.RefreshDataSet(qServ, True);
  G.RefreshDataSet(IBrwSrc, True);
end;

procedure TOS.qServAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qServDet.ParamByName('os').AsInteger := qServos.AsInteger;
  qServDet.ParamByName('codserv').AsInteger := qServcodserv.AsInteger;

  G.RefreshDataSet(qServDet);
end;

procedure TOS.qServCalcFields(DataSet: TDataSet);
begin
  inherited;
  qServtotal.AsFloat := qServqtd.AsFloat * qServvl_venda.AsFloat;
end;

procedure TOS.qServcodservChange(Sender: TField);
begin
  inherited;
  if (qServ.State = dsInsert) then
  begin
    qServun.AsString:= DM.qNatuun.AsString;
    qServvalor.AsFloat:= DM.qNatuvalor.AsFloat;
  end;
end;

procedure TOS.qServqtdChange(Sender: TField);
begin
  inherited;
  if not Assigned(Sender.DataSet) or not (Sender.DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  qServtotal.AsFloat := qServqtd.AsFloat * qServvalor.AsFloat;
end;

procedure TOS.RefreshCtrl;
begin
  inherited;

  if not Assigned(DataSet) or not DataSet.Active then
    Exit;

  actCli.Enabled:= True;
  actMarkup.Enabled := not IBrwSrcmarkup.IsNull;
  if (IBrwSrc.State = dsBrowse) then
    actModelo.Enabled := not IBrwSrc.IsEmpty;
  actExecutar.Enabled := not IBrwSrc.IsEmpty and (IBrwSrc.State in [dsBrowse])
    and (IBrwSrcstatus.AsInteger = 1) and (IBrwSrcpedido.IsNull);
  // Habilita a configuração
  actCancelOS.Enabled := (IBrwSrc.RecordCount > 0) and (IBrwSrcstatus.AsInteger in [1..3]);
  actAntecipacao.Enabled := not IBrwSrc.IsEmpty and (IBrwSrcstatus.AsInteger = 3);
  actLog.Enabled := not IBrwSrc.IsEmpty and (IBrwSrc.State = dsBrowse);
end;

initialization
  RegisterClass(TOS);

finalization
  UnRegisterClass(TOS);
  
end.
