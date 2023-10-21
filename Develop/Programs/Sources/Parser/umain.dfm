object Main: TMain
  Left = 0
  Top = 0
  Caption = 'Aplicador de Procedures'
  ClientHeight = 652
  ClientWidth = 880
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 874
    Height = 431
    ActivePage = TabSheet5
    Align = alClient
    TabOrder = 0
    TabStop = False
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Rotina Original'
    end
    object TabSheet5: TTabSheet
      Caption = 'Rotina Saneada'
      ImageIndex = 1
      object SynEdit1: TSynEdit
        Left = 0
        Top = 0
        Width = 866
        Height = 403
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Consolas'
        Font.Pitch = fpFixed
        Font.Style = []
        TabOrder = 0
        BookMarkOptions.LeftMargin = 0
        BookMarkOptions.XOffset = 0
        BorderStyle = bsNone
        ExtraLineSpacing = 2
        Gutter.AutoSize = True
        Gutter.Font.Charset = DEFAULT_CHARSET
        Gutter.Font.Color = clWindowText
        Gutter.Font.Height = -11
        Gutter.Font.Name = 'Courier New'
        Gutter.Font.Style = []
        Gutter.LeftOffset = 12
        Gutter.ShowLineNumbers = True
        Gutter.Width = 23
        Gutter.Gradient = True
        Highlighter = SynSQLSyn1
        RightEdge = 120
        FontSmoothing = fsmClearType
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Rotina Aplicada'
      ImageIndex = 2
    end
  end
  object PageControl2: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 440
    Width = 874
    Height = 177
    ActivePage = TabSheet2
    Align = alBottom
    TabOrder = 1
    object TabSheet2: TTabSheet
      Caption = 'Resultados'
      object GroupBox3: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 860
        Height = 143
        Align = alClient
        Caption = ' Resultados '
        Padding.Left = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 0
        object Memo2: TMemo
          AlignWithMargins = True
          Left = 10
          Top = 18
          Width = 840
          Height = 115
          Align = alClient
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssBoth
          TabOrder = 0
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Par'#226'metros'
      ImageIndex = 1
      object GroupBox1: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 860
        Height = 143
        Align = alClient
        Caption = ' Par'#226'metros '
        Padding.Left = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 0
        object ListView1: TListView
          Left = 7
          Top = 15
          Width = 846
          Height = 121
          Align = alClient
          BorderStyle = bsNone
          Columns = <
            item
              Caption = 'Par'#226'metro'
              Width = 100
            end
            item
              AutoSize = True
              Caption = 'Valor'
            end>
          TabOrder = 0
          ViewStyle = vsReport
        end
      end
    end
  end
  object StatusBar1: TStatusBar
    AlignWithMargins = True
    Left = 3
    Top = 623
    Width = 874
    Height = 26
    Panels = <
      item
        Alignment = taCenter
        Text = 'Tamanho Original'
        Width = 105
      end
      item
        Width = 70
      end
      item
        Alignment = taCenter
        Text = 'Tamanho Sanitizado'
        Width = 115
      end
      item
        Width = 70
      end
      item
        Alignment = taCenter
        Text = 'Tamanho Consumido'
        Width = 125
      end
      item
        Width = 70
      end
      item
        Alignment = taCenter
        Text = 'Compress'#227'o'
        Width = 90
      end
      item
        Width = 70
      end
      item
        Alignment = taCenter
        Text = 'Tempo Banco de Dados'
        Width = 140
      end
      item
        Width = 50
      end>
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = True
    Properties.Strings = (
      'codepage=latin1')
    SQLHourGlass = True
    HostName = 'localhost'
    Port = 5432
    Database = 'lorencini'
    User = 'postgres'
    Password = 'postgres.'
    Protocol = 'postgresql'
    Left = 152
    Top = 16
  end
  object ExecProc: TZReadOnlyQuery
    Connection = ZConnection1
    Params = <>
    Left = 224
    Top = 16
  end
  object SynSQLSyn1: TSynSQLSyn
    Options.AutoDetectEnabled = False
    Options.AutoDetectLineLimit = 0
    Options.Visible = False
    CommentAttri.Foreground = clGreen
    ConditionalCommentAttri.Foreground = clGreen
    FunctionAttri.Foreground = clBlack
    IdentifierAttri.Foreground = clBlack
    KeyAttri.Foreground = clBlue
    KeyAttri.Style = []
    PLSQLAttri.Style = []
    StringAttri.Foreground = clRed
    SymbolAttri.Style = [fsBold]
    ProcNameAttri.Foreground = clFuchsia
    TableNameAttri.Foreground = clFuchsia
    VariableAttri.Foreground = clPurple
    SQLDialect = sqlPostgres
    Left = 168
    Top = 96
  end
end
