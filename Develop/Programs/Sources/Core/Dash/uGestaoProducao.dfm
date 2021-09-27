inherited GestaoProducao: TGestaoProducao
  Caption = 'Indicadores de Produ'#231#227'o'
  ClientHeight = 863
  ClientWidth = 1122
  ExplicitWidth = 1138
  ExplicitHeight = 902
  PixelsPerInch = 96
  TextHeight = 15
  object pnCharts: TPanel [0]
    Left = 0
    Top = 44
    Width = 1122
    Height = 819
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    OnResize = pnChartsResize
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 1122
      Height = 337
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object DBChart1: TDBChart
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 566
        Height = 331
        Title.Text.Strings = (
          'Produ'#231#227'o Quinzenal')
        Legend.Alignment = laBottom
        View3D = False
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        PrintMargins = (
          15
          26
          15
          26)
        object Series3: TFastLineSeries
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Length = 20
          Marks.ShapeStyle = fosRoundRectangle
          Marks.Style = smsValue
          Marks.Visible = True
          DataSource = qProducao
          SeriesColor = clTeal
          Title = 'Laudos Criados'
          XLabelsSource = 'data'
          LinePen.Color = clTeal
          LinePen.Width = 2
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'data'
          YValues.Name = 'Y'
          YValues.Order = loNone
          YValues.ValueSource = 'criado'
        end
        object Series1: TLineSeries
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Length = 20
          Marks.ShapeStyle = fosRoundRectangle
          Marks.Style = smsValue
          Marks.Visible = True
          DataSource = qProducao
          Title = 'Resultados Apontados'
          XLabelsSource = 'data'
          LinePen.Color = clRed
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.Name = 'X'
          XValues.Order = loNone
          XValues.ValueSource = 'data'
          YValues.Name = 'Y'
          YValues.Order = loNone
          YValues.ValueSource = 'apontado'
        end
        object Series2: TLineSeries
          Marks.Callout.Brush.Color = clBlack
          Marks.Callout.Length = 20
          Marks.ShapeStyle = fosRoundRectangle
          Marks.Style = smsValue
          Marks.Visible = True
          DataSource = qProducao
          SeriesColor = 12615680
          Title = 'Laudos Emitidos'
          XLabelsSource = 'data'
          LinePen.Color = 12615680
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'data'
          YValues.Name = 'Y'
          YValues.Order = loNone
          YValues.ValueSource = 'emitido'
        end
      end
      object HTMLViewer1: THTMLViewer
        Left = 572
        Top = 0
        Width = 550
        Height = 337
        TabOrder = 1
        Align = alClient
        BorderStyle = htFocused
        HistoryMaxCount = 0
        DefFontName = 'Times New Roman'
        DefPreFontName = 'Courier New'
        NoSelect = False
        CharSet = DEFAULT_CHARSET
        PrintMarginLeft = 2.000000000000000000
        PrintMarginRight = 2.000000000000000000
        PrintMarginTop = 2.000000000000000000
        PrintMarginBottom = 2.000000000000000000
        PrintScale = 1.000000000000000000
        ExplicitLeft = 575
        ExplicitTop = 3
      end
    end
    object Panel7: TPanel
      Left = 0
      Top = 337
      Width = 1122
      Height = 482
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object DBChart3: TDBChart
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 400
        Height = 476
        Title.Text.Strings = (
          'TDBChart')
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
      end
      object DBChart4: TDBChart
        AlignWithMargins = True
        Left = 409
        Top = 3
        Width = 710
        Height = 476
        Title.Text.Strings = (
          'TDBChart')
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
      end
    end
  end
  object ControlBar1: TControlBar [1]
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1116
    Height = 38
    Align = alTop
    AutoSize = True
    TabOrder = 1
    object ToolBar1: TToolBar
      Left = 11
      Top = 2
      Width = 150
      Height = 30
      AutoSize = True
      ButtonHeight = 30
      ButtonWidth = 31
      Caption = 'ToolBar1'
      DisabledImages = Resources.medium_d
      HotImages = Resources.medium_h
      Images = Resources.medium_n
      TabOrder = 0
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Action = actRefresh
      end
    end
  end
  inherited alDef: TActionList
    Left = 416
    object actRefresh: TAction
      Caption = 'Atualizar'
      ImageIndex = 307
      OnExecute = actRefreshExecute
    end
  end
  object qProducao: TZQuery
    Connection = DM.Design
    AfterRefresh = qProducaoAfterRefresh
    SQL.Strings = (
      
        'select x.data, sum(criado) criado, sum(apontado) apontado, sum(e' +
        'mitido) emitido'
      
        '  from (select cast(date_trunc('#39'day'#39', apontado) as date) as data' +
        ', 0 criado, count(*) apontado, 0 emitido'
      '          from labamostras_rel'
      '         where status in (2,3)'
      '           and apontado between :de and :ate'
      '         group by date_trunc('#39'day'#39', apontado)'
      '        union all'
      
        '        select cast(date_trunc('#39'day'#39', criacao) as date), count(*' +
        '), 0 apontado, 0 emitido'
      '          from labamostras_rel'
      '         where criacao between :de and :ate'
      '         group by date_trunc('#39'day'#39', criacao)'
      '        union all'
      
        '        select cast(date_trunc('#39'day'#39', emissao) as date), 0, 0, c' +
        'ount(*) qtd'
      '          from labamostras_rel'
      '         where status = 3'
      '           and assinatura is not null'
      '           and emissao between :de and :ate'
      '         group by date_trunc('#39'day'#39', emissao)) x'
      ' group by data')
    Params = <
      item
        DataType = ftDate
        Name = 'de'
        ParamType = ptUnknown
        Value = '01/08/2021'
      end
      item
        DataType = ftDate
        Name = 'ate'
        ParamType = ptUnknown
        Value = '15/08/2021'
      end>
    FetchRow = 50
    Left = 472
    Top = 8
    ParamData = <
      item
        DataType = ftDate
        Name = 'de'
        ParamType = ptUnknown
        Value = '01/08/2021'
      end
      item
        DataType = ftDate
        Name = 'ate'
        ParamType = ptUnknown
        Value = '15/08/2021'
      end>
    object qProducaodata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'data'
      ReadOnly = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qProducaocriado: TFloatField
      DisplayLabel = 'Laudos Criados'
      FieldName = 'criado'
      ReadOnly = True
    end
    object qProducaoapontado: TFloatField
      DisplayLabel = 'Apontados'
      FieldName = 'apontado'
      ReadOnly = True
    end
    object qProducaoemitido: TFloatField
      DisplayLabel = 'Emitidos'
      FieldName = 'emitido'
      ReadOnly = True
    end
  end
  object dsProducao: TDataSource
    DataSet = qProducao
    Left = 536
    Top = 8
  end
end
