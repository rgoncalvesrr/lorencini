inherited SysFormsEditM: TSysFormsEditM
  Caption = 'Relat'#243'rios por Formul'#225'rio'
  ClientHeight = 239
  ExplicitHeight = 268
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Height = 195
    ExplicitLeft = 0
    ExplicitWidth = 639
    ExplicitHeight = 153
    inherited Panel3: TPanel
      Align = alNone
      ExplicitTop = 195
      ExplicitWidth = 639
      inherited PageControl3: TPageControl
        ExplicitLeft = 3
        ExplicitTop = 47
        ExplicitWidth = 633
        ExplicitHeight = 185
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
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 633
      ExplicitHeight = 147
      inherited TabSheet1: TTabSheet
        Caption = 'Relat'#243'rio'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 625
        ExplicitHeight = 117
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 625
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 135
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 129
              Height = 15
              Align = alTop
              Caption = 'Formul'#225'rio'
              FocusControl = DBEdit1
              ExplicitWidth = 58
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 129
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'form'
              DataSource = SysForms.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitLeft = -8
              ExplicitTop = 18
            end
          end
          object Panel5: TPanel
            Left = 135
            Top = 0
            Width = 490
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitLeft = 272
            ExplicitTop = 5
            ExplicitWidth = 121
            ExplicitHeight = 41
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 484
              Height = 15
              Align = alTop
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit2
              ExplicitLeft = 146
              ExplicitTop = 6
              ExplicitWidth = 51
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 484
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'descri'
              DataSource = SysForms.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitLeft = -231
              ExplicitTop = 18
              ExplicitWidth = 464
            end
          end
        end
        object Panel6: TPanel
          Left = 0
          Top = 100
          Width = 625
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object Label4: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 619
            Height = 15
            Align = alTop
            Caption = 'T'#237'tulo do Relat'#243'rio'
            FocusControl = DBEdit4
            ExplicitWidth = 98
          end
          object DBEdit4: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 619
            Height = 23
            TabStop = False
            Align = alClient
            DataField = 'label'
            DataSource = SysForms.dsRpt
            TabOrder = 0
            ExplicitLeft = -325
            ExplicitTop = 18
            ExplicitWidth = 446
          end
        end
        object Panel11: TPanel
          Left = 0
          Top = 50
          Width = 625
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Panel12: TPanel
            Left = 0
            Top = 0
            Width = 72
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitHeight = 41
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 66
              Height = 15
              Align = alTop
              Caption = 'Ordem'
              FocusControl = DBEdit3
              ExplicitLeft = 4
              ExplicitTop = 26
              ExplicitWidth = 37
            end
            object DBEdit3: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 66
              Height = 23
              Align = alClient
              DataField = 'ordem'
              DataSource = SysForms.dsRpt
              TabOrder = 0
              ExplicitLeft = 4
              ExplicitTop = 18
              ExplicitWidth = 61
            end
          end
          object Panel13: TPanel
            Left = 72
            Top = 0
            Width = 60
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitTop = 3
            object Label6: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 54
              Height = 15
              Align = alTop
              Caption = 'Relat'#243'rio'
              FocusControl = DBEdit6
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitLeft = -11
              ExplicitTop = 26
              ExplicitWidth = 51
            end
            object DBEdit6: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 57
              Height = 23
              Margins.Right = 0
              Align = alClient
              CharCase = ecUpperCase
              DataField = 'report'
              DataSource = SysForms.dsRpt
              TabOrder = 0
              OnExit = DBEdit6Exit
              ExplicitLeft = -19
              ExplicitTop = 18
              ExplicitWidth = 59
            end
          end
          object Panel14: TPanel
            Left = 132
            Top = 0
            Width = 29
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object SpeedButton1: TSpeedButton
              AlignWithMargins = True
              Left = 0
              Top = 23
              Width = 26
              Height = 25
              Margins.Left = 0
              Margins.Top = 23
              Margins.Bottom = 2
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
              ExplicitLeft = 96
              ExplicitTop = 17
              ExplicitWidth = 25
              ExplicitHeight = 24
            end
          end
          object Panel15: TPanel
            Left = 161
            Top = 0
            Width = 464
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 3
            ExplicitLeft = 242
            ExplicitWidth = 121
            ExplicitHeight = 41
            object Label7: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 458
              Height = 15
              Align = alTop
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit7
              ExplicitWidth = 51
            end
            object DBEdit7: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 458
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'descri'
              DataSource = SysForms.dsRpt
              ReadOnly = True
              TabOrder = 0
              ExplicitLeft = -325
              ExplicitTop = 18
              ExplicitWidth = 446
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
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
    Left = 232
    object actFindRpt: TAction
      ImageIndex = 8
      OnExecute = actFindRptExecute
    end
  end
end
