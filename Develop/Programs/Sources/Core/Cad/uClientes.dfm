inherited Clientes: TClientes
  Margins.Left = 6
  Margins.Top = 6
  Margins.Right = 6
  Margins.Bottom = 6
  Caption = 'Cadastro de Clientes'
  ClientHeight = 774
  ClientWidth = 1393
  Constraints.MinWidth = 838
  Font.Height = -24
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1411
  ExplicitHeight = 821
  PixelsPerInch = 120
  TextHeight = 32
  inherited StatusBar1: TStatusBar
    Left = 5
    Top = 731
    Width = 1383
    Height = 38
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
    ExplicitTop = 731
    ExplicitWidth = 1383
    ExplicitHeight = 38
  end
  inherited Panel1: TPanel
    Top = 49
    Width = 1393
    Height = 132
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Padding.Left = 8
    Padding.Right = 8
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 58
    ExplicitWidth = 1393
    ExplicitHeight = 132
    inherited pctlFind: TPageControl
      Left = 8
      Width = 1377
      Height = 132
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitLeft = 8
      ExplicitWidth = 1377
      ExplicitHeight = 132
      inherited tsQuery: TTabSheet
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitWidth = 1369
        ExplicitHeight = 122
        inherited BitBtn2: TBitBtn
          Left = 1211
          Top = 16
          Width = 153
          Height = 71
          Margins.Left = 5
          Margins.Top = 16
          Margins.Right = 5
          Margins.Bottom = 35
          ExplicitLeft = 1210
          ExplicitTop = 16
          ExplicitWidth = 153
          ExplicitHeight = 69
        end
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 141
          Height = 122
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitHeight = 120
          object Label5: TLabel
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 133
            Height = 32
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alTop
            Caption = 'Situa'#231#227'o'
            ExplicitWidth = 90
          end
          object cbSituacao: TComboBox
            AlignWithMargins = True
            Left = 4
            Top = 44
            Width = 133
            Height = 33
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alTop
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 0
            Text = 'TODOS'
            OnChange = cbSituacaoChange
            Items.Strings = (
              'TODOS'
              'ATIVO'
              'INATIVO'
              'PROSPECT')
          end
        end
        object Panel5: TPanel
          Left = 141
          Top = 0
          Width = 115
          Height = 122
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          ExplicitHeight = 120
          object Label4: TLabel
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 107
            Height = 32
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alTop
            Caption = 'C'#243'digo'
            ExplicitWidth = 77
          end
          object edCodigo: TJvCalcEdit
            AlignWithMargins = True
            Left = 4
            Top = 44
            Width = 107
            Height = 40
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alTop
            DecimalPlaceRound = True
            DecimalPlaces = 0
            DisplayFormat = ',0'
            ShowButton = False
            TabOrder = 0
            ZeroEmpty = False
            DecimalPlacesAlwaysShown = False
            OnChange = edCNPJChange
          end
        end
        object Panel6: TPanel
          Left = 256
          Top = 0
          Width = 155
          Height = 122
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 3
          ExplicitHeight = 120
          object Label1: TLabel
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 53
            Height = 32
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alTop
            Caption = 'CNPJ'
          end
          object edCNPJ: TMaskEdit
            AlignWithMargins = True
            Left = 4
            Top = 30
            Width = 147
            Height = 40
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alTop
            EditMask = '99.999.999/9999-99;0;'
            MaxLength = 18
            TabOrder = 0
            Text = ''
            OnChange = edCNPJChange
          end
        end
        object Panel7: TPanel
          Left = 411
          Top = 0
          Width = 155
          Height = 122
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 4
          ExplicitHeight = 120
          object Label3: TLabel
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 40
            Height = 32
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alTop
            Caption = 'CPF'
          end
          object edCPF: TMaskEdit
            AlignWithMargins = True
            Left = 4
            Top = 30
            Width = 147
            Height = 40
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alTop
            EditMask = '999.999.999-99;0;'
            MaxLength = 14
            TabOrder = 0
            Text = ''
            OnChange = edCNPJChange
          end
        end
        object Panel8: TPanel
          Left = 566
          Top = 0
          Width = 265
          Height = 122
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 5
          ExplicitHeight = 120
          object Label6: TLabel
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 158
            Height = 32
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alTop
            Caption = 'Nome Fantasia'
          end
          object edEmpresa: TEdit
            AlignWithMargins = True
            Left = 4
            Top = 30
            Width = 257
            Height = 40
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alTop
            TabOrder = 0
            OnChange = edCNPJChange
          end
        end
        object Panel9: TPanel
          Left = 831
          Top = 0
          Width = 375
          Height = 122
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 6
          ExplicitWidth = 374
          ExplicitHeight = 120
          object Label7: TLabel
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 195
            Height = 32
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alTop
            Caption = 'Nome Empresarial'
          end
          object edRazao: TEdit
            AlignWithMargins = True
            Left = 4
            Top = 30
            Width = 401
            Height = 40
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alTop
            TabOrder = 0
            OnChange = edCNPJChange
          end
        end
      end
      inherited tsFind: TTabSheet
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitWidth = 1369
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
    Width = 1393
    Height = 545
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 190
    ExplicitWidth = 1393
    ExplicitHeight = 536
    object Splitter1: TSplitter [0]
      Left = 0
      Top = 297
      Width = 1393
      Height = 8
      Cursor = crVSplit
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alBottom
      Beveled = True
      MinSize = 38
      ExplicitTop = 288
    end
    inherited PageControl1: TPageControl
      Left = 5
      Top = 5
      Width = 1383
      Height = 287
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Images = Resources.medium_n
      ExplicitLeft = 5
      ExplicitTop = 5
      ExplicitWidth = 1383
      ExplicitHeight = 287
      inherited TabSheet1: TTabSheet
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Todos'
        ImageIndex = -1
        ExplicitTop = 43
        ExplicitWidth = 1375
        ExplicitHeight = 240
        inherited DBGrid1: TDBGrid
          Left = 5
          Top = 5
          Width = 1368
          Height = 265
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          TitleFont.Height = -24
        end
      end
      object TabSheet5: TTabSheet
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Ativos'
        ImageIndex = 208
      end
      object TabSheet6: TTabSheet
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Inativos'
        ImageIndex = 209
      end
      object TabSheet7: TTabSheet
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Prospects'
        ImageIndex = 215
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 305
      Width = 1393
      Height = 240
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitTop = 296
      object PageControl2: TPageControl
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 1385
        Height = 232
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        ActivePage = TabSheet2
        Align = alClient
        Images = Resources.medium_n
        TabOrder = 0
        TabStop = False
        OnChange = PageControl2Change
        OnMouseDown = PageControl1MouseDown
        object TabSheet2: TTabSheet
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Todos Contatos'
          ImageIndex = -1
          object DBGrid2: TDBGrid
            Tag = 1
            Left = 0
            Top = 0
            Width = 1375
            Height = 186
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = dsContatos
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -24
            TitleFont.Name = 'Segoe UI'
            TitleFont.Pitch = fpVariable
            TitleFont.Style = []
            OnDrawColumnCell = DBGrid2DrawColumnCell
            OnDblClick = DBGridDblClick
            OnEnter = DBGridEnter
            OnKeyPress = DBGridKeyPress
          end
        end
        object TabSheet3: TTabSheet
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Contatos Ativos'
          ImageIndex = 208
        end
        object TabSheet4: TTabSheet
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Contatos Inativos'
          ImageIndex = 209
        end
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Left = 5
    Top = 5
    Width = 1383
    Height = 39
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    RowSize = 41
    ExplicitLeft = 5
    ExplicitTop = 5
    ExplicitWidth = 1383
    ExplicitHeight = 39
    inherited ToolBar1: TToolBar
      Left = 18
      Width = 1030
      Height = 35
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ButtonHeight = 31
      ButtonWidth = 93
      ExplicitLeft = 18
      ExplicitWidth = 1030
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
    Left = 760
    Top = 128
    object actOrca: TAction
      Caption = 'Or'#231'amentos...'
      ImageIndex = 50
      OnExecute = actOrcaExecute
    end
  end
  inherited pmRel: TPopupMenu
    Left = 800
    Top = 128
  end
  inherited pmOrder: TPopupMenu
    Left = 850
    Top = 126
  end
  inherited alRunTime: TActionList
    Left = 906
    Top = 126
  end
  inherited DataSource1: TDataSource
    Left = 648
    Top = 144
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SortedFields = 'nome_chave'
    AfterOpen = IBrwSrcAfterOpen
    AfterScroll = IBrwSrcAfterScroll
    AfterInsert = IBrwSrcAfterInsert
    SQL.Strings = (
      'select'
      
        '  c.codigo, c.empresa, c.nome_chave, c.endereco, c.bairro, c.cep' +
        ', c.cidade, c.estado, c.tipo,'
      
        '  c.cnpj, c.inscricao, c.cpf, c.rg, c.telefone, c.fax, c.website' +
        ', c.email, c.id_vendedor,'
      
        '  v.nome vendedornome, c.situacao, c.fat_ende, c.fat_bair, c.fat' +
        '_cep, c.fat_cida, c.fat_esta,'
      
        '  c.ent_ende, c.ent_bair, c.ent_cep, c.ent_cida, c.ent_esta, c.c' +
        'obra_ende, c.cobra_bairro,'
      
        '  c.cobra_cep, c.cobra_cida, c.cobra_esta, c.observacao, c.restr' +
        'icao, c.restrmotiv,'
      
        '  c.dtcadastro, c.senha, c.tag_caption, c.recno, c.logo, c.envia' +
        '_cronograma_coleta'
      'from'
      '  tbclientes c'
      'left join'
      '  tb_vendedores v on'
      '  v.idvendedor = c.id_vendedor')
    IndexFieldNames = 'nome_chave Asc'
    Sequence = ZSequence1
    SequenceField = 'recno'
    Left = 552
    Top = 144
    object IBrwSrcsituacao: TStringField
      DisplayLabel = ' '
      DisplayWidth = 15
      FieldName = 'situacao'
      Size = 100
    end
    object IBrwSrccodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo'
    end
    object IBrwSrcnome_chave: TStringField
      DisplayLabel = 'Nome Fantasia'
      DisplayWidth = 25
      FieldName = 'nome_chave'
      Required = True
      Size = 100
    end
    object IBrwSrcempresa: TStringField
      DisplayLabel = 'Nome Empresarial'
      DisplayWidth = 40
      FieldName = 'empresa'
      Required = True
      Size = 100
    end
    object IBrwSrcendereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      DisplayWidth = 20
      FieldName = 'endereco'
      Required = True
      Visible = False
      Size = 100
    end
    object IBrwSrcbairro: TStringField
      DisplayLabel = 'Bairro'
      DisplayWidth = 20
      FieldName = 'bairro'
      Visible = False
      Size = 100
    end
    object IBrwSrccep: TStringField
      DisplayLabel = 'CEP'
      DisplayWidth = 12
      FieldName = 'cep'
      Visible = False
      EditMask = '99999-999;1;'
      Size = 100
    end
    object IBrwSrccidade: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 20
      FieldName = 'cidade'
      Visible = False
      Size = 100
    end
    object IBrwSrcestado: TStringField
      DisplayLabel = 'UF'
      DisplayWidth = 5
      FieldName = 'estado'
      Required = True
      Visible = False
      Size = 2
    end
    object IBrwSrccnpj: TStringField
      DisplayLabel = 'C.N.P.J'
      DisplayWidth = 18
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object IBrwSrcinscricao: TStringField
      DisplayLabel = 'Ins. Estadual'
      DisplayWidth = 20
      FieldName = 'inscricao'
      Visible = False
      Size = 100
    end
    object IBrwSrctelefone: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 20
      FieldName = 'telefone'
      Size = 100
    end
    object IBrwSrcfax: TStringField
      DisplayLabel = 'Fax'
      DisplayWidth = 20
      FieldName = 'fax'
      Visible = False
      Size = 100
    end
    object IBrwSrcwebsite: TStringField
      DisplayLabel = 'Site'
      DisplayWidth = 40
      FieldName = 'website'
      Size = 100
    end
    object IBrwSrcemail: TStringField
      DisplayLabel = 'E-Mail'
      DisplayWidth = 20
      FieldName = 'email'
      Visible = False
      Size = 100
    end
    object IBrwSrcid_vendedor: TIntegerField
      FieldName = 'id_vendedor'
      Visible = False
    end
    object IBrwSrcvendedornome: TStringField
      FieldName = 'vendedornome'
      Visible = False
      Size = 100
    end
    object IBrwSrcfat_ende: TStringField
      DisplayLabel = 'Endere'#231'o'
      DisplayWidth = 25
      FieldName = 'fat_ende'
      Visible = False
      Size = 100
    end
    object IBrwSrcfat_bair: TStringField
      DisplayLabel = 'Bairro'
      DisplayWidth = 20
      FieldName = 'fat_bair'
      Visible = False
      Size = 100
    end
    object IBrwSrcfat_cep: TStringField
      DisplayLabel = 'CEP'
      DisplayWidth = 10
      FieldName = 'fat_cep'
      Visible = False
      EditMask = '99999-999;1;'
      Size = 100
    end
    object IBrwSrcfat_cida: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 20
      FieldName = 'fat_cida'
      Visible = False
      Size = 100
    end
    object IBrwSrcfat_esta: TStringField
      DisplayLabel = 'UF'
      DisplayWidth = 5
      FieldName = 'fat_esta'
      Visible = False
      Size = 2
    end
    object IBrwSrcent_ende: TStringField
      DisplayLabel = 'Endere'#231'o'
      DisplayWidth = 25
      FieldName = 'ent_ende'
      Visible = False
      Size = 100
    end
    object IBrwSrcent_bair: TStringField
      DisplayLabel = 'Bairro'
      DisplayWidth = 20
      FieldName = 'ent_bair'
      Visible = False
      Size = 100
    end
    object IBrwSrcent_cep: TStringField
      DisplayLabel = 'CEP'
      DisplayWidth = 10
      FieldName = 'ent_cep'
      Visible = False
      EditMask = '99999-999;1;'
      Size = 100
    end
    object IBrwSrcent_cida: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 20
      FieldName = 'ent_cida'
      Visible = False
      Size = 100
    end
    object IBrwSrcent_esta: TStringField
      DisplayLabel = 'UF'
      DisplayWidth = 5
      FieldName = 'ent_esta'
      Visible = False
      Size = 2
    end
    object IBrwSrccobra_ende: TStringField
      DisplayLabel = 'Endere'#231'o'
      DisplayWidth = 25
      FieldName = 'cobra_ende'
      Visible = False
      Size = 100
    end
    object IBrwSrccobra_bairro: TStringField
      DisplayLabel = 'Bairro'
      DisplayWidth = 20
      FieldName = 'cobra_bairro'
      Visible = False
      Size = 100
    end
    object IBrwSrccobra_cep: TStringField
      DisplayLabel = 'CEP'
      DisplayWidth = 10
      FieldName = 'cobra_cep'
      Visible = False
      EditMask = '99999-999;1;'
      Size = 100
    end
    object IBrwSrccobra_cida: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 20
      FieldName = 'cobra_cida'
      Visible = False
      Size = 100
    end
    object IBrwSrccobra_esta: TStringField
      DisplayLabel = 'UF'
      DisplayWidth = 5
      FieldName = 'cobra_esta'
      Visible = False
      Size = 2
    end
    object IBrwSrcobservacao: TMemoField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'observacao'
      Visible = False
      BlobType = ftMemo
    end
    object IBrwSrcdtcadastro: TDateField
      DisplayLabel = 'Cadastro'
      FieldName = 'dtcadastro'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object IBrwSrcsenha: TStringField
      FieldName = 'senha'
      Visible = False
      Size = 16
    end
    object IBrwSrctag_caption: TStringField
      DisplayLabel = 'Nome S'#233'rie'
      FieldName = 'tag_caption'
      Visible = False
    end
    object IBrwSrctipo: TIntegerField
      FieldName = 'tipo'
      Required = True
      Visible = False
      OnGetText = IBrwSrctipoGetText
      OnSetText = IBrwSrctipoSetText
    end
    object IBrwSrccpf: TStringField
      FieldName = 'cpf'
      Visible = False
      Size = 11
    end
    object IBrwSrcrg: TStringField
      FieldName = 'rg'
      Visible = False
      Size = 9
    end
    object IBrwSrcrestricao: TStringField
      FieldName = 'restricao'
      Visible = False
      Size = 100
    end
    object IBrwSrcrestrmotiv: TMemoField
      FieldName = 'restrmotiv'
      Visible = False
      BlobType = ftMemo
    end
    object IBrwSrcrecno: TIntegerField
      FieldName = 'recno'
      Required = True
      Visible = False
    end
    object IBrwSrclogo: TBlobField
      FieldName = 'logo'
      Visible = False
    end
    object IBrwSrcenvia_cronograma_coleta: TBooleanField
      DisplayLabel = 'Enviar Cronograma'
      FieldName = 'envia_cronograma_coleta'
      Required = True
      Visible = False
      OnGetText = IBrwSrcenvia_cronograma_coletaGetText
      OnSetText = IBrwSrcenvia_cronograma_coletaSetText
    end
  end
  inherited pmOpcao: TPopupMenu
    Left = 960
    Top = 128
    object Oramentos1: TMenuItem
      Action = actOrca
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM tbclientes'
      'WHERE'
      '  tbclientes.codigo = :OLD_codigo')
    InsertSQL.Strings = (
      'INSERT INTO tbclientes ('
      
        '  codigo, empresa, nome_chave, endereco, bairro, cep, cidade, es' +
        'tado, cnpj, inscricao, telefone,'
      
        '  fax, website, email, id_vendedor, situacao, fat_ende, fat_bair' +
        ', fat_cep, fat_cida, fat_esta,'
      
        '  ent_ende, ent_bair, ent_cep, ent_cida, ent_esta, cobra_ende, c' +
        'obra_bairro, cobra_cep, cobra_cida,'
      
        '  cobra_esta, observacao, restricao, restrmotiv, dtcadastro, sen' +
        'ha, tag_caption, recno, cpf, rg,'
      '  tipo, logo, envia_cronograma_coleta)'
      'VALUES ('
      
        '  :codigo, :empresa, :nome_chave, :endereco, :bairro, :cep, :cid' +
        'ade, :estado, :cnpj, :inscricao,'
      
        '  :telefone, :fax, :website, :email, :id_vendedor, :situacao, :f' +
        'at_ende, :fat_bair, :fat_cep,'
      
        '  :fat_cida, :fat_esta, :ent_ende, :ent_bair, :ent_cep, :ent_cid' +
        'a, :ent_esta, :cobra_ende,'
      
        '  :cobra_bairro, :cobra_cep, :cobra_cida, :cobra_esta, :observac' +
        'ao, :restricao, :restrmotiv,'
      
        '  :dtcadastro, :senha, :tag_caption, :recno, :cpf, :rg, :tipo, :' +
        'logo, :envia_cronograma_coleta)')
    ModifySQL.Strings = (
      'UPDATE tbclientes SET'
      '  codigo = :codigo,'
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
      '  id_vendedor = :id_vendedor,'
      '  situacao = :situacao,'
      '  fat_ende = :fat_ende,'
      '  fat_bair = :fat_bair,'
      '  fat_cep = :fat_cep,'
      '  fat_cida = :fat_cida,'
      '  fat_esta = :fat_esta,'
      '  ent_ende = :ent_ende,'
      '  ent_bair = :ent_bair,'
      '  ent_cep = :ent_cep,'
      '  ent_cida = :ent_cida,'
      '  ent_esta = :ent_esta,'
      '  cobra_ende = :cobra_ende,'
      '  cobra_bairro = :cobra_bairro,'
      '  cobra_cep = :cobra_cep,'
      '  cobra_cida = :cobra_cida,'
      '  cobra_esta = :cobra_esta,'
      '  observacao = :observacao,'
      '  restricao = :restricao,'
      '  restrmotiv = :restrmotiv,'
      '  dtcadastro = :dtcadastro,'
      '  senha = :senha,'
      '  tag_caption = :tag_caption,'
      '  recno = :recno,'
      '  cpf = :cpf,'
      '  rg = :rg,'
      '  tipo = :tipo,'
      '  logo = :logo,'
      '  envia_cronograma_coleta = :envia_cronograma_coleta'
      'WHERE'
      '  tbclientes.codigo = :OLD_codigo')
    Left = 464
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end
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
        Name = 'id_vendedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'situacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fat_ende'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fat_bair'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fat_cep'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fat_cida'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fat_esta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ent_ende'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ent_bair'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ent_cep'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ent_cida'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ent_esta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cobra_ende'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cobra_bairro'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cobra_cep'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cobra_cida'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cobra_esta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'observacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'restricao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'restrmotiv'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtcadastro'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'senha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tag_caption'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
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
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'logo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'envia_cronograma_coleta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_codigo'
        ParamType = ptUnknown
      end>
  end
  object qClientesFinais: TZQuery
    UpdateObject = uClientesFinais
    AfterInsert = qClientesFinaisAfterInsert
    SQL.Strings = (
      
        'select cf.codigo, cf.cliente, c.empresa, c.nome_chave, c.cidade,' +
        ' c.estado, c.cnpj,'
      '       c.cpf, cf.logo, cf.recno, c.email, c.telefone'
      '  from tbclientes_finais cf'
      '       join tbclientes c'
      '         on c.codigo = cf.cliente'
      ' where cf.codigo = :codigo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    Sequence = sClientesFinais
    SequenceField = 'recno'
    Left = 552
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object qClientesFinaiscodigo: TIntegerField
      DisplayLabel = 'Patrocinador'
      FieldName = 'codigo'
      Required = True
      Visible = False
    end
    object qClientesFinaiscliente: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'cliente'
      Required = True
    end
    object qClientesFinaisempresa: TStringField
      DisplayLabel = 'Nome Empresarial'
      DisplayWidth = 45
      FieldName = 'empresa'
      Size = 100
    end
    object qClientesFinaisnome_chave: TStringField
      DisplayLabel = 'Fantasia'
      DisplayWidth = 25
      FieldName = 'nome_chave'
      Size = 45
    end
    object qClientesFinaiscidade: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 25
      FieldName = 'cidade'
      Size = 100
    end
    object qClientesFinaisestado: TStringField
      DisplayLabel = 'Estado'
      DisplayWidth = 4
      FieldName = 'estado'
      Size = 2
    end
    object qClientesFinaistelefone: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 25
      FieldName = 'telefone'
      Size = 100
    end
    object qClientesFinaisemail: TStringField
      DisplayLabel = 'E-mail'
      DisplayWidth = 25
      FieldName = 'email'
      Size = 100
    end
    object qClientesFinaiscnpj: TStringField
      DisplayLabel = 'CNPJ'
      DisplayWidth = 18
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object qClientesFinaiscpf: TStringField
      DisplayLabel = 'CPF'
      DisplayWidth = 14
      FieldName = 'cpf'
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object qClientesFinaislogo: TBlobField
      DisplayLabel = 'Logotipo'
      FieldName = 'logo'
      Visible = False
    end
    object qClientesFinaisrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
      Required = True
    end
  end
  object dsClientesFinais: TDataSource
    DataSet = qClientesFinais
    Left = 648
    Top = 192
  end
  object uClientesFinais: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM tbclientes_finais'
      'WHERE'
      '  tbclientes_finais.codigo = :OLD_codigo AND'
      '  tbclientes_finais.cliente = :OLD_cliente')
    InsertSQL.Strings = (
      'INSERT INTO tbclientes_finais'
      '  (codigo, cliente, logo, recno)'
      'VALUES'
      '  (:codigo, :cliente, :logo, :recno)')
    ModifySQL.Strings = (
      'UPDATE tbclientes_finais SET'
      '  codigo = :codigo,'
      '  cliente = :cliente,'
      '  logo = :logo,'
      '  recno = :recno'
      'WHERE'
      '  tbclientes_finais.codigo = :OLD_codigo AND'
      '  tbclientes_finais.cliente = :OLD_cliente')
    UseSequenceFieldForRefreshSQL = False
    Left = 464
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'logo'
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
      end
      item
        DataType = ftUnknown
        Name = 'OLD_cliente'
        ParamType = ptUnknown
      end>
  end
  object sClientesFinais: TZSequence
    SequenceName = 'public.tbclientes_finais_recno_seq'
    Left = 376
    Top = 192
  end
  object ZSequence1: TZSequence
    Connection = DM.Design
    SequenceName = 'public.tbclientes_recno_seq'
    Left = 376
    Top = 144
  end
  object dsContatos: TDataSource
    DataSet = qContatos
    Left = 648
    Top = 240
  end
  object qContatos: TZQuery
    Tag = 1
    Connection = DM.Design
    UpdateObject = uContatos
    AfterInsert = qContatosAfterInsert
    BeforePost = qContatosBeforePost
    SQL.Strings = (
      'select'
      
        '  a.cliente, a.contato, c.nome, a.funcao, c.telefone, c.celular,' +
        ' c.email, a.situacao, a.recno,'
      
        '  a.padrao, a.contato_comercial, a.contato_tecnico, a.contato_fi' +
        'nanceiro, a.portal_acessivel,'
      '  a.portal_senha, a.obs, c.ramal, a.envia_cronograma_coleta'
      'from'
      '  tbclientes_contatos a'
      'join'
      '  contatos c on'
      '  c.recno = a.contato'
      'where'
      '  a.cliente = :cliente')
    Params = <
      item
        DataType = ftInteger
        Name = 'cliente'
        ParamType = ptUnknown
      end>
    Options = []
    Sequence = sContatos
    SequenceField = 'recno'
    Left = 552
    Top = 240
    ParamData = <
      item
        DataType = ftInteger
        Name = 'cliente'
        ParamType = ptUnknown
      end>
    object qContatossituacao: TIntegerField
      DisplayLabel = ' '
      FieldName = 'situacao'
      OnChange = qContatossituacaoChange
      OnGetText = qContatossituacaoGetText
      OnSetText = qContatossituacaoSetText
    end
    object qContatoscliente: TIntegerField
      FieldName = 'cliente'
      Visible = False
    end
    object qContatoscontato: TIntegerField
      DisplayLabel = 'Contato'
      FieldName = 'contato'
      Required = True
    end
    object qContatospadrao: TBooleanField
      DisplayLabel = 'Padr'#227'o'
      FieldName = 'padrao'
    end
    object qContatosnome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 40
      FieldName = 'nome'
      Required = True
      Size = 100
    end
    object qContatosfuncao: TStringField
      DisplayLabel = 'Fun'#231#227'o'
      DisplayWidth = 20
      FieldName = 'funcao'
      Visible = False
      Size = 100
    end
    object qContatostelefone: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 15
      FieldName = 'telefone'
      Required = True
      EditMask = '(99) 9999-9999;0;'
      Size = 100
    end
    object qContatosramal: TStringField
      DisplayLabel = 'Ramal'
      FieldName = 'ramal'
      Size = 6
    end
    object qContatoscelular: TStringField
      DisplayLabel = 'Celular'
      DisplayWidth = 15
      FieldName = 'celular'
      EditMask = '(99) 9.9999-9999;0;'
      Size = 100
    end
    object qContatosemail: TStringField
      DisplayLabel = 'E-Mail'
      DisplayWidth = 25
      FieldName = 'email'
      OnChange = qContatossituacaoChange
      Size = 100
    end
    object qContatoscontato_comercial: TBooleanField
      DisplayLabel = 'Comercial'
      FieldName = 'contato_comercial'
      Required = True
    end
    object qContatoscontato_tecnico: TBooleanField
      DisplayLabel = 'T'#233'cnico'
      FieldName = 'contato_tecnico'
    end
    object qContatoscontato_financeiro: TBooleanField
      DisplayLabel = 'Financeiro'
      FieldName = 'contato_financeiro'
      Required = True
    end
    object qContatosportal_acessivel: TBooleanField
      DisplayLabel = 'Acesso ao Portal'
      FieldName = 'portal_acessivel'
      Required = True
    end
    object qContatosrecno: TIntegerField
      FieldName = 'recno'
      Visible = False
    end
    object qContatosportal_senha: TStringField
      DisplayLabel = 'Senha do Portal'
      FieldName = 'portal_senha'
      Visible = False
      Size = 34
    end
    object qContatosobs: TMemoField
      FieldName = 'obs'
      Visible = False
      BlobType = ftMemo
    end
    object qContatosenvia_cronograma_coleta: TBooleanField
      DisplayLabel = 'Enviar Cronograma'
      FieldName = 'envia_cronograma_coleta'
      Required = True
    end
  end
  object uContatos: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM tbclientes_contatos'
      'WHERE'
      '  tbclientes_contatos.cliente = :OLD_cliente AND'
      '  tbclientes_contatos.contato = :OLD_contato')
    InsertSQL.Strings = (
      'INSERT INTO tbclientes_contatos'
      
        '  (cliente, funcao, recno, situacao, contato_comercial, contato_' +
        'tecnico, contato_financeiro, padrao, contato,'
      '   portal_acessivel, portal_senha, obs, envia_cronograma_coleta)'
      'VALUES'
      
        '  (:cliente, :funcao, :recno, :situacao, :contato_comercial, :co' +
        'ntato_tecnico, :contato_financeiro, :padrao, :contato,'
      
        '   :portal_acessivel, :portal_senha, :obs, :envia_cronograma_col' +
        'eta)')
    ModifySQL.Strings = (
      'UPDATE tbclientes_contatos SET'
      '  cliente = :cliente,'
      '  funcao = :funcao,'
      '  recno = :recno,'
      '  situacao = :situacao,'
      '  contato_comercial = :contato_comercial,'
      '  contato_tecnico = :contato_tecnico,'
      '  contato_financeiro = :contato_financeiro,'
      '  padrao = :padrao,'
      '  contato = :contato,'
      '  portal_acessivel = :portal_acessivel,'
      '  portal_senha = :portal_senha,'
      '  obs = :obs,'
      '  envia_cronograma_coleta = :envia_cronograma_coleta'
      'WHERE'
      '  tbclientes_contatos.cliente = :OLD_cliente AND'
      '  tbclientes_contatos.contato = :OLD_contato')
    UseSequenceFieldForRefreshSQL = False
    Left = 464
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'funcao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'situacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contato_comercial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contato_tecnico'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contato_financeiro'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'padrao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'portal_acessivel'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'portal_senha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'obs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'envia_cronograma_coleta'
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
    SequenceName = 'public.tbclientes_contatos_recno_seq'
    Left = 376
    Top = 240
  end
  object qVendedores: TZQuery
    Tag = 1
    Connection = DM.Design
    SQL.Strings = (
      'select idvendedor, nome, cnpj, cpf, recno'
      '  from tb_vendedores')
    Params = <>
    Options = []
    Left = 552
    Top = 288
    object qVendedoresidvendedor: TIntegerField
      FieldName = 'idvendedor'
      Required = True
    end
    object qVendedoresnome: TStringField
      FieldName = 'nome'
      Size = 100
    end
    object qVendedorescnpj: TStringField
      FieldName = 'cnpj'
      Size = 14
    end
    object qVendedorescpf: TStringField
      FieldName = 'cpf'
      Size = 11
    end
    object qVendedoresrecno: TIntegerField
      FieldName = 'recno'
      Required = True
    end
  end
  object dsVendedores: TDataSource
    DataSet = qVendedores
    Left = 648
    Top = 288
  end
end
