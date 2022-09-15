inherited ClienteMFinais: TClienteMFinais
  Caption = 'Clientes Finais'
  ClientHeight = 606
  ClientWidth = 1105
  ExplicitWidth = 1111
  ExplicitHeight = 641
  PixelsPerInch = 120
  TextHeight = 20
  inherited Panel1: TPanel
    Top = 44
    Width = 1105
    Height = 562
    ExplicitTop = 44
    ExplicitWidth = 1105
    ExplicitHeight = 481
    inherited Panel3: TPanel
      Top = 275
      Align = alNone
      ExplicitTop = 275
      inherited PageControl3: TPageControl
        Top = 47
        Height = 263
        ExplicitLeft = 3
        ExplicitTop = 47
        ExplicitWidth = 846
        ExplicitHeight = 263
        inherited tsDet: TTabSheet
          ExplicitLeft = 4
          ExplicitTop = 31
          ExplicitWidth = 838
          ExplicitHeight = 228
          inherited DBGrid1: TDBGrid
            Width = 838
            Height = 228
          end
        end
      end
      inherited ControlBar2: TControlBar
        Height = 38
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 846
        ExplicitHeight = 38
        inherited ToolBar3: TToolBar
          ButtonWidth = 150
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
      Width = 1099
      Height = 556
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 1099
      ExplicitHeight = 475
      inherited TabSheet1: TTabSheet
        Caption = 'Cliente Finais'
        ExplicitLeft = 4
        ExplicitTop = 31
        ExplicitWidth = 1091
        ExplicitHeight = 440
        object Bevel1: TBevel
          AlignWithMargins = True
          Left = 3
          Top = 63
          Width = 1085
          Height = 2
          Align = alTop
          Shape = bsTopLine
          ExplicitWidth = 1123
        end
        object Panel27: TPanel
          Left = 0
          Top = 0
          Width = 1091
          Height = 60
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel28: TPanel
            Left = 0
            Top = 0
            Width = 90
            Height = 60
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label47: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 84
              Height = 18
              Align = alTop
              Caption = 'C'#243'digo'
              FocusControl = DBEdit49
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 51
            end
            object DBEdit49: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 27
              Width = 84
              Height = 30
              TabStop = False
              Align = alClient
              DataField = 'codigo'
              DataSource = DM.dsClientes
              Enabled = False
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 28
            end
          end
          object Panel29: TPanel
            Left = 90
            Top = 0
            Width = 791
            Height = 60
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label54: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 785
              Height = 18
              Align = alTop
              Caption = 'Raz'#227'o Social'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 91
            end
            object DBEdit50: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 27
              Width = 785
              Height = 30
              TabStop = False
              Align = alClient
              CharCase = ecUpperCase
              DataField = 'empresa'
              DataSource = DM.dsClientes
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 28
            end
          end
          object Panel30: TPanel
            Left = 881
            Top = 0
            Width = 210
            Height = 60
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object Label55: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 204
              Height = 18
              Align = alTop
              Caption = 'Apelido'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 53
            end
            object DBEdit51: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 27
              Width = 204
              Height = 30
              TabStop = False
              Align = alClient
              CharCase = ecUpperCase
              DataField = 'nome_chave'
              DataSource = DM.dsClientes
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 28
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 1099
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 1099
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      ButtonWidth = 133
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
