inherited LabEnsaiosMInst: TLabEnsaiosMInst
  Caption = 'Manuten'#231#227'o de Instrumentos por Ensaio'
  ClientHeight = 196
  ClientWidth = 708
  Constraints.MinWidth = 691
  ExplicitWidth = 714
  ExplicitHeight = 225
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 708
    Height = 152
    ExplicitWidth = 708
    ExplicitHeight = 152
    inherited Panel3: TPanel
      Align = alNone
    end
    inherited PageControl1: TPageControl
      Width = 702
      Height = 146
      ExplicitWidth = 702
      ExplicitHeight = 146
      inherited TabSheet1: TTabSheet
        Caption = 'Instrumento por Ensaio'
        ExplicitWidth = 694
        ExplicitHeight = 116
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
          Width = 681
          Height = 3
          Shape = bsTopLine
        end
        object Label3: TLabel
          Left = 4
          Top = 60
          Width = 65
          Height = 15
          Caption = 'Instrumento'
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 91
          Top = 60
          Width = 25
          Height = 15
          Caption = 'S'#233'rie'
          FocusControl = DBEdit4
        end
        object Label5: TLabel
          Left = 190
          Top = 60
          Width = 41
          Height = 15
          Caption = 'Modelo'
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 286
          Top = 60
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit6
        end
        object Label8: TLabel
          Left = 524
          Top = 60
          Width = 33
          Height = 15
          Caption = 'Grupo'
          FocusControl = DBEdit8
        end
        object SpeedButton2: TSpeedButton
          Left = 65
          Top = 77
          Width = 24
          Height = 24
          Action = actFindInst
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
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 45
          Top = 25
          Width = 640
          Height = 23
          TabStop = False
          DataField = 'nome'
          DataSource = LabEnsaios.DataSource1
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 4
          Top = 77
          Width = 60
          Height = 23
          DataField = 'labinst_recno'
          DataSource = LabEnsaios.dsLabInst
          TabOrder = 2
          OnExit = DBEdit3Exit
        end
        object DBEdit4: TDBEdit
          Left = 91
          Top = 77
          Width = 94
          Height = 23
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'serie'
          DataSource = LabEnsaios.dsLabInst
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 190
          Top = 77
          Width = 91
          Height = 23
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'modelo'
          DataSource = LabEnsaios.dsLabInst
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 286
          Top = 77
          Width = 234
          Height = 23
          TabStop = False
          DataField = 'descri'
          DataSource = LabEnsaios.dsLabInst
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit8: TDBEdit
          Left = 524
          Top = 77
          Width = 161
          Height = 23
          TabStop = False
          DataField = 'grupo'
          DataSource = LabEnsaios.dsLabInst
          ReadOnly = True
          TabOrder = 6
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 702
    ExplicitWidth = 702
    inherited ToolBar1: TToolBar
      Width = 689
      ExplicitWidth = 689
    end
  end
  inherited alDef: TActionList
    Left = 208
    object actFindInst: TAction
      ImageIndex = 332
      OnExecute = actFindInstExecute
    end
  end
end
