inherited PrecosClientesM: TPrecosClientesM
  ActiveControl = DBEdit3
  BorderStyle = bsSizeable
  Caption = 'Manuten'#231#227'o de Pol'#237'tica de Pre'#231'os por Cliente'
  ClientHeight = 244
  ClientWidth = 776
  ExplicitWidth = 792
  ExplicitHeight = 283
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 776
    Height = 200
    ExplicitLeft = -3
    ExplicitTop = 45
    ExplicitWidth = 776
    ExplicitHeight = 200
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
      Width = 770
      Height = 194
      ExplicitWidth = 770
      ExplicitHeight = 194
      inherited TabSheet1: TTabSheet
        Caption = 'Pre'#231'o por Cliente e Laudo'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 762
        ExplicitHeight = 164
        object Panel8: TPanel
          Left = 0
          Top = 100
          Width = 762
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Panel9: TPanel
            Left = 0
            Top = 0
            Width = 55
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitLeft = -3
            ExplicitTop = 3
            object Label5: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 49
              Height = 15
              Align = alTop
              Caption = 'Servi'#231'o'
              FocusControl = DBEdit3
              ExplicitWidth = 38
            end
            object DBEdit3: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 52
              Height = 23
              Margins.Right = 0
              Align = alClient
              DataField = 'servico'
              DataSource = PrecosClientes.DataSource1
              TabOrder = 0
              OnExit = DBEdit3Exit
            end
          end
          object Panel10: TPanel
            Left = 84
            Top = 0
            Width = 559
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label6: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 553
              Height = 15
              Align = alTop
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit4
              ExplicitWidth = 51
            end
            object DBEdit4: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 553
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'descri'
              DataSource = PrecosClientes.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel12: TPanel
            Left = 643
            Top = 0
            Width = 119
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object Label8: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 113
              Height = 15
              Align = alTop
              Caption = 'Pre'#231'o'
              ExplicitWidth = 30
            end
            object JvDBCalcEdit2: TJvDBCalcEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 113
              Height = 23
              Align = alClient
              TabOrder = 0
              DecimalPlacesAlwaysShown = False
              DataField = 'valor'
              DataSource = PrecosClientes.DataSource1
            end
          end
          object Panel2: TPanel
            Left = 55
            Top = 0
            Width = 29
            Height = 50
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 3
            object SpeedButton2: TSpeedButton
              AlignWithMargins = True
              Left = 0
              Top = 23
              Width = 26
              Height = 25
              Margins.Left = 0
              Margins.Top = 23
              Margins.Bottom = 2
              Action = actFindServ
              Align = alClient
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000A0A
                0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A00FF00FF00FF00FF000A0A
                0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A00FF00FF00FF00FF000A0A
                0A00A9A9A900C4C4C400696969002C2C2C000A0A0A00FF00FF00FF00FF000A0A
                0A00A9A9A900C4C4C400696969002C2C2C000A0A0A00FF00FF00FF00FF000A0A
                0A00A9A9A900C4C4C400696969002C2C2C000A0A0A00FF00FF00FF00FF000A0A
                0A00A9A9A900C4C4C400696969002C2C2C000A0A0A00FF00FF00FF00FF000A0A
                0A00121212001E1E1E000B0B0B000A0A0A000A0A0A00FF00FF00FF00FF000A0A
                0A0015151500222222000B0B0B000A0A0A000A0A0A00FF00FF00FF00FF007549
                4900A0725E00EFE1D200EBC8A3009F674D0070414000FF00FF00FF00FF007549
                4900A0725E00EFE1D200EBC8A3009F674D0070414000FF00FF00FF00FF008461
                610085554C00F5E5D400EAC5A000865043007D565500FF00FF00FF00FF008461
                610085554C00F5E5D400EAC5A000865043007D565500FF00FF00FF00FF009A82
                820074444000F5E4D300E1B488007443400093777700FF00FF00FF00FF009A82
                820074444000F5E4D300E1B488007443400093777700FF00FF00FF00FF00B7AE
                AE006C3C3C00E9C8A800D19669006C3C3C00B2A7A700FF00FF00FF00FF00B7AE
                AE006C3C3C00E9C8A800D19669006C3C3C00B2A7A700FF00FF00FF00FF00FF00
                FF006E3E3E00734444006B3B3B006B3B3B000B0B0B000A0A0A000A0A0A000E0D
                0D006C3C3C006B3B3B006B3B3B006C3B3B00FF00FF00FF00FF00FF00FF00FF00
                FF006C3B3B00F1D8BE00E8BF9300C78657000A0A0A00C4C4C400696969001010
                1000F9DEB700E2B38600BD7B51006C3B3B00FF00FF00FF00FF00FF00FF00FF00
                FF006C3B3B00F6E6D600E9BF9500C88759000A0A0A00C4C4C400696969000C0C
                0C00E3C6A900CA9B7600A5694B006C3B3B00FF00FF00FF00FF00FF00FF00FF00
                FF006D3D3D00724343006B3B3B006B3B3B00141010000A0A0A000A0A0A002416
                14006C3B3B006C3B3B006C3B3B006C3B3B00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF000A0A0A00C4C4C400696969000A0A0A00FF00FF00FF00FF000A0A
                0A00C4C4C400696969000A0A0A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF000A0A0A000A0A0A000A0A0A001D1D1D00FF00FF00FF00FF000A0A
                0A000A0A0A000A0A0A001D1D1D00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              ExplicitTop = 21
              ExplicitWidth = 27
              ExplicitHeight = 23
            end
          end
        end
        inline FrameCliente1: TFrameCliente
          Left = 0
          Top = 0
          Width = 762
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
          ExplicitWidth = 762
          inherited Panel1: TPanel
            Width = 762
            ExplicitWidth = 762
            inherited Panel2: TPanel
              Width = 57
              ExplicitLeft = -3
              ExplicitTop = -3
              ExplicitWidth = 57
              inherited Label9: TLabel
                Width = 51
              end
              inherited DBEdit8: TDBEdit
                Width = 54
                DataField = 'cliente'
                ExplicitTop = 22
                ExplicitWidth = 54
                ExplicitHeight = 21
              end
            end
            inherited Panel35: TPanel
              Left = 57
              ExplicitLeft = 54
              ExplicitTop = -3
              inherited SpeedButton1: TSpeedButton
                ExplicitLeft = 0
                ExplicitTop = 21
                ExplicitWidth = 24
                ExplicitHeight = 23
              end
            end
            inherited Panel4: TPanel
              Left = 86
              Width = 271
              ExplicitLeft = 89
              ExplicitTop = -3
              ExplicitWidth = 271
              inherited Label10: TLabel
                Width = 265
              end
              inherited DBEdit9: TDBEdit
                Width = 265
                ExplicitTop = 22
                ExplicitWidth = 265
                ExplicitHeight = 21
              end
            end
            inherited Panel5: TPanel
              Left = 357
              Width = 186
              ExplicitLeft = 357
              ExplicitWidth = 186
              inherited Label11: TLabel
                Width = 180
              end
              inherited DBEdit10: TDBEdit
                Width = 180
                ExplicitTop = 22
                ExplicitWidth = 180
                ExplicitHeight = 21
              end
            end
            inherited Panel6: TPanel
              Left = 543
              Width = 120
              ExplicitLeft = 543
              ExplicitWidth = 120
              inherited Label12: TLabel
                Width = 114
              end
              inherited DBEdit11: TDBEdit
                Width = 114
                ExplicitTop = 22
                ExplicitWidth = 114
                ExplicitHeight = 21
              end
            end
            inherited Panel7: TPanel
              Left = 663
              Width = 99
              ExplicitLeft = 663
              ExplicitWidth = 99
              inherited Label13: TLabel
                Width = 93
              end
              inherited DBEdit12: TDBEdit
                Width = 93
                ExplicitTop = 22
                ExplicitWidth = 93
                ExplicitHeight = 21
              end
            end
          end
          inherited Panel3: TPanel
            Width = 762
            ExplicitWidth = 762
            inherited Panel8: TPanel
              Left = 241
              Width = 386
              ExplicitLeft = 241
              ExplicitWidth = 386
              inherited Label1: TLabel
                Width = 380
              end
              inherited DBEdit1: TDBEdit
                Width = 380
                ExplicitTop = 22
                ExplicitWidth = 380
                ExplicitHeight = 21
              end
            end
            inherited Panel9: TPanel
              Left = 627
              Width = 39
              ExplicitLeft = 627
              ExplicitWidth = 39
              inherited Label2: TLabel
                Width = 33
              end
              inherited DBEdit2: TDBEdit
                Width = 33
                ExplicitTop = 22
                ExplicitWidth = 33
                ExplicitHeight = 21
              end
            end
            inherited Panel30: TPanel
              Width = 241
              ExplicitWidth = 241
              inherited Label20: TLabel
                Width = 235
              end
              inherited DBEdit17: TDBEdit
                Width = 235
                ExplicitTop = 22
                ExplicitWidth = 235
                ExplicitHeight = 21
              end
            end
            inherited Panel10: TPanel
              Left = 666
              Width = 96
              ExplicitLeft = 666
              ExplicitWidth = 96
              inherited Label3: TLabel
                Width = 90
              end
              inherited DBEdit3: TDBEdit
                Width = 90
                ExplicitTop = 22
                ExplicitWidth = 90
                ExplicitHeight = 21
              end
            end
          end
          inherited dsCliente: TDataSource
            DataSet = PrecosClientes.IBrwSrc
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 770
    ExplicitWidth = 770
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
    object actFindServ: TAction
      Enabled = False
      ImageIndex = 332
      OnExecute = actFindServExecute
    end
  end
end
