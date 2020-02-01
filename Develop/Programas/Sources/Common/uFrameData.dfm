object FrameData: TFrameData
  Left = 0
  Top = 0
  Width = 145
  Height = 22
  TabOrder = 0
  object ComboBox1: TComboBox
    Left = 0
    Top = 0
    Width = 145
    Height = 21
    Align = alClient
    Style = csDropDownList
    DropDownCount = 16
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 0
    Text = 'Todas as Datas'
    OnChange = ComboBox1Change
    Items.Strings = (
      'Todas as Datas'
      'Mensalmente'
      'Trimestralmente'
      'Semestralmente'
      'Anualmente '
      'Mensalmente at'#233' hoje'
      'Trimestralmente at'#233' hoje'
      'Semestralmente at'#233' hoje'
      'Anualmente at'#233' hoje'
      #218'ltimo m'#234's'
      #218'timo trimestre'
      #218'timo semestre'
      #218'timo ano'
      #218'timos 30 dias'
      #218'ltimos 12 meses'
      'Datas selecionadas...')
  end
  object CCalendarDiff1: TCCalendarDiff
    Interval = diNone
    Date = 42653.686031238420000000
    DateInput = diAuto
    Left = 112
    Top = 65535
  end
end
