inherited FinNaturezasCategM: TFinNaturezasCategM
  Caption = 'Manuten'#231#227'o de Categorias Financeiras'
  ClientHeight = 154
  ExplicitHeight = 183
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Height = 110
    ExplicitLeft = 0
    ExplicitWidth = 639
    ExplicitHeight = 110
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
      Height = 104
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 633
      ExplicitHeight = 104
      inherited TabSheet1: TTabSheet
        Caption = 'Categorias'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 625
        ExplicitHeight = 74
        object Label1: TLabel
          Left = 4
          Top = 23
          Width = 51
          Height = 15
          Caption = 'Categoria'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 4
          Top = 53
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit2
        end
        object DBEdit1: TDBEdit
          Left = 63
          Top = 14
          Width = 110
          Height = 23
          DataField = 'categoria'
          DataSource = FinNaturezas.dsCategoria
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 63
          Top = 44
          Width = 380
          Height = 23
          CharCase = ecUpperCase
          DataField = 'descri'
          DataSource = FinNaturezas.dsCategoria
          TabOrder = 1
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    inherited ToolBar1: TToolBar
      Width = 596
      ExplicitWidth = 596
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
    Left = 208
  end
end
