inherited LabAmostraAssM: TLabAmostraAssM
  BorderStyle = bsSizeable
  Caption = 'Encerramento do Laudo'
  ClientHeight = 768
  ClientWidth = 1136
  Constraints.MinWidth = 691
  KeyPreview = False
  ExplicitWidth = 1152
  ExplicitHeight = 807
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 1136
    Height = 724
    ExplicitWidth = 1136
    ExplicitHeight = 724
    inherited Panel3: TPanel
      Align = alNone
      inherited PageControl3: TPageControl
        inherited tsDet: TTabSheet
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 625
          ExplicitHeight = 155
        end
      end
      inherited ControlBar2: TControlBar
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
      Top = 60
      Width = 1130
      Height = 661
      ExplicitTop = 60
      ExplicitWidth = 1130
      ExplicitHeight = 661
      inherited TabSheet1: TTabSheet
        Caption = 'Assinatura'
        OnResize = TabSheet1Resize
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 1122
        ExplicitHeight = 631
        object Splitter2: TSplitter
          Left = 0
          Top = 447
          Width = 1122
          Height = 6
          Cursor = crVSplit
          Align = alBottom
          ExplicitTop = 403
          ExplicitWidth = 998
        end
        object GroupBox6: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 143
          Width = 1116
          Height = 301
          Align = alClient
          Caption = ' Resultados '
          Padding.Left = 5
          Padding.Top = 5
          Padding.Right = 5
          TabOrder = 0
        end
        object GroupBox2: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 456
          Width = 1116
          Height = 172
          Align = alBottom
          Caption = ' Hist'#243'rico '
          TabOrder = 1
          object JvDBGrid1: TJvDBGrid
            Left = 2
            Top = 17
            Width = 222
            Height = 153
            Align = alLeft
            BorderStyle = bsNone
            DataSource = dsHist
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Pitch = fpVariable
            TitleFont.Style = []
            AlternateRowColor = 14281433
            SelectColumnsDialogStrings.Caption = 'Select columns'
            SelectColumnsDialogStrings.OK = '&OK'
            SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
            EditControls = <>
            RowsHeight = 19
            TitleRowHeight = 19
          end
          object DBChart1: TDBChart
            Left = 224
            Top = 17
            Width = 890
            Height = 153
            Title.Text.Strings = (
              'TDBChart')
            Title.Visible = False
            LeftAxis.Title.Caption = 'Valor Corrigido'
            Legend.Visible = False
            View3D = False
            View3DWalls = False
            Align = alClient
            TabOrder = 1
            object Splitter1: TSplitter
              Left = 1
              Top = 1
              Width = 6
              Height = 151
              ExplicitHeight = 109
            end
            object Series1: TLineSeries
              Marks.Callout.Brush.Color = clBlack
              Marks.Visible = False
              DataSource = qHist
              SeriesColor = 16744448
              XLabelsSource = 'emissao'
              LinePen.Color = 16744448
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = True
              XValues.Name = 'X'
              XValues.Order = loAscending
              XValues.ValueSource = 'emissao'
              YValues.Name = 'Y'
              YValues.Order = loNone
              YValues.ValueSource = 'valor'
            end
          end
        end
        object Panel32: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1116
          Height = 134
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          OnResize = Panel32Resize
          object Panel33: TPanel
            Left = 0
            Top = 0
            Width = 370
            Height = 134
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object DBMemo1: TDBMemo
              AlignWithMargins = True
              Left = 3
              Top = 53
              Width = 364
              Height = 78
              Align = alClient
              DataField = 'diagnostico'
              DataSource = LabAmostraAss.DataSource1
              TabOrder = 1
            end
            object Panel36: TPanel
              Left = 0
              Top = 0
              Width = 370
              Height = 50
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object Panel24: TPanel
                Left = 132
                Top = 0
                Width = 238
                Height = 50
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 1
                object Label45: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 51
                  Height = 15
                  Align = alTop
                  Caption = 'Indica'#231#227'o'
                end
                object JvDBComboBox1: TJvDBComboBox
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 232
                  Height = 23
                  Align = alClient
                  DataField = 'labdiag_recno'
                  DataSource = LabAmostraAss.DataSource1
                  TabOrder = 0
                  UpdateFieldImmediatelly = True
                  ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                  ListSettings.OutfilteredValueFont.Color = clRed
                  ListSettings.OutfilteredValueFont.Height = -11
                  ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                  ListSettings.OutfilteredValueFont.Style = []
                  ListSettings.KeyField = 'recno'
                  ListSettings.DisplayField = 'descri'
                  ListSettings.DataSource = LabAmostraAss.dsDiag
                end
              end
              object Panel15: TPanel
                Left = 0
                Top = 0
                Width = 132
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 0
                object Label22: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 57
                  Height = 15
                  Align = alTop
                  Caption = 'Criticidade'
                end
                object JvDBComboBox2: TJvDBComboBox
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 126
                  Height = 23
                  Align = alClient
                  DataField = 'labcrit_recno'
                  DataSource = LabAmostraAss.DataSource1
                  TabOrder = 0
                  UpdateFieldImmediatelly = True
                  ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                  ListSettings.OutfilteredValueFont.Color = clRed
                  ListSettings.OutfilteredValueFont.Height = -11
                  ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                  ListSettings.OutfilteredValueFont.Style = []
                  ListSettings.KeyField = 'recno'
                  ListSettings.DisplayField = 'descri'
                  ListSettings.DataSource = LabAmostraAss.dsCrit
                end
              end
            end
          end
          object Panel34: TPanel
            Left = 370
            Top = 0
            Width = 402
            Height = 134
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object DBMemo2: TDBMemo
              AlignWithMargins = True
              Left = 3
              Top = 53
              Width = 396
              Height = 78
              Align = alClient
              DataField = 'recomendacao'
              DataSource = LabAmostraAss.DataSource1
              TabOrder = 1
            end
            object Panel37: TPanel
              Left = 0
              Top = 0
              Width = 402
              Height = 50
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object Panel16: TPanel
                Left = 0
                Top = 0
                Width = 259
                Height = 50
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                object Label48: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 82
                  Height = 15
                  Align = alTop
                  Caption = 'Recomenda'#231#227'o'
                end
                object JvDBComboBox3: TJvDBComboBox
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 253
                  Height = 23
                  Align = alClient
                  DataField = 'labrec_recno'
                  DataSource = LabAmostraAss.DataSource1
                  TabOrder = 0
                  UpdateFieldImmediatelly = True
                  ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                  ListSettings.OutfilteredValueFont.Color = clRed
                  ListSettings.OutfilteredValueFont.Height = -11
                  ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                  ListSettings.OutfilteredValueFont.Style = []
                  ListSettings.KeyField = 'recno'
                  ListSettings.DisplayField = 'descri'
                  ListSettings.DataSource = LabAmostraAss.dsRec
                end
              end
              object Panel23: TPanel
                Left = 259
                Top = 0
                Width = 34
                Height = 50
                Align = alRight
                BevelOuter = bvNone
                TabOrder = 1
                object Label46: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 22
                  Height = 15
                  Align = alTop
                  Caption = 'Dias'
                  FocusControl = DBEdit47
                end
                object DBEdit47: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 28
                  Height = 23
                  TabStop = False
                  Align = alClient
                  DataField = 'diag_dias'
                  DataSource = LabAmostraAss.DataSource1
                  ReadOnly = True
                  TabOrder = 0
                end
              end
              object Panel22: TPanel
                Left = 293
                Top = 0
                Width = 109
                Height = 50
                Align = alRight
                BevelOuter = bvNone
                TabOrder = 2
                object Label47: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 81
                  Height = 15
                  Align = alTop
                  Caption = 'Pr'#243'xima Coleta'
                end
                object JvDBDateEdit1: TJvDBDateEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 103
                  Height = 23
                  Align = alClient
                  DataField = 'pcoleta'
                  DataSource = LabAmostraAss.DataSource1
                  ButtonFlat = True
                  ShowNullDate = False
                  TabOrder = 0
                end
              end
            end
          end
          object Panel35: TPanel
            Left = 772
            Top = 0
            Width = 344
            Height = 134
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object DBMemo3: TDBMemo
              AlignWithMargins = True
              Left = 3
              Top = 53
              Width = 338
              Height = 78
              Align = alClient
              DataField = 'obs'
              DataSource = LabAmostraAss.DataSource1
              TabOrder = 0
            end
            object Panel17: TPanel
              Left = 0
              Top = 0
              Width = 344
              Height = 50
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 1
              OnResize = Panel17Resize
              object Panel18: TPanel
                Left = 0
                Top = 0
                Width = 177
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 0
                object Label43: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 171
                  Height = 15
                  Align = alTop
                  Caption = 'Respons'#225'vel'
                  ExplicitWidth = 65
                end
                object JvDBLookupCombo1: TJvDBLookupCombo
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 171
                  Height = 23
                  Align = alClient
                  DataField = 'idcodigo'
                  DataSource = LabAmostraAss.DataSource1
                  DisplayEmpty = 'Nenhum'
                  LookupField = 'idcodigo'
                  LookupDisplay = 'nome'
                  LookupSource = LabAmostraAss.dsResponsavel
                  RightTrimmedLookup = True
                  TabOrder = 0
                end
              end
              object Panel25: TPanel
                Left = 177
                Top = 0
                Width = 167
                Height = 50
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 1
                object Label50: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 161
                  Height = 15
                  Align = alTop
                  Caption = 'Analista'
                  ExplicitWidth = 42
                end
                object JvDBLookupCombo2: TJvDBLookupCombo
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 161
                  Height = 23
                  Align = alClient
                  DataField = 'analista'
                  DataSource = LabAmostraAss.DataSource1
                  DisplayEmpty = 'Nenhum'
                  LookupField = 'idcodigo'
                  LookupDisplay = 'nome'
                  LookupSource = LabAmostraAss.dsAnalista
                  RightTrimmedLookup = True
                  TabOrder = 0
                end
              end
            end
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Informa'#231#245'es Adicionais'
        ImageIndex = 2
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Panel12: TPanel
          Left = 0
          Top = 0
          Width = 1122
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel19: TPanel
            Left = 226
            Top = 0
            Width = 896
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Label40: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 63
              Height = 15
              Align = alTop
              Caption = 'Destinat'#225'rio'
            end
            object DBEdit39: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 890
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'destinatario'
              DataSource = LabAmostraAss.DataSource1
              ReadOnly = True
              TabOrder = 0
              OnExit = DBEdit39Exit
            end
          end
          object Panel21: TPanel
            Left = 59
            Top = 0
            Width = 167
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label25: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 51
              Height = 15
              Align = alTop
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit24
            end
            object DBEdit24: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 161
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'atipo'
              DataSource = LabAmostraAss.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel20: TPanel
            Left = 0
            Top = 0
            Width = 59
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object Label24: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 23
              Height = 15
              Align = alTop
              Caption = 'Tipo'
              FocusControl = DBEdit23
            end
            object DBEdit23: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 53
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'tpamostra_recno'
              DataSource = LabAmostraAss.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
        object Panel27: TPanel
          Left = 0
          Top = 50
          Width = 1122
          Height = 75
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object GroupBox1: TGroupBox
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
              object Label10: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 24
                Height = 14
                Align = alTop
                Caption = 'Tipo'
                FocusControl = DBEdit9
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Pitch = fpVariable
                Font.Style = [fsBold]
                ParentFont = False
              end
              object DBEdit9: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 23
                Width = 48
                Height = 24
                Margins.Right = 0
                Align = alClient
                DataField = 'tpamostra_recno'
                DataSource = LabAmostraAss.DataSource1
                ReadOnly = True
                TabOrder = 0
                ExplicitHeight = 23
              end
            end
            object Panel30: TPanel
              Left = 53
              Top = 17
              Width = 372
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object Label11: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 51
                Height = 15
                Align = alTop
                Caption = 'Descri'#231#227'o'
                FocusControl = DBEdit10
              end
              object DBEdit10: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 366
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'atipo'
                DataSource = LabAmostraAss.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
          end
          object GroupBox3: TGroupBox
            AlignWithMargins = True
            Left = 436
            Top = 3
            Width = 683
            Height = 69
            Align = alClient
            Caption = ' Informa'#231#245'es da Coleta '
            TabOrder = 1
            object Panel26: TPanel
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
                Width = 34
                Height = 15
                Align = alTop
                Caption = 'Coleta'
                FocusControl = JvDBDateEdit2
              end
              object JvDBDateEdit2: TJvDBDateEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 93
                Height = 23
                Align = alClient
                DataField = 'coleta'
                DataSource = LabAmostraAss.DataSource1
                ReadOnly = True
                ButtonFlat = True
                ShowNullDate = False
                TabOrder = 0
              end
            end
            object Panel29: TPanel
              Left = 101
              Top = 17
              Width = 313
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object Label30: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 63
                Height = 15
                Align = alTop
                Caption = 'Amostrador'
                FocusControl = DBEdit28
              end
              object DBEdit28: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 307
                Height = 23
                Align = alClient
                DataField = 'amostrador'
                DataSource = LabAmostraAss.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel38: TPanel
              Left = 414
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
                Width = 64
                Height = 15
                Align = alTop
                Caption = 'T. Ambiente'
                FocusControl = DBEdit29
              end
              object DBEdit29: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 54
                Height = 23
                Align = alClient
                DataField = 'tamb'
                DataSource = LabAmostraAss.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel39: TPanel
              Left = 474
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
                Width = 37
                Height = 15
                Align = alTop
                Caption = 'T. '#211'leo'
                FocusControl = DBEdit30
              end
              object DBEdit30: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 54
                Height = 23
                Align = alClient
                DataField = 'toleo'
                DataSource = LabAmostraAss.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel40: TPanel
              Left = 534
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
                Width = 48
                Height = 15
                Align = alTop
                Caption = 'Umidade'
                FocusControl = DBEdit31
              end
              object DBEdit31: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 54
                Height = 23
                Align = alClient
                DataField = 'umidade'
                DataSource = LabAmostraAss.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel41: TPanel
              Left = 594
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
                Width = 36
                Height = 15
                Align = alTop
                Caption = 'Tens'#227'o'
                FocusControl = DBEdit32
              end
              object Panel42: TPanel
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
                  DataSource = LabAmostraAss.DataSource1
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
                  DataSource = LabAmostraAss.DataSource1
                  ReadOnly = True
                  TabOrder = 1
                end
              end
            end
          end
        end
        object GroupBox4: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 128
          Width = 1116
          Height = 177
          Align = alTop
          Caption = ' Equipamento '
          TabOrder = 2
          object Panel43: TPanel
            Left = 2
            Top = 17
            Width = 1112
            Height = 50
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Panel44: TPanel
              Left = 0
              Top = 0
              Width = 80
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label12: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 71
                Height = 15
                Align = alTop
                Caption = 'Equipamento'
                FocusControl = DBEdit11
              end
              object DBEdit11: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 77
                Height = 23
                Margins.Right = 0
                Align = alClient
                DataField = 'equip_recno'
                DataSource = LabAmostraAss.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel45: TPanel
              Left = 80
              Top = 0
              Width = 393
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object Label13: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 23
                Height = 15
                Align = alTop
                Caption = 'Tipo'
              end
              object DBEdit12: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 387
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'tipo'
                DataSource = LabAmostraAss.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel46: TPanel
              Left = 473
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
                Width = 41
                Height = 15
                Align = alTop
                Caption = 'Isolante'
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
                DataSource = LabAmostraAss.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel47: TPanel
              Left = 629
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
                Width = 25
                Height = 15
                Align = alTop
                Caption = 'S'#233'rie'
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
                DataSource = LabAmostraAss.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel48: TPanel
              Left = 782
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
                Width = 160
                Height = 15
                Align = alTop
                Caption = 'S'#233'rie Cliente (Tag, NCia, Ativo)'
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
                DataSource = LabAmostraAss.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel49: TPanel
              Left = 950
              Top = 0
              Width = 162
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 5
              object Label14: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 55
                Height = 15
                Align = alTop
                Caption = 'Fabricante'
              end
              object DBEdit13: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 156
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'fabricante'
                DataSource = LabAmostraAss.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
          end
          object Panel50: TPanel
            Left = 2
            Top = 67
            Width = 1112
            Height = 50
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object Panel51: TPanel
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
                Width = 57
                Height = 15
                Align = alTop
                Caption = 'Fabrica'#231#227'o'
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
                DataSource = LabAmostraAss.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel52: TPanel
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
                Width = 23
                Height = 15
                Align = alTop
                Caption = 'Lote'
                FocusControl = DBEdit20
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
                DataSource = LabAmostraAss.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel53: TPanel
              Left = 179
              Top = 0
              Width = 68
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 2
              object Label15: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 62
                Height = 15
                Align = alTop
                Caption = 'Imped'#226'ncia'
                FocusControl = DBEdit14
                ExplicitLeft = 2
                ExplicitTop = 2
              end
              object DBEdit14: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 62
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'imped'
                DataSource = LabAmostraAss.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel54: TPanel
              Left = 247
              Top = 0
              Width = 94
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 3
              object Label17: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 36
                Height = 15
                Align = alTop
                Caption = 'Tens'#227'o'
                FocusControl = DBEdit16
              end
              object Panel57: TPanel
                Left = 0
                Top = 21
                Width = 94
                Height = 29
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                object DBEdit16: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 54
                  Height = 23
                  Margins.Right = 2
                  TabStop = False
                  Align = alClient
                  DataField = 'tensao_1'
                  DataSource = LabAmostraAss.DataSource1
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
                  DataSource = LabAmostraAss.DataSource1
                  ReadOnly = True
                  TabOrder = 1
                end
              end
            end
            object Panel55: TPanel
              Left = 341
              Top = 0
              Width = 94
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 4
              object Label18: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 46
                Height = 15
                Align = alTop
                Caption = 'Pot'#234'ncia'
                FocusControl = DBEdit18
              end
              object Panel58: TPanel
                Left = 0
                Top = 21
                Width = 94
                Height = 29
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                object DBEdit18: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 54
                  Height = 23
                  Margins.Right = 2
                  TabStop = False
                  Align = alClient
                  DataField = 'potencia'
                  DataSource = LabAmostraAss.DataSource1
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
                  DataSource = LabAmostraAss.DataSource1
                  ReadOnly = True
                  TabOrder = 1
                end
              end
            end
            object Panel56: TPanel
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
                DataSource = LabAmostraAss.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel59: TPanel
              Left = 519
              Top = 0
              Width = 44
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 6
              object Label26: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 37
                Height = 15
                Align = alTop
                Caption = 'Drenos'
                FocusControl = DBEdit25
              end
              object DBEdit25: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 38
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'drenos'
                DataSource = LabAmostraAss.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel60: TPanel
              Left = 469
              Top = 0
              Width = 50
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 7
              object Label27: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 40
                Height = 15
                Align = alTop
                Caption = 'Volume'
                FocusControl = DBEdit26
              end
              object DBEdit26: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 44
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'volume'
                DataSource = LabAmostraAss.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel61: TPanel
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
                Width = 38
                Height = 15
                Align = alTop
                Caption = 'Fam'#237'lia'
                FocusControl = DBEdit35
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
                DataSource = LabAmostraAss.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel62: TPanel
              Left = 704
              Top = 0
              Width = 408
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 9
              object Label28: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 51
                Height = 15
                Align = alTop
                Caption = 'Descri'#231#227'o'
                FocusControl = DBEdit27
              end
              object DBEdit27: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 402
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'descri'
                DataSource = LabAmostraAss.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
          end
          object Panel63: TPanel
            Left = 2
            Top = 117
            Width = 1112
            Height = 50
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 2
            object Panel64: TPanel
              Left = 0
              Top = 0
              Width = 69
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label35: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 61
                Height = 15
                Align = alTop
                Caption = 'Localiza'#231#227'o'
                FocusControl = DBEdit33
              end
              object DBEdit33: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 66
                Height = 23
                Margins.Right = 0
                Align = alClient
                DataField = 'labsubest_recno'
                DataSource = LabAmostraAss.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel65: TPanel
              Left = 69
              Top = 0
              Width = 50
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object Label36: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 25
                Height = 15
                Align = alTop
                Caption = 'Sigla'
                FocusControl = DBEdit34
              end
              object DBEdit34: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 44
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'sigla'
                DataSource = LabAmostraAss.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel66: TPanel
              Left = 273
              Top = 0
              Width = 175
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 2
              object Label39: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 46
                Height = 15
                Align = alTop
                Caption = 'Regional'
                FocusControl = DBEdit37
              end
              object DBEdit37: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 169
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'regional'
                DataSource = LabAmostraAss.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel67: TPanel
              Left = 119
              Top = 0
              Width = 154
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 3
              object Label41: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 33
                Height = 15
                Align = alTop
                Caption = 'Nome'
                FocusControl = DBEdit38
              end
              object DBEdit38: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 148
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'nome'
                DataSource = LabAmostraAss.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel68: TPanel
              Left = 448
              Top = 0
              Width = 178
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 4
              object Label42: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 33
                Height = 15
                Align = alTop
                Caption = 'Nome'
                FocusControl = DBEdit45
              end
              object DBEdit45: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 172
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'reg_nome'
                DataSource = LabAmostraAss.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel69: TPanel
              Left = 626
              Top = 0
              Width = 486
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 5
              object Label49: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 28
                Height = 15
                Align = alTop
                Caption = 'Local'
                FocusControl = DBEdit46
              end
              object DBEdit46: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 480
                Height = 23
                Align = alClient
                DataField = 'local'
                DataSource = LabAmostraAss.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
          end
        end
      end
    end
    object Panel2: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 1130
      Height = 51
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object Panel4: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1124
        Height = 50
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Panel5: TPanel
          Left = 160
          Top = 0
          Width = 80
          Height = 50
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Label1: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 45
            Height = 15
            Align = alTop
            Caption = 'Amostra'
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
            DataSource = LabAmostraAss.DataSource1
            ReadOnly = True
            TabOrder = 0
          end
        end
        object Panel7: TPanel
          Left = 892
          Top = 0
          Width = 116
          Height = 50
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 2
          object Label5: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 40
            Height = 15
            Align = alTop
            Caption = 'C.N.P.J.'
            FocusControl = DBEdit5
          end
          object DBEdit5: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 110
            Height = 23
            TabStop = False
            Align = alClient
            DataField = 'cnpj'
            DataSource = LabAmostraAss.DataSource1
            ReadOnly = True
            TabOrder = 0
          end
        end
        object Panel8: TPanel
          Left = 493
          Top = 0
          Width = 283
          Height = 50
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 3
          object Label4: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 69
            Height = 15
            Align = alTop
            Caption = 'Raz'#227'o/Nome'
            FocusControl = DBEdit4
          end
          object DBEdit4: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 277
            Height = 23
            TabStop = False
            Align = alClient
            DataField = 'nome_chave'
            DataSource = LabAmostraAss.DataSource1
            ReadOnly = True
            TabOrder = 0
          end
        end
        object Panel9: TPanel
          Left = 436
          Top = 0
          Width = 57
          Height = 50
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 4
          object Label3: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 37
            Height = 15
            Align = alTop
            Caption = 'Cliente'
            FocusControl = DBEdit3
          end
          object DBEdit3: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 51
            Height = 23
            TabStop = False
            Align = alClient
            DataField = 'codigo'
            DataSource = LabAmostraAss.DataSource1
            ReadOnly = True
            TabOrder = 0
          end
        end
        object Panel10: TPanel
          Left = 320
          Top = 0
          Width = 116
          Height = 50
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 5
          object Label9: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 40
            Height = 15
            Align = alTop
            Caption = 'Entrada'
            FocusControl = DBEdit8
          end
          object DBEdit8: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 110
            Height = 23
            TabStop = False
            Align = alClient
            DataField = 'entrada'
            DataSource = LabAmostraAss.DataSource1
            ReadOnly = True
            TabOrder = 0
          end
        end
        object Panel11: TPanel
          Left = 776
          Top = 0
          Width = 116
          Height = 50
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 6
          object Label7: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 44
            Height = 15
            Align = alTop
            Caption = 'Telefone'
            FocusControl = DBEdit7
          end
          object DBEdit7: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 110
            Height = 23
            TabStop = False
            Align = alClient
            DataField = 'telefone'
            DataSource = LabAmostraAss.DataSource1
            ReadOnly = True
            TabOrder = 0
          end
        end
        object Panel13: TPanel
          Left = 1008
          Top = 0
          Width = 116
          Height = 50
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 7
          object Label6: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 30
            Height = 15
            Align = alTop
            Caption = 'C.P.F.'
            FocusControl = DBEdit6
          end
          object DBEdit6: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 110
            Height = 23
            TabStop = False
            Align = alClient
            DataField = 'cpf'
            DataSource = LabAmostraAss.DataSource1
            ReadOnly = True
            TabOrder = 0
          end
        end
        object Panel14: TPanel
          Left = 80
          Top = 0
          Width = 80
          Height = 50
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 8
          object Label8: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 37
            Height = 15
            Align = alTop
            Caption = 'Pedido'
            FocusControl = DBEdit21
          end
          object DBEdit21: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 74
            Height = 23
            TabStop = False
            Align = alClient
            DataField = 'pedido'
            DataSource = LabAmostraAss.DataSource1
            ReadOnly = True
            TabOrder = 0
          end
        end
        object Panel31: TPanel
          Left = 0
          Top = 0
          Width = 80
          Height = 50
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object Label51: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 33
            Height = 15
            Align = alTop
            Caption = 'Laudo'
          end
          object DBEdit48: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 74
            Height = 23
            TabStop = False
            Align = alClient
            DataField = 'recno'
            DataSource = LabAmostraAss.DataSource1
            ReadOnly = True
            TabOrder = 0
          end
        end
        object Panel6: TPanel
          Left = 240
          Top = 0
          Width = 80
          Height = 50
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 9
          object Label2: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 43
            Height = 15
            Align = alTop
            Caption = 'Etiqueta'
            FocusControl = DBEdit2
          end
          object DBEdit2: TDBEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 74
            Height = 23
            TabStop = False
            Align = alClient
            DataField = 'comodato'
            DataSource = LabAmostraAss.DataSource1
            ReadOnly = True
            TabOrder = 0
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 1130
    ExplicitWidth = 1130
    inherited ToolBar1: TToolBar
      Width = 989
      ExplicitWidth = 989
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
      inherited tbDiv3: TToolButton
        Enabled = False
      end
      inherited tbClose: TToolButton
        Enabled = False
        ExplicitWidth = 32
      end
      object ToolButton15: TToolButton
        Left = 384
        Top = 0
        Width = 8
        Caption = 'ToolButton15'
        ImageIndex = 37
        Style = tbsSeparator
      end
      object ToolButton5: TToolButton
        Left = 392
        Top = 0
        Action = actSign
      end
    end
  end
  inherited alDef: TActionList
    Left = 352
    Top = 88
    inherited actNewMaster: TAction
      Visible = False
    end
    inherited actDelMaster: TAction
      Visible = False
    end
    object actFindCrit: TAction
      ImageIndex = 8
    end
    object actSign: TAction
      Hint = 'Assinar Laudo'
      ImageIndex = 289
      OnExecute = actSignExecute
    end
  end
  object qHist: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      'select current_date emissao, valor'
      '  from labamostras_res res'
      ' where res.recno = :ensaio_recno'
      'union all'
      'select rel.emissao, e.valor'
      '  from labamostras_rel rel'
      '       join labamostras a'
      '         on a.recno = rel.amostra'
      '        and a.equip_recno = :equip'
      '       join labamostras_res e'
      '         on e.laudo = rel.recno'
      '        and e.relato_recno = rel.relato_recno'
      '        and e.ensaio_recno = :ensaio'
      ' where rel.recno <> :laudo'
      '   and rel.status in (3, 4)'
      '   and rel.assinatura is not null'
      '   and rel.emissao < current_date'
      '   and rel.revisao is null'
      ' order by emissao')
    Params = <
      item
        DataType = ftUnknown
        Name = 'ensaio_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'equip'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ensaio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'laudo'
        ParamType = ptUnknown
      end>
    Left = 392
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ensaio_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'equip'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ensaio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'laudo'
        ParamType = ptUnknown
      end>
    object qHistemissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'emissao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qHistvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Required = True
      DisplayFormat = ',0.###0'
    end
  end
  object dsHist: TDataSource
    DataSet = qHist
    Left = 440
    Top = 88
  end
end
