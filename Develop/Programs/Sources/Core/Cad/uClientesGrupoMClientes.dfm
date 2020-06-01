inherited ClientesGrupoMClientes: TClientesGrupoMClientes
  Caption = 'Manuten'#231#227'o de Grupos de Clientes'
  ClientHeight = 194
  ExplicitWidth = 645
  ExplicitHeight = 223
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Height = 150
    ExplicitTop = 44
    ExplicitHeight = 150
    inherited Panel3: TPanel
      Align = alNone
      ExplicitTop = 204
      inherited PageControl3: TPageControl
        Top = 47
        Height = 185
        ExplicitLeft = 3
        ExplicitTop = 47
        ExplicitWidth = 633
        ExplicitHeight = 185
        inherited tsDet: TTabSheet
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 625
          ExplicitHeight = 164
          inherited DBGrid1: TDBGrid
            Width = 625
            Height = 155
          end
        end
      end
      inherited ControlBar2: TControlBar
        Height = 38
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 633
        ExplicitHeight = 38
        inherited ToolBar3: TToolBar
          ButtonWidth = 129
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
      Height = 144
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 633
      ExplicitHeight = 153
      inherited TabSheet1: TTabSheet
        Caption = 'Clientes x Grupo'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 625
        ExplicitHeight = 123
        object Label1: TLabel
          Left = 3
          Top = 0
          Width = 33
          Height = 15
          Caption = 'Grupo'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 42
          Top = 3
          Width = 33
          Height = 15
          Caption = 'Nome'
          FocusControl = DBEdit2
        end
        object Bevel6: TBevel
          Left = 3
          Top = 47
          Width = 613
          Height = 14
          Shape = bsTopLine
        end
        object Label42: TLabel
          Left = 3
          Top = 51
          Width = 39
          Height = 15
          Caption = 'Cliente'
          FocusControl = DBEdit27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SpeedButton3: TSpeedButton
          Left = 46
          Top = 68
          Width = 25
          Height = 23
          Action = actFindCli
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
        object Label48: TLabel
          Left = 75
          Top = 51
          Width = 69
          Height = 15
          Caption = 'Nome Chave'
          FocusControl = DBEdit33
        end
        object Label33: TLabel
          Left = 253
          Top = 51
          Width = 40
          Height = 15
          Caption = 'C.N.P.J.'
        end
        object Label3: TLabel
          Left = 380
          Top = 51
          Width = 30
          Height = 15
          Caption = 'C.P.F.'
        end
        object Label4: TLabel
          Left = 508
          Top = 50
          Width = 44
          Height = 15
          Caption = 'Telefone'
          FocusControl = DBEdit4
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 17
          Width = 32
          Height = 23
          TabStop = False
          DataField = 'recno'
          DataSource = ClientesGrupo.DataSource1
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 42
          Top = 17
          Width = 574
          Height = 23
          TabStop = False
          DataField = 'descri'
          DataSource = ClientesGrupo.DataSource1
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit27: TDBEdit
          Left = 3
          Top = 69
          Width = 42
          Height = 23
          DataField = 'codigo'
          DataSource = ClientesGrupo.dsClientes
          TabOrder = 2
          OnExit = DBEdit27Exit
        end
        object DBEdit33: TDBEdit
          Left = 75
          Top = 69
          Width = 173
          Height = 23
          TabStop = False
          DataField = 'nome_chave'
          DataSource = ClientesGrupo.dsClientes
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit17: TDBEdit
          Left = 253
          Top = 69
          Width = 121
          Height = 23
          DataField = 'cnpj'
          DataSource = ClientesGrupo.dsClientes
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit3: TDBEdit
          Left = 380
          Top = 69
          Width = 121
          Height = 23
          DataField = 'cpf'
          DataSource = ClientesGrupo.dsClientes
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit4: TDBEdit
          Left = 508
          Top = 68
          Width = 108
          Height = 23
          TabStop = False
          DataField = 'telefone'
          DataSource = ClientesGrupo.dsClientes
          ReadOnly = True
          TabOrder = 6
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 633
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      ButtonWidth = 115
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
    object actFindCli: TAction
      Hint = 'Pesquisa de Clientes'
      ImageIndex = 332
      OnExecute = actFindCliExecute
    end
  end
end
