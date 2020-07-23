object FrameImage: TFrameImage
  Left = 0
  Top = 0
  Width = 451
  Height = 304
  Align = alClient
  TabOrder = 0
  object FrameImage: TJvDBImage
    Left = 0
    Top = 0
    Width = 451
    Height = 304
    Align = alClient
    BorderStyle = bsNone
    PopupMenu = PopupMenu1
    Stretch = True
    TabOrder = 0
    Proportional = True
  end
  object ActionList1: TActionList
    Images = Resources.small_n
    Left = 48
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
    Left = 88
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
    Left = 128
    Top = 16
  end
end
