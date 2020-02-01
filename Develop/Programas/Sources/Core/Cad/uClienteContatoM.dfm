inherited ClientesContatoM: TClientesContatoM
  Caption = 'Manuten'#231#227'o de contatos'
  ClientHeight = 398
  ExplicitHeight = 427
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Height = 354
    ExplicitLeft = 0
    ExplicitWidth = 639
    ExplicitHeight = 354
    inherited Panel3: TPanel
      Top = 61
      Align = alNone
      TabOrder = 3
      ExplicitTop = 61
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
      Top = 56
      Height = 295
      ExplicitLeft = 3
      ExplicitTop = 56
      ExplicitWidth = 633
      ExplicitHeight = 295
      inherited TabSheet1: TTabSheet
        Caption = 'Contato'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 625
        ExplicitHeight = 265
        object Panel4: TPanel
          Left = 0
          Top = 35
          Width = 625
          Height = 29
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 95
            Height = 29
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 89
              Height = 23
              Align = alClient
              Caption = 'Nome'
              FocusControl = DBEdit1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Layout = tlCenter
              ExplicitWidth = 33
              ExplicitHeight = 15
            end
          end
          object Panel6: TPanel
            Left = 95
            Top = 0
            Width = 530
            Height = 29
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 524
              Height = 23
              Align = alClient
              DataField = 'nome'
              DataSource = DM.dsContatos
              TabOrder = 0
            end
          end
        end
        object Panel7: TPanel
          Left = 0
          Top = 64
          Width = 625
          Height = 29
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object Panel8: TPanel
            Left = 0
            Top = 0
            Width = 95
            Height = 29
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 89
              Height = 23
              Align = alClient
              Caption = 'Fun'#231#227'o'
              FocusControl = DBEdit2
              Layout = tlCenter
              ExplicitWidth = 39
              ExplicitHeight = 15
            end
          end
          object Panel9: TPanel
            Left = 95
            Top = 0
            Width = 530
            Height = 29
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 304
              Height = 23
              Align = alLeft
              DataField = 'funcao'
              DataSource = DM.dsContatos
              TabOrder = 0
            end
          end
        end
        object Panel10: TPanel
          Left = 0
          Top = 93
          Width = 625
          Height = 29
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 3
          object Panel11: TPanel
            Left = 0
            Top = 0
            Width = 95
            Height = 29
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 89
              Height = 23
              Align = alClient
              Caption = 'Telefone'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Layout = tlCenter
              ExplicitWidth = 48
              ExplicitHeight = 15
            end
          end
          object Panel12: TPanel
            Left = 95
            Top = 0
            Width = 530
            Height = 29
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object DBEdit3: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 229
              Height = 23
              Align = alLeft
              DataField = 'telefone'
              DataSource = DM.dsContatos
              TabOrder = 0
            end
          end
        end
        object Panel13: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 125
          Width = 619
          Height = 29
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 4
          object Panel14: TPanel
            Left = 0
            Top = 0
            Width = 95
            Height = 29
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label4: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 89
              Height = 23
              Align = alClient
              Caption = 'Celular'
              FocusControl = DBEdit4
              Layout = tlCenter
              ExplicitWidth = 37
              ExplicitHeight = 15
            end
          end
          object Panel15: TPanel
            Left = 95
            Top = 0
            Width = 524
            Height = 29
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object DBEdit4: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 226
              Height = 23
              Align = alLeft
              DataField = 'celular'
              DataSource = DM.dsContatos
              TabOrder = 0
            end
          end
        end
        object Panel16: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 160
          Width = 619
          Height = 29
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 5
          object Panel17: TPanel
            Left = 0
            Top = 0
            Width = 95
            Height = 29
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label5: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 89
              Height = 23
              Align = alClient
              Caption = 'E-Mail'
              FocusControl = DBEdit5
              Layout = tlCenter
              ExplicitWidth = 34
              ExplicitHeight = 15
            end
          end
          object Panel18: TPanel
            Left = 95
            Top = 0
            Width = 524
            Height = 29
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object DBEdit5: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 518
              Height = 23
              Align = alClient
              DataField = 'email'
              DataSource = DM.dsContatos
              TabOrder = 0
            end
          end
        end
        object Panel19: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 195
          Width = 619
          Height = 29
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 6
          object Panel20: TPanel
            Left = 0
            Top = 0
            Width = 95
            Height = 29
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label6: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 89
              Height = 23
              Align = alClient
              Caption = 'Nextel ID'
              FocusControl = DBEdit6
              Layout = tlCenter
              ExplicitWidth = 47
              ExplicitHeight = 15
            end
          end
          object Panel21: TPanel
            Left = 95
            Top = 0
            Width = 524
            Height = 29
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object DBEdit6: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 518
              Height = 23
              Align = alClient
              DataField = 'contato_nextel'
              DataSource = DM.dsContatos
              TabOrder = 0
            end
          end
        end
        object Panel22: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 230
          Width = 619
          Height = 29
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 7
          object Panel23: TPanel
            Left = 0
            Top = 0
            Width = 95
            Height = 29
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label7: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 89
              Height = 23
              Align = alClient
              Caption = 'Nextel Celular'
              FocusControl = DBEdit7
              Layout = tlCenter
              ExplicitWidth = 73
              ExplicitHeight = 15
            end
          end
          object Panel24: TPanel
            Left = 95
            Top = 0
            Width = 524
            Height = 29
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object DBEdit7: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 188
              Height = 23
              Align = alLeft
              DataField = 'contato_nextelcel'
              DataSource = DM.dsContatos
              TabOrder = 0
            end
          end
        end
        object Panel25: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 619
          Height = 29
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel26: TPanel
            Left = 0
            Top = 0
            Width = 95
            Height = 29
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label8: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 89
              Height = 23
              Align = alClient
              Caption = 'Situa'#231#227'o'
              FocusControl = DBEdit2
              Layout = tlCenter
              ExplicitWidth = 45
              ExplicitHeight = 15
            end
          end
          object Panel27: TPanel
            Left = 95
            Top = 0
            Width = 524
            Height = 29
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object JvDBComboBox1: TJvDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 174
              Height = 23
              Align = alLeft
              DataField = 'situacao'
              DataSource = DM.dsContatos
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
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 639
      Height = 53
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Label36: TLabel
        Left = 5
        Top = 4
        Width = 39
        Height = 15
        Caption = 'C'#243'digo'
        FocusControl = DBEdit32
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label37: TLabel
        Left = 54
        Top = 4
        Width = 73
        Height = 15
        Caption = 'Raz'#227'o Social'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit32: TDBEdit
        Left = 5
        Top = 20
        Width = 42
        Height = 23
        DataField = 'codigo'
        DataSource = DM.dsClientes
        Enabled = False
        TabOrder = 0
      end
      object DBEdit33: TDBEdit
        Left = 54
        Top = 20
        Width = 407
        Height = 23
        DataField = 'empresa'
        DataSource = DM.dsClientes
        Enabled = False
        TabOrder = 1
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
    Left = 208
  end
end
