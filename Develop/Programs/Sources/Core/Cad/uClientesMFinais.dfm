inherited ClientesMFinais: TClientesMFinais
  Caption = 'Clientes Finais'
  ClientHeight = 488
  ClientWidth = 839
  ExplicitWidth = 845
  ExplicitHeight = 517
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 839
    Height = 444
    ExplicitTop = 44
    ExplicitWidth = 839
    ExplicitHeight = 444
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
      Width = 833
      Height = 438
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 833
      ExplicitHeight = 438
      inherited TabSheet1: TTabSheet
        Caption = 'Cliente Finais'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 825
        ExplicitHeight = 408
        object Bevel1: TBevel
          AlignWithMargins = True
          Left = 3
          Top = 149
          Width = 819
          Height = 2
          Align = alTop
          Shape = bsTopLine
          ExplicitLeft = 2
          ExplicitTop = 137
          ExplicitWidth = 825
        end
        object Panel27: TPanel
          Left = 0
          Top = 0
          Width = 825
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel28: TPanel
            Left = 0
            Top = 0
            Width = 68
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label47: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 62
              Height = 15
              Align = alTop
              Caption = 'C'#243'digo'
              FocusControl = DBEdit49
              ExplicitWidth = 39
            end
            object DBEdit49: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 62
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'codigo'
              DataSource = DM.dsClientes
              Enabled = False
              ReadOnly = True
              TabOrder = 0
              ExplicitTop = 23
            end
          end
          object Panel29: TPanel
            Left = 68
            Top = 0
            Width = 599
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label54: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 593
              Height = 15
              Align = alTop
              Caption = 'Raz'#227'o Social'
              ExplicitWidth = 65
            end
            object DBEdit50: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 593
              Height = 23
              TabStop = False
              Align = alClient
              CharCase = ecUpperCase
              DataField = 'empresa'
              DataSource = DM.dsClientes
              ReadOnly = True
              TabOrder = 0
              ExplicitTop = 23
            end
          end
          object Panel30: TPanel
            Left = 667
            Top = 0
            Width = 158
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object Label55: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 152
              Height = 15
              Align = alTop
              Caption = 'Apelido'
              ExplicitWidth = 41
            end
            object DBEdit51: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 152
              Height = 23
              TabStop = False
              Align = alClient
              CharCase = ecUpperCase
              DataField = 'nome_chave'
              DataSource = DM.dsClientes
              ReadOnly = True
              TabOrder = 0
              ExplicitTop = 23
            end
          end
        end
        object GroupBox1: TGroupBox
          AlignWithMargins = True
          Left = 133
          Top = 157
          Width = 689
          Height = 248
          Margins.Left = 133
          Align = alClient
          Caption = ' Logo '
          TabOrder = 2
          inline FrameImage1: TFrameImage
            Left = 2
            Top = 17
            Width = 685
            Height = 229
            Align = alClient
            TabOrder = 0
            ExplicitLeft = 2
            ExplicitTop = 17
            ExplicitWidth = 685
            ExplicitHeight = 229
            inherited FrameImage: TJvDBImage
              Width = 685
              Height = 229
              DataField = 'logo'
              DataSource = DM.dsClientesFinais
              ExplicitWidth = 685
              ExplicitHeight = 229
            end
            inherited PopupMenu1: TPopupMenu
              Left = 144
            end
            inherited OpenPictureDialog1: TOpenPictureDialog
              Left = 256
            end
          end
        end
        inline FrameCliente1: TFrameCliente
          Left = 0
          Top = 50
          Width = 825
          Height = 96
          Align = alTop
          AutoSize = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          ExplicitTop = 50
          ExplicitWidth = 825
          inherited Panel1: TPanel
            Width = 825
            ExplicitWidth = 825
            inherited Panel2: TPanel
              Width = 57
              ExplicitWidth = 57
              inherited Label9: TLabel
                Width = 51
                ExplicitWidth = 38
              end
              inherited DBEdit8: TDBEdit
                Width = 54
                DataField = 'cliente'
                ExplicitWidth = 54
              end
            end
            inherited Panel35: TPanel
              Left = 57
              Width = 22
              ExplicitLeft = 57
              ExplicitWidth = 22
              inherited SpeedButton1: TSpeedButton
                Width = 19
                OnClick = FrameCliente1SpeedButton1Click
                ExplicitLeft = 0
                ExplicitTop = 16
                ExplicitWidth = 20
                ExplicitHeight = 20
              end
            end
            inherited Panel4: TPanel
              Left = 79
              Width = 341
              ExplicitLeft = 79
              ExplicitWidth = 341
              inherited Label10: TLabel
                Width = 335
                ExplicitWidth = 92
              end
              inherited DBEdit9: TDBEdit
                Width = 335
                ExplicitWidth = 335
              end
            end
            inherited Panel5: TPanel
              Left = 420
              Width = 187
              ExplicitLeft = 420
              ExplicitWidth = 187
              inherited Label11: TLabel
                Width = 181
                ExplicitWidth = 76
              end
              inherited DBEdit10: TDBEdit
                Width = 181
                ExplicitWidth = 181
              end
            end
            inherited Panel6: TPanel
              Left = 607
              Width = 120
              ExplicitLeft = 607
              ExplicitWidth = 120
              inherited Label12: TLabel
                Width = 114
                ExplicitWidth = 24
              end
              inherited DBEdit11: TDBEdit
                Width = 114
                ExplicitWidth = 114
              end
            end
            inherited Panel7: TPanel
              Left = 727
              Width = 98
              ExplicitLeft = 727
              ExplicitWidth = 98
              inherited Label13: TLabel
                Width = 92
              end
              inherited DBEdit12: TDBEdit
                Width = 92
                ExplicitWidth = 92
              end
            end
          end
          inherited Panel3: TPanel
            Width = 825
            ExplicitWidth = 825
            inherited Panel8: TPanel
              Left = 241
              Width = 449
              ExplicitLeft = 241
              ExplicitWidth = 449
              inherited Label1: TLabel
                Width = 443
                ExplicitWidth = 36
              end
              inherited DBEdit1: TDBEdit
                Width = 443
                ExplicitWidth = 443
              end
            end
            inherited Panel9: TPanel
              Left = 690
              Width = 39
              ExplicitLeft = 690
              ExplicitWidth = 39
              inherited Label2: TLabel
                ExplicitWidth = 35
              end
              inherited DBEdit2: TDBEdit
                Width = 33
                ExplicitWidth = 33
              end
            end
            inherited Panel30: TPanel
              Width = 241
              ExplicitWidth = 241
              inherited Label20: TLabel
                Width = 235
                ExplicitWidth = 27
              end
              inherited DBEdit17: TDBEdit
                Width = 235
                ExplicitWidth = 235
              end
            end
            inherited Panel10: TPanel
              Left = 729
              Width = 96
              ExplicitLeft = 729
              ExplicitWidth = 96
              inherited Label3: TLabel
                Width = 90
                ExplicitWidth = 44
              end
              inherited DBEdit3: TDBEdit
                Width = 90
                ExplicitWidth = 90
              end
            end
          end
          inherited dsCliente: TDataSource
            DataSet = DM.qClientesFinais
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 833
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 833
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
