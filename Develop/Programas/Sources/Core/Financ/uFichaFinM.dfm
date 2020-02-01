inherited FichaFinM: TFichaFinM
  Caption = 'Manuten'#231#227'o de Ficha Financeira'
  ClientHeight = 361
  ClientWidth = 748
  ExplicitWidth = 754
  ExplicitHeight = 390
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 748
    Height = 317
    ExplicitWidth = 748
    ExplicitHeight = 317
    inherited Panel3: TPanel
      Align = alNone
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
      Width = 742
      Height = 311
      ExplicitWidth = 742
      ExplicitHeight = 311
      inherited TabSheet1: TTabSheet
        Caption = 'Lan'#231'amento'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 734
        ExplicitHeight = 281
        object Bevel6: TBevel
          AlignWithMargins = True
          Left = 3
          Top = 109
          Width = 728
          Height = 2
          Align = alTop
          Shape = bsTopLine
          ExplicitTop = 115
          ExplicitWidth = 723
        end
        object Panel2: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 728
          Height = 50
          Margins.Bottom = 0
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel4: TPanel
            Left = 629
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
              DataSource = FichaFin.dsSaldos
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel5: TPanel
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
              DataSource = FichaFin.dsSaldos
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel7: TPanel
            Left = 62
            Top = 0
            Width = 351
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 2
            object Label8: TLabel
              AlignWithMargins = True
              Left = 1
              Top = 3
              Width = 347
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
              Width = 347
              Height = 23
              Margins.Left = 1
              TabStop = False
              Align = alClient
              DataField = 'nome_chave'
              DataSource = FichaFin.dsSaldos
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel8: TPanel
            Left = 413
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
              DataSource = FichaFin.dsSaldos
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel9: TPanel
            Left = 527
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
              DataSource = FichaFin.dsSaldos
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
        object Panel6: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 53
          Width = 728
          Height = 50
          Margins.Top = 0
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Panel10: TPanel
            Left = 613
            Top = 0
            Width = 115
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 109
              Height = 15
              Align = alTop
              Caption = 'Saldo Futuro'
              FocusControl = DBEdit2
              ExplicitWidth = 67
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 109
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'futuro'
              DataSource = FichaFin.dsSaldos
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel11: TPanel
            Left = 0
            Top = 0
            Width = 115
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 109
              Height = 15
              Align = alTop
              Caption = 'A Cobrar'
              FocusControl = DBEdit3
              ExplicitWidth = 47
            end
            object DBEdit3: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 111
              Height = 23
              Margins.Right = 1
              TabStop = False
              Align = alClient
              DataField = 'acobrar'
              DataSource = FichaFin.dsSaldos
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel13: TPanel
            Left = 383
            Top = 0
            Width = 115
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object Label6: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 109
              Height = 15
              Align = alTop
              Caption = 'Saldo Anterior'
              FocusControl = DBEdit6
              ExplicitWidth = 75
            end
            object DBEdit6: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 109
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'Anterior'
              DataSource = FichaFin.dsSaldos
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel14: TPanel
            Left = 498
            Top = 0
            Width = 115
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label10: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 109
              Height = 15
              Align = alTop
              Caption = 'Saldo Atual'
              FocusControl = DBEdit10
              ExplicitWidth = 60
            end
            object DBEdit10: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 109
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'atual'
              DataSource = FichaFin.dsSaldos
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
        object GroupBox1: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 117
          Width = 728
          Height = 161
          Align = alClient
          Caption = ' Lan'#231'amento '
          TabOrder = 2
          object Label14: TLabel
            AlignWithMargins = True
            Left = 5
            Top = 73
            Width = 718
            Height = 15
            Align = alTop
            Caption = 'Hist'#243'rico'
            FocusControl = DBMemo1
            ExplicitWidth = 48
          end
          object Panel12: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 17
            Width = 718
            Height = 50
            Margins.Top = 0
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Panel16: TPanel
              Left = 0
              Top = 0
              Width = 109
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label5: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 103
                Height = 15
                Align = alTop
                Caption = 'Data'
                ExplicitWidth = 24
              end
              object JvDBDateEdit1: TJvDBDateEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 103
                Height = 23
                Align = alClient
                DataField = 'data'
                DataSource = FichaFin.DataSource1
                ButtonHint = 'Calend'#225'rio'
                ButtonFlat = True
                CheckOnExit = True
                DefaultToday = True
                DialogTitle = 'Selecione uma data'
                ShowNullDate = False
                TabOrder = 0
              end
            end
            object Panel15: TPanel
              Left = 109
              Top = 0
              Width = 126
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object Label11: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 120
                Height = 15
                Align = alTop
                Caption = 'Documento'
                FocusControl = DBEdit5
                ExplicitWidth = 63
              end
              object DBEdit5: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 120
                Height = 23
                Align = alClient
                DataField = 'docto'
                DataSource = FichaFin.DataSource1
                TabOrder = 0
              end
            end
            object Panel17: TPanel
              Left = 465
              Top = 0
              Width = 115
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 4
              object Label12: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 109
                Height = 15
                Align = alTop
                Caption = 'Cobran'#231'a'
                FocusControl = DBEdit11
                ExplicitWidth = 51
              end
              object DBEdit11: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 109
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'titulo'
                DataSource = FichaFin.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel18: TPanel
              Left = 580
              Top = 0
              Width = 138
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 5
              object Label13: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 132
                Height = 15
                Align = alTop
                Caption = 'Valor'
                ExplicitWidth = 26
              end
              object JvDBCalcEdit1: TJvDBCalcEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 132
                Height = 23
                Align = alClient
                ButtonFlat = True
                ButtonHint = 'Calculadora'
                DisplayFormat = ',0.#0'
                FormatOnEditing = True
                TabOrder = 0
                DecimalPlacesAlwaysShown = False
                DataField = 'valor'
                DataSource = FichaFin.DataSource1
              end
            end
            object Panel19: TPanel
              Left = 350
              Top = 0
              Width = 115
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 3
              object Label15: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 109
                Height = 15
                Align = alTop
                Caption = 'OS'
                FocusControl = DBEdit12
                ExplicitWidth = 15
              end
              object DBEdit12: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 109
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'os'
                DataSource = FichaFin.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel20: TPanel
              Left = 235
              Top = 0
              Width = 115
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 2
              object Label16: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 109
                Height = 15
                Align = alTop
                Caption = 'Pedido'
                FocusControl = DBEdit13
                ExplicitWidth = 37
              end
              object DBEdit13: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 109
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'pedido'
                DataSource = FichaFin.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
          end
          object DBMemo1: TDBMemo
            AlignWithMargins = True
            Left = 5
            Top = 94
            Width = 718
            Height = 62
            Align = alClient
            DataField = 'historico'
            DataSource = FichaFin.DataSource1
            TabOrder = 1
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 742
    inherited ToolBar1: TToolBar
      Width = 729
      ExplicitWidth = 729
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
