inherited LabFreteM: TLabFreteM
  Caption = 'Manuten'#231#227'o de Frete'
  ClientWidth = 737
  ExplicitWidth = 743
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 737
    ExplicitWidth = 737
    inherited Panel3: TPanel
      Top = 0
      Width = 737
      Height = 430
      Align = alClient
      ExplicitTop = 0
      ExplicitWidth = 737
      ExplicitHeight = 430
      inherited PageControl3: TPageControl
        Width = 731
        Height = 380
        ExplicitWidth = 731
        ExplicitHeight = 380
        inherited tsDet: TTabSheet
          ExplicitWidth = 723
          ExplicitHeight = 350
          inherited DBGrid1: TDBGrid
            Width = 723
            Height = 350
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 731
        ExplicitWidth = 731
        inherited ToolBar3: TToolBar
          Width = 678
          ExplicitWidth = 678
        end
      end
    end
    inherited PageControl1: TPageControl
      Width = 731
      Height = 424
      ExplicitWidth = 731
      ExplicitHeight = 424
      inherited TabSheet1: TTabSheet
        Caption = 'Frete'
        ExplicitWidth = 723
        ExplicitHeight = 394
        object Label7: TLabel
          Left = 3
          Top = 8
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
          Left = 78
          Top = 25
          Width = 25
          Height = 23
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
          Top = 8
          Width = 65
          Height = 15
          Caption = 'Raz'#227'o Social'
          FocusControl = DBEdit8
        end
        object Label9: TLabel
          Left = 495
          Top = 8
          Width = 40
          Height = 15
          Caption = 'C.N.P.J.'
          FocusControl = DBEdit9
        end
        object Label1: TLabel
          Left = 605
          Top = 8
          Width = 30
          Height = 15
          Caption = 'C.P.F.'
          FocusControl = DBEdit1
        end
        object DBEdit7: TDBEdit
          Left = 3
          Top = 25
          Width = 75
          Height = 23
          DataField = 'codigo'
          DataSource = LabFrete.DataSource1
          TabOrder = 0
        end
        object DBEdit8: TDBEdit
          Left = 109
          Top = 25
          Width = 380
          Height = 23
          TabStop = False
          DataField = 'nome_chave'
          DataSource = LabFrete.DataSource1
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit9: TDBEdit
          Left = 495
          Top = 25
          Width = 104
          Height = 23
          TabStop = False
          DataField = 'cnpj'
          DataSource = LabFrete.DataSource1
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit1: TDBEdit
          Left = 605
          Top = 25
          Width = 104
          Height = 23
          TabStop = False
          DataField = 'cpf'
          DataSource = LabFrete.DataSource1
          ReadOnly = True
          TabOrder = 3
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 731
    ExplicitWidth = 731
    inherited ToolBar1: TToolBar
      Width = 688
      ExplicitWidth = 688
    end
  end
  inherited alDef: TActionList
    Left = 200
  end
end
