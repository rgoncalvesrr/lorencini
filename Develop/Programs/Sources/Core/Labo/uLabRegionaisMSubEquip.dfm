inherited LabRegionaisMSubEquip: TLabRegionaisMSubEquip
  Caption = 'LabRegionaisMSubEquip'
  ClientHeight = 293
  ClientWidth = 704
  Constraints.MinWidth = 691
  ExplicitWidth = 710
  ExplicitHeight = 322
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 704
    Height = 249
    ExplicitWidth = 704
    ExplicitHeight = 249
    inherited Panel3: TPanel
      Align = alNone
    end
    inherited PageControl1: TPageControl
      Width = 698
      Height = 243
      ExplicitWidth = 698
      ExplicitHeight = 243
      inherited TabSheet1: TTabSheet
        Caption = 'Equipamento da SubEsta'#231#227'o'
        ExplicitWidth = 690
        ExplicitHeight = 213
        object Label1: TLabel
          Left = 3
          Top = 49
          Width = 67
          Height = 15
          Caption = 'Identificador'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 73
          Top = 49
          Width = 98
          Height = 15
          Caption = 'Nome da Regional'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 342
          Top = 50
          Width = 67
          Height = 15
          Caption = 'Identificador'
          FocusControl = DBEdit3
        end
        object Label5: TLabel
          Left = 411
          Top = 49
          Width = 25
          Height = 15
          Caption = 'Sigla'
          FocusControl = DBEdit5
        end
        object Label4: TLabel
          Left = 463
          Top = 49
          Width = 112
          Height = 15
          Caption = 'Nome da Subesta'#231#227'o'
          FocusControl = DBEdit4
        end
        object Bevel6: TBevel
          Left = 0
          Top = 100
          Width = 681
          Height = 4
          Shape = bsTopLine
        end
        object Label7: TLabel
          Left = 2
          Top = 110
          Width = 74
          Height = 15
          Caption = 'Equipamento'
          FocusControl = DBEdit7
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SpeedButton3: TSpeedButton
          Left = 79
          Top = 128
          Width = 25
          Height = 23
          Action = actFindEquip
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
        object Label6: TLabel
          Left = 236
          Top = 110
          Width = 25
          Height = 15
          Caption = 'S'#233'rie'
          FocusControl = DBEdit6
        end
        object Label8: TLabel
          Left = 359
          Top = 110
          Width = 19
          Height = 15
          Caption = 'Tag'
          FocusControl = DBEdit8
        end
        object Label9: TLabel
          Left = 110
          Top = 110
          Width = 24
          Height = 15
          Caption = 'Tipo'
          FocusControl = DBEdit9
        end
        object Label10: TLabel
          Left = 2
          Top = 158
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit10
        end
        object Label11: TLabel
          Left = 463
          Top = 110
          Width = 63
          Height = 15
          Caption = 'Energiza'#231#227'o'
          FocusControl = DBEdit6
        end
        object Label12: TLabel
          Left = 565
          Top = 110
          Width = 35
          Height = 15
          Caption = 'Estado'
          FocusControl = DBEdit6
        end
        object leCodigo: TLabeledEdit
          Left = 3
          Top = 21
          Width = 63
          Height = 23
          TabStop = False
          EditLabel.Width = 37
          EditLabel.Height = 15
          EditLabel.Caption = 'Cliente'
          ReadOnly = True
          TabOrder = 0
        end
        object leNome: TLabeledEdit
          Left = 73
          Top = 21
          Width = 608
          Height = 23
          TabStop = False
          EditLabel.Width = 33
          EditLabel.Height = 15
          EditLabel.Caption = 'Nome'
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 66
          Width = 63
          Height = 23
          TabStop = False
          DataField = 'recno'
          DataSource = LabRegionais.DataSource1
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit2: TDBEdit
          Left = 73
          Top = 66
          Width = 253
          Height = 23
          TabStop = False
          DataField = 'nome'
          DataSource = LabRegionais.DataSource1
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit3: TDBEdit
          Left = 342
          Top = 68
          Width = 63
          Height = 23
          TabStop = False
          DataField = 'recno'
          DataSource = LabRegionais.dsSubEst
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit5: TDBEdit
          Left = 411
          Top = 66
          Width = 45
          Height = 23
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'sigla'
          DataSource = LabRegionais.dsSubEst
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit4: TDBEdit
          Left = 463
          Top = 66
          Width = 218
          Height = 23
          TabStop = False
          DataField = 'nome'
          DataSource = LabRegionais.dsSubEst
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit7: TDBEdit
          Left = 2
          Top = 128
          Width = 77
          Height = 23
          DataField = 'equip'
          DataSource = LabRegionais.dsEquipCli
          TabOrder = 7
          OnExit = DBEdit7Exit
        end
        object DBEdit6: TDBEdit
          Left = 236
          Top = 128
          Width = 117
          Height = 23
          TabStop = False
          DataField = 'serie'
          DataSource = LabRegionais.dsEquipCli
          TabOrder = 8
        end
        object DBEdit8: TDBEdit
          Left = 359
          Top = 128
          Width = 97
          Height = 23
          DataField = 'tag'
          DataSource = LabRegionais.dsEquipCli
          TabOrder = 9
        end
        object DBEdit9: TDBEdit
          Left = 110
          Top = 128
          Width = 119
          Height = 23
          TabStop = False
          DataField = 'tipo'
          DataSource = LabRegionais.dsEquipCli
          TabOrder = 10
        end
        object DBEdit10: TDBEdit
          Left = 2
          Top = 175
          Width = 679
          Height = 23
          TabStop = False
          DataField = 'descri'
          DataSource = LabRegionais.dsEquipCli
          TabOrder = 11
        end
        object JvDBDateEdit1: TJvDBDateEdit
          Left = 463
          Top = 128
          Width = 95
          Height = 23
          DataField = 'energ'
          DataSource = LabRegionais.dsEquipCli
          ButtonWidth = 23
          ShowNullDate = False
          TabOrder = 12
        end
        object DBComboBox1: TDBComboBox
          Left = 565
          Top = 128
          Width = 116
          Height = 23
          DataField = 'status'
          DataSource = LabRegionais.dsEquipCli
          ItemHeight = 15
          Items.Strings = (
            'Ativo'
            'Inativo')
          TabOrder = 13
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 698
    ExplicitWidth = 698
    inherited ToolBar1: TToolBar
      Width = 685
      ExplicitWidth = 685
    end
  end
  inherited alDef: TActionList
    Left = 200
    object actFindEquip: TAction
      ImageIndex = 332
      OnExecute = actFindEquipExecute
    end
  end
end
