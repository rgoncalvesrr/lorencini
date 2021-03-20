unit uPed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  uIUtils, ComCtrls, ExtCtrls, ToolWin, JvExMask, JvToolEdit, JvBaseEdits,
  DBCtrls, ZSequence, uReport, uFrameData;

type
  TPed = class(TIDefBrowse)
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    IBrwSrcrecno: TIntegerField;
    IBrwSrccodigo: TIntegerField;
    IBrwSrccontato: TIntegerField;
    IBrwSrccriado: TDateTimeField;
    IBrwSrcemitido: TDateTimeField;
    IBrwSrcautorizado: TDateTimeField;
    IBrwSrcaprovado: TIntegerField;
    IBrwSrcstatus: TIntegerField;
    IBrwSrcobs: TMemoField;
    IBrwSrcsolicitante: TStringField;
    IBrwSrcsolicitante_dep: TStringField;
    IBrwSrccondicaopg: TStringField;
    IBrwSrcpedido_cliente: TStringField;
    IBrwSrcempresa: TStringField;
    IBrwSrcnome_chave: TStringField;
    IBrwSrcendereco: TStringField;
    IBrwSrccep: TStringField;
    IBrwSrcbairro: TStringField;
    IBrwSrccidade: TStringField;
    IBrwSrcestado: TStringField;
    IBrwSrccnpj: TStringField;
    IBrwSrccpf: TStringField;
    IBrwSrctelefone: TStringField;
    IBrwSrcemail: TStringField;
    Label1: TLabel;
    cbStatus: TComboBox;
    Label18: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    edPedido: TJvCalcEdit;
    IBrwSrcnome: TStringField;
    IBrwSrcfuncao: TStringField;
    IBrwSrctelefone_1: TStringField;
    IBrwSrccelular: TStringField;
    IBrwSrcemail_1: TStringField;
    actPedEmitir: TAction;
    actPedProduzir: TAction;
    dsAmostras: TDataSource;
    qAmostras: TZQuery;
    qAmostrascomodato_recno: TIntegerField;
    qAmostrastipo: TIntegerField;
    qAmostrasimp_dh: TDateTimeField;
    qAmostrasimp_usr: TStringField;
    qAmostrasname: TStringField;
    qAmostrasrecno: TIntegerField;
    qAmostrasnf: TIntegerField;
    qAmostrasnf_serie: TIntegerField;
    qAmostrasnf_emissao: TDateField;
    qAmostrasnf_valor: TFloatField;
    qAmostrasvolume: TIntegerField;
    qAmostraspedido: TIntegerField;
    qAmostrasServ: TZQuery;
    dsAmostrasServ: TDataSource;
    qAmostrasetiqueta: TStringField;
    TabSheet7: TTabSheet;
    actPedLiberar: TAction;
    qDesp: TZQuery;
    dsDesp: TDataSource;
    sIBrwSrc: TZSequence;
    IBrwSrccontato_fin: TIntegerField;
    IBrwSrccontatofin_nome: TStringField;
    IBrwSrccontatofin_funcao: TStringField;
    IBrwSrccontatofin_telefone: TStringField;
    IBrwSrccontatofin_celular: TStringField;
    IBrwSrccontatofin_email: TStringField;
    IBrwSrccontato_tec: TIntegerField;
    IBrwSrccontatotec_nome: TStringField;
    IBrwSrccontatotec_telefone: TStringField;
    IBrwSrccontatotec_celular: TStringField;
    IBrwSrccontatotec_email: TStringField;
    IBrwSrccontatotec_funcao: TStringField;
    qAmostrasServpedido: TIntegerField;
    qAmostrasServcomodato_recno: TIntegerField;
    qAmostrasServrecno: TIntegerField;
    ToolBar2: TToolBar;
    ToolButton31: TToolButton;
    ToolButton32: TToolButton;
    ToolButton33: TToolButton;
    ControlBar1: TControlBar;
    qAmostrascotacao: TIntegerField;
    qAmostrasDisp: TZQuery;
    qAmostrasDispcotacao: TIntegerField;
    qAmostrasDispcomodato_recno: TIntegerField;
    qAmostrasDispservico: TIntegerField;
    qAmostrasDisptitulo: TStringField;
    qAmostrasDisprecno: TIntegerField;
    qAmostrasDispdescri: TStringField;
    qAmostrasServrelato_recno: TIntegerField;
    uAmostrasServ: TZUpdateSQL;
    sAmostrasServ: TZSequence;
    qAmostrasServcodserv: TIntegerField;
    qMat: TZQuery;
    qMatpedido: TIntegerField;
    qMatmaterial: TIntegerField;
    qMatdescricao: TStringField;
    qMatqtd: TFloatField;
    qMatunitario: TFloatField;
    qMatvtotal: TFloatField;
    qMatvvenda: TFloatField;
    qMatrecno: TIntegerField;
    dsMat: TDataSource;
    uMat: TZUpdateSQL;
    sMat: TZSequence;
    qMatunidade: TStringField;
    qMatpicms: TFloatField;
    qServ: TZQuery;
    qServpedido: TIntegerField;
    qServcodserv: TIntegerField;
    qServdescri: TStringField;
    qServunidade: TStringField;
    qServqtd: TIntegerField;
    qServunitario: TFloatField;
    qServobs: TMemoField;
    qServrecno: TIntegerField;
    qServconsumo: TFloatField;
    dsServ: TDataSource;
    uServ: TZUpdateSQL;
    sServ: TZSequence;
    qServfluido: TFloatField;
    sServDet: TZSequence;
    uServDet: TZUpdateSQL;
    qServDet: TZQuery;
    qServDetdetalhe: TIntegerField;
    qServDetdescri: TStringField;
    qServDetrecno: TIntegerField;
    dsServDet: TDataSource;
    qServDetpedido: TIntegerField;
    qServDetcodserv: TIntegerField;
    sMObra: TZSequence;
    uMObra: TZUpdateSQL;
    qMObra: TZQuery;
    qMObrafuncao: TIntegerField;
    qMObradescricao: TStringField;
    qMObraqtd: TIntegerField;
    qMObrapercentual: TFloatField;
    qMObrauteis_dias: TIntegerField;
    qMObrauteis_hrs_dias: TFloatField;
    qMObrauteis_vl_hrs: TFloatField;
    qMObrasabado_dias: TIntegerField;
    qMObrasabado_hrs_dias: TFloatField;
    qMObrasabado_vl_hrs: TFloatField;
    qMObradomingo_dias: TIntegerField;
    qMObradomingo_hrs_dias: TFloatField;
    qMObradomingo_vl_hrs: TFloatField;
    qMObraadic_not_dias: TIntegerField;
    qMObraadic_not_hrs_dias: TFloatField;
    qMObraadic_not_vl_hrs: TFloatField;
    qMObraunitario: TFloatField;
    qMObravvenda: TFloatField;
    qMObratotal: TFloatField;
    qMObrarecno: TIntegerField;
    dsMObra: TDataSource;
    qMObrapedido: TIntegerField;
    IBrwSrcgrupo: TIntegerField;
    IBrwSrcmarkup: TIntegerField;
    IBrwSrccorreio: TIntegerField;
    IBrwSrcvlmat: TFloatField;
    IBrwSrcvlsrvvar: TFloatField;
    IBrwSrcvlsrvfixo: TFloatField;
    IBrwSrcvlmobra: TFloatField;
    IBrwSrcvldespe: TFloatField;
    IBrwSrcdescri: TStringField;
    IBrwSrcreqsrv: TBooleanField;
    IBrwSrcreqmat: TBooleanField;
    IBrwSrcreqmo: TBooleanField;
    IBrwSrcvlsrv: TFloatField;
    IBrwSrcvltotal: TFloatField;
    qServvtotal: TFloatField;
    qServvvenda: TFloatField;
    qServtipo: TIntegerField;
    IBrwSrcfrete: TFloatField;
    IBrwSrcfrascos: TIntegerField;
    IBrwSrcseringas: TIntegerField;
    IBrwSrcenvio: TIntegerField;
    IBrwSrccoleta: TIntegerField;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    ToolButton12: TToolButton;
    actPedCancelar: TAction;
    actPedAprovCred: TAction;
    ToolButton13: TToolButton;
    IBrwSrcremessa: TBooleanField;
    IBrwSrclaboratorio: TBooleanField;
    IBrwSrcdestinatario: TStringField;
    IBrwSrcobs_remessa: TMemoField;
    IBrwSrccliente_empresa: TStringField;
    IBrwSrccliente_nome_chave: TStringField;
    IBrwSrccliente_cnpj: TStringField;
    IBrwSrccliente_cpf: TStringField;
    IBrwSrccliente_email: TStringField;
    IBrwSrccliente_cidade: TStringField;
    IBrwSrccliente_estado: TStringField;
    IBrwSrccliente_telefone: TStringField;
    IBrwSrccliente: TIntegerField;
    FrameData1: TFrameData;
    Label5: TLabel;
    Label6: TLabel;
    IBrwSrclote_aprov: TIntegerField;
    qDesppedido: TIntegerField;
    qDespdespesa: TIntegerField;
    qDesprecno: TIntegerField;
    qDespdata: TDateField;
    qDespdocto: TStringField;
    qDesphistorico: TMemoField;
    qDespvalor: TFloatField;
    qDesphistorico_desc: TStringField;
    uDesp: TZUpdateSQL;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    IBrwSrcdec_conf: TBooleanField;
    procedure IBrwSrcaprovadoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure IBrwSrcaprovadoSetText(Sender: TField; const Text: string);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure cbStatusChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
    procedure IBrwSrcstatusGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure IBrwSrccontatoChange(Sender: TField);
    procedure actPedEmitirExecute(Sender: TObject);
    procedure actPedProduzirExecute(Sender: TObject);
    procedure qAmostrastipoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qAmostrastipoSetText(Sender: TField; const Text: string);
    procedure qAmostrasAfterInsert(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure IBrwSrcAfterInsert(DataSet: TDataSet);
    procedure qAmostrasCalcFields(DataSet: TDataSet);
    procedure actPedLiberarExecute(Sender: TObject);
    procedure IBrwSrccontato_finChange(Sender: TField);
    procedure IBrwSrccontato_tecChange(Sender: TField);
    procedure IBrwSrccodigoChange(Sender: TField);
    procedure qAmostrasAfterScroll(DataSet: TDataSet);
    procedure qAmostrasServAfterInsert(DataSet: TDataSet);
    procedure qMatAfterInsert(DataSet: TDataSet);
    procedure qMatmaterialChange(Sender: TField);
    procedure qServcodservChange(Sender: TField);
    procedure qServAfterInsert(DataSet: TDataSet);
    procedure qMatqtdChange(Sender: TField);
    procedure qServqtdChange(Sender: TField);
    procedure qServCalcFields(DataSet: TDataSet);
    procedure qServDetAfterInsert(DataSet: TDataSet);
    procedure qServAfterScroll(DataSet: TDataSet);
    procedure qMObraAfterInsert(DataSet: TDataSet);
    procedure qMObraqtdChange(Sender: TField);
    procedure IBrwSrcCalcFields(DataSet: TDataSet);
    procedure qMatvvendaChange(Sender: TField);
    procedure qServtipoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure IBrwSrcenvioGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure IBrwSrcenvioSetText(Sender: TField; const Text: string);
    procedure IBrwSrcAfterRefresh(DataSet: TDataSet);
    procedure qMatAfterDelete(DataSet: TDataSet);
    procedure qMatAfterPost(DataSet: TDataSet);
    procedure qServAfterPost(DataSet: TDataSet);
    procedure qMObraAfterPost(DataSet: TDataSet);
    procedure actPedCancelarExecute(Sender: TObject);
    procedure actPedAprovCredExecute(Sender: TObject);
    procedure FrameData1CCalendarDiff1Change(Sender: TObject);
    procedure qDespCalcFields(DataSet: TDataSet);
    procedure qDespAfterPost(DataSet: TDataSet);
    procedure qDespAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
    FCBClientes: TComboList;
    FPrintPDF: Boolean;
    procedure OnLoad; override;
    procedure RefreshCtrl; override;
    procedure OnEdit; override;
    procedure OnPrint(Sender: TReport; var Continue: Boolean); override;
    procedure OnLog(var TableName: string; var Recno: Integer); override;
    procedure InitMat;
    procedure InitServ;
    procedure InitMObra;
  public
    { Public declarations }
  end;

var
  Ped: TPed;

implementation

uses uResources, uDM, uPedM, iTypes, uPedProducao, mcUtils, uMarkup, uDoc,
  uDMReport, uDBLog, ccalendardiff;

{$R *.dfm}

procedure TPed.actPedEmitirExecute(Sender: TObject);
var
  oPedido: TReport;
begin
  inherited;
  if not Assigned(DataSet) then
    Exit;

  if not U.Out.ConfQues('Autorizar execução do pedido %d do cliente %d - %s?',
      [IBrwSrcrecno.AsInteger, IBrwSrccodigo.AsInteger,
       IBrwSrcempresa.AsString]) then
    Exit;

  IBrwSrc.Edit;
  IBrwSrcemitido.AsDateTime := Now;
  IBrwSrc.Post;
  
  try
    // Localizado o pedido
    oPedido := FindReport(20);
    try
      if not Assigned(oPedido) then
        raise Exception.Create('Não foi possível localizar relatório 20 (pedido).');

      oPedido.PrintToDevice := False;
      oPedido.PrintToPDF := True;
      oPedido.FileName := Format('%spedido_%s.pdf', [U.Path.Orders, IBrwSrcrecno.AsString]);

      DoRpt(oPedido); // Imprimindo relatório

      if FileExists(oPedido.FileName) then
      begin
        // Gerando e-mail de autorização
        U.Data.ExecSQL('select labped_autorizacao(%d, %s)',
          [IBrwSrcrecno.AsInteger, QuotedStr(oPedido.FileName)]);
        G.RefreshDataSet(IBrwSrc);
      end;
      RefreshCtrl;
    except
      on E:exception do
      begin
        IBrwSrc.Edit;
        IBrwSrcemitido.SetData(nil);
        IBrwSrc.Post;

        U.Out.ShowErro(e.Message);
      end;
    end;
  finally
    oPedido.PrintToDevice := True;
    oPedido.PrintToPDF := False;
    oPedido.FileName := EmptyStr;
  end;
end;

procedure TPed.actPedLiberarExecute(Sender: TObject);
var
  irecno: Integer;
begin
  Markup := TMarkup.Create(nil);
  try
    U.ExecuteSQL('select calcula_markup(sys_origem(''pedido''), %d)',
      [IBrwSrcrecno.AsInteger]);
    Markup.MarkupID := IBrwSrcmarkup.AsInteger;
    Markup.MarkupAprovacao := True;
    Markup.actOk.Enabled := (IBrwSrcstatus.AsInteger = 10);
    Markup.actCancel.Enabled := (IBrwSrcstatus.AsInteger = 10);
    Markup.actCalcMarkup.Enabled := (IBrwSrcstatus.AsInteger = 10);
    Markup.Tabela := 'pedido';
    Markup.Registro := IBrwSrcrecno.AsInteger;
    Markup.ShowModal;
    if Markup.Execute then
    begin
      U.StartTransaction;
      try
        irecno := IBrwSrcrecno.AsInteger;
        if Markup.Aprovado then
          U.ExecuteSQL('update pedido set status = 20 where recno = %d', [irecno]);

        U.Commit;
      except
        on e:Exception do
        begin
          U.RollBack;
          U.Out.ShowErro(e.Message);
        end;
      end;
    end;
  finally
    FreeAndNil(Markup);
    G.RefreshDataSet(IBrwSrc, True);
  end;
end;

procedure TPed.actPedAprovCredExecute(Sender: TObject);
begin
  inherited;
  try
    try
      u.Data.ExecSQL('update pedido set status = 30 where recno = %d',
        [IBrwSrcrecno.AsInteger]);
    except
      on E:Exception do
      begin
        U.Out.ShowErro(E.Message);
      end;
    end;
  finally
    G.RefreshDataSet(IBrwSrc);
    RefreshCtrl;
  end;
end;

procedure TPed.actPedCancelarExecute(Sender: TObject);
begin
  inherited;
  if not U.Out.ConfWarn('Confirma o cancelamento do pedido %d?', [IBrwSrcrecno.AsInteger]) then
    Exit;

  try
    U.Data.ExecSQL('update pedido set status = 99 where recno = %d',
      [IBrwSrcrecno.AsInteger]);
  finally
    G.RefreshDataSet(IBrwSrc);
    RefreshCtrl;
  end;
end;

procedure TPed.actPedProduzirExecute(Sender: TObject);
begin
  inherited;
  PedProducao := TPedProducao.Create(nil);
  try
    PedProducao.ShowModal;
    if PedProducao.Execute then
    try
      if IBrwSrcremessa.AsBoolean then
        U.Data.ExecSQL('update pedido set status = 40 where recno = %d',
          [IBrwSrcrecno.AsInteger])
      else if IBrwSrclaboratorio.AsBoolean then
        // Gerando e-mail de autorização
        U.Data.ExecSQL('update pedido set status = 50 where recno = %d',
          [IBrwSrcrecno.AsInteger])
      else
        // Gerando e-mail de autorização
        U.Data.ExecSQL('update pedido set status = 60, aprovado = %d where recno = %d',
          [PedProducao.ComboBox1.ItemIndex + 1, IBrwSrcrecno.AsInteger]);

      G.RefreshDataSet(IBrwSrc);
    except
      on E:exception do
        U.Out.ShowErro(e.Message);
    end;
  finally
    FreeAndNil(PedProducao);
    RefreshCtrl;
  end;
end;

procedure TPed.actQueryProcessExecute(Sender: TObject);
var
  sWhere : string;
  ACal : TCCalendarDiff;
begin
  inherited;
  if not Assigned(DataSet) or (DataSet <> IBrwSrc) then
    Exit;

  ACal := FrameData1.CCalendarDiff1;

  with DataSet do
  begin
    if cbStatus.ItemIndex > 0 then
      sWhere := 'p.status = :status ';

    {Aplica filtro por cliente}
    if Assigned(FCBClientes.Selected) and  (FCBClientes.Selected.Value > 0) then
    begin
      if swhere <> EmptyStr then
        swhere := swhere + 'and ';

      swhere := swhere + 'p.codigo = :codigo ';
    end;

    if Trim(edPedido.Text) <> EmptyStr then
    begin
      if swhere <> EmptyStr then
        swhere := swhere + 'and ';

      swhere := swhere + 'p.recno = :pedido ';
    end;

    // Filtro por data de emissão
    if (cbStatus.ItemIndex > 3) and (ACal.Interval <> diNone) then
    begin
      if swhere <> EmptyStr then
        swhere := swhere + 'and ';

      swhere := swhere + 'p.emitido between :emissao_de and :emissao_ate ';
    end;

    if sWhere <> EmptyStr then
      SQL.Add('where ' + sWhere);

    if Assigned(Params.FindParam('pedido')) then
      Params.ParamByName('pedido').AsInteger := Round(edPedido.Value);

    if Assigned(Params.FindParam('status')) then
      case cbStatus.ItemIndex of
        1: ParamByName('status').AsInteger := 10;
        2: ParamByName('status').AsInteger := 20;
        3: ParamByName('status').AsInteger := 30;
        4: ParamByName('status').AsInteger := 40;
        5: ParamByName('status').AsInteger := 50;
        6: ParamByName('status').AsInteger := 60;
        7: ParamByName('status').AsInteger := 70;
        8: ParamByName('status').AsInteger := 99;
    end;

    if Assigned(Params.FindParam('codigo')) then
      Params.ParamByName('codigo').AsInteger := FCBClientes.Selected.Value;

    if Assigned(Params.FindParam('emissao_de')) then
    begin
      Params.ParamByName('emissao_de').AsDateTime := ACal.BeginDate;
      Params.ParamByName('emissao_ate').AsDateTime := ACal.EndDate;
    end;
  end;

  G.RefreshDataSet(DataSet);
  RefreshCtrl;
end;

procedure TPed.cbStatusChange(Sender: TObject);
begin
  inherited;
  actQueryProcess.Enabled := True;
  with PageControl1 do
  begin
    DBGrid1.SetFocus;
    ActivePageIndex := cbStatus.ItemIndex;
    FrameData1.ComboBox1.Enabled := (cbStatus.ItemIndex > 3);
    inherited PageControl1Change(PageControl1);
  end;

  actQueryProcessExecute(actQueryProcess);
end;

procedure TPed.ComboBox1Change(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQuery);
end;

procedure TPed.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fBitMap: TBitmap;
begin
  if (Column.Index <> 0) then
    inherited DBGridDrawColumnCell(Sender, Rect, DataCol, Column, State)
  else
    with TDBGrid(Sender) do
    try
      fBitMap:= TBitmap.Create;
      fBitMap.Transparent:= True;

      with Resources do
        case IBrwSrcstatus.AsInteger of
          10: small_n.GetBitmap(213, fBitMap); //Em Digitação
          20: small_n.GetBitmap(214, fBitMap); //Aprovação de Crédito
          30: small_n.GetBitmap(210, fBitMap); //Aguardando Autorização
          40: small_n.GetBitmap(211, fBitMap); //Em remessa
          50: small_n.GetBitmap(212, fBitMap); //Aguardando Amostras
          60: small_n.GetBitmap(205, fBitMap); //Em execução
          70: small_n.GetBitmap(208, fBitMap); //Executado
          99: small_n.GetBitmap(204, fBitMap); //Cancelado
        end;

      if Column.Width <> fBitMap.Width + 2 then
        Column.Width:= fBitMap.Width + 2;

      {Desenha o status da remessa}
      Canvas.Draw(Rect.Left + 1, Rect.Top + 1, fBitMap);
    finally
      fBitMap.Free;
    end;
end;

procedure TPed.FormCreate(Sender: TObject);
begin
  inherited;
  Ped := Self;
  FCBClientes := TComboList.Create(ComboBox1, 'tbclientes', 'codigo', 'nome_chave');

  ComboBox1.Items.Insert(0, '(Todos)');
  ComboBox1.ItemIndex := 0;
end;

procedure TPed.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FCBClientes);
  inherited;
end;

procedure TPed.FrameData1CCalendarDiff1Change(Sender: TObject);
begin
  inherited;
  if (cbStatus.ItemIndex > 3) then
    actQueryProcessExecute(actQuery);
end;

procedure TPed.IBrwSrcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  IBrwSrcstatus.AsInteger := 10;
  IBrwSrcfrete.AsFloat := 0;
  IBrwSrcfrascos.AsInteger := 0;
  IBrwSrcseringas.AsInteger := 0;
  IBrwSrccoleta.AsInteger := 0;
  IBrwSrcenvio.AsInteger := 1;
  IBrwSrcvlmat.AsFloat := 0;
  IBrwSrcvlsrvvar.AsFloat := 0;
  IBrwSrcvlsrvfixo.AsFloat := 0;
  IBrwSrcvlmobra.AsFloat := 0;
  IBrwSrcvldespe.AsFloat := 0;
  IBrwSrcaprovado.AsInteger := 3;
  IBrwSrcremessa.AsBoolean := False;
  IBrwSrclaboratorio.AsBoolean := False;
  IBrwSrcdec_conf.AsBoolean := True;
end;

procedure TPed.IBrwSrcAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qAmostras.ParamByName('pedido').AsInteger := IBrwSrcrecno.AsInteger;
  qDesp.ParamByName('pedido').AsInteger := IBrwSrcrecno.AsInteger;
  qMat.ParamByName('pedido').AsInteger := IBrwSrcrecno.AsInteger;
  qServ.ParamByName('pedido').AsInteger := IBrwSrcrecno.AsInteger;
  qMObra.ParamByName('pedido').AsInteger := IBrwSrcrecno.AsInteger;
//  G.RefreshDataSet(qAmostras);
  G.RefreshDataSet(qDesp);
  G.RefreshDataSet(qMat);
  G.RefreshDataSet(qServ);
  G.RefreshDataSet(qMObra);
  RefreshCtrl;
end;

procedure TPed.IBrwSrcaprovadoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Email';
    2: Text := 'Verbal';
    3: Text := 'Automática';
  end;
end;

procedure TPed.IBrwSrcaprovadoSetText(Sender: TField; const Text: string);
begin
  inherited;
  if not (IBrwSrc.State in [dsEdit, dsInsert]) then
    Exit;

  if Text = 'Email' then
    Sender.AsInteger := 1;

  if Text = 'Verbal' then
    Sender.AsInteger := 2;

  if Text = 'Automática' then
    Sender.AsInteger := 3;
end;

procedure TPed.IBrwSrcCalcFields(DataSet: TDataSet);
begin
  inherited;
  IBrwSrcvlsrv.AsFloat := IBrwSrcvlsrvvar.AsFloat + IBrwSrcvlsrvfixo.AsFloat;
  IBrwSrcvltotal.AsFloat := IBrwSrcvlmat.AsFloat + IBrwSrcvlsrv.AsFloat +
    IBrwSrcvlmobra.AsFloat + IBrwSrcvldespe.AsFloat;
end;

procedure TPed.IBrwSrccodigoChange(Sender: TField);
begin
  inherited;
  IBrwSrccontato.Clear;
  IBrwSrccontato_fin.Clear;
  IBrwSrccontato_tec.Clear;
end;

procedure TPed.IBrwSrccontatoChange(Sender: TField);
begin
  inherited;
  if not (DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  IBrwSrcnome.Clear;
  IBrwSrcfuncao.Clear;
  IBrwSrctelefone_1.Clear;
  IBrwSrcemail_1.Clear;
end;

procedure TPed.IBrwSrccontato_finChange(Sender: TField);
begin
  inherited;
  if not (DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  IBrwSrccontatofin_nome.Clear;
  IBrwSrccontatofin_funcao.Clear;
  IBrwSrccontatofin_telefone.Clear;
  IBrwSrccontatofin_email.Clear;
end;

procedure TPed.IBrwSrccontato_tecChange(Sender: TField);
begin
  inherited;
    if not (DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  IBrwSrccontatotec_nome.Clear;
  IBrwSrccontatotec_funcao.Clear;
  IBrwSrccontatotec_telefone.Clear;
  IBrwSrccontatofin_email.Clear;
end;

procedure TPed.IBrwSrcenvioGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Sedex';
    2: Text := 'Transportadora';
    3: Text := 'Cliente Retira';
  end;
end;

procedure TPed.IBrwSrcenvioSetText(Sender: TField; const Text: string);
begin
  inherited;
  if not (Sender.DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  case Text[1] of
    'S': Sender.AsInteger := 1;
    'T': Sender.AsInteger := 2;
    'C': Sender.AsInteger := 3;
  end;
end;

procedure TPed.IBrwSrcstatusGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;

  case Sender.AsInteger of
    10: Text := 'Em Digitação';
    20: Text := 'Aprovação de Crédito';
    30: Text := 'Aguardando Autorização';
    40: Text := 'Em Remessa';
    50: Text := 'Aguardando Amostras';
    60: Text := 'Executando';
    70: Text := 'Executado';
    99: Text := 'Cancelado';
  end;
end;

procedure TPed.InitMat;
begin
  qMatqtd.AsFloat := 0;
  qMatunitario.AsFloat := 0;
  qMatpicms.AsFloat := 0;
  qMatvtotal.AsFloat := 0;
  qMatvvenda.AsFloat := 0;
end;

procedure TPed.InitMObra;
begin
  qMObraqtd.AsInteger := 0;
  qMObrauteis_dias.AsInteger := 0;
  qMObrauteis_hrs_dias.AsFloat := 0;
  qMObrauteis_vl_hrs.AsFloat := 0;
  qMObrasabado_dias.AsInteger := 0;
  qMObrasabado_hrs_dias.AsFloat := 0;
  qMObrasabado_vl_hrs.AsFloat := 0;
  qMObradomingo_dias.AsInteger := 0;
  qMObradomingo_hrs_dias.AsFloat := 0;
  qMObradomingo_vl_hrs.AsFloat := 0;
  qMObraadic_not_dias.AsInteger := 0;
  qMObraadic_not_hrs_dias.AsFloat := 0;
  qMObraadic_not_vl_hrs.AsFloat := 0;
  qMObratotal.AsFloat := 0;
  qMObravvenda.AsFloat := 0;
  qMObrapercentual.AsFloat := 0;
end;

procedure TPed.InitServ;
begin
  qServqtd.AsFloat := 0;
  qServunitario.AsFloat := 0;
  qServvvenda.AsFloat := 0;
  qServvtotal.AsFloat := 0;
  qServconsumo.AsFloat := 0;
end;

procedure TPed.OnEdit;
begin
  PedM := TPedM.Create(nil);
  try
    PedM.ScreenType := stMasterDetail; 
    PedM.DataSet := IBrwSrc;
    PedM.ChildDataSet := qServ;
    PedM.ShowModal;
  finally
    FreeAndNil(PedM);
  end;

end;

procedure TPed.OnLoad;
begin
  inherited;
  cbStatus.ItemIndex := 1;
  cbStatusChange(cbStatus);
  DataSet := IBrwSrc;
end;

procedure TPed.OnLog(var TableName: string; var Recno: Integer);
begin
  inherited;
  TableName := 'pedido';
  Recno := IBrwSrcrecno.AsInteger;
end;

procedure TPed.OnPrint(Sender: TReport; var Continue: Boolean);
begin
  inherited;
  with DMReport do
  try
//    R00018.ParamByName('origem').AsInteger := 187;
//    R00018.ParamByName('recno').AsInteger := IBrwSrcrecno.AsInteger;
//    G.RefreshDataSet(R00018);
    R00020.ParamByName('pedido').AsInteger := IBrwSrcrecno.AsInteger;
    G.RefreshDataSet(R00020);

    DbLog := DbLogFactory.getInstanace('pedido', IBrwSrcrecno.AsInteger, llInfo, 'Visualização do pedido');
    DbLog.History.Add('O pedido foi pré-visualizado pelo usuário e possivelmente impresso.');
    U.Data.WriteLog(DbLog);
  finally
    FPrintPDF := False;
  end;
end;

procedure TPed.PageControl1Change(Sender: TObject);
begin
  inherited;
  if cbStatus.ItemIndex <> PageControl1.ActivePageIndex then
  begin
    cbStatus.ItemIndex := PageControl1.ActivePageIndex;
    cbStatusChange(cbStatus);
    ControlBar1.Parent := PageControl1.ActivePage;
  end;
end;

procedure TPed.qAmostrasAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qAmostraspedido.AsInteger := IBrwSrcrecno.AsInteger;
end;

procedure TPed.qAmostrasAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qAmostrasServ.ParamByName('pedido').AsInteger := qAmostraspedido.AsInteger;
  qAmostrasServ.ParamByName('comodato_recno').AsInteger := qAmostrascomodato_recno.AsInteger;
  qAmostrasDisp.ParamByName('comodato_recno').AsInteger := qAmostrascomodato_recno.AsInteger;
  G.RefreshDataSet(qAmostrasServ);
  G.RefreshDataSet(qAmostrasDisp);
end;

procedure TPed.qAmostrasCalcFields(DataSet: TDataSet);
begin
  inherited;
  qAmostrasetiqueta.AsString := mcRight(StringOfChar('0', 12) +
    qAmostrascomodato_recno.AsString, 12);
end;

procedure TPed.qAmostrasServAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qAmostrasServpedido.AsInteger := qAmostraspedido.AsInteger;
  qAmostrasServcomodato_recno.AsInteger := qAmostrascomodato_recno.AsInteger;
end;

procedure TPed.qAmostrastipoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Frasco';
    2: Text := 'Seringa';
  end;
end;

procedure TPed.qAmostrastipoSetText(Sender: TField; const Text: string);
begin
  inherited;
  if not (qAmostras.State in [dsEdit, dsInsert]) then
    Exit;

  case Text[1] of
    'F': Sender.AsInteger := 1;
    'S': Sender.AsInteger := 2;
  end;
end;

procedure TPed.qDespAfterDelete(DataSet: TDataSet);
begin
  inherited;
  G.RefreshDataSet(IBrwSrc, True);
end;

procedure TPed.qDespAfterPost(DataSet: TDataSet);
begin
  inherited;
  G.RefreshDataSet(IBrwSrc, True);
end;

procedure TPed.qDespCalcFields(DataSet: TDataSet);
begin
  inherited;
  qDesphistorico_desc.AsString := qDesphistorico.AsString;
end;

procedure TPed.qMatAfterDelete(DataSet: TDataSet);
begin
  inherited;
  G.RefreshDataSet(IBrwSrc, True);
end;

procedure TPed.qMatAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qMatpedido.AsInteger := IBrwSrcrecno.AsInteger;
  InitMat;
end;

procedure TPed.qMatAfterPost(DataSet: TDataSet);
begin
  inherited;
  G.RefreshDataSet(qMat, True);
  G.RefreshDataSet(IBrwSrc, True);
end;

procedure TPed.qMatmaterialChange(Sender: TField);
begin
  if not (Sender.DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  qMatdescricao.SetData(nil);
  qMatunidade.SetData(nil);
  InitMat;
end;

procedure TPed.qMatqtdChange(Sender: TField);
begin
  inherited;
  if not (Sender.DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  qMatvvenda.AsFloat := qMatunitario.AsFloat;

  if qMatpicms.AsFloat > 0 then
    qMatvvenda.AsFloat := qMatvvenda.AsFloat / (1 - qMatpicms.AsFloat / 100);
end;

procedure TPed.qMatvvendaChange(Sender: TField);
begin
  inherited;
  if not (Sender.DataSet.State in [dsEdit, dsInsert]) then
    Exit;
      
  qMatvtotal.AsFloat := qMatvvenda.AsFloat * qMatqtd.AsFloat;
end;

procedure TPed.qMObraAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qMObrapedido.AsInteger := IBrwSrcrecno.AsInteger;
  InitMObra;
end;

procedure TPed.qMObraAfterPost(DataSet: TDataSet);
begin
  inherited;
  G.RefreshDataSet(qMObra, True);
  G.RefreshDataSet(IBrwSrc, True);
end;

procedure TPed.qMObraqtdChange(Sender: TField);
begin
  inherited;
  if not (Sender.DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  qMObratotal.AsFloat :=
    qMObrauteis_dias.AsFloat * qMObrauteis_hrs_dias.AsFloat *
    qMObrauteis_vl_hrs.AsFloat * qMObraqtd.AsFloat +
    qMObrasabado_dias.AsFloat * qMObrasabado_hrs_dias.AsFloat *
    qMObrasabado_vl_hrs.AsFloat * qMObraqtd.AsFloat +
    qMObradomingo_dias.AsFloat * qMObradomingo_hrs_dias.AsFloat *
    qMObradomingo_vl_hrs.AsFloat * qMObraqtd.AsFloat +
    qMObraadic_not_dias.AsFloat * qMObraadic_not_hrs_dias.AsFloat *
    qMObraadic_not_vl_hrs.AsFloat * qMObraqtd.AsFloat;
end;

procedure TPed.IBrwSrcAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  G.RefreshDataSet(IBrwSrc, True);
end;

procedure TPed.qServAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qServpedido.AsInteger := IBrwSrcrecno.AsInteger;
  InitServ;
end;

procedure TPed.qServAfterPost(DataSet: TDataSet);
begin
  inherited;
  G.RefreshDataSet(qServ, True);
  G.RefreshDataSet(IBrwSrc, True);
end;

procedure TPed.qServAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qServDet.ParamByName('pedido').AsInteger := qServpedido.AsInteger;
  qServDet.ParamByName('servico').AsInteger := qServcodserv.AsInteger;
  G.RefreshDataSet(qServDet);
end;

procedure TPed.qServCalcFields(DataSet: TDataSet);
begin
  inherited;
  qServfluido.AsFloat := qServqtd.AsFloat * qServconsumo.AsFloat;
end;

procedure TPed.qServcodservChange(Sender: TField);
begin
  inherited;
  if not (qServ.State in [dsEdit, dsInsert]) then
    Exit;

  qServdescri.SetData(nil);
  qServunidade.SetData(nil);

  if Sender.IsNull then
     Exit;

  // Obtem o preço unitário para o cliente e serviço informado
  with U.Data.Query do
  try
    SQL.Text :=
    'select serv_preco(:cliente, :servico)';

    ParamByName('cliente').AsInteger := IBrwSrccodigo.AsInteger;
    ParamByName('servico').AsInteger := Sender.AsInteger;

    Open;

    qServunitario.AsFloat := Fields[0].AsFloat;
    qServvvenda.AsFloat := qServunitario.AsFloat;
  finally
    Close;
  end;
end;

procedure TPed.qServDetAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qServDetpedido.AsInteger := qServpedido.AsInteger;
  qServDetcodserv.AsInteger := qServcodserv.AsInteger;
end;

procedure TPed.qServqtdChange(Sender: TField);
begin
  inherited;
  if not (Sender.DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  qServvtotal.AsFloat := qServqtd.AsFloat * qServvvenda.AsFloat;
end;

procedure TPed.qServtipoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Variável';
    2: Text := 'Fixo';
  end;
end;

procedure TPed.RefreshCtrl;
begin
  actPedEmitir.Enabled := False;
  actPedProduzir.Enabled := False;
  actPedCancelar.Enabled := False;
  actPedAprovCred.Enabled := False;
  
  inherited;
  try
    if IBrwSrc.IsEmpty then
      Exit;

    actPedEmitir.Enabled := (IBrwSrc.State = dsBrowse) and (IBrwSrcstatus.AsInteger = 30);
    actPedCancelar.Enabled := (IBrwSrc.State = dsBrowse) and (IBrwSrcstatus.AsInteger in [20, 30, 40]);
    actPedAprovCred.Enabled := (IBrwSrc.State = dsBrowse) and (IBrwSrcstatus.AsInteger = 20);
    actPedProduzir.Enabled := (IBrwSrc.State = dsBrowse) and
      (not IBrwSrcemitido.IsNull) and (IBrwSrcstatus.AsInteger = 30);
    actPedLiberar.Enabled := (IBrwSrc.State = dsBrowse) and (IBrwSrcstatus.AsInteger = 10);
    actDel.Enabled := (IBrwSrc.State = dsBrowse) and (IBrwSrc.RecordCount > 0)
      and (IBrwSrcstatus.AsInteger = 10);
    actEdit.Enabled := actDel.Enabled;
    actLog.Enabled := not IBrwSrc.IsEmpty and (IBrwSrc.State = dsBrowse);
  finally
    actPedLiberar.Visible := actPedLiberar.Enabled or (cbStatus.ItemIndex = 0);
    actPedEmitir.Visible := actPedEmitir.Enabled or (cbStatus.ItemIndex = 0);
    actPedCancelar.Visible := actPedCancelar.Enabled or (cbStatus.ItemIndex = 0);
    actPedAprovCred.Visible := actPedAprovCred.Enabled or (cbStatus.ItemIndex = 0);
    actPedProduzir.Visible := actPedProduzir.Enabled or (cbStatus.ItemIndex = 0);

    ToolBar2.Visible := actPedLiberar.Visible or actPedEmitir.Visible or
      actPedProduzir.Visible or actPedCancelar.Visible or actPedAprovCred.Visible;

    if Assigned(PedM) then
    begin
      PedM.actNewMaster.Enabled := actNew.Enabled;
      PedM.actEditMaster.Enabled := actEdit.Enabled;
      PedM.actDelMaster.Enabled := actDel.Enabled;
    end;
  end;
end;

initialization
  RegisterClass(TPed);

finalization
  UnRegisterClass(TPed);


end.
