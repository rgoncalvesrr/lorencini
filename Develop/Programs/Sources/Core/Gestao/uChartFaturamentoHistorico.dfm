inherited ChartFaturamentoHistorico: TChartFaturamentoHistorico
  Caption = 'ChartFaturamentoHistorico'
  PixelsPerInch = 96
  TextHeight = 15
  inherited PageControl1: TPageControl
    inherited tsChart: TTabSheet
      inherited DBChart1: TDBChart
        Title.Text.Strings = (
          'Faturamento Hist'#243'rico')
        LeftAxis.AxisValuesFormat = 'R$ #,0k'
        PrintMargins = (
          15
          31
          15
          31)
        object Series1: TBarSeries
          BarPen.Color = 16744448
          BarPen.SmallDots = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Frame.Color = clGray
          Marks.Gradient.StartColor = 16769704
          Marks.Gradient.Visible = True
          Marks.Style = smsValue
          Marks.Visible = True
          DataSource = qData
          SeriesColor = 16744448
          Title = 'Faturamento Anual'
          ValueFormat = 'R$ #,0k'
          XLabelsSource = 'ano'
          BarStyle = bsCilinder
          Gradient.Direction = gdTopBottom
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'ano'
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = 'faturamento'
        end
        object Series2: TFastLineSeries
          Active = False
          Marks.Callout.Brush.Color = clBlack
          Marks.Frame.Color = clTeal
          Marks.Frame.SmallDots = True
          Marks.Gradient.Visible = True
          Marks.ShapeStyle = fosRoundRectangle
          Marks.Style = smsValue
          Marks.Visible = True
          DataSource = Series1
          SeriesColor = clTeal
          Title = 'Maior Faturamento'
          ValueFormat = 'R$ #,0k'
          LinePen.Color = clTeal
          LinePen.Style = psDash
          LinePen.Width = 2
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
          object TeeFunction1: THighTeeFunction
          end
        end
        object Series3: TFastLineSeries
          Active = False
          Marks.Callout.Brush.Color = clBlack
          Marks.Frame.Color = clRed
          Marks.Frame.SmallDots = True
          Marks.Gradient.Visible = True
          Marks.ShapeStyle = fosRoundRectangle
          Marks.Style = smsValue
          Marks.Visible = True
          DataSource = Series1
          Title = 'Menor Faturamento'
          ValueFormat = 'R$ #,0k'
          LinePen.Color = clRed
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
          object TeeFunction2: TLowTeeFunction
          end
        end
        object Series4: TFastLineSeries
          Active = False
          Marks.Callout.Brush.Color = clBlack
          Marks.Frame.Color = 33023
          Marks.Frame.SmallDots = True
          Marks.Gradient.Visible = True
          Marks.ShapeStyle = fosRoundRectangle
          Marks.Style = smsValue
          Marks.Visible = True
          DataSource = Series1
          SeriesColor = 33023
          Title = 'Faturamento M'#233'dio'
          ValueFormat = 'R$ #,0k'
          LinePen.Color = 33023
          LinePen.Style = psDash
          LinePen.Width = 2
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
          object TeeFunction3: TAverageTeeFunction
          end
        end
      end
    end
  end
  inherited dsDataGrid: TDataSource
    DataSet = qData
  end
  object qData: TZReadOnlyQuery
    Connection = DM.Design
    SortedFields = 'ano'
    SQL.Strings = (
      'select '
      #9'extract('#39'year'#39' from a.emissao) ano,'
      #9'sum(a.valor) / 1000 faturamento'
      'from'
      #9'nf a'
      'join'
      #9'tbclientes b on'
      #9'b.codigo = a.codigo'
      'where'
      #9'a.status = 2 and'
      #9'a.emissao between :emissao_de and :emissao_ate'
      'group by'
      #9'extract('#39'year'#39' from a.emissao)')
    Params = <
      item
        DataType = ftDate
        Name = 'emissao_de'
        ParamType = ptUnknown
        Value = 40179d
      end
      item
        DataType = ftDate
        Name = 'emissao_ate'
        ParamType = ptUnknown
        Value = '31/12/2022'
      end>
    IndexFieldNames = 'ano Asc'
    Left = 256
    Top = 72
    ParamData = <
      item
        DataType = ftDate
        Name = 'emissao_de'
        ParamType = ptUnknown
        Value = 40179d
      end
      item
        DataType = ftDate
        Name = 'emissao_ate'
        ParamType = ptUnknown
        Value = '31/12/2022'
      end>
    object qDataano: TFloatField
      DisplayLabel = 'Ano'
      DisplayWidth = 51
      FieldName = 'ano'
      ReadOnly = True
    end
    object qDatafaturamento: TFloatField
      DisplayLabel = 'Faturamento'
      DisplayWidth = 62
      FieldName = 'faturamento'
      ReadOnly = True
      DisplayFormat = 'R$ ,0.0k'
    end
  end
end
