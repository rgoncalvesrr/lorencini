unit uDM;

interface

uses
  SysUtils, Classes, DB, Dialogs,  Messages, Windows, Controls,
  ComCtrls, ExtCtrls, StdCtrls, DBTables, ImgList, ZAbstractRODataset,
  ZDataset, ZConnection, ZAbstractDataset, ZSqlUpdate, ZSqlProcessor,
  ZSqlMonitor, ZSequence, ZAbstractConnection;

type
  TDM = class(TDataModule)
    Query: TZReadOnlyQuery;
    Design: TZConnection;
    qCate: TZQuery;
    qCaterecno: TIntegerField;
    qCatedescri: TStringField;
    uCate: TZUpdateSQL;
    qNatu: TZQuery;
    qNatucodserv: TIntegerField;
    qNatudescri: TStringField;
    qNatuun: TStringField;
    qNatuvalor: TFloatField;
    qNatutipo: TIntegerField;
    qNatutipo_desc: TStringField;
    qNatugrupo: TIntegerField;
    uNatu: TZUpdateSQL;
    qNatucategoria: TStringField;
    qUnidade: TZQuery;
    qUnidadeun: TStringField;
    qUnidadedescri: TStringField;
    qNatuun_descri: TStringField;
    qNatuDet: TZQuery;
    qNatuDetcodserv: TIntegerField;
    qNatuDetdescri: TStringField;
    uNatuDet: TZUpdateSQL;
    dsNatu: TDataSource;
    qClientes: TZQuery;
    qClientescodigo: TIntegerField;
    qClientesempresa: TStringField;
    qClientesnome_chave: TStringField;
    qClientesendereco: TStringField;
    qClientesbairro: TStringField;
    qClientescep: TStringField;
    qClientesestado: TStringField;
    qClientescnpj: TStringField;
    qClientesinscricao: TStringField;
    qClientestelefone: TStringField;
    qClientesfax: TStringField;
    qClienteswebsite: TStringField;
    qClientesemail: TStringField;
    qClientesid_vendedor: TIntegerField;
    qClientessituacao: TStringField;
    qClientesfat_ende: TStringField;
    qClientesfat_bair: TStringField;
    qClientesfat_cep: TStringField;
    qClientesfat_cida: TStringField;
    qClientesfat_esta: TStringField;
    qClientesent_ende: TStringField;
    qClientesent_bair: TStringField;
    qClientesent_cep: TStringField;
    qClientesent_cida: TStringField;
    qClientesent_esta: TStringField;
    qClientescobra_ende: TStringField;
    qClientescobra_bairro: TStringField;
    qClientescobra_cep: TStringField;
    qClientescobra_cida: TStringField;
    qClientescobra_esta: TStringField;
    qClientesobservacao: TMemoField;
    qClientesrestricao: TStringField;
    qClientesrestrmotiv: TMemoField;
    qClientesdtcadastro: TDateField;
    qClientessenha: TStringField;
    qClientestag_caption: TStringField;
    qClientescontato: TStringField;
    qClientescontato_tel: TStringField;
    qClientescontato_func: TStringField;
    qClientescontato_cel: TStringField;
    qClientescontato_mail: TStringField;
    qClientescontato_nextel: TStringField;
    qClientescontato_nextelcel: TStringField;
    uClientes: TZUpdateSQL;
    dsClientes: TDataSource;
    dsContatos: TDataSource;
    qContatos: TZQuery;
    qContatoscliente: TIntegerField;
    qContatositem: TIntegerField;
    qContatosnome: TStringField;
    qContatosfuncao: TStringField;
    qContatostelefone: TStringField;
    qContatoscelular: TStringField;
    qContatosemail: TStringField;
    qContatoscontato_nextel: TStringField;
    qContatoscontato_nextelcel: TStringField;
    uContatos: TZUpdateSQL;
    qVendedores: TZQuery;
    qVendedoresidvendedor: TIntegerField;
    qVendedoresativo: TBooleanField;
    qVendedoresnome: TStringField;
    qVendedorescpf: TStringField;
    qVendedoresrg: TStringField;
    qVendedorescep: TStringField;
    qVendedoresendereco: TStringField;
    qVendedoresbairro: TStringField;
    qVendedorescidade: TStringField;
    qVendedoresestado: TStringField;
    qVendedorestelefone: TStringField;
    qVendedorescelular: TStringField;
    qVendedorescomissao: TFloatField;
    qVendedoresajudacusto: TFloatField;
    qVendedoresemail: TStringField;
    qVendedorescnpj: TStringField;
    qVendedoresinscrestadual: TStringField;
    qVendedoresusername: TStringField;
    dsVendedores: TDataSource;
    qClientesvendedornome: TStringField;
    qSysUsers: TZQuery;
    dsSysUsers: TDataSource;
    qSysUsersusername: TStringField;
    qSysUserspassword: TStringField;
    qSysUsersname: TStringField;
    qSysUsersactive: TBooleanField;
    qSysUsersemail: TStringField;
    qSysUserschangepass: TBooleanField;
    qVendedoresNomeUsuario: TStringField;
    uVendedores: TZUpdateSQL;
    qAtividades: TZQuery;
    qAtividadescodativ: TIntegerField;
    qAtividadesdescri: TStringField;
    qAtividadesiss: TFloatField;
    qNatuDetrecno: TIntegerField;
    qFuncoes: TZQuery;
    dsFuncoes: TDataSource;
    qFuncoesid: TIntegerField;
    qFuncoesdescricao: TStringField;
    qFuncoesvlr_hora_normal: TFloatField;
    qFuncoesvlr_he_50: TFloatField;
    qFuncoesvlr_he_100: TFloatField;
    qFuncoestotal_horas_dia: TFloatField;
    qFuncoesvlr_hr_adic_noturno: TFloatField;
    qFuncoesprojecao_hr_normal: TFloatField;
    qFuncoesprojecao_he_50: TFloatField;
    qFuncoesprojecao_he_100: TFloatField;
    qFuncoesvlr_outros_hora_normal: TFloatField;
    qFuncoesvlr_outros_he_50: TFloatField;
    qFuncoesvlr_total_hora_normal: TFloatField;
    qFuncoesvlr_total_he_50: TFloatField;
    qFuncoesvlr_total_he_100: TFloatField;
    qFuncoesvlr_outros_he_100: TFloatField;
    qFuncoesprojecao_adic_noturno: TFloatField;
    qART: TZQuery;
    dsART: TDataSource;
    qARTart_ate: TFloatField;
    qARTart_valor: TFloatField;
    qFuncoesvlr_total_adic_noturno: TFloatField;
    uFuncoes: TZUpdateSQL;
    qProdutos: TZQuery;
    qProdutoscodigo: TIntegerField;
    qProdutosgrupo: TIntegerField;
    qProdutosid_subgrupo: TIntegerField;
    qProdutosdescricao: TStringField;
    qProdutosvlrcusto: TFloatField;
    qProdutospercentipi: TFloatField;
    qProdutospercentlucro: TFloatField;
    qProdutosvlrvenda: TFloatField;
    qProdutosestoque: TFloatField;
    qProdutosdesconto: TFloatField;
    qProdutosminimo: TFloatField;
    uProdutos: TZUpdateSQL;
    dsProdutos: TDataSource;
    qGrupos: TZQuery;
    dsGrupos: TDataSource;
    qSGrupos: TZQuery;
    dsSGrupos: TDataSource;
    qGruposcodigo: TIntegerField;
    qGruposdescricao: TStringField;
    qSGruposid_grupo: TIntegerField;
    qSGruposdescricao: TStringField;
    uSGrupos: TZUpdateSQL;
    uGrupos: TZUpdateSQL;
    qSGruposid_codigo: TIntegerField;
    qProdutosdescricao_1: TStringField;
    qProdutosdescricao_2: TStringField;
    dsUnidade: TDataSource;
    qNatuprnsecserv: TBooleanField;
    qCallCenter: TZQuery;
    dsCallCenter: TDataSource;
    uCallCenter: TZUpdateSQL;
    qCallCenterid: TIntegerField;
    qCallCentercodigo: TIntegerField;
    qCallCenterdata: TDateTimeField;
    qCallCenterusername: TStringField;
    qCallCentercontato: TIntegerField;
    qCallCenterdescri: TMemoField;
    qCallCenteros: TIntegerField;
    qCallCenterempresa: TStringField;
    qCallCenternome_chave: TStringField;
    qCallCentername: TStringField;
    qCallCenternome: TStringField;
    qCallCenterfuncao: TStringField;
    qCallCentertelefone: TStringField;
    qCallCentercelular: TStringField;
    qCallCenteremail: TStringField;
    qSysReports: TZQuery;
    uSysReports: TZUpdateSQL;
    dsSysReports: TDataSource;
    qSysReportsreport: TIntegerField;
    qSysReportsdescri: TStringField;
    qSysReportsform: TStringField;
    qSysReportsdescri_1: TStringField;
    qForn: TZQuery;
    dsForn: TDataSource;
    uForn: TZUpdateSQL;
    qFornempresa: TStringField;
    qFornnome_chave: TStringField;
    qFornendereco: TStringField;
    qFornbairro: TStringField;
    qForncep: TStringField;
    qForncidade: TStringField;
    qFornestado: TStringField;
    qForncnpj: TStringField;
    qForninscricao: TStringField;
    qForntelefone: TStringField;
    qFornfax: TStringField;
    qFornwebsite: TStringField;
    qFornemail: TStringField;
    qFornsituacao: TStringField;
    qFornobservacao: TMemoField;
    qForndtcadastro: TDateField;
    qFornrestrmotiv: TMemoField;
    qForncodigo: TIntegerField;
    qFornrestricao: TBooleanField;
    qFornProd: TZQuery;
    dsFornProd: TDataSource;
    uFornProd: TZUpdateSQL;
    qFornProdid_fornecedor: TIntegerField;
    qFornProdempresa: TStringField;
    qFornProdnome_chave: TStringField;
    qFornProdcnpj: TStringField;
    qFornProdid_produto: TIntegerField;
    qFornProddescricao: TStringField;
    SQLMonitor: TZSQLMonitor;
    SQLProcessor: TZSQLProcessor;
    qClientesrecno: TIntegerField;
    sClientes: TZSequence;
    qClientescpf: TStringField;
    qClientesrg: TStringField;
    qClientestipo: TIntegerField;
    qSysFormRpt: TZQuery;
    uSysFormRpt: TZUpdateSQL;
    dsqSysFormRpt: TDataSource;
    qSysFormRptform: TStringField;
    qSysFormRptdescri: TStringField;
    qSysFormRptreport: TIntegerField;
    qSysFormRptrecno: TIntegerField;
    sSysFormRpt: TZSequence;
    qSysFormRptordem: TIntegerField;
    sForn: TZSequence;
    qFuncoesoutros_sdf: TFloatField;
    qFuncoesvlr_janta: TFloatField;
    qFuncoesrecno: TIntegerField;
    qFuncoesativo: TBooleanField;
    qContatosrecno: TIntegerField;
    qContatossituacao: TIntegerField;
    qClienteslogo: TBlobField;
    qClientesFinais: TZQuery;
    qClientesFinaiscodigo: TIntegerField;
    qClientesFinaisempresa: TStringField;
    qClientesFinaisnome_chave: TStringField;
    qClientesFinaiscidade: TStringField;
    qClientesFinaisestado: TStringField;
    qClientesFinaiscnpj: TStringField;
    qClientesFinaiscpf: TStringField;
    qClientesFinaislogo: TBlobField;
    qClientesFinaisrecno: TIntegerField;
    dsClientesFinais: TDataSource;
    uClientesFinais: TZUpdateSQL;
    sClientesFinais: TZSequence;
    qClientesFinaisemail: TStringField;
    qClientesFinaiscliente: TIntegerField;
    qClientesFinaistelefone: TStringField;
    qClientescidade: TStringField;
    qProdutosunidade: TStringField;
    sProdutos: TZSequence;
    qProdutosrecno: TIntegerField;
    Tasks: TTimer;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure qBeforeOpen(DataSet: TDataSet);
    procedure uNatuBeforeInsertSQL(Sender: TObject);
    procedure qNatuCalcFields(DataSet: TDataSet);
    procedure qNatuAfterInsert(DataSet: TDataSet);
    procedure qContatosBeforePost(DataSet: TDataSet);
    procedure uContatosBeforeInsertSQL(Sender: TObject);
    procedure qClientesAfterInsert(DataSet: TDataSet);
    procedure dsClientesStateChange(Sender: TObject);
    procedure dsVendedoresStateChange(Sender: TObject);
    procedure qVendedoresAfterInsert(DataSet: TDataSet);
    procedure uSGruposBeforeInsertSQL(Sender: TObject);
    procedure qProdutosgrupoChange(Sender: TField);
    procedure qCallCenterBeforePost(DataSet: TDataSet);
    procedure qSysReportsformChange(Sender: TField);
    procedure qFornAfterInsert(DataSet: TDataSet);
    procedure qOSFatutipoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qOSFatutipoSetText(Sender: TField; const Text: string);
    procedure qClientestipoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qClientestipoSetText(Sender: TField; const Text: string);
    procedure qSysReportsAfterScroll(DataSet: TDataSet);
    procedure qSysFormRptAfterInsert(DataSet: TDataSet);
    procedure qFuncoesativoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qFuncoesativoSetText(Sender: TField; const Text: string);
    procedure qContatossituacaoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qContatossituacaoSetText(Sender: TField; const Text: string);
    procedure qContatosAfterInsert(DataSet: TDataSet);
    procedure qClientesAfterScroll(DataSet: TDataSet);
    procedure qClientesFinaisAfterInsert(DataSet: TDataSet);
    procedure TasksTimer(Sender: TObject);
  private
    FActiveSQLMonitor: Boolean;
    FTaskLimpaCota: TDateTime;
    procedure FillDep(DataSet: TDataSet; DataSetList: TList);
    procedure SetActiveSQLMonitor(const Value: Boolean);
  public
    { Public declarations }
  published
    property ActiveSQLMonitor: Boolean read FActiveSQLMonitor write SetActiveSQLMonitor;
  end;

var
  DM: TDM;

implementation

uses uIUtils, mcUtils, DateUtils, uHelpers;

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
var
  i: integer;
begin
  {Configura conex�o utilizada em tempo de projeto}
  Design.Disconnect;
  Design.HostName:= U.Data.HostName;
  Design.Port:= U.Data.Port;
  Design.User:= U.Data.User;
  Design.Password:= U.Data.Password;
  Design.Catalog:= U.Data.Catalog;
  Design.Database:= U.Data.Database;
  Design.LibLocation := TEnvironment.Lib + 'libpq.dll';

  for i := 0 to ComponentCount - 1 do
  begin
    if Components[i] is TZQuery then
      with TZQuery(Components[i]) do
      begin
        Connection := U.Data;
        BeforeOpen := qBeforeOpen;
      end;

    if Components[i] is TZSequence then
      TZSequence(Components[i]).Connection := U.Data;
  end;

  SqlProcessor.Connection := U.Data;
  SQLMonitor.FileName := U.Path.System + 'sql_debug.log';
  qUnidade.Open;

  Tasks.Enabled := True;
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
var
  I: Integer;
begin
  Tasks.Enabled := False;
  
  for i := 0 to ComponentCount - 1 do
    if Components[i] is TDataSet then
      TDataSet(Components[i]).Close;
      
  inherited;
end;

procedure TDM.dsClientesStateChange(Sender: TObject);
begin
  qVendedores.Filtered := (qClientes.State in [dsInsert, dsEdit]);
end;

procedure TDM.dsVendedoresStateChange(Sender: TObject);
begin
  qSysUsers.Filtered := (qVendedores.State in [dsInsert, dsEdit]);
end;

procedure TDM.FillDep(DataSet: TDataSet; DataSetList: TList);
var
  Field: TField;
  i: integer;
  Query: TZQuery;
begin
  {Verifica se depend�ncias foram processadas}
  if (DataSetList.IndexOf(DataSet) <> -1) or (DataSet.Active) then
    Exit;

  try
    {Adiciona o dataset a lista}
    DataSetList.Add(DataSet);

      // Abre tabelas para lookup
    for Field in DataSet.Fields do
      if (Field.FieldKind = fkLookup) and (DataSetList.IndexOf(Field.LookupDataSet) = -1) then
        FillDep(Field.LookupDataSet, DataSetList);

    // Abre tabelas detalhe
    for i := 0 to ComponentCount - 1 do
      if Components[i] is TZQuery then
      begin
        Query := Components[i] as TZQuery;
        with Query do
          if Assigned(MasterSource) and (MasterSource.DataSet = DataSet) and
            (DataSetList.IndexOf(Query) = -1)  then
             FillDep(Query, DataSetList);
      end;
  finally
    Query := nil;
    Field := nil;
  end;
end;

procedure TDM.qBeforeOpen(DataSet: TDataSet);
var
  i: integer;
  DataSetList: TList;
  Query: TZQuery;
begin
  DataSetList := TList.Create;
  try
    {Preenche lista de depend�ncias da tabela}
    FillDep(DataSet, DataSetList);

    {Abrindo tabelas}
    for i := 0 to DataSetList.Count - 1 do
    begin
      Query := DataSetList[i];
      Query.BeforeOpen := nil;
      Query.Open;
      Query.BeforeOpen := qBeforeOpen;
    end;
  finally
    for i := 0 to DataSetList.Count - 1 do
      DataSetList[i]:= nil;

    FreeAndNil(DataSetList);
  end;
end;

procedure TDM.qCallCenterBeforePost(DataSet: TDataSet);
begin
  if DataSet.State = dsInsert then
  begin
    qCallCenterusername.AsString := U.Info.UserName;
    qCallCentercodigo.AsInteger := qClientescodigo.AsInteger;
  end;
end;

procedure TDM.qClientesAfterInsert(DataSet: TDataSet);
begin
  qClientesdtcadastro.AsDateTime:= now;
  {Atualiza c�digo do vendedor automaticamente}
//  if U.Info.IsVendor then
//    qClientesid_vendedor.AsInteger:= U.Info.IdVendor;

  qClientessituacao.AsString := 'ATIVO';
  qClientestipo.AsInteger := 1;
end;

procedure TDM.qClientesAfterScroll(DataSet: TDataSet);
begin
  qContatos.ParamByName('cliente').AsInteger :=
    qClientescodigo.AsInteger;
  qClientesFinais.ParamByName('codigo').AsInteger :=
    qClientescodigo.AsInteger;
  G.RefreshDataSet(qContatos);
  G.RefreshDataSet(qClientesFinais);
end;

procedure TDM.qClientesFinaisAfterInsert(DataSet: TDataSet);
begin
  qClientesFinaiscodigo.AsInteger := qClientescodigo.AsInteger;
end;

procedure TDM.qClientestipoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  case Sender.AsInteger of
    1: Text := 'Jur�dico';
    2: Text := 'F�sico';
    3: Text := 'Estrangeiro';
  end;
end;

procedure TDM.qClientestipoSetText(Sender: TField; const Text: string);
begin
  if Text = EmptyStr then
    Exit;
    
  case Text[1] of
    'J': Sender.AsInteger := 1;
    'F': Sender.AsInteger := 2;
    'E': Sender.AsInteger := 3;
  end;
end;

procedure TDM.qContatosAfterInsert(DataSet: TDataSet);
begin
  qContatossituacao.AsInteger := 1;
end;

procedure TDM.qContatosBeforePost(DataSet: TDataSet);
begin
  qContatoscliente.AsInteger:= qClientescodigo.AsInteger;
end;

procedure TDM.qContatossituacaoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  case Sender.AsInteger of
    0: Text := 'Inativo';
    1: Text := 'Ativo';
  end;
end;

procedure TDM.qContatossituacaoSetText(Sender: TField; const Text: string);
begin
  if Text <> EmptyStr then
    case Text[1] of
      'I': Sender.AsInteger := 0;
      'A': Sender.AsInteger := 1;
    end;
end;

procedure TDM.qFornAfterInsert(DataSet: TDataSet);
begin
  qFornrestricao.AsBoolean := False;
  qForndtcadastro.AsDateTime := now();
end;

procedure TDM.qFuncoesativoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := 'Ativo';
  if not Sender.AsBoolean then
    Text := 'Inativo';
end;

procedure TDM.qFuncoesativoSetText(Sender: TField; const Text: string);
begin
  if not (Sender.DataSet.State in [dsInsert, dsEdit]) or (Text = EmptyStr) then
    Exit;

  Sender.AsBoolean := Text[1] = 'A';
end;

procedure TDM.qNatuAfterInsert(DataSet: TDataSet);
begin
  qNatutipo.AsInteger:= 1;
end;

procedure TDM.qNatuCalcFields(DataSet: TDataSet);
begin
  Case qNatutipo.AsInteger of
    1: qNatutipo_desc.AsString:= 'Vari�vel';
    2: qNatutipo_desc.AsString:= 'Fixo';
  Else
    qNatutipo_desc.AsString:= 'ERRO';
  End;
end;

procedure TDM.qOSFatutipoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if mcEmpty(Sender.AsString) then
    Exit;

  case Sender.AsString[1] of
    'R': Text := 'Receita';
    'D': Text := 'Despesa';
  end;

end;

procedure TDM.qOSFatutipoSetText(Sender: TField; const Text: string);
begin
  Sender.AsString := Text[1];
end;

procedure TDM.qProdutosgrupoChange(Sender: TField);
begin
  qSGrupos.Refresh;
end;

procedure TDM.qSysFormRptAfterInsert(DataSet: TDataSet);
begin
  qSysFormRptreport.AsInteger := qSysReportsreport.AsInteger;
end;

procedure TDM.qSysReportsAfterScroll(DataSet: TDataSet);
begin
  qSysFormRpt.ParamByName('rpt').AsInteger := qSysReportsreport.AsInteger;
  G.RefreshDataSet(qSysFormRpt);
end;

procedure TDM.qSysReportsformChange(Sender: TField);
begin
  if (qSysReports.State <> dsBrowse) and (Sender.Text = EmptyStr) then
    qSysReportsdescri_1.AsString := '';
end;

procedure TDM.qVendedoresAfterInsert(DataSet: TDataSet);
begin
  qVendedoresativo.AsBoolean := True;
end;

procedure TDM.SetActiveSQLMonitor(const Value: Boolean);
begin
  if FActiveSQLMonitor <> Value then
    Exit;

  FActiveSQLMonitor := Value;

  if not FActiveSQLMonitor then
    SQLMonitor.Save;

  SQLMonitor.Active := FActiveSQLMonitor;
end;

procedure TDM.TasksTimer(Sender: TObject);
begin
  // Limpeza de cota��es expiradas
  if U.Info.UserName = EmptyStr then
    Exit;
    
  if DaysBetween(Now, FTaskLimpaCota) > 1 then
  begin
    U.Data.ExecSQL('update cota set status = 7 where validade < current_date and status = 4');
    FTaskLimpaCota := Now;
  end;
end;

procedure TDM.uContatosBeforeInsertSQL(Sender: TObject);
begin
  uContatos.Params.ParamByName('cliente').AsInteger:= qClientescodigo.AsInteger;
end;

procedure TDM.uNatuBeforeInsertSQL(Sender: TObject);
begin
  uNatuDet.Params.ParamByName('codserv').Value := qNatucodserv.AsInteger;
end;

procedure TDM.uSGruposBeforeInsertSQL(Sender: TObject);
begin
  uSGrupos.Params.ParamByName('id_grupo').Value:= qGruposcodigo.AsInteger;
end;

end.
