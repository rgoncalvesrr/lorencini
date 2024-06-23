inherited IGraphicMng: TIGraphicMng
  Margins.Left = 6
  Margins.Top = 6
  Margins.Right = 6
  Margins.Bottom = 6
  Caption = 'Gerenciador de Imagem'
  ClientHeight = 410
  ClientWidth = 723
  Font.Height = -24
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 741
  ExplicitHeight = 457
  PixelsPerInch = 120
  TextHeight = 32
  inherited bvDiv: TBevel
    Top = 157
    Width = 723
    Height = 8
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ExplicitTop = 165
    ExplicitWidth = 723
    ExplicitHeight = 8
  end
  object Image2: TImage [1]
    AlignWithMargins = True
    Left = 4
    Top = 169
    Width = 715
    Height = 237
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    Center = True
    ExplicitTop = 176
    ExplicitHeight = 230
  end
  inherited Panel1: TPanel
    Width = 723
    Height = 110
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 723
    ExplicitHeight = 110
    inherited Shape1: TShape
      Left = 95
      Width = 653
      Height = 110
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitLeft = 95
      ExplicitWidth = 653
      ExplicitHeight = 110
    end
    inherited Image1: TImage
      Left = 13
      Top = 5
      Margins.Left = 13
      Margins.Top = 5
      Margins.Right = 8
      Margins.Bottom = 5
      ExplicitLeft = 13
      ExplicitTop = 5
      ExplicitHeight = 48
    end
    inherited pnTitle: TPanel
      Left = 95
      Width = 653
      Height = 110
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 95
      ExplicitWidth = 653
      ExplicitHeight = 110
      inherited Label1: TLabel
        Left = 5
        Top = 16
        Width = 290
        Height = 30
        Margins.Left = 5
        Margins.Top = 16
        Margins.Right = 5
        Caption = 'Gerenciador de imagens'
        Font.Height = -25
        StyleElements = [seFont, seClient, seBorder]
        ExplicitLeft = 5
        ExplicitTop = 16
        ExplicitWidth = 290
        ExplicitHeight = 30
      end
      inherited Label2: TLabel
        Left = 16
        Top = 54
        Width = 462
        Height = 44
        Margins.Left = 16
        Margins.Top = 8
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Esta rotina permite o manuteio de imagens no sistema Manager'
        Font.Height = -19
        StyleElements = [seFont, seClient, seBorder]
        ExplicitLeft = 16
        ExplicitTop = 54
        ExplicitWidth = 462
        ExplicitHeight = 44
      end
    end
  end
  object ControlBar1: TControlBar [3]
    AlignWithMargins = True
    Left = 4
    Top = 114
    Width = 715
    Height = 39
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
    TabOrder = 1
    object ToolBar1: TToolBar
      Left = 14
      Top = 2
      Width = 554
      Height = 35
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      AutoSize = True
      BorderWidth = 1
      ButtonHeight = 31
      ButtonWidth = 121
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
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = actLoad
        Style = tbsTextButton
      end
      object ToolButton2: TToolButton
        Left = 125
        Top = 0
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = actClean
        Style = tbsTextButton
      end
      object ToolButton3: TToolButton
        Left = 222
        Top = 0
        Width = 10
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'ToolButton3'
        ImageIndex = 105
        Style = tbsSeparator
      end
      object ToolButton4: TToolButton
        Left = 232
        Top = 0
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = actOk
      end
      object ToolButton5: TToolButton
        Left = 264
        Top = 0
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = actCancel
      end
    end
  end
  inherited alDef: TActionList
    object actLoad: TAction
      Caption = 'Carregar...'
      ImageIndex = 6
      OnExecute = actLoadExecute
    end
    object actClean: TAction
      Caption = 'Limpar'
      ImageIndex = 104
      OnExecute = actCleanExecute
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg'
    Left = 312
    Top = 8
  end
end
