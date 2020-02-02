inherited Produtos: TProdutos
  Caption = 'Cadastro de Produtos'
  Constraints.MinWidth = 853
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    ExplicitTop = 44
    inherited pctlFind: TPageControl
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 819
        ExplicitHeight = 65
      end
    end
  end
  inherited Panel2: TPanel
    ExplicitTop = 119
    ExplicitHeight = 193
    inherited PageControl1: TPageControl
      ExplicitHeight = 187
      inherited TabSheet1: TTabSheet
        Caption = 'Materiais'
        ExplicitHeight = 157
        inherited DBGrid1: TDBGrid
          DataSource = DM.dsProdutos
        end
      end
    end
  end
  inherited DataSource1: TDataSource
    DataSet = nil
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    Left = 152
  end
  inherited zIBrwSrc: TZUpdateSQL
    Left = 104
  end
end
