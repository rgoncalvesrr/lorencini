inherited VendedoresM: TVendedoresM
  Caption = 'Manuten'#231#227'o de Registro'
  ClientHeight = 444
  ClientWidth = 711
  ExplicitWidth = 717
  ExplicitHeight = 473
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 711
    Height = 400
    ExplicitWidth = 711
    ExplicitHeight = 400
    inherited Panel3: TPanel
      Top = 164
      Width = 701
      Align = alNone
      ExplicitTop = 164
      ExplicitWidth = 701
      inherited PageControl3: TPageControl
        Width = 695
        ExplicitWidth = 695
        inherited tsDet: TTabSheet
          ExplicitWidth = 687
          inherited DBGrid1: TDBGrid
            Width = 687
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 695
        ExplicitWidth = 695
        inherited ToolBar3: TToolBar
          Width = 654
          ExplicitWidth = 654
        end
      end
    end
    inherited PageControl1: TPageControl
      Width = 705
      Height = 394
      ExplicitWidth = 705
      ExplicitHeight = 394
      inherited TabSheet1: TTabSheet
        Caption = 'Vendedor'
        ExplicitWidth = 697
        ExplicitHeight = 364
        object Label1: TLabel
          Left = 3
          Top = 9
          Width = 50
          Height = 15
          Caption = 'Vendedor'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 61
          Top = 9
          Width = 33
          Height = 15
          Caption = 'Nome'
          FocusControl = DBEdit2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 447
          Top = 9
          Width = 21
          Height = 15
          Caption = 'CPF'
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 556
          Top = 9
          Width = 15
          Height = 15
          Caption = 'RG'
          FocusControl = DBEdit4
        end
        object Label17: TLabel
          Left = 368
          Top = 9
          Width = 35
          Height = 15
          Caption = 'Estado'
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 26
          Width = 52
          Height = 23
          DataField = 'idvendedor'
          DataSource = DM.dsVendedores
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 61
          Top = 26
          Width = 301
          Height = 23
          DataField = 'nome'
          DataSource = DM.dsVendedores
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 447
          Top = 26
          Width = 103
          Height = 23
          DataField = 'cpf'
          DataSource = DM.dsVendedores
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 556
          Top = 26
          Width = 117
          Height = 23
          DataField = 'rg'
          DataSource = DM.dsVendedores
          TabOrder = 3
        end
        object GroupBox1: TGroupBox
          Left = 3
          Top = 56
          Width = 684
          Height = 91
          Caption = ' Logradouro '
          TabOrder = 4
          object Label5: TLabel
            Left = 12
            Top = 34
            Width = 62
            Height = 15
            Caption = 'Logradouro'
            FocusControl = DBEdit5
          end
          object Label6: TLabel
            Left = 350
            Top = 34
            Width = 31
            Height = 15
            Caption = 'Bairro'
            FocusControl = DBEdit6
          end
          object Label7: TLabel
            Left = 12
            Top = 64
            Width = 37
            Height = 15
            Caption = 'Cidade'
            FocusControl = DBEdit7
          end
          object Label8: TLabel
            Left = 350
            Top = 64
            Width = 14
            Height = 15
            Caption = 'UF'
            FocusControl = DBEdit8
          end
          object DBEdit5: TDBEdit
            Left = 78
            Top = 26
            Width = 240
            Height = 23
            DataField = 'endereco'
            DataSource = DM.dsVendedores
            TabOrder = 0
          end
          object DBEdit6: TDBEdit
            Left = 438
            Top = 26
            Width = 232
            Height = 23
            DataField = 'bairro'
            DataSource = DM.dsVendedores
            TabOrder = 1
          end
          object DBEdit7: TDBEdit
            Left = 78
            Top = 56
            Width = 257
            Height = 23
            DataField = 'cidade'
            DataSource = DM.dsVendedores
            TabOrder = 2
          end
          object DBEdit8: TDBEdit
            Left = 438
            Top = 56
            Width = 26
            Height = 23
            CharCase = ecUpperCase
            DataField = 'estado'
            DataSource = DM.dsVendedores
            TabOrder = 3
          end
        end
        object GroupBox2: TGroupBox
          Left = 3
          Top = 153
          Width = 684
          Height = 83
          Caption = ' Contato '
          TabOrder = 6
          object Label9: TLabel
            Left = 12
            Top = 26
            Width = 45
            Height = 15
            Caption = 'Telefone'
            FocusControl = DBEdit9
          end
          object Label10: TLabel
            Left = 350
            Top = 26
            Width = 37
            Height = 15
            Caption = 'Celular'
            FocusControl = DBEdit10
          end
          object Label11: TLabel
            Left = 12
            Top = 56
            Width = 34
            Height = 15
            Caption = 'E-Mail'
            FocusControl = DBEdit11
          end
          object DBEdit9: TDBEdit
            Left = 78
            Top = 17
            Width = 230
            Height = 23
            DataField = 'telefone'
            DataSource = DM.dsVendedores
            TabOrder = 0
          end
          object DBEdit10: TDBEdit
            Left = 438
            Top = 17
            Width = 230
            Height = 23
            DataField = 'celular'
            DataSource = DM.dsVendedores
            TabOrder = 1
          end
          object DBEdit11: TDBEdit
            Left = 78
            Top = 47
            Width = 257
            Height = 23
            DataField = 'email'
            DataSource = DM.dsVendedores
            TabOrder = 2
          end
        end
        object GroupBox3: TGroupBox
          Left = 3
          Top = 242
          Width = 684
          Height = 119
          Caption = ' Outras Informa'#231#245'es '
          TabOrder = 5
          object Label12: TLabel
            Left = 12
            Top = 34
            Width = 40
            Height = 15
            Caption = 'C.N.P.J.'
            FocusControl = DBEdit12
          end
          object Label13: TLabel
            Left = 350
            Top = 34
            Width = 71
            Height = 15
            Caption = 'Insc. Estadual'
            FocusControl = DBEdit13
          end
          object Label14: TLabel
            Left = 12
            Top = 64
            Width = 52
            Height = 15
            Caption = 'Comiss'#227'o'
            FocusControl = DBEdit14
          end
          object Label15: TLabel
            Left = 350
            Top = 64
            Width = 81
            Height = 15
            Caption = 'Ajuda de Custo'
            FocusControl = DBEdit15
          end
          object Label16: TLabel
            Left = 12
            Top = 94
            Width = 30
            Height = 15
            Caption = 'Login'
          end
          object DBEdit12: TDBEdit
            Left = 78
            Top = 26
            Width = 215
            Height = 23
            DataField = 'cnpj'
            DataSource = DM.dsVendedores
            TabOrder = 0
          end
          object DBEdit13: TDBEdit
            Left = 438
            Top = 26
            Width = 230
            Height = 23
            DataField = 'inscrestadual'
            DataSource = DM.dsVendedores
            TabOrder = 1
          end
          object DBEdit14: TDBEdit
            Left = 78
            Top = 56
            Width = 55
            Height = 23
            DataField = 'comissao'
            DataSource = DM.dsVendedores
            TabOrder = 2
          end
          object DBEdit15: TDBEdit
            Left = 438
            Top = 56
            Width = 95
            Height = 23
            DataField = 'ajudacusto'
            DataSource = DM.dsVendedores
            TabOrder = 3
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 78
            Top = 86
            Width = 257
            Height = 23
            DataField = 'username'
            DataSource = DM.dsVendedores
            KeyField = 'username'
            ListField = 'name'
            ListSource = DM.dsSysUsers
            TabOrder = 4
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 705
    ExplicitWidth = 705
    inherited ToolBar1: TToolBar
      Width = 664
      ExplicitWidth = 664
    end
  end
  inherited alDef: TActionList
    Left = 224
  end
end
