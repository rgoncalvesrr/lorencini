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
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 283
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Label1: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 277
            Height = 15
            Align = alTop
            Caption = 'Categoria'
            ExplicitWidth = 51
          end
          object cbCat: TComboBox
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 277
            Height = 23
            Align = alTop
            Style = csDropDownList
            ItemHeight = 15
            TabOrder = 0
            OnChange = cbCatChange
          end
        end
        object Panel4: TPanel
          Left = 283
          Top = 0
          Width = 110
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object Label3: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 104
            Height = 15
            Align = alTop
            Caption = 'Servi'#231'o'
            ExplicitWidth = 38
          end
          object edServico: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 104
            Height = 23
            Align = alTop
            DisplayFormat = '#'
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
            OnChange = edServicoChange
          end
        end
        object Panel5: TPanel
          Left = 571
          Top = 0
          Width = 144
          Height = 75
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 3
          object Label4: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 138
            Height = 15
            Align = alTop
            Caption = 'Recipiente'
            ExplicitWidth = 55
          end
          object cbVidraria: TComboBox
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 138
            Height = 23
            Align = alTop
            Style = csDropDownList
            ItemHeight = 15
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
          Left = 393
          Top = 0
          Width = 178
          Height = 75
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 4
          object Label5: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 172
            Height = 15
            Align = alTop
            Caption = 'Descri'#231#227'o'
            ExplicitWidth = 51
          end
          object edDescri: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 172
            Height = 23
            Align = alTop
            TabOrder = 0
            OnChange = edServicoChange
          end
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
      Images = Resources.medium_n
      ExplicitHeight = 404
      inherited TabSheet1: TTabSheet
        Caption = 'Servi'#231'os Ativos'
        ImageIndex = 208
        ExplicitLeft = 4
        ExplicitTop = 33
        ExplicitWidth = 823
        ExplicitHeight = 367
        inherited DBGrid1: TDBGrid
          Top = 47
          Height = 317
        end
        inline FrameCheckBar1: TFrameCheckBar
          Left = 0
          Top = 0
          Width = 823
          Height = 44
          Align = alTop
          AutoSize = True
          TabOrder = 1
          ExplicitWidth = 823
          inherited ControlBar1: TControlBar
            Width = 817
            ExplicitWidth = 817
            inherited ToolBar2: TToolBar
              ButtonWidth = 109
              inherited ToolButton13: TToolButton
                ExplicitWidth = 79
              end
              inherited ToolButton12: TToolButton
                ExplicitWidth = 113
              end
              inherited ToolButton17: TToolButton
                Left = 192
                ExplicitLeft = 192
                ExplicitWidth = 70
              end
              inherited ToolButton16: TToolButton
                Left = 262
                ExplicitLeft = 262
                ExplicitWidth = 86
              end
              inherited ToolButton1: TToolButton
                Left = 348
                ExplicitLeft = 348
              end
            end
          end
          inherited dsMark: TDataSource
            DataSet = IBrwSrc
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Servi'#231'os Inativos'
        ImageIndex = 209
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
    Filter = 'status = 1'
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
      '  m.session = sys_session() and'
      '  m.table_ = sys_origem('#39'servicos'#39')'
      'where'
      '  status = :status')
    Params = <
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
