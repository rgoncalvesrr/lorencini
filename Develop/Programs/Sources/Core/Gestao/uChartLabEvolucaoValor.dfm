inherited ChartLabEvolucaoValor: TChartLabEvolucaoValor
  Caption = 'ChartLabEvolucaoValor'
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
        Title.Text.Strings = (
          'Produ'#231#227'o Anual')
        LeftAxis.AxisValuesFormat = 'R$ #,0k'
        LeftAxis.Title.Caption = 'Valor Produzido'
        PrintMargins = (
          15
          31
          15
          31)
        object Series1: TBarSeries
          BarPen.Color = clGray
          BarPen.SmallDots = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Length = 8
          Marks.Frame.Color = clSilver
          Marks.Gradient.StartColor = 16769704
          Marks.Gradient.Visible = True
          Marks.Style = smsValue
          Marks.Visible = True
          DataSource = qData
          SeriesColor = clSilver
          Title = 'Ano Anterior'
          ValueFormat = 'R$ 0,#k'
          XLabelsSource = 'label'
          BarStyle = bsCilinder
          Gradient.Direction = gdTopBottom
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'mes'
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = 'ano_anterior'
        end
        object Series2: TBarSeries
          BarPen.Color = 16744448
          BarPen.SmallDots = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Length = 8
          Marks.Frame.Color = clSilver
          Marks.Gradient.StartColor = 16769704
          Marks.Gradient.Visible = True
          Marks.Style = smsValue
          Marks.Visible = True
          DataSource = qData
          SeriesColor = 16744448
          Title = 'Ano Atual'
          ValueFormat = 'R$ #,#k'
          XLabelsSource = 'label'
          BarStyle = bsCilinder
          Gradient.Direction = gdTopBottom
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'mes'
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = 'ano_corrente'
        end
        object Series3: TFastLineSeries
          Active = False
          Marks.Callout.Brush.Color = clBlack
          Marks.Visible = False
          DataSource = Series1
          SeriesColor = 33023
          Title = 'M'#233'dia'
          LinePen.Color = 33023
          LinePen.Style = psDot
          LinePen.Width = 2
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
          DataSources = (
            'Series1'
            'Series2')
          object TeeFunction1: TAverageTeeFunction
          end
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
    Left = 208
  end
  object qData: TZReadOnlyQuery
    Connection = DM.Design
    SortedFields = 'mes'
    OnCalcFields = qDataCalcFields
    SQL.Strings = (
      'select '
      '  extract('#39'month'#39' from l.emissao)::::smallint mes,'
      
        '  sum(l.preco) filter(where extract('#39'year'#39' from l.emissao) = :an' +
        'o_de) / 1000 ano_anterior,'
      
        '  sum(l.preco) filter(where extract('#39'year'#39' from l.emissao) = :an' +
        'o_ate) / 1000 ano_corrente'
      'from'
      '  labamostras_rel l'
      'where'
      '  l.status = 4 and'
      '  l.revisao is null and'
      
        '  date_trunc('#39'day'#39', l.emissao) between :emissao_de and :emissao_' +
        'ate'
      'group by'
      '  extract('#39'month'#39' from l.emissao)')
    Params = <
      item
        DataType = ftString
        Name = 'ano_de'
        ParamType = ptUnknown
        Value = '2021'
      end
      item
        DataType = ftString
        Name = 'ano_ate'
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
        Value = '31/12/2022'
      end>
    IndexFieldNames = 'mes Asc'
    Left = 160
    Top = 72
    ParamData = <
      item
        DataType = ftString
        Name = 'ano_de'
        ParamType = ptUnknown
        Value = '2021'
      end
      item
        DataType = ftString
        Name = 'ano_ate'
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
        Value = '31/12/2022'
      end>
    object qDatames: TSmallintField
      FieldName = 'mes'
      ReadOnly = True
      Visible = False
    end
    object qDatalabel: TStringField
      DisplayLabel = 'M'#234's'
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'label'
      Calculated = True
    end
    object qDataano_anterior: TFloatField
      DisplayLabel = 'Ano Anterior'
      DisplayWidth = 45
      FieldName = 'ano_anterior'
      ReadOnly = True
      DisplayFormat = ',0.#0'
      currency = True
    end
    object qDataano_corrente: TFloatField
      DisplayLabel = 'Ano Corrente'
      DisplayWidth = 48
      FieldName = 'ano_corrente'
      ReadOnly = True
      DisplayFormat = ',0.#0'
      currency = True
    end
  end
end
