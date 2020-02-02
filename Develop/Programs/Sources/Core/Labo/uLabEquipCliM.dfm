inherited LabEquipCliM: TLabEquipCliM
  Caption = 'Edi'#231#227'o de Equipamento por Cliente'
  ClientHeight = 457
  ClientWidth = 783
  Constraints.MinWidth = 657
  ExplicitWidth = 789
  ExplicitHeight = 486
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 783
    Height = 413
    ExplicitLeft = 0
    ExplicitWidth = 651
    ExplicitHeight = 350
    inherited Panel3: TPanel
      Align = alNone
      ExplicitTop = 195
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
      Width = 777
      Height = 407
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 645
      ExplicitHeight = 344
      inherited TabSheet1: TTabSheet
        Caption = 'Equipamento'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 637
        ExplicitHeight = 314
        object GroupBox1: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 53
          Width = 763
          Height = 180
          Align = alTop
          Caption = ' Dados do Equipamento '
          TabOrder = 1
          ExplicitWidth = 717
          object Panel9: TPanel
            Left = 2
            Top = 17
            Width = 759
            Height = 50
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitWidth = 680
            object Panel10: TPanel
              Left = 0
              Top = 0
              Width = 80
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label1: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 74
                Height = 15
                Align = alTop
                Caption = 'Equipamento'
                FocusControl = DBEdit1
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                ExplicitLeft = 4
                ExplicitTop = 35
              end
              object DBEdit1: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 77
                Height = 23
                Margins.Right = 0
                Align = alClient
                DataField = 'equip'
                DataSource = LabEquipCli.DataSource1
                TabOrder = 0
                OnExit = DBEdit1Exit
                ExplicitLeft = 4
                ExplicitTop = 27
              end
            end
            object Panel11: TPanel
              Left = 80
              Top = 0
              Width = 32
              Height = 50
              Margins.Left = 0
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              ExplicitLeft = 89
              object SpeedButton1: TSpeedButton
                AlignWithMargins = True
                Left = 0
                Top = 23
                Width = 29
                Height = 25
                Margins.Left = 0
                Margins.Top = 23
                Margins.Bottom = 2
                Action = actFindEquip
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
                ExplicitLeft = 81
                ExplicitTop = 27
                ExplicitWidth = 25
                ExplicitHeight = 23
              end
            end
            object Panel12: TPanel
              Left = 112
              Top = 0
              Width = 254
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 2
              ExplicitLeft = 216
              ExplicitWidth = 108
              object Label2: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 248
                Height = 15
                Align = alTop
                Caption = 'Tipo'
                FocusControl = DBEdit2
                ExplicitLeft = 84
                ExplicitTop = 35
                ExplicitWidth = 24
              end
              object DBEdit2: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 248
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'tipo'
                DataSource = LabEquipCli.DataSource1
                ReadOnly = True
                TabOrder = 0
                ExplicitLeft = -97
                ExplicitTop = 27
                ExplicitWidth = 205
              end
            end
            object Panel13: TPanel
              Left = 366
              Top = 0
              Width = 177
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 3
              ExplicitLeft = 229
              object Label3: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 171
                Height = 15
                Align = alTop
                Caption = 'Tag'
                FocusControl = DBEdit3
                ExplicitLeft = 89
                ExplicitTop = 35
                ExplicitWidth = 19
              end
              object DBEdit3: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 171
                Height = 23
                Align = alClient
                DataField = 'tag'
                DataSource = LabEquipCli.DataSource1
                TabOrder = 0
                ExplicitLeft = -17
                ExplicitTop = 27
                ExplicitWidth = 125
              end
            end
            object Panel14: TPanel
              Left = 543
              Top = 0
              Width = 108
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 4
              ExplicitLeft = 432
              object Label14: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 102
                Height = 15
                Align = alTop
                Caption = 'Energiza'#231#227'o'
                FocusControl = DBEdit6
                ExplicitLeft = 45
                ExplicitTop = 35
                ExplicitWidth = 63
              end
              object JvDBDateEdit1: TJvDBDateEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 102
                Height = 23
                Align = alClient
                DataField = 'energ'
                DataSource = LabEquipCli.DataSource1
                ButtonWidth = 23
                ShowNullDate = False
                TabOrder = 0
                ExplicitLeft = 15
                ExplicitTop = 27
                ExplicitWidth = 93
              end
            end
            object Panel26: TPanel
              Left = 651
              Top = 0
              Width = 108
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 5
              ExplicitLeft = 640
              ExplicitTop = -16
              object Label15: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 102
                Height = 15
                Align = alTop
                Caption = 'Estado'
                FocusControl = DBEdit6
                ExplicitLeft = 73
                ExplicitTop = 35
                ExplicitWidth = 35
              end
              object dbcbSituacao: TDBComboBox
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 102
                Height = 23
                Align = alClient
                DataField = 'status'
                DataSource = LabEquipCli.DataSource1
                ItemHeight = 15
                Items.Strings = (
                  'Ativo'
                  'Inativo')
                TabOrder = 0
                ExplicitLeft = 41
                ExplicitTop = 27
                ExplicitWidth = 67
              end
            end
          end
          object Panel8: TPanel
            Left = 2
            Top = 67
            Width = 759
            Height = 50
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitWidth = 680
            object Panel15: TPanel
              Left = 0
              Top = 0
              Width = 257
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label4: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 251
                Height = 15
                Align = alTop
                Caption = 'Fabricante'
                FocusControl = DBEdit4
                ExplicitTop = 35
                ExplicitWidth = 55
              end
              object DBEdit4: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 251
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'fabricante'
                DataSource = LabEquipCli.DataSource1
                ReadOnly = True
                TabOrder = 0
                ExplicitLeft = -125
                ExplicitTop = 27
                ExplicitWidth = 233
              end
            end
            object Panel16: TPanel
              Left = 257
              Top = 0
              Width = 89
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              ExplicitLeft = 225
              object Label5: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 83
                Height = 15
                Align = alTop
                Caption = 'Fabrica'#231#227'o'
                FocusControl = DBEdit5
                ExplicitLeft = 51
                ExplicitTop = 35
                ExplicitWidth = 57
              end
              object DBEdit5: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 83
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'ano'
                DataSource = LabEquipCli.DataSource1
                ReadOnly = True
                TabOrder = 0
                ExplicitLeft = 50
                ExplicitTop = 27
                ExplicitWidth = 58
              end
            end
            object Panel17: TPanel
              Left = 346
              Top = 0
              Width = 112
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 2
              ExplicitLeft = 314
              object Label6: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 106
                Height = 15
                Align = alTop
                Caption = 'Lote'
                FocusControl = DBEdit6
                ExplicitLeft = 85
                ExplicitTop = 35
                ExplicitWidth = 23
              end
              object DBEdit6: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 106
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'lote'
                DataSource = LabEquipCli.DataSource1
                ReadOnly = True
                TabOrder = 0
                ExplicitLeft = -2
                ExplicitTop = 27
                ExplicitWidth = 110
              end
            end
            object Panel18: TPanel
              Left = 458
              Top = 0
              Width = 301
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 3
              ExplicitLeft = 324
              ExplicitWidth = 108
              object Label19: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 295
                Height = 15
                Align = alTop
                Caption = 'S'#233'rie'
                FocusControl = DBEdit17
                ExplicitLeft = 83
                ExplicitTop = 35
                ExplicitWidth = 25
              end
              object DBEdit17: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 295
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'serie'
                DataSource = LabEquipCli.DataSource1
                ReadOnly = True
                TabOrder = 0
                ExplicitLeft = -95
                ExplicitTop = 27
                ExplicitWidth = 203
              end
            end
          end
          object Panel20: TPanel
            Left = 2
            Top = 117
            Width = 759
            Height = 50
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitWidth = 680
            object Panel21: TPanel
              Left = 0
              Top = 0
              Width = 108
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label18: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 102
                Height = 15
                Align = alTop
                Caption = 'Pot'#234'ncia'
                FocusControl = DBEdit16
                ExplicitTop = 35
                ExplicitWidth = 46
              end
              object Panel35: TPanel
                Left = 0
                Top = 21
                Width = 108
                Height = 29
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                ExplicitLeft = -40
                ExplicitTop = 8
                ExplicitWidth = 185
                ExplicitHeight = 41
                object DBEdit16: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 68
                  Height = 23
                  Margins.Right = 2
                  TabStop = False
                  Align = alClient
                  DataField = 'potencia'
                  DataSource = LabEquipCli.DataSource1
                  ReadOnly = True
                  TabOrder = 0
                  ExplicitTop = 24
                  ExplicitWidth = 102
                end
                object DBEdit23: TDBEdit
                  AlignWithMargins = True
                  Left = 75
                  Top = 3
                  Width = 30
                  Height = 23
                  Margins.Left = 2
                  TabStop = False
                  Align = alRight
                  DataField = 'potencia_un'
                  DataSource = LabEquipCli.DataSource1
                  ReadOnly = True
                  TabOrder = 1
                end
              end
            end
            object Panel22: TPanel
              Left = 108
              Top = 0
              Width = 108
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object Label10: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 102
                Height = 15
                Align = alTop
                Caption = 'Imped'#226'ncia'
                FocusControl = DBEdit10
                ExplicitLeft = 46
                ExplicitTop = 35
                ExplicitWidth = 62
              end
              object DBEdit10: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 102
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'imped'
                DataSource = LabEquipCli.DataSource1
                ReadOnly = True
                TabOrder = 0
                ExplicitLeft = 22
                ExplicitTop = 27
                ExplicitWidth = 86
              end
            end
            object Panel23: TPanel
              Left = 216
              Top = 0
              Width = 108
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 2
              object Label11: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 102
                Height = 15
                Align = alTop
                Caption = 'Tens'#227'o'
                FocusControl = DBEdit11
                ExplicitLeft = 71
                ExplicitTop = 35
                ExplicitWidth = 37
              end
              object Panel36: TPanel
                Left = 0
                Top = 21
                Width = 108
                Height = 29
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                ExplicitLeft = -40
                ExplicitTop = 8
                ExplicitWidth = 185
                ExplicitHeight = 41
                object DBEdit11: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 68
                  Height = 23
                  Margins.Right = 2
                  TabStop = False
                  Align = alClient
                  DataField = 'tensao'
                  DataSource = LabEquipCli.DataSource1
                  ReadOnly = True
                  TabOrder = 0
                  ExplicitTop = 24
                  ExplicitWidth = 102
                end
                object DBEdit24: TDBEdit
                  AlignWithMargins = True
                  Left = 75
                  Top = 3
                  Width = 30
                  Height = 23
                  Margins.Left = 2
                  TabStop = False
                  Align = alRight
                  DataField = 'tensao_un'
                  DataSource = LabEquipCli.DataSource1
                  ReadOnly = True
                  TabOrder = 1
                end
              end
            end
            object Panel24: TPanel
              Left = 324
              Top = 0
              Width = 108
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 3
              object Label12: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 102
                Height = 15
                Align = alTop
                Caption = 'Corrente'
                FocusControl = DBEdit12
                ExplicitLeft = 62
                ExplicitTop = 35
                ExplicitWidth = 46
              end
              object DBEdit12: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 102
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'corr'
                DataSource = LabEquipCli.DataSource1
                ReadOnly = True
                TabOrder = 0
                ExplicitLeft = 22
                ExplicitTop = 27
                ExplicitWidth = 86
              end
            end
            object Panel25: TPanel
              Left = 432
              Top = 0
              Width = 209
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 4
              ExplicitWidth = 108
              object Label13: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 203
                Height = 15
                Align = alTop
                Caption = 'Isolante'
                FocusControl = DBEdit13
                ExplicitLeft = 67
                ExplicitTop = 35
                ExplicitWidth = 41
              end
              object DBEdit13: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 203
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'isolante'
                DataSource = LabEquipCli.DataSource1
                ReadOnly = True
                TabOrder = 0
                ExplicitLeft = -57
                ExplicitTop = 27
                ExplicitWidth = 165
              end
            end
            object Panel19: TPanel
              Left = 641
              Top = 0
              Width = 53
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 5
              ExplicitLeft = 540
              object Label17: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 47
                Height = 15
                Align = alTop
                Caption = 'Drenos'
                FocusControl = DBEdit15
                ExplicitLeft = 71
                ExplicitTop = 35
                ExplicitWidth = 37
              end
              object DBEdit15: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 47
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'drenos'
                DataSource = LabEquipCli.DataSource1
                ReadOnly = True
                TabOrder = 0
                ExplicitLeft = 70
                ExplicitTop = 27
                ExplicitWidth = 38
              end
            end
            object Panel27: TPanel
              Left = 694
              Top = 0
              Width = 65
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 6
              ExplicitLeft = 648
              object Label16: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 59
                Height = 15
                Align = alTop
                Caption = 'Volume'
                FocusControl = DBEdit14
                ExplicitLeft = 68
                ExplicitTop = 35
                ExplicitWidth = 40
              end
              object DBEdit14: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 59
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'volume'
                DataSource = LabEquipCli.DataSource1
                ReadOnly = True
                TabOrder = 0
                ExplicitLeft = 58
                ExplicitTop = 27
                ExplicitWidth = 50
              end
            end
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 769
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitLeft = 3
          ExplicitTop = 303
          ExplicitWidth = 694
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 108
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label7: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 102
              Height = 15
              Align = alTop
              Caption = 'Cliente'
              FocusControl = DBEdit7
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitLeft = 4
              ExplicitTop = 9
              ExplicitWidth = 39
            end
            object DBEdit7: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 105
              Height = 23
              Margins.Right = 0
              Align = alClient
              DataField = 'codigo'
              DataSource = LabEquipCli.DataSource1
              TabOrder = 0
              OnExit = DBEdit7Exit
              ExplicitLeft = 4
              ExplicitTop = 26
              ExplicitWidth = 56
            end
          end
          object Panel5: TPanel
            Left = 140
            Top = 0
            Width = 492
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitWidth = 475
            object Label8: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 486
              Height = 15
              Align = alTop
              Caption = 'Raz'#227'o Social'
              FocusControl = DBEdit8
              ExplicitLeft = 43
              ExplicitTop = 9
              ExplicitWidth = 65
            end
            object DBEdit8: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 486
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'nome_chave'
              DataSource = LabEquipCli.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitLeft = -307
              ExplicitTop = 26
              ExplicitWidth = 415
            end
          end
          object Panel6: TPanel
            Left = 632
            Top = 0
            Width = 137
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitLeft = 586
            object Label9: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 131
              Height = 15
              Align = alTop
              Caption = 'C.N.P.J.'
              FocusControl = DBEdit9
              ExplicitLeft = 68
              ExplicitTop = 9
              ExplicitWidth = 40
            end
            object DBEdit9: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 131
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'cnpj'
              DataSource = LabEquipCli.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitLeft = -6
              ExplicitTop = 26
              ExplicitWidth = 114
            end
          end
          object Panel7: TPanel
            Left = 108
            Top = 0
            Width = 32
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 3
            ExplicitLeft = 111
            ExplicitTop = 3
            ExplicitHeight = 44
            object SpeedButton3: TSpeedButton
              AlignWithMargins = True
              Left = 0
              Top = 23
              Width = 29
              Height = 25
              Margins.Left = 0
              Margins.Top = 23
              Margins.Bottom = 2
              Action = actFindCli
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
              ExplicitLeft = 62
              ExplicitTop = 26
              ExplicitWidth = 25
              ExplicitHeight = 23
            end
          end
        end
        object GroupBox2: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 239
          Width = 763
          Height = 130
          Align = alTop
          Caption = ' Localiza'#231#227'o do Equipamento '
          TabOrder = 2
          object Panel28: TPanel
            Left = 2
            Top = 17
            Width = 759
            Height = 50
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Panel29: TPanel
              Left = 0
              Top = 0
              Width = 80
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              ExplicitHeight = 48
              object Label20: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 74
                Height = 15
                Align = alTop
                Caption = 'Localiza'#231#227'o'
                FocusControl = DBEdit18
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                ExplicitTop = 33
                ExplicitWidth = 68
              end
              object DBEdit18: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 77
                Height = 23
                Margins.Right = 0
                Align = alClient
                DataField = 'subest'
                DataSource = LabEquipCli.DataSource1
                TabOrder = 0
                OnExit = DBEdit18Exit
                ExplicitTop = 25
              end
            end
            object Panel30: TPanel
              Left = 80
              Top = 0
              Width = 32
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              ExplicitHeight = 48
              object SpeedButton2: TSpeedButton
                AlignWithMargins = True
                Left = 0
                Top = 23
                Width = 29
                Height = 25
                Margins.Left = 0
                Margins.Top = 23
                Margins.Bottom = 2
                Action = actFindSubest
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
                ExplicitLeft = 80
                ExplicitTop = 24
                ExplicitWidth = 25
                ExplicitHeight = 24
              end
            end
            object Panel31: TPanel
              Left = 112
              Top = 0
              Width = 60
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 2
              ExplicitHeight = 48
              object Label21: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 54
                Height = 15
                Align = alTop
                Caption = 'Sigla'
                FocusControl = DBEdit19
                ExplicitLeft = 52
                ExplicitTop = 33
                ExplicitWidth = 25
              end
              object DBEdit19: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 54
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'sigla'
                DataSource = LabEquipCli.DataSource1
                ReadOnly = True
                TabOrder = 0
                ExplicitLeft = 27
                ExplicitTop = 25
                ExplicitWidth = 50
              end
            end
            object Panel32: TPanel
              Left = 172
              Top = 0
              Width = 337
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 3
              ExplicitLeft = 378
              ExplicitWidth = 124
              ExplicitHeight = 48
              object Label22: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 331
                Height = 15
                Align = alTop
                Caption = 'Nome'
                FocusControl = DBEdit20
                ExplicitLeft = 91
                ExplicitTop = 33
                ExplicitWidth = 33
              end
              object DBEdit20: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 331
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'subest_nome'
                DataSource = LabEquipCli.DataSource1
                ReadOnly = True
                TabOrder = 0
                ExplicitLeft = -68
                ExplicitTop = 25
                ExplicitWidth = 192
              end
            end
            object Panel33: TPanel
              Left = 509
              Top = 0
              Width = 250
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 4
              ExplicitLeft = 452
              ExplicitHeight = 48
              object Label23: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 244
                Height = 15
                Align = alTop
                Caption = 'Regional'
                FocusControl = DBEdit21
                ExplicitLeft = 204
                ExplicitTop = 33
                ExplicitWidth = 46
              end
              object DBEdit21: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 244
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'reg_nome'
                DataSource = LabEquipCli.DataSource1
                ReadOnly = True
                TabOrder = 0
                ExplicitLeft = -9
                ExplicitTop = 25
                ExplicitWidth = 259
              end
            end
          end
          object Panel34: TPanel
            Left = 2
            Top = 67
            Width = 759
            Height = 50
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object Label24: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 753
              Height = 15
              Align = alTop
              Caption = 'Local'
              FocusControl = DBEdit22
              ExplicitTop = 26
              ExplicitWidth = 28
            end
            object DBEdit22: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 753
              Height = 23
              Align = alClient
              DataField = 'local'
              DataSource = LabEquipCli.DataSource1
              TabOrder = 0
              ExplicitLeft = -12
              ExplicitWidth = 735
              ExplicitHeight = 14
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 777
    ExplicitWidth = 645
    inherited ToolBar1: TToolBar
      Width = 632
      ExplicitWidth = 632
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
    Left = 200
    object actFindCli: TAction
      ImageIndex = 332
      OnExecute = actFindCliExecute
    end
    object actFindEquip: TAction
      ImageIndex = 332
      OnExecute = actFindEquipExecute
    end
    object actFindSubest: TAction
      ImageIndex = 332
      OnExecute = actFindSubestExecute
    end
  end
end
