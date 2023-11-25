unit uDMReport;

interface

uses
  SysUtils, Classes, frxDesgn, frxClass, DB, ZAbstractRODataset, ZDataset,
  frxDBSet, frxExportPDF, frxDCtrl, ZAbstractDataset, frxBarcode, frxRichEdit,
  frxRich, frxChart, frxExportBaseDialog;

type
  TDMReport = class(TDataModule)
    ReportDefs: TfrxDesigner;
    ReportBase: TfrxReport;
    R00001: TZReadOnlyQuery;
    fR00001: TfrxDBDataset;
    R00002: TZReadOnlyQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField2: TIntegerField;
    DateField1: TDateField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField6: TFloatField;
    fR00002: TfrxDBDataset;
    frxPDF: TfrxPDFExport;
    R00003: TZReadOnlyQuery;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField9: TStringField;
    IntegerField3: TIntegerField;
    DateField2: TDateField;
    DateField3: TDateField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    StringField10: TStringField;
    fR00003: TfrxDBDataset;
    R00003atraso: TIntegerField;
    R00003compet: TStringField;
    R00004: TZReadOnlyQuery;
    fR00004: TfrxDBDataset;
    R00005: TZReadOnlyQuery;
    fR00005: TfrxDBDataset;
    R00006: TZReadOnlyQuery;
    StringField17: TStringField;
    IntegerField8: TIntegerField;
    StringField18: TStringField;
    IntegerField9: TIntegerField;
    DateField13: TDateField;
    DateField14: TDateField;
    DateField15: TDateField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    StringField19: TStringField;
    fR00006: TfrxDBDataset;
    R00007: TZReadOnlyQuery;
    fR00007: TfrxDBDataset;
    R00007tipo: TIntegerField;
    R00007emissao: TDateField;
    R00007vencimento_real: TDateField;
    R00007docto: TStringField;
    R00007cc: TStringField;
    R00007entrada: TFloatField;
    R00007saida: TFloatField;
    R00007obs: TStringField;
    R00007a: TZReadOnlyQuery;
    fR00007a: TfrxDBDataset;
    R00007acc: TStringField;
    R00007adata: TDateField;
    R00007asaldo_anterior: TFloatField;
    R00007aentradas: TFloatField;
    R00007asaidas: TFloatField;
    R00007asaldo: TFloatField;
    R00007arecno: TIntegerField;
    R00007origem: TStringField;
    R00001a: TZReadOnlyQuery;
    fR0001a: TfrxDBDataset;
    R00001acc: TStringField;
    R00001adata: TDateField;
    R00001asaldo_anterior: TFloatField;
    R00001aentradas: TFloatField;
    R00001asaidas: TFloatField;
    R00001asaldo: TFloatField;
    R00001cc: TStringField;
    R00001data: TDateField;
    R00001docto: TStringField;
    R00001historico: TStringField;
    R00001entrada: TFloatField;
    R00001saida: TFloatField;
    R00001tipo: TStringField;
    R00001compensado: TStringField;
    R00005idvendedor: TIntegerField;
    R00005nome: TStringField;
    R00005titulo: TIntegerField;
    R00005os: TIntegerField;
    R00005emissao: TDateTimeField;
    R00005vencimento: TDateField;
    R00005baixa: TDateField;
    R00005valor: TFloatField;
    R00005vlcom: TFloatField;
    R00005serie: TIntegerField;
    R00005nf: TIntegerField;
    R00005empresa: TStringField;
    R00005nome_chave: TStringField;
    R00005idos: TStringField;
    R00004nome_chave: TStringField;
    R00004nf: TIntegerField;
    R00004serie: TIntegerField;
    R00004emissao: TDateField;
    R00004vencto: TDateField;
    R00004valor: TFloatField;
    R00005status: TIntegerField;
    R00008: TZReadOnlyQuery;
    StringField5: TStringField;
    DateField4: TDateField;
    StringField6: TStringField;
    StringField7: TStringField;
    FloatField5: TFloatField;
    FloatField7: TFloatField;
    StringField8: TStringField;
    StringField11: TStringField;
    fR00008: TfrxDBDataset;
    dsR00001a: TDataSource;
    R00009: TZReadOnlyQuery;
    IntegerField1: TIntegerField;
    StringField12: TStringField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    DateTimeField1: TDateTimeField;
    DateField5: TDateField;
    DateField6: TDateField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    IntegerField10: TIntegerField;
    frxR00009: TfrxDBDataset;
    R00010: TZReadOnlyQuery;
    frxR00010: TfrxDBDataset;
    R00010clienteid: TIntegerField;
    R00010nome_chave: TStringField;
    R00010empresa: TStringField;
    R00010nf: TIntegerField;
    R00010serie: TIntegerField;
    R00010idos: TStringField;
    R00010amostragem: TDateField;
    R00010data: TDateField;
    R00010ensaio: TStringField;
    R00010local: TStringField;
    R00010sub_local: TStringField;
    R00010estacao: TStringField;
    R00010numeroserie: TStringField;
    R00010identificacao: TStringField;
    R00010tag: TStringField;
    R00010fabricante: TStringField;
    R00010numeroid: TIntegerField;
    R00010emissao: TDateField;
    R00010vencto: TDateField;
    R00010valor: TFloatField;
    frxR00011: TfrxDBDataset;
    R00011: TZQuery;
    R00011recno: TIntegerField;
    R00011codigo: TIntegerField;
    R00011tipo: TIntegerField;
    R00011equip_recno: TIntegerField;
    R00011tag: TStringField;
    R00011serie: TStringField;
    R00011potencia: TFloatField;
    R00011potencia_a: TFloatField;
    R00011potencia_b: TFloatField;
    R00011tensao: TFloatField;
    R00011tensao_a: TFloatField;
    R00011tensao_b: TFloatField;
    R00011fases: TIntegerField;
    R00011fabricante: TStringField;
    R00011lote: TStringField;
    R00011validade: TDateField;
    R00011ano: TIntegerField;
    R00011isolante: TStringField;
    R00011volume: TIntegerField;
    R00011drenos: TStringField;
    R00011imped: TFloatField;
    R00011imped_a: TFloatField;
    R00011imped_b: TFloatField;
    R00011corr: TFloatField;
    R00011corr_a: TFloatField;
    R00011corr_b: TFloatField;
    R00011tipo_e: TStringField;
    R00011reg_nome: TStringField;
    R00011sigla: TStringField;
    R00011nome: TStringField;
    R00011labproc_recno: TIntegerField;
    R00011situacao: TIntegerField;
    R00011ean39: TStringField;
    R00011comodato_recno: TIntegerField;
    R00011nome_chave: TStringField;
    R00011telefone: TStringField;
    R00011cnpj: TStringField;
    R00011proc: TMemoField;
    R00011ean39_1: TMemoField;
    R00011etiq_local: TStringField;
    R00011status: TIntegerField;
    R00011descri: TStringField;
    R00011remessa: TDateTimeField;
    R00011dataprog: TDateField;
    R00012: TZQuery;
    R00012codigo: TIntegerField;
    R00012empresa: TStringField;
    R00012nome_chave: TStringField;
    R00012cnpj: TStringField;
    R00012cpf: TStringField;
    frxR00012: TfrxDBDataset;
    R00013: TZQuery;
    frxR00013: TfrxDBDataset;
    R00014: TZQuery;
    frxR00014: TfrxDBDataset;
    R00014relato_recno: TIntegerField;
    R00014laudo: TStringField;
    f: TIntegerField;
    R00014recno: TIntegerField;
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
    R00014regional: TIntegerField;
    R00014reg_nome: TStringField;
    R00014emissao: TDateTimeField;
    R00014etiqueta: TMemoField;
    R00014assinatura: TStringField;
    frxR00014a: TfrxDBDataset;
    R00014arelato_recno: TIntegerField;
    R00014anome: TStringField;
    R00014aunidade: TStringField;
    R00014ametodo: TStringField;
    R00014aref_tipo: TIntegerField;
    R00014aref_valor: TFloatField;
    R00014avalor: TFloatField;
    R00014d1: TDateField;
    R00014d2: TDateField;
    R00014d3: TDateField;
    R00014d4: TDateField;
    R00014d5: TDateField;
    R00014d6: TDateField;
    R00014av1: TFloatField;
    R00014av2: TFloatField;
    R00014av3: TFloatField;
    R00014av4: TFloatField;
    R00014av5: TFloatField;
    R00014av6: TFloatField;
    R00014localizacao: TStringField;
    R00014idos: TStringField;
    R00014destinatario: TStringField;
    R00015: TZReadOnlyQuery;
    frxR00015: TfrxDBDataset;
    R00015codigo: TIntegerField;
    R00015nome_chave: TStringField;
    R00015empresa: TStringField;
    R00015nf: TIntegerField;
    R00015serie: TIntegerField;
    R00015idos: TStringField;
    R00015recno: TIntegerField;
    R00015coleta: TDateField;
    R00015titulo: TStringField;
    R00015r_emissao: TDateTimeField;
    R00015serie_1: TStringField;
    R00015tag: TStringField;
    R00015local: TStringField;
    R00015fabricante: TStringField;
    R00015emissao: TDateField;
    R00015vencto: TDateField;
    R00015valor: TFloatField;
    R00015comodato_recno: TIntegerField;
    R00014aordem: TIntegerField;
    R00014cor: TStringField;
    R00014adec: TIntegerField;
    R00014aarred: TIntegerField;
    R00014asezerotxt: TStringField;
    R00016: TZReadOnlyQuery;
    frxR00016: TfrxDBDataset;
    R00016recno: TIntegerField;
    R00016descri: TStringField;
    R00016codserv: TIntegerField;
    R00016servico: TStringField;
    R00016qtd: TLargeintField;
    R00014endereco: TStringField;
    R00014bairro: TStringField;
    R00014cidade: TStringField;
    R00014estado: TStringField;
    R00014cep: TStringField;
    R00014apontado: TDateTimeField;
    R00017: TZQuery;
    frxR00017: TfrxDBDataset;
    R00017a: TZQuery;
    frxR00017a: TfrxDBDataset;
    dsR00017: TDataSource;
    R00014pedido: TIntegerField;
    R00017arelato_recno: TIntegerField;
    R00017anome: TStringField;
    R00017aunidade: TStringField;
    R00017ametodo: TStringField;
    R00017aref_tipo: TIntegerField;
    R00017aref_valor: TFloatField;
    R00017avalor: TFloatField;
    R00017aordem: TIntegerField;
    R00017adec: TIntegerField;
    R00017aarred: TIntegerField;
    R00017asezerotxt: TStringField;
    R00017b: TZQuery;
    frxR00017b: TfrxDBDataset;
    dsR00017a: TDataSource;
    R00017brelato_recno: TIntegerField;
    R00017bensaio_recno: TIntegerField;
    R00017bativo: TIntegerField;
    R00017brecno: TIntegerField;
    R00017bdescri: TMemoField;
    R00017bname: TStringField;
    R00017aensaio_recno: TIntegerField;
    R00017c: TZQuery;
    frxR00017c: TfrxDBDataset;
    R00017crelato_recno: TIntegerField;
    R00017censaio_recno: TIntegerField;
    R00017csolucao: TIntegerField;
    R00017cqtd: TFloatField;
    R00017cname: TStringField;
    R00017ctipo: TIntegerField;
    R00017ccodigo: TIntegerField;
    R00017clotefor: TStringField;
    R00017cvalidade: TDateField;
    R00017cdescri: TStringField;
    R00017cempresa: TStringField;
    R00017aregistro: TDateTimeField;
    R00017aname: TStringField;
    R00018: TZQuery;
    R00018doc: TIntegerField;
    R00018cliente: TIntegerField;
    R00018empresa: TStringField;
    R00018cnpj: TStringField;
    R00018cpf: TStringField;
    R00018emissao: TDateTimeField;
    R00018vlmat: TFloatField;
    R00018vlmobra: TFloatField;
    R00018vlsrvvar: TFloatField;
    R00018vlsrvfixo: TFloatField;
    R00018vldespe: TFloatField;
    R00018recno: TIntegerField;
    frxR00018: TfrxDBDataset;
    R00018origem: TIntegerField;
    R00018a: TZQuery;
    frxR00018a: TfrxDBDataset;
    R00018descricao: TMemoField;
    dsR00018: TDataSource;
    frxR00018b: TfrxDBDataset;
    R00018b: TZQuery;
    R00018borigem: TIntegerField;
    R00018bdoc: TIntegerField;
    R00018bservico: TIntegerField;
    R00018bdescri: TStringField;
    R00018bqtd: TFloatField;
    R00018bunidade: TStringField;
    R00018bunitario: TFloatField;
    R00018bprnos: TBooleanField;
    R00018btipo: TIntegerField;
    R00018brecno: TIntegerField;
    R00018bvtotal: TFloatField;
    R00018c: TZQuery;
    R00018corigem: TIntegerField;
    R00018cdoc: TIntegerField;
    R00018cservico: TIntegerField;
    R00018cdetalhe: TIntegerField;
    R00018cdescri: TStringField;
    frxR00018c: TfrxDBDataset;
    dsR00018b: TDataSource;
    R00018d: TZQuery;
    R00018dorigem: TIntegerField;
    R00018ddoc: TIntegerField;
    R00018dmaterial: TIntegerField;
    R00018ddescricao: TStringField;
    R00018dqtd: TFloatField;
    R00018dunidade: TStringField;
    R00018dunitario: TFloatField;
    R00018dtotal: TFloatField;
    R00018drecno: TIntegerField;
    frxR00018d: TfrxDBDataset;
    R00018e: TZQuery;
    frxR00018e: TfrxDBDataset;
    R00018eorigem: TIntegerField;
    R00018edoc: TIntegerField;
    R00018efuncao: TIntegerField;
    R00018edescricao: TStringField;
    R00018eqtd: TIntegerField;
    R00018evvenda: TFloatField;
    R00018etotal: TFloatField;
    R00018atitulo: TStringField;
    R00018aordem: TIntegerField;
    R00018aconteudo: TBlobField;
    R00018aorigem: TIntegerField;
    R00018adoc: TIntegerField;
    R00018aimg1: TBlobField;
    R00018aimg2: TBlobField;
    R00018arecno: TIntegerField;
    R00018ativdescri: TMemoField;
    R00014tensao_un: TStringField;
    R00014potencia_un: TStringField;
    R00019: TZQuery;
    frxR00019: TfrxDBDataset;
    R00019idos: TStringField;
    R00019data: TDateField;
    R00019idcliente: TIntegerField;
    R00019empresa: TStringField;
    R00019nome_chave: TStringField;
    R00019endereco: TStringField;
    R00019bairro: TStringField;
    R00019cep: TStringField;
    R00019cidade: TStringField;
    R00019estado: TStringField;
    R00019cnpj: TStringField;
    R00019cpf: TStringField;
    R00019inscricao: TStringField;
    R00019telefone: TStringField;
    R00019a: TZQuery;
    frxR00019a: TfrxDBDataset;
    R00019os: TIntegerField;
    R00019acodserv: TIntegerField;
    R00019adescri: TMemoField;
    R00019aqtd: TFloatField;
    R00019aun: TStringField;
    R00019avl_venda: TFloatField;
    R00019atotal: TFloatField;
    R00019vlsrv: TFloatField;
    R00019vlmat: TFloatField;
    R00019descricao: TMemoField;
    R00019pedidocliente: TStringField;
    R00019controle: TMemoField;
    R00017blaudo: TIntegerField;
    R00017alaudo: TIntegerField;
    R00017claudo: TIntegerField;
    R00014alaudo: TIntegerField;
    R00014logo: TBlobField;
    R00014b: TZQuery;
    frxR00014b: TfrxDBDataset;
    R00014bensaio_recno: TIntegerField;
    R00014bdata: TDateField;
    R00014bvalor: TFloatField;
    R00014bnome: TStringField;
    R00014bunidade: TStringField;
    R00014aensaio_recno: TIntegerField;
    R00014bref_valor: TFloatField;
    R00014inmetro: TBooleanField;
    R00014a: TZQuery;
    R00014revisao: TIntegerField;
    R00014asomenteleitura: TBooleanField;
    R00014amostra: TIntegerField;
    R00020: TZQuery;
    frxR00020: TfrxDBDataset;
    dsR00020: TDataSource;
    R00020recno: TIntegerField;
    R00020codigo: TIntegerField;
    R00020obs: TMemoField;
    R00020condicaopg: TStringField;
    R00020pedido_cliente: TStringField;
    R00020frete: TFloatField;
    R00020frascos: TIntegerField;
    R00020seringas: TIntegerField;
    R00020envio: TIntegerField;
    R00020coleta: TIntegerField;
    R00020remessa: TBooleanField;
    R00020laboratorio: TBooleanField;
    R00020destinatario: TStringField;
    R00020empresa: TStringField;
    R00020nome_chave: TStringField;
    R00020endereco: TStringField;
    R00020bairro: TStringField;
    R00020cep: TStringField;
    R00020cidade: TStringField;
    R00020estado: TStringField;
    R00020cnpj: TStringField;
    R00020inscricao: TStringField;
    R00020cpf: TStringField;
    R00020rg: TStringField;
    R00020telefone: TStringField;
    R00020email: TStringField;
    R00020id_vendedor: TIntegerField;
    R00020logo: TBlobField;
    R00020vendedor: TStringField;
    R00020markup: TIntegerField;
    R00020vlmat: TFloatField;
    R00020vlsrvvar: TFloatField;
    R00020vlsrvfixo: TFloatField;
    R00020vlmobra: TFloatField;
    R00020vldespe: TFloatField;
    R00020emitido: TDateTimeField;
    R00020a: TZQuery;
    frxR00020a: TfrxDBDataset;
    R00020apedido: TIntegerField;
    R00020acodserv: TIntegerField;
    R00020adescri: TStringField;
    R00020aun: TStringField;
    R00020aqtd: TIntegerField;
    R00020aunitario: TFloatField;
    R00020avtotal: TFloatField;
    R00020b: TZQuery;
    frxR00020b: TfrxDBDataset;
    R00020bdescri: TStringField;
    R00020c: TZQuery;
    frxR00020c: TfrxDBDataset;
    R00020cpedido: TIntegerField;
    R00020cfuncao: TIntegerField;
    R00020cdescricao: TStringField;
    R00020cqtd: TIntegerField;
    R00020cvvenda: TFloatField;
    R00020ctotal: TFloatField;
    R00020d: TZQuery;
    frxR00020d: TfrxDBDataset;
    R00020dpedido: TIntegerField;
    R00020dmaterial: TIntegerField;
    R00020ddescricao: TStringField;
    R00020dqtd: TFloatField;
    R00020dunidade: TStringField;
    R00020dvvenda: TFloatField;
    R00020dvtotal: TFloatField;
    R00020drecno: TIntegerField;
    R00020ativdescri: TMemoField;
    R00018f: TZQuery;
    frxR00018f: TfrxDBDataset;
    R00018frecno: TIntegerField;
    R00018fcodigo: TIntegerField;
    R00018fdata: TDateField;
    R00018fdocto: TStringField;
    R00018fhistorico: TMemoField;
    R00018fvalor: TFloatField;
    R00014comodato: TIntegerField;
    R00020e: TZQuery;
    frxR00020e: TfrxDBDataset;
    R00020epedido: TIntegerField;
    R00020edespesa: TIntegerField;
    R00020erecno: TIntegerField;
    R00020edata: TDateField;
    R00020edocto: TStringField;
    R00020ehistorico: TMemoField;
    R00020evalor: TFloatField;
    R00018condicaopg: TStringField;
    R00012seringas: TLargeintField;
    R00012frascos: TLargeintField;
    R00021: TZQuery;
    frxR00021: TfrxDBDataset;
    R00021recno: TIntegerField;
    R00021servico: TStringField;
    R00021serviconome: TStringField;
    R00021formato: TIntegerField;
    R00021volumes: TIntegerField;
    R00021peso: TFloatField;
    R00021diametro: TFloatField;
    R00021altura: TFloatField;
    R00021largura: TFloatField;
    R00021comprimento: TFloatField;
    R00021fator: TFloatField;
    R00021valor: TFloatField;
    R00021valorc: TFloatField;
    R00021prazo: TIntegerField;
    R00021obs: TMemoField;
    R00021descri: TStringField;
    R00021codigo: TIntegerField;
    R00021empresa: TStringField;
    R00021nome_chave: TStringField;
    R00021cnpj: TStringField;
    R00021cpf: TStringField;
    R00021telefone: TStringField;
    R00021correiovalor: TFloatField;
    R00021correiopeso: TFloatField;
    R00021correiolido: TDateTimeField;
    R00021status: TIntegerField;
    R00021rastreio: TStringField;
    R00021emissao: TDateField;
    R00013codigo: TIntegerField;
    R00013empresa: TStringField;
    R00013nome_chave: TStringField;
    R00013cnpj: TStringField;
    R00013cpf: TStringField;
    R00013telefone: TStringField;
    R00013nf: TIntegerField;
    R00013nf_serie: TIntegerField;
    R00013nf_emissao: TDateField;
    R00013nf_valor: TFloatField;
    R00013tipo_port: TIntegerField;
    R00013portador: TStringField;
    R00013tipo: TIntegerField;
    R00013validade: TDateField;
    R00013comodato: TIntegerField;
    R00013amostra: TIntegerField;
    R00013remessa: TIntegerField;
    R00013rem_cnpj: TStringField;
    R00013rem_empresa: TStringField;
    R00014tequip: TFloatField;
    R00017amostra: TIntegerField;
    R00017relato_recno: TIntegerField;
    R00017laudo: TStringField;
    R00017status: TIntegerField;
    R00017recno: TIntegerField;
    R00017labcrit_recno: TIntegerField;
    R00017idcodigo: TIntegerField;
    R00017crit: TStringField;
    R00017cor: TStringField;
    R00017labdiag_recno: TIntegerField;
    R00017apontado: TDateTimeField;
    R00017inmetro: TBooleanField;
    R00017diag_descri: TStringField;
    R00017diag_diag: TMemoField;
    R00017diag_dias: TIntegerField;
    R00017labrec_recno: TIntegerField;
    R00017rec_descri: TStringField;
    R00017recomenda: TMemoField;
    R00017assinatura: TStringField;
    R00017diagnostico: TMemoField;
    R00017recomendacao: TMemoField;
    R00017pcoleta: TDateField;
    R00017obs: TMemoField;
    R00017emissao: TDateTimeField;
    R00017d1: TDateField;
    R00017d2: TDateField;
    R00017d3: TDateField;
    R00017d4: TDateField;
    R00017d5: TDateField;
    R00017d6: TDateField;
    R00017revisao: TIntegerField;
    R00017etiqueta: TMemoField;
    R00017comodato: TIntegerField;
    R00017os: TIntegerField;
    R00017entrada: TDateTimeField;
    R00017coleta: TDateField;
    R00017coletor: TStringField;
    R00017laudodesc: TStringField;
    R00017tamb: TIntegerField;
    R00017toleo: TIntegerField;
    R00017tequip: TFloatField;
    R00017umidade: TIntegerField;
    R00017tensao: TFloatField;
    R00017local: TStringField;
    R00017labsubest_recno: TIntegerField;
    R00017codigo: TIntegerField;
    R00017empresa: TStringField;
    R00017nome_chave: TStringField;
    R00017cnpj: TStringField;
    R00017cpf: TStringField;
    R00017telefone: TStringField;
    R00017endereco: TStringField;
    R00017bairro: TStringField;
    R00017cidade: TStringField;
    R00017estado: TStringField;
    R00017cep: TStringField;
    R00017email: TStringField;
    R00017logo: TBlobField;
    R00017destinatario: TStringField;
    R00017pedido: TIntegerField;
    R00017tpamostra_recno: TIntegerField;
    R00017atipo: TStringField;
    R00017equip_recno: TIntegerField;
    R00017fabricante: TStringField;
    R00017serie: TStringField;
    R00017tipo: TStringField;
    R00017tensao_un: TStringField;
    R00017potencia_un: TStringField;
    R00017descri: TStringField;
    R00017potencia: TFloatField;
    R00017imped: TFloatField;
    R00017tensao_1: TFloatField;
    R00017fases: TIntegerField;
    R00017ano: TIntegerField;
    R00017lote: TStringField;
    R00017isolante: TStringField;
    R00017volume: TIntegerField;
    R00017drenos: TStringField;
    R00017familia: TStringField;
    R00017tag: TStringField;
    R00017sigla: TStringField;
    R00017nome: TStringField;
    R00017regional: TIntegerField;
    R00017reg_nome: TStringField;
    R00017nome_1: TStringField;
    R00017crq: TStringField;
    R00017ass_arquivo: TStringField;
    R00017cargo: TStringField;
    R00017idos: TStringField;
    R00017rem_dh: TDateTimeField;
    R00017rem_usrname: TStringField;
    R00017envnf: TIntegerField;
    R00017envnf_serie: TIntegerField;
    R00017envnf_emissao: TDateTimeField;
    R00017envtipo_port: TIntegerField;
    R00017envtipo_outros: TStringField;
    R00017envcnpj: TStringField;
    R00017envempresa: TStringField;
    R00017envobs: TMemoField;
    R00017pedido_1: TIntegerField;
    R00017pedcriado: TDateTimeField;
    R00017pedemitido: TDateTimeField;
    R00017pedautorizado: TDateTimeField;
    R00017pedaprovado: TIntegerField;
    R00017pedsolicitante: TStringField;
    R00017pedsolicitante_dep: TStringField;
    R00017pedcond: TStringField;
    R00017pedfrete: TFloatField;
    R00017ret_usrname: TStringField;
    R00017pednf: TIntegerField;
    R00017pednf_serie: TIntegerField;
    R00017pednf_emissao: TDateTimeField;
    R00017pednf_valor: TFloatField;
    R00017pedtotal: TFloatField;
    R00017localizacao: TStringField;
    R00014aincerteza: TFloatField;
    R00014dec_conf: TBooleanField;
    R00014analista_assinatura: TStringField;
    R00014analista_cargo: TStringField;
    R00014analista_nome: TStringField;
    R00014analista_conselho: TStringField;
    R00014nomese: TStringField;
    R00014legendas: TMemoField;
    R00014regras: TMemoField;
    R00014c: TZQuery;
    frxR00014c: TfrxDBDataset;
    R00014cnome: TStringField;
    R00014cfuncao: TStringField;
    R00014ctelefone: TStringField;
    R00014cemail: TStringField;
    R00014email: TStringField;
    R00018g: TZQuery;
    frxDR00018g: TfrxDBDataset;
    R00018gnome: TStringField;
    R00018gcelular: TStringField;
    R00018gtelefone: TStringField;
    R00018gemail: TStringField;
    R00019b: TZQuery;
    StringField16: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    frxR00019b: TfrxDBDataset;
    R00014ccelular: TStringField;
    R00022: TZQuery;
    frxR00022: TfrxDBDataset;
    R00022column: TIntegerField;
    R00014responsavel_nome: TStringField;
    R00014responsavel_registro: TStringField;
    R00014responsavel_assinatura: TStringField;
    R00014responsavel_cargo: TStringField;
    R00014analista_registro: TStringField;
    R00014responsavel_conselho: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure R00011CalcFields(DataSet: TDataSet);
    procedure R00014CalcFields(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure R00014AfterScroll(DataSet: TDataSet);
    procedure R00017AfterScroll(DataSet: TDataSet);
    procedure R00017CalcFields(DataSet: TDataSet);
    procedure R00017aAfterScroll(DataSet: TDataSet);
    procedure R00018AfterScroll(DataSet: TDataSet);
    procedure R00018bAfterScroll(DataSet: TDataSet);
    procedure R00019AfterScroll(DataSet: TDataSet);
    procedure R00014aAfterScroll(DataSet: TDataSet);
    procedure R00020AfterScroll(DataSet: TDataSet);
    procedure R00020aAfterScroll(DataSet: TDataSet);
  private
    FStmtList : TStrings;
    { Private declarations }
  public
    { Public declarations }
    procedure StmtPreserve(ID : String; Stmt: TStrings);
    procedure StmtRestore(ID: String; Stmt: TStrings);
    function StmtExists(ID: String) : Boolean;
  end;

var
  DMReport: TDMReport;

implementation

{$R *.dfm}

uses uIUtils, uDM, MaskUtils;

procedure TDMReport.DataModuleCreate(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to ComponentCount - 1 do
    if Components[i] is TZReadOnlyQuery then
      with TZReadOnlyQuery(Components[i]) do
        Connection := U.Data;

  // Configurando caminho base
  with ReportDefs do
  begin
    SaveDir := U.Path.ReportTemplates;
    OpenDir := U.Path.ReportTemplates;
    TemplateDir := U.Path.Templates;
  end;

  with ReportBase do
  begin
    EngineOptions.TempDir := U.Path.System;
  end;

  with frxPDF do
    DefaultPath := U.Path.ReportTemplates;
end;

procedure TDMReport.DataModuleDestroy(Sender: TObject);
var
  oStmt: TStrings;
  i: Integer;
begin
  if Assigned(FStmtList) then
  begin
    for i := 0 to FStmtList.Count - 1 do
    begin
      oStmt := TStrings(FStmtList.Objects[i]);
      FreeAndNil(oStmt);
    end;

    FreeAndNil(FStmtList);
  end;

end;

function TDMReport.StmtExists(ID: String): Boolean;
begin
  Result := Assigned(FStmtList) and (FStmtList.IndexOf(ID) <> -1);
end;

procedure TDMReport.StmtPreserve(ID: String; Stmt: TStrings);
var
  idx: Integer;
  oStmt: TStrings;
begin
  if not assigned(FStmtList) then
    FStmtList := TStringList.Create;

  idx := FStmtList.IndexOf(ID);

  if idx = -1 then
  begin
    oStmt := TStringList.Create;
    oStmt.AddStrings(Stmt);

    FStmtList.AddObject(ID, oStmt);
  end
  else
  begin
    oStmt := TStrings(FStmtList.Objects[idx]);
    ostmt.Clear;
    oStmt.AddStrings(Stmt);
  end;
end;

procedure TDMReport.R00011CalcFields(DataSet: TDataSet);
var
  sLocal: String;
begin
  inherited;
  sLocal := R00011sigla.AsString;

  if not R00011nome.IsNull then
  begin
    if sLocal <> EmptyStr then
      sLocal := sLocal + ' - ';

    sLocal := sLocal + R00011nome.AsString;
  end;

  if not R00011reg_nome.IsNull then
  begin
    if sLocal <> EmptyStr then
      sLocal := sLocal + ' - ';

    sLocal := sLocal + R00011reg_nome.AsString;
  end;

  R00011etiq_local.AsString := UpperCase(sLocal);
end;

procedure TDMReport.R00014aAfterScroll(DataSet: TDataSet);
begin
  R00014b.ParamByName('laudo').AsInteger := R00014alaudo.AsInteger; // laudo
  R00014b.ParamByName('tipo').AsInteger := R00014arelato_recno.AsInteger; // tipo de laudo
  R00014b.ParamByName('ensaio').AsInteger := R00014aensaio_recno.AsInteger; // ensaio
  G.RefreshDataSet(R00014b);
end;

procedure TDMReport.R00014AfterScroll(DataSet: TDataSet);
begin
  R00014a.ParamByName('laudo').AsInteger := R00014recno.AsInteger; // laudo
  R00014a.ParamByName('tipo').AsInteger := R00014relato_recno.AsInteger; // tipo de laudo
  R00014c.ParamByName('laudo').AsInteger := R00014recno.AsInteger; // laudo
  G.RefreshDataSet(R00014a);
  G.RefreshDataSet(R00014c);
end;

procedure TDMReport.R00014CalcFields(DataSet: TDataSet);
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

procedure TDMReport.R00017aAfterScroll(DataSet: TDataSet);
begin
  R00017b.Params[0].AsInteger := R00017alaudo.AsInteger;
  R00017b.Params[1].AsInteger := R00017arelato_recno.AsInteger;
  R00017b.Params[2].AsInteger := R00017aensaio_recno.AsInteger;
  R00017c.Params[0].AsInteger := R00017alaudo.AsInteger;
  R00017c.Params[1].AsInteger := R00017arelato_recno.AsInteger;
  R00017c.Params[2].AsInteger := R00017aensaio_recno.AsInteger;
  
  G.RefreshDataSet(R00017b);
  G.RefreshDataSet(R00017c);
end;

procedure TDMReport.R00017AfterScroll(DataSet: TDataSet);
begin
  R00017a.Params[0].AsInteger := R00017recno.AsInteger;
  R00017a.Params[1].AsInteger := R00017relato_recno.AsInteger;
  G.RefreshDataSet(R00017a);
end;

procedure TDMReport.R00017CalcFields(DataSet: TDataSet);
var
  slocal : string;
begin
  slocal := '';

  if R00017sigla.AsString <> EmptyStr then
    slocal := R00017sigla.AsString;

  if R00017nome.AsString <> EmptyStr then
  begin
     if slocal <> EmptyStr then
        slocal:= slocal + ' - ';

     slocal:= slocal + R00017nome.AsString + '. ';
  end;

  if R00017reg_nome.AsString <> EmptyStr then
     slocal:= slocal + R00017reg_nome.AsString;

  R00017localizacao.AsString := slocal;
end;

procedure TDMReport.R00018AfterScroll(DataSet: TDataSet);
begin
  R00018a.ParamByName('origem').AsInteger := R00018origem.AsInteger;
  R00018a.ParamByName('doc').AsInteger := R00018recno.AsInteger;
  R00018b.ParamByName('origem').AsInteger := R00018origem.AsInteger;
  R00018b.ParamByName('doc').AsInteger := R00018doc.AsInteger;
  R00018d.ParamByName('origem').AsInteger := R00018origem.AsInteger;
  R00018d.ParamByName('doc').AsInteger := R00018doc.AsInteger;
  R00018e.ParamByName('origem').AsInteger := R00018origem.AsInteger;
  R00018e.ParamByName('doc').AsInteger := R00018doc.AsInteger;
  R00018f.ParamByName('cotacao').AsInteger := R00018recno.AsInteger;
  R00018g.ParamByName('cotacao').AsInteger := R00018recno.AsInteger;
  G.RefreshDataSet(R00018a);
  G.RefreshDataSet(R00018b);
  G.RefreshDataSet(R00018d);
  G.RefreshDataSet(R00018e);
  G.RefreshDataSet(R00018f);
  G.RefreshDataSet(R00018g);
end;

procedure TDMReport.R00018bAfterScroll(DataSet: TDataSet);
begin
  R00018c.ParamByName('origem').AsInteger := R00018borigem.AsInteger;
  R00018c.ParamByName('doc').AsInteger := R00018bdoc.AsInteger;
  R00018c.ParamByName('servico').AsInteger := R00018bservico.AsInteger;
  G.RefreshDataSet(R00018c);
end;

procedure TDMReport.R00019AfterScroll(DataSet: TDataSet);
begin
  R00019a.ParamByName('os').AsInteger := R00019os.AsInteger;
  R00019b.ParamByName('os').AsInteger := R00019os.AsInteger;
  G.RefreshDataSet(R00019a);
  G.RefreshDataSet(R00019b);
end;

procedure TDMReport.R00020aAfterScroll(DataSet: TDataSet);
begin
  R00020b.ParamByName('pedido').AsInteger := R00020apedido.AsInteger;
  R00020b.ParamByName('servico').AsInteger := R00020acodserv.AsInteger;
  G.RefreshDataSet(R00020b);
end;

procedure TDMReport.R00020AfterScroll(DataSet: TDataSet);
begin
  R00020a.ParamByName('pedido').AsInteger := R00020recno.AsInteger;
  R00020c.ParamByName('pedido').AsInteger := R00020recno.AsInteger;
  R00020d.ParamByName('pedido').AsInteger := R00020recno.AsInteger;
  R00020e.ParamByName('pedido').AsInteger := R00020recno.AsInteger;
  G.RefreshDataSet(R00020a); // serviços
  G.RefreshDataSet(R00020c); // mão-de-obra
  G.RefreshDataSet(R00020d); // materiais
  G.RefreshDataSet(R00020e); // despesas
end;

procedure TDMReport.StmtRestore(ID: String; Stmt: TStrings);
var
  idx: Integer;
begin
  idx := FStmtList.IndexOf(ID);

  if (idx = -1) then
    raise Exception.CreateFmt('Erro de acesso a instrução %s.', [ID]);

  Stmt.Clear;
  Stmt.AddStrings(TStrings(FStmtList.Objects[idx]));
end;

end.
