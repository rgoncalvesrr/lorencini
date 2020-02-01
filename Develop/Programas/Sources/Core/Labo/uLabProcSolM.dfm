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
              Width = 63
              Height = 15
              Align = alTop
              Caption = 'Solicita'#231#227'o'
              FocusControl = DBEdit1
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 57
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
              Width = 56
              Height = 14
              Align = alTop
              Caption = 'Cliente'
              FocusControl = DBEdit7
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 39
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
                36030000424D3603000000000000360000002800000010000000100000000100
                1800000000000003000000000000000000000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FF0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0AFF
                00FFFF00FF0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0AFF00FFFF00FF0A0A0A
                A9A9A9C4C4C46969692C2C2C0A0A0AFF00FFFF00FF0A0A0AA9A9A9C4C4C46969
                692C2C2C0A0A0AFF00FFFF00FF0A0A0AA9A9A9C4C4C46969692C2C2C0A0A0AFF
                00FFFF00FF0A0A0AA9A9A9C4C4C46969692C2C2C0A0A0AFF00FFFF00FF0A0A0A
                1212121E1E1E0B0B0B0A0A0A0A0A0AFF00FFFF00FF0A0A0A1515152222220B0B
                0B0A0A0A0A0A0AFF00FFFF00FF754949A0725EEFE1D2EBC8A39F674D704140FF
                00FFFF00FF754949A0725EEFE1D2EBC8A39F674D704140FF00FFFF00FF846161
                85554CF5E5D4EAC5A08650437D5655FF00FFFF00FF84616185554CF5E5D4EAC5
                A08650437D5655FF00FFFF00FF9A8282744440F5E4D3E1B488744340937777FF
                00FFFF00FF9A8282744440F5E4D3E1B488744340937777FF00FFFF00FFB7AEAE
                6C3C3CE9C8A8D196696C3C3CB2A7A7FF00FFFF00FFB7AEAE6C3C3CE9C8A8D196
                696C3C3CB2A7A7FF00FFFF00FFFF00FF6E3E3E7344446B3B3B6B3B3B0B0B0B0A
                0A0A0A0A0A0E0D0D6C3C3C6B3B3B6B3B3B6C3B3BFF00FFFF00FFFF00FFFF00FF
                6C3B3BF1D8BEE8BF93C786570A0A0AC4C4C4696969101010F9DEB7E2B386BD7B
                516C3B3BFF00FFFF00FFFF00FFFF00FF6C3B3BF6E6D6E9BF95C887590A0A0AC4
                C4C46969690C0C0CE3C6A9CA9B76A5694B6C3B3BFF00FFFF00FFFF00FFFF00FF
                6D3D3D7243436B3B3B6B3B3B1410100A0A0A0A0A0A2416146C3B3B6C3B3B6C3B
                3B6C3B3BFF00FFFF00FFFF00FFFF00FFFF00FF0A0A0AC4C4C46969690A0A0AFF
                00FFFF00FF0A0A0AC4C4C46969690A0A0AFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FF0A0A0A0A0A0A0A0A0A1D1D1DFF00FFFF00FF0A0A0A0A0A0A0A0A0A1D1D
                1DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
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
              Width = 315
              Height = 15
              Margins.Left = 1
              Align = alTop
              Caption = 'Raz'#227'o Social'
              FocusControl = DBEdit8
              ExplicitTop = 2
              ExplicitWidth = 65
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
              Width = 108
              Height = 15
              Align = alTop
              Caption = 'C.N.P.J.'
              FocusControl = DBEdit9
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 40
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
              Width = 96
              Height = 15
              Align = alTop
              Caption = 'C.P.F.'
              FocusControl = DBEdit4
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 30
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
              Width = 69
              Height = 15
              Align = alTop
              Caption = 'Frascos'
              FocusControl = DBEdit5
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 39
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
              Width = 69
              Height = 15
              Align = alTop
              Caption = 'Seringas'
              FocusControl = DBEdit6
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 44
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
              Width = 235
              Height = 15
              Align = alTop
              Caption = 'Frete'
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 26
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
                36030000424D3603000000000000360000002800000010000000100000000100
                1800000000000003000000000000000000000000000000000000FF00FFFF00FF
                FF00FFC1C3C54B7695275E876A8AA2B4BAC0FF00FFFF00FFC1C5C60A6B9B0A6B
                9BBBC1C5FF00FFFF00FFFF00FFFF00FFFF00FF597E9B105081306E991D5D8B0D
                4E7E3D6D90829BAD0A6B9BB3FCFCAEFCFC0A6B9BBBC1C5FF00FFFF00FFFF00FF
                90A3B10B4C7C3F7EAA447FA73775A233739F2464920A6B9BBFFCFCBAFAFBA6CF
                E9AEFCFC0A6B9BBBC1C5FF00FFB6BCC11A5581306F9B5A98C05288AE3977A437
                75A20A6B9BC7FCFCC6FAFBA6CFE9B7FCFCA6CFE9AEFCFC0A6B9BFF00FF406E90
                1F5F8D5795BE63A0C86193B53C7AA63977A40A6B9BD0F8FACCFCFCC3FCFCA6CF
                E9B3FCFCB3FCFC0A6B9B7692A71454844F8EB7619DC55E9BC3336C962C6C9937
                75A20A6B9BD8FCFC104F80C7FCFCBFFCFCBCFCFC0A6B9BBDC3C5275E874181AC
                5D99C2518FB91554843F759D1B5C8A0D4E7E0A6B9BDCFCFCD4FCFCCAFAFBC7FC
                FC0A6B9BBFC4C6FF00FF205984508EB84785AF135383619EC687AEC94483AD41
                80AB17729F0A6B9B0A6B9B0A6B9B0A6B9B0F5080FF00FFFF00FF20598433739F
                16568666A4CB87C2E694B8D04685AF4382AC4180AB1C5D8B2A69973775A22A69
                97104F80FF00FFFF00FF1854811B5B8A6DABD183BFE48FCAEEA7C4D84987B246
                85AF4382AC1D5E8C2C6B983C7AA63977A3125282FF00FFFF00FF20598366A3CC
                80BDE28CC7EBA4D7F7D8E4ED86AECB5E95BB4685AF1E5E8C2D6D993E7DA83C7A
                A6135282FF00FFFF00FF20598470ACD389C4E9ACD7F2C1DDEE99D0F0A0CFEB9C
                C1D994B7CF2A638E4C80A7558CB33F7DA9135383FF00FFFF00FF2059847BB5DB
                ACD2E9A6CFE986C1E67CB8DE73AFD54B89B3155484256492558FB65B91B55487
                AC1C5986FF00FFFF00FF255C868FBAD590C5E47BB7DD72AED45996BF21618F17
                57863C7AA64381AC2E6E9A1655852C618999A9B4FF00FFFF00FF97A8B42A5F88
                0F4F7F1E5E8C2867950D4E7E2665933C7BA62A699713528335678C93A5B3FF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA4B0B9899EAE6C8BA24F789830
                648A4471939EACB7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
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
              ExplicitWidth = 72
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
              Width = 110
              Height = 15
              Align = alTop
              Caption = 'Emiss'#227'o'
              FocusControl = DBEdit3
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 43
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
              Width = 108
              Height = 15
              Align = alTop
              Caption = 'Atualiza'#231#227'o'
              FocusControl = DBEdit2
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 61
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
              Width = 459
              Height = 15
              Align = alTop
              Caption = 'Observa'#231#227'o'
              FocusControl = DBEdit10
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 62
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
