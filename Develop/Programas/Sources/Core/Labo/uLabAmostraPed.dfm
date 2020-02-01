inherited LabAmostraPed: TLabAmostraPed
  Caption = 'Amostras por Pedido'
  ClientHeight = 394
  Constraints.MinWidth = 634
  ExplicitWidth = 320
  ExplicitHeight = 433
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 367
    ExplicitTop = 367
  end
  inherited Panel1: TPanel
    inherited pctlFind: TPageControl
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 819
        ExplicitHeight = 75
        object Label18: TLabel [0]
          Left = 54
          Top = 3
          Width = 90
          Height = 15
          Caption = 'Vizualizar cliente:'
          Transparent = True
        end
        object Label3: TLabel [1]
          Left = 3
          Top = 3
          Width = 37
          Height = 15
          Caption = 'Pedido'
        end
        object ComboBox1: TComboBox
          Left = 54
          Top = 21
          Width = 264
          Height = 23
          DropDownCount = 30
          ItemHeight = 15
          TabOrder = 1
          OnChange = ComboBox1Change
          Items.Strings = (
            '<TODOS>'
            'JANEIRO'
            'FEVEREIRO'
            'MAR'#199'O'
            'ABRIL'
            'MAIO'
            'JUNHO'
            'JULHO'
            'AGOSTO'
            'SETEMBRO'
            'OUTUBRO'
            'NOVEMBRO'
            'DEZEMBRO')
        end
        object edPedido: TJvCalcEdit
          Left = 3
          Top = 21
          Width = 46
          Height = 23
          DecimalPlaces = 0
          DisplayFormat = '#'
          FormatOnEditing = True
          ShowButton = False
          TabOrder = 2
          DecimalPlacesAlwaysShown = False
          OnChange = edPedidoChange
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
    Height = 235
    ExplicitHeight = 235
    inherited PageControl1: TPageControl
      Height = 229
      ExplicitHeight = 229
      inherited TabSheet1: TTabSheet
        Caption = 'Pedidos'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 823
        ExplicitHeight = 199
        inherited DBGrid1: TDBGrid
          Height = 199
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
  inherited alDef: TActionList
    Left = 376
    Top = 248
  end
  inherited pmRel: TPopupMenu
    Left = 424
    Top = 248
  end
  inherited pmOrder: TPopupMenu
    Left = 474
    Top = 246
  end
  inherited alRunTime: TActionList
    Left = 538
    Top = 246
  end
  inherited DataSource1: TDataSource
    Left = 312
    Top = 248
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    AfterRefresh = IBrwSrcAfterRefresh
    SQL.Strings = (
      
        'select p.codigo, c.empresa, c.cnpj, c.cpf, c.email, c.telefone, ' +
        'ps.pedido, '
      
        '       s.codserv, s.descri, ps.qtd, ps.amostras, ps.recno, s.con' +
        'sumo '
      '  from pedido_serv ps'
      '       join pedido p'
      '         on p.recno = ps.pedido'
      '        and p.status = 50 '
      '       join servicos s'
      '         on s.codserv = ps.codserv'
      '        and s.vidraria > 0'
      '       join tbclientes c'
      '         on c.codigo = p.codigo'
      ' where ps.qtd <> ps.amostras')
    Left = 208
    Top = 248
    object IBrwSrcpedido: TIntegerField
      DisplayLabel = 'Pedido'
      FieldName = 'pedido'
      Required = True
    end
    object IBrwSrccodserv: TIntegerField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'codserv'
      Required = True
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 40
      FieldName = 'descri'
      Required = True
      Size = 80
    end
    object IBrwSrcqtd: TIntegerField
      DisplayLabel = 'Qtd'
      FieldName = 'qtd'
      Required = True
    end
    object IBrwSrcamostras: TIntegerField
      DisplayLabel = 'Amostras'
      FieldName = 'amostras'
      Required = True
    end
    object IBrwSrccodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo'
      Required = True
    end
    object IBrwSrcempresa: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 30
      FieldName = 'empresa'
      Size = 100
    end
    object IBrwSrccnpj: TStringField
      DisplayLabel = 'C.N.P.J.'
      DisplayWidth = 18
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object IBrwSrccpf: TStringField
      DisplayLabel = 'C.P.F.'
      DisplayWidth = 14
      FieldName = 'cpf'
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object IBrwSrcemail: TStringField
      DisplayLabel = 'E-mail'
      DisplayWidth = 25
      FieldName = 'email'
      Size = 100
    end
    object IBrwSrctelefone: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 25
      FieldName = 'telefone'
      Size = 100
    end
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
      Required = True
    end
    object IBrwSrcconsumo: TFloatField
      FieldName = 'consumo'
      Required = True
    end
  end
  inherited pmOpcao: TPopupMenu
    Left = 608
    Top = 248
  end
  inherited zIBrwSrc: TZUpdateSQL
    Left = 120
    Top = 248
  end
  object dsPedAmostras: TDataSource
    AutoEdit = False
    DataSet = qPedAmostras
    Left = 312
    Top = 304
  end
  object qPedAmostras: TZQuery
    Connection = DM.Design
    BeforeRefresh = qPedAmostrasBeforeRefresh
    UpdateObject = uPedAmostras
    AfterInsert = qPedAmostrasAfterInsert
    AfterPost = qPedAmostrasAfterPost
    AfterDelete = qPedAmostrasAfterDelete
    SQL.Strings = (
      
        'select p.pedido, p.amostra, p.codserv, p.consumo, p.recno, c.sal' +
        'do, c.comodato '
      '  from pedido_amostras p'
      '       join labamostras c'
      '         on c.recno = p.amostra'
      ' where p.pedido = :pedido'
      '   and p.codserv = :codserv')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codserv'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    Sequence = zPedAmostras
    SequenceField = 'recno'
    Left = 208
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codserv'
        ParamType = ptUnknown
      end>
    object qPedAmostraspedido: TIntegerField
      FieldName = 'pedido'
      Required = True
      Visible = False
    end
    object qPedAmostrasamostra: TIntegerField
      DisplayLabel = 'Amostra'
      FieldName = 'amostra'
      Required = True
    end
    object qPedAmostrascomodato: TIntegerField
      DisplayLabel = 'Etiqueta'
      FieldName = 'comodato'
    end
    object qPedAmostrascodserv: TIntegerField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'codserv'
      Required = True
      Visible = False
    end
    object qPedAmostrasconsumo: TFloatField
      DisplayLabel = 'Consumo'
      FieldName = 'consumo'
      Required = True
      DisplayFormat = ',0.###0'
    end
    object qPedAmostrassaldo: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'saldo'
      Visible = False
      DisplayFormat = ',0.###0'
    end
    object qPedAmostrasrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
      Required = True
    end
  end
  object uPedAmostras: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM pedido_amostras'
      'WHERE'
      '  pedido_amostras.pedido = :OLD_pedido AND'
      '  pedido_amostras.amostra = :OLD_amostra AND'
      '  pedido_amostras.codserv = :OLD_codserv')
    InsertSQL.Strings = (
      'INSERT INTO pedido_amostras'
      '  (pedido, amostra, codserv, recno, consumo)'
      'VALUES'
      '  (:pedido, :amostra, :codserv, :recno, :consumo)')
    ModifySQL.Strings = (
      'UPDATE pedido_amostras SET'
      '  pedido = :pedido,'
      '  amostra = :amostra,'
      '  codserv = :codserv,'
      '  consumo = :consumo'
      'WHERE'
      '  pedido_amostras.pedido = :OLD_pedido AND'
      '  pedido_amostras.amostra = :OLD_amostra AND'
      '  pedido_amostras.codserv = :OLD_codserv')
    UseSequenceFieldForRefreshSQL = False
    Left = 120
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'amostra'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codserv'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'consumo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_pedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_amostra'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_codserv'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end>
  end
  object zPedAmostras: TZSequence
    Connection = DM.Design
    SequenceName = 'public.pedido_amostras_recno_seq'
    Left = 32
    Top = 304
  end
end
