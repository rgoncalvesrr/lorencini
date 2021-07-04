inherited LabProcMonitor: TLabProcMonitor
  Left = 0
  Top = 0
  Caption = 'Monitor de Expedi'#231#227'o de Vidrarias'
  ClientHeight = 562
  ClientWidth = 1111
  Position = poDesigned
  ExplicitWidth = 1127
  ExplicitHeight = 601
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 535
    Width = 1105
    ExplicitTop = 535
    ExplicitWidth = 1105
  end
  inherited Panel1: TPanel
    Width = 1111
    ExplicitWidth = 1111
    inherited pctlFind: TPageControl
      Width = 1101
      ExplicitWidth = 1101
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1093
        ExplicitHeight = 75
        object Label1: TLabel [0]
          Left = 109
          Top = 3
          Width = 32
          Height = 15
          Caption = 'Status'
        end
        object Label18: TLabel [1]
          Left = 342
          Top = 3
          Width = 90
          Height = 15
          Caption = 'Vizualizar cliente:'
          Transparent = True
        end
        object Label3: TLabel [2]
          Left = 3
          Top = 3
          Width = 46
          Height = 15
          Caption = 'Remessa'
        end
        object Label4: TLabel [3]
          Left = 56
          Top = 3
          Width = 44
          Height = 15
          Caption = 'Cota'#231#227'o'
        end
        inherited BitBtn2: TBitBtn
          Left = 992
          TabOrder = 4
          ExplicitLeft = 992
        end
        object cbStatus: TComboBox
          Left = 109
          Top = 21
          Width = 227
          Height = 23
          Style = csDropDownList
          ItemHeight = 15
          ItemIndex = 0
          TabOrder = 2
          Text = 'Todos'
          OnChange = cbStatusChange
          Items.Strings = (
            'Todos'
            'Aguardando A'#231#227'o'
            'Remessas em Processamento'
            'Montagem de Volumes'
            'Prepara'#231#227'o de Despacho'
            'Liberado Expedi'#231#227'o'
            'Registro de Rastreio'
            'Finalizado'
            'Cancelado')
        end
        object ComboBox1: TComboBox
          Left = 342
          Top = 21
          Width = 264
          Height = 23
          DropDownCount = 30
          ItemHeight = 15
          TabOrder = 3
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
        object edRemessa: TJvCalcEdit
          Left = 3
          Top = 21
          Width = 46
          Height = 23
          DecimalPlaces = 0
          DisplayFormat = '#'
          FormatOnEditing = True
          ShowButton = False
          TabOrder = 0
          DecimalPlacesAlwaysShown = False
          OnChange = ComboBox1Change
        end
        object edCota: TJvCalcEdit
          Left = 56
          Top = 21
          Width = 46
          Height = 23
          DecimalPlaces = 0
          DisplayFormat = '#'
          FormatOnEditing = True
          ShowButton = False
          TabOrder = 1
          DecimalPlacesAlwaysShown = False
          OnChange = ComboBox1Change
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1093
        ExplicitHeight = 75
      end
    end
  end
  inherited Panel2: TPanel
    Width = 1111
    Height = 403
    ExplicitWidth = 1111
    ExplicitHeight = 403
    inherited PageControl1: TPageControl
      Width = 1105
      Height = 397
      ActivePage = tsAcao
      Images = Resources.medium_n
      ExplicitWidth = 1105
      ExplicitHeight = 397
      inherited TabSheet1: TTabSheet
        Caption = 'Todas'
        ImageIndex = -1
        ExplicitLeft = 4
        ExplicitTop = 33
        ExplicitWidth = 1097
        ExplicitHeight = 360
        inherited DBGrid1: TDBGrid
          Width = 1091
          Height = 354
          OnDrawColumnCell = DBGrid1DrawColumnCell
        end
      end
      object tsAcao: TTabSheet
        Caption = 'Aguardando A'#231#227'o'
        ImageIndex = 213
      end
      object tsProc: TTabSheet
        Caption = 'Remessas em Processamento'
        ImageIndex = 210
      end
      object TabSheet4: TTabSheet
        Caption = 'Montagem de Volumes'
        ImageIndex = 205
      end
      object TabSheet5: TTabSheet
        Caption = 'Prepara'#231#227'o de Despacho'
        ImageIndex = 214
        object Splitter1: TSplitter
          Left = 0
          Top = 130
          Width = 1097
          Height = 6
          Cursor = crVSplit
          Align = alBottom
          ExplicitTop = 47
          ExplicitWidth = 823
        end
        object PageControl2: TPageControl
          AlignWithMargins = True
          Left = 3
          Top = 139
          Width = 1091
          Height = 218
          ActivePage = tsVolumes
          Align = alBottom
          TabOrder = 0
          OnChange = PageControl2Change
          object tsVolumes: TTabSheet
            Caption = 'Volumes e Rastreamento'
            object DBGrid2: TDBGrid
              Tag = 1
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 1077
              Height = 146
              Align = alClient
              BorderStyle = bsNone
              Ctl3D = False
              DataSource = dsVolumes
              DefaultDrawing = False
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Segoe UI'
              TitleFont.Pitch = fpVariable
              TitleFont.Style = []
              OnDrawColumnCell = DBGrid2DrawColumnCell
              OnDblClick = DBGridDblClick
              OnEnter = DBGridEnter
              OnKeyPress = DBGridKeyPress
            end
            object Panel4: TPanel
              Left = 0
              Top = 152
              Width = 1083
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
                Width = 79
                Height = 30
                Align = alLeft
                Caption = 'Volume Aberto'
                Layout = tlCenter
                ExplicitHeight = 15
              end
              object JvImage2: TJvImage
                AlignWithMargins = True
                Left = 126
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
                ExplicitHeight = 26
              end
              object lbLeg2: TLabel
                AlignWithMargins = True
                Left = 164
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
                Left = 296
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
                Left = 258
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
                ExplicitHeight = 26
              end
            end
          end
          object tsEtiquetas: TTabSheet
            Caption = 'Etiquetas'
            ImageIndex = 1
            object DBGrid3: TDBGrid
              Tag = 1
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 1077
              Height = 182
              Align = alClient
              BorderStyle = bsNone
              Ctl3D = False
              DataSource = dsEtiquetas
              DefaultDrawing = False
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Segoe UI'
              TitleFont.Pitch = fpVariable
              TitleFont.Style = []
              OnDrawColumnCell = DBGridDrawColumnCell
              OnDblClick = DBGridDblClick
              OnEnter = DBGridEnter
              OnKeyPress = DBGridKeyPress
            end
          end
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'Liberado Expedi'#231#227'o'
        ImageIndex = 208
      end
      object TabSheet2: TTabSheet
        Caption = 'Registro de Rastreio'
        ImageIndex = 209
      end
      object TabSheet3: TTabSheet
        Caption = 'Finalizado'
        ImageIndex = 211
      end
      object TabSheet7: TTabSheet
        Caption = 'Canceladas'
        ImageIndex = 204
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Width = 1105
    ExplicitWidth = 1105
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
    Left = 224
    inherited actNew: TAction
      Enabled = False
      Visible = False
    end
    inherited actEdit: TAction
      Enabled = False
      Visible = False
    end
    inherited actDel: TAction
      Enabled = False
      Visible = False
    end
    object actPrnEtiqVidr: TAction
      Caption = 'Etiqueta de Vidraria - Todas'
      OnExecute = actPrnEtiqVidrExecute
    end
    object actPrnEtiqVidrSel: TAction
      Caption = 'Etiqueta de Vidraria - Selecionada'
      OnExecute = actPrnEtiqVidrSelExecute
    end
  end
  inherited pmRel: TPopupMenu
    Left = 280
    object EtiquetasdeVidraria1: TMenuItem
      Action = actPrnEtiqVidr
    end
    object EtiquetadeVidrariaSelecionada1: TMenuItem
      Action = actPrnEtiqVidrSel
    end
  end
  inherited pmOrder: TPopupMenu
    Left = 330
  end
  inherited alRunTime: TActionList
    Left = 394
  end
  inherited DataSource1: TDataSource
    Top = 248
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SortedFields = 'situacao;emissao'
    AfterScroll = IBrwSrcAfterScroll
    SQL.Strings = (
      
        'select r.situacao, r.recno, r.atualizacao, r.emissao, r.frascos,' +
        ' r.seringas,'
      
        '       r.volumes, r.codigo, c.empresa, c.nome_chave, r.descri, c' +
        '.cnpj, c.cpf,'
      '       r.envio, r.correio, r.frete, r.cotacao'
      '  from labproc r'
      '       join tbclientes c'
      '         on c.codigo = r.codigo')
    IndexFieldNames = 'situacao Asc;emissao Asc'
    Left = 192
    Top = 248
    object IBrwSrcsituacao: TIntegerField
      DisplayLabel = ' '
      FieldName = 'situacao'
      Required = True
    end
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Solicita'#231#227'o'
      FieldName = 'recno'
      Required = True
    end
    object IBrwSrccotacao: TIntegerField
      DisplayLabel = 'Cota'#231#227'o'
      FieldName = 'cotacao'
    end
    object IBrwSrcemissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'emissao'
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object IBrwSrcatualizacao: TDateTimeField
      DisplayLabel = 'Atualiza'#231#227'o'
      FieldName = 'atualizacao'
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object IBrwSrcvolumes: TIntegerField
      DisplayLabel = 'Volumes'
      FieldName = 'volumes'
    end
    object IBrwSrcfrascos: TIntegerField
      DisplayLabel = 'Frascos'
      FieldName = 'frascos'
    end
    object IBrwSrcseringas: TIntegerField
      DisplayLabel = 'Seringas'
      FieldName = 'seringas'
    end
    object IBrwSrcenvio: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Tipo de Envio'
      FieldName = 'envio'
      OnGetText = IBrwSrcenvioGetText
    end
    object IBrwSrccorreio: TIntegerField
      DisplayLabel = 'Sedex'
      FieldName = 'correio'
    end
    object IBrwSrcfrete: TFloatField
      DisplayLabel = 'Frete'
      FieldName = 'frete'
      DisplayFormat = ',0.#0'
    end
    object IBrwSrccodigo: TIntegerField
      DisplayLabel = 'Destinat'#225'rio'
      FieldName = 'codigo'
    end
    object IBrwSrcempresa: TStringField
      DisplayLabel = 'Raz'#227'o'
      DisplayWidth = 35
      FieldName = 'empresa'
      Visible = False
      Size = 100
    end
    object IBrwSrcnome_chave: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 25
      FieldName = 'nome_chave'
      Size = 45
    end
    object IBrwSrccnpj: TStringField
      DisplayLabel = 'C.N.P.J.'
      DisplayWidth = 18
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object IBrwSrccpf: TStringField
      DisplayLabel = 'C.P.F.'
      DisplayWidth = 14
      FieldName = 'cpf'
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'descri'
      Size = 60
    end
  end
  inherited pmOpcao: TPopupMenu
    Left = 456
  end
  inherited zIBrwSrc: TZUpdateSQL
    Left = 136
    Top = 248
  end
  object zVolumes: TZQuery
    Connection = DM.Design
    SortedFields = 'volume'
    OnCalcFields = zVolumesCalcFields
    SQL.Strings = (
      
        'select v.volume, v.criacao, v.rastreio, u.nome as name, v.recno,' +
        ' v.frascos, v.seringas, v.status, v.exp_dh'
      '  from labvol v'
      '       join vaccounts u'
      '         on u.account = v.account'
      ' where v.labproc_recno = :remessa')
    Params = <
      item
        DataType = ftUnknown
        Name = 'remessa'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    IndexFieldNames = 'volume Asc'
    Left = 192
    Top = 296
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
    object zVolumescriacao: TDateTimeField
      DisplayLabel = 'Cria'#231#227'o'
      FieldName = 'criacao'
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object zVolumesexp_dh: TDateTimeField
      DisplayLabel = 'Expedi'#231#227'o'
      FieldName = 'exp_dh'
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object zVolumesrastreio: TStringField
      DisplayLabel = 'C'#243'digo de Rastreio'
      FieldName = 'rastreio'
      Size = 30
    end
    object zVolumesfrascos: TIntegerField
      DisplayLabel = 'Frascos'
      FieldName = 'frascos'
    end
    object zVolumesseringas: TIntegerField
      DisplayLabel = 'Seringas'
      FieldName = 'seringas'
    end
    object zVolumesname: TStringField
      DisplayLabel = 'Usu'#225'rio'
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
  object dsVolumes: TDataSource
    AutoEdit = False
    DataSet = zVolumes
    Left = 256
    Top = 296
  end
  object dsEtiquetas: TDataSource
    AutoEdit = False
    DataSet = zEtiquetas
    Left = 256
    Top = 344
  end
  object zEtiquetas: TZQuery
    Connection = DM.Design
    SortedFields = 'amostra'
    OnCalcFields = zEtiquetasCalcFields
    UpdateObject = zIBrwSrc
    SQL.Strings = (
      
        'select pe.recno, c.codigo, pe.tipo, pe.validade, pe.dataprog, pe' +
        '.labproc_recno, pe.amostra, pe.volume, c.equip_recno,'
      
        '       ce.tag, ce.serie, ce.tipo tipo_e, ce.reg_nome, ce.sigla, ' +
        'ce.nome, c.comodato, ue.ocorrencia emi_dh,  ueu.nome as name,'
      
        '       ui.ocorrencia imp_dh,  uiu.nome as name, ur.ocorrencia re' +
        'm_dh,  uru.nome as name'
      '  from labprocxequip pe'
      '       left join labamostras c'
      '         on c.recno = pe.amostra'
      '       left join vequipxcli ce'
      '         on ce.codigo = c.codigo'
      '        and ce.equip = c.equip_recno'
      '       left join labamostras_hist ue'
      '         on ue.amostra = pe.amostra'
      '        and ue.estado = 20'
      '       left join vaccounts ueu'
      #9'       on ueu.account = ue.account'
      '       left join labamostras_hist ui'
      '         on ui.amostra = pe.amostra'
      '        and ui.estado = 10'
      '       left join vaccounts uiu'
      '         on uiu.account = ui.account'
      '       left join labamostras_hist ur'
      '         on ur.amostra = pe.amostra'
      '        and ur.estado = 30'
      '       left join vaccounts uru'
      '         on uru.account = ur.account'
      ' where pe.labproc_recno = :remessa')
    Params = <
      item
        DataType = ftUnknown
        Name = 'remessa'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    IndexFieldNames = 'amostra Asc'
    Left = 192
    Top = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'remessa'
        ParamType = ptUnknown
      end>
    object zEtiquetasrecno: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'recno'
    end
    object zEtiquetascodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
      Visible = False
    end
    object zEtiquetasamostra: TIntegerField
      DisplayLabel = 'Amostra'
      FieldName = 'amostra'
    end
    object zEtiquetasetiq_proc: TStringField
      DisplayLabel = 'Etiqueta'
      FieldKind = fkCalculated
      FieldName = 'etiq_proc'
      EditMask = '000.000.000.000;0;'
      Calculated = True
    end
    object zEtiquetascomodato: TIntegerField
      FieldName = 'comodato'
      Visible = False
    end
    object zEtiquetastipo: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'tipo'
      Required = True
      OnGetText = zEtiquetastipoGetText
    end
    object zEtiquetasvolume: TIntegerField
      DisplayLabel = 'Volume'
      FieldName = 'volume'
    end
    object zEtiquetasvalidade: TDateField
      DisplayLabel = 'Esteriliza'#231#227'o'
      FieldName = 'validade'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object zEtiquetasdataprog: TDateField
      DisplayLabel = 'Programa'#231#227'o'
      FieldName = 'dataprog'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object zEtiquetasemi_dh: TDateTimeField
      DisplayLabel = 'Gera'#231#227'o Etiqueta'
      FieldName = 'emi_dh'
      Required = True
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object zEtiquetasname: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 25
      FieldName = 'name'
      Required = True
      Size = 40
    end
    object zEtiquetasimp_dh: TDateTimeField
      DisplayLabel = 'Impress'#227'o'
      FieldName = 'imp_dh'
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object zEtiquetasname_1: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 25
      FieldName = 'name_1'
      Required = True
      Size = 40
    end
    object zEtiquetasrem_dh: TDateTimeField
      DisplayLabel = 'Despacho'
      FieldName = 'rem_dh'
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object zEtiquetasname_2: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 25
      FieldName = 'name_2'
      Required = True
      Size = 40
    end
    object zEtiquetasequip_recno: TIntegerField
      FieldName = 'equip_recno'
      Visible = False
    end
    object zEtiquetaslabproc_recno: TIntegerField
      FieldName = 'labproc_recno'
      Required = True
      Visible = False
    end
    object zEtiquetastag: TStringField
      FieldName = 'tag'
      Visible = False
      Size = 50
    end
    object zEtiquetasserie: TStringField
      FieldName = 'serie'
      Visible = False
      Size = 30
    end
    object zEtiquetastipo_e: TStringField
      FieldName = 'tipo_e'
      Visible = False
      Size = 255
    end
    object zEtiquetasreg_nome: TStringField
      FieldName = 'reg_nome'
      Visible = False
      Size = 60
    end
    object zEtiquetassigla: TStringField
      FieldName = 'sigla'
      Visible = False
      Size = 3
    end
    object zEtiquetasnome: TStringField
      FieldName = 'nome'
      Visible = False
      Size = 60
    end
    object zEtiquetasetiq_local: TStringField
      FieldKind = fkCalculated
      FieldName = 'etiq_local'
      Visible = False
      Size = 50
      Calculated = True
    end
    object zEtiquetasetiq_tag: TStringField
      FieldKind = fkCalculated
      FieldName = 'etiq_tag'
      Visible = False
      Size = 50
      Calculated = True
    end
  end
end
