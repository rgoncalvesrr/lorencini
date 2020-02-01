inherited EstadosM: TEstadosM
  Caption = 'Manuten'#231#227'o de Estados'
  ClientHeight = 144
  ExplicitHeight = 173
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Height = 100
    ExplicitLeft = 0
    ExplicitWidth = 639
    ExplicitHeight = 100
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
      Height = 94
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 633
      ExplicitHeight = 94
      inherited TabSheet1: TTabSheet
        Caption = 'Estado'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 625
        ExplicitHeight = 64
        object Label1: TLabel
          Left = 9
          Top = 9
          Width = 14
          Height = 15
          Caption = 'UF'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 48
          Top = 9
          Width = 33
          Height = 15
          Caption = 'Nome'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 551
          Top = 9
          Width = 59
          Height = 15
          Caption = 'Dias Coleta'
          FocusControl = DBEdit3
        end
        object DBEdit1: TDBEdit
          Left = 9
          Top = 26
          Width = 34
          Height = 23
          CharCase = ecUpperCase
          DataField = 'uf'
          DataSource = Estados.DataSource1
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 48
          Top = 26
          Width = 496
          Height = 23
          DataField = 'nome'
          DataSource = Estados.DataSource1
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 551
          Top = 26
          Width = 58
          Height = 23
          DataField = 'dias_coleta'
          DataSource = Estados.DataSource1
          TabOrder = 2
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
    Left = 208
    Top = 64
  end
end
