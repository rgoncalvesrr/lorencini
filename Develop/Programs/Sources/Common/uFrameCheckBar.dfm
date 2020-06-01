object FrameCheckBar: TFrameCheckBar
  Left = 0
  Top = 0
  Width = 819
  Height = 44
  AutoSize = True
  TabOrder = 0
  object ControlBar1: TControlBar
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 813
    Height = 38
    Align = alTop
    AutoSize = True
    BevelKind = bkNone
    DrawingStyle = dsGradient
    TabOrder = 0
    object ToolBar2: TToolBar
      Left = 11
      Top = 2
      Width = 800
      Height = 34
      AutoSize = True
      BorderWidth = 1
      ButtonHeight = 30
      ButtonWidth = 107
      Caption = 'ToolBar2'
      DisabledImages = Resources.medium_d
      DrawingStyle = dsGradient
      HotImages = Resources.medium_h
      Images = Resources.medium_n
      List = True
      AllowTextButtons = True
      TabOrder = 0
      object ToolButton13: TToolButton
        Left = 0
        Top = 0
        Action = actInverse
        Style = tbsTextButton
      end
      object ToolButton12: TToolButton
        Left = 79
        Top = 0
        Action = actInverseAll
        Style = tbsTextButton
      end
      object ToolButton17: TToolButton
        Left = 190
        Top = 0
        Action = actCkAll
        Style = tbsTextButton
      end
      object ToolButton1: TToolButton
        Left = 258
        Top = 0
        Width = 8
        Caption = 'ToolButton1'
        ImageIndex = 70
        Style = tbsSeparator
      end
      object ToolButton16: TToolButton
        Left = 266
        Top = 0
        Action = actUCkAll
        Style = tbsTextButton
      end
    end
  end
  object alDef: TActionList
    Images = Resources.medium_n
    Left = 408
    object actCkAll: TAction
      Tag = 2
      Caption = 'Todos'
      Enabled = False
      ImageIndex = 67
      OnExecute = actProcessMarkExecute
    end
    object actUCkAll: TAction
      Tag = 3
      Caption = 'Nenhum'
      Enabled = False
      ImageIndex = 69
      OnExecute = actProcessMarkExecute
    end
    object actInverseAll: TAction
      Tag = 1
      Caption = 'Inverter Todos'
      Enabled = False
      ImageIndex = 256
      OnExecute = actProcessMarkExecute
    end
    object actInverse: TAction
      Caption = 'Inverter'
      Enabled = False
      ImageIndex = 193
      OnExecute = actProcessMarkExecute
    end
  end
  object dsMark: TDataSource
    AutoEdit = False
    OnDataChange = dsMarkDataChange
    Left = 368
  end
end
