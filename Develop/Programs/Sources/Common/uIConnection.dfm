inherited IConnection: TIConnection
  AlignWithMargins = True
  Caption = 'Conex'#227'o'
  ClientHeight = 291
  ClientWidth = 398
  ExplicitWidth = 414
  ExplicitHeight = 330
  PixelsPerInch = 96
  TextHeight = 15
  object GroupBox1: TGroupBox [0]
    AlignWithMargins = True
    Left = 3
    Top = 68
    Width = 392
    Height = 172
    Align = alClient
    Caption = ' Informa'#231#245'es da Conex'#227'o Selecionada '
    TabOrder = 0
    object Label1: TLabel
      Left = 51
      Top = 36
      Width = 47
      Height = 15
      Caption = 'Conex'#227'o'
    end
    object Label2: TLabel
      Left = 46
      Top = 66
      Width = 55
      Height = 15
      Caption = 'Hostname'
    end
    object Label3: TLabel
      Left = 13
      Top = 99
      Width = 85
      Height = 15
      Caption = 'Banco de Dados'
    end
    object Label5: TLabel
      Left = 60
      Top = 130
      Width = 40
      Height = 15
      Caption = 'Usu'#225'rio'
    end
    object edProtocol: TEdit
      Left = 107
      Top = 28
      Width = 272
      Height = 23
      TabStop = False
      ReadOnly = True
      TabOrder = 0
    end
    object edHost: TEdit
      Left = 107
      Top = 58
      Width = 218
      Height = 23
      TabStop = False
      ReadOnly = True
      TabOrder = 1
    end
    object edPort: TEdit
      Left = 331
      Top = 58
      Width = 48
      Height = 23
      TabStop = False
      ReadOnly = True
      TabOrder = 2
    end
    object edDataBase: TEdit
      Left = 107
      Top = 89
      Width = 272
      Height = 23
      TabStop = False
      ReadOnly = True
      TabOrder = 3
    end
    object edUser: TEdit
      Left = 108
      Top = 120
      Width = 272
      Height = 23
      TabStop = False
      ReadOnly = True
      TabOrder = 4
    end
  end
  object Panel1: TPanel [1]
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 392
    Height = 59
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label4: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 386
      Height = 15
      Align = alTop
      Caption = 'Conex'#245'es'
      ExplicitWidth = 52
    end
    object ComboBox1: TComboBox
      AlignWithMargins = True
      Left = 3
      Top = 24
      Width = 386
      Height = 23
      Align = alClient
      Style = csDropDownList
      ItemHeight = 15
      TabOrder = 0
      OnChange = ComboBox1Change
    end
  end
  object Panel2: TPanel [2]
    AlignWithMargins = True
    Left = 3
    Top = 246
    Width = 392
    Height = 42
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 190
      Top = 3
      Width = 96
      Height = 36
      Action = actCancel
      Align = alRight
      Caption = 'Cancelar'
      TabOrder = 1
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00C3C3C7007878B5005A5AAE00A9A9C000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008181B80012129E004243A900BDBDC500FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF003A3CAA00111AB0000A1DC1001618A200A9A9C000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007374
        B5001113A1000A18B8001015AA005454AE00FF00FF00FF00FF00FF00FF00FF00
        FF00A9A9C0001114A3000A32EC000A31EA000C24CD001718A000B2B2C300FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007374B5001113
        A1000A1CC0000A1DC1000A17B3003838A800FF00FF00FF00FF00FF00FF00FF00
        FF00B6B6C3001012A1000A30E9000A33ED000A31EA000D23C8001E20A300B8B8
        C500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007374B5001113A2000A1F
        C4000A20C7000A1EC1001215A3007D7DB700FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF006465B2001219AC000A31EA000A33EC000A31E9000E21C1002425
        A400BDBDC500FF00FF00FF00FF00FF00FF007374B5001114A2000A21CA000A23
        CD000A20C8001317A7005353AE00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF005556AF001219AC000A31EA000A32EC000A31E900101E
        BB002F31A600C1C1C600FF00FF007374B5001114A3000A23CF000A26D2000A24
        CF001218AA004646AA00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF005556AF001219AC000A31EA000A32EC000A31
        E900101BB5003A3BA9006F6FB4001114A3000A26D2000A29D7000A27D4001019
        AD003C3DA900C3C3C700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF005556AF001219AC000A31E9000A32
        EB000A31E700111AB1001114A3000A29D8000A2BDD000A2ADA000F1BB4003131
        A700C1C1C600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF005556AF001219AC000A31
        E9000A32EB000A30E8000A2FE5000A2DE3000A2CE0000D1CBB002627A400BDBD
        C500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF005556AF001219
        AC000A32EC000A32EB000A30E8000A2FE5000D20C3001E1FA300B8B8C500FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007374B6001115
        A4000A34EE000A33ED000A32EA000A30E7001319AB006C6DB300FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007374B6001115A5000A32
        EB000A36F3000A35F0000A33ED000A31EA000A2ADD001012A1008C8CBB00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF007374B6001116A5000A34F0000A39
        F8000A37F6000A2BDD001122BE000A30E8000A31EA000A29D70010129F00A6A6
        C000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF007374B6001116A5000A35F1000A3BFC000A3A
        FA000A2FE5001214A2004343AA001218AB000A30E7000A31E9000A25D0001416
        A300B4B4C300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF007374B6001116A5000A35F1000A3BFC000A3BFC000A33
        ED001114A3008E8EBB00FF00FF005859AF001218AB000A30E7000A31E9000A1F
        C5001C1FA600BDBDC500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00797AB7001116A5000A35F1000A3BFC000A3BFC000A36F2001115
        A4008182B800FF00FF00FF00FF00FF00FF005859AF001218AB000A30E7000A31
        E9000A19BB002A2EAC00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00B4B4C3001113A1000A34EF000A3BFC000A3BFC000A37F5001217A8007374
        B600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF005859AF001218AB000A30
        E6000A31E7000C13AA008C8DBC00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008E8EBB001420B3000A3BFC000A3BFC000A38F7001219AD006566B300FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF005859AF001218
        AB000A2FE4000C18B4007374B700FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00B4B4C3001214A1000A2EE4000A39F800121BB1005355AF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006667
        B2000F109E002A2BA700BBBBC500FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF009797BD001B1DA3000A0A9B005153B000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ExplicitTop = 0
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 292
      Top = 3
      Width = 97
      Height = 36
      Action = actOk
      Align = alRight
      Caption = 'Confirmar'
      Default = True
      TabOrder = 0
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00BDC3BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF006097620020772100FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0076A17600157819001677180099B19900FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007BA2
        7B00147517002CB84F001F9931004E8F4F00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0076A176001576
        18002DB84F002FC054002AB7490012711300BDC3BD00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00689A6900157719002FBB
        530031C258002EBF53002CBE4F001B88250074A07500FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00C3C5C3004D8F4F00197E220032BF580033C4
        5C0030C157002EBF51002BBD4D0022A83A001E782000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00B6C0B600318033001F8A2D0035C5620035C660002AB1
        4A001E892900157A1A002ABB4A0029BA4600187D1E0089AA8900FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00A4B6A4001C771D00269B3C0035C26100249F3C001B7F23001A75
        1B0078A17800348235001F9C310028B945001C9F2F00277C2A00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF001F7620000E701000187A1E00117012004A8D4C0090AD9000FF00
        FF00FF00FF00A2B5A2001374150026B5410024B53E001578170095AF9500FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00B8C0B800A2B5A200A6B7A600FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00418843001B942A0024B53D00199A29002B7E2C00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00ADBBAD001272140021AF380020B036001477170093AE
        9300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00549155001A8D240020B1350017992400287C
        2900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00B6C0B600127113001CA82E001CAD2E00167A
        18008CAA8C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF006899680018841E001BAC2D001599
        200021782100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00BFC4BF0018741900179F260018AA
        2700157B170081A58100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007DA47D00157B180017A9
        260013991B0019741A00C3C5C300FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00267B27001394
        1B0015A61F00147C160078A17800FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009BB29B001576
        150014A41D001098160019741900FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00468A
        460012851600109C17000E6E0E00B8C0B800FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B8C0
        B800267B27000E6E0E006B9B6B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
  end
  inherited alDef: TActionList
    Images = Resources.medium_n
  end
end
