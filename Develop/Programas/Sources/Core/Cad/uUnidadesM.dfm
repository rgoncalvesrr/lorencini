inherited UnidadesM: TUnidadesM
  Caption = 'Unidade de Medida'
  ClientHeight = 150
  ClientWidth = 534
  ExplicitWidth = 540
  ExplicitHeight = 179
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 534
    Height = 106
    ExplicitTop = 35
    ExplicitHeight = 126
    inherited Panel3: TPanel
      Top = -173
      Width = 515
      Align = alNone
      ExplicitTop = -173
      ExplicitWidth = 515
      inherited PageControl3: TPageControl
        Top = 47
        Width = 509
        Height = 185
        ExplicitLeft = 3
        ExplicitTop = 38
        ExplicitWidth = 509
        ExplicitHeight = 194
        inherited tsDet: TTabSheet
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 501
          ExplicitHeight = 164
          inherited DBGrid1: TDBGrid
            Width = 501
            Height = 155
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 509
        Height = 38
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 509
        ExplicitHeight = 38
        inherited ToolBar3: TToolBar
          Width = 481
          ButtonWidth = 129
          ExplicitWidth = 481
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
      Width = 528
      Height = 100
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 633
      ExplicitHeight = 120
      inherited TabSheet1: TTabSheet
        Caption = 'Unidade de Medida'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 625
        ExplicitHeight = 90
        object Label1: TLabel
          Left = 3
          Top = 14
          Width = 103
          Height = 15
          Caption = 'Unidade de Medida'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 3
          Top = 44
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit2
        end
        object DBEdit1: TDBEdit
          Left = 114
          Top = 8
          Width = 49
          Height = 21
          CharCase = ecUpperCase
          DataField = 'un'
          DataSource = DataSource1
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 114
          Top = 38
          Width = 394
          Height = 21
          DataField = 'descri'
          DataSource = DataSource1
          TabOrder = 1
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 528
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 633
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      Width = 515
      ButtonWidth = 115
      ExplicitWidth = 515
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
  object DataSource1: TDataSource
    DataSet = DM.qUnidade
    Left = 248
    Top = 56
  end
end
