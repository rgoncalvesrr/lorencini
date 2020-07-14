inherited ContatosMClientes: TContatosMClientes
  ActiveControl = FrameCliente1.DBEdit8
  Caption = 'Contato po Cliente'
  ClientHeight = 518
  ClientWidth = 934
  ExplicitWidth = 940
  ExplicitHeight = 547
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 934
    Height = 474
    ExplicitTop = 44
    ExplicitWidth = 934
    ExplicitHeight = 474
    inherited Panel3: TPanel
      Top = 206
      Align = alNone
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
      Width = 928
      Height = 468
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 928
      ExplicitHeight = 468
      inherited TabSheet1: TTabSheet
        Caption = 'Clientes por Contato'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 920
        ExplicitHeight = 438
        object GroupBox1: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 914
          Height = 69
          Align = alTop
          Caption = ' Contato '
          TabOrder = 0
          object Panel2: TPanel
            Left = 2
            Top = 17
            Width = 910
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Panel4: TPanel
              Left = 0
              Top = 0
              Width = 81
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label1: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 75
                Height = 15
                Align = alTop
                Caption = 'Contato'
                FocusControl = DBEdit1
                ExplicitWidth = 43
              end
              object DBEdit1: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 75
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'recno'
                DataSource = Contatos.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel5: TPanel
              Left = 81
              Top = 0
              Width = 607
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object Label3: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 601
                Height = 15
                Align = alTop
                Caption = 'Nome'
                FocusControl = DBEdit3
                ExplicitWidth = 33
              end
              object DBEdit3: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 601
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'nome'
                DataSource = Contatos.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel6: TPanel
              Left = 688
              Top = 0
              Width = 111
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 2
              object Label2: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 105
                Height = 15
                Align = alTop
                Caption = 'Data'
                FocusControl = DBEdit2
                ExplicitWidth = 24
              end
              object DBEdit2: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 105
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'data'
                DataSource = Contatos.DataSource1
                TabOrder = 0
              end
            end
            object Panel11: TPanel
              Left = 799
              Top = 0
              Width = 111
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 3
              object Label4: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 105
                Height = 15
                Align = alTop
                Caption = 'Situa'#231#227'o'
                ExplicitWidth = 45
              end
              object JvDBComboBox1: TJvDBComboBox
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 105
                Height = 23
                Align = alTop
                DataField = 'situacao'
                DataSource = Contatos.DataSource1
                Items.Strings = (
                  'Ativo'
                  'Inativo')
                ReadOnly = True
                TabOrder = 0
                TabStop = False
                Values.Strings = (
                  '1'
                  '0')
                ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                ListSettings.OutfilteredValueFont.Color = clRed
                ListSettings.OutfilteredValueFont.Height = -11
                ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                ListSettings.OutfilteredValueFont.Style = []
              end
            end
          end
        end
        object GroupBox2: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 78
          Width = 914
          Height = 123
          Align = alTop
          Caption = ' Cliente '
          TabOrder = 1
          inline FrameCliente1: TFrameCliente
            Left = 2
            Top = 17
            Width = 910
            Height = 100
            Align = alTop
            AutoSize = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Pitch = fpVariable
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            ExplicitLeft = 2
            ExplicitTop = 17
            ExplicitWidth = 910
            inherited Panel1: TPanel
              Width = 910
              ExplicitWidth = 910
              inherited Panel2: TPanel
                ExplicitHeight = 50
                inherited Label9: TLabel
                  Width = 70
                end
                inherited DBEdit8: TDBEdit
                  DataField = 'cliente'
                  ExplicitTop = 24
                  ExplicitHeight = 23
                end
              end
              inherited Panel35: TPanel
                ExplicitHeight = 50
                inherited SpeedButton1: TSpeedButton
                  ExplicitTop = 23
                end
              end
              inherited Panel4: TPanel
                Width = 265
                ExplicitWidth = 265
                ExplicitHeight = 50
                inherited Label10: TLabel
                  Width = 259
                end
                inherited DBEdit9: TDBEdit
                  Width = 259
                  ExplicitTop = 24
                  ExplicitWidth = 259
                  ExplicitHeight = 23
                end
              end
              inherited Panel5: TPanel
                Left = 370
                ExplicitLeft = 370
                ExplicitHeight = 50
                inherited Label11: TLabel
                  Width = 243
                end
                inherited DBEdit10: TDBEdit
                  ExplicitTop = 24
                  ExplicitHeight = 23
                end
              end
              inherited Panel6: TPanel
                Left = 619
                ExplicitLeft = 619
                ExplicitHeight = 50
                inherited Label12: TLabel
                  Width = 154
                end
                inherited DBEdit11: TDBEdit
                  ExplicitTop = 24
                  ExplicitHeight = 23
                end
              end
              inherited Panel7: TPanel
                Left = 779
                ExplicitLeft = 779
                ExplicitHeight = 50
                inherited Label13: TLabel
                  Width = 125
                end
                inherited DBEdit12: TDBEdit
                  ExplicitTop = 24
                  ExplicitHeight = 23
                end
              end
            end
            inherited Panel3: TPanel
              Width = 910
              ExplicitWidth = 910
              inherited Panel8: TPanel
                Width = 409
                ExplicitWidth = 409
                ExplicitHeight = 50
                inherited Label1: TLabel
                  Width = 403
                end
                inherited DBEdit1: TDBEdit
                  Width = 403
                  ExplicitTop = 24
                  ExplicitWidth = 403
                  ExplicitHeight = 23
                end
              end
              inherited Panel9: TPanel
                Left = 730
                ExplicitLeft = 730
                ExplicitHeight = 50
                inherited Label2: TLabel
                  Width = 46
                end
                inherited DBEdit2: TDBEdit
                  ExplicitTop = 24
                  ExplicitHeight = 23
                end
              end
              inherited Panel30: TPanel
                ExplicitHeight = 50
                inherited Label20: TLabel
                  Width = 315
                end
                inherited DBEdit17: TDBEdit
                  ExplicitTop = 24
                  ExplicitHeight = 23
                end
              end
              inherited Panel10: TPanel
                Left = 782
                ExplicitLeft = 782
                ExplicitHeight = 50
                inherited Label3: TLabel
                  Width = 122
                end
                inherited DBEdit3: TDBEdit
                  ExplicitTop = 24
                  ExplicitHeight = 23
                end
              end
            end
            inherited dsCliente: TDataSource
              DataSet = Contatos.qContCli
            end
          end
        end
        object GroupBox3: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 207
          Width = 914
          Height = 228
          Align = alClient
          Caption = ' Configura'#231#245'es '
          TabOrder = 2
          object Panel7: TPanel
            AlignWithMargins = True
            Left = 5
            Top = 20
            Width = 220
            Height = 203
            Align = alLeft
            Alignment = taLeftJustify
            BevelOuter = bvNone
            TabOrder = 0
            object Panel8: TPanel
              Left = 0
              Top = 0
              Width = 220
              Height = 50
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object Label5: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 214
                Height = 15
                Align = alTop
                Caption = 'Fun'#231#227'o'
                FocusControl = DBEdit4
                ExplicitWidth = 39
              end
              object DBEdit4: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 214
                Height = 23
                Align = alClient
                DataField = 'funcao'
                DataSource = Contatos.dsContCli
                TabOrder = 0
              end
            end
            object Panel12: TPanel
              Left = 0
              Top = 50
              Width = 220
              Height = 177
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 1
              object Label8: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 214
                Height = 15
                Align = alTop
                Caption = 'Situa'#231#227'o do Contato no Cliente'
                ExplicitWidth = 165
              end
              object JvDBComboBox2: TJvDBComboBox
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 214
                Height = 23
                Align = alTop
                DataField = 'situacao'
                DataSource = Contatos.dsContCli
                Items.Strings = (
                  'Ativo'
                  'Inativo')
                TabOrder = 0
                Values.Strings = (
                  '1'
                  '0')
                ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                ListSettings.OutfilteredValueFont.Color = clRed
                ListSettings.OutfilteredValueFont.Height = -11
                ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                ListSettings.OutfilteredValueFont.Style = []
                ExplicitLeft = 6
              end
            end
          end
          object Panel9: TPanel
            AlignWithMargins = True
            Left = 236
            Top = 20
            Width = 673
            Height = 203
            Margins.Left = 8
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object ControlBar3: TControlBar
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 667
              Height = 38
              Align = alTop
              AutoSize = True
              BevelKind = bkNone
              DrawingStyle = dsGradient
              TabOrder = 0
              object ToolBar2: TToolBar
                Left = 11
                Top = 2
                Width = 568
                Height = 34
                AutoSize = True
                BorderWidth = 1
                ButtonHeight = 30
                ButtonWidth = 125
                Caption = 'ToolBar2'
                DisabledImages = Resources.medium_d
                DrawingStyle = dsGradient
                HotImages = Resources.medium_h
                Images = Resources.medium_n
                List = True
                AllowTextButtons = True
                TabOrder = 0
                object ToolButton5: TToolButton
                  Left = 0
                  Top = 0
                  Action = actCheck
                  Style = tbsTextButton
                end
                object ToolButton15: TToolButton
                  Left = 110
                  Top = 0
                  Action = actUnCheck
                  Style = tbsTextButton
                end
              end
            end
            object Panel10: TPanel
              AlignWithMargins = True
              Left = 3
              Top = 47
              Width = 262
              Height = 153
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object DBCheckBox1: TDBCheckBox
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 256
                Height = 17
                Align = alTop
                AllowGrayed = True
                Caption = 'Contato Padr'#227'o'
                DataField = 'padrao'
                DataSource = Contatos.dsContCli
                TabOrder = 0
                ValueChecked = 'True'
                ValueUnchecked = 'False'
              end
              object DBCheckBox2: TDBCheckBox
                AlignWithMargins = True
                Left = 3
                Top = 49
                Width = 256
                Height = 17
                Align = alTop
                Caption = 'Enviar Pedido'
                DataField = 'enviar_pedido_venda'
                DataSource = Contatos.dsContCli
                TabOrder = 1
                ValueChecked = 'True'
                ValueUnchecked = 'False'
              end
              object DBCheckBox9: TDBCheckBox
                AlignWithMargins = True
                Left = 3
                Top = 26
                Width = 256
                Height = 17
                Align = alTop
                Caption = 'Enviar Cota'#231#227'o'
                DataField = 'enviar_cotacao_venda'
                DataSource = Contatos.dsContCli
                TabOrder = 2
                ValueChecked = 'True'
                ValueUnchecked = 'False'
              end
            end
            object Panel13: TPanel
              AlignWithMargins = True
              Left = 271
              Top = 47
              Width = 399
              Height = 153
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 2
              object DBCheckBox3: TDBCheckBox
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 393
                Height = 17
                Align = alTop
                Caption = 'Enviar laudo em n'#237'vel normal'
                DataField = 'enviar_laudo_normal'
                DataSource = Contatos.dsContCli
                TabOrder = 0
                ValueChecked = 'True'
                ValueUnchecked = 'False'
              end
              object DBCheckBox4: TDBCheckBox
                AlignWithMargins = True
                Left = 3
                Top = 26
                Width = 393
                Height = 17
                Align = alTop
                Caption = 'Enviar laudo em n'#237'vel de aten'#231#227'o'
                DataField = 'enviar_laudo_atencao'
                DataSource = Contatos.dsContCli
                TabOrder = 1
                ValueChecked = 'True'
                ValueUnchecked = 'False'
              end
              object DBCheckBox5: TDBCheckBox
                AlignWithMargins = True
                Left = 3
                Top = 72
                Width = 393
                Height = 17
                Align = alTop
                Caption = 'Enviar laudo em n'#237'vel de cr'#237'tico'
                DataField = 'enviar_laudo_critico'
                DataSource = Contatos.dsContCli
                TabOrder = 2
                ValueChecked = 'True'
                ValueUnchecked = 'False'
              end
              object DBCheckBox6: TDBCheckBox
                AlignWithMargins = True
                Left = 3
                Top = 118
                Width = 393
                Height = 17
                Align = alTop
                Caption = 'Enviar laudo de retorno em n'#237'vel normal'
                DataField = 'enviar_laudo_retorno_normal'
                DataSource = Contatos.dsContCli
                TabOrder = 3
                ValueChecked = 'True'
                ValueUnchecked = 'False'
              end
              object DBCheckBox7: TDBCheckBox
                AlignWithMargins = True
                Left = 3
                Top = 95
                Width = 393
                Height = 17
                Align = alTop
                Caption = 'Enviar laudo de retorno em n'#237'vel de aten'#231#227'o'
                DataField = 'enviar_laudo_retorno_atencao'
                DataSource = Contatos.dsContCli
                TabOrder = 4
                ValueChecked = 'True'
                ValueUnchecked = 'False'
              end
              object DBCheckBox8: TDBCheckBox
                AlignWithMargins = True
                Left = 3
                Top = 49
                Width = 393
                Height = 17
                Align = alTop
                Caption = 'Enviar laudo de retorno em n'#237'vel de cr'#237'tico'
                DataField = 'enviar_laudo_retorno_critico'
                DataSource = Contatos.dsContCli
                TabOrder = 5
                ValueChecked = 'True'
                ValueUnchecked = 'False'
              end
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 928
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 928
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      Width = 697
      ButtonWidth = 115
      ExplicitWidth = 697
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
    Left = 248
    Top = 216
    object actCheck: TAction
      Tag = 1
      Caption = 'Marcar Todos'
      Enabled = False
      ImageIndex = 67
      OnExecute = actCheckExecute
    end
    object actUnCheck: TAction
      Caption = 'Desmarcar Todos'
      Enabled = False
      ImageIndex = 69
      OnExecute = actCheckExecute
    end
  end
end
