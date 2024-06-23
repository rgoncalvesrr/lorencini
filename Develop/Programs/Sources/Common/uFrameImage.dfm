object FrameImage: TFrameImage
  Left = 0
  Top = 0
  Width = 564
  Height = 380
  Margins.Left = 4
  Margins.Top = 4
  Margins.Right = 4
  Margins.Bottom = 4
  Align = alClient
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  PixelsPerInch = 120
  object FrameImage: TJvDBImage
    Left = 0
    Top = 0
    Width = 564
    Height = 380
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    BorderStyle = bsNone
    PopupMenu = PopupMenu1
    Proportional = True
    Stretch = True
    TabOrder = 0
  end
  object ActionList1: TActionList
    Images = Resources.small_n
    Left = 32
    Top = 16
    object actLoad: TAction
      Caption = 'Carregar...'
      Enabled = False
      ImageIndex = 6
      OnExecute = actLoadExecute
    end
    object actClean: TAction
      Caption = 'Limpar'
      Enabled = False
      ImageIndex = 104
      OnExecute = actCleanExecute
    end
  end
  object PopupMenu1: TPopupMenu
    Images = Resources.small_n
    OnPopup = PopupMenu1Popup
    Left = 96
    Top = 16
    object Carregar1: TMenuItem
      Action = actLoad
    end
    object Limpar1: TMenuItem
      Action = actClean
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg'
    Left = 184
    Top = 16
  end
end
