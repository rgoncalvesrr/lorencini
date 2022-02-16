inherited OP: TOP
  Caption = 'Ordem de Produ'#231#227'o'
  ClientHeight = 620
  ExplicitHeight = 659
  PixelsPerInch = 96
  TextHeight = 15
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 410
    Width = 837
    Height = 6
    Cursor = crVSplit
    Align = alBottom
    ExplicitLeft = -260
    ExplicitTop = 130
    ExplicitWidth = 1097
  end
  inherited StatusBar1: TStatusBar
    Top = 593
    ExplicitTop = 593
  end
  inherited Panel1: TPanel
    inherited pctlFind: TPageControl
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 819
        ExplicitHeight = 75
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 819
        ExplicitHeight = 75
      end
    end
  end
  inherited Panel2: TPanel
    Height = 281
    ExplicitHeight = 281
    inherited PageControl1: TPageControl
      Height = 275
      ExplicitHeight = 275
      inherited TabSheet1: TTabSheet
        Caption = 'Ordens'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 823
        ExplicitHeight = 245
        inherited DBGrid1: TDBGrid
          Height = 239
        end
      end
    end
  end
  inherited ctrlBarTop: TControlBar
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
  object Panel3: TPanel [5]
    Left = 0
    Top = 416
    Width = 837
    Height = 174
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 4
    object PageControl2: TPageControl
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 831
      Height = 168
      ActivePage = tsVolumes
      Align = alClient
      TabOrder = 0
      OnChange = PageControl2Change
      object tsVolumes: TTabSheet
        Caption = 'Servi'#231'os'
        object DBGrid2: TDBGrid
          Tag = 1
          AlignWithMargins = True
          Left = 3
          Top = 47
          Width = 817
          Height = 52
          Align = alClient
          BorderStyle = bsNone
          Ctl3D = False
          DataSource = dsServ
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
        object ControlBar1: TControlBar
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 817
          Height = 38
          Align = alTop
          AutoSize = True
          BevelEdges = []
          BevelKind = bkNone
          DrawingStyle = dsGradient
          TabOrder = 1
          object ToolBar2: TToolBar
            Left = 11
            Top = 2
            Width = 804
            Height = 34
            AutoSize = True
            BorderWidth = 1
            ButtonHeight = 30
            ButtonWidth = 265
            Caption = 'ToolBar1'
            DisabledImages = Resources.medium_d
            DrawingStyle = dsGradient
            EdgeInner = esNone
            EdgeOuter = esNone
            HotImages = Resources.medium_h
            Images = Resources.medium_n
            List = True
            ParentShowHint = False
            AllowTextButtons = True
            ShowHint = True
            TabOrder = 0
            object ToolButton12: TToolButton
              Left = 0
              Top = 0
              Action = actServAjust
              Style = tbsTextButton
            end
            object ToolButton13: TToolButton
              Left = 269
              Top = 0
              Action = actLocalizarAmostras
              Style = tbsTextButton
            end
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 102
          Width = 823
          Height = 36
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
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
            Width = 57
            Height = 30
            Align = alLeft
            Caption = 'Divergente'
            Layout = tlCenter
            ExplicitHeight = 15
          end
          object lbLeg3: TLabel
            AlignWithMargins = True
            Left = 142
            Top = 3
            Width = 36
            Height = 30
            Align = alLeft
            Caption = 'Pronto'
            Layout = tlCenter
            ExplicitHeight = 15
          end
          object JvImage3: TJvImage
            AlignWithMargins = True
            Left = 104
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
            ExplicitLeft = 258
            ExplicitHeight = 26
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Amostras'
        ImageIndex = 3
        object DBGrid5: TDBGrid
          Tag = 1
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 817
          Height = 132
          Align = alClient
          BorderStyle = bsNone
          Ctl3D = False
          DataSource = dsAmostras
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
      object tsEtiquetas: TTabSheet
        Caption = 'Materiais'
        ImageIndex = 1
        object DBGrid3: TDBGrid
          Tag = 1
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 817
          Height = 132
          Align = alClient
          BorderStyle = bsNone
          Ctl3D = False
          DataSource = dsMat
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
      object TabSheet2: TTabSheet
        Caption = 'M'#227'o-de-Obra'
        ImageIndex = 2
        object DBGrid4: TDBGrid
          Tag = 1
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 817
          Height = 132
          Align = alClient
          BorderStyle = bsNone
          Ctl3D = False
          DataSource = dsMO
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
  inherited alDef: TActionList
    object actServAjust: TAction
      Caption = 'Igualar Quantidades de Servi'#231'os a Amostras'
      Enabled = False
      ImageIndex = 225
      OnExecute = actServAjustExecute
    end
    object actLocalizarAmostras: TAction
      Caption = 'Localizar Amostras'
      Enabled = False
      ImageIndex = 398
    end
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    AfterScroll = IBrwSrcAfterScroll
    SQL.Strings = (
      'select op, pedido, criada, recno '
      '  from op '
      ' where status = 10')
    Sequence = zBrwSrc
    SequenceField = 'recno'
    object IBrwSrcop: TLargeintField
      DisplayLabel = 'OP'
      FieldName = 'op'
      Required = True
    end
    object IBrwSrcpedido: TIntegerField
      DisplayLabel = 'Pedido'
      FieldName = 'pedido'
      Required = True
    end
    object IBrwSrccriada: TDateTimeField
      DisplayLabel = 'Cria'#231#227'o'
      FieldName = 'criada'
      Required = True
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object IBrwSrcrecno: TLargeintField
      FieldName = 'recno'
      Required = True
      Visible = False
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM op'
      'WHERE'
      '  op.op = :OLD_op AND'
      '  op.pedido = :OLD_pedido')
    InsertSQL.Strings = (
      'INSERT INTO op'
      '  (op, pedido, criada, recno)'
      'VALUES'
      '  (:op, :pedido, :criada, :recno)')
    ModifySQL.Strings = (
      'UPDATE op SET'
      '  op = :op,'
      '  pedido = :pedido,'
      '  criada = :criada,'
      '  recno = :recno'
      'WHERE'
      '  op.op = :OLD_op AND'
      '  op.pedido = :OLD_pedido')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'op'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'criada'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_op'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_pedido'
        ParamType = ptUnknown
      end>
  end
  object qServ: TZQuery
    Connection = DM.Design
    AfterScroll = qServAfterScroll
    OnCalcFields = qServCalcFields
    UpdateObject = uServ
    SQL.Strings = (
      
        'select op.op, op.pedido, op.codserv, s.descri, op.qtd, op.amostr' +
        'as, op.recno, r.descri recipiente'
      '  from op_servicos op'
      '       join servicos s'
      '         on s.codserv = op.codserv'
      '       left join labtipo_recipiente r'
      '         on r.recno = s.vidraria'
      ' where op.op = :ordem'
      '   and op.pedido = :pedido')
    Params = <
      item
        DataType = ftUnknown
        Name = 'ordem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pedido'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    Left = 200
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ordem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pedido'
        ParamType = ptUnknown
      end>
    object qServstatus: TIntegerField
      DisplayLabel = ' '
      FieldKind = fkCalculated
      FieldName = 'status'
      Calculated = True
    end
    object qServop: TLargeintField
      FieldName = 'op'
      Required = True
      Visible = False
    end
    object qServpedido: TIntegerField
      FieldName = 'pedido'
      Required = True
      Visible = False
    end
    object qServcodserv: TIntegerField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'codserv'
      Required = True
    end
    object qServdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Required = True
      Size = 80
    end
    object qServqtd: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'qtd'
      Required = True
    end
    object qServamostras: TIntegerField
      DisplayLabel = 'Amostras'
      FieldName = 'amostras'
      Required = True
      DisplayFormat = ',0'
    end
    object qServrecipiente: TStringField
      DisplayLabel = 'Recipiente'
      FieldName = 'recipiente'
      Size = 60
    end
    object qServrecno: TLargeintField
      FieldName = 'recno'
      Required = True
      Visible = False
    end
  end
  object dsServ: TDataSource
    AutoEdit = False
    DataSet = qServ
    Left = 256
    Top = 176
  end
  object qMat: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      
        'select op.op, op.pedido, op.material, m.descricao, op.qtd, m.uni' +
        'dade'
      '  from op_materiais op'
      '       join produtos m'
      '         on m.codigo = op.material'
      ' where op.op = :ordem'
      '   and op.pedido = :pedido')
    Params = <
      item
        DataType = ftUnknown
        Name = 'ordem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pedido'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    Left = 200
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ordem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pedido'
        ParamType = ptUnknown
      end>
    object qMatop: TLargeintField
      FieldName = 'op'
      Required = True
      Visible = False
    end
    object qMatpedido: TIntegerField
      FieldName = 'pedido'
      Required = True
      Visible = False
    end
    object qMatmaterial: TIntegerField
      DisplayLabel = 'Material'
      FieldName = 'material'
      Required = True
    end
    object qMatdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 80
      FieldName = 'descricao'
      Size = 100
    end
    object qMatqtd: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'qtd'
    end
    object qMatunidade: TStringField
      DisplayLabel = 'Unidade'
      DisplayWidth = 4
      FieldName = 'unidade'
      Required = True
      Size = 2
    end
  end
  object dsMat: TDataSource
    AutoEdit = False
    DataSet = qMat
    Left = 256
    Top = 224
  end
  object qMO: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      'select op.op, op.pedido, op.funcao, f.descricao, op.qtd'
      '  from op_mo op'
      '       join tb_funcoes f'
      '         on f.id = op.funcao'
      ' where op.op = :ordem '
      '   and op.pedido = :pedido')
    Params = <
      item
        DataType = ftUnknown
        Name = 'ordem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pedido'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    Left = 200
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ordem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pedido'
        ParamType = ptUnknown
      end>
    object qMOop: TLargeintField
      FieldName = 'op'
      Required = True
      Visible = False
    end
    object qMOpedido: TIntegerField
      FieldName = 'pedido'
      Required = True
      Visible = False
    end
    object qMOfuncao: TIntegerField
      DisplayLabel = 'Fun'#231#227'o'
      FieldName = 'funcao'
      Required = True
    end
    object qMOdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 80
      FieldName = 'descricao'
      Size = 100
    end
    object qMOqtd: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'qtd'
      Required = True
    end
  end
  object dsMO: TDataSource
    AutoEdit = False
    DataSet = qMO
    Left = 256
    Top = 272
  end
  object qAmostras: TZQuery
    Connection = DM.Design
    SortedFields = 'recebimento'
    SQL.Strings = (
      
        'select op.op, op.pedido, op.amostra, r.descri recipiente_amostra' +
        ', a.recebimento, op.codserv, s.descri'
      '  from op_amostras op'
      '       join servicos s'
      '         on s.codserv = op.codserv'
      '       join labamostras a'
      '         on a.recno = op.amostra'
      '       join labtipo_recipiente r'
      '         on r.recno = a.recipiente'
      ' where op.op = :ordem'
      '   and op.pedido = :pedido')
    Params = <
      item
        DataType = ftUnknown
        Name = 'ordem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pedido'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    IndexFieldNames = 'recebimento Asc'
    Left = 200
    Top = 320
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ordem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pedido'
        ParamType = ptUnknown
      end>
    object qAmostrasop: TLargeintField
      FieldName = 'op'
      Required = True
      Visible = False
    end
    object qAmostraspedido: TIntegerField
      FieldName = 'pedido'
      Required = True
      Visible = False
    end
    object qAmostrasamostra: TIntegerField
      DisplayLabel = 'Amostra'
      FieldName = 'amostra'
      Required = True
    end
    object qAmostrasrecebimento: TDateTimeField
      DisplayLabel = 'Recebimento'
      FieldName = 'recebimento'
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object qAmostrascodserv: TIntegerField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'codserv'
      Required = True
    end
    object qAmostrasdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Required = True
      Size = 80
    end
    object qAmostrasrecipiente_amostra: TStringField
      DisplayLabel = 'Recipiente'
      FieldName = 'recipiente_amostra'
      Size = 60
    end
  end
  object dsAmostras: TDataSource
    AutoEdit = False
    DataSet = qAmostras
    Left = 256
    Top = 320
  end
  object uServ: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM op_servicos'
      'WHERE'
      '  op_servicos.op = :OLD_op AND'
      '  op_servicos.pedido = :OLD_pedido AND'
      '  op_servicos.codserv = :OLD_codserv')
    InsertSQL.Strings = (
      'INSERT INTO op_servicos'
      '  (op, pedido, codserv, qtd, amostras, recno)'
      'VALUES'
      '  (:op, :pedido, :codserv, :qtd, :amostras, :recno)')
    ModifySQL.Strings = (
      'UPDATE op_servicos SET'
      '  op = :op,'
      '  pedido = :pedido,'
      '  codserv = :codserv,'
      '  qtd = :qtd,'
      '  amostras = :amostras,'
      '  recno = :recno'
      'WHERE'
      '  op_servicos.op = :OLD_op AND'
      '  op_servicos.pedido = :OLD_pedido AND'
      '  op_servicos.codserv = :OLD_codserv')
    UseSequenceFieldForRefreshSQL = False
    Left = 152
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'op'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codserv'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'qtd'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'amostras'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_op'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_pedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_codserv'
        ParamType = ptUnknown
      end>
  end
  object zBrwSrc: TZSequence
    Connection = DM.Design
    SequenceName = 'public.op_recno_seq'
    Left = 96
    Top = 128
  end
end
