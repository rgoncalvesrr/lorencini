inherited LabInstMEns: TLabInstMEns
  Caption = 'Manuten'#231#227'o de Ensaios por Instrumentos'
  ClientHeight = 193
  ClientWidth = 730
  Constraints.MinWidth = 691
  ExplicitWidth = 736
  ExplicitHeight = 222
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 730
    Height = 149
    ExplicitWidth = 730
    ExplicitHeight = 149
    inherited Panel3: TPanel
      Align = alNone
    end
    inherited PageControl1: TPageControl
      Width = 724
      Height = 143
      ExplicitWidth = 724
      ExplicitHeight = 143
      inherited TabSheet1: TTabSheet
        Caption = 'Ensaio por Instrumento'
        ExplicitWidth = 716
        ExplicitHeight = 113
        object Label1: TLabel
          Left = 3
          Top = 9
          Width = 65
          Height = 15
          Caption = 'Instrumento'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 70
          Top = 9
          Width = 25
          Height = 15
          Caption = 'S'#233'rie'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 168
          Top = 9
          Width = 41
          Height = 15
          Caption = 'Modelo'
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 265
          Top = 9
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit4
        end
        object Label5: TLabel
          Left = 504
          Top = 9
          Width = 33
          Height = 15
          Caption = 'Grupo'
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 541
          Top = 9
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit6
        end
        object Bevel6: TBevel
          Left = 3
          Top = 56
          Width = 699
          Height = 5
          Shape = bsTopLine
        end
        object Label7: TLabel
          Left = 10
          Top = 60
          Width = 38
          Height = 15
          Caption = 'Ensaio'
          FocusControl = DBEdit7
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SpeedButton2: TSpeedButton
          Left = 65
          Top = 77
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
        object Label8: TLabel
          Left = 93
          Top = 60
          Width = 33
          Height = 15
          Caption = 'Nome'
          FocusControl = DBEdit8
        end
        object Label9: TLabel
          Left = 365
          Top = 60
          Width = 44
          Height = 15
          Caption = 'Unidade'
          FocusControl = DBEdit9
        end
        object Label10: TLabel
          Left = 537
          Top = 60
          Width = 42
          Height = 15
          Caption = 'M'#233'todo'
          FocusControl = DBEdit10
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 26
          Width = 60
          Height = 23
          TabStop = False
          DataField = 'recno'
          DataSource = LabInst.DataSource1
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 70
          Top = 26
          Width = 94
          Height = 23
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'serie'
          DataSource = LabInst.DataSource1
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 168
          Top = 26
          Width = 91
          Height = 23
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'modelo'
          DataSource = LabInst.DataSource1
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 265
          Top = 26
          Width = 233
          Height = 23
          TabStop = False
          DataField = 'descri'
          DataSource = LabInst.DataSource1
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 504
          Top = 26
          Width = 32
          Height = 23
          TabStop = False
          DataField = 'labdiag_gp_recno'
          DataSource = LabInst.DataSource1
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 541
          Top = 26
          Width = 161
          Height = 23
          TabStop = False
          DataField = 'grupo'
          DataSource = LabInst.DataSource1
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 10
          Top = 77
          Width = 52
          Height = 23
          DataField = 'ensaio_recno'
          DataSource = LabInst.dsLabEns
          TabOrder = 6
          OnExit = DBEdit7Exit
        end
        object DBEdit8: TDBEdit
          Left = 93
          Top = 77
          Width = 266
          Height = 23
          TabStop = False
          DataField = 'nome'
          DataSource = LabInst.dsLabEns
          ReadOnly = True
          TabOrder = 7
        end
        object DBEdit9: TDBEdit
          Left = 365
          Top = 77
          Width = 165
          Height = 23
          TabStop = False
          DataField = 'unidade'
          DataSource = LabInst.dsLabEns
          ReadOnly = True
          TabOrder = 8
        end
        object DBEdit10: TDBEdit
          Left = 537
          Top = 77
          Width = 165
          Height = 23
          TabStop = False
          DataField = 'metodo'
          DataSource = LabInst.dsLabEns
          ReadOnly = True
          TabOrder = 9
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 724
    ExplicitWidth = 724
    inherited ToolBar1: TToolBar
      Width = 711
      ExplicitWidth = 711
    end
  end
  inherited alDef: TActionList
    Left = 200
    object actFindEns: TAction
      ImageIndex = 332
      OnExecute = actFindEnsExecute
    end
  end
end
