inherited LabAmostraAssM: TLabAmostraAssM
  BorderStyle = bsSizeable
  Caption = 'Encerramento do Laudo'
  ClientHeight = 661
  ClientWidth = 1070
  Constraints.MinWidth = 691
  KeyPreview = False
  ExplicitWidth = 1086
  ExplicitHeight = 700
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 1070
    Height = 617
    ExplicitTop = 44
    ExplicitWidth = 1070
    ExplicitHeight = 617
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
      Top = 60
      Width = 1064
      Height = 554
      ExplicitLeft = 3
      ExplicitTop = 60
      ExplicitWidth = 1064
      ExplicitHeight = 554
      inherited TabSheet1: TTabSheet
        Caption = 'Assinatura'
        OnResize = TabSheet1Resize
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 1056
        ExplicitHeight = 524
        object Splitter2: TSplitter
          Left = 0
          Top = 384
          Width = 1056
          Height = 6
          Cursor = crVSplit
          Align = alBottom
          ExplicitTop = 403
          ExplicitWidth = 998
        end
        object GroupBox6: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 111
          Width = 1050
          Height = 270
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
          Top = 393
          Width = 1050
          Height = 128
          Align = alBottom
          Caption = ' Hist'#243'rico '
          TabOrder = 1
          object JvDBGrid1: TJvDBGrid
            Left = 2
            Top = 17
            Width = 222
            Height = 109
            Align = alLeft
            BorderStyle = bsNone
            DataSource = dsHist
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
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
            Width = 824
            Height = 109
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
              Height = 107
              ExplicitHeight = 109
            end
            object Series1: TFastLineSeries
              Marks.Callout.Brush.Color = clBlack
              Marks.Visible = False
              DataSource = qHist
              XLabelsSource = 'emissao'
              LinePen.Color = clRed
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
          Width = 1050
          Height = 102
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          OnResize = Panel32Resize
          object Panel33: TPanel
            Left = 0
            Top = 0
            Width = 370
            Height = 102
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object DBMemo1: TDBMemo
              AlignWithMargins = True
              Left = 3
              Top = 53
              Width = 364
              Height = 46
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
                Left = 169
                Top = 0
                Width = 201
                Height = 50
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 1
                object Label45: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 195
                  Height = 15
                  Align = alTop
                  Caption = 'Diagn'#243'stico'
                  ExplicitWidth = 63
                end
                object JvDBComboBox1: TJvDBComboBox
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 195
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
                Width = 169
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 0
                object Label22: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 163
                  Height = 15
                  Align = alTop
                  Caption = 'Criticidade'
                  ExplicitWidth = 57
                end
                object JvDBComboBox2: TJvDBComboBox
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 163
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
            Width = 427
            Height = 102
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object DBMemo2: TDBMemo
              AlignWithMargins = True
              Left = 3
              Top = 53
              Width = 421
              Height = 46
              Align = alClient
              DataField = 'recomendacao'
              DataSource = LabAmostraAss.DataSource1
              TabOrder = 1
            end
            object Panel37: TPanel
              Left = 0
              Top = 0
              Width = 427
              Height = 50
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object Panel16: TPanel
                Left = 0
                Top = 0
                Width = 284
                Height = 50
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                object Label48: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 278
                  Height = 15
                  Align = alTop
                  Caption = 'Recomenda'#231#227'o'
                  ExplicitWidth = 82
                end
                object JvDBComboBox3: TJvDBComboBox
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 278
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
                Left = 284
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
                  Width = 28
                  Height = 15
                  Align = alTop
                  Caption = 'Dias'
                  FocusControl = DBEdit47
                  ExplicitWidth = 22
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
                Left = 318
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
                  Width = 103
                  Height = 15
                  Align = alTop
                  Caption = 'Pr'#243'xima Coleta'
                  ExplicitWidth = 81
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
            Left = 797
            Top = 0
            Width = 253
            Height = 102
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object DBMemo3: TDBMemo
              AlignWithMargins = True
              Left = 3
              Top = 53
              Width = 247
              Height = 46
              Align = alClient
              DataField = 'obs'
              DataSource = LabAmostraAss.DataSource1
              TabOrder = 1
            end
            object Panel25: TPanel
              Left = 0
              Top = 0
              Width = 253
              Height = 50
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object Label50: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 247
                Height = 15
                Align = alTop
                Caption = 'Engenheiro / Observa'#231#227'o'
                ExplicitWidth = 133
              end
              object JvDBComboBox4: TJvDBComboBox
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 247
                Height = 23
                Align = alClient
                DataField = 'idcodigo'
                DataSource = LabAmostraAss.DataSource1
                TabOrder = 0
                UpdateFieldImmediatelly = True
                ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                ListSettings.OutfilteredValueFont.Color = clRed
                ListSettings.OutfilteredValueFont.Height = -11
                ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                ListSettings.OutfilteredValueFont.Style = []
                ListSettings.KeyField = 'idcodigo'
                ListSettings.DisplayField = 'nome'
                ListSettings.DataSource = LabAmostraAss.dsCRQ
              end
            end
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Informa'#231#245'es Adicionais'
        ImageIndex = 2
        object Panel12: TPanel
          Left = 0
          Top = 0
          Width = 1056
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel19: TPanel
            Left = 226
            Top = 0
            Width = 830
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Label40: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 824
              Height = 15
              Align = alTop
              Caption = 'Destinat'#225'rio'
              ExplicitWidth = 63
            end
            object DBEdit39: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 824
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
              Width = 161
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
              Width = 53
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
          Width = 1056
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
                Width = 45
                Height = 14
                Align = alTop
                Caption = 'Tipo'
                FocusControl = DBEdit9
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ParentFont = False
                ExplicitWidth = 24
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
                Width = 366
                Height = 15
                Align = alTop
                Caption = 'Descri'#231#227'o'
                FocusControl = DBEdit10
                ExplicitWidth = 51
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
            Width = 617
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
                Width = 93
                Height = 15
                Align = alTop
                Caption = 'Coleta'
                FocusControl = JvDBDateEdit2
                ExplicitWidth = 34
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
              Width = 247
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object Label30: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 241
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
                Width = 241
                Height = 23
                Align = alClient
                DataField = 'amostrador'
                DataSource = LabAmostraAss.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel38: TPanel
              Left = 348
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
                DataSource = LabAmostraAss.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel39: TPanel
              Left = 408
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
                DataSource = LabAmostraAss.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel40: TPanel
              Left = 468
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
                DataSource = LabAmostraAss.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel41: TPanel
              Left = 528
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
          Width = 1050
          Height = 177
          Align = alTop
          Caption = ' Equipamento '
          TabOrder = 2
          object Panel43: TPanel
            Left = 2
            Top = 17
            Width = 1046
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
                Width = 74
                Height = 15
                Align = alTop
                Caption = 'Equipamento'
                FocusControl = DBEdit11
                ExplicitWidth = 71
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
              Width = 327
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object Label13: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 321
                Height = 15
                Align = alTop
                Caption = 'Tipo'
                ExplicitWidth = 23
              end
              object DBEdit12: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 321
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
              Left = 407
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
                DataSource = LabAmostraAss.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel47: TPanel
              Left = 563
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
                DataSource = LabAmostraAss.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel48: TPanel
              Left = 716
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
                DataSource = LabAmostraAss.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel49: TPanel
              Left = 884
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
                Width = 156
                Height = 15
                Align = alTop
                Caption = 'Fabricante'
                ExplicitWidth = 55
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
            Width = 1046
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
                Width = 88
                Height = 15
                Align = alTop
                Caption = 'Tens'#227'o'
                FocusControl = DBEdit16
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
                Width = 88
                Height = 15
                Align = alTop
                Caption = 'Pot'#234'ncia'
                FocusControl = DBEdit18
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
                Width = 38
                Height = 15
                Align = alTop
                Caption = 'Drenos'
                FocusControl = DBEdit25
                ExplicitWidth = 37
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
                Width = 44
                Height = 15
                Align = alTop
                Caption = 'Volume'
                FocusControl = DBEdit26
                ExplicitWidth = 40
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
                DataSource = LabAmostraAss.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel62: TPanel
              Left = 704
              Top = 0
              Width = 342
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 9
              object Label28: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 336
                Height = 15
                Align = alTop
                Caption = 'Descri'#231#227'o'
                FocusControl = DBEdit27
                ExplicitWidth = 51
              end
              object DBEdit27: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 336
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
            Width = 1046
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
                Width = 63
                Height = 15
                Align = alTop
                Caption = 'Localiza'#231#227'o'
                FocusControl = DBEdit33
                ExplicitWidth = 61
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
                Width = 44
                Height = 15
                Align = alTop
                Caption = 'Sigla'
                FocusControl = DBEdit34
                ExplicitWidth = 25
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
                Width = 169
                Height = 15
                Align = alTop
                Caption = 'Regional'
                FocusControl = DBEdit37
                ExplicitWidth = 46
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
                Width = 148
                Height = 15
                Align = alTop
                Caption = 'Nome'
                FocusControl = DBEdit38
                ExplicitWidth = 33
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
                Width = 172
                Height = 15
                Align = alTop
                Caption = 'Nome'
                FocusControl = DBEdit45
                ExplicitWidth = 33
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
              Width = 420
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 5
              object Label49: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 414
                Height = 15
                Align = alTop
                Caption = 'Local'
                FocusControl = DBEdit46
                ExplicitWidth = 28
              end
              object DBEdit46: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 414
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
      Width = 1064
      Height = 51
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object Panel4: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1058
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
            DataSource = LabAmostraAss.DataSource1
            ReadOnly = True
            TabOrder = 0
          end
        end
        object Panel7: TPanel
          Left = 826
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
            Width = 110
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
          Width = 217
          Height = 50
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 3
          object Label4: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 211
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
            Width = 211
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
            Width = 51
            Height = 15
            Align = alTop
            Caption = 'Cliente'
            FocusControl = DBEdit3
            ExplicitWidth = 37
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
            Width = 110
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
          Left = 710
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
            Width = 110
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
          Left = 942
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
            Width = 110
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
            Width = 74
            Height = 15
            Align = alTop
            Caption = 'Pedido'
            FocusControl = DBEdit21
            ExplicitWidth = 37
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
            Width = 74
            Height = 15
            Align = alTop
            Caption = 'Laudo'
            ExplicitWidth = 33
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
            Width = 74
            Height = 15
            Align = alTop
            Caption = 'Etiqueta'
            FocusControl = DBEdit2
            ExplicitWidth = 43
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
    Width = 1064
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 1064
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      Width = 989
      ButtonWidth = 115
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
      '   and rel.status = 3'
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
