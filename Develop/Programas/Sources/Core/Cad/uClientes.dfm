inherited Clientes: TClientes
  Caption = 'Cadastro de Clientes'
  ClientHeight = 619
  ClientWidth = 1114
  Constraints.MinWidth = 670
  ExplicitWidth = 1130
  ExplicitHeight = 658
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 592
    Width = 1108
    ExplicitTop = 592
    ExplicitWidth = 1108
  end
  inherited Panel1: TPanel
    Width = 1114
    ExplicitWidth = 1114
    inherited pctlFind: TPageControl
      Width = 1104
      ExplicitWidth = 1104
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1096
        ExplicitHeight = 75
        inherited BitBtn2: TBitBtn
          Left = 995
          ExplicitLeft = 995
        end
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 113
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Label5: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 107
            Height = 15
            Align = alTop
            Caption = 'Situa'#231#227'o'
            ExplicitWidth = 45
          end
          object cbSituacao: TComboBox
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 107
            Height = 23
            Align = alTop
            Style = csDropDownList
            ItemHeight = 15
            ItemIndex = 1
            TabOrder = 0
            Text = 'ATIVO'
            OnChange = cbSituacaoChange
            Items.Strings = (
              'TODOS'
              'ATIVO'
              'INATIVO'
              'PROSPECT')
          end
        end
        object Panel5: TPanel
          Left = 113
          Top = 0
          Width = 92
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object Label4: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 86
            Height = 15
            Align = alTop
            Caption = 'C'#243'digo'
            ExplicitWidth = 39
          end
          object edCodigo: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 86
            Height = 23
            Flat = False
            ParentFlat = False
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
          Left = 205
          Top = 0
          Width = 124
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 3
          object Label1: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 118
            Height = 15
            Align = alTop
            Caption = 'CNPJ'
            ExplicitWidth = 27
          end
          object edCNPJ: TMaskEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 118
            Height = 23
            Align = alTop
            EditMask = '99.999.999/9999-99;0;'
            MaxLength = 18
            TabOrder = 0
            OnChange = edCNPJChange
          end
        end
        object Panel7: TPanel
          Left = 329
          Top = 0
          Width = 124
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 4
          object Label3: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 118
            Height = 15
            Align = alTop
            Caption = 'CPF'
            ExplicitWidth = 21
          end
          object edCPF: TMaskEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 118
            Height = 23
            Align = alTop
            EditMask = '999.999.999-99;0;'
            MaxLength = 14
            TabOrder = 0
            OnChange = edCNPJChange
          end
        end
        object Panel8: TPanel
          Left = 453
          Top = 0
          Width = 212
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 5
          object Label6: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 206
            Height = 15
            Align = alTop
            Caption = 'Nome Fantasia'
            ExplicitWidth = 79
          end
          object edEmpresa: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 206
            Height = 23
            Align = alTop
            TabOrder = 0
            OnChange = edCNPJChange
          end
        end
        object Panel9: TPanel
          Left = 665
          Top = 0
          Width = 327
          Height = 75
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 6
          object Label7: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 321
            Height = 15
            Align = alTop
            Caption = 'Nome Empresarial'
            ExplicitWidth = 97
          end
          object edRazao: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 321
            Height = 23
            Align = alTop
            TabOrder = 0
            OnChange = edCNPJChange
          end
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1096
        ExplicitHeight = 75
      end
    end
  end
  inherited Panel2: TPanel
    Width = 1114
    Height = 460
    ExplicitWidth = 1114
    ExplicitHeight = 460
    object Splitter1: TSplitter [0]
      Left = 0
      Top = 261
      Width = 1114
      Height = 7
      Cursor = crVSplit
      Align = alBottom
      Beveled = True
      ExplicitTop = 172
      ExplicitWidth = 844
    end
    inherited PageControl1: TPageControl
      Width = 1108
      Height = 255
      ActivePage = TabSheet5
      Images = Resources.medium_n
      ExplicitWidth = 1108
      ExplicitHeight = 255
      inherited TabSheet1: TTabSheet
        Caption = 'Todos'
        ImageIndex = -1
        ExplicitLeft = 4
        ExplicitTop = 33
        ExplicitWidth = 1100
        ExplicitHeight = 218
        inherited DBGrid1: TDBGrid
          Width = 1100
          Height = 218
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Ativos'
        ImageIndex = 208
      end
      object TabSheet6: TTabSheet
        Caption = 'Inativos'
        ImageIndex = 209
      end
      object TabSheet7: TTabSheet
        Caption = 'Prospects'
        ImageIndex = 215
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 268
      Width = 1114
      Height = 192
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object PageControl2: TPageControl
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1108
        Height = 186
        ActivePage = TabSheet2
        Align = alClient
        Images = Resources.medium_n
        TabOrder = 0
        TabStop = False
        OnChange = PageControl2Change
        OnMouseDown = PageControl1MouseDown
        object TabSheet2: TTabSheet
          Caption = 'Todos Contatos'
          ImageIndex = -1
          object DBGrid2: TDBGrid
            Tag = 1
            Left = 0
            Top = 0
            Width = 1100
            Height = 149
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = DM.dsContatos
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            OnDrawColumnCell = DBGrid2DrawColumnCell
            OnDblClick = DBGridDblClick
            OnEnter = DBGridEnter
            OnKeyPress = DBGridKeyPress
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Contatos Ativos'
          ImageIndex = 208
        end
        object TabSheet4: TTabSheet
          Caption = 'Contatos Inativos'
          ImageIndex = 209
        end
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Width = 1108
    ExplicitWidth = 1108
    inherited ToolBar1: TToolBar
      Width = 824
      ExplicitWidth = 824
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
    Left = 576
    Top = 128
    object actOrca: TAction
      Caption = 'Or'#231'amentos...'
      ImageIndex = 50
      OnExecute = actOrcaExecute
    end
  end
  inherited pmRel: TPopupMenu
    Left = 616
    Top = 128
  end
  inherited pmOrder: TPopupMenu
    Left = 650
    Top = 126
  end
  inherited alRunTime: TActionList
    Left = 682
    Top = 126
  end
  inherited DataSource1: TDataSource
    DataSet = DM.qClientes
    Left = 520
    Top = 128
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SortedFields = 'nome_chave'
    SQL.Strings = (
      'select a.*, b.nome'
      '  from tbclientes a'
      '       left join tb_vendedores b'
      '         on a.id_vendedor = b.idvendedor')
    IndexFieldNames = 'nome_chave Asc'
    Left = 464
    Top = 128
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
    object IBrwSrcnome: TStringField
      DisplayLabel = 'Vendedor'
      DisplayWidth = 15
      FieldName = 'nome'
      Size = 100
    end
    object IBrwSrcsituacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      DisplayWidth = 15
      FieldName = 'situacao'
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
    object IBrwSrccontato: TStringField
      FieldName = 'contato'
      Visible = False
      Size = 60
    end
    object IBrwSrccontato_tel: TStringField
      FieldName = 'contato_tel'
      Visible = False
      Size = 25
    end
    object IBrwSrccontato_func: TStringField
      FieldName = 'contato_func'
      Visible = False
      Size = 54
    end
    object IBrwSrccontato_cel: TStringField
      FieldName = 'contato_cel'
      Visible = False
      Size = 25
    end
    object IBrwSrccontato_mail: TStringField
      FieldName = 'contato_mail'
      Visible = False
      Size = 25
    end
    object IBrwSrccontato_nextel: TStringField
      DisplayLabel = 'Nextel ID'
      FieldName = 'contato_nextel'
      Size = 25
    end
    object IBrwSrccontato_nextelcel: TStringField
      DisplayLabel = 'Nextel Celular'
      FieldName = 'contato_nextelcel'
      Size = 25
    end
  end
  inherited pmOpcao: TPopupMenu
    Left = 728
    Top = 128
    object Oramentos1: TMenuItem
      Action = actOrca
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    Left = 408
    Top = 128
  end
end
