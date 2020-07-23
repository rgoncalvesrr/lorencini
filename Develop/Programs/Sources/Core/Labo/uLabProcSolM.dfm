inherited LabProcSolM: TLabProcSolM
  Caption = 'Edi'#231#227'o de Remessas'
  ClientHeight = 261
  ClientWidth = 715
  ExplicitWidth = 721
  ExplicitHeight = 289
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 715
    Height = 217
    ExplicitTop = 35
    ExplicitWidth = 715
    ExplicitHeight = 183
    inherited Panel3: TPanel
      Align = alNone
      ExplicitTop = 204
      inherited PageControl3: TPageControl
        Top = 47
        Height = 185
        ExplicitLeft = 3
        ExplicitTop = 38
        ExplicitWidth = 633
        ExplicitHeight = 194
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
      Width = 709
      Height = 211
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 709
      ExplicitHeight = 177
      inherited TabSheet1: TTabSheet
        Caption = 'Solicita'#231#227'o de Remessa de Vidrarias'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 701
        ExplicitHeight = 147
        object Panel2: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 695
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 69
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitHeight = 45
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 57
              Height = 15
              Align = alTop
              Caption = 'Solicita'#231#227'o'
              FocusControl = DBEdit1
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 63
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'recno'
              DataSource = LabProcSol.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel5: TPanel
            Left = 69
            Top = 0
            Width = 62
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitHeight = 45
            object Label7: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 39
              Height = 14
              Align = alTop
              Caption = 'Cliente'
              FocusControl = DBEdit7
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit7: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 23
              Width = 59
              Height = 24
              Margins.Right = 0
              Align = alClient
              DataField = 'codigo'
              DataSource = LabProcSol.DataSource1
              TabOrder = 0
              OnExit = DBEdit7Exit
              ExplicitHeight = 23
            end
          end
          object Panel6: TPanel
            Left = 131
            Top = 0
            Width = 29
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object SpeedButton3: TSpeedButton
              AlignWithMargins = True
              Left = 0
              Top = 24
              Width = 26
              Height = 23
              Margins.Left = 0
              Margins.Top = 24
              Action = actFindCli
              Align = alClient
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
              ExplicitTop = 20
              ExplicitWidth = 25
            end
          end
          object Panel7: TPanel
            Left = 160
            Top = 0
            Width = 319
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 3
            ExplicitLeft = 157
            ExplicitWidth = 322
            ExplicitHeight = 45
            object Label8: TLabel
              AlignWithMargins = True
              Left = 1
              Top = 3
              Width = 65
              Height = 15
              Margins.Left = 1
              Align = alTop
              Caption = 'Raz'#227'o Social'
              FocusControl = DBEdit8
            end
            object DBEdit8: TDBEdit
              AlignWithMargins = True
              Left = 1
              Top = 24
              Width = 315
              Height = 23
              Margins.Left = 1
              TabStop = False
              Align = alClient
              DataField = 'nome_chave'
              DataSource = LabProcSol.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitWidth = 318
            end
          end
          object Panel8: TPanel
            Left = 479
            Top = 0
            Width = 114
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 4
            ExplicitHeight = 45
            object Label9: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 40
              Height = 15
              Align = alTop
              Caption = 'C.N.P.J.'
              FocusControl = DBEdit9
            end
            object DBEdit9: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 108
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'cnpj'
              DataSource = LabProcSol.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel9: TPanel
            Left = 593
            Top = 0
            Width = 102
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 5
            ExplicitHeight = 45
            object Label4: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 30
              Height = 15
              Align = alTop
              Caption = 'C.P.F.'
              FocusControl = DBEdit4
            end
            object DBEdit4: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 96
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'cpf'
              DataSource = LabProcSol.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
        object Panel10: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 59
          Width = 695
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Panel11: TPanel
            Left = 0
            Top = 0
            Width = 75
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitHeight = 45
            object Label5: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 39
              Height = 15
              Align = alTop
              Caption = 'Frascos'
              FocusControl = DBEdit5
            end
            object DBEdit5: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 69
              Height = 23
              Align = alClient
              DataField = 'frascos'
              DataSource = LabProcSol.DataSource1
              TabOrder = 0
              OnChange = DBEdit5Change
            end
          end
          object Panel12: TPanel
            Left = 75
            Top = 0
            Width = 75
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitHeight = 45
            object Label6: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 44
              Height = 15
              Align = alTop
              Caption = 'Seringas'
              FocusControl = DBEdit6
            end
            object DBEdit6: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 69
              Height = 23
              Align = alClient
              DataField = 'seringas'
              DataSource = LabProcSol.DataSource1
              TabOrder = 0
              OnChange = DBEdit5Change
            end
          end
          object Panel13: TPanel
            Left = 150
            Top = 0
            Width = 182
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitHeight = 45
            object Label11: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 176
              Height = 15
              Align = alTop
              Caption = 'Repons'#225'vel pela Coleta'
              ExplicitWidth = 122
            end
            object JvDBComboBox1: TJvDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 176
              Height = 23
              Align = alClient
              DataField = 'coleta'
              DataSource = LabProcSol.DataSource1
              Items.Strings = (
                'Destinat'#225'rio'
                'Lorencini Brasil')
              TabOrder = 0
              Values.Strings = (
                '0'
                '1')
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
            end
          end
          object Panel14: TPanel
            Left = 454
            Top = 0
            Width = 241
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 4
            ExplicitHeight = 45
            object Label12: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 26
              Height = 15
              Align = alTop
              Caption = 'Frete'
            end
            object SpeedButton1: TSpeedButton
              AlignWithMargins = True
              Left = 212
              Top = 23
              Width = 26
              Height = 24
              Margins.Left = 1
              Margins.Top = 2
              Action = actSedex
              Align = alRight
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00C1C3C5004B769500275E87006A8AA200B4BAC000FF00FF00FF00
                FF00C1C5C6000A6B9B000A6B9B00BBC1C500FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00597E9B0010508100306E99001D5D8B000D4E7E003D6D9000829B
                AD000A6B9B00B3FCFC00AEFCFC000A6B9B00BBC1C500FF00FF00FF00FF00FF00
                FF0090A3B1000B4C7C003F7EAA00447FA7003775A20033739F00246492000A6B
                9B00BFFCFC00BAFAFB00A6CFE900AEFCFC000A6B9B00BBC1C500FF00FF00B6BC
                C1001A558100306F9B005A98C0005288AE003977A4003775A2000A6B9B00C7FC
                FC00C6FAFB00A6CFE900B7FCFC00A6CFE900AEFCFC000A6B9B00FF00FF00406E
                90001F5F8D005795BE0063A0C8006193B5003C7AA6003977A4000A6B9B00D0F8
                FA00CCFCFC00C3FCFC00A6CFE900B3FCFC00B3FCFC000A6B9B007692A7001454
                84004F8EB700619DC5005E9BC300336C96002C6C99003775A2000A6B9B00D8FC
                FC00104F8000C7FCFC00BFFCFC00BCFCFC000A6B9B00BDC3C500275E87004181
                AC005D99C200518FB900155484003F759D001B5C8A000D4E7E000A6B9B00DCFC
                FC00D4FCFC00CAFAFB00C7FCFC000A6B9B00BFC4C600FF00FF0020598400508E
                B8004785AF0013538300619EC60087AEC9004483AD004180AB0017729F000A6B
                9B000A6B9B000A6B9B000A6B9B000F508000FF00FF00FF00FF00205984003373
                9F001656860066A4CB0087C2E60094B8D0004685AF004382AC004180AB001C5D
                8B002A6997003775A2002A699700104F8000FF00FF00FF00FF00185481001B5B
                8A006DABD10083BFE4008FCAEE00A7C4D8004987B2004685AF004382AC001D5E
                8C002C6B98003C7AA6003977A30012528200FF00FF00FF00FF002059830066A3
                CC0080BDE2008CC7EB00A4D7F700D8E4ED0086AECB005E95BB004685AF001E5E
                8C002D6D99003E7DA8003C7AA60013528200FF00FF00FF00FF002059840070AC
                D30089C4E900ACD7F200C1DDEE0099D0F000A0CFEB009CC1D90094B7CF002A63
                8E004C80A700558CB3003F7DA90013538300FF00FF00FF00FF00205984007BB5
                DB00ACD2E900A6CFE90086C1E6007CB8DE0073AFD5004B89B300155484002564
                9200558FB6005B91B5005487AC001C598600FF00FF00FF00FF00255C86008FBA
                D50090C5E4007BB7DD0072AED4005996BF0021618F00175786003C7AA6004381
                AC002E6E9A00165585002C61890099A9B400FF00FF00FF00FF0097A8B4002A5F
                88000F4F7F001E5E8C00286795000D4E7E00266593003C7BA6002A6997001352
                830035678C0093A5B300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00A4B0B900899EAE006C8BA2004F78980030648A00447193009EAC
                B700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              ParentShowHint = False
              ShowHint = True
              ExplicitLeft = 214
            end
            object JvDBCalcEdit1: TJvDBCalcEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 205
              Height = 23
              Align = alClient
              ReadOnly = True
              TabOrder = 0
              DecimalPlacesAlwaysShown = False
              DataField = 'frete'
              DataSource = LabProcSol.DataSource1
              ExplicitWidth = 207
            end
          end
          object Panel19: TPanel
            Left = 332
            Top = 0
            Width = 122
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 3
            ExplicitHeight = 45
            object Label13: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 116
              Height = 15
              Align = alTop
              Caption = 'Tipo de Envio'
              ExplicitWidth = 71
            end
            object JvDBComboBox2: TJvDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 116
              Height = 23
              Align = alClient
              DataField = 'envio'
              DataSource = LabProcSol.DataSource1
              Items.Strings = (
                'Sedex'
                'Transportadora'
                'Cliente Retira')
              TabOrder = 0
              Values.Strings = (
                '1'
                '2'
                '3')
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
              OnChange = JvDBComboBox2Change
            end
          end
        end
        object Panel17: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 115
          Width = 695
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object Panel16: TPanel
            Left = 579
            Top = 0
            Width = 116
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitHeight = 45
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 43
              Height = 15
              Align = alTop
              Caption = 'Emiss'#227'o'
              FocusControl = DBEdit3
            end
            object DBEdit3: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 110
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'emissao'
              DataSource = LabProcSol.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel15: TPanel
            Left = 465
            Top = 0
            Width = 114
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitHeight = 45
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 61
              Height = 15
              Align = alTop
              Caption = 'Atualiza'#231#227'o'
              FocusControl = DBEdit2
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 108
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'atualizacao'
              DataSource = LabProcSol.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel18: TPanel
            Left = 0
            Top = 0
            Width = 465
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitHeight = 45
            object Label10: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 62
              Height = 15
              Align = alTop
              Caption = 'Observa'#231#227'o'
              FocusControl = DBEdit10
            end
            object DBEdit10: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 459
              Height = 23
              Align = alClient
              DataField = 'descri'
              DataSource = LabProcSol.DataSource1
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 709
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 709
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      Width = 696
      ButtonWidth = 115
      ExplicitWidth = 696
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
      ImageIndex = 332
      OnExecute = actFindCliExecute
    end
    object actSedex: TAction
      Enabled = False
      Hint = 'C'#225'lculo Sedex'
      ImageIndex = 268
      OnExecute = actSedexExecute
    end
  end
end
