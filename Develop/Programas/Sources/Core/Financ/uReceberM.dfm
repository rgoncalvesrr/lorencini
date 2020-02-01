inherited ReceberM: TReceberM
  Caption = 'T'#237'tulo a Receber'
  ClientHeight = 597
  ClientWidth = 745
  Constraints.MinWidth = 691
  ExplicitWidth = 751
  ExplicitHeight = 626
  PixelsPerInch = 96
  TextHeight = 15
  object SpeedButton1: TSpeedButton [0]
    Left = 360
    Top = 180
    Width = 25
    Height = 24
  end
  inherited Panel1: TPanel
    Top = 44
    Width = 745
    Height = 553
    ExplicitTop = 35
    ExplicitWidth = 737
    ExplicitHeight = 562
    inherited Panel3: TPanel
      Top = 370
      Width = 745
      Height = 183
      ExplicitTop = 379
      ExplicitWidth = 737
      ExplicitHeight = 183
      inherited PageControl3: TPageControl
        Top = 47
        Width = 739
        Height = 133
        ExplicitLeft = 3
        ExplicitTop = 38
        ExplicitWidth = 731
        ExplicitHeight = 142
        inherited tsDet: TTabSheet
          Caption = 'Contatos'
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 723
          ExplicitHeight = 112
          inherited DBGrid1: TDBGrid
            Width = 731
            Height = 103
            DataSource = Receber.dsContatos
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 739
        Height = 38
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 731
        ExplicitHeight = 38
        inherited ToolBar3: TToolBar
          Width = 718
          ButtonWidth = 129
          ExplicitWidth = 718
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
      Width = 739
      Height = 364
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 731
      ExplicitHeight = 373
      inherited TabSheet1: TTabSheet
        Caption = 'T'#237'tulo a Receber'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 723
        ExplicitHeight = 343
        object Label1: TLabel
          Left = 3
          Top = 8
          Width = 31
          Height = 15
          Caption = 'T'#237'tulo'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 51
          Top = 8
          Width = 63
          Height = 15
          Caption = 'Documento'
          FocusControl = DBEdit2
        end
        object Label4: TLabel
          Left = 282
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
        object Label5: TLabel
          Left = 361
          Top = 8
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 659
          Top = 8
          Width = 24
          Height = 15
          Caption = 'Tipo'
          FocusControl = DBEdit6
        end
        object Label7: TLabel
          Left = 3
          Top = 60
          Width = 39
          Height = 15
          Caption = 'Cliente'
          FocusControl = DBEdit7
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 109
          Top = 60
          Width = 65
          Height = 15
          Caption = 'Raz'#227'o Social'
          FocusControl = DBEdit8
        end
        object Label9: TLabel
          Left = 495
          Top = 60
          Width = 40
          Height = 15
          Caption = 'C.N.P.J.'
          FocusControl = DBEdit9
        end
        object Label10: TLabel
          Left = 605
          Top = 60
          Width = 45
          Height = 15
          Caption = 'Telefone'
          FocusControl = DBEdit10
        end
        object Label11: TLabel
          Left = 3
          Top = 110
          Width = 40
          Height = 15
          Caption = 'Cria'#231#227'o'
          FocusControl = DBEdit11
        end
        object Label12: TLabel
          Left = 154
          Top = 110
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
          Left = 283
          Top = 110
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
          Left = 410
          Top = 110
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
        object Label18: TLabel
          Left = 3
          Top = 243
          Width = 67
          Height = 15
          Caption = 'Observa'#231#245'es'
          FocusControl = DBMemo1
        end
        object SpeedButton2: TSpeedButton
          Left = 334
          Top = 25
          Width = 25
          Height = 23
          Action = findNatu
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
        object SpeedButton3: TSpeedButton
          Left = 78
          Top = 77
          Width = 25
          Height = 24
          Action = findCli
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
        object Label19: TLabel
          Left = 168
          Top = 8
          Width = 32
          Height = 15
          Caption = 'Conta'
        end
        object Label3: TLabel
          Left = 3
          Top = 198
          Width = 48
          Height = 15
          Caption = 'Hist'#243'rico'
          FocusControl = DBEdit3
        end
        object Label16: TLabel
          Left = 4
          Top = 156
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
        object Label15: TLabel
          Left = 106
          Top = 156
          Width = 27
          Height = 15
          Caption = 'Juros'
        end
        object Label21: TLabel
          Left = 209
          Top = 156
          Width = 31
          Height = 15
          Caption = 'Multa'
        end
        object Label22: TLabel
          Left = 311
          Top = 156
          Width = 50
          Height = 15
          Caption = 'Desconto'
        end
        object Label23: TLabel
          Left = 413
          Top = 156
          Width = 26
          Height = 15
          Caption = 'Total'
        end
        object Label17: TLabel
          Left = 513
          Top = 155
          Width = 27
          Height = 15
          Caption = 'Baixa'
        end
        object Label24: TLabel
          Left = 618
          Top = 156
          Width = 70
          Height = 15
          Caption = 'Valor Baixado'
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 25
          Width = 42
          Height = 23
          TabStop = False
          DataField = 'recno'
          DataSource = Receber.DataSource1
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 51
          Top = 25
          Width = 111
          Height = 23
          DataField = 'docto'
          DataSource = Receber.DataSource1
          TabOrder = 1
        end
        object DBEdit4: TDBEdit
          Left = 282
          Top = 25
          Width = 51
          Height = 23
          DataField = 'natureza'
          DataSource = Receber.DataSource1
          TabOrder = 3
          OnExit = DBEdit4Exit
        end
        object DBEdit5: TDBEdit
          Left = 361
          Top = 25
          Width = 292
          Height = 23
          TabStop = False
          DataField = 'descri'
          DataSource = Receber.DataSource1
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 659
          Top = 25
          Width = 56
          Height = 23
          TabStop = False
          DataField = 'tipo'
          DataSource = Receber.DataSource1
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 3
          Top = 77
          Width = 75
          Height = 23
          DataField = 'id_cli'
          DataSource = Receber.DataSource1
          TabOrder = 6
          OnExit = DBEdit7Exit
        end
        object DBEdit8: TDBEdit
          Left = 109
          Top = 77
          Width = 380
          Height = 23
          TabStop = False
          DataField = 'nome_chave'
          DataSource = Receber.DataSource1
          ReadOnly = True
          TabOrder = 7
        end
        object DBEdit9: TDBEdit
          Left = 495
          Top = 77
          Width = 104
          Height = 23
          TabStop = False
          DataField = 'cnpj'
          DataSource = Receber.DataSource1
          ReadOnly = True
          TabOrder = 8
        end
        object DBEdit10: TDBEdit
          Left = 605
          Top = 77
          Width = 110
          Height = 23
          TabStop = False
          DataField = 'telefone'
          DataSource = Receber.DataSource1
          ReadOnly = True
          TabOrder = 9
        end
        object DBEdit11: TDBEdit
          Left = 3
          Top = 129
          Width = 145
          Height = 23
          TabStop = False
          DataField = 'criacao'
          DataSource = Receber.DataSource1
          ReadOnly = True
          TabOrder = 10
        end
        object DBMemo1: TDBMemo
          Left = 3
          Top = 260
          Width = 712
          Height = 61
          DataField = 'obs'
          DataSource = Receber.DataSource1
          TabOrder = 22
        end
        object DBComboBox1: TDBComboBox
          Left = 168
          Top = 29
          Width = 108
          Height = 23
          Style = csDropDownList
          DataField = 'cc'
          DataSource = Receber.DataSource1
          ItemHeight = 15
          TabOrder = 2
        end
        object JvDBDateEdit1: TJvDBDateEdit
          Left = 154
          Top = 129
          Width = 124
          Height = 23
          DataField = 'emissao'
          DataSource = Receber.DataSource1
          ButtonFlat = True
          ButtonWidth = 23
          ShowNullDate = False
          TabOrder = 11
        end
        object JvDBDateEdit2: TJvDBDateEdit
          Left = 283
          Top = 129
          Width = 123
          Height = 23
          DataField = 'vencimento'
          DataSource = Receber.DataSource1
          ButtonFlat = True
          ButtonWidth = 23
          ShowNullDate = False
          TabOrder = 12
        end
        object JvDBDateEdit3: TJvDBDateEdit
          Left = 410
          Top = 129
          Width = 124
          Height = 23
          DataField = 'vencimento_real'
          DataSource = Receber.DataSource1
          ButtonFlat = True
          ButtonWidth = 23
          ShowNullDate = False
          TabOrder = 13
        end
        object DBEdit3: TDBEdit
          Left = 3
          Top = 215
          Width = 712
          Height = 23
          DataField = 'historico'
          DataSource = Receber.DataSource1
          TabOrder = 21
        end
        object JvDBCalcEdit1: TJvDBCalcEdit
          Left = 3
          Top = 174
          Width = 97
          Height = 23
          ButtonFlat = True
          ButtonWidth = 23
          TabOrder = 14
          DecimalPlacesAlwaysShown = False
          DataField = 'valor'
          DataSource = Receber.DataSource1
        end
        object JvDBCalcEdit2: TJvDBCalcEdit
          Left = 106
          Top = 174
          Width = 97
          Height = 23
          ButtonFlat = True
          DisplayFormat = ',0.#0'
          ButtonWidth = 23
          TabOrder = 15
          DecimalPlacesAlwaysShown = False
          DataField = 'juros'
          DataSource = Receber.DataSource1
        end
        object JvDBCalcEdit3: TJvDBCalcEdit
          Left = 209
          Top = 174
          Width = 96
          Height = 23
          ButtonFlat = True
          DisplayFormat = ',0.#0'
          ButtonWidth = 23
          TabOrder = 16
          DecimalPlacesAlwaysShown = False
          DataField = 'multa'
          DataSource = Receber.DataSource1
        end
        object JvDBCalcEdit4: TJvDBCalcEdit
          Left = 311
          Top = 174
          Width = 96
          Height = 23
          ButtonFlat = True
          DisplayFormat = ',0.#0'
          ButtonWidth = 23
          TabOrder = 17
          DecimalPlacesAlwaysShown = False
          DataField = 'descto'
          DataSource = Receber.DataSource1
        end
        object JvDBCalcEdit5: TJvDBCalcEdit
          Left = 413
          Top = 174
          Width = 96
          Height = 23
          ButtonFlat = True
          DisplayFormat = ',0.#0'
          Enabled = False
          ButtonWidth = 23
          TabOrder = 18
          DecimalPlacesAlwaysShown = False
          DataField = 'total'
          DataSource = Receber.DataSource1
        end
        object deBaixa: TJvDBDateEdit
          Left = 513
          Top = 174
          Width = 100
          Height = 23
          DataField = 'baixa'
          DataSource = Receber.DataSource1
          ButtonFlat = True
          Enabled = False
          ButtonWidth = 23
          ShowNullDate = False
          TabOrder = 19
        end
        object ceBaixa: TJvDBCalcEdit
          Left = 618
          Top = 174
          Width = 97
          Height = 23
          ButtonFlat = True
          Enabled = False
          ButtonWidth = 23
          TabOrder = 20
          DecimalPlacesAlwaysShown = False
          DataField = 'valor_baixado'
          DataSource = Receber.DataSource1
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 739
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 731
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      Width = 718
      ButtonWidth = 115
      ExplicitWidth = 718
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
    inherited actNew: TAction
      Enabled = True
    end
    object findNatu: TAction
      ImageIndex = 332
      OnExecute = findNatuExecute
    end
    object findCli: TAction
      ImageIndex = 332
      OnExecute = findCliExecute
    end
  end
end
