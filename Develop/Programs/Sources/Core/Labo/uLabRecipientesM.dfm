inherited LabRecipientesM: TLabRecipientesM
  Caption = 'Manuten'#231#227'o de Tipo de Recipiente'
  ClientHeight = 140
  ClientWidth = 822
  ExplicitWidth = 828
  ExplicitHeight = 169
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 822
    Height = 96
    ExplicitHeight = 88
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
      Width = 816
      Height = 90
      ExplicitHeight = 82
      inherited TabSheet1: TTabSheet
        Caption = 'Tipo de Recipiente'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 625
        ExplicitHeight = 52
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 808
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitWidth = 625
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 71
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitLeft = -3
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 65
              Height = 15
              Align = alTop
              Caption = 'Recipiente'
              FocusControl = DBEdit1
              ExplicitWidth = 55
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 65
              Height = 23
              Align = alClient
              DataField = 'recno'
              DataSource = LabRecipientes.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel5: TPanel
            Left = 71
            Top = 0
            Width = 505
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitWidth = 554
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 499
              Height = 15
              Align = alTop
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit2
              ExplicitWidth = 51
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 499
              Height = 23
              Align = alClient
              DataField = 'descri'
              DataSource = LabRecipientes.DataSource1
              TabOrder = 0
              ExplicitWidth = 548
            end
          end
          object Panel6: TPanel
            Left = 576
            Top = 0
            Width = 72
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitLeft = 739
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 66
              Height = 15
              Align = alTop
              Caption = 'Capacidade'
              FocusControl = DBEdit3
              ExplicitWidth = 62
            end
            object DBEdit3: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 66
              Height = 23
              Align = alClient
              DataField = 'capacidade'
              DataSource = LabRecipientes.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitWidth = 65
            end
          end
          object Panel7: TPanel
            Left = 648
            Top = 0
            Width = 80
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            ExplicitLeft = 731
            object Label4: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 74
              Height = 15
              Align = alTop
              Caption = 'Tipo'
              ExplicitWidth = 23
            end
            object DBComboBox1: TDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 74
              Height = 23
              Style = csDropDownList
              Align = alClient
              DataField = 'tipo'
              DataSource = LabRecipientes.DataSource1
              ItemHeight = 15
              Items.Strings = (
                'Frasco'
                'Seringa')
              TabOrder = 0
              ExplicitWidth = 90
            end
          end
          object Panel8: TPanel
            Left = 728
            Top = 0
            Width = 80
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 4
            ExplicitLeft = 768
            ExplicitTop = -8
            object Label5: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 74
              Height = 15
              Align = alTop
              Caption = 'Status'
              ExplicitWidth = 32
            end
            object DBComboBox2: TDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 74
              Height = 23
              Style = csDropDownList
              Align = alClient
              DataField = 'status'
              DataSource = LabRecipientes.DataSource1
              ItemHeight = 15
              Items.Strings = (
                'Ativo'
                'Inativo')
              TabOrder = 0
              ExplicitWidth = 90
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 816
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
end
