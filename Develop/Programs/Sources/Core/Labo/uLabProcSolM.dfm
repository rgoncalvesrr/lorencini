inherited LabProcSolM: TLabProcSolM
  Caption = 'Edi'#231#227'o de Remessas'
  ClientHeight = 322
  ClientWidth = 715
  ExplicitWidth = 721
  ExplicitHeight = 351
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 715
    Height = 278
    ExplicitWidth = 715
    ExplicitHeight = 217
    inherited Panel3: TPanel
      Align = alNone
      inherited PageControl3: TPageControl
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
      Width = 709
      Height = 272
      ExplicitWidth = 709
      ExplicitHeight = 211
      inherited TabSheet1: TTabSheet
        Caption = 'Solicita'#231#227'o de Remessa de Vidrarias'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 701
        ExplicitHeight = 181
        object Panel2: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 695
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 69
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 63
              Height = 15
              Align = alTop
              Caption = 'Solicita'#231#227'o'
              FocusControl = DBEdit1
              ExplicitWidth = 57
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 63
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'recno'
              DataSource = LabProcSol.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel5: TPanel
            Left = 69
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
              Height = 14
              Align = alTop
              Caption = 'Cliente'
              FocusControl = DBEdit7
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 39
            end
            object DBEdit7: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 23
              Width = 59
              Height = 24
              Margins.Right = 0
              Align = alClient
              DataField = 'codigo'
              DataSource = LabProcSol.DataSource1
              TabOrder = 0
              OnExit = DBEdit7Exit
              ExplicitHeight = 23
            end
          end
          object Panel6: TPanel
            Left = 131
            Top = 0
            Width = 29
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object SpeedButton3: TSpeedButton
              AlignWithMargins = True
              Left = 0
              Top = 24
              Width = 26
              Height = 23
              Margins.Left = 0
              Margins.Top = 24
              Action = actFindCli
              Align = alClient
              ExplicitTop = 27
            end
          end
          object Panel7: TPanel
            Left = 160
            Top = 0
            Width = 319
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 3
            object Label8: TLabel
              AlignWithMargins = True
              Left = 1
              Top = 3
              Width = 315
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
              Width = 315
              Height = 23
              Margins.Left = 1
              TabStop = False
              Align = alClient
              DataField = 'nome_chave'
              DataSource = LabProcSol.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel8: TPanel
            Left = 479
            Top = 0
            Width = 114
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 4
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
              DataSource = LabProcSol.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel9: TPanel
            Left = 593
            Top = 0
            Width = 102
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 5
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
              DataSource = LabProcSol.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
        object Panel10: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 115
          Width = 695
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitTop = 59
          object Panel11: TPanel
            Left = 0
            Top = 0
            Width = 75
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitLeft = -3
            object Label5: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 69
              Height = 15
              Align = alTop
              Caption = 'Frascos'
              FocusControl = DBEdit5
              ExplicitWidth = 39
            end
            object DBEdit5: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 69
              Height = 23
              Align = alClient
              DataField = 'frascos'
              DataSource = LabProcSol.DataSource1
              TabOrder = 0
              OnChange = DBEdit5Change
            end
          end
          object Panel12: TPanel
            Left = 75
            Top = 0
            Width = 75
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label6: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 69
              Height = 15
              Align = alTop
              Caption = 'Seringas'
              FocusControl = DBEdit6
              ExplicitWidth = 44
            end
            object DBEdit6: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 69
              Height = 23
              Align = alClient
              DataField = 'seringas'
              DataSource = LabProcSol.DataSource1
              TabOrder = 0
              OnChange = DBEdit5Change
            end
          end
          object Panel13: TPanel
            Left = 150
            Top = 0
            Width = 182
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object Label11: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 176
              Height = 15
              Align = alTop
              Caption = 'Repons'#225'vel pela Coleta'
              ExplicitWidth = 122
            end
            object JvDBComboBox1: TJvDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 176
              Height = 23
              Align = alClient
              DataField = 'coleta'
              DataSource = LabProcSol.DataSource1
              Items.Strings = (
                'Destinat'#225'rio'
                'Lorencini Brasil')
              TabOrder = 0
              Values.Strings = (
                '0'
                '1')
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
            end
          end
          object Panel14: TPanel
            Left = 454
            Top = 0
            Width = 241
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 4
            object Label12: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 235
              Height = 15
              Align = alTop
              Caption = 'Frete'
              ExplicitWidth = 26
            end
            object SpeedButton1: TSpeedButton
              AlignWithMargins = True
              Left = 212
              Top = 23
              Width = 26
              Height = 24
              Margins.Left = 1
              Margins.Top = 2
              Action = actSedex
              Align = alRight
              ParentShowHint = False
              ShowHint = True
              ExplicitLeft = 214
            end
            object JvDBCalcEdit1: TJvDBCalcEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 205
              Height = 23
              Align = alClient
              ReadOnly = True
              TabOrder = 0
              DecimalPlacesAlwaysShown = False
              DataField = 'frete'
              DataSource = LabProcSol.DataSource1
            end
          end
          object Panel19: TPanel
            Left = 332
            Top = 0
            Width = 122
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 3
            object Label13: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 116
              Height = 15
              Align = alTop
              Caption = 'Tipo de Envio'
              ExplicitWidth = 71
            end
            object JvDBComboBox2: TJvDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 116
              Height = 23
              Align = alClient
              DataField = 'envio'
              DataSource = LabProcSol.DataSource1
              Items.Strings = (
                'Sedex'
                'Transportadora'
                'Cliente Retira')
              TabOrder = 0
              Values.Strings = (
                '1'
                '2'
                '3')
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
              OnChange = JvDBComboBox2Change
            end
          end
        end
        object Panel17: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 171
          Width = 695
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          ExplicitTop = 115
          object Panel16: TPanel
            Left = 579
            Top = 0
            Width = 116
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 110
              Height = 15
              Align = alTop
              Caption = 'Emiss'#227'o'
              FocusControl = DBEdit3
              ExplicitWidth = 43
            end
            object DBEdit3: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 110
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'emissao'
              DataSource = LabProcSol.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel15: TPanel
            Left = 465
            Top = 0
            Width = 114
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 108
              Height = 15
              Align = alTop
              Caption = 'Atualiza'#231#227'o'
              FocusControl = DBEdit2
              ExplicitWidth = 61
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 108
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'atualizacao'
              DataSource = LabProcSol.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel18: TPanel
            Left = 0
            Top = 0
            Width = 465
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitLeft = -3
            object Label10: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 459
              Height = 15
              Align = alTop
              Caption = 'Observa'#231#227'o'
              FocusControl = DBEdit10
              ExplicitWidth = 62
            end
            object DBEdit10: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 459
              Height = 23
              Align = alClient
              DataField = 'descri'
              DataSource = LabProcSol.DataSource1
              TabOrder = 0
            end
          end
        end
        object Panel20: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 59
          Width = 695
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          Color = 12171775
          TabOrder = 3
          object Panel21: TPanel
            Left = 0
            Top = 0
            Width = 180
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label14: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 174
              Height = 15
              Align = alTop
              Caption = 'Frascos em Poder do Cliente'
              FocusControl = DBEdit11
              ExplicitWidth = 150
            end
            object DBEdit11: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 174
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'saldo_frascos'
              DataSource = LabProcSol.DataSource1
              ReadOnly = True
              TabOrder = 0
              OnChange = DBEdit5Change
              ExplicitWidth = 69
            end
          end
          object Panel22: TPanel
            Left = 180
            Top = 0
            Width = 180
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label15: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 174
              Height = 15
              Align = alTop
              Caption = 'Seringas em Poder do Cliente'
              FocusControl = DBEdit12
              ExplicitWidth = 155
            end
            object DBEdit12: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 174
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'saldo_seringas'
              DataSource = LabProcSol.DataSource1
              ReadOnly = True
              TabOrder = 0
              OnChange = DBEdit5Change
              ExplicitLeft = 6
            end
          end
          object Panel23: TPanel
            Left = 515
            Top = 0
            Width = 180
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitLeft = 360
            object Label16: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 174
              Height = 15
              Align = alTop
              Caption = 'Recipientes em Poder do Cliente'
              FocusControl = DBEdit13
              ExplicitWidth = 171
            end
            object DBEdit13: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 174
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'saldo_recipientes'
              DataSource = LabProcSol.DataSource1
              ReadOnly = True
              TabOrder = 0
              OnChange = DBEdit5Change
              ExplicitWidth = 69
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 709
    ExplicitWidth = 709
    inherited ToolBar1: TToolBar
      Width = 696
      ExplicitWidth = 696
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
    object actFindCli: TAction
      ImageIndex = 332
      OnExecute = actFindCliExecute
    end
    object actSedex: TAction
      Enabled = False
      Hint = 'C'#225'lculo Sedex'
      ImageIndex = 268
      OnExecute = actSedexExecute
    end
  end
end
