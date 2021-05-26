inherited IDefBrowse: TIDefBrowse
  Left = 326
  Top = 262
  Align = alClient
  Caption = 'Navegador de registros'
  ClientHeight = 342
  ClientWidth = 837
  Constraints.MinWidth = 845
  KeyPreview = False
  OldCreateOrder = True
  ExplicitWidth = 853
  ExplicitHeight = 381
  PixelsPerInch = 96
  TextHeight = 15
  object StatusBar1: TStatusBar [0]
    AlignWithMargins = True
    Left = 3
    Top = 315
    Width = 831
    Height = 24
    Panels = <
      item
        Alignment = taCenter
        Bevel = pbNone
        Text = 'Registro'
        Width = 50
      end
      item
        Alignment = taCenter
        Width = 60
      end
      item
        Alignment = taCenter
        Bevel = pbNone
        Text = 'de'
        Width = 30
      end
      item
        Alignment = taCenter
        Width = 60
      end
      item
        Width = 50
      end>
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 44
    Width = 837
    Height = 85
    Align = alTop
    BevelOuter = bvNone
    Padding.Left = 5
    Padding.Right = 5
    TabOrder = 1
    Visible = False
    OnResize = Panel1Resize
    object pctlFind: TPageControl
      Left = 5
      Top = 0
      Width = 827
      Height = 85
      ActivePage = tsQuery
      Align = alClient
      TabOrder = 0
      object tsQuery: TTabSheet
        Caption = 'Filtrar'
        TabVisible = False
        ExplicitLeft = 3
        ExplicitTop = 4
        ExplicitWidth = 0
        ExplicitHeight = 0
        object BitBtn2: TBitBtn
          AlignWithMargins = True
          Left = 718
          Top = 10
          Width = 98
          Height = 43
          Margins.Top = 10
          Margins.Bottom = 22
          Action = actQueryProcess
          Align = alRight
          Caption = 'Executar'
          TabOrder = 0
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000A0A9A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF009B3B0A009B3B0A009B3B0A00993B0D000A0A
            9A000A2FE4000A0A9A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF009B3B0A00FAEAC200E9B171000A0A9A000A31
            E7000A30E5000A2FE4000A0A9A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF009B3B0A00FAE9C0000A0A9A000A32E9000A31
            E8000A31E7000A30E5000A2FE4000A0A9A00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF009B3B0A000A0A9A000A33EC000A33EB000A32
            E9000A31E8000A30E6000A30E5000A2FE4000A0A9A00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00C3B6B0000A0A9A000A0A9A000A0A9A000A0A9A000A32
            EA000A32E9000A31E8000A0A9A000A0A9A000A0A9A000A0A9A00FF00FF00FF00
            FF00FF00FF00FF00FF00A8644100C5835500FADEB100F7D6A5000A0A9A000A33
            EC000A32EA000A32E9000A0A9A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00B8978700A54E2000F6D4A800FBE2B700F6D19D000A0A9A000A34
            ED000A33EB000A32EA000A0A9A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00C5BEBB00A0491D00DDA87600F9E3C200F9DBAD00F4CB96000A0A9A000A34
            EE000A34ED000A33EB000A0A9A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00AE755900B86F4000F6D6AC00FBE9CD00F7D5A400F2C68F000A0A9A000A0A
            9A000A0A9A000A0A9A000A0A9A00FF00FF00FF00FF00FF00FF00FF00FF00BDA7
            9B009F451600EBBC8400FAE9D100FBE8CB00F6D09C00EFC18700E9B27200D497
            5800A7653C009B441900C5BEBB00FF00FF00FF00FF00FF00FF00C7C4C300A453
            2B00CD8E5B00F5D5AA00FBF5E900FAE2BE00F3CB9500EDBC8000E7AD6A00DF9C
            5500B8743D00924D2B00AE725400FF00FF00FF00FF00FF00FF00B3856F00AC5E
            3000EFC18700FAEEDE00FCF9F500F7D6A900F1C58D00EBB77800E4A86200DF99
            4E00C17939009B582E0093411B00C0ADA400FF00FF00FF00FF009D3E0F009B3B
            0A009B3B0A009B3B0A009B3B0A009B3B0A009B3B0A009B3B0A009B3B0A009B3B
            0A009A3B0B00983B0E00973B0F00A65B3600FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
      end
      object tsFind: TTabSheet
        Caption = 'Pesquisar'
        ImageIndex = 1
        TabVisible = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Label2: TLabel
          Left = 3
          Top = 3
          Width = 84
          Height = 15
          Caption = 'Valor procurado'
          Transparent = True
        end
        object BitBtn1: TBitBtn
          Left = 520
          Top = 19
          Width = 96
          Height = 32
          Action = actFind
          Caption = 'Pesquisar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A00FF00
            FF000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A00FF00FF00BEC2
            C3007EA3AA000A0A0A00A9A9A900C4C4C400696969002C2C2C000A0A0A007883
            9A000A0A0A00A9A9A900C4C4C400696969002C2C2C000A0A0A00A4ADB4004E96
            A50077E0E6000A0A0A00121212001E1E1E000B0B0B000A0A0A000A0A0A000A90
            C2000A0A0A0015151500222222000B0B0B000A0A0A000A0A0A00417B950084F1
            F900A1FCFC006D4D4F0074444000E0E4D800EAC8A3009F674D006A4040000CAF
            DF0062454A00A0725E00EFE0D100EBC8A3009F674D00704140003F94AD0099F7
            FC0097ECF9006B676E0074444000F4E5D400E8C5A000865043005C535C0012BA
            EB00505D6A0085554C00F5E5D400EAC5A000865043007D5655004B9DB20087E9
            F70083EBF70068929B0074444000F5E4D300E0B4880071434000416B81000A9C
            D1003A738D0074444000F5E4D300E1B4880074434000937777003B8BA70082EF
            F90096FBFC0075CFD9006E3E3E00734444006B3B3B006B3B3B000B0B0B000A0A
            0A000E0D0D006C3C3C006B3B3B006B3B3B006C3B3B00B2A7A7003D8FA90096F6
            FC009EF1FA0073E2F7006C3B3B00F6E6D600E9BF9500C88759000A0A0A00C4C4
            C4000C0C0C00E3C6A900CA9B7600A5694B006C3B3B00FF00FF004C9DB2008CEC
            F90080E6F60064E3F8006B3D3D00724343006B3B3B006B3B3B00141010000A0A
            0A00231614006C3B3B006C3B3B006C3B3B006C3B3B00FF00FF003C8FAA0080EC
            F8008FFAFC0072EEFC0058E4FC000A0A0A00C4C4C400696969000A0A0A000AA2
            D2000A0A0A00C4C4C400696969000A0A0A00FF00FF00FF00FF003A8BA60092F5
            FB00B4FBFC009AF7FC0085F2FC000A0A0A000A0A0A000A0A0A001D1D1D001DBF
            E9000A0A0A000A0A0A000A0A0A001D1D1D00FF00FF00FF00FF004F9DB000ADFC
            FC00A0FCFC008AF7FC007AF1FC006BECFC005BE7FC004CE1FC003CDEFC002CDA
            FC0018D2F90018679500BBBBBE00FF00FF00FF00FF00FF00FF005DB1BB00A6FC
            FC0099FBFC008BF7FC007BF1FC006BECFC005BE7FC004BE1FC003BDCFC002AD7
            FC0019DFFC001685B200BBBBBE00FF00FF00FF00FF00FF00FF005497A4009FFC
            FB00A0FCFC008CF8FC007BF1FC006BECFC005BE7FC004BE1FC003BDDFC002BDE
            FC0019D9FC0030709500C3C4C400FF00FF00FF00FF00FF00FF00AAB6BB0057AA
            AD0084E3E3008CF8FB0081F7FC0071F5FC0060F0FC004EE8FC003BDFFC0024BF
            E20032789F00A5A8AF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C2C5
            C6008CB2B3005CA7AE004EAAB80045ADC2003EA7C2003F97B4005189A4008194
            A500C0C1C300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
        object edSearch: TMaskEdit
          Left = 3
          Top = 24
          Width = 331
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnChange = edSearchChange
          OnKeyPress = edSearchKeyPress
        end
      end
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 129
    Width = 837
    Height = 183
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object PageControl1: TPageControl
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 831
      Height = 177
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      TabStop = False
      OnChange = PageControl1Change
      OnMouseDown = PageControl1MouseDown
      object TabSheet1: TTabSheet
        Caption = 'Colaboradores'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object DBGrid1: TDBGrid
          Tag = 1
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 817
          Height = 141
          Align = alClient
          BorderStyle = bsNone
          Ctl3D = False
          DataSource = DataSource1
          DefaultDrawing = False
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          PopupMenu = pmOpcao
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Pitch = fpVariable
          TitleFont.Style = []
          OnDrawColumnCell = DBGridDrawColumnCell
          OnDblClick = DBGridDblClick
          OnEnter = DBGridEnter
          OnKeyPress = DBGridKeyPress
        end
      end
    end
  end
  object ctrlBarTop: TControlBar [3]
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 831
    Height = 38
    Align = alTop
    AutoSize = True
    BevelEdges = []
    BevelKind = bkNone
    DrawingStyle = dsGradient
    TabOrder = 3
    object ToolBar1: TToolBar
      Left = 11
      Top = 2
      Width = 818
      Height = 34
      AutoSize = True
      BorderWidth = 1
      ButtonHeight = 30
      ButtonWidth = 72
      Caption = 'ToolBar1'
      DisabledImages = Resources.medium_d
      DrawingStyle = dsGradient
      EdgeInner = esNone
      EdgeOuter = esNone
      HotImages = Resources.medium_h
      Images = Resources.medium_n
      List = True
      ParentShowHint = False
      AllowTextButtons = True
      ShowHint = True
      TabOrder = 0
      object ToolButton2: TToolButton
        Left = 0
        Top = 0
        Action = actNew
        AutoSize = True
      end
      object ToolButton5: TToolButton
        Left = 32
        Top = 0
        Action = actEdit
        AutoSize = True
      end
      object ToolButton9: TToolButton
        Left = 64
        Top = 0
        Action = actView
        AutoSize = True
      end
      object ToolButton6: TToolButton
        Left = 96
        Top = 0
        Action = actDel
        AutoSize = True
      end
      object ToolButton7: TToolButton
        Left = 128
        Top = 0
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 46
        Style = tbsSeparator
      end
      object ToolButton1: TToolButton
        Tag = 1
        Left = 136
        Top = 0
        Action = actLoc
        AutoSize = True
      end
      object ToolButton8: TToolButton
        Left = 168
        Top = 0
        Action = actQuery
        AutoSize = True
        Style = tbsCheck
      end
      object ToolButton3: TToolButton
        Left = 200
        Top = 0
        Action = actRefresh
        AutoSize = True
      end
      object ToolButton4: TToolButton
        Left = 232
        Top = 0
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 42
        Style = tbsSeparator
      end
      object tbOrder: TToolButton
        Left = 240
        Top = 0
        AutoSize = True
        Caption = 'Ordem'
        DropdownMenu = pmOrder
        ImageIndex = 229
        Style = tbsTextButton
      end
      object tbReport: TToolButton
        Left = 316
        Top = 0
        Hint = 'Relat'#243'rios'
        Caption = 'tbReport'
        DropdownMenu = pmRel
        ImageIndex = 286
      end
      object tbOpcao: TToolButton
        Left = 348
        Top = 0
        Hint = 'Tarefas'
        AutoSize = True
        Caption = 'Op'#231#245'es'
        DropdownMenu = pmOpcao
        ImageIndex = 153
      end
      object ToolButton11: TToolButton
        Left = 380
        Top = 0
        Width = 8
        Caption = 'ToolButton11'
        ImageIndex = 56
        Style = tbsSeparator
      end
      object ToolButton10: TToolButton
        Left = 388
        Top = 0
        Hint = 'Selecionar'
        Action = actOk
        AutoSize = True
      end
    end
  end
  inherited alDef: TActionList
    Left = 328
    Top = 136
    inherited actOk: TAction
      Caption = 'Selecionar'
    end
    object actRefresh: TAction [2]
      Caption = 'Atualizar'
      Hint = 'Atualiza lista de registros'
      ImageIndex = 307
      ShortCut = 119
      OnExecute = actRefreshExecute
    end
    object actRel: TAction [3]
      Caption = 'Relat'#243'rios'
      ImageIndex = 414
      ShortCut = 16464
    end
    object actLoc: TAction [4]
      Tag = 1
      Caption = 'Localizar'
      GroupIndex = 1
      Hint = 'Exibe/Oculta painel de localiza'#231#227'o de registros'
      ImageIndex = 136
      ShortCut = 16454
      OnExecute = actLocExecute
    end
    object actFind: TAction [5]
      Caption = 'Pesquisar'
      Enabled = False
      ImageIndex = 334
      ShortCut = 16460
      OnExecute = actFindExecute
    end
    object actNew: TAction [6]
      Tag = 1
      Caption = 'Novo'
      ImageIndex = 2
      ShortCut = 114
      SecondaryShortCuts.Strings = (
        'Ctrl+n')
      OnExecute = actManExecute
    end
    object actEdit: TAction [7]
      Tag = 2
      Caption = 'Editar'
      ImageIndex = 274
      ShortCut = 113
      OnExecute = actManExecute
    end
    object actDel: TAction [8]
      Caption = 'Excluir'
      ImageIndex = 100
      ShortCut = 46
      SecondaryShortCuts.Strings = (
        'F5')
      OnExecute = actDelExecute
    end
    object actQuery: TAction [9]
      Caption = 'Filtrar'
      GroupIndex = 1
      ImageIndex = 133
      ShortCut = 16465
      OnExecute = actLocExecute
    end
    object actQueryProcess: TAction [10]
      Caption = 'Executar'
      ImageIndex = 134
      ShortCut = 16397
      OnExecute = actQueryProcessExecute
    end
    object actView: TAction [11]
      Tag = 3
      Caption = 'Visualizar'
      ImageIndex = 401
      ShortCut = 119
      OnExecute = actManExecute
    end
    object actShowSQL: TAction [12]
      Caption = 'Inspe'#231#227'o SQL...'
      ImageIndex = 398
      ShortCut = 16496
      OnExecute = actShowSQLExecute
    end
    object actRGrid: TAction [13]
      Caption = 'Redimensionar Grade'
      ImageIndex = 194
      OnExecute = actRGridExecute
    end
    inherited actClose: TAction
      ShortCut = 27
    end
    object actCkAll: TAction
      Caption = 'Todos'
      ImageIndex = 67
    end
    object actUCkAll: TAction
      Caption = 'Nenhum'
      ImageIndex = 69
    end
    object actInverseAll: TAction
      Caption = 'Inverter Todos'
      ImageIndex = 256
    end
    object actInverse: TAction
      Caption = 'Inverter'
      ImageIndex = 193
    end
    object actLog: TAction
      Caption = 'Registro'
      ImageIndex = 330
      ShortCut = 16466
      OnExecute = actLogExecute
    end
  end
  object pmRel: TPopupMenu
    Left = 368
    Top = 136
  end
  object pmOrder: TPopupMenu
    Left = 410
    Top = 134
  end
  object alRunTime: TActionList
    Images = Resources.small_n
    Left = 458
    Top = 134
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = IBrwSrc
    Left = 256
    Top = 128
  end
  object IBrwSrc: TZQuery
    UpdateObject = zIBrwSrc
    Params = <>
    FetchRow = 50
    Left = 200
    Top = 128
  end
  object pmOpcao: TPopupMenu
    Images = Resources.medium_n
    Left = 512
    Top = 136
    object Inspecionar1: TMenuItem
      Action = actLog
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object VerSQL1: TMenuItem
      Action = actShowSQL
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object RedimensionarGrade1: TMenuItem
      Action = actRGrid
    end
  end
  object zIBrwSrc: TZUpdateSQL
    UseSequenceFieldForRefreshSQL = False
    Left = 152
    Top = 128
  end
end
