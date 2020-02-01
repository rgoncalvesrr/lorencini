inherited IndicesM: TIndicesM
  Caption = 'Manuten'#231#227'o de '#205'ndices'
  ClientHeight = 328
  ExplicitHeight = 357
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Height = 284
    ExplicitHeight = 284
    inherited Panel3: TPanel
      Top = 8
      Width = 587
      Align = alNone
      ExplicitTop = 8
      ExplicitWidth = 587
      inherited PageControl3: TPageControl
        Width = 581
        ExplicitWidth = 581
        inherited tsDet: TTabSheet
          ExplicitWidth = 573
          inherited DBGrid1: TDBGrid
            Width = 573
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 581
        ExplicitWidth = 581
        inherited ToolBar3: TToolBar
          Width = 548
          ExplicitWidth = 548
        end
      end
    end
    inherited PageControl1: TPageControl
      Height = 278
      ExplicitHeight = 278
      inherited TabSheet1: TTabSheet
        Caption = #205'ndice'
        ExplicitHeight = 248
        object GroupBox1: TGroupBox
          Left = 4
          Top = 4
          Width = 596
          Height = 75
          Caption = ' Informa'#231#245'es Gerais '
          TabOrder = 0
          object Label1: TLabel
            Left = 9
            Top = 21
            Width = 45
            Height = 15
            Caption = 'Vig'#234'ncia'
          end
          object Label5: TLabel
            Left = 156
            Top = 21
            Width = 40
            Height = 15
            Caption = 'Regime'
          end
          object Label13: TLabel
            Left = 316
            Top = 21
            Width = 23
            Height = 15
            Caption = 'IRPF'
          end
          object Label14: TLabel
            Left = 454
            Top = 21
            Width = 72
            Height = 15
            Caption = 'Custo Interno'
          end
          object DBComboBox1: TDBComboBox
            Left = 153
            Top = 43
            Width = 156
            Height = 23
            Style = csDropDownList
            DataField = 'regime'
            DataSource = Indices.DataSource1
            ItemHeight = 15
            Items.Strings = (
              'Lucro Presumido'
              'Simples Nacional')
            TabOrder = 1
          end
          object JvDBDateEdit1: TJvDBDateEdit
            Left = 9
            Top = 43
            Width = 138
            Height = 23
            DataField = 'vigencia'
            DataSource = Indices.DataSource1
            ButtonWidth = 23
            ShowNullDate = False
            TabOrder = 0
          end
          object JvDBCalcEdit1: TJvDBCalcEdit
            Left = 316
            Top = 43
            Width = 130
            Height = 23
            ButtonWidth = 23
            TabOrder = 2
            DecimalPlacesAlwaysShown = False
            DataField = 'irpf'
            DataSource = Indices.DataSource1
          end
          object JvDBCalcEdit2: TJvDBCalcEdit
            Left = 454
            Top = 43
            Width = 130
            Height = 23
            ButtonWidth = 23
            TabOrder = 3
            DecimalPlacesAlwaysShown = False
            DataField = 'ci'
            DataSource = Indices.DataSource1
          end
        end
        object GroupBox3: TGroupBox
          Left = 4
          Top = 165
          Width = 596
          Height = 76
          Caption = ' Aliquotas para Servi'#231'os'
          TabOrder = 2
          object Label10: TLabel
            Left = 79
            Top = 21
            Width = 16
            Height = 15
            Caption = 'PIS'
          end
          object Label11: TLabel
            Left = 153
            Top = 21
            Width = 34
            Height = 15
            Caption = 'Cofins'
          end
          object Label12: TLabel
            Left = 227
            Top = 21
            Width = 20
            Height = 15
            Caption = 'IRPJ'
          end
          object Label15: TLabel
            Left = 300
            Top = 21
            Width = 26
            Height = 15
            Caption = 'CSSL'
          end
          object Label17: TLabel
            Left = 523
            Top = 20
            Width = 52
            Height = 15
            Caption = 'Comiss'#227'o'
          end
          object Label18: TLabel
            Left = 374
            Top = 21
            Width = 24
            Height = 15
            Caption = 'INSS'
          end
          object Label19: TLabel
            Left = 449
            Top = 21
            Width = 26
            Height = 15
            Caption = 'Total'
          end
          object Label20: TLabel
            Left = 6
            Top = 21
            Width = 15
            Height = 15
            Caption = 'ISS'
          end
          object DBEdit9: TDBEdit
            Left = 6
            Top = 40
            Width = 68
            Height = 23
            DataField = 'iss'
            DataSource = Indices.DataSource1
            TabOrder = 0
          end
          object DBEdit10: TDBEdit
            Left = 79
            Top = 40
            Width = 68
            Height = 23
            DataField = 'pis_srv'
            DataSource = Indices.DataSource1
            TabOrder = 1
          end
          object DBEdit11: TDBEdit
            Left = 153
            Top = 40
            Width = 68
            Height = 23
            DataField = 'cofins_srv'
            DataSource = Indices.DataSource1
            TabOrder = 2
          end
          object DBEdit12: TDBEdit
            Left = 227
            Top = 40
            Width = 68
            Height = 23
            DataField = 'irpj_srv'
            DataSource = Indices.DataSource1
            TabOrder = 3
          end
          object DBEdit13: TDBEdit
            Left = 300
            Top = 40
            Width = 68
            Height = 23
            DataField = 'cssl_srv'
            DataSource = Indices.DataSource1
            TabOrder = 4
          end
          object DBEdit14: TDBEdit
            Left = 374
            Top = 40
            Width = 67
            Height = 23
            DataField = 'inss_srv'
            DataSource = Indices.DataSource1
            TabOrder = 5
          end
          object DBEdit15: TDBEdit
            Left = 449
            Top = 40
            Width = 67
            Height = 23
            DataField = 'aliq_srv'
            DataSource = Indices.DataSource1
            Enabled = False
            TabOrder = 6
          end
          object DBEdit16: TDBEdit
            Left = 523
            Top = 40
            Width = 67
            Height = 23
            DataField = 'com_srv'
            DataSource = Indices.DataSource1
            TabOrder = 7
          end
        end
        object GroupBox2: TGroupBox
          Left = 4
          Top = 84
          Width = 596
          Height = 76
          Caption = ' Aliquotas para Materiais '
          TabOrder = 1
          object Label3: TLabel
            Left = 79
            Top = 21
            Width = 16
            Height = 15
            Caption = 'PIS'
          end
          object Label4: TLabel
            Left = 153
            Top = 21
            Width = 34
            Height = 15
            Caption = 'Cofins'
          end
          object Label6: TLabel
            Left = 227
            Top = 21
            Width = 20
            Height = 15
            Caption = 'IRPJ'
          end
          object Label8: TLabel
            Left = 300
            Top = 21
            Width = 26
            Height = 15
            Caption = 'CSSL'
          end
          object Label16: TLabel
            Left = 523
            Top = 20
            Width = 52
            Height = 15
            Caption = 'Comiss'#227'o'
          end
          object Label2: TLabel
            Left = 374
            Top = 21
            Width = 24
            Height = 15
            Caption = 'INSS'
          end
          object Label7: TLabel
            Left = 449
            Top = 21
            Width = 26
            Height = 15
            Caption = 'Total'
          end
          object Label9: TLabel
            Left = 6
            Top = 21
            Width = 28
            Height = 15
            Caption = 'ICMS'
          end
          object DBEdit1: TDBEdit
            Left = 6
            Top = 40
            Width = 68
            Height = 23
            DataField = 'icms'
            DataSource = Indices.DataSource1
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 79
            Top = 40
            Width = 68
            Height = 23
            DataField = 'pis'
            DataSource = Indices.DataSource1
            TabOrder = 1
          end
          object DBEdit3: TDBEdit
            Left = 153
            Top = 40
            Width = 68
            Height = 23
            DataField = 'cofins'
            DataSource = Indices.DataSource1
            TabOrder = 2
          end
          object DBEdit4: TDBEdit
            Left = 227
            Top = 40
            Width = 68
            Height = 23
            DataField = 'irpj_mat'
            DataSource = Indices.DataSource1
            TabOrder = 3
          end
          object DBEdit5: TDBEdit
            Left = 300
            Top = 40
            Width = 68
            Height = 23
            DataField = 'cssl_mat'
            DataSource = Indices.DataSource1
            TabOrder = 4
          end
          object DBEdit6: TDBEdit
            Left = 374
            Top = 40
            Width = 67
            Height = 23
            DataField = 'inss_mat'
            DataSource = Indices.DataSource1
            TabOrder = 5
          end
          object DBEdit7: TDBEdit
            Left = 449
            Top = 40
            Width = 67
            Height = 23
            DataField = 'aliq_mat'
            DataSource = Indices.DataSource1
            Enabled = False
            TabOrder = 6
          end
          object DBEdit8: TDBEdit
            Left = 523
            Top = 40
            Width = 67
            Height = 23
            DataField = 'com_mat'
            DataSource = Indices.DataSource1
            TabOrder = 7
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    inherited ToolBar1: TToolBar
      Width = 596
      ExplicitWidth = 596
    end
  end
  inherited alDef: TActionList
    Left = 208
  end
end
