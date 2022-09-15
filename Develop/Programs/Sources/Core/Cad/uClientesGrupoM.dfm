inherited ClientesGrupoM: TClientesGrupoM
  Caption = 'Manuten'#231#227'o de Grupos de Clientes'
  ClientHeight = 440
  ExplicitHeight = 469
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Height = 396
    ExplicitLeft = 0
    ExplicitWidth = 639
    ExplicitHeight = 396
    inherited Panel3: TPanel
      Top = 89
      Height = 307
      ExplicitTop = 89
      ExplicitWidth = 639
      ExplicitHeight = 307
      inherited PageControl3: TPageControl
        Height = 257
        ExplicitLeft = 3
        ExplicitTop = 47
        ExplicitWidth = 633
        ExplicitHeight = 257
        inherited tsDet: TTabSheet
          Caption = 'Clientes do Grupo'
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 625
          ExplicitHeight = 227
          inherited DBGrid1: TDBGrid
            Height = 227
            DataSource = ClientesGrupo.dsClientes
          end
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
      Height = 83
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 633
      ExplicitHeight = 83
      inherited TabSheet1: TTabSheet
        Caption = 'Grupo'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 625
        ExplicitHeight = 53
        object Label1: TLabel
          Left = 3
          Top = 0
          Width = 33
          Height = 15
          Caption = 'Grupo'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 42
          Top = 3
          Width = 33
          Height = 15
          Caption = 'Nome'
          FocusControl = DBEdit2
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 17
          Width = 32
          Height = 23
          TabStop = False
          DataField = 'recno'
          DataSource = ClientesGrupo.DataSource1
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 42
          Top = 17
          Width = 574
          Height = 23
          DataField = 'descri'
          DataSource = ClientesGrupo.DataSource1
          TabOrder = 1
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
  end
end
