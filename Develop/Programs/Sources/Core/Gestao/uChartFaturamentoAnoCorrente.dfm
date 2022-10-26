inherited ChartFaturamentoAnoCorrente: TChartFaturamentoAnoCorrente
  Caption = 'ChartFaturamentoAnoCorrente'
  PixelsPerInch = 96
  TextHeight = 15
  inherited PageControl1: TPageControl
    inherited tsChart: TTabSheet
      inherited DBChart1: TDBChart
        LeftAxis.AxisValuesFormat = 'R$ #,0k'
        PrintMargins = (
          15
          31
          15
          31)
        object Series1: TBarSeries
          BarPen.Color = clGray
          BarPen.SmallDots = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Frame.Color = clGray
          Marks.Frame.SmallDots = True
          Marks.Gradient.StartColor = 16769704
          Marks.Gradient.Visible = True
          Marks.Style = smsValue
          Marks.Visible = True
          DataSource = qData
          SeriesColor = clSilver
          Title = 'Anterior'
          ValueFormat = 'R$ 0.#k'
          XLabelsSource = 'label'
          BarStyle = bsCilinder
          Gradient.Direction = gdTopBottom
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'mes'
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = 'anterior'
        end
        object Series2: TBarSeries
          BarPen.Color = 16744448
          BarPen.SmallDots = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Frame.Color = clGray
          Marks.Frame.SmallDots = True
          Marks.Gradient.StartColor = 16769704
          Marks.Gradient.Visible = True
          Marks.Style = smsValue
          Marks.Visible = True
          DataSource = qData
          SeriesColor = 16744448
          Title = 'Atual'
          ValueFormat = 'R$ 0.#k'
          XLabelsSource = 'mes'
          BarStyle = bsCilinder
          Gradient.Direction = gdTopBottom
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'mes'
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = 'corrente'
        end
      end
    end
    inherited tsData: TTabSheet
      inherited PageControl2: TPageControl
        inherited TabSheet1: TTabSheet
          Caption = 'Corrente'
        end
      end
    end
  end
  inherited dsDataGrid: TDataSource
    DataSet = qData
  end
  object qData: TZReadOnlyQuery
    Connection = DM.Design
    SortedFields = 'mes'
    OnCalcFields = qDataCalcFields
    SQL.Strings = (
      'select '
      #9'extract('#39'month'#39' from a.emissao) mes, '
      
        #9'sum(a.valor) filter (where extract('#39'year'#39' from a.emissao) = :an' +
        'o_anterior) / 1000 anterior,'
      
        #9'sum(a.valor) filter (where extract('#39'year'#39' from a.emissao) = :an' +
        'o_corrente) / 1000 corrente'#9
      'from '
      #9'nf a'
      'join '
      #9'tbclientes b on '
      #9'b.codigo = a.codigo'
      'where '
      #9'a.status = 2 and'
      #9'a.emissao between :emissao_de and :emissao_ate'
      'group by'
      #9'extract('#39'month'#39' from a.emissao)')
    Params = <
      item
        DataType = ftString
        Name = 'ano_anterior'
        ParamType = ptUnknown
        Value = '2021'
      end
      item
        DataType = ftString
        Name = 'ano_corrente'
        ParamType = ptUnknown
        Value = '2022'
      end
      item
        DataType = ftDate
        Name = 'emissao_de'
        ParamType = ptUnknown
        Value = 44197d
      end
      item
        DataType = ftDate
        Name = 'emissao_ate'
        ParamType = ptUnknown
        Value = '31/10/2022'
      end>
    IndexFieldNames = 'mes Asc'
    Left = 256
    Top = 72
    ParamData = <
      item
        DataType = ftString
        Name = 'ano_anterior'
        ParamType = ptUnknown
        Value = '2021'
      end
      item
        DataType = ftString
        Name = 'ano_corrente'
        ParamType = ptUnknown
        Value = '2022'
      end
      item
        DataType = ftDate
        Name = 'emissao_de'
        ParamType = ptUnknown
        Value = 44197d
      end
      item
        DataType = ftDate
        Name = 'emissao_ate'
        ParamType = ptUnknown
        Value = '31/10/2022'
      end>
    object qDatames: TFloatField
      DisplayWidth = 23
      FieldName = 'mes'
      ReadOnly = True
      Visible = False
    end
    object qDatalabel: TStringField
      DisplayLabel = 'M'#234's'
      DisplayWidth = 34
      FieldKind = fkCalculated
      FieldName = 'label'
      Calculated = True
    end
    object qDataanterior: TFloatField
      DisplayLabel = 'Anterior'
      DisplayWidth = 39
      FieldName = 'anterior'
      ReadOnly = True
      DisplayFormat = 'R$ ,0.0k'
    end
    object qDatacorrente: TFloatField
      DisplayLabel = 'Corrente'
      DisplayWidth = 39
      FieldName = 'corrente'
      ReadOnly = True
      DisplayFormat = 'R$ ,0.0k'
    end
  end
end
