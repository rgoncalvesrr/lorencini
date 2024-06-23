object FrameCheckBar: TFrameCheckBar
  Left = 0
  Top = 0
  Width = 819
  Height = 46
  Margins.Left = 4
  Margins.Top = 4
  Margins.Right = 4
  Margins.Bottom = 4
  AutoSize = True
  TabOrder = 0
  PixelsPerInch = 120
  object ControlBar1: TControlBar
    AlignWithMargins = True
    Left = 4
    Top = 4
    Width = 811
    Height = 38
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    AutoSize = True
    BevelKind = bkNone
    DrawingStyle = dsGradient
    RowSize = 33
    TabOrder = 0
    ExplicitWidth = 1016
    object ToolBar2: TToolBar
      Left = 14
      Top = 2
      Width = 795
      Height = 34
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      AutoSize = True
      BorderWidth = 1
      ButtonHeight = 30
      ButtonWidth = 129
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
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = actInverse
        Style = tbsTextButton
      end
      object ToolButton12: TToolButton
        Left = 89
        Top = 0
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = actInverseAll
        Style = tbsTextButton
      end
      object ToolButton17: TToolButton
        Left = 222
        Top = 0
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = actCkAll
        Style = tbsTextButton
      end
      object ToolButton16: TToolButton
        Left = 301
        Top = 0
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = actUCkAll
        Style = tbsTextButton
      end
      object ToolButton1: TToolButton
        Left = 396
        Top = 0
        Width = 10
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'ToolButton1'
        ImageIndex = 70
        Style = tbsSeparator
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
