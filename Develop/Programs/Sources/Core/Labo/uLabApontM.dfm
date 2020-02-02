inherited LabApontM: TLabApontM
  BorderStyle = bsSizeable
  Caption = 'Apontamento de Resultados'
  ClientHeight = 673
  ClientWidth = 998
  Constraints.MinWidth = 599
  KeyPreview = False
  Position = poDefault
  ExplicitWidth = 1014
  ExplicitHeight = 712
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 164
    Width = 998
    Height = 509
    ExplicitTop = 164
    ExplicitWidth = 998
    ExplicitHeight = 509
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
          ExplicitHeight = 155
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
      Width = 992
      Height = 503
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 992
      ExplicitHeight = 503
      inherited TabSheet1: TTabSheet
        Caption = 'Apontamento'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 984
        ExplicitHeight = 473
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 984
          Height = 473
          Align = alClient
          BevelOuter = bvNone
          Caption = 'Panel2'
          TabOrder = 0
          OnResize = Panel2Resize
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Informa'#231#245'es Adicionais'
        ImageIndex = 1
        object Panel27: TPanel
          Left = 0
          Top = 0
          Width = 984
          Height = 75
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object GroupBox2: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 427
            Height = 69
            Align = alLeft
            Caption = ' Par'#226'metros '
            TabOrder = 0
            object Panel28: TPanel
              Left = 2
              Top = 17
              Width = 51
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label24: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 45
                Height = 15
                Align = alTop
                Caption = 'Tipo'
                FocusControl = DBEdit23
                ExplicitWidth = 23
              end
              object DBEdit23: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 48
                Height = 23
                Margins.Right = 0
                Align = alClient
                DataField = 'tpamostra_recno'
                DataSource = LabApont.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel30: TPanel
              Left = 53
              Top = 17
              Width = 285
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object Label25: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 279
                Height = 15
                Align = alTop
                Caption = 'Descri'#231#227'o'
                FocusControl = DBEdit24
                ExplicitWidth = 51
              end
              object DBEdit24: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 279
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'descri_1'
                DataSource = LabApont.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel31: TPanel
              Left = 338
              Top = 17
              Width = 87
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 2
              object DBCheckBox1: TDBCheckBox
                AlignWithMargins = True
                Left = 3
                Top = 23
                Width = 81
                Height = 24
                Margins.Top = 23
                TabStop = False
                Align = alClient
                Caption = 'Exige Equip.'
                DataField = 'inf_te'
                DataSource = LabApont.DataSource1
                ReadOnly = True
                TabOrder = 0
                ValueChecked = 'True'
                ValueUnchecked = 'False'
              end
            end
          end
          object GroupBox3: TGroupBox
            AlignWithMargins = True
            Left = 436
            Top = 3
            Width = 545
            Height = 69
            Align = alClient
            Caption = ' Informa'#231#245'es da Coleta '
            TabOrder = 1
            object Panel32: TPanel
              Left = 2
              Top = 17
              Width = 99
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label29: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 93
                Height = 15
                Align = alTop
                Caption = 'Coleta'
                FocusControl = JvDBDateEdit1
                ExplicitWidth = 34
              end
              object JvDBDateEdit1: TJvDBDateEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 93
                Height = 23
                Align = alClient
                DataField = 'coleta'
                DataSource = LabApont.DataSource1
                ReadOnly = True
                ShowNullDate = False
                TabOrder = 0
              end
            end
            object Panel33: TPanel
              Left = 101
              Top = 17
              Width = 175
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object Label30: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 169
                Height = 15
                Align = alTop
                Caption = 'Amostrador'
                FocusControl = DBEdit28
                ExplicitWidth = 63
              end
              object DBEdit28: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 169
                Height = 23
                Align = alClient
                DataField = 'amostrador'
                DataSource = LabApont.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel34: TPanel
              Left = 276
              Top = 17
              Width = 60
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 2
              object Label31: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 54
                Height = 15
                Align = alTop
                Caption = 'T. Ambiente'
                FocusControl = DBEdit29
                ExplicitWidth = 64
              end
              object DBEdit29: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 54
                Height = 23
                Align = alClient
                DataField = 'tamb'
                DataSource = LabApont.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel35: TPanel
              Left = 336
              Top = 17
              Width = 60
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 3
              object Label32: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 54
                Height = 15
                Align = alTop
                Caption = 'T. '#211'leo'
                FocusControl = DBEdit30
                ExplicitWidth = 37
              end
              object DBEdit30: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 54
                Height = 23
                Align = alClient
                DataField = 'toleo'
                DataSource = LabApont.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel36: TPanel
              Left = 396
              Top = 17
              Width = 60
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 4
              object Label33: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 54
                Height = 15
                Align = alTop
                Caption = 'Umidade'
                FocusControl = DBEdit31
                ExplicitWidth = 48
              end
              object DBEdit31: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 54
                Height = 23
                Align = alClient
                DataField = 'umidade'
                DataSource = LabApont.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel37: TPanel
              Left = 456
              Top = 17
              Width = 87
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 5
              object Label34: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 81
                Height = 15
                Align = alTop
                Caption = 'Tens'#227'o'
                FocusControl = DBEdit32
                ExplicitWidth = 36
              end
              object Panel18: TPanel
                Left = 0
                Top = 21
                Width = 87
                Height = 29
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                object DBEdit32: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 47
                  Height = 23
                  Margins.Right = 2
                  Align = alClient
                  DataField = 'tensao'
                  DataSource = LabApont.DataSource1
                  ReadOnly = True
                  TabOrder = 0
                end
                object DBEdit42: TDBEdit
                  AlignWithMargins = True
                  Left = 54
                  Top = 3
                  Width = 30
                  Height = 23
                  Margins.Left = 2
                  TabStop = False
                  Align = alRight
                  DataField = 'tensao_un'
                  DataSource = LabApont.DataSource1
                  ReadOnly = True
                  TabOrder = 1
                end
              end
            end
          end
        end
        object GroupBox1: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 78
          Width = 978
          Height = 179
          Align = alTop
          Caption = ' Equipamento '
          TabOrder = 1
          object Panel38: TPanel
            Left = 2
            Top = 17
            Width = 974
            Height = 50
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Panel39: TPanel
              Left = 0
              Top = 0
              Width = 80
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label10: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 74
                Height = 15
                Align = alTop
                Caption = 'Equipamento'
                FocusControl = DBEdit9
                ExplicitWidth = 71
              end
              object DBEdit9: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 77
                Height = 23
                Margins.Right = 0
                Align = alClient
                DataField = 'equip_recno'
                DataSource = LabApont.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel41: TPanel
              Left = 80
              Top = 0
              Width = 255
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object Label11: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 249
                Height = 15
                Align = alTop
                Caption = 'Tipo'
                ExplicitWidth = 23
              end
              object DBEdit10: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 249
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'tipo'
                DataSource = LabApont.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel42: TPanel
              Left = 335
              Top = 0
              Width = 156
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 2
              object Label16: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 150
                Height = 15
                Align = alTop
                Caption = 'Isolante'
                ExplicitWidth = 41
              end
              object DBEdit15: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 150
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'isolante'
                DataSource = LabApont.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel43: TPanel
              Left = 491
              Top = 0
              Width = 153
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 3
              object Label19: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 147
                Height = 15
                Align = alTop
                Caption = 'S'#233'rie'
                ExplicitWidth = 25
              end
              object DBEdit17: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 147
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'serie'
                DataSource = LabApont.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel44: TPanel
              Left = 644
              Top = 0
              Width = 168
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 4
              object Label38: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 162
                Height = 15
                Align = alTop
                Caption = 'S'#233'rie Cliente (Tag, NCia, Ativo)'
                ExplicitWidth = 160
              end
              object DBEdit36: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 162
                Height = 23
                Align = alClient
                CharCase = ecUpperCase
                DataField = 'tag'
                DataSource = LabApont.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel45: TPanel
              Left = 812
              Top = 0
              Width = 162
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 5
              object Label12: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 156
                Height = 15
                Align = alTop
                Caption = 'Fabricante'
                ExplicitWidth = 55
              end
              object DBEdit11: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 156
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'fabricante'
                DataSource = LabApont.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
          end
          object Panel46: TPanel
            Left = 2
            Top = 67
            Width = 974
            Height = 50
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object Panel47: TPanel
              Left = 0
              Top = 0
              Width = 64
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label20: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 58
                Height = 15
                Align = alTop
                Caption = 'Fabrica'#231#227'o'
                ExplicitWidth = 57
              end
              object DBEdit19: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 58
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'ano'
                DataSource = LabApont.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel48: TPanel
              Left = 64
              Top = 0
              Width = 115
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object Label21: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 109
                Height = 15
                Align = alTop
                Caption = 'Lote'
                FocusControl = DBEdit20
                ExplicitWidth = 23
              end
              object DBEdit20: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 109
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'lote'
                DataSource = LabApont.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel49: TPanel
              Left = 179
              Top = 0
              Width = 68
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 2
              object Label13: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 62
                Height = 15
                Align = alTop
                Caption = 'Imped'#226'ncia'
                FocusControl = DBEdit12
                ExplicitLeft = 2
                ExplicitTop = 2
              end
              object DBEdit12: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 62
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'imped'
                DataSource = LabApont.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel50: TPanel
              Left = 247
              Top = 0
              Width = 94
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 3
              object Label8: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 88
                Height = 15
                Align = alTop
                Caption = 'Tens'#227'o'
                FocusControl = DBEdit13
                ExplicitWidth = 36
              end
              object Panel57: TPanel
                Left = 0
                Top = 21
                Width = 94
                Height = 29
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                object DBEdit13: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 54
                  Height = 23
                  Margins.Right = 2
                  TabStop = False
                  Align = alClient
                  DataField = 'tensao_1'
                  DataSource = LabApont.DataSource1
                  ReadOnly = True
                  TabOrder = 0
                end
                object DBEdit40: TDBEdit
                  AlignWithMargins = True
                  Left = 61
                  Top = 3
                  Width = 30
                  Height = 23
                  Margins.Left = 2
                  TabStop = False
                  Align = alRight
                  DataField = 'tensao_un'
                  DataSource = LabApont.DataSource1
                  ReadOnly = True
                  TabOrder = 1
                end
              end
            end
            object Panel51: TPanel
              Left = 341
              Top = 0
              Width = 94
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 4
              object Label15: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 88
                Height = 15
                Align = alTop
                Caption = 'Pot'#234'ncia'
                FocusControl = DBEdit14
                ExplicitWidth = 46
              end
              object Panel58: TPanel
                Left = 0
                Top = 21
                Width = 94
                Height = 29
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                object DBEdit14: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 54
                  Height = 23
                  Margins.Right = 2
                  TabStop = False
                  Align = alClient
                  DataField = 'potencia'
                  DataSource = LabApont.DataSource1
                  ReadOnly = True
                  TabOrder = 0
                end
                object DBEdit41: TDBEdit
                  AlignWithMargins = True
                  Left = 61
                  Top = 3
                  Width = 30
                  Height = 23
                  Margins.Left = 2
                  TabStop = False
                  Align = alRight
                  DataField = 'potencia_un'
                  DataSource = LabApont.DataSource1
                  ReadOnly = True
                  TabOrder = 1
                end
              end
            end
            object Panel52: TPanel
              Left = 435
              Top = 0
              Width = 34
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 5
              object Label23: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 28
                Height = 15
                Align = alTop
                Caption = 'Fases'
                FocusControl = DBEdit22
                ExplicitLeft = 2
                ExplicitTop = 2
              end
              object DBEdit22: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 28
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'fases'
                DataSource = LabApont.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel53: TPanel
              Left = 519
              Top = 0
              Width = 44
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 6
              object Label18: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 38
                Height = 15
                Align = alTop
                Caption = 'Drenos'
                FocusControl = DBEdit18
                ExplicitWidth = 37
              end
              object DBEdit18: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 38
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'drenos'
                DataSource = LabApont.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel54: TPanel
              Left = 469
              Top = 0
              Width = 50
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 7
              object Label17: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 44
                Height = 15
                Align = alTop
                Caption = 'Volume'
                FocusControl = DBEdit16
                ExplicitWidth = 40
              end
              object DBEdit16: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 44
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'volume'
                DataSource = LabApont.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel55: TPanel
              Left = 563
              Top = 0
              Width = 141
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 8
              object Label37: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 135
                Height = 15
                Align = alTop
                Caption = 'Fam'#237'lia'
                FocusControl = DBEdit35
                ExplicitWidth = 38
              end
              object DBEdit35: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 135
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'familia'
                DataSource = LabApont.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel56: TPanel
              Left = 704
              Top = 0
              Width = 270
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 9
              object Label22: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 264
                Height = 15
                Align = alTop
                Caption = 'Descri'#231#227'o'
                FocusControl = DBEdit21
                ExplicitWidth = 51
              end
              object DBEdit21: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 264
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'descri'
                DataSource = LabApont.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
          end
          object Panel59: TPanel
            Left = 2
            Top = 117
            Width = 974
            Height = 50
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 2
            object Panel60: TPanel
              Left = 0
              Top = 0
              Width = 69
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label26: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 63
                Height = 15
                Align = alTop
                Caption = 'Localiza'#231#227'o'
                FocusControl = DBEdit25
                ExplicitWidth = 61
              end
              object DBEdit25: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 66
                Height = 23
                Margins.Right = 0
                Align = alClient
                DataField = 'labsubest_recno'
                DataSource = LabApont.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel62: TPanel
              Left = 69
              Top = 0
              Width = 50
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object Label27: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 44
                Height = 15
                Align = alTop
                Caption = 'Sigla'
                FocusControl = DBEdit26
                ExplicitWidth = 25
              end
              object DBEdit26: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 44
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'sigla'
                DataSource = LabApont.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel63: TPanel
              Left = 273
              Top = 0
              Width = 175
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 2
              object Label36: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 169
                Height = 15
                Align = alTop
                Caption = 'Regional'
                FocusControl = DBEdit34
                ExplicitWidth = 46
              end
              object DBEdit34: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 169
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'regional'
                DataSource = LabApont.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel64: TPanel
              Left = 119
              Top = 0
              Width = 154
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 3
              object Label28: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 148
                Height = 15
                Align = alTop
                Caption = 'Nome'
                FocusControl = DBEdit27
                ExplicitWidth = 33
              end
              object DBEdit27: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 148
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'nome'
                DataSource = LabApont.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel65: TPanel
              Left = 448
              Top = 0
              Width = 178
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 4
              object Label35: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 172
                Height = 15
                Align = alTop
                Caption = 'Nome'
                FocusControl = DBEdit33
                ExplicitWidth = 33
              end
              object DBEdit33: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 172
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'reg_nome'
                DataSource = LabApont.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel66: TPanel
              Left = 626
              Top = 0
              Width = 348
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 5
              object Label39: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 342
                Height = 15
                Align = alTop
                Caption = 'Local'
                FocusControl = DBEdit37
                ExplicitWidth = 28
              end
              object DBEdit37: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 342
                Height = 23
                Align = alClient
                DataField = 'local'
                DataSource = LabApont.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 992
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 992
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      Width = 979
      ButtonWidth = 115
      ExplicitWidth = 979
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
      object ToolButton5: TToolButton
        Left = 384
        Top = 0
        Action = actRefreshRef
      end
    end
  end
  object Panel14: TPanel [2]
    AlignWithMargins = True
    Left = 3
    Top = 47
    Width = 992
    Height = 114
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Panel4: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 986
      Height = 50
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Panel6: TPanel
        Left = 160
        Top = 0
        Width = 80
        Height = 50
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 74
          Height = 15
          Align = alTop
          Caption = 'Amostra'
          ExplicitWidth = 45
        end
        object DBEdit1: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 74
          Height = 23
          TabStop = False
          Align = alClient
          DataField = 'amostra'
          DataSource = LabApont.DataSource1
          ParentShowHint = False
          ReadOnly = True
          ShowHint = False
          TabOrder = 0
        end
      end
      object Panel7: TPanel
        Left = 320
        Top = 0
        Width = 120
        Height = 50
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object Label9: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 114
          Height = 15
          Align = alTop
          Caption = 'Entrada'
          FocusControl = DBEdit8
          ExplicitWidth = 40
        end
        object DBEdit8: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 114
          Height = 23
          TabStop = False
          Align = alClient
          DataField = 'entrada'
          DataSource = LabApont.DataSource1
          ParentShowHint = False
          ReadOnly = True
          ShowHint = False
          TabOrder = 0
        end
      end
      object Panel8: TPanel
        Left = 440
        Top = 0
        Width = 65
        Height = 50
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        object Label3: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 59
          Height = 15
          Align = alTop
          Caption = 'Solicitante'
          FocusControl = DBEdit3
          ExplicitWidth = 55
        end
        object DBEdit3: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 59
          Height = 23
          TabStop = False
          Align = alClient
          DataField = 'codigo'
          DataSource = LabApont.DataSource1
          ParentShowHint = False
          ReadOnly = True
          ShowHint = False
          TabOrder = 0
        end
      end
      object Panel9: TPanel
        Left = 505
        Top = 0
        Width = 34
        Height = 50
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 3
        object Label4: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 28
          Height = 15
          Align = alTop
          Caption = 'Raz'#227'o/Nome'
          FocusControl = DBEdit4
          ExplicitWidth = 69
        end
        object DBEdit4: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 28
          Height = 23
          TabStop = False
          Align = alClient
          DataField = 'nome_chave'
          DataSource = LabApont.DataSource1
          ParentShowHint = False
          ReadOnly = True
          ShowHint = False
          TabOrder = 0
        end
      end
      object Panel10: TPanel
        Left = 661
        Top = 0
        Width = 120
        Height = 50
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 4
        object Label5: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 114
          Height = 15
          Align = alTop
          Caption = 'C.N.P.J.'
          FocusControl = DBEdit5
          ExplicitWidth = 40
        end
        object DBEdit5: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 114
          Height = 23
          TabStop = False
          Align = alClient
          DataField = 'cnpj'
          DataSource = LabApont.DataSource1
          ParentShowHint = False
          ReadOnly = True
          ShowHint = False
          TabOrder = 0
        end
      end
      object Panel11: TPanel
        Left = 781
        Top = 0
        Width = 110
        Height = 50
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 5
        object Label6: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 104
          Height = 15
          Align = alTop
          Caption = 'C.P.F.'
          FocusControl = DBEdit6
          ExplicitWidth = 30
        end
        object DBEdit6: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 104
          Height = 23
          TabStop = False
          Align = alClient
          DataField = 'cpf'
          DataSource = LabApont.DataSource1
          ParentShowHint = False
          ReadOnly = True
          ShowHint = False
          TabOrder = 0
        end
      end
      object Panel12: TPanel
        Left = 539
        Top = 0
        Width = 122
        Height = 50
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 6
        object Label7: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 116
          Height = 15
          Align = alTop
          Caption = 'Telefone'
          FocusControl = DBEdit7
          ExplicitWidth = 44
        end
        object DBEdit7: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 116
          Height = 23
          TabStop = False
          Align = alClient
          DataField = 'telefone'
          DataSource = LabApont.DataSource1
          ParentShowHint = False
          ReadOnly = True
          ShowHint = False
          TabOrder = 0
        end
      end
      object Panel13: TPanel
        Left = 891
        Top = 0
        Width = 95
        Height = 50
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 7
        object Label14: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 89
          Height = 15
          Align = alTop
          Caption = 'Estado'
          FocusControl = DBComboBox1
          ExplicitWidth = 35
        end
        object DBComboBox1: TDBComboBox
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 89
          Height = 23
          Style = csDropDownList
          Align = alClient
          DataField = 'status'
          DataSource = LabApont.DataSource1
          ItemHeight = 15
          Items.Strings = (
            'Digita'#231#227'o'
            'Encerrado')
          TabOrder = 0
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 80
        Height = 50
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 8
        object Label2: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 74
          Height = 15
          Align = alTop
          Caption = 'Laudo'
          FocusControl = DBEdit2
          ExplicitWidth = 33
        end
        object DBEdit2: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 74
          Height = 23
          TabStop = False
          Align = alClient
          DataField = 'recno'
          DataSource = LabApont.DataSource1
          ReadOnly = True
          TabOrder = 0
        end
      end
      object Panel16: TPanel
        Left = 240
        Top = 0
        Width = 80
        Height = 50
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 9
        object Label41: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 74
          Height = 15
          Align = alTop
          Caption = 'Etiqueta'
          ExplicitWidth = 43
        end
        object DBEdit43: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 74
          Height = 23
          TabStop = False
          Align = alClient
          DataField = 'comodato'
          DataSource = LabApont.DataSource1
          ParentShowHint = False
          ReadOnly = True
          ShowHint = False
          TabOrder = 0
        end
      end
      object Panel19: TPanel
        Left = 80
        Top = 0
        Width = 80
        Height = 50
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 10
        object Label43: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 74
          Height = 15
          Align = alTop
          Caption = 'Pedido'
          ExplicitWidth = 37
        end
        object DBEdit44: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 74
          Height = 23
          TabStop = False
          Align = alClient
          DataField = 'pedido'
          DataSource = LabApont.DataSource1
          ParentShowHint = False
          ReadOnly = True
          ShowHint = False
          TabOrder = 0
        end
      end
    end
    object Panel15: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 59
      Width = 986
      Height = 50
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Panel17: TPanel
        Left = 0
        Top = 0
        Width = 57
        Height = 50
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object Label42: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 51
          Height = 15
          Align = alTop
          Caption = 'Pedido'
          FocusControl = DBEdit38
          ExplicitWidth = 37
        end
        object DBEdit38: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 51
          Height = 23
          TabStop = False
          Align = alClient
          DataField = 'pedido'
          DataSource = LabApont.DataSource1
          ParentShowHint = False
          ReadOnly = True
          ShowHint = False
          TabOrder = 0
        end
      end
      object Panel21: TPanel
        Left = 57
        Top = 0
        Width = 929
        Height = 50
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object Label40: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 923
          Height = 15
          Align = alTop
          Caption = 'Destinat'#225'rio'
          ExplicitWidth = 63
        end
        object DBEdit39: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 923
          Height = 23
          Align = alClient
          DataField = 'destinatario'
          DataSource = LabApont.DataSource1
          ParentShowHint = False
          ReadOnly = True
          ShowHint = False
          TabOrder = 0
        end
      end
    end
  end
  inherited alDef: TActionList
    Left = 448
    Top = 8
    inherited actNewMaster: TAction
      Visible = False
    end
    inherited actDelMaster: TAction
      Visible = False
    end
    object actRefreshRef: TAction
      Enabled = False
      Hint = 'Atualiza refer'#234'ncias do Laudo'
      ImageIndex = 309
      OnExecute = actRefreshRefExecute
    end
  end
end
