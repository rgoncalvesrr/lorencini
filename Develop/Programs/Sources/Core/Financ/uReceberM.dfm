inherited ReceberM: TReceberM
  BorderStyle = bsSizeable
  Caption = 'T'#237'tulo a Receber'
  ClientHeight = 643
  ClientWidth = 1036
  Constraints.MinWidth = 691
  ExplicitWidth = 1052
  ExplicitHeight = 682
  PixelsPerInch = 96
  TextHeight = 15
  object SpeedButton1: TSpeedButton [0]
    Left = 360
    Top = 180
    Width = 25
    Height = 24
  end
  inherited Panel1: TPanel
    Width = 1036
    Height = 599
    ExplicitWidth = 1036
    ExplicitHeight = 599
    inherited Panel3: TPanel
      Top = 372
      Width = 1036
      Height = 227
      ExplicitTop = 372
      ExplicitWidth = 1036
      ExplicitHeight = 227
      inherited PageControl3: TPageControl
        Width = 1030
        Height = 177
        ExplicitWidth = 1030
        ExplicitHeight = 177
        inherited tsDet: TTabSheet
          Caption = 'Contatos'
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 1022
          ExplicitHeight = 147
          inherited DBGrid1: TDBGrid
            Width = 1022
            Height = 147
            DataSource = Receber.dsContatos
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Itens'
          ImageIndex = 1
          object DBGrid2: TDBGrid
            Tag = 1
            Left = 0
            Top = 0
            Width = 1022
            Height = 147
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = Receber.dsItens
            DefaultDrawing = False
            Enabled = False
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Pitch = fpVariable
            TitleFont.Style = []
            OnDrawColumnCell = ChildGridDrawColumnCell
            OnDblClick = ChildGridDblClick
            OnEnter = ChildGridEnter
            OnKeyPress = ChildGridKeyPress
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 1030
        ExplicitWidth = 1030
        inherited ToolBar3: TToolBar
          Width = 718
          ExplicitWidth = 718
          inherited ToolButton10: TToolButton
            Action = actAtuContatos
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
      Width = 1030
      Height = 366
      ExplicitWidth = 1030
      ExplicitHeight = 366
      inherited TabSheet1: TTabSheet
        Caption = 'T'#237'tulo a Receber'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 1022
        ExplicitHeight = 336
        object Label18: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 253
          Width = 1016
          Height = 15
          Align = alTop
          Caption = 'Observa'#231#245'es'
          FocusControl = DBMemo1
          ExplicitWidth = 67
        end
        object Label3: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 203
          Width = 1016
          Height = 15
          Align = alTop
          Caption = 'Hist'#243'rico'
          FocusControl = DBEdit3
          ExplicitWidth = 48
        end
        object DBMemo1: TDBMemo
          Left = 0
          Top = 271
          Width = 1022
          Height = 65
          Align = alClient
          DataField = 'obs'
          DataSource = Receber.DataSource1
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 224
          Width = 1016
          Height = 23
          Align = alTop
          DataField = 'historico'
          DataSource = Receber.DataSource1
          TabOrder = 0
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 1022
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 70
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 64
              Height = 15
              Align = alTop
              Caption = 'T'#237'tulo'
              FocusControl = DBEdit1
              ExplicitWidth = 30
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 64
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'recno'
              DataSource = Receber.DataSource1
              Enabled = False
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel5: TPanel
            Left = 70
            Top = 0
            Width = 113
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 107
              Height = 15
              Align = alTop
              Caption = 'Documento'
              FocusControl = DBEdit2
              ExplicitWidth = 63
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 107
              Height = 23
              Align = alClient
              DataField = 'docto'
              DataSource = Receber.DataSource1
              TabOrder = 0
            end
          end
          object Panel6: TPanel
            Left = 183
            Top = 0
            Width = 136
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object Label19: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 130
              Height = 15
              Align = alTop
              Caption = 'Conta'
              ExplicitWidth = 32
            end
            object DBComboBox1: TDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 130
              Height = 23
              Style = csDropDownList
              Align = alClient
              DataField = 'cc'
              DataSource = Receber.DataSource1
              ItemHeight = 15
              TabOrder = 0
            end
          end
          object Panel7: TPanel
            Left = 319
            Top = 0
            Width = 70
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 3
            object Label4: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 64
              Height = 15
              Align = alTop
              Caption = 'Natureza'
              FocusControl = DBEdit4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 51
            end
            object DBEdit4: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 67
              Height = 23
              Margins.Right = 0
              Align = alClient
              DataField = 'natureza'
              DataSource = Receber.DataSource1
              TabOrder = 0
              OnExit = DBEdit4Exit
            end
          end
          object Panel8: TPanel
            Left = 389
            Top = 0
            Width = 29
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 4
            object SpeedButton2: TSpeedButton
              AlignWithMargins = True
              Left = 0
              Top = 23
              Width = 26
              Height = 25
              Margins.Left = 0
              Margins.Top = 23
              Margins.Bottom = 2
              Action = findNatu
              Align = alClient
              ExplicitTop = 20
              ExplicitWidth = 67
            end
          end
          object Panel9: TPanel
            Left = 418
            Top = 0
            Width = 534
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 5
            object Label5: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 528
              Height = 15
              Align = alTop
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit5
              ExplicitWidth = 51
            end
            object DBEdit5: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 528
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'descri'
              DataSource = Receber.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel10: TPanel
            Left = 952
            Top = 0
            Width = 70
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 6
            object Label6: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 64
              Height = 15
              Align = alTop
              Caption = 'Tipo'
              FocusControl = DBEdit6
              ExplicitWidth = 23
            end
            object DBEdit6: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 64
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'tipo'
              DataSource = Receber.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
        object Panel11: TPanel
          Left = 0
          Top = 50
          Width = 1022
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 3
          object Panel12: TPanel
            Left = 0
            Top = 0
            Width = 83
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label7: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 77
              Height = 15
              Align = alTop
              Caption = 'Cliente'
              FocusControl = DBEdit7
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 39
            end
            object DBEdit7: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 80
              Height = 23
              Margins.Right = 0
              Align = alClient
              DataField = 'id_cli'
              DataSource = Receber.DataSource1
              TabOrder = 0
              OnExit = DBEdit7Exit
            end
          end
          object Panel13: TPanel
            Left = 83
            Top = 0
            Width = 29
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object SpeedButton3: TSpeedButton
              AlignWithMargins = True
              Left = 0
              Top = 23
              Width = 26
              Height = 25
              Margins.Left = 0
              Margins.Top = 23
              Margins.Bottom = 2
              Action = findCli
              Align = alClient
              ExplicitLeft = 39
              ExplicitTop = 26
              ExplicitWidth = 25
              ExplicitHeight = 24
            end
          end
          object Panel14: TPanel
            Left = 112
            Top = 0
            Width = 631
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 2
            object Label8: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 625
              Height = 15
              Align = alTop
              Caption = 'Raz'#227'o Social'
              FocusControl = DBEdit8
              ExplicitWidth = 65
            end
            object DBEdit8: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 625
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'nome_chave'
              DataSource = Receber.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel15: TPanel
            Left = 743
            Top = 0
            Width = 150
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label9: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 144
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
              Width = 144
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'cnpj'
              DataSource = Receber.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel16: TPanel
            Left = 893
            Top = 0
            Width = 129
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 4
            object Label10: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 123
              Height = 15
              Align = alTop
              Caption = 'Telefone'
              FocusControl = DBEdit10
              ExplicitWidth = 44
            end
            object DBEdit10: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 123
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'telefone'
              DataSource = Receber.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
        object Panel19: TPanel
          Left = 0
          Top = 100
          Width = 1022
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 4
          object Panel20: TPanel
            Left = 0
            Top = 0
            Width = 134
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label11: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 128
              Height = 15
              Align = alTop
              Caption = 'Cria'#231#227'o'
              FocusControl = DBEdit11
              ExplicitWidth = 40
            end
            object DBEdit11: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 128
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'criacao'
              DataSource = Receber.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel21: TPanel
            Left = 134
            Top = 0
            Width = 134
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label12: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 128
              Height = 15
              Align = alTop
              Caption = 'Emiss'#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 49
            end
            object JvDBDateEdit1: TJvDBDateEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 128
              Height = 23
              Align = alClient
              DataField = 'emissao'
              DataSource = Receber.DataSource1
              ButtonFlat = True
              ButtonWidth = 23
              ShowNullDate = False
              TabOrder = 0
            end
          end
          object Panel22: TPanel
            Left = 268
            Top = 0
            Width = 134
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object Label13: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 128
              Height = 15
              Align = alTop
              Caption = 'Vencimento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 67
            end
            object JvDBDateEdit2: TJvDBDateEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 128
              Height = 23
              Align = alClient
              DataField = 'vencimento'
              DataSource = Receber.DataSource1
              ButtonFlat = True
              ButtonWidth = 23
              ShowNullDate = False
              TabOrder = 0
            end
          end
          object Panel23: TPanel
            Left = 402
            Top = 0
            Width = 134
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 3
            object Label14: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 128
              Height = 15
              Align = alTop
              Caption = 'Vencimento Real'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 95
            end
            object JvDBDateEdit3: TJvDBDateEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 128
              Height = 23
              Align = alClient
              DataField = 'vencimento_real'
              DataSource = Receber.DataSource1
              ButtonFlat = True
              ButtonWidth = 23
              ShowNullDate = False
              TabOrder = 0
            end
          end
        end
        object Panel17: TPanel
          Left = 0
          Top = 150
          Width = 1022
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 5
          object Panel18: TPanel
            Left = 0
            Top = 0
            Width = 103
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label16: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 97
              Height = 15
              Align = alTop
              Caption = 'Valor'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 29
            end
            object JvDBCalcEdit1: TJvDBCalcEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 97
              Height = 23
              Align = alClient
              ButtonFlat = True
              ButtonWidth = 23
              TabOrder = 0
              DecimalPlacesAlwaysShown = False
              DataField = 'valor'
              DataSource = Receber.DataSource1
            end
          end
          object Panel27: TPanel
            Left = 103
            Top = 0
            Width = 103
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label15: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 97
              Height = 15
              Align = alTop
              Caption = 'Juros'
              ExplicitWidth = 27
            end
            object JvDBCalcEdit2: TJvDBCalcEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 97
              Height = 23
              Align = alClient
              ButtonFlat = True
              DisplayFormat = ',0.#0'
              ButtonWidth = 23
              TabOrder = 0
              DecimalPlacesAlwaysShown = False
              DataField = 'juros'
              DataSource = Receber.DataSource1
            end
          end
          object Panel28: TPanel
            Left = 206
            Top = 0
            Width = 103
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object Label21: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 97
              Height = 15
              Align = alTop
              Caption = 'Multa'
              ExplicitWidth = 31
            end
            object JvDBCalcEdit3: TJvDBCalcEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 97
              Height = 23
              Align = alClient
              ButtonFlat = True
              DisplayFormat = ',0.#0'
              ButtonWidth = 23
              TabOrder = 0
              DecimalPlacesAlwaysShown = False
              DataField = 'multa'
              DataSource = Receber.DataSource1
            end
          end
          object Panel29: TPanel
            Left = 309
            Top = 0
            Width = 103
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 3
            object Label22: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 97
              Height = 15
              Align = alTop
              Caption = 'Desconto'
              ExplicitWidth = 50
            end
            object JvDBCalcEdit4: TJvDBCalcEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 97
              Height = 23
              Align = alClient
              ButtonFlat = True
              DisplayFormat = ',0.#0'
              ButtonWidth = 23
              TabOrder = 0
              DecimalPlacesAlwaysShown = False
              DataField = 'descto'
              DataSource = Receber.DataSource1
            end
          end
          object Panel30: TPanel
            Left = 412
            Top = 0
            Width = 103
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 4
            object Label23: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 97
              Height = 15
              Align = alTop
              Caption = 'Total'
              ExplicitWidth = 25
            end
            object JvDBCalcEdit5: TJvDBCalcEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 97
              Height = 23
              Align = alClient
              ButtonFlat = True
              DisplayFormat = ',0.#0'
              Enabled = False
              ButtonWidth = 23
              TabOrder = 0
              DecimalPlacesAlwaysShown = False
              DataField = 'total'
              DataSource = Receber.DataSource1
            end
          end
          object Panel31: TPanel
            Left = 515
            Top = 0
            Width = 103
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 5
            object Label17: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 97
              Height = 15
              Align = alTop
              Caption = 'Baixa'
              ExplicitWidth = 28
            end
            object deBaixa: TJvDBDateEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 97
              Height = 23
              Align = alClient
              DataField = 'baixa'
              DataSource = Receber.DataSource1
              ButtonFlat = True
              Enabled = False
              ButtonWidth = 23
              ShowNullDate = False
              TabOrder = 0
            end
          end
          object Panel32: TPanel
            Left = 618
            Top = 0
            Width = 103
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 6
            object Label24: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 97
              Height = 15
              Align = alTop
              Caption = 'Valor Baixado'
              ExplicitWidth = 71
            end
            object ceBaixa: TJvDBCalcEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 97
              Height = 23
              Align = alClient
              ButtonFlat = True
              Enabled = False
              ButtonWidth = 23
              TabOrder = 0
              DecimalPlacesAlwaysShown = False
              DataField = 'valor_baixado'
              DataSource = Receber.DataSource1
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 1030
    ExplicitWidth = 1030
    inherited ToolBar1: TToolBar
      Width = 718
      ExplicitWidth = 718
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
    inherited actNew: TAction
      Enabled = True
    end
    object findNatu: TAction
      ImageIndex = 332
      OnExecute = findNatuExecute
    end
    object findCli: TAction
      ImageIndex = 332
      OnExecute = findCliExecute
    end
    object actAtuContatos: TAction
      ImageIndex = 336
      OnExecute = actAtuContatosExecute
    end
  end
end
