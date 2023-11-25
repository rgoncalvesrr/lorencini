inherited ClientesMContatos: TClientesMContatos
  Caption = 'Contatos por Cliente'
  ClientHeight = 486
  ClientWidth = 1160
  ExplicitWidth = 1166
  ExplicitHeight = 515
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 1160
    Height = 442
    ExplicitWidth = 1160
    ExplicitHeight = 442
    inherited Panel3: TPanel
      Top = 206
      Align = alNone
      ExplicitTop = 206
      inherited PageControl3: TPageControl
        inherited tsDet: TTabSheet
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 625
          ExplicitHeight = 155
        end
      end
      inherited ControlBar2: TControlBar
        inherited ToolBar3: TToolBar
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
      Width = 1154
      Height = 436
      ExplicitWidth = 1154
      ExplicitHeight = 436
      inherited TabSheet1: TTabSheet
        Caption = 'Cliente'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 1146
        ExplicitHeight = 406
        object Bevel1: TBevel
          AlignWithMargins = True
          Left = 3
          Top = 53
          Width = 1140
          Height = 3
          Align = alTop
          Shape = bsTopLine
          ExplicitLeft = 0
          ExplicitTop = 50
          ExplicitWidth = 1025
        end
        object Label9: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 112
          Width = 1140
          Height = 15
          Align = alTop
          Caption = 'Observa'#231#227'o'
          FocusControl = DBEdit49
          ExplicitWidth = 62
        end
        object Panel27: TPanel
          Left = 0
          Top = 0
          Width = 1146
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
              Height = 15
              Align = alTop
              Caption = 'C'#243'digo'
              FocusControl = DBEdit49
              ExplicitWidth = 39
            end
            object DBEdit49: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 62
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'codigo'
              DataSource = Clientes.DataSource1
              Enabled = False
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel29: TPanel
            Left = 68
            Top = 0
            Width = 920
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label54: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 914
              Height = 15
              Align = alTop
              Caption = 'Raz'#227'o Social'
              ExplicitWidth = 65
            end
            object DBEdit50: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 914
              Height = 23
              TabStop = False
              Align = alClient
              CharCase = ecUpperCase
              DataField = 'empresa'
              DataSource = Clientes.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel30: TPanel
            Left = 988
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
              Height = 15
              Align = alTop
              Caption = 'Apelido'
              ExplicitWidth = 41
            end
            object DBEdit51: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 152
              Height = 23
              TabStop = False
              Align = alClient
              CharCase = ecUpperCase
              DataField = 'nome_chave'
              DataSource = Clientes.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 59
          Width = 1146
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 65
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 59
              Height = 15
              Align = alTop
              Caption = 'Contato'
              FocusControl = DBEdit1
              ExplicitWidth = 43
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 62
              Height = 23
              Margins.Right = 0
              Align = alClient
              DataField = 'contato'
              DataSource = Clientes.dsContatos
              TabOrder = 0
              OnExit = DBEdit1Exit
            end
          end
          object Panel5: TPanel
            Left = 65
            Top = 0
            Width = 29
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object SpeedButton1: TSpeedButton
              AlignWithMargins = True
              Left = 0
              Top = 23
              Width = 26
              Height = 25
              Margins.Left = 0
              Margins.Top = 23
              Margins.Bottom = 2
              Action = actFindContato
              Align = alClient
              ExplicitLeft = 16
              ExplicitTop = 16
              ExplicitWidth = 50
              ExplicitHeight = 22
            end
          end
          object Panel6: TPanel
            Left = 94
            Top = 0
            Width = 224
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 2
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 218
              Height = 15
              Align = alTop
              Caption = 'Nome'
              FocusControl = DBEdit2
              ExplicitWidth = 33
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 218
              Height = 23
              Align = alClient
              DataField = 'nome'
              DataSource = Clientes.dsContatos
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel7: TPanel
            Left = 318
            Top = 0
            Width = 120
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 114
              Height = 15
              Align = alTop
              Caption = 'Celular'
              FocusControl = DBEdit3
              ExplicitWidth = 37
            end
            object DBEdit3: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 114
              Height = 23
              Align = alClient
              DataField = 'celular'
              DataSource = Clientes.dsContatos
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel8: TPanel
            Left = 438
            Top = 0
            Width = 120
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 4
            object Label4: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 114
              Height = 15
              Align = alTop
              Caption = 'Telefone'
              FocusControl = DBEdit4
              ExplicitWidth = 44
            end
            object DBEdit4: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 114
              Height = 23
              Align = alClient
              DataField = 'telefone'
              DataSource = Clientes.dsContatos
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel9: TPanel
            Left = 558
            Top = 0
            Width = 242
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 5
            object Label5: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 236
              Height = 15
              Align = alTop
              Caption = 'E-Mail'
              FocusControl = DBEdit5
              ExplicitWidth = 34
            end
            object DBEdit5: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 236
              Height = 23
              Align = alClient
              DataField = 'email'
              DataSource = Clientes.dsContatos
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel10: TPanel
            Left = 1055
            Top = 0
            Width = 91
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 8
            object Label6: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 85
              Height = 15
              Align = alTop
              Caption = 'Situa'#231#227'o'
              ExplicitWidth = 45
            end
            object JvDBComboBox1: TJvDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 85
              Height = 23
              Align = alClient
              DataField = 'situacao'
              DataSource = Clientes.dsContatos
              Items.Strings = (
                'Ativo'
                'Inativo')
              TabOrder = 0
              Values.Strings = (
                '1'
                '0')
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
            end
          end
          object Panel11: TPanel
            Left = 800
            Top = 0
            Width = 160
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 6
            object Label7: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 154
              Height = 15
              Align = alTop
              Caption = 'Fun'#231#227'o'
              FocusControl = DBEdit6
              ExplicitWidth = 39
            end
            object DBEdit6: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 157
              Height = 23
              Margins.Right = 0
              Align = alClient
              DataField = 'funcao'
              DataSource = Clientes.dsContatos
              TabOrder = 0
            end
          end
          object Panel15: TPanel
            Left = 960
            Top = 0
            Width = 95
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 7
            object Label8: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 89
              Height = 15
              Align = alTop
              Caption = 'Senha do Portal'
              FocusControl = DBEdit7
              ExplicitWidth = 83
            end
            object DBEdit7: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 92
              Height = 23
              Margins.Right = 0
              Align = alClient
              DataField = 'portal_senha'
              DataSource = Clientes.dsContatos
              PasswordChar = '*'
              TabOrder = 0
            end
          end
        end
        object GroupBox1: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 228
          Width = 1140
          Height = 175
          Align = alClient
          Caption = ' Permiss'#245'es do Contato '
          TabOrder = 2
          object ControlBar3: TControlBar
            AlignWithMargins = True
            Left = 5
            Top = 20
            Width = 1130
            Height = 38
            Align = alTop
            AutoSize = True
            BevelKind = bkNone
            DrawingStyle = dsGradient
            TabOrder = 0
            object ToolBar2: TToolBar
              Left = 11
              Top = 2
              Width = 568
              Height = 34
              AutoSize = True
              BorderWidth = 1
              ButtonHeight = 30
              ButtonWidth = 125
              Caption = 'ToolBar2'
              DisabledImages = Resources.medium_d
              DrawingStyle = dsGradient
              HotImages = Resources.medium_h
              Images = Resources.medium_n
              List = True
              AllowTextButtons = True
              TabOrder = 0
              object ToolButton5: TToolButton
                Left = 0
                Top = 0
                Action = actCheck
                Style = tbsTextButton
              end
              object ToolButton15: TToolButton
                Left = 110
                Top = 0
                Action = actUnCheck
                Style = tbsTextButton
              end
            end
          end
          object Panel12: TPanel
            AlignWithMargins = True
            Left = 267
            Top = 64
            Width = 256
            Height = 106
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object DBCheckBox8: TDBCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 250
              Height = 17
              Align = alTop
              Caption = 'Contato Financeiro'
              DataField = 'contato_financeiro'
              DataSource = Clientes.dsContatos
              TabOrder = 0
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object DBCheckBox2: TDBCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 26
              Width = 250
              Height = 17
              Align = alTop
              Caption = 'Acesso ao Portal'
              DataField = 'portal_acessivel'
              DataSource = Clientes.dsContatos
              TabOrder = 1
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              ExplicitLeft = 0
            end
            object DBCheckBox4: TDBCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 49
              Width = 250
              Height = 17
              Align = alTop
              Caption = 'Enviar Cronograma de Coleta'
              DataField = 'envia_cronograma_coleta'
              DataSource = Clientes.dsContatos
              TabOrder = 2
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              ExplicitLeft = 0
            end
          end
          object Panel14: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 64
            Width = 256
            Height = 106
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object DBCheckBox6: TDBCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 250
              Height = 17
              Align = alTop
              AllowGrayed = True
              Caption = 'Contato Padr'#227'o'
              DataField = 'padrao'
              DataSource = Clientes.dsContatos
              TabOrder = 0
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object DBCheckBox1: TDBCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 26
              Width = 250
              Height = 17
              Align = alTop
              Caption = 'Contato Comercial'
              DataField = 'contato_comercial'
              DataSource = Clientes.dsContatos
              TabOrder = 1
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object DBCheckBox3: TDBCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 49
              Width = 250
              Height = 17
              Align = alTop
              Caption = 'Contato T'#233'cnico'
              DataField = 'contato_tecnico'
              DataSource = Clientes.dsContatos
              TabOrder = 2
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
          end
        end
        object DBMemo1: TDBMemo
          AlignWithMargins = True
          Left = 3
          Top = 133
          Width = 1140
          Height = 89
          Align = alTop
          DataField = 'obs'
          DataSource = Clientes.dsContatos
          TabOrder = 3
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 1154
    ExplicitWidth = 1154
    inherited ToolBar1: TToolBar
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
    object actFindContato: TAction
      Enabled = False
      ImageIndex = 332
      OnExecute = actFindContatoExecute
    end
    object actCheck: TAction
      Tag = 1
      Caption = 'Marcar Todos'
      ImageIndex = 67
      OnExecute = actCheckExecute
    end
    object actUnCheck: TAction
      Caption = 'Desmarcar Todos'
      ImageIndex = 69
      OnExecute = actCheckExecute
    end
  end
end
