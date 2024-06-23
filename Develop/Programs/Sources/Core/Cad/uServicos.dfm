inherited Servicos: TServicos
  Margins.Left = 6
  Margins.Top = 6
  Margins.Right = 6
  Margins.Bottom = 6
  Caption = 'Cadastro de Servi'#231'os'
  ClientHeight = 711
  ClientWidth = 1308
  Constraints.MinWidth = 1064
  Font.Height = -24
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1326
  ExplicitHeight = 758
  PixelsPerInch = 120
  TextHeight = 32
  inherited StatusBar1: TStatusBar
    Left = 5
    Top = 669
    Width = 1298
    Height = 37
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Panels = <
      item
        Alignment = taCenter
        Bevel = pbNone
        Text = 'Registro'
        Width = 79
      end
      item
        Alignment = taCenter
        Width = 94
      end
      item
        Alignment = taCenter
        Bevel = pbNone
        Text = 'de'
        Width = 48
      end
      item
        Alignment = taCenter
        Width = 94
      end
      item
        Width = 79
      end>
    ExplicitLeft = 5
    ExplicitTop = 669
    ExplicitWidth = 1298
    ExplicitHeight = 37
  end
  inherited Panel1: TPanel
    Top = 49
    Width = 1308
    Height = 132
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Padding.Left = 8
    Padding.Right = 8
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 58
    ExplicitWidth = 1308
    ExplicitHeight = 132
    inherited pctlFind: TPageControl
      Left = 8
      Width = 1292
      Height = 132
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitLeft = 8
      ExplicitWidth = 1292
      ExplicitHeight = 132
      inherited tsQuery: TTabSheet
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitWidth = 1284
        ExplicitHeight = 122
        inherited BitBtn2: TBitBtn
          Left = 1126
          Top = 16
          Width = 153
          Height = 71
          Margins.Left = 5
          Margins.Top = 16
          Margins.Right = 5
          Margins.Bottom = 35
          ExplicitLeft = 1125
          ExplicitTop = 16
          ExplicitWidth = 153
          ExplicitHeight = 69
        end
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 354
          Height = 122
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitHeight = 120
          object Label1: TLabel
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 102
            Height = 32
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alTop
            Caption = 'Categoria'
          end
          object cbCat: TComboBox
            AlignWithMargins = True
            Left = 4
            Top = 30
            Width = 346
            Height = 23
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alTop
            Style = csDropDownList
            TabOrder = 0
            OnChange = cbCatChange
          end
        end
        object Panel4: TPanel
          Left = 354
          Top = 0
          Width = 137
          Height = 122
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          ExplicitHeight = 120
          object Label3: TLabel
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 129
            Height = 32
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alTop
            Caption = 'Servi'#231'o'
            ExplicitWidth = 77
          end
          object edServico: TJvCalcEdit
            AlignWithMargins = True
            Left = 4
            Top = 44
            Width = 129
            Height = 40
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alTop
            DisplayFormat = '#'
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
            OnChange = edServicoChange
          end
        end
        object Panel5: TPanel
          Left = 941
          Top = 0
          Width = 180
          Height = 122
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 3
          ExplicitLeft = 940
          ExplicitHeight = 120
          object Label4: TLabel
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 172
            Height = 32
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alTop
            Caption = 'Recipiente'
            ExplicitWidth = 111
          end
          object cbVidraria: TComboBox
            AlignWithMargins = True
            Left = 4
            Top = 44
            Width = 172
            Height = 33
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alTop
            Style = csDropDownList
            ItemIndex = 3
            TabOrder = 0
            Text = 'Sem Filtro'
            OnChange = cbVidrariaChange
            Items.Strings = (
              'Nenhuma'
              'Frasco'
              'Seringa'
              'Sem Filtro')
          end
        end
        object Panel6: TPanel
          Left = 491
          Top = 0
          Width = 450
          Height = 122
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 4
          ExplicitWidth = 449
          ExplicitHeight = 120
          object Label5: TLabel
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 102
            Height = 32
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alTop
            Caption = 'Descri'#231#227'o'
          end
          object edDescri: TEdit
            AlignWithMargins = True
            Left = 4
            Top = 30
            Width = 215
            Height = 40
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alTop
            TabOrder = 0
            OnChange = edServicoChange
          end
        end
      end
      inherited tsFind: TTabSheet
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitWidth = 1284
        ExplicitHeight = 122
        inherited Label2: TLabel
          Left = 5
          Top = 5
          Width = 169
          Height = 32
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          StyleElements = [seFont, seClient, seBorder]
          ExplicitLeft = 5
          ExplicitTop = 5
          ExplicitWidth = 169
          ExplicitHeight = 32
        end
        inherited BitBtn1: TBitBtn
          Left = 813
          Top = 30
          Width = 150
          Height = 50
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Font.Height = -24
          ExplicitLeft = 813
          ExplicitTop = 30
          ExplicitWidth = 150
          ExplicitHeight = 50
        end
        inherited edSearch: TMaskEdit
          Left = 5
          Top = 38
          Width = 518
          Height = 37
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Font.Height = -24
          StyleElements = [seFont, seClient, seBorder]
          ExplicitLeft = 5
          ExplicitTop = 38
          ExplicitWidth = 518
          ExplicitHeight = 37
        end
      end
    end
  end
  inherited Panel2: TPanel
    Top = 181
    Width = 1308
    Height = 483
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 190
    ExplicitWidth = 1308
    ExplicitHeight = 474
    inherited PageControl1: TPageControl
      Left = 5
      Top = 5
      Width = 1298
      Height = 473
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Images = Resources.medium_n
      ExplicitLeft = 5
      ExplicitTop = 5
      ExplicitWidth = 1298
      ExplicitHeight = 473
      inherited TabSheet1: TTabSheet
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Servi'#231'os Ativos'
        ImageIndex = 208
        ExplicitTop = 43
        ExplicitWidth = 1290
        ExplicitHeight = 426
        inherited DBGrid1: TDBGrid
          Left = 5
          Top = 51
          Width = 1280
          Height = 370
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          TitleFont.Height = -24
        end
        inline FrameCheckBar1: TFrameCheckBar
          Left = 0
          Top = 0
          Width = 1290
          Height = 46
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alTop
          AutoSize = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          ExplicitWidth = 1030
          inherited ControlBar1: TControlBar
            Width = 1282
            ExplicitWidth = 1022
          end
          inherited dsMark: TDataSource
            DataSet = IBrwSrc
          end
        end
      end
      object TabSheet2: TTabSheet
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Servi'#231'os Inativos'
        ImageIndex = 209
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Left = 5
    Top = 5
    Width = 1298
    Height = 39
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    RowSize = 41
    ExplicitLeft = 5
    ExplicitTop = 5
    ExplicitWidth = 1298
    ExplicitHeight = 39
    inherited ToolBar1: TToolBar
      Left = 18
      Width = 1016
      Height = 35
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ButtonHeight = 31
      ButtonWidth = 93
      ExplicitLeft = 18
      ExplicitWidth = 1016
      ExplicitHeight = 35
      inherited ToolButton2: TToolButton
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitHeight = 31
      end
      inherited ToolButton5: TToolButton
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitHeight = 31
      end
      inherited ToolButton9: TToolButton
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitHeight = 31
      end
      inherited ToolButton6: TToolButton
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitHeight = 31
      end
      inherited ToolButton7: TToolButton
        Width = 13
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitWidth = 13
        ExplicitHeight = 31
      end
      inherited ToolButton1: TToolButton
        Left = 141
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 141
        ExplicitHeight = 31
      end
      inherited ToolButton8: TToolButton
        Left = 173
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 173
        ExplicitHeight = 31
      end
      inherited ToolButton3: TToolButton
        Left = 205
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 205
        ExplicitHeight = 31
      end
      inherited ToolButton4: TToolButton
        Left = 237
        Width = 12
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 237
        ExplicitWidth = 12
        ExplicitHeight = 31
      end
      inherited tbOrder: TToolButton
        Left = 249
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 249
        ExplicitWidth = 97
        ExplicitHeight = 31
      end
      inherited tbReport: TToolButton
        Left = 346
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 346
        ExplicitHeight = 31
      end
      inherited tbOpcao: TToolButton
        Left = 378
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 378
        ExplicitHeight = 31
      end
      inherited ToolButton11: TToolButton
        Left = 410
        Width = 13
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 410
        ExplicitWidth = 13
        ExplicitHeight = 31
      end
      inherited ToolButton10: TToolButton
        Left = 423
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 423
        ExplicitHeight = 31
      end
    end
  end
  inherited alDef: TActionList
    Left = 288
    Top = 104
    object actProcessMarked: TAction
      Caption = 'Desativar Marcados'
      Enabled = False
      ImageIndex = 69
      OnExecute = actProcessMarkedExecute
    end
  end
  inherited pmRel: TPopupMenu
    Left = 336
    Top = 112
  end
  inherited pmOrder: TPopupMenu
    Left = 394
    Top = 102
  end
  inherited alRunTime: TActionList
    Top = 102
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
      'select'
      
        '  (m.recno is not null) mark, a.codserv, a.descri, a.un, a.valor' +
        ','
      '  a.tipo,    a.grupo,  b.descri, a.prnsecserv, a.recno,'
      '  a.consumo, a.vidraria, r.descri recipiente, a.status'
      'from'
      '  servicos a'
      'join'
      '  servicos_grupo b on'
      '  b.recno = a.grupo'
      'left join'
      '  labtipo_recipiente r on'
      '  r.recno = a.vidraria'
      'left join'
      '  sys_flags m on'
      '  m.recno = a.recno and'
      '  m.session = :session and'
      '  m.table_ = :origem'
      'where'
      '  a.status = :status')
    Params = <
      item
        DataType = ftUnknown
        Name = 'session'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'origem'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'status'
        ParamType = ptUnknown
        Value = '1'
      end>
    Sequence = sBrwSrc
    SequenceField = 'recno'
    Left = 264
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'session'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'origem'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'status'
        ParamType = ptUnknown
        Value = '1'
      end>
    object IBrwSrcmark: TBooleanField
      DisplayLabel = ' '
      FieldName = 'mark'
      ReadOnly = True
    end
    object IBrwSrcstatus: TSmallintField
      DisplayLabel = ' '
      FieldName = 'status'
      Visible = False
    end
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
      DisplayFormat = ',0 ml'
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
  inherited pmOpcao: TPopupMenu
    Left = 520
    Top = 104
    object N2: TMenuItem
      Caption = '-'
    end
    object DesativarMarcados1: TMenuItem
      Action = actProcessMarked
      Caption = 'Desativar Servi'#231'os Marcados'
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
        'idraria, status)'
      'VALUES'
      
        '  (:descri, :un, :valor, :tipo, :grupo, :recno, :prnsecserv, :co' +
        'nsumo, :vidraria, :status)')
    ModifySQL.Strings = (
      'UPDATE servicos SET'
      '  descri = :descri,'
      '  un = :un,'
      '  valor = :valor,'
      '  tipo = :tipo,'
      '  grupo = :grupo,'
      '  recno = :recno,'
      '  prnsecserv = :prnsecserv,'
      '  consumo = :consumo,'
      '  vidraria = :vidraria,'
      '  status = :status'
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
        Name = 'status'
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
