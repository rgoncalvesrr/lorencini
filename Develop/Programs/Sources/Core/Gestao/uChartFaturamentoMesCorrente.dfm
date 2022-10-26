inherited ChartFaturamentoMesCorrente: TChartFaturamentoMesCorrente
  Caption = 'ChartFaturamentoMesCorrente'
  ClientHeight = 779
  ClientWidth = 1165
  ExplicitWidth = 1165
  ExplicitHeight = 779
  PixelsPerInch = 96
  TextHeight = 15
  inherited ControlBar1: TControlBar
    Width = 1159
    ExplicitWidth = 1159
    inherited ToolBar1: TToolBar
      object tbMesSelecionado: TToolButton
        Left = 326
        Top = 0
        Caption = 'Janeiro'
        DropdownMenu = pmMes
        ImageIndex = 15
        Style = tbsTextButton
      end
    end
  end
  inherited PageControl1: TPageControl
    Width = 1159
    Height = 735
    inherited tsChart: TTabSheet
      inherited DBChart1: TDBChart
        Width = 1151
        Height = 705
        Title.Text.Strings = (
          'Rendimento Mensal - Faturamento vs Produ'#231#227'o')
        LeftAxis.AxisValuesFormat = 'R$ 0k'
        PopupMenu = pmMes
        PrintMargins = (
          15
          31
          15
          31)
        inherited sbShowHideZoomWindow: TSpeedButton
          Left = 1115
        end
        object Series2: TBarSeries
          BarPen.Color = 16744448
          BarPen.Style = psDot
          BarPen.SmallDots = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Length = 8
          Marks.BackColor = clGray
          Marks.Color = clGray
          Marks.Frame.Color = clGray
          Marks.Gradient.StartColor = 16769704
          Marks.Gradient.Visible = True
          Marks.Style = smsValue
          Marks.Visible = True
          DataSource = qProducao
          SeriesColor = 16744448
          Title = 'Produ'#231#227'o'
          ValueFormat = 'R$ 0.0k'
          XLabelsSource = 'emissao'
          BarStyle = bsCilinder
          Gradient.Direction = gdTopBottom
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'emissao'
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = 'producao'
        end
        object Series1: TBarSeries
          BarPen.Color = clGreen
          BarPen.SmallDots = True
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Length = 8
          Marks.Frame.Color = clGray
          Marks.Gradient.StartColor = 16769704
          Marks.Gradient.Visible = True
          Marks.Style = smsValue
          Marks.Visible = True
          DataSource = qFaturamento
          SeriesColor = clGreen
          Title = 'Faturamento'
          ValueFormat = 'R$ 0.0k'
          XLabelsSource = 'emissao'
          BarStyle = bsCilinder
          Gradient.Direction = gdTopBottom
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'emissao'
          YValues.Name = 'Bar'
          YValues.Order = loNone
          YValues.ValueSource = 'faturamento'
        end
      end
    end
    inherited tsData: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 722
      ExplicitHeight = 432
      inherited PageControl2: TPageControl
        Width = 1151
        Height = 705
        inherited TabSheet1: TTabSheet
          Caption = 'Faturamento'
          inherited DataGrid: TJvDBUltimGrid
            Width = 1143
            Height = 675
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Produ'#231#227'o'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitWidth = 714
          ExplicitHeight = 402
        end
      end
    end
  end
  inherited dsDataGrid: TDataSource
    DataSet = qFaturamento
  end
  object qFaturamento: TZReadOnlyQuery
    Connection = DM.Design
    SortedFields = 'emissao'
    SQL.Strings = (
      'select '
      #9'a.emissao, sum(a.valor) / 1000 faturamento'
      'from '
      #9'nf a'
      'join '
      #9'tbclientes b on '
      #9'b.codigo = a.codigo'
      'where '
      #9'a.status = 2 and '
      #9'a.emissao between :emissao_de and :emissao_ate'
      'group by '
      #9'a.emissao')
    Params = <
      item
        DataType = ftDate
        Name = 'emissao_de'
        ParamType = ptUnknown
        Value = 44774d
      end
      item
        DataType = ftDate
        Name = 'emissao_ate'
        ParamType = ptUnknown
        Value = '30/08/2022'
      end>
    IndexFieldNames = 'emissao Asc'
    Left = 256
    Top = 72
    ParamData = <
      item
        DataType = ftDate
        Name = 'emissao_de'
        ParamType = ptUnknown
        Value = 44774d
      end
      item
        DataType = ftDate
        Name = 'emissao_ate'
        ParamType = ptUnknown
        Value = '30/08/2022'
      end>
    object qFaturamentoemissao: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 84
      FieldName = 'emissao'
      ReadOnly = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qFaturamentofaturamento: TFloatField
      DisplayLabel = 'Faturamento'
      DisplayWidth = 101
      FieldName = 'faturamento'
      ReadOnly = True
      DisplayFormat = 'R$ ,0.#0k'
    end
  end
  object pmMes: TPopupMenu
    Left = 424
    Top = 72
  end
  object qProducao: TZReadOnlyQuery
    Connection = DM.Design
    SortedFields = 'emissao'
    SQL.Strings = (
      'select '
      
        '  date_trunc('#39'day'#39', l.emissao) emissao, sum(l.preco) / 1000 prod' +
        'ucao'
      'from'
      '  labamostras_rel l'
      'where'
      '  l.status = 4 and'
      '  l.revisao is null and'
      
        '  date_trunc('#39'day'#39', l.emissao) between :emissao_de and :emissao_' +
        'ate'
      'group by'
      '  date_trunc('#39'day'#39', l.emissao)'
      ''
      ''
      '')
    Params = <
      item
        DataType = ftDate
        Name = 'emissao_de'
        ParamType = ptUnknown
        Value = '01/08/2022'
      end
      item
        DataType = ftDate
        Name = 'emissao_ate'
        ParamType = ptUnknown
        Value = '30/08/2022'
      end>
    Properties.Strings = (
      '')
    IndexFieldNames = 'emissao Asc'
    Left = 256
    Top = 128
    ParamData = <
      item
        DataType = ftDate
        Name = 'emissao_de'
        ParamType = ptUnknown
        Value = '01/08/2022'
      end
      item
        DataType = ftDate
        Name = 'emissao_ate'
        ParamType = ptUnknown
        Value = '30/08/2022'
      end>
    object qProducaoemissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'emissao'
      ReadOnly = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qProducaoproducao: TFloatField
      DisplayLabel = 'Produ'#231#227'o'
      FieldName = 'producao'
      ReadOnly = True
      DisplayFormat = ',0.#0'
    end
  end
end
