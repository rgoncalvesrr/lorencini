inherited IDefFind: TIDefFind
  Left = 433
  Top = 244
  Caption = 'Pesquisar'
  ClientHeight = 386
  ClientWidth = 631
  OldCreateOrder = True
  ExplicitWidth = 647
  ExplicitHeight = 425
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel [0]
    Left = 0
    Top = 44
    Width = 631
    Height = 61
    Align = alTop
    BevelOuter = bvNone
    Caption = '`'
    TabOrder = 0
    OnResize = Panel1Resize
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 625
      Height = 48
      Align = alTop
      Caption = ' Pesquisar '
      TabOrder = 0
      object Label2: TLabel
        AlignWithMargins = True
        Left = 5
        Top = 20
        Width = 84
        Height = 23
        Align = alLeft
        Caption = 'Valor procurado'
        Transparent = True
        Layout = tlCenter
        ExplicitHeight = 15
      end
      object edSearch: TMaskEdit
        AlignWithMargins = True
        Left = 95
        Top = 20
        Width = 422
        Height = 23
        Align = alClient
        TabOrder = 0
        OnKeyPress = edSearchKeyPress
      end
      object BitBtn1: TBitBtn
        AlignWithMargins = True
        Left = 523
        Top = 20
        Width = 97
        Height = 23
        Action = actFind
        Align = alRight
        Caption = 'Pesquisar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000A0A
          0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A00FF00FF00FF00FF000A0A
          0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A00FF00FF00FF00FF000A0A
          0A00A9A9A900C4C4C400696969002C2C2C000A0A0A00FF00FF00FF00FF000A0A
          0A00A9A9A900C4C4C400696969002C2C2C000A0A0A00FF00FF00FF00FF000A0A
          0A00A9A9A900C4C4C400696969002C2C2C000A0A0A00FF00FF00FF00FF000A0A
          0A00A9A9A900C4C4C400696969002C2C2C000A0A0A00FF00FF00FF00FF000A0A
          0A00121212001E1E1E000B0B0B000A0A0A000A0A0A00FF00FF00FF00FF000A0A
          0A0015151500222222000B0B0B000A0A0A000A0A0A00FF00FF00FF00FF007549
          4900A0725E00EFE1D200EBC8A3009F674D0070414000FF00FF00FF00FF007549
          4900A0725E00EFE1D200EBC8A3009F674D0070414000FF00FF00FF00FF008461
          610085554C00F5E5D400EAC5A000865043007D565500FF00FF00FF00FF008461
          610085554C00F5E5D400EAC5A000865043007D565500FF00FF00FF00FF009A82
          820074444000F5E4D300E1B488007443400093777700FF00FF00FF00FF009A82
          820074444000F5E4D300E1B488007443400093777700FF00FF00FF00FF00B7AE
          AE006C3C3C00E9C8A800D19669006C3C3C00B2A7A700FF00FF00FF00FF00B7AE
          AE006C3C3C00E9C8A800D19669006C3C3C00B2A7A700FF00FF00FF00FF00FF00
          FF006E3E3E00734444006B3B3B006B3B3B000B0B0B000A0A0A000A0A0A000E0D
          0D006C3C3C006B3B3B006B3B3B006C3B3B00FF00FF00FF00FF00FF00FF00FF00
          FF006C3B3B00F1D8BE00E8BF9300C78657000A0A0A00C4C4C400696969001010
          1000F9DEB700E2B38600BD7B51006C3B3B00FF00FF00FF00FF00FF00FF00FF00
          FF006C3B3B00F6E6D600E9BF9500C88759000A0A0A00C4C4C400696969000C0C
          0C00E3C6A900CA9B7600A5694B006C3B3B00FF00FF00FF00FF00FF00FF00FF00
          FF006D3D3D00724343006B3B3B006B3B3B00141010000A0A0A000A0A0A002416
          14006C3B3B006C3B3B006C3B3B006C3B3B00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000A0A0A00C4C4C400696969000A0A0A00FF00FF00FF00FF000A0A
          0A00C4C4C400696969000A0A0A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000A0A0A000A0A0A000A0A0A001D1D1D00FF00FF00FF00FF000A0A
          0A000A0A0A000A0A0A001D1D1D00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        ExplicitHeight = 21
      end
    end
  end
  object PageControl1: TPageControl [1]
    AlignWithMargins = True
    Left = 3
    Top = 108
    Width = 625
    Height = 275
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Grade de Dados'
      object DBGrid1: TDBGrid
        Tag = 1
        Left = 0
        Top = 0
        Width = 617
        Height = 245
        Align = alClient
        BorderStyle = bsNone
        Ctl3D = False
        DataSource = dsIBrowse
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnDblClick = actOkExecute
      end
    end
  end
  object ControlBar1: TControlBar [2]
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 625
    Height = 38
    Align = alTop
    AutoSize = True
    BevelEdges = []
    BevelKind = bkNone
    DrawingStyle = dsGradient
    TabOrder = 2
    object ToolBar1: TToolBar
      Left = 11
      Top = 2
      Width = 612
      Height = 34
      AutoSize = True
      BorderWidth = 1
      ButtonHeight = 30
      ButtonWidth = 89
      Caption = 'ToolBar1'
      DisabledImages = Resources.medium_d
      DrawingStyle = dsGradient
      EdgeInner = esNone
      EdgeOuter = esNone
      HotImages = Resources.medium_h
      Images = Resources.medium_n
      List = True
      ShowCaptions = True
      TabOrder = 0
      object tbOrder: TToolButton
        Left = 0
        Top = 0
        AutoSize = True
        Caption = 'Ordem'
        DropdownMenu = pmOrder
        ImageIndex = 229
      end
      object ToolButton4: TToolButton
        Left = 76
        Top = 0
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object ToolButton1: TToolButton
        Left = 84
        Top = 0
        Action = actOk
        AutoSize = True
        Caption = 'Selecionar'
      end
      object ToolButton2: TToolButton
        Left = 177
        Top = 0
        Action = actCancel
        AutoSize = True
      end
    end
  end
  inherited alDef: TActionList
    object actFind: TAction
      Caption = 'Pesquisar'
      ImageIndex = 332
      OnExecute = actFindExecute
    end
  end
  object IBrwSrc: TZReadOnlyQuery
    BeforeOpen = IBrwSrcBeforeOpen
    AfterOpen = IBrwSrcAfterOpen
    Params = <>
    Left = 120
    Top = 24
  end
  object pmOrder: TPopupMenu
    Left = 154
    Top = 22
  end
  object alRunTime: TActionList
    Images = Resources.small_n
    Left = 186
    Top = 22
  end
  object dsIBrowse: TDataSource
    DataSet = IBrwSrc
    Left = 80
    Top = 24
  end
end
