inherited FinNaturezasM: TFinNaturezasM
  Caption = 'Manuten'#231#227'o de Naturezas Financeiras'
  ClientHeight = 206
  ExplicitHeight = 235
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 78
    Height = 128
    ExplicitLeft = 0
    ExplicitTop = 72
    ExplicitWidth = 639
    ExplicitHeight = 134
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
      Height = 122
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 633
      ExplicitHeight = 128
      inherited TabSheet1: TTabSheet
        Caption = 'Natureza'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 625
        ExplicitHeight = 98
        object Label1: TLabel
          Left = 3
          Top = 17
          Width = 47
          Height = 15
          Caption = 'Natureza'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 3
          Top = 47
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 3
          Top = 77
          Width = 24
          Height = 15
          Caption = 'Tipo'
        end
        object DBEdit1: TDBEdit
          Left = 70
          Top = 9
          Width = 75
          Height = 23
          DataField = 'natureza'
          DataSource = FinNaturezas.DataSource1
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 70
          Top = 39
          Width = 426
          Height = 23
          CharCase = ecUpperCase
          DataField = 'descri'
          DataSource = FinNaturezas.DataSource1
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
  object DBComboBox1: TDBComboBox [2]
    Left = 78
    Top = 169
    Width = 97
    Height = 23
    Style = csDropDownList
    DataField = 'tipo'
    DataSource = FinNaturezas.DataSource1
    ItemHeight = 15
    Items.Strings = (
      'Receita'
      'Despesa')
    TabOrder = 2
  end
  object Panel2: TPanel [3]
    AlignWithMargins = True
    Left = 3
    Top = 47
    Width = 633
    Height = 28
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' Categoria'
    TabOrder = 3
    ExplicitLeft = 0
    ExplicitTop = 44
    ExplicitWidth = 639
    object DBText1: TDBText
      Left = 61
      Top = 6
      Width = 41
      Height = 15
      AutoSize = True
      DataField = 'descri'
      DataSource = FinNaturezas.dsCategoria
    end
  end
  inherited alDef: TActionList
    Left = 208
  end
end
