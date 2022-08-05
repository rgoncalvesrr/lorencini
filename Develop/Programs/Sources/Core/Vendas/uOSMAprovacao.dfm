inherited OSMAprovacao: TOSMAprovacao
  Caption = 'Aprova'#231#227'o de Ordem de Servi'#231'o'
  ClientHeight = 520
  ClientWidth = 815
  Constraints.MinWidth = 691
  ExplicitWidth = 821
  ExplicitHeight = 549
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 815
    Height = 476
    ExplicitWidth = 815
    ExplicitHeight = 476
    inherited Panel3: TPanel
      Top = 229
      Width = 579
      Align = alNone
      ExplicitTop = 229
      ExplicitWidth = 579
      inherited PageControl3: TPageControl
        Width = 573
        ExplicitWidth = 573
        inherited tsDet: TTabSheet
          ExplicitWidth = 565
          inherited DBGrid1: TDBGrid
            Width = 565
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 573
        ExplicitWidth = 573
        inherited ToolBar3: TToolBar
          Width = 560
          ExplicitWidth = 560
        end
      end
    end
    inherited PageControl1: TPageControl
      Width = 809
      Height = 470
      ExplicitWidth = 809
      ExplicitHeight = 470
      inherited TabSheet1: TTabSheet
        Caption = 'Aprova'#231#227'o de Ordem de Servi'#231'o'
        ExplicitWidth = 801
        ExplicitHeight = 440
        object GroupBox1: TGroupBox
          Left = 2
          Top = 3
          Width = 791
          Height = 158
          Caption = ' Informa'#231#245'es da OS '
          TabOrder = 0
          object Label1: TLabel
            Left = 9
            Top = 19
            Width = 15
            Height = 15
            Caption = 'OS'
            FocusControl = DBEdit1
          end
          object Label2: TLabel
            Left = 69
            Top = 19
            Width = 43
            Height = 15
            Caption = 'Emiss'#227'o'
          end
          object Label3: TLabel
            Left = 170
            Top = 19
            Width = 45
            Height = 15
            Caption = 'Empresa'
            FocusControl = DBEdit2
          end
          object Label4: TLabel
            Left = 444
            Top = 19
            Width = 41
            Height = 15
            Caption = 'Apelido'
            FocusControl = DBEdit3
          end
          object Label11: TLabel
            Left = 625
            Top = 19
            Width = 43
            Height = 15
            Caption = 'Servi'#231'os'
            FocusControl = DBEdit4
          end
          object Label10: TLabel
            Left = 9
            Top = 66
            Width = 51
            Height = 15
            Caption = 'Descri'#231#227'o'
            FocusControl = DBMemo1
          end
          object Label19: TLabel
            Left = 706
            Top = 19
            Width = 48
            Height = 15
            Caption = 'Materiais'
            FocusControl = DBEdit11
          end
          object DBEdit1: TDBEdit
            Left = 9
            Top = 36
            Width = 52
            Height = 23
            DataField = 'idos'
            DataSource = DM.dsOSAprov
            Enabled = False
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 170
            Top = 36
            Width = 268
            Height = 23
            DataField = 'empresa'
            DataSource = DM.dsOSAprov
            Enabled = False
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit3: TDBEdit
            Left = 444
            Top = 36
            Width = 173
            Height = 23
            DataField = 'nome_chave'
            DataSource = DM.dsOSAprov
            Enabled = False
            ReadOnly = True
            TabOrder = 2
          end
          object DBEdit4: TDBEdit
            Left = 625
            Top = 36
            Width = 75
            Height = 23
            DataField = 'vlnfsrv'
            DataSource = DM.dsOSAprov
            Enabled = False
            TabOrder = 3
          end
          object DBMemo1: TDBMemo
            Left = 9
            Top = 86
            Width = 772
            Height = 63
            DataField = 'descri'
            DataSource = DM.dsOSAprov
            Enabled = False
            TabOrder = 5
          end
          object DBEdit11: TDBEdit
            Left = 706
            Top = 36
            Width = 75
            Height = 23
            DataField = 'vlnfmat'
            DataSource = DM.dsOSAprov
            Enabled = False
            TabOrder = 4
          end
          object DBEdit12: TDBEdit
            Left = 69
            Top = 36
            Width = 95
            Height = 23
            DataField = 'data'
            DataSource = DM.dsOSAprov
            Enabled = False
            ReadOnly = True
            TabOrder = 6
          end
        end
        object GroupBox2: TGroupBox
          Left = 2
          Top = 162
          Width = 791
          Height = 74
          Caption = ' Atendimento '
          TabOrder = 1
          object Label6: TLabel
            Left = 6
            Top = 20
            Width = 33
            Height = 15
            Caption = 'Nome'
          end
          object Label7: TLabel
            Left = 288
            Top = 20
            Width = 45
            Height = 15
            Caption = 'Telefone'
          end
          object Label9: TLabel
            Left = 581
            Top = 20
            Width = 29
            Height = 15
            Caption = 'Email'
          end
          object Label8: TLabel
            Left = 434
            Top = 20
            Width = 37
            Height = 15
            Caption = 'Celular'
          end
          object DBEdit5: TDBEdit
            Left = 6
            Top = 38
            Width = 246
            Height = 23
            TabStop = False
            DataField = 'nome'
            DataSource = DM.dsOSAprov
            ReadOnly = True
            TabOrder = 0
          end
          object BitBtn2: TBitBtn
            Left = 253
            Top = 38
            Width = 23
            Height = 23
            Action = actContatoF
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
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
            Left = 288
            Top = 38
            Width = 142
            Height = 23
            TabStop = False
            DataField = 'telefone'
            DataSource = DM.dsOSAprov
            ReadOnly = True
            TabOrder = 2
          end
          object DBEdit7: TDBEdit
            Left = 434
            Top = 38
            Width = 141
            Height = 23
            TabStop = False
            DataField = 'celular'
            DataSource = DM.dsOSAprov
            ReadOnly = True
            TabOrder = 3
          end
          object DBEdit8: TDBEdit
            Left = 581
            Top = 38
            Width = 200
            Height = 23
            TabStop = False
            DataField = 'email'
            DataSource = DM.dsOSAprov
            ReadOnly = True
            TabOrder = 4
          end
        end
        object GroupBox3: TGroupBox
          Left = 2
          Top = 242
          Width = 791
          Height = 188
          Caption = ' Pedido '
          TabOrder = 2
          object Label12: TLabel
            Left = 8
            Top = 20
            Width = 39
            Height = 15
            Caption = 'C'#243'digo'
            FocusControl = DBEdit9
          end
          object Label13: TLabel
            Left = 110
            Top = 20
            Width = 24
            Height = 15
            Caption = 'Tipo'
            FocusControl = DBEdit9
          end
          object Label5: TLabel
            Left = 203
            Top = 20
            Width = 57
            Height = 15
            Caption = 'Aprova'#231#227'o'
          end
          object Label14: TLabel
            Left = 302
            Top = 20
            Width = 43
            Height = 15
            Caption = 'Servi'#231'os'
          end
          object Label15: TLabel
            Left = 497
            Top = 20
            Width = 56
            Height = 15
            Caption = 'Integra'#231#227'o'
          end
          object Label16: TLabel
            Left = 557
            Top = 20
            Width = 31
            Height = 15
            Caption = 'A.R.T.'
          end
          object Label17: TLabel
            Left = 651
            Top = 20
            Width = 55
            Height = 15
            Caption = 'Atendente'
            FocusControl = DBEdit10
          end
          object Label18: TLabel
            Left = 9
            Top = 64
            Width = 67
            Height = 15
            Caption = 'Observa'#231#245'es'
            FocusControl = DBMemo2
          end
          object Label20: TLabel
            Left = 401
            Top = 20
            Width = 48
            Height = 15
            Caption = 'Materiais'
          end
          object DBEdit9: TDBEdit
            Left = 8
            Top = 38
            Width = 96
            Height = 23
            DataField = 'pedidocliente'
            DataSource = DM.dsOSAprov
            TabOrder = 0
          end
          object DBEdit10: TDBEdit
            Left = 651
            Top = 38
            Width = 130
            Height = 23
            DataField = 'name'
            DataSource = DM.dsOSAprov
            Enabled = False
            TabOrder = 7
          end
          object DBMemo2: TDBMemo
            Left = 9
            Top = 81
            Width = 772
            Height = 96
            DataField = 'pedobs'
            DataSource = DM.dsOSAprov
            TabOrder = 8
          end
          object JvDBComboBox1: TJvDBComboBox
            Left = 110
            Top = 38
            Width = 84
            Height = 23
            DataField = 'pedtipo'
            DataSource = DM.dsOSAprov
            Items.Strings = (
              'Verbal'
              'Documental'
              'Automatica')
            TabOrder = 1
            Values.Strings = (
              '1'
              '2'
              '3')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object JvDBDateEdit1: TJvDBDateEdit
            Left = 203
            Top = 38
            Width = 93
            Height = 23
            DataField = 'peddtaprov'
            DataSource = DM.dsOSAprov
            ButtonWidth = 23
            ShowNullDate = False
            TabOrder = 2
          end
          object JvDBCalcEdit1: TJvDBCalcEdit
            Left = 302
            Top = 38
            Width = 92
            Height = 23
            ButtonWidth = 23
            TabOrder = 3
            DecimalPlacesAlwaysShown = False
            DataField = 'pedvlaprov'
            DataSource = DM.dsOSAprov
          end
          object JvDBCalcEdit2: TJvDBCalcEdit
            Left = 401
            Top = 38
            Width = 92
            Height = 23
            ButtonWidth = 23
            TabOrder = 4
            DecimalPlacesAlwaysShown = False
            DataField = 'pedvlaprovmat'
            DataSource = DM.dsOSAprov
          end
          object JvDBComboBox2: TJvDBComboBox
            Left = 497
            Top = 38
            Width = 55
            Height = 23
            DataField = 'pedintegracao'
            DataSource = DM.dsOSAprov
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 5
            Values.Strings = (
              'True'
              'False')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
          object JvDBComboBox3: TJvDBComboBox
            Left = 557
            Top = 38
            Width = 88
            Height = 23
            DataField = 'pedart'
            DataSource = DM.dsOSAprov
            Items.Strings = (
              'Preencher'
              'N'#227'o Preencher')
            TabOrder = 6
            Values.Strings = (
              'True'
              'False')
            ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
            ListSettings.OutfilteredValueFont.Color = clRed
            ListSettings.OutfilteredValueFont.Height = -11
            ListSettings.OutfilteredValueFont.Name = 'Tahoma'
            ListSettings.OutfilteredValueFont.Style = []
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 809
    ExplicitWidth = 809
    inherited ToolBar1: TToolBar
      Width = 796
      ExplicitWidth = 796
    end
  end
  inherited alDef: TActionList
    Left = 232
    object actContatoF: TAction
      ImageIndex = 332
      OnExecute = actContatoFExecute
    end
  end
end
