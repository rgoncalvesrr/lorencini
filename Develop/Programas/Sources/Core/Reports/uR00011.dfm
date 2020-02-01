inherited R00011: TR00011
  Caption = 'Controle de Remessa / Retorno'
  ClientHeight = 160
  ClientWidth = 338
  ExplicitWidth = 344
  ExplicitHeight = 189
  PixelsPerInch = 96
  TextHeight = 15
  inherited bvDiv: TBevel
    Width = 338
    ExplicitWidth = 338
  end
  object Label3: TLabel [1]
    Left = 9
    Top = 126
    Width = 81
    Height = 15
    Caption = 'Processo Inicial'
  end
  object Label4: TLabel [2]
    Left = 182
    Top = 126
    Width = 75
    Height = 15
    Caption = 'Processo Final'
  end
  inherited ToolBar1: TToolBar
    Width = 338
    ButtonWidth = 89
    DisabledImages = Resources.medium_d
    HotImages = Resources.medium_h
    Images = Resources.medium_n
    ExplicitTop = 75
    ExplicitWidth = 338
    inherited ToolButton1: TToolButton
      ExplicitWidth = 89
    end
    inherited ToolButton2: TToolButton
      Left = 89
      ExplicitLeft = 89
      ExplicitWidth = 89
    end
  end
  inherited Panel1: TPanel
    Width = 338
    ExplicitWidth = 338
    inherited Shape1: TShape
      Width = 338
      ExplicitWidth = 333
    end
  end
  object procDe: TJvCalcEdit [5]
    Left = 95
    Top = 118
    Width = 69
    Height = 23
    ButtonFlat = True
    DecimalPlaces = 0
    DisplayFormat = '0'
    ButtonWidth = 23
    ShowButton = False
    TabOrder = 2
    DecimalPlacesAlwaysShown = False
  end
  object procAte: TJvCalcEdit [6]
    Left = 260
    Top = 118
    Width = 69
    Height = 23
    ButtonFlat = True
    DecimalPlaces = 0
    DisplayFormat = '0'
    ButtonWidth = 23
    ShowButton = False
    TabOrder = 3
    DecimalPlacesAlwaysShown = False
  end
  inherited alDef: TActionList
    Images = Resources.medium_n
  end
end
