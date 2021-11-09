inherited LabLaudoUI: TLabLaudoUI
  Caption = 'LabLaudoUI'
  ClientHeight = 394
  ClientWidth = 628
  ExplicitWidth = 644
  ExplicitHeight = 433
  PixelsPerInch = 96
  TextHeight = 15
  inherited sGrid: TJvStringGrid
    Width = 622
    Height = 388
    OnDblClick = sGridDblClick
    OnKeyPress = sGridKeyPress
    ExplicitWidth = 622
    ExplicitHeight = 388
  end
  object jvCalc: TJvCalcEdit [1]
    Left = 258
    Top = 212
    Width = 93
    Height = 23
    Flat = False
    ParentFlat = False
    CheckOnExit = True
    DecimalPlaces = 4
    DisplayFormat = ',0.0000'
    ButtonWidth = 23
    TabOrder = 1
    Visible = False
    DecimalPlacesAlwaysShown = True
    OnExit = cbInstExit
    OnKeyPress = cbInstKeyPress
  end
  object cbInst: TComboBox [2]
    Left = 258
    Top = 166
    Width = 167
    Height = 23
    Style = csDropDownList
    ItemHeight = 15
    TabOrder = 2
    Visible = False
    OnChange = cbInstChange
    OnExit = cbInstExit
    OnKeyPress = cbInstKeyPress
  end
end
