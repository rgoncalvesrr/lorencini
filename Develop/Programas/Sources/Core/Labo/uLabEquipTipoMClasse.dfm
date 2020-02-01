inherited LabEquipTipoMClasse: TLabEquipTipoMClasse
  Caption = 'Classes de Tens'#227'o por Tipo de Equipamento'
  ClientHeight = 200
  ClientWidth = 447
  ExplicitWidth = 453
  ExplicitHeight = 229
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 447
    Height = 156
    ExplicitWidth = 447
    ExplicitHeight = 156
    inherited Panel3: TPanel
      Align = alNone
    end
    inherited PageControl1: TPageControl
      Width = 441
      Height = 150
      ExplicitWidth = 441
      ExplicitHeight = 150
      inherited TabSheet1: TTabSheet
        Caption = 'Classe'
        ExplicitWidth = 433
        ExplicitHeight = 120
        object Label1: TLabel
          Left = 3
          Top = 9
          Width = 39
          Height = 15
          Caption = 'C'#243'digo'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 65
          Top = 9
          Width = 24
          Height = 15
          Caption = 'Tipo'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 394
          Top = 9
          Width = 25
          Height = 15
          Caption = 'Sigla'
          FocusControl = DBEdit3
        end
        object Bevel6: TBevel
          Left = 3
          Top = 56
          Width = 417
          Height = 7
          Shape = bsTopLine
        end
        object Label7: TLabel
          Left = 3
          Top = 62
          Width = 39
          Height = 15
          Caption = 'Classe'
          FocusControl = DBEdit7
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SpeedButton3: TSpeedButton
          Left = 47
          Top = 79
          Width = 25
          Height = 24
          Action = actFindClasse
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
        end
        object Label8: TLabel
          Left = 75
          Top = 62
          Width = 42
          Height = 15
          Caption = 'M'#237'nimo'
          FocusControl = DBEdit8
        end
        object Label9: TLabel
          Left = 234
          Top = 62
          Width = 43
          Height = 15
          Caption = 'M'#225'ximo'
          FocusControl = DBEdit9
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 26
          Width = 56
          Height = 23
          TabStop = False
          DataField = 'tipo'
          DataSource = LabEquipTipo.DataSource1
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 65
          Top = 26
          Width = 323
          Height = 23
          TabStop = False
          DataField = 'descri'
          DataSource = LabEquipTipo.DataSource1
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 394
          Top = 26
          Width = 25
          Height = 23
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'sigla'
          DataSource = LabEquipTipo.DataSource1
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit7: TDBEdit
          Left = 3
          Top = 79
          Width = 43
          Height = 23
          CharCase = ecUpperCase
          DataField = 'classe'
          DataSource = LabEquipTipo.dsClasse
          TabOrder = 3
          OnExit = DBEdit7Exit
        end
        object DBEdit8: TDBEdit
          Left = 75
          Top = 79
          Width = 154
          Height = 23
          TabStop = False
          DataField = 'min'
          DataSource = LabEquipTipo.dsClasse
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit9: TDBEdit
          Left = 234
          Top = 79
          Width = 154
          Height = 23
          TabStop = False
          DataField = 'max'
          DataSource = LabEquipTipo.dsClasse
          ReadOnly = True
          TabOrder = 5
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 441
    ExplicitWidth = 441
    inherited ToolBar1: TToolBar
      Width = 428
      ExplicitWidth = 428
    end
  end
  inherited alDef: TActionList
    Left = 200
    object actFindClasse: TAction
      ImageIndex = 332
      OnExecute = actFindClasseExecute
    end
  end
end
