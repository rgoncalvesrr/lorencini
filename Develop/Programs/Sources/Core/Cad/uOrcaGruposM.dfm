inherited OrcaGruposM: TOrcaGruposM
  Caption = 'Manuten'#231#227'o de Tipo de Cota'#231#227'o / OS'
  ClientHeight = 388
  ClientWidth = 798
  ExplicitWidth = 804
  ExplicitHeight = 416
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 798
    Height = 344
    ExplicitTop = 35
    ExplicitWidth = 798
    ExplicitHeight = 318
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
      Width = 792
      Height = 338
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 792
      ExplicitHeight = 312
      inherited TabSheet1: TTabSheet
        Caption = 'Tipo'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 784
        ExplicitHeight = 282
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 784
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 60
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitHeight = 45
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 54
              Height = 15
              Align = alTop
              Caption = 'Tipo'
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 24
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 54
              Height = 23
              Align = alClient
              DataField = 'recno'
              DataSource = OrcaGrupos.DataSource1
              Enabled = False
              TabOrder = 0
            end
          end
          object Panel5: TPanel
            Left = 60
            Top = 0
            Width = 484
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitHeight = 45
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 478
              Height = 15
              Align = alTop
              Caption = 'Descri'#231#227'o'
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 51
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 478
              Height = 23
              Align = alClient
              DataField = 'descri'
              DataSource = OrcaGrupos.DataSource1
              TabOrder = 0
            end
          end
          object Panel7: TPanel
            Left = 544
            Top = 0
            Width = 80
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitHeight = 45
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 74
              Height = 15
              Align = alTop
              Caption = 'Servi'#231'o'
              ExplicitWidth = 38
            end
            object DBComboBox1: TDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 74
              Height = 23
              Style = csDropDownList
              Align = alClient
              DataField = 'reqsrv'
              DataSource = OrcaGrupos.DataSource1
              ItemHeight = 15
              Items.Strings = (
                'Sim'
                'N'#227'o')
              TabOrder = 0
            end
          end
          object Panel6: TPanel
            Left = 624
            Top = 0
            Width = 80
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            ExplicitHeight = 45
            object Label4: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 74
              Height = 15
              Align = alTop
              Caption = 'Material'
              ExplicitWidth = 43
            end
            object DBComboBox2: TDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 74
              Height = 23
              Style = csDropDownList
              Align = alClient
              DataField = 'reqmat'
              DataSource = OrcaGrupos.DataSource1
              ItemHeight = 15
              Items.Strings = (
                'Sim'
                'N'#227'o')
              TabOrder = 0
            end
          end
          object Panel8: TPanel
            Left = 704
            Top = 0
            Width = 80
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 4
            ExplicitHeight = 45
            object Label5: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 74
              Height = 15
              Align = alTop
              Caption = 'M'#227'o de Obra'
              ExplicitWidth = 69
            end
            object DBComboBox3: TDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 74
              Height = 23
              Style = csDropDownList
              Align = alClient
              DataField = 'reqmo'
              DataSource = OrcaGrupos.DataSource1
              ItemHeight = 15
              Items.Strings = (
                'Sim'
                'N'#227'o')
              TabOrder = 0
            end
          end
        end
        object Panel9: TPanel
          Left = 0
          Top = 50
          Width = 784
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Panel10: TPanel
            Left = 0
            Top = 0
            Width = 57
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitHeight = 45
            object Label6: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 51
              Height = 15
              Align = alTop
              Caption = 'Atividade'
              FocusControl = DBEdit3
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 50
            end
            object DBEdit3: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 54
              Height = 23
              Margins.Right = 0
              Align = alClient
              DataField = 'atividade'
              DataSource = OrcaGrupos.DataSource1
              TabOrder = 0
              OnExit = DBEdit3Exit
            end
          end
          object Panel14: TPanel
            Left = 57
            Top = 0
            Width = 29
            Height = 50
            Margins.Top = 22
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitHeight = 45
            object SpeedButton3: TSpeedButton
              AlignWithMargins = True
              Left = 0
              Top = 24
              Width = 26
              Height = 23
              Margins.Left = 0
              Margins.Top = 24
              Action = actFindAtiv
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
              ExplicitTop = 21
              ExplicitWidth = 27
              ExplicitHeight = 22
            end
          end
          object Panel11: TPanel
            Left = 86
            Top = 0
            Width = 641
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitHeight = 45
            object Label7: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 635
              Height = 15
              Align = alTop
              Caption = 'Grupo'
              FocusControl = DBEdit4
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 33
            end
            object DBEdit4: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 635
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'ativgrupo'
              DataSource = OrcaGrupos.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel12: TPanel
            Left = 727
            Top = 0
            Width = 57
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            ExplicitHeight = 45
            object Label8: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 51
              Height = 15
              Align = alTop
              Caption = 'ISS'
              FocusControl = DBEdit5
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 15
            end
            object DBEdit5: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 51
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'iss'
              DataSource = OrcaGrupos.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
        object Panel15: TPanel
          Left = 0
          Top = 226
          Width = 784
          Height = 75
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object GroupBox1: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 279
            Height = 69
            Align = alLeft
            Caption = ' Materiais '
            TabOrder = 0
            ExplicitHeight = 62
            object Panel18: TPanel
              Left = 2
              Top = 17
              Width = 135
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              ExplicitHeight = 43
              object Label12: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 129
                Height = 15
                Align = alTop
                Caption = 'Margem de Lucro (BDI)'
                ExplicitLeft = 2
                ExplicitTop = 2
                ExplicitWidth = 123
              end
              object JvDBCalcEdit4: TJvDBCalcEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 129
                Height = 23
                Flat = True
                ParentFlat = False
                Align = alClient
                ButtonFlat = True
                CheckOnExit = True
                DisplayFormat = ',0.###0'
                FormatOnEditing = True
                TabOrder = 0
                DecimalPlacesAlwaysShown = False
                DataField = 'mat_bdi'
                DataSource = OrcaGrupos.DataSource1
                ExplicitHeight = 21
              end
            end
            object Panel16: TPanel
              Left = 137
              Top = 17
              Width = 135
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              ExplicitHeight = 43
              object Label10: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 129
                Height = 15
                Align = alTop
                Caption = 'Comiss'#227'o'
                ExplicitLeft = 2
                ExplicitTop = 2
                ExplicitWidth = 52
              end
              object JvDBCalcEdit1: TJvDBCalcEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 129
                Height = 23
                Flat = True
                ParentFlat = False
                Align = alClient
                ButtonFlat = True
                CheckOnExit = True
                DisplayFormat = ',0.###0'
                FormatOnEditing = True
                TabOrder = 0
                DecimalPlacesAlwaysShown = False
                DataField = 'mat_comissao'
                DataSource = OrcaGrupos.DataSource1
                ExplicitHeight = 21
              end
            end
          end
          object GroupBox2: TGroupBox
            AlignWithMargins = True
            Left = 572
            Top = 3
            Width = 209
            Height = 69
            Align = alClient
            Caption = ' Outros Par'#226'metros'
            TabOrder = 2
            ExplicitHeight = 62
            object Panel17: TPanel
              Left = 2
              Top = 17
              Width = 63
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label11: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 57
                Height = 15
                Align = alTop
                Caption = 'Validade'
                FocusControl = DBEdit6
                ExplicitLeft = 2
                ExplicitTop = 2
                ExplicitWidth = 45
              end
              object DBEdit6: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 57
                Height = 23
                Align = alClient
                DataField = 'validade'
                DataSource = OrcaGrupos.DataSource1
                TabOrder = 0
                ExplicitWidth = 48
              end
            end
          end
          object GroupBox3: TGroupBox
            AlignWithMargins = True
            Left = 288
            Top = 3
            Width = 278
            Height = 69
            Align = alLeft
            Caption = ' Servi'#231'os'
            TabOrder = 1
            ExplicitHeight = 62
            object Panel13: TPanel
              Left = 2
              Top = 17
              Width = 135
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              ExplicitHeight = 43
              object Label9: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 129
                Height = 15
                Align = alTop
                Caption = 'Margem de Lucro (BDI)'
                ExplicitLeft = 2
                ExplicitTop = 2
                ExplicitWidth = 123
              end
              object JvDBCalcEdit5: TJvDBCalcEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 129
                Height = 23
                Flat = True
                ParentFlat = False
                Align = alClient
                ButtonFlat = True
                CheckOnExit = True
                DisplayFormat = ',0.###0'
                FormatOnEditing = True
                TabOrder = 0
                DecimalPlacesAlwaysShown = False
                DataField = 'serv_bdi'
                DataSource = OrcaGrupos.DataSource1
                ExplicitHeight = 21
              end
            end
            object Panel21: TPanel
              Left = 137
              Top = 17
              Width = 135
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              ExplicitHeight = 43
              object Label14: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 129
                Height = 15
                Align = alTop
                Caption = 'Comiss'#227'o'
                ExplicitLeft = 2
                ExplicitTop = 2
                ExplicitWidth = 52
              end
              object JvDBCalcEdit6: TJvDBCalcEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 129
                Height = 23
                Flat = True
                ParentFlat = False
                Align = alClient
                ButtonFlat = True
                CheckOnExit = True
                DisplayFormat = ',0.###0'
                FormatOnEditing = True
                TabOrder = 0
                DecimalPlacesAlwaysShown = False
                DataField = 'serv_comissao'
                DataSource = OrcaGrupos.DataSource1
                ExplicitHeight = 21
              end
            end
          end
        end
        object Panel20: TPanel
          Left = 0
          Top = 100
          Width = 784
          Height = 126
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 3
          ExplicitTop = 90
          object Panel23: TPanel
            Left = 0
            Top = 0
            Width = 784
            Height = 126
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Label15: TLabel
              AlignWithMargins = True
              Left = 90
              Top = 3
              Width = 691
              Height = 15
              Margins.Left = 90
              Align = alTop
              Caption = 'Descri'#231#227'o'
              ExplicitLeft = 68
              ExplicitTop = 2
              ExplicitWidth = 51
            end
            object DBMemo1: TDBMemo
              AlignWithMargins = True
              Left = 90
              Top = 24
              Width = 691
              Height = 99
              Margins.Left = 90
              TabStop = False
              Align = alClient
              DataField = 'ativdescri'
              DataSource = OrcaGrupos.DataSource1
              ReadOnly = True
              ScrollBars = ssBoth
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 792
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 792
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      Width = 779
      ButtonWidth = 115
      ExplicitWidth = 779
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
    Left = 232
    object actFindAtiv: TAction
      ImageIndex = 332
      OnExecute = actFindAtivExecute
    end
  end
end
