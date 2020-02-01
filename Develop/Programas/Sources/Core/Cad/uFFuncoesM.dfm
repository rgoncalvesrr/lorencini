inherited FuncoesM: TFuncoesM
  Caption = 'Manuten'#231#227'o de Fun'#231#227'o'
  ClientHeight = 339
  ClientWidth = 566
  Constraints.MinWidth = 565
  ExplicitWidth = 572
  ExplicitHeight = 364
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 566
    Height = 295
    ExplicitLeft = 0
    ExplicitWidth = 566
    ExplicitHeight = 295
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
      Width = 560
      Height = 289
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 560
      ExplicitHeight = 289
      inherited TabSheet1: TTabSheet
        Caption = 'Fun'#231#227'o'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 552
        ExplicitHeight = 259
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 552
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 74
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 68
              Height = 15
              Align = alTop
              Caption = 'Fun'#231#227'o'
              FocusControl = DBEdit1
              ExplicitWidth = 39
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 68
              Height = 23
              Align = alClient
              DataField = 'id'
              DataSource = DM.dsFuncoes
              Enabled = False
              TabOrder = 0
            end
          end
          object Panel5: TPanel
            Left = 330
            Top = 0
            Width = 111
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 105
              Height = 15
              Align = alTop
              Caption = 'H. Dia Normal'
              FocusControl = DBEdit3
              ExplicitWidth = 75
            end
            object DBEdit3: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 105
              Height = 23
              Align = alClient
              DataField = 'total_horas_dia'
              DataSource = DM.dsFuncoes
              TabOrder = 0
            end
          end
          object Panel6: TPanel
            Left = 74
            Top = 0
            Width = 256
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 2
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 250
              Height = 15
              Align = alTop
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit2
              WordWrap = True
              ExplicitWidth = 51
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 250
              Height = 23
              Align = alClient
              DataField = 'descricao'
              DataSource = DM.dsFuncoes
              TabOrder = 0
            end
          end
          object Panel27: TPanel
            Left = 441
            Top = 0
            Width = 111
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label23: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 105
              Height = 15
              Align = alTop
              Caption = 'Situa'#231#227'o'
              ExplicitWidth = 45
            end
            object DBComboBox1: TDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 105
              Height = 23
              Style = csDropDownList
              Align = alClient
              DataField = 'ativo'
              DataSource = DM.dsFuncoes
              ItemHeight = 15
              Items.Strings = (
                'Ativo'
                'Inativo')
              TabOrder = 0
            end
          end
        end
        object Panel7: TPanel
          Left = 0
          Top = 50
          Width = 552
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Label19: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 69
            Height = 44
            Align = alLeft
            Caption = 'Hora Normal'
            FocusControl = DBEdit4
            Layout = tlCenter
            ExplicitHeight = 15
          end
          object Panel8: TPanel
            Left = 112
            Top = 0
            Width = 110
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            object Label4: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 104
              Height = 15
              Align = alTop
              Caption = 'Valor'
              FocusControl = DBEdit4
              ExplicitWidth = 27
            end
            object DBEdit4: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 104
              Height = 23
              Align = alClient
              DataField = 'vlr_hora_normal'
              DataSource = DM.dsFuncoes
              TabOrder = 0
            end
          end
          object Panel9: TPanel
            Left = 222
            Top = 0
            Width = 110
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            object Label8: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 104
              Height = 15
              Align = alTop
              Caption = 'Proje'#231#227'o Encargos'
              FocusControl = DBEdit8
              ExplicitWidth = 97
            end
            object DBEdit8: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 104
              Height = 23
              Align = alClient
              DataField = 'projecao_hr_normal'
              DataSource = DM.dsFuncoes
              TabOrder = 0
            end
          end
          object Panel10: TPanel
            Left = 332
            Top = 0
            Width = 110
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object Label12: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 104
              Height = 15
              Align = alTop
              Caption = 'Outros'
              FocusControl = DBEdit12
              ExplicitWidth = 36
            end
            object DBEdit12: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 104
              Height = 23
              Align = alClient
              DataField = 'vlr_outros_hora_normal'
              DataSource = DM.dsFuncoes
              TabOrder = 0
            end
          end
          object Panel11: TPanel
            Left = 442
            Top = 0
            Width = 110
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label15: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 104
              Height = 15
              Align = alTop
              Caption = 'Valor Hora'
              FocusControl = DBEdit15
              ExplicitWidth = 56
            end
            object DBEdit15: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 104
              Height = 23
              Align = alClient
              DataField = 'vlr_total_hora_normal'
              DataSource = DM.dsFuncoes
              Enabled = False
              TabOrder = 0
            end
          end
        end
        object Panel12: TPanel
          Left = 0
          Top = 100
          Width = 552
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object Label20: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 50
            Height = 44
            Align = alLeft
            Caption = 'Extra 50%'
            FocusControl = DBEdit5
            Layout = tlCenter
            ExplicitHeight = 15
          end
          object Panel13: TPanel
            Left = 112
            Top = 0
            Width = 110
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            object Label5: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 104
              Height = 15
              Align = alTop
              Caption = 'Valor'
              FocusControl = DBEdit5
              ExplicitWidth = 27
            end
            object DBEdit5: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 104
              Height = 23
              Align = alClient
              DataField = 'vlr_he_50'
              DataSource = DM.dsFuncoes
              TabOrder = 0
            end
          end
          object Panel14: TPanel
            Left = 222
            Top = 0
            Width = 110
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            object Label9: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 104
              Height = 15
              Align = alTop
              Caption = 'Proje'#231#227'o Encargos'
              FocusControl = DBEdit9
              ExplicitWidth = 97
            end
            object DBEdit9: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 104
              Height = 23
              Align = alClient
              DataField = 'projecao_he_50'
              DataSource = DM.dsFuncoes
              TabOrder = 0
            end
          end
          object Panel15: TPanel
            Left = 332
            Top = 0
            Width = 110
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object Label13: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 104
              Height = 15
              Align = alTop
              Caption = 'Outros'
              FocusControl = DBEdit13
              ExplicitWidth = 36
            end
            object DBEdit13: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 104
              Height = 23
              Align = alClient
              DataField = 'vlr_outros_he_50'
              DataSource = DM.dsFuncoes
              TabOrder = 0
            end
          end
          object Panel16: TPanel
            Left = 442
            Top = 0
            Width = 110
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label16: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 104
              Height = 15
              Align = alTop
              Caption = 'Valor Hora'
              FocusControl = DBEdit16
              ExplicitWidth = 56
            end
            object DBEdit16: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 104
              Height = 23
              Align = alClient
              DataField = 'vlr_total_he_50'
              DataSource = DM.dsFuncoes
              Enabled = False
              TabOrder = 0
            end
          end
        end
        object Panel17: TPanel
          Left = 0
          Top = 150
          Width = 552
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 3
          object Label21: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 56
            Height = 44
            Align = alLeft
            Caption = 'Extra 100%'
            FocusControl = DBEdit6
            Layout = tlCenter
            ExplicitHeight = 15
          end
          object Panel18: TPanel
            Left = 112
            Top = 0
            Width = 110
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            object Label6: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 104
              Height = 15
              Align = alTop
              Caption = 'Valor'
              FocusControl = DBEdit6
              ExplicitWidth = 27
            end
            object DBEdit6: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 104
              Height = 23
              Align = alClient
              DataField = 'vlr_he_100'
              DataSource = DM.dsFuncoes
              TabOrder = 0
            end
          end
          object Panel19: TPanel
            Left = 222
            Top = 0
            Width = 110
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            object Label10: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 104
              Height = 15
              Align = alTop
              Caption = 'Proje'#231#227'o Encargos'
              FocusControl = DBEdit10
              ExplicitWidth = 97
            end
            object DBEdit10: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 104
              Height = 23
              Align = alClient
              DataField = 'projecao_he_100'
              DataSource = DM.dsFuncoes
              TabOrder = 0
            end
          end
          object Panel20: TPanel
            Left = 332
            Top = 0
            Width = 110
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object Label14: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 104
              Height = 15
              Align = alTop
              Caption = 'Outros'
              FocusControl = DBEdit14
              ExplicitWidth = 36
            end
            object DBEdit14: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 104
              Height = 23
              Align = alClient
              DataField = 'vlr_outros_he_100'
              DataSource = DM.dsFuncoes
              TabOrder = 0
            end
          end
          object Panel21: TPanel
            Left = 442
            Top = 0
            Width = 110
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label17: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 104
              Height = 15
              Align = alTop
              Caption = 'Valor Hora'
              FocusControl = DBEdit17
              ExplicitWidth = 56
            end
            object DBEdit17: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 104
              Height = 23
              Align = alClient
              DataField = 'vlr_total_he_100'
              DataSource = DM.dsFuncoes
              Enabled = False
              TabOrder = 0
            end
          end
        end
        object Panel22: TPanel
          Left = 0
          Top = 200
          Width = 552
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 4
          object Label22: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 98
            Height = 44
            Align = alLeft
            Caption = 'Adicional Noturno'
            Layout = tlCenter
            ExplicitHeight = 15
          end
          object Panel23: TPanel
            Left = 112
            Top = 0
            Width = 110
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            object Label7: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 104
              Height = 15
              Align = alTop
              Caption = 'Valor'
              FocusControl = DBEdit7
              ExplicitWidth = 27
            end
            object DBEdit7: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 104
              Height = 23
              Align = alClient
              DataField = 'vlr_hr_adic_noturno'
              DataSource = DM.dsFuncoes
              TabOrder = 0
            end
          end
          object Panel24: TPanel
            Left = 222
            Top = 0
            Width = 110
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            object Label11: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 104
              Height = 15
              Align = alTop
              Caption = 'Proje'#231#227'o Encargos'
              FocusControl = DBEdit11
              ExplicitWidth = 97
            end
            object DBEdit11: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 104
              Height = 23
              Align = alClient
              DataField = 'projecao_adic_noturno'
              DataSource = DM.dsFuncoes
              TabOrder = 0
            end
          end
          object Panel25: TPanel
            Left = 332
            Top = 0
            Width = 110
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
          end
          object Panel26: TPanel
            Left = 442
            Top = 0
            Width = 110
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label18: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 104
              Height = 15
              Align = alTop
              Caption = 'Valor Hora'
              FocusControl = DBEdit18
              ExplicitWidth = 56
            end
            object DBEdit18: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 104
              Height = 23
              Align = alClient
              DataField = 'vlr_total_adic_noturno'
              DataSource = DM.dsFuncoes
              Enabled = False
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 560
    ExplicitWidth = 560
    inherited ToolBar1: TToolBar
      Width = 547
      ExplicitWidth = 547
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
    Left = 200
  end
end
