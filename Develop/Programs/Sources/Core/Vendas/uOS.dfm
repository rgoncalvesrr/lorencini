inherited OS: TOS
  Caption = 'Ordem de Servi'#231'o'
  ClientHeight = 716
  ClientWidth = 1126
  Constraints.MinWidth = 793
  ExplicitWidth = 1142
  ExplicitHeight = 755
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 689
    Width = 1120
    ExplicitTop = 689
    ExplicitWidth = 1120
  end
  inherited Panel1: TPanel
    Top = 48
    Width = 1126
    ExplicitTop = 48
    ExplicitWidth = 1126
    inherited pctlFind: TPageControl
      Width = 1116
      ExplicitWidth = 1116
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1108
        ExplicitHeight = 75
        inherited BitBtn2: TBitBtn
          Left = 1007
          TabOrder = 7
          ExplicitLeft = 1007
        end
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 90
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object Label10: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 84
            Height = 15
            Align = alTop
            Caption = 'Pedido'
            ExplicitWidth = 37
          end
          object edPedido: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 84
            Height = 23
            Align = alTop
            DecimalPlaces = 0
            DisplayFormat = '#'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
            OnChange = CriteriaChange
          end
        end
        object Panel6: TPanel
          Left = 90
          Top = 0
          Width = 90
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Label11: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 84
            Height = 15
            Align = alTop
            Caption = 'Cota'#231#227'o'
            ExplicitWidth = 44
          end
          object edCota: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 84
            Height = 23
            Align = alTop
            DecimalPlaces = 0
            DisplayFormat = '#'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
            OnChange = CriteriaChange
          end
        end
        object Panel7: TPanel
          Left = 370
          Top = 0
          Width = 153
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 4
          object Label3: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 147
            Height = 15
            Align = alTop
            Caption = 'Emiss'#227'o'
            Transparent = True
            ExplicitWidth = 43
          end
          object Label4: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 53
            Width = 147
            Height = 15
            Align = alTop
            AutoSize = False
            Caption = '01/06/2022 a 30/06/2022'
            Transparent = True
            ExplicitLeft = 29
            ExplicitTop = 26
            ExplicitWidth = 156
          end
          inline FrameData1: TFrameData
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 147
            Height = 23
            Align = alTop
            AutoSize = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Pitch = fpVariable
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            ExplicitLeft = 3
            ExplicitTop = 24
            ExplicitWidth = 147
            inherited ComboBox1: TComboBox
              Width = 147
              ExplicitWidth = 147
            end
            inherited CCalendarDiff1: TCCalendarDiff
              Interval = diMonthly
              Date = 44720.960288946760000000
              DisplayInterval = Label4
              OnChange = actQueryProcessExecute
            end
          end
        end
        object Panel8: TPanel
          Left = 523
          Top = 0
          Width = 212
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 5
          object Label7: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 79
            Height = 15
            Align = alTop
            Caption = 'Nome Fantasia'
          end
          object edEmpresa: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 206
            Height = 23
            Align = alTop
            TabOrder = 0
            OnChange = CriteriaChange
          end
        end
        object Panel9: TPanel
          Left = 735
          Top = 0
          Width = 269
          Height = 75
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 6
          object Label8: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 97
            Height = 15
            Align = alTop
            Caption = 'Nome Empresarial'
          end
          object edRazao: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 263
            Height = 23
            Align = alTop
            TabOrder = 0
            OnChange = CriteriaChange
          end
        end
        object Panel10: TPanel
          Left = 280
          Top = 0
          Width = 90
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 3
          object Label1: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 84
            Height = 15
            Align = alTop
            Caption = 'OS'
            ExplicitWidth = 15
          end
          object edOS: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 84
            Height = 23
            Align = alTop
            DecimalPlaces = 0
            DisplayFormat = '#'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
            OnChange = CriteriaChange
          end
        end
        object Panel11: TPanel
          Left = 180
          Top = 0
          Width = 100
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object Label5: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 11
            Height = 15
            Align = alTop
            Caption = 'ID'
          end
          object edID: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 94
            Height = 23
            Align = alTop
            TabOrder = 0
            OnChange = CriteriaChange
          end
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1108
        ExplicitHeight = 75
      end
    end
  end
  inherited Panel2: TPanel
    Top = 133
    Width = 1126
    Height = 553
    ExplicitTop = 133
    ExplicitWidth = 1126
    ExplicitHeight = 553
    inherited PageControl1: TPageControl
      Width = 1120
      Height = 547
      Images = Resources.medium_n
      ExplicitWidth = 1120
      ExplicitHeight = 547
      inherited TabSheet1: TTabSheet
        Caption = 'Todos'
        ImageIndex = -1
        ExplicitLeft = 4
        ExplicitTop = 33
        ExplicitWidth = 1112
        ExplicitHeight = 510
        inherited DBGrid1: TDBGrid
          Top = 47
          Width = 1106
          Height = 460
        end
        object ControlBar1: TControlBar
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1106
          Height = 38
          Align = alTop
          AutoSize = True
          BevelEdges = []
          BevelKind = bkNone
          DrawingStyle = dsGradient
          TabOrder = 1
          object ToolBar2: TToolBar
            Left = 11
            Top = 2
            Width = 1093
            Height = 34
            AutoSize = True
            BorderWidth = 1
            ButtonHeight = 30
            ButtonWidth = 187
            Caption = 'ToolBar1'
            DisabledImages = Resources.medium_d
            DrawingStyle = dsGradient
            EdgeInner = esNone
            EdgeOuter = esNone
            HotImages = Resources.medium_h
            Images = Resources.medium_n
            List = True
            ParentShowHint = False
            AllowTextButtons = True
            ShowHint = True
            TabOrder = 0
            object ToolButton28: TToolButton
              Left = 0
              Top = 0
              Action = actMarkup
              Style = tbsTextButton
            end
            object ToolButton29: TToolButton
              Left = 89
              Top = 0
              Action = actModelo
              Style = tbsTextButton
            end
            object ToolButton14: TToolButton
              Left = 178
              Top = 0
              Width = 8
              Caption = 'ToolButton14'
              ImageIndex = 368
              Style = tbsSeparator
            end
            object ToolButton12: TToolButton
              Left = 186
              Top = 0
              Action = actExecutar
              Style = tbsTextButton
            end
            object ToolButton13: TToolButton
              Left = 279
              Top = 0
              Action = actCancelOS
              Style = tbsTextButton
            end
            object ToolButton15: TToolButton
              Left = 470
              Top = 0
              Action = actAntecipacao
              Style = tbsTextButton
            end
          end
        end
      end
      object TabSheet8: TTabSheet
        Caption = 'Aprovados'
        ImageIndex = 205
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
      object TabSheet5: TTabSheet
        Caption = 'Executando'
        ImageIndex = 210
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
      object TabSheet9: TTabSheet
        Caption = 'Finalizados'
        ImageIndex = 213
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
      object TabSheet10: TTabSheet
        Caption = 'Faturados'
        ImageIndex = 208
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
      object TabSheet3: TTabSheet
        Caption = 'Antecipados'
        ImageIndex = 211
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
      object TabSheet13: TTabSheet
        Caption = 'Cancelados'
        ImageIndex = 209
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Width = 1120
    Height = 42
    ExplicitWidth = 1120
    ExplicitHeight = 42
    inherited ToolBar1: TToolBar
      Width = 849
      Height = 38
      BorderWidth = 2
      ExplicitWidth = 849
      ExplicitHeight = 38
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
    Left = 736
    Top = 224
    inherited actNew: TAction
      Enabled = False
      Visible = False
    end
    inherited actDel: TAction
      Enabled = False
      Visible = False
    end
    object actCli: TAction [17]
      Caption = 'Clientes...'
      OnExecute = actCliExecute
    end
    object actCancelOS: TAction [18]
      Caption = 'Cancelar Ordem de Servi'#231'o...'
      Enabled = False
      ImageIndex = 148
      OnExecute = actCancelOSExecute
    end
    object actMarkup: TAction [19]
      Caption = 'Markup...'
      ImageIndex = 279
      OnExecute = actMarkupExecute
    end
    object actModelo: TAction
      Caption = 'Modelo...'
      ImageIndex = 248
      OnExecute = actModeloExecute
    end
    object actExecutar: TAction
      Caption = 'Executar...'
      ImageIndex = 79
      OnExecute = actExecutarExecute
    end
    object actAntecipacao: TAction
      Caption = 'Antecipa'#231#227'o'
      Enabled = False
      ImageIndex = 196
      OnExecute = actAntecipacaoExecute
    end
  end
  inherited pmRel: TPopupMenu
    Left = 784
    Top = 224
  end
  inherited pmOrder: TPopupMenu
    Left = 834
    Top = 222
  end
  inherited alRunTime: TActionList
    Left = 898
    Top = 222
  end
  inherited DataSource1: TDataSource
    OnStateChange = DataSource1StateChange
    Top = 224
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SortedFields = 'os'
    SortType = stDescending
    AfterScroll = IBrwSrcAfterScroll
    OnCalcFields = IBrwSrcCalcFields
    AfterInsert = IBrwSrcAfterInsert
    SQL.Strings = (
      
        'select a.idos, a.data, a.ano, a.idcliente, a.idvendedor, a.id_se' +
        'rvico, a.descricao, a.status_data,'
      
        '       a.os, a.chamado, a.status, a.type_, m.vlmat, m.vlsrvfixo,' +
        ' m.vlsrvvar, m.vlmobra, m.vldespe vlsrvdesp,           '
      
        '       a.markup, a.pedidocliente, a.origem, a.recno, a.grupo, a.' +
        'condicaopg, c.cnpj, c.qtdorcs, c.id_vendedor, '
      
        '       c.nome_chave, c.empresa, a.motivo, c.observacao, a.pedido' +
        ', g.descri descri_grupo,'
      '       cast(atv.ativdescri as varchar(150)) atividade, a.cotacao'
      '  from tb_orcamentos a'
      '       join orca_grupo g'
      '         on a.grupo = g.recno'
      '       join vatividades atv'
      '         on atv.item = g.atividade'
      '       join tbclientes c'
      '         on c.codigo = a.idcliente'
      '       left join markup m'
      '         on m.recno = a.markup')
    IndexFieldNames = 'os Desc'
    Sequence = sOS
    SequenceField = 'recno'
    Left = 40
    Top = 224
    object IBrwSrcstatus: TIntegerField
      DisplayLabel = ' '
      FieldName = 'status'
      Required = True
    end
    object IBrwSrcpedido: TIntegerField
      DisplayLabel = 'Pedido'
      FieldName = 'pedido'
    end
    object IBrwSrccotacao: TIntegerField
      DisplayLabel = 'Cota'#231#227'o'
      FieldName = 'cotacao'
    end
    object IBrwSrcidos: TStringField
      DisplayLabel = 'ID'
      DisplayWidth = 10
      FieldName = 'idos'
      Size = 10
    end
    object IBrwSrcos: TIntegerField
      DisplayLabel = 'OS'
      DisplayWidth = 7
      FieldName = 'os'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object IBrwSrcdata: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'data'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object IBrwSrcpedidocliente: TStringField
      DisplayLabel = 'Ped. Cliente'
      DisplayWidth = 10
      FieldName = 'pedidocliente'
      Size = 15
    end
    object IBrwSrcano: TIntegerField
      FieldName = 'ano'
      Visible = False
    end
    object IBrwSrcvlmat: TFloatField
      DisplayLabel = 'Materiais'
      FieldName = 'vlmat'
      Visible = False
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcvlsrvfixo: TFloatField
      FieldName = 'vlsrvfixo'
      Visible = False
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcvlsrvvar: TFloatField
      FieldName = 'vlsrvvar'
      Visible = False
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcvlsrv: TFloatField
      DisplayLabel = 'Servi'#231'os'
      FieldKind = fkCalculated
      FieldName = 'vlsrv'
      Visible = False
      DisplayFormat = ',0.#0'
      Calculated = True
    end
    object IBrwSrcvlmobra: TFloatField
      DisplayLabel = 'M. Obra'
      FieldName = 'vlmobra'
      Visible = False
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcvlsrvdesp: TFloatField
      DisplayLabel = 'Despesas'
      FieldName = 'vlsrvdesp'
      Visible = False
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcvltotal: TFloatField
      DisplayLabel = 'Total'
      FieldKind = fkCalculated
      FieldName = 'vltotal'
      DisplayFormat = ',0.#0'
      Calculated = True
    end
    object IBrwSrcatividade: TStringField
      DisplayLabel = 'Atividade'
      DisplayWidth = 25
      FieldName = 'atividade'
      ReadOnly = True
      Size = 150
    end
    object IBrwSrcidcliente: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'idcliente'
      OnChange = IBrwSrcidclienteChange
    end
    object IBrwSrcnome_chave: TStringField
      DisplayLabel = 'Nome Fantasia'
      DisplayWidth = 20
      FieldName = 'nome_chave'
      Size = 45
    end
    object IBrwSrcempresa: TStringField
      DisplayLabel = 'Nome Empresarial'
      DisplayWidth = 40
      FieldName = 'empresa'
      Size = 100
    end
    object IBrwSrccnpj: TStringField
      DisplayLabel = 'C.N.P.J.'
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object IBrwSrcqtdorcs: TIntegerField
      DisplayLabel = 'Controle'
      FieldName = 'qtdorcs'
      Required = True
      Visible = False
    end
    object IBrwSrcid_vendedor: TIntegerField
      FieldName = 'id_vendedor'
      Visible = False
    end
    object IBrwSrcidvendedor: TIntegerField
      FieldName = 'idvendedor'
      Visible = False
    end
    object IBrwSrcnome: TStringField
      DisplayLabel = 'Vendedor'
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'nome'
      LookupDataSet = DM.qVendedores
      LookupKeyFields = 'idvendedor'
      LookupResultField = 'nome'
      KeyFields = 'idvendedor'
      Size = 100
      Lookup = True
    end
    object IBrwSrcid_servico: TIntegerField
      FieldName = 'id_servico'
      Visible = False
    end
    object IBrwSrcdescricao: TMemoField
      FieldName = 'descricao'
      Visible = False
      BlobType = ftMemo
    end
    object IBrwSrcstatus_data: TDateField
      FieldName = 'status_data'
      Visible = False
    end
    object IBrwSrcchamado: TIntegerField
      FieldName = 'chamado'
      Visible = False
    end
    object IBrwSrctype_: TIntegerField
      FieldName = 'type_'
      Visible = False
    end
    object IBrwSrcorigem: TIntegerField
      FieldName = 'origem'
      Visible = False
    end
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
      Required = True
    end
    object IBrwSrcgrupo: TIntegerField
      FieldName = 'grupo'
      Required = True
      Visible = False
    end
    object IBrwSrcdescri_grupo: TStringField
      FieldName = 'descri_grupo'
      Required = True
      Visible = False
      Size = 60
    end
    object IBrwSrcmotivo: TMemoField
      FieldName = 'motivo'
      Visible = False
      BlobType = ftMemo
    end
    object IBrwSrcobservacao: TMemoField
      FieldName = 'observacao'
      Visible = False
      BlobType = ftMemo
    end
    object IBrwSrcmarkup: TIntegerField
      FieldName = 'markup'
      ReadOnly = True
      Visible = False
    end
    object IBrwSrccondicaopg: TStringField
      DisplayLabel = 'Condi'#231#227'o de Pagamento'
      FieldName = 'condicaopg'
      Visible = False
      Size = 15
    end
  end
  inherited pmOpcao: TPopupMenu
    Left = 960
    Top = 224
    object Clientes1: TMenuItem
      Action = actCli
    end
    object AprovarOramento1: TMenuItem
      Caption = 'Aprovar Ordem de Servi'#231'o...'
      ImageIndex = 365
    end
    object Cancelamento1: TMenuItem
      Action = actCancelOS
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM tb_orcamentos'
      'WHERE'
      '  os = :OLD_os')
    InsertSQL.Strings = (
      'INSERT INTO tb_orcamentos'
      
        '  (data,        ano,         idcliente,    vlrprevisto,  descric' +
        'ao,  status,  type_,  item,  origem,  recno,'
      '   grupo,       idvendedor,  condicaopg)'
      'VALUES'
      
        '  (:data,       :ano,        :idcliente,   :vlrprevisto, :descri' +
        'cao, :status, :type_, :item, :origem, :recno,'
      '   :grupo,      :idvendedor, :condicaopg)')
    ModifySQL.Strings = (
      'UPDATE tb_orcamentos SET'
      '  data = :data,'
      '  ano = :ano,'
      '  idcliente = :idcliente,'
      '  vlrprevisto = :vlrprevisto,'
      '  descricao = :descricao,'
      '  telefone = :telefone,'
      '  status = :status,'
      '  type_ = :type_,'
      '  item = :item,'
      '  origem = :origem,'
      '  grupo = :grupo,'
      '  idvendedor = :idvendedor,'
      '  motivo = :motivo,'
      '  condicaopg = :condicaopg'
      'WHERE'
      '  os = :OLD_os')
    Left = 112
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ano'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idcliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vlrprevisto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'descricao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'telefone'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'status'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'type_'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'item'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'origem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'grupo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idvendedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'motivo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'condicaopg'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_os'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end>
  end
  object sOS: TZSequence
    Connection = DM.Design
    SequenceName = 'public.tb_orcamentos_recno_seq'
    Left = 184
    Top = 224
  end
  object qServ: TZQuery
    Connection = DM.Design
    AfterScroll = qServAfterScroll
    OnCalcFields = qServCalcFields
    UpdateObject = uServ
    AfterInsert = qServAfterInsert
    AfterPost = qServAfterPost
    AfterDelete = qServAfterDelete
    SQL.Strings = (
      
        'select a.os, a.codserv, a.qtd, a.un, a.valor, a.prnos, a.vl_vend' +
        'a,'
      '       a.prnsecserv, a.recno '
      '  from servicos_os a'
      ' where a.os = :os ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'os'
        ParamType = ptUnknown
      end>
    Options = [doAlwaysDetailResync]
    Sequence = sServ
    SequenceField = 'recno'
    Left = 40
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'os'
        ParamType = ptUnknown
      end>
    object qServos: TIntegerField
      FieldName = 'os'
      Required = True
      Visible = False
    end
    object qServcat: TStringField
      DisplayLabel = 'Categoria'
      DisplayWidth = 25
      FieldKind = fkLookup
      FieldName = 'cat'
      LookupDataSet = DM.qNatu
      LookupKeyFields = 'codserv'
      LookupResultField = 'categoria'
      KeyFields = 'codserv'
      Visible = False
      Size = 80
      Lookup = True
    end
    object qServcodserv: TIntegerField
      DisplayLabel = 'Natureza'
      FieldName = 'codserv'
      Required = True
      OnChange = qServcodservChange
    end
    object qServdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'descri'
      LookupDataSet = DM.qNatu
      LookupKeyFields = 'codserv'
      LookupResultField = 'descri'
      KeyFields = 'codserv'
      Size = 80
      Lookup = True
    end
    object qServqtd: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'qtd'
      Required = True
      OnChange = qServqtdChange
      DisplayFormat = ',0.#0'
    end
    object qServun: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'un'
      Size = 2
    end
    object qServundescri: TStringField
      DisplayLabel = 'Unidade'
      FieldKind = fkLookup
      FieldName = 'undescri'
      LookupDataSet = DM.qUnidade
      LookupKeyFields = 'un'
      LookupResultField = 'descri'
      KeyFields = 'un'
      Size = 15
      Lookup = True
    end
    object qServvalor: TFloatField
      DisplayLabel = 'Custo Unit'#225'rio'
      FieldName = 'valor'
      OnChange = qServqtdChange
      DisplayFormat = ',0.#0'
    end
    object qServvl_venda: TFloatField
      DisplayLabel = 'Valor Unit'#225'rio'
      FieldName = 'vl_venda'
      DisplayFormat = ',0.#0'
    end
    object qServtotal: TFloatField
      DisplayLabel = 'Total'
      FieldKind = fkCalculated
      FieldName = 'total'
      DisplayFormat = ',0.#0'
      Calculated = True
    end
    object qServgrupo: TIntegerField
      FieldKind = fkLookup
      FieldName = 'grupo'
      LookupDataSet = DM.qNatu
      LookupKeyFields = 'codserv'
      LookupResultField = 'grupo'
      KeyFields = 'codserv'
      Visible = False
      Lookup = True
    end
    object qServprnos: TBooleanField
      DisplayLabel = 'Imprimir OS'
      FieldName = 'prnos'
      Visible = False
    end
    object qServprnsecserv: TBooleanField
      DisplayLabel = 'Imprimir Servi'#231'os Executados'
      FieldName = 'prnsecserv'
      Visible = False
    end
    object qServrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
      Required = True
    end
  end
  object uServ: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM servicos_os'
      'WHERE'
      '  os = :OLD_os AND'
      '  codserv = :OLD_codserv')
    InsertSQL.Strings = (
      'INSERT INTO servicos_os'
      '  (os, codserv, qtd, un, valor, prnos, prnsecserv, recno)'
      'VALUES'
      
        '  (:os, :codserv, :qtd, :un, :valor, :prnos, :prnsecserv, :recno' +
        ')')
    ModifySQL.Strings = (
      'UPDATE servicos_os SET'
      '  codserv = :codserv,'
      '  qtd = :qtd,'
      '  un = :un,'
      '  valor = :valor,'
      '  prnos = :prnos,'
      '  prnsecserv = :prnsecserv'
      'WHERE'
      '  os = :OLD_os AND'
      '  codserv = :OLD_codserv')
    UseSequenceFieldForRefreshSQL = False
    Left = 112
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codserv'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'qtd'
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
        Name = 'prnos'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prnsecserv'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_os'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_codserv'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'os'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end>
  end
  object dsServ: TDataSource
    AutoEdit = False
    DataSet = qServ
    Left = 256
    Top = 272
  end
  object qServDet: TZQuery
    Connection = DM.Design
    UpdateObject = uServDet
    SQL.Strings = (
      
        'select a.os, a.codserv, a.recno_serv, sd.descri desdobramento, a' +
        '.recno'
      '  from servicos_det_os a'
      '       join servicos_det sd'
      '         on sd.codserv = a.codserv'
      '        and sd.recno = a.recno_serv '
      ' where a.os = :os'
      '   and a.codserv = :codserv')
    Params = <
      item
        DataType = ftUnknown
        Name = 'os'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codserv'
        ParamType = ptUnknown
      end>
    Options = []
    Sequence = sServDet
    SequenceField = 'recno'
    Left = 40
    Top = 320
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'os'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codserv'
        ParamType = ptUnknown
      end>
    object qServDetos: TIntegerField
      FieldName = 'os'
      Visible = False
    end
    object qServDetcodserv: TIntegerField
      FieldName = 'codserv'
      Visible = False
    end
    object qServDetdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 50
      FieldName = 'Desdobramento'
      Size = 250
    end
    object qServDetrecno_serv: TIntegerField
      FieldName = 'recno_serv'
      Visible = False
    end
    object qServDetrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
      Required = True
      Visible = False
    end
  end
  object uServDet: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM servicos_det_os'
      'WHERE'
      '  recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO servicos_det_os'
      '  (os, codserv, recno_serv, recno)'
      'VALUES'
      '  (:os, :codserv, :recno_serv, :recno)')
    ModifySQL.Strings = (
      'UPDATE servicos_det_os SET'
      '  os = :os,'
      '  codserv = :codserv,'
      '  recno_serv = :recno_serv'
      'WHERE'
      '  recno = :OLD_recno')
    UseSequenceFieldForRefreshSQL = False
    Left = 112
    Top = 320
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'os'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codserv'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno_serv'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end>
  end
  object qMObra: TZQuery
    Tag = 2
    Connection = DM.Design
    UpdateObject = uMObra
    AfterInsert = qMObraAfterInsert
    AfterPost = qMObraAfterPost
    AfterDelete = qMObraAfterDelete
    SQL.Strings = (
      'select *'
      '  from tb_orcamentos_lucratividade_lorencini'
      ' where os = :os ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'os'
        ParamType = ptUnknown
      end>
    Options = []
    Sequence = sMObra
    SequenceField = 'recno'
    Left = 376
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'os'
        ParamType = ptUnknown
      end>
    object qMObraos: TIntegerField
      DisplayLabel = 'OS'
      FieldName = 'os'
      Required = True
      Visible = False
    end
    object qMObrafunc: TIntegerField
      DisplayLabel = 'Fun'#231#227'o'
      FieldName = 'func'
      Required = True
      Visible = False
    end
    object qMObrafuncao: TStringField
      DisplayLabel = 'Fun'#231#227'o'
      DisplayWidth = 25
      FieldKind = fkLookup
      FieldName = 'funcao'
      LookupDataSet = DM.qFuncoes
      LookupKeyFields = 'id'
      LookupResultField = 'descricao'
      KeyFields = 'func'
      Size = 100
      Lookup = True
    end
    object qMObraqtde: TIntegerField
      DisplayLabel = 'Qtd'
      FieldName = 'qtde'
    end
    object qMObrauteis_dias: TIntegerField
      DisplayLabel = #218'teis'
      FieldName = 'uteis_dias'
    end
    object qMObrauteis_hrs_dia: TFloatField
      DisplayLabel = 'Horas'
      FieldName = 'uteis_hrs_dia'
    end
    object qMObrauteis_vlr_hora: TFloatField
      DisplayLabel = 'Valor Hora'
      FieldName = 'uteis_vlr_hora'
      DisplayFormat = ',0.#0'
    end
    object qMObrasabado_dias: TIntegerField
      DisplayLabel = 'HE 50%'
      FieldName = 'sabado_dias'
    end
    object qMObrasabado_hrs_dia: TFloatField
      DisplayLabel = 'Horas'
      FieldName = 'sabado_hrs_dia'
    end
    object qMObrasabado_vlr_hora: TFloatField
      DisplayLabel = 'Valor Hora'
      FieldName = 'sabado_vlr_hora'
      DisplayFormat = ',0.#0'
    end
    object qMObradomingo_dias: TIntegerField
      DisplayLabel = 'HE 100%'
      FieldName = 'domingo_dias'
    end
    object qMObradomingo_hrs_dia: TFloatField
      DisplayLabel = 'Horas'
      FieldName = 'domingo_hrs_dia'
    end
    object qMObradomingo_vlr_hora: TFloatField
      DisplayLabel = 'Valor Hora'
      FieldName = 'domingo_vlr_hora'
      DisplayFormat = ',0.#0'
    end
    object qMObraadic_not_dias: TIntegerField
      DisplayLabel = 'Ad. Not.'
      FieldName = 'adic_not_dias'
    end
    object qMObraadic_not_hrs_dia: TFloatField
      DisplayLabel = 'Horas'
      FieldName = 'adic_not_hrs_dia'
    end
    object qMObraadic_not_vlr_hora: TFloatField
      DisplayLabel = 'Valor Hora'
      FieldName = 'adic_not_vlr_hora'
      DisplayFormat = ',0.#0'
    end
    object qMObravalor_total: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'valor_total'
      DisplayFormat = ',0.#0'
    end
    object qMObrapercentual: TFloatField
      DisplayLabel = '%'
      FieldName = 'percentual'
      DisplayFormat = ',0.0%'
    end
    object qMObravl_venda: TFloatField
      DisplayLabel = 'Valor de Venda'
      FieldName = 'vl_venda'
      DisplayFormat = ',0.#0'
    end
    object qMObrarecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
      Required = True
    end
  end
  object uMObra: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM tb_orcamentos_lucratividade_lorencini'
      'WHERE'
      '  os = :OLD_os AND'
      '  func = :OLD_func')
    InsertSQL.Strings = (
      'INSERT INTO tb_orcamentos_lucratividade_lorencini'
      
        '  (qtde, uteis_dias, uteis_hrs_dia, uteis_vlr_hora, sabado_dias,' +
        ' sabado_hrs_dia,'
      
        '   sabado_vlr_hora, domingo_dias, domingo_hrs_dia, domingo_vlr_h' +
        'ora,'
      
        '   valor_total, adic_not_dias, adic_not_hrs_dia, adic_not_vlr_ho' +
        'ra,'
      '   percentual, os, func, recno)'
      'VALUES'
      
        '  (:qtde, :uteis_dias, :uteis_hrs_dia, :uteis_vlr_hora, :sabado_' +
        'dias, :sabado_hrs_dia,'
      
        '   :sabado_vlr_hora, :domingo_dias, :domingo_hrs_dia, :domingo_v' +
        'lr_hora,'
      
        '   :valor_total, :adic_not_dias, :adic_not_hrs_dia, :adic_not_vl' +
        'r_hora,'
      '   :percentual, :os, :func, :recno)')
    ModifySQL.Strings = (
      'UPDATE tb_orcamentos_lucratividade_lorencini SET'
      '  qtde = :qtde,'
      '  uteis_dias = :uteis_dias,'
      '  uteis_hrs_dia = :uteis_hrs_dia,'
      '  uteis_vlr_hora = :uteis_vlr_hora,'
      '  sabado_dias = :sabado_dias,'
      '  sabado_hrs_dia = :sabado_hrs_dia,'
      '  sabado_vlr_hora = :sabado_vlr_hora,'
      '  domingo_dias = :domingo_dias,'
      '  domingo_hrs_dia = :domingo_hrs_dia,'
      '  domingo_vlr_hora = :domingo_vlr_hora,'
      '  valor_total = :valor_total,'
      '  adic_not_dias = :adic_not_dias,'
      '  adic_not_hrs_dia = :adic_not_hrs_dia,'
      '  adic_not_vlr_hora = :adic_not_vlr_hora,'
      '  percentual = :percentual,'
      '  os = :os,'
      '  func = :func'
      'WHERE'
      '  os = :OLD_os AND'
      '  func = :OLD_func')
    UseSequenceFieldForRefreshSQL = False
    Left = 440
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'qtde'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'uteis_dias'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'uteis_hrs_dia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'uteis_vlr_hora'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sabado_dias'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sabado_hrs_dia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sabado_vlr_hora'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'domingo_dias'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'domingo_hrs_dia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'domingo_vlr_hora'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'valor_total'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'adic_not_dias'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'adic_not_hrs_dia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'adic_not_vlr_hora'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'percentual'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'os'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'func'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_os'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_func'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end>
  end
  object dsMObra: TDataSource
    AutoEdit = False
    DataSet = qMObra
    Left = 576
    Top = 216
  end
  object qMat: TZQuery
    Tag = 1
    Connection = DM.Design
    OnCalcFields = qMatCalcFields
    UpdateObject = uMat
    AfterInsert = qMatAfterInsert
    AfterPost = qMatAfterPost
    AfterDelete = qMatAfterDelete
    SQL.Strings = (
      'select a.os, a.codigo,'
      
        '  cast(sys_iif(a.codigo is null, a.material, b.descricao) as var' +
        'char(100)) material,'
      
        '  a.qtd, cast(sys_iif(a.codigo is null, a.un, b.unidade) as varc' +
        'har(3)) un,'
      
        '  a.unitario, a.exptot, a.icms_compra, a.item, a.vl_venda, a.rec' +
        'no'
      '  from orca_mat a'
      '       left join produtos b'
      '         on b.codigo = a.codigo'
      ' where a.os = :os')
    Params = <
      item
        DataType = ftUnknown
        Name = 'os'
        ParamType = ptUnknown
      end>
    Options = [doAlwaysDetailResync]
    Sequence = sMat
    SequenceField = 'recno'
    Left = 40
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'os'
        ParamType = ptUnknown
      end>
    object qMatos: TIntegerField
      FieldName = 'os'
      Visible = False
    end
    object qMatcodigo: TIntegerField
      DisplayLabel = 'Material'
      FieldName = 'codigo'
      Required = True
      OnChange = qMatcodigoChange
    end
    object qMatmaterial: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 60
      FieldName = 'material'
      Size = 100
    end
    object qMatqtd: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'qtd'
      Required = True
      OnChange = qMatqtdChange
      DisplayFormat = ',0.#0'
    end
    object qMatun: TStringField
      DisplayLabel = 'Unidade'
      DisplayWidth = 4
      FieldName = 'un'
      Size = 255
    end
    object qMatunitario: TFloatField
      DisplayLabel = 'Custo Unit'#225'rio'
      FieldName = 'unitario'
      OnChange = qMatqtdChange
      currency = True
    end
    object qMatvl_venda: TFloatField
      DisplayLabel = 'Valor Unit'#225'rio'
      FieldName = 'vl_venda'
      DisplayFormat = ',0.#0'
    end
    object qMattotal: TCurrencyField
      DisplayLabel = 'Total'
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
    object qMaticms_compra: TFloatField
      DisplayLabel = 'ICMS'
      FieldName = 'icms_compra'
      Required = True
      OnChange = qMatqtdChange
      DisplayFormat = ',0.%'
    end
    object qMatexptot: TBooleanField
      DisplayLabel = 'Imprimir Or'#231'amento'
      FieldName = 'exptot'
      Visible = False
    end
    object qMatitem: TIntegerField
      FieldName = 'item'
      Visible = False
    end
    object qMatrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
      Required = True
    end
  end
  object uMat: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM orca_mat'
      'WHERE'
      '  item = :OLD_item AND'
      '  os = :OLD_os')
    InsertSQL.Strings = (
      'INSERT INTO orca_mat'
      '  (unitario, os, qtd, codigo, exptot, icms_compra, recno)'
      'VALUES'
      '  (:unitario, :os, :qtd, :codigo, :exptot, :icms_compra, :recno)')
    ModifySQL.Strings = (
      'UPDATE orca_mat SET'
      '  unitario = :unitario,'
      '  os = :os,'
      '  qtd = :qtd,'
      '  codigo = :codigo,'
      '  exptot = :exptot,'
      '  icms_compra = :icms_compra'
      'WHERE'
      '  item = :OLD_item AND'
      '  os = :OLD_os')
    UseSequenceFieldForRefreshSQL = False
    Left = 112
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'unitario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'os'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'qtd'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'exptot'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'icms_compra'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_item'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_os'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end>
  end
  object dsMat: TDataSource
    AutoEdit = False
    DataSet = qMat
    Left = 256
    Top = 368
  end
  object dsServDet: TDataSource
    AutoEdit = False
    DataSet = qServDet
    Left = 256
    Top = 320
  end
  object qFatu: TZQuery
    Tag = 3
    Connection = DM.Design
    UpdateObject = uFatu
    AfterInsert = qFatuAfterInsert
    SQL.Strings = (
      
        'SELECT a.os, a.nf, a.emissao, a.valor, a.dtvenc, a.dtreci, a.dtb' +
        'aixa, a.vlicms, '
      
        '       a.vliss, a.vlirpj, a.vlipi, a.vlcssl, a.vlirpf, a.vlpis, ' +
        'a.vlcofins, a.vlcom, '
      '       a.natureza, b.descri, b.tipo, a.recno'
      '  FROM fatu_os a'
      '       left join fin_naturezas b'
      '         on a.natureza = b.natureza'
      ' where a.os = :os')
    Params = <
      item
        DataType = ftUnknown
        Name = 'os'
        ParamType = ptUnknown
      end>
    Options = []
    Sequence = sFatu
    SequenceField = 'recno'
    Left = 376
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'os'
        ParamType = ptUnknown
      end>
    object qFatuos: TIntegerField
      FieldName = 'os'
      Required = True
      Visible = False
    end
    object qFatunf: TIntegerField
      DisplayLabel = 'Nota Fiscal'
      FieldName = 'nf'
      Required = True
    end
    object qFatuemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'emissao'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qFatuvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Required = True
      currency = True
    end
    object qFatudtvenc: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'dtvenc'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qFatudtreci: TDateField
      FieldName = 'dtreci'
      Visible = False
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qFatudtbaixa: TDateField
      DisplayLabel = 'Baixa'
      FieldName = 'dtbaixa'
      Visible = False
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qFatuvlicms: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ICMS'
      FieldName = 'vlicms'
      DisplayFormat = ',0.#0'
      EditFormat = '0'
    end
    object qFatuvlipi: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'IPI'
      FieldName = 'vlipi'
      DisplayFormat = ',0.#0'
    end
    object qFatuvliss: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'ISS'
      FieldName = 'vliss'
      DisplayFormat = ',0.#0'
    end
    object qFatuvlcssl: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'CSSL'
      FieldName = 'vlcssl'
      DisplayFormat = ',0.#0'
    end
    object qFatuvlpis: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'PIS'
      FieldName = 'vlpis'
      DisplayFormat = ',0.#0'
    end
    object qFatuvlcofins: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'COFINS'
      FieldName = 'vlcofins'
      DisplayFormat = ',0.#0'
    end
    object qFatuvlirpj: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'IRPJ'
      FieldName = 'vlirpj'
      DisplayFormat = ',0.#0'
    end
    object qFatuvlirpf: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'IRPF'
      FieldName = 'vlirpf'
      DisplayFormat = ',0.#0'
    end
    object qFatuvlcom: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Comiss'#227'o'
      FieldName = 'vlcom'
    end
    object qFatunatureza: TIntegerField
      FieldName = 'natureza'
      Required = True
      Visible = False
    end
    object qFatudescri: TStringField
      FieldName = 'descri'
      Visible = False
      Size = 60
    end
    object qFatutipo: TStringField
      FieldName = 'tipo'
      Visible = False
      Size = 1
    end
    object qFaturecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
      Required = True
    end
  end
  object uFatu: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM fatu_os'
      'WHERE'
      '  os = :OLD_os AND'
      '  nf = :OLD_nf')
    InsertSQL.Strings = (
      'INSERT INTO fatu_os'
      
        '  (os, nf, emissao, valor, dtvenc, dtreci, dtbaixa, vlicms, vlis' +
        's, vlirpj, vlipi,'
      '   vlcssl, vlirpf, vlpis, vlcofins, vlcom, natureza, recno)'
      'VALUES'
      
        '  (:os, :nf, :emissao, :valor, :dtvenc, :dtreci, :dtbaixa, :vlic' +
        'ms, :vliss,'
      
        '   :vlirpj, :vlipi, :vlcssl, :vlirpf, :vlpis, :vlcofins, :vlcom,' +
        ' :natureza,'
      '   :recno)')
    ModifySQL.Strings = (
      'UPDATE fatu_os SET'
      '  os = :os,'
      '  nf = :nf,'
      '  emissao = :emissao,'
      '  valor = :valor,'
      '  dtvenc = :dtvenc,'
      '  dtreci = :dtreci,'
      '  dtbaixa = :dtbaixa,'
      '  vlicms = :vlicms,'
      '  vliss = :vliss,'
      '  vlirpj = :vlirpj,'
      '  vlipi = :vlipi ,'
      '  vlcssl = :vlcssl,'
      '  vlirpf = :vlirpf,'
      '  vlpis = :vlpis,'
      '  vlcofins = :vlcofins,'
      '  vlcom = :vlcom,'
      '  natureza = :natureza'
      'WHERE'
      '  os = :OLD_os AND'
      '  nf = :OLD_nf')
    UseSequenceFieldForRefreshSQL = False
    Left = 440
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'os'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emissao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtvenc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtreci'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtbaixa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vlicms'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vliss'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vlirpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vlipi'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vlcssl'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vlirpf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vlpis'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vlcofins'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vlcom'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'natureza'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_os'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_nf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end>
  end
  object dsFatu: TDataSource
    AutoEdit = False
    DataSet = qFatu
    Left = 576
    Top = 272
  end
  object qDesp: TZQuery
    Connection = DM.Design
    OnCalcFields = qDespCalcFields
    UpdateObject = uDesp
    AfterDelete = qDespAfterDelete
    SQL.Strings = (
      
        'select o.os, o.despesa, o.recno, f.data, f.docto, f.historico, f' +
        '.valor * -1 valor'
      '  from orca_desp o'
      '       join fin_caixa f'
      '         on f.recno = o.despesa'
      ' where o.os = :os')
    Params = <
      item
        DataType = ftUnknown
        Name = 'os'
        ParamType = ptUnknown
      end>
    Options = [doAlwaysDetailResync]
    Sequence = sDesp
    SequenceField = 'recno'
    Left = 376
    Top = 320
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'os'
        ParamType = ptUnknown
      end>
    object qDespos: TIntegerField
      DisplayLabel = 'OS'
      FieldName = 'os'
      Required = True
      Visible = False
    end
    object qDespdespesa: TIntegerField
      DisplayLabel = 'Despesa'
      FieldName = 'despesa'
      Required = True
    end
    object qDespdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'data'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qDespdocto: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'docto'
    end
    object qDesphistorico: TMemoField
      FieldName = 'historico'
      Required = True
      Visible = False
      BlobType = ftMemo
    end
    object qDesphistorico_desc: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldKind = fkCalculated
      FieldName = 'historico_desc'
      Size = 150
      Calculated = True
    end
    object qDespvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      ReadOnly = True
      DisplayFormat = ',0.#0'
    end
    object qDesprecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
      Required = True
    end
  end
  object uDesp: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM orca_desp'
      'WHERE'
      '  orca_desp.os = :OLD_os AND'
      '  orca_desp.despesa = :OLD_despesa')
    InsertSQL.Strings = (
      'INSERT INTO orca_desp'
      '  (os, despesa, recno)'
      'VALUES'
      '  (:os, :despesa, :recno)')
    ModifySQL.Strings = (
      'UPDATE orca_desp SET'
      '  os = :os,'
      '  despesa = :despesa,'
      '  recno = :recno'
      'WHERE'
      '  orca_desp.os = :OLD_os AND'
      '  orca_desp.despesa = :OLD_despesa')
    UseSequenceFieldForRefreshSQL = False
    Left = 440
    Top = 320
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'os'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'despesa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_os'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_despesa'
        ParamType = ptUnknown
      end>
  end
  object dsDesp: TDataSource
    AutoEdit = False
    DataSet = qDesp
    Left = 576
    Top = 320
  end
  object sServ: TZSequence
    Connection = DM.Design
    SequenceName = 'public.servicos_os_recno_seq'
    Left = 184
    Top = 272
  end
  object sServDet: TZSequence
    Connection = DM.Design
    SequenceName = 'public.servicos_det_recno_seq'
    Left = 184
    Top = 320
  end
  object sMat: TZSequence
    Connection = DM.Design
    SequenceName = 'public.tb_orcamentos_lucratividade_materiais_recno_seq'
    Left = 184
    Top = 368
  end
  object sMObra: TZSequence
    Connection = DM.Design
    SequenceName = 'public.tb_orcamentos_lucratividade_lorencini_recno_seq'
    Left = 504
    Top = 216
  end
  object sFatu: TZSequence
    Connection = DM.Design
    SequenceName = 'public.fatu_os_recno_seq'
    Left = 504
    Top = 272
  end
  object sDesp: TZSequence
    Connection = DM.Design
    SequenceName = 'public.fin_caixa_recno_seq'
    Left = 504
    Top = 320
  end
  object qContatos: TZQuery
    Connection = DM.Design
    SortedFields = 'nome'
    UpdateObject = uContatos
    SQL.Strings = (
      
        'select co.os, co.contato, co.cliente, c.nome, c.celular, c.telef' +
        'one, c.ramal, c.email, c.padrao, co.recno'
      '  from orca_contatos co'
      '      join clientes_contatos  c'
      '        on c.cliente = co.cliente'
      '       and c.contato = co.contato'
      ' where co.os = :os'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'os'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    IndexFieldNames = 'nome Asc'
    Sequence = sContatos
    SequenceField = 'recno'
    Left = 40
    Top = 416
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'os'
        ParamType = ptUnknown
      end>
    object qContatosos: TIntegerField
      FieldName = 'os'
      Required = True
      Visible = False
    end
    object qContatoscliente: TIntegerField
      FieldName = 'cliente'
      Visible = False
    end
    object qContatospadrao: TBooleanField
      DisplayLabel = 'Padr'#227'o'
      FieldName = 'padrao'
    end
    object qContatoscontato: TIntegerField
      DisplayLabel = 'Contato'
      FieldName = 'contato'
      Required = True
    end
    object qContatosnome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 35
      FieldName = 'nome'
      Size = 150
    end
    object qContatoscelular: TStringField
      DisplayLabel = 'Celular'
      DisplayWidth = 15
      FieldName = 'celular'
      EditMask = '(99) 9.9999-9999;0;'
      Size = 25
    end
    object qContatostelefone: TStringField
      DisplayLabel = 'Fixo'
      DisplayWidth = 15
      FieldName = 'telefone'
      EditMask = '(99) 9999-9999;0;'
      Size = 25
    end
    object qContatosramal: TStringField
      DisplayLabel = 'Ramal'
      FieldName = 'ramal'
      Size = 6
    end
    object qContatosemail: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'email'
      Size = 150
    end
    object qContatosrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
    end
  end
  object dsContatos: TDataSource
    AutoEdit = False
    DataSet = qContatos
    Left = 256
    Top = 416
  end
  object uContatos: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM orca_contatos'
      'WHERE'
      '  orca_contatos.os = :OLD_os AND'
      '  orca_contatos.cliente = :OLD_cliente AND'
      '  orca_contatos.contato = :OLD_contato')
    InsertSQL.Strings = (
      'INSERT INTO orca_contatos'
      '  (os, cliente, contato, recno)'
      'VALUES'
      '  (:os, :cliente, :contato, :recno)')
    ModifySQL.Strings = (
      'UPDATE orca_contatos SET'
      '  os = :os,'
      '  cliente = :cliente,'
      '  contato = :contato,'
      '  recno = :recno'
      'WHERE'
      '  orca_contatos.os = :OLD_os AND'
      '  orca_contatos.cliente = :OLD_cliente AND'
      '  orca_contatos.contato = :OLD_contato')
    UseSequenceFieldForRefreshSQL = False
    Left = 112
    Top = 416
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'os'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_os'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_contato'
        ParamType = ptUnknown
      end>
  end
  object sContatos: TZSequence
    Connection = DM.Design
    SequenceName = 'public.orca_contatos_recno_seq'
    Left = 184
    Top = 416
  end
end
