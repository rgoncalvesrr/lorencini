inherited EntidadesDeClasseM: TEntidadesDeClasseM
  Caption = 'Manuten'#231#227'o de Entidades de Classe'
  ClientHeight = 140
  ClientWidth = 884
  ExplicitWidth = 890
  ExplicitHeight = 169
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 884
    Height = 96
    inherited Panel3: TPanel
      Top = 206
      Align = alNone
      inherited PageControl3: TPageControl
        Top = 47
        Height = 185
        inherited tsDet: TTabSheet
          inherited DBGrid1: TDBGrid
            Width = 625
            Height = 155
          end
        end
      end
      inherited ControlBar2: TControlBar
        Height = 38
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 633
        ExplicitHeight = 38
        inherited ToolBar3: TToolBar
          ButtonWidth = 129
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
      Width = 878
      Height = 90
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 633
      ExplicitHeight = 189
      inherited TabSheet1: TTabSheet
        Caption = 'Entidade de Classe'
        ExplicitLeft = 4
        ExplicitTop = 27
        ExplicitWidth = 625
        ExplicitHeight = 159
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 870
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
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
              Caption = 'Sigla'
              FocusControl = DBEdit1
              ExplicitLeft = 24
              ExplicitTop = 24
              ExplicitWidth = 25
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 65
              Height = 23
              Align = alClient
              CharCase = ecUpperCase
              DataField = 'sigla'
              DataSource = EntidadesDeClasse.DataSource1
              TabOrder = 0
            end
          end
          object Panel5: TPanel
            Left = 71
            Top = 0
            Width = 799
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitLeft = 77
            ExplicitWidth = 71
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 793
              Height = 15
              Align = alTop
              Caption = 'Entidade de Classe'
              FocusControl = DBEdit2
              ExplicitLeft = 48
              ExplicitTop = 32
              ExplicitWidth = 98
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 793
              Height = 23
              Align = alClient
              DataField = 'descri'
              DataSource = EntidadesDeClasse.DataSource1
              TabOrder = 0
              ExplicitLeft = 40
              ExplicitTop = 48
              ExplicitWidth = 904
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 878
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 633
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      ButtonWidth = 115
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
