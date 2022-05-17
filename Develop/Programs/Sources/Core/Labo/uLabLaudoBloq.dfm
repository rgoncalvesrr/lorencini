inherited LabLaudoBloq: TLabLaudoBloq
  Caption = 'Laudos Bloqueados'
  ClientHeight = 709
  ClientWidth = 1288
  ExplicitWidth = 1304
  ExplicitHeight = 748
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 682
    Width = 1282
    ExplicitTop = 473
    ExplicitWidth = 1282
  end
  inherited Panel1: TPanel
    Width = 1288
    ExplicitWidth = 1288
    inherited pctlFind: TPageControl
      Width = 1278
      ExplicitWidth = 1278
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1270
        ExplicitHeight = 75
        inherited BitBtn2: TBitBtn
          Left = 1169
          ExplicitLeft = 1169
        end
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 80
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
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
          end
        end
        object Panel4: TPanel
          Left = 80
          Top = 0
          Width = 80
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
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
          end
        end
        object Panel5: TPanel
          Left = 160
          Top = 0
          Width = 80
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 3
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
          end
        end
        object Panel6: TPanel
          Left = 240
          Top = 0
          Width = 80
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 4
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
          end
        end
        object Panel7: TPanel
          Left = 320
          Top = 0
          Width = 80
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 5
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
          end
        end
        object Panel8: TPanel
          Left = 400
          Top = 0
          Width = 140
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 6
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
              Date = 44544.841278425930000000
              DisplayInterval = Label11
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
          TabOrder = 7
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
              ExplicitWidth = 134
            end
            inherited CCalendarDiff1: TCCalendarDiff
              Interval = diMonthly
              Date = 44544.841278425930000000
              DisplayInterval = Label1
              Left = 96
            end
          end
        end
        object Panel12: TPanel
          Left = 680
          Top = 0
          Width = 193
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 8
          object Label13: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 187
            Height = 15
            Align = alTop
            Caption = 'Nome Fantasia'
            ExplicitWidth = 79
          end
          object edEmpresa: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 187
            Height = 23
            Align = alTop
            TabOrder = 0
          end
        end
        object Panel13: TPanel
          Left = 873
          Top = 0
          Width = 133
          Height = 75
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 9
          object Label14: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 127
            Height = 15
            Align = alTop
            Caption = 'Nome Empresarial'
            ExplicitWidth = 97
          end
          object edRazao: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 127
            Height = 23
            Align = alTop
            TabOrder = 0
          end
        end
        object Panel11: TPanel
          Left = 1006
          Top = 0
          Width = 80
          Height = 75
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 10
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
          end
        end
        object Panel10: TPanel
          Left = 1086
          Top = 0
          Width = 80
          Height = 75
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 11
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
          end
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1270
        ExplicitHeight = 75
      end
    end
  end
  inherited Panel2: TPanel
    Width = 1288
    Height = 550
    ExplicitWidth = 1288
    ExplicitHeight = 341
    inherited PageControl1: TPageControl
      Width = 1282
      Height = 250
      ExplicitWidth = 1282
      ExplicitHeight = 335
      inherited TabSheet1: TTabSheet
        Caption = 'Laudos'
        ExplicitLeft = 6
        ExplicitTop = 27
        ExplicitWidth = 1274
        ExplicitHeight = 220
        inherited DBGrid1: TDBGrid
          Width = 1268
          Height = 214
        end
      end
    end
    object Panel14: TPanel
      Left = 0
      Top = 256
      Width = 1288
      Height = 294
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitTop = 320
      ExplicitWidth = 1161
      object PageControl2: TPageControl
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1282
        Height = 288
        ActivePage = TabSheet3
        Align = alClient
        TabOrder = 0
        object TabSheet3: TTabSheet
          Caption = 'Pend'#234'ncias'
          ExplicitLeft = 6
          ExplicitTop = 30
          object DBMemo1: TDBMemo
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1268
            Height = 252
            Align = alClient
            DataField = 'pendencia'
            DataSource = DataSource1
            ReadOnly = True
            ScrollBars = ssBoth
            TabOrder = 0
            ExplicitLeft = 5
            ExplicitTop = 20
            ExplicitWidth = 1258
            ExplicitHeight = 141
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Contatos'
          ExplicitHeight = 214
          object DBGrid2: TDBGrid
            Tag = 1
            AlignWithMargins = True
            Left = 3
            Top = 47
            Width = 1268
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
          object ControlBar2: TControlBar
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1268
            Height = 38
            Align = alTop
            AutoSize = True
            BevelEdges = []
            BevelKind = bkNone
            DrawingStyle = dsGradient
            TabOrder = 1
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
              object ToolButton15: TToolButton
                Left = 0
                Top = 0
                Action = actRefreshContatos
                AutoSize = True
              end
              object ToolButton16: TToolButton
                Left = 32
                Top = 0
                Width = 8
                Caption = 'ToolButton3'
                ImageIndex = 42
                Style = tbsSeparator
              end
              object tbRefazGrid: TToolButton
                Left = 40
                Top = 0
                Action = actRGrid
              end
            end
          end
        end
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Width = 1282
    ExplicitWidth = 1282
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
    object actRefreshContatos: TAction
      Caption = 'actRefreshContatos'
      ImageIndex = 307
      OnExecute = actRefreshContatosExecute
    end
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    BeforeOpen = IBrwSrcBeforeOpen
    AfterScroll = IBrwSrcAfterScroll
    SQL.Strings = (
      'select'
      '  r.recno, r.pedido, r.amostra, r.os, a.comodato,'
      
        '  a.recebimento entrada, r.emissao, a.local, a.labsubest_recno, ' +
        'a.codigo, c.empresa, c.nome_chave, c.cnpj, c.cpf,'
      
        '  c.telefone, c.cidade, c.estado, c.email, e.serie, a.tag, r.pen' +
        'dencia'
      '  from labamostras_rel r'
      '       join labamostras a'
      '         on a.recno = r.amostra'
      '       join tbclientes c'
      '         on c.codigo = a.codigo'
      '       left join vequip e'
      '         on e.recno = a.equip_recno'
      ' where r.status = 3'
      '   and r.assinatura is not null')
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Laudo'
      FieldName = 'recno'
      Required = True
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
    object IBrwSrcos: TIntegerField
      DisplayLabel = 'OS'
      FieldName = 'os'
      Required = True
    end
    object IBrwSrccomodato: TIntegerField
      DisplayLabel = 'Etiqueta'
      FieldName = 'comodato'
      Required = True
    end
    object IBrwSrcentrada: TDateTimeField
      DisplayLabel = 'Entrada'
      FieldName = 'entrada'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object IBrwSrcemissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'emissao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object IBrwSrclocal: TStringField
      DisplayLabel = 'Local'
      FieldName = 'local'
      Size = 50
    end
    object IBrwSrclabsubest_recno: TIntegerField
      FieldName = 'labsubest_recno'
      Visible = False
    end
    object IBrwSrccodigo: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'codigo'
      Required = True
    end
    object IBrwSrcempresa: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 25
      FieldName = 'empresa'
      Size = 100
    end
    object IBrwSrcnome_chave: TStringField
      DisplayLabel = 'Nome Fantasia'
      DisplayWidth = 20
      FieldName = 'nome_chave'
      Size = 45
    end
    object IBrwSrccnpj: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object IBrwSrccpf: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'cpf'
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object IBrwSrctelefone: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 20
      FieldName = 'telefone'
      Size = 100
    end
    object IBrwSrccidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cidade'
      Size = 100
    end
    object IBrwSrcestado: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'estado'
      Size = 2
    end
    object IBrwSrcemail: TStringField
      DisplayLabel = 'E-mail'
      DisplayWidth = 40
      FieldName = 'email'
      Size = 100
    end
    object IBrwSrcserie: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'serie'
      Size = 30
    end
    object IBrwSrctag: TStringField
      DisplayLabel = 'TAG'
      FieldName = 'tag'
      Size = 50
    end
    object IBrwSrcpendencia: TMemoField
      FieldName = 'pendencia'
      Visible = False
      BlobType = ftMemo
    end
  end
  object qContatos: TZQuery
    Connection = DM.Design
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
    Left = 200
    Top = 184
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
    Left = 256
    Top = 184
  end
end
