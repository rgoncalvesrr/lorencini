inherited ChartReceberEvolucaoValor: TChartReceberEvolucaoValor
  Caption = 'ChartReceberEvolucaoValor'
  PixelsPerInch = 96
  TextHeight = 15
  inherited ControlBar1: TControlBar
    inherited ToolBar1: TToolBar
      inherited ToolButton1: TToolButton
        ExplicitWidth = 77
      end
      inherited ToolButton2: TToolButton
        ExplicitWidth = 53
      end
      inherited tbZoomWindow: TToolButton
        ExplicitWidth = 84
      end
      inherited ToolButton5: TToolButton
        ExplicitWidth = 72
      end
      inherited ToolButton4: TToolButton
        ExplicitWidth = 32
      end
    end
  end
  inherited PageControl1: TPageControl
    inherited tsChart: TTabSheet
      inherited DBChart1: TDBChart
        LeftAxis.AxisValuesFormat = 'R$ #,0k'
        LeftAxis.Title.Caption = 'Valor Recebido'
        PrintMargins = (
          15
          20
          15
          20)
        object Series1: TBarSeries
          BarPen.Color = clSilver
          BarPen.SmallDots = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Frame.Color = clSilver
          Marks.Gradient.StartColor = 16769704
          Marks.Gradient.Visible = True
          Marks.Style = smsValue
          Marks.Visible = True
          DataSource = qData
          SeriesColor = clSilver
          Title = 'Anterior'
          ValueFormat = 'R$ #,0k'
          XLabelsSource = 'Mes'
          BarStyle = bsCilinder
          Gradient.Direction = gdTopBottom
          XValues.Name = 'X'
          XValues.Order = loNone
          XValues.ValueSource = 'baixa_mes'
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = 'ano_anterior'
        end
        object Series2: TBarSeries
          BarPen.Color = 16744448
          BarPen.SmallDots = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Frame.Color = clSilver
          Marks.Gradient.StartColor = 16769704
          Marks.Gradient.Visible = True
          Marks.Style = smsValue
          Marks.Visible = True
          DataSource = qData
          SeriesColor = 16744448
          Title = 'Corrente'
          ValueFormat = 'R$ #,0k'
          XLabelsSource = 'Mes'
          BarStyle = bsCilinder
          Gradient.Direction = gdTopBottom
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'baixa_mes'
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = 'ano_corrente'
        end
      end
    end
    inherited tsData: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 722
      ExplicitHeight = 432
    end
  end
  inherited dsDataGrid: TDataSource
    DataSet = qData
    Left = 224
  end
  object qData: TZReadOnlyQuery
    Connection = DM.Design
    SortedFields = 'baixa_mes'
    OnCalcFields = qDataCalcFields
    SQL.Strings = (
      'select'
      #9'baixa_mes, '
      
        #9'sum(valor_baixado) filter (where baixa_ano = :anoanterior) / 10' +
        '00 ano_anterior,'
      
        #9'sum(valor_baixado) filter (where baixa_ano = :anocorrente) / 10' +
        '00 ano_corrente'
      'from'
      #9'fin_receber'
      'where'
      #9'baixa is not null and'
      #9'baixa_mes between 1 and :mes and'
      ' '#9'baixa_ano between :anoanterior and :anocorrente and'
      ' '#9'valor_baixado > 0'
      'group by'
      #9'baixa_mes')
    Params = <
      item
        DataType = ftString
        Name = 'anoanterior'
        ParamType = ptUnknown
        Value = '2021'
      end
      item
        DataType = ftString
        Name = 'anocorrente'
        ParamType = ptUnknown
        Value = '2022'
      end
      item
        DataType = ftString
        Name = 'mes'
        ParamType = ptUnknown
        Value = '10'
      end>
    IndexFieldNames = 'baixa_mes Asc'
    Left = 168
    Top = 72
    ParamData = <
      item
        DataType = ftString
        Name = 'anoanterior'
        ParamType = ptUnknown
        Value = '2021'
      end
      item
        DataType = ftString
        Name = 'anocorrente'
        ParamType = ptUnknown
        Value = '2022'
      end
      item
        DataType = ftString
        Name = 'mes'
        ParamType = ptUnknown
        Value = '10'
      end>
    object qDataMes: TStringField
      DisplayLabel = 'M'#234's'
      DisplayWidth = 41
      FieldKind = fkCalculated
      FieldName = 'Mes'
      Calculated = True
    end
    object qDatabaixa_mes: TSmallintField
      FieldName = 'baixa_mes'
      ReadOnly = True
      Visible = False
    end
    object qDataano_anterior: TFloatField
      DisplayWidth = 24
      FieldName = 'ano_anterior'
      ReadOnly = True
      currency = True
    end
    object qDataano_corrente: TFloatField
      DisplayWidth = 25
      FieldName = 'ano_corrente'
      ReadOnly = True
      currency = True
    end
    object qDataevolucao: TFloatField
      DisplayLabel = 'Evolu'#231#227'o'
      DisplayWidth = 22
      FieldKind = fkCalculated
      FieldName = 'evolucao'
      DisplayFormat = ',0.0%'
      Calculated = True
    end
  end
end
