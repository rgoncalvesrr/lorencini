inherited ProdutosM: TProdutosM
  Caption = 'Cadastro de Materiais'
  ClientHeight = 245
  ClientWidth = 645
  ExplicitWidth = 651
  ExplicitHeight = 273
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 645
    Height = 201
    ExplicitTop = 35
    ExplicitWidth = 645
    ExplicitHeight = 210
    inherited Panel3: TPanel
      Top = -46
      Width = 634
      Align = alNone
      ExplicitTop = -46
      ExplicitWidth = 634
      inherited PageControl3: TPageControl
        Top = 47
        Width = 628
        Height = 185
        ExplicitLeft = 3
        ExplicitTop = 38
        ExplicitWidth = 628
        ExplicitHeight = 194
        inherited tsDet: TTabSheet
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 620
          ExplicitHeight = 164
          inherited DBGrid1: TDBGrid
            Width = 620
            Height = 155
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 628
        Height = 38
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 628
        ExplicitHeight = 38
        inherited ToolBar3: TToolBar
          Width = 592
          ButtonWidth = 129
          ExplicitWidth = 592
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
      Width = 639
      Height = 195
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 639
      ExplicitHeight = 204
      inherited TabSheet1: TTabSheet
        Caption = 'Material'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 631
        ExplicitHeight = 174
        object Label1: TLabel
          Left = 3
          Top = 9
          Width = 39
          Height = 15
          Caption = 'C'#243'digo'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 164
          Top = 9
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit2
        end
        object Bevel6: TBevel
          Left = 3
          Top = 56
          Width = 615
          Height = 2
          Shape = bsTopLine
        end
        object Label5: TLabel
          Left = 3
          Top = 111
          Width = 31
          Height = 15
          Caption = 'Custo'
          FocusControl = DBEdit3
        end
        object Label6: TLabel
          Left = 106
          Top = 111
          Width = 13
          Height = 15
          Caption = 'IPI'
          FocusControl = DBEdit4
        end
        object Label7: TLabel
          Left = 164
          Top = 111
          Width = 94
          Height = 15
          Caption = 'Margem de Lucro'
          FocusControl = DBEdit5
        end
        object Label8: TLabel
          Left = 259
          Top = 111
          Width = 79
          Height = 15
          Caption = 'Valor de Venda'
          FocusControl = DBEdit6
        end
        object Label9: TLabel
          Left = 347
          Top = 111
          Width = 44
          Height = 15
          Caption = 'Unidade'
        end
        object Label10: TLabel
          Left = 447
          Top = 111
          Width = 88
          Height = 15
          Caption = 'Qtd. em Estoque'
          FocusControl = DBEdit8
        end
        object Label11: TLabel
          Left = 538
          Top = 111
          Width = 87
          Height = 15
          Caption = 'Estoque M'#237'nimo'
          FocusControl = DBEdit9
        end
        object Label3: TLabel
          Left = 3
          Top = 62
          Width = 33
          Height = 15
          Caption = 'Grupo'
          FocusControl = DBEdit1
        end
        object Label4: TLabel
          Left = 309
          Top = 62
          Width = 52
          Height = 15
          Caption = 'Subgrupo'
          FocusControl = DBEdit1
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 26
          Width = 155
          Height = 23
          DataField = 'codigo'
          DataSource = DM.dsProdutos
          Enabled = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 164
          Top = 26
          Width = 454
          Height = 23
          DataField = 'descricao'
          DataSource = DM.dsProdutos
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 3
          Top = 129
          Width = 97
          Height = 23
          DataField = 'vlrcusto'
          DataSource = DM.dsProdutos
          TabOrder = 4
        end
        object DBEdit4: TDBEdit
          Left = 106
          Top = 129
          Width = 53
          Height = 23
          DataField = 'percentipi'
          DataSource = DM.dsProdutos
          TabOrder = 5
        end
        object DBEdit5: TDBEdit
          Left = 164
          Top = 129
          Width = 90
          Height = 23
          DataField = 'percentlucro'
          DataSource = DM.dsProdutos
          TabOrder = 6
        end
        object DBEdit6: TDBEdit
          Left = 259
          Top = 129
          Width = 82
          Height = 23
          DataField = 'vlrvenda'
          DataSource = DM.dsProdutos
          TabOrder = 7
        end
        object DBEdit8: TDBEdit
          Left = 447
          Top = 129
          Width = 84
          Height = 23
          DataField = 'estoque'
          DataSource = DM.dsProdutos
          TabOrder = 9
        end
        object DBEdit9: TDBEdit
          Left = 538
          Top = 129
          Width = 80
          Height = 23
          DataField = 'minimo'
          DataSource = DM.dsProdutos
          TabOrder = 10
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 3
          Top = 81
          Width = 299
          Height = 23
          DataField = 'grupo'
          DataSource = DM.dsProdutos
          KeyField = 'codigo'
          ListField = 'descricao'
          ListSource = DM.dsGrupos
          TabOrder = 2
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 309
          Top = 81
          Width = 309
          Height = 23
          DataField = 'id_subgrupo'
          DataSource = DM.dsProdutos
          KeyField = 'id_codigo'
          ListField = 'descricao'
          ListSource = DM.dsSGrupos
          TabOrder = 3
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 347
          Top = 128
          Width = 93
          Height = 23
          DataField = 'unidade'
          DataSource = DM.dsProdutos
          DropDownRows = 14
          KeyField = 'un'
          ListField = 'descri'
          ListSource = DM.dsUnidade
          TabOrder = 8
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 639
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 639
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      Width = 602
      ButtonWidth = 115
      ExplicitWidth = 602
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
