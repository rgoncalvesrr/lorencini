object FrameCliente: TFrameCliente
  Left = 0
  Top = 0
  Width = 1108
  Height = 100
  AutoSize = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1108
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 76
      Height = 50
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object Label9: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 70
        Height = 15
        Align = alTop
        Caption = 'C'#243'digo'
        FocusControl = DBEdit8
        ExplicitWidth = 39
      end
      object DBEdit8: TDBEdit
        AlignWithMargins = True
        Left = 3
        Top = 24
        Width = 73
        Height = 23
        Margins.Right = 0
        Align = alClient
        DataField = 'codigo'
        DataSource = dsCliente
        TabOrder = 0
        OnExit = DBEdit8Exit
      end
    end
    object Panel35: TPanel
      Left = 76
      Top = 0
      Width = 29
      Height = 50
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 1
      object SpeedButton1: TSpeedButton
        AlignWithMargins = True
        Left = 0
        Top = 23
        Width = 26
        Height = 25
        Margins.Left = 0
        Margins.Top = 23
        Margins.Bottom = 2
        Action = actFindCli
        Align = alClient
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000A0A
          0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A00FF00FF00FF00FF000A0A
          0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A00FF00FF00FF00FF000A0A
          0A00A9A9A900C4C4C400696969002C2C2C000A0A0A00FF00FF00FF00FF000A0A
          0A00A9A9A900C4C4C400696969002C2C2C000A0A0A00FF00FF00FF00FF000A0A
          0A00A9A9A900C4C4C400696969002C2C2C000A0A0A00FF00FF00FF00FF000A0A
          0A00A9A9A900C4C4C400696969002C2C2C000A0A0A00FF00FF00FF00FF000A0A
          0A00121212001E1E1E000B0B0B000A0A0A000A0A0A00FF00FF00FF00FF000A0A
          0A0015151500222222000B0B0B000A0A0A000A0A0A00FF00FF00FF00FF007549
          4900A0725E00EFE1D200EBC8A3009F674D0070414000FF00FF00FF00FF007549
          4900A0725E00EFE1D200EBC8A3009F674D0070414000FF00FF00FF00FF008461
          610085554C00F5E5D400EAC5A000865043007D565500FF00FF00FF00FF008461
          610085554C00F5E5D400EAC5A000865043007D565500FF00FF00FF00FF009A82
          820074444000F5E4D300E1B488007443400093777700FF00FF00FF00FF009A82
          820074444000F5E4D300E1B488007443400093777700FF00FF00FF00FF00B7AE
          AE006C3C3C00E9C8A800D19669006C3C3C00B2A7A700FF00FF00FF00FF00B7AE
          AE006C3C3C00E9C8A800D19669006C3C3C00B2A7A700FF00FF00FF00FF00FF00
          FF006E3E3E00734444006B3B3B006B3B3B000B0B0B000A0A0A000A0A0A000E0D
          0D006C3C3C006B3B3B006B3B3B006C3B3B00FF00FF00FF00FF00FF00FF00FF00
          FF006C3B3B00F1D8BE00E8BF9300C78657000A0A0A00C4C4C400696969001010
          1000F9DEB700E2B38600BD7B51006C3B3B00FF00FF00FF00FF00FF00FF00FF00
          FF006C3B3B00F6E6D600E9BF9500C88759000A0A0A00C4C4C400696969000C0C
          0C00E3C6A900CA9B7600A5694B006C3B3B00FF00FF00FF00FF00FF00FF00FF00
          FF006D3D3D00724343006B3B3B006B3B3B00141010000A0A0A000A0A0A002416
          14006C3B3B006C3B3B006C3B3B006C3B3B00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000A0A0A00C4C4C400696969000A0A0A00FF00FF00FF00FF000A0A
          0A00C4C4C400696969000A0A0A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000A0A0A000A0A0A000A0A0A001D1D1D00FF00FF00FF00FF000A0A
          0A000A0A0A000A0A0A001D1D1D00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        ExplicitLeft = -3
        ExplicitTop = 28
        ExplicitWidth = 32
        ExplicitHeight = 30
      end
    end
    object Panel4: TPanel
      Left = 105
      Top = 0
      Width = 509
      Height = 50
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitWidth = 463
      object Label10: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 503
        Height = 15
        Align = alTop
        Caption = 'Nome Empresarial'
        FocusControl = DBEdit9
        ExplicitWidth = 97
      end
      object DBEdit9: TDBEdit
        AlignWithMargins = True
        Left = 3
        Top = 24
        Width = 503
        Height = 23
        TabStop = False
        Align = alClient
        DataField = 'empresa'
        DataSource = dsCliente
        ReadOnly = True
        TabOrder = 0
        ExplicitWidth = 457
      end
    end
    object Panel5: TPanel
      Left = 614
      Top = 0
      Width = 254
      Height = 50
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 3
      ExplicitLeft = 619
      object Label11: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 248
        Height = 15
        Align = alTop
        Caption = 'Nome Fantasia'
        FocusControl = DBEdit10
        ExplicitWidth = 79
      end
      object DBEdit10: TDBEdit
        AlignWithMargins = True
        Left = 3
        Top = 24
        Width = 248
        Height = 23
        TabStop = False
        Align = alClient
        DataField = 'nome_chave'
        DataSource = dsCliente
        ReadOnly = True
        TabOrder = 0
        ExplicitWidth = 243
      end
    end
    object Panel6: TPanel
      Left = 868
      Top = 0
      Width = 128
      Height = 50
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 4
      ExplicitLeft = 817
      object Label12: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 122
        Height = 15
        Align = alTop
        Caption = 'CNPJ'
        FocusControl = DBEdit11
        ExplicitWidth = 27
      end
      object DBEdit11: TDBEdit
        AlignWithMargins = True
        Left = 3
        Top = 24
        Width = 122
        Height = 23
        TabStop = False
        Align = alClient
        DataField = 'cnpj'
        DataSource = dsCliente
        ReadOnly = True
        TabOrder = 0
        ExplicitWidth = 154
      end
    end
    object Panel7: TPanel
      Left = 996
      Top = 0
      Width = 112
      Height = 50
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 5
      ExplicitLeft = 977
      object Label13: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 106
        Height = 15
        Align = alTop
        Caption = 'CPF'
        FocusControl = DBEdit12
        ExplicitWidth = 21
      end
      object DBEdit12: TDBEdit
        AlignWithMargins = True
        Left = 3
        Top = 24
        Width = 106
        Height = 23
        TabStop = False
        Align = alClient
        DataField = 'cpf'
        DataSource = dsCliente
        ReadOnly = True
        TabOrder = 0
        ExplicitWidth = 125
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 50
    Width = 1108
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Panel8: TPanel
      AlignWithMargins = True
      Left = 321
      Top = 0
      Width = 607
      Height = 50
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 601
        Height = 15
        Align = alTop
        Caption = 'Cidade'
        FocusControl = DBEdit1
        ExplicitWidth = 37
      end
      object DBEdit1: TDBEdit
        AlignWithMargins = True
        Left = 3
        Top = 24
        Width = 601
        Height = 23
        TabStop = False
        Align = alClient
        DataField = 'cidade'
        DataSource = dsCliente
        ReadOnly = True
        TabOrder = 0
      end
    end
    object Panel9: TPanel
      Left = 928
      Top = 0
      Width = 52
      Height = 50
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object Label2: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 46
        Height = 15
        Align = alTop
        Caption = 'Estado'
        FocusControl = DBEdit2
        ExplicitWidth = 35
      end
      object DBEdit2: TDBEdit
        AlignWithMargins = True
        Left = 3
        Top = 24
        Width = 46
        Height = 23
        TabStop = False
        Align = alClient
        CharCase = ecUpperCase
        DataField = 'estado'
        DataSource = dsCliente
        ReadOnly = True
        TabOrder = 0
      end
    end
    object Panel30: TPanel
      Left = 0
      Top = 0
      Width = 321
      Height = 50
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 2
      object Label20: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 315
        Height = 15
        Align = alTop
        Caption = 'Email'
        FocusControl = DBEdit17
        ExplicitWidth = 29
      end
      object DBEdit17: TDBEdit
        AlignWithMargins = True
        Left = 3
        Top = 24
        Width = 315
        Height = 23
        TabStop = False
        Align = alClient
        CharCase = ecLowerCase
        DataField = 'email'
        DataSource = dsCliente
        ReadOnly = True
        TabOrder = 0
      end
    end
    object Panel10: TPanel
      Left = 980
      Top = 0
      Width = 128
      Height = 50
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 3
      object Label3: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 122
        Height = 15
        Align = alTop
        Caption = 'Telefone'
        FocusControl = DBEdit3
        ExplicitWidth = 44
      end
      object DBEdit3: TDBEdit
        AlignWithMargins = True
        Left = 3
        Top = 24
        Width = 122
        Height = 23
        TabStop = False
        Align = alClient
        DataField = 'telefone'
        DataSource = dsCliente
        ReadOnly = True
        TabOrder = 0
      end
    end
  end
  object dsCliente: TDataSource
    Left = 184
    Top = 48
  end
  object alFrameCli: TActionList
    Images = Resources.small_n
    Left = 136
    Top = 48
    object actFindCli: TAction
      Enabled = False
      ImageIndex = 332
      OnExecute = actFindCliExecute
    end
  end
end
