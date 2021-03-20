unit uCota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, uFrameData, uIUtils, JvExMask, JvToolEdit,
  JvBaseEdits, uReport, ZSequence;

type
  TCota = class(TIDefBrowse)
    IBrwSrcrecno: TIntegerField;
    IBrwSrccliente: TIntegerField;
    IBrwSrcvendedor: TIntegerField;
    IBrwSrcgrupo: TIntegerField;
    IBrwSrcstatus: TIntegerField;
    IBrwSrcemissao: TDateTimeField;
    IBrwSrcvalidade: TDateField;
    IBrwSrcempresa: TStringField;
    IBrwSrcnome_chave: TStringField;
    IBrwSrccnpj: TStringField;
    IBrwSrccpf: TStringField;
    IBrwSrcdescri: TStringField;
    IBrwSrcreqsrv: TBooleanField;
    IBrwSrcreqmat: TBooleanField;
    IBrwSrcreqmo: TBooleanField;
    IBrwSrcnome: TStringField;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    FrameData1: TFrameData;
    Label4: TLabel;
    Label3: TLabel;
    cbStatus: TComboBox;
    Label1: TLabel;
    Label18: TLabel;
    ComboBox1: TComboBox;
    TabSheet5: TTabSheet;
    ComboBox2: TComboBox;
    Label5: TLabel;
    Label6: TLabel;
    edCota: TJvCalcEdit;
    qMat: TZQuery;
    dsMat: TDataSource;
    zMat: TZUpdateSQL;
    qMatcotacao: TIntegerField;
    qMatrecno: TIntegerField;
    qMatmaterial: TIntegerField;
    qMatdescricao: TStringField;
    qMatqtd: TFloatField;
    qMatunidade: TStringField;
    qMatunitario: TFloatField;
    qMatpicms: TFloatField;
    qMatvtotal: TFloatField;
    qMatvvenda: TFloatField;
    actSolAprov: TAction;
    IBrwSrcstatusDesc: TStringField;
    dsServ: TDataSource;
    qServ: TZQuery;
    zServ: TZUpdateSQL;
    qServcotacao: TIntegerField;
    qServservico: TIntegerField;
    qServdescri: TStringField;
    qServqtd: TFloatField;
    qServunidade: TStringField;
    qServunitario: TFloatField;
    qServvtotal: TFloatField;
    qServvvenda: TFloatField;
    qServtipo: TIntegerField;
    qServrecno: TIntegerField;
    uServDet: TZUpdateSQL;
    qServDet: TZQuery;
    dsServDet: TDataSource;
    qServDetcotacao: TIntegerField;
    qServDetservico: TIntegerField;
    qServDetdetalhe: TIntegerField;
    qServDetdescri: TStringField;
    qServDetrecno: TIntegerField;
    zMObra: TZUpdateSQL;
    qMObra: TZQuery;
    dsMObra: TDataSource;
    qMObracotacao: TIntegerField;
    qMObrafuncao: TIntegerField;
    qMObraqtd: TIntegerField;
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
    qMObratotal: TFloatField;
    qMObravvenda: TFloatField;
    qMObrapercentual: TFloatField;
    qMObrarecno: TIntegerField;
    qMObradescricao: TStringField;
    IBrwSrcvlmat: TFloatField;
    IBrwSrcvlsrvvar: TFloatField;
    IBrwSrcvlsrvfixo: TFloatField;
    IBrwSrcvlmobra: TFloatField;
    IBrwSrcvlsrv: TFloatField;
    IBrwSrcvltotal: TFloatField;
    IBrwSrcmarkup: TIntegerField;
    actMarkup: TAction;
    Markup1: TMenuItem;
    actModelo: TAction;
    Modelo1: TMenuItem;
    IBrwSrcdescricao: TMemoField;
    IBrwSrccontato: TIntegerField;
    IBrwSrccontato_nome: TStringField;
    IBrwSrccontato_telefone: TStringField;
    IBrwSrccontato_celular: TStringField;
    IBrwSrccontato_email: TStringField;
    zsCota: TZSequence;
    zsCotaMat: TZSequence;
    zsServ: TZSequence;
    zsServDet: TZSequence;
    zsMObra: TZSequence;
    qMObraunitario: TFloatField;
    IBrwSrcfrascos: TIntegerField;
    IBrwSrcseringas: TIntegerField;
    IBrwSrcenvio: TIntegerField;
    IBrwSrcfrete: TFloatField;
    IBrwSrcvldespe: TFloatField;
    IBrwSrccorreio: TIntegerField;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    ToolBar2: TToolBar;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton12: TToolButton;
    IBrwSrcatividade: TStringField;
    ToolButton13: TToolButton;
    actAutorizar: TAction;
    IBrwSrccoleta: TIntegerField;
    IBrwSrcpedcli: TStringField;
    TabSheet9: TTabSheet;
    actCancelarCotacao: TAction;
    ToolButton14: TToolButton;
    Label7: TLabel;
    edPedcli: TJvCalcEdit;
    IBrwSrcsituacaoenvio: TIntegerField;
    IBrwSrccontato_fin: TIntegerField;
    IBrwSrccontatofin_nome: TStringField;
    IBrwSrccontatofin_telefone: TStringField;
    IBrwSrccontatofin_celular: TStringField;
    IBrwSrccontatofin_email: TStringField;
    IBrwSrccontato_tec: TIntegerField;
    IBrwSrccontatotec_nome: TStringField;
    IBrwSrccontatotec_telefone: TStringField;
    IBrwSrccontatotec_celular: TStringField;
    IBrwSrccontatotec_email: TStringField;
    ControlBar1: TControlBar;
    IBrwSrccidade: TStringField;
    IBrwSrcestado: TStringField;
    IBrwSrcremessa: TBooleanField;
    IBrwSrclaboratorio: TBooleanField;
    actRevalidar: TAction;
    ToolButton15: TToolButton;
    qDesp: TZQuery;
    dsDesp: TDataSource;
    qDespcotacao: TIntegerField;
    qDespdespesa: TIntegerField;
    qDesprecno: TIntegerField;
    qDespdata: TDateField;
    qDespdocto: TStringField;
    qDesphistorico: TMemoField;
    qDespvalor: TFloatField;
    qDesphistorico_desc: TStringField;
    zDesp: TZUpdateSQL;
    IBrwSrccondicaopg: TStringField;
    IBrwSrcdec_conf: TBooleanField;
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cbStatusChange(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FrameData1CCalendarDiff1Change(Sender: TObject);
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
    procedure IBrwSrcAfterInsert(DataSet: TDataSet);
    procedure IBrwSrcgrupoChange(Sender: TField);
    procedure IBrwSrcvendedorChange(Sender: TField);
    procedure IBrwSrcclienteChange(Sender: TField);
    procedure actSolAprovExecute(Sender: TObject);
    procedure IBrwSrcCalcFields(DataSet: TDataSet);
    procedure qMatAfterInsert(DataSet: TDataSet);
    procedure qMatqtdChange(Sender: TField);
    procedure qMatmaterialChange(Sender: TField);
    procedure qMatvtotalChange(Sender: TField);
    procedure qServAfterInsert(DataSet: TDataSet);
    procedure qServtipoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qServservicoChange(Sender: TField);
    procedure qServqtdChange(Sender: TField);
    procedure qServAfterScroll(DataSet: TDataSet);
    procedure qMObraAfterInsert(DataSet: TDataSet);
    procedure qMObraqtdChange(Sender: TField);
    procedure actMarkupExecute(Sender: TObject);
    procedure actModeloExecute(Sender: TObject);
    procedure IBrwSrcAfterEdit(DataSet: TDataSet);
    procedure IBrwSrccontatoChange(Sender: TField);
    procedure IBrwSrcenvioGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure IBrwSrcenvioSetText(Sender: TField; const Text: string);
    procedure IBrwSrcenvioChange(Sender: TField);
    procedure DataSource1StateChange(Sender: TObject);
    procedure actAutorizarExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure actCancelarCotacaoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IBrwSrcsituacaoenvioGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure IBrwSrccontato_finChange(Sender: TField);
    procedure IBrwSrccontato_tecChange(Sender: TField);
    procedure actRevalidarExecute(Sender: TObject);
    procedure qDespCalcFields(DataSet: TDataSet);
    procedure qMatAfterPost(DataSet: TDataSet);
    procedure qServAfterPost(DataSet: TDataSet);
    procedure qMObraAfterPost(DataSet: TDataSet);
    procedure qDespAfterPost(DataSet: TDataSet);
    procedure qDespAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
    FCBClientes: TComboList;
    FCBGrupo: TComboList;
    procedure OnLoad; override;
    procedure OnEdit; override;
    procedure RefreshCtrl; override;
    procedure InitMat;
    procedure InitServ;
    procedure InitMObra;
    procedure OnPrint(Sender: TReport; var Continue: Boolean); override;
    procedure OnLog(var TableName: string; var Recno: Integer); override;
    function GetTabela: string; override;
    function GetTabelaOrigem: Integer; override;
  public
    { Public declarations }
  end;

var
  Cota: TCota;

implementation

uses uDM, uResources, ccalendardiff, uCotaM, iTypes, uMarkup, uDoc, uDMReport, uDBLog, uCotaAutorizar, uCotaCancelar;

{$R *.dfm}

procedure TCota.actSolAprovExecute(Sender: TObject);
begin
  inherited;
  try
    U.ExecuteSQL('update cota set status = 2 where recno = %d',
      [IBrwSrcrecno.AsInteger]);
      
    G.RefreshDataSet(IBrwSrc);
  except
    on e:Exception do
      U.Out.ShowErro(e.Message);
  end;
end;

procedure TCota.actAutorizarExecute(Sender: TObject);
begin
  inherited;

  U.ExecuteSQL('select calcula_markup(sys_origem(''cota''), %d)',
      [IBrwSrcrecno.AsInteger]);
  G.RefreshDataSet(IBrwSrc, True);

  CotaAutorizar := TCotaAutorizar.Create(nil);
  try
    CotaAutorizar.ShowModal;
    if CotaAutorizar.Execute then
      U.Out.ShowInfo('Cotação %d aprovada!', [IBrwSrcrecno.AsInteger]);
  finally
    G.RefreshDataSet(IBrwSrc);
    RefreshCtrl;
  end;
end;

procedure TCota.actCancelarCotacaoExecute(Sender: TObject);
begin
  inherited;
  CotaCancelar := TCotaCancelar.Create(nil);
  try
    CotaCancelar.ShowModal;
    if CotaCancelar.Execute then
    begin
       U.ExecuteSQL('select cancelarcotacao(%d, %d);', [IBrwSrcrecno.AsInteger, CotaCancelar.Motivo]);
       U.Out.ShowInfo('Cotação %d cancelada!', [IBrwSrcrecno.AsInteger]);
    end;
  finally
    FreeAndNil(CotaCancelar);
    G.RefreshDataSet(IBrwSrc);
    RefreshCtrl;
  end;
end;

procedure TCota.actMarkupExecute(Sender: TObject);
var
  irecno: Integer;
begin
  Markup := TMarkup.Create(nil);
  try
    U.ExecuteSQL('select calcula_markup(sys_origem(''cota''), %d)',
      [IBrwSrcrecno.AsInteger]);
    Markup.MarkupID := IBrwSrcmarkup.AsInteger;
    Markup.MarkupAprovacao := True;
    Markup.actOk.Enabled := (IBrwSrcstatus.AsInteger = 2);
    Markup.actCancel.Enabled := (IBrwSrcstatus.AsInteger = 2);
    Markup.actCalcMarkup.Enabled := (IBrwSrcstatus.AsInteger <= 2);
    Markup.Tabela := 'cota';
    Markup.Registro := IBrwSrcrecno.AsInteger;
    Markup.ShowModal;
    if Markup.Execute then
    begin
      U.StartTransaction;
      try
        irecno := IBrwSrcrecno.AsInteger;
        if Markup.Aprovado then
          U.ExecuteSQL('update cota set status = 3 where recno = %d', [irecno])
        else
        begin
          // Colocando em digitação
          U.ExecuteSQL('select sys_flag_mark(''cota'', %d);', [irecno]);
          U.ExecuteSQL('update cota set status = 1 where recno = %d;', [irecno]);
          U.ExecuteSQL('select sys_flag_del(''cota'', %d);', [irecno]);
        end;

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

procedure TCota.actModeloExecute(Sender: TObject);
begin
  Doc := TDoc.Create(nil);
  try
    Doc._Table := 'cota';
    Doc._Recno := IBrwSrcrecno.AsInteger;
    Doc.ShowModal;
  finally
    FreeAndNil(Doc);
  end;

end;

procedure TCota.actQueryProcessExecute(Sender: TObject);
var
  sWhere : string;
  ACal : TCCalendarDiff;
begin
  inherited;
  if not Assigned(DataSet) or (DataSet <> IBrwSrc) then
    Exit;

  ACal := FrameData1.CCalendarDiff1;
  sWhere := EmptyStr;

  with DataSet do
  begin
    if (cbStatus.ItemIndex in [1..6, 8]) then
      sWhere := 'co.status = :status '
    else if (cbStatus.ItemIndex = 7) then
      sWhere := 'co.status = 7 ';

    if cbStatus.ItemIndex = 4 then
    begin
      if swhere <> EmptyStr then
        swhere := swhere + 'and ';

      swhere := swhere + 'co.validade >= current_date ';
    end;

    if cbStatus.ItemIndex = 7 then
    begin
      if swhere <> EmptyStr then
        swhere := swhere + 'and ';

      swhere := swhere + 'co.validade < current_date ';
    end;

    {Aplica filtro por cliente}
    if Assigned(FCBClientes.Selected) and  (FCBClientes.Selected.Value > 0) then
    begin
      if swhere <> EmptyStr then
        swhere := swhere + 'and ';

      swhere := swhere + 'co.cliente = :codigo ';
    end;


    {Aplica filtro por cliente}
    if Assigned(FCBGrupo.Selected) and  (FCBGrupo.Selected.Value > 0) then
    begin
      if swhere <> EmptyStr then
        swhere := swhere + 'and ';

      swhere := swhere + 'co.grupo = :grupo ';
    end;

    // Aplica intervalo de data
    if ACal.Interval <> diNone then
    begin
      if sWhere <> EmptyStr then
        sWhere := sWhere + ' and ';

      sWhere := sWhere + 'co.emissao between ' +
        ACal.FormatedDate('yyyy-mm-dd', fdDateBegin, True) + ' and ' +
        ACal.FormatedDate('yyyy-mm-dd', fdDateEnd, True) + ' ';
    end;

    if Trim(edCota.Text) <> EmptyStr then
    begin
      if swhere <> EmptyStr then
        swhere := swhere + 'and ';

      swhere := swhere + 'co.recno = :cotacao ';
    end;

    if Trim(edPedcli.Text) <> EmptyStr then
    begin
      if swhere <> EmptyStr then
        swhere := swhere + 'and ';

      swhere := swhere + 'co.pedcli = :pedido ';
    end;

    if sWhere <> EmptyStr then
      SQL.Add('where ' + sWhere);

    if Assigned(Params.FindParam('status')) then
      ParamByName('status').AsInteger := cbStatus.ItemIndex;

    if Assigned(Params.FindParam('codigo')) then
      Params.ParamByName('codigo').AsInteger := FCBClientes.Selected.Value;

    if Assigned(Params.FindParam('pedido')) then
      Params.ParamByName('pedido').AsString := edPedcli.Text;

    if Assigned(Params.FindParam('grupo')) then
      Params.ParamByName('grupo').AsInteger := FCBGrupo.Selected.Value;

    if Assigned(Params.FindParam('cotacao')) then
      Params.ParamByName('cotacao').AsInteger := Round(edCota.Value);
  end;

  G.RefreshDataSet(DataSet);

  RefreshCtrl;
end;

procedure TCota.actRevalidarExecute(Sender: TObject);
var
  icota: Integer;
begin
  inherited;

  icota := IBrwSrcrecno.AsInteger;
  
  if not U.Out.ConfQues('Confirma revalidação da cotação %d?', [icota]) then
    Exit;

  try
    U.Data.ExecSQL('select sys_flag_mark(''cota'', %d);', [icota]);
    U.Data.ExecSQL('update cota set status = 1, validade = current_date + 15 where recno = %d;', [icota]);
    U.Data.ExecSQL('select sys_flag_del(''cota'', %d);', [icota]);
    G.RefreshDataSet(IBrwSrc);

    U.Out.ShowInfo('Cotação %d colocada em digitação!', [icota]);
    RefreshCtrl;
  except
    on e:Exception do
      U.Out.ShowErro(e.Message);
  end;
end;

procedure TCota.cbStatusChange(Sender: TObject);
begin
  actQueryProcess.Enabled := True;
  with PageControl1 do
  begin
    ActivePageIndex := cbStatus.ItemIndex;
    inherited PageControl1Change(PageControl1);
  end;

  actQueryProcessExecute(actQueryProcess);
end;

procedure TCota.ComboBox1Change(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQuery);
end;

procedure TCota.DataSource1StateChange(Sender: TObject);
begin
  inherited;
  RefreshCtrl;
end;

procedure TCota.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fBitMap: TBitmap;
begin
  fBitMap := nil;
  
  if (Column.Index <> 0) then
    inherited
  else
    with TDBGrid(Sender), DM do
    try
      fBitMap:= TBitmap.Create;
      fBitMap.Transparent:= True;

      with Resources do
        case IBrwSrcstatus.AsInteger of
          1: small_n.GetBitmap(214, fBitMap); //Em Aberto
          2: small_n.GetBitmap(213, fBitMap); //Calculada
          3: small_n.GetBitmap(211, fBitMap); //Liberada
          4: small_n.GetBitmap(208, fBitMap); //Em Estudo
          5: small_n.GetBitmap(205, fBitMap); //Autorizada
          6: small_n.GetBitmap(210, fBitMap); //Executadas
          7: small_n.GetBitmap(204, fBitMap); //Expirada
          8: small_n.GetBitmap(209, fBitMap); //Cancelada
        else
          small_n.GetBitmap(214, fBitMap);  
        end;

      if Column.Width <> fBitMap.Width + 2 then
        Column.Width:= fBitMap.Width + 2;

      {Desenha o status da OS}
      Canvas.Draw(Rect.Left + 1, Rect.Top + 1, fBitMap);
    finally
      fBitMap.Free;
    end;
end;

procedure TCota.FormActivate(Sender: TObject);
begin
  inherited;
  DBGrid1.SetFocus;
end;

procedure TCota.FormCreate(Sender: TObject);
begin
  inherited;
  Cota := Self;
  FCBClientes := TComboList.Create(ComboBox1, 'tbclientes', 'codigo', 'nome_chave');
  FCBGrupo := TComboList.Create(ComboBox2, 'orca_grupo', 'recno', 'descri');

  ComboBox1.Items.Insert(0, '(Todos)');
  ComboBox1.ItemIndex := 0;

  ComboBox2.Items.Insert(0, '(Todos)');
  ComboBox2.ItemIndex := 0;

  FrameData1.CCalendarDiff1.Interval := diQuarterly;
end;

procedure TCota.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FCBClientes);
  FreeAndNil(FCBGrupo);
  inherited;
end;

procedure TCota.FormShow(Sender: TObject);
begin
  inherited;
  DBGrid1.SetFocus;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TCota.FrameData1CCalendarDiff1Change(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQueryProcess);
end;

function TCota.GetTabela: string;
begin
  Result := 'cota';
end;

function TCota.GetTabelaOrigem: Integer;
begin
  Result := IBrwSrcrecno.AsInteger;
end;

procedure TCota.IBrwSrcAfterEdit(DataSet: TDataSet);
begin
  inherited;
  RefreshCtrl;
end;

procedure TCota.IBrwSrcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  IBrwSrcstatus.AsInteger := 1;
  IBrwSrccoleta.AsInteger := 1;
  IBrwSrcemissao.AsDateTime := Date;
  IBrwSrcvlmat.AsFloat := 0;
  IBrwSrcvlsrvvar.AsFloat := 0;
  IBrwSrcvlsrvfixo.AsFloat := 0;
  IBrwSrcvlmobra.AsFloat := 0;
  IBrwSrcvltotal.AsFloat := 0;
  IBrwSrcenvio.AsInteger := 1;
  IBrwSrcremessa.AsBoolean := False;
  IBrwSrclaboratorio.AsBoolean := False;
  IBrwSrcdec_conf.AsBoolean := True;
end;

procedure TCota.IBrwSrcAfterScroll(DataSet: TDataSet);
begin
  inherited;
  try
    qMat.ParamByName('cotacao').AsInteger := IBrwSrcrecno.AsInteger;
    qServ.ParamByName('cotacao').AsInteger := IBrwSrcrecno.AsInteger;
    qMObra.ParamByName('cotacao').AsInteger := IBrwSrcrecno.AsInteger;
    qDesp.ParamByName('cotacao').AsInteger := IBrwSrcrecno.AsInteger;
    G.RefreshDataSet(qMat);
    G.RefreshDataSet(qServ);
    G.RefreshDataSet(qMObra);
    G.RefreshDataSet(qDesp);
  finally
    RefreshCtrl;
  end;

end;

procedure TCota.IBrwSrcCalcFields(DataSet: TDataSet);
begin
  inherited;
  case IBrwSrcstatus.AsInteger of
    1: IBrwSrcstatusDesc.AsString := 'Em Digitação';
    2: IBrwSrcstatusDesc.AsString := 'Em Aprovação';
    3: IBrwSrcstatusDesc.AsString := 'Aprovada';
    4: IBrwSrcstatusDesc.AsString := 'Em Estudo';
    5: IBrwSrcstatusDesc.AsString := 'Autorizada';
    6: IBrwSrcstatusDesc.AsString := 'Executada';
    7: IBrwSrcstatusDesc.AsString := 'Expirada';
    8: IBrwSrcstatusDesc.AsString := 'Cancelada';
  end;

  IBrwSrcvlsrv.AsFloat := IBrwSrcvlsrvvar.AsFloat + IBrwSrcvlsrvfixo.AsFloat;
  IBrwSrcvltotal.AsFloat := IBrwSrcvlmat.AsFloat + IBrwSrcvlsrv.AsFloat +
    IBrwSrcvlmobra.AsFloat + IBrwSrcvldespe.AsFloat;

end;

procedure TCota.IBrwSrcclienteChange(Sender: TField);
begin
  inherited;
  IBrwSrcempresa.SetData(nil);
  IBrwSrcnome_chave.SetData(nil);
  IBrwSrccnpj.SetData(nil);
  IBrwSrccpf.SetData(nil);
  IBrwSrccontato.SetData(nil);
  IBrwSrccontato_fin.SetData(nil);
  IBrwSrccontato_tec.SetData(nil);
end;

procedure TCota.IBrwSrccontatoChange(Sender: TField);
begin
  inherited;
  IBrwSrccontato_nome.SetData(nil);
  IBrwSrccontato_telefone.SetData(nil);
  IBrwSrccontato_celular.SetData(nil);
  IBrwSrccontato_email.SetData(nil);
end;

procedure TCota.IBrwSrccontato_finChange(Sender: TField);
begin
  inherited;
  IBrwSrccontatofin_nome.SetData(nil);
  IBrwSrccontatofin_telefone.SetData(nil);
  IBrwSrccontatofin_celular.SetData(nil);
  IBrwSrccontatofin_email.SetData(nil);
end;

procedure TCota.IBrwSrccontato_tecChange(Sender: TField);
begin
  inherited;
  IBrwSrccontatotec_nome.SetData(nil);
  IBrwSrccontatotec_telefone.SetData(nil);
  IBrwSrccontatotec_celular.SetData(nil);
  IBrwSrccontatotec_email.SetData(nil);
end;

procedure TCota.IBrwSrcenvioChange(Sender: TField);
begin
  inherited;
  if not (Sender.DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  if Sender.AsInteger = 3 then
    IBrwSrcfrete.AsFloat := 0;

  if Sender.AsInteger <> 1 then
    IBrwSrccorreio.SetData(nil);
end;

procedure TCota.IBrwSrcenvioGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Sedex';
    2: Text := 'Transportadora';
    3: Text := 'Cliente Retira';
  end;
end;

procedure TCota.IBrwSrcenvioSetText(Sender: TField; const Text: string);
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

procedure TCota.IBrwSrcgrupoChange(Sender: TField);
begin
  inherited;
  IBrwSrcdescri.SetData(nil);
end;

procedure TCota.IBrwSrcsituacaoenvioGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  if Sender.IsNull then
    Text := 'Desconhecida'
  else
    case Sender.AsInteger of
      0: Text := 'Aguardando Ação';
      1: Text := 'Remessas em Processamento';
      2: Text := 'Montagem de Volumes';
      3: Text := 'Preparação de Despacho';
      4: Text := 'Liberado Expedição';
      5: Text := 'Registro de Rastreio';
      6: Text := 'Finalizado';
    end;
end;

procedure TCota.IBrwSrcvendedorChange(Sender: TField);
begin
  inherited;
  IBrwSrcnome.SetData(nil);
end;

procedure TCota.InitMat;
begin
  qMatqtd.AsFloat := 0;
  qMatunitario.AsFloat := 0;
  qMatpicms.AsFloat := 0;
  qMatvtotal.AsFloat := 0;
  qMatvvenda.AsFloat := 0;
end;

procedure TCota.InitMObra;
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

procedure TCota.InitServ;
begin
  qServqtd.AsFloat := 0;
  qServunitario.AsFloat := 0;
  qServvtotal.AsFloat := 0;
  qServvvenda.AsFloat := 0;
end;

procedure TCota.OnEdit;
begin
  CotaM := TCotaM.Create(nil);
  try
    CotaM.DataSet := IBrwSrc;
    CotaM.ScreenType := stMasterDetail;
    CotaM.ChildDataSet := qServ;
    CotaM.ShowModal;
  finally
    FreeAndNil(CotaM);
  end;
end;

procedure TCota.OnLoad;
begin
  inherited;
  cbStatusChange(cbStatus);
end;

procedure TCota.OnLog(var TableName: string; var Recno: Integer);
begin
  inherited;
  TableName := GetTabela;
  Recno := GetTabelaOrigem;
end;

procedure TCota.OnPrint(Sender: TReport; var Continue: Boolean);
begin
  inherited;
  with DMReport do
  begin
    R00018.ParamByName('origem').AsInteger := 198;
    R00018.ParamByName('recno').AsInteger := IBrwSrcrecno.AsInteger;
    G.RefreshDataSet(R00018);
    
    DbLog := DbLogFactory.getInstanace('cota', IBrwSrcrecno.AsInteger, llInfo, 'Visualização de cotação');
    DbLog.History.Add('A cotação foi pré-visualizada pelo usuário e possivelmente impressa.');
    U.Data.WriteLog(DbLog);

    if IBrwSrcstatus.AsInteger = 3 then
    try
      DbLog.Description := 'Cotação enviada ao cliente';
      DbLog.History.Text := 'A cotação foi pré-visualizada pelo usuário e possivelmente enviada ao cliente.';
      U.Data.WriteLog(DbLog);

      U.ExecuteSQL('update cota set status = 4 where recno = %d and status = 3',
        [IBrwSrcrecno.AsInteger]);

      G.RefreshDataSet(IBrwSrc);
    except
      on e:Exception do
        U.Out.ShowErro(e.Message);
    end;
  end;
end;

procedure TCota.PageControl1Change(Sender: TObject);
begin
  inherited;
  if cbStatus.ItemIndex <> PageControl1.ActivePageIndex then
  begin
    cbStatus.ItemIndex := PageControl1.ActivePageIndex;
    cbStatusChange(cbStatus);
    ControlBar1.Parent :=  PageControl1.ActivePage;
  end;
end;

procedure TCota.qDespAfterDelete(DataSet: TDataSet);
begin
  inherited;
  G.RefreshDataSet(IBrwSrc, True);
end;

procedure TCota.qDespAfterPost(DataSet: TDataSet);
begin
  inherited;
  G.RefreshDataSet(IBrwSrc, True);
end;

procedure TCota.qDespCalcFields(DataSet: TDataSet);
begin
  inherited;
  qDesphistorico_desc.AsString := qDesphistorico.AsString;
end;

procedure TCota.qMatAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qMatcotacao.AsInteger := IBrwSrcrecno.AsInteger;
  InitMat;
end;

procedure TCota.qMatAfterPost(DataSet: TDataSet);
begin
  inherited;
  G.RefreshDataSet(qMat, True);
  G.RefreshDataSet(IBrwSrc, True);
end;

procedure TCota.qMatmaterialChange(Sender: TField);
begin
  inherited;
  if not (Sender.DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  qMatdescricao.SetData(nil);
  qMatunidade.SetData(nil);
  InitMat;
end;

procedure TCota.qMatqtdChange(Sender: TField);
begin
  inherited;
  if not (Sender.DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  qMatvtotal.AsFloat := qMatqtd.AsFloat * qMatunitario.AsFloat;
end;

procedure TCota.qMatvtotalChange(Sender: TField);
begin
  inherited;
  if not (Sender.DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  qMatvvenda.AsFloat := qMatvtotal.AsFloat;

  if qMatpicms.AsFloat > 0 then
    qMatvvenda.AsFloat := qMatvvenda.AsFloat / (1 - qMatpicms.AsFloat / 100);
end;

procedure TCota.qMObraAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qMObracotacao.AsInteger := IBrwSrcrecno.AsInteger;
  InitMObra;
end;

procedure TCota.qMObraAfterPost(DataSet: TDataSet);
begin
  inherited;
  G.RefreshDataSet(qMObra, True);
  G.RefreshDataSet(IBrwSrc, True);
end;

procedure TCota.qMObraqtdChange(Sender: TField);
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

procedure TCota.qServAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qServcotacao.AsInteger := IBrwSrcrecno.AsInteger;
  InitServ;
end;

procedure TCota.qServAfterPost(DataSet: TDataSet);
begin
  inherited;
  G.RefreshDataSet(qServ, True);
  G.RefreshDataSet(IBrwSrc, True);
end;

procedure TCota.qServAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qServDet.ParamByName('cotacao').AsInteger := qServcotacao.AsInteger;
  qServDet.ParamByName('servico').AsInteger := qServservico.AsInteger;
  G.RefreshDataSet(qServDet);
end;

procedure TCota.qServqtdChange(Sender: TField);
begin
  if not (Sender.DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  qServvtotal.AsFloat := qServqtd.AsFloat * qServunitario.AsFloat;
  qServvvenda.AsFloat := qServvtotal.AsFloat;
end;

procedure TCota.qServservicoChange(Sender: TField);
begin
  inherited;
  if not (qServ.State in [dsEdit, dsInsert]) then
    Exit;

  qServdescri.SetData(nil);
  qServunidade.SetData(nil);

  if Sender.IsNull then
  begin
    qServdescri.SetData(nil);
    qServunidade.SetData(nil);
    qServtipo.SetData(nil);
    qServunitario.AsFloat := 0;
    Exit;
  end;

  // Obtem o preço unitário para o cliente e serviço informado
  with U.Data.Query do
  try
    SQL.Text :=
    'select serv_preco(:cliente, :servico)';

    ParamByName('cliente').AsInteger := IBrwSrccliente.AsInteger;
    ParamByName('servico').AsInteger := Sender.AsInteger;

    Open;

    qServunitario.AsFloat := Fields[0].AsFloat;
    qServvvenda.AsFloat := qServunitario.AsFloat;
  finally
    Close;
  end;
end;

procedure TCota.qServtipoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  if not Assigned(Sender.DataSet) then
    Exit;

  case Sender.AsInteger of
    1: Text := 'Variável';
    2: Text := 'Fixo';
  end;

end;

procedure TCota.RefreshCtrl;
begin
  try
    inherited;

    if (IBrwSrc.State = dsBrowse) then
    begin
      actSolAprov.Enabled := (IBrwSrcstatus.AsInteger = 1);
      actMarkup.Enabled := not IBrwSrcmarkup.IsNull;
      actModelo.Enabled := not IBrwSrc.IsEmpty;
      actAutorizar.Enabled := IBrwSrcstatus.AsInteger = 4;
      actCancelarCotacao.Enabled := (IBrwSrcstatus.AsInteger in [4, 5]);
      actEdit.Enabled := IBrwSrcstatus.AsInteger < 5;
      actDel.Enabled := IBrwSrcstatus.AsInteger < 3;
      actRevalidar.Enabled := IBrwSrcstatus.AsInteger = 7; 
    end;
  finally
    actModelo.Visible := actModelo.Enabled or (cbStatus.ItemIndex = 0);
    actMarkup.Visible := actMarkup.Enabled or (cbStatus.ItemIndex = 0);
    actSolAprov.Visible := actSolAprov.Enabled or (cbStatus.ItemIndex = 0);
    actAutorizar.Visible := actAutorizar.Enabled or (cbStatus.ItemIndex = 0);
    actCancelarCotacao.Visible := actCancelarCotacao.Enabled;
    actRevalidar.Visible := actRevalidar.Enabled;
    
    ToolBar2.Visible := actModelo.Visible or actMarkup.Visible or
      actSolAprov.Visible or actAutorizar.Visible or actCancelarCotacao.Visible or
      actRevalidar.Visible;
      
    actLog.Enabled := not IBrwSrc.IsEmpty and (IBrwSrc.State = dsBrowse);
  end;
end;

initialization
  RegisterClass(TCota);

finalization
  UnRegisterClass(TCota);

end.
