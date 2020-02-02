inherited LabLaudoUI: TLabLaudoUI
  Caption = 'LabLaudoUI'
  ClientHeight = 525
  ClientWidth = 837
  ExplicitWidth = 855
  ExplicitHeight = 572
  PixelsPerInch = 120
  TextHeight = 20
  inherited sGrid: TJvStringGrid
    Width = 831
    Height = 519
    OnDblClick = sGridDblClick
    OnKeyPress = sGridKeyPress
    ExplicitLeft = -2
    ExplicitTop = -2
    ExplicitWidth = 831
    ExplicitHeight = 519
  end
  object jvCalc: TJvCalcEdit [1]
    Left = 344
    Top = 283
    Width = 124
    Height = 28
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
    Left = 344
    Top = 221
    Width = 223
    Height = 28
    Style = csDropDownList
    ItemHeight = 20
    TabOrder = 2
    Visible = False
    OnChange = cbInstChange
    OnExit = cbInstExit
    OnKeyPress = cbInstKeyPress
  end
end
