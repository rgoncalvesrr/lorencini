inherited OSMServicos: TOSMServicos
  Caption = 'Naturezas da Ordem de Servi'#231'o'
  ClientHeight = 402
  ClientWidth = 708
  Constraints.MinWidth = 642
  ExplicitWidth = 714
  ExplicitHeight = 431
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 708
    Height = 358
    ExplicitTop = 44
    ExplicitWidth = 708
    ExplicitHeight = 358
    inherited Panel3: TPanel
      Top = 123
      Width = 708
      Visible = True
      ExplicitTop = 123
      ExplicitWidth = 708
      inherited PageControl3: TPageControl
        Width = 702
        ExplicitTop = 47
        ExplicitWidth = 702
        ExplicitHeight = 185
        inherited tsDet: TTabSheet
          Caption = 'Desdobramento'
          ExplicitWidth = 694
          ExplicitHeight = 155
          inherited DBGrid1: TDBGrid
            Width = 694
            DataSource = OS.dsServDet
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 702
        ExplicitWidth = 702
        inherited ToolBar3: TToolBar
          Width = 617
          ExplicitWidth = 617
        end
      end
    end
    inherited PageControl1: TPageControl
      Width = 702
      Height = 117
      ExplicitWidth = 702
      ExplicitHeight = 117
      inherited TabSheet1: TTabSheet
        Caption = 'Natureza'
        ExplicitWidth = 694
        ExplicitHeight = 87
        object DBCheckBox1: TDBCheckBox
          Left = 87
          Top = 59
          Width = 155
          Height = 18
          Caption = 'Imprimir Valores na OS'
          DataField = 'prnos'
          DataSource = OS.dsServ
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCheckBox2: TDBCheckBox
          Left = 246
          Top = 59
          Width = 185
          Height = 19
          Caption = 'Imprimir Servi'#231'os Executados'
          DataField = 'prnsecserv'
          DataSource = OS.dsServ
          TabOrder = 1
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object Panel2: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 688
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object Panel17: TPanel
            Left = 0
            Top = 0
            Width = 57
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label51: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 51
              Height = 15
              Align = alTop
              Caption = 'Servi'#231'o'
              ExplicitWidth = 38
            end
            object DBEdit49: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 51
              Height = 23
              Align = alClient
              DataField = 'codserv'
              DataSource = OS.dsServ
              TabOrder = 0
              OnExit = DBEdit49Exit
            end
          end
          object Panel18: TPanel
            Left = 57
            Top = 0
            Width = 24
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            Padding.Top = 24
            Padding.Bottom = 3
            TabOrder = 1
            object SpeedButton5: TSpeedButton
              Left = 0
              Top = 24
              Width = 24
              Height = 23
              Action = actFindServ
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
              ExplicitLeft = 39
              ExplicitTop = 17
              ExplicitWidth = 25
              ExplicitHeight = 24
            end
          end
          object Panel19: TPanel
            Left = 81
            Top = 0
            Width = 265
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object Label47: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 259
              Height = 15
              Align = alTop
              Caption = 'Descri'#231#227'o'
              ExplicitWidth = 51
            end
            object DBEdit45: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 259
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'descri'
              DataSource = OS.dsServ
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel20: TPanel
            Left = 400
            Top = 0
            Width = 34
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 3
            object Label48: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 28
              Height = 15
              Align = alTop
              Caption = 'UN'
              ExplicitWidth = 17
            end
            object DBEdit48: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 28
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'un'
              DataSource = OS.dsServ
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel21: TPanel
            Left = 346
            Top = 0
            Width = 54
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 4
            object Label49: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 48
              Height = 15
              Align = alTop
              Caption = 'Qtd'
              ExplicitWidth = 20
            end
            object DBEdit3: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 48
              Height = 23
              Align = alClient
              DataField = 'qtd'
              DataSource = OS.dsServ
              TabOrder = 0
            end
          end
          object Panel22: TPanel
            Left = 434
            Top = 0
            Width = 95
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 5
            object Label50: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 89
              Height = 15
              Align = alTop
              Caption = 'Unit'#225'rio'
              ExplicitWidth = 42
            end
            object JvDBCalcEdit1: TJvDBCalcEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 89
              Height = 23
              Align = alClient
              CheckOnExit = True
              DisplayFormat = '0.#0'
              FormatOnEditing = True
              TabOrder = 0
              DecimalPlacesAlwaysShown = False
              DataField = 'valor'
              DataSource = OS.dsServ
            end
          end
          object Panel23: TPanel
            Left = 529
            Top = 0
            Width = 159
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 6
            object Label52: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 153
              Height = 15
              Align = alTop
              Caption = 'Total'
              FocusControl = DBEdit50
              ExplicitWidth = 25
            end
            object DBEdit50: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 153
              Height = 23
              TabStop = False
              Align = alClient
              CharCase = ecLowerCase
              DataField = 'total'
              DataSource = OS.dsServ
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 702
    ExplicitWidth = 702
    inherited ToolBar1: TToolBar
      Width = 617
      ExplicitWidth = 617
    end
  end
  inherited alDef: TActionList
    Left = 192
    Top = 24
    inherited actNew: TAction
      Visible = False
    end
    inherited actEdit: TAction
      Visible = False
    end
    inherited actView: TAction
      Visible = False
    end
    object actFindServ: TAction
      Enabled = False
      ImageIndex = 332
      OnExecute = actFindServExecute
    end
  end
end
