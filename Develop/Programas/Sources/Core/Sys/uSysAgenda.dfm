inherited SysAgenda: TSysAgenda
  Caption = 'Agenda Global'
  ClientHeight = 637
  ClientWidth = 1003
  ExplicitWidth = 758
  ExplicitHeight = 507
  PixelsPerInch = 120
  TextHeight = 20
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 395
    Width = 1003
    Height = 8
    Cursor = crVSplit
    Align = alBottom
    Beveled = True
  end
  inherited bvDiv: TBevel
    Width = 1003
    ExplicitWidth = 1003
  end
  object Panel2: TPanel [2]
    AlignWithMargins = True
    Left = 3
    Top = 160
    Width = 997
    Height = 232
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = 4
    ExplicitTop = 163
    ExplicitWidth = 995
    ExplicitHeight = 228
    object ListView1: TListView
      Left = 0
      Top = 0
      Width = 995
      Height = 228
      Align = alClient
      Columns = <
        item
          Caption = 'Assunto'
          Width = 428
        end
        item
          Caption = 'De'
          Width = 215
        end
        item
          Caption = 'Data'
          Width = 143
        end
        item
          Caption = 'In'#237'cio'
          Width = 85
        end
        item
          AutoSize = True
          Caption = 'T'#233'rmino'
        end>
      ReadOnly = True
      RowSelect = True
      TabOrder = 0
      ViewStyle = vsReport
      OnChange = ListView1Change
      OnDeletion = ListView1Deletion
    end
  end
  object Panel3: TPanel [3]
    Left = 0
    Top = 403
    Width = 1003
    Height = 234
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object Panel4: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 636
      Height = 227
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel4'
      TabOrder = 0
      object Memo1: TMemo
        Left = 0
        Top = 32
        Width = 636
        Height = 195
        Align = alClient
        ReadOnly = True
        TabOrder = 0
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 636
        Height = 32
        Align = alTop
        Alignment = taLeftJustify
        BevelInner = bvLowered
        BevelOuter = bvNone
        Caption = '        Assunto: '
        TabOrder = 1
        object Image2: TImage
          Left = 7
          Top = 4
          Width = 16
          Height = 16
          AutoSize = True
          Picture.Data = {
            07544269746D617042020000424D420200000000000042000000280000001000
            000010000000010010000300000000020000120B0000120B0000000000000000
            0000007C0000E00300001F000000007C007C007C007C007C007C007C007C007C
            007C007C007C007C007C007C007C007C007C007C007C007C0067E062C05EC05E
            A05AA05A007C007C007C007C007C007C007C007C007C206B0067E062C062C05E
            A05AA05AA05A007C007C007C007C007C007C007C4073406F206B0067E066E062
            C05EC05EA05AA05A007C007C007C007C007C807760734073406F206F006B0067
            E062C05EC05EC05EC05E007C007C007CA07FA07B807B807760734073406F206B
            0067E066E062C05EC05EC062007C007CA17FA07FA07FA07F807B807760774073
            406F206B0067E066E062E062007C007CC27FC27FC17FA17FA07FA07FA07B8077
            6073406F206F006B00670067007C007CC37FC37FC37FC37FC27FC17FA17FA07F
            807B60776073406F206F206B007C007CC47FC47FC47FC47FC37FC37FC27FC17F
            A07FA07B807760776073406F007C007CC57FC57FC57FC57FC57FC47FC37FC27F
            C17FA07FA07F807B80776077007C007C007CC67FC67FC67FC67FC57FC47FC37F
            C27FC27FA17FA07FA07B007C007C007C007C007CC77FC77FC67FC67FC57FC47F
            C37FC27FC27FA17F007C007C007C007C007C007C007CC77FC77FC67FC67FC57F
            C47FC37FC27F007C007C007C007C007C007C007C007C007CC77FC67FC67FC57F
            C47FC47F007C007C007C007C007C007C007C007C007C007C007C007C007C007C
            007C007C007C007C007C007C007C}
          Transparent = True
        end
      end
    end
    object Panel6: TPanel
      AlignWithMargins = True
      Left = 648
      Top = 4
      Width = 351
      Height = 227
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object lbUsers: TListBox
        Left = 0
        Top = 32
        Width = 351
        Height = 195
        Style = lbOwnerDrawVariable
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ItemHeight = 16
        MultiSelect = True
        ParentFont = False
        Sorted = True
        TabOrder = 0
        OnDrawItem = lbUsersDrawItem
      end
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 351
        Height = 32
        Align = alTop
        BevelInner = bvLowered
        BevelOuter = bvNone
        Caption = 'Envolvidos no Compromisso'
        TabOrder = 1
      end
    end
  end
  inherited Panel1: TPanel
    Width = 1003
    ExplicitWidth = 1003
    inherited Shape1: TShape
      Left = 51
      Width = 952
      ExplicitLeft = 51
      ExplicitWidth = 952
    end
    inherited Image1: TImage
      Width = 40
      Height = 53
      Picture.Data = {
        055449636F6E0000010001002020000001000800A80800001600000028000000
        2000000040000000010008000000000080040000000000000000000000000000
        0000000000000000000080000080000000808000800000008000800080800000
        C0C0C000C0DCC000F0CAA60004040400080808000C0C0C001111110016161600
        1C1C1C002222220029292900555555004D4D4D004242420039393900807CFF00
        5050FF009300D600FFECCC00C6D6EF00D6E7E70090A9AD000000330000006600
        000099000000CC00003300000033330000336600003399000033CC000033FF00
        006600000066330000666600006699000066CC000066FF000099000000993300
        00996600009999000099CC000099FF0000CC000000CC330000CC660000CC9900
        00CCCC0000CCFF0000FF660000FF990000FFCC00330000003300330033006600
        330099003300CC003300FF00333300003333330033336600333399003333CC00
        3333FF00336600003366330033666600336699003366CC003366FF0033990000
        3399330033996600339999003399CC003399FF0033CC000033CC330033CC6600
        33CC990033CCCC0033CCFF0033FF330033FF660033FF990033FFCC0033FFFF00
        660000006600330066006600660099006600CC006600FF006633000066333300
        66336600663399006633CC006633FF0066660000666633006666660066669900
        6666CC00669900006699330066996600669999006699CC006699FF0066CC0000
        66CC330066CC990066CCCC0066CCFF0066FF000066FF330066FF990066FFCC00
        CC00FF00FF00CC009999000099339900990099009900CC009900000099333300
        990066009933CC009900FF00996600009966330099336600996699009966CC00
        9933FF009999330099996600999999009999CC009999FF0099CC000099CC3300
        66CC660099CC990099CCCC0099CCFF0099FF000099FF330099CC660099FF9900
        99FFCC0099FFFF00CC00000099003300CC006600CC009900CC00CC0099330000
        CC333300CC336600CC339900CC33CC00CC33FF00CC660000CC66330099666600
        CC669900CC66CC009966FF00CC990000CC993300CC996600CC999900CC99CC00
        CC99FF00CCCC0000CCCC3300CCCC6600CCCC9900CCCCCC00CCCCFF00CCFF0000
        CCFF330099FF6600CCFF9900CCFFCC00CCFFFF00CC003300FF006600FF009900
        CC330000FF333300FF336600FF339900FF33CC00FF33FF00FF660000FF663300
        CC666600FF669900FF66CC00CC66FF00FF990000FF993300FF996600FF999900
        FF99CC00FF99FF00FFCC0000FFCC3300FFCC6600FFCC9900FFCCCC00FFCCFF00
        FFFF3300CCFF6600FFFF9900FFFFCC006666FF0066FF660066FFFF00FF666600
        FF66FF00FFFF66002100A5005F5F5F00777777008686860096969600CBCBCB00
        B2B2B200D7D7D700DDDDDD00E3E3E300EAEAEA00F1F1F100F8F8F800F0FBFF00
        A4A0A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
        FFFFFF000A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A
        0A0A0A0A0A0A0A0A0A0A0A0A0A01014040404040400A0A0A0A0A0A0A0A0A0A0A
        0A0A0A0A0A0A0A0A0A0A0A0A01E3F9F901010101F940400A0A0A0A0A0A0A0A0A
        0A0A0A0A0A0A0A0A0A0A0A016FF90A01F4F4F4F30101F9400A0A0A0A0A0A0A0A
        0A0A0A0A0A0A0A0A0A0A016FF90AFFFFF4070AF4F4F301F9400A0A0A0A0A0A0A
        0A0A0A0A0A0A0A0A0A0A01F90AFFFFFFFFF6F4F4F4F3F401400A0A0A0A0A0A0A
        0A0A0A0A0A0A0A0A0A016FF90AFFFF03FFF4F4F4F4F4F301F9400A0A0A0A0A0A
        0A0A0A0A0A0A0A0A0A01F90AFFFFFFFF03FFFFF4F4F4F4F401400A0A0A0A0A0A
        0A0A0A0A0A1415151501F90AFF0AFFFFFF04040407F407F301400A1414141414
        14140A0A0A14ECECEC01F90AFF07FFFFFF0403FFF4F40AF401400AECECECECEC
        EC140A0A0A14ECEF0701F90AFFFFFFFFFF04FF03FFF4F4F401E90A0707070707
        EC140A0A0AECECECEC016FF90AFFFFFFFF04FFFFFFFFF401F9400AECECECEC07
        EC140A0A0AECF2F2F2F201F90AFFFFFFFFFFFFFFFFFFF401400A0707F2F2EC07
        EC140A0A0AECF3F3F2F3016FF90AFFFFFF0A07FFFFFF01F9400A0707F2F2EC07
        EC140A0A0AECF3F3F3F2F2016FF90A0AFFFFFFFF0101F9400A0707F2F3F2EC07
        EC140A0A0AECF3F30A0A0A0A016FF9F90A010101F9F9400A0A0A0A0AF3F3EC07
        EC140A0A0AECF4F3F3F3F3F30701016F6FF9F9F940010A07F2F2F3F3F3F3EC07
        EC140A0A0AECF3F40A0A0A0A0A0A07010101010101070A0A0A0A0A0AF3F4EC07
        EC140A0A0AECF3F4F4F4F3F3F3F3F307070AEC0707F2F2F3F3F3F3F3F4F3EC07
        EC140A0A0AECF4F4F4F4F3F3F4F3F3F3070AECF2F2F3F3F3F3F3FFF4F4F4EC07
        EC140A0A0AECF4F4F4A6A6A6A6F4F3F30A0A0A0AF3F3A6A6A6A6A6F4F4F4EC07
        EC140A0A0AECF4FFF4A6A6A6A6F3F3F40AFF070AF3F3A6A6A6A6A6F4F4F4EC07
        EC140A0A0AECF4FFF6F4A6A6F4F4F4F3070AEBF3F3F3A6A6A6F4F4F4FFF4EC07
        EC140A0A0AECFFFFFFF4A6A6F4F4F4F4070AECF3F3F3F4A6A6A6F4F6F4FFEC07
        EC140A0A0AECFFFFFFFFA6A6FFF4F4F4070AECF3F4F4F4F4A6A6A6FFFFFFEC07
        EC140A0A0AECFFFFFFF6A6A6FFF4F6F4070AECF4F4F4F4FFFFA6A6F6FFFFEC07
        EC140A0A0AECFFFFFFA6A6A6FFFFFFF40A0A0A0AF4F4A6A6FFA6A6F6FFFFEC07
        EC140A0A0AECFFFFFFA6A6A6FFFFFFFF0AFFEF0AF4FFA6A6A6A6A6FFFFFFEC07
        EC140A0A0AECFFFFFFFFA6A6FFFFFFFF070AECFFF4FFF6A6A6A6FFFFFFFFEC07
        EC140A0A0AECFFFFFFFFFFFFFFFFFFFF070AECF4FFFFFFFFFFFFFFFFFFFFEC07
        0A0A0A0A0AECFFFFFFFFFFFFFFFFFFFF070AECF4FFFFFFFFFFFFFFFFFFFFEC0A
        0A0A0A0A0AECECECECECECECECECECECEC0AECECECECECECECECECECECEC0A0A
        0A0A0A0AFFE07FFFFF801FFFFF000FFFFE0007FFFC0003FFFC0003FFF80001FF
        8000000300000001000000010000000100000001000000010000000100000001
        0000000100000001000000010000000100000001000000010000000100000001
        000000010000000100000001000000010000000100000001000000038000000F
        8004001F}
      ExplicitWidth = 40
      ExplicitHeight = 53
    end
    inherited pnTitle: TPanel
      Left = 51
      Width = 952
      ExplicitLeft = 51
      ExplicitWidth = 952
      inherited Label1: TLabel
        Width = 155
        Caption = 'Compromissos'
        ExplicitWidth = 155
      end
      inherited Label2: TLabel
        Width = 179
        Caption = 'Consulta de agendamentos'
        ExplicitWidth = 179
      end
    end
  end
  object ControlBar1: TControlBar [5]
    AlignWithMargins = True
    Left = 3
    Top = 103
    Width = 997
    Height = 51
    Align = alTop
    AutoSize = True
    BevelEdges = []
    BevelKind = bkNone
    DrawingStyle = dsGradient
    TabOrder = 3
    ExplicitLeft = 4
    ExplicitTop = 104
    ExplicitWidth = 995
    object ToolBar1: TToolBar
      Left = 11
      Top = 2
      Width = 729
      Height = 34
      AutoSize = True
      BorderWidth = 1
      ButtonHeight = 30
      ButtonWidth = 158
      Caption = 'ToolBar1'
      DisabledImages = Resources.medium_d
      DrawingStyle = dsGradient
      EdgeInner = esNone
      EdgeOuter = esNone
      HotImages = Resources.medium_h
      Images = Resources.medium_n
      List = True
      ShowCaptions = True
      TabOrder = 0
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Action = actOk
        AutoSize = True
      end
      object ToolButton2: TToolButton
        Left = 68
        Top = 0
        Action = actCancel
        AutoSize = True
      end
    end
  end
  inherited alDef: TActionList
    inherited actOk: TAction
      Caption = 'Novo'
    end
    inherited actCancel: TAction
      Caption = 'Concluir Compromisso'
    end
  end
end
