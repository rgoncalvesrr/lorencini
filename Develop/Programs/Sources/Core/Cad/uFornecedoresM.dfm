inherited FornecedoresM: TFornecedoresM
  Caption = 'Cadastro de Fornecedores'
  ClientHeight = 508
  ClientWidth = 804
  ExplicitWidth = 810
  ExplicitHeight = 537
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 804
    Height = 464
    ExplicitLeft = 0
    ExplicitWidth = 804
    ExplicitHeight = 464
    inherited Panel3: TPanel
      Align = alNone
      ExplicitTop = 195
      ExplicitWidth = 639
      inherited PageControl3: TPageControl
        ExplicitLeft = 3
        ExplicitTop = 47
        ExplicitWidth = 633
        ExplicitHeight = 185
        inherited tsDet: TTabSheet
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 625
          ExplicitHeight = 155
        end
      end
      inherited ControlBar2: TControlBar
        inherited ToolBar3: TToolBar
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
      Width = 798
      Height = 458
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 798
      ExplicitHeight = 458
      inherited TabSheet1: TTabSheet
        Caption = 'Manuten'#231#227'o de Fornecedor'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 790
        ExplicitHeight = 428
        object Label1: TLabel
          Left = 3
          Top = 13
          Width = 39
          Height = 15
          Caption = 'C'#243'digo'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 45
          Top = 13
          Width = 73
          Height = 15
          Caption = 'Raz'#227'o Social'
          FocusControl = DBEdit2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 351
          Top = 13
          Width = 84
          Height = 15
          Caption = 'Nome Fantasia'
          FocusControl = DBEdit3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 539
          Top = 13
          Width = 37
          Height = 15
          Caption = 'C.N.P.J'
          FocusControl = DBEdit4
        end
        object Label5: TLabel
          Left = 670
          Top = 13
          Width = 71
          Height = 15
          Caption = 'Insc. Estadual'
          FocusControl = DBEdit5
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 30
          Width = 36
          Height = 23
          DataField = 'codigo'
          DataSource = DM.dsForn
          Enabled = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 45
          Top = 30
          Width = 300
          Height = 23
          DataField = 'empresa'
          DataSource = DM.dsForn
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 351
          Top = 30
          Width = 182
          Height = 23
          DataField = 'nome_chave'
          DataSource = DM.dsForn
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 539
          Top = 30
          Width = 124
          Height = 23
          DataField = 'cnpj'
          DataSource = DM.dsForn
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 670
          Top = 30
          Width = 105
          Height = 23
          DataField = 'inscricao'
          DataSource = DM.dsForn
          TabOrder = 4
        end
        object GroupBox1: TGroupBox
          Left = 3
          Top = 60
          Width = 772
          Height = 130
          Caption = ' Logradouro '
          TabOrder = 5
          object Label6: TLabel
            Left = 10
            Top = 39
            Width = 49
            Height = 15
            Caption = 'Endere'#231'o'
            FocusControl = DBEdit6
          end
          object Label7: TLabel
            Left = 376
            Top = 39
            Width = 31
            Height = 15
            Caption = 'Bairro'
            FocusControl = DBEdit7
          end
          object Label8: TLabel
            Left = 10
            Top = 69
            Width = 37
            Height = 15
            Caption = 'Cidade'
            FocusControl = DBEdit8
          end
          object Label9: TLabel
            Left = 376
            Top = 69
            Width = 35
            Height = 15
            Caption = 'Estado'
            FocusControl = DBEdit9
          end
          object Label10: TLabel
            Left = 10
            Top = 99
            Width = 21
            Height = 15
            Caption = 'CEP'
            FocusControl = DBEdit10
          end
          object DBEdit6: TDBEdit
            Left = 78
            Top = 30
            Width = 264
            Height = 23
            DataField = 'endereco'
            DataSource = DM.dsForn
            TabOrder = 0
          end
          object DBEdit7: TDBEdit
            Left = 437
            Top = 30
            Width = 318
            Height = 23
            DataField = 'bairro'
            DataSource = DM.dsForn
            TabOrder = 1
          end
          object DBEdit8: TDBEdit
            Left = 78
            Top = 60
            Width = 240
            Height = 23
            DataField = 'cidade'
            DataSource = DM.dsForn
            TabOrder = 2
          end
          object DBEdit9: TDBEdit
            Left = 437
            Top = 60
            Width = 34
            Height = 23
            DataField = 'estado'
            DataSource = DM.dsForn
            TabOrder = 3
          end
          object DBEdit10: TDBEdit
            Left = 78
            Top = 90
            Width = 77
            Height = 23
            DataField = 'cep'
            DataSource = DM.dsForn
            TabOrder = 4
          end
        end
        object GroupBox2: TGroupBox
          Left = 3
          Top = 196
          Width = 772
          Height = 88
          Caption = ' Contato '
          TabOrder = 6
          object Label11: TLabel
            Left = 10
            Top = 32
            Width = 45
            Height = 15
            Caption = 'Telefone'
            FocusControl = DBEdit11
          end
          object Label12: TLabel
            Left = 376
            Top = 32
            Width = 17
            Height = 15
            Caption = 'Fax'
            FocusControl = DBEdit12
          end
          object Label13: TLabel
            Left = 10
            Top = 62
            Width = 29
            Height = 15
            Caption = 'Email'
            FocusControl = DBEdit13
          end
          object Label14: TLabel
            Left = 376
            Top = 62
            Width = 19
            Height = 15
            Caption = 'Site'
            FocusControl = DBEdit14
          end
          object DBEdit11: TDBEdit
            Left = 60
            Top = 24
            Width = 239
            Height = 23
            DataField = 'telefone'
            DataSource = DM.dsForn
            TabOrder = 0
          end
          object DBEdit12: TDBEdit
            Left = 437
            Top = 24
            Width = 223
            Height = 23
            DataField = 'fax'
            DataSource = DM.dsForn
            TabOrder = 1
          end
          object DBEdit13: TDBEdit
            Left = 60
            Top = 54
            Width = 282
            Height = 23
            DataField = 'email'
            DataSource = DM.dsForn
            TabOrder = 2
          end
          object DBEdit14: TDBEdit
            Left = 437
            Top = 54
            Width = 318
            Height = 23
            DataField = 'website'
            DataSource = DM.dsForn
            TabOrder = 3
          end
        end
        object GroupBox3: TGroupBox
          Left = 3
          Top = 290
          Width = 772
          Height = 139
          Caption = ' Outras Informa'#231#245'es '
          TabOrder = 7
          object Label15: TLabel
            Left = 10
            Top = 26
            Width = 45
            Height = 15
            Caption = 'Situa'#231#227'o'
          end
          object Label16: TLabel
            Left = 10
            Top = 75
            Width = 47
            Height = 15
            Caption = 'Cadastro'
            FocusControl = DBEdit15
          end
          object Label17: TLabel
            Left = 124
            Top = 26
            Width = 67
            Height = 15
            Caption = 'Observa'#231#245'es'
            FocusControl = DBMemo1
          end
          object DBComboBox1: TDBComboBox
            Left = 10
            Top = 47
            Width = 86
            Height = 23
            DataField = 'situacao'
            DataSource = DM.dsForn
            ItemHeight = 15
            Items.Strings = (
              'ATIVO'
              'INATIVO')
            TabOrder = 0
          end
          object DBCheckBox1: TDBCheckBox
            Left = 448
            Top = 26
            Width = 104
            Height = 18
            Caption = 'Restri'#231#227'o'
            DataField = 'restricao'
            DataSource = DM.dsForn
            TabOrder = 1
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DBEdit15: TDBEdit
            Left = 10
            Top = 92
            Width = 86
            Height = 23
            DataField = 'dtcadastro'
            DataSource = DM.dsForn
            TabOrder = 2
          end
          object DBMemo1: TDBMemo
            Left = 124
            Top = 47
            Width = 316
            Height = 83
            DataField = 'observacao'
            DataSource = DM.dsForn
            TabOrder = 3
          end
          object DBMemo2: TDBMemo
            Left = 448
            Top = 47
            Width = 316
            Height = 83
            DataField = 'restrmotiv'
            DataSource = DM.dsForn
            TabOrder = 4
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 798
    ExplicitWidth = 798
    inherited ToolBar1: TToolBar
      Width = 750
      ExplicitWidth = 750
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
  end
end
