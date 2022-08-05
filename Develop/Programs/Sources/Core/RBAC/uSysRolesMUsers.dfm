inherited SysRolesMUsers: TSysRolesMUsers
  Caption = 'Usu'#225'rio por Papel'
  ClientHeight = 206
  ClientWidth = 747
  ExplicitWidth = 753
  ExplicitHeight = 235
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 747
    Height = 162
    ExplicitWidth = 747
    ExplicitHeight = 162
    inherited Panel3: TPanel
      Align = alNone
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
      Width = 741
      Height = 156
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
            Width = 289
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitLeft = -3
            ExplicitTop = 3
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 283
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
              Width = 286
              Height = 23
              Margins.Right = 0
              Align = alClient
              CharCase = ecLowerCase
              DataField = 'email'
              DataSource = SysRoles.dsAccounts
              TabOrder = 0
              OnExit = DBEdit3Exit
            end
          end
          object Panel9: TPanel
            Left = 289
            Top = 0
            Width = 444
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitLeft = 119
            ExplicitWidth = 335
            object Label4: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 438
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
              Width = 438
              Height = 23
              Align = alClient
              DataField = 'nome'
              DataSource = SysRoles.dsAccounts
              ReadOnly = True
              TabOrder = 0
              ExplicitWidth = 329
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 741
    ExplicitWidth = 741
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
end
