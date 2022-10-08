inherited IChart: TIChart
  Align = alClient
  BorderStyle = bsNone
  Caption = 'IChart'
  ClientHeight = 506
  ClientWidth = 736
  Padding.Left = 3
  Padding.Top = 3
  Padding.Right = 3
  Padding.Bottom = 3
  Visible = True
  ExplicitWidth = 736
  ExplicitHeight = 506
  PixelsPerInch = 96
  TextHeight = 15
  object ControlBar1: TControlBar [0]
    Left = 3
    Top = 3
    Width = 730
    Height = 38
    Align = alTop
    AutoSize = True
    BevelInner = bvNone
    BevelKind = bkNone
    DrawingStyle = dsGradient
    TabOrder = 0
    Visible = False
    OnResize = ControlBar1Resize
    object ToolBar1: TToolBar
      Left = 16
      Top = 2
      Width = 711
      Height = 34
      AutoSize = True
      BorderWidth = 1
      ButtonHeight = 30
      ButtonWidth = 80
      Caption = 'ToolBar1'
      DisabledImages = Resources.medium_d
      DrawingStyle = dsGradient
      EdgeInner = esNone
      EdgeOuter = esNone
      HotImages = Resources.medium_h
      Images = Resources.medium_n
      List = True
      AllowTextButtons = True
      TabOrder = 0
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Action = actChartSetMarks
        AllowAllUp = True
        Style = tbsTextButton
      end
      object ToolButton2: TToolButton
        Left = 77
        Top = 0
        Action = actChartSet3D
        AllowAllUp = True
        Style = tbsTextButton
      end
      object tbZoomWindow: TToolButton
        Left = 130
        Top = 0
        Action = actZoomWindow
        Style = tbsTextButton
      end
      object ToolButton3: TToolButton
        Left = 214
        Top = 0
        Width = 8
        Caption = 'ToolButton3'
        ImageIndex = 279
        Style = tbsSeparator
      end
      object ToolButton5: TToolButton
        Left = 222
        Top = 0
        Action = actDataGrid
        AllowAllUp = True
        Style = tbsTextButton
      end
      object ToolButton4: TToolButton
        Left = 294
        Top = 0
        Action = actDataRefresh
      end
    end
  end
  object PageControl1: TPageControl [1]
    Left = 3
    Top = 41
    Width = 730
    Height = 462
    ActivePage = tsChart
    Align = alClient
    TabOrder = 1
    object tsChart: TTabSheet
      Caption = 'tsChart'
      OnResize = tsChartResize
      object DBChart1: TDBChart
        Left = 0
        Top = 0
        Width = 722
        Height = 432
        BackWall.AutoHide = True
        BackWall.Pen.Style = psDash
        BackWall.Pen.SmallDots = True
        Border.EndStyle = esRound
        Gradient.EndColor = clWhite
        Gradient.StartColor = 16775408
        Gradient.Visible = True
        MarginBottom = 3
        MarginTop = 3
        Title.Gradient.Visible = True
        Title.Text.Strings = (
          'Evolu'#231#227'o Mensal')
        BottomAxis.Grid.SmallDots = True
        Frame.Style = psDash
        Frame.SmallDots = True
        LeftAxis.AxisValuesFormat = '0'
        LeftAxis.Grid.Color = clSilver
        LeftAxis.Grid.SmallDots = True
        LeftAxis.MaximumOffset = 15
        LeftAxis.Ticks.SmallDots = True
        Legend.Alignment = laBottom
        Legend.CheckBoxes = True
        Legend.Font.Shadow.Smooth = False
        Legend.Shadow.HorizSize = 0
        Legend.Shadow.VertSize = 0
        Legend.ShapeStyle = fosRoundRectangle
        Legend.VertSpacing = 5
        RightAxis.Grid.Color = clSilver
        RightAxis.Grid.SmallDots = True
        TopAxis.Grid.Color = clSilver
        TopAxis.Grid.SmallDots = True
        Zoom.Animated = True
        Zoom.Pen.Color = 8404992
        OnAfterDraw = DBChart1AfterDraw
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          722
          432)
        PrintMargins = (
          15
          31
          15
          31)
        object sbShowHideControlBar: TSpeedButton
          Left = 8
          Top = 3
          Width = 26
          Height = 26
          Cursor = crHandPoint
          Action = actShowHideToolBar
          AllowAllUp = True
          GroupIndex = 36
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF001275A40046CEF50011BBF2000ACCFC001FD3FC0029C8F5001275A4008F76
            760095838500BDB8B800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF001275A4003ECDF50010BBF2000ACCFC001ED2FC0023C5F5001275
            A4001275A4000E699800206F990076A0B500FF00FF00FF00FF00FF00FF00C3C3
            C300805F5F00714141001275A40037CBF5000EBAF1000ACCFC0023D1FB002ABD
            F0002AB4EA0021B1E7001195D2000A73AB002D7DA300FF00FF00FF00FF00C4C4
            C4007A5F5F007A4D4D00B79393001275A4002ECAF50016B9EF004CD1F70051DA
            FC0040D6FC002ED3FC001DD0FC000CB3EE000A75AE006B9BB200FF00FF00FF00
            FF00FF00FF00704C4C009E787800C3A6A6001275A40056DAFB0064DEFC0052DA
            FC0040D6FB0033B3D90032BDE00011CFFC000A9CDD001B739F00A29292009680
            8000A7999900734F4F009D7A7A00D3BDBD001275A4006DD9F40065DEFC0050D9
            FC0021AAD500176A96001569950021ADD2000ABCF3000B71A5006E4949007E53
            5300794F4F00936D6D00D1BCBC00C4ACAC001367900070D1EC0066DEFC0030AA
            D5001D719900B28F8F007D5355001665920010AAD7000C7BAB00683D3D00C1A6
            A600D4BFBF00DBCACA00E4D6D600947272002F6F920063BDDB0067DFFC002CA7
            D900156B9800B99EA200B48F8F00A77F8100196996000E6A9900673C3C00C9AF
            AF00DECCCC00E4D7D700EEE4E400937171007C7F88002A86AE0072D8F30052D6
            FA001B93CC001C719C00B0939700B087870094686A003D5971006C454500936F
            6F00916D6D00AD929200F1EAEA00D3C6C600653A3A0050768F002D89B20062C8
            E4004FD9FB0021A8D900176B9700785155007C4E4E00754F4F00978383008364
            6400937D7D0069434300BCA7A700FCFCFC00D2C5C5008D696900626A79001F72
            9C001474A400107AAC000E6A99004E758E0083646400A0939300FF00FF00FF00
            FF00FF00FF0076575700B1999900F7F3F300F6F1F100F5EEEE00EADFDF00D9C6
            C600CFB6B600936C6C007F646400FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF008E7676007F555500E0D2D200E9DEDE00DFD1D1009C7D7D009D7D7D00CEB7
            B700C9AEAE00BA9999007141410093808000FF00FF00FF00FF00FF00FF00C2C0
            C0006D46460088626200D8C6C600E6D9D900926F6F007B5C5C0075525200926D
            6D00CCB0B000B7959500774B4B0078555500FF00FF00FF00FF00FF00FF00FF00
            FF00C2BFBF007F606000704444009E7D7D0065393900C4C2C200BAB4B4006537
            3700916A6A00683A3A0085696900C4C2C200FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00A99C9C007D5D5D0083646400FF00FF00FF00FF007D5D
            5D0081626200ADA1A100FF00FF00FF00FF00FF00FF00FF00FF00}
          ParentShowHint = False
          ShowHint = True
        end
        object sbShowHideZoomWindow: TSpeedButton
          Left = 686
          Top = 3
          Width = 26
          Height = 26
          Cursor = crHandPoint
          Action = actZoomWindow
          AllowAllUp = True
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          GroupIndex = 145
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006B3B3B006B3B
            3B006B3B3B006B3B3B006B3B3B006B3B3B006B3B3B006B3B3B006B3B3B006B3B
            3B006B3B3B006B3B3B006B3B3B006B3B3B006B3B3B006B3B3B006B3B3B00BDA6
            A200FAF5EB00FAF3E800F9F2E400FAF0E000F9EEDC00F9ECD900F9EBD500FAEA
            D000FAE8CD00F9E7C900F9E6C500F9E4C200FBE4BF006B3B3B006B3B3B00BEA7
            A300FCF7EF00FBF6EB00FCF4E800FBF3E400FBF1E000FCEFDC00FBEED800FBEC
            D300FBEAD000FCE9CC00FBE8C800FBE6C400FBE5C1006B3B3B006B3B3B00BEA7
            A400FCF7F100FBF6EE00FBF6EA00FCF4E600FCF3E300FBF1DF00FBEFDA00FBEE
            D600FCEBD100FBE9CE00FCE9CB00FBE7C600FBE5C3006B3B3B006B3B3B00BEA8
            A600FCF8F400FBF7F000FBF7EC00FCF5E900FCF4E500FBF2E200FCF0DD00FCEE
            D900FCEDD400FBEBD100FBEACD00FCE8C900FCE7C6006B3B3B006B3B3B00BEA8
            A600FCF9F600FCF8F200FBF7EF00FBF6EB00FCF5E700FBF3E400FBF1E000FCEF
            DC00FCEED800FBECD300FBEBCF00FCE9CC00FBE7C8006B3B3B006B3B3B00BEA8
            A700FCFAF700FCF9F400FCF8F200FBF7EE00FBF6EA00FCF4E500FCF2E300FCF0
            DF00FCEFDA00FCEDD600FCECD100FBEACE00FBE9CA006B3B3B006B3B3B00BEA8
            A800FCFBF800FCF9F700FCF8F300FBF7EF00FCF6ED00FCF4E900FBF4E400FCF2
            E100FCF0DD00FCEED900FCEDD400FBEBD100FCE9CD006B3B3B006B3B3B00BEA9
            A800FCFBFA00FCFAF700FCF9F500FCF8F200FBF7EF00FCF6EB00FCF4E700FCF2
            E400FCF1DF00FBEFDB00FBEED700FCECD200FBEBCF006B3B3B006B3B3B00BEA9
            A900BEA8A800BEA8A700BEA8A600BEA7A400BEA6A200BEA6A000BEA49E00BEA4
            9C00BEA39A00BDA29800BDA19600BEA09300BE9F90006B3B3B006B3B3B00FACA
            9900F8C49100F6BF8700F2B77D00EEAF7200E9A76500E59F5800E1964B00DD8D
            3D00D8863100D47E2700D1761B00CE711300CC6C0C006B3B3B006B3B3B00FAC9
            9900F8C59200F6BF8900F2B87E00EEB07400EAA86600E69F5900E1974C00DC8E
            3E00D9863200D57E2700D1771C00CF711400CC6C0C006B3B3B006B3B3B006B3B
            3B006B3B3B006B3B3B006B3B3B006B3B3B006B3B3B006B3B3B006B3B3B006B3B
            3B006B3B3B006B3B3B006B3B3B006B3B3B006B3B3B006B3B3B00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          ParentShowHint = False
          ParentBiDiMode = False
          ShowHint = True
        end
        object pnDataEmpty: TPanel
          Left = 8
          Top = 376
          Width = 56
          Height = 49
          BevelOuter = bvNone
          Caption = ':-( N'#227'o h'#225' dados suficientes para plotar o gr'#225'fico!'
          Color = 16776178
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Segoe UI'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          Visible = False
        end
      end
    end
    object tsData: TTabSheet
      Caption = 'tsData'
      ImageIndex = 1
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 722
        Height = 432
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 0
        OnChange = PageControl2Change
        object TabSheet1: TTabSheet
          Caption = 'TabSheet1'
          object DataGrid: TJvDBUltimGrid
            Left = 0
            Top = 0
            Width = 714
            Height = 402
            Align = alClient
            BorderStyle = bsNone
            DataSource = dsDataGrid
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Pitch = fpVariable
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'Segoe UI'
            TitleFont.Pitch = fpVariable
            TitleFont.Style = []
            AutoAppend = False
            AlternateRowColor = 14281433
            AutoSizeColumns = True
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            CanDelete = False
            EditControls = <>
            RowsHeight = 18
            TitleRowHeight = 21
            BooleanEditor = False
          end
        end
      end
    end
  end
  inherited alDef: TActionList
    Images = Resources.small_n
    Left = 120
    Top = 72
    object actChartSetMarks: TAction
      Caption = 'Marcas'
      Checked = True
      GroupIndex = 2
      ImageIndex = 145
      OnExecute = actChartSetMarksExecute
    end
    object actChartSet3D: TAction
      Caption = '3D'
      Checked = True
      GroupIndex = 3
      ImageIndex = 278
      OnExecute = actChartSet3DExecute
    end
    object actDataRefresh: TAction
      Caption = 'Atualizar'
      Enabled = False
      ImageIndex = 306
      OnExecute = actDataRefreshExecute
    end
    object actDataGrid: TAction
      Caption = 'Dados'
      Enabled = False
      GroupIndex = 8
      ImageIndex = 94
      OnExecute = actDataGridExecute
    end
    object actShowHideToolBar: TAction
      GroupIndex = 36
      Hint = 'Exibir Barra de Tarefas'
      ImageIndex = 258
      OnExecute = actShowHideToolBarExecute
    end
    object actZoomWindow: TAction
      Caption = 'Destacar'
      GroupIndex = 145
      ImageIndex = 410
      OnExecute = actZoomWindowExecute
    end
  end
  object dsDataGrid: TDataSource
    OnDataChange = dsDataGridDataChange
    Left = 176
    Top = 72
  end
end
