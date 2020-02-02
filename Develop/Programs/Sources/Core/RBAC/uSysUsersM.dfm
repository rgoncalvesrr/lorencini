inherited SysUsersM: TSysUsersM
  BorderStyle = bsSizeable
  Caption = 'Manuten'#231#227'o de Usu'#225'rio'
  ClientHeight = 192
  ClientWidth = 782
  ExplicitWidth = 798
  ExplicitHeight = 230
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 782
    Height = 148
    ExplicitTop = 35
    ExplicitWidth = 782
    ExplicitHeight = 130
    inherited Panel3: TPanel
      Top = 197
      Align = alNone
      ExplicitTop = 197
      inherited PageControl3: TPageControl
        Top = 47
        Height = 185
        ExplicitLeft = 3
        ExplicitTop = 38
        ExplicitWidth = 633
        ExplicitHeight = 194
        inherited tsDet: TTabSheet
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 625
          ExplicitHeight = 164
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
      Width = 776
      Height = 142
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 776
      ExplicitHeight = 124
      inherited TabSheet1: TTabSheet
        Caption = 'Usu'#225'rio'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 768
        ExplicitHeight = 94
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 768
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 185
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitHeight = 45
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 179
              Height = 15
              Align = alTop
              Caption = 'Usu'#225'rio'
              FocusControl = DBEdit1
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 40
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 179
              Height = 23
              Align = alClient
              DataField = 'username'
              DataSource = SysUsers.DataSource1
              TabOrder = 0
            end
          end
          object Panel6: TPanel
            Left = 185
            Top = 0
            Width = 325
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitHeight = 45
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 319
              Height = 15
              Align = alTop
              Caption = 'Nome'
              FocusControl = DBEdit2
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 33
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 319
              Height = 23
              Align = alClient
              DataField = 'name'
              DataSource = SysUsers.DataSource1
              TabOrder = 0
            end
          end
          object Panel7: TPanel
            Left = 510
            Top = 0
            Width = 204
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitHeight = 45
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 198
              Height = 15
              Align = alTop
              Caption = 'Senha'
              FocusControl = DBEdit3
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 32
            end
            object DBEdit3: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 198
              Height = 23
              Align = alClient
              DataField = 'password'
              DataSource = SysUsers.DataSource1
              PasswordChar = '*'
              TabOrder = 0
            end
          end
          object Panel8: TPanel
            Left = 714
            Top = 0
            Width = 54
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            ExplicitHeight = 45
            object DBCheckBox1: TDBCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 28
              Width = 48
              Height = 19
              Margins.Top = 28
              Align = alClient
              Caption = 'Ativo'
              DataField = 'active'
              DataSource = SysUsers.DataSource1
              TabOrder = 0
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              ExplicitHeight = 14
            end
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 50
          Width = 768
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Panel9: TPanel
            Left = 0
            Top = 0
            Width = 350
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitHeight = 45
            object Label4: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 344
              Height = 15
              Align = alTop
              Caption = 'E-Mail'
              FocusControl = DBEdit4
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 34
            end
            object DBEdit4: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 344
              Height = 23
              Align = alClient
              DataField = 'email'
              DataSource = SysUsers.DataSource1
              TabOrder = 0
            end
          end
          object Panel10: TPanel
            Left = 512
            Top = 0
            Width = 256
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitHeight = 45
            object DBCheckBox2: TDBCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 28
              Width = 250
              Height = 19
              Margins.Top = 28
              Align = alClient
              Caption = 'Alterar senha no pr'#243'ximo logon'
              DataField = 'changepass'
              DataSource = SysUsers.DataSource1
              TabOrder = 0
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              ExplicitHeight = 14
            end
          end
          object Panel11: TPanel
            Left = 350
            Top = 0
            Width = 162
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitHeight = 45
            object Label5: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 156
              Height = 15
              Align = alTop
              Caption = 'Papel Padr'#227'o'
              FocusControl = DBEdit4
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 69
            end
            object JvDBComboBox1: TJvDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 156
              Height = 23
              Align = alClient
              DataField = 'role'
              DataSource = SysUsers.DataSource1
              TabOrder = 0
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -13
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 776
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 776
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
