inherited PrecosMLaudosCliM: TPrecosMLaudosCliM
  Caption = 'Manuten'#231#227'o de Pol'#237'tica de Pre'#231'os  por Cliente por Laudo'
  ClientHeight = 241
  ClientWidth = 943
  ExplicitWidth = 949
  ExplicitHeight = 269
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 943
    Height = 197
    ExplicitWidth = 943
    ExplicitHeight = 197
    inherited Panel3: TPanel
      Align = alNone
    end
    inherited PageControl1: TPageControl
      Width = 937
      Height = 191
      ExplicitWidth = 937
      ExplicitHeight = 191
      inherited TabSheet1: TTabSheet
        Caption = 'Pre'#231'os por Cliente  por Laudo'
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 929
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 71
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitLeft = 7
            ExplicitTop = -3
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 65
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
              Width = 65
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'codserv'
              DataSource = Precos.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel5: TPanel
            Left = 71
            Top = 0
            Width = 635
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 629
              Height = 15
              Align = alTop
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit2
              ExplicitWidth = 51
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 629
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'descri'
              DataSource = Precos.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel6: TPanel
            Left = 706
            Top = 0
            Width = 105
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 99
              Height = 15
              Align = alTop
              Caption = 'Tipo'
              ExplicitWidth = 24
            end
            object DBComboBox1: TDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 99
              Height = 23
              Style = csDropDownList
              Align = alClient
              DataField = 'tipo'
              DataSource = Precos.DataSource1
              ItemHeight = 15
              Items.Strings = (
                'Vari'#225'vel'
                'Fixo')
              ReadOnly = True
              TabOrder = 0
              TabStop = False
            end
          end
          object Panel7: TPanel
            Left = 811
            Top = 0
            Width = 118
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label4: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 112
              Height = 15
              Align = alTop
              Caption = 'Pre'#231'o'
              ExplicitWidth = 30
            end
            object JvDBCalcEdit1: TJvDBCalcEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 112
              Height = 23
              TabStop = False
              Align = alClient
              ReadOnly = True
              TabOrder = 0
              DecimalPlacesAlwaysShown = False
              DataField = 'valor'
              DataSource = Precos.DataSource1
            end
          end
        end
        object Panel8: TPanel
          Left = 0
          Top = 100
          Width = 929
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object Panel9: TPanel
            Left = 0
            Top = 0
            Width = 71
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label5: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 65
              Height = 15
              Align = alTop
              Caption = 'Laudo'
              FocusControl = DBEdit3
              ExplicitWidth = 33
            end
            object DBEdit3: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 65
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'recno'
              DataSource = Precos.dsLaudos
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel10: TPanel
            Left = 71
            Top = 0
            Width = 484
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label6: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 478
              Height = 15
              Align = alTop
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit4
              ExplicitWidth = 51
            end
            object DBEdit4: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 478
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'descri'
              DataSource = Precos.dsLaudos
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel12: TPanel
            Left = 810
            Top = 0
            Width = 119
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label8: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 113
              Height = 15
              Align = alTop
              Caption = 'Pre'#231'o'
              ExplicitWidth = 30
            end
            object JvDBCalcEdit2: TJvDBCalcEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 113
              Height = 23
              Align = alClient
              TabOrder = 0
              DecimalPlacesAlwaysShown = False
              DataField = 'valor'
              DataSource = Precos.dsLaudosCli
            end
          end
          object Panel11: TPanel
            Left = 555
            Top = 0
            Width = 255
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object Label7: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 249
              Height = 15
              Align = alTop
              Caption = 'T'#237'tulo'
              FocusControl = DBEdit5
              ExplicitWidth = 31
            end
            object DBEdit5: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 249
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'titulo'
              DataSource = Precos.dsLaudos
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
        object Panel13: TPanel
          Left = 0
          Top = 50
          Width = 929
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Panel15: TPanel
            Left = 0
            Top = 0
            Width = 55
            Height = 50
            Margins.Right = 0
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label10: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 49
              Height = 15
              Align = alTop
              Caption = 'Cliente'
              FocusControl = DBEdit9
              ExplicitWidth = 37
            end
            object DBEdit9: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 52
              Height = 23
              Margins.Right = 0
              Align = alClient
              DataField = 'cliente'
              DataSource = Precos.dsLaudosCli
              TabOrder = 0
              OnExit = DBEdit9Exit
            end
          end
          object Panel16: TPanel
            Left = 55
            Top = 0
            Width = 29
            Height = 50
            Margins.Top = 22
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
              Action = actFindCli
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
              ExplicitTop = 26
              ExplicitWidth = 24
              ExplicitHeight = 24
            end
          end
          object Panel20: TPanel
            Left = 84
            Top = 0
            Width = 176
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object Label12: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 170
              Height = 15
              Align = alTop
              Caption = 'Nome Curto'
              FocusControl = DBEdit11
              ExplicitWidth = 66
            end
            object DBEdit11: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 170
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'nome_chave'
              DataSource = Precos.dsLaudosCli
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel21: TPanel
            Left = 516
            Top = 0
            Width = 118
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label13: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 112
              Height = 15
              Align = alTop
              Caption = 'C.N.P.J.'
              FocusControl = DBEdit12
              ExplicitWidth = 40
            end
            object DBEdit12: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 112
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'cnpj'
              DataSource = Precos.dsLaudosCli
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel22: TPanel
            Left = 634
            Top = 0
            Width = 98
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 4
            object Label14: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 92
              Height = 15
              Align = alTop
              Caption = 'C.P.F.'
              FocusControl = DBEdit13
              ExplicitWidth = 30
            end
            object DBEdit13: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 92
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'cpf'
              DataSource = Precos.dsLaudosCli
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel23: TPanel
            Left = 260
            Top = 0
            Width = 256
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 5
            object Label15: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 250
              Height = 15
              Align = alTop
              Caption = 'Empresa'
              FocusControl = DBEdit14
              ExplicitWidth = 45
            end
            object DBEdit14: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 250
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'empresa'
              DataSource = Precos.dsLaudosCli
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel52: TPanel
            Left = 732
            Top = 0
            Width = 168
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 6
            object Label39: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 162
              Height = 15
              Align = alTop
              Caption = 'Cidade'
              FocusControl = DBEdit34
              ExplicitWidth = 37
            end
            object DBEdit34: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 162
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'cidade'
              DataSource = Precos.dsLaudosCli
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel53: TPanel
            Left = 900
            Top = 0
            Width = 29
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 7
            object Label40: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 23
              Height = 15
              Align = alTop
              Caption = 'UF'
              FocusControl = DBEdit35
              ExplicitWidth = 14
            end
            object DBEdit35: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 23
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'estado'
              DataSource = Precos.dsLaudosCli
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 937
    ExplicitWidth = 937
    inherited ToolBar1: TToolBar
      Width = 619
      ExplicitWidth = 619
    end
  end
  inherited alDef: TActionList
    object actFindCli: TAction
      ImageIndex = 332
      OnExecute = actFindCliExecute
    end
  end
end
