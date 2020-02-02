inherited LabCalcMVar: TLabCalcMVar
  Caption = 'Manuten'#231#227'o de Vari'#225'veis'
  ClientHeight = 319
  ExplicitHeight = 348
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Height = 275
    ExplicitHeight = 275
    inherited Panel3: TPanel
      Align = alNone
    end
    inherited PageControl1: TPageControl
      Height = 269
      ExplicitHeight = 269
      inherited TabSheet1: TTabSheet
        Caption = 'Vari'#225'vel'
        ExplicitHeight = 239
        object Label1: TLabel
          Left = 3
          Top = -4
          Width = 34
          Height = 15
          Caption = 'Rotina'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 203
          Top = 0
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit2
        end
        object Bevel6: TBevel
          Left = 3
          Top = 47
          Width = 607
          Height = 14
          Shape = bsTopLine
        end
        object Label3: TLabel
          Left = 3
          Top = 102
          Width = 31
          Height = 15
          Caption = 'T'#237'tulo'
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 3
          Top = 133
          Width = 34
          Height = 15
          Caption = 'Inteiro'
          FocusControl = DBEdit4
        end
        object Label5: TLabel
          Left = 3
          Top = 163
          Width = 43
          Height = 15
          Caption = 'Decimal'
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 3
          Top = 207
          Width = 34
          Height = 15
          Caption = 'Ensaio'
          FocusControl = DBEdit6
        end
        object SpeedButton2: TSpeedButton
          Left = 108
          Top = 198
          Width = 24
          Height = 24
          Action = actFindEns
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
        object Label7: TLabel
          Left = 136
          Top = 181
          Width = 33
          Height = 15
          Caption = 'Nome'
          FocusControl = DBEdit7
        end
        object Label8: TLabel
          Left = 365
          Top = 181
          Width = 44
          Height = 15
          Caption = 'Unidade'
          FocusControl = DBEdit8
        end
        object Label9: TLabel
          Left = 479
          Top = 181
          Width = 42
          Height = 15
          Caption = 'M'#233'todo'
          FocusControl = DBEdit9
        end
        object Label10: TLabel
          Left = 1
          Top = 68
          Width = 40
          Height = 15
          Caption = 'Vari'#225'vel'
          FocusControl = DBEdit10
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 17
          Width = 193
          Height = 23
          TabStop = False
          CharCase = ecLowerCase
          DataField = 'proc'
          DataSource = LabCalc.DataSource1
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 203
          Top = 17
          Width = 407
          Height = 23
          TabStop = False
          DataField = 'descri'
          DataSource = LabCalc.DataSource1
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 55
          Top = 93
          Width = 379
          Height = 23
          DataField = 'titulo'
          DataSource = LabCalc.dsCalcParam
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 55
          Top = 124
          Width = 154
          Height = 23
          DataField = 'int_'
          DataSource = LabCalc.dsCalcParam
          TabOrder = 4
        end
        object DBEdit5: TDBEdit
          Left = 55
          Top = 154
          Width = 154
          Height = 23
          DataField = 'dec_'
          DataSource = LabCalc.dsCalcParam
          TabOrder = 5
        end
        object DBEdit6: TDBEdit
          Left = 49
          Top = 199
          Width = 53
          Height = 23
          DataField = 'ensaio_recno'
          DataSource = LabCalc.dsCalcParam
          TabOrder = 6
          OnExit = DBEdit6Exit
        end
        object DBEdit7: TDBEdit
          Left = 136
          Top = 198
          Width = 223
          Height = 23
          TabStop = False
          DataField = 'nome'
          DataSource = LabCalc.dsCalcParam
          ReadOnly = True
          TabOrder = 7
        end
        object DBEdit8: TDBEdit
          Left = 365
          Top = 198
          Width = 108
          Height = 23
          TabStop = False
          DataField = 'unidade'
          DataSource = LabCalc.dsCalcParam
          ReadOnly = True
          TabOrder = 8
        end
        object DBEdit9: TDBEdit
          Left = 479
          Top = 198
          Width = 131
          Height = 23
          TabStop = False
          DataField = 'metodo'
          DataSource = LabCalc.dsCalcParam
          ReadOnly = True
          TabOrder = 9
        end
        object DBEdit10: TDBEdit
          Left = 53
          Top = 59
          Width = 229
          Height = 23
          DataField = 'param'
          DataSource = LabCalc.dsCalcParam
          TabOrder = 2
        end
      end
    end
  end
  inherited alDef: TActionList
    Left = 208
    object actFindEns: TAction
      ImageIndex = 332
      OnExecute = actFindEnsExecute
    end
  end
end
