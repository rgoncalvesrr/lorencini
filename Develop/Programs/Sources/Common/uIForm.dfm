object IForm: TIForm
  Left = 145
  Top = 151
  Margins.Left = 4
  Margins.Top = 4
  Margins.Right = 4
  Margins.Bottom = 4
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Caption = 'Formul'#225'rio Padr'#227'o'
  ClientHeight = 406
  ClientWidth = 610
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Segoe UI'
  Font.Pitch = fpVariable
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 20
  object alDef: TActionList
    Left = 16
    Top = 8
    object actOk: TAction
      Caption = 'Confirmar'
      ImageIndex = 166
      ShortCut = 117
      OnExecute = actOkExecute
    end
    object actCancel: TAction
      Caption = 'Cancelar'
      ImageIndex = 301
      SecondaryShortCuts.Strings = (
        'F7')
      ShortCut = 27
      OnExecute = actCancelExecute
    end
    object actClose: TAction
      Caption = 'Fechar'
      ImageIndex = 124
      OnExecute = actCloseExecute
    end
    object actVersion: TAction
      Caption = 'Vers'#227'o'
      ShortCut = 24662
      OnExecute = actVersionExecute
    end
  end
end
