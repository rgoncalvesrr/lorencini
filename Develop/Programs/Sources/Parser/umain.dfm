object Main: TMain
  Left = 0
  Top = 0
  Caption = 'Aplicador de Procedures'
  ClientHeight = 853
  ClientWidth = 1151
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 120
  TextHeight = 17
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1145
    Height = 847
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    TabStop = False
    object TabSheet1: TTabSheet
      Caption = 'Aplica'#231#227'o'
      object GroupBox2: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1131
        Height = 640
        Align = alClient
        Caption = ' C'#243'digo Aplicado '
        Padding.Left = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 0
        object SynEdit1: TSynEdit
          Left = 7
          Top = 19
          Width = 1117
          Height = 614
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Consolas'
          Font.Pitch = fpVariable
          Font.Style = []
          TabOrder = 0
          BookMarkOptions.LeftMargin = 0
          BookMarkOptions.XOffset = 0
          BorderStyle = bsNone
          Gutter.AutoSize = True
          Gutter.Font.Charset = DEFAULT_CHARSET
          Gutter.Font.Color = clWindowText
          Gutter.Font.Height = -10
          Gutter.Font.Name = 'Courier New'
          Gutter.Font.Style = []
          Gutter.RightOffset = 3
          Gutter.ShowLineNumbers = True
          Gutter.Gradient = True
          Highlighter = SynSQLSyn1
          RightEdge = 120
          FontSmoothing = fsmClearType
        end
      end
      object GroupBox3: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 649
        Width = 1131
        Height = 163
        Align = alBottom
        Caption = ' Resultados '
        Padding.Left = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 1
        object Memo2: TMemo
          AlignWithMargins = True
          Left = 10
          Top = 22
          Width = 1111
          Height = 131
          Align = alClient
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssBoth
          TabOrder = 0
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Op'#231#245'es'
      ImageIndex = 1
      object GroupBox1: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1131
        Height = 191
        Align = alTop
        Caption = ' Lista de Par'#226'metros '
        Padding.Left = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 0
        object ListView1: TListView
          Left = 7
          Top = 19
          Width = 1117
          Height = 165
          Align = alClient
          BorderStyle = bsNone
          Columns = <
            item
              Caption = 'Par'#226'metro'
              Width = 131
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
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
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
    ParamCheck = False
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
