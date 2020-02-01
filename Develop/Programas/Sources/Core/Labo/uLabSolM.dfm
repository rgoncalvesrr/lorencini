inherited LabSolM: TLabSolM
  Caption = 'Manuten'#231#227'o de Solu'#231#245'es'
  ClientHeight = 219
  ClientWidth = 729
  ExplicitWidth = 735
  ExplicitHeight = 248
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 729
    Height = 175
    ExplicitWidth = 729
    ExplicitHeight = 175
    inherited Panel3: TPanel
      Align = alNone
    end
    inherited PageControl1: TPageControl
      Width = 723
      Height = 169
      ExplicitWidth = 723
      ExplicitHeight = 169
      inherited TabSheet1: TTabSheet
        Caption = 'Solu'#231#227'o'
        ExplicitWidth = 715
        ExplicitHeight = 139
        object Panel2: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 709
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 60
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 54
              Height = 15
              Align = alTop
              Caption = 'Lote'
              FocusControl = DBEdit1
              ExplicitWidth = 23
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 54
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'recno'
              DataSource = LabSol.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel5: TPanel
            Left = 60
            Top = 0
            Width = 57
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label9: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 51
              Height = 15
              Align = alTop
              Caption = 'Tipo'
              FocusControl = DBEdit8
              ExplicitWidth = 24
            end
            object DBEdit8: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 51
              Height = 23
              Align = alClient
              DataField = 'tipo'
              DataSource = LabSol.DataSource1
              TabOrder = 0
              OnExit = DBEdit8Exit
            end
          end
          object Panel35: TPanel
            Left = 117
            Top = 0
            Width = 24
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            Padding.Top = 24
            Padding.Bottom = 3
            TabOrder = 2
            object SpeedButton1: TSpeedButton
              Left = 0
              Top = 24
              Width = 24
              Height = 23
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
              ExplicitLeft = 39
              ExplicitTop = 17
              ExplicitWidth = 25
              ExplicitHeight = 24
            end
          end
          object Panel6: TPanel
            Left = 141
            Top = 0
            Width = 216
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 3
            object Label10: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 210
              Height = 15
              Align = alTop
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit9
              ExplicitWidth = 51
            end
            object DBEdit9: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 210
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'descri'
              DataSource = LabSol.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel7: TPanel
            Left = 586
            Top = 0
            Width = 123
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 6
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 117
              Height = 15
              Align = alTop
              Caption = 'Saldo (ml)'
              FocusControl = DBEdit2
              ExplicitWidth = 54
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 117
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'saldo'
              DataSource = LabSol.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel8: TPanel
            Left = 463
            Top = 0
            Width = 123
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 5
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 117
              Height = 15
              Align = alTop
              Caption = 'Quantidade (ml)'
              ExplicitWidth = 87
            end
            object JvDBCalcEdit1: TJvDBCalcEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 117
              Height = 23
              Align = alClient
              TabOrder = 0
              DecimalPlacesAlwaysShown = False
              DataField = 'qtd'
              DataSource = LabSol.DataSource1
            end
          end
          object Panel9: TPanel
            Left = 357
            Top = 0
            Width = 106
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 4
            object Label4: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 100
              Height = 15
              Align = alTop
              Caption = 'Validade'
              ExplicitWidth = 44
            end
            object JvDBDateEdit1: TJvDBDateEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 100
              Height = 23
              Align = alClient
              DataField = 'validade'
              DataSource = LabSol.DataSource1
              ShowNullDate = False
              TabOrder = 0
            end
          end
        end
        object GroupBox2: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 59
          Width = 709
          Height = 72
          Align = alTop
          Caption = ' Fornecedor '
          Padding.Bottom = 3
          TabOrder = 1
          object Panel10: TPanel
            Left = 2
            Top = 17
            Width = 57
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label5: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 51
              Height = 15
              Align = alTop
              Caption = 'C'#243'digo'
              FocusControl = DBEdit3
              ExplicitWidth = 39
            end
            object DBEdit3: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 51
              Height = 23
              Align = alClient
              DataField = 'codigo'
              DataSource = LabSol.DataSource1
              TabOrder = 0
              OnExit = DBEdit3Exit
            end
          end
          object Panel11: TPanel
            Left = 83
            Top = 17
            Width = 197
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label6: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 191
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
              Width = 191
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'empresa'
              DataSource = LabSol.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel12: TPanel
            Left = 280
            Top = 17
            Width = 187
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object Label11: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 181
              Height = 15
              Align = alTop
              Caption = 'Nome Curto'
              FocusControl = DBEdit10
              ExplicitWidth = 66
            end
            object DBEdit10: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 181
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'nome_chave'
              DataSource = LabSol.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel13: TPanel
            Left = 467
            Top = 17
            Width = 120
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label12: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 114
              Height = 15
              Align = alTop
              Caption = 'CNPJ'
              FocusControl = DBEdit11
              ExplicitWidth = 27
            end
            object DBEdit11: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 114
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'cnpj'
              DataSource = LabSol.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel15: TPanel
            Left = 59
            Top = 17
            Width = 24
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            Padding.Top = 24
            Padding.Bottom = 3
            TabOrder = 4
            object SpeedButton2: TSpeedButton
              Left = 0
              Top = 24
              Width = 24
              Height = 23
              Action = actFindForn
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
              ExplicitLeft = 39
              ExplicitTop = 17
              ExplicitWidth = 25
              ExplicitHeight = 24
            end
          end
          object Panel14: TPanel
            Left = 587
            Top = 17
            Width = 120
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 5
            object Label7: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 114
              Height = 15
              Align = alTop
              Caption = 'Lote'
              FocusControl = DBEdit5
              ExplicitWidth = 23
            end
            object DBEdit5: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 114
              Height = 23
              Align = alClient
              DataField = 'lotefor'
              DataSource = LabSol.DataSource1
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 723
    ExplicitWidth = 723
    inherited ToolBar1: TToolBar
      Width = 710
      ExplicitWidth = 710
    end
  end
  inherited alDef: TActionList
    Left = 192
    Top = 48
    object actFindTipo: TAction
      Enabled = False
      ImageIndex = 332
      OnExecute = actFindTipoExecute
    end
    object actFindForn: TAction
      Enabled = False
      ImageIndex = 332
      OnExecute = actFindFornExecute
    end
  end
end
