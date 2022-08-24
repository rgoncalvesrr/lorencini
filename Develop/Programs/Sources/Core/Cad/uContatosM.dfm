inherited ContatosM: TContatosM
  Caption = 'Editar de Contatos'
  ClientHeight = 602
  ClientWidth = 1029
  ExplicitWidth = 1035
  ExplicitHeight = 631
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 1029
    Height = 558
    ExplicitWidth = 1029
    ExplicitHeight = 558
    inherited Panel3: TPanel
      Top = 240
      Width = 1029
      Height = 318
      ExplicitTop = 240
      ExplicitWidth = 1029
      ExplicitHeight = 318
      inherited PageControl3: TPageControl
        Width = 1023
        Height = 268
        ExplicitWidth = 1023
        ExplicitHeight = 268
        inherited tsDet: TTabSheet
          Caption = 'Clientes'
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 1015
          ExplicitHeight = 238
          inherited DBGrid1: TDBGrid
            Width = 1015
            Height = 238
            DataSource = Contatos.dsContCli
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 1023
        ExplicitWidth = 1023
        inherited ToolBar3: TToolBar
          Width = 1008
          ExplicitWidth = 1008
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
      Width = 1023
      Height = 234
      ExplicitWidth = 1023
      ExplicitHeight = 234
      inherited TabSheet1: TTabSheet
        Caption = 'Dados do Contato'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 1015
        ExplicitHeight = 204
        object Label8: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 103
          Width = 1009
          Height = 15
          Align = alTop
          Caption = 'Obs'
          FocusControl = DBEdit1
          ExplicitWidth = 21
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 1015
          Height = 50
          Align = alTop
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
            Width = 712
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 706
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
              Width = 706
              Height = 23
              Align = alClient
              DataField = 'nome'
              DataSource = Contatos.DataSource1
              TabOrder = 0
            end
          end
          object Panel6: TPanel
            Left = 793
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
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel11: TPanel
            Left = 904
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
              TabOrder = 0
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
        object Panel7: TPanel
          Left = 0
          Top = 50
          Width = 1015
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Panel8: TPanel
            Left = 0
            Top = 0
            Width = 140
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label5: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 134
              Height = 15
              Align = alTop
              Caption = 'Celular'
              FocusControl = DBEdit4
              ExplicitWidth = 37
            end
            object DBEdit4: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 134
              Height = 23
              Align = alClient
              DataField = 'celular'
              DataSource = Contatos.DataSource1
              TabOrder = 0
            end
          end
          object Panel9: TPanel
            Left = 140
            Top = 0
            Width = 140
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label6: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 134
              Height = 15
              Align = alTop
              Caption = 'Telefone'
              FocusControl = DBEdit5
              ExplicitWidth = 44
            end
            object DBEdit5: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 134
              Height = 23
              Align = alClient
              DataField = 'telefone'
              DataSource = Contatos.DataSource1
              TabOrder = 0
            end
          end
          object Panel10: TPanel
            Left = 329
            Top = 0
            Width = 686
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 3
            object Label7: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 680
              Height = 15
              Align = alTop
              Caption = 'E-mail'
              FocusControl = DBEdit6
              ExplicitWidth = 34
            end
            object DBEdit6: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 680
              Height = 23
              Align = alClient
              CharCase = ecLowerCase
              DataField = 'email'
              DataSource = Contatos.DataSource1
              TabOrder = 0
            end
          end
          object Panel12: TPanel
            Left = 280
            Top = 0
            Width = 49
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object Label9: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 43
              Height = 15
              Align = alTop
              Caption = 'Ramal'
              FocusControl = DBEdit7
              ExplicitWidth = 33
            end
            object DBEdit7: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 43
              Height = 23
              Align = alClient
              DataField = 'ramal'
              DataSource = Contatos.DataSource1
              TabOrder = 0
            end
          end
        end
        object DBMemo1: TDBMemo
          AlignWithMargins = True
          Left = 3
          Top = 124
          Width = 1009
          Height = 77
          Align = alClient
          DataField = 'obs'
          DataSource = Contatos.DataSource1
          TabOrder = 2
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 1023
    ExplicitWidth = 1023
    inherited ToolBar1: TToolBar
      Width = 715
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
end
