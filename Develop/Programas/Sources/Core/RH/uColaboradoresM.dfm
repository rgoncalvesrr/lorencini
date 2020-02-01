inherited ColaboradoresM: TColaboradoresM
  Caption = 'Edi'#231#227'o de Colaboradores'
  ClientHeight = 511
  ClientWidth = 805
  Constraints.MinWidth = 691
  ExplicitWidth = 811
  ExplicitHeight = 539
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 805
    Height = 467
    ExplicitTop = 35
    ExplicitWidth = 805
    ExplicitHeight = 476
    inherited Panel3: TPanel
      Top = 295
      Width = 670
      Align = alNone
      ExplicitTop = 295
      ExplicitWidth = 670
      inherited PageControl3: TPageControl
        Top = 47
        Width = 664
        Height = 185
        ExplicitLeft = 3
        ExplicitTop = 38
        ExplicitWidth = 664
        ExplicitHeight = 194
        inherited tsDet: TTabSheet
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 656
          ExplicitHeight = 164
          inherited DBGrid1: TDBGrid
            Width = 656
            Height = 155
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 664
        Height = 38
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 664
        ExplicitHeight = 38
        inherited ToolBar3: TToolBar
          Width = 651
          ButtonWidth = 129
          ExplicitWidth = 651
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
      Width = 799
      Height = 461
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 799
      ExplicitHeight = 470
      inherited TabSheet1: TTabSheet
        Caption = 'Colaborador'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 791
        ExplicitHeight = 440
        object Label1: TLabel
          Left = 5
          Top = 5
          Width = 11
          Height = 15
          Caption = 'ID'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 57
          Top = 5
          Width = 123
          Height = 15
          Caption = 'Nome do Colaborador'
          FocusControl = DBEdit2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 575
          Top = 5
          Width = 16
          Height = 15
          Caption = 'RG'
          FocusControl = DBEdit3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 677
          Top = 5
          Width = 28
          Height = 15
          Caption = 'C.P.F.'
          FocusControl = DBEdit4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 5
          Top = 24
          Width = 48
          Height = 23
          DataField = 'idcodigo'
          DataSource = Colaboradores.DataSource1
          Enabled = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 57
          Top = 24
          Width = 512
          Height = 23
          CharCase = ecUpperCase
          DataField = 'nome'
          DataSource = Colaboradores.DataSource1
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 575
          Top = 24
          Width = 97
          Height = 23
          DataField = 'rg'
          DataSource = Colaboradores.DataSource1
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 677
          Top = 24
          Width = 99
          Height = 23
          DataField = 'cpf'
          DataSource = Colaboradores.DataSource1
          TabOrder = 3
        end
        object GroupBox1: TGroupBox
          Left = 3
          Top = 54
          Width = 773
          Height = 136
          Caption = ' Logradouro e Contato '
          TabOrder = 4
          object Label5: TLabel
            Left = 5
            Top = 31
            Width = 49
            Height = 15
            Caption = 'Endere'#231'o'
            FocusControl = DBEdit5
          end
          object Label6: TLabel
            Left = 425
            Top = 31
            Width = 31
            Height = 15
            Caption = 'Bairro'
            FocusControl = DBEdit6
          end
          object Label7: TLabel
            Left = 5
            Top = 57
            Width = 37
            Height = 15
            Caption = 'Cidade'
            FocusControl = DBEdit7
          end
          object Label8: TLabel
            Left = 425
            Top = 57
            Width = 35
            Height = 15
            Caption = 'Estado'
            FocusControl = DBEdit8
          end
          object Label9: TLabel
            Left = 5
            Top = 83
            Width = 30
            Height = 15
            Caption = 'C.E.P.'
            FocusControl = DBEdit9
          end
          object Label10: TLabel
            Left = 425
            Top = 83
            Width = 46
            Height = 15
            Caption = 'Telefone'
            FocusControl = DBEdit10
          end
          object Label11: TLabel
            Left = 5
            Top = 108
            Width = 37
            Height = 15
            Caption = 'Celular'
            FocusControl = DBEdit11
          end
          object Label12: TLabel
            Left = 425
            Top = 108
            Width = 74
            Height = 15
            Caption = 'R'#225'dio (Nextel)'
            FocusControl = DBEdit12
          end
          object DBEdit5: TDBEdit
            Left = 74
            Top = 24
            Width = 324
            Height = 23
            DataField = 'endereco'
            DataSource = Colaboradores.DataSource1
            TabOrder = 0
          end
          object DBEdit6: TDBEdit
            Left = 503
            Top = 24
            Width = 252
            Height = 23
            DataField = 'bairro'
            DataSource = Colaboradores.DataSource1
            TabOrder = 1
          end
          object DBEdit7: TDBEdit
            Left = 74
            Top = 49
            Width = 290
            Height = 23
            DataField = 'cidade'
            DataSource = Colaboradores.DataSource1
            TabOrder = 2
          end
          object DBEdit8: TDBEdit
            Left = 503
            Top = 49
            Width = 30
            Height = 23
            CharCase = ecUpperCase
            DataField = 'estado'
            DataSource = Colaboradores.DataSource1
            TabOrder = 3
          end
          object DBEdit9: TDBEdit
            Left = 74
            Top = 75
            Width = 99
            Height = 23
            DataField = 'cep'
            DataSource = Colaboradores.DataSource1
            TabOrder = 4
          end
          object DBEdit10: TDBEdit
            Left = 503
            Top = 75
            Width = 154
            Height = 23
            DataField = 'telresidencia'
            DataSource = Colaboradores.DataSource1
            TabOrder = 5
          end
          object DBEdit11: TDBEdit
            Left = 74
            Top = 101
            Width = 99
            Height = 23
            DataField = 'telcelular'
            DataSource = Colaboradores.DataSource1
            TabOrder = 6
          end
          object DBEdit12: TDBEdit
            Left = 503
            Top = 101
            Width = 154
            Height = 23
            DataField = 'telradio'
            DataSource = Colaboradores.DataSource1
            TabOrder = 7
          end
        end
        object GroupBox2: TGroupBox
          Left = 3
          Top = 196
          Width = 341
          Height = 72
          Caption = ' Dados Banc'#225'rios '
          TabOrder = 5
          object Label13: TLabel
            Left = 9
            Top = 19
            Width = 33
            Height = 15
            Caption = 'Banco'
            FocusControl = DBEdit13
          end
          object Label14: TLabel
            Left = 199
            Top = 19
            Width = 32
            Height = 15
            Caption = 'Conta'
            FocusControl = DBEdit14
          end
          object Label15: TLabel
            Left = 146
            Top = 19
            Width = 43
            Height = 15
            Caption = 'Ag'#234'ncia'
            FocusControl = DBEdit15
          end
          object DBEdit13: TDBEdit
            Left = 9
            Top = 41
            Width = 130
            Height = 23
            DataField = 'contabanco'
            DataSource = Colaboradores.DataSource1
            TabOrder = 0
          end
          object DBEdit14: TDBEdit
            Left = 199
            Top = 41
            Width = 133
            Height = 23
            DataField = 'contanumero'
            DataSource = Colaboradores.DataSource1
            TabOrder = 2
          end
          object DBEdit15: TDBEdit
            Left = 146
            Top = 41
            Width = 47
            Height = 23
            DataField = 'contaagencia'
            DataSource = Colaboradores.DataSource1
            TabOrder = 1
          end
        end
        object GroupBox7: TGroupBox
          Left = 348
          Top = 196
          Width = 428
          Height = 72
          Caption = ' Situa'#231#227'o '
          TabOrder = 6
          object Label36: TLabel
            Left = 105
            Top = 19
            Width = 52
            Height = 15
            Caption = 'Admiss'#227'o'
          end
          object Label37: TLabel
            Left = 208
            Top = 19
            Width = 51
            Height = 15
            Caption = 'Demiss'#227'o'
          end
          object Label34: TLabel
            Left = 8
            Top = 20
            Width = 45
            Height = 15
            Caption = 'Situa'#231#227'o'
            FocusControl = DBEdit13
          end
          object JvDBComboBox9: TJvDBComboBox
            Left = 8
            Top = 41
            Width = 91
            Height = 23
            DataField = 'situacao'
            DataSource = Colaboradores.DataSource1
            Items.Strings = (
              'Admitido'
              'Demitido')
            TabOrder = 0
            Values.Strings = (
              'Ativo'
              'Demitido')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object JvDBDateEdit1: TJvDBDateEdit
            Left = 105
            Top = 41
            Width = 96
            Height = 23
            DataField = 'dtadmissao'
            DataSource = Colaboradores.DataSource1
            ButtonWidth = 23
            ShowNullDate = False
            TabOrder = 1
          end
          object JvDBDateEdit2: TJvDBDateEdit
            Left = 208
            Top = 41
            Width = 96
            Height = 23
            DataField = 'dtdemissao'
            DataSource = Colaboradores.DataSource1
            ButtonWidth = 23
            ShowNullDate = False
            TabOrder = 2
          end
        end
        object GroupBox8: TGroupBox
          Left = 4
          Top = 273
          Width = 544
          Height = 72
          Caption = ' Cargo '
          TabOrder = 7
          object Label38: TLabel
            Left = 122
            Top = 19
            Width = 24
            Height = 15
            Caption = 'CBO'
            FocusControl = DBEdit26
          end
          object Label39: TLabel
            Left = 179
            Top = 19
            Width = 32
            Height = 15
            Caption = 'Cargo'
            FocusControl = DBEdit27
          end
          object Label40: TLabel
            Left = 6
            Top = 19
            Width = 28
            Height = 15
            Caption = 'CTPS'
            FocusControl = DBEdit28
          end
          object Label41: TLabel
            Left = 64
            Top = 19
            Width = 25
            Height = 15
            Caption = 'S'#233'rie'
            FocusControl = DBEdit29
          end
          object Label35: TLabel
            Left = 465
            Top = 19
            Width = 29
            Height = 15
            Caption = 'CREA'
            FocusControl = DBEdit25
          end
          object DBEdit26: TDBEdit
            Left = 122
            Top = 41
            Width = 52
            Height = 23
            DataField = 'cbo'
            DataSource = Colaboradores.DataSource1
            TabOrder = 2
          end
          object DBEdit27: TDBEdit
            Left = 179
            Top = 40
            Width = 280
            Height = 23
            CharCase = ecUpperCase
            DataField = 'cargo'
            DataSource = Colaboradores.DataSource1
            TabOrder = 3
          end
          object DBEdit28: TDBEdit
            Left = 6
            Top = 40
            Width = 52
            Height = 23
            DataField = 'ctps'
            DataSource = Colaboradores.DataSource1
            TabOrder = 0
          end
          object DBEdit29: TDBEdit
            Left = 64
            Top = 40
            Width = 52
            Height = 23
            DataField = 'serie'
            DataSource = Colaboradores.DataSource1
            TabOrder = 1
          end
          object DBEdit25: TDBEdit
            Left = 465
            Top = 40
            Width = 63
            Height = 23
            DataField = 'crq'
            DataSource = Colaboradores.DataSource1
            TabOrder = 4
          end
        end
        object GroupBox9: TGroupBox
          Left = 554
          Top = 274
          Width = 222
          Height = 72
          Caption = ' Integra'#231#227'o c/ Sistema '
          TabOrder = 8
          object Label42: TLabel
            Left = 9
            Top = 19
            Width = 201
            Height = 15
            Caption = 'Usu'#225'rio utilizado por esse colaborador'
            FocusControl = DBEdit13
          end
          object RxDBComboBox11: TJvDBComboBox
            Left = 9
            Top = 40
            Width = 199
            Height = 23
            DataField = 'username'
            DataSource = Colaboradores.DataSource1
            TabOrder = 0
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
        end
        object GroupBox3: TGroupBox
          Left = 3
          Top = 353
          Width = 778
          Height = 70
          Caption = ' Assinatura (180mm X 10mm) '
          TabOrder = 9
          object Image1: TImage
            Left = 3
            Top = 20
            Width = 733
            Height = 43
            Center = True
          end
          object SpeedButton1: TSpeedButton
            Left = 743
            Top = 16
            Width = 30
            Height = 24
            Action = actImgAdd
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FF2788AF0A8BB70A8AB72788AFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FF0A6B9A0A6B9AFF00FFFF00FF2788AF0A
              DBFC0AD9FC2788AFFF00FFFF00FF0A6B9A0A6B9AFF00FFFF00FFFF00FF0A6B9A
              0AE5FC0AE4FC0A6B9AFF00FF2788AF0A8CB70A8BB72788AFFF00FF0A6B9A0AD4
              FC0AD2FC0A6B9AFF00FFFF00FF0A6B9A0AE6FC0AE5FC0A6B9AFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FF0A6B9A0AD5FC0AD3FC0A6B9AFF00FFFF00FFFF00FF
              0A6B9A0A6B9AC3C9C998B1BD0B9BC10A79A70A79A70B99C198B1BDC3C9C90A6B
              9A0A6B9AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF98B1BD0A89B30AB3D50A
              D3F00AD1F00AB0D50A87B398B1BDFF00FFFF00FFFF00FFFF00FF2B8AAE2B8AAE
              2E8AADFF00FF0B9DC10AB5D50AE4FC0AE4FC0AE2FC0AE0FC0AB0D50C98C1FF00
              FF2E88AD2B88AE2B88AE0A92B70AEFFC118FB5FF00FF0A7AA70AD9F00AE6FC0A
              E4FC0AE3FC0AE2FC0AD1F00A79A7FF00FF118BB50AD9FC0A8AB70A92B70AF0FC
              1190B5FF00FF0A7AA70ADAF00AE8FC0AE6FC0AE4FC0AE3FC0AD3F00A79A7FF00
              FF118BB50ADBFC0A8BB72B8BAE2B8BAE2E8AADFF00FF0B9EC10AB8D50AE9FC0A
              E8FC0AE6FC0AE4FC0AB3D50C9AC1FF00FF2E88AD2B88AE2B88AEFF00FFFF00FF
              FF00FFFF00FF98B1BD0A8BB30AB8D50ADAF00AD8F00AB5D50A89B398B1BDFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FF0A6B9A0A6B9AFF00FF98B1BD0B9EC10A
              7AA70A7AA70B9DC198B1BDFF00FF0A6B9A0A6B9AFF00FFFF00FFFF00FF0A6B9A
              0AF6FC0AF4FC0A6B9AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0A6B9A0AE4
              FC0AE3FC0A6B9AFF00FFFF00FF0A6B9A0AF7FC0AF6FC0A6B9AFF00FF278CAF0A
              91B70A90B7278BAFFF00FF0A6B9A0AE6FC0AE4FC0A6B9AFF00FFFF00FFFF00FF
              0A6B9A0A6B9AFF00FFFF00FF278CAF0AF0FC0AEEFC278BAFFF00FFFF00FF0A6B
              9A0A6B9AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF278CAF0A
              92B70A92B7278BAFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          end
          object SpeedButton2: TSpeedButton
            Left = 743
            Top = 40
            Width = 30
            Height = 23
            Action = actImgDel
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FF00FFFF00FF
              FF00FFFF00FFA9A9B84B4E971B20860A0E770A0E741B1E77494B85A6A6B2FF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFC3C3C64B50A40C17A4192CC52A40D542
              58DE4A61E1374FDD2638C60D1282494A85C3C3C4FF00FFFF00FFFF00FFC3C3C6
              2C38AD1022BF263BD13A4FD94359DE4C62E2546BE55E74E9657CED546DE81D29
              B12A2B7AC3C3C4FF00FFFF00FF4C57BC0F22C22133CC8891DF737FDC3C50D944
              5ADE4E63E3566CE6939CE4AAAFE4697FED1D29B2494A87FF00FFA9ABC50D23C6
              1022C1747FDAFCF9F4FCF7F18893E03D52DA465CDE969EE3FCF1DFFCEFDBA9AF
              E45870E90E1388A6A6B34958CB0E23C50A19BB5A65D2FCFAF7FCF9F4FCF7F18A
              93E08C96E1FCF4E5FCF2E3FCF1DF919CE46A80ED2839C9464889223AD20B1CBE
              0A18B70B1ABB6F78D8FCFAF7FCF9F4FCF7F1FCF7EDFCF5E9FCF4E5969EE35A70
              E66379E93F56DE181C821D39D60A18B50A17B30A17B70D1CBC6F79D7FCFAF7FC
              F9F4FCF7F1FCF7ED8C96E04A5FDF5368E35C72E64F65E30D12872141DB0A17B2
              0A15AF0A16B30A17B77079D6FCFCFBFCFAF7FCF9F4FCF7F18C96E04357DB4C61
              DF5469E3495FE00D138E3251DD0C1AB80A13AC0A15AF6E74D1FCFCFCFCFCFCFC
              FCFBFCFAF7FCF9F4FCF7F18D97E04458DB4D62DF354AD718209A5F78DA132AC8
              0A11A85157C3FCFCFCFCFCFCFCFCFC6F78D5727CD8FCFAF7FCF9F4FCF7F17A86
              DE465ADB1F32CA464CAAB1B7CD2A50E30B14AC7174CCFCFCFCFCFCFC6B72D10A
              17B61321BC737CD8FCFAF7FCF9F48A93E03146D30E1CBCA6A8BFFF00FF6681DE
              1D3CD50D13A77174CC4C51C10A14AF0A16B20B18B61422BD5762D18189DC2D3E
              CD192DC94953BBFF00FFFF00FFC4C5C95073E61E3DD40B14AC0A10A80A12AC0A
              14AE0A16B20D1AB71624BD192AC3182DCB3242C5C3C3C7FF00FFFF00FFFF00FF
              C4C5C96B89E2335CE8162CC90C19B70B17B50B18B70B1CBD1329C91D36D15363
              CCC3C3C7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB2BBD06C88E14165E631
              57E62D51E33653DD5C6FD5ABB0CAFF00FFFF00FFFF00FFFF00FF}
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 799
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 799
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      Width = 786
      ButtonWidth = 115
      ExplicitWidth = 786
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
    Left = 280
    Top = 16
    object actImgAdd: TAction
      Enabled = False
      ImageIndex = 42
      OnExecute = actImgAddExecute
    end
    object actImgDel: TAction
      Enabled = False
      ImageIndex = 43
      OnExecute = actImgDelExecute
    end
  end
  object JvDBGridWordExport1: TJvDBGridWordExport
    Caption = 'Exporting to MS Word...'
    Left = 192
    Top = 16
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 
      'All (*.jpg;*.jpeg;)|*.jpg;*.jpeg;|JPEG Image File (*.jpg)|*.jpg|' +
      'JPEG Image File (*.jpeg)|*.jpeg'
    Title = 'Assinatura Digitalizada'
    Left = 104
    Top = 16
  end
end
