inherited LabProcMItens: TLabProcMItens
  Caption = 'Itens do Processo de Coleta'
  ClientHeight = 186
  ClientWidth = 734
  Constraints.MinWidth = 691
  ExplicitWidth = 740
  ExplicitHeight = 215
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 734
    Height = 142
    ExplicitTop = 44
    ExplicitWidth = 734
    ExplicitHeight = 142
    inherited Panel3: TPanel
      Align = alNone
      ExplicitTop = 204
      inherited PageControl3: TPageControl
        Top = 47
        Height = 185
        ExplicitLeft = 3
        ExplicitTop = 47
        ExplicitWidth = 633
        ExplicitHeight = 185
        inherited tsDet: TTabSheet
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 625
          ExplicitHeight = 155
          inherited DBGrid1: TDBGrid
            Width = 625
            Height = 155
          end
        end
      end
      inherited ControlBar2: TControlBar
        Height = 38
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 633
        ExplicitHeight = 38
        inherited ToolBar3: TToolBar
          ButtonWidth = 129
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
      Width = 728
      Height = 136
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 728
      ExplicitHeight = 136
      inherited TabSheet1: TTabSheet
        Caption = 'Itens do Processo'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 720
        ExplicitHeight = 106
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 720
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
              Caption = 'C'#243'digo'
              FocusControl = DBEdit1
              ExplicitWidth = 39
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 65
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'codigo'
              DataSource = LabProc.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel5: TPanel
            Left = 71
            Top = 0
            Width = 376
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 370
              Height = 15
              Align = alTop
              Caption = 'Cliente'
              FocusControl = DBEdit2
              ExplicitWidth = 37
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 370
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'nome_chave'
              DataSource = LabProc.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel6: TPanel
            Left = 447
            Top = 0
            Width = 152
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 146
              Height = 15
              Align = alTop
              Caption = 'CNPJ'
              FocusControl = DBEdit3
              ExplicitWidth = 27
            end
            object DBEdit3: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 146
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'cnpj'
              DataSource = LabProc.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel7: TPanel
            Left = 599
            Top = 0
            Width = 121
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label4: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 115
              Height = 15
              Align = alTop
              Caption = 'Telefone'
              FocusControl = DBEdit4
              ExplicitWidth = 44
            end
            object DBEdit4: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 115
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'telefone'
              DataSource = LabProc.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
        object Panel8: TPanel
          Left = 0
          Top = 50
          Width = 720
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Panel9: TPanel
            Left = 0
            Top = 0
            Width = 68
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label10: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 62
              Height = 15
              Align = alTop
              Caption = 'Processo'
              FocusControl = DBEdit5
              ExplicitWidth = 47
            end
            object DBEdit5: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 62
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'labproc_recno'
              DataSource = LabProc.dsPItens
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel10: TPanel
            Left = 68
            Top = 0
            Width = 93
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label6: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 87
              Height = 15
              Align = alTop
              Caption = 'Amostra'
              FocusControl = DBEdit6
              ExplicitWidth = 45
            end
            object DBEdit6: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 87
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'amostra'
              DataSource = LabProc.dsPItens
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel11: TPanel
            Left = 161
            Top = 0
            Width = 115
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object Label5: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 109
              Height = 15
              Align = alTop
              Caption = 'Tipo'
              ExplicitWidth = 23
            end
            object DBComboBox1: TDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 109
              Height = 23
              Style = csDropDownList
              Align = alClient
              DataField = 'tipo'
              DataSource = LabProc.dsPItens
              ItemHeight = 15
              Items.Strings = (
                'Frasco'
                'Seringa')
              TabOrder = 0
            end
          end
          object Panel12: TPanel
            Left = 276
            Top = 0
            Width = 115
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 3
            object Label24: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 109
              Height = 15
              Align = alTop
              Caption = 'Validade'
              ExplicitWidth = 44
            end
            object JvDBDateEdit1: TJvDBDateEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 109
              Height = 23
              Align = alClient
              DataField = 'validade'
              DataSource = LabProc.dsPItens
              Enabled = False
              ButtonWidth = 23
              ShowNullDate = False
              TabOrder = 0
            end
          end
          object Panel13: TPanel
            Left = 391
            Top = 0
            Width = 115
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 4
            object Label26: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 109
              Height = 15
              Align = alTop
              Caption = 'Programa'#231#227'o'
              ExplicitWidth = 71
            end
            object JvDBDateEdit2: TJvDBDateEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 109
              Height = 23
              Align = alClient
              DataField = 'dataprog'
              DataSource = LabProc.dsPItens
              ButtonWidth = 23
              ShowNullDate = False
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 728
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 728
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      Width = 715
      ButtonWidth = 115
      ExplicitWidth = 715
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
    Left = 480
    Top = 24
    object actFindEquip: TAction
      Enabled = False
      ImageIndex = 332
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 416
    Top = 24
  end
end
