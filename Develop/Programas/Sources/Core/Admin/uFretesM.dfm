inherited FretesM: TFretesM
  Caption = 'FretesM'
  ClientHeight = 199
  ExplicitHeight = 228
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Height = 155
    ExplicitLeft = 0
    ExplicitWidth = 639
    ExplicitHeight = 155
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
      Height = 149
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 633
      ExplicitHeight = 149
      inherited TabSheet1: TTabSheet
        Caption = 'Ajuste de Frete'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 625
        ExplicitHeight = 119
        object Panel2: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 56
          Width = 619
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 78
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 72
              Height = 15
              Align = alTop
              Caption = 'Peso (Kg)'
              FocusControl = DBEdit2
              ExplicitWidth = 50
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 72
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'peso'
              DataSource = Fretes.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel11: TPanel
            Left = 78
            Top = 0
            Width = 78
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 72
              Height = 15
              Align = alTop
              Caption = 'Frete'
              FocusControl = DBEdit3
              ExplicitWidth = 26
            end
            object DBEdit3: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 72
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'valorc'
              DataSource = Fretes.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel12: TPanel
            Left = 156
            Top = 0
            Width = 122
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object Label5: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 116
              Height = 15
              Align = alTop
              Caption = 'Atualiza'#231#227'o Correio'
              FocusControl = DBEdit5
              ExplicitWidth = 103
            end
            object DBEdit5: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 116
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'correiolido'
              DataSource = Fretes.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel13: TPanel
            Left = 278
            Top = 0
            Width = 146
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 3
            object Label11: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 140
              Height = 15
              Align = alTop
              Caption = 'C'#243'digo de Ratreamento'
              FocusControl = DBEdit10
              ExplicitWidth = 126
            end
            object DBEdit10: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 140
              Height = 23
              Align = alClient
              DataField = 'rastreio'
              DataSource = Fretes.DataSource1
              TabOrder = 0
            end
          end
          object Panel14: TPanel
            Left = 424
            Top = 0
            Width = 87
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 4
            object Label10: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 81
              Height = 15
              Align = alTop
              Caption = 'Peso Correio'
              FocusControl = DBEdit6
              ExplicitWidth = 67
            end
            object DBEdit6: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 81
              Height = 23
              Align = alClient
              DataField = 'correiopeso'
              DataSource = Fretes.DataSource1
              TabOrder = 0
            end
          end
          object Panel15: TPanel
            Left = 511
            Top = 0
            Width = 108
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 5
            object Label6: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 102
              Height = 15
              Align = alTop
              Caption = 'Frete Correio'
              FocusControl = DBEdit5
              ExplicitWidth = 68
            end
            object JvDBCalcEdit1: TJvDBCalcEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 102
              Height = 23
              Align = alClient
              DisplayFormat = ',0.00'
              TabOrder = 0
              DecimalPlacesAlwaysShown = True
              DataField = 'correiovalor'
              DataSource = Fretes.DataSource1
            end
          end
        end
        object Panel5: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 619
          Height = 50
          Margins.Bottom = 0
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Panel6: TPanel
            Left = 520
            Top = 0
            Width = 99
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 93
              Height = 15
              Align = alTop
              Caption = 'Telefone'
              FocusControl = DBEdit1
              ExplicitWidth = 45
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 93
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'telefone'
              DataSource = Fretes.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel7: TPanel
            Left = 0
            Top = 0
            Width = 62
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label7: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 56
              Height = 15
              Align = alTop
              Caption = 'Cliente'
              FocusControl = DBEdit7
              ExplicitWidth = 37
            end
            object DBEdit7: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 58
              Height = 23
              Margins.Right = 1
              TabStop = False
              Align = alClient
              DataField = 'codigo'
              DataSource = Fretes.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel8: TPanel
            Left = 62
            Top = 0
            Width = 242
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 2
            object Label8: TLabel
              AlignWithMargins = True
              Left = 1
              Top = 3
              Width = 238
              Height = 15
              Margins.Left = 1
              Align = alTop
              Caption = 'Raz'#227'o Social'
              FocusControl = DBEdit8
              ExplicitWidth = 65
            end
            object DBEdit8: TDBEdit
              AlignWithMargins = True
              Left = 1
              Top = 24
              Width = 238
              Height = 23
              Margins.Left = 1
              TabStop = False
              Align = alClient
              DataField = 'nome_chave'
              DataSource = Fretes.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel9: TPanel
            Left = 304
            Top = 0
            Width = 114
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label9: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 108
              Height = 15
              Align = alTop
              Caption = 'C.N.P.J.'
              FocusControl = DBEdit9
              ExplicitWidth = 40
            end
            object DBEdit9: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 108
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'cnpj'
              DataSource = Fretes.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel10: TPanel
            Left = 418
            Top = 0
            Width = 102
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 4
            object Label4: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 96
              Height = 15
              Align = alTop
              Caption = 'C.P.F.'
              FocusControl = DBEdit4
              ExplicitWidth = 30
            end
            object DBEdit4: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 96
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'cpf'
              DataSource = Fretes.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    inherited ToolBar1: TToolBar
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
    inherited actNewMaster: TAction
      Visible = False
    end
  end
end
