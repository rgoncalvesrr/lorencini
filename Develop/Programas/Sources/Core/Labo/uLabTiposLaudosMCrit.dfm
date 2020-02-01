inherited LabTiposLaudosMCrit: TLabTiposLaudosMCrit
  Caption = 'Manuten'#231#227'o de Criticidade por Laudo'
  ClientHeight = 211
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Height = 167
    ExplicitHeight = 167
    inherited Panel3: TPanel
      Align = alNone
    end
    inherited PageControl1: TPageControl
      Height = 161
      ExplicitHeight = 161
      inherited TabSheet1: TTabSheet
        Caption = 'Criticidade por Laudo'
        ExplicitHeight = 131
        object Label3: TLabel
          Left = 3
          Top = 9
          Width = 33
          Height = 15
          Caption = 'Laudo'
          FocusControl = DBEdit3
        end
        object Label6: TLabel
          Left = 42
          Top = 9
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit6
        end
        object Bevel6: TBevel
          Left = -73
          Top = 59
          Width = 684
          Height = 2
          Shape = bsTopLine
        end
        object Label1: TLabel
          Left = 3
          Top = 63
          Width = 61
          Height = 15
          Caption = 'Criticidade'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SpeedButton1: TSpeedButton
          Left = 69
          Top = 81
          Width = 24
          Height = 24
          Action = actFindCrit
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
        object Label4: TLabel
          Left = 100
          Top = 63
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit4
        end
        object DBEdit3: TDBEdit
          Left = 3
          Top = 26
          Width = 32
          Height = 23
          TabStop = False
          DataField = 'recno'
          DataSource = LabTiposLaudos.DataSource1
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit6: TDBEdit
          Left = 42
          Top = 26
          Width = 516
          Height = 23
          TabStop = False
          DataField = 'descri'
          DataSource = LabTiposLaudos.DataSource1
          ReadOnly = True
          TabOrder = 1
        end
        object DBCheckBox1: TDBCheckBox
          Left = 565
          Top = 29
          Width = 46
          Height = 18
          TabStop = False
          Caption = 'Ativo'
          DataField = 'ativo'
          DataSource = LabTiposLaudos.DataSource1
          ReadOnly = True
          TabOrder = 2
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 81
          Width = 63
          Height = 23
          DataField = 'labcrit_recno'
          DataSource = LabTiposLaudos.dsCrit
          TabOrder = 3
          OnExit = DBEdit1Exit
        end
        object DBEdit4: TDBEdit
          Left = 100
          Top = 81
          Width = 511
          Height = 23
          TabStop = False
          DataField = 'descri'
          DataSource = LabTiposLaudos.dsCrit
          ReadOnly = True
          TabOrder = 4
        end
      end
    end
  end
  inherited alDef: TActionList
    Left = 208
    object actFindCrit: TAction
      ImageIndex = 332
      OnExecute = actFindCritExecute
    end
  end
end
