inherited SysMenuEditor: TSysMenuEditor
  Caption = 'Manuten'#231#227'o do Menu'
  ClientHeight = 414
  ClientWidth = 655
  ExplicitWidth = 661
  ExplicitHeight = 443
  PixelsPerInch = 96
  TextHeight = 15
  inherited bvDiv: TBevel
    Width = 655
    ExplicitWidth = 655
  end
  object trMenu: TTreeView [1]
    AlignWithMargins = True
    Left = 3
    Top = 122
    Width = 649
    Height = 289
    Align = alClient
    BorderStyle = bsNone
    DragMode = dmAutomatic
    Images = Resources.small_n
    Indent = 27
    PopupMenu = PopupMenu1
    ShowButtons = False
    ShowLines = False
    TabOrder = 1
    OnDeletion = trMenuDeletion
    OnDragDrop = trMenuDragDrop
    OnDragOver = trMenuDragOver
    OnEdited = trMenuEdited
    OnMouseMove = trMenuMouseMove
    OnStartDrag = trMenuStartDrag
  end
  inherited Panel1: TPanel
    Width = 655
    ExplicitWidth = 655
    inherited Shape1: TShape
      Width = 594
      ExplicitLeft = 46
      ExplicitTop = 0
      ExplicitWidth = 609
      ExplicitHeight = 70
    end
    inherited Image1: TImage
      Height = 64
      ExplicitLeft = 6
      ExplicitTop = 2
      ExplicitHeight = 66
    end
    inherited pnTitle: TPanel
      Width = 594
      ExplicitWidth = 594
      inherited Label1: TLabel
        Width = 115
        Caption = 'Editor de Menu'
        ExplicitWidth = 115
      end
      inherited Label2: TLabel
        Width = 295
        Caption = 'Configurador do menu da tela de abertura do sistema'
        ExplicitWidth = 295
      end
    end
  end
  object ControlBar1: TControlBar [3]
    AlignWithMargins = True
    Left = 3
    Top = 78
    Width = 649
    Height = 38
    Align = alTop
    AutoSize = True
    BevelKind = bkNone
    DrawingStyle = dsGradient
    TabOrder = 2
    object ToolBar1: TToolBar
      Left = 11
      Top = 2
      Width = 632
      Height = 34
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
      ShowCaptions = True
      TabOrder = 0
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Action = actOk
      end
      object ToolButton2: TToolButton
        Left = 81
        Top = 0
        Action = actCancel
      end
    end
  end
  inherited alDef: TActionList
    inherited actOk: TAction
      Caption = 'Gravar'
      Enabled = False
      ImageIndex = 324
    end
    inherited actCancel: TAction
      Enabled = False
    end
    object actNew: TAction
      Caption = 'Inserir...'
      ImageIndex = 2
      OnExecute = actNewExecute
    end
    object actEdit: TAction
      Caption = 'Propriedades...'
      ImageIndex = 274
      OnExecute = actEditExecute
    end
    object actDel: TAction
      Caption = 'Excluir'
      ImageIndex = 100
      OnExecute = actDelExecute
    end
    object actEditText: TAction
      Caption = 'Editar'
      ShortCut = 113
      OnExecute = actEditTextExecute
    end
  end
  object PopupMenu1: TPopupMenu
    Images = Resources.medium_n
    OnPopup = PopupMenu1Popup
    Left = 312
    Top = 24
    object Inserir1: TMenuItem
      Action = actNew
    end
    object Propriedades1: TMenuItem
      Action = actEdit
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Excluir1: TMenuItem
      Action = actDel
    end
  end
end
