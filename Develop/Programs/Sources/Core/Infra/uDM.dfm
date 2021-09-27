object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 669
  Width = 871
  object Query: TZReadOnlyQuery
    Params = <>
    Left = 88
    Top = 104
  end
  object Design: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = True
    ClientCodepage = 'LATIN1'
    Properties.Strings = (
      'codepage=LATIN1'
      'controls_cp=GET_ACP'
      'AutoEncodeStrings=True')
    DesignConnection = True
    HostName = '127.0.0.1'
    Port = 5432
    Database = 'lorencini'
    User = 'postgres'
    Password = 'postgres.'
    Protocol = 'postgresql'
    LibraryLocation = 'D:\Lorencini\Lib\libpq.dll'
    Left = 88
    Top = 8
  end
  object qCate: TZQuery
    Connection = Design
    UpdateObject = uCate
    SQL.Strings = (
      'select *'
      '  from servicos_grupo')
    Params = <>
    Options = []
    Left = 232
    Top = 8
    object qCaterecno: TIntegerField
      DisplayLabel = 'Categoria'
      FieldName = 'recno'
    end
    object qCatedescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Required = True
      Size = 80
    end
  end
  object uCate: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM servicos_grupo'
      'WHERE'
      '  recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO servicos_grupo'
      '  (descri)'
      'VALUES'
      '  (:descri)')
    ModifySQL.Strings = (
      'UPDATE servicos_grupo SET'
      '  descri = :descri'
      'WHERE'
      '  recno = :OLD_recno')
    UseSequenceFieldForRefreshSQL = False
    Left = 232
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'descri'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_recno'
        ParamType = ptUnknown
      end>
  end
  object qNatu: TZQuery
    Connection = Design
    OnCalcFields = qNatuCalcFields
    UpdateObject = uNatu
    AfterInsert = qNatuAfterInsert
    SQL.Strings = (
      'select a.codserv, a.descri, a.un, a.valor,'
      '       a.tipo,    a.grupo, a.prnsecserv'
      '  from servicos a')
    Params = <>
    Options = []
    Left = 288
    Top = 8
    object qNatucategoria: TStringField
      DisplayLabel = 'Categoria'
      FieldKind = fkLookup
      FieldName = 'categoria'
      LookupDataSet = qCate
      LookupKeyFields = 'recno'
      LookupResultField = 'descri'
      KeyFields = 'grupo'
      Lookup = True
    end
    object qNatucodserv: TIntegerField
      DisplayLabel = 'Natureza'
      FieldName = 'codserv'
    end
    object qNatudescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Required = True
      Size = 80
    end
    object qNatuun: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'un'
      Required = True
      Size = 2
    end
    object qNatuun_descri: TStringField
      DisplayLabel = 'Unidade'
      FieldKind = fkLookup
      FieldName = 'un_descri'
      LookupDataSet = qUnidade
      LookupKeyFields = 'un'
      LookupResultField = 'descri'
      KeyFields = 'un'
      Visible = False
      Lookup = True
    end
    object qNatuvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Required = True
      currency = True
    end
    object qNatutipo: TIntegerField
      FieldName = 'tipo'
      Required = True
      Visible = False
    end
    object qNatutipo_desc: TStringField
      DisplayLabel = 'Tipo'
      FieldKind = fkCalculated
      FieldName = 'tipo_desc'
      Size = 15
      Calculated = True
    end
    object qNatugrupo: TIntegerField
      FieldName = 'grupo'
      Required = True
      Visible = False
    end
    object qNatuprnsecserv: TBooleanField
      DisplayLabel = 'Imprimir na Se'#231#227'o Servi'#231'os Executados'
      FieldName = 'prnsecserv'
      Visible = False
    end
  end
  object uNatu: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM servicos'
      'WHERE'
      '  codserv = :OLD_codserv')
    InsertSQL.Strings = (
      'INSERT INTO servicos'
      '  (descri, un, valor, grupo, tipo, prnsecserv)'
      'VALUES'
      '  (:descri, :un, :valor, :grupo, :tipo, :prnsecserv)')
    ModifySQL.Strings = (
      'UPDATE servicos SET'
      '  descri = :descri,'
      '  un = :un,'
      '  valor = :valor,'
      '  grupo = :grupo,'
      '  tipo = :tipo,'
      '  prnsecserv = :prnsecserv'
      'WHERE'
      '  codserv = :OLD_codserv')
    UseSequenceFieldForRefreshSQL = False
    BeforeInsertSQL = uNatuBeforeInsertSQL
    Left = 288
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'descri'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'un'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'grupo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prnsecserv'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_codserv'
        ParamType = ptUnknown
      end>
  end
  object qUnidade: TZQuery
    Connection = Design
    SQL.Strings = (
      'select un, descri from unidades')
    Params = <>
    Options = []
    Left = 362
    Top = 8
    object qUnidadeun: TStringField
      DisplayLabel = 'Unidade de Medida'
      FieldName = 'un'
      Required = True
      Size = 3
    end
    object qUnidadedescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Required = True
      Size = 100
    end
  end
  object qNatuDet: TZQuery
    Connection = Design
    SortedFields = 'descri'
    UpdateObject = uNatuDet
    SQL.Strings = (
      'select recno, codserv, descri '
      '  from servicos_det')
    Params = <>
    MasterFields = 'codserv'
    MasterSource = dsNatu
    LinkedFields = 'codserv'
    IndexFieldNames = 'descri Asc'
    Options = []
    Left = 432
    Top = 8
    object qNatuDetrecno: TIntegerField
      FieldName = 'recno'
      Visible = False
    end
    object qNatuDetcodserv: TIntegerField
      FieldName = 'codserv'
      Required = True
      Visible = False
    end
    object qNatuDetdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Required = True
      Size = 250
    end
  end
  object uNatuDet: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM servicos_det'
      'WHERE'
      '  codserv = :OLD_codserv')
    InsertSQL.Strings = (
      'INSERT INTO servicos_det'
      '  (codserv, descri)'
      'VALUES'
      '  (:codserv, :descri)')
    ModifySQL.Strings = (
      'UPDATE servicos_det SET'
      '  descri = :descri'
      'WHERE'
      '  codserv = :OLD_codserv')
    UseSequenceFieldForRefreshSQL = False
    Left = 432
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'descri'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_codserv'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codserv'
        ParamType = ptUnknown
      end>
  end
  object dsNatu: TDataSource
    AutoEdit = False
    DataSet = qNatu
    Left = 288
    Top = 104
  end
  object qVendedores: TZQuery
    Connection = Design
    SortedFields = 'NOME'
    Filter = 'ativo = true'
    UpdateObject = uVendedores
    AfterInsert = qVendedoresAfterInsert
    SQL.Strings = (
      
        'select idvendedor, nome, cpf, rg, cnpj, inscrestadual, cep, ende' +
        'reco, bairro, cidade, estado,'
      
        '       telefone, celular, comissao, ajudacusto, email, senha, ac' +
        'count username, ativo, recno'
      '  from tb_vendedores')
    Params = <>
    IndexFieldNames = 'NOME Asc'
    Options = []
    Left = 360
    Top = 160
    object qVendedoresidvendedor: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'idvendedor'
      ReadOnly = True
    end
    object qVendedoresativo: TBooleanField
      DisplayLabel = 'Ativo'
      FieldName = 'ativo'
    end
    object qVendedoresnome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 25
      FieldName = 'nome'
      Required = True
      Size = 100
    end
    object qVendedorescpf: TStringField
      DisplayLabel = 'CPF'
      DisplayWidth = 14
      FieldName = 'cpf'
      EditMask = '999.999.999-99;0;'
      Size = 100
    end
    object qVendedoresrg: TStringField
      DisplayLabel = 'RG'
      DisplayWidth = 10
      FieldName = 'rg'
      EditMask = '99.999.999-9;0;'
      Size = 100
    end
    object qVendedorescep: TStringField
      DisplayLabel = 'C.E.P.'
      DisplayWidth = 10
      FieldName = 'cep'
      Visible = False
      EditMask = '99999-999;1;'
      Size = 100
    end
    object qVendedoresendereco: TStringField
      DisplayLabel = 'Logradouro'
      DisplayWidth = 30
      FieldName = 'endereco'
      Visible = False
      Size = 100
    end
    object qVendedoresbairro: TStringField
      DisplayLabel = 'Bairro'
      DisplayWidth = 25
      FieldName = 'bairro'
      Visible = False
      Size = 100
    end
    object qVendedorescidade: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 30
      FieldName = 'cidade'
      Visible = False
      Size = 100
    end
    object qVendedoresestado: TStringField
      DisplayLabel = 'UF'
      DisplayWidth = 4
      FieldName = 'estado'
      Visible = False
      Size = 100
    end
    object qVendedorestelefone: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 15
      FieldName = 'telefone'
      Size = 100
    end
    object qVendedorescelular: TStringField
      DisplayLabel = 'Celular'
      DisplayWidth = 15
      FieldName = 'celular'
      Size = 100
    end
    object qVendedorescomissao: TFloatField
      DisplayLabel = 'Comiss'#227'o'
      FieldName = 'comissao'
      Visible = False
      DisplayFormat = ',0.#0%'
    end
    object qVendedoresajudacusto: TFloatField
      DisplayLabel = 'Ajuda de Custo'
      FieldName = 'ajudacusto'
      Visible = False
      DisplayFormat = ',0.#0'
      currency = True
    end
    object qVendedoresemail: TStringField
      DisplayLabel = 'E-Mail'
      DisplayWidth = 30
      FieldName = 'email'
      Size = 100
    end
    object qVendedorescnpj: TStringField
      DisplayLabel = 'C.N.P.J.'
      FieldName = 'cnpj'
      Visible = False
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object qVendedoresinscrestadual: TStringField
      DisplayLabel = 'Inscri'#231#227'o Estadual'
      DisplayWidth = 15
      FieldName = 'inscrestadual'
      Visible = False
      Size = 100
    end
  end
  object dsVendedores: TDataSource
    AutoEdit = False
    DataSet = qVendedores
    Left = 360
    Top = 256
  end
  object uVendedores: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM tb_vendedores'
      'WHERE'
      '  idvendedor = :OLD_idvendedor')
    InsertSQL.Strings = (
      'INSERT INTO tb_vendedores'
      '  (nome, cpf, rg, cnpj, inscrestadual, cep, endereco,'
      
        '   bairro, cidade, estado, telefone, celular, comissao, ajudacus' +
        'to,'
      '   email, senha, username, ativo)'
      'VALUES'
      '  (:nome, :cpf, :rg, :cnpj, :inscrestadual, :cep, :endereco, '
      
        '   :bairro, :cidade, :estado, :telefone, :celular, :comissao, :a' +
        'judacusto, '
      '   :email, :senha, :username, :ativo)')
    ModifySQL.Strings = (
      'UPDATE tb_vendedores SET'
      '  nome = :nome,'
      '  cpf = :cpf,'
      '  rg = :rg,'
      '  cnpj = :cnpj,'
      '  inscrestadual = :inscrestadual,'
      '  cep = :cep,'
      '  endereco = :endereco,'
      '  bairro = :bairro,'
      '  cidade = :cidade,'
      '  estado = :estado,'
      '  telefone = :telefone,'
      '  celular = :celular,'
      '  comissao = :comissao,'
      '  ajudacusto = :ajudacusto,'
      '  email = :email,'
      '  senha = :senha,'
      '  username = :username,'
      '  ativo = :ativo'
      'WHERE'
      '  idvendedor = :OLD_idvendedor')
    UseSequenceFieldForRefreshSQL = False
    Left = 360
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nome'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cpf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'rg'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'inscrestadual'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cep'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'endereco'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bairro'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cidade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'estado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'telefone'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'celular'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'comissao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ajudacusto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'email'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'senha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'username'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ativo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_idvendedor'
        ParamType = ptUnknown
      end>
  end
  object qAtividades: TZQuery
    Connection = Design
    SQL.Strings = (
      'select codativ, descri, iss '
      '  from atividades')
    Params = <>
    Options = []
    Left = 232
    Top = 304
    object qAtividadescodativ: TIntegerField
      DisplayLabel = 'Atividade'
      FieldName = 'codativ'
      Required = True
    end
    object qAtividadesdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Required = True
      Size = 60
    end
    object qAtividadesiss: TFloatField
      DisplayLabel = 'Al'#237'quota de ISS'
      FieldName = 'iss'
      Required = True
      DisplayFormat = ',0.#0%'
    end
  end
  object qFuncoes: TZQuery
    Connection = Design
    SortedFields = 'descricao'
    UpdateObject = uFuncoes
    SQL.Strings = (
      'select * '
      '  from tb_funcoes')
    Params = <>
    IndexFieldNames = 'descricao Asc'
    Options = []
    Left = 288
    Top = 304
    object qFuncoesativo: TBooleanField
      DisplayLabel = ' '
      FieldName = 'ativo'
      Required = True
      OnGetText = qFuncoesativoGetText
      OnSetText = qFuncoesativoSetText
    end
    object qFuncoesid: TIntegerField
      DisplayLabel = 'Fun'#231#227'o'
      FieldName = 'id'
    end
    object qFuncoesdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 25
      FieldName = 'descricao'
      Size = 100
    end
    object qFuncoestotal_horas_dia: TFloatField
      DisplayLabel = 'H. Dia Normal'
      FieldName = 'total_horas_dia'
      DisplayFormat = ',0.0'
    end
    object qFuncoesvlr_hora_normal: TFloatField
      DisplayLabel = 'Hora Normal'
      FieldName = 'vlr_hora_normal'
      Visible = False
      currency = True
    end
    object qFuncoesvlr_he_50: TFloatField
      DisplayLabel = 'Hora Extra 50%'
      FieldName = 'vlr_he_50'
      Visible = False
      currency = True
    end
    object qFuncoesvlr_he_100: TFloatField
      DisplayLabel = 'Hora Extra 50%'
      FieldName = 'vlr_he_100'
      Visible = False
      currency = True
    end
    object qFuncoesvlr_hr_adic_noturno: TFloatField
      DisplayLabel = 'Adicional Noturno'
      FieldName = 'vlr_hr_adic_noturno'
      Visible = False
      currency = True
    end
    object qFuncoesprojecao_hr_normal: TFloatField
      DisplayLabel = 'Proje'#231#227'o Hora Normal'
      FieldName = 'projecao_hr_normal'
      Visible = False
      DisplayFormat = ',0.0%'
    end
    object qFuncoesprojecao_he_50: TFloatField
      DisplayLabel = 'Proje'#231#227'o Hora Extra 50%'
      FieldName = 'projecao_he_50'
      Visible = False
      DisplayFormat = ',0.0%'
    end
    object qFuncoesprojecao_he_100: TFloatField
      DisplayLabel = 'Proje'#231#227'o Hora Extra 100%'
      FieldName = 'projecao_he_100'
      Visible = False
      DisplayFormat = ',0.0%'
    end
    object qFuncoesprojecao_adic_noturno: TFloatField
      DisplayLabel = 'Proje'#231#227'o Adicinal Noturno'
      FieldName = 'projecao_adic_noturno'
      Visible = False
      DisplayFormat = ',0.0%'
    end
    object qFuncoesvlr_outros_hora_normal: TFloatField
      DisplayLabel = 'Outros Hora Normal'
      FieldName = 'vlr_outros_hora_normal'
      Visible = False
      currency = True
    end
    object qFuncoesvlr_outros_he_50: TFloatField
      DisplayLabel = 'Outros Hora Extra 50%'
      FieldName = 'vlr_outros_he_50'
      Visible = False
      currency = True
    end
    object qFuncoesvlr_outros_he_100: TFloatField
      DisplayLabel = 'Outros Hora Extra 100%'
      FieldName = 'vlr_outros_he_100'
      Visible = False
      currency = True
    end
    object qFuncoesvlr_total_hora_normal: TFloatField
      DisplayLabel = 'Hora Normal'
      FieldName = 'vlr_total_hora_normal'
      currency = True
    end
    object qFuncoesvlr_total_he_50: TFloatField
      DisplayLabel = 'H. Extra 50%'
      FieldName = 'vlr_total_he_50'
      currency = True
    end
    object qFuncoesvlr_total_he_100: TFloatField
      DisplayLabel = 'H. Extra 100%'
      FieldName = 'vlr_total_he_100'
      currency = True
    end
    object qFuncoesvlr_total_adic_noturno: TFloatField
      DisplayLabel = 'Adicional Noturno'
      FieldName = 'vlr_total_adic_noturno'
      currency = True
    end
    object qFuncoesoutros_sdf: TFloatField
      FieldName = 'outros_sdf'
      Visible = False
    end
    object qFuncoesvlr_janta: TFloatField
      FieldName = 'vlr_janta'
      Visible = False
    end
    object qFuncoesrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
      Required = True
    end
  end
  object dsFuncoes: TDataSource
    AutoEdit = False
    DataSet = qFuncoes
    Left = 288
    Top = 400
  end
  object qART: TZQuery
    Connection = Design
    SQL.Strings = (
      'select * '
      '  from configuracoes_art')
    Params = <>
    Options = []
    Left = 360
    Top = 304
    object qARTart_ate: TFloatField
      DisplayLabel = 'At'#233
      DisplayWidth = 30
      FieldName = 'art_ate'
      currency = True
    end
    object qARTart_valor: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 30
      FieldName = 'art_valor'
      currency = True
    end
  end
  object dsART: TDataSource
    AutoEdit = False
    DataSet = qART
    Left = 360
    Top = 400
  end
  object uFuncoes: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM tb_funcoes'
      'WHERE'
      '  id = :OLD_id')
    InsertSQL.Strings = (
      'INSERT INTO tb_funcoes'
      '  (descricao, vlr_hora_normal, vlr_he_50, '
      '   vlr_he_100, total_horas_dia, vlr_hr_adic_noturno, '
      '   projecao_hr_normal, projecao_he_50, projecao_he_100, '
      '   vlr_outros_hora_normal, vlr_outros_he_50, vlr_outros_he_100, '
      '   projecao_adic_noturno, ativo)'
      'VALUES'
      
        '  (:descricao, :vlr_hora_normal, :vlr_he_50, :vlr_he_100, :total' +
        '_horas_dia, '
      
        '   :vlr_hr_adic_noturno, :projecao_hr_normal, :projecao_he_50, :' +
        'projecao_he_100, '
      
        '   :vlr_outros_hora_normal, :vlr_outros_he_50, :vlr_outros_he_10' +
        '0, :projecao_adic_noturno, '
      '  :ativo)')
    ModifySQL.Strings = (
      'UPDATE tb_funcoes SET'
      '  descricao = :descricao,'
      '  vlr_hora_normal = :vlr_hora_normal,'
      '  vlr_he_50 = :vlr_he_50,'
      '  vlr_he_100 = :vlr_he_100,'
      '  total_horas_dia = :total_horas_dia,'
      '  vlr_hr_adic_noturno = :vlr_hr_adic_noturno,'
      '  projecao_hr_normal = :projecao_hr_normal,'
      '  projecao_he_50 = :projecao_he_50,'
      '  projecao_he_100 = :projecao_he_100,'
      '  vlr_outros_hora_normal = :vlr_outros_hora_normal,'
      '  vlr_outros_he_50 = :vlr_outros_he_50,'
      '  vlr_outros_he_100 = :vlr_outros_he_100,'
      '  projecao_adic_noturno = :projecao_adic_noturno,'
      '  ativo = :ativo'
      'WHERE'
      '  id = :OLD_id')
    UseSequenceFieldForRefreshSQL = False
    Left = 288
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'descricao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vlr_hora_normal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vlr_he_50'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vlr_he_100'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'total_horas_dia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vlr_hr_adic_noturno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'projecao_hr_normal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'projecao_he_50'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'projecao_he_100'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vlr_outros_hora_normal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vlr_outros_he_50'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vlr_outros_he_100'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'projecao_adic_noturno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ativo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_id'
        ParamType = ptUnknown
      end>
  end
  object qProdutos: TZQuery
    Connection = Design
    UpdateObject = uProdutos
    SQL.Strings = (
      'select a.codigo,      a.descricao,   a.grupo,    b.descricao,'
      '       a.id_subgrupo, c.descricao,   a.vlrcusto, a.percentipi,'
      '       a.vlrvenda,    a.unidade, a.estoque,  a.desconto,'
      '       a.minimo,      a.percentlucro, a.recno'
      '  from produtos a'
      '       left join grupo_produto b'
      '         on b.codigo = a.grupo'
      '       left join (  '
      '            select a.codigo, b.id_codigo, b.descricao'
      '              from grupo_produto a'
      '                   left join grupo_produto_subgrupo b'
      '                     on b.id_grupo = a.codigo ) c'
      '         on c.codigo = a.grupo'
      '        and c.id_codigo = a.id_subgrupo')
    Params = <>
    Options = []
    Sequence = sProdutos
    SequenceField = 'recno'
    Left = 88
    Top = 160
    object qProdutoscodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qProdutosgrupo: TIntegerField
      FieldName = 'grupo'
      Visible = False
      OnChange = qProdutosgrupoChange
    end
    object qProdutosdescricao_1: TStringField
      DisplayLabel = 'Grupo'
      DisplayWidth = 20
      FieldName = 'descricao_1'
      Size = 100
    end
    object qProdutosid_subgrupo: TIntegerField
      FieldName = 'id_subgrupo'
      Visible = False
    end
    object qProdutosdescricao_2: TStringField
      DisplayLabel = 'Subgrupo'
      DisplayWidth = 25
      FieldName = 'descricao_2'
      Size = 100
    end
    object qProdutosdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 30
      FieldName = 'descricao'
      Size = 100
    end
    object qProdutosvlrcusto: TFloatField
      DisplayLabel = 'Custo'
      FieldName = 'vlrcusto'
      Visible = False
      currency = True
    end
    object qProdutospercentipi: TFloatField
      DisplayLabel = 'IPI'
      FieldName = 'percentipi'
      Visible = False
      DisplayFormat = ',0.#0%'
    end
    object qProdutospercentlucro: TFloatField
      DisplayLabel = 'Margem de Lucro'
      FieldName = 'percentlucro'
      Visible = False
      DisplayFormat = ',0.#0%'
    end
    object qProdutosvlrvenda: TFloatField
      DisplayLabel = 'Valor de Venda'
      FieldName = 'vlrvenda'
      Visible = False
      currency = True
    end
    object qProdutosunidade: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'unidade'
      Size = 2
    end
    object qProdutosestoque: TFloatField
      DisplayLabel = 'Qtd. em Estoque'
      FieldName = 'estoque'
      DisplayFormat = '#,0.###0'
    end
    object qProdutosdesconto: TFloatField
      DisplayLabel = 'Desconto M'#225'ximo'
      FieldName = 'desconto'
      Visible = False
      DisplayFormat = '#,0.#0%'
    end
    object qProdutosminimo: TFloatField
      DisplayLabel = 'Estoque M'#237'nimo'
      FieldName = 'minimo'
      DisplayFormat = '#,0.###0'
    end
    object qProdutosrecno: TIntegerField
      FieldName = 'recno'
      Required = True
    end
  end
  object uProdutos: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM produtos'
      'WHERE'
      ' codigo = :OLD_codigo')
    InsertSQL.Strings = (
      'INSERT INTO produtos'
      '  (grupo, id_subgrupo, descricao,'
      '   vlrcusto, percentipi, percentlucro, vlrvenda,'
      '   unidade, estoque, desconto, minimo, recno)'
      'VALUES'
      
        '  (:grupo, :id_subgrupo, :descricao, :vlrcusto, :percentipi, :pe' +
        'rcentlucro,'
      '   :vlrvenda, :unidade, :estoque, :desconto, :minimo, :recno)')
    ModifySQL.Strings = (
      'UPDATE produtos SET  '
      '  grupo = :grupo,'
      '  id_subgrupo = :id_subgrupo,'
      '  descricao = :descricao,'
      '  vlrcusto = :vlrcusto,'
      '  percentipi = :percentipi,'
      '  percentlucro = :percentlucro,'
      '  vlrvenda = :vlrvenda,'
      '  unidade = :unidade,'
      '  estoque = :estoque,'
      '  desconto = :desconto,'
      '  minimo = :minimo,'
      '  recno = :recno'
      'WHERE'
      '  codigo = :OLD_codigo')
    UseSequenceFieldForRefreshSQL = False
    Left = 88
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'grupo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_subgrupo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'descricao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vlrcusto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'percentipi'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'percentlucro'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vlrvenda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'unidade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'estoque'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'desconto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'minimo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_codigo'
        ParamType = ptUnknown
      end>
  end
  object dsProdutos: TDataSource
    AutoEdit = False
    DataSet = qProdutos
    Left = 88
    Top = 256
  end
  object qGrupos: TZQuery
    Connection = Design
    SortedFields = 'descricao'
    UpdateObject = uGrupos
    SQL.Strings = (
      'select * '
      '  from grupo_produto')
    Params = <>
    IndexFieldNames = 'descricao Asc'
    Options = [doAlwaysDetailResync]
    Left = 88
    Top = 304
    object qGruposcodigo: TIntegerField
      DisplayLabel = 'Grupo'
      FieldName = 'codigo'
      Required = True
    end
    object qGruposdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 30
      FieldName = 'descricao'
      Size = 100
    end
  end
  object dsGrupos: TDataSource
    AutoEdit = False
    DataSet = qGrupos
    Left = 88
    Top = 400
  end
  object qSGrupos: TZQuery
    Connection = Design
    SortedFields = 'descricao'
    UpdateObject = uSGrupos
    SQL.Strings = (
      'select * '
      '  from grupo_produto_subgrupo')
    Params = <>
    MasterFields = 'codigo'
    MasterSource = dsGrupos
    LinkedFields = 'id_grupo'
    IndexFieldNames = 'descricao Asc'
    Options = []
    Left = 24
    Top = 304
    object qSGruposid_grupo: TIntegerField
      DisplayLabel = 'Grupo'
      FieldName = 'id_grupo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object qSGruposid_codigo: TIntegerField
      DisplayLabel = 'Subgrupo'
      DisplayWidth = 5
      FieldName = 'id_codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qSGruposdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 30
      FieldName = 'descricao'
      Size = 100
    end
  end
  object dsSGrupos: TDataSource
    AutoEdit = False
    DataSet = qSGrupos
    Left = 24
    Top = 400
  end
  object uSGrupos: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM grupo_produto_subgrupo'
      'WHERE'
      '  id_codigo = :OLD_id_codigo AND'
      '  id_grupo = :OLD_id_grupo')
    InsertSQL.Strings = (
      'INSERT INTO grupo_produto_subgrupo'
      '  (id_codigo, id_grupo, descricao)'
      'VALUES'
      '  (:id_codigo, :id_grupo, :descricao)')
    ModifySQL.Strings = (
      'UPDATE grupo_produto_subgrupo SET'
      '  id_codigo = :id_codigo,'
      '  id_grupo = :id_grupo,'
      '  descricao = :descricao'
      'WHERE'
      '  id_codigo = :OLD_id_codigo AND'
      '  id_grupo = :OLD_id_grupo')
    UseSequenceFieldForRefreshSQL = False
    BeforeInsertSQL = uSGruposBeforeInsertSQL
    Left = 24
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_grupo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'descricao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_id_codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_id_grupo'
        ParamType = ptUnknown
      end>
  end
  object uGrupos: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM grupo_produto'
      'WHERE'
      '  codigo = :OLD_codigo')
    InsertSQL.Strings = (
      'INSERT INTO grupo_produto'
      '  (codigo, descricao)'
      'VALUES'
      '  (:codigo, :descricao)')
    ModifySQL.Strings = (
      'UPDATE grupo_produto SET'
      '  codigo = :codigo,'
      '  descricao = :descricao'
      'WHERE'
      '  codigo = :OLD_codigo')
    UseSequenceFieldForRefreshSQL = False
    Left = 88
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'descricao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_codigo'
        ParamType = ptUnknown
      end>
  end
  object dsUnidade: TDataSource
    AutoEdit = False
    DataSet = qUnidade
    Left = 362
    Top = 96
  end
  object qSysReports: TZQuery
    Connection = Design
    SortedFields = 'descri'
    AfterScroll = qSysReportsAfterScroll
    UpdateObject = uSysReports
    SQL.Strings = (
      'select a.report, a.descri, a.form, b.descri, a.recno'
      '  from sys_reports a'
      '       left join sys_forms b'
      '         on b.form = a.form')
    Params = <>
    IndexFieldNames = 'descri Asc'
    Options = []
    Left = 288
    Top = 456
    object qSysReportsreport: TIntegerField
      DisplayLabel = 'Relat'#243'rio'
      FieldName = 'report'
      Required = True
    end
    object qSysReportsdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Required = True
      Size = 60
    end
    object qSysReportsform: TStringField
      DisplayLabel = 'Filtros'
      FieldName = 'form'
      OnChange = qSysReportsformChange
      Size = 60
    end
    object qSysReportsdescri_1: TStringField
      DisplayLabel = 'Filtro - Descri'#231#227'o'
      FieldName = 'descri_1'
      Size = 60
    end
  end
  object uSysReports: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM sys_reports'
      'WHERE'
      '  report = :OLD_report')
    InsertSQL.Strings = (
      'INSERT INTO sys_reports'
      '  (descri, form)'
      'VALUES'
      '  (:descri, :form)')
    ModifySQL.Strings = (
      'UPDATE sys_reports SET'
      '  descri = :descri,'
      '  form = :form'
      'WHERE'
      '  report = :OLD_report')
    UseSequenceFieldForRefreshSQL = False
    Left = 288
    Top = 504
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'descri'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'form'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_report'
        ParamType = ptUnknown
      end>
  end
  object dsSysReports: TDataSource
    AutoEdit = False
    DataSet = qSysReports
    Left = 288
    Top = 552
  end
  object qForn: TZQuery
    Connection = Design
    SortedFields = 'nome_chave'
    UpdateObject = uForn
    AfterInsert = qFornAfterInsert
    SQL.Strings = (
      'select *'
      '  from fornecedores')
    Params = <>
    IndexFieldNames = 'nome_chave Asc'
    Options = []
    Sequence = sForn
    SequenceField = 'codigo'
    Left = 360
    Top = 456
    object qForncodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo'
    end
    object qFornempresa: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'empresa'
      Required = True
      Size = 60
    end
    object qFornnome_chave: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'nome_chave'
      Size = 60
    end
    object qFornendereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'endereco'
      Visible = False
      Size = 60
    end
    object qFornbairro: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'bairro'
      Visible = False
      Size = 50
    end
    object qForncep: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'cep'
      Visible = False
      EditMask = '99999-999;0;'
      Size = 8
    end
    object qForncidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cidade'
      Visible = False
      Size = 50
    end
    object qFornestado: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'estado'
      Visible = False
      Size = 2
    end
    object qForncnpj: TStringField
      DisplayLabel = 'C.N.P.J'
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object qForninscricao: TStringField
      DisplayLabel = 'IE'
      FieldName = 'inscricao'
      Visible = False
    end
    object qForntelefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      Size = 50
    end
    object qFornfax: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'fax'
      Visible = False
      Size = 50
    end
    object qFornwebsite: TStringField
      DisplayLabel = 'P'#225'gina Internet'
      FieldName = 'website'
      Size = 50
    end
    object qFornemail: TStringField
      DisplayLabel = 'Email'
      FieldName = 'email'
      Size = 50
    end
    object qFornsituacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'situacao'
      Visible = False
      Size = 50
    end
    object qFornobservacao: TMemoField
      DisplayLabel = 'Obs'
      FieldName = 'observacao'
      Visible = False
      BlobType = ftMemo
    end
    object qForndtcadastro: TDateField
      DisplayLabel = 'Cadastro'
      FieldName = 'dtcadastro'
      Visible = False
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qFornrestrmotiv: TMemoField
      DisplayLabel = 'Motivo'
      FieldName = 'restrmotiv'
      Visible = False
      BlobType = ftMemo
    end
    object qFornrestricao: TBooleanField
      DisplayLabel = 'Restri'#231#227'o'
      FieldName = 'restricao'
      Visible = False
    end
  end
  object dsForn: TDataSource
    AutoEdit = False
    DataSet = qForn
    Left = 360
    Top = 552
  end
  object uForn: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM fornecedores'
      'WHERE'
      '  codigo = :OLD_codigo')
    InsertSQL.Strings = (
      'INSERT INTO fornecedores'
      
        '  (empresa, nome_chave, endereco, bairro, cep, cidade, estado, c' +
        'npj, inscricao, '
      
        '   telefone, fax, website, email, situacao, observacao, dtcadast' +
        'ro, restrmotiv, '
      '   restricao, codigo)'
      'VALUES'
      
        '  (:empresa, :nome_chave, :endereco, :bairro, :cep, :cidade, :es' +
        'tado, :cnpj, :inscricao,'
      
        '   :telefone, :fax, :website, :email, :situacao, :observacao, :d' +
        'tcadastro, :restrmotiv,'
      '   :restricao, :codigo)')
    ModifySQL.Strings = (
      'UPDATE fornecedores SET'
      '  empresa = :empresa,'
      '  nome_chave = :nome_chave,'
      '  endereco = :endereco,'
      '  bairro = :bairro,'
      '  cep = :cep,'
      '  cidade = :cidade,'
      '  estado = :estado,'
      '  cnpj = :cnpj,'
      '  inscricao = :inscricao,'
      '  telefone = :telefone,'
      '  fax = :fax,'
      '  website = :website,'
      '  email = :email,'
      '  situacao = :situacao,'
      '  observacao = :observacao,'
      '  dtcadastro = :dtcadastro,'
      '  restrmotiv = :restrmotiv,'
      '  restricao = :restricao'
      'WHERE'
      '  codigo = :OLD_codigo')
    UseSequenceFieldForRefreshSQL = False
    Left = 360
    Top = 504
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nome_chave'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'endereco'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bairro'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cep'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cidade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'estado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'inscricao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'telefone'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fax'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'website'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'email'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'situacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'observacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtcadastro'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'restrmotiv'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'restricao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
  end
  object qFornProd: TZQuery
    Connection = Design
    SortedFields = 'descricao'
    UpdateObject = uFornProd
    AfterInsert = qFornAfterInsert
    SQL.Strings = (
      'select a.id_fornecedor, b.empresa, b.nome_chave, b.cnpj,'
      '       a.id_produto, c.descricao'
      '  from fornecedores_produtos a'
      '       join fornecedores b'
      '         on b.codigo = a.id_fornecedor'
      '       join produtos c'
      #9' on c.codigo = a.id_produto')
    Params = <>
    MasterFields = 'codigo'
    MasterSource = dsForn
    LinkedFields = 'id_fornecedor'
    IndexFieldNames = 'descricao Asc'
    Options = []
    Left = 424
    Top = 456
    object qFornProdid_fornecedor: TIntegerField
      DisplayLabel = 'Fornecedor'
      FieldName = 'id_fornecedor'
      Required = True
    end
    object qFornProdempresa: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      DisplayWidth = 30
      FieldName = 'empresa'
      Required = True
      Size = 60
    end
    object qFornProdnome_chave: TStringField
      DisplayLabel = 'Nome Fantasia'
      DisplayWidth = 20
      FieldName = 'nome_chave'
      Size = 60
    end
    object qFornProdcnpj: TStringField
      DisplayLabel = 'C.N.P.J.'
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object qFornProdid_produto: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'id_produto'
      Required = True
    end
    object qFornProddescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      ReadOnly = True
      Size = 100
    end
  end
  object dsFornProd: TDataSource
    AutoEdit = False
    DataSet = qFornProd
    Left = 424
    Top = 552
  end
  object uFornProd: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM fornecedores_produtos'
      'WHERE'
      '  id_fornecedor = :OLD_id_fornecedor AND'
      '  id_produto = :OLD_id_produto')
    InsertSQL.Strings = (
      'INSERT INTO fornecedores_produtos'
      '  (id_fornecedor, id_produto)'
      'VALUES'
      '  (:id_fornecedor, :id_produto)')
    UseSequenceFieldForRefreshSQL = False
    Left = 424
    Top = 504
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_fornecedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_produto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_id_fornecedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_id_produto'
        ParamType = ptUnknown
      end>
  end
  object SQLMonitor: TZSQLMonitor
    AutoSave = True
    MaxTraceCount = 100
    Left = 88
    Top = 56
  end
  object SQLProcessor: TZSQLProcessor
    Params = <>
    Connection = Design
    Delimiter = ';'
    Left = 96
    Top = 608
  end
  object qSysFormRpt: TZQuery
    Connection = Design
    SortedFields = 'descri'
    UpdateObject = uSysFormRpt
    AfterInsert = qSysFormRptAfterInsert
    SQL.Strings = (
      'select fr.form, f.descri, fr.report, fr.ordem,'
      '       fr.recno '
      '  from sys_forms_rpt fr'
      '       join sys_forms f'
      '         on f.form = fr.form'
      ' where fr.report = :rpt')
    Params = <
      item
        DataType = ftUnknown
        Name = 'rpt'
        ParamType = ptUnknown
      end>
    IndexFieldNames = 'descri Asc'
    Options = []
    Sequence = sSysFormRpt
    SequenceField = 'recno'
    Left = 176
    Top = 456
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rpt'
        ParamType = ptUnknown
      end>
    object qSysFormRptform: TStringField
      DisplayLabel = 'Formul'#225'rio'
      FieldName = 'form'
      Required = True
      Size = 60
    end
    object qSysFormRptdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Size = 60
    end
    object qSysFormRptordem: TIntegerField
      DisplayLabel = 'Ordem'
      FieldName = 'ordem'
    end
    object qSysFormRptreport: TIntegerField
      DisplayLabel = 'Relat'#243'rio'
      FieldName = 'report'
      Required = True
      Visible = False
    end
    object qSysFormRptrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
      Required = True
    end
  end
  object uSysFormRpt: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM sys_forms_rpt'
      'WHERE'
      '  sys_forms_rpt.form = :OLD_form AND'
      '  sys_forms_rpt.report = :OLD_report')
    InsertSQL.Strings = (
      'INSERT INTO sys_forms_rpt'
      '  (form, report, ordem, recno)'
      'VALUES'
      '  (:form, :report, :ordem, :recno)')
    ModifySQL.Strings = (
      'UPDATE sys_forms_rpt SET'
      '  form = :form,'
      '  report = :report,'
      '  ordem = :ordem, '
      '  recno = :recno'
      'WHERE'
      '  sys_forms_rpt.form = :OLD_form AND'
      '  sys_forms_rpt.report = :OLD_report')
    UseSequenceFieldForRefreshSQL = False
    Left = 176
    Top = 504
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'form'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'report'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ordem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_form'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_report'
        ParamType = ptUnknown
      end>
  end
  object dsqSysFormRpt: TDataSource
    AutoEdit = False
    DataSet = qSysFormRpt
    Left = 176
    Top = 552
  end
  object sSysFormRpt: TZSequence
    Connection = Design
    SequenceName = 'public.sys_forms_rpt_recno_seq'
    Left = 216
    Top = 608
  end
  object sForn: TZSequence
    Connection = Design
    SequenceName = 'public.fornecedores_codigo_seq'
    Left = 360
    Top = 608
  end
  object sProdutos: TZSequence
    Connection = Design
    SequenceName = 'public.produtos_recno_seq'
    Left = 152
    Top = 256
  end
  object Tasks: TTimer
    Enabled = False
    OnTimer = TasksTimer
    Left = 24
    Top = 472
  end
end
