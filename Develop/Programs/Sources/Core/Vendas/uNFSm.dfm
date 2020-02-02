inherited NFSM: TNFSM
  Caption = 'Nota Fiscal de Sa'#237'da'
  ClientHeight = 598
  ClientWidth = 745
  Constraints.MinWidth = 691
  ExplicitWidth = 751
  ExplicitHeight = 627
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 745
    Height = 554
    ExplicitTop = 35
    ExplicitWidth = 745
    ExplicitHeight = 563
    inherited Panel3: TPanel
      Top = 356
      Width = 745
      Height = 198
      Visible = True
      ExplicitTop = 365
      ExplicitWidth = 745
      ExplicitHeight = 198
      inherited PageControl3: TPageControl
        Top = 47
        Width = 739
        Height = 148
        ExplicitLeft = 3
        ExplicitTop = 38
        ExplicitWidth = 739
        ExplicitHeight = 157
        inherited tsDet: TTabSheet
          Caption = 'Itens da Nota'
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 731
          ExplicitHeight = 127
          inherited DBGrid1: TDBGrid
            Width = 731
            Height = 118
            DataSource = NFS.dsqItens
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Hist'#243'rico'
          ImageIndex = 1
          object DBGrid2: TDBGrid
            Tag = 1
            Left = 0
            Top = 0
            Width = 731
            Height = 118
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = NFS.dsHistorico
            DefaultDrawing = False
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            OnDrawColumnCell = ChildGridDrawColumnCell
            OnDblClick = ChildGridDblClick
            OnEnter = ChildGridEnter
            OnKeyPress = ChildGridKeyPress
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 739
        Height = 38
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 739
        ExplicitHeight = 38
        inherited ToolBar3: TToolBar
          Width = 726
          ButtonWidth = 129
          ExplicitWidth = 726
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
      Height = 350
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 739
      ExplicitHeight = 359
      inherited TabSheet1: TTabSheet
        Caption = 'Cabe'#231'alho'
        Font.Name = 'Fhg'
        ParentFont = False
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 731
        ExplicitHeight = 329
        object Label1: TLabel
          Left = 55
          Top = 9
          Width = 30
          Height = 15
          Caption = 'S'#233'rie'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 115
          Top = 9
          Width = 24
          Height = 15
          Caption = 'Tipo'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 620
          Top = 9
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
        object Label7: TLabel
          Left = 6
          Top = 175
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
        object SpeedButton2: TSpeedButton
          Left = 64
          Top = 192
          Width = 25
          Height = 23
          Action = actlocNatureza
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
          Left = 368
          Top = 175
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
        object SpeedButton1: TSpeedButton
          Left = 86
          Top = 26
          Width = 24
          Height = 23
          Action = actLocSerie
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
          Left = 6
          Top = 9
          Width = 16
          Height = 15
          Caption = 'NF'
          FocusControl = DBEdit4
        end
        object Label6: TLabel
          Left = 190
          Top = 10
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
        object SpeedButton3: TSpeedButton
          Left = 244
          Top = 27
          Width = 25
          Height = 23
          Action = actLocCliente
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
          Left = 272
          Top = 10
          Width = 72
          Height = 15
          Caption = 'Raz'#227'o Social'
          FocusControl = DBEdit8
        end
        object Label9: TLabel
          Left = 492
          Top = 10
          Width = 42
          Height = 15
          Caption = 'C.N.P.J.'
          FocusControl = DBEdit9
        end
        object Label18: TLabel
          Left = 561
          Top = 175
          Width = 58
          Height = 15
          Caption = 'Comiss'#227'o'
          FocusControl = DBEdit17
        end
        object Label19: TLabel
          Left = 641
          Top = 175
          Width = 62
          Height = 15
          Caption = 'Total da NF'
          FocusControl = DBEdit18
        end
        object Label20: TLabel
          Left = 467
          Top = 175
          Width = 35
          Height = 15
          Caption = 'Status'
        end
        object Label21: TLabel
          Left = 6
          Top = 130
          Width = 49
          Height = 15
          Caption = 'Hist'#243'rico'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 570
          Top = 130
          Width = 49
          Height = 15
          Caption = 'Parcelas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 638
          Top = 130
          Width = 83
          Height = 15
          Caption = 'Intervalo (Dias)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 6
          Top = 56
          Width = 132
          Height = 15
          Caption = 'Observa'#231#245'es do Cliente'
          FocusControl = DBMemo1
        end
        object DBEdit1: TDBEdit
          Left = 55
          Top = 26
          Width = 26
          Height = 23
          DataField = 'serie'
          DataSource = NFS.DataSource1
          TabOrder = 1
          OnExit = DBEdit1Exit
        end
        object DBEdit2: TDBEdit
          Left = 115
          Top = 26
          Width = 66
          Height = 23
          TabStop = False
          DataField = 'tipo'
          DataSource = NFS.DataSource1
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit3: TDBEdit
          Left = 6
          Top = 192
          Width = 57
          Height = 23
          DataField = 'natureza'
          DataSource = NFS.DataSource1
          TabOrder = 10
          OnExit = DBEdit3Exit
        end
        object DBEdit5: TDBEdit
          Left = 92
          Top = 192
          Width = 269
          Height = 23
          TabStop = False
          DataField = 'descri'
          DataSource = NFS.DataSource1
          ReadOnly = True
          TabOrder = 11
        end
        object JvDBDatePickerEdit2: TJvDBDatePickerEdit
          Left = 368
          Top = 192
          Width = 95
          Height = 23
          AllowNoDate = True
          DataField = 'vencto'
          DataSource = NFS.DataSource1
          TabOrder = 12
        end
        object JvDBDatePickerEdit1: TJvDBDatePickerEdit
          Left = 620
          Top = 26
          Width = 96
          Height = 23
          AllowNoDate = True
          DataField = 'emissao'
          DataSource = NFS.DataSource1
          TabOrder = 6
        end
        object DBEdit4: TDBEdit
          Left = 6
          Top = 26
          Width = 42
          Height = 23
          DataField = 'nf'
          DataSource = NFS.DataSource1
          TabOrder = 0
        end
        object DBEdit7: TDBEdit
          Left = 190
          Top = 27
          Width = 51
          Height = 23
          DataField = 'codigo'
          DataSource = NFS.DataSource1
          TabOrder = 3
          OnExit = DBEdit7Exit
        end
        object DBEdit8: TDBEdit
          Left = 272
          Top = 27
          Width = 216
          Height = 23
          TabStop = False
          DataField = 'nome_chave'
          DataSource = NFS.DataSource1
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit9: TDBEdit
          Left = 492
          Top = 27
          Width = 122
          Height = 23
          TabStop = False
          DataField = 'cnpj'
          DataSource = NFS.DataSource1
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit17: TDBEdit
          Left = 561
          Top = 192
          Width = 74
          Height = 23
          TabStop = False
          DataField = 'vlcom'
          DataSource = NFS.DataSource1
          ReadOnly = True
          TabOrder = 13
        end
        object DBEdit18: TDBEdit
          Left = 641
          Top = 192
          Width = 75
          Height = 23
          TabStop = False
          DataField = 'valor'
          DataSource = NFS.DataSource1
          ReadOnly = True
          TabOrder = 14
        end
        object GroupBox1: TGroupBox
          Left = 6
          Top = 222
          Width = 710
          Height = 87
          Caption = ' Tributa'#231#227'o '
          TabOrder = 15
          object Label10: TLabel
            Left = 10
            Top = 31
            Width = 41
            Height = 15
            Caption = 'I.C.M.S.'
            FocusControl = DBEdit6
          end
          object Label11: TLabel
            Left = 10
            Top = 61
            Width = 21
            Height = 15
            Caption = 'I.P.I.'
            FocusControl = DBEdit10
          end
          object Label12: TLabel
            Left = 182
            Top = 31
            Width = 28
            Height = 15
            Caption = 'I.S.S.'
            FocusControl = DBEdit11
          end
          object Label13: TLabel
            Left = 183
            Top = 61
            Width = 36
            Height = 15
            Caption = 'I.R.P.J.'
            FocusControl = DBEdit12
          end
          object Label14: TLabel
            Left = 363
            Top = 31
            Width = 26
            Height = 15
            Caption = 'P.I.S.'
            FocusControl = DBEdit13
          end
          object Label15: TLabel
            Left = 363
            Top = 61
            Width = 36
            Height = 15
            Caption = 'Cofins'
            FocusControl = DBEdit14
          end
          object Label16: TLabel
            Left = 538
            Top = 31
            Width = 40
            Height = 15
            Caption = 'I.N.S.S.'
            FocusControl = DBEdit15
          end
          object Label17: TLabel
            Left = 538
            Top = 61
            Width = 44
            Height = 15
            Caption = 'C.S.S.L.'
            FocusControl = DBEdit16
          end
          object DBEdit6: TDBEdit
            Left = 55
            Top = 23
            Width = 109
            Height = 23
            TabStop = False
            DataField = 'vlicms'
            DataSource = NFS.DataSource1
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit10: TDBEdit
            Left = 55
            Top = 53
            Width = 109
            Height = 23
            TabStop = False
            DataField = 'vlipi'
            DataSource = NFS.DataSource1
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit11: TDBEdit
            Left = 233
            Top = 23
            Width = 109
            Height = 23
            TabStop = False
            DataField = 'vliss'
            DataSource = NFS.DataSource1
            ReadOnly = True
            TabOrder = 2
          end
          object DBEdit12: TDBEdit
            Left = 233
            Top = 53
            Width = 109
            Height = 23
            TabStop = False
            DataField = 'vlirpj'
            DataSource = NFS.DataSource1
            ReadOnly = True
            TabOrder = 3
          end
          object DBEdit13: TDBEdit
            Left = 410
            Top = 23
            Width = 110
            Height = 23
            TabStop = False
            DataField = 'vlpis'
            DataSource = NFS.DataSource1
            ReadOnly = True
            TabOrder = 4
          end
          object DBEdit14: TDBEdit
            Left = 410
            Top = 53
            Width = 110
            Height = 23
            TabStop = False
            DataField = 'vlcofins'
            DataSource = NFS.DataSource1
            ReadOnly = True
            TabOrder = 5
          end
          object DBEdit15: TDBEdit
            Left = 588
            Top = 23
            Width = 110
            Height = 23
            TabStop = False
            DataField = 'vlinss'
            DataSource = NFS.DataSource1
            ReadOnly = True
            TabOrder = 6
          end
          object DBEdit16: TDBEdit
            Left = 588
            Top = 53
            Width = 110
            Height = 23
            TabStop = False
            DataField = 'vlcssl'
            DataSource = NFS.DataSource1
            ReadOnly = True
            TabOrder = 7
          end
        end
        object DBComboBox1: TDBComboBox
          Left = 468
          Top = 193
          Width = 87
          Height = 23
          Style = csDropDownList
          DataField = 'status'
          DataSource = NFS.DataSource1
          ItemHeight = 15
          Items.Strings = (
            'Digita'#231#227'o'
            'Faturada'
            'Cancelada')
          TabOrder = 16
        end
        object DBEdit19: TDBEdit
          Left = 6
          Top = 147
          Width = 558
          Height = 23
          DataField = 'historico'
          DataSource = NFS.DataSource1
          TabOrder = 7
        end
        object DBEdit20: TDBEdit
          Left = 570
          Top = 147
          Width = 61
          Height = 23
          DataField = 'pqtd'
          DataSource = NFS.DataSource1
          TabOrder = 8
        end
        object DBEdit21: TDBEdit
          Left = 638
          Top = 145
          Width = 78
          Height = 23
          DataField = 'pdias'
          DataSource = NFS.DataSource1
          TabOrder = 9
        end
        object DBMemo1: TDBMemo
          Left = 6
          Top = 73
          Width = 710
          Height = 50
          TabStop = False
          DataField = 'observacao'
          DataSource = NFS.DataSource1
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 17
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 739
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 739
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      Width = 726
      ButtonWidth = 115
      ExplicitWidth = 726
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
    Left = 200
    object actLocSerie: TAction
      ImageIndex = 332
      OnExecute = actLocSerieExecute
    end
    object actLocCliente: TAction
      ImageIndex = 332
      OnExecute = actLocClienteExecute
    end
    object actlocNatureza: TAction
      ImageIndex = 332
      OnExecute = actlocNaturezaExecute
    end
  end
end
