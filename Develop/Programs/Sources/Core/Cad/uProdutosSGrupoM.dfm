inherited ProdutosSGrupoM: TProdutosSGrupoM
  Caption = 'Subgrupo de Produtos'
  ClientHeight = 138
  ClientWidth = 509
  ExplicitWidth = 515
  ExplicitHeight = 167
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 509
    Height = 94
    ExplicitHeight = 94
    inherited Panel3: TPanel
      Align = alNone
    end
    inherited PageControl1: TPageControl
      Width = 503
      Height = 88
      ExplicitHeight = 88
      inherited TabSheet1: TTabSheet
        Caption = 'Subgrupos'
        ExplicitHeight = 58
        object Label1: TLabel
          Left = 3
          Top = 4
          Width = 52
          Height = 15
          Caption = 'Subgrupo'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 63
          Top = 4
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit2
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 21
          Width = 51
          Height = 23
          DataField = 'id_codigo'
          DataSource = DM.dsSGrupos
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 63
          Top = 21
          Width = 427
          Height = 23
          DataField = 'descricao'
          DataSource = DM.dsSGrupos
          TabOrder = 1
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 503
    inherited ToolBar1: TToolBar
      Width = 490
      ExplicitWidth = 490
    end
  end
  inherited alDef: TActionList
    Left = 208
  end
end
