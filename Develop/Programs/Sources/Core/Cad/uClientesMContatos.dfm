inherited ClientesMContatos: TClientesMContatos
  Caption = 'Contatos por Cliente'
  ClientHeight = 409
  ClientWidth = 1160
  ExplicitWidth = 1166
  ExplicitHeight = 438
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 1160
    Height = 365
    ExplicitTop = 44
    ExplicitWidth = 1079
    ExplicitHeight = 365
    inherited Panel3: TPanel
      Top = 206
      Align = alNone
      inherited PageControl3: TPageControl
        Top = 47
        Height = 185
        ExplicitLeft = 3
        ExplicitTop = 47
        ExplicitWidth = 633
        ExplicitHeight = 185
        inherited tsDet: TTabSheet
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 625
          ExplicitHeight = 155
          inherited DBGrid1: TDBGrid
            Width = 625
            Height = 155
          end
        end
      end
      inherited ControlBar2: TControlBar
        Height = 38
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 633
        ExplicitHeight = 38
        inherited ToolBar3: TToolBar
          ButtonWidth = 129
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
      Height = 359
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 1073
      ExplicitHeight = 359
      inherited TabSheet1: TTabSheet
        Caption = 'Cliente'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 1065
        ExplicitHeight = 329
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
        object Panel27: TPanel
          Left = 0
          Top = 0
          Width = 1146
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitWidth = 1065
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
            ExplicitWidth = 839
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
              ExplicitWidth = 833
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
            ExplicitLeft = 907
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
          ExplicitWidth = 1065
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 65
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitLeft = -3
            ExplicitTop = 3
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
            ExplicitLeft = 62
            ExplicitTop = -3
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
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000A0A
                0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A00FF00FF00FF00FF000A0A
                0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A00FF00FF00FF00FF000A0A
                0A00A9A9A900C4C4C400696969002C2C2C000A0A0A00FF00FF00FF00FF000A0A
                0A00A9A9A900C4C4C400696969002C2C2C000A0A0A00FF00FF00FF00FF000A0A
                0A00A9A9A900C4C4C400696969002C2C2C000A0A0A00FF00FF00FF00FF000A0A
                0A00A9A9A900C4C4C400696969002C2C2C000A0A0A00FF00FF00FF00FF000A0A
                0A00121212001E1E1E000B0B0B000A0A0A000A0A0A00FF00FF00FF00FF000A0A
                0A0015151500222222000B0B0B000A0A0A000A0A0A00FF00FF00FF00FF007549
                4900A0725E00EFE1D200EBC8A3009F674D0070414000FF00FF00FF00FF007549
                4900A0725E00EFE1D200EBC8A3009F674D0070414000FF00FF00FF00FF008461
                610085554C00F5E5D400EAC5A000865043007D565500FF00FF00FF00FF008461
                610085554C00F5E5D400EAC5A000865043007D565500FF00FF00FF00FF009A82
                820074444000F5E4D300E1B488007443400093777700FF00FF00FF00FF009A82
                820074444000F5E4D300E1B488007443400093777700FF00FF00FF00FF00B7AE
                AE006C3C3C00E9C8A800D19669006C3C3C00B2A7A700FF00FF00FF00FF00B7AE
                AE006C3C3C00E9C8A800D19669006C3C3C00B2A7A700FF00FF00FF00FF00FF00
                FF006E3E3E00734444006B3B3B006B3B3B000B0B0B000A0A0A000A0A0A000E0D
                0D006C3C3C006B3B3B006B3B3B006C3B3B00FF00FF00FF00FF00FF00FF00FF00
                FF006C3B3B00F1D8BE00E8BF9300C78657000A0A0A00C4C4C400696969001010
                1000F9DEB700E2B38600BD7B51006C3B3B00FF00FF00FF00FF00FF00FF00FF00
                FF006C3B3B00F6E6D600E9BF9500C88759000A0A0A00C4C4C400696969000C0C
                0C00E3C6A900CA9B7600A5694B006C3B3B00FF00FF00FF00FF00FF00FF00FF00
                FF006D3D3D00724343006B3B3B006B3B3B00141010000A0A0A000A0A0A002416
                14006C3B3B006C3B3B006C3B3B006C3B3B00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF000A0A0A00C4C4C400696969000A0A0A00FF00FF00FF00FF000A0A
                0A00C4C4C400696969000A0A0A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF000A0A0A000A0A0A000A0A0A001D1D1D00FF00FF00FF00FF000A0A
                0A000A0A0A000A0A0A001D1D1D00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
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
            ExplicitLeft = 91
            ExplicitTop = -3
            ExplicitWidth = 159
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
              ExplicitWidth = 232
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
            ExplicitLeft = 256
            ExplicitTop = 3
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
            ExplicitLeft = 370
            ExplicitTop = -3
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
            ExplicitLeft = 572
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
            ExplicitLeft = 1058
            ExplicitTop = -3
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
            ExplicitLeft = 738
            ExplicitTop = -3
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
              ExplicitWidth = 157
            end
          end
        end
        object GroupBox1: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 112
          Width = 1140
          Height = 214
          Align = alClient
          Caption = ' Permiss'#245'es do Contato '
          TabOrder = 2
          ExplicitWidth = 1059
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
            ExplicitWidth = 1049
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
            Height = 145
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object DBCheckBox3: TDBCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 250
              Height = 17
              Align = alTop
              Caption = 'Enviar laudo em n'#237'vel normal'
              DataField = 'enviar_laudo_normal'
              DataSource = Clientes.dsContatos
              TabOrder = 0
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object DBCheckBox5: TDBCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 26
              Width = 250
              Height = 17
              Align = alTop
              Caption = 'Enviar laudo em n'#237'vel de cr'#237'tico'
              DataField = 'enviar_laudo_critico'
              DataSource = Clientes.dsContatos
              TabOrder = 1
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object DBCheckBox4: TDBCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 49
              Width = 250
              Height = 17
              Align = alTop
              Caption = 'Enviar laudo em n'#237'vel de aten'#231#227'o'
              DataField = 'enviar_laudo_atencao'
              DataSource = Clientes.dsContatos
              TabOrder = 2
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
          end
          object Panel13: TPanel
            AlignWithMargins = True
            Left = 529
            Top = 64
            Width = 256
            Height = 145
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object DBCheckBox12: TDBCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 250
              Height = 17
              Align = alTop
              Caption = 'Enviar laudo de retorno em n'#237'vel de cr'#237'tico'
              DataField = 'enviar_laudo_retorno_critico'
              DataSource = Clientes.dsContatos
              TabOrder = 0
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object DBCheckBox13: TDBCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 26
              Width = 250
              Height = 17
              Align = alTop
              Caption = 'Enviar laudo de retorno em n'#237'vel de aten'#231#227'o'
              DataField = 'enviar_laudo_retorno_atencao'
              DataSource = Clientes.dsContatos
              TabOrder = 1
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object DBCheckBox14: TDBCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 49
              Width = 250
              Height = 17
              Align = alTop
              Caption = 'Enviar laudo de retorno em n'#237'vel normal'
              DataField = 'enviar_laudo_retorno_normal'
              DataSource = Clientes.dsContatos
              TabOrder = 2
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
          end
          object Panel14: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 64
            Width = 256
            Height = 145
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 3
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
              ExplicitLeft = 6
            end
            object DBCheckBox7: TDBCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 72
              Width = 250
              Height = 17
              Align = alTop
              Caption = 'Enviar Pedido'
              DataField = 'enviar_pedido_venda'
              DataSource = Clientes.dsContatos
              TabOrder = 2
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              ExplicitTop = 49
            end
            object DBCheckBox1: TDBCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 49
              Width = 250
              Height = 17
              Align = alTop
              Caption = 'Enviar Cota'#231#227'o'
              DataField = 'enviar_cotacao_venda'
              DataSource = Clientes.dsContatos
              TabOrder = 1
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              ExplicitTop = 26
            end
            object DBCheckBox2: TDBCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 26
              Width = 250
              Height = 17
              Align = alTop
              AllowGrayed = True
              Caption = 'Acessar Portal'
              DataField = 'portal_acessivel'
              DataSource = Clientes.dsContatos
              TabOrder = 3
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              ExplicitLeft = 6
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 1154
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 1073
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      ButtonWidth = 115
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
