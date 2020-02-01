inherited OSMMO: TOSMMO
  Caption = 'M'#227'o-de-Obra para Ordem de Servi'#231'o'
  ClientHeight = 201
  ClientWidth = 651
  ExplicitWidth = 657
  ExplicitHeight = 230
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 651
    Height = 157
    ExplicitTop = 44
    ExplicitWidth = 651
    ExplicitHeight = 157
    inherited Panel3: TPanel
      Align = alNone
      ExplicitTop = 195
      inherited PageControl3: TPageControl
        ExplicitTop = 47
        ExplicitHeight = 185
        inherited tsDet: TTabSheet
          ExplicitHeight = 155
        end
      end
    end
    inherited PageControl1: TPageControl
      Width = 645
      Height = 151
      ExplicitWidth = 645
      ExplicitHeight = 151
      inherited TabSheet1: TTabSheet
        Caption = 'M'#227'o-de-Obra'
        ExplicitWidth = 637
        ExplicitHeight = 121
        object Label2: TLabel
          Left = 3
          Top = 6
          Width = 39
          Height = 15
          Caption = 'Fun'#231#227'o'
          FocusControl = DBEdit1
        end
        object Label1: TLabel
          Left = 354
          Top = 6
          Width = 62
          Height = 15
          Caption = 'Quantidade'
          FocusControl = DBEdit1
        end
        object Label3: TLabel
          Left = 430
          Top = 6
          Width = 10
          Height = 15
          Caption = '%'
          FocusControl = DBEdit2
        end
        object Label4: TLabel
          Left = 470
          Top = 6
          Width = 25
          Height = 15
          Caption = 'Total'
          FocusControl = DBEdit3
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 3
          Top = 24
          Width = 344
          Height = 23
          DataField = 'func'
          DataSource = OS.dsMObra
          KeyField = 'id'
          ListField = 'descricao'
          ListSource = DM.dsFuncoes
          TabOrder = 0
        end
        object DBEdit1: TDBEdit
          Left = 354
          Top = 24
          Width = 69
          Height = 23
          DataField = 'qtde'
          DataSource = OS.dsMObra
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 430
          Top = 24
          Width = 34
          Height = 23
          DataField = 'percentual'
          DataSource = OS.dsMObra
          Enabled = False
          TabOrder = 2
        end
        object DBEdit3: TDBEdit
          Left = 470
          Top = 24
          Width = 155
          Height = 23
          DataField = 'valor_total'
          DataSource = OS.dsMObra
          Enabled = False
          TabOrder = 3
        end
        object GroupBox1: TGroupBox
          Left = 3
          Top = 54
          Width = 152
          Height = 67
          Caption = ' Dias '#218'teis '
          TabOrder = 4
          object Label5: TLabel
            Left = 9
            Top = 17
            Width = 26
            Height = 15
            Caption = #218'teis'
            FocusControl = DBEdit4
          end
          object Label6: TLabel
            Left = 56
            Top = 17
            Width = 31
            Height = 15
            Caption = 'Horas'
            FocusControl = DBEdit5
          end
          object Label7: TLabel
            Left = 103
            Top = 17
            Width = 39
            Height = 15
            Caption = 'Vl Hora'
            FocusControl = DBEdit6
          end
          object DBEdit4: TDBEdit
            Left = 9
            Top = 34
            Width = 42
            Height = 23
            DataField = 'uteis_dias'
            DataSource = OS.dsMObra
            TabOrder = 0
          end
          object DBEdit5: TDBEdit
            Left = 56
            Top = 34
            Width = 43
            Height = 23
            DataField = 'uteis_hrs_dia'
            DataSource = OS.dsMObra
            TabOrder = 1
          end
          object DBEdit6: TDBEdit
            Left = 103
            Top = 34
            Width = 43
            Height = 23
            DataField = 'uteis_vlr_hora'
            DataSource = OS.dsMObra
            Enabled = False
            TabOrder = 2
          end
        end
        object GroupBox2: TGroupBox
          Left = 160
          Top = 54
          Width = 152
          Height = 67
          Caption = ' Hora Extra 50% '
          TabOrder = 5
          object Label8: TLabel
            Left = 9
            Top = 17
            Width = 26
            Height = 15
            Caption = #218'teis'
            FocusControl = DBEdit7
          end
          object Label9: TLabel
            Left = 56
            Top = 17
            Width = 31
            Height = 15
            Caption = 'Horas'
            FocusControl = DBEdit8
          end
          object Label10: TLabel
            Left = 103
            Top = 17
            Width = 39
            Height = 15
            Caption = 'Vl Hora'
            FocusControl = DBEdit9
          end
          object DBEdit7: TDBEdit
            Left = 9
            Top = 34
            Width = 42
            Height = 23
            DataField = 'sabado_dias'
            DataSource = OS.dsMObra
            TabOrder = 0
          end
          object DBEdit8: TDBEdit
            Left = 56
            Top = 34
            Width = 43
            Height = 23
            DataField = 'sabado_hrs_dia'
            DataSource = OS.dsMObra
            TabOrder = 1
          end
          object DBEdit9: TDBEdit
            Left = 103
            Top = 34
            Width = 43
            Height = 23
            DataField = 'sabado_vlr_hora'
            DataSource = OS.dsMObra
            Enabled = False
            TabOrder = 2
          end
        end
        object GroupBox3: TGroupBox
          Left = 473
          Top = 54
          Width = 152
          Height = 67
          Caption = ' Adicional Noturno '
          TabOrder = 7
          object Label11: TLabel
            Left = 9
            Top = 17
            Width = 26
            Height = 15
            Caption = #218'teis'
            FocusControl = DBEdit10
          end
          object Label12: TLabel
            Left = 56
            Top = 17
            Width = 31
            Height = 15
            Caption = 'Horas'
            FocusControl = DBEdit11
          end
          object Label13: TLabel
            Left = 103
            Top = 17
            Width = 39
            Height = 15
            Caption = 'Vl Hora'
            FocusControl = DBEdit12
          end
          object DBEdit10: TDBEdit
            Left = 9
            Top = 34
            Width = 42
            Height = 23
            DataField = 'adic_not_dias'
            DataSource = OS.dsMObra
            TabOrder = 0
          end
          object DBEdit11: TDBEdit
            Left = 56
            Top = 34
            Width = 43
            Height = 23
            DataField = 'adic_not_hrs_dia'
            DataSource = OS.dsMObra
            TabOrder = 1
          end
          object DBEdit12: TDBEdit
            Left = 103
            Top = 34
            Width = 43
            Height = 23
            DataField = 'adic_not_vlr_hora'
            DataSource = OS.dsMObra
            Enabled = False
            TabOrder = 2
          end
        end
        object GroupBox4: TGroupBox
          Left = 316
          Top = 54
          Width = 152
          Height = 67
          Caption = ' Hora Extra 100% '
          TabOrder = 6
          object Label14: TLabel
            Left = 9
            Top = 17
            Width = 26
            Height = 15
            Caption = #218'teis'
            FocusControl = DBEdit13
          end
          object Label15: TLabel
            Left = 56
            Top = 17
            Width = 31
            Height = 15
            Caption = 'Horas'
            FocusControl = DBEdit14
          end
          object Label16: TLabel
            Left = 103
            Top = 17
            Width = 39
            Height = 15
            Caption = 'Vl Hora'
            FocusControl = DBEdit15
          end
          object DBEdit13: TDBEdit
            Left = 9
            Top = 34
            Width = 42
            Height = 23
            DataField = 'domingo_dias'
            DataSource = OS.dsMObra
            TabOrder = 0
          end
          object DBEdit14: TDBEdit
            Left = 56
            Top = 34
            Width = 43
            Height = 23
            DataField = 'domingo_hrs_dia'
            DataSource = OS.dsMObra
            TabOrder = 1
          end
          object DBEdit15: TDBEdit
            Left = 103
            Top = 34
            Width = 43
            Height = 23
            DataField = 'domingo_vlr_hora'
            DataSource = OS.dsMObra
            Enabled = False
            TabOrder = 2
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 645
    ExplicitWidth = 645
    inherited ToolBar1: TToolBar
      Width = 632
      ExplicitWidth = 632
    end
  end
  inherited alDef: TActionList
    Left = 192
  end
end
