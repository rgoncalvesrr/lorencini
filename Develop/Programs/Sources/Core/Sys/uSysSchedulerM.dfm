inherited SysSchedulerM: TSysSchedulerM
  Caption = 'Edi'#231#227'o de Agendamento'
  ClientHeight = 298
  ClientWidth = 673
  ExplicitWidth = 679
  ExplicitHeight = 327
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 673
    Height = 254
    ExplicitLeft = -3
    ExplicitTop = 45
    ExplicitWidth = 673
    ExplicitHeight = 521
    inherited Panel3: TPanel
      Top = 286
      Width = 673
      Align = alNone
      ExplicitTop = 286
      ExplicitWidth = 673
      inherited PageControl3: TPageControl
        Top = 47
        Width = 667
        Height = 185
        ExplicitLeft = 3
        ExplicitTop = 47
        ExplicitWidth = 667
        ExplicitHeight = 185
        inherited tsDet: TTabSheet
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 659
          ExplicitHeight = 155
          inherited DBGrid1: TDBGrid
            Width = 659
            Height = 155
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 667
        Height = 38
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 667
        ExplicitHeight = 38
        inherited ToolBar3: TToolBar
          Width = 652
          ButtonWidth = 129
          ExplicitWidth = 652
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
      Width = 667
      Height = 248
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 667
      ExplicitHeight = 280
      inherited TabSheet1: TTabSheet
        Caption = 'Agendamento'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 659
        ExplicitHeight = 250
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 659
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 81
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 75
              Height = 15
              Align = alTop
              Caption = 'Registro'
              FocusControl = DBEdit1
              ExplicitWidth = 43
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 75
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'recno'
              DataSource = SysScheduler.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel7: TPanel
            Left = 81
            Top = 0
            Width = 487
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 481
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
              Width = 481
              Height = 23
              Align = alClient
              DataField = 'descri'
              DataSource = SysScheduler.DataSource1
              TabOrder = 0
            end
          end
          object Panel8: TPanel
            Left = 568
            Top = 0
            Width = 91
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object DBCheckBox1: TDBCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 23
              Width = 85
              Height = 24
              Margins.Top = 23
              Align = alClient
              Caption = 'Habilitado'
              DataField = 'habilitado'
              DataSource = SysScheduler.DataSource1
              TabOrder = 0
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 100
          Width = 659
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Panel14: TPanel
            Left = 0
            Top = 0
            Width = 659
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Label5: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 653
              Height = 15
              Align = alTop
              Caption = 'Agendamento'
              FocusControl = DBEdit4
              ExplicitWidth = 76
            end
            object DBEdit4: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 653
              Height = 23
              Align = alClient
              DataField = 'agendamento'
              DataSource = SysScheduler.DataSource1
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Consolas'
              Font.Pitch = fpVariable
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 150
          Width = 659
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object Panel13: TPanel
            Left = 0
            Top = 0
            Width = 103
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitLeft = -3
            ExplicitTop = 3
            object Label6: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 97
              Height = 15
              Align = alTop
              Caption = 'Primeira Execu'#231#227'o'
              FocusControl = DBEdit4
            end
            object JvDBDateEdit1: TJvDBDateEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 97
              Height = 23
              Align = alClient
              DataField = 'inicio'
              DataSource = SysScheduler.DataSource1
              ShowNullDate = False
              TabOrder = 0
              ExplicitLeft = 0
            end
          end
          object Panel15: TPanel
            Left = 103
            Top = 0
            Width = 122
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label7: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 116
              Height = 15
              Align = alTop
              Caption = 'Expira'#231#227'o'
              FocusControl = DBEdit4
              ExplicitWidth = 51
            end
            object JvDBDateEdit2: TJvDBDateEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 116
              Height = 23
              Align = alClient
              DataField = 'expiracao'
              DataSource = SysScheduler.DataSource1
              ShowNullDate = False
              TabOrder = 0
              ExplicitLeft = 6
            end
          end
        end
        object Panel9: TPanel
          Left = 0
          Top = 50
          Width = 659
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 3
          object Panel10: TPanel
            Left = 0
            Top = 0
            Width = 113
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 107
              Height = 15
              Align = alTop
              Caption = 'Rotina'
              ExplicitWidth = 34
            end
            object DBEdit8: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 110
              Height = 23
              Margins.Right = 0
              Align = alClient
              CharCase = ecLowerCase
              DataField = 'fn'
              DataSource = SysScheduler.DataSource1
              TabOrder = 0
              OnExit = DBEdit8Exit
            end
          end
          object Panel11: TPanel
            Left = 113
            Top = 0
            Width = 29
            Height = 50
            Margins.Left = 0
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object SpeedButton1: TSpeedButton
              AlignWithMargins = True
              Left = 0
              Top = 24
              Width = 26
              Height = 23
              Margins.Left = 0
              Margins.Top = 24
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
              ExplicitLeft = 89
              ExplicitTop = 26
              ExplicitWidth = 24
              ExplicitHeight = 24
            end
          end
          object Panel12: TPanel
            Left = 142
            Top = 0
            Width = 517
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 2
            object Label4: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 511
              Height = 15
              Align = alTop
              Caption = 'Descri'#231#227'o'
              ExplicitWidth = 51
            end
            object DBEdit3: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 511
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'descri_1'
              DataSource = SysScheduler.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 667
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 667
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
end
