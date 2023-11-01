inherited Fretes: TFretes
  Caption = 'Consulta de Fretes'
  ClientHeight = 592
  ClientWidth = 1032
  ExplicitWidth = 1048
  ExplicitHeight = 631
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 565
    Width = 1026
    ExplicitTop = 565
    ExplicitWidth = 1026
  end
  inherited Panel1: TPanel
    Width = 1032
    ExplicitWidth = 1032
    inherited pctlFind: TPageControl
      Width = 1022
      ExplicitWidth = 1022
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1014
        ExplicitHeight = 75
        object Label18: TLabel [0]
          Left = 160
          Top = -1
          Width = 90
          Height = 15
          Caption = 'Vizualizar cliente:'
          Transparent = True
        end
        object Label19: TLabel [1]
          Left = 431
          Top = -1
          Width = 43
          Height = 15
          Caption = 'Emiss'#227'o'
        end
        object Label20: TLabel [2]
          Left = 431
          Top = 47
          Width = 3
          Height = 15
        end
        object Label24: TLabel [3]
          Left = 3
          Top = 2
          Width = 32
          Height = 15
          Caption = 'Status'
        end
        inherited BitBtn2: TBitBtn
          Left = 913
          ExplicitLeft = 913
        end
        object ComboBox1: TComboBox
          Left = 161
          Top = 20
          Width = 264
          Height = 23
          Style = csDropDownList
          DropDownCount = 30
          ItemHeight = 15
          TabOrder = 1
          OnChange = actQueryProcessExecute
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
        inline FrameData1: TFrameData
          Left = 431
          Top = 20
          Width = 156
          Height = 23
          AutoSize = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          ExplicitLeft = 431
          ExplicitTop = 20
          ExplicitWidth = 156
          inherited ComboBox1: TComboBox
            Width = 156
            ItemIndex = 2
            Text = 'Trimestralmente'
            OnChange = FrameData1ComboBox1Change
            ExplicitWidth = 156
          end
          inherited CCalendarDiff1: TCCalendarDiff
            Date = 45227.726230208330000000
            DisplayInterval = Label20
            OnChange = actQueryProcessExecute
          end
        end
        object cbStatus: TComboBox
          Left = 3
          Top = 20
          Width = 151
          Height = 23
          Style = csDropDownList
          ItemHeight = 15
          TabOrder = 3
          OnChange = cbStatusChange
          Items.Strings = (
            'Todos'
            'Digitado'
            'Estimado'
            'Cobrado'
            'Cancelado')
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1014
        ExplicitHeight = 75
      end
    end
  end
  inherited Panel2: TPanel
    Width = 1032
    Height = 433
    ExplicitWidth = 1032
    ExplicitHeight = 433
    object Splitter1: TSplitter [0]
      Left = 685
      Top = 0
      Width = 6
      Height = 433
      Align = alRight
      ExplicitLeft = 452
      ExplicitTop = 1
      ExplicitHeight = 308
    end
    inherited PageControl1: TPageControl
      Width = 679
      Height = 427
      ActivePage = Estimado
      Images = Resources.medium_h
      ExplicitWidth = 679
      ExplicitHeight = 427
      inherited TabSheet1: TTabSheet
        Caption = 'Todos'
        ImageIndex = -1
        ExplicitLeft = 4
        ExplicitTop = 33
        ExplicitWidth = 671
        ExplicitHeight = 390
        inherited DBGrid1: TDBGrid
          Width = 665
          Height = 384
          OnDrawColumnCell = DBGrid1DrawColumnCell
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Digitado'
        ImageIndex = 214
      end
      object Estimado: TTabSheet
        Caption = 'Estimado'
        ImageIndex = 213
      end
      object Cobrado: TTabSheet
        Caption = 'Cobrado'
        ImageIndex = 208
      end
      object TabSheet3: TTabSheet
        Caption = 'Cancelado'
        ImageIndex = 204
      end
    end
    object Panel3: TPanel
      Left = 691
      Top = 0
      Width = 341
      Height = 433
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object Panel21: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 171
        Width = 335
        Height = 50
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Panel22: TPanel
          Left = 57
          Top = 0
          Width = 150
          Height = 50
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object Label1: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 144
            Height = 15
            Align = alTop
            Caption = 'Nome'
            FocusControl = DBEdit3
            ExplicitWidth = 33
          end
          object DBEdit3: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 144
            Height = 23
            Align = alClient
            DataField = 'serviconome'
            DataSource = DataSource1
            ReadOnly = True
            TabOrder = 0
          end
        end
        object Panel15: TPanel
          Left = 0
          Top = 0
          Width = 57
          Height = 50
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Label3: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 51
            Height = 15
            Align = alTop
            Caption = 'Servi'#231'o'
            FocusControl = DBEdit1
            ExplicitWidth = 38
          end
          object DBEdit1: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 51
            Height = 23
            Align = alClient
            DataField = 'servico'
            DataSource = DataSource1
            ReadOnly = True
            TabOrder = 0
          end
        end
        object Panel16: TPanel
          Left = 295
          Top = 0
          Width = 40
          Height = 50
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 2
          object Label4: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 34
            Height = 15
            Align = alTop
            Caption = 'Prazo'
            FocusControl = DBEdit2
            ExplicitWidth = 29
          end
          object DBEdit2: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 34
            Height = 23
            Align = alClient
            DataField = 'prazo'
            DataSource = DataSource1
            ReadOnly = True
            TabOrder = 0
          end
        end
        object Panel24: TPanel
          Left = 207
          Top = 0
          Width = 88
          Height = 50
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 3
          object Label14: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 82
            Height = 15
            Align = alTop
            Caption = 'Formato'
            FocusControl = DBEdit16
            ExplicitWidth = 45
          end
          object DBEdit16: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 82
            Height = 23
            Align = alClient
            DataField = 'formato'
            DataSource = DataSource1
            ReadOnly = True
            TabOrder = 0
          end
        end
      end
      object Panel7: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 227
        Width = 335
        Height = 50
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object Panel9: TPanel
          Left = 0
          Top = 0
          Width = 80
          Height = 50
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object Label7: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 74
            Height = 15
            Align = alTop
            Caption = 'Lagura (cm)'
            ExplicitWidth = 64
          end
          object DBEdit4: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 74
            Height = 23
            Align = alClient
            DataField = 'largura'
            DataSource = DataSource1
            ReadOnly = True
            TabOrder = 0
          end
        end
        object Panel10: TPanel
          Left = 80
          Top = 0
          Width = 80
          Height = 50
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Label8: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 74
            Height = 15
            Align = alTop
            Caption = 'Altura (cm)'
            ExplicitWidth = 60
          end
          object DBEdit5: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 74
            Height = 23
            Align = alClient
            DataField = 'altura'
            DataSource = DataSource1
            ReadOnly = True
            TabOrder = 0
          end
        end
        object Panel11: TPanel
          Left = 160
          Top = 0
          Width = 80
          Height = 50
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object Label9: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 74
            Height = 15
            Align = alTop
            Caption = 'Comprimento (cm)'
            ExplicitWidth = 103
          end
          object DBEdit6: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 74
            Height = 23
            Align = alClient
            DataField = 'comprimento'
            DataSource = DataSource1
            ReadOnly = True
            TabOrder = 0
          end
        end
        object Panel12: TPanel
          Left = 240
          Top = 0
          Width = 95
          Height = 50
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 3
          object Label10: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 89
            Height = 15
            Align = alTop
            Caption = 'Di'#226'metro (cm)'
            ExplicitWidth = 77
          end
          object DBEdit7: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 89
            Height = 23
            Align = alClient
            DataField = 'diametro'
            DataSource = DataSource1
            ReadOnly = True
            TabOrder = 0
          end
        end
      end
      object Panel8: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 283
        Width = 335
        Height = 50
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 3
        object Panel17: TPanel
          Left = 114
          Top = 0
          Width = 57
          Height = 50
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object Label15: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 51
            Height = 15
            Align = alTop
            Caption = 'Fator (%)'
            ExplicitWidth = 48
          end
          object DBEdit10: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 51
            Height = 23
            Align = alClient
            DataField = 'fator'
            DataSource = DataSource1
            ReadOnly = True
            TabOrder = 0
          end
        end
        object Panel18: TPanel
          Left = 171
          Top = 0
          Width = 80
          Height = 50
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Label16: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 74
            Height = 15
            Align = alTop
            Caption = 'Valor'
            ExplicitWidth = 26
          end
          object DBEdit11: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 74
            Height = 23
            Align = alClient
            DataField = 'valor'
            DataSource = DataSource1
            ReadOnly = True
            TabOrder = 0
          end
        end
        object Panel19: TPanel
          Left = 251
          Top = 0
          Width = 84
          Height = 50
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 2
          object Label17: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 78
            Height = 15
            Align = alTop
            Caption = 'Frete'
            ExplicitWidth = 26
          end
          object DBEdit12: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 78
            Height = 23
            Align = alClient
            DataField = 'valorc'
            DataSource = DataSource1
            ReadOnly = True
            TabOrder = 0
          end
        end
        object Panel13: TPanel
          Left = 57
          Top = 0
          Width = 57
          Height = 50
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 3
          object Label11: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 51
            Height = 15
            Align = alTop
            Caption = 'Peso (kg)'
            ExplicitWidth = 49
          end
          object DBEdit8: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 51
            Height = 23
            Align = alClient
            DataField = 'peso'
            DataSource = DataSource1
            ReadOnly = True
            TabOrder = 0
          end
        end
        object Panel14: TPanel
          Left = 0
          Top = 0
          Width = 57
          Height = 50
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 4
          object Label12: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 51
            Height = 15
            Align = alTop
            Caption = 'Volumes'
            ExplicitWidth = 45
          end
          object DBEdit9: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 51
            Height = 23
            Align = alClient
            DataField = 'volumes'
            DataSource = DataSource1
            ReadOnly = True
            TabOrder = 0
          end
        end
      end
      object Panel4: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 115
        Width = 335
        Height = 50
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 335
          Height = 50
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object Label5: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 329
            Height = 15
            Align = alTop
            Caption = 'Descri'#231#227'o'
            ExplicitWidth = 51
          end
          object DBEdit13: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 329
            Height = 23
            Align = alClient
            DataField = 'descri'
            DataSource = DataSource1
            ReadOnly = True
            TabOrder = 0
          end
        end
      end
      object GroupBox1: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 339
        Width = 335
        Height = 91
        Align = alClient
        Caption = ' Mensagens '
        TabOrder = 4
        object DBMemo1: TDBMemo
          AlignWithMargins = True
          Left = 5
          Top = 20
          Width = 325
          Height = 66
          Align = alClient
          DataField = 'obs'
          DataSource = DataSource1
          TabOrder = 0
        end
      end
      object Panel6: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 335
        Height = 50
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 5
        object Panel20: TPanel
          Left = 0
          Top = 0
          Width = 49
          Height = 50
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object Label6: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 43
            Height = 15
            Align = alTop
            Caption = 'Cliente'
            ExplicitWidth = 37
          end
          object DBEdit14: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 43
            Height = 23
            Align = alClient
            DataField = 'codigo'
            DataSource = DataSource1
            ReadOnly = True
            TabOrder = 0
          end
        end
        object Panel23: TPanel
          Left = 49
          Top = 0
          Width = 286
          Height = 50
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object Label13: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 280
            Height = 15
            Align = alTop
            Caption = 'Nome Empresarial'
            ExplicitWidth = 97
          end
          object DBEdit15: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 280
            Height = 23
            Align = alClient
            DataField = 'empresa'
            DataSource = DataSource1
            ReadOnly = True
            TabOrder = 0
          end
        end
      end
      object Panel25: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 59
        Width = 335
        Height = 50
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 6
        object Panel26: TPanel
          Left = 126
          Top = 0
          Width = 116
          Height = 50
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          object Label21: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 110
            Height = 15
            Align = alTop
            Caption = 'CNPJ'
            ExplicitWidth = 27
          end
          object DBEdit17: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 110
            Height = 23
            Align = alClient
            DataField = 'cnpj'
            DataSource = DataSource1
            ReadOnly = True
            TabOrder = 0
          end
        end
        object Panel27: TPanel
          Left = 0
          Top = 0
          Width = 126
          Height = 50
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object Label22: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 120
            Height = 15
            Align = alTop
            Caption = 'Nome Curto'
            ExplicitWidth = 66
          end
          object DBEdit18: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 120
            Height = 23
            Align = alClient
            DataField = 'nome_chave'
            DataSource = DataSource1
            ReadOnly = True
            TabOrder = 0
          end
        end
        object Panel28: TPanel
          Left = 242
          Top = 0
          Width = 93
          Height = 50
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 2
          object Label23: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 87
            Height = 15
            Align = alTop
            Caption = 'Telefone'
            ExplicitWidth = 44
          end
          object DBEdit19: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 87
            Height = 23
            Align = alClient
            DataField = 'telefone'
            DataSource = DataSource1
            ReadOnly = True
            TabOrder = 0
          end
        end
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Width = 1026
    ExplicitWidth = 1026
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
    Left = 516
    Top = 208
    inherited actNew: TAction
      Visible = False
    end
  end
  inherited pmRel: TPopupMenu
    Left = 624
    Top = 212
  end
  inherited pmOrder: TPopupMenu
    Left = 418
    Top = 210
  end
  inherited alRunTime: TActionList
    Left = 470
    Top = 210
  end
  inherited DataSource1: TDataSource
    Left = 352
    Top = 212
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      
        'select co.recno, co.servico, cos.descri serviconome, co.formato,' +
        ' co.emissao,'
      
        '       co.volumes, co.peso, co.diametro, co.altura, co.largura, ' +
        'co.comprimento,'
      
        '       co.fator, co.valor, co.valorc, co.prazo, co.obs, co.descr' +
        'i, c.codigo,'
      
        '       c.empresa, c.nome_chave, c.cnpj, c.cpf, c.telefone, co.co' +
        'rreiovalor,'
      '       co.correiopeso, co.correiolido, co.status, co.rastreio'
      '  from correio co'
      '       join correioserv cos'
      '         on cos.servico = co.servico'
      '       join tbclientes c'
      '         on c.codigo = co.codigo')
    Left = 296
    Top = 212
    object IBrwSrcstatus: TIntegerField
      DisplayLabel = ' '
      FieldName = 'status'
    end
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Frete'
      DisplayWidth = 7
      FieldName = 'recno'
      Required = True
    end
    object IBrwSrcemissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      DisplayWidth = 16
      FieldName = 'emissao'
      Required = True
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 50
      FieldName = 'descri'
      Visible = False
      Size = 150
    end
    object IBrwSrcservico: TStringField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'servico'
      Required = True
      Size = 5
    end
    object IBrwSrcserviconome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 20
      FieldName = 'serviconome'
      Required = True
      Size = 60
    end
    object IBrwSrcformato: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Formato'
      FieldName = 'formato'
      Required = True
      Visible = False
      OnGetText = IBrwSrcformatoGetText
    end
    object IBrwSrcvolumes: TIntegerField
      DisplayLabel = 'Volumes'
      FieldName = 'volumes'
      Required = True
      DisplayFormat = ',0'
    end
    object IBrwSrcpeso: TFloatField
      DisplayLabel = 'Peso (Kg)'
      FieldName = 'peso'
      Required = True
      Visible = False
      DisplayFormat = ',0.###0'
    end
    object IBrwSrcdiametro: TFloatField
      DisplayLabel = 'Di'#226'metro (cm)'
      FieldName = 'diametro'
      Required = True
      Visible = False
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcaltura: TFloatField
      DisplayLabel = 'Altura (cm)'
      FieldName = 'altura'
      Required = True
      Visible = False
      DisplayFormat = ',0.#0'
    end
    object IBrwSrclargura: TFloatField
      DisplayLabel = 'Largura (cm)'
      FieldName = 'largura'
      Required = True
      Visible = False
      DisplayFormat = ',0.#0'
    end
    object IBrwSrccomprimento: TFloatField
      DisplayLabel = 'Comprimento (cm)'
      FieldName = 'comprimento'
      Required = True
      Visible = False
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcfator: TFloatField
      DisplayLabel = 'Fator %'
      FieldName = 'fator'
      Required = True
      Visible = False
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcvalor: TFloatField
      DisplayLabel = 'Frete'
      FieldName = 'valor'
      Required = True
      Visible = False
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcvalorc: TFloatField
      DisplayLabel = 'Frete'
      FieldName = 'valorc'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcprazo: TIntegerField
      DisplayLabel = 'Prazo'
      DisplayWidth = 6
      FieldName = 'prazo'
    end
    object IBrwSrcobs: TMemoField
      DisplayLabel = 'Obs'
      FieldName = 'obs'
      Visible = False
      BlobType = ftMemo
    end
    object IBrwSrccodigo: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'codigo'
      Required = True
    end
    object IBrwSrcempresa: TStringField
      DisplayLabel = 'Nome Empresarial'
      DisplayWidth = 25
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
      Size = 100
    end
    object IBrwSrccorreiovalor: TFloatField
      DisplayLabel = 'Frete Correio'
      FieldName = 'correiovalor'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object IBrwSrccorreiopeso: TFloatField
      DisplayLabel = 'Peso Correio'
      FieldName = 'correiopeso'
      Required = True
      DisplayFormat = ',0.###0'
    end
    object IBrwSrccorreiolido: TDateTimeField
      DisplayLabel = 'Atualiza'#231#227'o Correio'
      FieldName = 'correiolido'
      ReadOnly = True
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object IBrwSrcrastreio: TStringField
      DisplayLabel = 'C'#243'digo de Ratreamento'
      FieldName = 'rastreio'
      Size = 30
    end
  end
  inherited pmOpcao: TPopupMenu
    Left = 568
    Top = 208
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM correio'
      'WHERE'
      '  correio.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO correio'
      '  (rastreio, correiovalor, correiopeso)'
      'VALUES'
      '  (:rastreio, :correiovalor, :correiopeso)')
    ModifySQL.Strings = (
      'UPDATE correio SET'
      '  rastreio = :rastreio,'
      '  correiovalor = :correiovalor,'
      '  correiopeso = :correiopeso'
      'WHERE'
      '  correio.recno = :OLD_recno')
    Left = 248
    Top = 212
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rastreio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'correiovalor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'correiopeso'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_recno'
        ParamType = ptUnknown
      end>
  end
end
