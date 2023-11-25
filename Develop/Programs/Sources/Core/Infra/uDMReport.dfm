object DMReport: TDMReport
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 816
  Width = 1088
  object ReportDefs: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -12
    DefaultFont.Name = 'Arial'
    DefaultFont.Pitch = fpVariable
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 20.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    Gradient = True
    GradientEnd = 11982554
    GradientStart = clWindow
    OpenDir = 'D:\dev\lorencini\manager\bin\sistema\rpt'
    SaveDir = 'D:\dev\lorencini\manager\bin\sistema\rpt'
    TemplatesExt = 'fr3'
    TemplateDir = 'D:\dev\lorencini\manager\bin\sistema\rpttemplates'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 32
    Top = 24
  end
  object ReportBase: TfrxReport
    Version = '6.3.1'
    DotMatrixReport = False
    EngineOptions.PrintIfEmpty = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.AllowEdit = False
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39757.585007557900000000
    ReportOptions.LastChange = 44300.019422986100000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnReportPrint = 'ReportBaseOnReportPrint'
    Left = 96
    Top = 24
  end
  object R00001: TZReadOnlyQuery
    Connection = DM.Design
    SortedFields = 'data;tipo'
    SQL.Strings = (
      
        'select a.cc, a.data, a.docto, a.historico, sys_iif(tipo = '#39'E'#39', v' +
        'alor, 0) as entrada, '
      
        '       sys_iif(tipo = '#39'S'#39', valor, 0) as saida, cast(sys_iif(a.co' +
        'mpensado, '#39'C'#39', '#39#39') as varchar(1)) compensado, '
      '      a.tipo'
      '  from fin_banco a'
      ' where a.data between :datade and :dataate')
    Params = <
      item
        DataType = ftUnknown
        Name = 'datade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataate'
        ParamType = ptUnknown
      end>
    IndexFieldNames = 'data Asc;tipo Asc'
    Options = []
    Left = 32
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'datade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataate'
        ParamType = ptUnknown
      end>
    object R00001cc: TStringField
      FieldName = 'cc'
      Required = True
      Size = 25
    end
    object R00001data: TDateField
      FieldName = 'data'
      Required = True
    end
    object R00001docto: TStringField
      FieldName = 'docto'
      Size = 25
    end
    object R00001historico: TStringField
      FieldName = 'historico'
      Required = True
      Size = 80
    end
    object R00001entrada: TFloatField
      FieldName = 'entrada'
      ReadOnly = True
    end
    object R00001saida: TFloatField
      FieldName = 'saida'
      ReadOnly = True
    end
    object R00001tipo: TStringField
      FieldName = 'tipo'
      Required = True
      Size = 1
    end
    object R00001compensado: TStringField
      FieldName = 'compensado'
      ReadOnly = True
      Size = 255
    end
  end
  object fR00001: TfrxDBDataset
    Description = 'Fluxo de Caixa Realizado'
    UserName = 'R00001'
    CloseDataSource = False
    FieldAliases.Strings = (
      'cc=cc'
      'data=data'
      'docto=docto'
      'historico=historico'
      'entrada=entrada'
      'saida=saida'
      'tipo=tipo'
      'compensado=compensado')
    DataSet = R00001
    BCDToCurrency = False
    Left = 96
    Top = 80
  end
  object R00002: TZReadOnlyQuery
    Connection = DM.Design
    SortedFields = 'emissao'
    SQL.Strings = (
      'select b.idos,    c.nome_chave, a.nf,'
      '       a.emissao, a.vlicms,     a.vliss,'
      '       a.vlirpf,  a.vlpis,      a.valor'
      '  from fatu_os a'
      '       join tb_orcamentos b'
      '         on b.os = a.os'
      '       join tbclientes c'
      '         on c.codigo = b.idcliente'
      'where a.emissao between :emissao_de and :emissao_ate')
    Params = <
      item
        DataType = ftDate
        Name = 'emissao_de'
        ParamType = ptUnknown
        Value = 37165d
      end
      item
        DataType = ftDate
        Name = 'emissao_ate'
        ParamType = ptUnknown
        Value = 40147d
      end>
    IndexFieldNames = 'emissao Asc'
    Options = []
    Left = 32
    Top = 176
    ParamData = <
      item
        DataType = ftDate
        Name = 'emissao_de'
        ParamType = ptUnknown
        Value = 37165d
      end
      item
        DataType = ftDate
        Name = 'emissao_ate'
        ParamType = ptUnknown
        Value = 40147d
      end>
    object StringField1: TStringField
      DisplayLabel = 'OS'
      FieldName = 'idos'
      Required = True
      Size = 10
    end
    object StringField2: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'nome_chave'
      ReadOnly = True
      Size = 45
    end
    object IntegerField2: TIntegerField
      DisplayLabel = 'NF'
      FieldName = 'nf'
      Required = True
    end
    object DateField1: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'emissao'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object FloatField1: TFloatField
      DisplayLabel = 'I.C.M.S.'
      FieldName = 'vlicms'
      Required = True
    end
    object FloatField2: TFloatField
      DisplayLabel = 'I.S.S'
      FieldName = 'vliss'
      Required = True
    end
    object FloatField3: TFloatField
      DisplayLabel = 'I.R.P.F'
      FieldName = 'vlirpf'
      Required = True
    end
    object FloatField4: TFloatField
      DisplayLabel = 'P.I.S. / Cofins / CSLL'
      FieldName = 'vlpis'
      Required = True
    end
    object FloatField6: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Required = True
      DisplayFormat = ',0.#0'
    end
  end
  object fR00002: TfrxDBDataset
    Description = 'Acumulado de Impostos'
    UserName = 'R00002'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idos=idos'
      'nome_chave=nome_chave'
      'nf=nf'
      'emissao=emissao'
      'vlicms=vlicms'
      'vliss=vliss'
      'vlirpf=vlirpf'
      'vlpis=vlpis'
      'valor=valor')
    DataSet = R00002
    BCDToCurrency = False
    Left = 96
    Top = 176
  end
  object frxPDF: TfrxPDFExport
    FileName = 'D:\Users\ricar\Desktop\r00018.pdf'
    ExportNotPrintable = True
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 42926.623377650460000000
    DataOnly = False
    EmbeddedFonts = True
    OpenAfterExport = False
    PrintOptimized = True
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 40
    Transparency = False
    Title = 'Laudo'
    Author = 'Lorencini Brasil Ldta'
    Subject = 'Emitido por Lorencini Brasil'
    Creator = 'Lorencini Brasil Ltda'
    Producer = 'Laborat'#243'rio Lorencini Brasil'
    ProtectionFlags = [eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = True
    PdfA = True
    PDFStandard = psPDFA_1a
    PDFVersion = pv14
    Left = 160
    Top = 24
  end
  object R00003: TZReadOnlyQuery
    Connection = DM.Design
    SortedFields = 'dtvenc;nome_chave'
    SQL.Strings = (
      'select b.idos,    c.nome_chave, c.cnpj,  a.nf,'
      '       a.emissao, a.dtvenc,     a.vlcom, a.valor, '
      '       d.nome,    current_date - a.dtvenc as "atraso",'
      
        '       (trim(to_char(extract(month from a.dtvenc), '#39'00'#39'))||extra' +
        'ct(year from a.dtvenc)::::varchar(4))::::varchar(6) as compet'
      '  from fatu_os a'
      '       join tb_orcamentos b'
      '         on b.os = a.os'
      '       join tbclientes c'
      '         on c.codigo = b.idcliente'
      '       join tb_vendedores d'
      '         on d.idvendedor = b.idvendedor'
      'where a.dtbaixa is null'
      '  and a.dtvenc < current_date ')
    Params = <>
    IndexFieldNames = 'dtvenc Asc;nome_chave Asc'
    Options = []
    Left = 32
    Top = 224
    object StringField3: TStringField
      DisplayLabel = 'OS'
      FieldName = 'idos'
      Required = True
      Size = 10
    end
    object StringField4: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'nome_chave'
      ReadOnly = True
      Size = 45
    end
    object StringField9: TStringField
      DisplayLabel = 'C.N.P.J.'
      FieldName = 'cnpj'
      ReadOnly = True
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object IntegerField3: TIntegerField
      DisplayLabel = 'NF'
      FieldName = 'nf'
      Required = True
    end
    object DateField2: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'emissao'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object DateField3: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'dtvenc'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object FloatField16: TFloatField
      DisplayLabel = 'Comiss'#227'o'
      FieldName = 'vlcom'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object StringField10: TStringField
      FieldName = 'nome'
      ReadOnly = True
      Size = 100
    end
    object FloatField17: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object R00003atraso: TIntegerField
      DisplayLabel = 'Dias em Atraso'
      FieldName = 'atraso'
      ReadOnly = True
    end
    object R00003compet: TStringField
      DisplayLabel = 'Compet'#234'ncia'
      FieldName = 'compet'
      ReadOnly = True
      Size = 6
    end
  end
  object fR00003: TfrxDBDataset
    Description = 'T'#237'tulos Em Atraso'
    UserName = 'R00003'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idos=idos'
      'nome_chave=nome_chave'
      'cnpj=cnpj'
      'nf=nf'
      'emissao=emissao'
      'dtvenc=dtvenc'
      'vlcom=vlcom'
      'nome=nome'
      'valor=valor'
      'atraso=atraso'
      'compet=compet')
    DataSet = R00003
    BCDToCurrency = False
    Left = 96
    Top = 224
  end
  object R00004: TZReadOnlyQuery
    Connection = DM.Design
    SortedFields = 'emissao;nf'
    SQL.Strings = (
      'select b.nome_chave, a.nf,     a.serie,'
      '       a.emissao, a.vencto,    a.valor'
      '  from nf a'
      '       join tbclientes b'
      '         on b.codigo = a.codigo'
      'where a.status = 2'
      '  and a.emissao between :baixa_de and :baixa_ate')
    Params = <
      item
        DataType = ftDate
        Name = 'baixa_de'
        ParamType = ptUnknown
        Value = '01/01/2003'
      end
      item
        DataType = ftDate
        Name = 'baixa_ate'
        ParamType = ptUnknown
        Value = '31/12/2008'
      end>
    IndexFieldNames = 'emissao Asc;nf Asc'
    Options = []
    Left = 32
    Top = 272
    ParamData = <
      item
        DataType = ftDate
        Name = 'baixa_de'
        ParamType = ptUnknown
        Value = '01/01/2003'
      end
      item
        DataType = ftDate
        Name = 'baixa_ate'
        ParamType = ptUnknown
        Value = '31/12/2008'
      end>
    object R00004nome_chave: TStringField
      FieldName = 'nome_chave'
      Size = 45
    end
    object R00004nf: TIntegerField
      FieldName = 'nf'
      Required = True
    end
    object R00004serie: TIntegerField
      FieldName = 'serie'
      Required = True
    end
    object R00004emissao: TDateField
      FieldName = 'emissao'
      Required = True
    end
    object R00004vencto: TDateField
      FieldName = 'vencto'
      Required = True
    end
    object R00004valor: TFloatField
      FieldName = 'valor'
      Required = True
    end
  end
  object fR00004: TfrxDBDataset
    Description = 'Faturamento por per'#237'odo'
    UserName = 'R00004'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nome_chave=nome_chave'
      'nf=nf'
      'serie=serie'
      'emissao=emissao'
      'vencto=vencto'
      'valor=valor')
    DataSet = R00004
    BCDToCurrency = False
    Left = 96
    Top = 272
  end
  object R00005: TZReadOnlyQuery
    Connection = DM.Design
    SortedFields = 'nome;status;baixa'
    SQL.Strings = (
      
        'select a.idvendedor, cast(initcap(trim(b.nome)) as varchar(100))' +
        ' as nome, a.titulo, a.os,'
      '       a.emissao, a.vencimento, a.baixa, a.valor,'
      '       a.vlcom, c.serie, c.nf, d.empresa, d.nome_chave,'
      '       e.idos, sys_iif(a.baixa is not null, 1, 2) as status'
      '  from comissoes a'
      '       join tb_vendedores b'
      '         on b.idvendedor = a.idvendedor'
      '       join nf c'
      '         on a.recno_nf = c.recno'
      '       join tbclientes d'
      '         on d.codigo = c.codigo'
      '       join tb_orcamentos e'
      '         on a.os = e.os'
      ' where a.baixa between :vencto_de and :vencto_ate')
    Params = <
      item
        DataType = ftDate
        Name = 'vencto_de'
        ParamType = ptUnknown
        Value = '01/08/2009'
      end
      item
        DataType = ftDate
        Name = 'vencto_ate'
        ParamType = ptUnknown
        Value = '31/08/2009'
      end>
    IndexFieldNames = 'nome Asc;status Asc;baixa Asc'
    Options = []
    Left = 32
    Top = 320
    ParamData = <
      item
        DataType = ftDate
        Name = 'vencto_de'
        ParamType = ptUnknown
        Value = '01/08/2009'
      end
      item
        DataType = ftDate
        Name = 'vencto_ate'
        ParamType = ptUnknown
        Value = '31/08/2009'
      end>
    object R00005idvendedor: TIntegerField
      FieldName = 'idvendedor'
      Required = True
    end
    object R00005nome: TStringField
      FieldName = 'nome'
      Size = 100
    end
    object R00005titulo: TIntegerField
      FieldName = 'titulo'
      Required = True
    end
    object R00005os: TIntegerField
      FieldName = 'os'
      Required = True
    end
    object R00005emissao: TDateTimeField
      FieldName = 'emissao'
      Required = True
    end
    object R00005vencimento: TDateField
      FieldName = 'vencimento'
      Required = True
    end
    object R00005baixa: TDateField
      FieldName = 'baixa'
    end
    object R00005valor: TFloatField
      FieldName = 'valor'
      Required = True
    end
    object R00005vlcom: TFloatField
      FieldName = 'vlcom'
      Required = True
    end
    object R00005serie: TIntegerField
      FieldName = 'serie'
      Required = True
    end
    object R00005nf: TIntegerField
      FieldName = 'nf'
      Required = True
    end
    object R00005empresa: TStringField
      FieldName = 'empresa'
      Size = 100
    end
    object R00005nome_chave: TStringField
      FieldName = 'nome_chave'
      Size = 45
    end
    object R00005idos: TStringField
      FieldName = 'idos'
      Required = True
      Size = 10
    end
    object R00005status: TIntegerField
      FieldName = 'status'
      ReadOnly = True
    end
  end
  object fR00005: TfrxDBDataset
    Description = 'Comiss'#245'es a Receber'
    UserName = 'R00005'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idvendedor=idvendedor'
      'nome=nome'
      'titulo=titulo'
      'os=os'
      'emissao=emissao'
      'vencimento=vencimento'
      'baixa=baixa'
      'valor=valor'
      'vlcom=vlcom'
      'serie=serie'
      'nf=nf'
      'empresa=empresa'
      'nome_chave=nome_chave'
      'idos=idos'
      'status=status')
    DataSet = R00005
    BCDToCurrency = False
    Left = 96
    Top = 320
  end
  object R00006: TZReadOnlyQuery
    Connection = DM.Design
    SortedFields = 'nome_chave;dtvenc'
    SQL.Strings = (
      'select b.idos,    b.idcliente, c.nome_chave, a.nf,'
      '       a.emissao, a.dtvenc,    a.dtbaixa, a.vlcom,'
      '       a.valor,   d.nome'
      '  from fatu_os a'
      '       join tb_orcamentos b'
      '         on b.os = a.os'
      '       join tbclientes c'
      '         on c.codigo = b.idcliente'
      '        join tb_vendedores d'
      '         on d.idvendedor = b.idvendedor'
      'where a.dtvenc between :vencto_de and :vencto_ate')
    Params = <
      item
        DataType = ftDate
        Name = 'vencto_de'
        ParamType = ptUnknown
        Value = 39753d
      end
      item
        DataType = ftDate
        Name = 'vencto_ate'
        ParamType = ptUnknown
        Value = 39782d
      end>
    IndexFieldNames = 'nome_chave Asc;dtvenc Asc'
    Options = []
    Left = 32
    Top = 368
    ParamData = <
      item
        DataType = ftDate
        Name = 'vencto_de'
        ParamType = ptUnknown
        Value = 39753d
      end
      item
        DataType = ftDate
        Name = 'vencto_ate'
        ParamType = ptUnknown
        Value = 39782d
      end>
    object StringField17: TStringField
      DisplayLabel = 'OS'
      FieldName = 'idos'
      Required = True
      Size = 10
    end
    object IntegerField8: TIntegerField
      FieldName = 'idcliente'
      Required = True
    end
    object StringField18: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'nome_chave'
      ReadOnly = True
      Size = 45
    end
    object IntegerField9: TIntegerField
      DisplayLabel = 'NF'
      FieldName = 'nf'
      Required = True
    end
    object DateField13: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'emissao'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object DateField14: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'dtvenc'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object DateField15: TDateField
      DisplayLabel = 'Baixa'
      FieldName = 'dtbaixa'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object FloatField14: TFloatField
      DisplayLabel = 'Comiss'#227'o'
      FieldName = 'vlcom'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object FloatField15: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object StringField19: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'nome'
      ReadOnly = True
      Size = 100
    end
  end
  object fR00006: TfrxDBDataset
    Description = 'T'#237'tulos por Vencimento'
    UserName = 'R00006'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idos=idos'
      'idcliente=idcliente'
      'nome_chave=nome_chave'
      'nf=nf'
      'emissao=emissao'
      'dtvenc=dtvenc'
      'dtbaixa=dtbaixa'
      'vlcom=vlcom'
      'valor=valor'
      'nome=nome')
    DataSet = R00006
    BCDToCurrency = False
    Left = 96
    Top = 368
  end
  object R00007: TZReadOnlyQuery
    Connection = DM.Design
    SortedFields = 'vencimento_real,tipo,cc'
    SQL.Strings = (
      'select 1 as tipo, rec.emissao, rec.vencimento_real, rec.docto,'
      '       rec.historico as obs, rec.cc, rec.total as "entrada",'
      '       0 as "saida", cast('#39'R'#39' as varchar(1)) origem'
      '  from fin_receber rec'
      ' where rec.baixa is null '
      '   and rec.vencimento_real >= localtimestamp'
      'Union All'
      'select 2, pag.emissao, pag.vencimento_real, pag.docto, '
      '       pag.historico, pag.cc, 0, pag.total,'
      '       cast('#39'P'#39' as varchar(1))'
      '  from fin_pagar pag       '
      ' where pag.baixa is null '
      '   and  pag.vencimento_real >= localtimestamp'
      'Union All'
      
        'select sys_iif(tipo = '#39'S'#39', 2, 1), data, data, cast(docto as varc' +
        'har(50)), historico, cc, sys_iif(tipo = '#39'E'#39', valor, 0), sys_iif(' +
        'tipo = '#39'S'#39', valor, 0),'
      '       cast('#39'B'#39' as varchar(1))'
      '  from fin_banco '
      '  where origem = 3'
      '    and not compensado'
      '    and data >= localtimestamp')
    Params = <>
    IndexFieldNames = 'vencimento_real Asc,tipo Asc,cc Asc'
    Options = []
    Left = 32
    Top = 416
    object R00007tipo: TIntegerField
      FieldName = 'tipo'
      ReadOnly = True
    end
    object R00007emissao: TDateField
      FieldName = 'emissao'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object R00007vencimento_real: TDateField
      FieldName = 'vencimento_real'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object R00007docto: TStringField
      FieldName = 'docto'
      Size = 50
    end
    object R00007obs: TStringField
      FieldName = 'obs'
      ReadOnly = True
      Size = 255
    end
    object R00007cc: TStringField
      FieldName = 'cc'
      Size = 25
    end
    object R00007entrada: TFloatField
      FieldName = 'entrada'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object R00007saida: TFloatField
      FieldName = 'saida'
      ReadOnly = True
      DisplayFormat = ',0.#0'
    end
    object R00007origem: TStringField
      FieldName = 'origem'
      ReadOnly = True
      Size = 255
    end
  end
  object fR00007: TfrxDBDataset
    Description = 'Fluxo de Caixa Previsto'
    UserName = 'R00007'
    CloseDataSource = False
    FieldAliases.Strings = (
      'tipo=tipo'
      'emissao=emissao'
      'vencimento_real=vencimento_real'
      'docto=docto'
      'obs=obs'
      'cc=cc'
      'entrada=entrada'
      'saida=saida'
      'origem=origem')
    DataSet = R00007
    BCDToCurrency = False
    Left = 96
    Top = 416
  end
  object R00007a: TZReadOnlyQuery
    Connection = DM.Design
    SortedFields = 'data,cc'
    SQL.Strings = (
      'select a.*'
      '  from cc_saldos a'
      '       join (select cc, max(data) as data'
      '               from cc_saldos'
      '              where data < localtimestamp'
      '              group by cc) b'
      '         on b.cc = a.cc'
      '        and b.data = a.data ')
    Params = <>
    IndexFieldNames = 'data Asc,cc Asc'
    Options = []
    Left = 32
    Top = 464
    object R00007acc: TStringField
      FieldName = 'cc'
      Required = True
      Size = 25
    end
    object R00007adata: TDateField
      FieldName = 'data'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object R00007asaldo_anterior: TFloatField
      FieldName = 'saldo_anterior'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object R00007aentradas: TFloatField
      FieldName = 'entradas'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object R00007asaidas: TFloatField
      FieldName = 'saidas'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object R00007asaldo: TFloatField
      FieldName = 'saldo'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object R00007arecno: TIntegerField
      FieldName = 'recno'
      Required = True
    end
  end
  object fR00007a: TfrxDBDataset
    Description = 'Fluxo de Caixa'
    UserName = 'R00007a'
    CloseDataSource = False
    FieldAliases.Strings = (
      'cc=cc'
      'data=data'
      'saldo_anterior=saldo_anterior'
      'entradas=entradas'
      'saidas=saidas'
      'saldo=saldo'
      'recno=recno')
    DataSet = R00007a
    BCDToCurrency = False
    Left = 96
    Top = 464
  end
  object R00001a: TZReadOnlyQuery
    Connection = DM.Design
    SQL.Strings = (
      'select a.*'
      '  from cc_saldos a'
      '       join (select cc, max(data) as data'
      '               from cc_saldos'
      '              where data < :datade'
      '              group by cc) b'
      '         on b.cc = a.cc'
      '        and b.data = a.data')
    Params = <
      item
        DataType = ftDate
        Name = 'datade'
        ParamType = ptUnknown
        Value = '30/09/2009'
      end>
    Options = []
    Left = 32
    Top = 128
    ParamData = <
      item
        DataType = ftDate
        Name = 'datade'
        ParamType = ptUnknown
        Value = '30/09/2009'
      end>
    object R00001acc: TStringField
      DisplayLabel = 'Conta'
      FieldName = 'cc'
      Required = True
      Size = 25
    end
    object R00001adata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'data'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object R00001asaldo_anterior: TFloatField
      DisplayLabel = 'Saldo Anterior'
      FieldName = 'saldo_anterior'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object R00001aentradas: TFloatField
      DisplayLabel = 'Entradas'
      FieldName = 'entradas'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object R00001asaidas: TFloatField
      DisplayLabel = 'Sa'#237'das'
      FieldName = 'saidas'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object R00001asaldo: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'saldo'
      Required = True
      DisplayFormat = ',0.#0'
    end
  end
  object fR0001a: TfrxDBDataset
    Description = 'Fluxo de Caixa Realizado'
    UserName = 'R00001a'
    CloseDataSource = False
    FieldAliases.Strings = (
      'cc=cc'
      'data=data'
      'saldo_anterior=saldo_anterior'
      'entradas=entradas'
      'saidas=saidas'
      'saldo=saldo')
    DataSet = R00001a
    BCDToCurrency = False
    Left = 96
    Top = 128
  end
  object R00008: TZReadOnlyQuery
    Connection = DM.Design
    SortedFields = 'cc;data;tipo'
    SQL.Strings = (
      
        'select a.cc, a.data, a.docto, a.historico, sys_iif(tipo = '#39'E'#39', v' +
        'alor, 0) as entrada, '
      
        '       sys_iif(tipo = '#39'S'#39', valor, 0) as saida, cast(sys_iif(a.co' +
        'mpensado, '#39'C'#39', '#39#39') as varchar(1)) compensado, '
      '      a.tipo'
      '  from fin_banco a'
      ' where a.data between :datade and :dataate')
    Params = <
      item
        DataType = ftDate
        Name = 'datade'
        ParamType = ptUnknown
        Value = '01/10/2009'
      end
      item
        DataType = ftDate
        Name = 'dataate'
        ParamType = ptUnknown
        Value = '31/10/2009'
      end>
    MasterFields = 'cc'
    MasterSource = dsR00001a
    LinkedFields = 'cc'
    IndexFieldNames = 'cc Asc;data Asc;tipo Asc'
    Options = []
    Left = 32
    Top = 512
    ParamData = <
      item
        DataType = ftDate
        Name = 'datade'
        ParamType = ptUnknown
        Value = '01/10/2009'
      end
      item
        DataType = ftDate
        Name = 'dataate'
        ParamType = ptUnknown
        Value = '31/10/2009'
      end>
    object StringField5: TStringField
      FieldName = 'cc'
      Required = True
      Size = 25
    end
    object DateField4: TDateField
      FieldName = 'data'
      Required = True
    end
    object StringField6: TStringField
      FieldName = 'docto'
      Size = 25
    end
    object StringField7: TStringField
      FieldName = 'historico'
      Required = True
      Size = 80
    end
    object FloatField5: TFloatField
      FieldName = 'entrada'
      ReadOnly = True
    end
    object FloatField7: TFloatField
      FieldName = 'saida'
      ReadOnly = True
    end
    object StringField8: TStringField
      FieldName = 'tipo'
      Required = True
      Size = 1
    end
    object StringField11: TStringField
      FieldName = 'compensado'
      ReadOnly = True
      Size = 255
    end
  end
  object fR00008: TfrxDBDataset
    Description = 'Fluxo de Caixa Realizado (Por Conta)'
    UserName = 'R00008'
    CloseDataSource = False
    FieldAliases.Strings = (
      'cc=cc'
      'data=data'
      'docto=docto'
      'historico=historico'
      'entrada=entrada'
      'saida=saida'
      'tipo=tipo'
      'compensado=compensado')
    DataSet = R00008
    BCDToCurrency = False
    Left = 96
    Top = 512
  end
  object dsR00001a: TDataSource
    DataSet = R00001a
    Left = 152
    Top = 128
  end
  object R00009: TZReadOnlyQuery
    Connection = DM.Design
    SortedFields = 'nome;status;baixa'
    SQL.Strings = (
      
        'select a.idvendedor, cast(initcap(trim(b.nome)) as varchar(100))' +
        ' nome, a.titulo, a.os,'
      '       a.emissao, a.vencimento, a.baixa, a.valor,'
      '       a.vlcom, c.serie, c.nf, d.empresa, d.nome_chave,'
      '       e.idos, sys_iif(a.baixa is not null, 1, 2) as status'
      '  from comissoes a'
      '       join tb_vendedores b'
      '         on b.idvendedor = a.idvendedor'
      '       join nf c'
      '         on a.recno_nf = c.recno'
      '       join tbclientes d'
      '         on d.codigo = c.codigo'
      '       join tb_orcamentos e'
      '         on a.os = e.os'
      ' where a.vencimento between :vencto_de and :vencto_ate')
    Params = <
      item
        DataType = ftDate
        Name = 'vencto_de'
        ParamType = ptUnknown
        Value = '01/08/2009'
      end
      item
        DataType = ftDate
        Name = 'vencto_ate'
        ParamType = ptUnknown
        Value = '31/08/2009'
      end>
    IndexFieldNames = 'nome Asc;status Asc;baixa Asc'
    Options = []
    Left = 32
    Top = 560
    ParamData = <
      item
        DataType = ftDate
        Name = 'vencto_de'
        ParamType = ptUnknown
        Value = '01/08/2009'
      end
      item
        DataType = ftDate
        Name = 'vencto_ate'
        ParamType = ptUnknown
        Value = '31/08/2009'
      end>
    object IntegerField1: TIntegerField
      FieldName = 'idvendedor'
      Required = True
    end
    object StringField12: TStringField
      FieldName = 'nome'
      Size = 100
    end
    object IntegerField4: TIntegerField
      FieldName = 'titulo'
      Required = True
    end
    object IntegerField5: TIntegerField
      FieldName = 'os'
      Required = True
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'emissao'
      Required = True
    end
    object DateField5: TDateField
      FieldName = 'vencimento'
      Required = True
    end
    object DateField6: TDateField
      FieldName = 'baixa'
    end
    object FloatField8: TFloatField
      FieldName = 'valor'
      Required = True
    end
    object FloatField9: TFloatField
      FieldName = 'vlcom'
      Required = True
    end
    object IntegerField6: TIntegerField
      FieldName = 'serie'
      Required = True
    end
    object IntegerField7: TIntegerField
      FieldName = 'nf'
      Required = True
    end
    object StringField13: TStringField
      FieldName = 'empresa'
      Size = 100
    end
    object StringField14: TStringField
      FieldName = 'nome_chave'
      Size = 45
    end
    object StringField15: TStringField
      FieldName = 'idos'
      Required = True
      Size = 10
    end
    object IntegerField10: TIntegerField
      FieldName = 'status'
      ReadOnly = True
    end
  end
  object frxR00009: TfrxDBDataset
    Description = 'Comiss'#245'es a Vencer'
    UserName = 'R00009'
    CloseDataSource = False
    FieldAliases.Strings = (
      'idvendedor=idvendedor'
      'nome=nome'
      'titulo=titulo'
      'os=os'
      'emissao=emissao'
      'vencimento=vencimento'
      'baixa=baixa'
      'valor=valor'
      'vlcom=vlcom'
      'serie=serie'
      'nf=nf'
      'empresa=empresa'
      'nome_chave=nome_chave'
      'idos=idos'
      'status=status')
    DataSet = R00009
    BCDToCurrency = False
    Left = 96
    Top = 560
  end
  object R00010: TZReadOnlyQuery
    Connection = DM.Design
    SortedFields = 'nome_chave;nf;ensaio;idos'
    SQL.Strings = (
      
        'select am.clienteid,  cl.nome_chave, cl.empresa,     nf.nf,     ' +
        '       nf.serie,'
      
        '       os.idos,       am.amostragem, am.data,        am.ensaio, ' +
        '       am.local, '
      
        '       am.sub_local,  am.estacao,    am.numeroserie, am.identifi' +
        'cacao, am.tag, '
      
        '       am.fabricante, am.numeroid,   nf.emissao,     nf.vencto, ' +
        '       nf.valor'
      '  from nf'
      '       join nf_itens nfi'
      '         on nfi.recno_nf = nf.recno'
      '       join tb_orcamentos os'
      '         on nfi.os = os.os'
      '       join tb_entrada_amostra am'
      '         on am.os = os.idos  '
      '       join tbclientes cl'
      '         on cl.codigo = am.clienteid'
      '        and cl.codigo = nf.codigo'
      ' where nf.nf between :nfde and :nfate'
      '   and nf.serie between :seriede and :serieate'
      '')
    Params = <
      item
        DataType = ftString
        Name = 'nfde'
        ParamType = ptUnknown
        Value = '13941'
      end
      item
        DataType = ftString
        Name = 'nfate'
        ParamType = ptUnknown
        Value = '13941'
      end
      item
        DataType = ftString
        Name = 'seriede'
        ParamType = ptUnknown
        Value = '6'
      end
      item
        DataType = ftString
        Name = 'serieate'
        ParamType = ptUnknown
        Value = '6'
      end>
    IndexFieldNames = 'nome_chave Asc;nf Asc;ensaio Asc;idos Asc'
    Options = []
    Left = 32
    Top = 608
    ParamData = <
      item
        DataType = ftString
        Name = 'nfde'
        ParamType = ptUnknown
        Value = '13941'
      end
      item
        DataType = ftString
        Name = 'nfate'
        ParamType = ptUnknown
        Value = '13941'
      end
      item
        DataType = ftString
        Name = 'seriede'
        ParamType = ptUnknown
        Value = '6'
      end
      item
        DataType = ftString
        Name = 'serieate'
        ParamType = ptUnknown
        Value = '6'
      end>
    object R00010clienteid: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'clienteid'
      Required = True
    end
    object R00010nome_chave: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'nome_chave'
      Size = 45
    end
    object R00010empresa: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'empresa'
      Size = 100
    end
    object R00010nf: TIntegerField
      DisplayLabel = 'NF'
      FieldName = 'nf'
      Required = True
    end
    object R00010serie: TIntegerField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'serie'
      Required = True
    end
    object R00010idos: TStringField
      DisplayLabel = 'OS'
      FieldName = 'idos'
      Required = True
      Size = 10
    end
    object R00010amostragem: TDateField
      DisplayLabel = 'Coleta'
      FieldName = 'amostragem'
    end
    object R00010data: TDateField
      DisplayLabel = 'Entrada'
      FieldName = 'data'
    end
    object R00010ensaio: TStringField
      DisplayLabel = 'Ensaio'
      FieldName = 'ensaio'
      Size = 100
    end
    object R00010local: TStringField
      DisplayLabel = 'Local'
      FieldName = 'local'
      Size = 100
    end
    object R00010sub_local: TStringField
      DisplayLabel = 'Sublocal'
      FieldName = 'sub_local'
      Size = 100
    end
    object R00010estacao: TStringField
      DisplayLabel = 'Esta'#231#227'o'
      FieldName = 'estacao'
      Size = 100
    end
    object R00010numeroserie: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'numeroserie'
      Size = 100
    end
    object R00010identificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'identificacao'
      Size = 100
    end
    object R00010tag: TStringField
      DisplayLabel = 'TAG'
      FieldName = 'tag'
      Size = 50
    end
    object R00010fabricante: TStringField
      DisplayLabel = 'Fabricante'
      FieldName = 'fabricante'
      Size = 100
    end
    object R00010numeroid: TIntegerField
      DisplayLabel = 'Amostra'
      FieldName = 'numeroid'
      Required = True
    end
    object R00010emissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'emissao'
      Required = True
    end
    object R00010vencto: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'vencto'
      Required = True
    end
    object R00010valor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Required = True
    end
  end
  object frxR00010: TfrxDBDataset
    Description = 'Ensaios por NF'
    UserName = 'R00010'
    CloseDataSource = False
    FieldAliases.Strings = (
      'clienteid=clienteid'
      'nome_chave=nome_chave'
      'empresa=empresa'
      'nf=nf'
      'serie=serie'
      'idos=idos'
      'amostragem=amostragem'
      'data=data'
      'ensaio=ensaio'
      'local=local'
      'sub_local=sub_local'
      'estacao=estacao'
      'numeroserie=numeroserie'
      'identificacao=identificacao'
      'tag=tag'
      'fabricante=fabricante'
      'numeroid=numeroid'
      'emissao=emissao'
      'vencto=vencto'
      'valor=valor')
    DataSet = R00010
    BCDToCurrency = False
    Left = 96
    Top = 608
  end
  object frxR00011: TfrxDBDataset
    Description = 'Processo de Remessa'
    UserName = 'R00011'
    CloseDataSource = False
    FieldAliases.Strings = (
      'recno=recno'
      'codigo=codigo'
      'tipo=tipo'
      'equip_recno=equip_recno'
      'tag=tag'
      'serie=serie'
      'potencia=potencia'
      'potencia_a=potencia_a'
      'potencia_b=potencia_b'
      'tensao=tensao'
      'tensao_a=tensao_a'
      'tensao_b=tensao_b'
      'fases=fases'
      'fabricante=fabricante'
      'lote=lote'
      'validade=validade'
      'ano=ano'
      'isolante=isolante'
      'volume=volume'
      'drenos=drenos'
      'imped=imped'
      'imped_a=imped_a'
      'imped_b=imped_b'
      'corr=corr'
      'corr_a=corr_a'
      'corr_b=corr_b'
      'tipo_e=tipo_e'
      'reg_nome=reg_nome'
      'sigla=sigla'
      'nome=nome'
      'labproc_recno=labproc_recno'
      'situacao=situacao'
      'ean39=ean39'
      'comodato_recno=comodato_recno'
      'nome_chave=nome_chave'
      'telefone=telefone'
      'cnpj=cnpj'
      'proc=proc'
      'ean39_1=ean39_1'
      'etiq_local=etiq_local'
      'status=status'
      'descri=descri'
      'remessa=remessa'
      'dataprog=dataprog')
    DataSet = R00011
    BCDToCurrency = False
    Left = 96
    Top = 656
  end
  object R00011: TZQuery
    Connection = DM.Design
    OnCalcFields = R00011CalcFields
    SQL.Strings = (
      'select pe.recno,      l.codigo,     pe.tipo,     pe.equip_recno,'
      '       ce.tag,        ce.serie,      ce.potencia, ce.potencia_a,'
      '       ce.potencia_b, ce.tensao,     ce.tensao_a, ce.tensao_b,'
      '       ce.fases,      ce.fabricante, ce.lote,     pe.validade,'
      '       ce.ano,        ce.isolante,   ce.volume,   ce.drenos,'
      '       ce.imped,      ce.imped_a,    ce.imped_b,  ce.corr,'
      '       ce.corr_a,     ce.corr_b,     ce.tipo as tipo_e,'
      
        '       ce.reg_nome,   ce.sigla,      ce.nome,     pe.labproc_rec' +
        'no,'
      
        '       c.situacao,    c.ean39,       ce.status,   pe.comodato_re' +
        'cno,'
      
        '       cl.nome_chave, cl.telefone,   cl.cnpj,    to_char(pe.labp' +
        'roc_recno, '#39'000000000000'#39') as proc,'
      '       to_char(pe.comodato_recno, '#39'000000000000'#39') as ean39,'
      '       l.descri,      l.remessa,     pe.dataprog'
      '  from labprocxequip pe'
      '       join labproc l'
      '         on l.recno = pe.labproc_recno'
      '       left join vequipxcli ce'
      '         on ce.codigo = pe.codigo'
      '        and ce.equip = pe.equip_recno'
      '       left join comodato c'
      '         on c.recno = pe.comodato_recno'
      '       join tbclientes cl'
      '         on cl.codigo = l.codigo       '
      'where pe.labproc_recno between :proc_de and :proc_ate'
      'order by pe.labproc_recno, pe.comodato_recno')
    Params = <
      item
        DataType = ftString
        Name = 'proc_de'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'proc_ate'
        ParamType = ptUnknown
        Value = '200'
      end>
    Left = 32
    Top = 656
    ParamData = <
      item
        DataType = ftString
        Name = 'proc_de'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'proc_ate'
        ParamType = ptUnknown
        Value = '200'
      end>
    object R00011recno: TIntegerField
      FieldName = 'recno'
      Required = True
    end
    object R00011codigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object R00011tipo: TIntegerField
      FieldName = 'tipo'
      Required = True
    end
    object R00011equip_recno: TIntegerField
      FieldName = 'equip_recno'
    end
    object R00011tag: TStringField
      FieldName = 'tag'
      Size = 50
    end
    object R00011serie: TStringField
      FieldName = 'serie'
      Size = 30
    end
    object R00011potencia: TFloatField
      FieldName = 'potencia'
    end
    object R00011potencia_a: TFloatField
      FieldName = 'potencia_a'
    end
    object R00011potencia_b: TFloatField
      FieldName = 'potencia_b'
    end
    object R00011tensao: TFloatField
      FieldName = 'tensao'
    end
    object R00011tensao_a: TFloatField
      FieldName = 'tensao_a'
    end
    object R00011tensao_b: TFloatField
      FieldName = 'tensao_b'
    end
    object R00011fases: TIntegerField
      FieldName = 'fases'
    end
    object R00011fabricante: TStringField
      FieldName = 'fabricante'
      Size = 255
    end
    object R00011lote: TStringField
      FieldName = 'lote'
      Size = 15
    end
    object R00011validade: TDateField
      FieldName = 'validade'
      Required = True
    end
    object R00011ano: TIntegerField
      FieldName = 'ano'
    end
    object R00011isolante: TStringField
      FieldName = 'isolante'
      Size = 255
    end
    object R00011volume: TIntegerField
      FieldName = 'volume'
    end
    object R00011drenos: TStringField
      FieldName = 'drenos'
      Size = 5
    end
    object R00011imped: TFloatField
      FieldName = 'imped'
    end
    object R00011imped_a: TFloatField
      FieldName = 'imped_a'
    end
    object R00011imped_b: TFloatField
      FieldName = 'imped_b'
    end
    object R00011corr: TFloatField
      FieldName = 'corr'
    end
    object R00011corr_a: TFloatField
      FieldName = 'corr_a'
    end
    object R00011corr_b: TFloatField
      FieldName = 'corr_b'
    end
    object R00011tipo_e: TStringField
      FieldName = 'tipo_e'
      Size = 255
    end
    object R00011reg_nome: TStringField
      FieldName = 'reg_nome'
      Size = 60
    end
    object R00011sigla: TStringField
      FieldName = 'sigla'
      Size = 3
    end
    object R00011nome: TStringField
      FieldName = 'nome'
      Size = 60
    end
    object R00011labproc_recno: TIntegerField
      FieldName = 'labproc_recno'
      Required = True
    end
    object R00011situacao: TIntegerField
      FieldName = 'situacao'
    end
    object R00011ean39: TStringField
      FieldName = 'ean39'
      Size = 50
    end
    object R00011comodato_recno: TIntegerField
      FieldName = 'comodato_recno'
      Required = True
      DisplayFormat = '000,000,000,000'
    end
    object R00011nome_chave: TStringField
      FieldName = 'nome_chave'
      Size = 45
    end
    object R00011telefone: TStringField
      FieldName = 'telefone'
      Size = 100
    end
    object R00011cnpj: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object R00011proc: TMemoField
      FieldName = 'proc'
      ReadOnly = True
      BlobType = ftMemo
    end
    object R00011ean39_1: TMemoField
      FieldName = 'ean39_1'
      ReadOnly = True
      BlobType = ftMemo
    end
    object R00011etiq_local: TStringField
      FieldKind = fkCalculated
      FieldName = 'etiq_local'
      Size = 100
      Calculated = True
    end
    object R00011status: TIntegerField
      FieldName = 'status'
    end
    object R00011descri: TStringField
      FieldName = 'descri'
      Required = True
      Size = 60
    end
    object R00011remessa: TDateTimeField
      FieldName = 'remessa'
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object R00011dataprog: TDateField
      FieldName = 'dataprog'
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
  object R00012: TZQuery
    Connection = DM.Design
    SortedFields = 'nome_chave'
    SQL.Strings = (
      
        'select cli.codigo,  cli.empresa, cli.nome_chave, cli.cnpj, cli.c' +
        'pf, com.seringas, com.frascos'
      '  from tbclientes cli'
      
        '       join (select a.codigo, sum(sys_iif(p.tipo = 2, 1, 0)) ser' +
        'ingas, sum(sys_iif(p.tipo = 1, 1, 0)) frascos'
      '               from labamostras a'
      '                    join labprocxequip p'
      '                      on p.recno = a.origem_recno'
      '              where a.estado = 30'
      '                and a.origem = 11'
      '              group by a.codigo) com'
      '         on com.codigo = cli.codigo')
    Params = <>
    FetchRow = 50
    IndexFieldNames = 'nome_chave Asc'
    Left = 32
    Top = 704
    object R00012codigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo'
      Required = True
    end
    object R00012empresa: TStringField
      DisplayLabel = 'Nome Empresarial'
      DisplayWidth = 25
      FieldName = 'empresa'
      Size = 100
    end
    object R00012nome_chave: TStringField
      DisplayLabel = 'Nome Curto'
      DisplayWidth = 20
      FieldName = 'nome_chave'
      Size = 45
    end
    object R00012cnpj: TStringField
      DisplayLabel = 'C.N.P.J.'
      DisplayWidth = 18
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object R00012cpf: TStringField
      DisplayLabel = 'C.P.F.'
      DisplayWidth = 14
      FieldName = 'cpf'
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object R00012seringas: TLargeintField
      FieldName = 'seringas'
      ReadOnly = True
    end
    object R00012frascos: TLargeintField
      FieldName = 'frascos'
      ReadOnly = True
    end
  end
  object frxR00012: TfrxDBDataset
    Description = 'Materiais em Poder de Clientes'
    UserName = 'R00012'
    CloseDataSource = False
    FieldAliases.Strings = (
      'codigo=codigo'
      'empresa=empresa'
      'nome_chave=nome_chave'
      'cnpj=cnpj'
      'cpf=cpf'
      'seringas=seringas'
      'frascos=frascos')
    DataSet = R00012
    BCDToCurrency = False
    Left = 96
    Top = 704
  end
  object R00013: TZQuery
    Connection = DM.Design
    SortedFields = 'nome_chave, nf, comodato'
    SQL.Strings = (
      
        'select cli.codigo, cli.empresa, cli.nome_chave, cli.cnpj, cli.cp' +
        'f, cli.telefone, po.nf, po.nf_serie, po.nf_emissao,'
      
        '       po.nf_valor, po.tipo tipo_port, po.portador, p.tipo, p.va' +
        'lidade, a.comodato, a.recno amostra,'
      
        '       p.labproc_recno remessa, po.cnpj rem_cnpj, po.empresa rem' +
        '_empresa'
      '  from labamostras a'
      '       join labprocxequip p'
      '         on p.recno = a.origem_recno'
      '       join labport po'
      '         on po.labproc_recno = p.labproc_recno'
      '       join tbclientes cli'
      '         on cli.codigo = a.codigo'
      ' where a.estado = 30'
      '   and a.origem = 11'
      '')
    Params = <>
    FetchRow = 50
    IndexFieldNames = 'nome_chave Asc, nf Asc, comodato Asc'
    Left = 32
    Top = 752
    object R00013codigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object R00013empresa: TStringField
      FieldName = 'empresa'
      Size = 100
    end
    object R00013nome_chave: TStringField
      FieldName = 'nome_chave'
      Size = 45
    end
    object R00013cnpj: TStringField
      FieldName = 'cnpj'
      Size = 14
    end
    object R00013cpf: TStringField
      FieldName = 'cpf'
      Size = 11
    end
    object R00013telefone: TStringField
      FieldName = 'telefone'
      Size = 100
    end
    object R00013nf: TIntegerField
      FieldName = 'nf'
      Required = True
    end
    object R00013nf_serie: TIntegerField
      FieldName = 'nf_serie'
      Required = True
    end
    object R00013nf_emissao: TDateField
      FieldName = 'nf_emissao'
      Required = True
    end
    object R00013nf_valor: TFloatField
      FieldName = 'nf_valor'
      Required = True
    end
    object R00013tipo_port: TIntegerField
      FieldName = 'tipo_port'
      Required = True
    end
    object R00013portador: TStringField
      FieldName = 'portador'
      Required = True
      Size = 60
    end
    object R00013tipo: TIntegerField
      FieldName = 'tipo'
      Required = True
    end
    object R00013validade: TDateField
      FieldName = 'validade'
      Required = True
    end
    object R00013comodato: TIntegerField
      FieldName = 'comodato'
      Required = True
    end
    object R00013amostra: TIntegerField
      FieldName = 'amostra'
      Required = True
    end
    object R00013remessa: TIntegerField
      FieldName = 'remessa'
      Required = True
    end
    object R00013rem_cnpj: TStringField
      FieldName = 'rem_cnpj'
      Required = True
      Size = 14
    end
    object R00013rem_empresa: TStringField
      FieldName = 'rem_empresa'
      Required = True
      Size = 100
    end
  end
  object frxR00013: TfrxDBDataset
    Description = 'Materiais em Poder de Clientes - Detalhado'
    UserName = 'R00013'
    CloseDataSource = False
    FieldAliases.Strings = (
      'codigo=codigo'
      'empresa=empresa'
      'nome_chave=nome_chave'
      'cnpj=cnpj'
      'cpf=cpf'
      'telefone=telefone'
      'nf=nf'
      'nf_serie=nf_serie'
      'nf_emissao=nf_emissao'
      'nf_valor=nf_valor'
      'tipo_port=tipo_port'
      'portador=portador'
      'tipo=tipo'
      'validade=validade'
      'comodato=comodato'
      'amostra=amostra'
      'remessa=remessa'
      'rem_cnpj=rem_cnpj'
      'rem_empresa=rem_empresa')
    DataSet = R00013
    BCDToCurrency = False
    Left = 96
    Top = 752
  end
  object R00014: TZQuery
    Connection = DM.Design
    SortedFields = 'recno'
    AfterScroll = R00014AfterScroll
    OnCalcFields = R00014CalcFields
    SQL.Strings = (
      'select'
      
        '  r.amostra,   r.relato_recno,  re.titulo as laudo, r.status,   ' +
        '  r.recno,'
      
        '  r.labcrit_recno,   r.idcodigo,      cri.descri as crit, cast(c' +
        'oalesce(cri.cor, '#39'clGreen'#39') as varchar(30)) as cor,'
      
        '  r.labdiag_recno,   r.apontado,      coalesce(re.acreditacao, r' +
        '.emissao + interval '#39'1 day'#39') <= cast(r.emissao as date) inmetro,'
      
        '  diag.descri as diag_descri, diag.diag as diag_diag, diag.dias ' +
        'as diag_dias,'
      
        '  r.labrec_recno, rec.descri as rec_descri, rec.recomenda, r.ass' +
        'inatura,'
      '  r.diagnostico,     r.recomendacao,  r.pcoleta,    r.obs,'
      '  r.emissao,         r.d1,            r.d2,         r.d3,'
      '  r.d4,              r.d5,            r.d6,         r.revisao,'
      
        '  trim(to_char(a.comodato, '#39'000000000000'#39')) as etiqueta, a.comod' +
        'ato,'
      '  r.os,              h.ocorrencia entrada,    a.coleta,'
      
        '  a.amostrador coletor,         cast(initcap(re.descri) as varch' +
        'ar(30)) as laudodesc,'
      '  a.tamb,       a.toleo,  a.tequip,'
      
        '  a.umidade,         a.tensao,        a.local,      a.labsubest_' +
        'recno,'
      ''
      '  a.codigo,          c.empresa,       c.nome_chave, c.cnpj,'
      #9'c.cpf,             c.telefone,      c.endereco,   c.bairro,'
      '  c.cidade,          c.estado,        c.cep,        c.email,'
      '  c.logo,'
      '  a.destinatario,    r.pedido,'
      ''
      '  a.tpamostra_recno, tp.descri as atipo,'
      
        '  a.equip_recno,     cast(e.fabricante as varchar(100)) as fabri' +
        'cante,    e.serie,'
      
        '  cast(e.tipo as varchar(100)) as tipo, e.tensao_un, e.potencia_' +
        'un,'
      '  e.descri,          e.potencia,      e.imped,      e.tensao,'
      
        '  e.fases,           e.ano,           e.lote,       cast(e.isola' +
        'nte as varchar(100)) as isolante,'
      
        '  e.volume,          e.drenos,        cast(e.familia as varchar(' +
        '100)) as familia, a.tag,'
      
        '  se.sigla,          se.nome nomese,         se.regional,  se.re' +
        'g_nome,'
      ''
      
        '  r.responsavel_nome, r.responsavel_registro, r.responsavel_assi' +
        'natura, r.responsavel_cargo,'
      '  r.responsavel_conselho,'
      ''
      
        '  r.analista_nome, r.analista_registro, r.analista_assinatura, r' +
        '.analista_cargo, r.analista_conselho,'
      ''
      '  o.idos,  p.dec_conf, re.legendas, re.regras'
      'from'
      '  labamostras_rel r'
      'join'
      '  labrel re on'
      '  re.recno = r.relato_recno'
      'join'
      '  labamostras a on'
      '  a.recno = r.amostra'
      'left join'
      '  pedido p on'
      '  p.recno = r.pedido'
      'left join'
      '  labamostras_hist h on'
      '  h.amostra = r.amostra and'
      '  h.estado = 40'
      'join'
      '  tb_orcamentos o on'
      '  o.os = r.os'
      'join'
      '  tbclientes c on'
      '  c.codigo = a.cliente'
      'left join'
      '  vequip e on'
      '  e.recno = a.equip_recno'
      'join'
      '  labtipo tp on'
      '  tp.recno = a.tpamostra_recno'
      'left join'
      '  vsubest se on'
      '  se.codigo = a.codigo and'
      '  se.recno = a.labsubest_recno'
      'left join'
      '  vlaudocrit cri on'
      '  cri.relato_recno = r.relato_recno and'
      '  cri.recno = r.labcrit_recno'
      'left join'
      '  vlaudodiags diag on'
      '  diag.relato_recno = r.relato_recno and'
      '  diag.recno = r.labdiag_recno'
      'left join'
      '  vlaudorec rec on'
      '  rec.relato_recno = r.relato_recno and'
      '  rec.labdiag_recno = r.labdiag_recno and'
      '  rec.recno = r.labrec_recno'
      'where'
      '  r.status >= 4 and'
      '  r.assinatura is not null')
    Params = <>
    FetchRow = 50
    IndexFieldNames = 'recno Asc'
    Left = 216
    Top = 80
    object R00014amostra: TIntegerField
      FieldName = 'amostra'
      Required = True
    end
    object R00014relato_recno: TIntegerField
      FieldName = 'relato_recno'
      Required = True
    end
    object R00014laudo: TStringField
      FieldName = 'laudo'
      Required = True
      Size = 30
    end
    object R00014recno: TIntegerField
      FieldName = 'recno'
      Required = True
    end
    object f: TIntegerField
      FieldName = 'status'
      Required = True
    end
    object R00014labcrit_recno: TIntegerField
      FieldName = 'labcrit_recno'
      LookupDataSet = DM.qART
    end
    object R00014idcodigo: TIntegerField
      FieldName = 'idcodigo'
    end
    object R00014crit: TStringField
      FieldName = 'crit'
      Size = 60
    end
    object R00014labdiag_recno: TIntegerField
      FieldName = 'labdiag_recno'
    end
    object R00014diag_descri: TStringField
      FieldName = 'diag_descri'
      Size = 60
    end
    object R00014diag_diag: TMemoField
      FieldName = 'diag_diag'
      BlobType = ftMemo
    end
    object R00014diag_dias: TIntegerField
      FieldName = 'diag_dias'
    end
    object R00014labrec_recno: TIntegerField
      FieldName = 'labrec_recno'
    end
    object R00014rec_descri: TStringField
      FieldName = 'rec_descri'
      Size = 60
    end
    object R00014recomenda: TMemoField
      FieldName = 'recomenda'
      BlobType = ftMemo
    end
    object R00014diagnostico: TMemoField
      FieldName = 'diagnostico'
      BlobType = ftMemo
    end
    object R00014recomendacao: TMemoField
      FieldName = 'recomendacao'
      BlobType = ftMemo
    end
    object R00014pcoleta: TDateField
      FieldName = 'pcoleta'
    end
    object R00014obs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
    end
    object R00014os: TIntegerField
      FieldName = 'os'
    end
    object R00014entrada: TDateTimeField
      FieldName = 'entrada'
    end
    object R00014coleta: TDateField
      FieldName = 'coleta'
    end
    object R00014coletor: TStringField
      FieldName = 'coletor'
      Size = 60
    end
    object R00014laudodesc: TStringField
      FieldName = 'laudodesc'
      ReadOnly = True
      Size = 30
    end
    object R00014tamb: TIntegerField
      FieldName = 'tamb'
    end
    object R00014toleo: TIntegerField
      FieldName = 'toleo'
    end
    object R00014umidade: TIntegerField
      FieldName = 'umidade'
    end
    object R00014tensao: TFloatField
      FieldName = 'tensao'
    end
    object R00014local: TStringField
      FieldName = 'local'
      Size = 50
    end
    object R00014labsubest_recno: TIntegerField
      FieldName = 'labsubest_recno'
    end
    object R00014codigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object R00014empresa: TStringField
      FieldName = 'empresa'
      Size = 100
    end
    object R00014nome_chave: TStringField
      FieldName = 'nome_chave'
      Size = 45
    end
    object R00014cnpj: TStringField
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object R00014cpf: TStringField
      FieldName = 'cpf'
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object R00014telefone: TStringField
      FieldName = 'telefone'
      Size = 100
    end
    object R00014tpamostra_recno: TIntegerField
      FieldName = 'tpamostra_recno'
    end
    object R00014atipo: TStringField
      FieldName = 'atipo'
      Required = True
      Size = 60
    end
    object R00014equip_recno: TIntegerField
      FieldName = 'equip_recno'
    end
    object R00014fabricante: TStringField
      FieldName = 'fabricante'
      Size = 255
    end
    object R00014serie: TStringField
      FieldName = 'serie'
      Size = 30
    end
    object R00014tipo: TStringField
      FieldName = 'tipo'
      Size = 255
    end
    object R00014descri: TStringField
      FieldName = 'descri'
      Size = 60
    end
    object R00014potencia: TFloatField
      FieldName = 'potencia'
    end
    object R00014imped: TFloatField
      FieldName = 'imped'
    end
    object R00014tensao_1: TFloatField
      FieldName = 'tensao_1'
    end
    object R00014fases: TIntegerField
      FieldName = 'fases'
    end
    object R00014ano: TIntegerField
      FieldName = 'ano'
    end
    object R00014lote: TStringField
      FieldName = 'lote'
      Size = 15
    end
    object R00014isolante: TStringField
      FieldName = 'isolante'
      Size = 255
    end
    object R00014volume: TIntegerField
      FieldName = 'volume'
    end
    object R00014drenos: TStringField
      FieldName = 'drenos'
      Size = 5
    end
    object R00014familia: TStringField
      FieldName = 'familia'
      Size = 255
    end
    object R00014tag: TStringField
      FieldName = 'tag'
      Size = 50
    end
    object R00014sigla: TStringField
      FieldName = 'sigla'
      Size = 3
    end
    object R00014nomese: TStringField
      FieldName = 'nomese'
      Size = 60
    end
    object R00014regional: TIntegerField
      FieldName = 'regional'
    end
    object R00014reg_nome: TStringField
      FieldName = 'reg_nome'
      Size = 60
    end
    object R00014emissao: TDateTimeField
      FieldName = 'emissao'
    end
    object R00014etiqueta: TMemoField
      FieldName = 'etiqueta'
      ReadOnly = True
      BlobType = ftMemo
    end
    object R00014assinatura: TStringField
      FieldName = 'assinatura'
      Size = 128
    end
    object R00014d1: TDateField
      FieldName = 'd1'
      ReadOnly = True
    end
    object R00014comodato: TIntegerField
      FieldName = 'comodato'
      Required = True
    end
    object R00014d2: TDateField
      FieldName = 'd2'
      ReadOnly = True
    end
    object R00014d3: TDateField
      FieldName = 'd3'
      ReadOnly = True
    end
    object R00014d4: TDateField
      FieldName = 'd4'
      ReadOnly = True
    end
    object R00014d5: TDateField
      FieldName = 'd5'
      ReadOnly = True
    end
    object R00014d6: TDateField
      FieldName = 'd6'
      ReadOnly = True
    end
    object R00014localizacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'localizacao'
      Size = 100
      Calculated = True
    end
    object R00014idos: TStringField
      FieldName = 'idos'
      Required = True
      Size = 10
    end
    object R00014destinatario: TStringField
      FieldName = 'destinatario'
      Size = 100
    end
    object R00014cor: TStringField
      FieldName = 'cor'
      ReadOnly = True
      Size = 30
    end
    object R00014endereco: TStringField
      FieldName = 'endereco'
      Size = 85
    end
    object R00014bairro: TStringField
      FieldName = 'bairro'
      Size = 100
    end
    object R00014cidade: TStringField
      FieldName = 'cidade'
      Size = 100
    end
    object R00014estado: TStringField
      FieldName = 'estado'
      Size = 2
    end
    object R00014cep: TStringField
      FieldName = 'cep'
      Size = 100
    end
    object R00014email: TStringField
      FieldName = 'email'
      Size = 100
    end
    object R00014apontado: TDateTimeField
      FieldName = 'apontado'
      ReadOnly = True
    end
    object R00014pedido: TIntegerField
      FieldName = 'pedido'
    end
    object R00014tensao_un: TStringField
      FieldName = 'tensao_un'
      ReadOnly = True
      Size = 3
    end
    object R00014potencia_un: TStringField
      FieldName = 'potencia_un'
      ReadOnly = True
      Size = 3
    end
    object R00014logo: TBlobField
      FieldName = 'logo'
    end
    object R00014inmetro: TBooleanField
      FieldName = 'inmetro'
      ReadOnly = True
    end
    object R00014revisao: TIntegerField
      FieldName = 'revisao'
    end
    object R00014tequip: TFloatField
      FieldName = 'tequip'
      Required = True
    end
    object R00014dec_conf: TBooleanField
      FieldName = 'dec_conf'
      Required = True
    end
    object R00014responsavel_nome: TStringField
      FieldName = 'responsavel_nome'
      ReadOnly = True
      Size = 60
    end
    object R00014responsavel_cargo: TStringField
      FieldName = 'responsavel_cargo'
      Size = 60
    end
    object R00014responsavel_conselho: TStringField
      FieldName = 'responsavel_conselho'
      Size = 5
    end
    object R00014responsavel_registro: TStringField
      FieldName = 'responsavel_registro'
      Size = 15
    end
    object R00014responsavel_assinatura: TStringField
      FieldName = 'responsavel_assinatura'
      Size = 50
    end
    object R00014analista_nome: TStringField
      FieldName = 'analista_nome'
      ReadOnly = True
      Size = 60
    end
    object R00014analista_cargo: TStringField
      FieldName = 'analista_cargo'
      Size = 60
    end
    object R00014analista_conselho: TStringField
      FieldName = 'analista_conselho'
      Size = 5
    end
    object R00014analista_registro: TStringField
      FieldName = 'analista_registro'
      Size = 15
    end
    object R00014analista_assinatura: TStringField
      FieldName = 'analista_assinatura'
      Size = 50
    end
    object R00014legendas: TMemoField
      FieldName = 'legendas'
      BlobType = ftMemo
    end
    object R00014regras: TMemoField
      FieldName = 'regras'
      BlobType = ftMemo
    end
  end
  object frxR00014: TfrxDBDataset
    Description = 'Laudo'
    UserName = 'R00014'
    CloseDataSource = True
    FieldAliases.Strings = (
      'amostra=amostra'
      'relato_recno=relato_recno'
      'laudo=laudo'
      'recno=recno'
      'status=status'
      'labcrit_recno=labcrit_recno'
      'idcodigo=idcodigo'
      'crit=crit'
      'labdiag_recno=labdiag_recno'
      'diag_descri=diag_descri'
      'diag_diag=diag_diag'
      'diag_dias=diag_dias'
      'labrec_recno=labrec_recno'
      'rec_descri=rec_descri'
      'recomenda=recomenda'
      'diagnostico=diagnostico'
      'recomendacao=recomendacao'
      'pcoleta=pcoleta'
      'obs=obs'
      'os=os'
      'entrada=entrada'
      'coleta=coleta'
      'coletor=coletor'
      'laudodesc=laudodesc'
      'tamb=tamb'
      'toleo=toleo'
      'umidade=umidade'
      'tensao=tensao'
      'local=local'
      'labsubest_recno=labsubest_recno'
      'codigo=codigo'
      'empresa=empresa'
      'nome_chave=nome_chave'
      'cnpj=cnpj'
      'cpf=cpf'
      'telefone=telefone'
      'tpamostra_recno=tpamostra_recno'
      'atipo=atipo'
      'equip_recno=equip_recno'
      'fabricante=fabricante'
      'serie=serie'
      'tipo=tipo'
      'descri=descri'
      'potencia=potencia'
      'imped=imped'
      'tensao_1=tensao_1'
      'fases=fases'
      'ano=ano'
      'lote=lote'
      'isolante=isolante'
      'volume=volume'
      'drenos=drenos'
      'familia=familia'
      'tag=tag'
      'sigla=sigla'
      'nomese=nomese'
      'regional=regional'
      'reg_nome=reg_nome'
      'emissao=emissao'
      'etiqueta=etiqueta'
      'assinatura=assinatura'
      'd1=d1'
      'comodato=comodato'
      'd2=d2'
      'd3=d3'
      'd4=d4'
      'd5=d5'
      'd6=d6'
      'localizacao=localizacao'
      'idos=idos'
      'destinatario=destinatario'
      'cor=cor'
      'endereco=endereco'
      'bairro=bairro'
      'cidade=cidade'
      'estado=estado'
      'cep=cep'
      'email=email'
      'apontado=apontado'
      'pedido=pedido'
      'tensao_un=tensao_un'
      'potencia_un=potencia_un'
      'logo=logo'
      'inmetro=inmetro'
      'revisao=revisao'
      'tequip=tequip'
      'dec_conf=dec_conf'
      'responsavel_nome=responsavel_nome'
      'responsavel_cargo=responsavel_cargo'
      'responsavel_conselho=responsavel_conselho'
      'responsavel_registro=responsavel_registro'
      'responsavel_assinatura=responsavel_assinatura'
      'analista_nome=analista_nome'
      'analista_cargo=analista_cargo'
      'analista_conselho=analista_conselho'
      'analista_registro=analista_registro'
      'analista_assinatura=analista_assinatura'
      'legendas=legendas'
      'regras=regras')
    DataSet = R00014
    BCDToCurrency = False
    Left = 280
    Top = 80
  end
  object R00014a: TZQuery
    Connection = DM.Design
    AfterScroll = R00014aAfterScroll
    SQL.Strings = (
      
        'select r.laudo, r.relato_recno, e.nome, cast(coalesce(e.unidade,' +
        ' '#39'-'#39') as varchar(100)) as unidade,'
      
        '       e.metodo, r.ref_tipo, r.ref_valor, r.valor, le.ordem, e.d' +
        'ec, e.arred, e.sezerotxt,'
      
        '       r.v1,     r.v2,       r.v3,        r.v4,       r.v5,     ' +
        'r.v6, r.ensaio_recno,'
      '       e.somenteleitura, r.incerteza'
      '  from labamostras_res r'
      '       join labrel_ens le'
      '         on le.relato_recno = r.relato_recno'
      '        and le.ensaio_recno = r.ensaio_recno'
      '       join vensaios e'
      '         on e.recno = r.ensaio_recno'
      'where r.laudo = :laudo'
      '   and r.relato_recno = :tipo'
      ' order by r.laudo, r.relato_recno, le.ordem')
    Params = <
      item
        DataType = ftInteger
        Name = 'laudo'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'tipo'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    Left = 216
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'laudo'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'tipo'
        ParamType = ptUnknown
      end>
    object R00014alaudo: TIntegerField
      FieldName = 'laudo'
      ReadOnly = True
    end
    object R00014arelato_recno: TIntegerField
      FieldName = 'relato_recno'
      Required = True
    end
    object R00014anome: TStringField
      FieldName = 'nome'
      Size = 60
    end
    object R00014aunidade: TStringField
      FieldName = 'unidade'
      Size = 30
    end
    object R00014ametodo: TStringField
      FieldName = 'metodo'
      Size = 30
    end
    object R00014aref_tipo: TIntegerField
      FieldName = 'ref_tipo'
    end
    object R00014aref_valor: TFloatField
      FieldName = 'ref_valor'
    end
    object R00014avalor: TFloatField
      FieldName = 'valor'
      Required = True
      DisplayFormat = ',0.##0'
    end
    object R00014av1: TFloatField
      FieldName = 'v1'
      ReadOnly = True
    end
    object R00014av2: TFloatField
      FieldName = 'v2'
      ReadOnly = True
    end
    object R00014av3: TFloatField
      FieldName = 'v3'
      ReadOnly = True
    end
    object R00014av4: TFloatField
      FieldName = 'v4'
      ReadOnly = True
    end
    object R00014av5: TFloatField
      FieldName = 'v5'
      ReadOnly = True
    end
    object R00014av6: TFloatField
      FieldName = 'v6'
      ReadOnly = True
    end
    object R00014aordem: TIntegerField
      FieldName = 'ordem'
      Required = True
    end
    object R00014adec: TIntegerField
      FieldName = 'dec'
    end
    object R00014aarred: TIntegerField
      FieldName = 'arred'
    end
    object R00014asezerotxt: TStringField
      FieldName = 'sezerotxt'
      Size = 10
    end
    object R00014aensaio_recno: TIntegerField
      FieldName = 'ensaio_recno'
      Required = True
    end
    object R00014asomenteleitura: TBooleanField
      FieldName = 'somenteleitura'
    end
    object R00014aincerteza: TFloatField
      FieldName = 'incerteza'
      Required = True
    end
  end
  object frxR00014a: TfrxDBDataset
    Description = 'Laudo'
    UserName = 'R00014a'
    CloseDataSource = True
    FieldAliases.Strings = (
      'laudo=laudo'
      'relato_recno=relato_recno'
      'nome=nome'
      'unidade=unidade'
      'metodo=metodo'
      'ref_tipo=ref_tipo'
      'ref_valor=ref_valor'
      'valor=valor'
      'v1=v1'
      'v2=v2'
      'v3=v3'
      'v4=v4'
      'v5=v5'
      'v6=v6'
      'ordem=ordem'
      'dec=dec'
      'arred=arred'
      'sezerotxt=sezerotxt'
      'ensaio_recno=ensaio_recno'
      'somenteleitura=somenteleitura'
      'incerteza=incerteza')
    DataSet = R00014a
    BCDToCurrency = False
    Left = 280
    Top = 128
  end
  object R00015: TZReadOnlyQuery
    Connection = DM.Design
    SortedFields = 'nome_chave;nf;titulo;idos'
    SQL.Strings = (
      
        'select a.codigo,   cl.nome_chave, cl.empresa, nf.nf,         nf.' +
        'serie,'
      
        '       os.idos,    a.recno,       a.coleta,   lr.titulo,     r.e' +
        'missao as r_emissao, '
      
        '       e.serie,    a.tag,         a.local,    e.fabricante,  nf.' +
        'emissao,'
      '       nf.vencto,  nf.valor,      a.comodato comodato_recno'
      '  from nf'
      '       join nf_itens nfi'
      '         on nfi.recno_nf = nf.recno'
      '       join tb_orcamentos os'
      '         on nfi.os = os.os        '
      '       join labamostras_rel r'
      '         on r.os = nfi.os'
      '       join labamostras a'
      '         on a.recno = r.amostra'
      '       join labrel lr'
      '         on lr.recno = r.relato_recno'
      '       left join vequip e'
      '         on e.recno = a.equip_recno  '
      '       join tbclientes cl'
      '         on cl.codigo = a.codigo'
      '        and cl.codigo = nf.codigo'
      ' where nf.nf between :nfde and :nfate'
      '   and nf.serie between :seriede and :serieate')
    Params = <
      item
        DataType = ftString
        Name = 'nfde'
        ParamType = ptUnknown
        Value = '3024'
      end
      item
        DataType = ftString
        Name = 'nfate'
        ParamType = ptUnknown
        Value = '3024'
      end
      item
        DataType = ftString
        Name = 'seriede'
        ParamType = ptUnknown
        Value = '6'
      end
      item
        DataType = ftString
        Name = 'serieate'
        ParamType = ptUnknown
        Value = '6'
      end>
    IndexFieldNames = 'nome_chave Asc;nf Asc;titulo Asc;idos Asc'
    Options = []
    Left = 216
    Top = 272
    ParamData = <
      item
        DataType = ftString
        Name = 'nfde'
        ParamType = ptUnknown
        Value = '3024'
      end
      item
        DataType = ftString
        Name = 'nfate'
        ParamType = ptUnknown
        Value = '3024'
      end
      item
        DataType = ftString
        Name = 'seriede'
        ParamType = ptUnknown
        Value = '6'
      end
      item
        DataType = ftString
        Name = 'serieate'
        ParamType = ptUnknown
        Value = '6'
      end>
    object R00015codigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object R00015nome_chave: TStringField
      FieldName = 'nome_chave'
      Size = 45
    end
    object R00015empresa: TStringField
      FieldName = 'empresa'
      Size = 100
    end
    object R00015nf: TIntegerField
      FieldName = 'nf'
      Required = True
    end
    object R00015serie: TIntegerField
      FieldName = 'serie'
      Required = True
    end
    object R00015idos: TStringField
      FieldName = 'idos'
      Required = True
      Size = 10
    end
    object R00015recno: TIntegerField
      FieldName = 'recno'
      Required = True
    end
    object R00015coleta: TDateField
      FieldName = 'coleta'
    end
    object R00015titulo: TStringField
      FieldName = 'titulo'
      Required = True
      Size = 60
    end
    object R00015r_emissao: TDateTimeField
      FieldName = 'r_emissao'
    end
    object R00015serie_1: TStringField
      FieldName = 'serie_1'
      Size = 30
    end
    object R00015tag: TStringField
      FieldName = 'tag'
      Size = 50
    end
    object R00015local: TStringField
      FieldName = 'local'
      Size = 50
    end
    object R00015fabricante: TStringField
      FieldName = 'fabricante'
      Size = 255
    end
    object R00015emissao: TDateField
      FieldName = 'emissao'
      Required = True
    end
    object R00015vencto: TDateField
      FieldName = 'vencto'
      Required = True
    end
    object R00015valor: TFloatField
      FieldName = 'valor'
      Required = True
    end
    object R00015comodato_recno: TIntegerField
      FieldName = 'comodato_recno'
      Required = True
    end
  end
  object frxR00015: TfrxDBDataset
    Description = 'Ensaios por NF'
    UserName = 'R00015'
    CloseDataSource = False
    FieldAliases.Strings = (
      'codigo=codigo'
      'nome_chave=nome_chave'
      'empresa=empresa'
      'nf=nf'
      'serie=serie'
      'idos=idos'
      'recno=recno'
      'coleta=coleta'
      'titulo=titulo'
      'r_emissao=r_emissao'
      'serie_1=serie_1'
      'tag=tag'
      'local=local'
      'fabricante=fabricante'
      'emissao=emissao'
      'vencto=vencto'
      'valor=valor'
      'comodato_recno=comodato_recno')
    DataSet = R00015
    BCDToCurrency = False
    Left = 280
    Top = 272
  end
  object R00016: TZReadOnlyQuery
    Connection = DM.Design
    SortedFields = 'codserv;descri'
    SQL.Strings = (
      'select r.recno, r.descri, r.codserv, s.descri as servico, lr.qtd'
      '  from labrel r'
      '       join (select relato_recno, sum(1) as qtd'
      '               from labamostras_rel '
      '              where emissao between :emissao_de and :emissao_ate'
      '                and assinatura is not null'
      '              group by relato_recno) lr'
      '         on lr.relato_recno  = r.recno'
      '       join servicos s'
      '         on s.codserv = r.codserv')
    Params = <
      item
        DataType = ftDate
        Name = 'emissao_de'
        ParamType = ptUnknown
        Value = 40878d
      end
      item
        DataType = ftDate
        Name = 'emissao_ate'
        ParamType = ptUnknown
        Value = 40908d
      end>
    IndexFieldNames = 'codserv Asc;descri Asc'
    Options = []
    Left = 216
    Top = 320
    ParamData = <
      item
        DataType = ftDate
        Name = 'emissao_de'
        ParamType = ptUnknown
        Value = 40878d
      end
      item
        DataType = ftDate
        Name = 'emissao_ate'
        ParamType = ptUnknown
        Value = 40908d
      end>
    object R00016recno: TIntegerField
      FieldName = 'recno'
      Required = True
    end
    object R00016descri: TStringField
      FieldName = 'descri'
      Required = True
      Size = 30
    end
    object R00016codserv: TIntegerField
      FieldName = 'codserv'
    end
    object R00016servico: TStringField
      FieldName = 'servico'
      Required = True
      Size = 80
    end
    object R00016qtd: TLargeintField
      FieldName = 'qtd'
      ReadOnly = True
    end
  end
  object frxR00016: TfrxDBDataset
    Description = 'Laudos Emitidos'
    UserName = 'R00016'
    CloseDataSource = False
    FieldAliases.Strings = (
      'recno=recno'
      'descri=descri'
      'codserv=codserv'
      'servico=servico'
      'qtd=qtd')
    DataSet = R00016
    BCDToCurrency = False
    Left = 280
    Top = 320
  end
  object R00017: TZQuery
    Connection = DM.Design
    SortedFields = 'relato_recno;amostra'
    AfterScroll = R00017AfterScroll
    OnCalcFields = R00017CalcFields
    SQL.Strings = (
      'select'
      
        '  r.amostra,   r.relato_recno,  re.titulo as laudo, r.status,   ' +
        '  r.recno,'
      
        '  r.labcrit_recno,   r.idcodigo,      cri.descri as crit, cast(c' +
        'oalesce(cri.cor, '#39'clGreen'#39') as varchar(30)) as cor,'
      
        '  r.labdiag_recno,   r.apontado,      coalesce(re.acreditacao, r' +
        '.emissao + interval '#39'1 day'#39') <= cast(r.emissao as date) inmetro,'
      
        '  diag.descri as diag_descri, diag.diag as diag_diag, diag.dias ' +
        'as diag_dias,'
      
        '  r.labrec_recno, rec.descri as rec_descri, rec.recomenda, r.ass' +
        'inatura,'
      '  r.diagnostico,     r.recomendacao,  r.pcoleta,    r.obs,'
      '  r.emissao,         r.d1,            r.d2,         r.d3,'
      '  r.d4,              r.d5,            r.d6,         r.revisao,'
      
        '  trim(to_char(a.comodato, '#39'000000000000'#39')) as etiqueta, a.comod' +
        'ato,'
      '  r.os,              h.ocorrencia entrada,    a.coleta,'
      
        '  a.amostrador coletor,         cast(initcap(re.descri) as varch' +
        'ar(30)) as laudodesc,'
      '  a.tamb,       a.toleo,  a.tequip,'
      
        '  a.umidade,         a.tensao,        a.local,      a.labsubest_' +
        'recno,'
      ''
      '  a.codigo,          c.empresa,       c.nome_chave, c.cnpj,'
      '   c.cpf,             c.telefone,      c.endereco,   c.bairro,'
      '  c.cidade,          c.estado,        c.cep,        c.email,'
      '  c.logo,'
      '  a.destinatario,    r.pedido,'
      ''
      '  a.tpamostra_recno, tp.descri as atipo,'
      
        '  a.equip_recno,     cast(e.fabricante as varchar(100)) as fabri' +
        'cante,    e.serie,'
      
        '  cast(e.tipo as varchar(100)) as tipo, e.tensao_un, e.potencia_' +
        'un,'
      '  e.descri,          e.potencia,      e.imped,      e.tensao,'
      
        '  e.fases,           e.ano,           e.lote,       cast(e.isola' +
        'nte as varchar(100)) as isolante,'
      
        '  e.volume,          e.drenos,        cast(e.familia as varchar(' +
        '100)) as familia, a.tag,'
      '  se.sigla,          se.nome,         se.regional,  se.reg_nome,'
      '  cast(Initcap(f.nome) as varchar(60)) as nome, f.crq,'
      '  f.assinatura as ass_arquivo, f.cargo,'
      '  o.idos,'
      ''
      '  --remessa'
      
        '  le.rem_dh, le.rem_usrname, le.envnf, le.envnf_serie, le.envnf_' +
        'emissao,'
      
        '  le.envtipo_port, le.envtipo_outros, le.envcnpj, le.envempresa,' +
        ' le.envobs,'
      ''
      '  -- Informa'#231#245'es do pedido'
      
        '  a.pedido, p.criado pedcriado, p.emitido pedemitido, p.autoriza' +
        'do pedautorizado,'
      
        '  p.aprovado pedaprovado, p.solicitante pedsolicitante, p.solici' +
        'tante_dep pedsolicitante_dep,'
      
        '  p.condicaopg pedcond, p.frete pedfrete, pr.ret_usrname, pr.ped' +
        'nf, pr.pednf_serie,'
      
        '  pr.pednf_emissao, pr.pednf_valor, (mk.vlsrvvar + mk.vlsrvfixo ' +
        '+ mk.vlmat + mk.vlmobra + mk.vldespe) pedtotal'
      ''
      'from'
      '  labamostras_rel r'
      'join'
      '  labrel re on'
      '  re.recno = r.relato_recno'
      'join'
      '  labamostras a on'
      '  a.recno = r.amostra'
      'left join'
      '  labamostras_hist h on'
      '  h.amostra = r.amostra and'
      '  h.estado = 40'
      'join'
      '  tb_orcamentos o on'
      '  o.os = r.os'
      'join'
      '  tbclientes c on'
      '  c.codigo = a.cliente'
      'left join'
      '  vequip e on'
      '  e.recno = a.equip_recno'
      'join'
      '  labtipo tp on'
      '  tp.recno = a.tpamostra_recno'
      'left join'
      '  vsubest se on'
      '  se.codigo = a.codigo and'
      '  se.recno = a.labsubest_recno'
      'left join'
      '  vlaudocrit cri on'
      '  cri.relato_recno = r.relato_recno and'
      '  cri.recno = r.labcrit_recno'
      'left join'
      '  vlaudodiags diag on'
      '  diag.relato_recno = r.relato_recno and'
      '  diag.recno = r.labdiag_recno'
      'left join'
      '  vlaudorec rec on'
      '  rec.relato_recno = r.relato_recno and'
      '  rec.labdiag_recno = r.labdiag_recno and'
      '  rec.recno = r.labrec_recno'
      'left join'
      '  tbfuncionarios f on'
      '  f.idcodigo = r.idcodigo'
      'left join'
      '  (select'
      
        '    pe.amostra, p.remessa rem_dh, u.nome rem_usrname, po.nf envn' +
        'f, po.nf_serie envnf_serie, po.emissao envnf_emissao,'
      
        '    po.tipo envtipo_port, po.tipo_outros envtipo_outros, po.cnpj' +
        ' envcnpj, po.empresa envempresa, po.obs envobs'
      '  from'
      '    labprocxequip pe'
      '  join'
      '    labproc p on'
      '    p.recno = pe.labproc_recno'
      '  join'
      '    labport po on'
      '    po.labproc_recno = pe.labproc_recno and'
      '    po.operac = 1'
      '  join'
      '    labamostras_hist ah on'
      '    ah.amostra = pe.amostra and'
      '    ah.estado = 30'
      '  join'
      '    vaccounts u on'
      '    u.account = ah.account) le on'
      '  le.amostra = a.recno'
      'left join'
      '  (select'
      
        '    pe.amostra, u.nome ret_usrname, po.nf pednf, po.nf_serie ped' +
        'nf_serie, po.emissao pednf_emissao,'
      '    po.nf_valor pednf_valor'
      '  from'
      '    labret pe'
      '  join'
      '    labport po on'
      '    po.recno = pe.labport_recno and'
      '    po.operac = 2'
      '  join'
      '    labamostras_hist ah on'
      '    ah.amostra = pe.amostra and'
      '    ah.estado = 40'
      '  join'
      '    vaccounts u on'
      '    u.account = ah.account) pr on'
      '  pr.amostra = a.recno'
      'left join'
      '  pedido p on'
      '  p.recno = r.pedido'
      'left join'
      '  markup mk on'
      '  mk.recno = p.markup'
      'where'
      '  r.status >= 4 and'
      '  r.assinatura is not null')
    Params = <>
    FetchRow = 50
    IndexFieldNames = 'relato_recno Asc;amostra Asc'
    Left = 216
    Top = 368
    object R00017amostra: TIntegerField
      FieldName = 'amostra'
      Required = True
    end
    object R00017relato_recno: TIntegerField
      FieldName = 'relato_recno'
    end
    object R00017laudo: TStringField
      FieldName = 'laudo'
      Required = True
      Size = 60
    end
    object R00017status: TIntegerField
      FieldName = 'status'
      Required = True
    end
    object R00017recno: TIntegerField
      FieldName = 'recno'
      Required = True
    end
    object R00017labcrit_recno: TIntegerField
      FieldName = 'labcrit_recno'
    end
    object R00017idcodigo: TIntegerField
      FieldName = 'idcodigo'
    end
    object R00017crit: TStringField
      FieldName = 'crit'
      Size = 60
    end
    object R00017cor: TStringField
      FieldName = 'cor'
      ReadOnly = True
      Size = 30
    end
    object R00017labdiag_recno: TIntegerField
      FieldName = 'labdiag_recno'
    end
    object R00017apontado: TDateTimeField
      FieldName = 'apontado'
    end
    object R00017inmetro: TBooleanField
      FieldName = 'inmetro'
      ReadOnly = True
    end
    object R00017diag_descri: TStringField
      FieldName = 'diag_descri'
      Size = 60
    end
    object R00017diag_diag: TMemoField
      FieldName = 'diag_diag'
      BlobType = ftMemo
    end
    object R00017diag_dias: TIntegerField
      FieldName = 'diag_dias'
    end
    object R00017labrec_recno: TIntegerField
      FieldName = 'labrec_recno'
    end
    object R00017rec_descri: TStringField
      FieldName = 'rec_descri'
      Size = 60
    end
    object R00017recomenda: TMemoField
      FieldName = 'recomenda'
      BlobType = ftMemo
    end
    object R00017assinatura: TStringField
      FieldName = 'assinatura'
      Size = 128
    end
    object R00017diagnostico: TMemoField
      FieldName = 'diagnostico'
      BlobType = ftMemo
    end
    object R00017recomendacao: TMemoField
      FieldName = 'recomendacao'
      BlobType = ftMemo
    end
    object R00017pcoleta: TDateField
      FieldName = 'pcoleta'
    end
    object R00017obs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
    end
    object R00017emissao: TDateTimeField
      FieldName = 'emissao'
    end
    object R00017d1: TDateField
      FieldName = 'd1'
    end
    object R00017d2: TDateField
      FieldName = 'd2'
    end
    object R00017d3: TDateField
      FieldName = 'd3'
    end
    object R00017d4: TDateField
      FieldName = 'd4'
    end
    object R00017d5: TDateField
      FieldName = 'd5'
    end
    object R00017d6: TDateField
      FieldName = 'd6'
    end
    object R00017revisao: TIntegerField
      FieldName = 'revisao'
    end
    object R00017etiqueta: TMemoField
      FieldName = 'etiqueta'
      ReadOnly = True
      BlobType = ftMemo
    end
    object R00017comodato: TIntegerField
      FieldName = 'comodato'
      Required = True
    end
    object R00017os: TIntegerField
      FieldName = 'os'
      Required = True
    end
    object R00017entrada: TDateTimeField
      FieldName = 'entrada'
    end
    object R00017coleta: TDateField
      FieldName = 'coleta'
    end
    object R00017coletor: TStringField
      FieldName = 'coletor'
      Size = 60
    end
    object R00017laudodesc: TStringField
      FieldName = 'laudodesc'
      ReadOnly = True
      Size = 30
    end
    object R00017tamb: TIntegerField
      FieldName = 'tamb'
    end
    object R00017toleo: TIntegerField
      FieldName = 'toleo'
    end
    object R00017tequip: TFloatField
      FieldName = 'tequip'
      Required = True
    end
    object R00017umidade: TIntegerField
      FieldName = 'umidade'
    end
    object R00017tensao: TFloatField
      FieldName = 'tensao'
    end
    object R00017local: TStringField
      FieldName = 'local'
      Size = 50
    end
    object R00017labsubest_recno: TIntegerField
      FieldName = 'labsubest_recno'
    end
    object R00017codigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object R00017empresa: TStringField
      FieldName = 'empresa'
      Size = 100
    end
    object R00017nome_chave: TStringField
      FieldName = 'nome_chave'
      Size = 45
    end
    object R00017cnpj: TStringField
      FieldName = 'cnpj'
      Size = 14
    end
    object R00017cpf: TStringField
      FieldName = 'cpf'
      Size = 11
    end
    object R00017telefone: TStringField
      FieldName = 'telefone'
      Size = 100
    end
    object R00017endereco: TStringField
      FieldName = 'endereco'
      Size = 85
    end
    object R00017bairro: TStringField
      FieldName = 'bairro'
      Size = 100
    end
    object R00017cidade: TStringField
      FieldName = 'cidade'
      Size = 100
    end
    object R00017estado: TStringField
      FieldName = 'estado'
      Size = 2
    end
    object R00017cep: TStringField
      FieldName = 'cep'
      Size = 100
    end
    object R00017email: TStringField
      FieldName = 'email'
      Size = 100
    end
    object R00017logo: TBlobField
      FieldName = 'logo'
    end
    object R00017destinatario: TStringField
      FieldName = 'destinatario'
      Size = 100
    end
    object R00017pedido: TIntegerField
      FieldName = 'pedido'
    end
    object R00017tpamostra_recno: TIntegerField
      FieldName = 'tpamostra_recno'
    end
    object R00017atipo: TStringField
      FieldName = 'atipo'
      Required = True
      Size = 60
    end
    object R00017equip_recno: TIntegerField
      FieldName = 'equip_recno'
    end
    object R00017fabricante: TStringField
      FieldName = 'fabricante'
      ReadOnly = True
      Size = 100
    end
    object R00017serie: TStringField
      FieldName = 'serie'
      Size = 30
    end
    object R00017tipo: TStringField
      FieldName = 'tipo'
      ReadOnly = True
      Size = 100
    end
    object R00017tensao_un: TStringField
      FieldName = 'tensao_un'
      Size = 3
    end
    object R00017potencia_un: TStringField
      FieldName = 'potencia_un'
      Size = 3
    end
    object R00017descri: TStringField
      FieldName = 'descri'
      Size = 60
    end
    object R00017potencia: TFloatField
      FieldName = 'potencia'
    end
    object R00017imped: TFloatField
      FieldName = 'imped'
    end
    object R00017tensao_1: TFloatField
      FieldName = 'tensao_1'
    end
    object R00017fases: TIntegerField
      FieldName = 'fases'
    end
    object R00017ano: TIntegerField
      FieldName = 'ano'
    end
    object R00017lote: TStringField
      FieldName = 'lote'
      Size = 15
    end
    object R00017isolante: TStringField
      FieldName = 'isolante'
      ReadOnly = True
      Size = 100
    end
    object R00017volume: TIntegerField
      FieldName = 'volume'
    end
    object R00017drenos: TStringField
      FieldName = 'drenos'
      Size = 5
    end
    object R00017familia: TStringField
      FieldName = 'familia'
      ReadOnly = True
      Size = 100
    end
    object R00017tag: TStringField
      FieldName = 'tag'
      Size = 50
    end
    object R00017sigla: TStringField
      FieldName = 'sigla'
      Size = 3
    end
    object R00017nome: TStringField
      FieldName = 'nome'
      Size = 60
    end
    object R00017regional: TIntegerField
      FieldName = 'regional'
    end
    object R00017reg_nome: TStringField
      FieldName = 'reg_nome'
      Size = 60
    end
    object R00017nome_1: TStringField
      FieldName = 'nome_1'
      ReadOnly = True
      Size = 60
    end
    object R00017crq: TStringField
      FieldName = 'crq'
      Size = 15
    end
    object R00017ass_arquivo: TStringField
      FieldName = 'ass_arquivo'
      Size = 50
    end
    object R00017cargo: TStringField
      FieldName = 'cargo'
      Size = 60
    end
    object R00017idos: TStringField
      FieldName = 'idos'
      Required = True
      Size = 10
    end
    object R00017rem_dh: TDateTimeField
      FieldName = 'rem_dh'
    end
    object R00017rem_usrname: TStringField
      FieldName = 'rem_usrname'
      Required = True
      Size = 40
    end
    object R00017envnf: TIntegerField
      FieldName = 'envnf'
      Required = True
    end
    object R00017envnf_serie: TIntegerField
      FieldName = 'envnf_serie'
      Required = True
    end
    object R00017envnf_emissao: TDateTimeField
      FieldName = 'envnf_emissao'
      Required = True
    end
    object R00017envtipo_port: TIntegerField
      FieldName = 'envtipo_port'
      Required = True
    end
    object R00017envtipo_outros: TStringField
      FieldName = 'envtipo_outros'
      Size = 30
    end
    object R00017envcnpj: TStringField
      FieldName = 'envcnpj'
      Required = True
      Size = 14
    end
    object R00017envempresa: TStringField
      FieldName = 'envempresa'
      Required = True
      Size = 100
    end
    object R00017envobs: TMemoField
      FieldName = 'envobs'
      BlobType = ftMemo
    end
    object R00017pedido_1: TIntegerField
      FieldName = 'pedido_1'
    end
    object R00017pedcriado: TDateTimeField
      FieldName = 'pedcriado'
      Required = True
    end
    object R00017pedemitido: TDateTimeField
      FieldName = 'pedemitido'
    end
    object R00017pedautorizado: TDateTimeField
      FieldName = 'pedautorizado'
    end
    object R00017pedaprovado: TIntegerField
      FieldName = 'pedaprovado'
      Required = True
    end
    object R00017pedsolicitante: TStringField
      FieldName = 'pedsolicitante'
      Size = 60
    end
    object R00017pedsolicitante_dep: TStringField
      FieldName = 'pedsolicitante_dep'
      Size = 60
    end
    object R00017pedcond: TStringField
      FieldName = 'pedcond'
      Size = 15
    end
    object R00017pedfrete: TFloatField
      FieldName = 'pedfrete'
      Required = True
    end
    object R00017ret_usrname: TStringField
      FieldName = 'ret_usrname'
      Required = True
      Size = 40
    end
    object R00017pednf: TIntegerField
      FieldName = 'pednf'
      Required = True
    end
    object R00017pednf_serie: TIntegerField
      FieldName = 'pednf_serie'
      Required = True
    end
    object R00017pednf_emissao: TDateTimeField
      FieldName = 'pednf_emissao'
      Required = True
    end
    object R00017pednf_valor: TFloatField
      FieldName = 'pednf_valor'
      Required = True
    end
    object R00017pedtotal: TFloatField
      FieldName = 'pedtotal'
      ReadOnly = True
    end
    object R00017localizacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'localizacao'
      Size = 150
      Calculated = True
    end
  end
  object frxR00017: TfrxDBDataset
    Description = 'Cadeia de Cust'#243'dia'
    UserName = 'R00017'
    CloseDataSource = True
    FieldAliases.Strings = (
      'amostra=amostra'
      'relato_recno=relato_recno'
      'laudo=laudo'
      'status=status'
      'recno=recno'
      'labcrit_recno=labcrit_recno'
      'idcodigo=idcodigo'
      'crit=crit'
      'cor=cor'
      'labdiag_recno=labdiag_recno'
      'apontado=apontado'
      'inmetro=inmetro'
      'diag_descri=diag_descri'
      'diag_diag=diag_diag'
      'diag_dias=diag_dias'
      'labrec_recno=labrec_recno'
      'rec_descri=rec_descri'
      'recomenda=recomenda'
      'assinatura=assinatura'
      'diagnostico=diagnostico'
      'recomendacao=recomendacao'
      'pcoleta=pcoleta'
      'obs=obs'
      'emissao=emissao'
      'd1=d1'
      'd2=d2'
      'd3=d3'
      'd4=d4'
      'd5=d5'
      'd6=d6'
      'revisao=revisao'
      'etiqueta=etiqueta'
      'comodato=comodato'
      'os=os'
      'entrada=entrada'
      'coleta=coleta'
      'coletor=coletor'
      'laudodesc=laudodesc'
      'tamb=tamb'
      'toleo=toleo'
      'tequip=tequip'
      'umidade=umidade'
      'tensao=tensao'
      'local=local'
      'labsubest_recno=labsubest_recno'
      'codigo=codigo'
      'empresa=empresa'
      'nome_chave=nome_chave'
      'cnpj=cnpj'
      'cpf=cpf'
      'telefone=telefone'
      'endereco=endereco'
      'bairro=bairro'
      'cidade=cidade'
      'estado=estado'
      'cep=cep'
      'email=email'
      'logo=logo'
      'destinatario=destinatario'
      'pedido=pedido'
      'tpamostra_recno=tpamostra_recno'
      'atipo=atipo'
      'equip_recno=equip_recno'
      'fabricante=fabricante'
      'serie=serie'
      'tipo=tipo'
      'tensao_un=tensao_un'
      'potencia_un=potencia_un'
      'descri=descri'
      'potencia=potencia'
      'imped=imped'
      'tensao_1=tensao_1'
      'fases=fases'
      'ano=ano'
      'lote=lote'
      'isolante=isolante'
      'volume=volume'
      'drenos=drenos'
      'familia=familia'
      'tag=tag'
      'sigla=sigla'
      'nome=nome'
      'regional=regional'
      'reg_nome=reg_nome'
      'nome_1=nome_1'
      'crq=crq'
      'nome_2=nome_2'
      'funcao=funcao'
      'telefone_1=telefone_1'
      'celular=celular'
      'email_1=email_1'
      'ass_arquivo=ass_arquivo'
      'cargo=cargo'
      'idos=idos'
      'rem_dh=rem_dh'
      'rem_usrname=rem_usrname'
      'envnf=envnf'
      'envnf_serie=envnf_serie'
      'envnf_emissao=envnf_emissao'
      'envtipo_port=envtipo_port'
      'envtipo_outros=envtipo_outros'
      'envcnpj=envcnpj'
      'envempresa=envempresa'
      'envobs=envobs'
      'pedido_1=pedido_1'
      'pedcriado=pedcriado'
      'pedemitido=pedemitido'
      'pedautorizado=pedautorizado'
      'pedaprovado=pedaprovado'
      'pedsolicitante=pedsolicitante'
      'pedsolicitante_dep=pedsolicitante_dep'
      'pedcond=pedcond'
      'pedfrete=pedfrete'
      'ret_usrname=ret_usrname'
      'pednf=pednf'
      'pednf_serie=pednf_serie'
      'pednf_emissao=pednf_emissao'
      'pednf_valor=pednf_valor'
      'pedtotal=pedtotal'
      'localizacao=localizacao')
    DataSet = R00017
    BCDToCurrency = False
    Left = 280
    Top = 368
  end
  object R00017a: TZQuery
    Connection = DM.Design
    AfterScroll = R00017aAfterScroll
    SQL.Strings = (
      
        'select r.laudo, r.relato_recno, e.nome, cast(coalesce(e.unidade,' +
        ' '#39'-'#39') as varchar(100)) as unidade,'
      
        '       e.metodo, r.ref_tipo, r.ref_valor, r.valor, le.ordem, e.d' +
        'ec, e.arred, e.sezerotxt,'
      '        r.ensaio_recno,    r.registro, u.nome as name'
      '  from labamostras_res r'
      '       join labrel_ens le'
      '         on le.relato_recno = r.relato_recno'
      '        and le.ensaio_recno = r.ensaio_recno'
      '       join vensaios e'
      '         on e.recno = r.ensaio_recno'
      '       left join vaccounts u'
      '         on u.account = r.account'
      'where r.laudo = :laudo'
      '   and r.relato_recno = :tplaudo'
      ' order by r.laudo, r.relato_recno, le.ordem')
    Params = <
      item
        DataType = ftUnknown
        Name = 'laudo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tplaudo'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    Left = 216
    Top = 416
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'laudo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tplaudo'
        ParamType = ptUnknown
      end>
    object R00017alaudo: TIntegerField
      FieldName = 'laudo'
      ReadOnly = True
    end
    object R00017arelato_recno: TIntegerField
      FieldName = 'relato_recno'
      Required = True
    end
    object R00017anome: TStringField
      FieldName = 'nome'
      Size = 60
    end
    object R00017aunidade: TStringField
      FieldName = 'unidade'
      ReadOnly = True
      Size = 100
    end
    object R00017ametodo: TStringField
      FieldName = 'metodo'
      Size = 30
    end
    object R00017aref_tipo: TIntegerField
      FieldName = 'ref_tipo'
    end
    object R00017aref_valor: TFloatField
      FieldName = 'ref_valor'
    end
    object R00017avalor: TFloatField
      FieldName = 'valor'
      Required = True
    end
    object R00017aordem: TIntegerField
      FieldName = 'ordem'
      Required = True
    end
    object R00017adec: TIntegerField
      FieldName = 'dec'
    end
    object R00017aarred: TIntegerField
      FieldName = 'arred'
    end
    object R00017asezerotxt: TStringField
      FieldName = 'sezerotxt'
      Size = 10
    end
    object R00017aensaio_recno: TIntegerField
      FieldName = 'ensaio_recno'
      Required = True
    end
    object R00017aregistro: TDateTimeField
      FieldName = 'registro'
    end
    object R00017aname: TStringField
      FieldName = 'name'
      Required = True
      Size = 40
    end
  end
  object frxR00017a: TfrxDBDataset
    Description = 'Cadeia de Cust'#243'dia'
    UserName = 'R00017a'
    CloseDataSource = True
    FieldAliases.Strings = (
      'laudo=laudo'
      'relato_recno=relato_recno'
      'nome=nome'
      'unidade=unidade'
      'metodo=metodo'
      'ref_tipo=ref_tipo'
      'ref_valor=ref_valor'
      'valor=valor'
      'ordem=ordem'
      'dec=dec'
      'arred=arred'
      'sezerotxt=sezerotxt'
      'ensaio_recno=ensaio_recno'
      'registro=registro'
      'name=name')
    DataSet = R00017a
    BCDToCurrency = False
    Left = 280
    Top = 416
  end
  object dsR00017: TDataSource
    DataSet = R00017
    Left = 344
    Top = 368
  end
  object R00017b: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      
        'select r.laudo, r.relato_recno, r.ensaio_recno, r.ativo, r.accou' +
        'nt as username, r.recno, a.descri, u.nome as name'
      '  from labamostras_res_ativos r'
      '       join ativos a'
      '         on a.id = r.ativo'
      '       join vaccounts u'
      '         on u.account = r.account'
      ' where r.laudo = :laudo'
      '   and r.relato_recno = :tplaudo'
      '   and r.ensaio_recno = :ensaio'
      ' order by a.descri, r.ativo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'laudo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tplaudo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ensaio'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    Left = 216
    Top = 464
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'laudo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tplaudo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ensaio'
        ParamType = ptUnknown
      end>
    object R00017blaudo: TIntegerField
      FieldName = 'laudo'
      ReadOnly = True
    end
    object R00017brelato_recno: TIntegerField
      FieldName = 'relato_recno'
      Required = True
    end
    object R00017bensaio_recno: TIntegerField
      FieldName = 'ensaio_recno'
      Required = True
    end
    object R00017bativo: TIntegerField
      FieldName = 'ativo'
      Required = True
    end
    object R00017brecno: TIntegerField
      FieldName = 'recno'
      Required = True
    end
    object R00017bdescri: TMemoField
      FieldName = 'descri'
      Required = True
      BlobType = ftMemo
    end
    object R00017bname: TStringField
      FieldName = 'name'
      Required = True
      Size = 40
    end
  end
  object frxR00017b: TfrxDBDataset
    Description = 'Cadeia de Cust'#243'dia'
    UserName = 'R00017b'
    CloseDataSource = True
    FieldAliases.Strings = (
      'laudo=laudo'
      'relato_recno=relato_recno'
      'ensaio_recno=ensaio_recno'
      'ativo=ativo'
      'recno=recno'
      'descri=descri'
      'name=name')
    DataSet = R00017b
    BCDToCurrency = False
    Left = 280
    Top = 464
  end
  object dsR00017a: TDataSource
    DataSet = R00017a
    Left = 344
    Top = 416
  end
  object R00017c: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      
        'select r.laudo, r.relato_recno, r.ensaio_recno, r.solucao, r.qtd' +
        ', u.nome as name, s.tipo, s.codigo, s.lotefor,'
      '       s.validade, st.descri, f.empresa'
      '  from labamostras_res_sol r'
      '       join labsol s'
      '         on s.recno = r.solucao'
      '       left join fornecedores f'
      '         on f.codigo = s.codigo'
      '       join labsoltipo st'
      '         on st.recno = s.tipo'
      '       join vaccounts u'
      '         on u.account = r.account'
      ' where r.laudo = :laudo'
      '   and r.relato_recno = :tplaudo'
      '   and r.ensaio_recno = :ensaio'
      ' order by r.solucao, s.validade')
    Params = <
      item
        DataType = ftUnknown
        Name = 'laudo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tplaudo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ensaio'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    Left = 216
    Top = 512
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'laudo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tplaudo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ensaio'
        ParamType = ptUnknown
      end>
    object R00017claudo: TIntegerField
      FieldName = 'laudo'
      ReadOnly = True
    end
    object R00017crelato_recno: TIntegerField
      FieldName = 'relato_recno'
      Required = True
    end
    object R00017censaio_recno: TIntegerField
      FieldName = 'ensaio_recno'
      Required = True
    end
    object R00017csolucao: TIntegerField
      FieldName = 'solucao'
      Required = True
    end
    object R00017cqtd: TFloatField
      FieldName = 'qtd'
      Required = True
    end
    object R00017cname: TStringField
      FieldName = 'name'
      Required = True
      Size = 40
    end
    object R00017ctipo: TIntegerField
      FieldName = 'tipo'
      Required = True
    end
    object R00017ccodigo: TIntegerField
      FieldName = 'codigo'
    end
    object R00017clotefor: TStringField
      FieldName = 'lotefor'
      Size = 40
    end
    object R00017cvalidade: TDateField
      FieldName = 'validade'
    end
    object R00017cdescri: TStringField
      FieldName = 'descri'
      Required = True
      Size = 60
    end
    object R00017cempresa: TStringField
      FieldName = 'empresa'
      Required = True
      Size = 60
    end
  end
  object frxR00017c: TfrxDBDataset
    Description = 'Cadeia de Cust'#243'dia'
    UserName = 'R00017c'
    CloseDataSource = True
    FieldAliases.Strings = (
      'laudo=laudo'
      'relato_recno=relato_recno'
      'ensaio_recno=ensaio_recno'
      'solucao=solucao'
      'qtd=qtd'
      'name=name'
      'tipo=tipo'
      'codigo=codigo'
      'lotefor=lotefor'
      'validade=validade'
      'descri=descri'
      'empresa=empresa')
    DataSet = R00017c
    BCDToCurrency = False
    Left = 280
    Top = 512
  end
  object R00018: TZQuery
    Connection = DM.Design
    SortedFields = 'doc'
    AfterScroll = R00018AfterScroll
    SQL.Strings = (
      
        'select c.doc, c.cliente, cl.empresa, cl.cnpj, cl.cpf, c.emissao,' +
        ' m.vlmat, vlmobra, vlsrvvar, vlsrvfixo, vldespe,'
      
        '       c.recno, c.origem, c.descricao, a.ativdescri, c.condicaop' +
        'g'
      '  from vdoc_cab c'
      '       join markup m'
      '         on m.recno = c.markup'
      '       join orca_grupo gp'
      '         on gp.recno = c.grupo'
      '       join vatividades a'
      '         on a.item = gp.atividade'
      '       join tbclientes cl'
      '         on cl.codigo = c.cliente'
      ' where c.origem = :origem'
      '   and c.recno = :recno')
    Params = <
      item
        DataType = ftInteger
        Name = 'origem'
        ParamType = ptUnknown
        Value = '9'
      end
      item
        DataType = ftInteger
        Name = 'recno'
        ParamType = ptUnknown
        Value = '918243'
      end>
    IndexFieldNames = 'doc Asc'
    Left = 608
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'origem'
        ParamType = ptUnknown
        Value = '9'
      end
      item
        DataType = ftInteger
        Name = 'recno'
        ParamType = ptUnknown
        Value = '918243'
      end>
    object R00018doc: TIntegerField
      FieldName = 'doc'
    end
    object R00018cliente: TIntegerField
      FieldName = 'cliente'
    end
    object R00018empresa: TStringField
      FieldName = 'empresa'
      Size = 100
    end
    object R00018cnpj: TStringField
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object R00018cpf: TStringField
      FieldName = 'cpf'
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object R00018emissao: TDateTimeField
      FieldName = 'emissao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object R00018vlmat: TFloatField
      FieldName = 'vlmat'
      Required = True
    end
    object R00018vlmobra: TFloatField
      FieldName = 'vlmobra'
      Required = True
    end
    object R00018vlsrvvar: TFloatField
      FieldName = 'vlsrvvar'
      Required = True
    end
    object R00018vlsrvfixo: TFloatField
      FieldName = 'vlsrvfixo'
      Required = True
    end
    object R00018vldespe: TFloatField
      FieldName = 'vldespe'
    end
    object R00018recno: TIntegerField
      FieldName = 'recno'
    end
    object R00018origem: TIntegerField
      FieldName = 'origem'
    end
    object R00018descricao: TMemoField
      FieldName = 'descricao'
      BlobType = ftMemo
    end
    object R00018ativdescri: TMemoField
      FieldName = 'ativdescri'
      BlobType = ftMemo
    end
    object R00018condicaopg: TStringField
      FieldName = 'condicaopg'
      Size = 15
    end
  end
  object frxR00018: TfrxDBDataset
    Description = 'Cota'#231#227'o/Ordem de Fatura'
    UserName = 'R00018'
    CloseDataSource = True
    FieldAliases.Strings = (
      'doc=doc'
      'cliente=cliente'
      'empresa=empresa'
      'cnpj=cnpj'
      'cpf=cpf'
      'emissao=emissao'
      'vlmat=vlmat'
      'vlmobra=vlmobra'
      'vlsrvvar=vlsrvvar'
      'vlsrvfixo=vlsrvfixo'
      'vldespe=vldespe'
      'recno=recno'
      'origem=origem'
      'descricao=descricao'
      'ativdescri=ativdescri'
      'condicaopg=condicaopg')
    DataSet = R00018
    BCDToCurrency = False
    Left = 672
    Top = 80
  end
  object R00018a: TZQuery
    Connection = DM.Design
    SortedFields = 'ordem'
    SQL.Strings = (
      
        'select titulo, ordem, conteudo, _tabela origem, _recno doc, img1' +
        ', img2, recno'
      '  from docs '
      ' where _tabela = :origem'
      '   and _recno = :doc')
    Params = <
      item
        DataType = ftInteger
        Name = 'origem'
        ParamType = ptUnknown
        Value = '9'
      end
      item
        DataType = ftInteger
        Name = 'doc'
        ParamType = ptUnknown
        Value = '918243'
      end>
    IndexFieldNames = 'ordem Asc'
    Left = 608
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'origem'
        ParamType = ptUnknown
        Value = '9'
      end
      item
        DataType = ftInteger
        Name = 'doc'
        ParamType = ptUnknown
        Value = '918243'
      end>
    object R00018atitulo: TStringField
      FieldName = 'titulo'
      Required = True
      Size = 150
    end
    object R00018aordem: TIntegerField
      FieldName = 'ordem'
      Required = True
    end
    object R00018aconteudo: TBlobField
      FieldName = 'conteudo'
      Required = True
    end
    object R00018aorigem: TIntegerField
      FieldName = 'origem'
      Required = True
    end
    object R00018adoc: TIntegerField
      FieldName = 'doc'
      Required = True
    end
    object R00018aimg1: TBlobField
      FieldName = 'img1'
    end
    object R00018aimg2: TBlobField
      FieldName = 'img2'
    end
    object R00018arecno: TIntegerField
      FieldName = 'recno'
      Required = True
    end
  end
  object frxR00018a: TfrxDBDataset
    Description = 'Cota'#231#227'o/Ordem de Fatura'
    UserName = 'R00018a'
    CloseDataSource = True
    FieldAliases.Strings = (
      'titulo=titulo'
      'ordem=ordem'
      'conteudo=conteudo'
      'origem=origem'
      'doc=doc'
      'img1=img1'
      'img2=img2'
      'recno=recno')
    DataSet = R00018a
    BCDToCurrency = False
    Left = 672
    Top = 128
  end
  object dsR00018: TDataSource
    DataSet = R00018
    Left = 736
    Top = 80
  end
  object frxR00018b: TfrxDBDataset
    Description = 'Cota'#231#227'o/Ordem de Fatura'
    UserName = 'R00018b'
    CloseDataSource = True
    FieldAliases.Strings = (
      'origem=origem'
      'doc=doc'
      'servico=servico'
      'descri=descri'
      'qtd=qtd'
      'unidade=unidade'
      'unitario=unitario'
      'vtotal=vtotal'
      'prnos=prnos'
      'tipo=tipo'
      'recno=recno')
    DataSet = R00018b
    BCDToCurrency = False
    Left = 672
    Top = 176
  end
  object R00018b: TZQuery
    Connection = DM.Design
    AfterScroll = R00018bAfterScroll
    SQL.Strings = (
      
        'select s.origem, s.doc, s.servico, serv.descri, s.qtd, s.unidade' +
        ', s.unitario, s.vtotal,'
      '       s.prnos, serv.tipo, s.recno'
      '  from vdoc_serv s'
      '       join servicos serv'
      '         on serv.codserv = s.servico         '
      ' where s.origem = :origem'
      '   and s.doc = :doc')
    Params = <
      item
        DataType = ftInteger
        Name = 'origem'
        ParamType = ptUnknown
        Value = '9'
      end
      item
        DataType = ftInteger
        Name = 'doc'
        ParamType = ptUnknown
        Value = '918243'
      end>
    Left = 608
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = 'origem'
        ParamType = ptUnknown
        Value = '9'
      end
      item
        DataType = ftInteger
        Name = 'doc'
        ParamType = ptUnknown
        Value = '918243'
      end>
    object R00018borigem: TIntegerField
      FieldName = 'origem'
    end
    object R00018bdoc: TIntegerField
      FieldName = 'doc'
    end
    object R00018bservico: TIntegerField
      FieldName = 'servico'
    end
    object R00018bdescri: TStringField
      FieldName = 'descri'
      Required = True
      Size = 80
    end
    object R00018bqtd: TFloatField
      FieldName = 'qtd'
    end
    object R00018bunidade: TStringField
      FieldName = 'unidade'
      Size = 2
    end
    object R00018bunitario: TFloatField
      FieldName = 'unitario'
    end
    object R00018bvtotal: TFloatField
      FieldName = 'vtotal'
    end
    object R00018bprnos: TBooleanField
      FieldName = 'prnos'
    end
    object R00018btipo: TIntegerField
      FieldName = 'tipo'
      Required = True
    end
    object R00018brecno: TIntegerField
      FieldName = 'recno'
    end
  end
  object R00018c: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      'select s.origem, s.doc, s.servico, s.detalhe, sd.descri '
      '  from vdoc_servdet s'
      '       join servicos_det sd'
      '         on sd.codserv = s.servico'
      '        and sd.recno = s.detalhe'
      ' where s.origem = :origem'
      '   and s.doc = :doc'
      '   and s.servico = :servico')
    Params = <
      item
        DataType = ftInteger
        Name = 'origem'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'doc'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'servico'
        ParamType = ptUnknown
      end>
    Left = 608
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Name = 'origem'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'doc'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'servico'
        ParamType = ptUnknown
      end>
    object R00018corigem: TIntegerField
      FieldName = 'origem'
    end
    object R00018cdoc: TIntegerField
      FieldName = 'doc'
    end
    object R00018cservico: TIntegerField
      FieldName = 'servico'
    end
    object R00018cdetalhe: TIntegerField
      FieldName = 'detalhe'
    end
    object R00018cdescri: TStringField
      FieldName = 'descri'
      Required = True
      Size = 250
    end
  end
  object frxR00018c: TfrxDBDataset
    Description = 'Detalhe Servi'#231'os'
    UserName = 'R00018c'
    CloseDataSource = True
    FieldAliases.Strings = (
      'origem=origem'
      'doc=doc'
      'servico=servico'
      'detalhe=detalhe'
      'descri=descri')
    DataSet = R00018c
    BCDToCurrency = False
    Left = 672
    Top = 224
  end
  object dsR00018b: TDataSource
    DataSet = R00018b
    Left = 736
    Top = 176
  end
  object R00018d: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      
        'select vmat.origem, vmat.doc, vmat.material, p.descricao, vmat.q' +
        'td, vmat.unidade,'
      '       vmat.unitario, vmat.total, vmat.recno '
      '  from vdoc_mat vmat'
      '       join produtos p'
      '         on p.codigo = vmat.material'
      ' where vmat.origem = :origem'
      '   and vmat.doc = :doc')
    Params = <
      item
        DataType = ftInteger
        Name = 'origem'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'doc'
        ParamType = ptUnknown
      end>
    Left = 608
    Top = 272
    ParamData = <
      item
        DataType = ftInteger
        Name = 'origem'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'doc'
        ParamType = ptUnknown
      end>
    object R00018dorigem: TIntegerField
      FieldName = 'origem'
    end
    object R00018ddoc: TIntegerField
      FieldName = 'doc'
    end
    object R00018dmaterial: TIntegerField
      FieldName = 'material'
    end
    object R00018ddescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object R00018dqtd: TFloatField
      FieldName = 'qtd'
    end
    object R00018dunidade: TStringField
      FieldName = 'unidade'
      Size = 255
    end
    object R00018dunitario: TFloatField
      FieldName = 'unitario'
    end
    object R00018dtotal: TFloatField
      FieldName = 'total'
    end
    object R00018drecno: TIntegerField
      FieldName = 'recno'
    end
  end
  object frxR00018d: TfrxDBDataset
    Description = 'Materiais da Proposta'
    UserName = 'R00018d'
    CloseDataSource = True
    FieldAliases.Strings = (
      'origem=origem'
      'doc=doc'
      'material=material'
      'descricao=descricao'
      'qtd=qtd'
      'unidade=unidade'
      'unitario=unitario'
      'total=total'
      'recno=recno')
    DataSet = R00018d
    BCDToCurrency = False
    Left = 672
    Top = 272
  end
  object R00018e: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      'select mo.origem, mo.doc, mo.funcao, f.descricao,'
      
        '       mo.qtd, mo.vvenda, cast(mo.qtd * mo.vvenda as numeric(12,' +
        ' 2)) total'
      '  from vdoc_mo mo'
      '       join tb_funcoes f'
      '         on f.id = mo.funcao'
      ' where mo.origem = :origem'
      '   and mo.doc = :doc')
    Params = <
      item
        DataType = ftInteger
        Name = 'origem'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'doc'
        ParamType = ptUnknown
      end>
    Left = 608
    Top = 320
    ParamData = <
      item
        DataType = ftInteger
        Name = 'origem'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'doc'
        ParamType = ptUnknown
      end>
    object R00018eorigem: TIntegerField
      FieldName = 'origem'
    end
    object R00018edoc: TIntegerField
      FieldName = 'doc'
    end
    object R00018efuncao: TIntegerField
      FieldName = 'funcao'
    end
    object R00018edescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object R00018eqtd: TIntegerField
      FieldName = 'qtd'
    end
    object R00018evvenda: TFloatField
      FieldName = 'vvenda'
    end
    object R00018etotal: TFloatField
      FieldName = 'total'
      ReadOnly = True
    end
  end
  object frxR00018e: TfrxDBDataset
    Description = 'Materiais da Proposta'
    UserName = 'R00018e'
    CloseDataSource = True
    FieldAliases.Strings = (
      'origem=origem'
      'doc=doc'
      'funcao=funcao'
      'descricao=descricao'
      'qtd=qtd'
      'vvenda=vvenda'
      'total=total')
    DataSet = R00018e
    BCDToCurrency = False
    Left = 672
    Top = 320
  end
  object R00019: TZQuery
    Connection = DM.Design
    AfterScroll = R00019AfterScroll
    SQL.Strings = (
      'select '
      
        '   o.os, o.idos, o.data, o.idcliente, o.vlsrv, o.vlmat, o.descri' +
        'cao, o.pedidocliente,'
      
        '   c.empresa, c.nome_chave, c.endereco, c.bairro, c.cep, c.cidad' +
        'e, c.estado,'
      '   c.cnpj, c.cpf, c.inscricao, c.telefone, md5(o.idos) controle'
      '  from vos o'
      '       join tbclientes c'
      '         on c.codigo = o.idcliente'
      ' where o.os = :os')
    Params = <
      item
        DataType = ftInteger
        Name = 'os'
        ParamType = ptUnknown
        Value = 26881
      end>
    Left = 424
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'os'
        ParamType = ptUnknown
        Value = 26881
      end>
    object R00019idos: TStringField
      FieldName = 'idos'
      ReadOnly = True
      Size = 10
    end
    object R00019data: TDateField
      FieldName = 'data'
      ReadOnly = True
    end
    object R00019idcliente: TIntegerField
      FieldName = 'idcliente'
      ReadOnly = True
    end
    object R00019empresa: TStringField
      FieldName = 'empresa'
      ReadOnly = True
      Size = 100
    end
    object R00019nome_chave: TStringField
      FieldName = 'nome_chave'
      ReadOnly = True
      Size = 45
    end
    object R00019endereco: TStringField
      FieldName = 'endereco'
      ReadOnly = True
      Size = 85
    end
    object R00019bairro: TStringField
      FieldName = 'bairro'
      ReadOnly = True
      Size = 100
    end
    object R00019cep: TStringField
      FieldName = 'cep'
      ReadOnly = True
      Size = 100
    end
    object R00019cidade: TStringField
      FieldName = 'cidade'
      ReadOnly = True
      Size = 100
    end
    object R00019estado: TStringField
      FieldName = 'estado'
      ReadOnly = True
      Size = 2
    end
    object R00019cnpj: TStringField
      FieldName = 'cnpj'
      ReadOnly = True
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object R00019cpf: TStringField
      FieldName = 'cpf'
      ReadOnly = True
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object R00019inscricao: TStringField
      FieldName = 'inscricao'
      ReadOnly = True
      Size = 100
    end
    object R00019telefone: TStringField
      FieldName = 'telefone'
      ReadOnly = True
      Size = 100
    end
    object R00019os: TIntegerField
      FieldName = 'os'
      ReadOnly = True
    end
    object R00019vlsrv: TFloatField
      FieldName = 'vlsrv'
      ReadOnly = True
    end
    object R00019vlmat: TFloatField
      FieldName = 'vlmat'
      ReadOnly = True
    end
    object R00019descricao: TMemoField
      FieldName = 'descricao'
      ReadOnly = True
      BlobType = ftMemo
    end
    object R00019pedidocliente: TStringField
      FieldName = 'pedidocliente'
      ReadOnly = True
      Size = 15
    end
    object R00019controle: TMemoField
      FieldName = 'controle'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object frxR00019: TfrxDBDataset
    Description = 'Cota'#231#227'o/Ordem de Fatura'
    UserName = 'R00019'
    CloseDataSource = True
    FieldAliases.Strings = (
      'idos=idos'
      'data=data'
      'idcliente=idcliente'
      'empresa=empresa'
      'nome_chave=nome_chave'
      'endereco=endereco'
      'bairro=bairro'
      'cep=cep'
      'cidade=cidade'
      'estado=estado'
      'cnpj=cnpj'
      'cpf=cpf'
      'inscricao=inscricao'
      'telefone=telefone'
      'os=os'
      'vlsrv=vlsrv'
      'vlmat=vlmat'
      'descricao=descricao'
      'pedidocliente=pedidocliente'
      'controle=controle')
    DataSet = R00019
    BCDToCurrency = False
    Left = 488
    Top = 128
  end
  object R00019a: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      
        'select so.codserv, s.descri, so.qtd, cast(s.un as varchar(3)), s' +
        'o.vl_venda, so.qtd * so.vl_venda total'
      '  from servicos_os so'
      '       join servicos s'
      '         on s.codserv = so.codserv'
      ' where so.os = :os'
      'union all'
      
        'select m.codigo, p.descricao, m.qtd, cast(p.unidade as varchar(3' +
        ')) un, m.vl_venda, m.qtd * m.vl_venda total'
      '  from orca_mat m'
      '       join produtos p'
      '         on p.codigo = m.codigo'
      ' where m.os = :os'
      'union all '
      
        'select mo.func, f.descricao, mo.qtde, cast(null as varchar(3)) u' +
        'n, mo.vl_venda, mo.qtde * mo.vl_venda total'
      '  from tb_orcamentos_lucratividade_lorencini mo'
      '       join tb_funcoes f'
      '         on f.id = mo.func'
      ' where mo.os = :os')
    Params = <
      item
        DataType = ftInteger
        Name = 'os'
        ParamType = ptUnknown
        Value = 26881
      end>
    Left = 424
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = 'os'
        ParamType = ptUnknown
        Value = 26881
      end>
    object R00019acodserv: TIntegerField
      FieldName = 'codserv'
      ReadOnly = True
    end
    object R00019adescri: TMemoField
      FieldName = 'descri'
      ReadOnly = True
      BlobType = ftMemo
    end
    object R00019aqtd: TFloatField
      FieldName = 'qtd'
      ReadOnly = True
    end
    object R00019aun: TStringField
      FieldName = 'un'
      ReadOnly = True
      Size = 3
    end
    object R00019avl_venda: TFloatField
      FieldName = 'vl_venda'
      ReadOnly = True
    end
    object R00019atotal: TFloatField
      FieldName = 'total'
      ReadOnly = True
    end
  end
  object frxR00019a: TfrxDBDataset
    Description = 'Nota de Cobran'#231'a'
    UserName = 'R00019a'
    CloseDataSource = True
    FieldAliases.Strings = (
      'codserv=codserv'
      'descri=descri'
      'qtd=qtd'
      'un=un'
      'vl_venda=vl_venda'
      'total=total')
    DataSet = R00019a
    BCDToCurrency = False
    Left = 488
    Top = 176
  end
  object R00014b: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      
        'select a.ensaio_recno, e.nome, e.unidade, cast(c.emissao as date' +
        ') "data", a.valor, a.ref_valor'
      '  from labamostras_res a'
      '       join labamostras_hres b'
      '         on b.laudo_dep = a.laudo'
      '        and b.laudo = :laudo'
      '        and b.relato_recno = a.relato_recno'
      '        and b.ensaio_recno = a.ensaio_recno'
      '       join labamostras_rel c'
      '         on c.recno = a.laudo'
      '        and c.revisao is null'
      '       join vensaios e'
      '         on e.recno = a.ensaio_recno'
      ' where a.relato_recno = :tipo'
      '   and a.ensaio_recno = :ensaio'
      ' union all'
      
        'select a.ensaio_recno, e.nome, e.unidade, cast(c.emissao as date' +
        ') "data", a.valor, a.ref_valor'
      '  from labamostras_res a'
      '       join labamostras_rel c'
      '         on c.recno = a.laudo'
      '       join vensaios e'
      '         on e.recno = a.ensaio_recno'
      ' where a.laudo = :laudo'
      '   and a.relato_recno = :tipo'
      '   and a.ensaio_recno = :ensaio'
      ' order by 1, 2')
    Params = <
      item
        DataType = ftInteger
        Name = 'laudo'
        ParamType = ptUnknown
        Value = 102345
      end
      item
        DataType = ftInteger
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ensaio'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    Left = 216
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = 'laudo'
        ParamType = ptUnknown
        Value = 102345
      end
      item
        DataType = ftInteger
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ensaio'
        ParamType = ptUnknown
      end>
    object R00014bensaio_recno: TIntegerField
      FieldName = 'ensaio_recno'
      Required = True
    end
    object R00014bnome: TStringField
      FieldName = 'nome'
      Size = 60
    end
    object R00014bunidade: TStringField
      FieldName = 'unidade'
      Size = 30
    end
    object R00014bdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'data'
      ReadOnly = True
      DisplayFormat = 'dd/mm/yy'
    end
    object R00014bvalor: TFloatField
      FieldName = 'valor'
      Required = True
    end
    object R00014bref_valor: TFloatField
      FieldName = 'ref_valor'
    end
  end
  object frxR00014b: TfrxDBDataset
    Description = 'Laudo'
    UserName = 'R00014b'
    CloseDataSource = True
    FieldAliases.Strings = (
      'ensaio_recno=ensaio_recno'
      'nome=nome'
      'unidade=unidade'
      'data=data'
      'valor=valor'
      'ref_valor=ref_valor')
    DataSet = R00014b
    BCDToCurrency = False
    Left = 280
    Top = 176
  end
  object R00020: TZQuery
    Connection = DM.Design
    SortedFields = 'recno'
    AfterScroll = R00020AfterScroll
    SQL.Strings = (
      
        'select p.recno, p.codigo, p.obs, p.condicaopg, p.pedido_cliente,' +
        ' p.frete, p.frascos, p.seringas, p.envio, p.coleta,'
      
        '       p.remessa, p.laboratorio, destinatario, c.empresa, c.nome' +
        '_chave, c.endereco, c.bairro, c.cep, c.cidade, c.estado,'
      
        '       c.cnpj, c.inscricao, c.cpf, c.rg, c.telefone, c.email, c.' +
        'id_vendedor, c.logo, v.nome vendedor, p.markup, m.vlmat,'
      
        '       m.vlsrvvar, m.vlsrvfixo, m.vlmobra, m.vldespe, p.emitido,' +
        ' a.ativdescri'
      '  from pedido p'
      '       join tbclientes c'
      #9'       on c.codigo = p.codigo'
      '       join orca_grupo gp'
      '         on gp.recno = p.grupo'
      '       join vatividades a'
      '         on a.item = gp.atividade'
      '       left join markup m'
      #9'       on m.recno = p.markup'
      '       left join tb_vendedores v'
      '         on v.idvendedor = c.id_vendedor'
      ' where p.recno = :pedido')
    Params = <
      item
        DataType = ftString
        Name = 'pedido'
        ParamType = ptUnknown
        Value = '4517'
      end>
    IndexFieldNames = 'recno Asc'
    Left = 424
    Top = 272
    ParamData = <
      item
        DataType = ftString
        Name = 'pedido'
        ParamType = ptUnknown
        Value = '4517'
      end>
    object R00020recno: TIntegerField
      DisplayLabel = 'Pedido'
      FieldName = 'recno'
      Required = True
    end
    object R00020obs: TMemoField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'obs'
      BlobType = ftMemo
    end
    object R00020condicaopg: TStringField
      DisplayLabel = 'Condi'#231#227'o de Pagamento'
      FieldName = 'condicaopg'
      Size = 15
    end
    object R00020pedido_cliente: TStringField
      DisplayLabel = 'Pedido Cliente'
      FieldName = 'pedido_cliente'
      Size = 15
    end
    object R00020frete: TFloatField
      DisplayLabel = 'Frete'
      FieldName = 'frete'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object R00020frascos: TIntegerField
      DisplayLabel = 'Frascos'
      FieldName = 'frascos'
    end
    object R00020seringas: TIntegerField
      DisplayLabel = 'Seringas'
      FieldName = 'seringas'
    end
    object R00020envio: TIntegerField
      DisplayLabel = 'Tipo de Envio'
      FieldName = 'envio'
      Required = True
    end
    object R00020coleta: TIntegerField
      DisplayLabel = 'Respons'#225'vel Coleta'
      FieldName = 'coleta'
      Required = True
    end
    object R00020remessa: TBooleanField
      DisplayLabel = 'Tem Remessa'
      FieldName = 'remessa'
      Required = True
    end
    object R00020laboratorio: TBooleanField
      DisplayLabel = 'Tem Laborat'#243'rio'
      FieldName = 'laboratorio'
      Required = True
    end
    object R00020destinatario: TStringField
      DisplayLabel = 'Destinat'#225'rio'
      FieldName = 'destinatario'
      Size = 120
    end
    object R00020codigo: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'codigo'
      Required = True
    end
    object R00020empresa: TStringField
      DisplayLabel = 'Nome Empresarial'
      FieldName = 'empresa'
      Size = 100
    end
    object R00020nome_chave: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'nome_chave'
      Size = 45
    end
    object R00020endereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'endereco'
      Size = 85
    end
    object R00020bairro: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'bairro'
      Size = 100
    end
    object R00020cep: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'cep'
      EditMask = '99.999-999;0;'
      Size = 100
    end
    object R00020cidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cidade'
      Size = 100
    end
    object R00020estado: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'estado'
      Size = 2
    end
    object R00020cnpj: TStringField
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object R00020inscricao: TStringField
      FieldName = 'inscricao'
      Size = 100
    end
    object R00020cpf: TStringField
      FieldName = 'cpf'
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object R00020rg: TStringField
      FieldName = 'rg'
      Size = 9
    end
    object R00020telefone: TStringField
      FieldName = 'telefone'
      Size = 100
    end
    object R00020email: TStringField
      FieldName = 'email'
      Size = 100
    end
    object R00020id_vendedor: TIntegerField
      FieldName = 'id_vendedor'
    end
    object R00020logo: TBlobField
      FieldName = 'logo'
    end
    object R00020vendedor: TStringField
      FieldName = 'vendedor'
      Size = 100
    end
    object R00020markup: TIntegerField
      FieldName = 'markup'
    end
    object R00020vlmat: TFloatField
      FieldName = 'vlmat'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object R00020vlsrvvar: TFloatField
      FieldName = 'vlsrvvar'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object R00020vlsrvfixo: TFloatField
      FieldName = 'vlsrvfixo'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object R00020vlmobra: TFloatField
      FieldName = 'vlmobra'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object R00020vldespe: TFloatField
      FieldName = 'vldespe'
      DisplayFormat = ',0.#0'
    end
    object R00020emitido: TDateTimeField
      DisplayLabel = 'Emitido'
      FieldName = 'emitido'
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object R00020ativdescri: TMemoField
      FieldName = 'ativdescri'
      BlobType = ftMemo
    end
  end
  object frxR00020: TfrxDBDataset
    Description = 'Pedido de Venda'
    UserName = 'R00020'
    CloseDataSource = True
    FieldAliases.Strings = (
      'recno=recno'
      'obs=obs'
      'condicaopg=condicaopg'
      'pedido_cliente=pedido_cliente'
      'frete=frete'
      'frascos=frascos'
      'seringas=seringas'
      'envio=envio'
      'coleta=coleta'
      'remessa=remessa'
      'laboratorio=laboratorio'
      'destinatario=destinatario'
      'codigo=codigo'
      'empresa=empresa'
      'nome_chave=nome_chave'
      'endereco=endereco'
      'bairro=bairro'
      'cep=cep'
      'cidade=cidade'
      'estado=estado'
      'cnpj=cnpj'
      'inscricao=inscricao'
      'cpf=cpf'
      'rg=rg'
      'telefone=telefone'
      'email=email'
      'id_vendedor=id_vendedor'
      'logo=logo'
      'vendedor=vendedor'
      'markup=markup'
      'vlmat=vlmat'
      'vlsrvvar=vlsrvvar'
      'vlsrvfixo=vlsrvfixo'
      'vlmobra=vlmobra'
      'vldespe=vldespe'
      'emitido=emitido'
      'ativdescri=ativdescri')
    DataSet = R00020
    BCDToCurrency = False
    Left = 488
    Top = 272
  end
  object dsR00020: TDataSource
    DataSet = R00020
    Left = 552
    Top = 272
  end
  object R00020a: TZQuery
    Connection = DM.Design
    SortedFields = 'descri'
    AfterScroll = R00020aAfterScroll
    SQL.Strings = (
      
        'select ps.pedido, ps.codserv, s.descri, s.un, ps.qtd, ps.unitari' +
        'o, ps.vtotal'
      '  from pedido_serv ps'
      '       join servicos s'
      '         on s.codserv = ps.codserv'
      ' where pedido = :pedido')
    Params = <
      item
        DataType = ftString
        Name = 'pedido'
        ParamType = ptUnknown
        Value = '4517'
      end>
    IndexFieldNames = 'descri Asc'
    Left = 424
    Top = 320
    ParamData = <
      item
        DataType = ftString
        Name = 'pedido'
        ParamType = ptUnknown
        Value = '4517'
      end>
    object R00020apedido: TIntegerField
      FieldName = 'pedido'
      Required = True
    end
    object R00020acodserv: TIntegerField
      FieldName = 'codserv'
      Required = True
    end
    object R00020adescri: TStringField
      FieldName = 'descri'
      Required = True
      Size = 80
    end
    object R00020aun: TStringField
      FieldName = 'un'
      Required = True
      Size = 2
    end
    object R00020aqtd: TIntegerField
      FieldName = 'qtd'
      Required = True
      DisplayFormat = '#,0.#0'
    end
    object R00020aunitario: TFloatField
      FieldName = 'unitario'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object R00020avtotal: TFloatField
      FieldName = 'vtotal'
      Required = True
      DisplayFormat = ',0.#0'
    end
  end
  object frxR00020a: TfrxDBDataset
    Description = 'Pedido de Venda'
    UserName = 'R00020a'
    CloseDataSource = True
    FieldAliases.Strings = (
      'pedido=pedido'
      'codserv=codserv'
      'descri=descri'
      'un=un'
      'qtd=qtd'
      'unitario=unitario'
      'vtotal=vtotal')
    DataSet = R00020a
    BCDToCurrency = False
    Left = 488
    Top = 320
  end
  object R00020b: TZQuery
    Connection = DM.Design
    SortedFields = 'descri'
    SQL.Strings = (
      'select ps.descri'
      '  from pedido_serv_det pd'
      '       join servicos_det ps'
      #9'       on ps.codserv = pd.codserv'
      #9#9'    and ps.recno = pd.detalhe'
      ' where pd.pedido = :pedido'
      '   and pd.codserv = :servico')
    Params = <
      item
        DataType = ftString
        Name = 'pedido'
        ParamType = ptUnknown
        Value = '4517'
      end
      item
        DataType = ftUnknown
        Name = 'servico'
        ParamType = ptUnknown
      end>
    IndexFieldNames = 'descri Asc'
    Left = 424
    Top = 368
    ParamData = <
      item
        DataType = ftString
        Name = 'pedido'
        ParamType = ptUnknown
        Value = '4517'
      end
      item
        DataType = ftUnknown
        Name = 'servico'
        ParamType = ptUnknown
      end>
    object R00020bdescri: TStringField
      FieldName = 'descri'
      Required = True
      Size = 250
    end
  end
  object frxR00020b: TfrxDBDataset
    Description = 'Pedido de Venda'
    UserName = 'R00020b'
    CloseDataSource = True
    FieldAliases.Strings = (
      'descri=descri')
    DataSet = R00020b
    BCDToCurrency = False
    Left = 488
    Top = 368
  end
  object R00020c: TZQuery
    Connection = DM.Design
    SortedFields = 'descricao'
    SQL.Strings = (
      'select mo.pedido, mo.funcao, f.descricao, mo.qtd, mo.vvenda, '
      '       cast(mo.qtd * mo.vvenda as numeric(12, 2)) total'
      '  from pedido_mo mo'
      '       join tb_funcoes f'
      '         on f.id = mo.funcao'
      ' where mo.pedido = :pedido'
      '')
    Params = <
      item
        DataType = ftString
        Name = 'pedido'
        ParamType = ptUnknown
        Value = '4517'
      end>
    IndexFieldNames = 'descricao Asc'
    Left = 424
    Top = 416
    ParamData = <
      item
        DataType = ftString
        Name = 'pedido'
        ParamType = ptUnknown
        Value = '4517'
      end>
    object R00020cpedido: TIntegerField
      FieldName = 'pedido'
      Required = True
    end
    object R00020cfuncao: TIntegerField
      FieldName = 'funcao'
      Required = True
    end
    object R00020cdescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object R00020cqtd: TIntegerField
      FieldName = 'qtd'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object R00020cvvenda: TFloatField
      FieldName = 'vvenda'
      DisplayFormat = ',0.#0'
    end
    object R00020ctotal: TFloatField
      FieldName = 'total'
      ReadOnly = True
      DisplayFormat = ',0.#0'
    end
  end
  object frxR00020c: TfrxDBDataset
    Description = 'Pedido de Venda'
    UserName = 'R00020c'
    CloseDataSource = True
    FieldAliases.Strings = (
      'pedido=pedido'
      'funcao=funcao'
      'descricao=descricao'
      'qtd=qtd'
      'vvenda=vvenda'
      'total=total')
    DataSet = R00020c
    BCDToCurrency = False
    Left = 488
    Top = 416
  end
  object R00020d: TZQuery
    Connection = DM.Design
    SortedFields = 'descricao'
    SQL.Strings = (
      
        'select mat.pedido, mat.material, p.descricao, mat.qtd, p.unidade' +
        ','
      '       mat.vvenda, mat.vtotal, mat.recno '
      '  from pedido_mat mat'
      '       join produtos p'
      '         on p.codigo = mat.material'
      ' where mat.pedido = :pedido'
      '')
    Params = <
      item
        DataType = ftString
        Name = 'pedido'
        ParamType = ptUnknown
        Value = '4517'
      end>
    IndexFieldNames = 'descricao Asc'
    Left = 424
    Top = 464
    ParamData = <
      item
        DataType = ftString
        Name = 'pedido'
        ParamType = ptUnknown
        Value = '4517'
      end>
    object R00020dpedido: TIntegerField
      FieldName = 'pedido'
      Required = True
    end
    object R00020dmaterial: TIntegerField
      FieldName = 'material'
      Required = True
    end
    object R00020ddescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object R00020dqtd: TFloatField
      FieldName = 'qtd'
      Required = True
    end
    object R00020dunidade: TStringField
      FieldName = 'unidade'
      Required = True
      Size = 2
    end
    object R00020dvvenda: TFloatField
      FieldName = 'vvenda'
      Required = True
    end
    object R00020dvtotal: TFloatField
      FieldName = 'vtotal'
      Required = True
    end
    object R00020drecno: TIntegerField
      FieldName = 'recno'
      Required = True
    end
  end
  object frxR00020d: TfrxDBDataset
    Description = 'Pedido de Venda'
    UserName = 'R00020d'
    CloseDataSource = True
    FieldAliases.Strings = (
      'pedido=pedido'
      'material=material'
      'descricao=descricao'
      'qtd=qtd'
      'unidade=unidade'
      'vvenda=vvenda'
      'vtotal=vtotal'
      'recno=recno')
    DataSet = R00020d
    BCDToCurrency = False
    Left = 488
    Top = 464
  end
  object R00018f: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      
        'select f.recno, f.codigo, f.data, f.docto, f.historico, f.valor ' +
        '* -1 valor'
      '  from cota_desp cd'
      '       join fin_caixa f'
      '         on f.recno = cd.despesa'
      ' where cd.cotacao = :cotacao')
    Params = <
      item
        DataType = ftUnknown
        Name = 'cotacao'
        ParamType = ptUnknown
      end>
    Left = 608
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cotacao'
        ParamType = ptUnknown
      end>
    object R00018frecno: TIntegerField
      FieldName = 'recno'
      Required = True
    end
    object R00018fcodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object R00018fdata: TDateField
      FieldName = 'data'
      Required = True
    end
    object R00018fdocto: TStringField
      FieldName = 'docto'
    end
    object R00018fhistorico: TMemoField
      FieldName = 'historico'
      Required = True
      BlobType = ftMemo
    end
    object R00018fvalor: TFloatField
      FieldName = 'valor'
      ReadOnly = True
    end
  end
  object frxR00018f: TfrxDBDataset
    Description = 'Materiais da Proposta'
    UserName = 'R00018f'
    CloseDataSource = True
    FieldAliases.Strings = (
      'recno=recno'
      'codigo=codigo'
      'data=data'
      'docto=docto'
      'historico=historico'
      'valor=valor')
    DataSet = R00018f
    BCDToCurrency = False
    Left = 672
    Top = 368
  end
  object R00020e: TZQuery
    Connection = DM.Design
    SortedFields = 'historico'
    SQL.Strings = (
      
        'select pd.pedido, pd.despesa, pd.recno, f.data, f.docto, f.histo' +
        'rico, f.valor * -1 valor'
      '  from pedido_desp pd'
      '       join fin_caixa f'
      '         on f.recno = pd.despesa'
      ' where pd.pedido = :pedido')
    Params = <
      item
        DataType = ftString
        Name = 'pedido'
        ParamType = ptUnknown
        Value = '4517'
      end>
    IndexFieldNames = 'historico Asc'
    Left = 424
    Top = 512
    ParamData = <
      item
        DataType = ftString
        Name = 'pedido'
        ParamType = ptUnknown
        Value = '4517'
      end>
    object R00020epedido: TIntegerField
      FieldName = 'pedido'
      Required = True
    end
    object R00020edespesa: TIntegerField
      FieldName = 'despesa'
      Required = True
    end
    object R00020erecno: TIntegerField
      FieldName = 'recno'
      Required = True
    end
    object R00020edata: TDateField
      FieldName = 'data'
      Required = True
    end
    object R00020edocto: TStringField
      FieldName = 'docto'
    end
    object R00020ehistorico: TMemoField
      FieldName = 'historico'
      Required = True
      BlobType = ftMemo
    end
    object R00020evalor: TFloatField
      FieldName = 'valor'
      ReadOnly = True
    end
  end
  object frxR00020e: TfrxDBDataset
    Description = 'Pedido de Venda'
    UserName = 'R00020e'
    CloseDataSource = True
    FieldAliases.Strings = (
      'pedido=pedido'
      'despesa=despesa'
      'recno=recno'
      'data=data'
      'docto=docto'
      'historico=historico'
      'valor=valor')
    DataSet = R00020e
    BCDToCurrency = False
    Left = 488
    Top = 512
  end
  object R00021: TZQuery
    Connection = DM.Design
    SortedFields = 'emissao'
    SQL.Strings = (
      
        'select co.recno, co.servico, cos.descri serviconome, co.formato,' +
        ' cast(co.emissao as date) emissao,'
      
        '       co.volumes, co.peso, co.diametro, co.altura, co.largura, ' +
        'co.comprimento,'
      
        '       co.fator, co.valor, co.valorc, co.prazo, co.obs, co.descr' +
        'i, c.codigo,'
      
        '       c.empresa, c.nome_chave, c.cnpj, c.cpf, c.telefone, co.co' +
        'rreiovalor,'
      '       co.correiopeso, co.correiolido, co.status, co.rastreio'
      '  from correio co'
      '       join correioserv cos'
      '         on cos.servico = co.servico'
      '       join tbclientes c'
      '         on c.codigo = co.codigo'
      'where cast(co.emissao as date) between :de and :ate'
      '  and co.status = 3')
    Params = <
      item
        DataType = ftDate
        Name = 'de'
        ParamType = ptUnknown
        Value = '01/11/2019'
      end
      item
        DataType = ftDate
        Name = 'ate'
        ParamType = ptUnknown
        Value = '01/04/2020'
      end>
    IndexFieldNames = 'emissao Asc'
    Left = 424
    Top = 560
    ParamData = <
      item
        DataType = ftDate
        Name = 'de'
        ParamType = ptUnknown
        Value = '01/11/2019'
      end
      item
        DataType = ftDate
        Name = 'ate'
        ParamType = ptUnknown
        Value = '01/04/2020'
      end>
    object R00021recno: TIntegerField
      FieldName = 'recno'
      Required = True
    end
    object R00021servico: TStringField
      FieldName = 'servico'
      Required = True
      Size = 5
    end
    object R00021serviconome: TStringField
      FieldName = 'serviconome'
      Required = True
      Size = 60
    end
    object R00021formato: TIntegerField
      FieldName = 'formato'
      Required = True
    end
    object R00021volumes: TIntegerField
      FieldName = 'volumes'
      Required = True
    end
    object R00021peso: TFloatField
      FieldName = 'peso'
      Required = True
    end
    object R00021diametro: TFloatField
      FieldName = 'diametro'
      Required = True
    end
    object R00021altura: TFloatField
      FieldName = 'altura'
      Required = True
    end
    object R00021largura: TFloatField
      FieldName = 'largura'
      Required = True
    end
    object R00021comprimento: TFloatField
      FieldName = 'comprimento'
      Required = True
    end
    object R00021fator: TFloatField
      FieldName = 'fator'
      Required = True
    end
    object R00021valor: TFloatField
      FieldName = 'valor'
      Required = True
    end
    object R00021valorc: TFloatField
      FieldName = 'valorc'
      Required = True
    end
    object R00021prazo: TIntegerField
      FieldName = 'prazo'
    end
    object R00021obs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
    end
    object R00021descri: TStringField
      FieldName = 'descri'
      Size = 150
    end
    object R00021codigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object R00021empresa: TStringField
      FieldName = 'empresa'
      Size = 100
    end
    object R00021nome_chave: TStringField
      FieldName = 'nome_chave'
      Size = 45
    end
    object R00021cnpj: TStringField
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object R00021cpf: TStringField
      FieldName = 'cpf'
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object R00021telefone: TStringField
      FieldName = 'telefone'
      Size = 100
    end
    object R00021correiovalor: TFloatField
      FieldName = 'correiovalor'
      Required = True
    end
    object R00021correiopeso: TFloatField
      FieldName = 'correiopeso'
      Required = True
    end
    object R00021correiolido: TDateTimeField
      FieldName = 'correiolido'
    end
    object R00021status: TIntegerField
      FieldName = 'status'
      Required = True
    end
    object R00021rastreio: TStringField
      FieldName = 'rastreio'
      Size = 30
    end
    object R00021emissao: TDateField
      FieldName = 'emissao'
      ReadOnly = True
    end
  end
  object frxR00021: TfrxDBDataset
    Description = 'Correios'
    UserName = 'R00021'
    CloseDataSource = True
    FieldAliases.Strings = (
      'recno=recno'
      'servico=servico'
      'serviconome=serviconome'
      'formato=formato'
      'volumes=volumes'
      'peso=peso'
      'diametro=diametro'
      'altura=altura'
      'largura=largura'
      'comprimento=comprimento'
      'fator=fator'
      'valor=valor'
      'valorc=valorc'
      'prazo=prazo'
      'obs=obs'
      'descri=descri'
      'codigo=codigo'
      'empresa=empresa'
      'nome_chave=nome_chave'
      'cnpj=cnpj'
      'cpf=cpf'
      'telefone=telefone'
      'correiovalor=correiovalor'
      'correiopeso=correiopeso'
      'correiolido=correiolido'
      'status=status'
      'rastreio=rastreio'
      'emissao=emissao')
    DataSet = R00021
    BCDToCurrency = False
    Left = 488
    Top = 560
  end
  object R00014c: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      'select c.nome, c.celular, c.telefone, c.email, c.funcao'
      '  from labamostras_rel_contatos co'
      '      join clientes_contatos c'
      '        on c.cliente = co.cliente'
      '       and c.contato = co.contato'
      ' where co.laudo = :laudo'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'laudo'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    Left = 216
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'laudo'
        ParamType = ptUnknown
      end>
    object R00014cnome: TStringField
      FieldName = 'nome'
      Size = 150
    end
    object R00014cfuncao: TStringField
      FieldName = 'funcao'
      Size = 54
    end
    object R00014ctelefone: TStringField
      FieldName = 'telefone'
      EditMask = '(99) 9999-9999;0;'
      Size = 25
    end
    object R00014cemail: TStringField
      FieldName = 'email'
      Size = 150
    end
    object R00014ccelular: TStringField
      FieldName = 'celular'
      Size = 25
    end
  end
  object frxR00014c: TfrxDBDataset
    Description = 'Laudo'
    UserName = 'R00014c'
    CloseDataSource = True
    FieldAliases.Strings = (
      'nome=nome'
      'funcao=funcao'
      'telefone=telefone'
      'email=email')
    DataSet = R00014c
    BCDToCurrency = False
    Left = 280
    Top = 224
  end
  object R00018g: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      'select c.nome, c.celular, c.telefone, c.email'
      '  from cota_contatos co'
      '      join clientes_contatos  c'
      '        on c.cliente = co.cliente'
      '       and c.contato = co.contato'
      ' where co.cotacao = :cotacao')
    Params = <
      item
        DataType = ftUnknown
        Name = 'cotacao'
        ParamType = ptUnknown
      end>
    Left = 608
    Top = 416
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cotacao'
        ParamType = ptUnknown
      end>
    object R00018gnome: TStringField
      FieldName = 'nome'
      Size = 150
    end
    object R00018gcelular: TStringField
      FieldName = 'celular'
      EditMask = '(99) 9.9999-9999;0;'
      Size = 25
    end
    object R00018gtelefone: TStringField
      FieldName = 'telefone'
      EditMask = '(99) 9999-9999;0;'
      Size = 25
    end
    object R00018gemail: TStringField
      FieldName = 'email'
      Size = 150
    end
  end
  object frxDR00018g: TfrxDBDataset
    Description = 'Materiais da Proposta'
    UserName = 'R00018g'
    CloseDataSource = True
    FieldAliases.Strings = (
      'nome=nome'
      'celular=celular'
      'telefone=telefone'
      'email=email')
    DataSet = R00018g
    BCDToCurrency = False
    Left = 672
    Top = 416
  end
  object R00019b: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      'select c.nome, c.celular, c.telefone, c.email'
      '  from orca_contatos co'
      '      join clientes_contatos  c'
      '        on c.cliente = co.cliente'
      '       and c.contato = co.contato'
      ' where co.os = :os')
    Params = <
      item
        DataType = ftUnknown
        Name = 'os'
        ParamType = ptUnknown
      end>
    Left = 424
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'os'
        ParamType = ptUnknown
      end>
    object StringField16: TStringField
      FieldName = 'nome'
      Size = 150
    end
    object StringField20: TStringField
      FieldName = 'celular'
      EditMask = '(99) 9.9999-9999;0;'
      Size = 25
    end
    object StringField21: TStringField
      FieldName = 'telefone'
      EditMask = '(99) 9999-9999;0;'
      Size = 25
    end
    object StringField22: TStringField
      FieldName = 'email'
      Size = 150
    end
  end
  object frxR00019b: TfrxDBDataset
    Description = 'Contatos Nota de D'#233'bito'
    UserName = 'R00019b'
    CloseDataSource = True
    FieldAliases.Strings = (
      'nome=nome'
      'celular=celular'
      'telefone=telefone'
      'email=email')
    DataSet = R00019b
    BCDToCurrency = False
    Left = 488
    Top = 224
  end
  object R00022: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      'select 1')
    Params = <>
    Left = 424
    Top = 616
    object R00022column: TIntegerField
      FieldName = '?column?'
      ReadOnly = True
    end
  end
  object frxR00022: TfrxDBDataset
    UserName = 'R00022'
    CloseDataSource = True
    FieldAliases.Strings = (
      '?column?=?column?')
    DataSet = R00022
    BCDToCurrency = False
    Left = 488
    Top = 616
  end
end
