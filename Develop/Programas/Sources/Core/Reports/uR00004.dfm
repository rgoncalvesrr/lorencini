inherited R00004: TR00004
  Caption = 'R00004'
  ClientHeight = 183
  ClientWidth = 309
  ExplicitWidth = 315
  ExplicitHeight = 212
  PixelsPerInch = 96
  TextHeight = 15
  inherited bvDiv: TBevel
    Width = 309
    ExplicitWidth = 309
  end
  object Label3: TLabel [1]
    Left = 8
    Top = 134
    Width = 27
    Height = 15
    Caption = 'Baixa'
  end
  object Label4: TLabel [2]
    Left = 68
    Top = 156
    Width = 128
    Height = 15
    Caption = '01/12/2015 a 31/12/2015'
  end
  inherited ToolBar1: TToolBar
    Width = 309
    ButtonWidth = 89
    DisabledImages = Resources.medium_d
    HotImages = Resources.medium_h
    Images = Resources.medium_n
    ExplicitTop = 75
    ExplicitWidth = 309
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
    Width = 309
    ExplicitWidth = 309
    inherited Shape1: TShape
      Width = 309
      ExplicitWidth = 305
      ExplicitHeight = 65
    end
  end
  inline FrameData1: TFrameData [5]
    Left = 68
    Top = 126
    Width = 233
    Height = 24
    TabOrder = 2
    ExplicitLeft = 68
    ExplicitTop = 126
    ExplicitWidth = 233
    ExplicitHeight = 24
    inherited ComboBox1: TComboBox
      Width = 233
      Height = 23
      ItemHeight = 15
      ItemIndex = 1
      Text = 'Mensalmente'
      ExplicitWidth = 233
      ExplicitHeight = 23
    end
    inherited CCalendarDiff1: TCCalendarDiff
      Interval = diMonthly
      Date = 42347.756145034720000000
      DisplayInterval = Label4
    end
  end
  inherited alDef: TActionList
    Images = Resources.medium_n
    Left = 200
    Top = 56
  end
end
