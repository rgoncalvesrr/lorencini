inherited ClientesM: TClientesM
  BorderStyle = bsSizeable
  Caption = 'Manuten'#231#227'o do cadastro  do cliente'
  ClientHeight = 614
  ClientWidth = 848
  Constraints.MinWidth = 691
  WindowState = wsMaximized
  ExplicitWidth = 864
  ExplicitHeight = 653
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 848
    Height = 570
    ExplicitTop = 44
    ExplicitWidth = 848
    ExplicitHeight = 570
    inherited pnLookup: TPanel
      Width = 754
      ExplicitWidth = 754
    end
    inherited Panel3: TPanel
      Top = 320
      Width = 848
      Height = 250
      Visible = True
      ExplicitTop = 320
      ExplicitWidth = 848
      ExplicitHeight = 250
      inherited PageControl3: TPageControl
        Top = 47
        Width = 842
        Height = 200
        ExplicitLeft = 3
        ExplicitTop = 47
        ExplicitWidth = 842
        ExplicitHeight = 200
        inherited tsDet: TTabSheet
          Caption = 'Clientes Finais'
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 834
          ExplicitHeight = 170
          inherited DBGrid1: TDBGrid
            Width = 834
            Height = 170
            DataSource = DM.dsClientesFinais
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 842
        Height = 38
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 842
        ExplicitHeight = 38
        inherited ToolBar3: TToolBar
          Width = 735
          ButtonWidth = 129
          ExplicitWidth = 735
          inherited ToolButton10: TToolButton
            ExplicitWidth = 32
          end
          inherited ToolButton11: TToolButton
            ExplicitWidth = 32
          end
          inherited ToolButton17: TToolButton
            ExplicitWidth = 32
          end
          inherited ToolButton12: TToolButton
            ExplicitWidth = 32
          end
          inherited ToolButton13: TToolButton
            ExplicitWidth = 32
          end
          inherited tbSQLDet: TToolButton
            ExplicitWidth = 32
          end
          inherited tbRefazGrid: TToolButton
            ExplicitWidth = 32
          end
        end
      end
    end
    inherited PageControl1: TPageControl
      Width = 842
      Height = 314
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 842
      ExplicitHeight = 314
      inherited TabSheet1: TTabSheet
        Caption = 'Informa'#231#245'es Principais'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 834
        ExplicitHeight = 284
        object GroupBox2: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 204
          Width = 828
          Height = 68
          Align = alTop
          Caption = ' Contato Principal '
          TabOrder = 2
          object Panel58: TPanel
            Left = 2
            Top = 17
            Width = 150
            Height = 49
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label48: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 144
              Height = 15
              Align = alTop
              Caption = 'Contato'
              FocusControl = DBEdit42
              ExplicitWidth = 43
            end
            object DBEdit42: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 144
              Height = 22
              Align = alClient
              DataField = 'contato'
              DataSource = DM.dsClientes
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel59: TPanel
            Left = 152
            Top = 17
            Width = 112
            Height = 49
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label49: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 106
              Height = 15
              Align = alTop
              Caption = 'Fun'#231#227'o'
              FocusControl = DBEdit43
              ExplicitWidth = 39
            end
            object DBEdit43: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 106
              Height = 22
              Align = alClient
              DataField = 'contato_func'
              DataSource = DM.dsClientes
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel60: TPanel
            Left = 264
            Top = 17
            Width = 113
            Height = 49
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object Label50: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 107
              Height = 15
              Align = alTop
              Caption = 'Telefone'
              FocusControl = DBEdit44
              ExplicitWidth = 44
            end
            object DBEdit44: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 107
              Height = 22
              Align = alClient
              DataField = 'contato_tel'
              DataSource = DM.dsClientes
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel61: TPanel
            Left = 377
            Top = 17
            Width = 112
            Height = 49
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 3
            object Label51: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 106
              Height = 15
              Align = alTop
              Caption = 'Celular'
              FocusControl = DBEdit45
              ExplicitWidth = 37
            end
            object DBEdit45: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 106
              Height = 22
              Align = alClient
              DataField = 'contato_cel'
              DataSource = DM.dsClientes
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel62: TPanel
            Left = 489
            Top = 17
            Width = 262
            Height = 49
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 4
            object Label52: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 256
              Height = 15
              Align = alTop
              Caption = 'E-Mail'
              FocusControl = DBEdit46
              ExplicitWidth = 34
            end
            object DBEdit46: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 256
              Height = 22
              Align = alClient
              CharCase = ecLowerCase
              DataField = 'contato_mail'
              DataSource = DM.dsClientes
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel63: TPanel
            Left = 751
            Top = 17
            Width = 75
            Height = 49
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 5
            object Label53: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 69
              Height = 15
              Align = alTop
              Caption = 'Nextel ID'
              FocusControl = DBEdit47
              ExplicitWidth = 48
            end
            object DBEdit47: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 69
              Height = 22
              Align = alClient
              DataField = 'contato_nextel'
              DataSource = DM.dsClientes
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 834
          Height = 127
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          inline FrameImage1: TFrameImage
            Left = 623
            Top = 0
            Width = 211
            Height = 127
            Align = alRight
            TabOrder = 1
            ExplicitLeft = 623
            ExplicitWidth = 211
            ExplicitHeight = 127
            inherited FrameImage: TJvDBImage
              Width = 211
              Height = 127
              DataField = 'logo'
              DataSource = DM.dsClientes
              ExplicitWidth = 211
              ExplicitHeight = 127
            end
          end
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 623
            Height = 127
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Panel4: TPanel
              Left = 0
              Top = 50
              Width = 623
              Height = 75
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 1
              object GroupBox7: TGroupBox
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 617
                Height = 69
                Align = alClient
                Caption = ' Tipo de Cliente '
                TabOrder = 0
                object Panel22: TPanel
                  Left = 2
                  Top = 17
                  Width = 108
                  Height = 50
                  Align = alLeft
                  BevelOuter = bvNone
                  TabOrder = 0
                  object Label39: TLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 102
                    Height = 15
                    Align = alTop
                    Caption = 'Tipo'
                    ExplicitWidth = 23
                  end
                  object DBComboBox3: TDBComboBox
                    AlignWithMargins = True
                    Left = 3
                    Top = 24
                    Width = 102
                    Height = 23
                    Style = csDropDownList
                    Align = alClient
                    DataField = 'tipo'
                    DataSource = DM.dsClientes
                    ItemHeight = 15
                    Items.Strings = (
                      'Jur'#237'dico'
                      'F'#237'sico'
                      'Estrangeiro')
                    TabOrder = 0
                  end
                end
                object Panel23: TPanel
                  Left = 110
                  Top = 17
                  Width = 113
                  Height = 50
                  Align = alLeft
                  BevelOuter = bvNone
                  TabOrder = 1
                  object Label3: TLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 107
                    Height = 15
                    Align = alTop
                    Caption = 'C.N.P.J.'
                    ExplicitWidth = 40
                  end
                  object DBEdit3: TDBEdit
                    AlignWithMargins = True
                    Left = 3
                    Top = 24
                    Width = 107
                    Height = 23
                    Align = alClient
                    DataField = 'cnpj'
                    DataSource = DM.dsClientes
                    TabOrder = 0
                  end
                end
                object Panel24: TPanel
                  Left = 223
                  Top = 17
                  Width = 134
                  Height = 50
                  Align = alLeft
                  BevelOuter = bvNone
                  TabOrder = 2
                  object Label10: TLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 128
                    Height = 15
                    Align = alTop
                    Caption = 'Ins. Estadual'
                    FocusControl = DBEdit10
                    ExplicitWidth = 65
                  end
                  object DBEdit10: TDBEdit
                    AlignWithMargins = True
                    Left = 3
                    Top = 24
                    Width = 128
                    Height = 23
                    Align = alClient
                    DataField = 'inscricao'
                    DataSource = DM.dsClientes
                    TabOrder = 0
                  end
                end
                object Panel25: TPanel
                  Left = 357
                  Top = 17
                  Width = 124
                  Height = 50
                  Align = alLeft
                  BevelOuter = bvNone
                  TabOrder = 3
                  object Label40: TLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 118
                    Height = 15
                    Align = alTop
                    Caption = 'C.P.F.'
                    ExplicitWidth = 30
                  end
                  object DBEdit35: TDBEdit
                    AlignWithMargins = True
                    Left = 3
                    Top = 24
                    Width = 118
                    Height = 23
                    Align = alClient
                    DataField = 'cpf'
                    DataSource = DM.dsClientes
                    TabOrder = 0
                  end
                end
                object Panel26: TPanel
                  Left = 481
                  Top = 17
                  Width = 134
                  Height = 50
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 4
                  object Label44: TLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 128
                    Height = 15
                    Align = alTop
                    Caption = 'RG'
                    FocusControl = DBEdit36
                    ExplicitWidth = 15
                  end
                  object DBEdit36: TDBEdit
                    AlignWithMargins = True
                    Left = 3
                    Top = 24
                    Width = 128
                    Height = 23
                    Align = alClient
                    DataField = 'rg'
                    DataSource = DM.dsClientes
                    TabOrder = 0
                  end
                end
              end
            end
            object Panel5: TPanel
              Left = 0
              Top = 0
              Width = 623
              Height = 50
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object Panel7: TPanel
                Left = 0
                Top = 0
                Width = 68
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 0
                object Label4: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 62
                  Height = 14
                  Align = alTop
                  Caption = 'C'#243'digo'
                  FocusControl = DBEdit4
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  ParentFont = False
                  ExplicitWidth = 33
                end
                object DBEdit4: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 23
                  Width = 62
                  Height = 24
                  Align = alClient
                  DataField = 'codigo'
                  DataSource = DM.dsClientes
                  Enabled = False
                  TabOrder = 0
                  ExplicitHeight = 23
                end
              end
              object Panel8: TPanel
                Left = 68
                Top = 0
                Width = 398
                Height = 50
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 1
                object Label2: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 392
                  Height = 14
                  Align = alTop
                  Caption = 'Nome Empresarial'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ExplicitWidth = 101
                end
                object DBEdit1: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 23
                  Width = 392
                  Height = 24
                  Align = alClient
                  CharCase = ecUpperCase
                  DataField = 'empresa'
                  DataSource = DM.dsClientes
                  TabOrder = 0
                  ExplicitHeight = 23
                end
              end
              object Panel9: TPanel
                Left = 466
                Top = 0
                Width = 157
                Height = 50
                Align = alRight
                BevelOuter = bvNone
                TabOrder = 2
                object Label1: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 151
                  Height = 14
                  Align = alTop
                  Caption = 'Nome Fantasia'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ExplicitWidth = 80
                end
                object DBEdit2: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 23
                  Width = 151
                  Height = 24
                  Align = alClient
                  CharCase = ecUpperCase
                  DataField = 'nome_chave'
                  DataSource = DM.dsClientes
                  TabOrder = 0
                  ExplicitHeight = 23
                end
              end
            end
          end
        end
        object GroupBox3: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 130
          Width = 828
          Height = 68
          Align = alTop
          Caption = ' Outras Informa'#231#245'es '
          TabOrder = 1
          object Panel18: TPanel
            Left = 2
            Top = 17
            Width = 120
            Height = 49
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label15: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 114
              Height = 15
              Align = alTop
              Caption = 'Situa'#231#227'o'
              ExplicitWidth = 45
            end
            object DBComboBox1: TDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 114
              Height = 23
              Style = csDropDownList
              Align = alClient
              DataField = 'situacao'
              DataSource = DM.dsClientes
              ItemHeight = 15
              Items.Strings = (
                'ATIVO'
                'INATIVO'
                'PROSPECT')
              TabOrder = 0
            end
          end
          object Panel19: TPanel
            Left = 122
            Top = 17
            Width = 385
            Height = 49
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label17: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 379
              Height = 15
              Align = alTop
              Caption = 'Vendedor'
              ExplicitWidth = 50
            end
            object DBLookupComboBox1: TDBLookupComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 379
              Height = 23
              Align = alClient
              DataField = 'id_vendedor'
              DataSource = DM.dsClientes
              KeyField = 'idvendedor'
              ListField = 'nome;cpf'
              ListSource = DM.dsVendedores
              TabOrder = 0
            end
          end
          object Panel20: TPanel
            Left = 507
            Top = 17
            Width = 98
            Height = 49
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object Label16: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 92
              Height = 14
              Align = alTop
              Caption = 'Cadastro'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 50
            end
            object JvDBDateEdit1: TJvDBDateEdit
              AlignWithMargins = True
              Left = 3
              Top = 23
              Width = 92
              Height = 23
              Align = alClient
              DataField = 'dtcadastro'
              DataSource = DM.dsClientes
              ButtonFlat = True
              Enabled = False
              ShowNullDate = False
              TabOrder = 0
            end
          end
          object Panel21: TPanel
            Left = 605
            Top = 17
            Width = 138
            Height = 49
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label18: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 132
              Height = 15
              Align = alTop
              Caption = 'Nome S'#233'rie'
              FocusControl = DBEdit15
              ExplicitWidth = 61
            end
            object DBEdit15: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 132
              Height = 22
              Align = alClient
              DataField = 'tag_caption'
              DataSource = DM.dsClientes
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel57: TPanel
            Left = 743
            Top = 17
            Width = 83
            Height = 49
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 4
            object Label19: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 77
              Height = 15
              Align = alTop
              Caption = 'Senha Web'
              FocusControl = DBEdit16
              ExplicitWidth = 59
            end
            object DBEdit16: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 77
              Height = 22
              Align = alClient
              DataField = 'senha'
              DataSource = DM.dsClientes
              PasswordChar = '*'
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Endere'#231'o'
        ImageIndex = 4
        object Bevel1: TBevel
          AlignWithMargins = True
          Left = 3
          Top = 53
          Width = 828
          Height = 2
          Align = alTop
          Shape = bsTopLine
          ExplicitLeft = 2
          ExplicitTop = 47
          ExplicitWidth = 834
        end
        object Panel27: TPanel
          Left = 0
          Top = 0
          Width = 834
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel28: TPanel
            Left = 0
            Top = 0
            Width = 68
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label47: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 62
              Height = 14
              Align = alTop
              Caption = 'C'#243'digo'
              FocusControl = DBEdit49
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 39
            end
            object DBEdit49: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 23
              Width = 62
              Height = 24
              TabStop = False
              Align = alClient
              DataField = 'codigo'
              DataSource = DM.dsClientes
              Enabled = False
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel29: TPanel
            Left = 68
            Top = 0
            Width = 608
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label54: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 602
              Height = 14
              Align = alTop
              Caption = 'Raz'#227'o Social'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 67
            end
            object DBEdit50: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 23
              Width = 602
              Height = 24
              TabStop = False
              Align = alClient
              CharCase = ecUpperCase
              DataField = 'empresa'
              DataSource = DM.dsClientes
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel30: TPanel
            Left = 676
            Top = 0
            Width = 158
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object Label55: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 152
              Height = 14
              Align = alTop
              Caption = 'Apelido'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 42
            end
            object DBEdit51: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 23
              Width = 152
              Height = 24
              TabStop = False
              Align = alClient
              CharCase = ecUpperCase
              DataField = 'nome_chave'
              DataSource = DM.dsClientes
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
        end
        object Panel31: TPanel
          Left = 0
          Top = 58
          Width = 834
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Label5: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 828
            Height = 14
            Align = alTop
            Caption = 'Endere'#231'o'
            FocusControl = DBEdit5
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 52
          end
          object DBEdit5: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 23
            Width = 828
            Height = 24
            Align = alClient
            DataField = 'endereco'
            DataSource = DM.dsClientes
            TabOrder = 0
            ExplicitHeight = 23
          end
        end
        object Panel32: TPanel
          Left = 0
          Top = 108
          Width = 834
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object Panel34: TPanel
            Left = 0
            Top = 0
            Width = 209
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label6: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 203
              Height = 15
              Align = alTop
              Caption = 'Bairro'
              FocusControl = DBEdit6
              ExplicitWidth = 31
            end
            object DBEdit6: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 203
              Height = 23
              Align = alClient
              DataField = 'bairro'
              DataSource = DM.dsClientes
              TabOrder = 0
            end
          end
          object Panel35: TPanel
            Left = 209
            Top = 0
            Width = 491
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label7: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 485
              Height = 15
              Align = alTop
              Caption = 'Cidade'
              FocusControl = DBEdit7
              ExplicitWidth = 37
            end
            object DBEdit7: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 485
              Height = 23
              Align = alClient
              DataField = 'cidade'
              DataSource = DM.dsClientes
              TabOrder = 0
            end
          end
          object Panel36: TPanel
            Left = 700
            Top = 0
            Width = 43
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object Label8: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 37
              Height = 14
              Align = alTop
              Caption = 'UF'
              FocusControl = DBEdit8
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 13
            end
            object DBEdit8: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 23
              Width = 37
              Height = 24
              Align = alClient
              CharCase = ecUpperCase
              DataField = 'estado'
              DataSource = DM.dsClientes
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel37: TPanel
            Left = 743
            Top = 0
            Width = 91
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label9: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 85
              Height = 15
              Align = alTop
              Caption = 'CEP'
              FocusControl = DBEdit9
              ExplicitWidth = 21
            end
            object DBEdit9: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 85
              Height = 23
              Align = alClient
              DataField = 'cep'
              DataSource = DM.dsClientes
              TabOrder = 0
            end
          end
        end
        object Panel33: TPanel
          Left = 0
          Top = 158
          Width = 834
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 3
          object Panel38: TPanel
            Left = 0
            Top = 0
            Width = 269
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label14: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 263
              Height = 15
              Align = alTop
              Caption = 'E-Mail'
              FocusControl = DBEdit14
              ExplicitWidth = 34
            end
            object DBEdit14: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 263
              Height = 23
              Align = alClient
              DataField = 'email'
              DataSource = DM.dsClientes
              TabOrder = 0
            end
          end
          object Panel39: TPanel
            Left = 269
            Top = 0
            Width = 310
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label13: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 304
              Height = 15
              Align = alTop
              Caption = 'Site'
              FocusControl = DBEdit13
              ExplicitWidth = 19
            end
            object DBEdit13: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 304
              Height = 23
              Align = alClient
              CharCase = ecLowerCase
              DataField = 'website'
              DataSource = DM.dsClientes
              TabOrder = 0
            end
          end
          object Panel40: TPanel
            Left = 579
            Top = 0
            Width = 127
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object Label11: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 121
              Height = 15
              Align = alTop
              Caption = 'Telefone'
              FocusControl = DBEdit11
              ExplicitWidth = 44
            end
            object DBEdit11: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 121
              Height = 23
              Align = alClient
              DataField = 'telefone'
              DataSource = DM.dsClientes
              TabOrder = 0
            end
          end
          object Panel41: TPanel
            Left = 706
            Top = 0
            Width = 128
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label12: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 122
              Height = 15
              Align = alTop
              Caption = 'Fax'
              FocusControl = DBEdit12
              ExplicitWidth = 18
            end
            object DBEdit12: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 122
              Height = 23
              Align = alClient
              DataField = 'fax'
              DataSource = DM.dsClientes
              TabOrder = 0
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Outros Endere'#231'os'
        ImageIndex = 1
        object Bevel2: TBevel
          AlignWithMargins = True
          Left = 3
          Top = 53
          Width = 828
          Height = 2
          Align = alTop
          Shape = bsTopLine
          ExplicitLeft = 2
          ExplicitTop = 47
          ExplicitWidth = 834
        end
        object GroupBox4: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 61
          Width = 828
          Height = 68
          Align = alTop
          Caption = ' Faturamento '
          TabOrder = 0
          object Panel42: TPanel
            Left = 2
            Top = 17
            Width = 336
            Height = 49
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Label20: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 330
              Height = 15
              Align = alTop
              Caption = 'Endere'#231'o'
              FocusControl = DBEdit17
              ExplicitWidth = 49
            end
            object DBEdit17: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 330
              Height = 22
              Align = alClient
              DataField = 'fat_ende'
              DataSource = DM.dsClientes
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel43: TPanel
            Left = 338
            Top = 17
            Width = 188
            Height = 49
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            object Label21: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 182
              Height = 15
              Align = alTop
              Caption = 'Bairro'
              FocusControl = DBEdit18
              ExplicitWidth = 31
            end
            object DBEdit18: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 182
              Height = 22
              Align = alClient
              DataField = 'fat_bair'
              DataSource = DM.dsClientes
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel44: TPanel
            Left = 526
            Top = 17
            Width = 187
            Height = 49
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object Label22: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 181
              Height = 15
              Align = alTop
              Caption = 'Cidade'
              FocusControl = DBEdit19
              ExplicitWidth = 37
            end
            object DBEdit19: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 181
              Height = 22
              Align = alClient
              DataField = 'fat_cida'
              DataSource = DM.dsClientes
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel45: TPanel
            Left = 713
            Top = 17
            Width = 38
            Height = 49
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label23: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 32
              Height = 15
              Align = alTop
              Caption = 'UF'
              FocusControl = DBEdit20
              ExplicitWidth = 14
            end
            object DBEdit20: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 32
              Height = 22
              Align = alClient
              CharCase = ecUpperCase
              DataField = 'fat_esta'
              DataSource = DM.dsClientes
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel46: TPanel
            Left = 751
            Top = 17
            Width = 75
            Height = 49
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 4
            object Label24: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 69
              Height = 15
              Align = alTop
              Caption = 'CEP'
              FocusControl = DBEdit21
              ExplicitWidth = 21
            end
            object DBEdit21: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 69
              Height = 22
              Align = alClient
              DataField = 'fat_cep'
              DataSource = DM.dsClientes
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
        end
        object Panel10: TPanel
          Left = 0
          Top = 0
          Width = 834
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Panel11: TPanel
            Left = 0
            Top = 0
            Width = 68
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label35: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 62
              Height = 14
              Align = alTop
              Caption = 'C'#243'digo'
              FocusControl = DBEdit32
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 39
            end
            object DBEdit32: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 23
              Width = 62
              Height = 24
              TabStop = False
              Align = alClient
              DataField = 'codigo'
              DataSource = DM.dsClientes
              Enabled = False
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel12: TPanel
            Left = 68
            Top = 0
            Width = 608
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label36: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 602
              Height = 14
              Align = alTop
              Caption = 'Raz'#227'o Social'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 67
            end
            object DBEdit33: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 23
              Width = 602
              Height = 24
              TabStop = False
              Align = alClient
              CharCase = ecUpperCase
              DataField = 'empresa'
              DataSource = DM.dsClientes
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel13: TPanel
            Left = 676
            Top = 0
            Width = 158
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object Label37: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 152
              Height = 14
              Align = alTop
              Caption = 'Apelido'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 42
            end
            object DBEdit34: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 23
              Width = 152
              Height = 24
              TabStop = False
              Align = alClient
              CharCase = ecUpperCase
              DataField = 'nome_chave'
              DataSource = DM.dsClientes
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
        end
        object GroupBox1: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 135
          Width = 828
          Height = 68
          Align = alTop
          Caption = ' Entrega '
          TabOrder = 2
          object Panel47: TPanel
            Left = 2
            Top = 17
            Width = 336
            Height = 49
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Label25: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 330
              Height = 15
              Align = alTop
              Caption = 'Endere'#231'o'
              FocusControl = DBEdit22
              ExplicitWidth = 49
            end
            object DBEdit22: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 330
              Height = 22
              Align = alClient
              DataField = 'ent_ende'
              DataSource = DM.dsClientes
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel48: TPanel
            Left = 338
            Top = 17
            Width = 188
            Height = 49
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            object Label26: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 182
              Height = 15
              Align = alTop
              Caption = 'Bairro'
              FocusControl = DBEdit23
              ExplicitWidth = 31
            end
            object DBEdit23: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 182
              Height = 22
              Align = alClient
              DataField = 'ent_bair'
              DataSource = DM.dsClientes
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel49: TPanel
            Left = 526
            Top = 17
            Width = 187
            Height = 49
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object Label27: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 181
              Height = 15
              Align = alTop
              Caption = 'Cidade'
              FocusControl = DBEdit24
              ExplicitWidth = 37
            end
            object DBEdit24: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 181
              Height = 22
              Align = alClient
              DataField = 'ent_cida'
              DataSource = DM.dsClientes
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel50: TPanel
            Left = 713
            Top = 17
            Width = 38
            Height = 49
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label28: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 32
              Height = 15
              Align = alTop
              Caption = 'UF'
              FocusControl = DBEdit25
              ExplicitWidth = 14
            end
            object DBEdit25: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 32
              Height = 22
              Align = alClient
              CharCase = ecUpperCase
              DataField = 'ent_esta'
              DataSource = DM.dsClientes
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel51: TPanel
            Left = 751
            Top = 17
            Width = 75
            Height = 49
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 4
            object Label29: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 69
              Height = 15
              Align = alTop
              Caption = 'CEP'
              FocusControl = DBEdit26
              ExplicitWidth = 21
            end
            object DBEdit26: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 69
              Height = 22
              Align = alClient
              DataField = 'ent_cep'
              DataSource = DM.dsClientes
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
        end
        object GroupBox5: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 209
          Width = 828
          Height = 68
          Align = alTop
          Caption = ' Cobran'#231'a '
          TabOrder = 3
          object Panel52: TPanel
            Left = 2
            Top = 17
            Width = 336
            Height = 49
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Label30: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 330
              Height = 15
              Align = alTop
              Caption = 'Endere'#231'o'
              FocusControl = DBEdit27
              ExplicitWidth = 49
            end
            object DBEdit27: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 330
              Height = 22
              Align = alClient
              DataField = 'cobra_ende'
              DataSource = DM.dsClientes
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel53: TPanel
            Left = 338
            Top = 17
            Width = 188
            Height = 49
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            object Label31: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 182
              Height = 15
              Align = alTop
              Caption = 'Bairro'
              FocusControl = DBEdit28
              ExplicitWidth = 31
            end
            object DBEdit28: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 182
              Height = 22
              Align = alClient
              DataField = 'cobra_bairro'
              DataSource = DM.dsClientes
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel54: TPanel
            Left = 526
            Top = 17
            Width = 187
            Height = 49
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object Label32: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 181
              Height = 15
              Align = alTop
              Caption = 'Cidade'
              FocusControl = DBEdit29
              ExplicitWidth = 37
            end
            object DBEdit29: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 181
              Height = 22
              Align = alClient
              DataField = 'cobra_cida'
              DataSource = DM.dsClientes
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel55: TPanel
            Left = 713
            Top = 17
            Width = 38
            Height = 49
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label33: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 32
              Height = 15
              Align = alTop
              Caption = 'UF'
              FocusControl = DBEdit30
              ExplicitWidth = 14
            end
            object DBEdit30: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 32
              Height = 22
              Align = alClient
              CharCase = ecUpperCase
              DataField = 'cobra_esta'
              DataSource = DM.dsClientes
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel56: TPanel
            Left = 751
            Top = 17
            Width = 75
            Height = 49
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 4
            object Label34: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 69
              Height = 15
              Align = alTop
              Caption = 'CEP'
              FocusControl = DBEdit31
              ExplicitWidth = 21
            end
            object DBEdit31: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 69
              Height = 22
              Align = alClient
              DataField = 'cobra_cep'
              DataSource = DM.dsClientes
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Observa'#231#245'es'
        ImageIndex = 3
        object Bevel3: TBevel
          AlignWithMargins = True
          Left = 3
          Top = 53
          Width = 828
          Height = 2
          Align = alTop
          Shape = bsTopLine
          ExplicitLeft = 2
          ExplicitTop = 47
          ExplicitWidth = 834
        end
        object DBMemo1: TDBMemo
          AlignWithMargins = True
          Left = 3
          Top = 61
          Width = 828
          Height = 220
          Align = alClient
          DataField = 'observacao'
          DataSource = DM.dsClientes
          TabOrder = 0
        end
        object Panel14: TPanel
          Left = 0
          Top = 0
          Width = 834
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Panel15: TPanel
            Left = 0
            Top = 0
            Width = 68
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label38: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 62
              Height = 14
              Align = alTop
              Caption = 'C'#243'digo'
              FocusControl = DBEdit37
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 39
            end
            object DBEdit37: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 23
              Width = 62
              Height = 24
              TabStop = False
              Align = alClient
              DataField = 'codigo'
              DataSource = DM.dsClientes
              Enabled = False
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel16: TPanel
            Left = 68
            Top = 0
            Width = 608
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label41: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 602
              Height = 14
              Align = alTop
              Caption = 'Raz'#227'o Social'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 67
            end
            object DBEdit38: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 23
              Width = 602
              Height = 24
              TabStop = False
              Align = alClient
              CharCase = ecUpperCase
              DataField = 'empresa'
              DataSource = DM.dsClientes
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel17: TPanel
            Left = 676
            Top = 0
            Width = 158
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object Label42: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 152
              Height = 14
              Align = alTop
              Caption = 'Apelido'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 42
            end
            object DBEdit39: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 23
              Width = 152
              Height = 24
              TabStop = False
              Align = alClient
              CharCase = ecUpperCase
              DataField = 'nome_chave'
              DataSource = DM.dsClientes
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 842
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 842
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      Width = 746
      ButtonWidth = 115
      ExplicitWidth = 746
      inherited ToolButton6: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton4: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton7: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton1: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton2: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton8: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton9: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton14: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton16: TToolButton
        ExplicitWidth = 32
      end
      inherited tbSQL: TToolButton
        ExplicitWidth = 32
      end
      inherited tbClose: TToolButton
        ExplicitWidth = 32
      end
    end
  end
  inherited alDef: TActionList
    Left = 176
    Top = 72
  end
end
