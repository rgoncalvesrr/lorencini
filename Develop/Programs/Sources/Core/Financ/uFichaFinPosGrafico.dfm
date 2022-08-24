inherited FichaFinPosGrafico: TFichaFinPosGrafico
  Caption = 'Mapa da Inadimpl'#234'ncia'
  ClientHeight = 421
  ClientWidth = 962
  OnResize = FormResize
  ExplicitWidth = 978
  ExplicitHeight = 460
  PixelsPerInch = 96
  TextHeight = 15
  object Splitter1: TSplitter [0]
    Left = 521
    Top = 0
    Width = 6
    Height = 421
    ExplicitLeft = 611
    ExplicitTop = 25
    ExplicitHeight = 419
  end
  object DBChart1: TDBChart [1]
    Left = 0
    Top = 0
    Width = 521
    Height = 421
    Title.Text.Strings = (
      'Evolu'#231#227'o da Inadimpl'#234'ncia (Anual)')
    Chart3DPercent = 30
    LeftAxis.AxisValuesFormat = '#,##0.#0'
    LeftAxis.Title.Caption = 'Inadimpl'#234'ncia'
    Legend.Visible = False
    Shadow.Transparency = 70
    View3DOptions.Perspective = 24
    Zoom.Animated = True
    Align = alLeft
    TabOrder = 0
    object Series1: TBarSeries
      BarPen.Visible = False
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.ArrowHead = ahSolid
      Marks.Gradient.Direction = gdTopBottom
      Marks.Gradient.EndColor = clGray
      Marks.Gradient.MidColor = clWhite
      Marks.Gradient.Visible = True
      Marks.ShapeStyle = fosRoundRectangle
      Marks.Style = smsValue
      Marks.Visible = True
      DataSource = qAno
      Title = 'Evolu'#231#227'o Anual'
      ValueFormat = '#,##0.#0'
      XLabelsSource = 'ano'
      BarStyle = bsCilinder
      Gradient.Direction = gdTopBottom
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'ano'
      YValues.Name = 'Bar'
      YValues.Order = loNone
      YValues.ValueSource = 'saldo'
    end
  end
  object Panel1: TPanel [2]
    Left = 527
    Top = 0
    Width = 435
    Height = 421
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = 696
    ExplicitTop = 296
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Panel2: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 429
      Height = 28
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 221
      object Label1: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 25
        Height = 22
        Align = alLeft
        Caption = 'Ano:'
        Layout = tlCenter
        ExplicitHeight = 15
      end
      object ComboBox1: TComboBox
        AlignWithMargins = True
        Left = 34
        Top = 3
        Width = 145
        Height = 23
        Align = alLeft
        Style = csDropDownList
        ItemHeight = 15
        TabOrder = 0
        OnChange = ComboBox1Change
      end
    end
    object DBChart2: TDBChart
      Left = 0
      Top = 34
      Width = 435
      Height = 387
      Title.Text.Strings = (
        'Evolu'#231#227'o da Inadimpl'#234'ncia (Anual)')
      LeftAxis.AxisValuesFormat = '.#,0'
      LeftAxis.Title.Caption = 'Inadimpl'#234'ncia'
      Legend.CheckBoxesStyle = cbsRadio
      Legend.Shadow.Transparency = 50
      Legend.TextStyle = ltsRightValue
      Legend.Visible = False
      Zoom.Animated = True
      Align = alClient
      TabOrder = 1
      AutoSize = True
      ExplicitLeft = -300
      ExplicitWidth = 521
      object Mensal: TBarSeries
        BarPen.Visible = False
        Marks.Callout.Brush.Color = clBlack
        Marks.Callout.ArrowHead = ahSolid
        Marks.Callout.Length = 8
        Marks.Gradient.Direction = gdTopBottom
        Marks.Gradient.Visible = True
        Marks.ShapeStyle = fosRoundRectangle
        Marks.Style = smsValue
        Marks.Visible = True
        DataSource = qMes
        PercentFormat = '##0.#0 %'
        SeriesColor = 33023
        Title = 'Evolu'#231#227'o Mensal'
        ValueFormat = '#,##0.#0'
        XLabelsSource = 'mesnome'
        BarStyle = bsCilinder
        Gradient.Direction = gdTopBottom
        XValues.Name = 'X'
        XValues.Order = loAscending
        XValues.ValueSource = 'mes'
        YValues.Name = 'Bar'
        YValues.Order = loNone
        YValues.ValueSource = 'saldo'
      end
    end
  end
  object qAno: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      
        'select cast(to_char(vencimento_real, '#39'YYYY'#39') as integer) ano, co' +
        'unt(*) titulos, sum(f.valor) saldo'
      '  from fin_receber f'
      ' where f.vencimento_real < current_date'
      '   and f.baixa is null'
      ' group by cast(to_char(vencimento_real, '#39'YYYY'#39') as integer)'
      ' order by 1')
    Params = <>
    Left = 16
    Top = 48
    object qAnoano: TIntegerField
      FieldName = 'ano'
      ReadOnly = True
    end
    object qAnotitulos: TLargeintField
      FieldName = 'titulos'
      ReadOnly = True
    end
    object qAnosaldo: TFloatField
      FieldName = 'saldo'
      ReadOnly = True
      DisplayFormat = ',0.#0'
    end
  end
  object qMes: TZQuery
    Connection = DM.Design
    OnCalcFields = qMesCalcFields
    Active = True
    SQL.Strings = (
      
        'select cast(to_char(vencimento_real, '#39'MM'#39') as integer) mes, coun' +
        't(*) titulos, sum(f.valor) saldo'
      '  from fin_receber f'
      ' where f.vencimento_real between :de and :ate'
      '   and f.vencimento_real < current_date'
      '   and f.baixa is null'
      ' group by cast(to_char(vencimento_real, '#39'MM'#39') as integer)'
      ' order by 1')
    Params = <
      item
        DataType = ftUnknown
        Name = 'de'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ate'
        ParamType = ptUnknown
      end>
    Left = 48
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'de'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ate'
        ParamType = ptUnknown
      end>
    object qMesmes: TIntegerField
      FieldName = 'mes'
      ReadOnly = True
    end
    object qMestitulos: TLargeintField
      FieldName = 'titulos'
      ReadOnly = True
    end
    object qMessaldo: TFloatField
      FieldName = 'saldo'
      ReadOnly = True
      DisplayFormat = ',0.#0'
    end
    object qMesmesnome: TStringField
      FieldKind = fkCalculated
      FieldName = 'mesnome'
      Calculated = True
    end
  end
end
