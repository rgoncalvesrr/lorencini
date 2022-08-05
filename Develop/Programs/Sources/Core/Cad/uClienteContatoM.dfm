inherited ClientesContatoM: TClientesContatoM
  Caption = 'Manuten'#231#227'o de contatos'
  ClientHeight = 433
  ClientWidth = 785
  ExplicitWidth = 791
  ExplicitHeight = 462
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 785
    Height = 389
    ExplicitTop = 44
    ExplicitWidth = 785
    ExplicitHeight = 389
    inherited Panel3: TPanel
      Top = 61
      Align = alNone
      TabOrder = 3
      ExplicitTop = 61
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
      Top = 56
      Width = 779
      Height = 330
      ExplicitLeft = 3
      ExplicitTop = 56
      ExplicitWidth = 779
      ExplicitHeight = 330
      inherited TabSheet1: TTabSheet
        Caption = 'Contato'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 771
        ExplicitHeight = 300
        object Panel4: TPanel
          Left = 0
          Top = 29
          Width = 771
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
              Font.Pitch = fpVariable
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
            Width = 676
            Height = 29
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 670
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
          Top = 58
          Width = 771
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
            Width = 676
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
          Top = 87
          Width = 771
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
              Font.Pitch = fpVariable
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
            Width = 676
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
          Left = 0
          Top = 116
          Width = 771
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
            Width = 676
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
          Left = 0
          Top = 145
          Width = 771
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
            Width = 676
            Height = 29
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object DBEdit5: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 670
              Height = 23
              Align = alClient
              DataField = 'email'
              DataSource = DM.dsContatos
              TabOrder = 0
            end
          end
        end
        object Panel19: TPanel
          Left = 0
          Top = 174
          Width = 771
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
              ExplicitWidth = 48
              ExplicitHeight = 15
            end
          end
          object Panel21: TPanel
            Left = 95
            Top = 0
            Width = 676
            Height = 29
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object DBEdit6: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 670
              Height = 23
              Align = alClient
              DataField = 'contato_nextel'
              DataSource = DM.dsContatos
              TabOrder = 0
            end
          end
        end
        object Panel22: TPanel
          Left = 0
          Top = 203
          Width = 771
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
              ExplicitWidth = 74
              ExplicitHeight = 15
            end
          end
          object Panel24: TPanel
            Left = 95
            Top = 0
            Width = 676
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
          Left = 0
          Top = 0
          Width = 771
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
            Width = 676
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
      Width = 785
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
        Font.Pitch = fpVariable
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
        Font.Pitch = fpVariable
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
    Width = 779
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 779
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      ButtonWidth = 115
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
