inherited ProdutosGrupoM: TProdutosGrupoM
  Caption = 'Manuten'#231#227'o de Grupos'
  ClientHeight = 401
  ExplicitHeight = 430
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Height = 357
    ExplicitHeight = 357
    inherited Panel3: TPanel
      Top = 98
      Height = 259
      ExplicitTop = 98
      ExplicitHeight = 259
      inherited PageControl3: TPageControl
        Height = 209
        ExplicitHeight = 209
        inherited tsDet: TTabSheet
          Caption = 'Subgrupos'
          ExplicitHeight = 179
          inherited DBGrid1: TDBGrid
            Height = 179
            DataSource = DM.dsSGrupos
          end
        end
      end
      inherited ControlBar2: TControlBar
        inherited ToolBar3: TToolBar
          Width = 586
          ExplicitWidth = 586
        end
      end
    end
    inherited PageControl1: TPageControl
      Height = 92
      ExplicitHeight = 92
      inherited TabSheet1: TTabSheet
        Caption = 'Grupos de Produtos'
        ExplicitHeight = 62
        object Label1: TLabel
          Left = 3
          Top = 9
          Width = 33
          Height = 15
          Caption = 'Grupo'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 85
          Top = 4
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit2
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 26
          Width = 75
          Height = 23
          DataField = 'codigo'
          DataSource = DM.dsGrupos
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 85
          Top = 26
          Width = 411
          Height = 23
          DataField = 'descricao'
          DataSource = DM.dsGrupos
          TabOrder = 1
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    inherited ToolBar1: TToolBar
      Width = 596
      ExplicitWidth = 596
    end
  end
  inherited alDef: TActionList
    Left = 192
  end
end
