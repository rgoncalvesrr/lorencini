inherited R00014: TR00014
  Caption = 'Emiss'#227'o de Laudos'
  ClientHeight = 223
  ClientWidth = 468
  ExplicitWidth = 474
  ExplicitHeight = 252
  PixelsPerInch = 96
  TextHeight = 15
  inherited bvDiv: TBevel
    Width = 468
    ExplicitWidth = 468
  end
  object Label18: TLabel [1]
    Left = 9
    Top = 120
    Width = 37
    Height = 15
    Caption = 'Cliente'
    Transparent = True
  end
  object Label3: TLabel [2]
    Left = 287
    Top = 120
    Width = 41
    Height = 15
    Caption = 'Per'#237'odo'
    Transparent = True
  end
  object Label4: TLabel [3]
    Left = 332
    Top = 120
    Width = 128
    Height = 15
    Caption = '01/04/2016 a 30/06/2016'
    Transparent = True
  end
  inherited ToolBar1: TToolBar
    Width = 468
    ExplicitWidth = 468
  end
  inherited Panel1: TPanel
    Width = 468
    ExplicitWidth = 468
    inherited Shape1: TShape
      Width = 414
      ExplicitWidth = 464
    end
    inherited Image1: TImage
      Height = 64
      ExplicitHeight = 64
    end
    inherited pnTitle: TPanel
      Width = 414
      ExplicitLeft = 54
      ExplicitTop = 0
      ExplicitWidth = 414
      ExplicitHeight = 70
      inherited Label1: TLabel
        Width = 408
      end
      inherited Label2: TLabel
        Left = 10
        Top = 34
        Width = 401
        Height = 33
        ExplicitLeft = 10
        ExplicitTop = 34
      end
    end
  end
  object ComboBox1: TComboBox [6]
    Left = 9
    Top = 139
    Width = 275
    Height = 23
    DropDownCount = 30
    ItemHeight = 15
    TabOrder = 2
    OnChange = ComboBox1Change
    Items.Strings = (
      '<TODOS>'
      'JANEIRO'
      'FEVEREIRO'
      'MAR'#199'O'
      'ABRIL'
      'MAIO'
      'JUNHO'
      'JULHO'
      'AGOSTO'
      'SETEMBRO'
      'OUTUBRO'
      'NOVEMBRO'
      'DEZEMBRO')
  end
  inline FrameData1: TFrameData [7]
    Left = 287
    Top = 139
    Width = 156
    Height = 24
    TabOrder = 3
    ExplicitLeft = 287
    ExplicitTop = 139
    ExplicitWidth = 156
    ExplicitHeight = 24
    inherited ComboBox1: TComboBox
      Width = 155
      Height = 23
      ItemHeight = 15
      ItemIndex = 2
      Text = 'Trimestralmente'
      ExplicitWidth = 155
      ExplicitHeight = 23
    end
    inherited CCalendarDiff1: TCCalendarDiff
      Interval = diQuarterly
      Date = 42513.642134710650000000
      DisplayInterval = Label4
      OnChange = FrameData1CCalendarDiff1Change
    end
  end
  object CheckBox1: TCheckBox
    Left = 9
    Top = 171
    Width = 113
    Height = 19
    Caption = 'Ordem de Servi'#231'o'
    Enabled = False
    TabOrder = 4
    OnClick = CheckBox1Click
  end
  object ComboBox2: TComboBox
    Left = 9
    Top = 191
    Width = 113
    Height = 23
    Style = csDropDownList
    Enabled = False
    ItemHeight = 15
    TabOrder = 5
    OnChange = ComboBox2Change
  end
  object CheckBox2: TCheckBox
    Left = 129
    Top = 171
    Width = 61
    Height = 19
    Caption = 'Etiqueta'
    Enabled = False
    TabOrder = 6
    OnClick = CheckBox2Click
  end
  object ComboBox3: TComboBox
    Left = 129
    Top = 191
    Width = 113
    Height = 23
    Style = csDropDownList
    Enabled = False
    ItemHeight = 15
    TabOrder = 7
    OnChange = ComboBox3Change
  end
  object CheckBox3: TCheckBox
    Left = 249
    Top = 171
    Width = 95
    Height = 19
    Caption = 'Tipo de Laudo'
    Enabled = False
    TabOrder = 8
    OnClick = CheckBox3Click
  end
  object ComboBox4: TComboBox
    Left = 249
    Top = 191
    Width = 210
    Height = 23
    Style = csDropDownList
    Enabled = False
    ItemHeight = 15
    TabOrder = 9
    OnChange = ComboBox4Change
  end
  inherited alDef: TActionList
    Images = Resources.medium_n
  end
  object qOS: TZQuery
    Connection = DM.Design
    AfterRefresh = qOSAfterRefresh
    AfterScroll = qOSAfterScroll
    SQL.Strings = (
      'select o.idos, o.os'
      '  from tb_orcamentos o'
      '       join ('
      '          select os'
      '            from labamostras a'
      '                 join labamostras_rel r'
      '                   on r.amostra_recno = a.recno'
      
        '                  and r.emissao between :emissao_de and :emissao' +
        '_ate'
      '           where a.codigo = :cliente'
      '           group by os ) oo'
      '         on oo.os = o.os'
      '      order by os desc')
    Params = <
      item
        DataType = ftUnknown
        Name = 'emissao_de'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emissao_ate'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end>
    Left = 248
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emissao_de'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emissao_ate'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end>
    object qOSidos: TStringField
      FieldName = 'idos'
      Required = True
      Size = 10
    end
    object qOSos: TIntegerField
      FieldName = 'os'
      Required = True
    end
  end
  object qEtiq: TZQuery
    Connection = DM.Design
    AfterScroll = qEtiqAfterScroll
    SQL.Strings = (
      'select a.comodato_recno '
      '  from labamostras a'
      '       join labamostras_rel r'
      '         on r.amostra_recno = a.recno'
      '        and r.emissao between :emissao_de and :emissao_ate'
      ' where a.codigo = :cliente'
      '   and a.os = :os'
      ' group by comodato_recno')
    Params = <
      item
        DataType = ftUnknown
        Name = 'emissao_de'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emissao_ate'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'os'
        ParamType = ptUnknown
      end>
    Left = 216
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emissao_de'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emissao_ate'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'os'
        ParamType = ptUnknown
      end>
    object qEtiqcomodato_recno: TIntegerField
      FieldName = 'comodato_recno'
      Required = True
    end
  end
  object qTLaudo: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      'select a.comodato_recno '
      '  from labamostras a'
      '       join labamostras_rel r'
      '         on r.amostra_recno = a.recno'
      '        and r.emissao between :emissao_de and :emissao_ate'
      ' where a.codigo = :cliente'
      '   and a.os = :os'
      ' group by comodato_recno')
    Params = <
      item
        DataType = ftUnknown
        Name = 'emissao_de'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emissao_ate'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'os'
        ParamType = ptUnknown
      end>
    Left = 184
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emissao_de'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emissao_ate'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'os'
        ParamType = ptUnknown
      end>
  end
end
