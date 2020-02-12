inherited Amostras: TAmostras
  Caption = 'Amostras'
  ClientHeight = 592
  ClientWidth = 1128
  Constraints.MinWidth = 634
  ExplicitWidth = 1144
  ExplicitHeight = 631
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 565
    Width = 1122
    ExplicitTop = 565
    ExplicitWidth = 1122
  end
  inherited Panel1: TPanel
    Width = 1128
    ExplicitWidth = 1128
    inherited pctlFind: TPageControl
      Width = 1118
      ExplicitWidth = 1118
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1110
        ExplicitHeight = 75
        object Panel5: TPanel [0]
          Left = 0
          Top = 0
          Width = 100
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object Label6: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 94
            Height = 15
            Align = alTop
            Caption = 'Estado'
            Transparent = True
            ExplicitWidth = 35
          end
          object cbEstado: TComboBox
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 94
            Height = 23
            Align = alTop
            Style = csDropDownList
            ItemHeight = 15
            ItemIndex = 0
            TabOrder = 0
            Text = 'Todos'
            OnChange = cbEstadoChange
            Items.Strings = (
              'Todos'
              'Geradas'
              'Impressas'
              'Enviadas'
              'Recebidas'
              'Dispon'#237'veis'
              'Utilizadas'
              'Canceladas')
          end
        end
        object Panel6: TPanel [1]
          Left = 100
          Top = 0
          Width = 75
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Label1: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 69
            Height = 15
            Align = alTop
            Caption = 'Amostra'
            Transparent = True
            ExplicitWidth = 45
          end
          object edAmostra: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 69
            Height = 23
            Align = alTop
            DecimalPlaces = 0
            DisplayFormat = ',#'
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
            OnChange = edAmostraChange
          end
        end
        object Panel7: TPanel [2]
          Left = 175
          Top = 0
          Width = 75
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object Label7: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 69
            Height = 15
            Align = alTop
            Caption = 'Etiqueta'
            Transparent = True
            ExplicitWidth = 43
          end
          object edEtiqueta: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 69
            Height = 23
            Align = alTop
            DecimalPlaces = 0
            DisplayFormat = ',#'
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
            OnChange = edAmostraChange
          end
        end
        object Panel8: TPanel [3]
          Left = 325
          Top = 0
          Width = 248
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 3
          ExplicitLeft = 250
          object Label18: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 242
            Height = 15
            Align = alTop
            Caption = 'Vizualizar cliente:'
            Transparent = True
            ExplicitWidth = 90
          end
          object ComboBox1: TComboBox
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 242
            Height = 23
            Align = alTop
            DropDownCount = 30
            ItemHeight = 15
            TabOrder = 0
            OnChange = ComboBox1Change
            Items.Strings = (
              '<TODOS>'
              'JANEIRO'
              'FEVEREIRO'
              'MAR'#199'O'
              'ABRIL'
              'MAIO'
              'JUNHO'
              'JULHO'
              'AGOSTO'
              'SETEMBRO'
              'OUTUBRO'
              'NOVEMBRO'
              'DEZEMBRO')
          end
        end
        object Panel9: TPanel [4]
          Left = 573
          Top = 0
          Width = 100
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 4
          ExplicitLeft = 498
          object Label5: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 94
            Height = 15
            Align = alTop
            Caption = 'Consumo'
            Transparent = True
            ExplicitWidth = 52
          end
          object cbConsumo: TComboBox
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 94
            Height = 23
            Align = alTop
            Style = csDropDownList
            ItemHeight = 15
            ItemIndex = 0
            TabOrder = 0
            Text = 'Todos'
            OnChange = cbSaldoChange
            Items.Strings = (
              'Todos'
              'Com Consumo'
              'Sem Consumo')
          end
        end
        object Panel10: TPanel [5]
          Left = 673
          Top = 0
          Width = 100
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 5
          ExplicitLeft = 598
          object Label4: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 94
            Height = 15
            Align = alTop
            Caption = 'Saldo'
            Transparent = True
            ExplicitWidth = 29
          end
          object cbSaldo: TComboBox
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 94
            Height = 23
            Align = alTop
            Style = csDropDownList
            ItemHeight = 15
            ItemIndex = 0
            TabOrder = 0
            Text = 'Todos'
            OnChange = cbSaldoChange
            Items.Strings = (
              'Todos'
              'Com Saldo')
          end
        end
        inherited BitBtn2: TBitBtn
          Left = 1009
          TabOrder = 6
          ExplicitLeft = 1009
        end
        object Panel11: TPanel
          Left = 773
          Top = 0
          Width = 185
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 7
          ExplicitLeft = 698
          object Label8: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 54
            Width = 179
            Height = 15
            Align = alTop
            Caption = '01/02/2020 a 29/02/2020'
            ExplicitWidth = 128
          end
          object Label9: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 179
            Height = 15
            Align = alTop
            Caption = 'Emiss'#227'o'
            Transparent = True
            ExplicitWidth = 43
          end
          inline FrameData1: TFrameData
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 179
            Height = 24
            Align = alTop
            TabOrder = 0
            ExplicitLeft = 3
            ExplicitTop = 24
            ExplicitWidth = 179
            ExplicitHeight = 24
            inherited ComboBox1: TComboBox
              Width = 179
              Height = 23
              ItemHeight = 15
              ItemIndex = 1
              Text = 'Mensalmente'
              ExplicitWidth = 179
              ExplicitHeight = 23
            end
            inherited CCalendarDiff1: TCCalendarDiff
              Interval = diMonthly
              Date = 43864.925146469900000000
              DisplayInterval = Label8
            end
          end
        end
        object Panel12: TPanel
          Left = 250
          Top = 0
          Width = 75
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 8
          ExplicitLeft = 310
          ExplicitTop = 3
          object Label11: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 69
            Height = 15
            Align = alTop
            Caption = 'Remessa'
            Transparent = True
            ExplicitWidth = 46
          end
          object edRemessa: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 69
            Height = 23
            Align = alTop
            DecimalPlaces = 0
            DisplayFormat = ',#'
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
            OnChange = edAmostraChange
          end
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1110
        ExplicitHeight = 75
      end
    end
  end
  inherited Panel2: TPanel
    Width = 1128
    Height = 433
    ExplicitWidth = 1128
    ExplicitHeight = 433
    inherited PageControl1: TPageControl
      Width = 1122
      Height = 216
      Images = Resources.medium_n
      ExplicitWidth = 1122
      ExplicitHeight = 216
      inherited TabSheet1: TTabSheet
        Caption = 'Todos'
        ImageIndex = -1
        ExplicitLeft = 4
        ExplicitTop = 33
        ExplicitWidth = 1114
        ExplicitHeight = 179
        inherited DBGrid1: TDBGrid
          Width = 1108
          Height = 173
          OnDrawColumnCell = DBGrid1DrawColumnCell
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Geradas'
        ImageIndex = 210
      end
      object TabSheet5: TTabSheet
        Caption = 'Impressas'
        ImageIndex = 211
      end
      object TabSheet6: TTabSheet
        Caption = 'Enviadas'
        ImageIndex = 205
      end
      object TabSheet7: TTabSheet
        Caption = 'Recebidas'
        ImageIndex = 212
      end
      object TabSheet8: TTabSheet
        Caption = 'Dispon'#237'veis'
        ImageIndex = 208
      end
      object TabSheet9: TTabSheet
        Caption = 'Utilizadas'
        ImageIndex = 209
      end
      object TabSheet10: TTabSheet
        Caption = 'Canceladas'
        ImageIndex = 204
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 222
      Width = 1128
      Height = 211
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object PageControl2: TPageControl
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1122
        Height = 205
        ActivePage = TabSheet2
        Align = alClient
        TabOrder = 0
        object TabSheet2: TTabSheet
          Caption = 'Pedidos'
          object DBGrid2: TDBGrid
            Tag = 1
            Left = 0
            Top = 0
            Width = 1114
            Height = 175
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = dsPedidos
            DefaultDrawing = False
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            PopupMenu = pmOpcao
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            OnDrawColumnCell = DBGridDrawColumnCell
            OnDblClick = DBGridDblClick
            OnEnter = DBGridEnter
            OnKeyPress = DBGridKeyPress
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Laudos'
          ImageIndex = 1
          object DBGrid3: TDBGrid
            Tag = 1
            Left = 0
            Top = 0
            Width = 1114
            Height = 139
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = dsLaudos
            DefaultDrawing = False
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            PopupMenu = pmOpcao
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            OnDrawColumnCell = DBGrid3DrawColumnCell
            OnDblClick = DBGridDblClick
            OnEnter = DBGridEnter
            OnKeyPress = DBGridKeyPress
          end
          object Panel4: TPanel
            Left = 0
            Top = 139
            Width = 1114
            Height = 36
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            object JvImage1: TJvImage
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 32
              Height = 30
              Align = alLeft
              Center = True
              Picture.Data = {
                055449636F6E0000010001001818000001000800C80600001600000028000000
                1800000030000000010008000000000040020000000000000000000000000000
                00000000000000000A27FC00D7DFFC00D9E1FC007891FC008299FC00879EFC00
                899FFC0094A8FC0099ACFC009FB1FC00A2B3FC00A8B8FC00A9B9FC00ACBCFC00
                B0BFFC00B2C0FC00B6C4FC00B7C4FC00B8C5FC00BFCBFC00C5D0FC00C6D1FC00
                E2E7FC002D4FFC003556FC003657FC003959FC003B5BFC003C5CFC003C5DFC00
                3F60FC004262FC004362FC004463FC004664FC004867FC004868FC004968FC00
                4A69FC004B6AFC004C6BFC004D6CFC004E6CFC004F6EFC00506FFC005170FC00
                4E69F2005270FC005472FC005573FC005774FC005874FC005976FC005A77FC00
                5771F2005C78FC005D79FC00607CFC00617CFC00627DFC00627EFC006581FC00
                6984FC006E87FC006C85F9006F89FC00718AFC00728BFC00748DFC00768EFC00
                778FFC007A92FC007C94FC007F96FC008198FC008295F5008A9FFC008BA0FC00
                8C9EF50091A5FC008190DC0095A8FC0093A6F900A1B2FC00ACBBFC00B5C2FC00
                D0D8FC00D1D9FC001637FC001738FC001739FC00183AFC001A3CFC001B3CFC00
                1C3EFC001D3EFC001E3FFC001F41FC002042FC002142F9002345FC002546FC00
                2748FC00294AFC002A4BFC002A4CFC002B4DFC002E4FFC003050FC002E4AED00
                3555FC00344FEC003852EC003E57E7004563FC004862F2004D64ED00576CE500
                6076F000596CDE006176EC006174E8006376E5007B8CED00818FDF0099A2D800
                99A2D600C3C4CA00F5F6FC000A28FC000B2AFC000C2AFC000D2BFC000E2DFC00
                1030FC001131FC001232FC001333FC001535FC001630E700213DEC002037E100
                213AE1002B42DF002D42D9003449DC003D53DD003F55E200455ADE005367E300
                5C6EE4006375E3006777DD00929BD600939CD400C1C2C9000A25F8000A25F400
                0A23F0000A23EE000A22ED000A1FE2000A1EDF001028E1001325CE00192DD300
                1C2DC9001F35DC002336D200293BD600293DD5002A3DD7002B3ED6003A4BD300
                6C76D000BDBEC700C2C3CB000A1EE0000A1CD8000A1CD7000A1CD6000A1BD400
                0A18CC000A18C9000A17C2000C1FD9001322CA00131FBB001622BD002533CF00
                3D48C9004C58D300646CCC00656ECC006971CD00686FC700686FC5007E83C400
                888ED0008C91CA009297CD00BBBCC9000A17C4000A16C0000A16BE000A14B900
                0A14B6000A13B1000C18C5000B14B8000F18B100111CB700131BB400232CBD00
                232BB6002B33B8003C45C5003D43B900434ABF006F73C200777BC1008185C300
                9094CA000A11AD000A0EA0000A0E9A000B0F9E00151BAD00151BAA001419A200
                191FB000181DA900181EA7001F25AF002C31B1004B50BA004B50B8000A0D9900
                0A0D96000A0C9400C1C1C900C5C5C900FFFFFF00000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000000000000000C7C0AAA8
                8E93789B8000000000000000000000000000C9BEB7BA8C8D6E717294967F0000
                000000000000000000C1D1B59E8B661924333E41797651000000000000000000
                C2CDA201865F6D2235404A4E504C7B7D00000000000000DFD2B201018A661B2D
                3F05090D0F0C4F7B7E000000000000D6B801010159681F3545500E165815557C
                98B100000000C8E09F0101825B6B21394809130381021153979A00000000DBCE
                010101015A6A203804525658175710087A9900000000D7B7010101018B671E32
                42070B1214115406779500000000E4B60101010187636F273B474E090A094D46
                3792F2000000E5A6191C1985835C691D2C3C44494B49433B74AC9C000000EAA7
                3B302359018760181E29343A3D3A332870AB00000000DAD33D32266C82018A61
                6B1A1F2325231F198FAE00000000C6EE75362B20620101885D65696C6D6C6964
                A5AF0000000000E9BC3B31261F68888285895A5D5E5D5AA4BBCA0000000000DE
                EFAD393026201D1B010101838483A0B9C300000000000000ECEE9139312A2573
                0101010101A1CCBF000000000000000000EDF0BD2F35312E0101019DB4CFD9F1
                00000000000000000000DDE6E2D4A990A3B3CBD0D5C400000000000000000000
                00000000DCEBE8E3E1E7D8C5B000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000FFFFFF00FFFFFF00FF007F00FC003F00F8001F00F0000F00E0000700
                E0000300C0000300C0000300C0000300C0000100C0000100C0000300C0000300
                C0000300E0000300E0000700F0000F00F8000F00FC003F00FF007F00FFFFFF00
                FFFFFF00}
              Transparent = True
              ExplicitHeight = 26
            end
            object lbLeg1: TLabel
              AlignWithMargins = True
              Left = 41
              Top = 3
              Width = 50
              Height = 30
              Align = alLeft
              Caption = 'Digita'#231#227'o'
              Layout = tlCenter
              ExplicitHeight = 15
            end
            object JvImage2: TJvImage
              AlignWithMargins = True
              Left = 97
              Top = 3
              Width = 32
              Height = 30
              Align = alLeft
              Center = True
              Picture.Data = {
                055449636F6E0000010001001818000001000800C80600001600000028000000
                1800000030000000010008000000000040020000000000000000000000000000
                00000000000000000ACCFC0098FBFC008FF8FC0087F6FC0088F6FC008BF7FC00
                78F1FC0079F1FC007AF1FC007BF2FC007FF3FC0083F4FC006FEDFC0070EEFC00
                71EEFC0074EFFC0075F0FC005CE7FC005DE7FC005FE8FC0060E8FC005EE3F700
                61E6F90063E9FC0064EAFC0065EAFC0067EBFC0067E8F90069EBFC006AECFC00
                6BECFC006AEBFB006CECFC00C1C8C90042DFFC0046E0FC0048E1FC0049E1FC00
                4AE1FC004BE2FC004DE2FC004EE3FC004FE3FC0050E4FC004FDDF7004FDEF700
                4FDCF60052E4FC0050DBF40055E4FC0055E4FB0051D8F00056E5FC0058E5FC00
                59E6FC005AE6FC005BE6FC0073D4E500BEC9CB002BD7FC002DD7FC002ED8FC00
                31D9FC0032D9FC0033D9FC0034DAFC0037DBFC0039DBFC003ADCFC003BDCFC00
                3CDCFC003CDDFC003EDDFC003FDEFC003EDAF80040DEFC0044DFFC0048DCF800
                49D8F40048D4F0004BD8F3004FDAF40059D2EA0070D5E80085D0DE008DD1DE00
                8BCCDA0090CEDB000ACAFA000AC9F9000AC7F7000BCCFC000CCCFC000DCDFC00
                0ECDFC0011CEFC0013CFFC0014CEFC0014CFFC0015D0FC0016D0FC0017D1FC00
                19D1FC0018C9F50018C5F0001AD1FC001BD1FC001CD0FC001CD1FC001DD2FC00
                1ED2FC001FD2FC001EC7F10020D3FC0022D3FC0024D1FC0024D4FC0024D3FB00
                25D4FC0024CEF70026D5FC0024C9F20028D5FC0029D6FC002AD6FC0029C8EE00
                2CD2F70031D3F70033D4FC0031CCEF0035D4F70038D2F5003AD1F30038C3E600
                3ACAEB003CCFF00040D6FC0046D8FC004DD9FC004FD9FC0050DAFC0054DBFC00
                58DBFC0059DCFC005BDCFC0055CCE9005EDDFC005FDDFC0062DDFC0062DEFC00
                63DEFC0067DFFC0067DBF8006BDFFC006CE0FC006DE0FC006EE0FC006FE0FC00
                70E0FC0074E1FC0076E2FC007AE3FC007DE3FC008BC6D500BBC8CB00C0C9CB00
                0AC6F7000AC2F3000AC1F2000AC0F1000ABFEF000ABEEE000ABDED000AB9E900
                0AB8E8000AB6E6000AB3E4000AB4E4000BB1E1000CB6E6000EC0EF0013C4F200
                14B9E70016BFEB0018AFDB001EB6E20021BCE70022B5DF0023B3DD0026C4ED00
                28C1EC002BC0E8002AB4DC002DBFE80036C5EC0038BCE00038BADE003FC7ED00
                40C7ED0043CBF0003DB7D90043B9DB0047C3E3004CB9D8004EB8D70066D9F700
                5DC2DC0061C0DB0066C1DB0065BFD90065BED70068C4DC007ABFD30083C5D700
                81C0D20081C1D2008CC5D4008CC4D3000AB1E2000AB0E1000AAEDF000AACDD00
                0AA7D7000AA4D4000AA3D3000BA7D7000BA5D5000BA4D4000BA3D30012B1E000
                15AEDC0015ACDA0015AAD80017B1DF0019B3E10018ADD9001AACD9001FB0DB00
                21B7E4002EB2DA006FBDD400B6C6CB00C5C8C900BDC6CA00FFFFFF0000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000000000000000D6CBC069
                71879257A600000000000000000000000000A4BBAEB568787F83848550580000
                000000000000000000CFB4AC5A66794049252C332D4F3AF30000000000000000
                D0B1A80160703E472632141A1B17315400000000000000D9B3A901016577424D
                3015211007101C5256000000000000BCAF010101677C4426361B110C050C1116
                34A600000000DADE5B0101016A7D4628391F0A0602060A20515500000000CADB
                010101016A7D4527381E08040304071D2F5300000000BDAE01010101667B4324
                32180F0A0B090E182E8800000000E7AD0101010161733F4A293819210D211937
                4E823B000000E8BF8C8F8B625E6B7C43232A35131412352A4B7EA5000000EEC2
                A29C94740161723C434C25292B29254C80BE00000000C9EAA39F968A5C016472
                7D414448494844417A8600000000D8E0CEA09891810101636D757D3D3E3D7D76
                B8D40000000000EDBAA29D9790896C5D5F646A6E6F6E67B6B7F20000000000D7
                E5C6A19B96918E8D5D01015E5F5E5BB0D100000000000000CCE4C7A19D989593
                0101010101A7B2C4000000000000000000CDE1EF99A09E9A01010159ACDCC522
                00000000000000000000D5E9E3EBC3C8AAABB0DDE6D200000000000000000000
                00000000F1F0ECE2DFB9C1D3F400000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000FFFFFF00FFFFFF00FF007F00FC003F00F8000F00F0000F00E0000700
                E0000300C0000300C0000300C0000300C0000100C0000100C0000300C0000300
                C0000300E0000300E0000700F0000F00F8000F00FC003F00FF007F00FFFFFF00
                FFFFFF00}
              Transparent = True
              ExplicitLeft = 126
              ExplicitHeight = 26
            end
            object lbLeg2: TLabel
              AlignWithMargins = True
              Left = 135
              Top = 3
              Width = 74
              Height = 30
              Align = alLeft
              Caption = 'Apontamento'
              Layout = tlCenter
              ExplicitHeight = 15
            end
            object lbLeg3: TLabel
              AlignWithMargins = True
              Left = 350
              Top = 3
              Width = 48
              Height = 30
              Align = alLeft
              Caption = 'Assinado'
              Layout = tlCenter
              ExplicitHeight = 15
            end
            object JvImage3: TJvImage
              AlignWithMargins = True
              Left = 215
              Top = 3
              Width = 32
              Height = 30
              Align = alLeft
              Center = True
              Picture.Data = {
                055449636F6E0000010001001818000001000800C80600001600000028000000
                1800000030000000010008000000000040020000000000000000000000000000
                0000000000000000CC6B0A007B4333007B4334007D4432008246300083462F00
                894F36008D5239008E4C2A00905234008E513400935536008D533700945A3C00
                99634700914E280098593500935534009C634200A67A61009850250097502500
                954F260095542D009E5F38009B5D39009E603B009A5F3C00A7755500A06F5200
                A5795F00B2907B00B5988700B79B8A00B79C8B009D5322009A522300AC6C4100
                B28B7200C7C4C200A7581D00A4571E00A05520009F552000A0562100A65E2800
                B5754600AB714700B87C4F00A9724A00B48E7300BFA59100B05D1800AF5D1800
                AD5C1900B3611B00AC632A00AC673000B46F3700B7723900B16D3800BA753C00
                BF7D4500B87A4700BF814E00B88A6600B68C6B00BC937100B8906E00C1A58E00
                BDA49000C0651000B9621400B7611500B5601600B05E1700BB671E00B96B2500
                BB702D00BF743200C1804800C8874C00C4874E00B9804F00C5905F00D79F6B00
                D39C6B00CA976800C1A18500CC6C0B00CC6C0C00C9690C00C6680D00CD6D0E00
                CD6E0F00C2660F00C1660F00CE701200CE711400CF721500D0741700D1751900
                D1771B00D1771C00D0751C00D1781D00D27A2000D27B2200D37D2500D17A2400
                C1702300D37E2700D37F2900C8792E00D4843300CD823900D68B4000CE863E00
                CF874200D88F4600D9934D00D6924C00CB884800DA955000D9944F00DB985400
                DB995800D9995700DC9A5900DC9B5B00DD9D5F00CC915800DEA06200DD9F6200
                D0955C00D79C6100D59B6200DFA36700CF966000D29B6400DFA56B00D19A6500
                CF9A6400E0A66D00E0A76E00E0A86F00E0A87000E1AB7400E2AC7600E3AE7A00
                E3B07D00D0A77D00CFA67E00CCAC8D00C9AD9100CCB19600C5BEB700C8C2BC00
                D1791E00D17A2000D27C2300D4802900D5812A00D5832C00D6852F00D6863000
                D6853000D7873300D8883400D98A3800D98B3900D98C3A00DA8D3C00DB8F3E00
                DB914100DC924300DC934400DD954700DE964900DE974A00DF994D00DF994E00
                E09B5000E19D5200E19D5400E19E5500E29F5600E2A15900E3A25B00E4A45D00
                E4A55F00E4A76200D99E5E00E4AE7300DEA97100CEB29500E4A86200E5A96400
                E6AC6700E5AB6600E6AC6800E7AD6B00E8AF6D00E8B06F00EAB47400E9B37300
                E9B37400EAB57500EBB77800ECB97B00EBB87B00ECBA7D00E5B37900EDBD8000
                EEBF8300EFC18700F0C28800F1C48B00F1C58D00F1C68E00F2C68F00F3CA9400
                F4CD9800F7D3A200C8C4BF00C5C2BE00C8C5C100F6D19D00F6D19E00F8D6A600
                FBDEB100C8C7C500FFFFFF000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000059543B4E
                4F51559BE300000000000000000000000000463A29386F7274777B52849C0000
                000000000000000000422D355D66A3ABB2B8BEC0888799E80000000000000000
                4325490162A1A9B1B9C5CBD0D1C28C980000000000000034164A010165A3ADB6
                BFCCD4D8DAD8D58EC4000000000000192A01010167A5AFB9C8D1D9DFE5DFD9C3
                8FE3000000004709600101016AA6B0BBC9D4DDE0E7E0DDD38B9A000000001D15
                010101016AA7B0BAC9D2DBE4E6E4DAD38958000000001C290101010166A4AEB7
                C5CFD7DDDEDCD7CEC153000000000A37010101016470AAB3BCC9CDD4D6D4CDC7
                803FE10000000B3D7D7F79635E9FA5AEB5BDC6CACBCAC6BC7A3E9E0000000E26
                9690836E01646DA8AEB4B8BCBDBCB8B4763C000000001E12979385785A01656D
                A7ACAFB2B2B2AFAB504000000000230457948A8273010164A0A2A5A8A9A8A571
                39440000000000081A9691858175695B5F65686B6C6B684D2E9D000000000022
                0331959085827E7C5B01015E5E5E612C45000000000000001F023195918A8683
                010101010148243000000000000000000014021B5694928D0101015C36173228
                00000000000000000000210704112F414B4C2B10183300000000000000000000
                00000000200F0D05060C1327E200000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000FFFFFF00FFFFFF00FF007F00FC003F00F8000F00F0000F00E0000700
                E0000300C0000300C0000300C0000300C0000100C0000100C0000300C0000300
                C0000300E0000300E0000700F0000F00F8000F00FC003F00FF007F00FFFFFF00
                FFFFFF00}
              Transparent = True
              ExplicitLeft = 258
              ExplicitHeight = 26
            end
            object JvImage4: TJvImage
              AlignWithMargins = True
              Left = 404
              Top = 3
              Width = 32
              Height = 30
              Align = alLeft
              Center = True
              Picture.Data = {
                07544269746D6170F6060000424DF60600000000000036000000280000001800
                0000180000000100180000000000C00600000000000000000000000000000000
                0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FF8383834747472B2B2B1C1C1C2424244141415C5C5C8F
                8F8FC1C1C1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FF8B8B8B2121210A0A0A0E0E0E1C1C1C2A2A2A3636
                363F3F3F444444464646545454959595FF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FF5D5D5D0C0C0C0A0A0A0A0A0A1B1B1B
                2C2C2C3C3C3C4C4C4C5858586262626767676060605858587D7D7DC5C5C5FF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6161610A0A0A0A0A0A0A
                0A0A1212122525253737374949495959596868687474747C7C7C7F7F7F767676
                6262627B7B7BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8C8C8C0B0B
                0B0A0A0A0A0A0A0A0A0A1818182B2B2B3F3F3F52525264646475757585858590
                90909494949090907E7E7E626262959595FF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FF2222220A0A0A0A0A0A0A0A0A0A0A0A1D1D1D3131314545455959596C6C
                6C7F7F7F919191A1A1A1A8A8A8A1A1A1919191737373616161C1C1C1FF00FFFF
                00FFFF00FFFF00FF8C8C8C0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A1F1F1F333333
                4747475C5C5C707070848484999999ACACACBCBCBCACACAC9898988282825C5C
                5C8B8B8BFF00FFFF00FFFF00FFFF00FF4343430A0A0A0A0A0A0A0A0A0A0A0A0A
                0A0A1E1E1E3232324646465A5A5A6E6E6E828282969696A8A8A8B0B0B0A7A7A7
                959595828282606060646464FF00FFFF00FFFF00FFFF00FF2323230A0A0A0A0A
                0A0A0A0A0A0A0A0A0A0A1A1A1A2E2E2E4242425555556868687A7A7A8B8B8B98
                98989C9C9C9797978A8A8A797979606060484848FF00FFFF00FFFF00FFFF00FF
                1515150A0A0A0A0A0A0A0A0A0A0A0A0A0A0A1515152929293B3B3B4D4D4D5E5E
                5E6E6E6E7B7B7B8686868888888585857B7B7B6E6E6E5757573B3B3BBFBFBFFF
                00FFFF00FFFF00FF1515152828284D4D4D5858584D4D4D1414140E0E0E202020
                3131314242425151516060606A6A6A7171717474747171716A6A6A5F5F5F4D4D
                4D313131BCBCBCFF00FFFF00FFFF00FF1F1F1F2D2D2D7A7A7A6D6D6D5F5F5F24
                24240A0A0A1515152626263434344242424F4F4F5757575E5E5E6060605E5E5E
                5757574F4F4F3C3C3C2D2D2DFF00FFFF00FFFF00FFFF00FF3D3D3D1717177D7D
                7D7070706262624646460B0B0B0A0A0A1717172626263232323C3C3C4545454A
                4A4A4C4C4C4A4A4A4545453C3C3C2A2A2A3B3B3BFF00FFFF00FFFF00FFFF00FF
                8181810A0A0A6666667474746767675B5B5B3333330A0A0A0A0A0A1717172121
                212A2A2A3131313636363737373636363131312A2A2A191919696969FF00FFFF
                00FFFF00FFFF00FFFF00FF1A1A1A1E1E1E7A7A7A6E6E6E636363595959404040
                1C1C1C0C0C0C0F0F0F1717171D1D1D2222222323232222221D1D1D1515151515
                15B6B6B6FF00FFFF00FFFF00FFFF00FFFF00FF8181810B0B0B3F3F3F7676766C
                6C6C6262625B5B5B5454545050500C0C0C0A0A0A0A0A0A0E0E0E0F0F0F0E0E0E
                0A0A0A0A0A0A666666FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4C4C
                4C0B0B0B4040407676766E6E6E6767676262625E5E5E0A0A0A0A0A0A0A0A0A0A
                0A0A0A0A0A0A0A0A0A0A0A383838FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FF4E4E4E0A0A0A2121216767677474746F6F6F6B6B6B0A0A
                0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A383838C1C1C1FF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7A7A7A1515150B0B0B191919
                3636364343430A0A0A0A0A0A0A0A0A0A0A0A121212656565FF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FF6F6F6F2E2E2E1818180B0B0B0A0A0A1818182A2A2A656565BDBDBDFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FF}
              Transparent = True
              ExplicitLeft = 440
              ExplicitTop = 6
            end
            object Label3: TLabel
              AlignWithMargins = True
              Left = 442
              Top = 3
              Width = 56
              Height = 30
              Align = alLeft
              Caption = 'Cancelado'
              Layout = tlCenter
              ExplicitHeight = 15
            end
            object JvImage5: TJvImage
              AlignWithMargins = True
              Left = 312
              Top = 3
              Width = 32
              Height = 30
              Align = alLeft
              Center = True
              Picture.Data = {
                055449636F6E0000010001001818000001000800C80600001600000028000000
                1800000030000000010008000000000040020000000000000000000000000000
                00000000000000000A9B0A000A990A000A970A000A920A000A910A000B9B0B00
                0A8E0A000A8D0A000A880A000C9C0C000A860A000A840A000A830A000A800A00
                0A7E0A000A7C0A000C860C000B760B000E920F000B740B000B730B00149F1400
                1282120015801500157F15001CA31C00157D15001783170019861900187F1800
                198219001A801A0023A523001E891E0021912100218B21001F841F00228A2200
                238923002898280032AC32002D962D002A8B2A002E8B2E00369D360040B14000
                389638003895380046B346003FA13F0040A2400043A643003D933D004DB64D00
                4FB74F0050B8500047A147004397430054B9540059BB59005BBC5B005EBD5E00
                5FBE5F004C984C004E9A4E0062BF620063BF630067C0670067BD670066BB6600
                6BC26B006DC36D006EC36E005DA55D0070C4700061A7610074C5740076C77600
                66A866007AC87A0067A7670065A465007DC97D006FA66F007AAB7A0081B48100
                81AE810081AD81008BB68B008CB48C00B7C3B700BDC4BD00C1C6C100C5C8C500
                0D9E0F000E9F110011A2140013A4170014A51800139A1700148D16002B9A2C00
                16A71C0016A71B0017A91E0018AA1F0017971C0019A32000199D200068AD6B00
                19AB21001AAC22001BAC24001CAD25001DAE27001EAF28001FB02A0020B12B00
                21B22C0021B22B0038A43F001FA52A0023B42F0025B6320025B5320026B73400
                25B0320024AB310027B8350028A6330029BA38002ABC3B002BBD3C002DBF3E00
                2EBF40003BB0480057BA62002FC042002AAD3B002EBA400032C3460034C54800
                33BF47008CC39400C0C8C10036C74C0033B7470039CA500039CA4F0037C24D00
                3CCE55003CCD54003BCC52003AC351003DCF57003ED0590040D15B0041D25D00
                3CC2540041CF5C003EBF55005CC8710086CA9300BBC6BD0042D35F0045D66200
                46D7630048D9670049C8630090CA9C004ADB6A004BDC6B004BDC6C004DDE6D00
                4BD86A004FE172004EDF6F004BD36B0051E3740054D5730074CF89008ECF9D00
                BEC7C00052E4770054E57A0051DD74004ED56F0052DB760052DA750058E87E00
                71D38900C0C8C20057E87E0059EA81005BEC84005EEF870060F189005CED8600
                5DEE870062F48F0062F38D0060EC8B0064F3900066F7950067F8950067F89600
                69FA98006BFC9B006EFC9D0070FC9E006FF59A0073FCA10072FA9F0076FCA300
                7DFCA7008DFCB20092FCB500A2FCC000ACFCC600C2FCD500C3FCD600C5FCD700
                CEFCDD00CFFCDE00D9FCE400F3FCF60074FCA20082FCAB0083FCAC008EFCB300
                99FCBB009BFCBC009EFCBE00A0FCBF00B5FCCD00FFFFFF000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000000000000000000005639666D
                7A8889909100000000000000000000000000592309136C7F8C969A9FA9AA0000
                0000000000000000004A1108026A818E9DACB8BEBAB2B55E0000000000000000
                4C0D040161768A9BADC1C9CFD0CBBCBF000000000000005A0E050101677E92A7
                B9C8E3E6E7D8D3BDB600000000000026090101016F8499ADC3D0D9EBDEEBD9CA
                B4C0000000005A1003010101718597B1C4D4DAE0E2DFEAD5BBA3000000003A0E
                01010101708598AEC7D2E8DDE1DCE7D1BAA200000000270901010101698395A8
                C1CDE5EADBE9E4CCBAA100000000180801010101627B8D9EB0C7CED6D7E3CEC6
                AF93B70000001928373C36165F728495A6B3C2C5C9C5C2B0A08BA4000000252A
                50483F210162788694A5ABB0B3B0ABA58F8200000000351C534B423106016877
                858E999C9D9C998E8079000000005714464D443D29010163737C84878A87847D
                6B6E000000000020225049433C2E1A0A6068707475747064655B000000000058
                15324E47423D3B380601015F605F030B4F000000000000004014334E4944423E
                0101010101030C2F000000000000000000411524454D494701010102080E305D
                00000000000000000000551B141D2D3405070B0F175100000000000000000000
                00000000542C1E12121F2B525C00000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000FFFFFF00FFFFFF00FF007F00FC003F00F8000F00F0000F00E0000700
                E0000300C0000300C0000300C0000300C0000100C0000100C0000300C0000300
                C0000300E0000300E0000700F0000F00F8000F00FC003F00FF007F00FFFFFF00
                FFFFFF00}
              Transparent = True
              ExplicitLeft = 263
              ExplicitTop = -5
            end
            object Label10: TLabel
              AlignWithMargins = True
              Left = 253
              Top = 3
              Width = 53
              Height = 30
              Align = alLeft
              Caption = 'Encerrado'
              Layout = tlCenter
              ExplicitHeight = 15
            end
          end
        end
        object TabSheet11: TTabSheet
          Caption = 'Hist'#243'rico de Estados'
          ImageIndex = 2
          object DBGrid4: TDBGrid
            Tag = 1
            Left = 0
            Top = 0
            Width = 1114
            Height = 175
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = dsHist
            DefaultDrawing = False
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            PopupMenu = pmOpcao
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            OnDrawColumnCell = DBGrid4DrawColumnCell
            OnDblClick = DBGridDblClick
            OnEnter = DBGridEnter
            OnKeyPress = DBGridKeyPress
          end
        end
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Width = 1122
    ExplicitWidth = 1122
    inherited ToolBar1: TToolBar
      inherited ToolButton2: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton5: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton9: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton6: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton1: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton8: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton3: TToolButton
        ExplicitWidth = 32
      end
      inherited tbOrder: TToolButton
        ExplicitWidth = 76
      end
      inherited tbReport: TToolButton
        ExplicitWidth = 32
      end
      inherited tbOpcao: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton10: TToolButton
        ExplicitWidth = 32
      end
    end
  end
  inherited alDef: TActionList
    Left = 352
    Top = 192
  end
  inherited pmRel: TPopupMenu
    Left = 400
    Top = 192
  end
  inherited pmOrder: TPopupMenu
    Left = 458
    Top = 190
  end
  inherited alRunTime: TActionList
    Left = 514
    Top = 198
  end
  inherited DataSource1: TDataSource
    Left = 288
    Top = 192
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    AfterScroll = IBrwSrcAfterScroll
    AfterPost = IBrwSrcAfterScroll
    SQL.Strings = (
      
        'select distinct a.recno,           a.codigo,      a.umidade,   a' +
        '.equip_recno,  a.estado_data entrada,  a.coleta,'
      
        '       a.tpamostra_recno, a.amostrador,  a.tamb,      a.toleo,  ' +
        '      a.labsubest_recno,     a.tensao,'
      
        '       a.estado,          a.origem,      a.tag,       a.local,  ' +
        '      a.destinatario,        c.empresa,'
      
        '       c.nome_chave,      c.cnpj,        c.cpf,       c.telefone' +
        ',     c.cidade,              c.estado, c.email,'
      
        '       e.fabricante,      e.serie,       e.tipo,      e.descri, ' +
        '      e.potencia,            e.imped,'
      
        '       e.tensao,          e.fases,       e.ano,       e.lote,   ' +
        '      e.isolante,            e.volume,'
      
        '       e.drenos,          e.familia,     e.tensao_un, e.potencia' +
        '_un,  tp.descri,             tp.inf_te,'
      
        '       s.sigla,           s.nome,        s.regional,  s.reg_nome' +
        ',     pa.pedido,             a.comodato,'
      
        '       a.cliente,         cf.empresa empresacli,     cf.nome_cha' +
        've nome_chavecli, cf.cnpj cnpj_cli, cf.cpf cpf_cli,'
      
        '       cf.telefone telefone_cli, cf.cidade cidade_cli, cf.estado' +
        ' estado_cli, cf.email email_cli,'
      
        '       a.qtd, a.consumido, a.descartado, a.saldo, p.labproc_recn' +
        'o solicitacao, cast(sys_iif(p.tipo = 2, '#39'Seringa'#39', '#39'Frasco'#39') as ' +
        'varchar(15)) vidraria'
      '  from labamostras a'
      '       join tbclientes c'
      '         on c.codigo = a.codigo'
      '       join tbclientes cf'
      '         on cf.codigo = a.cliente'
      '       left join vequip e'
      '         on e.recno = a.equip_recno'
      '       left join labtipo tp'
      '         on tp.recno = a.tpamostra_recno'
      '       left join vsubest s'
      '         on s.codigo = c.codigo'
      '        and s.recno = a.labsubest_recno'
      '       left join pedido_amostras pa'
      '         on pa.amostra = a.recno'
      '       join labprocxequip p'
      '         on p.amostra = a.recno')
    Sequence = ZSequence1
    SequenceField = 'recno'
    Left = 224
    Top = 192
    object IBrwSrcestado: TIntegerField
      DisplayLabel = ' '
      FieldName = 'estado'
      ReadOnly = True
      Required = True
    end
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Amostra'
      FieldName = 'recno'
      Required = True
    end
    object IBrwSrcpedido: TIntegerField
      DisplayLabel = 'Pedido'
      FieldName = 'pedido'
    end
    object IBrwSrccomodato: TIntegerField
      DisplayLabel = 'Etiqueta'
      FieldName = 'comodato'
    end
    object IBrwSrcsolicitacao: TIntegerField
      DisplayLabel = 'Remessa'
      FieldName = 'solicitacao'
      Required = True
    end
    object IBrwSrcvidraria: TStringField
      DisplayLabel = 'Vidraria'
      DisplayWidth = 10
      FieldName = 'vidraria'
      ReadOnly = True
      Size = 15
    end
    object IBrwSrcentrada: TDateField
      DisplayLabel = 'Data Status'
      FieldName = 'entrada'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object IBrwSrcqtd: TFloatField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 15
      FieldName = 'qtd'
      Required = True
      DisplayFormat = ',0.###0 ml'
    end
    object IBrwSrcconsumido: TFloatField
      DisplayLabel = 'Consumido'
      DisplayWidth = 15
      FieldName = 'consumido'
      Required = True
      DisplayFormat = ',0.###0 ml'
    end
    object IBrwSrcdescartado: TFloatField
      DisplayLabel = 'Descartado'
      DisplayWidth = 15
      FieldName = 'descartado'
      Required = True
      DisplayFormat = ',0.###0 ml'
    end
    object IBrwSrcsaldo: TFloatField
      DisplayLabel = 'Saldo'
      DisplayWidth = 15
      FieldName = 'saldo'
      Required = True
      DisplayFormat = ',0.###0 ml'
    end
    object IBrwSrccodigo: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'codigo'
      Required = True
    end
    object IBrwSrcempresa: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 30
      FieldName = 'empresa'
      Size = 100
    end
    object IBrwSrcnome_chave: TStringField
      DisplayLabel = 'Nome Curto'
      FieldName = 'nome_chave'
      Size = 45
    end
    object IBrwSrccnpj: TStringField
      DefaultExpression = '99.999.999/9999-99;0;'
      DisplayLabel = 'C.N.P.J.'
      DisplayWidth = 18
      FieldName = 'cnpj'
      Size = 14
    end
    object IBrwSrccpf: TStringField
      DefaultExpression = '999.999.999-99;0;'
      DisplayLabel = 'C.P.F.'
      DisplayWidth = 14
      FieldName = 'cpf'
      Size = 11
    end
    object IBrwSrccidade: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 40
      FieldName = 'cidade'
      Size = 100
    end
    object IBrwSrcestado_1: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'estado_1'
      Size = 2
    end
    object IBrwSrcumidade: TIntegerField
      FieldName = 'umidade'
      Visible = False
    end
    object IBrwSrcequip_recno: TIntegerField
      FieldName = 'equip_recno'
      Visible = False
    end
    object IBrwSrccoleta: TDateField
      FieldName = 'coleta'
      Visible = False
    end
    object IBrwSrctpamostra_recno: TIntegerField
      FieldName = 'tpamostra_recno'
      Visible = False
    end
    object IBrwSrcamostrador: TStringField
      FieldName = 'amostrador'
      Visible = False
      Size = 60
    end
    object IBrwSrctamb: TIntegerField
      FieldName = 'tamb'
      Visible = False
    end
    object IBrwSrctoleo: TIntegerField
      FieldName = 'toleo'
      Visible = False
    end
    object IBrwSrclabsubest_recno: TIntegerField
      FieldName = 'labsubest_recno'
      Visible = False
    end
    object IBrwSrctensao: TFloatField
      FieldName = 'tensao'
      Visible = False
    end
    object IBrwSrcorigem: TIntegerField
      FieldName = 'origem'
      Required = True
      Visible = False
    end
    object IBrwSrctag: TStringField
      FieldName = 'tag'
      Visible = False
      Size = 50
    end
    object IBrwSrclocal: TStringField
      FieldName = 'local'
      Visible = False
      Size = 50
    end
    object IBrwSrcdestinatario: TStringField
      FieldName = 'destinatario'
      Visible = False
      Size = 100
    end
    object IBrwSrctelefone: TStringField
      FieldName = 'telefone'
      Visible = False
      Size = 100
    end
    object IBrwSrcemail: TStringField
      FieldName = 'email'
      Visible = False
      Size = 100
    end
    object IBrwSrcfabricante: TStringField
      FieldName = 'fabricante'
      Visible = False
      Size = 100
    end
    object IBrwSrcserie: TStringField
      FieldName = 'serie'
      Visible = False
      Size = 30
    end
    object IBrwSrctipo: TStringField
      FieldName = 'tipo'
      Visible = False
      Size = 100
    end
    object IBrwSrcdescri: TStringField
      FieldName = 'descri'
      Visible = False
      Size = 60
    end
    object IBrwSrcpotencia: TFloatField
      FieldName = 'potencia'
      Visible = False
    end
    object IBrwSrcimped: TFloatField
      FieldName = 'imped'
      Visible = False
    end
    object IBrwSrctensao_1: TFloatField
      FieldName = 'tensao_1'
      Visible = False
    end
    object IBrwSrcfases: TIntegerField
      FieldName = 'fases'
      Visible = False
    end
    object IBrwSrcano: TIntegerField
      FieldName = 'ano'
      Visible = False
    end
    object IBrwSrclote: TStringField
      FieldName = 'lote'
      Visible = False
      Size = 15
    end
    object IBrwSrcisolante: TStringField
      FieldName = 'isolante'
      Visible = False
      Size = 100
    end
    object IBrwSrcvolume: TIntegerField
      FieldName = 'volume'
      Visible = False
    end
    object IBrwSrcdrenos: TStringField
      FieldName = 'drenos'
      Visible = False
      Size = 5
    end
    object IBrwSrcfamilia: TStringField
      FieldName = 'familia'
      Visible = False
      Size = 100
    end
    object IBrwSrctensao_un: TStringField
      FieldName = 'tensao_un'
      Visible = False
      Size = 3
    end
    object IBrwSrcpotencia_un: TStringField
      FieldName = 'potencia_un'
      Visible = False
      Size = 3
    end
    object IBrwSrcdescri_1: TStringField
      FieldName = 'descri_1'
      Required = True
      Visible = False
      Size = 60
    end
    object IBrwSrcinf_te: TBooleanField
      FieldName = 'inf_te'
      Required = True
      Visible = False
    end
    object IBrwSrcsigla: TStringField
      FieldName = 'sigla'
      Visible = False
      Size = 3
    end
    object IBrwSrcnome: TStringField
      FieldName = 'nome'
      Visible = False
      Size = 60
    end
    object IBrwSrcregional: TIntegerField
      FieldName = 'regional'
      Visible = False
    end
    object IBrwSrcreg_nome: TStringField
      FieldName = 'reg_nome'
      Visible = False
      Size = 60
    end
    object IBrwSrccliente: TIntegerField
      FieldName = 'cliente'
      Required = True
      Visible = False
    end
    object IBrwSrcempresacli: TStringField
      FieldName = 'empresacli'
      Visible = False
      Size = 100
    end
    object IBrwSrcnome_chavecli: TStringField
      FieldName = 'nome_chavecli'
      Visible = False
      Size = 45
    end
    object IBrwSrccnpj_cli: TStringField
      FieldName = 'cnpj_cli'
      Visible = False
      Size = 14
    end
    object IBrwSrccpf_cli: TStringField
      FieldName = 'cpf_cli'
      Visible = False
      Size = 11
    end
    object IBrwSrctelefone_cli: TStringField
      FieldName = 'telefone_cli'
      Visible = False
      Size = 100
    end
    object IBrwSrccidade_cli: TStringField
      FieldName = 'cidade_cli'
      Visible = False
      Size = 100
    end
    object IBrwSrcestado_cli: TStringField
      FieldName = 'estado_cli'
      Visible = False
      Size = 2
    end
    object IBrwSrcemail_cli: TStringField
      FieldName = 'email_cli'
      Visible = False
      Size = 100
    end
  end
  inherited pmOpcao: TPopupMenu
    Left = 576
    Top = 192
  end
  inherited zIBrwSrc: TZUpdateSQL
    ModifySQL.Strings = (
      'UPDATE labamostras SET'
      '  equip_recno = :equip_recno,'
      '  tpamostra_recno = :tpamostra_recno,'
      '  coleta = :coleta,'
      '  amostrador = :amostrador,'
      '  tamb = :tamb,'
      '  toleo = :toleo,'
      '  umidade = :umidade,'
      '  tensao = :tensao,'
      '  estado = :estado,'
      '  labsubest_recno = :labsubest_recno,'
      '  tag = :tag,'
      '  local = :local,'
      '  cliente = :cliente,'
      '  destinatario = :destinatario'
      'WHERE'
      '  labamostras.recno = :OLD_recno')
    Left = 160
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'equip_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tpamostra_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'coleta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'amostrador'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tamb'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'toleo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'umidade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tensao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'estado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'labsubest_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tag'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'local'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'destinatario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_recno'
        ParamType = ptUnknown
      end>
  end
  object qPedidos: TZReadOnlyQuery
    Connection = DM.Design
    BeforeRefresh = qPedidosBeforeRefresh
    SQL.Strings = (
      'select p.pedido, p.codserv, s.descri, p.consumo'
      '  from pedido_amostras p    '
      '       join servicos s'
      '         on s.codserv = p.codserv'
      ' where p.amostra = :amostra')
    Params = <
      item
        DataType = ftUnknown
        Name = 'amostra'
        ParamType = ptUnknown
      end>
    Left = 224
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'amostra'
        ParamType = ptUnknown
      end>
    object qPedidospedido: TIntegerField
      DisplayLabel = 'Pedido'
      FieldName = 'pedido'
      Required = True
    end
    object qPedidoscodserv: TIntegerField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'codserv'
      Required = True
    end
    object qPedidosdescri: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 40
      FieldName = 'descri'
      Required = True
      Size = 80
    end
    object qPedidosconsumo: TFloatField
      DisplayLabel = 'Consumo'
      FieldName = 'consumo'
      Required = True
      DisplayFormat = ',0.###0 ml'
    end
  end
  object dsPedidos: TDataSource
    AutoEdit = False
    DataSet = qPedidos
    Left = 288
    Top = 248
  end
  object qLaudos: TZReadOnlyQuery
    Connection = DM.Design
    BeforeRefresh = qLaudosBeforeRefresh
    SQL.Strings = (
      
        'select r.status, r.recno, r.emissao, r.relato_recno, l.descri, r' +
        '.revisao,'
      
        '  cast(r.diagnostico as varchar(150)) diagnostico, cast(r.recome' +
        'ndacao as varchar(150)) recomendacao'
      '  from labamostras_rel r'
      '       join labamostras a'
      '         on a.recno = r.amostra'
      '       join labrel l'
      '         on l.recno = r.relato_recno'
      ' where r.amostra = :amostra')
    Params = <
      item
        DataType = ftUnknown
        Name = 'amostra'
        ParamType = ptUnknown
      end>
    Left = 224
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'amostra'
        ParamType = ptUnknown
      end>
    object qLaudosstatus: TIntegerField
      DisplayLabel = ' '
      FieldName = 'status'
      Required = True
    end
    object qLaudosrecno: TIntegerField
      DisplayLabel = 'Laudo'
      FieldName = 'recno'
      Required = True
    end
    object qLaudosrevisao: TIntegerField
      DisplayLabel = 'Revis'#227'o'
      FieldName = 'revisao'
    end
    object qLaudosemissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      DisplayWidth = 16
      FieldName = 'emissao'
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object qLaudosrelato_recno: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'relato_recno'
    end
    object qLaudosdescri: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 40
      FieldName = 'descri'
      Required = True
      Size = 30
    end
    object qLaudosdiagnostico: TStringField
      DisplayLabel = 'Diagn'#243'stico'
      DisplayWidth = 60
      FieldName = 'diagnostico'
      ReadOnly = True
      Size = 150
    end
    object qLaudosrecomendacao: TStringField
      DisplayLabel = 'Recomenda'#231#227'o'
      DisplayWidth = 60
      FieldName = 'recomendacao'
      ReadOnly = True
      Size = 150
    end
  end
  object dsLaudos: TDataSource
    AutoEdit = False
    DataSet = qLaudos
    Left = 288
    Top = 304
  end
  object dsHist: TDataSource
    AutoEdit = False
    DataSet = qHist
    Left = 288
    Top = 360
  end
  object qHist: TZReadOnlyQuery
    Connection = DM.Design
    SortedFields = 'estado'
    SortType = stDescending
    BeforeRefresh = qHistBeforeRefresh
    OnCalcFields = qHistCalcFields
    SQL.Strings = (
      
        'select h.amostra, h.estado, h.ocorrencia, h.historico, u."name",' +
        ' u.email'
      '  from labamostras_hist h'
      '       left join sys_users u'
      '         on u.username = h.username'
      ' where h.amostra = :amostra')
    Params = <
      item
        DataType = ftInteger
        Name = 'amostra'
        ParamType = ptUnknown
        Value = -1
      end>
    IndexFieldNames = 'estado Desc'
    Left = 224
    Top = 360
    ParamData = <
      item
        DataType = ftInteger
        Name = 'amostra'
        ParamType = ptUnknown
        Value = -1
      end>
    object qHistamostra: TIntegerField
      FieldName = 'amostra'
      Required = True
      Visible = False
    end
    object qHistestado: TIntegerField
      DisplayLabel = ' '
      FieldName = 'estado'
      Required = True
    end
    object qHistocorrencia: TDateTimeField
      DisplayLabel = 'Ocorr'#234'ncia'
      FieldName = 'ocorrencia'
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object qHisthistorico: TMemoField
      FieldName = 'historico'
      Visible = False
      BlobType = ftMemo
    end
    object qHisthistorico_desc: TStringField
      DisplayLabel = 'Hist'#243'rico Resumido'
      DisplayWidth = 150
      FieldKind = fkCalculated
      FieldName = 'historico_desc'
      Size = 250
      Calculated = True
    end
    object qHistname: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'name'
      Required = True
      Size = 40
    end
    object qHistemail: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'email'
      Size = 40
    end
  end
  object ZSequence1: TZSequence
    Connection = DM.Design
    SequenceName = 'public.labamostras_recno_seq'
    Left = 96
    Top = 192
  end
end
