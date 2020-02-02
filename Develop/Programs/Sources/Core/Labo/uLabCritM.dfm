inherited LabCritM: TLabCritM
  Caption = 'Manuten'#231#227'o de Criticidades'
  ClientHeight = 523
  ExplicitWidth = 858
  ExplicitHeight = 558
  PixelsPerInch = 120
  TextHeight = 20
  inherited Panel1: TPanel
    Top = 44
    Height = 479
    ExplicitTop = 57
    ExplicitHeight = 466
    inherited Panel3: TPanel
      Top = 148
      Height = 331
      ExplicitTop = 135
      ExplicitHeight = 331
      inherited PageControl3: TPageControl
        Top = 47
        Height = 281
        ExplicitLeft = 3
        ExplicitTop = 60
        ExplicitWidth = 846
        ExplicitHeight = 268
        inherited tsDet: TTabSheet
          Caption = 'Tipos de Laudo'
          ExplicitLeft = 4
          ExplicitTop = 31
          ExplicitWidth = 838
          ExplicitHeight = 233
          inherited DBGrid1: TDBGrid
            Width = 838
            Height = 246
            DataSource = LabCrit.dsRelato
          end
        end
      end
      inherited ControlBar2: TControlBar
        Height = 38
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 846
        ExplicitHeight = 38
        inherited ToolBar3: TToolBar
          ButtonWidth = 150
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
      Height = 142
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 846
      ExplicitHeight = 129
      inherited TabSheet1: TTabSheet
        Caption = 'Criticidade'
        ExplicitLeft = 4
        ExplicitTop = 31
        ExplicitWidth = 838
        ExplicitHeight = 94
        object Label1: TLabel
          Left = 4
          Top = 12
          Width = 55
          Height = 20
          Caption = 'Registro'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 71
          Top = 12
          Width = 72
          Height = 20
          Caption = 'Criticidade'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 604
          Top = 12
          Width = 34
          Height = 20
          Caption = 'Nivel'
          FocusControl = DBEdit2
        end
        object DBEdit1: TDBEdit
          Left = 4
          Top = 35
          Width = 57
          Height = 28
          TabStop = False
          DataField = 'recno'
          DataSource = LabCrit.DataSource1
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 71
          Top = 35
          Width = 525
          Height = 28
          DataField = 'descri'
          DataSource = LabCrit.DataSource1
          TabOrder = 1
        end
        object JvColorComboBox1: TJvColorComboBox
          Left = 604
          Top = 35
          Width = 208
          Height = 27
          ColorNameMap.Strings = (
            'clGreen'
            'clYellow'
            '$004080FF'
            'clRed'
            '')
          ColorValue = clGreen
          ColorDialogText = 'Custom...'
          DroppedDownWidth = 208
          NewColorText = 'Custom'
          TabOrder = 2
          OnChange = JvColorComboBox1Change
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 846
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      ButtonWidth = 133
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
