inherited AnaliseDeCredito: TAnaliseDeCredito
  Caption = 'An'#225'lise de Cr'#233'dito'
  ClientHeight = 787
  ClientWidth = 967
  ExplicitWidth = 983
  ExplicitHeight = 826
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 760
    Width = 961
    ExplicitTop = 760
    ExplicitWidth = 961
  end
  inherited Panel1: TPanel
    Width = 967
    ExplicitWidth = 967
    inherited pctlFind: TPageControl
      Width = 957
      ExplicitWidth = 957
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 949
        ExplicitHeight = 75
        inherited BitBtn2: TBitBtn
          Left = 848
          TabOrder = 5
          ExplicitLeft = 848
        end
        object Panel46: TPanel
          Left = 513
          Top = 0
          Width = 281
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 4
          object Label35: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 275
            Height = 15
            Align = alTop
            Caption = 'Nome Curto'
            ExplicitWidth = 66
          end
          object edEmpresa: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 275
            Height = 23
            Align = alTop
            TabOrder = 0
            OnChange = edEmpresaChange
          end
        end
        object Panel47: TPanel
          Left = 173
          Top = 0
          Width = 92
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Label36: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 86
            Height = 15
            Align = alTop
            Caption = 'C'#243'digo'
            ExplicitWidth = 39
          end
          object edCodigo: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 86
            Height = 23
            Align = alTop
            DecimalPlaceRound = True
            DecimalPlaces = 0
            DisplayFormat = ',0'
            ShowButton = False
            TabOrder = 0
            ZeroEmpty = False
            DecimalPlacesAlwaysShown = False
            OnChange = edEmpresaChange
          end
        end
        object Panel48: TPanel
          Left = 265
          Top = 0
          Width = 124
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object Label37: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 118
            Height = 15
            Align = alTop
            Caption = 'CNPJ'
            ExplicitWidth = 27
          end
          object edCNPJ: TMaskEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 118
            Height = 23
            Align = alTop
            EditMask = '99.999.999/9999-99;0;'
            MaxLength = 18
            TabOrder = 0
            OnChange = edEmpresaChange
          end
        end
        object Panel49: TPanel
          Left = 389
          Top = 0
          Width = 124
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 3
          object Label38: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 118
            Height = 15
            Align = alTop
            Caption = 'CPF'
            ExplicitWidth = 21
          end
          object edCPF: TMaskEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 118
            Height = 23
            Align = alTop
            EditMask = '999.999.999-99;0;'
            MaxLength = 14
            TabOrder = 0
            OnChange = edEmpresaChange
          end
        end
        object Panel50: TPanel
          Left = 0
          Top = 0
          Width = 173
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object Label39: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 167
            Height = 15
            Align = alTop
            Caption = 'Status'
            ExplicitWidth = 32
          end
          object cbStatus: TComboBox
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 167
            Height = 23
            Align = alTop
            Style = csDropDownList
            ItemHeight = 15
            ItemIndex = 0
            TabOrder = 0
            Text = 'An'#225'lises Pendentes'
            OnChange = cbStatusChange
            Items.Strings = (
              'An'#225'lises Pendentes'
              'Aprovadas Sistema'
              'Aprovadas Analista'
              'Reprovadas Analista')
          end
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 949
        ExplicitHeight = 75
      end
    end
  end
  inherited Panel2: TPanel
    Width = 967
    Height = 628
    ExplicitWidth = 967
    ExplicitHeight = 628
    inherited PageControl1: TPageControl
      Width = 961
      Height = 191
      Images = Resources.medium_n
      ExplicitWidth = 961
      ExplicitHeight = 191
      inherited TabSheet1: TTabSheet
        Caption = 'An'#225'lises Pendentes'
        ImageIndex = 210
        ExplicitLeft = 4
        ExplicitTop = 33
        ExplicitWidth = 953
        ExplicitHeight = 154
        inherited DBGrid1: TDBGrid
          Width = 947
          Height = 148
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Aprovadas Sistema'
        ImageIndex = 208
      end
      object TabSheet3: TTabSheet
        Caption = 'Aprovadas Analista'
        ImageIndex = 205
      end
      object TabSheet4: TTabSheet
        Caption = 'Reprovadas Analista'
        ImageIndex = 204
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 197
      Width = 967
      Height = 431
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object PageControl2: TPageControl
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 961
        Height = 425
        ActivePage = tsAnalise
        Align = alClient
        Images = Resources.medium_n
        TabOrder = 0
        OnChange = PageControl2Change
        object tsAnalise: TTabSheet
          Caption = 'Dados da An'#225'lise'
          ImageIndex = 209
          object GroupBox1: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 124
            Width = 947
            Height = 128
            Align = alTop
            Caption = ' Cliente '
            TabOrder = 0
            inline FrameCliente1: TFrameCliente
              Left = 2
              Top = 17
              Width = 943
              Height = 109
              Align = alClient
              AutoSize = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Segoe UI'
              Font.Pitch = fpVariable
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              ExplicitLeft = 2
              ExplicitTop = 17
              ExplicitWidth = 943
              ExplicitHeight = 109
              inherited Panel1: TPanel
                Width = 943
                ExplicitWidth = 943
                inherited Panel2: TPanel
                  inherited Label9: TLabel
                    Width = 70
                  end
                  inherited DBEdit8: TDBEdit
                    DataField = 'cliente'
                  end
                end
                inherited Panel4: TPanel
                  Width = 344
                  ExplicitWidth = 344
                  inherited Label10: TLabel
                    Width = 338
                  end
                  inherited DBEdit9: TDBEdit
                    Width = 338
                    ExplicitWidth = 338
                  end
                end
                inherited Panel5: TPanel
                  Left = 449
                  ExplicitLeft = 449
                  inherited Label11: TLabel
                    Width = 248
                  end
                  inherited DBEdit10: TDBEdit
                    ExplicitWidth = 248
                  end
                end
                inherited Panel6: TPanel
                  Left = 703
                  ExplicitLeft = 703
                  inherited Label12: TLabel
                    Width = 122
                  end
                  inherited DBEdit11: TDBEdit
                    ExplicitWidth = 122
                  end
                end
                inherited Panel7: TPanel
                  Left = 831
                  ExplicitLeft = 831
                  inherited Label13: TLabel
                    Width = 106
                  end
                  inherited DBEdit12: TDBEdit
                    ExplicitWidth = 106
                  end
                end
              end
              inherited Panel3: TPanel
                Width = 943
                ExplicitWidth = 943
                inherited Panel8: TPanel
                  Width = 442
                  ExplicitWidth = 442
                  inherited Label1: TLabel
                    Width = 436
                  end
                  inherited DBEdit1: TDBEdit
                    Width = 436
                    ExplicitWidth = 436
                  end
                end
                inherited Panel9: TPanel
                  Left = 763
                  ExplicitLeft = 763
                  inherited Label2: TLabel
                    Width = 46
                  end
                end
                inherited Panel30: TPanel
                  inherited Label20: TLabel
                    Width = 315
                  end
                end
                inherited Panel10: TPanel
                  Left = 815
                  ExplicitLeft = 815
                  inherited Label3: TLabel
                    Width = 122
                  end
                end
              end
              inherited dsCliente: TDataSource
                DataSet = IBrwSrc
              end
            end
          end
          object Panel8: TPanel
            Left = 0
            Top = 46
            Width = 953
            Height = 75
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object GroupBox2: TGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 358
              Height = 69
              Align = alLeft
              Caption = ' Alvo da An'#225'lise '
              TabOrder = 0
              object Panel4: TPanel
                Left = 2
                Top = 17
                Width = 354
                Height = 50
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                object Panel5: TPanel
                  Left = 0
                  Top = 0
                  Width = 102
                  Height = 50
                  Align = alLeft
                  BevelOuter = bvNone
                  TabOrder = 0
                  object Label1: TLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 96
                    Height = 15
                    Align = alTop
                    Caption = 'An'#225'lise'
                    FocusControl = DBEdit1
                    ExplicitWidth = 38
                  end
                  object DBEdit1: TDBEdit
                    AlignWithMargins = True
                    Left = 3
                    Top = 24
                    Width = 96
                    Height = 23
                    Align = alClient
                    DataField = 'recno'
                    DataSource = DataSource1
                    ReadOnly = True
                    TabOrder = 0
                  end
                end
                object Panel6: TPanel
                  Left = 102
                  Top = 0
                  Width = 125
                  Height = 50
                  Align = alLeft
                  BevelOuter = bvNone
                  TabOrder = 1
                  object Label3: TLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 119
                    Height = 15
                    Align = alTop
                    Caption = 'Emiss'#227'o'
                    FocusControl = DBEdit2
                    ExplicitWidth = 43
                  end
                  object DBEdit2: TDBEdit
                    AlignWithMargins = True
                    Left = 3
                    Top = 24
                    Width = 119
                    Height = 23
                    Align = alClient
                    DataField = 'emissao'
                    DataSource = DataSource1
                    ReadOnly = True
                    TabOrder = 0
                  end
                end
                object Panel7: TPanel
                  Left = 227
                  Top = 0
                  Width = 125
                  Height = 50
                  Align = alLeft
                  BevelOuter = bvNone
                  TabOrder = 2
                  object Label4: TLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 119
                    Height = 15
                    Align = alTop
                    Caption = 'Valor'
                    FocusControl = DBEdit3
                    ExplicitWidth = 26
                  end
                  object DBEdit3: TDBEdit
                    AlignWithMargins = True
                    Left = 3
                    Top = 24
                    Width = 119
                    Height = 23
                    Align = alClient
                    DataField = 'valor'
                    DataSource = DataSource1
                    ReadOnly = True
                    TabOrder = 0
                  end
                end
              end
            end
            object GroupBox3: TGroupBox
              AlignWithMargins = True
              Left = 367
              Top = 3
              Width = 583
              Height = 69
              Align = alClient
              Caption = ' Solicitante '
              TabOrder = 1
              object Panel9: TPanel
                Left = 2
                Top = 17
                Width = 579
                Height = 50
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                object Panel10: TPanel
                  Left = 0
                  Top = 0
                  Width = 241
                  Height = 50
                  Align = alLeft
                  BevelOuter = bvNone
                  TabOrder = 0
                  object Label5: TLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 235
                    Height = 15
                    Align = alTop
                    Caption = 'Nome'
                    FocusControl = DBEdit4
                    ExplicitWidth = 33
                  end
                  object DBEdit4: TDBEdit
                    AlignWithMargins = True
                    Left = 3
                    Top = 24
                    Width = 235
                    Height = 23
                    Align = alClient
                    DataField = 'nome'
                    DataSource = DataSource1
                    ReadOnly = True
                    TabOrder = 0
                  end
                end
                object Panel11: TPanel
                  Left = 241
                  Top = 0
                  Width = 338
                  Height = 50
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 1
                  object Label6: TLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 332
                    Height = 15
                    Align = alTop
                    Caption = 'E-mail'
                    FocusControl = DBEdit5
                    ExplicitWidth = 34
                  end
                  object DBEdit5: TDBEdit
                    AlignWithMargins = True
                    Left = 3
                    Top = 24
                    Width = 332
                    Height = 23
                    Align = alClient
                    DataField = 'email'
                    DataSource = DataSource1
                    ReadOnly = True
                    TabOrder = 0
                  end
                end
              end
            end
          end
          object GroupBox4: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 258
            Width = 947
            Height = 127
            Align = alClient
            Caption = ' Observa'#231#227'o '
            TabOrder = 2
            object DBMemo1: TDBMemo
              AlignWithMargins = True
              Left = 5
              Top = 20
              Width = 937
              Height = 102
              Align = alClient
              DataField = 'obs'
              DataSource = DataSource1
              TabOrder = 0
            end
          end
          object ControlBar1: TControlBar
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 947
            Height = 40
            Align = alTop
            AutoSize = True
            BevelEdges = []
            BevelKind = bkNone
            BorderWidth = 1
            DrawingStyle = dsGradient
            TabOrder = 3
            object ToolBar2: TToolBar
              AlignWithMargins = True
              Left = 11
              Top = 2
              Width = 932
              Height = 34
              AutoSize = True
              BorderWidth = 1
              ButtonHeight = 30
              ButtonWidth = 123
              Caption = 'ToolBar1'
              DisabledImages = Resources.medium_d
              DrawingStyle = dsGradient
              HotImages = Resources.medium_h
              Images = Resources.medium_n
              List = True
              ParentShowHint = False
              AllowTextButtons = True
              ShowHint = True
              TabOrder = 0
              object ToolButton31: TToolButton
                Left = 0
                Top = 0
                Action = actAprov
                Style = tbsTextButton
              end
              object ToolButton12: TToolButton
                Left = 122
                Top = 0
                Action = actReprov
                Style = tbsTextButton
              end
              object ToolButton13: TToolButton
                Left = 249
                Top = 0
                Width = 8
                Caption = 'ToolButton13'
                ImageIndex = 293
                Style = tbsSeparator
              end
              object btnSerasa: TToolButton
                Left = 257
                Top = 0
                Caption = 'Consultar Serasa'
                DropdownMenu = pmSerasa
                Enabled = False
                ImageIndex = 14
                Style = tbsTextButton
              end
            end
          end
        end
        object tsPosFin: TTabSheet
          Caption = 'Posi'#231#227'o Financeira'
          ImageIndex = 208
          object GroupBox5: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 947
            Height = 75
            Align = alTop
            Caption = ' T'#237'tulos '
            TabOrder = 0
            object Panel12: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 20
              Width = 937
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object Panel13: TPanel
                Left = 0
                Top = 0
                Width = 126
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 0
                object Label7: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 120
                  Height = 15
                  Align = alTop
                  Caption = 'Quantidade'
                  FocusControl = DBEdit6
                  ExplicitWidth = 62
                end
                object DBEdit6: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 120
                  Height = 23
                  Align = alClient
                  DataField = 'titulos'
                  DataSource = dsPosFin
                  ReadOnly = True
                  TabOrder = 0
                end
              end
              object Panel14: TPanel
                Left = 252
                Top = 0
                Width = 126
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 1
                object Label8: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 120
                  Height = 15
                  Align = alTop
                  Caption = 'A Vencer'
                  FocusControl = DBEdit7
                  ExplicitWidth = 46
                end
                object DBEdit7: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 120
                  Height = 23
                  Align = alClient
                  DataField = 'titulos_a_vencer'
                  DataSource = dsPosFin
                  ReadOnly = True
                  TabOrder = 0
                end
              end
              object Panel15: TPanel
                Left = 126
                Top = 0
                Width = 126
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                Color = 9211135
                ParentBackground = False
                TabOrder = 2
                object Label9: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 120
                  Height = 15
                  Align = alTop
                  Caption = 'Em Atraso'
                  FocusControl = DBEdit8
                  ExplicitWidth = 54
                end
                object DBEdit8: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 120
                  Height = 23
                  Align = alClient
                  DataField = 'titulos_atraso'
                  DataSource = dsPosFin
                  ReadOnly = True
                  TabOrder = 0
                end
              end
              object Panel16: TPanel
                Left = 378
                Top = 0
                Width = 126
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 3
                object Label10: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 120
                  Height = 15
                  Align = alTop
                  Caption = #205'ndice de Atrasos'
                  FocusControl = DBEdit9
                  ExplicitWidth = 90
                end
                object DBEdit9: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 120
                  Height = 23
                  Align = alClient
                  DataField = 'ptitulos_atrasados'
                  DataSource = dsPosFin
                  ReadOnly = True
                  TabOrder = 0
                end
              end
              object Panel17: TPanel
                Left = 504
                Top = 0
                Width = 126
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                Color = 4103935
                ParentBackground = False
                TabOrder = 4
                object Label11: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 120
                  Height = 15
                  Align = alTop
                  Caption = 'Quitados em Atraso'
                  FocusControl = DBEdit10
                  ExplicitWidth = 105
                end
                object DBEdit10: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 120
                  Height = 23
                  Align = alClient
                  DataField = 'titulos_quitados_atraso'
                  DataSource = dsPosFin
                  ReadOnly = True
                  TabOrder = 0
                end
              end
            end
          end
          object GroupBox6: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 84
            Width = 947
            Height = 75
            Align = alTop
            Caption = ' Valores '
            TabOrder = 1
            object Panel18: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 20
              Width = 937
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object Panel19: TPanel
                Left = 0
                Top = 0
                Width = 126
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                Color = 7133440
                ParentBackground = False
                TabOrder = 0
                object Label12: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 120
                  Height = 15
                  Align = alTop
                  Caption = 'Recebido'
                  FocusControl = DBEdit11
                  ExplicitWidth = 49
                end
                object DBEdit11: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 120
                  Height = 23
                  Align = alClient
                  DataField = 'recebido'
                  DataSource = dsPosFin
                  ReadOnly = True
                  TabOrder = 0
                end
              end
              object Panel20: TPanel
                Left = 252
                Top = 0
                Width = 126
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 1
                object Label13: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 120
                  Height = 15
                  Align = alTop
                  Caption = 'A Receber'
                  FocusControl = DBEdit12
                  ExplicitWidth = 53
                end
                object DBEdit12: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 120
                  Height = 23
                  Align = alClient
                  DataField = 'receber'
                  DataSource = dsPosFin
                  ReadOnly = True
                  TabOrder = 0
                end
              end
              object Panel21: TPanel
                Left = 126
                Top = 0
                Width = 126
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                Color = 9211135
                ParentBackground = False
                TabOrder = 2
                object Label14: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 120
                  Height = 15
                  Align = alTop
                  Caption = 'Em Atraso'
                  FocusControl = DBEdit13
                  ExplicitWidth = 54
                end
                object DBEdit13: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 120
                  Height = 23
                  Align = alClient
                  DataField = 'atrasado'
                  DataSource = dsPosFin
                  ReadOnly = True
                  TabOrder = 0
                end
              end
              object Panel22: TPanel
                Left = 378
                Top = 0
                Width = 126
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 3
                object Label15: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 120
                  Height = 15
                  Align = alTop
                  Caption = 'Total'
                  FocusControl = DBEdit14
                  ExplicitWidth = 25
                end
                object DBEdit14: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 120
                  Height = 23
                  Align = alClient
                  DataField = 'total'
                  DataSource = dsPosFin
                  ReadOnly = True
                  TabOrder = 0
                end
              end
            end
          end
          object GroupBox7: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 165
            Width = 947
            Height = 75
            Align = alTop
            Caption = ' Hist'#243'rico de Compras '
            TabOrder = 2
            object Panel23: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 20
              Width = 937
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object Panel25: TPanel
                Left = 126
                Top = 0
                Width = 126
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 0
                object Label17: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 120
                  Height = 15
                  Align = alTop
                  Caption = 'Compra mais Recente'
                  FocusControl = DBEdit16
                  ExplicitWidth = 116
                end
                object DBEdit16: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 120
                  Height = 23
                  Align = alClient
                  DataField = 'ult_compra'
                  DataSource = dsPosFin
                  ReadOnly = True
                  TabOrder = 0
                end
              end
              object Panel27: TPanel
                Left = 378
                Top = 0
                Width = 126
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 1
                object Label19: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 120
                  Height = 15
                  Align = alTop
                  Caption = 'Maior Compra'
                  FocusControl = DBEdit18
                  ExplicitWidth = 77
                end
                object DBEdit18: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 120
                  Height = 23
                  Align = alClient
                  DataField = 'maior_compra'
                  DataSource = dsPosFin
                  ReadOnly = True
                  TabOrder = 0
                end
              end
              object Panel24: TPanel
                Left = 0
                Top = 0
                Width = 126
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 2
                object Label16: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 120
                  Height = 15
                  Align = alTop
                  Caption = 'Compra mais Antiga'
                  FocusControl = DBEdit15
                  ExplicitWidth = 109
                end
                object DBEdit15: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 120
                  Height = 23
                  Align = alClient
                  DataField = 'pri_compra'
                  DataSource = dsPosFin
                  ReadOnly = True
                  TabOrder = 0
                end
              end
              object Panel26: TPanel
                Left = 252
                Top = 0
                Width = 126
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 3
                object Label18: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 120
                  Height = 15
                  Align = alTop
                  Caption = 'Menor Compra'
                  FocusControl = DBEdit17
                  ExplicitWidth = 81
                end
                object DBEdit17: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 120
                  Height = 23
                  Align = alClient
                  DataField = 'menor_compra'
                  DataSource = dsPosFin
                  ReadOnly = True
                  TabOrder = 0
                end
              end
              object Panel28: TPanel
                Left = 504
                Top = 0
                Width = 126
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 4
                object Label20: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 120
                  Height = 15
                  Align = alTop
                  Caption = 'Maior Atraso (Dias)'
                  FocusControl = DBEdit19
                  ExplicitWidth = 101
                end
                object DBEdit19: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 120
                  Height = 23
                  Align = alClient
                  DataField = 'maior_atraso'
                  DataSource = dsPosFin
                  ReadOnly = True
                  TabOrder = 0
                end
              end
            end
          end
          object GroupBox11: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 246
            Width = 947
            Height = 139
            Align = alClient
            Caption = ' Restri'#231#227'o Interna '
            TabOrder = 3
            object DBMemo2: TDBMemo
              AlignWithMargins = True
              Left = 5
              Top = 20
              Width = 937
              Height = 114
              Align = alClient
              DataField = 'restrmotiv'
              DataSource = DataSource1
              TabOrder = 0
            end
          end
        end
        object tsSerasa: TTabSheet
          Caption = 'Serasa'
          ImageIndex = 208
          object GroupBox9: TGroupBox
            AlignWithMargins = True
            Left = 564
            Top = 3
            Width = 386
            Height = 382
            Align = alClient
            Caption = ' Resumo de Ocorr'#234'ncias '
            TabOrder = 0
            object DBGrid2: TDBGrid
              Tag = 1
              AlignWithMargins = True
              Left = 5
              Top = 20
              Width = 376
              Height = 357
              Align = alClient
              BorderStyle = bsNone
              Ctl3D = False
              DataSource = dsSerasaDet
              DefaultDrawing = False
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Segoe UI'
              TitleFont.Pitch = fpVariable
              TitleFont.Style = []
              OnDrawColumnCell = DBGridDrawColumnCell
              OnEnter = DBGridEnter
              OnKeyPress = DBGridKeyPress
            end
          end
          object Panel29: TPanel
            Left = 0
            Top = 0
            Width = 561
            Height = 388
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object GroupBox8: TGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 259
              Width = 555
              Height = 126
              Align = alBottom
              Caption = ' Consulta '
              TabOrder = 0
              object Panel30: TPanel
                Left = 2
                Top = 17
                Width = 551
                Height = 50
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 0
                object Panel31: TPanel
                  Left = 0
                  Top = 0
                  Width = 117
                  Height = 50
                  Align = alLeft
                  BevelOuter = bvNone
                  TabOrder = 0
                  object Label21: TLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 111
                    Height = 15
                    Align = alTop
                    Caption = 'Documento'
                    FocusControl = DBEdit20
                    ExplicitWidth = 63
                  end
                  object DBEdit20: TDBEdit
                    AlignWithMargins = True
                    Left = 3
                    Top = 24
                    Width = 111
                    Height = 23
                    Align = alClient
                    DataField = 'documento'
                    DataSource = dsSerasa
                    ReadOnly = True
                    TabOrder = 0
                  end
                end
                object Panel32: TPanel
                  Left = 117
                  Top = 0
                  Width = 32
                  Height = 50
                  Align = alLeft
                  BevelOuter = bvNone
                  TabOrder = 1
                  object Label22: TLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 26
                    Height = 15
                    Align = alTop
                    Caption = 'UF'
                    FocusControl = DBEdit21
                    ExplicitWidth = 14
                  end
                  object DBEdit21: TDBEdit
                    AlignWithMargins = True
                    Left = 3
                    Top = 24
                    Width = 26
                    Height = 23
                    Align = alClient
                    DataField = 'uf'
                    DataSource = dsSerasa
                    ReadOnly = True
                    TabOrder = 0
                  end
                end
                object Panel33: TPanel
                  Left = 149
                  Top = 0
                  Width = 40
                  Height = 50
                  Align = alLeft
                  BevelOuter = bvNone
                  TabOrder = 2
                  object Label23: TLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 34
                    Height = 15
                    Align = alTop
                    Caption = 'Classe'
                    FocusControl = DBEdit22
                    ExplicitWidth = 33
                  end
                  object DBEdit22: TDBEdit
                    AlignWithMargins = True
                    Left = 3
                    Top = 24
                    Width = 34
                    Height = 23
                    Align = alClient
                    DataField = 'classe'
                    DataSource = dsSerasa
                    ReadOnly = True
                    TabOrder = 0
                  end
                end
                object Panel34: TPanel
                  Left = 189
                  Top = 0
                  Width = 118
                  Height = 50
                  Align = alLeft
                  BevelOuter = bvNone
                  TabOrder = 3
                  object Label24: TLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 112
                    Height = 15
                    Align = alTop
                    Caption = 'Emiss'#227'o'
                    FocusControl = DBEdit23
                    ExplicitWidth = 43
                  end
                  object DBEdit23: TDBEdit
                    AlignWithMargins = True
                    Left = 3
                    Top = 24
                    Width = 112
                    Height = 23
                    Align = alClient
                    DataField = 'emissao'
                    DataSource = dsSerasa
                    ReadOnly = True
                    TabOrder = 0
                  end
                end
                object Panel35: TPanel
                  Left = 307
                  Top = 0
                  Width = 244
                  Height = 50
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 4
                  object Label25: TLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 238
                    Height = 15
                    Align = alTop
                    Caption = 'Motivo da Consulta'
                    FocusControl = DBEdit24
                    ExplicitWidth = 104
                  end
                  object DBEdit24: TDBEdit
                    AlignWithMargins = True
                    Left = 3
                    Top = 24
                    Width = 238
                    Height = 23
                    Align = alClient
                    DataField = 'descri_1'
                    DataSource = dsSerasa
                    ReadOnly = True
                    TabOrder = 0
                  end
                end
              end
              object Panel36: TPanel
                Left = 2
                Top = 67
                Width = 551
                Height = 50
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 1
                object Panel37: TPanel
                  Left = 0
                  Top = 0
                  Width = 34
                  Height = 50
                  Align = alLeft
                  BevelOuter = bvNone
                  TabOrder = 0
                  object Label26: TLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 28
                    Height = 15
                    Align = alTop
                    Caption = 'Tipo'
                    FocusControl = DBEdit25
                    ExplicitWidth = 23
                  end
                  object DBEdit25: TDBEdit
                    AlignWithMargins = True
                    Left = 3
                    Top = 24
                    Width = 28
                    Height = 23
                    Align = alClient
                    DataField = 'tipo'
                    DataSource = dsSerasa
                    ReadOnly = True
                    TabOrder = 0
                  end
                end
                object Panel38: TPanel
                  Left = 424
                  Top = 0
                  Width = 127
                  Height = 50
                  Align = alRight
                  BevelOuter = bvNone
                  TabOrder = 1
                  object Label27: TLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 121
                    Height = 15
                    Align = alTop
                    Caption = 'Status'
                    FocusControl = DBEdit26
                    ExplicitWidth = 32
                  end
                  object DBEdit26: TDBEdit
                    AlignWithMargins = True
                    Left = 3
                    Top = 24
                    Width = 121
                    Height = 23
                    Align = alClient
                    DataField = 'status'
                    DataSource = dsSerasa
                    ReadOnly = True
                    TabOrder = 0
                  end
                end
                object Panel41: TPanel
                  Left = 34
                  Top = 0
                  Width = 325
                  Height = 50
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 2
                  object Label30: TLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 319
                    Height = 15
                    Align = alTop
                    Caption = 'Descri'#231#227'o'
                    FocusControl = DBEdit29
                    ExplicitWidth = 51
                  end
                  object DBEdit29: TDBEdit
                    AlignWithMargins = True
                    Left = 3
                    Top = 24
                    Width = 319
                    Height = 23
                    Align = alClient
                    DataField = 'nome_1'
                    DataSource = dsSerasa
                    ReadOnly = True
                    TabOrder = 0
                  end
                end
                object Panel39: TPanel
                  Left = 359
                  Top = 0
                  Width = 65
                  Height = 50
                  Align = alRight
                  BevelOuter = bvNone
                  TabOrder = 3
                  object Label28: TLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 59
                    Height = 15
                    Align = alTop
                    Caption = 'Custo'
                    FocusControl = DBEdit27
                    ExplicitWidth = 31
                  end
                  object DBEdit27: TDBEdit
                    AlignWithMargins = True
                    Left = 3
                    Top = 24
                    Width = 59
                    Height = 23
                    Align = alClient
                    DataField = 'custo'
                    DataSource = dsSerasa
                    ReadOnly = True
                    TabOrder = 0
                  end
                end
              end
            end
            object GroupBox10: TGroupBox
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 555
              Height = 250
              Align = alClient
              Caption = ' Dados Retornados '
              TabOrder = 1
              object Panel40: TPanel
                AlignWithMargins = True
                Left = 5
                Top = 90
                Width = 545
                Height = 29
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 0
                object Label29: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 145
                  Height = 23
                  Align = alLeft
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = 'Nome'
                  FocusControl = DBEdit28
                  Layout = tlCenter
                end
                object DBEdit28: TDBEdit
                  AlignWithMargins = True
                  Left = 154
                  Top = 3
                  Width = 388
                  Height = 23
                  Align = alClient
                  DataField = 'nome'
                  DataSource = dsSerasa
                  ReadOnly = True
                  TabOrder = 0
                end
              end
              object Panel42: TPanel
                AlignWithMargins = True
                Left = 5
                Top = 125
                Width = 545
                Height = 29
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 1
                object Label31: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 145
                  Height = 23
                  Align = alLeft
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = 'Registro / Funda'#231#227'o'
                  FocusControl = DBEdit30
                  Layout = tlCenter
                end
                object DBEdit30: TDBEdit
                  AlignWithMargins = True
                  Left = 154
                  Top = 3
                  Width = 388
                  Height = 23
                  Align = alClient
                  DataField = 'registro'
                  DataSource = dsSerasa
                  ReadOnly = True
                  TabOrder = 0
                end
              end
              object Panel43: TPanel
                AlignWithMargins = True
                Left = 5
                Top = 160
                Width = 545
                Height = 29
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 2
                object Label32: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 145
                  Height = 23
                  Align = alLeft
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = 'Situa'#231#227'o Cadastral'
                  FocusControl = DBEdit31
                  Layout = tlCenter
                end
                object DBEdit31: TDBEdit
                  AlignWithMargins = True
                  Left = 154
                  Top = 3
                  Width = 388
                  Height = 23
                  Align = alClient
                  DataField = 'descri'
                  DataSource = dsSerasa
                  ReadOnly = True
                  TabOrder = 0
                end
              end
              object Panel44: TPanel
                AlignWithMargins = True
                Left = 5
                Top = 20
                Width = 545
                Height = 29
                Align = alTop
                BevelOuter = bvNone
                Color = 9211135
                ParentBackground = False
                TabOrder = 3
                object Label33: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 145
                  Height = 23
                  Align = alLeft
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = 'Quantidade de Pend'#234'ncias'
                  FocusControl = DBEdit32
                  Layout = tlCenter
                end
                object DBEdit32: TDBEdit
                  AlignWithMargins = True
                  Left = 154
                  Top = 3
                  Width = 388
                  Height = 23
                  Align = alClient
                  DataField = 'qtd'
                  DataSource = dsSerasa
                  ReadOnly = True
                  TabOrder = 0
                end
              end
              object Panel45: TPanel
                AlignWithMargins = True
                Left = 5
                Top = 55
                Width = 545
                Height = 29
                Align = alTop
                BevelOuter = bvNone
                Color = 9211135
                ParentBackground = False
                TabOrder = 4
                object Label34: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 145
                  Height = 23
                  Align = alLeft
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = 'Total de Pend'#234'ncias'
                  FocusControl = DBEdit33
                  Layout = tlCenter
                end
                object DBEdit33: TDBEdit
                  AlignWithMargins = True
                  Left = 154
                  Top = 3
                  Width = 388
                  Height = 23
                  Align = alClient
                  DataField = 'total'
                  DataSource = dsSerasa
                  ReadOnly = True
                  TabOrder = 0
                end
              end
            end
          end
        end
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Width = 961
    ExplicitWidth = 961
    inherited ToolBar1: TToolBar
      inherited ToolButton2: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton5: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton9: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton6: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton1: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton8: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton3: TToolButton
        ExplicitWidth = 32
      end
      inherited tbOrder: TToolButton
        ExplicitWidth = 76
      end
      inherited tbReport: TToolButton
        ExplicitWidth = 32
      end
      inherited tbOpcao: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton10: TToolButton
        ExplicitWidth = 32
      end
    end
  end
  inherited alDef: TActionList
    Left = 392
    Top = 200
    object actAprov: TAction
      Tag = 3
      Caption = 'Aprovar An'#225'lise'
      Enabled = False
      ImageIndex = 165
      OnExecute = actProcessarAnaliseExecute
    end
    object actReprov: TAction
      Tag = 4
      Caption = 'Reprovar An'#225'lise'
      Enabled = False
      ImageIndex = 292
      OnExecute = actProcessarAnaliseExecute
    end
  end
  inherited pmRel: TPopupMenu
    Left = 432
    Top = 200
  end
  inherited pmOrder: TPopupMenu
    Left = 474
    Top = 198
  end
  inherited alRunTime: TActionList
    Left = 522
    Top = 198
  end
  inherited DataSource1: TDataSource
    Left = 872
    Top = 136
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    AfterRefresh = IBrwSrcAfterScroll
    AfterScroll = IBrwSrcAfterScroll
    SQL.Strings = (
      
        'select ca.recno, ca.status, ca.cliente, ca.serasa, ca.emissao, c' +
        'a.solicitante, ca.obs,'
      
        '       c.empresa, c.nome_chave, c.cnpj, c.cpf, a.nome, a.email, ' +
        'c.cidade, c.estado, c.telefone,'
      
        '       ca.valor, c.restricao, c.restrmotiv, an.nome analista_nom' +
        'e, an.email analista_email,'
      '       ca.analisado_em '
      '  from public.cred_analise ca'
      '       join tbclientes c'
      '         on c.codigo = ca.cliente'
      '       join vaccounts a'
      '         on a.account = ca.solicitante'
      '       left join vaccounts an'
      '         on an.account = ca.analista'
      ' where ca.status = :status')
    Params = <
      item
        DataType = ftUnknown
        Name = 'status'
        ParamType = ptUnknown
      end>
    Sequence = sIbrwSrc
    SequenceField = 'recno'
    Left = 808
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'status'
        ParamType = ptUnknown
      end>
    object IBrwSrcrecno: TLargeintField
      DisplayLabel = 'An'#225'lise'
      FieldName = 'recno'
      Required = True
    end
    object IBrwSrcstatus: TIntegerField
      FieldName = 'status'
      Visible = False
    end
    object IBrwSrcemissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'emissao'
      Required = True
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object IBrwSrcvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      DisplayFormat = ',0.#0'
    end
    object IBrwSrccliente: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'cliente'
      Required = True
    end
    object IBrwSrcempresa: TStringField
      FieldName = 'empresa'
      Visible = False
      Size = 100
    end
    object IBrwSrcnome_chave: TStringField
      DisplayLabel = 'Nome Curto'
      DisplayWidth = 25
      FieldName = 'nome_chave'
      Size = 45
    end
    object IBrwSrccnpj: TStringField
      DisplayLabel = 'C.N.P.J.'
      DisplayWidth = 18
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object IBrwSrccpf: TStringField
      DisplayLabel = 'C.P.F.'
      DisplayWidth = 14
      FieldName = 'cpf'
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object IBrwSrcserasa: TLargeintField
      FieldName = 'serasa'
      Visible = False
    end
    object IBrwSrcsolicitante: TLargeintField
      DisplayLabel = 'Solicitante'
      FieldName = 'solicitante'
      Required = True
      Visible = False
    end
    object IBrwSrcnome: TStringField
      DisplayLabel = 'Solicitante'
      DisplayWidth = 40
      FieldName = 'nome'
      Size = 150
    end
    object IBrwSrcemail: TStringField
      DisplayLabel = 'E-mail'
      DisplayWidth = 40
      FieldName = 'email'
      Size = 150
    end
    object IBrwSrcobs: TMemoField
      FieldName = 'obs'
      Visible = False
      BlobType = ftMemo
    end
    object IBrwSrccidade: TStringField
      FieldName = 'cidade'
      Visible = False
      Size = 100
    end
    object IBrwSrcestado: TStringField
      FieldName = 'estado'
      Visible = False
      Size = 2
    end
    object IBrwSrctelefone: TStringField
      FieldName = 'telefone'
      Visible = False
      Size = 100
    end
    object IBrwSrcrestricao: TStringField
      FieldName = 'restricao'
      Visible = False
      Size = 100
    end
    object IBrwSrcrestrmotiv: TMemoField
      FieldName = 'restrmotiv'
      Visible = False
      BlobType = ftMemo
    end
    object IBrwSrcanalisado_em: TDateTimeField
      DisplayLabel = 'Analisado Em'
      FieldName = 'analisado_em'
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object IBrwSrcanalista_nome: TStringField
      DisplayLabel = 'Analista'
      DisplayWidth = 40
      FieldName = 'analista_nome'
      Size = 150
    end
    object IBrwSrcanalista_email: TStringField
      DisplayLabel = 'E-mail'
      DisplayWidth = 50
      FieldName = 'analista_email'
      Size = 150
    end
  end
  inherited pmOpcao: TPopupMenu
    Left = 576
    Top = 200
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM cred_analise'
      'WHERE'
      '  cred_analise.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO cred_analise'
      '  (status)'
      'VALUES'
      '  (:status)')
    ModifySQL.Strings = (
      'UPDATE cred_analise SET'
      '  status = :status,'
      '  serasa = :serasa'
      'WHERE'
      '  cred_analise.recno = :OLD_recno')
    Left = 760
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'status'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'serasa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_recno'
        ParamType = ptUnknown
      end>
  end
  object qPosFin: TZReadOnlyQuery
    Connection = DM.Design
    SQL.Strings = (
      
        'select titulos, titulos_quitados_atraso, titulos_atraso, titulos' +
        '_a_vencer, ptitulos_atrasados,  '
      
        '       total, recebido, receber, atrasado, pri_compra, ult_compr' +
        'a, menor_compra, maior_compra,'
      '       maior_atraso'
      '  from vposicao_financeira '
      ' where cliente = :cliente;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end>
    Left = 808
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end>
    object qPosFintitulos: TLargeintField
      FieldName = 'titulos'
      ReadOnly = True
    end
    object qPosFintitulos_quitados_atraso: TLargeintField
      FieldName = 'titulos_quitados_atraso'
      ReadOnly = True
    end
    object qPosFintitulos_atraso: TLargeintField
      FieldName = 'titulos_atraso'
      ReadOnly = True
    end
    object qPosFintitulos_a_vencer: TLargeintField
      FieldName = 'titulos_a_vencer'
      ReadOnly = True
    end
    object qPosFinptitulos_atrasados: TFloatField
      FieldName = 'ptitulos_atrasados'
      ReadOnly = True
      DisplayFormat = ',0.#0 %'
    end
    object qPosFintotal: TFloatField
      FieldName = 'total'
      ReadOnly = True
      DisplayFormat = ',0.#0'
    end
    object qPosFinrecebido: TFloatField
      FieldName = 'recebido'
      ReadOnly = True
      DisplayFormat = ',0.#0'
    end
    object qPosFinreceber: TFloatField
      FieldName = 'receber'
      ReadOnly = True
      DisplayFormat = ',0.#0'
    end
    object qPosFinatrasado: TFloatField
      FieldName = 'atrasado'
      ReadOnly = True
      DisplayFormat = ',0.#0'
    end
    object qPosFinpri_compra: TDateField
      FieldName = 'pri_compra'
      ReadOnly = True
    end
    object qPosFinult_compra: TDateField
      FieldName = 'ult_compra'
      ReadOnly = True
    end
    object qPosFinmenor_compra: TFloatField
      FieldName = 'menor_compra'
      ReadOnly = True
      DisplayFormat = ',0.#0'
    end
    object qPosFinmaior_compra: TFloatField
      FieldName = 'maior_compra'
      ReadOnly = True
      DisplayFormat = ',0.#0'
    end
    object qPosFinmaior_atraso: TIntegerField
      FieldName = 'maior_atraso'
      ReadOnly = True
    end
  end
  object dsPosFin: TDataSource
    AutoEdit = False
    DataSet = qPosFin
    Left = 872
    Top = 184
  end
  object qSerasa: TZReadOnlyQuery
    Connection = DM.Design
    SQL.Strings = (
      
        'select c.recno, c.emissao, c.nome, c.registro, s.situacao, s.des' +
        'cri, s.classe, c.tipo, t.nome,'
      
        '       c.motivo, m.descri, c.custo, c.status, c.documento, c.uf,' +
        ' r.qtd, r.total'
      '  from tspeed.cred_consultas c'
      '       left join tspeed.cred_situacoes s'
      '         on s.recno = c.situacao'
      '       join tspeed.tipos t'
      '         on t.recno = c.tipo'
      '       join tspeed.cred_motivos m'
      '         on m.motivo = c.motivo'
      
        '       left join (select consulta, sum(r.qtd) qtd, sum(r.total) ' +
        'total   '
      '               from tspeed.cred_resumos r                    '
      '              group by consulta) r'
      '         on r.consulta = c.recno  '
      ' where c.recno = :serasa')
    Params = <
      item
        DataType = ftUnknown
        Name = 'serasa'
        ParamType = ptUnknown
      end>
    Left = 808
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'serasa'
        ParamType = ptUnknown
      end>
    object qSerasarecno: TLargeintField
      FieldName = 'recno'
      ReadOnly = True
    end
    object qSerasaemissao: TDateTimeField
      FieldName = 'emissao'
      ReadOnly = True
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object qSerasanome: TStringField
      FieldName = 'nome'
      ReadOnly = True
      Size = 200
    end
    object qSerasaregistro: TDateField
      FieldName = 'registro'
      ReadOnly = True
    end
    object qSerasasituacao: TIntegerField
      FieldName = 'situacao'
      ReadOnly = True
    end
    object qSerasadescri: TStringField
      FieldName = 'descri'
      ReadOnly = True
      Size = 60
    end
    object qSerasaclasse: TStringField
      FieldName = 'classe'
      ReadOnly = True
      Size = 255
    end
    object qSerasatipo: TIntegerField
      FieldName = 'tipo'
      ReadOnly = True
    end
    object qSerasanome_1: TStringField
      FieldName = 'nome_1'
      ReadOnly = True
      Size = 60
    end
    object qSerasamotivo: TIntegerField
      FieldName = 'motivo'
      ReadOnly = True
    end
    object qSerasadescri_1: TStringField
      FieldName = 'descri_1'
      ReadOnly = True
      Size = 60
    end
    object qSerasacusto: TFloatField
      FieldName = 'custo'
      ReadOnly = True
      DisplayFormat = ',0.#0'
    end
    object qSerasastatus: TStringField
      FieldName = 'status'
      ReadOnly = True
      Size = 255
    end
    object qSerasadocumento: TStringField
      FieldName = 'documento'
      ReadOnly = True
      Size = 14
    end
    object qSerasauf: TStringField
      FieldName = 'uf'
      ReadOnly = True
      Size = 2
    end
    object qSerasaqtd: TLargeintField
      FieldName = 'qtd'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object qSerasatotal: TFloatField
      FieldName = 'total'
      ReadOnly = True
      DisplayFormat = '#,0.#0'
    end
  end
  object dsSerasa: TDataSource
    AutoEdit = False
    DataSet = qSerasa
    Left = 872
    Top = 240
  end
  object qSerasaDet: TZReadOnlyQuery
    Connection = DM.Design
    SortedFields = 'descri'
    SQL.Strings = (
      
        ' select t.descri, r.qtd, r.total, r.ocorrencia_antiga, r.ocorren' +
        'cia_recente   '
      '   from tspeed.cred_resumos r'
      '        join tspeed.cred_tipos t'
      '          on t.tipo = r.tipo'
      '  where consulta = :serasa; ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'serasa'
        ParamType = ptUnknown
      end>
    IndexFieldNames = 'descri Asc'
    Left = 808
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'serasa'
        ParamType = ptUnknown
      end>
    object qSerasaDetdescri: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 40
      FieldName = 'descri'
      ReadOnly = True
      Size = 60
    end
    object qSerasaDetqtd: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'qtd'
      ReadOnly = True
    end
    object qSerasaDettotal: TFloatField
      DisplayLabel = 'Total'
      DisplayWidth = 15
      FieldName = 'total'
      ReadOnly = True
      DisplayFormat = ',0.#0'
    end
    object qSerasaDetocorrencia_antiga: TStringField
      DisplayLabel = 'Ocorr'#234'ncia Antiga'
      FieldName = 'ocorrencia_antiga'
      ReadOnly = True
      Size = 7
    end
    object qSerasaDetocorrencia_recente: TStringField
      DisplayLabel = 'Ocorr'#234'ncia Recente'
      FieldName = 'ocorrencia_recente'
      ReadOnly = True
      Size = 7
    end
  end
  object dsSerasaDet: TDataSource
    AutoEdit = False
    DataSet = qSerasaDet
    Left = 872
    Top = 296
  end
  object pmSerasa: TPopupMenu
    Left = 648
    Top = 200
  end
  object sIbrwSrc: TZSequence
    Connection = DM.Design
    SequenceName = 'public.cred_analise_recno_seq'
    Left = 712
    Top = 136
  end
  object ProcessarAnalises: TTimer
    Interval = 5000
    OnTimer = ProcessarAnalisesTimer
    Left = 240
    Top = 200
  end
end
