inherited IDefBrowse: TIDefBrowse
  Left = 326
  Top = 262
  Margins.Left = 5
  Margins.Top = 5
  Margins.Right = 5
  Margins.Bottom = 5
  Align = alClient
  Caption = 'Navegador de registros'
  ClientHeight = 428
  ClientWidth = 1046
  Constraints.MinWidth = 1056
  Font.Height = -19
  KeyPreview = False
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1064
  ExplicitHeight = 475
  PixelsPerInch = 120
  TextHeight = 25
  object StatusBar1: TStatusBar [0]
    AlignWithMargins = True
    Left = 4
    Top = 394
    Width = 1038
    Height = 30
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Panels = <
      item
        Alignment = taCenter
        Bevel = pbNone
        Text = 'Registro'
        Width = 63
      end
      item
        Alignment = taCenter
        Width = 75
      end
      item
        Alignment = taCenter
        Bevel = pbNone
        Text = 'de'
        Width = 38
      end
      item
        Alignment = taCenter
        Width = 75
      end
      item
        Width = 63
      end>
    ExplicitWidth = 1039
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 46
    Width = 1046
    Height = 106
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    BevelOuter = bvNone
    Padding.Left = 6
    Padding.Right = 6
    TabOrder = 1
    Visible = False
    OnResize = Panel1Resize
    ExplicitTop = 55
    object pctlFind: TPageControl
      Left = 6
      Top = 0
      Width = 1034
      Height = 106
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      ActivePage = tsQuery
      Align = alClient
      TabOrder = 0
      object tsQuery: TTabSheet
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Filtrar'
        TabVisible = False
        object BitBtn2: TBitBtn
          AlignWithMargins = True
          Left = 898
          Top = 13
          Width = 122
          Height = 53
          Margins.Left = 4
          Margins.Top = 13
          Margins.Right = 4
          Margins.Bottom = 28
          Action = actQueryProcess
          Align = alRight
          Caption = 'Executar'
          TabOrder = 0
        end
      end
      object tsFind: TTabSheet
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Pesquisar'
        ImageIndex = 1
        TabVisible = False
        object Label2: TLabel
          Left = 4
          Top = 4
          Width = 137
          Height = 25
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Valor procurado'
          Transparent = True
        end
        object BitBtn1: TBitBtn
          Left = 650
          Top = 24
          Width = 120
          Height = 40
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Action = actFind
          Caption = 'Pesquisar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object edSearch: TMaskEdit
          Left = 4
          Top = 30
          Width = 414
          Height = 32
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = ''
          OnChange = edSearchChange
          OnKeyPress = edSearchKeyPress
        end
      end
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 152
    Width = 1046
    Height = 238
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitTop = 161
    ExplicitHeight = 229
    object PageControl1: TPageControl
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 1038
      Height = 230
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      TabStop = False
      OnChange = PageControl1Change
      OnMouseDown = PageControl1MouseDown
      object TabSheet1: TTabSheet
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Colaboradores'
        object DBGrid1: TDBGrid
          Tag = 1
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 1021
          Height = 176
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
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
          TitleFont.Height = -19
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
    Left = 4
    Top = 4
    Width = 1038
    Height = 38
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    AutoSize = True
    BevelEdges = []
    BevelKind = bkNone
    DrawingStyle = dsGradient
    RowSize = 33
    TabOrder = 3
    ExplicitWidth = 1039
    object ToolBar1: TToolBar
      Left = 14
      Top = 2
      Width = 813
      Height = 34
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      AutoSize = True
      BorderWidth = 1
      ButtonHeight = 30
      ButtonWidth = 81
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
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = actNew
        AutoSize = True
      end
      object ToolButton5: TToolButton
        Left = 32
        Top = 0
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = actEdit
        AutoSize = True
      end
      object ToolButton9: TToolButton
        Left = 64
        Top = 0
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = actView
        AutoSize = True
      end
      object ToolButton6: TToolButton
        Left = 96
        Top = 0
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = actDel
        AutoSize = True
      end
      object ToolButton7: TToolButton
        Left = 128
        Top = 0
        Width = 10
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'ToolButton7'
        ImageIndex = 46
        Style = tbsSeparator
      end
      object ToolButton1: TToolButton
        Tag = 1
        Left = 138
        Top = 0
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = actLoc
        AutoSize = True
      end
      object ToolButton8: TToolButton
        Left = 170
        Top = 0
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = actQuery
        AutoSize = True
        Style = tbsCheck
      end
      object ToolButton3: TToolButton
        Left = 202
        Top = 0
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = actRefresh
        AutoSize = True
      end
      object ToolButton4: TToolButton
        Left = 234
        Top = 0
        Width = 10
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'ToolButton4'
        ImageIndex = 42
        Style = tbsSeparator
      end
      object tbOrder: TToolButton
        Left = 244
        Top = 0
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        AutoSize = True
        Caption = 'Ordem'
        DropdownMenu = pmOrder
        ImageIndex = 229
        Style = tbsTextButton
      end
      object tbReport: TToolButton
        Left = 329
        Top = 0
        Hint = 'Relat'#243'rios'
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'tbReport'
        DropdownMenu = pmRel
        ImageIndex = 286
      end
      object tbOpcao: TToolButton
        Left = 361
        Top = 0
        Hint = 'Tarefas'
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        AutoSize = True
        Caption = 'Op'#231#245'es'
        DropdownMenu = pmOpcao
        ImageIndex = 153
      end
      object ToolButton11: TToolButton
        Left = 393
        Top = 0
        Width = 10
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'ToolButton11'
        ImageIndex = 56
        Style = tbsSeparator
      end
      object ToolButton10: TToolButton
        Left = 403
        Top = 0
        Hint = 'Selecionar'
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
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
      SecondaryShortCuts.Strings = (
        'Ctrl+n')
      ShortCut = 114
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
      SecondaryShortCuts.Strings = (
        'F5')
      ShortCut = 46
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
