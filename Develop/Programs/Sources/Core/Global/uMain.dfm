object Main: TMain
  Left = 273
  Top = 112
  Margins.Left = 4
  Margins.Top = 4
  Margins.Right = 4
  Margins.Bottom = 4
  Caption = 'Lorencini Brasil'
  ClientHeight = 969
  ClientWidth = 1325
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  Position = poDefault
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 19
  object StatusBar1: TStatusBar
    Left = 0
    Top = 936
    Width = 1325
    Height = 33
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    BorderWidth = 1
    Panels = <
      item
        Alignment = taCenter
        Bevel = pbNone
        Text = 'Usu'#225'rio'
        Width = 63
      end
      item
        Alignment = taCenter
        Width = 63
      end
      item
        Alignment = taCenter
        Bevel = pbNone
        Text = 'Data'
        Width = 63
      end
      item
        Alignment = taCenter
        Width = 63
      end
      item
        Alignment = taCenter
        Bevel = pbNone
        Text = 'Servidor'
        Width = 63
      end
      item
        Alignment = taCenter
        Width = 63
      end
      item
        Alignment = taCenter
        Bevel = pbNone
        Text = 'Banco'
        Width = 63
      end
      item
        Alignment = taCenter
        Width = 63
      end
      item
        Alignment = taCenter
        Width = 63
      end>
  end
  object ControlBar1: TControlBar
    AlignWithMargins = True
    Left = 4
    Top = 4
    Width = 1317
    Height = 46
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    AutoSize = True
    BevelEdges = []
    BevelInner = bvNone
    BevelOuter = bvNone
    BevelKind = bkNone
    DrawingStyle = dsGradient
    RowSize = 33
    TabOrder = 1
    object ToolBar2: TToolBar
      Left = 14
      Top = 2
      Width = 1036
      Height = 42
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      AutoSize = True
      BorderWidth = 1
      ButtonHeight = 38
      ButtonWidth = 173
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
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Usu'#225'rio Comun'
        DropdownMenu = pmRole
        ImageIndex = 389
        Style = tbsTextButton
      end
      object ToolButton12: TToolButton
        Left = 143
        Top = 0
        Width = 10
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'ToolButton12'
        ImageIndex = 4
        Style = tbsSeparator
      end
      object ToolButton10: TToolButton
        Left = 153
        Top = 0
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = actChangePass
        Style = tbsTextButton
      end
      object ToolButton1: TToolButton
        Left = 287
        Top = 0
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = actFichaFinDesp
        Caption = 'Registro de Despesas'
        Style = tbsTextButton
      end
      object ToolButton13: TToolButton
        Left = 464
        Top = 0
        Width = 10
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'ToolButton13'
        ImageIndex = 191
        Style = tbsSeparator
      end
      object ToolButton14: TToolButton
        Left = 474
        Top = 0
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = actClose
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
