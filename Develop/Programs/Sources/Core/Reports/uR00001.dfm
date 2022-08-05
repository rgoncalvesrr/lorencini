inherited R00001: TR00001
  Caption = 'R00001'
  ClientHeight = 175
  ClientWidth = 311
  ExplicitWidth = 317
  ExplicitHeight = 204
  PixelsPerInch = 96
  TextHeight = 15
  object Label3: TLabel [0]
    Left = 9
    Top = 129
    Width = 43
    Height = 15
    Caption = 'Emiss'#227'o'
  end
  object Label4: TLabel [1]
    Left = 69
    Top = 150
    Width = 128
    Height = 15
    Caption = '01/11/2015 a 30/11/2015'
  end
  inherited bvDiv: TBevel
    Width = 311
    ExplicitWidth = 311
  end
  inherited ToolBar1: TToolBar
    Width = 311
    ButtonWidth = 89
    DisabledImages = Resources.medium_d
    HotImages = Resources.medium_h
    Images = Resources.medium_n
    ExplicitTop = 75
    ExplicitWidth = 311
    inherited ToolButton1: TToolButton
      ExplicitWidth = 89
    end
    inherited ToolButton2: TToolButton
      Left = 89
      ExplicitLeft = 89
      ExplicitWidth = 89
    end
  end
  inline FrameData1: TFrameData [4]
    Left = 69
    Top = 120
    Width = 218
    Height = 25
    TabOrder = 2
    ExplicitLeft = 69
    ExplicitTop = 120
    ExplicitWidth = 218
    ExplicitHeight = 25
    inherited ComboBox1: TComboBox
      Width = 215
      Height = 23
      ItemHeight = 15
      ItemIndex = 9
      Text = #218'ltimo m'#234's'
      ExplicitWidth = 215
      ExplicitHeight = 23
    end
    inherited CCalendarDiff1: TCCalendarDiff
      Interval = diLastMonth
      Date = 42347.755475104170000000
      DisplayInterval = Label4
    end
  end
  inherited Panel1: TPanel [5]
    Width = 311
    ExplicitWidth = 311
    inherited Shape1: TShape
      Width = 311
      ExplicitWidth = 306
    end
  end
  inherited alDef: TActionList
    Images = Resources.medium_n
    Left = 216
  end
end
