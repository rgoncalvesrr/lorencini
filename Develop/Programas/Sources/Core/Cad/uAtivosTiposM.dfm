inherited AtivosTiposM: TAtivosTiposM
  Caption = 'Manuten'#231#227'o de Registros'
  ClientHeight = 182
  ClientWidth = 506
  Constraints.MinWidth = 493
  ExplicitWidth = 512
  ExplicitHeight = 211
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 506
    Height = 138
    ExplicitLeft = 0
    ExplicitWidth = 506
    ExplicitHeight = 138
    inherited Panel3: TPanel
      Top = -97
      Width = 506
      ExplicitTop = -97
      ExplicitWidth = 506
      inherited PageControl3: TPageControl
        Width = 500
        ExplicitLeft = 3
        ExplicitTop = 47
        ExplicitWidth = 500
        ExplicitHeight = 185
        inherited tsDet: TTabSheet
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 492
          ExplicitHeight = 155
          inherited DBGrid1: TDBGrid
            Width = 492
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 500
        ExplicitWidth = 500
        inherited ToolBar3: TToolBar
          Width = 487
          ExplicitWidth = 487
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
      Width = 500
      Height = 137
      ExplicitLeft = 3
      ExplicitTop = 51
      ExplicitWidth = 500
      ExplicitHeight = 137
      inherited TabSheet1: TTabSheet
        Caption = 'Tipo de Ativo'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 492
        ExplicitHeight = 107
        object Label1: TLabel
          Left = 9
          Top = 20
          Width = 24
          Height = 15
          Caption = 'Tipo'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 9
          Top = 50
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 9
          Top = 80
          Width = 62
          Height = 15
          Caption = 'Quantidade'
          FocusControl = DBEdit3
        end
        object DBEdit1: TDBEdit
          Left = 77
          Top = 12
          Width = 44
          Height = 23
          DataField = 'tipo'
          DataSource = AtivosTipos.DataSource1
          Enabled = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 77
          Top = 42
          Width = 378
          Height = 23
          DataField = 'descri'
          DataSource = AtivosTipos.DataSource1
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 77
          Top = 72
          Width = 71
          Height = 23
          DataField = 'qtd'
          DataSource = AtivosTipos.DataSource1
          ReadOnly = True
          TabOrder = 2
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 500
    ExplicitWidth = 500
    inherited ToolBar1: TToolBar
      Width = 487
      ExplicitWidth = 487
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
    Left = 200
  end
end
