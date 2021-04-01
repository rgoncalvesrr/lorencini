inherited ClientesM: TClientesM
  BorderStyle = bsSizeable
  Caption = 'Manuten'#231#227'o do cadastro  do cliente'
  ClientHeight = 689
  ClientWidth = 1237
  Constraints.MinWidth = 691
  WindowState = wsMaximized
  ExplicitWidth = 1253
  ExplicitHeight = 728
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 1237
    Height = 645
    ExplicitTop = 44
    ExplicitWidth = 1237
    ExplicitHeight = 645
    inherited pnLookup: TPanel
      Width = 754
      ExplicitWidth = 754
    end
    inherited Panel3: TPanel
      Top = 328
      Width = 1237
      Height = 317
      Visible = True
      ExplicitTop = 328
      ExplicitWidth = 1237
      ExplicitHeight = 317
      inherited PageControl3: TPageControl
        Top = 47
        Width = 1231
        Height = 267
        ExplicitLeft = 3
        ExplicitTop = 47
        ExplicitWidth = 1231
        ExplicitHeight = 267
        inherited tsDet: TTabSheet
          Caption = 'Clientes Finais'
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 1223
          ExplicitHeight = 237
          inherited DBGrid1: TDBGrid
            Width = 1223
            Height = 237
            DataSource = Clientes.dsClientesFinais
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Contatos'
          ImageIndex = 1
          object DBGrid2: TDBGrid
            Tag = 1
            Left = 0
            Top = 0
            Width = 1223
            Height = 237
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = Clientes.dsContatos
            DefaultDrawing = False
            Enabled = False
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Pitch = fpVariable
            TitleFont.Style = []
            OnDrawColumnCell = DBGrid2DrawColumnCell
            OnDblClick = ChildGridDblClick
            OnEnter = ChildGridEnter
            OnKeyPress = ChildGridKeyPress
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 1231
        Height = 38
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 1231
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
      Width = 1231
      Height = 322
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 1231
      ExplicitHeight = 322
      inherited TabSheet1: TTabSheet
        Caption = 'Informa'#231#245'es Principais'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 1223
        ExplicitHeight = 292
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 1223
          Height = 127
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          inline FrameImage1: TFrameImage
            Left = 1012
            Top = 0
            Width = 211
            Height = 127
            Align = alRight
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Pitch = fpVariable
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            ExplicitLeft = 1012
            ExplicitWidth = 211
            ExplicitHeight = 127
            inherited FrameImage: TJvDBImage
              Width = 211
              Height = 127
              DataField = 'logo'
              DataSource = Clientes.DataSource1
              ExplicitWidth = 211
              ExplicitHeight = 127
            end
            inherited ActionList1: TActionList
              Left = 16
              Top = 8
            end
            inherited PopupMenu1: TPopupMenu
              Top = 8
            end
            inherited OpenPictureDialog1: TOpenPictureDialog
              Left = 152
              Top = 64
            end
          end
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 1012
            Height = 127
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Panel4: TPanel
              Left = 0
              Top = 50
              Width = 1012
              Height = 75
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 1
              object GroupBox7: TGroupBox
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 1006
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
                    DataSource = Clientes.DataSource1
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
                    DataSource = Clientes.DataSource1
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
                    DataSource = Clientes.DataSource1
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
                    DataSource = Clientes.DataSource1
                    TabOrder = 0
                  end
                end
                object Panel26: TPanel
                  Left = 481
                  Top = 17
                  Width = 523
                  Height = 50
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 4
                  object Label44: TLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 517
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
                    Width = 517
                    Height = 23
                    Align = alClient
                    DataField = 'rg'
                    DataSource = Clientes.DataSource1
                    TabOrder = 0
                  end
                end
              end
            end
            object Panel5: TPanel
              Left = 0
              Top = 0
              Width = 1012
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
                  Font.Pitch = fpVariable
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
                  DataSource = Clientes.DataSource1
                  Enabled = False
                  TabOrder = 0
                  ExplicitHeight = 23
                end
              end
              object Panel8: TPanel
                Left = 68
                Top = 0
                Width = 787
                Height = 50
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 1
                object Label2: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 781
                  Height = 14
                  Align = alTop
                  Caption = 'Nome Empresarial'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Pitch = fpVariable
                  Font.Style = [fsBold]
                  ParentFont = False
                  ExplicitWidth = 101
                end
                object DBEdit1: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 23
                  Width = 781
                  Height = 24
                  Align = alClient
                  CharCase = ecUpperCase
                  DataField = 'empresa'
                  DataSource = Clientes.DataSource1
                  TabOrder = 0
                  ExplicitHeight = 23
                end
              end
              object Panel9: TPanel
                Left = 855
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
                  Font.Pitch = fpVariable
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
                  DataSource = Clientes.DataSource1
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
          Width = 1217
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
              DataSource = Clientes.DataSource1
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
            Width = 774
            Height = 49
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label17: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 768
              Height = 15
              Align = alTop
              Caption = 'Vendedor'
              ExplicitWidth = 50
            end
            object DBLookupComboBox1: TDBLookupComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 768
              Height = 23
              Align = alClient
              DataField = 'id_vendedor'
              DataSource = Clientes.DataSource1
              KeyField = 'idvendedor'
              ListField = 'nome;cpf;cnpj'
              ListSource = Clientes.dsVendedores
              TabOrder = 0
            end
          end
          object Panel20: TPanel
            Left = 896
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
              Font.Pitch = fpVariable
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
              DataSource = Clientes.DataSource1
              ButtonFlat = True
              Enabled = False
              ShowNullDate = False
              TabOrder = 0
            end
          end
          object Panel21: TPanel
            Left = 994
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
              DataSource = Clientes.DataSource1
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel57: TPanel
            Left = 1132
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
              DataSource = Clientes.DataSource1
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
          Width = 1217
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
          Width = 1223
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
              Font.Pitch = fpVariable
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
              DataSource = Clientes.DataSource1
              Enabled = False
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel29: TPanel
            Left = 68
            Top = 0
            Width = 997
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label54: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 991
              Height = 14
              Align = alTop
              Caption = 'Raz'#227'o Social'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 67
            end
            object DBEdit50: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 23
              Width = 991
              Height = 24
              TabStop = False
              Align = alClient
              CharCase = ecUpperCase
              DataField = 'empresa'
              DataSource = Clientes.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel30: TPanel
            Left = 1065
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
              Font.Pitch = fpVariable
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
              DataSource = Clientes.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
        end
        object Panel31: TPanel
          Left = 0
          Top = 58
          Width = 1223
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Label5: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1217
            Height = 14
            Align = alTop
            Caption = 'Endere'#231'o'
            FocusControl = DBEdit5
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Pitch = fpVariable
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 52
          end
          object DBEdit5: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 23
            Width = 1217
            Height = 24
            Align = alClient
            DataField = 'endereco'
            DataSource = Clientes.DataSource1
            TabOrder = 0
            ExplicitHeight = 23
          end
        end
        object Panel32: TPanel
          Left = 0
          Top = 108
          Width = 1223
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
              DataSource = Clientes.DataSource1
              TabOrder = 0
            end
          end
          object Panel35: TPanel
            Left = 209
            Top = 0
            Width = 880
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label7: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 874
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
              Width = 874
              Height = 23
              Align = alClient
              DataField = 'cidade'
              DataSource = Clientes.DataSource1
              TabOrder = 0
            end
          end
          object Panel36: TPanel
            Left = 1089
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
              Font.Pitch = fpVariable
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
              DataSource = Clientes.DataSource1
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel37: TPanel
            Left = 1132
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
              DataSource = Clientes.DataSource1
              TabOrder = 0
            end
          end
        end
        object Panel33: TPanel
          Left = 0
          Top = 158
          Width = 1223
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
              DataSource = Clientes.DataSource1
              TabOrder = 0
            end
          end
          object Panel39: TPanel
            Left = 269
            Top = 0
            Width = 699
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label13: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 693
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
              Width = 693
              Height = 23
              Align = alClient
              CharCase = ecLowerCase
              DataField = 'website'
              DataSource = Clientes.DataSource1
              TabOrder = 0
            end
          end
          object Panel40: TPanel
            Left = 968
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
              DataSource = Clientes.DataSource1
              TabOrder = 0
            end
          end
          object Panel41: TPanel
            Left = 1095
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
              DataSource = Clientes.DataSource1
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
          Width = 1217
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
          Width = 1217
          Height = 68
          Align = alTop
          Caption = ' Faturamento '
          TabOrder = 0
          object Panel42: TPanel
            Left = 2
            Top = 17
            Width = 725
            Height = 49
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Label20: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 719
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
              Width = 719
              Height = 22
              Align = alClient
              DataField = 'fat_ende'
              DataSource = Clientes.DataSource1
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel43: TPanel
            Left = 727
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
              DataSource = Clientes.DataSource1
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel44: TPanel
            Left = 915
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
              DataSource = Clientes.DataSource1
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel45: TPanel
            Left = 1102
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
              DataSource = Clientes.DataSource1
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel46: TPanel
            Left = 1140
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
              DataSource = Clientes.DataSource1
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
        end
        object Panel10: TPanel
          Left = 0
          Top = 0
          Width = 1223
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
              Font.Pitch = fpVariable
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
              DataSource = Clientes.DataSource1
              Enabled = False
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel12: TPanel
            Left = 68
            Top = 0
            Width = 997
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label36: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 991
              Height = 14
              Align = alTop
              Caption = 'Raz'#227'o Social'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 67
            end
            object DBEdit33: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 23
              Width = 991
              Height = 24
              TabStop = False
              Align = alClient
              CharCase = ecUpperCase
              DataField = 'empresa'
              DataSource = Clientes.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel13: TPanel
            Left = 1065
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
              Font.Pitch = fpVariable
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
              DataSource = Clientes.DataSource1
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
          Width = 1217
          Height = 68
          Align = alTop
          Caption = ' Entrega '
          TabOrder = 2
          object Panel47: TPanel
            Left = 2
            Top = 17
            Width = 725
            Height = 49
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Label25: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 719
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
              Width = 719
              Height = 22
              Align = alClient
              DataField = 'ent_ende'
              DataSource = Clientes.DataSource1
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel48: TPanel
            Left = 727
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
              DataSource = Clientes.DataSource1
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel49: TPanel
            Left = 915
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
              DataSource = Clientes.DataSource1
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel50: TPanel
            Left = 1102
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
              DataSource = Clientes.DataSource1
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel51: TPanel
            Left = 1140
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
              DataSource = Clientes.DataSource1
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
        end
        object GroupBox5: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 209
          Width = 1217
          Height = 68
          Align = alTop
          Caption = ' Cobran'#231'a '
          TabOrder = 3
          object Panel52: TPanel
            Left = 2
            Top = 17
            Width = 725
            Height = 49
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Label30: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 719
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
              Width = 719
              Height = 22
              Align = alClient
              DataField = 'cobra_ende'
              DataSource = Clientes.DataSource1
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel53: TPanel
            Left = 727
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
              DataSource = Clientes.DataSource1
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel54: TPanel
            Left = 915
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
              DataSource = Clientes.DataSource1
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel55: TPanel
            Left = 1102
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
              DataSource = Clientes.DataSource1
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel56: TPanel
            Left = 1140
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
              DataSource = Clientes.DataSource1
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
          Width = 1217
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
          Width = 1217
          Height = 228
          Align = alClient
          DataField = 'observacao'
          DataSource = Clientes.DataSource1
          TabOrder = 0
        end
        object Panel14: TPanel
          Left = 0
          Top = 0
          Width = 1223
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
              Font.Pitch = fpVariable
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
              DataSource = Clientes.DataSource1
              Enabled = False
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel16: TPanel
            Left = 68
            Top = 0
            Width = 997
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label41: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 991
              Height = 14
              Align = alTop
              Caption = 'Raz'#227'o Social'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 67
            end
            object DBEdit38: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 23
              Width = 991
              Height = 24
              TabStop = False
              Align = alClient
              CharCase = ecUpperCase
              DataField = 'empresa'
              DataSource = Clientes.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel17: TPanel
            Left = 1065
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
              Font.Pitch = fpVariable
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
              DataSource = Clientes.DataSource1
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
    Width = 1231
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 1231
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
