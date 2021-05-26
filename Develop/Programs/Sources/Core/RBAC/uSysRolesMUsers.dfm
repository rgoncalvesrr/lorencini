inherited SysRolesMUsers: TSysRolesMUsers
  Caption = 'Usu'#225'rio por Papel'
  ClientHeight = 206
  ClientWidth = 747
  ExplicitWidth = 753
  ExplicitHeight = 235
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 747
    Height = 162
    ExplicitTop = 44
    ExplicitWidth = 747
    ExplicitHeight = 162
    inherited Panel3: TPanel
      Align = alNone
      ExplicitTop = 204
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
      Width = 741
      Height = 156
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 741
      ExplicitHeight = 156
      inherited TabSheet1: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 733
        ExplicitHeight = 126
        object Bevel1: TBevel
          AlignWithMargins = True
          Left = 3
          Top = 53
          Width = 727
          Height = 3
          Align = alTop
          Shape = bsTopLine
          Style = bsRaised
          ExplicitLeft = 2
          ExplicitTop = 47
          ExplicitWidth = 732
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 733
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 101
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 95
              Height = 15
              Align = alTop
              Caption = 'Papel'
              FocusControl = DBEdit1
              ExplicitWidth = 29
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 95
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'recno'
              DataSource = SysRoles.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel5: TPanel
            Left = 101
            Top = 0
            Width = 561
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 555
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
              Width = 555
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'descri'
              DataSource = SysRoles.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel6: TPanel
            Left = 662
            Top = 0
            Width = 71
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object DBCheckBox1: TDBCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 26
              Width = 65
              Height = 21
              Hint = 'Cancelar Edi'#231#227'o'
              Margins.Top = 26
              TabStop = False
              Align = alClient
              Caption = 'Interno'
              DataField = 'sys_'
              DataSource = SysRoles.DataSource1
              ReadOnly = True
              TabOrder = 0
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
          end
        end
        object Panel7: TPanel
          Left = 0
          Top = 59
          Width = 733
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Panel8: TPanel
            Left = 0
            Top = 0
            Width = 92
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 86
              Height = 15
              Align = alTop
              Caption = 'Usu'#225'rio'
              FocusControl = DBEdit3
              ExplicitWidth = 40
            end
            object DBEdit3: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 89
              Height = 23
              Margins.Right = 0
              Align = alClient
              DataField = 'username'
              DataSource = SysRoles.dsUsers
              TabOrder = 0
              OnExit = DBEdit3Exit
            end
          end
          object Panel14: TPanel
            Left = 92
            Top = 0
            Width = 27
            Height = 50
            Margins.Top = 22
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object SpeedButton3: TSpeedButton
              AlignWithMargins = True
              Left = 0
              Top = 24
              Width = 24
              Height = 24
              Margins.Left = 0
              Margins.Top = 24
              Margins.Bottom = 2
              Action = actFindUser
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
              ExplicitTop = 21
              ExplicitHeight = 23
            end
          end
          object Panel9: TPanel
            Left = 119
            Top = 0
            Width = 335
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 2
            object Label4: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 329
              Height = 15
              Align = alTop
              Caption = 'Nome'
              FocusControl = DBEdit4
              ExplicitWidth = 33
            end
            object DBEdit4: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 329
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'name'
              DataSource = SysRoles.dsUsers
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel10: TPanel
            Left = 454
            Top = 0
            Width = 208
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label5: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 202
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
              Width = 202
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'email'
              DataSource = SysRoles.dsUsers
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel11: TPanel
            Left = 662
            Top = 0
            Width = 71
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 4
            object DBCheckBox2: TDBCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 26
              Width = 65
              Height = 21
              Margins.Top = 26
              Align = alClient
              Caption = 'Interno'
              DataField = 'active'
              DataSource = SysRoles.dsUsers
              ReadOnly = True
              TabOrder = 0
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 741
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 741
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
    object actFindUser: TAction
      Enabled = False
      ImageIndex = 332
      OnExecute = actFindUserExecute
    end
  end
end
