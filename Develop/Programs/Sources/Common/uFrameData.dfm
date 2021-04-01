object FrameData: TFrameData
  Left = 0
  Top = 0
  Width = 145
  Height = 23
  AutoSize = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object ComboBox1: TComboBox
    Left = 0
    Top = 0
    Width = 145
    Height = 23
    Align = alClient
    Style = csDropDownList
    DropDownCount = 16
    ItemHeight = 15
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
    Date = 44264.948305972220000000
    DateInput = diAuto
    Left = 112
    Top = 65535
  end
end
