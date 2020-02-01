inherited CotaMMat: TCotaMMat
  Caption = 'Manuten'#231#227'o de Materiais'
  ClientHeight = 210
  ClientWidth = 758
  ExplicitWidth = 764
  ExplicitHeight = 239
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 758
    Height = 166
    ExplicitTop = 35
    ExplicitWidth = 758
    ExplicitHeight = 132
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
      Width = 752
      Height = 160
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 752
      ExplicitHeight = 126
      inherited TabSheet1: TTabSheet
        Caption = 'Material'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 744
        ExplicitHeight = 96
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 744
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 92
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitHeight = 45
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 86
              Height = 15
              Align = alTop
              Caption = 'Material'
              FocusControl = DBEdit1
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 43
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 89
              Height = 23
              Margins.Right = 0
              Align = alClient
              DataField = 'material'
              DataSource = Cota.dsMat
              TabOrder = 0
              OnExit = DBEdit1Exit
            end
          end
          object Panel14: TPanel
            Left = 92
            Top = 0
            Width = 29
            Height = 50
            Margins.Top = 22
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
              ExplicitHeight = 22
            end
          end
          object Panel5: TPanel
            Left = 121
            Top = 0
            Width = 566
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitLeft = 119
            ExplicitWidth = 568
            ExplicitHeight = 45
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 560
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
              Width = 560
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'descricao'
              DataSource = Cota.dsMat
              ReadOnly = True
              TabOrder = 0
              ExplicitWidth = 562
            end
          end
          object Panel6: TPanel
            Left = 687
            Top = 0
            Width = 57
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            ExplicitHeight = 45
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 51
              Height = 15
              Align = alTop
              Caption = 'Unidade'
              FocusControl = DBEdit3
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 44
            end
            object DBEdit3: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 51
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'unidade'
              DataSource = Cota.dsMat
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
        object Panel12: TPanel
          Left = 0
          Top = 50
          Width = 744
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Panel18: TPanel
            Left = 0
            Top = 0
            Width = 115
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitHeight = 45
            object Label12: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 109
              Height = 15
              Align = alTop
              Caption = 'Quantidade'
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 62
            end
            object JvDBCalcEdit4: TJvDBCalcEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 109
              Height = 23
              Flat = True
              ParentFlat = False
              Align = alClient
              ButtonFlat = True
              CheckOnExit = True
              DisplayFormat = ',0.###0'
              FormatOnEditing = True
              ButtonWidth = 28
              TabOrder = 0
              DecimalPlacesAlwaysShown = False
              DataField = 'qtd'
              DataSource = Cota.dsMat
              ExplicitHeight = 21
            end
          end
          object Panel19: TPanel
            Left = 115
            Top = 0
            Width = 115
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitHeight = 45
            object Label13: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 109
              Height = 15
              Align = alTop
              Caption = 'Custo Unit'#225'rio'
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 76
            end
            object JvDBCalcEdit5: TJvDBCalcEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 109
              Height = 23
              Flat = True
              ParentFlat = False
              Align = alClient
              ButtonFlat = True
              CheckOnExit = True
              DisplayFormat = ',0.###0'
              FormatOnEditing = True
              ButtonWidth = 28
              TabOrder = 0
              DecimalPlacesAlwaysShown = False
              DataField = 'unitario'
              DataSource = Cota.dsMat
              ExplicitHeight = 21
            end
          end
          object Panel20: TPanel
            Left = 230
            Top = 0
            Width = 115
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitHeight = 45
            object Label14: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 109
              Height = 15
              Align = alTop
              Caption = 'ICMS'
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 28
            end
            object JvDBCalcEdit6: TJvDBCalcEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 109
              Height = 23
              Flat = True
              ParentFlat = False
              Align = alClient
              ButtonFlat = True
              CheckOnExit = True
              DisplayFormat = ',0.###0'
              FormatOnEditing = True
              ButtonWidth = 28
              TabOrder = 0
              DecimalPlacesAlwaysShown = False
              DataField = 'picms'
              DataSource = Cota.dsMat
              ExplicitHeight = 21
            end
          end
          object Panel21: TPanel
            Left = 345
            Top = 0
            Width = 115
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 3
            ExplicitHeight = 45
            object Label15: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 109
              Height = 15
              Align = alTop
              Caption = 'V. Venda Unit'#225'rio'
              FocusControl = DBEdit9
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 90
            end
            object DBEdit9: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 109
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'vtotal'
              DataSource = Cota.dsMat
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel22: TPanel
            Left = 460
            Top = 0
            Width = 115
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 4
            ExplicitHeight = 45
            object Label16: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 109
              Height = 15
              Align = alTop
              Caption = 'Total'
              FocusControl = DBEdit10
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 26
            end
            object DBEdit10: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 109
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'vvenda'
              DataSource = Cota.dsMat
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 752
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 752
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      Width = 739
      ButtonWidth = 115
      ExplicitWidth = 739
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
    object actFindProd: TAction
      Hint = 'Localizar produto'
      ImageIndex = 332
      OnExecute = actFindProdExecute
    end
  end
end
