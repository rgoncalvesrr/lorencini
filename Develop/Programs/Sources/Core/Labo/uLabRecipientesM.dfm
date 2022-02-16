inherited LabRecipientesM: TLabRecipientesM
  Caption = 'Manuten'#231#227'o de Tipo de Recipiente'
  ClientHeight = 132
  ExplicitHeight = 161
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Height = 88
    inherited Panel3: TPanel
      Align = alNone
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
      Height = 82
      inherited TabSheet1: TTabSheet
        Caption = 'Tipo de Recipiente'
        ExplicitLeft = 6
        ExplicitTop = 27
        ExplicitWidth = 625
        ExplicitHeight = 159
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 625
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitTop = -1
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 71
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 65
              Height = 15
              Align = alTop
              Caption = 'Tipo'
              FocusControl = DBEdit1
              ExplicitLeft = 24
              ExplicitTop = 16
              ExplicitWidth = 23
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 65
              Height = 23
              Align = alClient
              DataField = 'recno'
              DataSource = LabRecipientes.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitLeft = -6
              ExplicitWidth = 111
              ExplicitHeight = 29
            end
          end
          object Panel5: TPanel
            Left = 71
            Top = 0
            Width = 554
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitLeft = 168
            ExplicitTop = -8
            ExplicitWidth = 111
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 548
              Height = 15
              Align = alTop
              Caption = 'Recipiente'
              FocusControl = DBEdit2
              ExplicitLeft = 32
              ExplicitTop = 24
              ExplicitWidth = 55
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 548
              Height = 23
              Align = alClient
              DataField = 'descri'
              DataSource = LabRecipientes.DataSource1
              TabOrder = 0
              ExplicitLeft = 32
              ExplicitTop = 40
              ExplicitWidth = 904
            end
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
end
