inherited AtivosM: TAtivosM
  Caption = 'Manuten'#231#227'o de Ativos'
  ClientHeight = 377
  ClientWidth = 761
  Constraints.MinWidth = 691
  ExplicitWidth = 767
  ExplicitHeight = 406
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 761
    Height = 333
    ExplicitWidth = 761
    ExplicitHeight = 333
    inherited Panel3: TPanel
      Top = 90
      Width = 750
      Align = alNone
      ExplicitTop = 90
      ExplicitWidth = 750
      inherited PageControl3: TPageControl
        Width = 744
        ExplicitWidth = 744
        inherited tsDet: TTabSheet
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 736
          inherited DBGrid1: TDBGrid
            Width = 736
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 744
        inherited ToolBar3: TToolBar
          Width = 731
          ExplicitWidth = 731
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
      Width = 755
      Height = 327
      ExplicitWidth = 755
      ExplicitHeight = 327
      inherited TabSheet1: TTabSheet
        Caption = 'Ativos'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 747
        ExplicitHeight = 297
        object Label1: TLabel
          Left = 9
          Top = 13
          Width = 28
          Height = 15
          Caption = 'Ativo'
          FocusControl = DBEdit1
        end
        object Label3: TLabel
          Left = 66
          Top = 13
          Width = 71
          Height = 15
          Caption = 'Tipo de Ativo'
          FocusControl = DBEdit1
        end
        object Label4: TLabel
          Left = 229
          Top = 13
          Width = 45
          Height = 15
          Caption = 'Situa'#231#227'o'
          FocusControl = DBEdit1
        end
        object Label5: TLabel
          Left = 315
          Top = 13
          Width = 76
          Height = 15
          Caption = 'Departamento'
          FocusControl = DBEdit1
        end
        object Label7: TLabel
          Left = 544
          Top = 13
          Width = 88
          Height = 15
          Caption = 'Valor de Compra'
          FocusControl = DBEdit2
        end
        object Label8: TLabel
          Left = 641
          Top = 13
          Width = 77
          Height = 15
          Caption = 'Valor de Venda'
          FocusControl = DBEdit3
        end
        object DBEdit1: TDBEdit
          Left = 9
          Top = 30
          Width = 52
          Height = 23
          DataField = 'id'
          DataSource = Ativos.DataSource1
          Enabled = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 544
          Top = 30
          Width = 90
          Height = 23
          DataField = 'vlcompra'
          DataSource = Ativos.DataSource1
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 641
          Top = 30
          Width = 90
          Height = 23
          DataField = 'vlvenda'
          DataSource = Ativos.DataSource1
          TabOrder = 2
        end
        object GroupBox1: TGroupBox
          Left = 9
          Top = 60
          Width = 722
          Height = 121
          BiDiMode = bdLeftToRight
          Caption = ' Descri'#231#227'o Detalhada do Ativo '
          ParentBiDiMode = False
          TabOrder = 3
          object DBMemo1: TDBMemo
            Left = 9
            Top = 17
            Width = 701
            Height = 96
            DataField = 'descri'
            DataSource = Ativos.DataSource1
            TabOrder = 0
          end
        end
        object GroupBox2: TGroupBox
          Left = 9
          Top = 188
          Width = 722
          Height = 105
          Caption = ' Informa'#231#245'es de Baixa '
          TabOrder = 4
          object Label2: TLabel
            Left = 9
            Top = 17
            Width = 27
            Height = 15
            Caption = 'Baixa'
            FocusControl = DBEdit4
          end
          object Label9: TLabel
            Left = 180
            Top = 17
            Width = 38
            Height = 15
            Caption = 'Motivo'
            FocusControl = DBMemo2
          end
          object DBEdit4: TDBEdit
            Left = 9
            Top = 34
            Width = 164
            Height = 23
            DataField = 'baixa'
            DataSource = Ativos.DataSource1
            Enabled = False
            TabOrder = 0
          end
          object DBMemo2: TDBMemo
            Left = 180
            Top = 34
            Width = 530
            Height = 61
            DataField = 'motivo'
            DataSource = Ativos.DataSource1
            Enabled = False
            TabOrder = 1
          end
        end
        object RxDBComboBox1: TJvDBComboBox
          Left = 66
          Top = 30
          Width = 156
          Height = 23
          DataField = 'tipo'
          DataSource = Ativos.DataSource1
          TabOrder = 5
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object RxDBComboBox3: TJvDBComboBox
          Left = 315
          Top = 30
          Width = 223
          Height = 23
          DataField = 'depto'
          DataSource = Ativos.DataSource1
          TabOrder = 6
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
        object DBComboBox1: TDBComboBox
          Left = 228
          Top = 30
          Width = 81
          Height = 23
          Style = csDropDownList
          DataField = 'status'
          DataSource = Ativos.DataSource1
          ItemHeight = 15
          Items.Strings = (
            'Ativo'
            'Inativo')
          TabOrder = 7
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 755
    inherited ToolBar1: TToolBar
      Width = 742
      ExplicitWidth = 742
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
end
