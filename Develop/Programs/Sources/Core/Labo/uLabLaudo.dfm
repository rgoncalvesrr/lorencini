inherited LabLaudo: TLabLaudo
  Caption = 'Emiss'#227'o de Laudos'
  ClientHeight = 773
  ClientWidth = 1161
  ExplicitWidth = 1177
  ExplicitHeight = 812
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 746
    Width = 1155
    ExplicitTop = 746
    ExplicitWidth = 1155
  end
  inherited Panel1: TPanel
    Width = 1161
    ExplicitWidth = 1161
    inherited pctlFind: TPageControl
      Width = 1151
      ExplicitWidth = 1151
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1143
        ExplicitHeight = 75
        inherited BitBtn2: TBitBtn
          Left = 1042
          TabOrder = 9
          ExplicitLeft = 1042
        end
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 80
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object Label6: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 74
            Height = 15
            Align = alTop
            Caption = 'Laudo'
            ExplicitWidth = 33
          end
          object edLaudo: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 74
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
        object Panel4: TPanel
          Left = 80
          Top = 0
          Width = 80
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Label5: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 74
            Height = 15
            Align = alTop
            Caption = 'Pedido'
            ExplicitWidth = 37
          end
          object edPedido: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 74
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
        object Panel5: TPanel
          Left = 160
          Top = 0
          Width = 80
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object Label7: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 74
            Height = 15
            Align = alTop
            Caption = 'Amostra'
            ExplicitWidth = 45
          end
          object edAmostra: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 74
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
          Left = 240
          Top = 0
          Width = 80
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 3
          object Label12: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 74
            Height = 15
            Align = alTop
            Caption = 'Etiqueta'
            ExplicitWidth = 43
          end
          object edEtiqueta: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 74
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
          Left = 320
          Top = 0
          Width = 80
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 4
          object Label4: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 74
            Height = 15
            Align = alTop
            Caption = 'OS'
            ExplicitWidth = 15
          end
          object edOS: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 74
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
        object Panel8: TPanel
          Left = 400
          Top = 0
          Width = 140
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 5
          object Label10: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 134
            Height = 15
            Align = alTop
            Caption = 'Data de Entrada'
            Transparent = True
            ExplicitWidth = 83
          end
          object Label11: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 54
            Width = 134
            Height = 15
            Align = alTop
            ExplicitWidth = 3
          end
          inline FrameData2: TFrameData
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 134
            Height = 24
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
            ExplicitWidth = 134
            ExplicitHeight = 24
            inherited ComboBox1: TComboBox
              Width = 134
              ExplicitWidth = 134
            end
            inherited CCalendarDiff1: TCCalendarDiff
              Date = 44546.063824606480000000
              DisplayInterval = Label11
              OnChange = actQueryProcessExecute
            end
          end
        end
        object Panel9: TPanel
          Left = 540
          Top = 0
          Width = 140
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 6
          object Label1: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 53
            Width = 134
            Height = 15
            Align = alTop
            Caption = '01/12/2021 a 31/12/2021'
            ExplicitWidth = 128
          end
          object Label3: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 134
            Height = 15
            Align = alTop
            Caption = 'Emiss'#227'o'
            Transparent = True
            ExplicitWidth = 43
          end
          inline FrameData1: TFrameData
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 134
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
            ExplicitWidth = 134
            inherited ComboBox1: TComboBox
              Width = 134
              ItemIndex = 1
              Text = 'Mensalmente'
              OnChange = FrameData1ComboBox1Change
              ExplicitWidth = 134
            end
            inherited CCalendarDiff1: TCCalendarDiff
              Interval = diMonthly
              Date = 44546.063824606480000000
              DisplayInterval = Label1
              OnChange = actQueryProcessExecute
              Left = 96
            end
          end
        end
        object Panel10: TPanel
          Left = 959
          Top = 0
          Width = 80
          Height = 75
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 8
          object Label8: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 74
            Height = 15
            Align = alTop
            Caption = 'S'#233'rie Equip.'
            ExplicitWidth = 61
          end
          object edEquipSerie: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 74
            Height = 23
            Align = alTop
            TabOrder = 0
            OnChange = CriteriaChange
          end
        end
        object Panel11: TPanel
          Left = 879
          Top = 0
          Width = 80
          Height = 75
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 7
          object Label9: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 74
            Height = 15
            Align = alTop
            Caption = 'Tag Equip.'
            ExplicitWidth = 54
          end
          object edEquipTag: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 74
            Height = 23
            Align = alTop
            TabOrder = 0
            OnChange = CriteriaChange
          end
        end
        object Panel12: TPanel
          Left = 680
          Top = 0
          Width = 171
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 10
          object Label13: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 165
            Height = 15
            Align = alTop
            Caption = 'Nome Fantasia'
            ExplicitWidth = 79
          end
          object edEmpresa: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 165
            Height = 23
            Align = alTop
            TabOrder = 0
            OnChange = CriteriaChange
          end
        end
        object Panel13: TPanel
          Left = 851
          Top = 0
          Width = 28
          Height = 75
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 11
          object Label14: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 22
            Height = 15
            Align = alTop
            Caption = 'Nome Empresarial'
            ExplicitWidth = 97
          end
          object edRazao: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 22
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
        ExplicitWidth = 1143
        ExplicitHeight = 75
      end
    end
  end
  inherited Panel2: TPanel
    Width = 1161
    Height = 614
    ExplicitWidth = 1161
    ExplicitHeight = 614
    inherited PageControl1: TPageControl
      Width = 1155
      Height = 314
      ExplicitWidth = 1155
      ExplicitHeight = 314
      inherited TabSheet1: TTabSheet
        Caption = 'Laudos'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 1147
        ExplicitHeight = 284
        inherited DBGrid1: TDBGrid
          Width = 1141
          Height = 278
        end
      end
    end
    object Panel14: TPanel
      Left = 0
      Top = 320
      Width = 1161
      Height = 294
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object ControlBar2: TControlBar
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1155
        Height = 38
        Align = alTop
        AutoSize = True
        BevelEdges = []
        BevelKind = bkNone
        DrawingStyle = dsGradient
        TabOrder = 0
        object ToolBar3: TToolBar
          Left = 11
          Top = 2
          Width = 1111
          Height = 34
          AutoSize = True
          BorderWidth = 1
          ButtonHeight = 30
          ButtonWidth = 148
          Caption = 'ToolBar3'
          DisabledImages = Resources.medium_d
          DrawingStyle = dsGradient
          EdgeInner = esNone
          EdgeOuter = esNone
          HotImages = Resources.medium_h
          Images = Resources.medium_n
          List = True
          ParentShowHint = False
          ShowCaptions = True
          AllowTextButtons = True
          ShowHint = True
          TabOrder = 0
          object ToolButton12: TToolButton
            Left = 0
            Top = 0
            Action = actAtuContatos
            AutoSize = True
          end
          object ToolButton14: TToolButton
            Left = 32
            Top = 0
            Action = actDelContato
            AutoSize = True
          end
          object tbDivDet: TToolButton
            Left = 64
            Top = 0
            Width = 8
            Caption = 'tbDivDet'
            ImageIndex = 6
            Style = tbsSeparator
          end
          object ToolButton15: TToolButton
            Left = 72
            Top = 0
            Action = actRefreshContatos
            AutoSize = True
          end
          object ToolButton16: TToolButton
            Left = 104
            Top = 0
            Width = 8
            Caption = 'ToolButton3'
            ImageIndex = 42
            Style = tbsSeparator
          end
          object tbRefazGrid: TToolButton
            Left = 112
            Top = 0
            Action = actRGrid
          end
        end
      end
      object PageControl2: TPageControl
        AlignWithMargins = True
        Left = 3
        Top = 47
        Width = 1155
        Height = 244
        ActivePage = TabSheet2
        Align = alClient
        TabOrder = 1
        object TabSheet2: TTabSheet
          Caption = 'Contatos'
          object DBGrid2: TDBGrid
            Tag = 1
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1141
            Height = 208
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = dsContatos
            DefaultDrawing = False
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            PopupMenu = pmOpcao
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Pitch = fpVariable
            TitleFont.Style = []
            OnDrawColumnCell = DBGridDrawColumnCell
            OnDblClick = DBGridDblClick
            OnEnter = DBGridEnter
            OnKeyPress = DBGridKeyPress
          end
        end
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Width = 1155
    ExplicitWidth = 1155
    inherited ToolBar1: TToolBar
      Width = 1067
      ExplicitWidth = 1067
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
    Left = 290
    Top = 120
    inherited actNew: TAction
      Enabled = False
      Visible = False
    end
    inherited actEdit: TAction
      Enabled = False
      Visible = False
    end
    inherited actDel: TAction
      Enabled = False
      ShortCut = 16430
      Visible = False
    end
    object actExportToPDF: TAction
      Caption = 'Gerar Laudos em PDF...'
      ImageIndex = 357
      OnExecute = actExportToPDFExecute
    end
    object actAtuContatos: TAction
      Caption = 'actAtuContatos'
      ImageIndex = 336
      OnExecute = actAtuContatosExecute
    end
    object actDelContato: TAction
      Caption = 'actDelContato'
      ImageIndex = 100
      OnExecute = actDelContatoExecute
    end
    object actRefreshContatos: TAction
      Caption = 'actRefreshContatos'
      ImageIndex = 307
      OnExecute = actRefreshContatosExecute
    end
    object actAtuContatosTodos: TAction
      Caption = 'Atualizar Contatos de Todos os Laudos'
      ImageIndex = 336
      OnExecute = actAtuContatosTodosExecute
    end
    object actPublishRepors: TAction
      Caption = 'Publicar Laudos'
      ImageIndex = 412
      OnExecute = actPublishReporsExecute
    end
  end
  inherited pmRel: TPopupMenu
    Left = 341
    Top = 120
    object GerarLaudosemPDF1: TMenuItem
      Action = actExportToPDF
    end
    object PublicarLaudos1: TMenuItem
      Action = actPublishRepors
    end
  end
  inherited pmOrder: TPopupMenu
    Left = 393
    Top = 120
  end
  inherited alRunTime: TActionList
    Left = 444
    Top = 120
  end
  inherited DataSource1: TDataSource
    Left = 238
    Top = 120
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SortedFields = 'recno'
    BeforeOpen = IBrwSrcBeforeOpen
    AfterScroll = IBrwSrcAfterScroll
    SQL.Strings = (
      'select'
      
        '  r.recno, r.pedido, r.amostra, r.os, a.comodato, r.relato_recno' +
        ', re.titulo, cri.descri crit, r.pcoleta,'
      
        '  a.recebimento entrada, r.emissao, a.local, a.labsubest_recno, ' +
        'a.codigo, c.empresa, c.nome_chave, c.cnpj, c.cpf,'
      
        '  c.telefone, c.cidade, c.estado, c.email, e.serie, a.tag, re.si' +
        'gla'
      '  from labamostras_rel r'
      '       join labrel re'
      '         on re.recno = r.relato_recno'
      '       join labamostras a'
      '         on a.recno = r.amostra'
      '       join tbclientes c'
      '         on c.codigo = a.codigo'
      '       left join vequip e'
      '         on e.recno = a.equip_recno              '
      '       left join vlaudocrit cri'
      '         on cri.relato_recno = r.relato_recno'
      '        and cri.recno = r.labcrit_recno'
      ' where r.status >= 4'
      '   and r.assinatura is not null')
    IndexFieldNames = 'recno Asc'
    Left = 171
    Top = 120
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Laudo'
      FieldName = 'recno'
      Required = True
    end
    object IBrwSrctitulo: TStringField
      DisplayLabel = 'T'#237'tulo'
      DisplayWidth = 30
      FieldName = 'titulo'
      Required = True
      Size = 60
    end
    object IBrwSrcpedido: TIntegerField
      DisplayLabel = 'Pedido'
      FieldName = 'pedido'
    end
    object IBrwSrcamostra: TIntegerField
      DisplayLabel = 'Amostra'
      FieldName = 'amostra'
      Required = True
    end
    object IBrwSrccomodato: TIntegerField
      DisplayLabel = 'Etiqueta'
      FieldName = 'comodato'
    end
    object IBrwSrcos: TIntegerField
      DisplayLabel = 'OS'
      FieldName = 'os'
    end
    object IBrwSrccrit: TStringField
      FieldName = 'crit'
      Visible = False
      Size = 60
    end
    object IBrwSrcentrada: TDateTimeField
      DisplayLabel = 'Entrada'
      FieldName = 'entrada'
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object IBrwSrcemissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'emissao'
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object IBrwSrcpcoleta: TDateField
      DisplayLabel = 'Pr'#243'xima Coleta'
      FieldName = 'pcoleta'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object IBrwSrccodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object IBrwSrcempresa: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 30
      FieldName = 'empresa'
      Size = 100
    end
    object IBrwSrcnome_chave: TStringField
      DisplayLabel = 'Nome Curto'
      DisplayWidth = 20
      FieldName = 'nome_chave'
      Size = 45
    end
    object IBrwSrccnpj: TStringField
      DisplayLabel = 'C.N.P.J.'
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object IBrwSrccpf: TStringField
      DisplayLabel = 'C.P.F.'
      FieldName = 'cpf'
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object IBrwSrctelefone: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 20
      FieldName = 'telefone'
      Visible = False
      Size = 100
    end
    object IBrwSrccidade: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 30
      FieldName = 'cidade'
      Visible = False
      Size = 100
    end
    object IBrwSrcestado: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'estado'
      Visible = False
      Size = 2
    end
    object IBrwSrcemail: TStringField
      DisplayLabel = 'E-mail'
      DisplayWidth = 25
      FieldName = 'email'
      Visible = False
      Size = 100
    end
    object IBrwSrclocal: TStringField
      DisplayLabel = 'Local'
      FieldName = 'local'
      Size = 50
    end
    object IBrwSrclabsubest_recno: TIntegerField
      DisplayLabel = 'Subesta'#231#227'o'
      FieldName = 'labsubest_recno'
    end
    object IBrwSrcserie: TStringField
      DisplayLabel = 'N'#186' de S'#233'rie'
      FieldName = 'serie'
      Size = 30
    end
    object IBrwSrctag: TStringField
      DisplayLabel = 'Tag'
      DisplayWidth = 25
      FieldName = 'tag'
      Size = 50
    end
    object IBrwSrcrelato_recno: TIntegerField
      FieldName = 'relato_recno'
      Visible = False
    end
    object IBrwSrcsigla: TStringField
      FieldName = 'sigla'
      Visible = False
      Size = 4
    end
  end
  inherited pmOpcao: TPopupMenu
    Left = 496
    Top = 120
    object AtualizarContatosdeTodososLaudos1: TMenuItem
      Action = actAtuContatosTodos
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    Left = 112
    Top = 120
  end
  object qContatos: TZQuery
    Connection = DM.Design
    UpdateObject = uContatos
    SQL.Strings = (
      
        'select co.laudo, co.contato, co.cliente, c.nome, c.celular, c.te' +
        'lefone, c.ramal, c.email, c.padrao, co.recno'
      '  from labamostras_rel_contatos co'
      '      join clientes_contatos c'
      '        on c.cliente = co.cliente'
      '       and c.contato = co.contato'
      ' where co.laudo = :laudo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'laudo'
        ParamType = ptUnknown
      end>
    Left = 168
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'laudo'
        ParamType = ptUnknown
      end>
    object qContatoslaudo: TIntegerField
      FieldName = 'laudo'
      Required = True
      Visible = False
    end
    object qContatoscontato: TIntegerField
      FieldName = 'contato'
      Required = True
      Visible = False
    end
    object qContatoscliente: TIntegerField
      FieldName = 'cliente'
      Required = True
      Visible = False
    end
    object qContatospadrao: TBooleanField
      DisplayLabel = 'Padrao'
      FieldName = 'padrao'
    end
    object qContatosnome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 70
      FieldName = 'nome'
      Size = 150
    end
    object qContatoscelular: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'celular'
      EditMask = '(99) 9.9999-9999;0;'
      Size = 25
    end
    object qContatostelefone: TStringField
      DisplayLabel = 'Telefone'
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
      DisplayWidth = 70
      FieldName = 'email'
      Size = 150
    end
    object qContatosrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
      Required = True
    end
  end
  object dsContatos: TDataSource
    DataSet = qContatos
    Left = 240
    Top = 176
  end
  object uContatos: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labamostras_rel_contatos'
      'WHERE'
      '  labamostras_rel_contatos.laudo = :OLD_laudo AND'
      '  labamostras_rel_contatos.cliente = :OLD_cliente AND'
      '  labamostras_rel_contatos.contato = :OLD_contato')
    InsertSQL.Strings = (
      'INSERT INTO labamostras_rel_contatos'
      '  (laudo, cliente, contato, recno)'
      'VALUES'
      '  (:laudo, :cliente, :contato, :recno)')
    ModifySQL.Strings = (
      'UPDATE labamostras_rel_contatos SET'
      '  laudo = :laudo,'
      '  cliente = :cliente,'
      '  contato = :contato,'
      '  recno = :recno'
      'WHERE'
      '  labamostras_rel_contatos.laudo = :OLD_laudo AND'
      '  labamostras_rel_contatos.cliente = :OLD_cliente AND'
      '  labamostras_rel_contatos.contato = :OLD_contato')
    UseSequenceFieldForRefreshSQL = False
    Left = 112
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'laudo'
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
        Name = 'OLD_laudo'
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
end
