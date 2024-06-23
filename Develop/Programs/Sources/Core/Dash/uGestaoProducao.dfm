inherited GestaoProducao: TGestaoProducao
  Margins.Left = 5
  Margins.Top = 5
  Margins.Right = 5
  Margins.Bottom = 5
  Caption = 'Indicadores de Produ'#231#227'o'
  ClientHeight = 1079
  ClientWidth = 1405
  Font.Height = -19
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1423
  ExplicitHeight = 1126
  PixelsPerInch = 120
  TextHeight = 25
  object pnCharts: TPanel [0]
    Left = 0
    Top = 54
    Width = 1405
    Height = 1025
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    OnResize = pnChartsResize
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 1405
      Height = 421
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object DBChart1: TDBChart
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 707
        Height = 413
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Title.Text.Strings = (
          'Produ'#231#227'o Quinzenal')
        Legend.Alignment = laBottom
        View3D = False
        View3DOptions.FontZoom = 125
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        PrintMargins = (
          15
          26
          15
          26)
        ColorPaletteIndex = 13
        object Series3: TFastLineSeries
          HoverElement = []
          Marks.Visible = True
          Marks.Style = smsValue
          Marks.Callout.Length = 20
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
          HoverElement = [heCurrent]
          Marks.Visible = True
          Marks.Style = smsValue
          Marks.Callout.Length = 20
          DataSource = qProducao
          Title = 'Resultados Apontados'
          XLabelsSource = 'data'
          Brush.BackColor = clDefault
          LinePen.Color = clRed
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loNone
          XValues.ValueSource = 'data'
          YValues.Name = 'Y'
          YValues.Order = loNone
          YValues.ValueSource = 'apontado'
        end
        object Series2: TLineSeries
          HoverElement = [heCurrent]
          Marks.Visible = True
          Marks.Style = smsValue
          Marks.Callout.Length = 20
          DataSource = qProducao
          SeriesColor = 12615680
          Title = 'Laudos Emitidos'
          XLabelsSource = 'data'
          Brush.BackColor = clDefault
          LinePen.Color = 12615680
          LinePen.Width = 2
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          XValues.ValueSource = 'data'
          YValues.Name = 'Y'
          YValues.Order = loNone
          YValues.ValueSource = 'emitido'
        end
      end
    end
    object Panel7: TPanel
      Left = 0
      Top = 421
      Width = 1405
      Height = 604
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object DBChart3: TDBChart
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 500
        Height = 596
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Title.Text.Strings = (
          'TDBChart')
        View3DOptions.FontZoom = 125
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
      end
      object DBChart4: TDBChart
        AlignWithMargins = True
        Left = 512
        Top = 4
        Width = 889
        Height = 596
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Title.Text.Strings = (
          'TDBChart')
        View3DOptions.FontZoom = 125
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
      end
    end
  end
  object ControlBar1: TControlBar [1]
    AlignWithMargins = True
    Left = 4
    Top = 4
    Width = 1397
    Height = 46
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    AutoSize = True
    RowSize = 33
    TabOrder = 1
    object ToolBar1: TToolBar
      Left = 14
      Top = 2
      Width = 187
      Height = 38
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      AutoSize = True
      ButtonHeight = 38
      ButtonWidth = 39
      Caption = 'ToolBar1'
      DisabledImages = Resources.medium_d
      HotImages = Resources.medium_h
      Images = Resources.medium_n
      TabOrder = 0
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
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
