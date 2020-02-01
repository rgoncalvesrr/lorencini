inherited OSMMat: TOSMMat
  Caption = 'Cadastros de Materiais para Ordem de Servi'#231'o'
  ClientHeight = 240
  ClientWidth = 664
  Constraints.MinWidth = 596
  ExplicitWidth = 670
  ExplicitHeight = 269
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 664
    Height = 196
    ExplicitTop = 44
    ExplicitWidth = 641
    ExplicitHeight = 235
    inherited Panel3: TPanel
      Top = 21
      Width = 516
      Align = alNone
      ExplicitTop = 21
      ExplicitWidth = 516
      inherited PageControl3: TPageControl
        Width = 510
        ExplicitTop = 47
        ExplicitWidth = 510
        ExplicitHeight = 185
        inherited tsDet: TTabSheet
          ExplicitWidth = 502
          ExplicitHeight = 155
          inherited DBGrid1: TDBGrid
            Width = 502
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 510
        ExplicitWidth = 510
        inherited ToolBar3: TToolBar
          Width = 497
          ExplicitWidth = 497
        end
      end
    end
    inherited PageControl1: TPageControl
      Width = 658
      Height = 190
      ExplicitWidth = 635
      ExplicitHeight = 229
      inherited TabSheet1: TTabSheet
        Caption = 'Material'
        ExplicitWidth = 627
        ExplicitHeight = 199
        object Panel2: TPanel
          Left = 0
          Top = 50
          Width = 650
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitTop = 56
          ExplicitWidth = 666
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 92
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label5: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 86
              Height = 15
              Align = alTop
              Caption = 'Material'
              FocusControl = DBEdit5
              ExplicitWidth = 43
            end
            object DBEdit5: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 89
              Height = 23
              Margins.Right = 0
              Align = alClient
              DataField = 'codigo'
              DataSource = OS.dsMat
              TabOrder = 0
              OnExit = DBEdit5Exit
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
              Top = 24
              Width = 26
              Height = 23
              Margins.Left = 0
              Margins.Top = 24
              Action = actFindMat
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
            Width = 472
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitWidth = 608
            object Label6: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 466
              Height = 15
              Align = alTop
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit6
              ExplicitWidth = 51
            end
            object DBEdit6: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 466
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'material'
              DataSource = OS.dsMat
              ReadOnly = True
              TabOrder = 0
              ExplicitWidth = 602
            end
          end
          object Panel6: TPanel
            Left = 593
            Top = 0
            Width = 57
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            ExplicitLeft = 729
            object Label7: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 51
              Height = 15
              Align = alTop
              Caption = 'Unidade'
              FocusControl = DBEdit7
              ExplicitWidth = 44
            end
            object DBEdit7: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 51
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'un'
              DataSource = OS.dsMat
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
        object Panel7: TPanel
          Left = 0
          Top = 100
          Width = 650
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitTop = 106
          ExplicitWidth = 666
          object Panel18: TPanel
            Left = 0
            Top = 0
            Width = 115
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label12: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 109
              Height = 15
              Align = alTop
              Caption = 'Quantidade'
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
              TabOrder = 0
              DecimalPlacesAlwaysShown = False
              DataField = 'qtd'
              DataSource = OS.dsMat
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
            object Label13: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 109
              Height = 15
              Align = alTop
              Caption = 'Custo'
              ExplicitWidth = 31
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
              TabOrder = 0
              DecimalPlacesAlwaysShown = False
              DataField = 'unitario'
              DataSource = OS.dsMat
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
            object Label8: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 109
              Height = 15
              Align = alTop
              Caption = 'ICMS'
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
              TabOrder = 0
              DecimalPlacesAlwaysShown = False
              DataField = 'icms_compra'
              DataSource = OS.dsMat
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
            object Label15: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 109
              Height = 15
              Align = alTop
              Caption = 'Unit'#225'rio'
              FocusControl = DBEdit9
              ExplicitWidth = 42
            end
            object DBEdit9: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 109
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'vl_venda'
              DataSource = OS.dsMat
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel22: TPanel
            Left = 477
            Top = 0
            Width = 119
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 4
            ExplicitLeft = 667
            object Label16: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 113
              Height = 15
              Align = alTop
              Caption = 'Total'
              FocusControl = DBEdit10
              ExplicitWidth = 25
            end
            object DBEdit10: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 113
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'total'
              DataSource = OS.dsMat
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel12: TPanel
            Left = 596
            Top = 0
            Width = 54
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 5
            ExplicitLeft = 645
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 48
              Height = 15
              Align = alTop
              Caption = 'Imprimir'
              ExplicitWidth = 46
            end
            object JvDBComboBox1: TJvDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 48
              Height = 23
              Align = alClient
              DataField = 'exptot'
              DataSource = OS.dsMat
              Items.Strings = (
                'Sim'
                'N'#227'o')
              TabOrder = 0
              Values.Strings = (
                'True'
                'False')
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
              ExplicitLeft = 56
              ExplicitWidth = 145
            end
          end
        end
        object Panel8: TPanel
          Left = 0
          Top = 0
          Width = 650
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          ExplicitWidth = 1281
          object Panel9: TPanel
            Left = 0
            Top = 0
            Width = 70
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 64
              Height = 15
              Align = alTop
              Caption = 'OS'
              FocusControl = DBEdit1
              ExplicitWidth = 15
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 64
              Height = 23
              Align = alClient
              DataField = 'idos'
              DataSource = OS.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel10: TPanel
            Left = 70
            Top = 0
            Width = 70
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label11: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 64
              Height = 15
              Align = alTop
              Caption = 'Pedido'
              FocusControl = DBEdit4
              ExplicitWidth = 37
            end
            object DBEdit4: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 64
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'pedido'
              DataSource = OS.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitWidth = 48
            end
          end
          object Panel11: TPanel
            Left = 463
            Top = 0
            Width = 92
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitLeft = 271
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 86
              Height = 15
              Align = alTop
              Caption = 'Emiss'#227'o'
              ExplicitWidth = 43
            end
            object JvDBDatePickerEdit1: TJvDBDatePickerEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 86
              Height = 23
              Align = alClient
              AllowNoDate = True
              DataField = 'data'
              DataSource = OS.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel13: TPanel
            Left = 555
            Top = 0
            Width = 95
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            ExplicitLeft = 507
            object Label4: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 89
              Height = 15
              Align = alTop
              Caption = 'Materiais'
              FocusControl = DBEdit2
              ExplicitWidth = 48
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 89
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'vlmat'
              DataSource = OS.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel16: TPanel
            Left = 140
            Top = 0
            Width = 40
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 4
            ExplicitLeft = 178
            object Label9: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 34
              Height = 15
              Align = alTop
              Caption = 'Tipo'
              FocusControl = DBEdit8
              ExplicitWidth = 23
            end
            object DBEdit8: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 37
              Height = 23
              Margins.Right = 0
              Align = alClient
              DataField = 'grupo'
              DataSource = OS.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel23: TPanel
            Left = 180
            Top = 0
            Width = 283
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 5
            ExplicitLeft = 247
            ExplicitWidth = 24
            object Label10: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 277
              Height = 15
              Align = alTop
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit11
              ExplicitWidth = 51
            end
            object DBEdit11: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 277
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'descri_grupo'
              DataSource = OS.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitWidth = 18
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 658
    ExplicitWidth = 635
    inherited ToolBar1: TToolBar
      Width = 571
      ExplicitWidth = 571
    end
  end
  inherited alDef: TActionList
    Left = 200
    object actFindMat: TAction
      Enabled = False
      Hint = 'Localizar Material'
      ImageIndex = 332
      OnExecute = actFindMatExecute
    end
  end
end
