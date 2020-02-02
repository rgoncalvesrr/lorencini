inherited SysRolesMGrants: TSysRolesMGrants
  Caption = 'Manuten'#231#227'o de Permiss'#245'es por Papel'
  ClientHeight = 310
  ClientWidth = 709
  ExplicitWidth = 715
  ExplicitHeight = 339
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 709
    Height = 266
    ExplicitTop = 44
    ExplicitWidth = 709
    ExplicitHeight = 266
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
      Width = 703
      Height = 260
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 703
      ExplicitHeight = 260
      inherited TabSheet1: TTabSheet
        Caption = 'Permiss'#227'o'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 695
        ExplicitHeight = 230
        object Bevel1: TBevel
          AlignWithMargins = True
          Left = 3
          Top = 53
          Width = 689
          Height = 3
          Align = alTop
          Shape = bsTopLine
          Style = bsRaised
          ExplicitLeft = 2
          ExplicitTop = 47
          ExplicitWidth = 694
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 695
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
            ExplicitHeight = 45
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
            Width = 524
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitHeight = 45
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 518
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
              Width = 518
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
            Left = 625
            Top = 0
            Width = 70
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitHeight = 45
            object DBCheckBox1: TDBCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 26
              Width = 64
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
              ExplicitHeight = 16
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 703
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 703
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
