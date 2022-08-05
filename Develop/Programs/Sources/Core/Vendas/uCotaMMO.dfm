inherited CotaMMO: TCotaMMO
  Caption = 'Manuten'#231#227'o M'#227'o-de-Obra Cota'#231#227'o'
  ClientHeight = 210
  ClientWidth = 830
  ExplicitWidth = 836
  ExplicitHeight = 239
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 830
    Height = 166
    ExplicitTop = 35
    ExplicitWidth = 830
    ExplicitHeight = 175
    inherited Panel3: TPanel
      Align = alNone
      ExplicitTop = 204
      inherited PageControl3: TPageControl
        Top = 47
        Height = 185
        ExplicitLeft = 3
        ExplicitTop = 38
        ExplicitWidth = 633
        ExplicitHeight = 194
        inherited tsDet: TTabSheet
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 625
          ExplicitHeight = 164
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
      Width = 824
      Height = 160
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 824
      ExplicitHeight = 169
      inherited TabSheet1: TTabSheet
        Caption = 'M'#227'o-de-Obra'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 816
        ExplicitHeight = 139
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 816
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 55
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitHeight = 45
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 49
              Height = 15
              Align = alTop
              Caption = 'Fun'#231#227'o'
              FocusControl = DBEdit1
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 39
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 52
              Height = 23
              Margins.Right = 0
              Align = alClient
              DataField = 'funcao'
              DataSource = Cota.dsMObra
              TabOrder = 0
              OnExit = DBEdit1Exit
            end
          end
          object Panel14: TPanel
            Left = 55
            Top = 0
            Width = 29
            Height = 50
            Margins.Top = 0
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object SpeedButton3: TSpeedButton
              AlignWithMargins = True
              Left = 0
              Top = 23
              Width = 26
              Height = 25
              Margins.Left = 0
              Margins.Top = 23
              Margins.Bottom = 2
              Action = actFindFunc
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
              ExplicitWidth = 23
              ExplicitHeight = 23
            end
          end
          object Panel5: TPanel
            Left = 84
            Top = 0
            Width = 428
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitLeft = 80
            ExplicitWidth = 432
            ExplicitHeight = 45
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 422
              Height = 15
              Align = alTop
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit2
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 51
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 422
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'descricao'
              DataSource = Cota.dsMObra
              ReadOnly = True
              TabOrder = 0
              ExplicitWidth = 426
            end
          end
          object Panel6: TPanel
            Left = 512
            Top = 0
            Width = 76
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            ExplicitHeight = 45
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 70
              Height = 15
              Align = alTop
              Caption = '%'
              FocusControl = DBEdit3
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 10
            end
            object DBEdit3: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 70
              Height = 23
              Align = alClient
              DataField = 'percentual'
              DataSource = Cota.dsMObra
              TabOrder = 0
            end
          end
          object Panel21: TPanel
            Left = 588
            Top = 0
            Width = 76
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 4
            ExplicitHeight = 45
            object Label16: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 70
              Height = 15
              Align = alTop
              Caption = 'Quantidade'
              FocusControl = DBEdit16
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 62
            end
            object DBEdit16: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 70
              Height = 23
              Align = alClient
              DataField = 'qtd'
              DataSource = Cota.dsMObra
              TabOrder = 0
            end
          end
          object Panel22: TPanel
            Left = 664
            Top = 0
            Width = 76
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 5
            ExplicitHeight = 45
            object Label17: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 70
              Height = 15
              Align = alTop
              Caption = 'Custo'
              FocusControl = DBEdit17
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 31
            end
            object DBEdit17: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 70
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'total'
              DataSource = Cota.dsMObra
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel23: TPanel
            Left = 740
            Top = 0
            Width = 76
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 6
            ExplicitHeight = 45
            object Label18: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 70
              Height = 15
              Align = alTop
              Caption = 'Valor'
              FocusControl = DBEdit18
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 26
            end
            object DBEdit18: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 70
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'vvenda'
              DataSource = Cota.dsMObra
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
        object Panel7: TPanel
          Left = 0
          Top = 50
          Width = 816
          Height = 75
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object GroupBox1: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 196
            Height = 69
            Align = alLeft
            Caption = ' Dias '#218'teis '
            TabOrder = 0
            ExplicitHeight = 62
            object Panel8: TPanel
              Left = 2
              Top = 17
              Width = 63
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              ExplicitHeight = 43
              object Label4: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 57
                Height = 15
                Align = alTop
                Caption = 'Dias'
                FocusControl = DBEdit4
                ExplicitLeft = 2
                ExplicitTop = 2
                ExplicitWidth = 22
              end
              object DBEdit4: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 57
                Height = 23
                Align = alClient
                DataField = 'uteis_dias'
                DataSource = Cota.dsMObra
                TabOrder = 0
              end
            end
            object Panel9: TPanel
              Left = 65
              Top = 17
              Width = 64
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              ExplicitHeight = 43
              object Label5: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 58
                Height = 15
                Align = alTop
                Caption = 'Horas/Dia'
                FocusControl = DBEdit5
                ExplicitLeft = 2
                ExplicitTop = 2
                ExplicitWidth = 53
              end
              object DBEdit5: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 58
                Height = 23
                Align = alClient
                DataField = 'uteis_hrs_dias'
                DataSource = Cota.dsMObra
                TabOrder = 0
              end
            end
            object Panel10: TPanel
              Left = 129
              Top = 17
              Width = 65
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 2
              ExplicitHeight = 43
              object Label6: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 59
                Height = 15
                Align = alTop
                Caption = 'Valor/Hora'
                FocusControl = DBEdit6
                ExplicitLeft = 2
                ExplicitTop = 2
                ExplicitWidth = 57
              end
              object DBEdit6: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 59
                Height = 23
                Align = alClient
                DataField = 'uteis_vl_hrs'
                DataSource = Cota.dsMObra
                TabOrder = 0
              end
            end
          end
          object GroupBox2: TGroupBox
            AlignWithMargins = True
            Left = 205
            Top = 3
            Width = 196
            Height = 69
            Align = alLeft
            Caption = ' S'#225'bados (HE 50%) '
            TabOrder = 1
            ExplicitHeight = 62
            object Panel11: TPanel
              Left = 2
              Top = 17
              Width = 63
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              ExplicitHeight = 43
              object Label7: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 57
                Height = 15
                Align = alTop
                Caption = 'Dias'
                FocusControl = DBEdit7
                ExplicitLeft = 2
                ExplicitTop = 2
                ExplicitWidth = 22
              end
              object DBEdit7: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 57
                Height = 23
                Align = alClient
                DataField = 'sabado_dias'
                DataSource = Cota.dsMObra
                TabOrder = 0
              end
            end
            object Panel12: TPanel
              Left = 65
              Top = 17
              Width = 64
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              ExplicitHeight = 43
              object Label8: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 58
                Height = 15
                Align = alTop
                Caption = 'Horas/Dia'
                FocusControl = DBEdit8
                ExplicitLeft = 2
                ExplicitTop = 2
                ExplicitWidth = 53
              end
              object DBEdit8: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 58
                Height = 23
                Align = alClient
                DataField = 'sabado_hrs_dias'
                DataSource = Cota.dsMObra
                TabOrder = 0
              end
            end
            object Panel13: TPanel
              Left = 129
              Top = 17
              Width = 65
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 2
              ExplicitHeight = 43
              object Label9: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 59
                Height = 15
                Align = alTop
                Caption = 'Valor/Hora'
                FocusControl = DBEdit9
                ExplicitLeft = 2
                ExplicitTop = 2
                ExplicitWidth = 57
              end
              object DBEdit9: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 59
                Height = 23
                Align = alClient
                DataField = 'sabado_vl_hrs'
                DataSource = Cota.dsMObra
                TabOrder = 0
              end
            end
          end
          object GroupBox3: TGroupBox
            AlignWithMargins = True
            Left = 407
            Top = 3
            Width = 195
            Height = 69
            Align = alLeft
            Caption = ' Domingos (HE 100%) '
            TabOrder = 2
            ExplicitHeight = 62
            object Panel15: TPanel
              Left = 2
              Top = 17
              Width = 63
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              ExplicitHeight = 43
              object Label10: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 57
                Height = 15
                Align = alTop
                Caption = 'Dias'
                FocusControl = DBEdit10
                ExplicitLeft = 2
                ExplicitTop = 2
                ExplicitWidth = 22
              end
              object DBEdit10: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 57
                Height = 23
                Align = alClient
                DataField = 'domingo_dias'
                DataSource = Cota.dsMObra
                TabOrder = 0
              end
            end
            object Panel16: TPanel
              Left = 65
              Top = 17
              Width = 64
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              ExplicitHeight = 43
              object Label11: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 58
                Height = 15
                Align = alTop
                Caption = 'Horas/Dia'
                FocusControl = DBEdit11
                ExplicitLeft = 2
                ExplicitTop = 2
                ExplicitWidth = 53
              end
              object DBEdit11: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 58
                Height = 23
                Align = alClient
                DataField = 'domingo_hrs_dias'
                DataSource = Cota.dsMObra
                TabOrder = 0
              end
            end
            object Panel17: TPanel
              Left = 129
              Top = 17
              Width = 64
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 2
              ExplicitHeight = 43
              object Label12: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 58
                Height = 15
                Align = alTop
                Caption = 'Valor/Hora'
                FocusControl = DBEdit12
                ExplicitLeft = 2
                ExplicitTop = 2
                ExplicitWidth = 57
              end
              object DBEdit12: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 58
                Height = 23
                Align = alClient
                DataField = 'domingo_vl_hrs'
                DataSource = Cota.dsMObra
                TabOrder = 0
              end
            end
          end
          object GroupBox4: TGroupBox
            AlignWithMargins = True
            Left = 608
            Top = 3
            Width = 196
            Height = 69
            Align = alLeft
            Caption = ' Adicional Noturno '
            TabOrder = 3
            ExplicitHeight = 62
            object Panel18: TPanel
              Left = 2
              Top = 17
              Width = 63
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              ExplicitHeight = 43
              object Label13: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 57
                Height = 15
                Align = alTop
                Caption = 'Dias'
                FocusControl = DBEdit13
                ExplicitLeft = 2
                ExplicitTop = 2
                ExplicitWidth = 22
              end
              object DBEdit13: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 57
                Height = 23
                Align = alClient
                DataField = 'adic_not_dias'
                DataSource = Cota.dsMObra
                TabOrder = 0
              end
            end
            object Panel19: TPanel
              Left = 65
              Top = 17
              Width = 64
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              ExplicitHeight = 43
              object Label14: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 58
                Height = 15
                Align = alTop
                Caption = 'Horas/Dia'
                FocusControl = DBEdit14
                ExplicitLeft = 2
                ExplicitTop = 2
                ExplicitWidth = 53
              end
              object DBEdit14: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 58
                Height = 23
                Align = alClient
                DataField = 'adic_not_hrs_dias'
                DataSource = Cota.dsMObra
                TabOrder = 0
              end
            end
            object Panel20: TPanel
              Left = 129
              Top = 17
              Width = 65
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 2
              ExplicitHeight = 43
              object Label15: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 59
                Height = 15
                Align = alTop
                Caption = 'Valor/Hora'
                FocusControl = DBEdit15
                ExplicitLeft = 2
                ExplicitTop = 2
                ExplicitWidth = 57
              end
              object DBEdit15: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 59
                Height = 23
                Align = alClient
                DataField = 'adic_not_vl_hrs'
                DataSource = Cota.dsMObra
                TabOrder = 0
              end
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 824
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 824
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      Width = 811
      ButtonWidth = 115
      ExplicitWidth = 811
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
    object actFindFunc: TAction
      ImageIndex = 332
      OnExecute = actFindFuncExecute
    end
  end
end
