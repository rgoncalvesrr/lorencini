inherited ProdutosGrupo: TProdutosGrupo
  Caption = 'Cadastro de Grupos'
  ClientHeight = 318
  Constraints.MinWidth = 853
  ExplicitHeight = 357
  PixelsPerInch = 96
  TextHeight = 15
  inherited ToolBar1: TToolBar
    ExplicitWidth = 831
  end
  inherited StatusBar1: TStatusBar
    Top = 294
    ExplicitTop = 294
  end
  inherited Panel1: TPanel
    inherited pctlFind: TPageControl
      inherited tsQuery: TTabSheet
        ExplicitWidth = 819
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 819
        ExplicitHeight = 65
      end
    end
  end
  inherited Panel2: TPanel
    Height = 175
    ExplicitLeft = 0
    ExplicitTop = 119
    ExplicitWidth = 837
    ExplicitHeight = 175
    inherited PageControl1: TPageControl
      Height = 169
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 831
      ExplicitHeight = 169
      inherited TabSheet1: TTabSheet
        Caption = 'Grupos'
        ExplicitWidth = 823
        ExplicitHeight = 139
        inherited DBGrid1: TDBGrid
          Height = 139
          DataSource = DM.dsGrupos
        end
      end
    end
  end
  inherited DataSource1: TDataSource
    DataSet = DM.qGrupos
  end
end
