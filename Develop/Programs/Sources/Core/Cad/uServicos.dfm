inherited Servicos: TServicos
  Caption = 'Cadastro de Servi'#231'os'
  ClientHeight = 569
  Constraints.MinWidth = 851
  ExplicitHeight = 608
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 542
    ExplicitTop = 542
  end
  inherited Panel1: TPanel
    inherited pctlFind: TPageControl
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 819
        ExplicitHeight = 75
        object Label1: TLabel [0]
          Left = 3
          Top = 8
          Width = 51
          Height = 15
          Caption = 'Categoria'
        end
        object Label3: TLabel [1]
          Left = 293
          Top = 8
          Width = 47
          Height = 15
          Caption = 'Natureza'
        end
        object Label4: TLabel [2]
          Left = 389
          Top = 8
          Width = 40
          Height = 15
          Caption = 'Vidraria'
        end
        object cbCat: TComboBox
          Left = 3
          Top = 29
          Width = 280
          Height = 23
          Style = csDropDownList
          ItemHeight = 15
          TabOrder = 1
          OnChange = cbCatChange
        end
        object edServico: TJvCalcEdit
          Left = 291
          Top = 29
          Width = 91
          Height = 23
          DisplayFormat = '#'
          ShowButton = False
          TabOrder = 2
          DecimalPlacesAlwaysShown = False
          OnChange = edServicoChange
        end
        object cbVidraria: TComboBox
          Left = 389
          Top = 29
          Width = 104
          Height = 23
          Style = csDropDownList
          ItemHeight = 15
          ItemIndex = 3
          TabOrder = 3
          Text = 'Sem Filtro'
          OnChange = cbVidrariaChange
          Items.Strings = (
            'Nenhuma'
            'Frasco'
            'Seringa'
            'Sem Filtro')
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 819
        ExplicitHeight = 75
      end
    end
  end
  inherited Panel2: TPanel
    Height = 410
    ExplicitHeight = 410
    inherited PageControl1: TPageControl
      Height = 404
      ExplicitHeight = 404
      inherited TabSheet1: TTabSheet
        Caption = 'Naturezas'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 823
        ExplicitHeight = 374
        inherited DBGrid1: TDBGrid
          Height = 368
        end
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    inherited ToolBar1: TToolBar
      inherited ToolButton2: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton5: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton9: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton6: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton1: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton8: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton3: TToolButton
        ExplicitWidth = 32
      end
      inherited tbOrder: TToolButton
        ExplicitWidth = 76
      end
      inherited tbReport: TToolButton
        ExplicitWidth = 32
      end
      inherited tbOpcao: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton10: TToolButton
        ExplicitWidth = 32
      end
    end
  end
  inherited DataSource1: TDataSource
    Left = 336
    Top = 200
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    BeforeOpen = IBrwSrcBeforeOpen
    AfterOpen = IBrwSrcAfterOpen
    AfterScroll = IBrwSrcAfterScroll
    OnCalcFields = IBrwSrcCalcFields
    AfterInsert = IBrwSrcAfterInsert
    SQL.Strings = (
      'select a.codserv, a.descri, a.un, a.valor, '
      '       a.tipo,    a.grupo,  b.descri, a.prnsecserv, a.recno,'
      '       a.consumo, a.vidraria, r.descri recipiente'
      '  from servicos a'
      '       join servicos_grupo b'
      '         on b.recno = a.grupo'
      '       left join labtipo_recipiente r'
      '         on r.recno = a.vidraria')
    Sequence = sBrwSrc
    SequenceField = 'recno'
    Left = 264
    Top = 200
    object IBrwSrcdescri_1: TStringField
      DisplayLabel = 'Catagoria'
      DisplayWidth = 30
      FieldName = 'descri_1'
      Size = 80
    end
    object IBrwSrccodserv: TIntegerField
      DisplayLabel = 'Natureza'
      FieldName = 'codserv'
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Required = True
      Size = 80
    end
    object IBrwSrcun: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'un'
      Required = True
      Size = 2
    end
    object IBrwSrcvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Required = True
      currency = True
    end
    object IBrwSrctipo: TIntegerField
      FieldName = 'tipo'
      Required = True
      Visible = False
    end
    object IBrwSrctipo_desc: TStringField
      DisplayLabel = 'Tipo'
      FieldKind = fkCalculated
      FieldName = 'tipo_desc'
      Size = 15
      Calculated = True
    end
    object IBrwSrcgrupo: TIntegerField
      FieldName = 'grupo'
      Required = True
      Visible = False
    end
    object IBrwSrcprnsecserv: TBooleanField
      DisplayLabel = 'Imprimir na Se'#231#227'o Servi'#231'os Executados'
      FieldName = 'prnsecserv'
      Visible = False
    end
    object IBrwSrcrecno: TIntegerField
      FieldName = 'recno'
      Required = True
      Visible = False
    end
    object IBrwSrcconsumo: TFloatField
      DisplayLabel = 'Consumo'
      FieldName = 'consumo'
      Required = True
      DisplayFormat = ',0.####0 ml'
    end
    object IBrwSrcvidraria: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Vidraria'
      FieldName = 'vidraria'
      Visible = False
      OnChange = IBrwSrcvidrariaChange
    end
    object IBrwSrcrecipiente: TStringField
      DisplayLabel = 'Recipiente'
      FieldName = 'recipiente'
      Size = 60
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM servicos'
      'WHERE'
      '  servicos.codserv = :OLD_codserv')
    InsertSQL.Strings = (
      'INSERT INTO servicos'
      
        '  (descri, un, valor, tipo, grupo, recno, prnsecserv, consumo, v' +
        'idraria)'
      'VALUES'
      
        '  (:descri, :un, :valor, :tipo, :grupo, :recno, :prnsecserv, :co' +
        'nsumo, :vidraria)')
    ModifySQL.Strings = (
      'UPDATE servicos SET'
      '  descri = :descri,'
      '  un = :un,                           '
      '  valor = :valor,'
      '  tipo = :tipo,'
      '  grupo = :grupo,'
      '  recno = :recno,'
      '  prnsecserv = :prnsecserv,'
      '  consumo = :consumo,'
      '  vidraria = :vidraria'
      'WHERE'
      '  servicos.codserv = :OLD_codserv')
    Left = 184
    Top = 200
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
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'grupo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prnsecserv'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'consumo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vidraria'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_codserv'
        ParamType = ptUnknown
      end>
  end
  object ZUpdateSQL1: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM servicos'
      'WHERE'
      '  codserv = :OLD_codserv')
    InsertSQL.Strings = (
      'INSERT INTO servicos'
      '  (descri, un, valor, grupo, tipo)'
      'VALUES'
      '  (:descri, :un, :valor, :grupo, :tipo)')
    ModifySQL.Strings = (
      'UPDATE servicos SET'
      '  descri = :descri,'
      '  un = :un,'
      '  valor = :valor,'
      '  grupo = :grupo,'
      '  tipo = :tipo'
      'WHERE'
      '  codserv = :OLD_codserv')
    UseSequenceFieldForRefreshSQL = False
    Left = 184
    Top = 256
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
        Name = 'OLD_codserv'
        ParamType = ptUnknown
      end>
  end
  object qCate: TZQuery
    Connection = DM.Design
    SortedFields = 'descri'
    AfterOpen = qCateAfterOpen
    UpdateObject = ZUpdateSQL1
    SQL.Strings = (
      'select recno, descri '
      '  from servicos_grupo ')
    Params = <>
    FetchRow = 50
    IndexFieldNames = 'descri Asc'
    Left = 264
    Top = 256
    object qCaterecno: TIntegerField
      FieldName = 'recno'
      Required = True
    end
    object qCatedescri: TStringField
      FieldName = 'descri'
      Required = True
      Size = 80
    end
  end
  object qNatDet: TZQuery
    Connection = DM.Design
    SortedFields = 'descri'
    UpdateObject = zNatDet
    AfterInsert = qNatDetAfterInsert
    SQL.Strings = (
      'select codserv, recno, descri'
      '  from servicos_det'
      ' where codserv = :servico ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'servico'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    IndexFieldNames = 'descri Asc'
    Sequence = sNatDet
    SequenceField = 'recno'
    Left = 264
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'servico'
        ParamType = ptUnknown
      end>
    object qNatDetcodserv: TIntegerField
      FieldName = 'codserv'
      Visible = False
    end
    object qNatDetrecno: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'recno'
      Required = True
    end
    object qNatDetdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 50
      FieldName = 'descri'
      Required = True
      Size = 250
    end
  end
  object sBrwSrc: TZSequence
    Connection = DM.Design
    SequenceName = 'public.servicos_recno_seq'
    Left = 112
    Top = 200
  end
  object zNatDet: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM servicos_det'
      'WHERE'
      '  servicos_det.codserv = :OLD_codserv AND'
      '  servicos_det.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO servicos_det'
      '  (codserv, recno, descri)'
      'VALUES'
      '  (:codserv, :recno, :descri)')
    ModifySQL.Strings = (
      'UPDATE servicos_det SET'
      '  codserv = :codserv,'
      '  recno = :recno,'
      '  descri = :descri'
      'WHERE'
      '  servicos_det.codserv = :OLD_codserv AND'
      '  servicos_det.recno = :OLD_recno')
    UseSequenceFieldForRefreshSQL = False
    Left = 184
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codserv'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
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
        Name = 'OLD_recno'
        ParamType = ptUnknown
      end>
  end
  object sNatDet: TZSequence
    Connection = DM.Design
    SequenceName = 'public.servicos_det_recno_seq'
    Left = 112
    Top = 304
  end
  object qUnidade: TZQuery
    SQL.Strings = (
      'select un, descri from unidades')
    Params = <>
    Options = []
    Left = 266
    Top = 360
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
  object qTipoLaudo: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      'select r.recno, r.descri, r.ativo'
      '  from labrel r'
      ' order by r.descri')
    Params = <>
    Left = 264
    Top = 408
    object qTipoLaudorecno: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'recno'
      Required = True
    end
    object qTipoLaudodescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Required = True
      Size = 30
    end
  end
  object qTipoLaudoServ: TZQuery
    Connection = DM.Design
    AfterInsert = qTipoLaudoServAfterInsert
    SQL.Strings = (
      'select relato_recno, codserv, recno '
      '  from labrel_serv'
      ' where codserv = :servico'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'servico'
        ParamType = ptUnknown
      end>
    Left = 264
    Top = 456
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'servico'
        ParamType = ptUnknown
      end>
    object qTipoLaudoServrelato_recno: TIntegerField
      FieldName = 'relato_recno'
      Required = True
    end
    object qTipoLaudoServrecno: TIntegerField
      FieldName = 'recno'
      Required = True
    end
    object qTipoLaudoServcodserv: TIntegerField
      FieldName = 'codserv'
      Required = True
    end
  end
end
