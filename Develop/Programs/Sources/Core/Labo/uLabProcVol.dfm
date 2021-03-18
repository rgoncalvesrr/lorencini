inherited LabProcVol: TLabProcVol
  Align = alClient
  Caption = 'Montagem de Volumes (Manual)'
  ClientHeight = 489
  ClientWidth = 1008
  Position = poDefault
  ExplicitWidth = 1024
  ExplicitHeight = 528
  PixelsPerInch = 96
  TextHeight = 15
  object Splitter1: TSplitter [0]
    Left = 313
    Top = 0
    Width = 6
    Height = 489
  end
  object Panel1: TPanel [1]
    Left = 319
    Top = 0
    Width = 689
    Height = 489
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Splitter2: TSplitter
      Left = 0
      Top = 268
      Width = 689
      Height = 6
      Cursor = crVSplit
      Align = alTop
      ExplicitTop = 266
    end
    object PageControl2: TPageControl
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 683
      Height = 262
      ActivePage = TabSheet2
      Align = alTop
      TabOrder = 0
      object TabSheet2: TTabSheet
        Caption = 'Volumes'
        object Panel5: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 669
          Height = 42
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object BitBtn3: TBitBtn
            AlignWithMargins = True
            Left = 426
            Top = 3
            Width = 101
            Height = 36
            Action = actVolPrn
            Align = alLeft
            Caption = 'Emitir Volume'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
          end
          object BitBtn4: TBitBtn
            AlignWithMargins = True
            Left = 533
            Top = 3
            Width = 100
            Height = 36
            Action = actVolDel
            Align = alLeft
            Caption = 'Eliminar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
          object BitBtn5: TBitBtn
            AlignWithMargins = True
            Left = 215
            Top = 3
            Width = 99
            Height = 36
            Action = actVolBarCode
            Align = alLeft
            Caption = 'Adicionar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
          end
          object BitBtn6: TBitBtn
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 100
            Height = 36
            Action = actVolNew
            Align = alLeft
            Caption = 'Criar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
          end
          object BitBtn2: TBitBtn
            AlignWithMargins = True
            Left = 109
            Top = 3
            Width = 100
            Height = 36
            Action = actVolAddNew
            Align = alLeft
            Caption = 'Criar e Adicionar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
          end
          object BitBtn7: TBitBtn
            AlignWithMargins = True
            Left = 320
            Top = 3
            Width = 100
            Height = 36
            Action = actVolClose
            Align = alLeft
            Caption = 'Fechar Volume'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
          end
        end
        object GroupBox4: TGroupBox
          AlignWithMargins = True
          Left = 447
          Top = 51
          Width = 225
          Height = 178
          Align = alRight
          Caption = ' Volume '
          TabOrder = 1
          object ACBrBarCode2: TACBrBarCode
            Left = 17
            Top = 118
            Width = 205
            Height = 49
            Modul = 8
            Ratio = 2.000000000000000000
            Typ = bcCode39
            ShowTextFont.Charset = DEFAULT_CHARSET
            ShowTextFont.Color = clWindowText
            ShowTextFont.Height = -11
            ShowTextFont.Name = 'Tahoma'
            ShowTextFont.Style = []
            ShowTextPosition = stpTopRight
          end
          object DBText2: TDBText
            Left = 173
            Top = 25
            Width = 41
            Height = 15
            Alignment = taRightJustify
            AutoSize = True
            DataField = 'vol_etiq'
            DataSource = dsVolume
            Transparent = True
          end
          object Label20: TLabel
            Left = 10
            Top = 25
            Width = 80
            Height = 15
            Caption = 'Lorencini Brasil'
          end
          object Shape1: TShape
            Left = 10
            Top = 42
            Width = 205
            Height = 4
            Brush.Color = clBlack
          end
          object DBText3: TDBText
            Left = 82
            Top = 52
            Width = 41
            Height = 15
            AutoSize = True
            DataField = 'codigo'
            DataSource = dsRem
            Transparent = True
          end
          object Label1: TLabel
            Left = 10
            Top = 52
            Width = 66
            Height = 15
            Caption = 'Destinat'#225'rio:'
          end
          object Label2: TLabel
            Left = 10
            Top = 73
            Width = 125
            Height = 15
            Caption = 'Remessa: 000 Volume: 0'
          end
          object Label3: TLabel
            Left = 10
            Top = 94
            Width = 110
            Height = 15
            Caption = 'Frascos: 0 Seringas: 0'
          end
        end
        object Panel7: TPanel
          Left = 0
          Top = 48
          Width = 444
          Height = 184
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 2
          object Panel4: TPanel
            Left = 0
            Top = 148
            Width = 444
            Height = 36
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 0
            object JvImage1: TJvImage
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 33
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
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitHeight = 32
            end
            object lbLeg1: TLabel
              AlignWithMargins = True
              Left = 42
              Top = 3
              Width = 79
              Height = 30
              Align = alLeft
              Caption = 'Volume Aberto'
              Layout = tlCenter
              ExplicitHeight = 15
            end
            object JvImage2: TJvImage
              AlignWithMargins = True
              Left = 127
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
              ExplicitLeft = 119
              ExplicitTop = 2
              ExplicitHeight = 32
            end
            object lbLeg2: TLabel
              AlignWithMargins = True
              Left = 165
              Top = 3
              Width = 88
              Height = 30
              Align = alLeft
              Caption = 'Volume Fechado'
              Layout = tlCenter
              ExplicitHeight = 15
            end
            object lbLeg3: TLabel
              AlignWithMargins = True
              Left = 298
              Top = 3
              Width = 95
              Height = 30
              Align = alLeft
              Caption = 'Volume Rastreado'
              Layout = tlCenter
              ExplicitHeight = 15
            end
            object JvImage3: TJvImage
              AlignWithMargins = True
              Left = 259
              Top = 3
              Width = 33
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
              ExplicitLeft = 242
              ExplicitTop = 2
              ExplicitHeight = 32
            end
          end
          object DBGrid3: TDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 438
            Height = 142
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = dsVolume
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            PopupMenu = pmVolume
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Pitch = fpVariable
            TitleFont.Style = []
            OnDrawColumnCell = DBGrid1DrawColumnCell
          end
        end
      end
    end
    object PageControl3: TPageControl
      AlignWithMargins = True
      Left = 3
      Top = 277
      Width = 683
      Height = 209
      ActivePage = TabSheet3
      Align = alClient
      TabOrder = 1
      object TabSheet3: TTabSheet
        Caption = 'Etiquetas no Volume'
        object DBGrid4: TDBGrid
          AlignWithMargins = True
          Left = 3
          Top = 51
          Width = 669
          Height = 125
          Align = alClient
          BorderStyle = bsNone
          Ctl3D = False
          DataSource = dsVolEtiq
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Pitch = fpVariable
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid1DrawColumnCell
        end
        object Panel6: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 669
          Height = 42
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object BitBtn1: TBitBtn
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 100
            Height = 36
            Action = actVolEtiqDel
            Align = alLeft
            Caption = 'Eliminar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
          end
        end
      end
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 0
    Width = 313
    Height = 489
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 1
    object PageControl1: TPageControl
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 307
      Height = 483
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Remessas'
        object DBGrid1: TDBGrid
          AlignWithMargins = True
          Left = 3
          Top = 64
          Width = 293
          Height = 386
          Align = alClient
          BorderStyle = bsNone
          Ctl3D = False
          DataSource = dsRem
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Pitch = fpVariable
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid1DrawColumnCell
        end
        object Panel3: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 293
          Height = 55
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Label18: TLabel
            Left = 4
            Top = 3
            Width = 90
            Height = 15
            Caption = 'Vizualizar cliente:'
            Transparent = True
          end
          object ComboBox1: TComboBox
            Left = 4
            Top = 24
            Width = 264
            Height = 23
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
      end
    end
  end
  inherited alDef: TActionList
    inherited actOk: TAction
      Tag = 1
    end
    inherited actCancel: TAction
      Tag = 1
    end
    inherited actClose: TAction
      Tag = 1
    end
    object actVolPrn: TAction
      Caption = 'Emitir Volume'
      Enabled = False
      Hint = 'Imprime etiqueta para o volume'
      OnExecute = actVolPrnExecute
    end
    object actVolNew: TAction
      Caption = 'Criar'
      Enabled = False
      Hint = 'Cria um volume vazio'
      OnExecute = actVolNewExecute
    end
    object actVolBarCode: TAction
      Caption = 'Adicionar'
      Enabled = False
      Hint = 'Adiciona vidraria ao volume via c'#243'digo de barras'
      OnExecute = actVolBarCodeExecute
    end
    object actVolAddNew: TAction
      Caption = 'Criar e Adicionar'
      Enabled = False
      Hint = 
        'Cria volume vazio e abre a tela para para adi'#231#227'o de vidrarias vi' +
        'a c'#243'digo de barras'
      OnExecute = actVolAddNewExecute
    end
    object actVolDel: TAction
      Caption = 'Eliminar'
      Enabled = False
      Hint = 
        'Elimina volume e deixa suas etiquetas dispon'#237'veis para registro ' +
        'em outro volume'
      OnExecute = actVolDelExecute
    end
    object actVolEtiqDel: TAction
      Caption = 'Eliminar'
      Enabled = False
      Hint = 'Elimina etiqueta do volume'
      OnExecute = actVolEtiqDelExecute
    end
    object actVolClose: TAction
      Caption = 'Fechar Volume'
      Enabled = False
      Hint = 'Encerra e emite etiqueta para o volume'
      OnExecute = actVolCloseExecute
    end
  end
  object zRem: TZReadOnlyQuery
    Connection = DM.Design
    AfterScroll = zRemAfterScroll
    SQL.Strings = (
      
        'select p.codigo, c.nome_chave, p.recno, p.frascos, p.seringas, p' +
        '.volumes, p.coleta'
      '  from labproc p'
      '       join tbclientes c'
      '         on c.codigo = p.codigo'
      ' where p.situacao = 2')
    Params = <>
    Left = 216
    Top = 120
    object zRemrecno: TIntegerField
      DisplayLabel = 'Remessa'
      FieldName = 'recno'
      Required = True
    end
    object zRemcodigo: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'codigo'
    end
    object zRemnome_chave: TStringField
      DisplayLabel = 'Destinat'#225'rio'
      DisplayWidth = 25
      FieldName = 'nome_chave'
      Size = 45
    end
    object zRemfrascos: TIntegerField
      DisplayLabel = 'Frascos'
      FieldName = 'frascos'
    end
    object zRemseringas: TIntegerField
      DisplayLabel = 'Seringas'
      FieldName = 'seringas'
    end
    object zRemvolumes: TIntegerField
      DisplayLabel = 'Volumes'
      FieldName = 'volumes'
    end
    object zRemcoleta: TIntegerField
      DisplayLabel = 'Coleta'
      FieldName = 'coleta'
      Visible = False
    end
  end
  object dsRem: TDataSource
    DataSet = zRem
    Left = 272
    Top = 120
  end
  object zVolumes: TZReadOnlyQuery
    Connection = DM.Design
    SortedFields = 'volume'
    AfterScroll = zVolumesAfterScroll
    OnCalcFields = zVolumesCalcFields
    SQL.Strings = (
      'select v.volume, v.criacao, v.rastreio, v.frascos, v.seringas,'
      '       u.username, u.nome as name, v.recno, v.status'
      '  from labvol v '
      '       join vaccounts u'
      '         on u.account = v.account'
      ' where v.labproc_recno = :remessa')
    Params = <
      item
        DataType = ftUnknown
        Name = 'remessa'
        ParamType = ptUnknown
      end>
    IndexFieldNames = 'volume Asc'
    Left = 216
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'remessa'
        ParamType = ptUnknown
      end>
    object zVolumesstatus: TIntegerField
      DisplayLabel = ' '
      FieldName = 'status'
      Required = True
    end
    object zVolumesvolume: TIntegerField
      DisplayLabel = 'Volume'
      FieldName = 'volume'
      Required = True
    end
    object zVolumesvol_etiq: TStringField
      DisplayLabel = 'Etiqueta'
      DisplayWidth = 14
      FieldKind = fkCalculated
      FieldName = 'vol_etiq'
      EditMask = '000.000.000.000;0;'
      Size = 12
      Calculated = True
    end
    object zVolumesfrascos: TIntegerField
      DisplayLabel = 'Frascos'
      FieldName = 'frascos'
      ReadOnly = True
      Visible = False
    end
    object zVolumesseringas: TIntegerField
      DisplayLabel = 'Seringas'
      FieldName = 'seringas'
      ReadOnly = True
      Visible = False
    end
    object zVolumescriacao: TDateTimeField
      DisplayLabel = 'Cria'#231#227'o'
      FieldName = 'criacao'
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object zVolumesrastreio: TStringField
      DisplayLabel = 'C'#243'digo de Rastreio'
      FieldName = 'rastreio'
      Size = 30
    end
    object zVolumesusername: TStringField
      DisplayLabel = 'Usu'#225'rio'
      DisplayWidth = 15
      FieldName = 'username'
      Size = 25
    end
    object zVolumesname: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 25
      FieldName = 'name'
      Required = True
      Size = 40
    end
    object zVolumesrecno: TIntegerField
      FieldName = 'recno'
      Required = True
      Visible = False
    end
  end
  object dsVolume: TDataSource
    DataSet = zVolumes
    Left = 272
    Top = 168
  end
  object zVolEtiq: TZReadOnlyQuery
    Connection = DM.Design
    SortedFields = 'amostra'
    AfterScroll = zVolEtiqAfterScroll
    OnCalcFields = zRemAddCalcFields
    SQL.Strings = (
      'select e.recno, e.tipo, a.comodato, e.amostra, e.validade '
      '  from labprocxequip e'
      '       join labamostras a'
      '         on a.recno = e.amostra'
      ' where e.labproc_recno = :remessa'
      '   and e.volume = :volume')
    Params = <
      item
        DataType = ftUnknown
        Name = 'remessa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'volume'
        ParamType = ptUnknown
      end>
    IndexFieldNames = 'amostra Asc'
    Left = 216
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'remessa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'volume'
        ParamType = ptUnknown
      end>
    object zVolEtiqetiq_proc: TStringField
      DisplayLabel = 'Etiqueta'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'etiq_proc'
      EditMask = '000.000.000.000;0;'
      Size = 12
      Calculated = True
    end
    object zVolEtiqamostra: TIntegerField
      DisplayLabel = 'Amostra'
      FieldName = 'amostra'
    end
    object zVolEtiqrecno: TIntegerField
      FieldName = 'recno'
      Required = True
      Visible = False
    end
    object zVolEtiqtipo: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Tipo'
      DisplayWidth = 15
      FieldName = 'tipo'
      Required = True
      OnGetText = zRemAddtipoGetText
    end
    object zVolEtiqvalidade: TDateField
      DisplayLabel = 'Validade'
      DisplayWidth = 15
      FieldName = 'validade'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object zVolEtiqcomodato: TIntegerField
      FieldName = 'comodato'
      Visible = False
    end
  end
  object dsVolEtiq: TDataSource
    DataSet = zVolEtiq
    Left = 272
    Top = 216
  end
  object pmVolume: TPopupMenu
    Left = 328
    Top = 24
    object Criar1: TMenuItem
      Action = actVolNew
    end
    object CriareAdicionar1: TMenuItem
      Action = actVolAddNew
    end
    object Adicionar1: TMenuItem
      Action = actVolBarCode
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object FecharVolume1: TMenuItem
      Action = actVolClose
    end
    object EmitirVolume1: TMenuItem
      Action = actVolPrn
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Eliminar1: TMenuItem
      Action = actVolDel
    end
  end
end
