inherited GestaoComercial: TGestaoComercial
  Caption = 'Gest'#227'o Comercial'
  ClientHeight = 826
  ClientWidth = 1344
  ExplicitWidth = 1360
  ExplicitHeight = 865
  PixelsPerInch = 96
  TextHeight = 15
  object PageControl1: TPageControl [0]
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1338
    Height = 820
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    OnChange = PageControl1Change
    ExplicitLeft = 8
    ExplicitTop = -2
    object TabSheet1: TTabSheet
      Caption = 'Resumo'
      object pnStage: TPanel
        Left = 0
        Top = 0
        Width = 1330
        Height = 790
        Align = alClient
        TabOrder = 0
        object pnEvoRow1: TPanel
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 1322
          Height = 286
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object pnEvoRow1Left: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 654
            Height = 280
            Align = alLeft
            TabOrder = 0
            ExplicitTop = 6
          end
          object pnEvoRow1Right: TPanel
            AlignWithMargins = True
            Left = 663
            Top = 3
            Width = 656
            Height = 280
            Align = alClient
            TabOrder = 1
            ExplicitTop = 6
          end
        end
        object pnEvoRow3: TPanel
          AlignWithMargins = True
          Left = 4
          Top = 296
          Width = 1322
          Height = 490
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object pnEvoRow3Left: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 654
            Height = 484
            Align = alLeft
            TabOrder = 0
            ExplicitTop = 0
          end
          object pnEvoRow3Rigth: TPanel
            AlignWithMargins = True
            Left = 663
            Top = 3
            Width = 656
            Height = 484
            Align = alClient
            TabOrder = 1
            ExplicitTop = 0
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Faturamento'
      ImageIndex = 1
      object pnStage1: TPanel
        Left = 0
        Top = 0
        Width = 1330
        Height = 790
        Align = alClient
        TabOrder = 0
        object pnEvoMonth1: TPanel
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 1322
          Height = 286
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object pnEvoMonth1Col1: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 903
            Height = 280
            Align = alClient
            TabOrder = 0
            ExplicitTop = 6
          end
          object pnEvoMonth1Col2: TPanel
            AlignWithMargins = True
            Left = 912
            Top = 3
            Width = 407
            Height = 280
            Align = alRight
            TabOrder = 1
            ExplicitTop = 6
          end
        end
        object pnEvoMonth2: TPanel
          AlignWithMargins = True
          Left = 4
          Top = 296
          Width = 1322
          Height = 490
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object pnEvoMonth2Col1: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 654
            Height = 484
            Align = alLeft
            TabOrder = 0
            ExplicitTop = 0
          end
          object pnEvoMonth2Col2: TPanel
            AlignWithMargins = True
            Left = 663
            Top = 3
            Width = 656
            Height = 484
            Align = alClient
            TabOrder = 1
            ExplicitTop = 0
          end
        end
      end
    end
  end
  inherited alDef: TActionList
    Images = Resources.small_n
    Left = 1000
    Top = 0
  end
end
