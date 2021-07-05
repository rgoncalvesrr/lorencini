inherited RecebimentoLotePortador: TRecebimentoLotePortador
  ActiveControl = DBComboBox1
  Caption = 'Registro da Entrada - Portadores'
  ClientHeight = 612
  ClientWidth = 918
  ExplicitWidth = 934
  ExplicitHeight = 651
  PixelsPerInch = 96
  TextHeight = 15
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 329
    Width = 918
    Height = 6
    Cursor = crVSplit
    Align = alTop
    ExplicitTop = 253
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 335
    Width = 918
    Height = 277
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object PageControl1: TPageControl
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 912
      Height = 271
      ActivePage = TabSheet1
      Align = alClient
      Images = Resources.medium_n
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Fila de Lotes'
        ImageIndex = -1
        object DBGrid1: TDBGrid
          Tag = 1
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 898
          Height = 228
          Align = alClient
          BorderStyle = bsNone
          Ctl3D = False
          DataSource = RecebimentoLote.dsLotes
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
      end
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 0
    Width = 918
    Height = 329
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object PageControl2: TPageControl
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 912
      Height = 323
      ActivePage = TabSheet2
      Align = alClient
      Images = Resources.medium_n
      TabOrder = 0
      object TabSheet2: TTabSheet
        Caption = 'Portador'
        ImageIndex = -1
        object Label9: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 194
          Width = 898
          Height = 15
          Align = alTop
          Caption = 'Observa'#231#245'es'
          FocusControl = DBMemo1
          ExplicitWidth = 67
        end
        object Panel3: TPanel
          Left = 0
          Top = 41
          Width = 904
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 81
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 75
              Height = 15
              Align = alTop
              Caption = 'Cliente'
              ExplicitWidth = 37
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 75
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'codigo'
              DataSource = RecebimentoLote.dsLotes
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel5: TPanel
            Left = 81
            Top = 0
            Width = 265
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 259
              Height = 15
              Align = alTop
              Caption = 'Nome'
              ExplicitWidth = 33
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 259
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'nome_chave'
              DataSource = RecebimentoLote.dsLotes
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel6: TPanel
            Left = 346
            Top = 0
            Width = 93
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 87
              Height = 15
              Align = alTop
              Caption = 'Frascos'
              ExplicitWidth = 39
            end
            object DBEdit3: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 87
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'frascos'
              DataSource = RecebimentoLote.dsLotes
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel7: TPanel
            Left = 439
            Top = 0
            Width = 93
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label4: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 87
              Height = 15
              Align = alTop
              Caption = 'Seringas'
              ExplicitWidth = 44
            end
            object DBEdit4: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 87
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'seringas'
              DataSource = RecebimentoLote.dsLotes
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel8: TPanel
            Left = 532
            Top = 0
            Width = 93
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            Color = clGreen
            ParentBackground = False
            TabOrder = 4
            object Label5: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 87
              Height = 15
              Align = alTop
              Caption = 'Conformes'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Pitch = fpVariable
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 59
            end
            object DBEdit5: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 87
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'conformes'
              DataSource = RecebimentoLote.dsLotes
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel9: TPanel
            Left = 625
            Top = 0
            Width = 93
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            Color = clYellow
            ParentBackground = False
            TabOrder = 5
            object Label6: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 87
              Height = 15
              Align = alTop
              Caption = 'N'#227'o Conformes'
              ExplicitWidth = 84
            end
            object DBEdit6: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 87
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'naoconformes'
              DataSource = RecebimentoLote.dsLotes
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel10: TPanel
            Left = 718
            Top = 0
            Width = 93
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            Color = clGray
            ParentBackground = False
            TabOrder = 6
            object Label7: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 87
              Height = 15
              Align = alTop
              Caption = 'Vazias'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Pitch = fpVariable
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 31
            end
            object DBEdit7: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 87
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'naoconformes'
              DataSource = RecebimentoLote.dsLotes
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel11: TPanel
            Left = 811
            Top = 0
            Width = 93
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            Color = clRed
            ParentBackground = False
            TabOrder = 7
            object Label8: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 87
              Height = 15
              Align = alTop
              Caption = 'Quebradas'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Pitch = fpVariable
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 57
            end
            object DBEdit8: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 87
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'naoconformes'
              DataSource = RecebimentoLote.dsLotes
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
        object Panel12: TPanel
          Left = 0
          Top = 91
          Width = 904
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Panel13: TPanel
            Left = 0
            Top = 0
            Width = 145
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label11: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 139
              Height = 15
              Align = alTop
              Caption = 'Tipo de Portador'
              FocusControl = DBEdit6
              ExplicitWidth = 88
            end
            object DBComboBox1: TDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 139
              Height = 23
              Style = csDropDownList
              Align = alClient
              DataField = 'tipo'
              DataSource = dsPort
              ItemHeight = 15
              Items.Strings = (
                'Transportadora'
                'Correios'
                'Lorencini'
                'Cliente'
                'Outros')
              TabOrder = 0
              OnChange = DBComboBox1Change
            end
          end
          object Panel14: TPanel
            Left = 145
            Top = 0
            Width = 198
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label12: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 192
              Height = 15
              Align = alTop
              Caption = 'Outros'
              FocusControl = DBEdit11
              ExplicitWidth = 36
            end
            object DBEdit11: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 192
              Height = 23
              Align = alClient
              DataField = 'tipo_outros'
              DataSource = dsPort
              Enabled = False
              TabOrder = 0
            end
          end
          object Panel15: TPanel
            Left = 343
            Top = 0
            Width = 130
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object Label13: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 124
              Height = 15
              Align = alTop
              Caption = 'C.N.P.J.'
              FocusControl = DBEdit12
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 41
            end
            object DBEdit12: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 124
              Height = 23
              Align = alClient
              DataField = 'cnpj'
              DataSource = dsPort
              Enabled = False
              TabOrder = 0
              OnExit = DBEdit12Exit
            end
          end
          object Panel16: TPanel
            Left = 473
            Top = 0
            Width = 127
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 3
            object Label19: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 121
              Height = 15
              Align = alTop
              Caption = 'C.P.F.'
              FocusControl = DBEdit9
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 28
            end
            object DBEdit9: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 121
              Height = 23
              Align = alClient
              DataField = 'cpf'
              DataSource = dsPort
              Enabled = False
              TabOrder = 0
              OnExit = DBEdit12Exit
            end
          end
          object Panel17: TPanel
            Left = 600
            Top = 0
            Width = 304
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 4
            object Label14: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 298
              Height = 15
              Align = alTop
              Caption = 'Empresa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 51
            end
            object DBComboBox2: TDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 298
              Height = 23
              Align = alClient
              CharCase = ecUpperCase
              DataField = 'empresa'
              DataSource = dsPort
              Enabled = False
              ItemHeight = 15
              TabOrder = 0
              OnExit = DBComboBox2Exit
            end
          end
        end
        object Panel18: TPanel
          Left = 0
          Top = 141
          Width = 904
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object Panel22: TPanel
            Left = 0
            Top = 0
            Width = 127
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label16: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 121
              Height = 15
              Align = alTop
              Caption = 'C.P.F.'
              FocusControl = DBEdit14
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 28
            end
            object DBEdit14: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 121
              Height = 23
              Align = alClient
              DataField = 'cpf'
              DataSource = dsPort
              TabOrder = 0
              OnExit = DBEdit14Exit
            end
          end
          object Panel23: TPanel
            Left = 127
            Top = 0
            Width = 777
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label17: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 771
              Height = 15
              Align = alTop
              Caption = 'Protador'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 50
            end
            object DBComboBox4: TDBComboBox
              Tag = 1
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 771
              Height = 23
              Align = alClient
              CharCase = ecUpperCase
              DataField = 'portador'
              DataSource = dsPort
              ItemHeight = 15
              TabOrder = 0
              OnExit = DBComboBox2Exit
            end
          end
        end
        object DBMemo1: TDBMemo
          AlignWithMargins = True
          Left = 3
          Top = 215
          Width = 898
          Height = 57
          Align = alTop
          DataField = 'obs'
          DataSource = dsPort
          TabOrder = 3
        end
        object v: TPanel
          Left = 0
          Top = 0
          Width = 904
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 4
          object BitBtn1: TBitBtn
            AlignWithMargins = True
            Left = 784
            Top = 3
            Width = 117
            Height = 35
            Action = actSave
            Align = alRight
            Caption = 'Registrar Lote'
            TabOrder = 0
            Glyph.Data = {
              36090000424D3609000000000000360000002800000018000000180000000100
              2000000000000009000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF000A4F0A000A4D0A000A4B0A006B736B0072747200727472007274
              72006F736F006F736F006F736F006D706D006D706D006D706D006C6E6C00656A
              65000A310A000A2F0A000A2C0A000A2A0A000A290A00FF00FF00FF00FF00FF00
              FF000A510A00229A3B002198380020963500D6DBD700D6D7D700C9CECA00C5C8
              C500CAC9CA00C5C5C500C0C0C000BDBDBD00B7B7B700B3B3B300ABADAB00A0A5
              A0000F7414000E7312000D7111000C6F0E000A2A0A00FF00FF00FF00FF000A55
              0A0026A14000249E3D00229A3B0021983800F1F1F100EDECED001C8F2E001B8C
              2D008FBC9500D5D5D500D1D0D100CCCBCB00C5C5C500C0C0C000B9BABA00ABAD
              AB00117617000F7414000E7312000D7111000A2C0A00FF00FF00FF00FF000A57
              0A0027A3430026A14000249E3D00239B3C00F0EFF000EFEFEF001E9332001C8F
              2E008FBC9500D7D5D500D1D0D100CBCCCB00C7C7C600C2C1C200BABCBB00ACB2
              AC0012791900117617000F7414000E7312000A2C0A00FF00FF00FF00FF000A57
              0A0029A7470027A4430025A14000249E3D00F2F2F100F1F1F100209736001E93
              320091BF9900DAD9D900D3D4D400CFCFCF00C9C9CA00C5C5C500BDBDBD00ACB2
              AC00137B1B001279190011761700107414000A2F0A00FF00FF00FF00FF000A59
              0A002AAB490029A7470027A4430026A14000F5F4F500F5F4F500229939002096
              350093C29B00DCDDDC00D6D7D700D1D2D100CDCDCD00C8C8C800C0C0C000B0B6
              B000147D1D00137B1B0012791900117617000A310A00FF00FF00FF00FF000A5B
              0A002BAD4D002AAB490029A7470027A44300F5F6F600F5F4F500239B3C002299
              390099C6A100DFDFDF00DAD9D900D5D5D500D1D0D100CCCBCB00C3C3C300B1B8
              B10016812000147E1D00137C1B00127919000A330A00FF00FF00FF00FF000A5C
              0A002CAF4F002BAD4D002AAB4A0029A74700BEE1C500F5F4F500EFEFEF00EBEB
              EB00E5E5E500E5E5E500DCDDDC00D8D7D700D2D3D200CFCFCF00C7C7C60090AF
              94001783220015812000147E1D00137B1B000A370A00FF00FF00FF00FF000A5E
              0A002EB252002CAF4F002BAD4D002AAB4A0029A7470027A5440026A24100259F
              3E00239B3C0022993900209736001F9433001D9130001C8F2E001A8B2A001988
              2900188625001783220015812000147E1E000A370A00FF00FF00FF00FF000A61
              0A002FB555002EB252002CAF4F002BAD4D002AAB4A0029A8470027A5440026A2
              4200259F3E00239C3C0022993A00209736001F9433001D9130001C8E2D001A8B
              2A00198829001886250017842300168120000A390A00FF00FF00FF00FF000A61
              0A0031B757002FB555002EB252002CAF4F002BAD4D002AAB4A002AA7480028A5
              450026A24100259F3E00239C3C0022993A00209736001F9433001E9130001C8E
              2D001A8B2A001988290018862500178423000A3B0A00FF00FF00FF00FF000A62
              0A0032BB5A0031B85700A9DBAE00E3EDD800FCF3E500FCF2E200FCF1DF00FBEF
              DC00FCEDD800FBEDD400FBEAD100FBE9CF00FBE8CB00FBE7C800FBE5C500FBE4
              C200DFD9AD00A0BF840019882900178726000A3D0A00FF00FF00FF00FF000A62
              0A0033BD5C0032BB5A00E3EDD800FCF6EA00FCF4E700FCF4E400FBF1E100FBF0
              DF00FCEFDB00FCEDD600FCECD300FBEAD100FBE9CF00FBE7CA00FBE7C700FCE5
              C400FBE4C200DFD9AD001A8B2A00198829000A3D0A00FF00FF00FF00FF000A62
              0A0035BF5F0033BD5C00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
              CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
              CC00CCCCCC00CCCCCC001C8F2E001B8C2B000A400A00FF00FF00FF00FF000A65
              0A0035C1610035BF5F00FCF7F200FCF7EF00FCF7ED00FCF5E800FCF3E500FCF2
              E200FCF1DF00FCEFDB00FBEED700FCECD400FCEBD100FBE9CF00FBE7CC00FBE7
              C800FBE5C500FBE4C2001D9231001C8F2E000A420A00FF00FF00FF00FF000A67
              0A0037C3620035C16100FCF8F400FCF7F200FCF7ED00FCF6EA00FCF4E700FCF3
              E500FBF2E100FCF0DD00FCEED900FBEDD700FBEBD300FBEAD100FBE9CD00FBE7
              CA00FBE7C700FCE5C4001F9534001E9231000A450A00FF00FF00FF00FF000A67
              0A0037C5640037C36200CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
              CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
              CC00CCCCCC00CCCCCC00219838001F9534000A450A00FF00FF00FF00FF000A69
              0A0039C7660037C56400FCFAF700FCF8F400FCF7F200FCF7EF00FCF6EA00FBF4
              E800FBF3E500FCF2E200FCF1DF00FCEFDB00FCEDD800FCECD400FBEAD100FBE9
              CF00FBE8CB00FBE7C700229A3B00219837000A470A00FF00FF00FF00FF000A69
              0A003AC8670039C76600FCFAF800FCF9F600FCF8F300FBF7F100FCF7EF00FCF6
              EA00FBF4E600FBF3E500FBF2E100FCF0DD00FCEED900FCEDD600FBECD300FBEA
              D100FBE9CD00FBE7CA00249D3C00229A3B000A490A00FF00FF00FF00FF000A6A
              0A003ACA690039C96800847BEF00847BEF007876EF007876EF006C71F400646C
              F5005C67F3005462F4004C5EF5004259F6003A54F700314FF7002B4EFA00234A
              FB001C44FA001640FB0025A14000249E3D000A4B0A00FF00FF00FF00FF000A6A
              0A003BCB6B003ACA69008B83F4008B83F400827EF5007878F6007878F6006C71
              F400646CF5005968F9004F62FA00465EFB003D59FC003454FC002B4EFA00234A
              FB001D48FC001745FC0027A3430025A03F000A4D0A00FF00FF00FF00FF000A6A
              0A000A6A0A000A6A0A00302DB4002E2BB4002C2BB4002A2AB4002829B5002628
              B5002327B5002025B5001D24B5001B22B6001820B600171FB600141EB700111C
              B700101BB7000E1AB7000A510A000A4F0A000A4F0A00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          end
          object BitBtn2: TBitBtn
            AlignWithMargins = True
            Left = 688
            Top = 3
            Width = 90
            Height = 35
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
          end
          object BitBtn3: TBitBtn
            AlignWithMargins = True
            Left = 592
            Top = 3
            Width = 90
            Height = 35
            Action = actClean
            Align = alRight
            Caption = 'Limpar'
            TabOrder = 2
            Glyph.Data = {
              36090000424D3609000000000000360000002800000018000000180000000100
              2000000000000009000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00C5C4C400B3A8A800A38F8F008F7272007E5451006B3B
              3B0075464500987C7A00C5C4C400FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C0BCBC009F8B
              8B008F6E6C007D514E0070403F00885A4E00A1725600BF8B5B00D3A67200EDC0
              8100E3B4770095634A008A666200FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00855C5700AC80
              6500D3A67200E4BF8F00F2CF9B00F5D4A500F7D8AB00F7D8AB00F9DBAF00F9DD
              B000F4D19B00DFA25100855442009A818000FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008D625600F7DF
              B900F9E2BF00FAE4C100FCE5C200FCE5C200FCE5C200FCE4BF00FCE4BF00FCE3
              BB00F9DBAF00E3A95900D293440076464100AFA3A300FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007D4F4B00F7DF
              B900FCE9CA00FCE8C800FCE7C500FCE6C300FCE5C000FCE4BF00FCE4BC00FCE3
              BB00FADFB100E8B46D00DD9B4400C0823F0074464200BEB8B800FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0080565000EBCA
              9E00FCE8C800FCE7C700FCE6C300FCE5C200FCE4BF00FCE4BF00FCE3BB00FCE2
              B900FBDFB200EDC08100DD9C4600DB983F00A76C3E0081585400C5C4C400FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008E6B6700D4AA
              8200FCE8C800FCE7C500FCE6C300FCE5C000FCE4BF00FCE4BC00FCE3BB00FCE2
              B700FCE0B400F7D8AB00DE9E4A00DA963C00DA933B008C573F0093767300FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009F898900B486
              6300FCE7C700FCE6C300FCE5C200FCE4BF00FCE4BF00FCE3BB00FCE2B900FCE1
              B600FCE4BF00FAE4C100DFA25100DA933B00D9913800D18A35007A494000A897
              9700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AFA3A3009367
              5500FBE5C300FCE6C300FCE9CA00FCEBCF00FCEDD600FCF0DD00FCF4E500FCF5
              EA00FCF5EA00FCF4E900F3D6B300DD9A4A00D88F3500D78D3300C37C32007343
              4000B9B0B000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C5C3C3007D50
              4D00F0DABA00FCF9F300FCF8F500FCF8F500FCF9F300FCF7F100FCF4E900FCF1
              E600FCF1E400FCEEE100FBECDB00EBC08D00D9913800D78B3000D68A2F00AD6B
              32007B4F4B00C4C1C100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00977B
              7800B9988700FCFBFA00FCF9F700FCF7F400FCF7F100FCF5ED00FCF3E900FCF1
              E600FCEFE200FCEDDE00FCEBDB00FAE4CE00E8B67B00D68A2F00D5872B00D485
              2900935938008B686500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C5C3
              C3007D524E00CFAF9400FCF8F500FCF7F200FCF5EE00FCF4E900FCF2E700FCF1
              E400FCEEE100FCECDC00FCEAD800FCE8D500F7DCBE00E4AB6800D4852A00D483
              2700D07E25007D4A3D00A18B8A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00BEB8B800784A4800E2C7AC00FCF6EF00FCF5ED00FCF2E700FCF1E400FCEF
              E200FCEDDE00FCEBDB00FCE9D600FCE7D200FCE5D000F5CFA600DE9A4F00D381
              2400D27F2200C474230073433F00B3A8A800FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00B6ADAD0077494500EFD9C200FCF3E900FCF1E600FCEFE200FCEE
              DF00FCECDC00FCEAD800FCE8D500FCE6D100FCE4CD00FCE3CA00EEBF8D00D78A
              3500D17D1F00D17B1D00B366240076474400C4C1C100FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00AB9C9C0081544D00F6E3CE00FCF1E400FCEEE100FCEC
              DC00FCEAD800FCE9D600FCE7D200FCE5D000FCE4CB00FCE2C700FBDFC200EAB1
              7500D37F2400D1781A00D07617008E5333009A817F00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF009E8685008D605500FAEAD900FCEDDE00FCEB
              DB00FCE9D600FCE8D300FCE6D100FCE4CD00FCE3CA00FCE1C500FCDFC200FAD8
              B600E5A66300D0771900CF741600BC681A0077494500FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF0091737000A3766000FCEBDB00FCEA
              D800FCE8D500FCE6D100FCE5CE00FCE4CB00FCE2C700FCE0C300FCDEBF00FCDC
              BD00F5CFA600E29A5200CF721200CF72120074433D00BDB7B700FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00835D5900B88B6E00FCE9
              D600FCE7D200FCE5D000FCE4CD00FCE3C800FCE1C500FCDFC100FCDDBF00FCDB
              BA00FCD9B700F3C19100DA8B3A00CD6E0E008B4F3500A7969600FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C3C0C0007D504D00D4AA
              8200FCE6D100FCE4CD00FCE3CA00FCE2C700FCDFC200FCDEBF00FCDCBB00FCDA
              B800FCD8B400FCD6B100EAB17500D2792000A055200092737000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BEB8B8007647
              4400E8BC9400FCE4CB00FCE2C700FCE0C300FCDFC100FCDCBD00FCDBBA00FCD9
              B700FCD7B200FCD5AE00FBD2AA00E5A66300B9651B007E524D00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B5AA
              AA007A4A4500EEC8A300FCE1C500FCDFC100FCDDBF00FCDCBB00FCDAB800FCD8
              B400FCD6B100FCD4AC00FCD3AA00FACC9E00E29A520072413E00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00AB9C9C00804F4800F7D2B000FCDEBF00FCDCBB00FCDAB800FCD8B400FCD7
              B200FCD5AE00FCD3AA00FCD1A500FCD1A500F7C28F00AA796300FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF009C838200915F4E00F7D2B000F7D1AA00E8BC9400E0AC7E00D096
              6400BC815800AC735100996550008B594B007949440088625D00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF009F89890082544E00754542007E524D008A635D009173
              70009F898900A38F8F00B5AAAA00B6ADAD00FF00FF00FF00FF00}
          end
          object BitBtn4: TBitBtn
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 90
            Height = 35
            Action = actNew
            Align = alLeft
            Caption = 'Pr'#243'ximo'
            TabOrder = 3
            Glyph.Data = {
              36090000424D3609000000000000360000002800000018000000180000000100
              2000000000000009000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF000A6B0A000A6B0A000A6B0A000A6B0A000A6B0A00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF000A6B0A003BCC6B0031B85A0031B85A000A6B0A007C3C
              0A009B490A00AA4E0A00A94C0A00A74A0A00A6480A00A4460A00A3450A00A243
              0A00A0410A009F400A009E3E0A009D3D0A009C3C0A00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF000A6B0A0078F3A40042D2720031B85A000A6B0A00ADA6
              9E00D1C6BD00E4D7CA00E3D5C800EADACB00F6E4D200FCE8D300FCE5D100FCE4
              CE00FBE3CB00FCE2C700FBE0C400FBDEC1009D3E0A00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF000A6B0A0078F3A40044D5740031B85A000A6B0A00A19A
              9500ADA69E00B4ACA200B4AAA000C6BBAE00EADACB00FCEAD600FCE7D300FBE5
              D100FCE4CE00FCE4CA00FBE2C600FCE0C3009F3F0A00FF00FF000A6B0A000A6B
              0A000A6B0A000A6B0A000A6B0A0078F3A40046D7760031B85A000A6B0A000A6B
              0A000A6B0A000A6B0A000A6B0A00B4AAA000E3D6C700FBEBDA00FCE9D700FCE7
              D300FCE5D100FBE4CD00FBE4CB00FCE2C600A0410A00FF00FF000A6B0A0049DA
              790043D16E0041CD6B0041CE6D0049DA790049DA790031B85A0034BC5E0033BA
              5C0031B85A0031B85A000A6B0A00B3ABA200E4D7CA00FCECDC00FBEADA00FCE9
              D600FCE7D300FCE5D100FCE4CD00FBE3CA00A1430A00FF00FF000A6B0A0078F3
              A40056E6860053E4850051E383004FE180004EDF7E004ADB7A0047D8780045D6
              750043D4730031B85A000A6B0A00B3ACA400E4D8CD00FCEEE000FCECDC00FCEA
              DA00FCE9D600FCE7D300FCE5D100FBE4CD00A3450A00FF00FF000A6B0A0078F3
              A40078F3A40078F3A40078F3A40078F3A4004FE281004ADB7A0076EFA20076EF
              A20076EFA20049DA79000A6B0A00C6BEB700EAE0D500FCF0E200FCEEE000FCEC
              DC00FCEAD900FCE9D600FCE7D300FBE5D100A5470A00FF00FF000A6B0A000A6B
              0A000A6B0A000A6B0A000A6B0A0078F3A40052E4830031B85A000A6B0A000A6B
              0A000A6B0A000A6B0A000A6B0A00EAE3D900F6EDE300FCF1E500FCEFE300FCED
              E000FCECDD00FCEAD900FBE8D600FBE7D300A6490A00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF000A6B0A0078F3A40054E5850031B85A000A6B0A00B4B2
              B000E4E0DC00FCF7F200FCF6EF00FCF5ED00FCF3EA00FCF2E700FCF0E500FBF0
              E200FCEDDF00FBECDC00FBEAD900FBE8D600A84B0A00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF000A6B0A0078F3A40056E7870031B85A000A6B0A00B4B3
              B100E4E1DF00FCF8F400FCF7F200FBF6EF00FCF5ED00FCF4EA00FCF2E700FCF0
              E400FCEFE200FCEDDF00FCECDC00FCEAD900AA4E0A00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF000A6B0A0078F3A40079F2A40049DA79000A6B0A00C6C5
              C400EAE8E500FCF9F600FBF7F500FCF7F200FCF6EF00FCF4ED00FBF4EA00FCF2
              E700FCF1E500FCEFE200FBEDDF00FBEBDC00AC4F0A00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF000A6B0A000A6B0A000A6B0A000A6B0A000A6B0A00EAE9
              E900F7F5F400FCFAF800FCF9F600FBF7F400FBF7F200FCF6EF00FBF5ED00FCF3
              EA00FBF2E700FCF0E400FCEFE200FBEDDF00AD520A00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00CA770A00FCFCFC00FCFCFC00FCFCFC00FCFC
              FC00FCFCFB00FCFBF900FCF9F700FCF9F600FCF8F400FCF7F100FCF6EF00FCF4
              ED00FCF3E900FCF2E700FCF0E400FCEFE200AF540A00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00CB790A00FCFCFC00FCFCFC00FCFCFC00FCFC
              FC00FCFCFC00FCFBFB00FCFAF900FBFAF700FCF9F600FCF7F400FCF7F200FBF6
              EF00FCF4EC00FCF4E900FCF2E700FCF0E400B1570A00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00CD7B0A00FCFCFC00FCFCFC00FCFCFC00FCFC
              FC00FCFCFC00FCFCFC00FCFBFB00FCFAF900FCF9F700FCF8F600FCF7F400FCF7
              F100FCF6EE00FCF5EC00FCF3EA00FCF1E600B35A0A00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00CE7D0A00FCFCFC00FCFCFC00FCFCFC00FCFC
              FC00FCFCFC00FCFCFC00FCFCFB00FCFBFB00FCFAF900FCFAF700FCF8F600FCF7
              F300FCF7F100FCF6EF00FCF5ED00FCF4EA00B65C0A00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00D07F0A00FCFCFC00FCFCFC00FCFCFC00FCFC
              FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFA00FCFAF800FCFAF700FCF9
              F600FCF7F400FCF7F100FCF6EF00FCF4EC00B7600A00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00D1810A00FCFCFC00FCFCFC00FCFCFC00FCFC
              FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFBFB00FCFBF900FCF9
              F700FCF9F500FCF7F300FCF7F100FCF5EF00B9610A00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00D2820A00FCFCFC00FCFCFC00FCFCFC00FCFC
              FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFBFA00FCFA
              F800FCF9F700FCF8F500FBF7F300FCF6F000BB630A00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00D3840A00FCFCFC00FCFCFC00FCFCFC00FCFC
              FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFB00FBFB
              FA00FCFAF800FCFAF700FBF8F500FCF7F300BD670A00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00D4860A00FCFCFC00FCFCFC00FCFCFC00FCFC
              FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFB00FBFB
              FA00FCFAF800FCFAF700FBF8F500FCF7F300BF690A00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00D5860A00D4860A00D4840A00D3830A00D282
              0A00D1810A00D17F0A00CF7D0A00CE7C0A00CD7A0A00CC790A00CA760A00C875
              0A00C7740A00C5720A00C46F0A00C26E0A00C06C0A00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          end
        end
      end
    end
  end
  inherited alDef: TActionList
    Images = Resources.medium_n
    Left = 56
    Top = 112
    object actSave: TAction
      Caption = 'Registrar Lote'
      ImageIndex = 325
      OnExecute = actSaveExecute
    end
    object actClean: TAction
      Caption = 'Limpar'
      ImageIndex = 120
    end
    object actNew: TAction
      Caption = 'Pr'#243'ximo'
      ImageIndex = 2
      OnExecute = actNewExecute
    end
  end
  object sPort: TZSequence
    Connection = DM.Design
    SequenceName = 'public.labport_recno_seq'
    Left = 64
    Top = 552
  end
  object uPort: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labport'
      'WHERE'
      '  labport.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO labport'
      
        '  (recno, operac, tipo, tipo_outros, empresa, cnpj, portador, st' +
        'atus, cpf, obs, codigo)'
      'VALUES'
      
        '  (:recno, :operac, :tipo, :tipo_outros, :empresa, :cnpj, :porta' +
        'dor, :status, :cpf, :obs, :codigo)')
    ModifySQL.Strings = (
      'UPDATE labport SET'
      '  status = :status'
      'WHERE'
      '  labport.recno = :OLD_recno')
    UseSequenceFieldForRefreshSQL = False
    Left = 128
    Top = 552
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'status'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'operac'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo_outros'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'portador'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cpf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'obs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
  end
  object qPort: TZQuery
    Connection = DM.Design
    UpdateObject = uPort
    AfterInsert = qPortAfterInsert
    AfterPost = qPortAfterPost
    SQL.Strings = (
      
        'select p.recno,   p.emissao,  p.tipo, p.tipo_outros, p.empresa, ' +
        'p.cnpj, p.portador,   p.cpf,   p.obs,  p.operac,'
      '       p.codigo, p.status'
      '  from labport p'
      ' where p.operac = :operac'
      '   and p.status = 1')
    Params = <
      item
        DataType = ftInteger
        Name = 'operac'
        ParamType = ptUnknown
        Value = 2
      end>
    Sequence = sPort
    SequenceField = 'recno'
    Left = 200
    Top = 552
    ParamData = <
      item
        DataType = ftInteger
        Name = 'operac'
        ParamType = ptUnknown
        Value = 2
      end>
    object qPortrecno: TIntegerField
      FieldName = 'recno'
      Required = True
      Visible = False
    end
    object qPortoperac: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Opera'#231#227'o'
      DisplayWidth = 7
      FieldName = 'operac'
    end
    object qPortemissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'emissao'
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object qPorttipo: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Tipo'
      DisplayWidth = 15
      FieldName = 'tipo'
      Required = True
      OnGetText = qPorttipoGetText
      OnSetText = qPorttipoSetText
    end
    object qPorttipo_outros: TStringField
      DisplayLabel = 'Outros'
      FieldName = 'tipo_outros'
      Visible = False
      Size = 30
    end
    object qPortcnpj: TStringField
      DisplayLabel = 'C.N.P.J.'
      DisplayWidth = 18
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object qPortempresa: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 25
      FieldName = 'empresa'
      Required = True
      Size = 100
    end
    object qPortcpf: TStringField
      DisplayLabel = 'C.P.F.'
      DisplayWidth = 14
      FieldName = 'cpf'
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object qPortportador: TStringField
      DisplayLabel = 'Portador'
      DisplayWidth = 25
      FieldName = 'portador'
      Required = True
      Size = 60
    end
    object qPortobs: TMemoField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'obs'
      Visible = False
      BlobType = ftMemo
    end
    object qPortcodigo: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'codigo'
      Required = True
      Visible = False
    end
    object qPortstatus: TIntegerField
      FieldName = 'status'
      Required = True
    end
  end
  object dsPort: TDataSource
    AutoEdit = False
    DataSet = qPort
    Left = 272
    Top = 553
  end
end
