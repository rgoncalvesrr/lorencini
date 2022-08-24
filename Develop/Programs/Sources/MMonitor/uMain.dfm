inherited Main: TMain
  AlphaBlend = True
  AlphaBlendValue = 220
  Caption = 'Manager Monitor'
  ClientHeight = 529
  ClientWidth = 898
  Font.Height = -13
  Position = poDefault
  ScreenSnap = True
  OnResize = FormResize
  ExplicitWidth = 914
  ExplicitHeight = 568
  PixelsPerInch = 96
  TextHeight = 17
  object Panel1: TPanel [0]
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 892
    Height = 59
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = ' '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      AlignWithMargins = True
      Left = 424
      Top = 3
      Width = 145
      Height = 53
      Margins.Left = 10
      Margins.Right = 10
      Align = alRight
      Caption = 'Lorencini Brasil'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Layout = tlCenter
      ExplicitHeight = 28
    end
    object Image1: TImage
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 40
      Height = 53
      Align = alLeft
      Center = True
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 56
      Top = 3
      Width = 168
      Height = 53
      Margins.Left = 10
      Align = alLeft
      Caption = #218'ltima Atualiza'#231#227'o:'
      Layout = tlCenter
      ExplicitHeight = 28
    end
    object RadioGroup1: TRadioGroup
      AlignWithMargins = True
      Left = 582
      Top = 3
      Width = 212
      Height = 53
      Align = alRight
      Caption = ' Ordem '
      Columns = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Situa'#231#227'o'
        'Atualiza'#231#227'o')
      ParentFont = False
      TabOrder = 0
      OnClick = RadioGroup1Click
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 800
      Top = 3
      Width = 89
      Height = 53
      Align = alRight
      Caption = 'Encerrar'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DrawGrid1: TDrawGrid [1]
    AlignWithMargins = True
    Left = 3
    Top = 68
    Width = 892
    Height = 458
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    ColCount = 3
    DefaultColWidth = 362
    DefaultRowHeight = 130
    DefaultDrawing = False
    FixedCols = 0
    RowCount = 100
    FixedRows = 0
    GridLineWidth = 0
    TabOrder = 1
    OnDrawCell = DrawGrid1DrawCell
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = Timer1Timer
    Left = 48
    Top = 8
  end
  object zMMonitor: TZReadOnlyQuery
    Connection = DM.Design
    SQL.Strings = (
      
        'select r.situacao, r.recno, r.atualizacao, r.emissao, r.frascos,' +
        ' r.seringas, r.codigo, r.volumes,'
      '       c.empresa, c.nome_chave'
      '  from labproc r'
      '       join tbclientes c'
      '         on c.codigo = r.codigo'
      ' where r.situacao < 6 '
      ' order by r.situacao, r.atualizacao desc')
    Params = <>
    Left = 336
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = zMMonitor
    Left = 368
    Top = 32
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 700
    OnTimer = Timer2Timer
    Left = 48
    Top = 40
  end
end
