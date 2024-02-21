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
        ExplicitTop = 7
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
        end
      end
      object tsFind: TTabSheet
        Caption = 'Pesquisar'
        ImageIndex = 1
        TabVisible = False
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
