inherited CallCenterM: TCallCenterM
  Caption = 'Manuten'#231#227'o de Processo'
  ClientHeight = 334
  ClientWidth = 766
  Constraints.MinWidth = 691
  ExplicitWidth = 772
  ExplicitHeight = 363
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 766
    Height = 290
    ExplicitWidth = 766
    ExplicitHeight = 290
    inherited pnLookup: TPanel
      Width = 786
      ExplicitWidth = 786
    end
    inherited Panel3: TPanel
      Top = -90
      Width = 786
      Align = alNone
      ExplicitTop = -90
      ExplicitWidth = 786
      inherited PageControl3: TPageControl
        Top = 47
        Width = 780
        Height = 185
        ExplicitLeft = 3
        ExplicitTop = 47
        ExplicitWidth = 780
        ExplicitHeight = 185
        inherited tsDet: TTabSheet
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 772
          ExplicitHeight = 164
          inherited DBGrid1: TDBGrid
            Width = 772
            Height = 155
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 780
        Height = 38
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 780
        ExplicitHeight = 38
        inherited ToolBar3: TToolBar
          Width = 767
          ButtonWidth = 129
          ExplicitWidth = 767
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
      Width = 760
      Height = 284
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 760
      ExplicitHeight = 293
      inherited TabSheet1: TTabSheet
        Caption = 'Registro de Contato'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 752
        ExplicitHeight = 263
        object Label4: TLabel
          Left = 9
          Top = 9
          Width = 40
          Height = 15
          Caption = 'C'#243'digo'
          FocusControl = DBEdit4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 57
          Top = 9
          Width = 65
          Height = 15
          Caption = 'Raz'#227'o Social'
        end
        object Label1: TLabel
          Left = 393
          Top = 9
          Width = 41
          Height = 15
          Caption = 'Apelido'
        end
        object Label3: TLabel
          Left = 523
          Top = 9
          Width = 40
          Height = 15
          Caption = 'C.N.P.J.'
        end
        object Label10: TLabel
          Left = 643
          Top = 11
          Width = 65
          Height = 15
          Caption = 'Ins. Estadual'
          FocusControl = DBEdit10
        end
        object Bevel6: TBevel
          Left = 10
          Top = 61
          Width = 728
          Height = 2
          Shape = bsTopLine
        end
        object Label5: TLabel
          Left = 9
          Top = 93
          Width = 43
          Height = 15
          Caption = 'Contato'
        end
        object Label6: TLabel
          Left = 74
          Top = 68
          Width = 33
          Height = 15
          Caption = 'Nome'
        end
        object Label7: TLabel
          Left = 245
          Top = 68
          Width = 44
          Height = 15
          Caption = 'Telefone'
        end
        object Label8: TLabel
          Left = 391
          Top = 68
          Width = 37
          Height = 15
          Caption = 'Celular'
        end
        object Label9: TLabel
          Left = 539
          Top = 68
          Width = 29
          Height = 15
          Caption = 'Email'
        end
        object Label11: TLabel
          Left = 9
          Top = 123
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
        end
        object DBEdit4: TDBEdit
          Left = 9
          Top = 28
          Width = 41
          Height = 23
          TabStop = False
          DataField = 'codigo'
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit1: TDBEdit
          Left = 57
          Top = 28
          Width = 329
          Height = 23
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'empresa'
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 393
          Top = 28
          Width = 123
          Height = 23
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'nome_chave'
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit3: TDBEdit
          Left = 523
          Top = 28
          Width = 113
          Height = 23
          TabStop = False
          DataField = 'cnpj'
          MaxLength = 18
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit10: TDBEdit
          Left = 643
          Top = 28
          Width = 95
          Height = 23
          TabStop = False
          DataField = 'inscricao'
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit5: TDBEdit
          Left = 74
          Top = 85
          Width = 141
          Height = 23
          TabStop = False
          DataField = 'nome'
          DataSource = DM.dsCallCenter
          ReadOnly = True
          TabOrder = 5
        end
        object BitBtn2: TBitBtn
          Left = 215
          Top = 85
          Width = 24
          Height = 23
          Action = actContatoF
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
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
        object DBEdit6: TDBEdit
          Left = 245
          Top = 85
          Width = 142
          Height = 23
          TabStop = False
          DataField = 'telefone'
          DataSource = DM.dsCallCenter
          ReadOnly = True
          TabOrder = 7
        end
        object DBEdit7: TDBEdit
          Left = 391
          Top = 85
          Width = 142
          Height = 23
          TabStop = False
          DataField = 'celular'
          DataSource = DM.dsCallCenter
          ReadOnly = True
          TabOrder = 8
        end
        object DBEdit8: TDBEdit
          Left = 539
          Top = 85
          Width = 199
          Height = 23
          TabStop = False
          DataField = 'email'
          DataSource = DM.dsCallCenter
          ReadOnly = True
          TabOrder = 9
        end
        object DBMemo1: TDBMemo
          Left = 74
          Top = 123
          Width = 664
          Height = 118
          DataField = 'descri'
          DataSource = DM.dsCallCenter
          TabOrder = 10
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 760
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 760
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      Width = 747
      ButtonWidth = 115
      ExplicitWidth = 747
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
    Left = 224
    inherited actEditMaster: TAction
      Visible = False
    end
    inherited actDelMaster: TAction
      Visible = False
    end
    inherited actEdit: TAction
      Visible = False
    end
    inherited actDel: TAction
      Visible = False
    end
    object actLkpCli: TAction
      ImageIndex = 15
    end
    object actContatoF: TAction
      ImageIndex = 332
      OnExecute = actContatoFExecute
    end
  end
end
