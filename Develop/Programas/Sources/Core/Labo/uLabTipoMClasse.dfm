inherited LabTipoMClasse: TLabTipoMClasse
  Caption = 'Classes de Tens'#227'o por Tipo de Equipamento'
  ClientHeight = 187
  ClientWidth = 417
  Constraints.MinWidth = 0
  ExplicitWidth = 423
  ExplicitHeight = 215
  PixelsPerInch = 96
  TextHeight = 14
  inherited Bevel1: TBevel
    Height = 137
  end
  inherited Bevel3: TBevel
    Width = 417
  end
  inherited Bevel2: TBevel
    Left = 412
    Height = 137
  end
  inherited Bevel4: TBevel
    Top = 181
    Width = 417
  end
  inherited ToolBar1: TToolBar
    Width = 417
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
  inherited Panel1: TPanel
    Width = 407
    Height = 137
    inherited Panel3: TPanel
      Align = alNone
      inherited ToolBar3: TToolBar
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
        inherited tbSQLDet: TToolButton
          ExplicitWidth = 32
        end
        inherited ToolButton13: TToolButton
          ExplicitWidth = 32
        end
      end
      inherited PageControl3: TPageControl
        inherited tsDet: TTabSheet
          ExplicitLeft = 4
          ExplicitTop = 25
          ExplicitWidth = 578
          ExplicitHeight = 148
        end
      end
    end
    inherited PageControl1: TPageControl
      Width = 407
      Height = 137
      ExplicitHeight = 247
      inherited TabSheet1: TTabSheet
        Caption = 'Classe'
        ExplicitLeft = 4
        ExplicitTop = 25
        ExplicitWidth = 578
        ExplicitHeight = 143
        object Label1: TLabel
          Left = 3
          Top = 8
          Width = 33
          Height = 14
          Caption = 'C'#243'digo'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 61
          Top = 8
          Width = 20
          Height = 14
          Caption = 'Tipo'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 368
          Top = 8
          Width = 23
          Height = 14
          Caption = 'Sigla'
          FocusControl = DBEdit3
        end
        object Bevel6: TBevel
          Left = 3
          Top = 52
          Width = 389
          Height = 7
          Shape = bsTopLine
        end
        object Label7: TLabel
          Left = 3
          Top = 58
          Width = 38
          Height = 14
          Caption = 'Classe'
          FocusControl = DBEdit7
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SpeedButton3: TSpeedButton
          Left = 42
          Top = 74
          Width = 23
          Height = 22
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
          Left = 70
          Top = 58
          Width = 32
          Height = 14
          Caption = 'M'#237'nimo'
          FocusControl = DBEdit8
        end
        object Label9: TLabel
          Left = 218
          Top = 58
          Width = 36
          Height = 14
          Caption = 'M'#225'ximo'
          FocusControl = DBEdit9
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 24
          Width = 52
          Height = 22
          TabStop = False
          DataField = 'tipo'
          DataSource = LabEquipTipo.DataSource1
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 61
          Top = 24
          Width = 301
          Height = 22
          TabStop = False
          DataField = 'descri'
          DataSource = LabEquipTipo.DataSource1
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 368
          Top = 24
          Width = 23
          Height = 22
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'sigla'
          DataSource = LabEquipTipo.DataSource1
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit7: TDBEdit
          Left = 3
          Top = 74
          Width = 41
          Height = 22
          DataField = 'classe'
          DataSource = LabEnsaios.dsLabRefs
          TabOrder = 3
          OnExit = DBEdit7Exit
        end
        object DBEdit8: TDBEdit
          Left = 70
          Top = 74
          Width = 144
          Height = 22
          TabStop = False
          DataField = 'min'
          DataSource = LabEnsaios.dsLabRefs
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit9: TDBEdit
          Left = 218
          Top = 74
          Width = 144
          Height = 22
          TabStop = False
          DataField = 'max'
          DataSource = LabEnsaios.dsLabRefs
          ReadOnly = True
          TabOrder = 5
        end
      end
    end
  end
  inherited alDef: TActionList
    object actFindClasse: TAction
      ImageIndex = 8
      OnExecute = actFindClasseExecute
    end
  end
end
