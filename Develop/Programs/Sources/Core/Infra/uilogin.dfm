inherited ILogin: TILogin
  Left = 0
  Top = 0
  Align = alClient
  AlphaBlend = True
  AlphaBlendValue = 247
  BorderStyle = bsNone
  Caption = 'Login'
  ClientHeight = 768
  ClientWidth = 1024
  Font.Charset = DEFAULT_CHARSET
  Font.Height = -11
  OldCreateOrder = True
  ExplicitWidth = 1024
  ExplicitHeight = 768
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 648
    Width = 895
    Height = 43
    Alignment = taCenter
    AutoSize = False
    Caption = 'Lorencini Brasil - Todos os direitos reservados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 12615680
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
  end
  object Panel3: TPanel [1]
    Left = 246
    Top = 200
    Width = 539
    Height = 289
    BevelOuter = bvNone
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Pitch = fpVariable
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Shape1: TShape
      Left = 16
      Top = 87
      Width = 521
      Height = 138
      Brush.Style = bsClear
      Pen.Color = 12615680
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 36
      Top = 123
      Width = 43
      Height = 20
      Caption = 'E-mail'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      AlignWithMargins = True
      Left = 332
      Top = 123
      Width = 40
      Height = 20
      Caption = 'Senha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 30
      Width = 387
      Height = 23
      Caption = 'Entre com suas credenciais para iniciar uma sess'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
    end
    object edUserName: TEdit
      AlignWithMargins = True
      Left = 36
      Top = 149
      Width = 285
      Height = 25
      BorderStyle = bsNone
      CharCase = ecLowerCase
      TabOrder = 0
      OnChange = edUserNameChange
      OnExit = edUserNameExit
    end
    object edPassword: TJvEdit
      Left = 332
      Top = 149
      Width = 173
      Height = 25
      ThemedPassword = True
      BorderStyle = bsNone
      TabOrder = 1
      OnChange = edUserNameChange
    end
    object BitBtn1: TBitBtn
      Left = 16
      Top = 248
      Width = 100
      Height = 36
      Action = actOk
      Caption = 'Login'
      Default = True
      TabOrder = 2
      Layout = blGlyphRight
    end
    object BitBtn2: TBitBtn
      Left = 122
      Top = 248
      Width = 137
      Height = 36
      Action = actPassRenew
      Caption = 'Esqueci a Senha'
      TabOrder = 3
      Layout = blGlyphRight
    end
  end
  object Panel1: TPanel [2]
    Left = 232
    Top = 80
    Width = 473
    Height = 81
    BevelOuter = bvNone
    TabOrder = 1
    object Label2: TLabel
      Left = 14
      Top = 0
      Width = 208
      Height = 65
      Caption = 'Lorencini'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12615680
      Font.Height = -48
      Font.Name = 'Segoe UI'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 228
      Top = 0
      Width = 226
      Height = 65
      Caption = 'MANAGER'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -48
      Font.Name = 'Segoe UI'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentFont = False
    end
    object Shape2: TShape
      Left = 0
      Top = 64
      Width = 65
      Height = 1
      Pen.Color = clGray
    end
    object Shape3: TShape
      Left = 59
      Top = 64
      Width = 118
      Height = 1
      Pen.Color = clNavy
    end
    object Shape4: TShape
      Left = 171
      Top = 64
      Width = 102
      Height = 1
      Pen.Color = clBlue
    end
    object Shape5: TShape
      Left = 267
      Top = 64
      Width = 198
      Height = 1
      Pen.Color = 12615680
    end
  end
  inherited alDef: TActionList
    Images = Resources.medium_h
    Left = 32
    Top = 16
    inherited actOk: TAction
      Caption = 'Login'
      Enabled = False
      ImageIndex = 313
    end
    object actPassRenew: TAction
      Caption = 'Esqueci a Senha'
      Enabled = False
      ImageIndex = 199
      OnExecute = actPassRenewExecute
    end
  end
end
