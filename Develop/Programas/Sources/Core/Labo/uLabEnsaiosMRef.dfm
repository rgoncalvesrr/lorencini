inherited LabEnsaiosMRef: TLabEnsaiosMRef
  Caption = 'Manuten'#231#227'o de Refer'#234'ncia por Ensaio'
  ClientHeight = 201
  ExplicitHeight = 230
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Height = 157
    ExplicitHeight = 157
    inherited Panel3: TPanel
      Align = alNone
    end
    inherited PageControl1: TPageControl
      Height = 151
      ExplicitHeight = 151
      inherited TabSheet1: TTabSheet
        Caption = 'Refer'#234'ncia'
        ExplicitHeight = 121
        object Label3: TLabel
          Left = 3
          Top = 64
          Width = 24
          Height = 15
          Caption = 'Tipo'
          FocusControl = DBEdit3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SpeedButton1: TSpeedButton
          Left = 48
          Top = 81
          Width = 25
          Height = 24
          Action = actFindTipo
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
          Left = 76
          Top = 63
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit4
        end
        object Label7: TLabel
          Left = 350
          Top = 64
          Width = 24
          Height = 15
          Caption = 'Tipo'
          FocusControl = JvDBCalcEdit1
        end
        object Label10: TLabel
          Left = 479
          Top = 64
          Width = 26
          Height = 15
          Caption = 'Valor'
          FocusControl = JvDBCalcEdit1
        end
        object Label1: TLabel
          Left = 4
          Top = 3
          Width = 34
          Height = 15
          Caption = 'Ensaio'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 45
          Top = 3
          Width = 33
          Height = 15
          Caption = 'Nome'
          FocusControl = DBEdit2
        end
        object Bevel6: TBevel
          Left = 4
          Top = 55
          Width = 606
          Height = 3
          Shape = bsTopLine
        end
        object DBEdit3: TDBEdit
          Left = 4
          Top = 81
          Width = 43
          Height = 23
          DataField = 'tipo_recno'
          DataSource = LabEnsaios.dsLabRef
          TabOrder = 0
          OnExit = DBEdit3Exit
        end
        object DBEdit4: TDBEdit
          Left = 76
          Top = 81
          Width = 268
          Height = 23
          TabStop = False
          DataField = 'descri'
          DataSource = LabEnsaios.dsLabRef
          ReadOnly = True
          TabOrder = 1
        end
        object DBComboBox1: TDBComboBox
          Left = 350
          Top = 81
          Width = 123
          Height = 23
          Style = csDropDownList
          DataField = 'tipo'
          DataSource = LabEnsaios.dsLabRef
          ItemHeight = 15
          Items.Strings = (
            'M'#237'nimo'
            'M'#225'ximo')
          TabOrder = 2
        end
        object JvDBCalcEdit1: TJvDBCalcEdit
          Left = 479
          Top = 81
          Width = 130
          Height = 23
          ButtonWidth = 23
          TabOrder = 3
          DecimalPlacesAlwaysShown = False
          DataField = 'valor'
          DataSource = LabEnsaios.dsLabRef
        end
        object DBEdit1: TDBEdit
          Left = 4
          Top = 25
          Width = 35
          Height = 23
          TabStop = False
          DataField = 'recno'
          DataSource = LabEnsaios.DataSource1
          Enabled = False
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit2: TDBEdit
          Left = 45
          Top = 25
          Width = 565
          Height = 23
          TabStop = False
          DataField = 'nome'
          DataSource = LabEnsaios.DataSource1
          ReadOnly = True
          TabOrder = 5
        end
      end
    end
  end
  inherited alDef: TActionList
    Left = 200
    object actFindTipo: TAction
      ImageIndex = 332
      OnExecute = actFindTipoExecute
    end
  end
end
