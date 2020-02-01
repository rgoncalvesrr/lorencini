inherited PagarM: TPagarM
  Caption = 'Manuten'#231#227'o de T'#237'tulos a Pagar'
  ClientHeight = 408
  ClientWidth = 739
  Constraints.MinWidth = 691
  ExplicitWidth = 745
  ExplicitHeight = 437
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 739
    Height = 364
    ExplicitWidth = 739
    ExplicitHeight = 364
    inherited Panel3: TPanel
      Top = 338
      Width = 729
      Height = 183
      Align = alNone
      ExplicitTop = 338
      ExplicitWidth = 729
      ExplicitHeight = 183
      inherited PageControl3: TPageControl
        Width = 723
        Height = 133
        ExplicitWidth = 723
        ExplicitHeight = 133
        inherited tsDet: TTabSheet
          Caption = 'contatos'
          ExplicitWidth = 715
          ExplicitHeight = 103
          inherited DBGrid1: TDBGrid
            Width = 715
            Height = 103
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 723
        ExplicitWidth = 723
        inherited ToolBar3: TToolBar
          Width = 710
          ExplicitWidth = 710
        end
      end
    end
    inherited PageControl1: TPageControl
      Width = 733
      Height = 358
      ExplicitWidth = 733
      ExplicitHeight = 358
      inherited TabSheet1: TTabSheet
        Caption = 'T'#237'tulo a Pagar'
        ExplicitWidth = 725
        ExplicitHeight = 328
        object Label1: TLabel
          Left = 3
          Top = 8
          Width = 31
          Height = 15
          Caption = 'T'#237'tulo'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 70
          Top = 8
          Width = 63
          Height = 15
          Caption = 'Documento'
          FocusControl = DBEdit2
        end
        object Label4: TLabel
          Left = 298
          Top = 8
          Width = 51
          Height = 15
          Caption = 'Natureza'
          FocusControl = DBEdit4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SpeedButton2: TSpeedButton
          Left = 355
          Top = 25
          Width = 23
          Height = 23
          Action = FindNatu
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
        object Label5: TLabel
          Left = 381
          Top = 8
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit5
        end
        object Label7: TLabel
          Left = 3
          Top = 51
          Width = 65
          Height = 15
          Caption = 'Fornecedor'
          FocusControl = DBEdit7
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SpeedButton3: TSpeedButton
          Left = 78
          Top = 69
          Width = 24
          Height = 23
          Action = FindForn
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
          Left = 109
          Top = 51
          Width = 65
          Height = 15
          Caption = 'Raz'#227'o Social'
          FocusControl = DBEdit8
        end
        object Label9: TLabel
          Left = 497
          Top = 51
          Width = 40
          Height = 15
          Caption = 'C.N.P.J.'
          FocusControl = DBEdit9
        end
        object Label10: TLabel
          Left = 605
          Top = 51
          Width = 45
          Height = 15
          Caption = 'Telefone'
          FocusControl = DBEdit10
        end
        object Label11: TLabel
          Left = 3
          Top = 95
          Width = 40
          Height = 15
          Caption = 'Cria'#231#227'o'
          FocusControl = DBEdit11
        end
        object Label12: TLabel
          Left = 160
          Top = 95
          Width = 49
          Height = 15
          Caption = 'Emiss'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 267
          Top = 95
          Width = 67
          Height = 15
          Caption = 'Vencimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 385
          Top = 95
          Width = 95
          Height = 15
          Caption = 'Vencimento Real'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 513
          Top = 145
          Width = 27
          Height = 15
          Caption = 'Baixa'
        end
        object Label16: TLabel
          Left = 4
          Top = 146
          Width = 29
          Height = 15
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 618
          Top = 146
          Width = 70
          Height = 15
          Caption = 'Valor Baixado'
        end
        object Label18: TLabel
          Left = 3
          Top = 237
          Width = 67
          Height = 15
          Caption = 'Observa'#231#245'es'
          FocusControl = DBMemo1
        end
        object Label3: TLabel
          Left = 182
          Top = 8
          Width = 32
          Height = 15
          Caption = 'Conta'
        end
        object Label6: TLabel
          Left = 661
          Top = 8
          Width = 24
          Height = 15
          Caption = 'Tipo'
          FocusControl = DBEdit6
        end
        object Label19: TLabel
          Left = 3
          Top = 192
          Width = 48
          Height = 15
          Caption = 'Hist'#243'rico'
          FocusControl = DBEdit3
        end
        object Label20: TLabel
          Left = 106
          Top = 146
          Width = 27
          Height = 15
          Caption = 'Juros'
        end
        object Label21: TLabel
          Left = 209
          Top = 146
          Width = 31
          Height = 15
          Caption = 'Multa'
        end
        object Label22: TLabel
          Left = 311
          Top = 146
          Width = 50
          Height = 15
          Caption = 'Desconto'
        end
        object Label23: TLabel
          Left = 413
          Top = 146
          Width = 26
          Height = 15
          Caption = 'Total'
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 25
          Width = 56
          Height = 23
          TabStop = False
          DataField = 'recno'
          DataSource = Pagar.DataSource1
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 70
          Top = 25
          Width = 106
          Height = 23
          DataField = 'docto'
          DataSource = Pagar.DataSource1
          TabOrder = 1
        end
        object DBEdit4: TDBEdit
          Left = 298
          Top = 25
          Width = 56
          Height = 23
          DataField = 'natureza'
          DataSource = Pagar.DataSource1
          TabOrder = 3
          OnExit = DBEdit4Exit
        end
        object DBEdit5: TDBEdit
          Left = 381
          Top = 25
          Width = 274
          Height = 23
          TabStop = False
          DataField = 'descri'
          DataSource = Pagar.DataSource1
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 661
          Top = 25
          Width = 56
          Height = 23
          TabStop = False
          DataField = 'tipo'
          DataSource = Pagar.DataSource1
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 3
          Top = 69
          Width = 71
          Height = 23
          DataField = 'id_forn'
          DataSource = Pagar.DataSource1
          TabOrder = 6
          OnExit = DBEdit7Exit
        end
        object DBEdit8: TDBEdit
          Left = 109
          Top = 69
          Width = 382
          Height = 23
          TabStop = False
          DataField = 'nome_chave'
          DataSource = Pagar.DataSource1
          ReadOnly = True
          TabOrder = 7
        end
        object DBEdit9: TDBEdit
          Left = 497
          Top = 69
          Width = 104
          Height = 23
          TabStop = False
          DataField = 'cnpj'
          DataSource = Pagar.DataSource1
          ReadOnly = True
          TabOrder = 8
        end
        object DBEdit10: TDBEdit
          Left = 605
          Top = 69
          Width = 112
          Height = 23
          TabStop = False
          DataField = 'telefone'
          DataSource = Pagar.DataSource1
          ReadOnly = True
          TabOrder = 9
        end
        object DBEdit11: TDBEdit
          Left = 3
          Top = 114
          Width = 150
          Height = 23
          TabStop = False
          DataField = 'criacao'
          DataSource = Pagar.DataSource1
          ReadOnly = True
          TabOrder = 10
        end
        object DBMemo1: TDBMemo
          Left = 3
          Top = 254
          Width = 712
          Height = 61
          DataField = 'obs'
          DataSource = Pagar.DataSource1
          TabOrder = 18
        end
        object DBComboBox1: TDBComboBox
          Left = 182
          Top = 25
          Width = 108
          Height = 23
          Style = csDropDownList
          DataField = 'cc'
          DataSource = Pagar.DataSource1
          ItemHeight = 15
          TabOrder = 2
        end
        object JvDBDateEdit2: TJvDBDateEdit
          Left = 267
          Top = 114
          Width = 111
          Height = 23
          DataField = 'vencimento'
          DataSource = Pagar.DataSource1
          ButtonFlat = True
          ButtonWidth = 23
          ShowNullDate = False
          TabOrder = 12
        end
        object JvDBDateEdit3: TJvDBDateEdit
          Left = 385
          Top = 114
          Width = 122
          Height = 23
          DataField = 'vencimento_real'
          DataSource = Pagar.DataSource1
          ButtonFlat = True
          ButtonWidth = 23
          ShowNullDate = False
          TabOrder = 13
        end
        object deBaixa: TJvDBDateEdit
          Left = 513
          Top = 163
          Width = 100
          Height = 23
          DataField = 'baixa'
          DataSource = Pagar.DataSource1
          ButtonFlat = True
          Enabled = False
          ButtonWidth = 23
          ShowNullDate = False
          TabOrder = 14
        end
        object JvDBCalcEdit1: TJvDBCalcEdit
          Left = 3
          Top = 163
          Width = 97
          Height = 23
          ButtonFlat = True
          ButtonWidth = 23
          TabOrder = 15
          DecimalPlacesAlwaysShown = False
          DataField = 'valor'
          DataSource = Pagar.DataSource1
        end
        object ceBaixa: TJvDBCalcEdit
          Left = 618
          Top = 163
          Width = 97
          Height = 23
          ButtonFlat = True
          Enabled = False
          ButtonWidth = 23
          TabOrder = 16
          DecimalPlacesAlwaysShown = False
          DataField = 'valor_baixado'
          DataSource = Pagar.DataSource1
        end
        object JvDBDateEdit1: TJvDBDateEdit
          Left = 160
          Top = 113
          Width = 103
          Height = 23
          DataField = 'emissao'
          DataSource = Pagar.DataSource1
          ButtonFlat = True
          ButtonWidth = 23
          ShowNullDate = False
          TabOrder = 11
        end
        object DBEdit3: TDBEdit
          Left = 3
          Top = 209
          Width = 712
          Height = 23
          DataField = 'historico'
          DataSource = Pagar.DataSource1
          TabOrder = 17
        end
        object JvDBCalcEdit2: TJvDBCalcEdit
          Left = 106
          Top = 163
          Width = 97
          Height = 23
          ButtonFlat = True
          DisplayFormat = ',0.#0'
          ButtonWidth = 23
          TabOrder = 19
          DecimalPlacesAlwaysShown = False
          DataField = 'juros'
          DataSource = Pagar.DataSource1
        end
        object JvDBCalcEdit3: TJvDBCalcEdit
          Left = 209
          Top = 163
          Width = 96
          Height = 23
          ButtonFlat = True
          DisplayFormat = ',0.#0'
          ButtonWidth = 23
          TabOrder = 20
          DecimalPlacesAlwaysShown = False
          DataField = 'multa'
          DataSource = Pagar.DataSource1
        end
        object JvDBCalcEdit4: TJvDBCalcEdit
          Left = 311
          Top = 163
          Width = 96
          Height = 23
          ButtonFlat = True
          DisplayFormat = ',0.#0'
          ButtonWidth = 23
          TabOrder = 21
          DecimalPlacesAlwaysShown = False
          DataField = 'descto'
          DataSource = Pagar.DataSource1
        end
        object JvDBCalcEdit5: TJvDBCalcEdit
          Left = 413
          Top = 163
          Width = 96
          Height = 23
          ButtonFlat = True
          DisplayFormat = ',0.#0'
          Enabled = False
          ButtonWidth = 23
          TabOrder = 22
          DecimalPlacesAlwaysShown = False
          DataField = 'total'
          DataSource = Pagar.DataSource1
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 733
    ExplicitWidth = 733
    inherited ToolBar1: TToolBar
      Width = 720
      ExplicitWidth = 720
    end
  end
  inherited alDef: TActionList
    Left = 200
    inherited actNew: TAction
      Visible = False
    end
    inherited actDel: TAction
      Visible = False
    end
    object FindNatu: TAction
      Hint = 'Localizar Natureza Financeira'
      ImageIndex = 332
      OnExecute = FindNatuExecute
    end
    object FindForn: TAction
      Hint = 'Localizar Fornecedor'
      ImageIndex = 332
      OnExecute = FindFornExecute
    end
  end
end
