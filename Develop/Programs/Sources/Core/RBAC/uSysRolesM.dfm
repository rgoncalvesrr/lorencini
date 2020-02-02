inherited SysRolesM: TSysRolesM
  BorderStyle = bsSizeable
  Caption = 'Manuten'#231#227'o de Pap'#233'is'
  ClientHeight = 597
  ClientWidth = 834
  ExplicitWidth = 850
  ExplicitHeight = 636
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 834
    Height = 553
    ExplicitTop = 35
    ExplicitWidth = 834
    ExplicitHeight = 562
    inherited Panel3: TPanel
      Top = 102
      Width = 834
      Height = 451
      ExplicitTop = 102
      ExplicitWidth = 834
      ExplicitHeight = 451
      inherited PageControl3: TPageControl
        Top = 47
        Width = 828
        Height = 401
        ExplicitLeft = 3
        ExplicitTop = 38
        ExplicitWidth = 828
        ExplicitHeight = 427
        inherited tsDet: TTabSheet
          Caption = 'Usu'#225'rios'
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 820
          ExplicitHeight = 397
          inherited DBGrid1: TDBGrid
            Width = 820
            Height = 371
            DataSource = SysRoles.dsUsers
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Permiss'#245'es'
          ImageIndex = 1
          ExplicitHeight = 388
          object trMenu: TTreeView
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 814
            Height = 365
            Align = alClient
            BorderStyle = bsNone
            DragMode = dmAutomatic
            Images = Resources.small_n
            Indent = 27
            PopupMenu = pmGrants
            ReadOnly = True
            ShowButtons = False
            ShowLines = False
            TabOrder = 0
            OnDblClick = trMenuDblClick
            OnDeletion = trMenuDeletion
            OnKeyPress = trMenuKeyPress
            ExplicitHeight = 382
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 828
        Height = 38
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 828
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
      Width = 828
      Height = 96
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 828
      ExplicitHeight = 79
      inherited TabSheet1: TTabSheet
        Caption = 'Papel'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 820
        ExplicitHeight = 58
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 820
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
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 29
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 95
              Height = 23
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
            Width = 648
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitHeight = 45
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 642
              Height = 15
              Align = alTop
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit2
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 51
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 642
              Height = 23
              Align = alClient
              DataField = 'descri'
              DataSource = SysRoles.DataSource1
              TabOrder = 0
            end
          end
          object Panel6: TPanel
            Left = 749
            Top = 0
            Width = 71
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitHeight = 45
            object DBCheckBox1: TDBCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 26
              Width = 65
              Height = 21
              Hint = 'Cancelar Edi'#231#227'o'
              Margins.Top = 26
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
    Width = 828
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 828
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
    object actCheckAll: TAction
      Caption = 'actCheckAll'
      ImageIndex = 67
      OnExecute = actCheckAllExecute
    end
    object actUncheckAll: TAction
      Tag = 1
      Caption = 'actUncheckAll'
      ImageIndex = 69
      OnExecute = actUncheckAllExecute
    end
  end
  object pmGrants: TPopupMenu
    Images = Resources.medium_n
    OnPopup = pmGrantsPopup
    Left = 280
    Top = 56
    object actCheckAll1: TMenuItem
      Action = actCheckAll
    end
    object actUncheckAll1: TMenuItem
      Action = actUncheckAll
    end
  end
end
