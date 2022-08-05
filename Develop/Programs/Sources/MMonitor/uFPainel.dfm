inherited FPainel: TFPainel
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Painel'
  ClientHeight = 199
  ClientWidth = 408
  Visible = True
  ExplicitWidth = 408
  ExplicitHeight = 199
  PixelsPerInch = 96
  TextHeight = 15
  object Shape1: TShape [0]
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 402
    Height = 22
    Margins.Bottom = 0
    Align = alTop
    ExplicitLeft = 0
    ExplicitWidth = 488
  end
  object Shape2: TShape [1]
    AlignWithMargins = True
    Left = 3
    Top = 25
    Width = 1
    Height = 170
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alLeft
    Brush.Style = bsClear
    ExplicitLeft = 0
    ExplicitTop = 136
    ExplicitHeight = 96
  end
  object Shape3: TShape [2]
    AlignWithMargins = True
    Left = 404
    Top = 25
    Width = 1
    Height = 170
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    Align = alRight
    Brush.Style = bsClear
    ExplicitLeft = 487
    ExplicitHeight = 204
  end
  object Shape4: TShape [3]
    AlignWithMargins = True
    Left = 3
    Top = 195
    Width = 402
    Height = 1
    Margins.Top = 0
    Align = alBottom
    Brush.Style = bsClear
    ExplicitLeft = 0
    ExplicitTop = 229
    ExplicitWidth = 488
  end
  object Panel5: TPanel [4]
    Left = 4
    Top = 25
    Width = 400
    Height = 170
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 2
    ExplicitWidth = 486
    ExplicitHeight = 204
    object Panel2: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 39
      Width = 394
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 480
      object Label1: TLabel
        AlignWithMargins = True
        Left = 104
        Top = 3
        Width = 52
        Height = 24
        Align = alLeft
        Caption = 'Frascos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 21
      end
      object lbRecno: TLabel
        AlignWithMargins = True
        Left = 71
        Top = 3
        Width = 27
        Height = 24
        Align = alLeft
        Caption = '000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 21
      end
      object lbFrascos: TLabel
        AlignWithMargins = True
        Left = 162
        Top = 3
        Width = 4
        Height = 24
        Align = alLeft
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 21
      end
      object Label3: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 62
        Height = 24
        Align = alLeft
        Caption = 'Remessa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 21
      end
      object lbxSeringas: TLabel
        AlignWithMargins = True
        Left = 172
        Top = 3
        Width = 60
        Height = 24
        Align = alLeft
        Caption = 'Seringas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 21
      end
      object lbSeringas: TLabel
        AlignWithMargins = True
        Left = 238
        Top = 3
        Width = 4
        Height = 24
        Align = alLeft
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 21
      end
      object Label4: TLabel
        AlignWithMargins = True
        Left = 248
        Top = 3
        Width = 60
        Height = 24
        Align = alLeft
        Caption = 'Volumes'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 21
      end
      object lbVol: TLabel
        AlignWithMargins = True
        Left = 314
        Top = 3
        Width = 4
        Height = 24
        Align = alLeft
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 21
      end
    end
    object Panel3: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 75
      Width = 394
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 480
      object Label2: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 37
        Height = 24
        Align = alLeft
        Caption = 'Dest.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 21
      end
      object lbDest: TLabel
        AlignWithMargins = True
        Left = 46
        Top = 3
        Width = 4
        Height = 24
        Align = alLeft
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 21
      end
    end
    object Panel4: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 394
      Height = 30
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitWidth = 480
      object lbAtu: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 4
        Height = 24
        Align = alLeft
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 21
      end
      object lbSit: TLabel
        AlignWithMargins = True
        Left = 13
        Top = 3
        Width = 4
        Height = 24
        Align = alLeft
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 21
      end
    end
  end
end
