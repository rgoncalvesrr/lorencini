inherited Servicos_GrupoM: TServicos_GrupoM
  Caption = 'Categoria de Servi'#231'os / Despesas'
  ClientHeight = 139
  ClientWidth = 618
  ExplicitWidth = 624
  ExplicitHeight = 167
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 618
    Height = 95
    ExplicitTop = 35
    ExplicitWidth = 618
    ExplicitHeight = 105
    inherited Panel3: TPanel
      Top = -198
      Width = 511
      Align = alNone
      ExplicitTop = -198
      ExplicitWidth = 511
      inherited PageControl3: TPageControl
        Top = 47
        Width = 505
        Height = 185
        ExplicitLeft = 3
        ExplicitTop = 38
        ExplicitWidth = 505
        ExplicitHeight = 194
        inherited tsDet: TTabSheet
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 497
          ExplicitHeight = 164
          inherited DBGrid1: TDBGrid
            Width = 497
            Height = 155
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 505
        Height = 38
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 505
        ExplicitHeight = 38
        inherited ToolBar3: TToolBar
          Width = 492
          ButtonWidth = 129
          ExplicitWidth = 492
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
      Width = 612
      Height = 89
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 612
      ExplicitHeight = 99
      inherited TabSheet1: TTabSheet
        Caption = 'Categoria'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 604
        ExplicitHeight = 69
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 604
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 306
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitLeft = 7
            ExplicitWidth = 254
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 300
              Height = 15
              Align = alTop
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit1
              ExplicitTop = 5
              ExplicitWidth = 51
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 300
              Height = 23
              Align = alClient
              DataField = 'descri'
              DataSource = Servicos_Grupo.DataSource1
              TabOrder = 0
              ExplicitLeft = -200
              ExplicitTop = 23
              ExplicitWidth = 454
            end
          end
          object Panel5: TPanel
            Left = 306
            Top = 0
            Width = 150
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitLeft = 279
            object DBCheckBox1: TDBCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 144
              Height = 23
              Margins.Top = 24
              Align = alClient
              Caption = 'Dispon'#237'vel em Pedidos'
              DataField = 'pedidos'
              DataSource = Servicos_Grupo.DataSource1
              TabOrder = 0
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              ExplicitWidth = 169
            end
          end
          object Panel6: TPanel
            Left = 456
            Top = 0
            Width = 148
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object DBCheckBox2: TDBCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 142
              Height = 23
              Margins.Top = 24
              Align = alClient
              Caption = 'Servi'#231'os de Laborat'#243'rio'
              DataField = 'laboratorio'
              DataSource = Servicos_Grupo.DataSource1
              TabOrder = 0
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              ExplicitWidth = 169
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 612
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 612
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      Width = 599
      ButtonWidth = 115
      ExplicitWidth = 599
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
