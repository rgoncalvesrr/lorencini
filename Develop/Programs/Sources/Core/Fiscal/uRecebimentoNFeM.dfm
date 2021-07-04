inherited RecebimentoNFeM: TRecebimentoNFeM
  Caption = 'Registro de NF-e de Recebimento'
  ClientHeight = 187
  ClientWidth = 779
  ExplicitWidth = 785
  ExplicitHeight = 216
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 779
    Height = 143
    inherited Panel3: TPanel
      Top = 206
      Align = alNone
      inherited PageControl3: TPageControl
        Top = 47
        Height = 185
        inherited tsDet: TTabSheet
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
      Width = 773
      Height = 137
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 633
      ExplicitHeight = 189
      inherited TabSheet1: TTabSheet
        Caption = 'Dados da NF-e'
        ExplicitLeft = 4
        ExplicitTop = 27
        ExplicitWidth = 625
        ExplicitHeight = 159
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 765
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitLeft = 288
          ExplicitTop = 80
          ExplicitWidth = 185
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 517
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitWidth = 297
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 511
              Height = 15
              Align = alTop
              Caption = 'Chave NF-e'
              ExplicitWidth = 62
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 511
              Height = 23
              Align = alClient
              DataField = 'chave'
              DataSource = RecebimentoNFe.DataSource1
              TabOrder = 0
              ExplicitLeft = 120
              ExplicitWidth = 121
            end
          end
          object Panel5: TPanel
            Left = 517
            Top = 0
            Width = 62
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitLeft = 576
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 56
              Height = 15
              Align = alTop
              Caption = 'Frascos'
              ExplicitWidth = 39
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 56
              Height = 23
              Align = alClient
              DataField = 'frascos'
              DataSource = RecebimentoNFe.DataSource1
              TabOrder = 0
              ExplicitWidth = 291
            end
          end
          object Panel6: TPanel
            Left = 579
            Top = 0
            Width = 62
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitLeft = 638
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 56
              Height = 15
              Align = alTop
              Caption = 'Saldo'
              ExplicitWidth = 29
            end
            object DBEdit3: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 56
              Height = 23
              TabStop = False
              Align = alClient
              AutoSelect = False
              DataField = 'frascos_saldo'
              DataSource = RecebimentoNFe.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel7: TPanel
            Left = 641
            Top = 0
            Width = 62
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            ExplicitLeft = 737
            object Label4: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 56
              Height = 15
              Align = alTop
              Caption = 'Seringas'
              ExplicitWidth = 44
            end
            object DBEdit4: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 56
              Height = 23
              Align = alClient
              DataField = 'seringas'
              DataSource = RecebimentoNFe.DataSource1
              TabOrder = 0
            end
          end
          object Panel8: TPanel
            Left = 703
            Top = 0
            Width = 62
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 4
            ExplicitLeft = 747
            object Label5: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 56
              Height = 15
              Align = alTop
              Caption = 'Saldo'
              ExplicitWidth = 29
            end
            object DBEdit5: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 56
              Height = 23
              TabStop = False
              Align = alClient
              AutoSelect = False
              DataField = 'seringas_saldo'
              DataSource = RecebimentoNFe.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
        object Panel9: TPanel
          Left = 0
          Top = 50
          Width = 765
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitTop = 1500
          object Panel10: TPanel
            Left = 103
            Top = 0
            Width = 662
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitLeft = -3
            ExplicitTop = 3
            ExplicitWidth = 1252
            object Label6: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 656
              Height = 15
              Align = alTop
              Caption = 'Nome Curto'
              ExplicitWidth = 66
            end
            object DBEdit6: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 656
              Height = 23
              TabStop = False
              Align = alClient
              AutoSelect = False
              DataField = 'nome_chave'
              DataSource = RecebimentoNFe.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitWidth = 511
            end
          end
          object Panel13: TPanel
            Left = 0
            Top = 0
            Width = 103
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label9: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 97
              Height = 15
              Align = alTop
              Caption = 'Cliente'
              ExplicitWidth = 37
            end
            object DBEdit9: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 97
              Height = 23
              TabStop = False
              Align = alClient
              AutoSelect = False
              DataField = 'cliente'
              DataSource = RecebimentoNFe.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitWidth = 56
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 773
    Height = 38
    ExplicitLeft = -2
    ExplicitTop = 3
    ExplicitWidth = 773
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
end
