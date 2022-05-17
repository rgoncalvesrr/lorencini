inherited LabAmostrasM: TLabAmostrasM
  Left = 229
  Top = 193
  BorderStyle = bsSizeable
  Caption = 'Revis'#227'o de Amostras'
  ClientHeight = 532
  ClientWidth = 1160
  Constraints.MinWidth = 691
  ExplicitWidth = 1176
  ExplicitHeight = 571
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 1160
    Height = 488
    ExplicitWidth = 1160
    ExplicitHeight = 488
    inherited Panel3: TPanel
      Top = 432
      Width = 999
      Height = 205
      Align = alNone
      ExplicitTop = 432
      ExplicitWidth = 999
      ExplicitHeight = 205
      inherited PageControl3: TPageControl
        Width = 993
        Height = 155
        ExplicitWidth = 993
        ExplicitHeight = 155
        inherited tsDet: TTabSheet
          Caption = 'Laudos para a Amostra'
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 985
          ExplicitHeight = 125
          inherited DBGrid1: TDBGrid
            Width = 985
            Height = 125
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 993
        ExplicitWidth = 993
        inherited ToolBar3: TToolBar
          Width = 980
          ExplicitWidth = 980
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
      Width = 1154
      Height = 482
      ExplicitWidth = 1154
      ExplicitHeight = 482
      inherited TabSheet1: TTabSheet
        Caption = 'Amostra'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 1146
        ExplicitHeight = 452
        object Bevel2: TBevel
          AlignWithMargins = True
          Left = 3
          Top = 53
          Width = 1140
          Height = 2
          Align = alTop
          Shape = bsTopLine
          ExplicitLeft = 2
          ExplicitTop = 47
          ExplicitWidth = 984
        end
        object GroupBox1: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 266
          Width = 1140
          Height = 177
          Align = alTop
          Caption = ' Equipamento '
          TabOrder = 2
          object Panel38: TPanel
            Left = 2
            Top = 17
            Width = 1136
            Height = 50
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Panel39: TPanel
              Left = 0
              Top = 0
              Width = 80
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label10: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 74
                Height = 15
                Align = alTop
                Caption = 'Equipamento'
                FocusControl = DBEdit9
                ExplicitWidth = 71
              end
              object DBEdit9: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 77
                Height = 23
                Margins.Right = 0
                Align = alClient
                DataField = 'equip_recno'
                DataSource = dsAmostra
                TabOrder = 0
                OnExit = DBEdit9Exit
              end
            end
            object Panel40: TPanel
              Left = 80
              Top = 0
              Width = 29
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object SpeedButton1: TSpeedButton
                AlignWithMargins = True
                Left = 0
                Top = 24
                Width = 26
                Height = 23
                Margins.Left = 0
                Margins.Top = 24
                Action = actFindProd
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
                ExplicitWidth = 24
              end
            end
            object Panel41: TPanel
              Left = 109
              Top = 0
              Width = 388
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 2
              object Label11: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 382
                Height = 15
                Align = alTop
                Caption = 'Tipo'
                ExplicitWidth = 23
              end
              object DBEdit10: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 382
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'tipo'
                DataSource = dsAmostra
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel42: TPanel
              Left = 497
              Top = 0
              Width = 156
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 3
              object Label16: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 150
                Height = 15
                Align = alTop
                Caption = 'Isolante'
                ExplicitWidth = 41
              end
              object DBEdit15: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 150
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'isolante'
                DataSource = dsAmostra
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel43: TPanel
              Left = 653
              Top = 0
              Width = 153
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 4
              object Label19: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 147
                Height = 15
                Align = alTop
                Caption = 'S'#233'rie'
                ExplicitWidth = 25
              end
              object DBEdit17: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 147
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'serie'
                DataSource = dsAmostra
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel44: TPanel
              Left = 806
              Top = 0
              Width = 168
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 5
              object Label38: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 162
                Height = 15
                Align = alTop
                Caption = 'S'#233'rie Cliente (Tag, NCia, Ativo)'
                ExplicitWidth = 160
              end
              object DBEdit36: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 162
                Height = 23
                Align = alClient
                CharCase = ecUpperCase
                DataField = 'tag'
                DataSource = dsAmostra
                TabOrder = 0
              end
            end
            object Panel45: TPanel
              Left = 974
              Top = 0
              Width = 162
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 6
              object Label12: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 156
                Height = 15
                Align = alTop
                Caption = 'Fabricante'
                ExplicitWidth = 55
              end
              object DBEdit11: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 156
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'fabricante'
                DataSource = dsAmostra
                ReadOnly = True
                TabOrder = 0
              end
            end
          end
          object Panel46: TPanel
            Left = 2
            Top = 67
            Width = 1136
            Height = 50
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object Panel47: TPanel
              Left = 0
              Top = 0
              Width = 64
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label20: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 58
                Height = 15
                Align = alTop
                Caption = 'Fabrica'#231#227'o'
                ExplicitWidth = 57
              end
              object DBEdit19: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 58
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'ano'
                DataSource = dsAmostra
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel48: TPanel
              Left = 64
              Top = 0
              Width = 115
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object Label21: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 109
                Height = 15
                Align = alTop
                Caption = 'Lote'
                FocusControl = DBEdit20
                ExplicitWidth = 23
              end
              object DBEdit20: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 109
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'lote'
                DataSource = dsAmostra
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel49: TPanel
              Left = 179
              Top = 0
              Width = 68
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 2
              object Label13: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 62
                Height = 15
                Align = alTop
                Caption = 'Imped'#226'ncia'
                FocusControl = DBEdit12
                ExplicitLeft = 2
                ExplicitTop = 2
              end
              object DBEdit12: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 62
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'imped'
                DataSource = dsAmostra
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel50: TPanel
              Left = 247
              Top = 0
              Width = 94
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 3
              object Label14: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 88
                Height = 15
                Align = alTop
                Caption = 'Tens'#227'o'
                FocusControl = DBEdit13
                ExplicitWidth = 36
              end
              object Panel57: TPanel
                Left = 0
                Top = 21
                Width = 94
                Height = 29
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                object DBEdit13: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 54
                  Height = 23
                  Margins.Right = 2
                  TabStop = False
                  Align = alClient
                  DataField = 'tensao_1'
                  DataSource = dsAmostra
                  ReadOnly = True
                  TabOrder = 0
                end
                object DBEdit40: TDBEdit
                  AlignWithMargins = True
                  Left = 61
                  Top = 3
                  Width = 30
                  Height = 23
                  Margins.Left = 2
                  TabStop = False
                  Align = alRight
                  DataField = 'tensao_un'
                  DataSource = dsAmostra
                  ReadOnly = True
                  TabOrder = 1
                end
              end
            end
            object Panel51: TPanel
              Left = 341
              Top = 0
              Width = 94
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 4
              object Label15: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 88
                Height = 15
                Align = alTop
                Caption = 'Pot'#234'ncia'
                FocusControl = DBEdit14
                ExplicitWidth = 46
              end
              object Panel58: TPanel
                Left = 0
                Top = 21
                Width = 94
                Height = 29
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                object DBEdit14: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 52
                  Height = 23
                  TabStop = False
                  Align = alClient
                  DataField = 'potencia'
                  DataSource = dsAmostra
                  ReadOnly = True
                  TabOrder = 0
                end
                object DBEdit41: TDBEdit
                  AlignWithMargins = True
                  Left = 61
                  Top = 3
                  Width = 30
                  Height = 23
                  TabStop = False
                  Align = alRight
                  DataField = 'potencia_un'
                  DataSource = dsAmostra
                  ReadOnly = True
                  TabOrder = 1
                end
              end
            end
            object Panel52: TPanel
              Left = 435
              Top = 0
              Width = 34
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 5
              object Label23: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 28
                Height = 15
                Align = alTop
                Caption = 'Fases'
                FocusControl = DBEdit22
                ExplicitLeft = 2
                ExplicitTop = 2
              end
              object DBEdit22: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 28
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'fases'
                DataSource = dsAmostra
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel53: TPanel
              Left = 519
              Top = 0
              Width = 44
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 6
              object Label18: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 38
                Height = 15
                Align = alTop
                Caption = 'Drenos'
                FocusControl = DBEdit18
                ExplicitWidth = 37
              end
              object DBEdit18: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 38
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'drenos'
                DataSource = dsAmostra
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel54: TPanel
              Left = 469
              Top = 0
              Width = 50
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 7
              object Label17: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 44
                Height = 15
                Align = alTop
                Caption = 'Volume'
                FocusControl = DBEdit16
                ExplicitWidth = 40
              end
              object DBEdit16: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 44
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'volume'
                DataSource = dsAmostra
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel55: TPanel
              Left = 563
              Top = 0
              Width = 141
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 8
              object Label37: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 135
                Height = 15
                Align = alTop
                Caption = 'Fam'#237'lia'
                FocusControl = DBEdit35
                ExplicitWidth = 38
              end
              object DBEdit35: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 135
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'familia'
                DataSource = dsAmostra
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel56: TPanel
              Left = 704
              Top = 0
              Width = 432
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 9
              object Label22: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 426
                Height = 15
                Align = alTop
                Caption = 'Descri'#231#227'o'
                FocusControl = DBEdit21
                ExplicitWidth = 51
              end
              object DBEdit21: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 426
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'descri'
                DataSource = dsAmostra
                ReadOnly = True
                TabOrder = 0
              end
            end
          end
          object Panel59: TPanel
            Left = 2
            Top = 117
            Width = 1136
            Height = 50
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 2
            object Panel60: TPanel
              Left = 0
              Top = 0
              Width = 69
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label26: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 63
                Height = 15
                Align = alTop
                Caption = 'Localiza'#231#227'o'
                FocusControl = DBEdit25
                ExplicitWidth = 61
              end
              object DBEdit25: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 66
                Height = 23
                Margins.Right = 0
                Align = alClient
                DataField = 'labsubest_recno'
                DataSource = dsAmostra
                TabOrder = 0
                OnExit = DBEdit25Exit
              end
            end
            object Panel61: TPanel
              Left = 69
              Top = 0
              Width = 29
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object SpeedButton3: TSpeedButton
                AlignWithMargins = True
                Left = 0
                Top = 24
                Width = 26
                Height = 23
                Margins.Left = 0
                Margins.Top = 24
                Action = actFindSubEst
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
                ExplicitWidth = 24
              end
            end
            object Panel62: TPanel
              Left = 98
              Top = 0
              Width = 51
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 2
              object Label27: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 45
                Height = 15
                Align = alTop
                Caption = 'Sigla'
                FocusControl = DBEdit26
                ExplicitWidth = 25
              end
              object DBEdit26: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 45
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'sigla'
                DataSource = dsAmostra
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel63: TPanel
              Left = 302
              Top = 0
              Width = 175
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 3
              object Label36: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 169
                Height = 15
                Align = alTop
                Caption = 'Regional'
                FocusControl = DBEdit34
                ExplicitWidth = 46
              end
              object DBEdit34: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 169
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'regional'
                DataSource = dsAmostra
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel64: TPanel
              Left = 149
              Top = 0
              Width = 153
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 4
              object Label28: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 147
                Height = 15
                Align = alTop
                Caption = 'Nome'
                FocusControl = DBEdit27
                ExplicitWidth = 33
              end
              object DBEdit27: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 147
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'nome'
                DataSource = dsAmostra
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel65: TPanel
              Left = 477
              Top = 0
              Width = 179
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 5
              object Label35: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 173
                Height = 15
                Align = alTop
                Caption = 'Nome'
                FocusControl = DBEdit33
                ExplicitWidth = 33
              end
              object DBEdit33: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 173
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'reg_nome'
                DataSource = dsAmostra
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel66: TPanel
              Left = 656
              Top = 0
              Width = 480
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 6
              object Label39: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 474
                Height = 15
                Align = alTop
                Caption = 'Local'
                FocusControl = DBEdit37
                ExplicitWidth = 28
              end
              object DBEdit37: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 474
                Height = 23
                Align = alClient
                DataField = 'local'
                DataSource = dsAmostra
                TabOrder = 0
              end
            end
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 1146
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel4: TPanel
            Left = 100
            Top = 0
            Width = 100
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 94
              Height = 15
              Align = alTop
              Caption = 'Amostra'
              ExplicitWidth = 45
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 94
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'recno'
              DataSource = dsAmostra
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel6: TPanel
            Left = 300
            Top = 0
            Width = 100
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object Label9: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 94
              Height = 15
              Align = alTop
              Caption = 'Entrada'
              FocusControl = DBEdit8
              ExplicitWidth = 40
            end
            object DBEdit8: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 94
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'entrada'
              DataSource = dsAmostra
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel12: TPanel
            Left = 1053
            Top = 0
            Width = 93
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label8: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 87
              Height = 15
              Align = alTop
              Caption = 'Estado'
              ExplicitWidth = 35
            end
            object JvDBComboBox1: TJvDBComboBox
              Left = 0
              Top = 21
              Width = 93
              Height = 23
              Align = alClient
              DataField = 'estado'
              DataSource = dsAmostra
              Items.Strings = (
                'Recebida'
                'Dispon'#237'vel')
              TabOrder = 0
              Values.Strings = (
                '40'
                '50')
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
            end
          end
          object Panel16: TPanel
            Left = 0
            Top = 0
            Width = 100
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label42: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 94
              Height = 15
              Align = alTop
              Caption = 'Pedido'
              FocusControl = DBEdit38
              ExplicitWidth = 37
            end
            object DBEdit38: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 94
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'pedido'
              DataSource = dsAmostra
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel5: TPanel
            Left = 200
            Top = 0
            Width = 100
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 4
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 94
              Height = 15
              Align = alTop
              Caption = 'Etiqueta'
              ExplicitWidth = 43
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 94
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'comodato'
              DataSource = dsAmostra
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
        object Panel27: TPanel
          Left = 0
          Top = 188
          Width = 1146
          Height = 75
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object GroupBox2: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 427
            Height = 69
            Align = alLeft
            Caption = ' Par'#226'metros '
            TabOrder = 0
            object Panel28: TPanel
              Left = 2
              Top = 17
              Width = 30
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label24: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 24
                Height = 15
                Align = alTop
                Caption = 'Tipo'
                FocusControl = DBEdit23
                ExplicitWidth = 23
              end
              object DBEdit23: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 27
                Height = 23
                Margins.Right = 0
                Align = alClient
                DataField = 'tpamostra_recno'
                DataSource = dsAmostra
                TabOrder = 0
                OnExit = DBEdit23Exit
              end
            end
            object Panel29: TPanel
              Left = 32
              Top = 17
              Width = 29
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object SpeedButton2: TSpeedButton
                AlignWithMargins = True
                Left = 0
                Top = 24
                Width = 26
                Height = 23
                Margins.Left = 0
                Margins.Top = 24
                Action = actFindTipo
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
                ExplicitWidth = 24
              end
            end
            object Panel30: TPanel
              Left = 61
              Top = 17
              Width = 277
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 2
              object Label25: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 271
                Height = 15
                Align = alTop
                Caption = 'Descri'#231#227'o'
                FocusControl = DBEdit24
                ExplicitWidth = 51
              end
              object DBEdit24: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 271
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'descri_1'
                DataSource = dsAmostra
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel31: TPanel
              Left = 338
              Top = 17
              Width = 87
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 3
              object DBCheckBox1: TDBCheckBox
                AlignWithMargins = True
                Left = 3
                Top = 23
                Width = 81
                Height = 24
                Margins.Top = 23
                TabStop = False
                Align = alClient
                Caption = 'Exige Equip.'
                DataField = 'inf_te'
                DataSource = dsAmostra
                ReadOnly = True
                TabOrder = 0
                ValueChecked = 'True'
                ValueUnchecked = 'False'
              end
            end
          end
          object GroupBox3: TGroupBox
            AlignWithMargins = True
            Left = 436
            Top = 3
            Width = 707
            Height = 69
            Align = alClient
            Caption = ' Informa'#231#245'es da Coleta '
            TabOrder = 1
            object Panel32: TPanel
              Left = 2
              Top = 17
              Width = 99
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label29: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 93
                Height = 15
                Align = alTop
                Caption = 'Coleta'
                FocusControl = JvDBDateEdit1
                ExplicitWidth = 34
              end
              object JvDBDateEdit1: TJvDBDateEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 93
                Height = 23
                Align = alClient
                DataField = 'coleta'
                DataSource = dsAmostra
                ButtonFlat = True
                ShowNullDate = False
                TabOrder = 0
              end
            end
            object Panel33: TPanel
              Left = 101
              Top = 17
              Width = 214
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object Label30: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 208
                Height = 15
                Align = alTop
                Caption = 'Amostrador'
                FocusControl = DBEdit28
                ExplicitWidth = 63
              end
              object DBEdit28: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 208
                Height = 23
                Align = alClient
                DataField = 'amostrador'
                DataSource = dsAmostra
                TabOrder = 0
              end
            end
            object Panel34: TPanel
              Left = 315
              Top = 17
              Width = 75
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 2
              object Label31: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 69
                Height = 15
                Align = alTop
                Caption = 'T. Ambiente'
                FocusControl = DBEdit29
                ExplicitWidth = 64
              end
              object DBEdit29: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 69
                Height = 23
                Align = alClient
                DataField = 'tamb'
                DataSource = dsAmostra
                TabOrder = 0
              end
            end
            object Panel35: TPanel
              Left = 390
              Top = 17
              Width = 75
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 3
              object Label32: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 69
                Height = 15
                Align = alTop
                Caption = 'T. Amostra'
                FocusControl = DBEdit30
                ExplicitWidth = 57
              end
              object DBEdit30: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 69
                Height = 23
                Align = alClient
                DataField = 'toleo'
                DataSource = dsAmostra
                TabOrder = 0
              end
            end
            object Panel36: TPanel
              Left = 540
              Top = 17
              Width = 75
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 5
              object Label33: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 69
                Height = 15
                Align = alTop
                Caption = 'Umidade'
                FocusControl = DBEdit31
                ExplicitWidth = 48
              end
              object DBEdit31: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 69
                Height = 23
                Align = alClient
                DataField = 'umidade'
                DataSource = dsAmostra
                TabOrder = 0
              end
            end
            object Panel37: TPanel
              Left = 615
              Top = 17
              Width = 90
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 6
              object Label34: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 84
                Height = 15
                Align = alTop
                Caption = 'Tens'#227'o'
                FocusControl = DBEdit32
                ExplicitWidth = 36
              end
              object Panel67: TPanel
                Left = 0
                Top = 21
                Width = 90
                Height = 29
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                object DBEdit32: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 49
                  Height = 23
                  Align = alClient
                  DataField = 'tensao'
                  DataSource = dsAmostra
                  TabOrder = 0
                end
                object DBEdit42: TDBEdit
                  AlignWithMargins = True
                  Left = 57
                  Top = 3
                  Width = 30
                  Height = 23
                  Margins.Left = 2
                  TabStop = False
                  Align = alRight
                  DataField = 'tensao_un'
                  DataSource = dsAmostra
                  ReadOnly = True
                  TabOrder = 1
                end
              end
            end
            object Panel18: TPanel
              Left = 465
              Top = 17
              Width = 75
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 4
              object Label43: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 69
                Height = 15
                Align = alTop
                Caption = 'T. Equip.'
                FocusControl = DBEdit46
                ExplicitWidth = 45
              end
              object DBEdit46: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 69
                Height = 23
                Align = alClient
                DataField = 'tequip'
                DataSource = dsAmostra
                TabOrder = 0
              end
            end
          end
        end
        object GroupBox4: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 61
          Width = 1140
          Height = 124
          Align = alTop
          Caption = ' Patrocinador '
          TabOrder = 3
          object Panel13: TPanel
            Left = 2
            Top = 17
            Width = 1136
            Height = 50
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Panel10: TPanel
              Left = 1019
              Top = 0
              Width = 117
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 0
              object Label6: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 111
                Height = 15
                Align = alTop
                Caption = 'C.P.F.'
                FocusControl = DBEdit6
                ExplicitWidth = 30
              end
              object DBEdit6: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 111
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'cpf'
                DataSource = dsAmostra
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel7: TPanel
              Left = 0
              Top = 0
              Width = 77
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object Label3: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 71
                Height = 15
                Align = alTop
                Caption = 'Patrocinador'
                FocusControl = DBEdit3
                ExplicitWidth = 68
              end
              object DBEdit3: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 71
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'codigo'
                DataSource = dsAmostra
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel8: TPanel
              Left = 77
              Top = 0
              Width = 607
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 2
              object Label4: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 601
                Height = 15
                Align = alTop
                Caption = 'Nome Empresarial'
                FocusControl = DBEdit4
                ExplicitWidth = 97
              end
              object DBEdit4: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 601
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'empresa'
                DataSource = dsAmostra
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel9: TPanel
              Left = 908
              Top = 0
              Width = 111
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 3
              object Label5: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 105
                Height = 15
                Align = alTop
                Caption = 'C.N.P.J.'
                FocusControl = DBEdit5
                ExplicitWidth = 40
              end
              object DBEdit5: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 105
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'cnpj'
                DataSource = dsAmostra
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel73: TPanel
              Left = 684
              Top = 0
              Width = 224
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 4
              object Label55: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 218
                Height = 15
                Align = alTop
                Caption = 'Nome Fantasia'
                FocusControl = DBEdit56
                ExplicitWidth = 79
              end
              object DBEdit56: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 218
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'nome_chave'
                DataSource = dsAmostra
                ReadOnly = True
                TabOrder = 0
              end
            end
          end
          object Panel74: TPanel
            Left = 2
            Top = 67
            Width = 1136
            Height = 50
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object Panel78: TPanel
              Left = 0
              Top = 0
              Width = 1072
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object Label59: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 1066
                Height = 15
                Align = alTop
                Caption = 'Cidade'
                FocusControl = DBEdit60
                ExplicitWidth = 37
              end
              object DBEdit60: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 1066
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'cidade'
                DataSource = dsAmostra
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel80: TPanel
              Left = 1072
              Top = 0
              Width = 64
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 1
              object Label61: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 58
                Height = 15
                Align = alTop
                Caption = 'Estado'
                FocusControl = DBEdit62
                ExplicitWidth = 35
              end
              object DBEdit62: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 58
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'estado_1'
                DataSource = dsAmostra
                ReadOnly = True
                TabOrder = 0
              end
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Destinat'#225'rio'
        ImageIndex = 1
        object GroupBox5: TGroupBox
          Left = 0
          Top = 50
          Width = 1146
          Height = 129
          Align = alTop
          Caption = ' Cliente para o Laudo '
          TabOrder = 0
          inline FrameCliente1: TFrameCliente
            Left = 2
            Top = 17
            Width = 1142
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
            ExplicitLeft = 2
            ExplicitTop = 17
            ExplicitWidth = 1142
            inherited Panel1: TPanel
              Width = 1142
              ExplicitWidth = 1142
              inherited Panel2: TPanel
                inherited Label9: TLabel
                  Width = 70
                end
                inherited DBEdit8: TDBEdit
                  DataField = 'cliente'
                end
              end
              inherited Panel35: TPanel
                Width = 28
                ExplicitWidth = 28
                inherited SpeedButton1: TSpeedButton
                  Width = 25
                  ExplicitTop = 23
                  ExplicitWidth = 25
                end
              end
              inherited Panel4: TPanel
                Left = 104
                Width = 544
                ExplicitLeft = 104
                ExplicitWidth = 544
                inherited Label10: TLabel
                  Width = 538
                end
                inherited DBEdit9: TDBEdit
                  Width = 538
                  DataField = 'empresacli'
                  ExplicitWidth = 538
                end
              end
              inherited Panel5: TPanel
                Left = 648
                ExplicitLeft = 648
                inherited Label11: TLabel
                  Width = 248
                end
                inherited DBEdit10: TDBEdit
                  DataField = 'nome_chavecli'
                  ExplicitWidth = 248
                end
              end
              inherited Panel6: TPanel
                Left = 902
                ExplicitLeft = 902
                inherited Label12: TLabel
                  Width = 122
                end
                inherited DBEdit11: TDBEdit
                  DataField = 'cnpj_cli'
                  ExplicitWidth = 122
                end
              end
              inherited Panel7: TPanel
                Left = 1030
                ExplicitLeft = 1030
                inherited Label13: TLabel
                  Width = 106
                end
                inherited DBEdit12: TDBEdit
                  DataField = 'cpf_cli'
                  ExplicitWidth = 106
                end
              end
            end
            inherited Panel3: TPanel
              Width = 1142
              ExplicitWidth = 1142
              inherited Panel8: TPanel
                Width = 641
                ExplicitWidth = 641
                inherited Label1: TLabel
                  Width = 635
                end
                inherited DBEdit1: TDBEdit
                  Width = 635
                  DataField = 'cidade_cli'
                  ExplicitWidth = 635
                end
              end
              inherited Panel9: TPanel
                Left = 962
                ExplicitLeft = 962
                inherited Label2: TLabel
                  Width = 46
                end
                inherited DBEdit2: TDBEdit
                  DataField = 'estado_1'
                end
              end
              inherited Panel30: TPanel
                inherited Label20: TLabel
                  Width = 315
                end
                inherited DBEdit17: TDBEdit
                  DataField = 'email_cli'
                end
              end
              inherited Panel10: TPanel
                Left = 1014
                ExplicitLeft = 1014
                inherited Label3: TLabel
                  Width = 122
                end
                inherited DBEdit3: TDBEdit
                  DataField = 'telefone_cli'
                end
              end
            end
          end
        end
        object Panel11: TPanel
          Left = 0
          Top = 179
          Width = 1146
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Label7: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1140
            Height = 15
            Align = alTop
            Caption = 'Destinat'#225'rio'
            ExplicitWidth = 63
          end
          object DBEdit7: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 1140
            Height = 23
            TabStop = False
            Align = alClient
            DataField = 'destinatario'
            DataSource = dsAmostra
            TabOrder = 0
          end
        end
        object Panel14: TPanel
          Left = 0
          Top = 0
          Width = 1146
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object Panel15: TPanel
            Left = 100
            Top = 0
            Width = 100
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label40: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 94
              Height = 15
              Align = alTop
              Caption = 'Amostra'
              ExplicitWidth = 45
            end
            object DBEdit39: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 94
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'recno'
              DataSource = dsAmostra
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel17: TPanel
            Left = 300
            Top = 0
            Width = 100
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object Label41: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 94
              Height = 15
              Align = alTop
              Caption = 'Entrada'
              FocusControl = DBEdit43
              ExplicitWidth = 40
            end
            object DBEdit43: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 94
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'entrada'
              DataSource = dsAmostra
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel19: TPanel
            Left = 0
            Top = 0
            Width = 100
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label44: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 94
              Height = 15
              Align = alTop
              Caption = 'Pedido'
              FocusControl = DBEdit44
              ExplicitWidth = 37
            end
            object DBEdit44: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 94
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'pedido'
              DataSource = dsAmostra
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel20: TPanel
            Left = 200
            Top = 0
            Width = 100
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 3
            object Label45: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 94
              Height = 15
              Align = alTop
              Caption = 'Etiqueta'
              ExplicitWidth = 43
            end
            object DBEdit45: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 94
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'comodato'
              DataSource = dsAmostra
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 1154
    ExplicitWidth = 1154
    inherited ToolBar1: TToolBar
      Width = 980
      ExplicitWidth = 980
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
    Left = 432
    Top = 24
    inherited actNewMaster: TAction
      Visible = False
    end
    inherited actDelMaster: TAction
      Visible = False
    end
    inherited actNew: TAction
      Visible = False
    end
    inherited actDel: TAction
      Visible = False
    end
    object actFindTipo: TAction [17]
      ImageIndex = 332
      OnExecute = actFindTipoExecute
    end
    object actFindProd: TAction [18]
      ImageIndex = 332
      OnExecute = actFindProdExecute
    end
    object actFindSubEst: TAction [19]
      ImageIndex = 332
      OnExecute = actFindSubEstExecute
    end
    object actFindCliCont: TAction [20]
      ImageIndex = 332
    end
  end
  object dsAmostra: TDataSource
    AutoEdit = False
    Left = 480
    Top = 24
  end
end
