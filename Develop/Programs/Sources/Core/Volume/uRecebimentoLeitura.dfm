inherited RecebimentoLeitura: TRecebimentoLeitura
  ActiveControl = Edit1
  Caption = 'Recebimento - Aquisi'#231#227'o de Dados'
  ClientHeight = 501
  ClientWidth = 729
  KeyPreview = False
  ExplicitWidth = 745
  ExplicitHeight = 540
  PixelsPerInch = 96
  TextHeight = 15
  object PageControl1: TPageControl [0]
    AlignWithMargins = True
    Left = 3
    Top = 111
    Width = 723
    Height = 387
    ActivePage = TabSheet3
    Align = alClient
    Images = Resources.medium_n
    TabOrder = 0
    TabStop = False
    object TabSheet3: TTabSheet
      Caption = 'Resumo'
      ImageIndex = -1
      object DBGrid2: TDBGrid
        Tag = 1
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 709
        Height = 344
        TabStop = False
        Align = alClient
        BorderStyle = bsNone
        Ctl3D = False
        DataSource = dsResumo
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
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Etiquetas Lidas'
      ImageIndex = -1
      object DBGrid1: TDBGrid
        Tag = 1
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 709
        Height = 308
        TabStop = False
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
        OnDrawColumnCell = DBGrid1DrawColumnCell
      end
      object Panel4: TPanel
        Left = 0
        Top = 314
        Width = 715
        Height = 36
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object JvImage1: TJvImage
          AlignWithMargins = True
          Left = 279
          Top = 3
          Width = 32
          Height = 30
          Align = alLeft
          AutoSize = True
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
          ExplicitLeft = 271
          ExplicitWidth = 24
        end
        object lbLeg1: TLabel
          AlignWithMargins = True
          Left = 317
          Top = 3
          Width = 53
          Height = 30
          Align = alLeft
          Caption = 'Quebrado'
          Layout = tlCenter
          ExplicitHeight = 15
        end
        object JvImage2: TJvImage
          AlignWithMargins = True
          Left = 101
          Top = 3
          Width = 24
          Height = 30
          Align = alLeft
          AutoSize = True
          Center = True
          Picture.Data = {
            07544269746D617036090000424D360900000000000036000000280000001800
            0000180000000100200000000000000900000000000000000000000000000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0091AFDB005F98EC00428CF4002B8FFC002794FC003AA1F50051AEEE0087BE
            DD00C0C7CB00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0096B2D9003D82
            F6002876FC002C85FC002D99FC002AA4FC0027ADFC0023B2FC0020B0FC001DAE
            FC002BB7F80083C3DD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006E9BE6002570FC002C80
            FC003896FC0035A7FC002FB1FC002ABCFC0026C5FC0021CEFC001ED4FC001CD6
            FC0019C7FC0019BDFC0057C2EA00C4C8C900FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00729CE400226AFC003188FC003B9B
            FC0038A0FC0032ACFC002CB9FC0027C3FC0021CFFC001CD8FC0018E0FC0016E5
            FC0015E7FC0015DDFC0016C3FC0050C4EC00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF0096B0D9002066FC003087FC003B9BFC003B9B
            FC0036A5FC0030B1FC002ABEFC0023CAFC001DD5FC0017E1FC0013EAFC000FF2
            FC000EF5FC0010F2FC0013E2FC0016C2FC0077C6E000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF003673F6002774FC003B9BFC003B9BFC003B9B
            FC0035A8FC002EB4FC0028C1FC0021CFFC001BDBFC0015E7FC000FF3FC0010FC
            FC0045FCFC0010FCFC000FF3FC0014D5FC0023BEF900BDC7CB00FF00FF00FF00
            FF00FF00FF00FF00FF0093ADD9001B5EFC003692FC003B9BFC003B9BFC003B9B
            FC0034A9FC002DB6FC0027C2FC0020D1FC0019DDFC0014EAFC000CF7FC0065FC
            FC00DCFCFC0061FCFC000DF7FC0014E8FC0017BDFC0073C1E200FF00FF00FF00
            FF00FF00FF00FF00FF005385ED002067FC003B9BFC003B9BFC003B9BFC003B9B
            FC0034A9FC002DB5FC0028C2FC0021D0FC001ADCFC0014E9FC000DF6FC0040FC
            FC0086FCFC003BFCFC000EF6FC0014E9FC0018C5FC003EB7F200FF00FF00FF00
            FF00FF00FF00FF00FF003570F5002876FC003B9BFC003B9BFC003B9BFC003B9B
            FC0035A6FC002FB3FC0029BFFC0022CCFC001CD8FC0017E4FC0011EFFC000DF7
            FC000BFAFC000DF7FC0011EEFC0017E4FC001ACAFC0022ABFB00FF00FF00FF00
            FF00FF00FF00FF00FF002462F9002B7DFC003B9BFC003B9BFC003B9BFC003B9B
            FC0037A2FC0031AEFC002ABBFC0025C6FC001FD1FC001ADCFC0016E4FC0013EB
            FC0012EDFC0013EAFC0016E4FC001ADCFC001DC6FC001EA1FC00BEC7CB00FF00
            FF00FF00FF00FF00FF002460F9004388FC0072B7FC0079BBFC0070B6FC00419F
            FC003A9DFC0034AAFC002EB4FC0029BFFC0024C9FC001FD2FC001BD9FC0019DE
            FC0018E0FC0019DEFC001BD9FC001FD2FC0022BFFC002099FC00BCC5CC00FF00
            FF00FF00FF00FF00FF002E67F7004382FC0094C8FC0088C2FC007EBEFC004FA5
            FC003B9BFC0037A2FC0032ADFC002DB7FC0029C0FC0025C7FC0022CEFC001FD1
            FC001FD3FC001FD1FC0022CEFC0025C7FC0025B0FC002892FA00FF00FF00FF00
            FF00FF00FF00FF00FF004B7EEE002765FC0097C9FC008CC4FC0081BFFC006AB3
            FC003C9BFC003B9BFC0036A4FC0031ADFC002DB5FC002ABDFC0028C1FC0026C4
            FC0026C5FC0026C4FC0028C1FC002ABCFC00269AFC004396F300FF00FF00FF00
            FF00FF00FF00FF00FF008AA4DB00144DFC007EB5FC008FC5FC0085C0FC007BBC
            FC005BACFC003B9BFC003B9BFC0037A3FC0033ABFC0030B0FC002EB5FC002CB8
            FC002CB9FC002CB8FC002EB5FC0030AFFC002583FC0075A4E300FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF002760F800306FFC0094C8FC008AC3FC0082BF
            FC0079BBFC0066B1FC0049A3FC003C9CFC00399EFC0036A4FC0034A8FC0033AB
            FC0032ACFC0033ABFC0034A8FC002C8DFC002C79FA00BBC2CD00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF0089A4DC00124AFC005692FC0091C7FC0088C2
            FC0081BFFC007BBCFC0075B9FC0073B8FC003C9BFC003B9BFC003B9BFC003A9D
            FC003A9EFC003A9DFC003691FC00256FFC0076A0E300FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF005A86EA00134BFC005793FC0091C7
            FC008AC3FC0085C0FC0081BFFC007DBDFC003B9BFC003B9BFC003B9BFC003B9B
            FC003B9BFC003590FC00236DFC004D87F000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF005C88E900124AFC003473
            FC0082B9FC008FC5FC008BC3FC0088C2FC003B9BFC003B9BFC003B9BFC003999
            FC002C7FFC001F64FC004C84F000C2C6CA00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0083A0DD00225B
            F900144EFC002B6AFC004E8DFC005D9AFC002F85FC002D80FC002570FC001D61
            FC002568FA00759CE300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00799BE1003C73F2002660F9001651FC001652FC002764F8003B73F4007399
            E300BFC3CB00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00}
          Transparent = True
          ExplicitLeft = 93
        end
        object lbLeg2: TLabel
          AlignWithMargins = True
          Left = 131
          Top = 3
          Width = 79
          Height = 30
          Align = alLeft
          Caption = 'N'#227'o Conforme'
          Layout = tlCenter
          ExplicitHeight = 15
        end
        object lbLeg3: TLabel
          AlignWithMargins = True
          Left = 41
          Top = 3
          Width = 54
          Height = 30
          Align = alLeft
          Caption = 'Conforme'
          Layout = tlCenter
          ExplicitHeight = 15
        end
        object JvImage3: TJvImage
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 32
          Height = 30
          Align = alLeft
          AutoSize = True
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
          ExplicitWidth = 24
        end
        object JvImage4: TJvImage
          AlignWithMargins = True
          Left = 216
          Top = 3
          Width = 24
          Height = 30
          Align = alLeft
          AutoSize = True
          Center = True
          Picture.Data = {
            07544269746D617036090000424D360900000000000036000000280000001800
            0000180000000100200000000000000900000000000000000000000000000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00B6B6B600A2A2A200989898009E9E9E00A3A3A300AFAFAF00BBBBBB00C5C5
            C500C8C8C800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B4B4B4008888
            88007A7A7A0093939300AFAFAF00BBBBBB00C2C2C200C6C6C600BFBFBF00B7B7
            B700BFBFBF00C8C8C800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009E9E9E006F6F6F008C8C
            8C00B6B6B600CBCBCB00D3D3D300DBDBDB00E1E1E100E4E4E400E7E7E700E5E5
            E500D0D0D000C1C1C100C7C7C700C8C8C800FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF009D9D9D00646464009C9C9C00C0C0
            C000C6C6C600D0D0D000D8D8D800DFDFDF00E4E4E400E9E9E900EDEDED00EFEF
            EF00F0F0F000E4E4E400C6C6C600CBCBCB00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00B2B2B2005B5B5B0099999900C0C0C000C0C0
            C000CACACA00D3D3D300DCDCDC00E3E3E300E8E8E800EDEDED00F1F1F100F3F3
            F300F4F4F400F3F3F300E5E5E500C3C3C300CBCBCB00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF006C6C6C0074747400C0C0C000C0C0C000C0C0
            C000CCCCCC00D5D5D500DEDEDE00E4E4E400EAEAEA00F0F0F000F4F4F400F7F7
            F700F8F8F800F7F7F700F4F4F400D6D6D600C2C2C200C9C9C900FF00FF00FF00
            FF00FF00FF00FF00FF00AEAEAE004C4C4C00AFAFAF00C0C0C000C0C0C000C0C0
            C000CDCDCD00D6D6D600DFDFDF00E5E5E500EBEBEB00F1F1F100F5F5F500F8F8
            F800FBFBFB00F8F8F800F5F5F500EEEEEE00BFBFBF00C7C7C700FF00FF00FF00
            FF00FF00FF00FF00FF007F7F7F005E5E5E00C0C0C000C0C0C000C0C0C000C0C0
            C000CDCDCD00D6D6D600DFDFDF00E5E5E500EBEBEB00F0F0F000F5F5F500F7F7
            F700F9F9F900F7F7F700F5F5F500F0F0F000CCCCCC00BFBFBF00FF00FF00FF00
            FF00FF00FF00FF00FF00646464007A7A7A00C0C0C000C0C0C000C0C0C000C0C0
            C000CBCBCB00D4D4D400DDDDDD00E4E4E400E9E9E900EEEEEE00F2F2F200F5F5
            F500F6F6F600F5F5F500F2F2F200EEEEEE00D5D5D500B2B2B200FF00FF00FF00
            FF00FF00FF00FF00FF004F4F4F0087878700C0C0C000C0C0C000C0C0C000C0C0
            C000C8C8C800D1D1D100DADADA00E1E1E100E6E6E600EBEBEB00EEEEEE00F1F1
            F100F2F2F200F1F1F100EEEEEE00EBEBEB00D6D6D600A8A8A800C8C8C800FF00
            FF00FF00FF00FF00FF004D4D4D008D8D8D00D1D1D100D3D3D300D1D1D100C2C2
            C200C3C3C300CECECE00D5D5D500DDDDDD00E3E3E300E6E6E600EAEAEA00ECEC
            EC00EDEDED00ECECEC00EAEAEA00E6E6E600D3D3D3009F9F9F00C7C7C700FF00
            FF00FF00FF00FF00FF00565656007F7F7F00DCDCDC00D8D8D800D5D5D500C6C6
            C600C0C0C000C8C8C800D1D1D100D7D7D700DDDDDD00E2E2E200E4E4E400E6E6
            E600E7E7E700E6E6E600E4E4E400E2E2E200C4C4C4009A9A9A00FF00FF00FF00
            FF00FF00FF00FF00FF007474740054545400DDDDDD00D9D9D900D6D6D600D0D0
            D000C0C0C000C0C0C000C9C9C900D1D1D100D6D6D600DBDBDB00DEDEDE00E0E0
            E000E1E1E100E0E0E000DEDEDE00DBDBDB00AAAAAA009E9E9E00FF00FF00FF00
            FF00FF00FF00FF00FF00A3A3A3002B2B2B00C2C2C200DADADA00D7D7D700D4D4
            D400CACACA00C0C0C000C0C0C000C8C8C800CFCFCF00D2D2D200D6D6D600D8D8
            D800D8D8D800D8D8D800D6D6D600D1D1D10088888800ABABAB00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF004848480062626200DCDCDC00D9D9D900D6D6
            D600D4D4D400CECECE00C5C5C500C0C0C000C4C4C400C9C9C900CDCDCD00CFCF
            CF00D0D0D000CFCFCF00CDCDCD00A0A0A0007C7C7C00C3C3C300FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00A2A2A2002727270095959500DBDBDB00D8D8
            D800D6D6D600D4D4D400D2D2D200D1D1D100C0C0C000C0C0C000C0C0C000C3C3
            C300C3C3C300C3C3C300ADADAD006D6D6D00A4A4A400FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF007E7E7E002A2A2A0095959500DBDB
            DB00D9D9D900D7D7D700D6D6D600D5D5D500C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000ABABAB006868680089898900FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007F7F7F00272727006767
            6700CACACA00DADADA00D9D9D900D8D8D800C0C0C000C0C0C000C0C0C000BBBB
            BB008A8A8A005A5A5A0085858500C6C6C600FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009C9C9C004343
            43002C2C2C005D5D5D008F8F8F00A1A1A100959595008D8D8D006F6F6F005151
            51005A5A5A009C9C9C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0096969600636363004C4C4C003535350037373700555555006A6A6A009898
            9800C4C4C400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00}
          Transparent = True
          ExplicitLeft = 208
        end
        object Label1: TLabel
          AlignWithMargins = True
          Left = 246
          Top = 3
          Width = 27
          Height = 30
          Align = alLeft
          Caption = 'Vazio'
          Layout = tlCenter
          ExplicitHeight = 15
        end
      end
    end
  end
  object PageControl2: TPageControl [1]
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 723
    Height = 102
    ActivePage = TabSheet2
    Align = alTop
    Images = Resources.medium_n
    TabOrder = 1
    TabStop = False
    object TabSheet2: TTabSheet
      Caption = 'N'#250'mero da Etiqueta ou Comando'
      ImageIndex = -1
      object SpeedButton1: TSpeedButton
        AlignWithMargins = True
        Left = 2
        Top = 2
        Width = 31
        Height = 25
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Action = actPrnCmd
        Align = alLeft
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C3C0C000A695
          9500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00C0BCBC00FF00FF00FF00FF00A28E8E007E4F4F008150
          50007B5050009C858500C0BBBB00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00BDB8B8008D6D6D00AF8E8E009A7070007A4E4E00926363009C6C6C009E74
          72008C5C5C00804F4F007241410086646400AA9A9A00C5C4C400C5C3C3009982
          820089606000CEB9B900E6D6D600DEBFBF00976A6A00B18C8C00ECE3E100FCF7
          EC00DBC6BB00A9837B0080504F00784847006E3D3D00714444007D535300A079
          7900C7ADAD00DAC9C900EDE4E400E8D3D300875C5C00764A4A00A6888700F7EE
          E400FCF2E100FCEDD500F5E0C200C6A48E0080514F006D3C3C00875A5A00BA99
          9900CDB5B500E0D1D100F5F0F000F2E7E700EEE1E100DCC6C600AC8989008559
          590075484700AA877D00D0B09E00A57874007B4B4B00896A6A00895E5E00BFA1
          A100D2BEBE00E5D9D900FBFAFA00FCFCFC00F8F5F500F5EEEE00F2E6E600EEE0
          E000DBC5C500AC8A8A0090656500E0C3C3006B3B3B00B7AFAF008C626200C5AA
          AA00D9C6C600D4C3C300E0D1D100FAF7F700FCFCFC00FCFCFC00FCFBFB00F8F5
          F500F5EDED00ABC2A400BEC6B200EAD8D8006B3B3B00B9B0B00099707000CFAF
          AF00764848006B3B3B006B3B3B006F3F3F0095707000D3C1C100FAF8F800FCFC
          FC00FCFCFC00328632000F721000AEC2A70073464600FF00FF00876262008858
          58009F6F6F008557570095706D00AD8F87007B4F4C006E3D3D006E3E3E00916A
          6A00CBB8B800EBEDE800ACCDAC00B0A49E009A818100FF00FF00FF00FF00C0BC
          BC00AA9A9A007A4F4F00D3C2BE00FCF4E600FCF0DD00E6D1BC00AB8779006C3C
          3C006B3B3B0075484800C0A8A80087636300C5C4C400FF00FF00FF00FF00FF00
          FF00BAB3B300794E4E00FAF8F600FCF7EE00FCF3E400FCEFDA00EBD6BF007140
          3F0086585800815757009F898900C5C4C400FF00FF00FF00FF00FF00FF00FF00
          FF00977C7C00AF959500FCFCFC00FCF9F500FCF6EA00FCF2E100B7998D008C6C
          6B00AA9A9A00C5C4C400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00764B4B00BCA6A600EBE5E500FCFCFB00FCF7F100FCF4E700855C5A00B1A5
          A500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00997F7F0089666600774B4B00734545008A656400A1827F0076494900FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00C1BEBE00B1A5A500A18D8D00AA9A9A00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      end
      object Edit1: TEdit
        AlignWithMargins = True
        Left = 38
        Top = 3
        Width = 674
        Height = 23
        Align = alClient
        TabOrder = 0
        OnKeyPress = Edit1KeyPress
      end
      object pnMsg: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 32
        Width = 709
        Height = 30
        Align = alBottom
        Alignment = taLeftJustify
        BevelOuter = bvNone
        TabOrder = 1
      end
    end
  end
  inherited alDef: TActionList
    Left = 88
    Top = 312
    object actPrnCmd: TAction
      ImageIndex = 287
      OnExecute = actPrnCmdExecute
    end
  end
  object qEtiquetas: TZQuery
    Connection = DM.Design
    SortedFields = 'recno'
    SortType = stDescending
    OnCalcFields = qEtiquetasCalcFields
    UpdateObject = uEtiquetas
    SQL.Strings = (
      
        'select lr.recno, lr.expirado, lr.qtd, lr.amostra, a.comodato, lr' +
        '.entrada, c.nome_chave, c.cnpj, c.cpf, c.estado,'
      '       lr.status, e.tipo, ac.nome, ac.email '
      '  from labret lr'
      '       join labamostras a'
      '         on a.recno = lr.amostra'
      '       join tbclientes c'
      '         on c.codigo = a.codigo'
      '       join labprocxequip e'
      '         on e.amostra = a.recno'
      '       join vaccounts ac'
      '         on ac.account = lr.account'
      ' where lr.labport_recno is null')
    Params = <>
    IndexFieldNames = 'recno Desc'
    Sequence = sEtiquetas
    SequenceField = 'recno'
    Left = 256
    Top = 312
    object qEtiquetasstatus: TIntegerField
      DisplayLabel = ' '
      FieldName = 'status'
      Required = True
    end
    object qEtiquetastipo: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Volume'
      FieldName = 'tipo'
      Required = True
      OnGetText = qEtiquetastipoGetText
    end
    object qEtiquetascomodato: TIntegerField
      DisplayLabel = 'Etiqueta'
      FieldName = 'comodato'
      Required = True
    end
    object qEtiquetasamostra: TIntegerField
      DisplayLabel = 'Amostra'
      FieldName = 'amostra'
      Required = True
    end
    object qEtiquetasexpirado: TBooleanField
      DisplayLabel = 'Expirado'
      FieldName = 'expirado'
      Required = True
    end
    object qEtiquetasqtd: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'qtd'
      Required = True
    end
    object qEtiquetasentrada: TDateTimeField
      DisplayLabel = 'Entrada'
      FieldName = 'entrada'
      Required = True
    end
    object qEtiquetasnome_chave: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'nome_chave'
      Size = 45
    end
    object qEtiquetascnpjcpf: TStringField
      DisplayLabel = 'CNPJ/CPF'
      FieldKind = fkCalculated
      FieldName = 'cnpjcpf'
      Size = 18
      Calculated = True
    end
    object qEtiquetascnpj: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'cnpj'
      Visible = False
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object qEtiquetascpf: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'cpf'
      Visible = False
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object qEtiquetasestado: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'estado'
      Size = 2
    end
    object qEtiquetasrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
      Required = True
    end
    object qEtiquetasnome: TStringField
      DisplayLabel = 'Usu'#225'rio'
      DisplayWidth = 25
      FieldName = 'nome'
      Size = 150
    end
    object qEtiquetasemail: TStringField
      DisplayLabel = 'E-mail'
      DisplayWidth = 45
      FieldName = 'email'
      Size = 150
    end
  end
  object dsEtiquetas: TDataSource
    DataSet = qEtiquetas
    Left = 312
    Top = 312
  end
  object uEtiquetas: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labret'
      'WHERE'
      '  labret.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO labret'
      '  (recno, expirado, qtd, amostra, entrada)'
      'VALUES'
      '  (:recno, :expirado, :qtd, :amostra, :entrada)')
    ModifySQL.Strings = (
      'UPDATE labret SET'
      '  recno = :recno,'
      '  expirado = :expirado,'
      '  qtd = :qtd,'
      '  amostra = :amostra,'
      '  entrada = :entrada'
      'WHERE'
      '  labret.recno = :OLD_recno')
    UseSequenceFieldForRefreshSQL = False
    Left = 200
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'expirado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'qtd'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'amostra'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'entrada'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_recno'
        ParamType = ptUnknown
      end>
  end
  object sEtiquetas: TZSequence
    Connection = DM.Design
    SequenceName = 'public.labret_recno_seq'
    Left = 144
    Top = 312
  end
  object qResumo: TZQuery
    Connection = DM.Design
    OnCalcFields = qResumoCalcFields
    SQL.Strings = (
      
        'select x.codigo, c.nome_chave, x.frascos, x.seringas, x.conforme' +
        's, x.naoconformes, x.vazios, x.quebrados, c.cnpj, c.cpf, c.cidad' +
        'e, c.estado'
      
        '  from (select codigo, sum(sys_iif(tipo = 1, 1, 0)) frascos, sum' +
        '(sys_iif(tipo = 2, 1, 0)) seringas,'
      
        '               sum(sys_iif(status = 1, 1, 0)) conformes, sum(sys' +
        '_iif(status = 2, 1, 0)) naoconformes,'
      
        '               sum(sys_iif(status = 3, 1, 0)) vazios, sum(sys_ii' +
        'f(status = 4, 1, 0)) quebrados'
      '          from (select c.codigo, lr.status, e.tipo'
      '                  from labret lr'
      '                       join labamostras a'
      '                         on a.recno = lr.amostra'
      '                       join tbclientes c'
      '                         on c.codigo = a.codigo'
      '                       join labprocxequip e'
      '                         on e.amostra = a.recno'
      '                 where lr.labport_recno is null) x'
      '         group by codigo) x'
      '  join tbclientes c'
      '    on c.codigo = x.codigo')
    Params = <>
    Left = 256
    Top = 360
    object qResumocodigo: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'codigo'
      Required = True
    end
    object qResumonome_chave: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'nome_chave'
      Size = 45
    end
    object qResumofrascos: TLargeintField
      DisplayLabel = 'Frascos'
      FieldName = 'frascos'
      ReadOnly = True
    end
    object qResumoseringas: TLargeintField
      DisplayLabel = 'Seringas'
      FieldName = 'seringas'
      ReadOnly = True
    end
    object qResumoconformes: TLargeintField
      DisplayLabel = 'Conformes'
      FieldName = 'conformes'
      ReadOnly = True
    end
    object qResumonaoconformes: TLargeintField
      DisplayLabel = 'N'#227'o Conformes'
      FieldName = 'naoconformes'
      ReadOnly = True
    end
    object qResumovazios: TLargeintField
      DisplayLabel = 'Vazios'
      FieldName = 'vazios'
      ReadOnly = True
    end
    object qResumoquebrados: TLargeintField
      DisplayLabel = 'Quebrados'
      FieldName = 'quebrados'
      ReadOnly = True
    end
    object qResumocnpjcpf: TStringField
      DisplayLabel = 'CNPJ/CPF'
      FieldKind = fkCalculated
      FieldName = 'cnpjcpf'
      Size = 18
      Calculated = True
    end
    object qResumocnpj: TStringField
      FieldName = 'cnpj'
      Visible = False
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object qResumocpf: TStringField
      FieldName = 'cpf'
      Visible = False
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object qResumocidade: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 25
      FieldName = 'cidade'
      Size = 100
    end
    object qResumoestado: TStringField
      DisplayLabel = 'Estado'
      DisplayWidth = 3
      FieldName = 'estado'
      Size = 2
    end
  end
  object dsResumo: TDataSource
    DataSet = qResumo
    Left = 312
    Top = 360
  end
end
