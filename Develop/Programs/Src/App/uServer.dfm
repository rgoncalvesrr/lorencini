object Main: TMain
  Left = 0
  Top = 0
  Caption = 'Servidor Lorencini'
  ClientHeight = 321
  ClientWidth = 678
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ComboBox1: TComboBox
    Left = 32
    Top = 24
    Width = 561
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Text = 'ComboBox1'
    OnChange = ComboBox1Change
  end
  object Memo1: TMemo
    Left = 32
    Top = 64
    Width = 561
    Height = 225
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
end
