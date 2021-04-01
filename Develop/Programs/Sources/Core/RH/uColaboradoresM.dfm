inherited ColaboradoresM: TColaboradoresM
  Caption = 'Edi'#231#227'o de Colaboradores'
  ClientHeight = 518
  ClientWidth = 821
  Constraints.MinWidth = 691
  ExplicitWidth = 827
  ExplicitHeight = 547
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 821
    Height = 474
    ExplicitTop = 44
    ExplicitWidth = 821
    ExplicitHeight = 474
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
        ExplicitTop = 47
        ExplicitWidth = 664
        ExplicitHeight = 185
        inherited tsDet: TTabSheet
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 656
          ExplicitHeight = 155
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
      Width = 815
      Height = 468
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 815
      ExplicitHeight = 468
      inherited TabSheet1: TTabSheet
        Caption = 'Colaborador'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 807
        ExplicitHeight = 438
        object GroupBox1: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 53
          Width = 801
          Height = 140
          Align = alTop
          Caption = ' Logradouro e Contato '
          TabOrder = 1
          object Panel8: TPanel
            Left = 2
            Top = 17
            Width = 797
            Height = 29
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Panel9: TPanel
              Left = 0
              Top = 0
              Width = 73
              Height = 29
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label5: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 67
                Height = 23
                Align = alClient
                Caption = 'Endere'#231'o'
                FocusControl = DBEdit5
                Layout = tlCenter
                ExplicitWidth = 49
                ExplicitHeight = 15
              end
            end
            object Panel10: TPanel
              Left = 73
              Top = 0
              Width = 309
              Height = 29
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object DBEdit5: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 303
                Height = 23
                Align = alClient
                DataField = 'endereco'
                DataSource = Colaboradores.DataSource1
                TabOrder = 0
              end
            end
            object Panel11: TPanel
              Left = 382
              Top = 0
              Width = 73
              Height = 29
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 2
              object Label6: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 67
                Height = 23
                Align = alClient
                Caption = 'Bairro'
                FocusControl = DBEdit6
                Layout = tlCenter
                ExplicitWidth = 31
                ExplicitHeight = 15
              end
            end
            object Panel12: TPanel
              Left = 455
              Top = 0
              Width = 309
              Height = 29
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 3
              object DBEdit6: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 303
                Height = 23
                Align = alClient
                DataField = 'bairro'
                DataSource = Colaboradores.DataSource1
                TabOrder = 0
              end
            end
          end
          object Panel13: TPanel
            Left = 2
            Top = 46
            Width = 797
            Height = 29
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object Panel14: TPanel
              Left = 0
              Top = 0
              Width = 73
              Height = 29
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label7: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 37
                Height = 23
                Align = alLeft
                Caption = 'Cidade'
                FocusControl = DBEdit7
                Layout = tlCenter
                ExplicitHeight = 15
              end
            end
            object Panel15: TPanel
              Left = 73
              Top = 0
              Width = 309
              Height = 29
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object DBEdit7: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 290
                Height = 23
                Align = alLeft
                DataField = 'cidade'
                DataSource = Colaboradores.DataSource1
                TabOrder = 0
              end
            end
            object Panel16: TPanel
              Left = 382
              Top = 0
              Width = 73
              Height = 29
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 2
              object Label8: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 35
                Height = 23
                Align = alLeft
                Caption = 'Estado'
                FocusControl = DBEdit8
                Layout = tlCenter
                ExplicitHeight = 15
              end
            end
            object Panel17: TPanel
              Left = 455
              Top = 0
              Width = 309
              Height = 29
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 3
              object DBEdit8: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 30
                Height = 23
                Align = alLeft
                CharCase = ecUpperCase
                DataField = 'estado'
                DataSource = Colaboradores.DataSource1
                TabOrder = 0
              end
            end
          end
          object Panel18: TPanel
            Left = 2
            Top = 75
            Width = 797
            Height = 29
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 2
            object Panel19: TPanel
              Left = 0
              Top = 0
              Width = 73
              Height = 29
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label9: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 30
                Height = 23
                Align = alLeft
                Caption = 'C.E.P.'
                FocusControl = DBEdit9
                Layout = tlCenter
                ExplicitHeight = 15
              end
            end
            object Panel20: TPanel
              Left = 73
              Top = 0
              Width = 309
              Height = 29
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object DBEdit9: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 99
                Height = 23
                Align = alLeft
                DataField = 'cep'
                DataSource = Colaboradores.DataSource1
                TabOrder = 0
              end
            end
            object Panel21: TPanel
              Left = 382
              Top = 0
              Width = 73
              Height = 29
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 2
              object Label10: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 44
                Height = 23
                Align = alLeft
                Caption = 'Telefone'
                FocusControl = DBEdit10
                Layout = tlCenter
                ExplicitHeight = 15
              end
            end
            object Panel22: TPanel
              Left = 455
              Top = 0
              Width = 309
              Height = 29
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 3
              object DBEdit10: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 154
                Height = 23
                Align = alLeft
                DataField = 'telresidencia'
                DataSource = Colaboradores.DataSource1
                TabOrder = 0
              end
            end
          end
          object Panel23: TPanel
            Left = 2
            Top = 104
            Width = 797
            Height = 29
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 3
            object Panel24: TPanel
              Left = 0
              Top = 0
              Width = 73
              Height = 29
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label11: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 37
                Height = 23
                Align = alLeft
                Caption = 'Celular'
                FocusControl = DBEdit11
                Layout = tlCenter
                ExplicitHeight = 15
              end
            end
            object Panel25: TPanel
              Left = 73
              Top = 0
              Width = 309
              Height = 29
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object DBEdit11: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 99
                Height = 23
                Align = alLeft
                DataField = 'telcelular'
                DataSource = Colaboradores.DataSource1
                TabOrder = 0
              end
            end
            object Panel26: TPanel
              Left = 382
              Top = 0
              Width = 73
              Height = 29
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 2
            end
            object Panel27: TPanel
              Left = 455
              Top = 0
              Width = 309
              Height = 29
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 3
            end
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 807
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 71
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 65
              Height = 15
              Align = alTop
              Caption = 'ID'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 11
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 65
              Height = 23
              Align = alClient
              DataField = 'idcodigo'
              DataSource = Colaboradores.DataSource1
              Enabled = False
              TabOrder = 0
            end
          end
          object Panel5: TPanel
            Left = 71
            Top = 0
            Width = 496
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 490
              Height = 15
              Align = alTop
              Caption = 'Nome do Colaborador'
              FocusControl = DBEdit2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 123
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 490
              Height = 23
              Align = alClient
              CharCase = ecUpperCase
              DataField = 'nome'
              DataSource = Colaboradores.DataSource1
              TabOrder = 0
            end
          end
          object Panel6: TPanel
            Left = 567
            Top = 0
            Width = 120
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 114
              Height = 15
              Align = alTop
              Caption = 'RG'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 16
            end
            object DBEdit3: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 114
              Height = 23
              Align = alClient
              DataField = 'rg'
              DataSource = Colaboradores.DataSource1
              TabOrder = 0
            end
          end
          object Panel7: TPanel
            Left = 687
            Top = 0
            Width = 120
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label4: TLabel
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
              DataSource = Colaboradores.DataSource1
              TabOrder = 0
            end
          end
        end
        object Panel28: TPanel
          Left = 0
          Top = 196
          Width = 807
          Height = 75
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object GroupBox2: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 341
            Height = 69
            Align = alLeft
            Caption = ' Dados Banc'#225'rios '
            TabOrder = 0
            object Panel30: TPanel
              Left = 67
              Top = 17
              Width = 145
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object Label13: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 139
                Height = 15
                Align = alTop
                Caption = 'Banco'
                FocusControl = DBEdit13
                ExplicitWidth = 33
              end
              object DBEdit13: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 139
                Height = 23
                Align = alClient
                DataField = 'contabanco'
                DataSource = Colaboradores.DataSource1
                TabOrder = 0
              end
            end
            object Panel31: TPanel
              Left = 2
              Top = 17
              Width = 65
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label15: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 59
                Height = 15
                Align = alTop
                Caption = 'Ag'#234'ncia'
                FocusControl = DBEdit15
                ExplicitWidth = 43
              end
              object DBEdit15: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 59
                Height = 23
                Align = alClient
                DataField = 'contaagencia'
                DataSource = Colaboradores.DataSource1
                TabOrder = 0
              end
            end
            object Panel32: TPanel
              Left = 212
              Top = 17
              Width = 127
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 2
              object Label14: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 121
                Height = 15
                Align = alTop
                Caption = 'Conta'
                FocusControl = DBEdit14
                ExplicitWidth = 32
              end
              object DBEdit14: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 121
                Height = 23
                Align = alClient
                DataField = 'contanumero'
                DataSource = Colaboradores.DataSource1
                TabOrder = 0
              end
            end
          end
          object GroupBox7: TGroupBox
            AlignWithMargins = True
            Left = 350
            Top = 3
            Width = 454
            Height = 69
            Align = alClient
            Caption = ' Situa'#231#227'o '
            TabOrder = 1
            object Panel34: TPanel
              Left = 2
              Top = 17
              Width = 105
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label34: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 99
                Height = 15
                Align = alTop
                Caption = 'Situa'#231#227'o'
                FocusControl = DBEdit13
                ExplicitWidth = 45
              end
              object JvDBComboBox9: TJvDBComboBox
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 99
                Height = 23
                Align = alClient
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
            end
            object Panel35: TPanel
              Left = 107
              Top = 17
              Width = 120
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object Label36: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 114
                Height = 15
                Align = alTop
                Caption = 'Admiss'#227'o'
                ExplicitWidth = 52
              end
              object JvDBDateEdit1: TJvDBDateEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 114
                Height = 23
                Align = alClient
                DataField = 'dtadmissao'
                DataSource = Colaboradores.DataSource1
                ButtonWidth = 23
                ShowNullDate = False
                TabOrder = 0
              end
            end
            object Panel36: TPanel
              Left = 227
              Top = 17
              Width = 120
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 2
              object Label37: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 114
                Height = 15
                Align = alTop
                Caption = 'Demiss'#227'o'
                ExplicitWidth = 51
              end
              object JvDBDateEdit2: TJvDBDateEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 114
                Height = 23
                Align = alClient
                DataField = 'dtdemissao'
                DataSource = Colaboradores.DataSource1
                ButtonWidth = 23
                ShowNullDate = False
                TabOrder = 0
              end
            end
          end
        end
        object GroupBox3: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 349
          Width = 801
          Height = 84
          Align = alTop
          Caption = ' Assinatura (180mm X 10mm) '
          TabOrder = 4
          object Image1: TImage
            AlignWithMargins = True
            Left = 5
            Top = 20
            Width = 760
            Height = 59
            Align = alClient
            Center = True
            ExplicitTop = 22
          end
          object Panel29: TPanel
            Left = 768
            Top = 17
            Width = 31
            Height = 65
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            object SpeedButton1: TSpeedButton
              AlignWithMargins = True
              Left = 3
              Top = 6
              Width = 25
              Height = 25
              Margins.Top = 6
              Action = actImgAdd
              Align = alTop
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF002788AF000A8BB7000A8AB7002788
                AF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF000A6B9A000A6B9A00FF00FF00FF00FF002788AF000ADBFC000AD9FC002788
                AF00FF00FF00FF00FF000A6B9A000A6B9A00FF00FF00FF00FF00FF00FF000A6B
                9A000AE5FC000AE4FC000A6B9A00FF00FF002788AF000A8CB7000A8BB7002788
                AF00FF00FF000A6B9A000AD4FC000AD2FC000A6B9A00FF00FF00FF00FF000A6B
                9A000AE6FC000AE5FC000A6B9A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF000A6B9A000AD5FC000AD3FC000A6B9A00FF00FF00FF00FF00FF00
                FF000A6B9A000A6B9A00C3C9C90098B1BD000B9BC1000A79A7000A79A7000B99
                C10098B1BD00C3C9C9000A6B9A000A6B9A00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF0098B1BD000A89B3000AB3D5000AD3F0000AD1F0000AB0
                D5000A87B30098B1BD00FF00FF00FF00FF00FF00FF00FF00FF002B8AAE002B8A
                AE002E8AAD00FF00FF000B9DC1000AB5D5000AE4FC000AE4FC000AE2FC000AE0
                FC000AB0D5000C98C100FF00FF002E88AD002B88AE002B88AE000A92B7000AEF
                FC00118FB500FF00FF000A7AA7000AD9F0000AE6FC000AE4FC000AE3FC000AE2
                FC000AD1F0000A79A700FF00FF00118BB5000AD9FC000A8AB7000A92B7000AF0
                FC001190B500FF00FF000A7AA7000ADAF0000AE8FC000AE6FC000AE4FC000AE3
                FC000AD3F0000A79A700FF00FF00118BB5000ADBFC000A8BB7002B8BAE002B8B
                AE002E8AAD00FF00FF000B9EC1000AB8D5000AE9FC000AE8FC000AE6FC000AE4
                FC000AB3D5000C9AC100FF00FF002E88AD002B88AE002B88AE00FF00FF00FF00
                FF00FF00FF00FF00FF0098B1BD000A8BB3000AB8D5000ADAF0000AD8F0000AB5
                D5000A89B30098B1BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF000A6B9A000A6B9A00FF00FF0098B1BD000B9EC1000A7AA7000A7AA7000B9D
                C10098B1BD00FF00FF000A6B9A000A6B9A00FF00FF00FF00FF00FF00FF000A6B
                9A000AF6FC000AF4FC000A6B9A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF000A6B9A000AE4FC000AE3FC000A6B9A00FF00FF00FF00FF000A6B
                9A000AF7FC000AF6FC000A6B9A00FF00FF00278CAF000A91B7000A90B700278B
                AF00FF00FF000A6B9A000AE6FC000AE4FC000A6B9A00FF00FF00FF00FF00FF00
                FF000A6B9A000A6B9A00FF00FF00FF00FF00278CAF000AF0FC000AEEFC00278B
                AF00FF00FF00FF00FF000A6B9A000A6B9A00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00278CAF000A92B7000A92B700278B
                AF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              ExplicitTop = 3
            end
            object SpeedButton2: TSpeedButton
              AlignWithMargins = True
              Left = 3
              Top = 34
              Width = 25
              Height = 25
              Margins.Bottom = 6
              Action = actImgDel
              Align = alBottom
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00A9A9B8004B4E97001B2086000A0E77000A0E74001B1E
                7700494B8500A6A6B200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00C3C3C6004B50A4000C17A400192CC5002A40D5004258DE004A61E100374F
                DD002638C6000D128200494A8500C3C3C400FF00FF00FF00FF00FF00FF00C3C3
                C6002C38AD001022BF00263BD1003A4FD9004359DE004C62E200546BE5005E74
                E900657CED00546DE8001D29B1002A2B7A00C3C3C400FF00FF00FF00FF004C57
                BC000F22C2002133CC008891DF00737FDC003C50D900445ADE004E63E300566C
                E600939CE400AAAFE400697FED001D29B200494A8700FF00FF00A9ABC5000D23
                C6001022C100747FDA00FCF9F400FCF7F1008893E0003D52DA00465CDE00969E
                E300FCF1DF00FCEFDB00A9AFE4005870E9000E138800A6A6B3004958CB000E23
                C5000A19BB005A65D200FCFAF700FCF9F400FCF7F1008A93E0008C96E100FCF4
                E500FCF2E300FCF1DF00919CE4006A80ED002839C90046488900223AD2000B1C
                BE000A18B7000B1ABB006F78D800FCFAF700FCF9F400FCF7F100FCF7ED00FCF5
                E900FCF4E500969EE3005A70E6006379E9003F56DE00181C82001D39D6000A18
                B5000A17B3000A17B7000D1CBC006F79D700FCFAF700FCF9F400FCF7F100FCF7
                ED008C96E0004A5FDF005368E3005C72E6004F65E3000D1287002141DB000A17
                B2000A15AF000A16B3000A17B7007079D600FCFCFB00FCFAF700FCF9F400FCF7
                F1008C96E0004357DB004C61DF005469E300495FE0000D138E003251DD000C1A
                B8000A13AC000A15AF006E74D100FCFCFC00FCFCFC00FCFCFB00FCFAF700FCF9
                F400FCF7F1008D97E0004458DB004D62DF00354AD70018209A005F78DA00132A
                C8000A11A8005157C300FCFCFC00FCFCFC00FCFCFC006F78D500727CD800FCFA
                F700FCF9F400FCF7F1007A86DE00465ADB001F32CA00464CAA00B1B7CD002A50
                E3000B14AC007174CC00FCFCFC00FCFCFC006B72D1000A17B6001321BC00737C
                D800FCFAF700FCF9F4008A93E0003146D3000E1CBC00A6A8BF00FF00FF006681
                DE001D3CD5000D13A7007174CC004C51C1000A14AF000A16B2000B18B6001422
                BD005762D1008189DC002D3ECD00192DC9004953BB00FF00FF00FF00FF00C4C5
                C9005073E6001E3DD4000B14AC000A10A8000A12AC000A14AE000A16B2000D1A
                B7001624BD00192AC300182DCB003242C500C3C3C700FF00FF00FF00FF00FF00
                FF00C4C5C9006B89E200335CE800162CC9000C19B7000B17B5000B18B7000B1C
                BD001329C9001D36D1005363CC00C3C3C700FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00B2BBD0006C88E1004165E6003157E6002D51E3003653
                DD005C6FD500ABB0CA00FF00FF00FF00FF00FF00FF00FF00FF00}
              ExplicitTop = 33
            end
          end
        end
        object Panel37: TPanel
          Left = 0
          Top = 271
          Width = 807
          Height = 75
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 3
          object GroupBox8: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 638
            Height = 69
            Align = alLeft
            Caption = ' Cargo '
            TabOrder = 0
            object Panel38: TPanel
              Left = 2
              Top = 17
              Width = 242
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label39: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 236
                Height = 15
                Align = alTop
                Caption = 'Cargo'
                FocusControl = DBEdit27
                ExplicitWidth = 32
              end
              object DBEdit27: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 236
                Height = 23
                Align = alClient
                CharCase = ecUpperCase
                DataField = 'cargo'
                DataSource = Colaboradores.DataSource1
                TabOrder = 0
              end
            end
            object Panel39: TPanel
              Left = 244
              Top = 17
              Width = 278
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object Label12: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 272
                Height = 15
                Align = alTop
                Caption = 'Entidade de Classe'
                FocusControl = DBEdit25
                ExplicitWidth = 98
              end
              object JvDBLookupCombo1: TJvDBLookupCombo
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 272
                Height = 23
                Align = alClient
                DataField = 'conselho'
                DataSource = Colaboradores.DataSource1
                DisplayEmpty = 'Nenhum'
                LookupField = 'sigla'
                LookupDisplay = 'descri'
                LookupSource = Colaboradores.dsConselhos
                TabOrder = 0
              end
            end
            object Panel40: TPanel
              Left = 522
              Top = 17
              Width = 114
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 2
              object Label35: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 108
                Height = 15
                Align = alTop
                Caption = 'N'#250'mero'
                FocusControl = DBEdit25
                ExplicitWidth = 44
              end
              object DBEdit25: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 108
                Height = 23
                Align = alClient
                DataField = 'crq'
                DataSource = Colaboradores.DataSource1
                TabOrder = 0
              end
            end
          end
          object GroupBox9: TGroupBox
            AlignWithMargins = True
            Left = 647
            Top = 3
            Width = 157
            Height = 69
            Align = alClient
            Caption = ' Integra'#231#227'o c/ Sistema '
            TabOrder = 1
            object Label42: TLabel
              AlignWithMargins = True
              Left = 5
              Top = 20
              Width = 147
              Height = 15
              Align = alTop
              Caption = 'Login'
              FocusControl = DBEdit13
              ExplicitWidth = 30
            end
            object RxDBComboBox11: TJvDBComboBox
              AlignWithMargins = True
              Left = 5
              Top = 41
              Width = 147
              Height = 23
              Align = alClient
              DataField = 'account'
              DataSource = Colaboradores.DataSource1
              TabOrder = 0
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
              ExplicitLeft = 3
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 815
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 815
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      Width = 783
      ButtonWidth = 115
      ExplicitWidth = 783
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
    Left = 560
    Top = 8
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
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 
      'All (*.jpg;*.jpeg;)|*.jpg;*.jpeg;|JPEG Image File (*.jpg)|*.jpg|' +
      'JPEG Image File (*.jpeg)|*.jpeg'
    Title = 'Assinatura Digitalizada'
    Left = 464
    Top = 8
  end
end
