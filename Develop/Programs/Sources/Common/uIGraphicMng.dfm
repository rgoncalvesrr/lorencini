inherited IGraphicMng: TIGraphicMng
  Caption = 'Gerenciador de Imagem'
  ClientHeight = 328
  ClientWidth = 576
  ExplicitWidth = 582
  ExplicitHeight = 357
  PixelsPerInch = 96
  TextHeight = 15
  inherited bvDiv: TBevel
    Width = 576
    ExplicitWidth = 576
  end
  object Image2: TImage [1]
    AlignWithMargins = True
    Left = 3
    Top = 122
    Width = 570
    Height = 203
    Align = alClient
    Center = True
    ExplicitLeft = 88
    ExplicitTop = 192
    ExplicitWidth = 105
    ExplicitHeight = 105
  end
  inherited Panel1: TPanel
    Width = 576
    ExplicitWidth = 576
    inherited Shape1: TShape
      Width = 522
      ExplicitWidth = 522
    end
    inherited Image1: TImage
      Height = 64
      ExplicitHeight = 64
    end
    inherited pnTitle: TPanel
      Width = 522
      ExplicitLeft = 54
      ExplicitTop = 0
      ExplicitWidth = 522
      ExplicitHeight = 70
      inherited Label1: TLabel
        Width = 516
        Caption = 'Gerenciador de imagens'
        ExplicitWidth = 186
      end
      inherited Label2: TLabel
        Width = 509
        Height = 33
        Caption = 'Esta rotina permite o manuteio de imagens no sistema Manager'
        ExplicitWidth = 354
      end
    end
  end
  object ControlBar1: TControlBar [3]
    AlignWithMargins = True
    Left = 3
    Top = 78
    Width = 570
    Height = 38
    Align = alTop
    AutoSize = True
    BevelEdges = []
    BevelKind = bkNone
    DrawingStyle = dsGradient
    TabOrder = 1
    object ToolBar1: TToolBar
      Left = 11
      Top = 2
      Width = 557
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
      AllowTextButtons = True
      TabOrder = 0
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Action = actLoad
        Style = tbsTextButton
      end
      object ToolButton2: TToolButton
        Left = 93
        Top = 0
        Action = actClean
        Style = tbsTextButton
      end
      object ToolButton3: TToolButton
        Left = 169
        Top = 0
        Width = 8
        Caption = 'ToolButton3'
        ImageIndex = 105
        Style = tbsSeparator
      end
      object ToolButton4: TToolButton
        Left = 177
        Top = 0
        Action = actOk
      end
      object ToolButton5: TToolButton
        Left = 209
        Top = 0
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
