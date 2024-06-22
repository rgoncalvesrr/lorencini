object Main: TMain
  Left = 0
  Top = 0
  Margins.Left = 4
  Margins.Top = 4
  Margins.Right = 4
  Margins.Bottom = 4
  Caption = 'Aplicador de Procedures'
  ClientHeight = 815
  ClientWidth = 1188
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 120
  TextHeight = 17
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 4
    Top = 4
    Width = 1180
    Height = 538
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    ActivePage = TabSheet5
    Align = alClient
    TabOrder = 0
    TabStop = False
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Rotina Original'
    end
    object TabSheet5: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Rotina Saneada'
      ImageIndex = 1
      object SynEdit1: TSynEdit
        Left = 0
        Top = 0
        Width = 1172
        Height = 506
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Consolas'
        Font.Pitch = fpFixed
        Font.Style = []
        TabOrder = 0
        CodeFolding.GutterShapeSize = 11
        CodeFolding.CollapsedLineColor = clGrayText
        CodeFolding.FolderBarLinesColor = clGrayText
        CodeFolding.IndentGuidesColor = clGray
        CodeFolding.IndentGuides = True
        CodeFolding.ShowCollapsedLine = False
        CodeFolding.ShowHintMark = True
        UseCodeFolding = False
        BookMarkOptions.LeftMargin = 0
        BookMarkOptions.XOffset = 0
        BorderStyle = bsNone
        ExtraLineSpacing = 2
        Gutter.AutoSize = True
        Gutter.Font.Charset = DEFAULT_CHARSET
        Gutter.Font.Color = clWindowText
        Gutter.Font.Height = -14
        Gutter.Font.Name = 'Courier New'
        Gutter.Font.Style = []
        Gutter.LeftOffset = 15
        Gutter.RightOffset = 3
        Gutter.ShowLineNumbers = True
        Gutter.Width = 29
        Gutter.Gradient = True
        Highlighter = SynSQLSyn1
        RightEdge = 120
        FontSmoothing = fsmClearType
      end
    end
    object TabSheet6: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Rotina Aplicada'
      ImageIndex = 2
    end
  end
  object PageControl2: TPageControl
    AlignWithMargins = True
    Left = 4
    Top = 550
    Width = 1180
    Height = 221
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    ActivePage = TabSheet2
    Align = alBottom
    TabOrder = 1
    object TabSheet2: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Resultados'
      object GroupBox3: TGroupBox
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 1164
        Height = 181
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        Caption = ' Resultados '
        Padding.Left = 6
        Padding.Right = 6
        Padding.Bottom = 6
        TabOrder = 0
        object Memo2: TMemo
          AlignWithMargins = True
          Left = 12
          Top = 23
          Width = 1140
          Height = 146
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alClient
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
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
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Par'#226'metros'
      ImageIndex = 1
      object GroupBox1: TGroupBox
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 1164
        Height = 181
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        Caption = ' Par'#226'metros '
        Padding.Left = 6
        Padding.Right = 6
        Padding.Bottom = 6
        TabOrder = 0
        object ListView1: TListView
          Left = 8
          Top = 19
          Width = 1148
          Height = 154
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alClient
          BorderStyle = bsNone
          Columns = <
            item
              Caption = 'Par'#226'metro'
              Width = 125
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
    Left = 4
    Top = 779
    Width = 1180
    Height = 32
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Panels = <
      item
        Alignment = taCenter
        Text = 'Tamanho Original'
        Width = 131
      end
      item
        Width = 88
      end
      item
        Alignment = taCenter
        Text = 'Tamanho Sanitizado'
        Width = 144
      end
      item
        Width = 88
      end
      item
        Alignment = taCenter
        Text = 'Tamanho Consumido'
        Width = 156
      end
      item
        Width = 88
      end
      item
        Alignment = taCenter
        Text = 'Compress'#227'o'
        Width = 113
      end
      item
        Width = 88
      end
      item
        Alignment = taCenter
        Text = 'Tempo Banco de Dados'
        Width = 175
      end
      item
        Width = 63
      end>
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF16
    AutoEncodeStrings = True
    Catalog = ''
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
