inherited OSMServicosSAtiv: TOSMServicosSAtiv
  Caption = 'Sele'#231#227'o de Atividade'
  ClientHeight = 406
  ClientWidth = 636
  ExplicitWidth = 642
  ExplicitHeight = 435
  PixelsPerInch = 96
  TextHeight = 15
  object Splitter1: TSplitter [0]
    Left = 247
    Top = 109
    Width = 7
    Height = 297
    Beveled = True
    ExplicitLeft = 246
    ExplicitTop = 117
    ExplicitHeight = 284
  end
  inherited bvDiv: TBevel
    Top = 104
    Width = 636
    ExplicitTop = 106
    ExplicitWidth = 636
  end
  object ToolBar1: TToolBar [2]
    Left = 0
    Top = 70
    Width = 636
    Height = 34
    AutoSize = True
    BorderWidth = 1
    ButtonHeight = 30
    ButtonWidth = 89
    Caption = 'ToolBar1'
    DisabledImages = Resources.medium_d
    DrawingStyle = dsGradient
    HotImages = Resources.medium_h
    Images = Resources.medium_n
    List = True
    ShowCaptions = True
    TabOrder = 1
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Action = actOk
      AutoSize = True
    end
    object ToolButton2: TToolButton
      Left = 93
      Top = 0
      Action = actCancel
      AutoSize = True
    end
  end
  object TreeView1: TTreeView [3]
    AlignWithMargins = True
    Left = 3
    Top = 112
    Width = 241
    Height = 291
    Align = alLeft
    BorderStyle = bsNone
    Indent = 19
    ReadOnly = True
    ShowLines = False
    TabOrder = 2
    OnChange = TreeView1Change
    OnDblClick = TreeView1DblClick
    OnDeletion = TreeView1Deletion
  end
  object Panel2: TPanel [4]
    AlignWithMargins = True
    Left = 257
    Top = 112
    Width = 376
    Height = 291
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 3
    object Memo1: TMemo
      AlignWithMargins = True
      Left = 4
      Top = 35
      Width = 368
      Height = 252
      Align = alClient
      BorderStyle = bsNone
      Lines.Strings = (
        'Memo1')
      TabOrder = 0
    end
    object Panel3: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 368
      Height = 25
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = ' Atividade'
      TabOrder = 1
    end
  end
  inherited Panel1: TPanel
    Width = 636
    ExplicitWidth = 636
    inherited Shape1: TShape
      Width = 582
      ExplicitWidth = 632
    end
    inherited Image1: TImage
      Picture.Data = {
        07544269746D6170361B0000424D361B00000000000036000000280000003000
        0000300000000100180000000000001B0000120B0000120B0000000000000000
        0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB9C1C53C759B4377
        9B6C93AA94A7B9A1B0BBB4BDC2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFAAB5BD0A52860A7FB80A7FB90A70A70B659A1C6B9A3B779C
        46799B6890AAAEBCC5A4B4BDB2BCC2FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA2B0BA0D578A0B89
        C10BBCF80AB0EE0AACE90AA0DD0A94D00A8BC50A7CB50A6DA50B679B1A6B9A4C
        86A94B7D9E6D95ADB0BEC6A6B4BEB4BDC3FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF99AAB70B699F0A71A80EB6F00AB2EE0AADEB0AADEB0AACE9
        0AACE90AA9E50AA7E40AA3E00A98D30A8AC60A85BF0A78B00A6AA10C64991C6C
        9B4E88AA4C7E9F7298B0B5C1C8A7B5BEB8C0C4FF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF90A4B30A77AE0A6F
        A610A5DC0CBBF50AB1ED0AB0ED0AACE90AACE80AA9E50AA7E40AA5E10AA3E00A
        A2DF0AA1DD0A9FDB0A9CD80A99D40A8ECA0A82BD0A7EB70A72AB0A659C0C6298
        226E9B568DAC4F80A07B9FB5BFC7CCA8B6BFBBC2C5FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF889FB00A7FB80A7BB30E87BC10C4FC0AB3F10AB1F00AB0ED
        0AADEB0AACE80AABE70AA8E40AA6E20AA2DF0AA1DD0A9FDB0A9CD80A9AD60A99
        D30A99D30A98D20A95D00A92CC0A8DC90A85BF0A78B20A77AE0A6CA20A62990D
        629527719D6093B15383A389A9BAACBAC2A6B4BDC2C5C7FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7D99AD0A84BE0A8E
        C90B6EA216C4F80AB9F70AB5F20AB3F10AB1EE0AAEEC0AACE90AABE70AA8E40A
        A6E20AA3E00AA1DD0AA0DC0A9ED90A9AD60A99D40A98D20A95D00A93CE0A91CB
        0A8EC90A8EC90A8DC70A8AC40A87C00A85BF0A7DB70A73AD0A73AC0A6BA10A62
        990E5E925D90AEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF7494AB0A8AC50A9CD80A649A17B0E20FC4FB0AB7F60AB7F5
        0AB3F10AB2F00AB0ED0AADEB0AACE80AA9E50AA7E40AA5E10AA2DF0AA0DC0A9E
        D90A9BD70A99D40A99D30A96D10A94CF0A91CB0A8FCA0A8DC70A8BC50A87C20A
        86BF0A86BF0A87C00A87C10A87C00A87C00A82BD0E6499BEC6CBFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6B90A60A92CE0AA1
        DF0A6DA3138EC017D0FC0ABBF90AB8F70AB7F50AB5F20AB2F00AB0ED0AADEB0A
        ACE80AA9E50AA7E40AA6E20AA3E00AA1DD0A9FDB0A9CD80A9AD60A99D30A96D1
        0A94CF0A92CC0A8FCA0A8DC70A8CC60A89C20A87C00A85BE0A85BE0A85BE0A85
        BE0A87C10A6CA57BA1B8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF6389A40A99D40AA3E00A7EB70D70A520CFFB0BC0FC0ABCFB
        0ABBF80AB8F60AB6F40AB3F10AB1EE0AAEEC0AACE90AABE70AA8E40AA6E20AA3
        E00AA1DD0A9FDB0A9CD80A9BD70A99D40A98D20A95D00A93CE0A91CB0A8EC90A
        8CC60A8AC40A87C10A86BF0A85BE0A85BE0A86BF0A7DB724719DCCCCCDFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF5A84A30DA5DD0CA8
        E20B8CC50A63991FB8E512C9FC0ABDFC0ABDFB0ABBF80AB8F60AB7F50AB5F20A
        B2F00AAEEC0AADEB0AACE80AA9E50AA7E40AA5E10AA2DF0AA0DC0A9ED90A9BD7
        0A99D40A98D20A95D00A94CF0A92CC0A8FCA0A8CC60A8BC50A87C10A86BF0A85
        BE0A85BE0A87C00A649BADBFC9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF5280A113B0E50FAEE50C92CA0A6BA11793C11FD4FC0ABDFC
        0ABEFC0ABEFC0ABCF90AB9F70AB7F50AB5F20AB2F00AB0ED0AADEB0AACE90AAB
        E70AA8E40AA5E10AA3E00AA1DD0A9FDB0A9CD80A9AD60A99D30A96D10A94CF0A
        92CC0A8FCA0A8DC70A8BC50A8AC40A87C00A85BE0A86BF0A76B04B86A9C8C8C9
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF497C9F18B9EE11B3
        E90D94CB0C7CB20E73A62AD4FB0BC0FC0ABEFC0ABEFC0ABEFC0ABDFB0ABBF80A
        B8F60AB6F40AB3F10AB1EE0AAEEC0AACE90AABE70AA8E40AA6E20AA5E10AA2DF
        0AA0DC0A9CD80A9BD70A99D40A98D20A95D00A93CE0A91CB0A8EC90A8CC60A8A
        C40A87C10A87C00A85BE0C6398C4CACDFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF40779C21C2F415B9ED0F99CF0E89BE0B659A29BFE515CBFC
        0ABDFC0ABEFC0ABEFC0ABEFC0ABEFC0ABCF90AB9F70AB6F40AB5F20AB2F00AB0
        ED0AADEB0AACE80AA9E50AA7E40AA5E10AA2DF0AA0DC0A9ED90A9BD70A9AD60A
        99D30A96D10A94CF0A92CC0A8FCA0A8DC70A8BC50A89C20A89C20A6DA67CA4BA
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF39759C2ACAF717BF
        F2119CD1108DC10B6DA21D98C226D9FC0ABDFC0ABEFC0ABEFC0ABEFC0ABEFC0A
        BEFC0ABDF90AB9F70AB7F50AB5F20AB3F10AB1EE0AAEEC0AACE80AABE70AA8E4
        0AA6E20AA3E00AA1DD0A9FDB0A9CD80A9AD60A99D30A96D10A94CF0A93CE0A91
        CB0A8EC90A8BC50A8AC40A82BC1D6C9BC6C8CAFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFC3C5C631749D32CFF819C4F614A2D4118DC00F7EB21074A636DBFB
        0BC0FC0ABEFC0ABEFC0ABEFC0ABEFC0ABEFC0ABEFC0ABDFB0ABBF80AB8F60AB6
        F40AB3F10AB1EE0AAEEC0AACE90AACE80AA9E50AA7E40AA3E00AA2DF0AA0DC0A
        9ED90A9BD70A99D40A98D20A95D00A93CE0A91CB0A8EC90A8CC60A8DC70A679F
        A7BBC8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC1C3C52876A03BD2FB1DC9
        F816A8D8138FC2128BBE0C679A34C5E818CEFC0ABDFC0ABEFC0ABEFC0ABEFC0A
        BEFC0ABEFC0ABEFC0ABEFC0ABCF90AB9F70AB7F50AB5F20AB2F00AB0ED0AADEB
        0AACE80AA9E50AA7E40AA5E10AA2DF0AA1DD0A9FDB0A9CD80A99D40A99D30A96
        D10A94CF0A92CC0A8FCA0A8EC90A7CB74180A6C7C8C9FF00FFFF00FFFF00FFFF
        00FFFF00FFBFC2C42278A442D7FC20CCFB18ADDF1594C5148EC00D6FA2259BC4
        2EDFFC0ABDFC0ABEFC0ABEFC0ABEFC0ABEFC0ABEFC0ABEFC0ABEFC0ABEFC0ABC
        F90ABBF80AB8F60AB6F40AB2F00AB1EE0AAEEC0AACE90AABE70AA8E40AA6E20A
        A3E00AA1DD0A9FDB0A9CD80A9AD60A99D40A98D20A95D00A92CC0A91CB0A8ECA
        0B649ABDC7CCFF00FFFF00FFFF00FFFF00FFFF00FFBBC0C22079A748DBFC24D1
        FC1CB5E41798C7168EBE1382B21377A744E1FB0BC0FC0ABDFC0ABEFC0ABEFC0A
        BEFC0ABEFC0ABEFC0ABEFC0ABEFC0ABEFC0ABDFB0ABBF80AB8F60AB6F40AB3F1
        0AB2F00AB0ED0AADEB0AABE70AA9E50AA7E40AA5E10AA2DF0AA0DC0A9ED90A9B
        D70A99D40A98D20A95D00A93CE0A94CF0A74B0749EB6FF00FFFF00FFFF00FFFF
        00FFFF00FFB3BAC02380AD4FDFFC28D3FC20BCE8199ACA178DBE178EBE0D689A
        40CCE91BD0FC0ABCFC0ABEFC0ABEFC0ABEFC0ABEFC0ABEFC0ABEFC0ABEFC0ABE
        FC0ABEFC0ABEFC0ABCF90AB8F60AB7F50AB5F20AB2F00AB0ED0AADEB0AACE80A
        A9E50AA8E40AA6E20AA3E00AA0DC0A9FDB0A9CD80A9AD60A99D30A95D00A95D0
        0A8DC9186C9BC1C6C9FF00FFFF00FFFF00FFFF00FFAAB4BC2786B156E2FC2AD6
        FC25C1EC1CA1CE188FBE1993C00E6FA12A9FC542E9FC0BBFFC0ABDFC0ABDFC0A
        BCFC0ABBFC0ABBFC0ABBFC0ABBFC0ABCFC0ABCFC0ABCFC0ABEFC0ABDFB0ABBF8
        0AB8F60AB6F40AB3F10AB0ED0AAEEC0AACE90AABE70AA8E40AA6E20AA3E00AA1
        DD0AA0DC0A9ED90A9BD70A99D30A98D20A99D30A6EA79BB4C3FF00FFFF00FFFF
        00FFFF00FFA2AFB92C8DB65CE7FC2CD8FC2AC9F020A7D21A91BE1A92BF1786B5
        0D6C9F45D4EE4FECFC46E8FC4BE9FC46E5FC4AE7FC46E4FC40E2FC40E1FC38DD
        FC39DCFC1FCEFC0ABCFC0ABEFC0ABDFB0ABBF80AB9F70AB7F50AB5F20AB1EE0A
        B0ED0AADEB0AACE80AA9E50AA6E20AA5E10AA2DF0AA0DC0A9ED90A9BD70A99D4
        0A99D40A87C23A7EA5C9CACAFF00FFFF00FFFF00FF98A8B53292BB62EBFC30D9
        FC30D0F525ADD71C93BF1B8FBD1C94BF1477A70C689C1883B01F87B12589B128
        91B82D96BC3095BB34A1C53CABCC3BA6CA46B1D176E4F447DFFC0ABCFC0ABDFC
        0ABEFC0ABCF90AB9F70AB7F50AB5F20AB2F00AB1EE0AAEEC0AACE90AA9E50AA8
        E40AA6E20AA3E00AA1DD0A9ED90A9CD80A9AD60A99D60B6AA1B5C1C8FF00FFFF
        00FFFF00FF90A3B23B98BE68EDFC32DBFC35D7F92CBEE425A6D0229FC9239EC9
        24A0CA2198C11B87B31883B01882AE1882AE167CAB1478A71478A71476A61474
        A313709F1471A17BE1F051E2FC0ABCFC0ABEFC0ABEFC0ABDFB0ABBF80AB7F50A
        B6F40AB3F10AB1EE0AAEEC0AACE90AABE70AA8E40AA7E40AA5E10AA2DF0A9FDB
        0A9ED90A9FDB0A7DB96B9AB3FF00FFFF00FFFF00FF889DAF449FC26CEEFC35DB
        FC3CDDFC3AD6F635C9EC33C4E734C1E434C0E434C0E435BFE235BFE135BEE036
        BDDF35B9DB30AED22AA0C62899C0289AC12A9EC2187DA8126FA08BE7F252E1FC
        0ABBFC0ABEFC0ABEFC0ABEFC0ABCF90AB8F60AB7F50AB5F20AB2F00AB0ED0AAC
        E90AACE80AA9E50AA7E40AA5E10AA2DF0AA0DC0A9FDB0A99D4156D9FC4C9CCFF
        00FFFF00FF7F98AD4FA9C970F0FC39DDFC3FE0FC41E0FC43E2FC44E2FC45E2FC
        47E1FC48E2FC48E2FB49E2FB4AE1F94BE2F94CE1F843CFE934B1D2299AC02898
        BE2899BE2B9CC1187AA71672A3A0ECF54FDFFC0ABBFC0ABCFC0ABDFC0ABDFC0A
        BBF90AB8F70AB7F60AB5F40AB2F10AB0ED0AADEC0AACE90AA9E70AA8E40AA5E1
        0AA3E00AA1DD0AA2E00A76B08DAABCFF00FFFF00FF7594AA5AB2D171F0FC3CE0
        FC43E1FC45E2FC47E2FC48E4FC49E4FC4BE4FC4DE4FC4EE5FC4FE7FC50E7FC52
        E8FC54E9FC54E7FB45CAE433ABCC2A99BE2A99BE2B99BE2E9EC11778A31A77A6
        ACF0F75FE2FC18C9FC15C7FC13C6FC0FC4FC0FC2FC0FBFF90DBCF70BB8F50BB6
        F20BB3F00BB0ED0AACEB0AA9E70AA7E40AA3E20A9FDF0A9EDF0A8FCE377CA4FF
        00FFFF00FF6D8CAB68BED772F0FC42E1FC48E4FC49E4FC4BE4FC4CE4FC4EE5FC
        4FE7FC50E7FC52E8FC53E8FC55E9FC56E9FC58EBFC5BECFC56E4F643C2DD31A5
        C62B99BD2B99BE2D9ABE309FC11778A31C76A587C9DDA9E0EBA3DCEBA2E0EE9B
        E4F59EE4F5ABECF9A6E9F999E7FB9AE8FCA6ECFCA8ECFC99E7FC91E4FC9AE8FC
        99E5FB87DFF792E2F854C9ED0F679BFF00FFFF00FF6689A876C9DD72F0FC47E4
        FC4DE5FC4EE5FC4FE7FC50E7FC52E7FC54E8FC55E9FC57E9FC58EBFC59EBFC5B
        ECFC5DECFC5FEDFC61EEFC57DDF041BBD731A0C12D99BD2E9ABD2F9ABE329EBF
        2184AC156F9C186F9A1769961C719C257AA52378A32F85AD2E81AB3084AD2E84
        AD3F8BB14B94B84892B74994B95396B85D9EBE5AA1C16CA6C2468FB5518CADFF
        00FFFF00FF5C87A384D2E472F0FC4CE5FC50E7FC52E8FC54E8FC55E8FC57E9FC
        59EBFC5AEBFC5CECFC5DECFC5EEDFC60EEFC62EEFC62EEFC64F0FC65EEFB56D8
        EB45BCD43BACCA3BABC73BA9C73AA8C53CABC73BA8C539A5C438A3C137A1C035
        9FBE359EBC3299BB3199B83299B8288AAD3E769AAABAC2A3B6C19FB4BF90AABA
        8EAABA83A2B57C9CB18AA6B8C1C6C8FF00FFFF00FF5583A191DBEB72F0FC50E8
        FC55E9FC57EBFC59EBFC5AEBFC5CECFC5DEDFC5FEDFC61EEFC62EEFC63F0FC64
        F0FC67F0FC69F1FC6AF2FC6CF2FC6BF1FB61E1F05AD6E758D2E457D0E257CEE1
        56CCDF55CADD55C7DC54C7D954C5D953C4D753C2D652C0D452BFD353C0D346AE
        C7507E9EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF4E7FA0A0E2EE70F1FC56EBFC5BECFC5CECFC5EEDFC5FEDFC61EDFC
        62EEFC63F0FC65F0FC67F1FC68F1FC6AF2FC6CF2FC6EF2FC6FF4FC71F5FC73F6
        FC74F7FC74F7FC76F6FC77F6FB78F6FB78F6F97AF6F97BF5F87BF5F77BF4F77B
        F1F67AF0F478EDF276EBF178EDF25BCADB5582A0FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF457A9DADE8F470F1FC5BED
        FC60EDFC61EEFC62EEFC63F0FC65F0FC68F0FC69F1FC6BF2FC6CF2FC6DF4FC6F
        F5FC71F5FC72F5FC74F6FC74F7FC77F7FC79F8FC7AF8FC7CF9FC7EF9FC81FBFC
        83FBFC84FCFC85FCFC86FCFC86FCFC87FCFC87FCFC87FCFC87FCFC8AFCFC62D6
        E25983A2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF3F789CB9EDF56FF2FC61EEFC64F0FC65F0FC67F1FC69F2FC6BF2FC
        6CF2FC6EF4FC70F5FC71F5FC73F6FC74F6FC76F7FC77F7FC78F8FC78F8FC79F9
        FC77F9FC78FBFC7AFBFC7CFCFC7DFCFC7EFCFC7FFCFC7FFCFC7FFCFC81FCFC81
        FCFC82FCFC82FCFC7EFCFC98FCFC69CCDD618AA2FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC4C5C737789DC7F2F86EF2FC65F1
        FC6AF2FC6BF2FC6DF4FC6EF4FC70F4FC72F5FC73F6FC74F6FC76F7FC77F7FC79
        F8FC7BF8FC79FBFCAEFCFCD7FCFCDCFCFCD4FCFCD6FCFCD7FCFCCCFCFCCBFCFC
        C2FCFCBDFCFCBBFCFCB2FCFCADFCFCACFCFCA2FCFC9FFCFCA5FCFCF4FCFC61A5
        C1859DAEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF36759BC6EDF48BF8FC68F2FC6FF4FC70F5FC71F5FC73F6FC74F6FC
        77F6FC78F7FC7AF8FC7BF8FC7CF9FC7EFBFC83FCFC7AF4F74395B65792B35E99
        B75F9AB86299B86B9EBD72A9C483B5CB95C4D793C4D7ABD3E1ADD7E4B2DBE5C4
        E5EDC1E5EDCAE8EECCE5ED6CA9C446799BC1C3C6FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8099AC61A6C2D7FCFC70F5
        FC73F6FC74F6FC76F7FC78F7FC7AF8FC7BF8FC7DF9FC7EFBFC81FBFC83FCFC84
        FCFC8EFCFC40A8C26C89A3B2B9BFA3AFB99FADB894A5B490A2B2869DAF7F99AD
        7695AB6F90A86C90A75F87A45E87A45E88A34F7F9E4D7E9F5984A3839BAEC4C6
        C6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF38739BC5E5EDA7FBFC70F7FC77F7FC79F8FC7AF9FC7CFBFC
        7EFBFC81FCFC82FCFC83FCFC83FCFC8BFCFC6EE1E9347098C3C5C6FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF95A6B44690B2F1FC
        FC9CFCFC99FCFC9AFCFC9AFCFC99FCFC94FCFC93FCFC93FCFC92FCFC91FCFC8B
        FCFC2786A99BAAB6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF4C7D9C8EC6D7CCEBF1C1E7EEC9E9F0D4EEF4D2EEF4
        CFEEF4CFEEF4D4EEF4DBEEF2D8F1F555BCD0597EA2FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAFB7C04C7B
        9D4B7E9F4C7D9F4C7E9F4E7FA04C7E9F3E759B3C749A3D749A3E749A3E779C46
        7A9BB6BCC2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF}
      ExplicitHeight = 64
    end
    inherited pnTitle: TPanel
      Width = 582
      ExplicitLeft = 54
      ExplicitTop = 0
      ExplicitWidth = 582
      ExplicitHeight = 70
      inherited Label1: TLabel
        Width = 258
        Caption = 'Atividade para Ordem de Servi'#231'os'
        ExplicitWidth = 258
      end
      inherited Label2: TLabel
        Width = 240
        Caption = 'Sele'#231#227'o de atividade para ordem de servi'#231'o'
        ExplicitWidth = 240
      end
    end
  end
  inherited alDef: TActionList
    inherited actOk: TAction
      Caption = 'Selecionar'
    end
  end
  object qAtiv: TZReadOnlyQuery
    Params = <>
    Left = 312
    Top = 24
  end
end
