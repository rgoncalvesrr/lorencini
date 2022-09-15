inherited FinCCM: TFinCCM
  Caption = 'Manuten'#231#227'o de Contas Corrente'
  ClientHeight = 225
  ExplicitHeight = 254
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Height = 181
    ExplicitLeft = 0
    ExplicitWidth = 639
    ExplicitHeight = 181
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
      Height = 175
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 633
      ExplicitHeight = 175
      inherited TabSheet1: TTabSheet
        Caption = 'Conta Corrente'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 625
        ExplicitHeight = 145
        object Label1: TLabel
          Left = 3
          Top = 17
          Width = 32
          Height = 15
          Caption = 'Conta'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 3
          Top = 51
          Width = 43
          Height = 15
          Caption = 'Ag'#234'ncia'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 3
          Top = 86
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 3
          Top = 118
          Width = 62
          Height = 15
          Caption = 'Concilia'#231#227'o'
        end
        object DBEdit1: TDBEdit
          Left = 72
          Top = 9
          Width = 83
          Height = 23
          DataField = 'cc'
          DataSource = FinCC.DataSource1
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 72
          Top = 43
          Width = 96
          Height = 23
          DataField = 'agencia'
          DataSource = FinCC.DataSource1
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 72
          Top = 77
          Width = 418
          Height = 23
          DataField = 'descri'
          DataSource = FinCC.DataSource1
          TabOrder = 2
        end
        object JvDBDateEdit1: TJvDBDateEdit
          Left = 72
          Top = 109
          Width = 129
          Height = 23
          DataField = 'conciliacao'
          DataSource = FinCC.DataSource1
          ButtonWidth = 23
          ShowNullDate = False
          TabOrder = 3
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
    Left = 192
  end
end
