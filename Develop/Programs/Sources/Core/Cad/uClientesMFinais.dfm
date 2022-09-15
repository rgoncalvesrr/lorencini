inherited ClientesMFinais: TClientesMFinais
  Caption = 'Clientes Finais'
  ClientHeight = 488
  ClientWidth = 839
  ExplicitWidth = 845
  ExplicitHeight = 517
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 839
    Height = 444
    ExplicitTop = 44
    ExplicitWidth = 839
    ExplicitHeight = 444
    inherited Panel3: TPanel
      Top = 206
      Align = alNone
      ExplicitTop = 206
      inherited PageControl3: TPageControl
        ExplicitTop = 47
        ExplicitHeight = 185
        inherited tsDet: TTabSheet
          ExplicitHeight = 155
        end
      end
    end
    inherited PageControl1: TPageControl
      Width = 833
      Height = 438
      ExplicitWidth = 833
      ExplicitHeight = 438
      inherited TabSheet1: TTabSheet
        Caption = 'Cliente Finais'
        ExplicitWidth = 825
        ExplicitHeight = 408
        object Bevel1: TBevel
          AlignWithMargins = True
          Left = 3
          Top = 153
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
              DataSource = Clientes.DataSource1
              Enabled = False
              ReadOnly = True
              TabOrder = 0
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
              DataSource = Clientes.DataSource1
              ReadOnly = True
              TabOrder = 0
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
              DataSource = Clientes.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
        object GroupBox1: TGroupBox
          AlignWithMargins = True
          Left = 133
          Top = 161
          Width = 689
          Height = 244
          Margins.Left = 133
          Align = alClient
          Caption = ' Logo '
          TabOrder = 2
          inline FrameImage1: TFrameImage
            Left = 2
            Top = 17
            Width = 685
            Height = 225
            Align = alClient
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
            ExplicitWidth = 685
            ExplicitHeight = 225
            inherited FrameImage: TJvDBImage
              Width = 685
              Height = 225
              DataField = 'logo'
              DataSource = Clientes.dsClientesFinais
              ExplicitWidth = 685
              ExplicitHeight = 225
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
          Height = 100
          Align = alTop
          AutoSize = True
          TabOrder = 1
          ExplicitTop = 50
          ExplicitWidth = 825
          inherited Panel1: TPanel
            Width = 825
            Font.Pitch = fpVariable
            ParentFont = False
            ExplicitWidth = 825
            inherited Panel2: TPanel
              Width = 57
              ExplicitWidth = 57
              ExplicitHeight = 50
              inherited Label9: TLabel
                Width = 51
              end
              inherited DBEdit8: TDBEdit
                Width = 54
                DataField = 'cliente'
                ExplicitWidth = 54
                ExplicitHeight = 21
              end
            end
            inherited Panel35: TPanel
              Left = 57
              ExplicitLeft = 57
              ExplicitHeight = 50
              inherited SpeedButton1: TSpeedButton
                ExplicitLeft = 0
                ExplicitTop = 16
                ExplicitWidth = 20
                ExplicitHeight = 20
              end
            end
            inherited Panel4: TPanel
              Left = 86
              Width = 334
              ExplicitLeft = 86
              ExplicitWidth = 334
              ExplicitHeight = 50
              inherited Label10: TLabel
                Width = 328
              end
              inherited DBEdit9: TDBEdit
                Width = 328
                ExplicitWidth = 328
                ExplicitHeight = 21
              end
            end
            inherited Panel5: TPanel
              Left = 420
              Width = 187
              ExplicitLeft = 420
              ExplicitWidth = 187
              ExplicitHeight = 50
              inherited Label11: TLabel
                Width = 181
              end
              inherited DBEdit10: TDBEdit
                Width = 181
                ExplicitWidth = 181
                ExplicitHeight = 21
              end
            end
            inherited Panel6: TPanel
              Left = 607
              Width = 120
              ExplicitLeft = 607
              ExplicitWidth = 120
              ExplicitHeight = 50
              inherited Label12: TLabel
                Width = 114
              end
              inherited DBEdit11: TDBEdit
                Width = 114
                ExplicitWidth = 114
                ExplicitHeight = 21
              end
            end
            inherited Panel7: TPanel
              Left = 727
              Width = 98
              ExplicitLeft = 727
              ExplicitWidth = 98
              ExplicitHeight = 50
              inherited Label13: TLabel
                Width = 92
              end
              inherited DBEdit12: TDBEdit
                Width = 92
                ExplicitWidth = 92
                ExplicitHeight = 21
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
              ExplicitHeight = 50
              inherited Label1: TLabel
                Width = 443
              end
              inherited DBEdit1: TDBEdit
                Width = 443
                ExplicitWidth = 443
                ExplicitHeight = 21
              end
            end
            inherited Panel9: TPanel
              Left = 690
              Width = 39
              ExplicitLeft = 690
              ExplicitWidth = 39
              ExplicitHeight = 50
              inherited Label2: TLabel
                Width = 33
              end
              inherited DBEdit2: TDBEdit
                Width = 33
                ExplicitWidth = 33
                ExplicitHeight = 21
              end
            end
            inherited Panel30: TPanel
              Width = 241
              ExplicitWidth = 241
              ExplicitHeight = 50
              inherited Label20: TLabel
                Width = 235
              end
              inherited DBEdit17: TDBEdit
                Width = 235
                ExplicitWidth = 235
                ExplicitHeight = 21
              end
            end
            inherited Panel10: TPanel
              Left = 729
              Width = 96
              ExplicitLeft = 729
              ExplicitWidth = 96
              ExplicitHeight = 50
              inherited Label3: TLabel
                Width = 90
              end
              inherited DBEdit3: TDBEdit
                Width = 90
                ExplicitWidth = 90
                ExplicitHeight = 21
              end
            end
          end
          inherited dsCliente: TDataSource
            DataSet = Clientes.qClientesFinais
          end
          inherited alFrameCli: TActionList
            Left = 120
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 833
    ExplicitWidth = 833
  end
end
