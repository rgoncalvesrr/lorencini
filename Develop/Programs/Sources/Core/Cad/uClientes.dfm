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
          Width = 1094
          Height = 212
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Ativos'
        ImageIndex = 208
        ExplicitLeft = 43
        ExplicitTop = -47
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
            DataSource = dsContatos
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
    AfterScroll = IBrwSrcAfterScroll
    AfterInsert = IBrwSrcAfterInsert
    SQL.Strings = (
      
        'select codigo, empresa, nome_chave, endereco, bairro, cep, cidad' +
        'e, estado, tipo,'
      
        '       cnpj, inscricao, cpf, rg, telefone, fax, website, email, ' +
        'id_vendedor,'
      
        '       situacao, fat_ende, fat_bair, fat_cep, fat_cida, fat_esta' +
        ', ent_ende,'
      
        '       ent_bair, ent_cep, ent_cida, ent_esta, cobra_ende, cobra_' +
        'bairro,'
      
        '       cobra_cep, cobra_cida, cobra_esta, observacao, restricao,' +
        ' restrmotiv,'
      
        '       dtcadastro, senha, tag_caption, contato, contato_tel, con' +
        'tato_func,'
      
        '       contato_cel, contato_mail, contato_nextel, contato_nextel' +
        'cel, recno, logo'
      '  from tbclientes')
    IndexFieldNames = 'nome_chave Asc'
    Sequence = ZSequence1
    SequenceField = 'recno'
    Left = 552
    Top = 144
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
    object IBrwSrcnomevendedor: TStringField
      DisplayLabel = 'Vendedor'
      FieldKind = fkLookup
      FieldName = 'vendedornome'
      LookupDataSet = qVendedores
      LookupKeyFields = 'idvendedor'
      LookupResultField = 'nome'
      KeyFields = 'id_vendedor'
      Size = 60
      Lookup = True
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
    object IBrwSrctipo: TIntegerField
      FieldName = 'tipo'
      Required = True
      OnGetText = IBrwSrctipoGetText
      OnSetText = IBrwSrctipoSetText
    end
    object IBrwSrccpf: TStringField
      FieldName = 'cpf'
      Size = 11
    end
    object IBrwSrcrg: TStringField
      FieldName = 'rg'
      Size = 9
    end
    object IBrwSrcrestricao: TStringField
      FieldName = 'restricao'
      Size = 100
    end
    object IBrwSrcrestrmotiv: TMemoField
      FieldName = 'restrmotiv'
      BlobType = ftMemo
    end
    object IBrwSrcrecno: TIntegerField
      FieldName = 'recno'
      Required = True
    end
    object IBrwSrclogo: TBlobField
      FieldName = 'logo'
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
      'INSERT INTO tbclientes'
      
        '  (codigo, empresa, nome_chave, endereco, bairro, cep, cidade, e' +
        'stado, cnpj, inscricao, telefone, fax, website, email,'
      
        '   id_vendedor, situacao, fat_ende, fat_bair, fat_cep, fat_cida,' +
        ' fat_esta, ent_ende, ent_bair, ent_cep, ent_cida,'
      
        '   ent_esta, cobra_ende, cobra_bairro, cobra_cep, cobra_cida, co' +
        'bra_esta, observacao, restricao, restrmotiv, dtcadastro,'
      
        '   senha, tag_caption, recno, contato, contato_tel, contato_cel,' +
        ' contato_mail, contato_func, contato_nextel,'
      '   contato_nextelcel, cpf, rg, tipo, logo)'
      'VALUES'
      
        '  (:codigo, :empresa, :nome_chave, :endereco, :bairro, :cep, :ci' +
        'dade, :estado, :cnpj, :inscricao, :telefone, :fax,'
      
        '   :website, :email, :id_vendedor, :situacao, :fat_ende, :fat_ba' +
        'ir, :fat_cep, :fat_cida, :fat_esta, :ent_ende,'
      
        '   :ent_bair, :ent_cep, :ent_cida, :ent_esta, :cobra_ende, :cobr' +
        'a_bairro, :cobra_cep, :cobra_cida, :cobra_esta,'
      
        '   :observacao, :restricao, :restrmotiv, :dtcadastro, :senha, :t' +
        'ag_caption, :recno, :contato, :contato_tel, :contato_cel,'
      
        '   :contato_mail, :contato_func, :contato_nextel, :contato_nexte' +
        'lcel, :cpf, :rg, :tipo, :logo)')
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
      '  contato = :contato,'
      '  contato_tel = :contato_tel,'
      '  contato_cel = :contato_cel,'
      '  contato_mail = :contato_mail,'
      '  contato_func = :contato_func,'
      '  contato_nextel = :contato_nextel,'
      '  contato_nextelcel = :contato_nextelcel,'
      '  cpf = :cpf,'
      '  rg = :rg,'
      '  tipo = :tipo,'
      '  logo = :logo'
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
        Name = 'contato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contato_tel'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contato_cel'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contato_mail'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contato_func'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contato_nextel'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contato_nextelcel'
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
    UpdateObject = uContatos
    AfterInsert = qContatosAfterInsert
    BeforePost = qContatosBeforePost
    SQL.Strings = (
      
        'select cliente, item, nome, funcao, telefone, celular, email, co' +
        'ntato_nextel,'
      '       contato_nextelcel, situacao, recno'
      '  from tbclientes_contatos'
      ' where cliente = :cliente')
    Params = <
      item
        DataType = ftInteger
        Name = 'cliente'
        ParamType = ptUnknown
      end>
    Options = []
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
      OnGetText = qContatossituacaoGetText
      OnSetText = qContatossituacaoSetText
    end
    object qContatoscliente: TIntegerField
      FieldName = 'cliente'
      Visible = False
    end
    object qContatositem: TIntegerField
      FieldName = 'item'
      Visible = False
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
      Size = 100
    end
    object qContatoscontato_nextel: TStringField
      DisplayLabel = 'Nextel ID'
      FieldName = 'contato_nextel'
      Size = 25
    end
    object qContatoscontato_nextelcel: TStringField
      DisplayLabel = 'Nextel Celular'
      FieldName = 'contato_nextelcel'
      Size = 25
    end
    object qContatosrecno: TIntegerField
      FieldName = 'recno'
      Visible = False
    end
  end
  object uContatos: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM tbclientes_contatos'
      'WHERE'
      '  tbclientes_contatos.cliente = :OLD_cliente AND'
      '  tbclientes_contatos.item = :OLD_item')
    InsertSQL.Strings = (
      'INSERT INTO tbclientes_contatos'
      '  (cliente, nome, funcao, telefone, celular, email, '
      '   contato_nextel, contato_nextelcel, situacao)'
      'VALUES'
      '  (:cliente, :nome, :funcao, :telefone, :celular, :email, '
      '   :contato_nextel, :contato_nextelce, :situacao)')
    ModifySQL.Strings = (
      'UPDATE tbclientes_contatos SET'
      '  nome = :nome,'
      '  funcao = :funcao,'
      '  telefone = :telefone,'
      '  celular = :celular,'
      '  email = :email,'
      '  contato_nextel = :contato_nextel, '
      '  contato_nextelcel = :contato_nextelcel,'
      '  situacao = :situacao'
      'WHERE'
      '  cliente = :OLD_cliente AND'
      '  item = :OLD_item')
    UseSequenceFieldForRefreshSQL = False
    Left = 464
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nome'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'funcao'
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
        Name = 'email'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contato_nextel'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contato_nextelcel'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'situacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_item'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contato_nextelce'
        ParamType = ptUnknown
      end>
  end
  object qVendedores: TZQuery
    SortedFields = 'NOME'
    Filter = 'ativo = true'
    AfterInsert = qVendedoresAfterInsert
    SQL.Strings = (
      'select * '
      '  from tb_vendedores')
    Params = <>
    IndexFieldNames = 'NOME Asc'
    Options = []
    Left = 552
    Top = 288
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
    object qVendedoresusername: TStringField
      DisplayLabel = 'Login'
      FieldName = 'username'
      Visible = False
    end
    object qVendedoresNomeUsuario: TStringField
      DisplayWidth = 25
      FieldKind = fkLookup
      FieldName = 'NomeUsuario'
      LookupDataSet = qSysUsers
      LookupKeyFields = 'username'
      LookupResultField = 'name'
      KeyFields = 'username'
      Visible = False
      Size = 30
      Lookup = True
    end
  end
  object dsVendedores: TDataSource
    AutoEdit = False
    DataSet = qVendedores
    Left = 648
    Top = 288
  end
  object qSysUsers: TZQuery
    SortedFields = 'name'
    Filter = 'active = true and type_ = 1'
    SQL.Strings = (
      'select * '
      '  from sys_users')
    Params = <>
    IndexFieldNames = 'name Asc'
    Options = []
    Left = 552
    Top = 336
    object qSysUsersusername: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'username'
      Required = True
    end
    object qSysUserspassword: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'password'
      Required = True
    end
    object qSysUsersname: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'name'
      Required = True
      Size = 40
    end
    object qSysUsersactive: TBooleanField
      DisplayLabel = 'Ativo'
      FieldName = 'active'
      Required = True
    end
    object qSysUsersemail: TStringField
      DisplayLabel = 'EMail'
      FieldName = 'email'
      Size = 40
    end
    object qSysUserschangepass: TBooleanField
      DisplayLabel = 'Troca Senha?'
      FieldName = 'changepass'
      Required = True
    end
  end
  object dsSysUsers: TDataSource
    AutoEdit = False
    DataSet = qSysUsers
    Left = 648
    Top = 336
  end
end
