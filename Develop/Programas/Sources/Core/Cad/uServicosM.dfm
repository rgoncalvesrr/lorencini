inherited ServicosM: TServicosM
  Caption = 'Naturezas'
  ClientHeight = 739
  ClientWidth = 1167
  Constraints.MinWidth = 642
  ExplicitWidth = 1173
  ExplicitHeight = 768
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 1167
    Height = 695
    ExplicitTop = 44
    ExplicitWidth = 1167
    ExplicitHeight = 695
    inherited Panel3: TPanel
      Top = 144
      Width = 1167
      Height = 551
      Visible = True
      ExplicitTop = 144
      ExplicitWidth = 1167
      ExplicitHeight = 551
      inherited PageControl3: TPageControl
        Top = 47
        Width = 1161
        Height = 501
        ExplicitLeft = 3
        ExplicitTop = 47
        ExplicitWidth = 1161
        ExplicitHeight = 501
        inherited tsDet: TTabSheet
          Caption = 'Desdobramento'
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 1153
          ExplicitHeight = 471
          inherited DBGrid1: TDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1147
            Height = 465
            DataSource = dsNatDet
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Tipo de Laudos'
          ImageIndex = 1
          object CheckListBox1: TCheckListBox
            Left = 0
            Top = 40
            Width = 1153
            Height = 431
            OnClickCheck = CheckListBox1ClickCheck
            Align = alClient
            Columns = 4
            ItemHeight = 15
            TabOrder = 0
          end
          object ToolBar2: TToolBar
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1147
            Height = 34
            AutoSize = True
            BorderWidth = 1
            ButtonHeight = 30
            ButtonWidth = 59
            Caption = 'ToolBar1'
            DisabledImages = Resources.medium_d
            DrawingStyle = dsGradient
            HotImages = Resources.medium_h
            Images = Resources.medium_n
            List = True
            ParentShowHint = False
            ShowCaptions = True
            AllowTextButtons = True
            ShowHint = True
            TabOrder = 1
            object ToolButton5: TToolButton
              Left = 0
              Top = 0
              AutoSize = True
            end
            object ToolButton15: TToolButton
              Left = 59
              Top = 0
              AutoSize = True
            end
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 1161
        Height = 38
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 1161
        ExplicitHeight = 38
        inherited ToolBar3: TToolBar
          Width = 809
          ButtonWidth = 129
          ExplicitWidth = 809
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
      Width = 1161
      Height = 138
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 1161
      ExplicitHeight = 138
      inherited TabSheet1: TTabSheet
        Caption = 'Natureza'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 1153
        ExplicitHeight = 108
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 1153
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 201
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label6: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 195
              Height = 15
              Align = alTop
              Caption = 'Categoria'
              ExplicitWidth = 51
            end
            object DBLookupComboBox1: TDBLookupComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 195
              Height = 23
              Align = alClient
              DataField = 'grupo'
              DataSource = Servicos.DataSource1
              KeyField = 'recno'
              ListField = 'descri'
              ListSource = dsCategorias
              TabOrder = 0
            end
          end
          object Panel7: TPanel
            Left = 201
            Top = 0
            Width = 89
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 83
              Height = 15
              Align = alTop
              Caption = 'Natureza'
              FocusControl = DBEdit1
              ExplicitWidth = 47
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 83
              Height = 23
              Align = alClient
              DataField = 'codserv'
              DataSource = Servicos.DataSource1
              Enabled = False
              TabOrder = 0
            end
          end
          object Panel8: TPanel
            Left = 290
            Top = 0
            Width = 771
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 2
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 765
              Height = 15
              Align = alTop
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit2
              ExplicitWidth = 51
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 765
              Height = 23
              Align = alClient
              DataField = 'descri'
              DataSource = Servicos.DataSource1
              TabOrder = 0
            end
          end
          object Panel9: TPanel
            Left = 1061
            Top = 0
            Width = 92
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label5: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 86
              Height = 15
              Align = alTop
              Caption = 'Tipo'
              ExplicitWidth = 23
            end
            object JvDBComboBox1: TJvDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 86
              Height = 23
              Align = alClient
              DataField = 'tipo'
              DataSource = Servicos.DataSource1
              Items.Strings = (
                'Vari'#225'vel'
                'Fixa')
              TabOrder = 0
              Values.Strings = (
                '1'
                '2')
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
            end
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 50
          Width = 1153
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 198
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 192
              Height = 15
              Align = alTop
              Caption = 'Unidade'
              ExplicitWidth = 44
            end
            object DBLookupComboBox2: TDBLookupComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 192
              Height = 23
              Align = alClient
              DataField = 'un'
              DataSource = Servicos.DataSource1
              KeyField = 'un'
              ListField = 'un;descri'
              ListSource = dsUnidades
              TabOrder = 0
            end
          end
          object Panel10: TPanel
            Left = 457
            Top = 0
            Width = 132
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 3
            object Label4: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 126
              Height = 15
              Align = alTop
              Caption = 'Consumo Flu'#237'do'
              ExplicitWidth = 88
            end
            object JvDBCalcEdit1: TJvDBCalcEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 126
              Height = 23
              Align = alClient
              TabOrder = 0
              DecimalPlacesAlwaysShown = False
              DataField = 'consumo'
              DataSource = Servicos.DataSource1
            end
          end
          object Panel11: TPanel
            Left = 589
            Top = 0
            Width = 564
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 4
            object DBCheckBox1: TDBCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 558
              Height = 23
              Margins.Top = 24
              Align = alClient
              Caption = 'Imprimir na Se'#231#227'o Servi'#231'os Executados'
              DataField = 'prnsecserv'
              DataSource = Servicos.DataSource1
              TabOrder = 0
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
          end
          object Panel12: TPanel
            Left = 198
            Top = 0
            Width = 151
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label7: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 145
              Height = 15
              Align = alTop
              Caption = 'Valor'
              ExplicitWidth = 26
            end
            object JvDBCalcEdit2: TJvDBCalcEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 145
              Height = 23
              Align = alClient
              DisplayFormat = ',0.00'
              TabOrder = 0
              DecimalPlacesAlwaysShown = True
              DataField = 'valor'
              DataSource = Servicos.DataSource1
            end
          end
          object Panel13: TPanel
            Left = 349
            Top = 0
            Width = 108
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object Label8: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 102
              Height = 15
              Align = alTop
              Caption = 'Vidraria'
              ExplicitWidth = 40
            end
            object JvDBComboBox2: TJvDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 102
              Height = 23
              Align = alClient
              DataField = 'vidraria'
              DataSource = Servicos.DataSource1
              Items.Strings = (
                'Nenhum'
                'Frasco'
                'Seringa')
              TabOrder = 0
              Values.Strings = (
                '0'
                '1'
                '2')
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -13
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 1161
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 1161
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      Width = 617
      ButtonWidth = 115
      ExplicitWidth = 617
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
    Left = 168
    Top = 8
  end
  object dsNatDet: TDataSource
    AutoEdit = False
    DataSet = Servicos.qNatDet
    Left = 104
    Top = 8
  end
  object dsCategorias: TDataSource
    AutoEdit = False
    DataSet = Servicos.qCate
    Left = 40
    Top = 8
  end
  object dsUnidades: TDataSource
    AutoEdit = False
    DataSet = Servicos.qUnidade
    Left = 72
    Top = 8
  end
end
