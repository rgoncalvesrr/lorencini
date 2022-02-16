inherited LabProcPort: TLabProcPort
  Caption = 'Registro de Remessa'
  ClientHeight = 661
  ClientWidth = 886
  Constraints.MinWidth = 691
  ExplicitWidth = 892
  ExplicitHeight = 690
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 886
    Height = 617
    ExplicitWidth = 779
    ExplicitHeight = 609
    inherited pnLookup: TPanel
      Top = 1
      ExplicitTop = 1
    end
    inherited Panel3: TPanel
      Top = 328
      Width = 886
      Height = 289
      ExplicitTop = 320
      ExplicitWidth = 779
      ExplicitHeight = 289
      inherited PageControl3: TPageControl
        Width = 880
        Height = 239
        ExplicitWidth = 773
        ExplicitHeight = 239
        inherited tsDet: TTabSheet
          Caption = 'Itens Retornados'
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 765
          ExplicitHeight = 209
          inherited DBGrid1: TDBGrid
            Width = 872
            Height = 209
            DataSource = dsPortItens
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 880
        ExplicitWidth = 773
        inherited ToolBar3: TToolBar
          Width = 760
          ExplicitWidth = 760
          inherited ToolButton10: TToolButton
            ExplicitWidth = 32
          end
          inherited ToolButton11: TToolButton
            ExplicitWidth = 32
          end
          inherited ToolButton17: TToolButton
            ExplicitWidth = 32
          end
          inherited ToolButton12: TToolButton
            ExplicitWidth = 32
          end
          inherited ToolButton13: TToolButton
            ExplicitWidth = 32
          end
          inherited tbSQLDet: TToolButton
            ExplicitWidth = 32
          end
          inherited tbRefazGrid: TToolButton
            ExplicitWidth = 32
          end
        end
      end
    end
    inherited PageControl1: TPageControl
      Width = 880
      Height = 322
      ExplicitWidth = 773
      ExplicitHeight = 314
      inherited TabSheet1: TTabSheet
        Caption = 'Portador'
        ExplicitLeft = 4
        ExplicitTop = 27
        ExplicitWidth = 934
        ExplicitHeight = 488
        object Label17: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 203
          Width = 866
          Height = 15
          Align = alTop
          Caption = 'Observa'#231#245'es'
          FocusControl = DBMemo1
          ExplicitTop = 393
          ExplicitWidth = 67
        end
        object DBMemo1: TDBMemo
          AlignWithMargins = True
          Left = 3
          Top = 224
          Width = 866
          Height = 57
          Align = alTop
          DataField = 'obs'
          DataSource = dsPort
          TabOrder = 4
          ExplicitLeft = 0
          ExplicitTop = 414
          ExplicitWidth = 748
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 872
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitLeft = 376
          ExplicitTop = 224
          ExplicitWidth = 185
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 50
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 44
              Height = 15
              Align = alTop
              Caption = 'Cliente'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitTop = 35
              ExplicitWidth = 39
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 44
              Height = 23
              Align = alClient
              DataField = 'codigo'
              DataSource = dsPort
              TabOrder = 0
              OnExit = DBEdit1Exit
              ExplicitTop = 27
              ExplicitWidth = 42
            end
          end
          object Panel5: TPanel
            Left = 79
            Top = 0
            Width = 407
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitLeft = 82
            ExplicitTop = -6
            ExplicitWidth = 469
            object Label8: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 401
              Height = 15
              Align = alTop
              Caption = 'Raz'#227'o Social'
              FocusControl = DBEdit8
              ExplicitLeft = -15
              ExplicitTop = 35
              ExplicitWidth = 65
            end
            object DBEdit8: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 401
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'nome_chave'
              DataSource = dsPort
              ReadOnly = True
              TabOrder = 0
              ExplicitLeft = 6
              ExplicitWidth = 44
            end
          end
          object Panel6: TPanel
            Left = 486
            Top = 0
            Width = 126
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitLeft = 225
            object Label9: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 120
              Height = 15
              Align = alTop
              Caption = 'C.N.P.J.'
              FocusControl = DBEdit9
              ExplicitLeft = 10
              ExplicitTop = 35
              ExplicitWidth = 40
            end
            object DBEdit9: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 120
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'cnpj_1'
              DataSource = dsPort
              ReadOnly = True
              TabOrder = 0
              ExplicitLeft = -73
              ExplicitTop = 27
              ExplicitWidth = 123
            end
          end
          object Panel7: TPanel
            Left = 612
            Top = 0
            Width = 100
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            ExplicitLeft = 278
            ExplicitTop = -6
            object Label10: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 94
              Height = 15
              Align = alTop
              Caption = 'Telefone'
              FocusControl = DBEdit10
              ExplicitLeft = 6
              ExplicitTop = 35
              ExplicitWidth = 44
            end
            object DBEdit10: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 94
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'telefone'
              DataSource = dsPort
              ReadOnly = True
              TabOrder = 0
              ExplicitLeft = -67
              ExplicitTop = 27
              ExplicitWidth = 117
            end
          end
          object Panel8: TPanel
            Left = 712
            Top = 0
            Width = 66
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 4
            ExplicitLeft = 325
            object Label5: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 60
              Height = 15
              Align = alTop
              Caption = 'Opera'#231#227'o'
              FocusControl = DBEdit5
              ExplicitLeft = -1
              ExplicitTop = 35
              ExplicitWidth = 51
            end
            object DBEdit5: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 60
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'operac'
              DataSource = dsPort
              ReadOnly = True
              TabOrder = 0
              ExplicitLeft = -14
              ExplicitTop = 27
              ExplicitWidth = 64
            end
          end
          object Panel9: TPanel
            Left = 778
            Top = 0
            Width = 94
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 5
            ExplicitLeft = 840
            object Label18: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 88
              Height = 15
              Align = alTop
              Caption = 'Estado'
              ExplicitLeft = 43
              ExplicitTop = 35
              ExplicitWidth = 35
            end
            object DBComboBox4: TDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 88
              Height = 23
              Style = csDropDownList
              Align = alClient
              DataField = 'status'
              DataSource = dsPort
              ItemHeight = 15
              Items.Strings = (
                'Digita'#231#227'o'
                'Encerrado')
              TabOrder = 0
              ExplicitLeft = 50
              ExplicitTop = 27
              ExplicitWidth = 75
            end
          end
          object Panel10: TPanel
            Left = 50
            Top = 0
            Width = 29
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 6
            ExplicitLeft = 47
            ExplicitTop = -3
            object SpeedButton3: TSpeedButton
              AlignWithMargins = True
              Left = 0
              Top = 24
              Width = 26
              Height = 23
              Margins.Left = 0
              Margins.Top = 24
              Action = actFindCli
              Align = alClient
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000A0A
                0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A00FF00FF00FF00FF000A0A
                0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A00FF00FF00FF00FF000A0A
                0A00A9A9A900C4C4C400696969002C2C2C000A0A0A00FF00FF00FF00FF000A0A
                0A00A9A9A900C4C4C400696969002C2C2C000A0A0A00FF00FF00FF00FF000A0A
                0A00A9A9A900C4C4C400696969002C2C2C000A0A0A00FF00FF00FF00FF000A0A
                0A00A9A9A900C4C4C400696969002C2C2C000A0A0A00FF00FF00FF00FF000A0A
                0A00121212001E1E1E000B0B0B000A0A0A000A0A0A00FF00FF00FF00FF000A0A
                0A0015151500222222000B0B0B000A0A0A000A0A0A00FF00FF00FF00FF007549
                4900A0725E00EFE1D200EBC8A3009F674D0070414000FF00FF00FF00FF007549
                4900A0725E00EFE1D200EBC8A3009F674D0070414000FF00FF00FF00FF008461
                610085554C00F5E5D400EAC5A000865043007D565500FF00FF00FF00FF008461
                610085554C00F5E5D400EAC5A000865043007D565500FF00FF00FF00FF009A82
                820074444000F5E4D300E1B488007443400093777700FF00FF00FF00FF009A82
                820074444000F5E4D300E1B488007443400093777700FF00FF00FF00FF00B7AE
                AE006C3C3C00E9C8A800D19669006C3C3C00B2A7A700FF00FF00FF00FF00B7AE
                AE006C3C3C00E9C8A800D19669006C3C3C00B2A7A700FF00FF00FF00FF00FF00
                FF006E3E3E00734444006B3B3B006B3B3B000B0B0B000A0A0A000A0A0A000E0D
                0D006C3C3C006B3B3B006B3B3B006C3B3B00FF00FF00FF00FF00FF00FF00FF00
                FF006C3B3B00F1D8BE00E8BF9300C78657000A0A0A00C4C4C400696969001010
                1000F9DEB700E2B38600BD7B51006C3B3B00FF00FF00FF00FF00FF00FF00FF00
                FF006C3B3B00F6E6D600E9BF9500C88759000A0A0A00C4C4C400696969000C0C
                0C00E3C6A900CA9B7600A5694B006C3B3B00FF00FF00FF00FF00FF00FF00FF00
                FF006D3D3D00724343006B3B3B006B3B3B00141010000A0A0A000A0A0A002416
                14006C3B3B006C3B3B006C3B3B006C3B3B00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF000A0A0A00C4C4C400696969000A0A0A00FF00FF00FF00FF000A0A
                0A00C4C4C400696969000A0A0A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF000A0A0A000A0A0A000A0A0A001D1D1D00FF00FF00FF00FF000A0A
                0A000A0A0A000A0A0A001D1D1D00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              ExplicitLeft = -3
              ExplicitTop = -6
              ExplicitWidth = 29
              ExplicitHeight = 50
            end
          end
        end
        object Panel11: TPanel
          Left = 0
          Top = 50
          Width = 872
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitTop = 53
          ExplicitWidth = 934
          object Panel12: TPanel
            Left = 0
            Top = 0
            Width = 108
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label6: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 102
              Height = 15
              Align = alTop
              Caption = 'Emiss'#227'o'
              FocusControl = DBEdit6
              ExplicitTop = 35
              ExplicitWidth = 43
            end
            object DBEdit6: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 102
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'emissao'
              DataSource = dsPort
              ReadOnly = True
              TabOrder = 0
              ExplicitLeft = -78
              ExplicitTop = 27
              ExplicitWidth = 128
            end
          end
          object Panel13: TPanel
            Left = 108
            Top = 0
            Width = 144
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label11: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 138
              Height = 15
              Align = alTop
              Caption = 'Tipo de Portador'
              FocusControl = DBEdit6
              ExplicitLeft = -38
              ExplicitTop = 35
              ExplicitWidth = 88
            end
            object DBComboBox1: TDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 138
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
              ExplicitLeft = -63
              ExplicitTop = 27
              ExplicitWidth = 113
            end
          end
          object Panel14: TPanel
            Left = 252
            Top = 0
            Width = 249
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitLeft = 255
            ExplicitTop = 3
            ExplicitWidth = 213
            object Label12: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 243
              Height = 15
              Align = alTop
              Caption = 'Outros'
              FocusControl = DBEdit11
              ExplicitLeft = 14
              ExplicitTop = 35
              ExplicitWidth = 36
            end
            object DBEdit11: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 243
              Height = 23
              Align = alClient
              DataField = 'tipo_outros'
              DataSource = dsPort
              Enabled = False
              TabOrder = 0
              ExplicitLeft = -132
              ExplicitTop = 27
              ExplicitWidth = 182
            end
          end
          object Panel15: TPanel
            Left = 501
            Top = 0
            Width = 64
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            ExplicitLeft = 468
            ExplicitTop = 3
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 58
              Height = 15
              Align = alTop
              Caption = 'NF'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitLeft = 36
              ExplicitTop = 35
              ExplicitWidth = 14
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 58
              Height = 23
              Align = alClient
              DataField = 'nf'
              DataSource = dsPort
              TabOrder = 0
              ExplicitLeft = 9
              ExplicitTop = 27
              ExplicitWidth = 41
            end
          end
          object Panel16: TPanel
            Left = 565
            Top = 0
            Width = 64
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 4
            ExplicitLeft = 532
            ExplicitTop = 3
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 58
              Height = 15
              Align = alTop
              Caption = 'NF S'#233'rie'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitTop = 35
              ExplicitWidth = 47
            end
            object DBEdit3: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 58
              Height = 23
              Align = alClient
              DataField = 'nf_serie'
              DataSource = dsPort
              TabOrder = 0
              ExplicitLeft = -9
              ExplicitTop = 27
              ExplicitWidth = 59
            end
          end
          object Panel17: TPanel
            Left = 629
            Top = 0
            Width = 125
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 5
            ExplicitLeft = 250
            object Label4: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 119
              Height = 15
              Align = alTop
              Caption = 'NF Emiss'#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitLeft = 59
              ExplicitTop = 35
              ExplicitWidth = 66
            end
            object JvDBDateEdit1: TJvDBDateEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 119
              Height = 23
              Align = alClient
              DataField = 'nf_emissao'
              DataSource = dsPort
              ButtonWidth = 23
              ShowNullDate = False
              TabOrder = 0
              ExplicitLeft = 35
              ExplicitTop = 27
              ExplicitWidth = 90
            end
          end
          object Panel18: TPanel
            Left = 754
            Top = 0
            Width = 118
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 6
            ExplicitLeft = 816
            object Label7: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 112
              Height = 15
              Align = alTop
              Caption = 'NF Valor'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitLeft = 4
              ExplicitTop = 35
              ExplicitWidth = 46
            end
            object JvDBCalcEdit1: TJvDBCalcEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 112
              Height = 23
              Align = alClient
              DisplayFormat = ',0.#0'
              ButtonWidth = 23
              TabOrder = 0
              DecimalPlacesAlwaysShown = False
              DataField = 'nf_valor'
              DataSource = dsPort
              ExplicitLeft = -50
              ExplicitTop = 27
              ExplicitWidth = 100
            end
          end
        end
        object Panel19: TPanel
          Left = 0
          Top = 100
          Width = 872
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          ExplicitTop = 103
          ExplicitWidth = 934
          object Panel20: TPanel
            Left = 0
            Top = 0
            Width = 124
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label13: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 118
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
              ExplicitTop = 35
              ExplicitWidth = 41
            end
            object DBEdit12: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 118
              Height = 23
              Align = alClient
              DataField = 'cnpj'
              DataSource = dsPort
              Enabled = False
              TabOrder = 0
              OnExit = DBEdit12Exit
              ExplicitTop = 27
              ExplicitWidth = 121
            end
          end
          object Panel21: TPanel
            Left = 124
            Top = 0
            Width = 120
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label19: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 114
              Height = 15
              Align = alTop
              Caption = 'C.P.F.'
              FocusControl = DBEdit4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitLeft = 92
              ExplicitTop = 35
              ExplicitWidth = 28
            end
            object DBEdit4: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 114
              Height = 23
              Align = alClient
              DataField = 'cpf'
              DataSource = dsPort
              Enabled = False
              TabOrder = 0
              OnExit = DBEdit12Exit
              ExplicitLeft = 9
              ExplicitTop = 27
              ExplicitWidth = 111
            end
          end
          object Panel22: TPanel
            Left = 244
            Top = 0
            Width = 628
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitLeft = 238
            ExplicitTop = 3
            ExplicitWidth = 50
            object Label14: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 622
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
              ExplicitLeft = -1
              ExplicitTop = 35
              ExplicitWidth = 51
            end
            object DBComboBox2: TDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 622
              Height = 23
              Align = alClient
              CharCase = ecUpperCase
              DataField = 'empresa'
              DataSource = dsPort
              Enabled = False
              ItemHeight = 15
              TabOrder = 0
              OnExit = DBComboBox3Exit
              ExplicitLeft = 187
              ExplicitTop = 27
              ExplicitWidth = 503
            end
          end
        end
        object Panel27: TPanel
          Left = 0
          Top = 150
          Width = 872
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 3
          ExplicitLeft = -16
          ExplicitTop = 239
          ExplicitWidth = 934
          object Panel28: TPanel
            Left = 0
            Top = 0
            Width = 121
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitTop = 3
            object Label15: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 115
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
              ExplicitTop = 35
              ExplicitWidth = 28
            end
            object DBEdit14: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 115
              Height = 23
              Align = alClient
              DataField = 'cpf'
              DataSource = dsPort
              TabOrder = 0
              OnExit = DBEdit14Exit
              ExplicitLeft = -2
              ExplicitTop = 27
              ExplicitWidth = 123
            end
          end
          object Panel29: TPanel
            Left = 121
            Top = 0
            Width = 751
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitLeft = 124
            ExplicitTop = 3
            ExplicitWidth = 50
            object Label16: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 745
              Height = 15
              Align = alTop
              Caption = 'Portador'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitLeft = 0
              ExplicitTop = 35
              ExplicitWidth = 50
            end
            object DBComboBox3: TDBComboBox
              Tag = 1
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 745
              Height = 23
              Align = alClient
              CharCase = ecUpperCase
              DataField = 'portador'
              DataSource = dsPort
              ItemHeight = 15
              TabOrder = 0
              OnExit = DBComboBox3Exit
              ExplicitLeft = -568
              ExplicitTop = 27
              ExplicitWidth = 618
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 880
    ExplicitWidth = 773
    inherited ToolBar1: TToolBar
      Width = 865
      ExplicitWidth = 865
      inherited ToolButton6: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton4: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton7: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton1: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton2: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton8: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton9: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton14: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton16: TToolButton
        ExplicitWidth = 32
      end
      inherited tbSQL: TToolButton
        ExplicitWidth = 32
      end
      inherited tbClose: TToolButton
        ExplicitWidth = 32
      end
    end
  end
  inherited alDef: TActionList
    Left = 208
    object actFindCli: TAction
      ImageIndex = 332
      OnExecute = actFindCliExecute
    end
  end
  object sPort: TZSequence
    Connection = DM.Design
    SequenceName = 'public.labport_recno_seq'
    Left = 320
    Top = 456
  end
  object uPort: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labport'
      'WHERE'
      '  labport.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO labport'
      
        '  (recno, operac, tipo, tipo_outros, empresa, cnpj, portador, st' +
        'atus,'
      
        '   cpf, obs, labproc_recno, codigo, nf, nf_serie, nf_emissao, nf' +
        '_valor)'
      'VALUES'
      
        '  (:recno, :operac, :tipo, :tipo_outros, :empresa, :cnpj, :porta' +
        'dor, :status, '
      
        '   :cpf, :obs, :labproc_recno, :codigo, :nf, :nf_serie, :nf_emis' +
        'sao, :nf_valor)')
    ModifySQL.Strings = (
      'UPDATE labport SET'
      '  recno = :recno,'
      '  emissao = :emissao,'
      '  operac = :operac,'
      '  tipo = :tipo,'
      '  tipo_outros = :tipo_outros,'
      '  empresa = :empresa,'
      '  cnpj = :cnpj,'
      '  portador = :portador,'
      '  cpf = :cpf,'
      '  obs = :obs,'
      '  labproc_recno = :labproc_recno,'
      '  codigo = :codigo,'
      '  nf = :nf,'
      '  nf_serie = :nf_serie,'
      '  nf_emissao = :nf_emissao,'
      '  nf_valor = :nf_valor,'
      '  status = :status'
      'WHERE'
      '  labport.recno = :OLD_recno')
    UseSequenceFieldForRefreshSQL = False
    Left = 384
    Top = 456
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emissao'
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
        Name = 'labproc_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nf_serie'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nf_emissao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nf_valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'status'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_recno'
        ParamType = ptUnknown
      end>
  end
  object qPort: TZQuery
    Connection = DM.Design
    AfterRefresh = qPortAfterRefresh
    AfterScroll = qPortAfterScroll
    UpdateObject = uPort
    AfterInsert = qPortAfterInsert
    SQL.Strings = (
      'select p.recno,   p.emissao,  p.tipo,       p.tipo_outros,'
      '       p.empresa, p.cnpj,     p.portador,   p.cpf,'
      '       p.obs,     p.operac,   p.codigo,     p.labproc_recno,'
      '       p.nf,      p.nf_serie, p.nf_emissao, p.nf_valor,'
      '       p.status,'
      '       c.cnpj,    c.telefone, c.nome_chave, c.cpf'
      '  from labport p'
      '       join tbclientes c'
      '         on c.codigo = p.codigo'
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
    Left = 456
    Top = 456
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
      OnGetText = qPortoperacGetText
      OnSetText = qPortoperacSetText
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
    object qPortlabproc_recno: TIntegerField
      DisplayLabel = 'Processo'
      FieldName = 'labproc_recno'
      Visible = False
    end
    object qPortcodigo: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'codigo'
      Required = True
      Visible = False
      OnChange = qPortcodigoChange
    end
    object qPortnf: TIntegerField
      DisplayLabel = 'NF'
      DisplayWidth = 7
      FieldName = 'nf'
      Required = True
    end
    object qPortnf_serie: TIntegerField
      DisplayLabel = 'NF S'#233'rie'
      DisplayWidth = 7
      FieldName = 'nf_serie'
      Required = True
    end
    object qPortnf_emissao: TDateField
      DisplayLabel = 'NF Emiss'#227'o'
      FieldName = 'nf_emissao'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qPortnf_valor: TFloatField
      DisplayLabel = 'NF Valor'
      FieldName = 'nf_valor'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object qPortnome_chave: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 25
      FieldName = 'nome_chave'
      Visible = False
      Size = 45
    end
    object qPortcnpj_1: TStringField
      DefaultExpression = '99.999.999/9999-99;0;'
      DisplayLabel = 'C.N.P.J.'
      DisplayWidth = 18
      FieldName = 'cnpj_1'
      Visible = False
      Size = 14
    end
    object qPorttelefone: TStringField
      DisplayLabel = 'Fone'
      DisplayWidth = 20
      FieldName = 'telefone'
      Visible = False
      Size = 100
    end
    object qPortstatus: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Estado'
      FieldName = 'status'
      Required = True
      OnGetText = qPortstatusGetText
      OnSetText = qPortstatusSetText
    end
    object qPortcpf_1: TStringField
      FieldName = 'cpf_1'
      Size = 11
    end
  end
  object dsPort: TDataSource
    AutoEdit = False
    DataSet = qPort
    Left = 528
    Top = 457
  end
  object sPortItens: TZSequence
    Connection = DM.Design
    SequenceName = 'public.labret_recno_seq'
    Left = 320
    Top = 504
  end
  object uPortItens: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labret'
      'WHERE'
      '  labret.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO labret'
      '  (recno, labport_recno, amostra, status, qtd)'
      'VALUES'
      '  (:recno, :labport_recno, :amostra, :status, :qtd)')
    ModifySQL.Strings = (
      'UPDATE labret SET'
      '  recno = :recno,'
      '  labport_recno = :labport_recno,'
      '  amostra = :amostra,'
      '  status = :status,'
      '  qtd = :qtd'
      'WHERE'
      '  labret.recno = :OLD_recno')
    UseSequenceFieldForRefreshSQL = False
    Left = 384
    Top = 504
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'labport_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'amostra'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'status'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'qtd'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_recno'
        ParamType = ptUnknown
      end>
  end
  object qPortItens: TZQuery
    Connection = DM.Design
    UpdateObject = uPortItens
    AfterInsert = qPortItensAfterInsert
    SQL.Strings = (
      
        'select r.recno,  r.labport_recno, r.amostra, r.status, c.comodat' +
        'o,'
      
        '       ah.ocorrencia rem_dh, ah.historico rem_tr,  e.labproc_rec' +
        'no,'
      '       r.qtd, e.tipo'
      '  from labret r'
      '       join labport p'
      '         on p.recno = r.labport_recno'
      '       join labamostras c'
      '         on c.recno = r.amostra'
      '        and c.codigo = p.codigo'
      '       left join labamostras_hist ah'
      '         on ah.amostra = c.recno'
      '        and ah.estado = 30'
      '       join labprocxequip e'
      '         on e.amostra = r.amostra'
      ' where r.labport_recno = :port'
      '')
    Params = <
      item
        DataType = ftInteger
        Name = 'port'
        ParamType = ptUnknown
      end>
    Sequence = sPortItens
    SequenceField = 'recno'
    Left = 456
    Top = 504
    ParamData = <
      item
        DataType = ftInteger
        Name = 'port'
        ParamType = ptUnknown
      end>
    object qPortItensamostra: TIntegerField
      DisplayLabel = 'Amostra'
      FieldName = 'amostra'
    end
    object qPortItenscomodato: TIntegerField
      DisplayLabel = 'Etiqueta'
      FieldName = 'comodato'
    end
    object qPortItenstipo: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Tipo'
      FieldName = 'tipo'
      Required = True
      OnGetText = qPortItenstipoGetText
      OnSetText = qPortItenstipoSetText
    end
    object qPortItenslabport_recno: TIntegerField
      FieldName = 'labport_recno'
      Required = True
      Visible = False
    end
    object qPortItensstatus: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Status'
      FieldName = 'status'
      Required = True
      OnGetText = qPortItensstatusGetText
      OnSetText = qPortItensstatusSetText
    end
    object qPortItensrem_dh: TDateTimeField
      DisplayLabel = 'Remessa'
      FieldName = 'rem_dh'
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object qPortItensrem_tr: TMemoField
      DisplayLabel = 'Portador Remessa'
      FieldName = 'rem_tr'
      Visible = False
      BlobType = ftMemo
    end
    object qPortItenslabproc_recno: TIntegerField
      DisplayLabel = 'Processo'
      FieldName = 'labproc_recno'
    end
    object qPortItensqtd: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'qtd'
      Required = True
      DisplayFormat = ',0.####0 ml'
    end
    object qPortItensrecno: TIntegerField
      DisplayLabel = 'Item'
      DisplayWidth = 7
      FieldName = 'recno'
      Required = True
    end
  end
  object dsPortItens: TDataSource
    AutoEdit = False
    DataSet = qPortItens
    Left = 528
    Top = 505
  end
end
