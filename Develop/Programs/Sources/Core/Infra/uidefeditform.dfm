inherited IDefEditForm: TIDefEditForm
  Left = 331
  Top = 166
  Caption = 'Manuten'#231#227'o'
  ClientHeight = 418
  ClientWidth = 660
  OldCreateOrder = True
  ExplicitWidth = 676
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 15
  object ControlBar1: TControlBar [0]
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 654
    Height = 38
    Align = alTop
    AutoSize = True
    BevelEdges = []
    BevelKind = bkNone
    DrawingStyle = dsGradient
    TabOrder = 0
    object ToolBar1: TToolBar
      Left = 11
      Top = 2
      Width = 641
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
    Left = 352
    Top = 152
    inherited actOk: TAction
      Caption = 'Gravar'
      ImageIndex = 324
    end
    inherited actCancel: TAction
      Enabled = False
    end
  end
end
