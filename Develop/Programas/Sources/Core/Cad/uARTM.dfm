inherited ARTM: TARTM
  Caption = 'Manuten'#231#227'o A.R.T.'
  ClientHeight = 378
  ExplicitHeight = 407
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Height = 334
    ExplicitLeft = 0
    ExplicitWidth = 639
    ExplicitHeight = 334
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
      Height = 328
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 633
      ExplicitHeight = 328
      inherited TabSheet1: TTabSheet
        Caption = 'Faixa'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 625
        ExplicitHeight = 298
        object DBCtrlGrid1: TDBCtrlGrid
          Left = 0
          Top = 0
          Width = 625
          Height = 298
          Align = alClient
          DataSource = DM.dsART
          PanelHeight = 42
          PanelWidth = 608
          TabOrder = 0
          RowCount = 7
          object Label1: TLabel
            Left = 17
            Top = 16
            Width = 18
            Height = 15
            Caption = 'At'#233
            FocusControl = DBEdit1
          end
          object Label2: TLabel
            Left = 212
            Top = 16
            Width = 84
            Height = 15
            Caption = 'Valor a Recolher'
          end
          object DBEdit1: TDBEdit
            Left = 42
            Top = 8
            Width = 164
            Height = 23
            DataField = 'art_ate'
            DataSource = DM.dsART
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 305
            Top = 8
            Width = 164
            Height = 23
            DataField = 'art_valor'
            DataSource = DM.dsART
            TabOrder = 1
          end
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
