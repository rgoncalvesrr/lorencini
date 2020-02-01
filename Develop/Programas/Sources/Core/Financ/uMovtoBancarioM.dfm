inherited MovtoBancarioM: TMovtoBancarioM
  Caption = 'Manuten'#231#227'o de Lan'#231'amentos Banc'#225'rios'
  ClientHeight = 437
  ClientWidth = 728
  Constraints.MinWidth = 691
  ExplicitWidth = 734
  ExplicitHeight = 466
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 728
    Height = 393
    ExplicitWidth = 728
    ExplicitHeight = 393
    inherited Panel3: TPanel
      Align = alNone
    end
    inherited PageControl1: TPageControl
      Width = 722
      Height = 387
      ExplicitWidth = 722
      ExplicitHeight = 387
      inherited TabSheet1: TTabSheet
        Caption = 'Lan'#231'amento'
        ExplicitWidth = 714
        ExplicitHeight = 357
        object Label1: TLabel
          Left = 6
          Top = 20
          Width = 32
          Height = 15
          Caption = 'Conta'
        end
        object Label2: TLabel
          Left = 6
          Top = 50
          Width = 26
          Height = 15
          Caption = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 6
          Top = 80
          Width = 63
          Height = 15
          Caption = 'Documento'
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 9
          Top = 145
          Width = 51
          Height = 15
          Caption = 'Hist'#243'rico'
          FocusControl = DBEdit4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 9
          Top = 175
          Width = 24
          Height = 15
          Caption = 'Tipo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 9
          Top = 205
          Width = 26
          Height = 15
          Caption = 'Valor'
        end
        object SpeedButton2: TSpeedButton
          Left = 175
          Top = 104
          Width = 24
          Height = 24
          Action = actNatureza
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
          Left = 9
          Top = 113
          Width = 51
          Height = 15
          Caption = 'Natureza'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 9
          Top = 249
          Width = 62
          Height = 15
          Caption = 'Observa'#231#227'o'
        end
        object DBEdit3: TDBEdit
          Left = 80
          Top = 72
          Width = 155
          Height = 23
          DataField = 'docto'
          DataSource = MovtoBancario.DataSource1
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 79
          Top = 136
          Width = 605
          Height = 23
          DataField = 'historico'
          DataSource = MovtoBancario.DataSource1
          TabOrder = 5
        end
        object DBCheckBox1: TDBCheckBox
          Left = 80
          Top = 226
          Width = 104
          Height = 18
          Caption = 'Compensado'
          DataField = 'compensado'
          DataSource = MovtoBancario.DataSource1
          TabOrder = 8
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBComboBox1: TDBComboBox
          Left = 80
          Top = 12
          Width = 109
          Height = 23
          Style = csDropDownList
          DataField = 'cc'
          DataSource = MovtoBancario.DataSource1
          ItemHeight = 15
          TabOrder = 0
        end
        object DBComboBox2: TDBComboBox
          Left = 80
          Top = 166
          Width = 109
          Height = 23
          Style = csDropDownList
          DataField = 'tipo'
          DataSource = MovtoBancario.DataSource1
          ItemHeight = 15
          Items.Strings = (
            'Entrada'
            'Sa'#237'da')
          TabOrder = 6
        end
        object DBEdit5: TDBEdit
          Left = 203
          Top = 104
          Width = 268
          Height = 23
          TabStop = False
          DataField = 'descri'
          DataSource = MovtoBancario.DataSource1
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit1: TDBEdit
          Left = 80
          Top = 104
          Width = 95
          Height = 23
          DataField = 'natureza'
          DataSource = MovtoBancario.DataSource1
          TabOrder = 3
          OnExit = DBEdit1Exit
        end
        object JvDBDateEdit1: TJvDBDateEdit
          Left = 80
          Top = 42
          Width = 130
          Height = 23
          DataField = 'data'
          DataSource = MovtoBancario.DataSource1
          ButtonWidth = 23
          ShowNullDate = False
          TabOrder = 1
        end
        object JvDBCalcEdit1: TJvDBCalcEdit
          Left = 80
          Top = 196
          Width = 130
          Height = 23
          ButtonWidth = 23
          TabOrder = 7
          DecimalPlacesAlwaysShown = False
          DataField = 'valor'
          DataSource = MovtoBancario.DataSource1
        end
        object DBMemo1: TDBMemo
          Left = 79
          Top = 249
          Width = 616
          Height = 95
          DataField = 'obs'
          DataSource = MovtoBancario.DataSource1
          TabOrder = 9
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 722
    ExplicitWidth = 722
    inherited ToolBar1: TToolBar
      Width = 709
      ExplicitWidth = 709
    end
  end
  inherited alDef: TActionList
    Left = 200
    object actNatureza: TAction
      Hint = 'Localiza natureza'
      ImageIndex = 332
      OnExecute = actNaturezaExecute
    end
  end
end
