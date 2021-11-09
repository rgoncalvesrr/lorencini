inherited LabCritM: TLabCritM
  Caption = 'Manuten'#231#227'o de Criticidades'
  ClientHeight = 514
  ClientWidth = 830
  ExplicitWidth = 836
  ExplicitHeight = 543
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 830
    Height = 470
    ExplicitTop = 35
    ExplicitHeight = 357
    inherited Panel3: TPanel
      Top = 96
      Width = 830
      Height = 374
      ExplicitTop = 96
      ExplicitWidth = 830
      ExplicitHeight = 374
      inherited PageControl3: TPageControl
        Width = 824
        Height = 324
        ExplicitTop = 38
        ExplicitHeight = 207
        inherited tsDet: TTabSheet
          Caption = 'Tipos de Laudo'
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 625
          ExplicitHeight = 177
          inherited DBGrid1: TDBGrid
            Width = 816
            Height = 294
            DataSource = LabCrit.dsRelato
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 824
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
      Width = 824
      Height = 90
      ExplicitHeight = 103
      inherited TabSheet1: TTabSheet
        Caption = 'Criticidade'
        ExplicitLeft = 4
        ExplicitTop = 27
        ExplicitWidth = 816
        ExplicitHeight = 186
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 816
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitTop = 137
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 71
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitTop = 1
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 65
              Height = 15
              Align = alTop
              Caption = 'Registro'
              FocusControl = DBEdit1
              ExplicitTop = 5
              ExplicitWidth = 43
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 65
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'recno'
              DataSource = LabCrit.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitLeft = 4
              ExplicitTop = 27
              ExplicitWidth = 43
            end
          end
          object Panel5: TPanel
            Left = 71
            Top = 0
            Width = 553
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitLeft = 74
            ExplicitTop = 1
            ExplicitWidth = 71
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 547
              Height = 15
              Align = alTop
              Caption = 'Criticidade'
              FocusControl = DBEdit2
              ExplicitLeft = 14
              ExplicitTop = 9
              ExplicitWidth = 57
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 547
              Height = 23
              Align = alTop
              DataField = 'descri'
              DataSource = LabCrit.DataSource1
              TabOrder = 0
              ExplicitLeft = -323
              ExplicitTop = 26
              ExplicitWidth = 394
            end
          end
          object Panel6: TPanel
            Left = 624
            Top = 0
            Width = 96
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitLeft = 723
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 90
              Height = 15
              Align = alTop
              Caption = 'Nivel'
              FocusControl = DBEdit2
              ExplicitLeft = 44
              ExplicitTop = 9
              ExplicitWidth = 27
            end
            object JvDBComboBox1: TJvDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 90
              Height = 23
              Align = alClient
              DataField = 'nivel'
              DataSource = LabCrit.DataSource1
              Items.Strings = (
                'Normal'
                'Aten'#231#227'o'
                'Cr'#237'tico')
              TabOrder = 0
              Values.Strings = (
                '1'
                '2'
                '3')
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
              ExplicitLeft = 24
              ExplicitTop = 32
              ExplicitWidth = 145
            end
          end
          object Panel7: TPanel
            Left = 720
            Top = 0
            Width = 96
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            ExplicitLeft = 752
            object DBCheckBox1: TDBCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 23
              Width = 90
              Height = 24
              Margins.Top = 23
              Align = alClient
              Caption = 'Exige Revis'#227'o'
              DataField = 'exige_revisao'
              DataSource = LabCrit.DataSource1
              ReadOnly = True
              TabOrder = 0
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              ExplicitLeft = 16
              ExplicitTop = 24
              ExplicitWidth = 97
              ExplicitHeight = 17
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 824
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
  end
end
