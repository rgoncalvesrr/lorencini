object Main: TMain
  Left = 273
  Top = 112
  Caption = 'Lorencini Brasil'
  ClientHeight = 775
  ClientWidth = 1058
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDefault
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 749
    Width = 1058
    Height = 26
    BorderWidth = 1
    Panels = <
      item
        Alignment = taCenter
        Bevel = pbNone
        Text = 'Usu'#225'rio'
        Width = 50
      end
      item
        Alignment = taCenter
        Width = 50
      end
      item
        Alignment = taCenter
        Bevel = pbNone
        Text = 'Data'
        Width = 50
      end
      item
        Alignment = taCenter
        Width = 50
      end
      item
        Alignment = taCenter
        Bevel = pbNone
        Text = 'Servidor'
        Width = 50
      end
      item
        Alignment = taCenter
        Width = 50
      end
      item
        Alignment = taCenter
        Bevel = pbNone
        Text = 'Banco'
        Width = 50
      end
      item
        Alignment = taCenter
        Width = 50
      end
      item
        Alignment = taCenter
        Width = 50
      end>
  end
  object ControlBar1: TControlBar
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1052
    Height = 46
    Align = alTop
    AutoSize = True
    BevelEdges = []
    BevelInner = bvNone
    BevelOuter = bvNone
    BevelKind = bkNone
    DrawingStyle = dsGradient
    TabOrder = 1
    object ToolBar2: TToolBar
      Left = 11
      Top = 2
      Width = 840
      Height = 42
      AutoSize = True
      BorderWidth = 1
      ButtonHeight = 38
      ButtonWidth = 153
      Caption = 'ToolBar2'
      DisabledImages = Resources.large_d
      DrawingStyle = dsGradient
      HotImages = Resources.large_h
      Images = Resources.large_n
      List = True
      AllowTextButtons = True
      TabOrder = 0
      object tbRole: TToolButton
        Left = 0
        Top = 0
        Caption = 'Usu'#225'rio Comun'
        DropdownMenu = pmRole
        ImageIndex = 389
        Style = tbsTextButton
      end
      object ToolButton12: TToolButton
        Left = 127
        Top = 0
        Width = 8
        Caption = 'ToolButton12'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object ToolButton10: TToolButton
        Left = 135
        Top = 0
        Action = actChangePass
        Style = tbsTextButton
      end
      object ToolButton1: TToolButton
        Left = 257
        Top = 0
        Action = actFichaFinDesp
        Caption = 'Registro de Despesas'
        Style = tbsTextButton
      end
      object ToolButton11: TToolButton
        Left = 414
        Top = 0
        Action = actVersion
      end
      object ToolButton13: TToolButton
        Left = 454
        Top = 0
        Width = 8
        Caption = 'ToolButton13'
        ImageIndex = 191
        Style = tbsSeparator
      end
      object ToolButton14: TToolButton
        Left = 462
        Top = 0
        Action = actClose
      end
      object ToolButton2: TToolButton
        Left = 502
        Top = 0
        Caption = 'ToolButton2'
        ImageIndex = 125
      end
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 136
    Top = 88
  end
  object ActionList1: TActionList
    Images = Resources.small_n
    Left = 80
    Top = 88
    object actClose: TAction
      Caption = 'Encerrar'
      ImageIndex = 124
      ShortCut = 32883
      OnExecute = actCloseExecute
    end
    object actChangePass: TAction
      Caption = 'Trocar Senha...'
      Hint = 'Trocar Senha...'
      ImageIndex = 199
      OnExecute = actChangePassExecute
    end
    object actVersion: TAction
      Caption = 'Vers'#227'o...'
      ImageIndex = 190
      OnExecute = actVersionExecute
    end
    object actSysDump: TAction
      Caption = 'Rotina de Atualiza'#231#227'o'
      ImageIndex = 138
      ShortCut = 16497
      OnExecute = actSysDumpExecute
    end
    object actFichaFinDesp: TAction
      Hint = 'Lan'#231'amento de Despesas para Clientes'
      ImageIndex = 80
      OnExecute = actFichaFinDespExecute
    end
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 88
  end
  object actRunTime: TActionList
    Images = Resources.small_n
    Left = 192
    Top = 88
    object Action1: TAction
      Caption = 'Action1'
    end
  end
  object pmRole: TPopupMenu
    Left = 24
    Top = 136
  end
end
