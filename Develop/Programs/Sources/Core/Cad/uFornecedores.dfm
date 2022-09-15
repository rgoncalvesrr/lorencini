inherited Fornecedores: TFornecedores
  Caption = 'Fornecedores'
  ClientHeight = 557
  Constraints.MinWidth = 853
  ExplicitHeight = 596
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 533
    ExplicitTop = 533
  end
  inherited Panel2: TPanel
    Height = 414
    ExplicitHeight = 414
    inherited PageControl1: TPageControl
      Height = 408
      ExplicitHeight = 408
      inherited TabSheet1: TTabSheet
        Caption = 'Fornecedores'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 823
        ExplicitHeight = 378
        inherited DBGrid1: TDBGrid
          Height = 378
          DataSource = DM.dsForn
        end
      end
    end
  end
  inherited alDef: TActionList
    Left = 272
  end
end
