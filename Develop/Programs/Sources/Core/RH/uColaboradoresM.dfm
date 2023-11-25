inherited ColaboradoresM: TColaboradoresM
  Caption = 'Edi'#231#227'o de Colaboradores'
  ClientHeight = 524
  ClientWidth = 958
  Constraints.MinWidth = 691
  ExplicitWidth = 964
  ExplicitHeight = 553
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 958
    Height = 480
    ExplicitWidth = 958
    ExplicitHeight = 480
    inherited Panel3: TPanel
      Top = 295
      Width = 670
      Align = alNone
      ExplicitTop = 295
      ExplicitWidth = 670
      inherited PageControl3: TPageControl
        Width = 664
        ExplicitWidth = 664
        inherited tsDet: TTabSheet
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 656
          ExplicitHeight = 155
          inherited DBGrid1: TDBGrid
            Width = 656
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 664
        ExplicitWidth = 664
        inherited ToolBar3: TToolBar
          Width = 651
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
      Width = 952
      Height = 474
      ExplicitWidth = 952
      ExplicitHeight = 474
      inherited TabSheet1: TTabSheet
        Caption = 'Colaborador'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 944
        ExplicitHeight = 444
        object GroupBox1: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 53
          Width = 938
          Height = 140
          Align = alTop
          Caption = ' Logradouro e Contato '
          TabOrder = 1
          object Panel8: TPanel
            Left = 2
            Top = 17
            Width = 934
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
            Width = 934
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
            Width = 934
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
            Width = 934
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
          Width = 944
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
            Width = 633
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 627
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
              Width = 627
              Height = 23
              Align = alClient
              CharCase = ecUpperCase
              DataField = 'nome'
              DataSource = Colaboradores.DataSource1
              TabOrder = 0
            end
          end
          object Panel6: TPanel
            Left = 704
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
            Left = 824
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
          Width = 944
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
            Width = 591
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
            object Panel33: TPanel
              Left = 347
              Top = 17
              Width = 242
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 3
              object DBCheckBox1: TDBCheckBox
                AlignWithMargins = True
                Left = 3
                Top = 23
                Width = 236
                Height = 24
                Margins.Top = 23
                Align = alClient
                Caption = 'Respons'#225'vel T'#233'cnico pelo Laborat'#243'rio'
                DataField = 'resptec'
                DataSource = Colaboradores.DataSource1
                TabOrder = 0
                ValueChecked = 'True'
                ValueUnchecked = 'False'
              end
            end
          end
        end
        object GroupBox3: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 349
          Width = 938
          Height = 84
          Align = alTop
          Caption = ' Assinatura (180mm X 10mm) '
          TabOrder = 4
          object Image1: TImage
            AlignWithMargins = True
            Left = 5
            Top = 20
            Width = 897
            Height = 59
            Align = alClient
            Center = True
            ExplicitTop = 22
          end
          object Panel29: TPanel
            Left = 905
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
              ExplicitTop = 33
            end
          end
        end
        object Panel37: TPanel
          Left = 0
          Top = 271
          Width = 944
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
            Width = 294
            Height = 69
            Align = alClient
            Caption = ' Integra'#231#227'o c/ Sistema '
            TabOrder = 1
            object Label42: TLabel
              AlignWithMargins = True
              Left = 5
              Top = 20
              Width = 284
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
              Width = 284
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
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 952
    ExplicitWidth = 952
    inherited ToolBar1: TToolBar
      Width = 783
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
