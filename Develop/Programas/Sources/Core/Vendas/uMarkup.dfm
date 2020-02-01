inherited Markup: TMarkup
  Caption = 'Demonstra'#231#227'o do C'#225'lculo do Markup'
  ClientHeight = 447
  ClientWidth = 777
  Font.Charset = DEFAULT_CHARSET
  Font.Name = 'Tahoma'
  ExplicitWidth = 793
  ExplicitHeight = 486
  PixelsPerInch = 96
  TextHeight = 14
  object PageControl1: TPageControl [0]
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 771
    Height = 399
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Servi'#231'os'
      object JvDBGrid1: TJvDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 73
        Width = 757
        Height = 294
        Align = alClient
        BorderStyle = bsNone
        DataSource = DataSource1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = JvDBGrid1DrawColumnCell
        AlternateRowColor = clMoneyGreen
        AutoSizeColumns = True
        AutoSizeColumnIndex = 1
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 18
      end
      object GroupBox1: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 757
        Height = 64
        Align = alTop
        Caption = ' Composi'#231#227'o do Valor da Nota  '
        TabOrder = 1
        object Panel1: TPanel
          Left = 2
          Top = 16
          Width = 129
          Height = 46
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object Label1: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 123
            Height = 14
            Align = alTop
            Caption = 'M'#227'o de Obra'
            ExplicitWidth = 70
          end
          object edMO: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 23
            Width = 123
            Height = 20
            Align = alClient
            DisplayFormat = ',0.#0'
            ReadOnly = True
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
            ExplicitHeight = 22
          end
        end
        object Panel2: TPanel
          Left = 131
          Top = 16
          Width = 16
          Height = 46
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Label3: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 10
            Height = 23
            Margins.Top = 20
            Align = alClient
            Alignment = taCenter
            Caption = '+'
            Layout = tlCenter
            ExplicitWidth = 8
            ExplicitHeight = 14
          end
        end
        object Panel5: TPanel
          Left = 147
          Top = 16
          Width = 130
          Height = 46
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object Label2: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 124
            Height = 14
            Align = alTop
            Caption = 'Despesas'
            ExplicitWidth = 50
          end
          object edDesp: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 23
            Width = 124
            Height = 20
            Align = alClient
            DisplayFormat = ',0.#0'
            ReadOnly = True
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
            ExplicitHeight = 22
          end
        end
        object Panel3: TPanel
          Left = 277
          Top = 16
          Width = 16
          Height = 46
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 3
          object Label4: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 10
            Height = 23
            Margins.Top = 20
            Align = alClient
            Alignment = taCenter
            Caption = '+'
            Layout = tlCenter
            ExplicitWidth = 8
            ExplicitHeight = 14
          end
        end
        object Panel4: TPanel
          Left = 293
          Top = 16
          Width = 130
          Height = 46
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 4
          object Label5: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 124
            Height = 14
            Align = alTop
            Caption = 'Servi'#231'os (fixo)'
            ExplicitWidth = 77
          end
          object edSrvFix: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 23
            Width = 124
            Height = 20
            Align = alClient
            DisplayFormat = ',0.#0'
            ReadOnly = True
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
            ExplicitHeight = 22
          end
        end
        object Panel6: TPanel
          Left = 423
          Top = 16
          Width = 16
          Height = 46
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 5
          object Label6: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 10
            Height = 23
            Margins.Top = 20
            Align = alClient
            Alignment = taCenter
            Caption = '+'
            Layout = tlCenter
            ExplicitWidth = 8
            ExplicitHeight = 14
          end
        end
        object Panel7: TPanel
          Left = 439
          Top = 16
          Width = 130
          Height = 46
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 6
          object Label7: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 124
            Height = 14
            Align = alTop
            Caption = 'Servi'#231'os (vari'#225'vel)'
            ExplicitWidth = 97
          end
          object edSrvVar: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 23
            Width = 124
            Height = 20
            Align = alClient
            DisplayFormat = ',0.#0'
            ReadOnly = True
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
            ExplicitHeight = 22
          end
        end
        object Panel8: TPanel
          Left = 569
          Top = 16
          Width = 16
          Height = 46
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 7
          object Label8: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 20
            Width = 10
            Height = 23
            Margins.Top = 20
            Align = alClient
            Alignment = taCenter
            Caption = '='
            Layout = tlCenter
            ExplicitWidth = 9
            ExplicitHeight = 14
          end
        end
        object Panel9: TPanel
          Left = 585
          Top = 16
          Width = 170
          Height = 46
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 8
          object Label9: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 164
            Height = 14
            Align = alTop
            Caption = 'Valor da NF'
            ExplicitWidth = 62
          end
          object edNF: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 23
            Width = 164
            Height = 20
            Align = alClient
            DisplayFormat = ',0.#0'
            ReadOnly = True
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
            ExplicitHeight = 22
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Materiais'
      ImageIndex = 1
    end
  end
  object pnAprov: TPanel [1]
    AlignWithMargins = True
    Left = 3
    Top = 408
    Width = 771
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 448
      Top = 3
      Width = 102
      Height = 30
      Action = actOk
      Align = alRight
      Caption = 'Aprovar'
      TabOrder = 0
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000A6B0A000A6B0A000A6B0A000A6B0A000A6B0A000A6B
        0A000A6B0A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000A6B0A0032C246000A9A0A000A9A0A000A9A0A000A9A
        0A000A6B0A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000A6B0A006BFB9A0029B9380026B6330022B22E000A9A
        0A000A6B0A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000A6B0A006BFB9A002EBF3F002ABB3B0028B836000A9A
        0A000A6B0A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000A6B0A006BFB9A0033C348002FC042002CBD3D000A9A
        0A000A6B0A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000A6B0A006BFB9A0038C94F0035C64B0032C246000A9A
        0A000A6B0A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000A6B0A000A6B
        0A000A6B0A000A6B0A000A6B0A006BFB9A003DCF57003BCB520037C74D000A9A
        0A000A6B0A000A6B0A000A6B0A000A6B0A000A6B0A00FF00FF00FF00FF000A6B
        0A003CCD56000A9A0A000A9A0A0046D7640043D3600040D15B003CCD56000A9A
        0A000A9A0A000A9A0A000A9A0A000A6B0A00FF00FF00FF00FF00FF00FF00FF00
        FF000A6B0A006BFB9A004FE071004CDC6C0049D9670046D5620042D25E003ED0
        58003BCC53000A9A0A000A6B0A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000A6B0A006BFB9A0051E274004EDF6F004BDB6A0047D7650044D4
        61000A9A0A000A6B0A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000A6B0A006BFB9A0053E477004FE072004DDD6E000A9A
        0A000A6B0A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000A6B0A006BFB9A0054E479000A9A0A000A6B
        0A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000A6B0A006BFB9A000A6B0A00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000A6B0A00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 556
      Top = 3
      Width = 103
      Height = 30
      Action = actCancel
      Align = alRight
      Caption = 'Reprovar'
      TabOrder = 1
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000A0A9A00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000A0A9A003B0AB9000A0A9A00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000A0A9A000A3BFB000C3CFB003B0AB9000A0A
        9A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000A0A9A000A3BFB001B48FB001543FB000F3EFB003B0A
        B9000A0A9A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000A0A9A000A3BFB002E57FB002650FB001E4BFB001745FB001240
        FB003B0AB9000A0A9A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000A0A9A000A3BFB004468FC003B62FC00325AFB002A53FB00214EFB001B47
        FB001442FB003B0AB9000A0A9A00FF00FF00FF00FF00FF00FF00FF00FF000A0A
        9A009BAEFB009BAEFB009BAEFB009BAEFB003F65FB00365EFC002D56FB003B0A
        B9003B0AB9003B0AB9003B0AB9000A0A9A00FF00FF00FF00FF000A0A9A000A0A
        9A000A0A9A000A0A9A000A0A9A009BAEFB004D70FC004368FB003A61FB003B0A
        B9000A0A9A000A0A9A000A0A9A000A0A9A000A0A9A00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000A0A9A009BAEFB005C7CFC005174FB00486CFB003B0A
        B9000A0A9A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000A0A9A009BAEFB006B87FC006180FB005677FC003B0A
        B9000A0A9A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000A0A9A009BAEFB007A94FB00708CFB006483FB003B0A
        B9000A0A9A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000A0A9A009BAEFB008AA1FB008098FB007490FB003B0A
        B9000A0A9A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000A0A9A009BAEFB009BAEFB009BAEFB009BAEFB009BAE
        FB000A0A9A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000A0A9A000A0A9A000A0A9A000A0A9A000A0A9A000A0A
        9A000A0A9A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 665
      Top = 3
      Width = 103
      Height = 30
      Action = actClose
      Align = alRight
      Caption = 'Fechar'
      TabOrder = 2
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF0020547700116E9B00F3E5BE00E0CAAC00CEB6A000BDA49D00B69E9E00B69E
        9E00B69F9F00B69F9F00B69F9F00B69F9F004199B700244E6E00FF00FF00FF00
        FF0020547700106D9B000A0A9A00FCE6AD00FCE09E00FCD88F00F1C88200DBB2
        7E00C6A18000B2948A00AB909000AB909000439AB800244E6E00FF00FF00FF00
        FF0020557700116E9B000A0A9A000A0A9A00FCDC9800FCD58800FCCF7A00FCC8
        6B00FCC05B00F2B35200A0818100A0818100459CB900244E6E00FF00FF00FF00
        FF001F55780013719D000A0A9A001744FB000A0A9A00FCD28200FCCC7400FCC5
        6400FCBE5400F0AE4B009572720095727200479DBA00244E6E000A0A9A000A0A
        9A000A0A9A000A0A9A000A0A9A001E4BFB001744FB000A0A9A00FCC96D00FCC1
        5D00FCBB4E00EFAB43008963630089636300499FBB00244E6E000A0A9A005174
        FB00466BFB003C62FB00315AFB002752FB001E4BFB001744FB000A0A9A00FCBF
        5600FCB84700EDA63C007E5454007E5454004BA1BC00244E6E000A0A9A005C7C
        FB005174FB00466BFB003C62FB00315AFB002852FB001E4BFB001744FB000A0A
        9A00FCB44000ECA1340074464600744646004DA3BD00244E6E000A0A9A006684
        FB005C7CFB005174FB00476AFB003C62FB00315AFB002852FB000A0A9A00FCB8
        490040AFBA003FAEBA006B3B3B006B3B3B004FA5BE00244E6E000A0A9A000A0A
        9A000A0A9A000A0A9A000A0A9A00476BFB003C62FB000A0A9A00FCBC5100FCB5
        42000AFBFB0071D1CA006B3B3B006B3B3B0051A7BF00244E6E00FF00FF00FF00
        FF0021587B001F7FA8000A0A9A005174FB000A0A9A00FCC05A00FCB94B00FCB2
        3C00FCAC2D00EB9922006B3B3B006B3B3B0053AAC000244E6E00FF00FF00FF00
        FF0021597B002182AA000A0A9A000A0A9A00FCC46200FCBD5300FCB64400FCAF
        3500FCA92700E28E1D006B3B3B006B3B3B0056ACC200244E6E00FF00FF00FF00
        FF0022597C002485AC000A0A9A00FCC86B00FCC15C00FCBA4D00FCB33D00EDA1
        2F00D1862800B66E25006B3B3B006B3B3B0059AEC400244E6E00FF00FF00FF00
        FF00225A7C002687AD00FCCC7400FCC56400FBBD5500E9A74400CA873800B774
        3000AE6B2B009F5D2A006B3B3B006B3B3B005BB1C600244E6E00FF00FF00FF00
        FF00215B7D002989AF00FAC76C00E4AC5800C1874600AF743C00A66937009D60
        320095572F00874E31006B3B3B006B3B3B005EB4C700244E6E00FF00FF00FF00
        FF00225B7E002C8DB2003192B6003798B9003C9CBD0041A2BF0045A6C3004BAC
        C6004FB0CA0055B6CD005ABBD1005FBFD4005DB7CB00244E6E00FF00FF00FF00
        FF00244E6E00244E6E00244E6E00244E6E00244E6E00244E6E00244E6E00244E
        6E00244E6E00244E6E00244E6E00244E6E00244E6E00244E6E00}
    end
    object BitBtn4: TBitBtn
      AlignWithMargins = True
      Left = 339
      Top = 3
      Width = 103
      Height = 30
      Action = actCalcMarkup
      Align = alRight
      Caption = 'Recalcular'
      TabOrder = 3
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00BBB5B500988484009B878700FF00FF00FF00FF008F76
        760099848400BDB8B800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00957F7F00653737007445450063363600FF00FF00C0BCBC005F2E
        2E0072414100653939009B868600FF00FF00FF00FF00FF00FF00FF00FF00C3C3
        C300805F5F0071414100A0757500AF8787007648480094808000896F6F007849
        4900A3747400906060006A3B3B00876B6B00FF00FF00FF00FF00FF00FF00C4C4
        C4007A5F5F007A4D4D00B7939300B8949400A984840074474700784C4C00A57C
        7C00A87D7D00A1737300713F3F00826B6B00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00704C4C009E787800C3A6A600C3A6A600C5A7A700C1A1A100B895
        9500B18A8A008B5F5F0077545400FF00FF00FF00FF00FF00FF00A29292009680
        8000A7999900734F4F009D7A7A00D3BDBD00BDA0A000926D6D00936D6D00B594
        9400BE9C9C00895F5F007A595900A6989800957E7E00A99D9D006E4949007E53
        5300794F4F00936D6D00D1BCBC00C4ACAC00663939008468680082646400673A
        3A00B5949400B28F8F0080535300704040007140400078555500683D3D00C1A6
        A600D4BFBF00DBCACA00E4D6D6009472720090787800FF00FF00FF00FF00886B
        6B008E676700C1A2A200B48F8F00AB808000936363006F484800673C3C00C9AF
        AF00DECCCC00E4D7D700EEE4E4009371710098848400FF00FF00FF00FF008E75
        75008C666600C5A8A800B9969600B0878700976868006F4848006C454500936F
        6F00916D6D00AD929200F1EAEA00D3C6C600653A3A0097828200937C7C006438
        3800BB9D9D00C2A4A400906767007E5151007C4E4E00754F4F00978383008364
        6400937D7D0069434300BCA7A700FCFCFC00D2C5C5008D6969008C696900BFA6
        A600D4BFBF0099747400704C4C00957F7F0083646400A0939300FF00FF00FF00
        FF00FF00FF0076575700B1999900F7F3F300F6F1F100F5EEEE00EADFDF00D9C6
        C600CFB6B600936C6C007F646400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008E7676007F555500E0D2D200E9DEDE00DFD1D1009C7D7D009D7D7D00CEB7
        B700C9AEAE00BA9999007141410093808000FF00FF00FF00FF00FF00FF00C2C0
        C0006D46460088626200D8C6C600E6D9D900926F6F007B5C5C0075525200926D
        6D00CCB0B000B7959500774B4B0078555500FF00FF00FF00FF00FF00FF00FF00
        FF00C2BFBF007F606000704444009E7D7D0065393900C4C2C200BAB4B4006537
        3700916A6A00683A3A0085696900C4C2C200FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00A99C9C007D5D5D0083646400FF00FF00FF00FF007D5D
        5D0081626200ADA1A100FF00FF00FF00FF00FF00FF00FF00FF00}
    end
  end
  inherited alDef: TActionList
    Left = 136
    Top = 120
    inherited actOk: TAction
      Caption = 'Aprovar'
      ImageIndex = 165
    end
    inherited actCancel: TAction
      Caption = 'Reprovar'
      ImageIndex = 292
    end
    object actCalcMarkup: TAction
      Caption = 'Recalcular'
      ImageIndex = 79
      OnExecute = actCalcMarkupExecute
    end
  end
  object cdsDemo: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'descricao'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'operador'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'valor'
        DataType = ftFloat
      end
      item
        Name = 'saldo'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 184
    Top = 120
    object cdsDemooperador: TStringField
      Alignment = taCenter
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'operador'
      Size = 3
    end
    object cdsDemodescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 85
      FieldName = 'descricao'
      Size = 150
    end
    object cdsDemovalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      DisplayFormat = ',0.#0'
    end
    object cdsDemosaldo: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'saldo'
      DisplayFormat = ',0.#0'
    end
  end
  object DataSource1: TDataSource
    DataSet = cdsDemo
    Left = 248
    Top = 120
  end
end
