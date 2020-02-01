inherited LabAmostrasMLaudo: TLabAmostrasMLaudo
  Caption = 'Manuten'#231#227'o de Laudos'
  ClientHeight = 405
  ClientWidth = 935
  Constraints.MinWidth = 691
  ExplicitWidth = 941
  ExplicitHeight = 433
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 935
    Height = 361
    ExplicitTop = 35
    ExplicitWidth = 935
    ExplicitHeight = 370
    inherited Panel3: TPanel
      Top = 266
      Width = 786
      Height = 337
      Align = alNone
      ExplicitTop = 266
      ExplicitWidth = 786
      ExplicitHeight = 337
      inherited PageControl3: TPageControl
        Top = 47
        Width = 780
        Height = 287
        ExplicitLeft = 3
        ExplicitTop = 38
        ExplicitWidth = 780
        ExplicitHeight = 296
        inherited tsDet: TTabSheet
          Caption = 'Ensaios'
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 772
          ExplicitHeight = 266
          inherited DBGrid1: TDBGrid
            Width = 772
            Height = 257
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 780
        Height = 38
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 780
        ExplicitHeight = 38
        inherited ToolBar3: TToolBar
          Width = 767
          ButtonWidth = 129
          ExplicitWidth = 767
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
      Width = 929
      Height = 355
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 929
      ExplicitHeight = 364
      inherited TabSheet1: TTabSheet
        Caption = 'Laudo'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 921
        ExplicitHeight = 334
        object Bevel6: TBevel
          AlignWithMargins = True
          Left = 3
          Top = 54
          Width = 915
          Height = 2
          Align = alTop
          Shape = bsTopLine
          ExplicitLeft = 2
          ExplicitTop = 47
          ExplicitWidth = 921
        end
        object Label15: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 164
          Width = 915
          Height = 15
          Align = alTop
          Caption = 'Observa'#231#227'o'
          FocusControl = DBMemo1
          ExplicitLeft = 2
          ExplicitTop = 143
          ExplicitWidth = 62
        end
        object DBMemo1: TDBMemo
          AlignWithMargins = True
          Left = 3
          Top = 185
          Width = 915
          Height = 137
          Align = alClient
          DataField = 'obs'
          DataSource = LabAmostras.dsLaudo
          TabOrder = 0
          ExplicitTop = 167
          ExplicitHeight = 164
        end
        object Panel4: TPanel
          Left = 0
          Top = 59
          Width = 921
          Height = 51
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Panel15: TPanel
            Left = 71
            Top = 0
            Width = 45
            Height = 51
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitHeight = 45
            object Label10: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 39
              Height = 15
              Align = alTop
              Caption = 'Servi'#231'o'
              FocusControl = DBEdit10
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 38
            end
            object DBEdit10: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 39
              Height = 24
              TabStop = False
              Align = alClient
              DataField = 'codserv'
              DataSource = LabAmostras.dsLaudo
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel17: TPanel
            Left = 778
            Top = 0
            Width = 143
            Height = 51
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitHeight = 45
            object Label12: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 137
              Height = 15
              Align = alTop
              Caption = 'Cria'#231#227'o'
              FocusControl = DBEdit12
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 40
            end
            object DBEdit12: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 137
              Height = 24
              TabStop = False
              Align = alClient
              DataField = 'criacao'
              DataSource = LabAmostras.dsLaudo
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 71
            Height = 51
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitHeight = 45
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 65
              Height = 15
              Align = alTop
              Caption = 'Laudo'
              FocusControl = DBEdit3
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 33
            end
            object DBEdit3: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 65
              Height = 24
              TabStop = False
              Align = alClient
              DataField = 'recno'
              DataSource = LabAmostras.dsLaudo
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel7: TPanel
            Left = 116
            Top = 0
            Width = 662
            Height = 51
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 3
            ExplicitHeight = 45
            object Label4: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 656
              Height = 15
              Align = alTop
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit4
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 51
            end
            object DBEdit4: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 656
              Height = 24
              TabStop = False
              Align = alClient
              DataField = 'descri_1'
              DataSource = LabAmostras.dsLaudo
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 921
          Height = 51
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object Panel2: TPanel
            Left = 73
            Top = 0
            Width = 71
            Height = 51
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitHeight = 45
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 65
              Height = 15
              Align = alTop
              Caption = 'Amostra'
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 45
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 65
              Height = 24
              TabStop = False
              Align = alClient
              DataField = 'comodato_recno'
              DataSource = LabAmostras.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel18: TPanel
            Left = 144
            Top = 0
            Width = 102
            Height = 51
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitHeight = 45
            object Label40: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 96
              Height = 15
              Align = alTop
              Caption = 'Entrada'
              FocusControl = DBEdit39
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 40
            end
            object DBEdit39: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 96
              Height = 24
              TabStop = False
              Align = alClient
              DataField = 'entrada'
              DataSource = LabAmostras.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel69: TPanel
            Left = 0
            Top = 0
            Width = 73
            Height = 51
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitHeight = 45
            object Label44: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 67
              Height = 15
              Align = alTop
              Caption = 'Pedido'
              FocusControl = DBEdit51
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 37
            end
            object DBEdit51: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 67
              Height = 24
              TabStop = False
              Align = alClient
              DataField = 'pedido'
              DataSource = LabAmostras.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel70: TPanel
            Left = 246
            Top = 0
            Width = 73
            Height = 51
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 3
            ExplicitHeight = 45
            object Label45: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 67
              Height = 15
              Align = alTop
              Caption = 'OS'
              FocusControl = DBEdit52
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 15
            end
            object DBEdit52: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 67
              Height = 24
              TabStop = False
              Align = alClient
              DataField = 'idos'
              DataSource = LabAmostras.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel68: TPanel
            Left = 319
            Top = 0
            Width = 72
            Height = 51
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 4
            ExplicitHeight = 45
            object Label43: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 66
              Height = 15
              Align = alTop
              Caption = 'Patrocinador'
              FocusControl = DBEdit54
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 68
            end
            object DBEdit54: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 66
              Height = 24
              TabStop = False
              Align = alClient
              DataField = 'codigo'
              DataSource = LabAmostras.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel72: TPanel
            Left = 391
            Top = 0
            Width = 306
            Height = 51
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 5
            ExplicitHeight = 45
            object Label54: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 300
              Height = 15
              Align = alTop
              Caption = 'Raz'#227'o/Nome'
              FocusControl = DBEdit55
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 69
            end
            object DBEdit55: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 300
              Height = 24
              TabStop = False
              Align = alClient
              DataField = 'nome_chave'
              DataSource = LabAmostras.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel75: TPanel
            Left = 697
            Top = 0
            Width = 224
            Height = 51
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 6
            ExplicitHeight = 45
            object Label56: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 218
              Height = 15
              Align = alTop
              Caption = 'Nome Fantasia'
              FocusControl = DBEdit57
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 79
            end
            object DBEdit57: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 218
              Height = 24
              TabStop = False
              Align = alClient
              DataField = 'nome_chave'
              DataSource = LabAmostras.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
        end
        object Panel8: TPanel
          Left = 0
          Top = 110
          Width = 921
          Height = 51
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 3
          object Panel9: TPanel
            Left = 0
            Top = 0
            Width = 46
            Height = 51
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitHeight = 45
            object Label5: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 40
              Height = 15
              Align = alTop
              Caption = 'Tipo de Laudo'
              FocusControl = DBEdit5
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 76
            end
            object DBEdit5: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 43
              Height = 24
              Margins.Right = 0
              Align = alClient
              DataField = 'relato_recno'
              DataSource = LabAmostras.dsLaudo
              TabOrder = 0
              OnExit = DBEdit1Exit
              ExplicitHeight = 23
            end
          end
          object Panel10: TPanel
            Left = 46
            Top = 0
            Width = 26
            Height = 51
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitHeight = 45
            object SpeedButton1: TSpeedButton
              AlignWithMargins = True
              Left = 0
              Top = 23
              Width = 23
              Height = 25
              Margins.Left = 0
              Margins.Top = 23
              Action = actFindLaudo
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
              ExplicitHeight = 23
            end
          end
          object Panel12: TPanel
            Left = 72
            Top = 0
            Width = 524
            Height = 51
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitHeight = 45
            object Label7: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 518
              Height = 15
              Align = alTop
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit7
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 51
            end
            object DBEdit7: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 518
              Height = 24
              TabStop = False
              Align = alClient
              DataField = 'descri'
              DataSource = LabAmostras.dsLaudo
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
          object Panel19: TPanel
            Left = 596
            Top = 0
            Width = 325
            Height = 51
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            ExplicitHeight = 45
            object Label8: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 319
              Height = 15
              Align = alTop
              Caption = 'T'#237'tulo'
              FocusControl = DBEdit8
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 31
            end
            object DBEdit8: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 319
              Height = 24
              TabStop = False
              Align = alClient
              DataField = 'titulo'
              DataSource = LabAmostras.dsLaudo
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 23
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 929
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 929
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      Width = 773
      ButtonWidth = 115
      ExplicitWidth = 773
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
    object actFindLaudo: TAction
      ImageIndex = 332
      OnExecute = actFindLaudoExecute
    end
  end
end
