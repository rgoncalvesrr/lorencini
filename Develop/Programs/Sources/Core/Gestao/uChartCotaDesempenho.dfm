inherited ChartCotaDesempenho: TChartCotaDesempenho
  Caption = 'ChartCotaDesempenho'
  PixelsPerInch = 96
  TextHeight = 15
  inherited ControlBar1: TControlBar
    inherited ToolBar1: TToolBar
      Left = 11
      ExplicitLeft = 11
      object ToolButton6: TToolButton
        Left = 326
        Top = 0
        Width = 8
        Caption = 'ToolButton6'
        ImageIndex = 307
        Style = tbsSeparator
      end
      object tbMesSelecionado: TToolButton
        Left = 334
        Top = 0
        Caption = 'Janeiro'
        DropdownMenu = pmMeses
        ImageIndex = 45
        Style = tbsTextButton
      end
    end
  end
  inherited PageControl1: TPageControl
    inherited tsChart: TTabSheet
      inherited DBChart1: TDBChart
        Legend.CheckBoxes = False
        Legend.CheckBoxesStyle = cbsRadio
        Legend.LegendStyle = lsValues
        Legend.TextStyle = ltsPercent
        PopupMenu = pmMeses
        PrintMargins = (
          15
          31
          15
          31)
        object Series1: TBarSeries
          BarPen.Color = clGray
          BarPen.SmallDots = True
          ColorEachPoint = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Frame.Color = clSilver
          Marks.Gradient.StartColor = 16769704
          Marks.Gradient.Visible = True
          Marks.Style = smsValue
          Marks.Visible = True
          DataSource = qCotaMesAtual
          XLabelsSource = 'Label'
          BarStyle = bsCilinder
          Gradient.Direction = gdTopBottom
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'status_code'
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = 'cotacoes'
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
    DataSet = qCotaMesAtual
  end
  object qCotaMesAtual: TZReadOnlyQuery
    Connection = DM.Design
    SortedFields = 'cotacoes'
    SortType = stDescending
    OnCalcFields = qCotaMesAtualCalcFields
    SQL.Strings = (
      'select  '
      '  l.status_code, count(*) cotacoes'
      'from'
      '  sys_logs l'
      'where'
      '  l.source_table = 198 and'
      '  l.status_code is not null and'
      '  l.year = :ano and'
      '  l.month = :mes'
      'group by'
      '  l.status_code')
    Params = <
      item
        DataType = ftString
        Name = 'ano'
        ParamType = ptUnknown
        Value = '2022'
      end
      item
        DataType = ftString
        Name = 'mes'
        ParamType = ptUnknown
        Value = '8'
      end>
    IndexFieldNames = 'cotacoes Desc'
    Left = 176
    Top = 128
    ParamData = <
      item
        DataType = ftString
        Name = 'ano'
        ParamType = ptUnknown
        Value = '2022'
      end
      item
        DataType = ftString
        Name = 'mes'
        ParamType = ptUnknown
        Value = '8'
      end>
    object qCotaMesAtualLabel: TStringField
      DisplayLabel = 'Status'
      DisplayWidth = 49
      FieldKind = fkCalculated
      FieldName = 'Label'
      Calculated = True
    end
    object qCotaMesAtualstatus_code: TIntegerField
      DisplayWidth = 25
      FieldName = 'status_code'
      ReadOnly = True
      Visible = False
    end
    object qCotaMesAtualcotacoes: TLargeintField
      DisplayLabel = 'Cota'#231#245'es'
      DisplayWidth = 36
      FieldName = 'cotacoes'
      ReadOnly = True
    end
  end
  object pmMeses: TPopupMenu
    MenuAnimation = [maTopToBottom]
    Left = 240
    Top = 56
  end
end
