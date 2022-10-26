inherited ChartCotaEvolucao: TChartCotaEvolucao
  Caption = 'ChartCotaEvolucao'
  ClientWidth = 893
  ExplicitWidth = 893
  PixelsPerInch = 96
  TextHeight = 15
  inherited ControlBar1: TControlBar
    Width = 887
    ExplicitWidth = 887
    inherited ToolBar1: TToolBar
      Width = 757
      ExplicitWidth = 757
      inherited ToolButton3: TToolButton
        Down = True
      end
      object ToolButton12: TToolButton
        Left = 326
        Top = 0
        Width = 8
        Caption = 'ToolButton12'
        ImageIndex = 0
        Style = tbsSeparator
      end
      object tbTipoCota: TToolButton
        Left = 334
        Top = 0
        AutoSize = True
        Caption = 'Emitidas'
        DropdownMenu = pmTipoCota
        ImageIndex = 133
        Style = tbsTextButton
      end
    end
  end
  inherited PageControl1: TPageControl
    Width = 887
    ExplicitWidth = 887
    inherited tsChart: TTabSheet
      ExplicitWidth = 879
      inherited DBChart1: TDBChart
        Width = 879
        PopupMenu = pmTipoCota
        ExplicitWidth = 879
        PrintMargins = (
          15
          31
          15
          31)
        object Series2: TBarSeries
          BarPen.Color = clSilver
          BarPen.SmallDots = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Length = 8
          Marks.Frame.Color = clSilver
          Marks.Gradient.StartColor = 16769704
          Marks.Gradient.Visible = True
          Marks.Style = smsValue
          Marks.Symbol.Frame.Color = clSilver
          Marks.Symbol.Pen.Color = clSilver
          Marks.Visible = True
          DataSource = qAnoAnterior
          SeriesColor = clSilver
          Title = 'Ano Anterior'
          XLabelsSource = 'mes'
          BarStyle = bsCilinder
          Gradient.Direction = gdTopBottom
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'month'
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = 'emitidas'
        end
        object Series1: TBarSeries
          BarPen.Color = 16744448
          BarPen.SmallDots = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Length = 8
          Marks.Frame.Color = clSilver
          Marks.Gradient.StartColor = 16769704
          Marks.Gradient.Visible = True
          Marks.Style = smsValue
          Marks.Symbol.Frame.Color = clSilver
          Marks.Symbol.Pen.Color = clSilver
          Marks.Visible = True
          DataSource = qAnoCorrente
          SeriesColor = 16744448
          Title = 'Ano Atual'
          XLabelsSource = 'mes'
          BarStyle = bsCilinder
          Gradient.Direction = gdTopBottom
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'month'
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = 'emitidas'
        end
      end
    end
    inherited tsData: TTabSheet
      ExplicitWidth = 879
      inherited PageControl2: TPageControl
        Width = 879
        ExplicitWidth = 879
        inherited TabSheet1: TTabSheet
          Caption = 'Ano Atual'
          ExplicitWidth = 871
          inherited DataGrid: TJvDBUltimGrid
            Width = 871
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Ano Anterior'
          ImageIndex = 1
        end
      end
    end
  end
  inherited alDef: TActionList
    Left = 32
    Top = 80
  end
  object qAnoCorrente: TZReadOnlyQuery [3]
    Connection = DM.Design
    SortedFields = 'month'
    OnCalcFields = qAnoCorrenteCalcFields
    SQL.Strings = (
      'select'
      '  l.month,  '
      '  count(*) filter (where l.status_code = 1) emitidas,'
      '  count(*) filter (where l.status_code = 3) aprovadas,'
      '  count(*) filter (where l.status_code = 4) estudo,  '
      '  count(*) filter (where l.status_code = 5) autorizadas,'
      '  count(*) filter (where l.status_code = 6) executadas,'
      '  count(*) filter (where l.status_code = 7) expiradas,'
      '  count(*) filter (where l.status_code = 8) canceladas'
      'from'
      '  sys_logs l'
      'where'
      '  l.source_table = 198 and'
      '  l.status_code is not null and'
      '  l.year = :ano and'
      '  l.month between :mes_inicial and :mes_final'
      'group by'
      '  l.month;')
    Params = <
      item
        DataType = ftString
        Name = 'ano'
        ParamType = ptUnknown
        Value = '2022'
      end
      item
        DataType = ftString
        Name = 'mes_inicial'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'mes_final'
        ParamType = ptUnknown
        Value = '9'
      end>
    IndexFieldNames = 'month Asc'
    Left = 144
    Top = 80
    ParamData = <
      item
        DataType = ftString
        Name = 'ano'
        ParamType = ptUnknown
        Value = '2022'
      end
      item
        DataType = ftString
        Name = 'mes_inicial'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'mes_final'
        ParamType = ptUnknown
        Value = '9'
      end>
    object qAnoCorrentemonth: TSmallintField
      FieldName = 'month'
      Visible = False
    end
    object qAnoCorrentemes: TStringField
      DisplayLabel = 'M'#234's'
      DisplayWidth = 21
      FieldKind = fkCalculated
      FieldName = 'mes'
      Calculated = True
    end
    object qAnoCorrenteemitidas: TLargeintField
      DisplayLabel = 'Emitidas'
      DisplayWidth = 16
      FieldName = 'emitidas'
      ReadOnly = True
    end
    object qAnoCorrenteaprovadas: TLargeintField
      DisplayLabel = 'Aprovadas'
      DisplayWidth = 16
      FieldName = 'aprovadas'
      ReadOnly = True
    end
    object qAnoCorrenteautorizadas: TLargeintField
      DisplayLabel = 'Autorizadas'
      DisplayWidth = 16
      FieldName = 'autorizadas'
      ReadOnly = True
    end
    object qAnoCorrenteestudo: TLargeintField
      DisplayLabel = 'Em Estudo'
      DisplayWidth = 16
      FieldName = 'estudo'
      ReadOnly = True
    end
    object qAnoCorrenteexecutadas: TLargeintField
      DisplayLabel = 'Executadas'
      DisplayWidth = 16
      FieldName = 'executadas'
      ReadOnly = True
    end
    object qAnoCorrenteexpiradas: TLargeintField
      DisplayLabel = 'Expiradas'
      DisplayWidth = 16
      FieldName = 'expiradas'
      ReadOnly = True
    end
    object qAnoCorrentecanceladas: TLargeintField
      DisplayLabel = 'Canceladas'
      DisplayWidth = 17
      FieldName = 'canceladas'
      ReadOnly = True
    end
  end
  inherited dsDataGrid: TDataSource
    DataSet = qAnoCorrente
    Left = 80
    Top = 80
  end
  object qAnoAnterior: TZReadOnlyQuery
    Connection = DM.Design
    SortedFields = 'month'
    OnCalcFields = qAnoCorrenteCalcFields
    SQL.Strings = (
      'select'
      '  l.month,  '
      '  count(*) filter (where l.status_code = 1) emitidas,'
      '  count(*) filter (where l.status_code = 3) aprovadas,'
      '  count(*) filter (where l.status_code = 4) estudo,  '
      '  count(*) filter (where l.status_code = 5) autorizadas,'
      '  count(*) filter (where l.status_code = 6) executadas,'
      '  count(*) filter (where l.status_code = 7) expiradas,'
      '  count(*) filter (where l.status_code = 8) canceladas'
      'from'
      '  sys_logs l'
      'where'
      '  l.source_table = 198 and'
      '  l.status_code is not null and'
      '  l.year = :ano and'
      '  l.month between :mes_inicial and :mes_final'
      'group by'
      '  l.month;')
    Params = <
      item
        DataType = ftString
        Name = 'ano'
        ParamType = ptUnknown
        Value = '2021'
      end
      item
        DataType = ftString
        Name = 'mes_inicial'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'mes_final'
        ParamType = ptUnknown
        Value = '9'
      end>
    IndexFieldNames = 'month Asc'
    Left = 216
    Top = 80
    ParamData = <
      item
        DataType = ftString
        Name = 'ano'
        ParamType = ptUnknown
        Value = '2021'
      end
      item
        DataType = ftString
        Name = 'mes_inicial'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'mes_final'
        ParamType = ptUnknown
        Value = '9'
      end>
    object SmallintField1: TSmallintField
      FieldName = 'month'
      Visible = False
    end
    object StringField1: TStringField
      DisplayLabel = 'M'#234's'
      FieldKind = fkCalculated
      FieldName = 'mes'
      Calculated = True
    end
    object LargeintField1: TLargeintField
      DisplayLabel = 'Emitidas'
      FieldName = 'emitidas'
      ReadOnly = True
    end
    object LargeintField2: TLargeintField
      DisplayLabel = 'Aprovadas'
      FieldName = 'aprovadas'
      ReadOnly = True
    end
    object LargeintField3: TLargeintField
      DisplayLabel = 'Autorizadas'
      FieldName = 'autorizadas'
      ReadOnly = True
    end
    object LargeintField4: TLargeintField
      DisplayLabel = 'Em Estudo'
      FieldName = 'estudo'
      ReadOnly = True
    end
    object LargeintField5: TLargeintField
      DisplayLabel = 'Executadas'
      FieldName = 'executadas'
      ReadOnly = True
    end
    object LargeintField6: TLargeintField
      DisplayLabel = 'Expiradas'
      FieldName = 'expiradas'
      ReadOnly = True
    end
    object LargeintField7: TLargeintField
      DisplayLabel = 'Canceladas'
      FieldName = 'canceladas'
      ReadOnly = True
    end
  end
  object pmTipoCota: TPopupMenu
    Left = 296
    Top = 80
  end
end
