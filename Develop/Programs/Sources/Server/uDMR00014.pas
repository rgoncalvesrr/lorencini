unit uDMR00014;

interface

uses
  SysUtils, Classes, frxClass, frxExportBaseDialog, frxExportPDF, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, uReport, ZConnection;

type
  TDMR00014 = class(TDataModule)
    R00014: TZQuery;
    R00014amostra: TIntegerField;
    R00014relato_recno: TIntegerField;
    R00014laudo: TStringField;
    R00014recno: TIntegerField;
    f: TIntegerField;
    R00014labcrit_recno: TIntegerField;
    R00014idcodigo: TIntegerField;
    R00014crit: TStringField;
    R00014labdiag_recno: TIntegerField;
    R00014diag_descri: TStringField;
    R00014diag_diag: TMemoField;
    R00014diag_dias: TIntegerField;
    R00014labrec_recno: TIntegerField;
    R00014rec_descri: TStringField;
    R00014recomenda: TMemoField;
    R00014diagnostico: TMemoField;
    R00014recomendacao: TMemoField;
    R00014pcoleta: TDateField;
    R00014obs: TMemoField;
    R00014os: TIntegerField;
    R00014entrada: TDateTimeField;
    R00014coleta: TDateField;
    R00014coletor: TStringField;
    R00014laudodesc: TStringField;
    R00014tamb: TIntegerField;
    R00014toleo: TIntegerField;
    R00014umidade: TIntegerField;
    R00014tensao: TFloatField;
    R00014local: TStringField;
    R00014labsubest_recno: TIntegerField;
    R00014codigo: TIntegerField;
    R00014empresa: TStringField;
    R00014nome_chave: TStringField;
    R00014cnpj: TStringField;
    R00014cpf: TStringField;
    R00014telefone: TStringField;
    R00014tpamostra_recno: TIntegerField;
    R00014atipo: TStringField;
    R00014equip_recno: TIntegerField;
    R00014fabricante: TStringField;
    R00014serie: TStringField;
    R00014tipo: TStringField;
    R00014descri: TStringField;
    R00014potencia: TFloatField;
    R00014imped: TFloatField;
    R00014tensao_1: TFloatField;
    R00014fases: TIntegerField;
    R00014ano: TIntegerField;
    R00014lote: TStringField;
    R00014isolante: TStringField;
    R00014volume: TIntegerField;
    R00014drenos: TStringField;
    R00014familia: TStringField;
    R00014tag: TStringField;
    R00014sigla: TStringField;
    R00014nomese: TStringField;
    R00014regional: TIntegerField;
    R00014reg_nome: TStringField;
    R00014emissao: TDateTimeField;
    R00014etiqueta: TMemoField;
    R00014assinatura: TStringField;
    R00014d1: TDateField;
    R00014comodato: TIntegerField;
    R00014d2: TDateField;
    R00014d3: TDateField;
    R00014d4: TDateField;
    R00014d5: TDateField;
    R00014d6: TDateField;
    R00014localizacao: TStringField;
    R00014idos: TStringField;
    R00014destinatario: TStringField;
    R00014cor: TStringField;
    R00014endereco: TStringField;
    R00014bairro: TStringField;
    R00014cidade: TStringField;
    R00014estado: TStringField;
    R00014cep: TStringField;
    R00014email: TStringField;
    R00014apontado: TDateTimeField;
    R00014pedido: TIntegerField;
    R00014tensao_un: TStringField;
    R00014potencia_un: TStringField;
    R00014logo: TBlobField;
    R00014inmetro: TBooleanField;
    R00014revisao: TIntegerField;
    R00014tequip: TFloatField;
    R00014dec_conf: TBooleanField;
    R00014resp_nome: TStringField;
    R00014resp_assinatura: TStringField;
    R00014resp_cargo: TStringField;
    R00014resp_conselho: TStringField;
    R00014resp_crq: TStringField;
    R00014analista_nome: TStringField;
    R00014analista_assinatura: TStringField;
    R00014analista_cargo: TStringField;
    R00014analista_conselho: TStringField;
    R00014analista_crq: TStringField;
    R00014legendas: TMemoField;
    R00014regras: TMemoField;
    frxR00014: TfrxDBDataset;
    R00014a: TZQuery;
    R00014alaudo: TIntegerField;
    R00014arelato_recno: TIntegerField;
    R00014anome: TStringField;
    R00014aunidade: TStringField;
    R00014ametodo: TStringField;
    R00014aref_tipo: TIntegerField;
    R00014aref_valor: TFloatField;
    R00014avalor: TFloatField;
    R00014av1: TFloatField;
    R00014av2: TFloatField;
    R00014av3: TFloatField;
    R00014av4: TFloatField;
    R00014av5: TFloatField;
    R00014av6: TFloatField;
    R00014aordem: TIntegerField;
    R00014adec: TIntegerField;
    R00014aarred: TIntegerField;
    R00014asezerotxt: TStringField;
    R00014aensaio_recno: TIntegerField;
    R00014asomenteleitura: TBooleanField;
    R00014aincerteza: TFloatField;
    frxR00014a: TfrxDBDataset;
    R00014b: TZQuery;
    R00014bensaio_recno: TIntegerField;
    R00014bnome: TStringField;
    R00014bunidade: TStringField;
    R00014bdata: TDateField;
    R00014bvalor: TFloatField;
    R00014bref_valor: TFloatField;
    frxR00014b: TfrxDBDataset;
    R00014c: TZQuery;
    R00014cnome: TStringField;
    R00014cfuncao: TStringField;
    R00014ctelefone: TStringField;
    R00014cemail: TStringField;
    R00014ccelular: TStringField;
    frxR00014c: TfrxDBDataset;
    ReportBase: TfrxReport;
    frxPDF: TfrxPDFExport;
    procedure R00014AfterScroll(DataSet: TDataSet);
    procedure R00014CalcFields(DataSet: TDataSet);
    procedure R00014aAfterScroll(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
  private
    FConfig: TReport;
    FConnection: TZConnection;
    FPrinting: Boolean;
    FExecuted: Boolean;
    procedure SetConfig(const Value: TReport);
    procedure SetConnection(const Value: TZConnection);
    procedure SetExecuted(const Value: Boolean);
  public
    procedure Print;

    property Executed: Boolean read FExecuted write SetExecuted;
    property Connection: TZConnection read FConnection write SetConnection;
    property Config: TReport read FConfig write SetConfig;
    property Printing: Boolean read FPrinting; 
  end;

var
  DMR00014: TDMR00014;

implementation

uses uIUtils, Windows;

{$R *.dfm}

procedure TDMR00014.DataModuleDestroy(Sender: TObject);
begin
  ReportBase.Clear;
  inherited;
end;

procedure TDMR00014.Print;
var
  pathTarget, pathSource, sourceFileName, targetFileName: string;
begin
  inherited;

  FPrinting := True;
  try
    if Assigned(ReportBase.FindObject('username')) then
      TfrxMemoView(ReportBase.FindObject('username')).Text := 'Usuário: ' + U.Info.Name;

    pathTarget := Format('%sUpload\', [U.Path.Reports]);
    pathSource := Format('%sUpload\', [U.Path.Temp]);

    if not DirectoryExists(pathSource) then
      CreateDir(pathSource);

    if not DirectoryExists(pathTarget) then
      CreateDir(pathTarget);

    sourceFileName := Format('%s%s.tmp', [pathSource, FConfig.FileName]);
    targetFileName := StringReplace(sourceFileName, pathSource, pathTarget, [rfReplaceAll]);
    targetFileName := StringReplace(targetFileName, '.tmp', '.pdf', [rfReplaceAll]);
    
    frxPDF.FileName := sourceFileName;
    frxPDF.Title := Config.Caption;

    ReportBase.PrepareReport;
    ReportBase.Export(frxPDF);

    if CopyFile(PAnsichar(sourceFileName), PAnsichar(targetFileName), False) then
      DeleteFile(PAnsichar(sourceFileName));

    FExecuted := True;
  finally
    FPrinting := False;
  end;

end;

procedure TDMR00014.R00014aAfterScroll(DataSet: TDataSet);
begin
  R00014b.ParamByName('laudo').AsInteger := R00014alaudo.AsInteger; // laudo
  R00014b.ParamByName('tipo').AsInteger := R00014arelato_recno.AsInteger; // tipo de laudo
  R00014b.ParamByName('ensaio').AsInteger := R00014aensaio_recno.AsInteger; // ensaio
  G.RefreshDataSet(R00014b);
end;

procedure TDMR00014.R00014AfterScroll(DataSet: TDataSet);
begin
  R00014a.ParamByName('laudo').AsInteger := R00014recno.AsInteger; // laudo
  R00014a.ParamByName('tipo').AsInteger := R00014relato_recno.AsInteger; // tipo de laudo
  R00014c.ParamByName('laudo').AsInteger := R00014recno.AsInteger; // laudo
  G.RefreshDataSet(R00014a);
  G.RefreshDataSet(R00014c);
end;

procedure TDMR00014.R00014CalcFields(DataSet: TDataSet);
var
  slocal : string;
begin
  slocal := '';

  if R00014sigla.AsString <> EmptyStr then
    slocal := R00014sigla.AsString;

  if R00014nomese.AsString <> EmptyStr then
  begin
     if slocal <> EmptyStr then
        slocal:= slocal + ' - ';

     slocal:= slocal + R00014nomese.AsString + '. ';
  end;

  if R00014reg_nome.AsString <> EmptyStr then
     slocal:= slocal + R00014reg_nome.AsString;

  R00014localizacao.AsString := slocal;
end;

procedure TDMR00014.SetConfig(const Value: TReport);
begin
  FConfig := Value;

  { DestroyForms can be switched off, if every time you renew a report from a file or from a current }
  ReportBase.EngineOptions.DestroyForms := True;
  ReportBase.EngineOptions.SilentMode := True;
  ReportBase.EngineOptions.EnableThreadSafe := True;
  ReportBase.EngineOptions.UseGlobalDataSetList := False;

  ReportBase.ShowProgress := False;

  ReportBase.EnabledDataSets.Add(frxR00014);
  ReportBase.EnabledDataSets.Add(frxR00014a);
  ReportBase.EnabledDataSets.Add(frxR00014b);
  ReportBase.EnabledDataSets.Add(frxR00014c);
  
  ReportBase.LoadFromFile(Format('%s%s', [U.Path.ReportTemplates, Value.ReportName]));
end;

procedure TDMR00014.SetConnection(const Value: TZConnection);
begin
  FConnection := Value;

  R00014.Connection := Value;
  R00014a.Connection := Value;
  R00014b.Connection := Value;
  R00014c.Connection := Value;
end;

procedure TDMR00014.SetExecuted(const Value: Boolean);
begin
  FExecuted := Value;
end;

end.
