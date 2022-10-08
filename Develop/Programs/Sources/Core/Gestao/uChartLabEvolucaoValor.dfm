inherited ChartLabEvolucaoValor: TChartLabEvolucaoValor
  Caption = 'ChartLabEvolucaoValor'
  PixelsPerInch = 96
  TextHeight = 15
  inherited PageControl1: TPageControl
    inherited tsChart: TTabSheet
      inherited DBChart1: TDBChart
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
          ValueFormat = 'R$ ###,##0.#0'
          XLabelsSource = 'Mes'
          BarStyle = bsCilinder
          Gradient.Direction = gdTopBottom
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'emissao_mes'
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = 'ano_anterior'
        end
        object Series2: TBarSeries
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
          SeriesColor = 16744448
          Title = 'Ano Atual'
          ValueFormat = 'R$ ###,##0.#0'
          XLabelsSource = 'Mes'
          BarStyle = bsCilinder
          Gradient.Direction = gdTopBottom
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'emissao_mes'
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = 'ano_corrente'
        end
      end
    end
    inherited tsData: TTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
  end
  inherited dsDataGrid: TDataSource
    DataSet = qData
  end
  object qData: TZReadOnlyQuery
    Connection = DM.Design
    OnCalcFields = qDataCalcFields
    SQL.Strings = (
      'select '
      '  l.emissao_mes,'
      
        '  sum(ps.vtotal / ps.qtd) filter(where l.emissao_ano = :ano_de) ' +
        'ano_anterior,'
      
        '  sum(ps.vtotal / ps.qtd) filter(where l.emissao_ano = :ano_ate)' +
        ' ano_corrente'
      'from'
      '  labamostras_rel l'
      'join'
      '  pedido_serv ps on'
      '  ps.pedido = l.pedido and'
      '  ps.codserv = l.codserv'
      'where'
      '  l.status = 4 and'
      '  l.revisao is null and'
      '  l.emissao_mes between 1 and :mes and'
      '  l.emissao_ano between :ano_de and :ano_ate'
      'group by'
      '  l.emissao_mes')
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
        DataType = ftString
        Name = 'mes'
        ParamType = ptUnknown
        Value = '8'
      end>
    Left = 144
    Top = 64
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
        DataType = ftString
        Name = 'mes'
        ParamType = ptUnknown
        Value = '8'
      end>
    object qDataMes: TStringField
      DisplayLabel = 'M'#234's'
      DisplayWidth = 17
      FieldKind = fkCalculated
      FieldName = 'Mes'
      Calculated = True
    end
    object qDataemissao_mes: TSmallintField
      FieldName = 'emissao_mes'
      ReadOnly = True
      Visible = False
    end
    object qDataano_anterior: TFloatField
      DisplayLabel = 'Ano Anterior'
      DisplayWidth = 46
      FieldName = 'ano_anterior'
      ReadOnly = True
      DisplayFormat = ',0.#0'
      currency = True
    end
    object qDataano_corrente: TFloatField
      DisplayLabel = 'Ano Corrente'
      DisplayWidth = 49
      FieldName = 'ano_corrente'
      ReadOnly = True
      DisplayFormat = ',0.#0'
      currency = True
    end
  end
end
