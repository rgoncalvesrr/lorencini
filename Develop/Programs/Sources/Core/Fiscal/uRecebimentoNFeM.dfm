inherited RecebimentoNFeM: TRecebimentoNFeM
  Caption = 'Registro de NF-e de Recebimento'
  ClientHeight = 239
  ClientWidth = 848
  ExplicitWidth = 854
  ExplicitHeight = 268
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 848
    Height = 195
    ExplicitWidth = 848
    ExplicitHeight = 195
    inherited pnLookup: TPanel
      Top = 1
      ExplicitTop = 1
    end
    inherited Panel3: TPanel
      Top = 206
      Align = alNone
      ExplicitTop = 206
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
      Width = 842
      ExplicitWidth = 842
      inherited TabSheet1: TTabSheet
        Caption = 'Dados da NF-e'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 834
        ExplicitHeight = 159
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 834
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 446
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitWidth = 586
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 440
              Height = 15
              Align = alTop
              Caption = 'Chave NF-e'
              ExplicitWidth = 62
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 440
              Height = 23
              Align = alClient
              DataField = 'chave'
              DataSource = RecebimentoNFe.DataSource1
              TabOrder = 0
              OnExit = DBEdit1Exit
              ExplicitWidth = 580
            end
          end
          object Panel5: TPanel
            Left = 586
            Top = 0
            Width = 62
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
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
            end
          end
          object Panel6: TPanel
            Left = 648
            Top = 0
            Width = 62
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
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
            Left = 710
            Top = 0
            Width = 62
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
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
            Left = 772
            Top = 0
            Width = 62
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 4
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
          object Panel9: TPanel
            Left = 524
            Top = 0
            Width = 62
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 5
            ExplicitLeft = 586
            object Label6: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 56
              Height = 15
              Align = alTop
              Caption = 'S'#233'rie'
              ExplicitWidth = 25
            end
            object DBEdit6: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 56
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'nfser'
              DataSource = RecebimentoNFe.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel10: TPanel
            Left = 446
            Top = 0
            Width = 78
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 6
            object Label7: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 72
              Height = 15
              Align = alTop
              Caption = 'Nota'
              ExplicitWidth = 26
            end
            object DBEdit7: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 72
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'nf_num'
              DataSource = RecebimentoNFe.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitWidth = 56
            end
          end
        end
        inline FrameCliente1: TFrameCliente
          Left = 0
          Top = 50
          Width = 834
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
          TabOrder = 1
          ExplicitTop = 50
          ExplicitWidth = 834
          inherited Panel1: TPanel
            Width = 834
            ExplicitWidth = 834
            inherited Panel2: TPanel
              inherited Label9: TLabel
                Width = 70
              end
              inherited DBEdit8: TDBEdit
                DataField = 'cliente'
                ReadOnly = True
              end
            end
            inherited Panel4: TPanel
              Width = 235
              ExplicitWidth = 235
              inherited Label10: TLabel
                Width = 229
              end
              inherited DBEdit9: TDBEdit
                Width = 229
                ExplicitWidth = 229
              end
            end
            inherited Panel5: TPanel
              Left = 340
              ExplicitLeft = 340
              inherited Label11: TLabel
                Width = 248
              end
            end
            inherited Panel6: TPanel
              Left = 594
              ExplicitLeft = 594
              inherited Label12: TLabel
                Width = 122
              end
            end
            inherited Panel7: TPanel
              Left = 722
              ExplicitLeft = 722
              inherited Label13: TLabel
                Width = 106
              end
            end
          end
          inherited Panel3: TPanel
            Width = 834
            ExplicitWidth = 834
            inherited Panel8: TPanel
              Width = 333
              ExplicitWidth = 333
              inherited Label1: TLabel
                Width = 327
              end
              inherited DBEdit1: TDBEdit
                Width = 327
                ExplicitWidth = 327
              end
            end
            inherited Panel9: TPanel
              Left = 654
              ExplicitLeft = 654
              inherited Label2: TLabel
                Width = 46
              end
            end
            inherited Panel30: TPanel
              inherited Label20: TLabel
                Width = 315
              end
            end
            inherited Panel10: TPanel
              Left = 706
              ExplicitLeft = 706
              inherited Label3: TLabel
                Width = 122
              end
            end
          end
          inherited dsCliente: TDataSource
            DataSet = RecebimentoNFe.IBrwSrc
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 842
    ExplicitWidth = 842
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
