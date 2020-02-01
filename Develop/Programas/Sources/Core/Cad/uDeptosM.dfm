inherited DeptosM: TDeptosM
  Caption = 'Departamento'
  ClientHeight = 179
  ClientWidth = 513
  Constraints.MinWidth = 519
  ExplicitWidth = 519
  ExplicitHeight = 208
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 513
    Height = 135
    ExplicitLeft = 0
    ExplicitWidth = 513
    ExplicitHeight = 135
    inherited Panel3: TPanel
      Top = -100
      Width = 513
      ExplicitTop = -100
      ExplicitWidth = 513
      inherited PageControl3: TPageControl
        Width = 507
        ExplicitLeft = 3
        ExplicitTop = 47
        ExplicitWidth = 507
        ExplicitHeight = 185
        inherited tsDet: TTabSheet
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 499
          ExplicitHeight = 155
          inherited DBGrid1: TDBGrid
            Width = 499
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 507
        ExplicitWidth = 507
        inherited ToolBar3: TToolBar
          Width = 494
          ExplicitWidth = 494
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
      Width = 507
      Height = 134
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 507
      ExplicitHeight = 134
      inherited TabSheet1: TTabSheet
        Caption = 'Departamento'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 499
        ExplicitHeight = 104
        object Label1: TLabel
          Left = 3
          Top = 47
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 3
          Top = 78
          Width = 114
          Height = 15
          Caption = 'Quantidade de Ativos'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 3
          Top = 18
          Width = 76
          Height = 15
          Caption = 'Departamento'
          FocusControl = DBEdit3
        end
        object DBEdit1: TDBEdit
          Left = 122
          Top = 39
          Width = 342
          Height = 23
          DataField = 'descri'
          DataSource = Deptos.DataSource1
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 122
          Top = 70
          Width = 112
          Height = 23
          DataField = 'qtdativos'
          DataSource = Deptos.DataSource1
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 122
          Top = 10
          Width = 42
          Height = 23
          DataField = 'depto'
          DataSource = Deptos.DataSource1
          Enabled = False
          TabOrder = 2
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 507
    ExplicitWidth = 507
    inherited ToolBar1: TToolBar
      Width = 494
      ExplicitWidth = 494
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
  end
end
