inherited GestaoComercial: TGestaoComercial
  Caption = 'Gest'#227'o Comercial'
  ClientHeight = 826
  ClientWidth = 1344
  ExplicitWidth = 1360
  ExplicitHeight = 865
  PixelsPerInch = 96
  TextHeight = 15
  object pnStage: TPanel [0]
    Left = 0
    Top = 0
    Width = 1344
    Height = 826
    Align = alClient
    TabOrder = 0
    object pnEvoRow1: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 1336
      Height = 286
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object pnEvoRow1Left: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 27
        Width = 654
        Height = 256
        Align = alLeft
        TabOrder = 0
        ExplicitTop = 30
      end
      object pnEvoRow1Right: TPanel
        AlignWithMargins = True
        Left = 663
        Top = 27
        Width = 670
        Height = 256
        Align = alClient
        TabOrder = 1
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1336
        Height = 24
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Cota'#231#245'es'
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 2
      end
    end
    object pnEvoRow3: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 296
      Width = 1336
      Height = 526
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object pnEvoRow3Left: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 654
        Height = 520
        Align = alLeft
        TabOrder = 0
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 652
          Height = 24
          Align = alTop
          BevelOuter = bvNone
          Caption = 'Produ'#231#227'o'
          Color = clSkyBlue
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 183
        end
      end
      object pnEvoRow3Rigth: TPanel
        AlignWithMargins = True
        Left = 663
        Top = 3
        Width = 670
        Height = 520
        Align = alClient
        TabOrder = 1
        ExplicitLeft = 194
        ExplicitWidth = 1139
        object Panel2: TPanel
          Left = 1
          Top = 1
          Width = 668
          Height = 24
          Align = alTop
          BevelOuter = bvNone
          Caption = 'Financeiro'
          Color = clSkyBlue
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 1137
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
