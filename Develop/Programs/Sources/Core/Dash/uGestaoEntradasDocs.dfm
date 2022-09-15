inherited GestaoEntradasDocs: TGestaoEntradasDocs
  Caption = 'Documentos'
  ClientHeight = 844
  ClientWidth = 1123
  ExplicitWidth = 1139
  ExplicitHeight = 883
  PixelsPerInch = 96
  TextHeight = 15
  object Splitter1: TSplitter [0]
    Left = 433
    Top = 0
    Width = 6
    Height = 844
    ExplicitHeight = 732
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 433
    Height = 844
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    object PageControl1: TPageControl
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 427
      Height = 838
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 499
      object TabSheet1: TTabSheet
        Caption = 'Documentos para o Per'#237'codo'
        ExplicitLeft = 11
        object JvDBGrid1: TJvDBGrid
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 413
          Height = 802
          Align = alClient
          BorderStyle = bsNone
          DataSource = GestaoEntradas.dsDocumentos
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
          RowsHeight = 18
          TitleRowHeight = 19
        end
      end
    end
  end
  object Panel2: TPanel [2]
    Left = 439
    Top = 0
    Width = 684
    Height = 844
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitWidth = 433
    ExplicitHeight = 732
    object PageControl2: TPageControl
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 678
      Height = 838
      ActivePage = TabSheet2
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 606
      object TabSheet2: TTabSheet
        Caption = 'Documento'
        ExplicitWidth = 281
        ExplicitHeight = 163
        object ScrollBox1: TScrollBox
          Left = 0
          Top = 0
          Width = 670
          Height = 808
          Align = alClient
          BorderStyle = bsNone
          TabOrder = 0
          ExplicitLeft = 3
          ExplicitTop = -3
          object GroupBox1: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 664
            Height = 80
            Align = alTop
            Caption = ' Cliente '
            TabOrder = 0
            object Panel3: TPanel
              Left = 2
              Top = 17
              Width = 660
              Height = 50
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              ExplicitLeft = -4
              ExplicitWidth = 588
              object Panel4: TPanel
                Left = 0
                Top = 0
                Width = 81
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 0
                ExplicitLeft = -6
                object Label1: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 75
                  Height = 15
                  Align = alTop
                  Caption = 'C'#243'digo'
                  FocusControl = DBEdit1
                  ExplicitWidth = 39
                end
                object DBEdit1: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 75
                  Height = 23
                  Align = alClient
                  DataField = 'codigo'
                  DataSource = GestaoEntradas.dsDocumentos
                  TabOrder = 0
                  ExplicitLeft = 2
                  ExplicitWidth = 154
                end
              end
              object Panel5: TPanel
                Left = 81
                Top = 0
                Width = 184
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 1
                ExplicitLeft = 84
                object Label2: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 178
                  Height = 15
                  Align = alTop
                  Caption = 'Nome Curto'
                  FocusControl = DBEdit2
                  ExplicitLeft = 24
                  ExplicitTop = 16
                  ExplicitWidth = 66
                end
                object DBEdit2: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 178
                  Height = 23
                  Align = alClient
                  DataField = 'nome_chave'
                  DataSource = GestaoEntradas.dsDocumentos
                  TabOrder = 0
                  ExplicitLeft = 24
                  ExplicitWidth = 304
                end
              end
              object Panel6: TPanel
                Left = 265
                Top = 0
                Width = 178
                Height = 50
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 2
                ExplicitLeft = 320
                ExplicitWidth = 81
                object Label3: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 172
                  Height = 15
                  Align = alTop
                  Caption = 'Raz'#227'o'
                  FocusControl = DBEdit3
                  ExplicitLeft = 48
                  ExplicitTop = 16
                  ExplicitWidth = 31
                end
                object DBEdit3: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 172
                  Height = 23
                  Align = alClient
                  DataField = 'empresa'
                  DataSource = GestaoEntradas.dsDocumentos
                  TabOrder = 0
                  ExplicitLeft = 48
                  ExplicitTop = 32
                  ExplicitWidth = 604
                end
              end
              object Panel7: TPanel
                Left = 443
                Top = 0
                Width = 125
                Height = 50
                Align = alRight
                BevelOuter = bvNone
                TabOrder = 3
                ExplicitLeft = 448
                object Label5: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 119
                  Height = 15
                  Align = alTop
                  Caption = 'CNPJ'
                  FocusControl = DBEdit5
                  ExplicitLeft = 24
                  ExplicitTop = 16
                  ExplicitWidth = 27
                end
                object DBEdit5: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 119
                  Height = 23
                  Align = alClient
                  DataField = 'cnpj'
                  DataSource = GestaoEntradas.dsDocumentos
                  TabOrder = 0
                  ExplicitLeft = 24
                  ExplicitTop = 32
                  ExplicitWidth = 274
                end
              end
              object Panel8: TPanel
                Left = 568
                Top = 0
                Width = 92
                Height = 50
                Align = alRight
                BevelOuter = bvNone
                TabOrder = 4
                object Label4: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 86
                  Height = 15
                  Align = alTop
                  Caption = 'CPF'
                  FocusControl = DBEdit4
                  ExplicitLeft = 8
                  ExplicitTop = 8
                  ExplicitWidth = 21
                end
                object DBEdit4: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 86
                  Height = 23
                  Align = alClient
                  DataField = 'cpf'
                  DataSource = GestaoEntradas.dsDocumentos
                  TabOrder = 0
                  ExplicitLeft = 8
                  ExplicitWidth = 169
                end
              end
            end
          end
          object GroupBox2: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 89
            Width = 664
            Height = 80
            Align = alTop
            Caption = ' Nota Fiscal de Entrada '
            TabOrder = 1
            ExplicitLeft = 0
            ExplicitTop = 86
            ExplicitWidth = 670
            object Panel9: TPanel
              AlignWithMargins = True
              Left = 5
              Top = 20
              Width = 654
              Height = 50
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              ExplicitLeft = 1
              ExplicitTop = 17
              ExplicitWidth = 666
              object Panel10: TPanel
                Left = 0
                Top = 0
                Width = 105
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 0
                object Label6: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 99
                  Height = 15
                  Align = alTop
                  Caption = 'NF'
                  FocusControl = DBEdit6
                  ExplicitLeft = 16
                  ExplicitTop = 8
                  ExplicitWidth = 15
                end
                object DBEdit6: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 99
                  Height = 23
                  Align = alClient
                  DataField = 'nf'
                  DataSource = GestaoEntradas.dsDocumentos
                  TabOrder = 0
                  ExplicitLeft = 16
                  ExplicitWidth = 154
                end
              end
              object Panel11: TPanel
                Left = 105
                Top = 0
                Width = 84
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 1
                ExplicitLeft = 102
                object Label7: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 78
                  Height = 15
                  Align = alTop
                  Caption = 'S'#233'rie'
                  FocusControl = DBEdit7
                  ExplicitLeft = 24
                  ExplicitTop = 0
                  ExplicitWidth = 25
                end
                object DBEdit7: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 78
                  Height = 23
                  Align = alClient
                  DataField = 'nf_serie'
                  DataSource = GestaoEntradas.dsDocumentos
                  TabOrder = 0
                  ExplicitLeft = 24
                  ExplicitTop = 16
                  ExplicitWidth = 154
                end
              end
              object Panel12: TPanel
                Left = 189
                Top = 0
                Width = 108
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 2
                object Label8: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 102
                  Height = 15
                  Align = alTop
                  Caption = 'Emiss'#227'o'
                  FocusControl = DBEdit8
                  ExplicitLeft = 16
                  ExplicitTop = 16
                  ExplicitWidth = 43
                end
                object DBEdit8: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 102
                  Height = 23
                  Align = alClient
                  DataField = 'nf_emissao'
                  DataSource = GestaoEntradas.dsDocumentos
                  TabOrder = 0
                  ExplicitLeft = 16
                  ExplicitTop = 32
                  ExplicitWidth = 154
                end
              end
              object Panel13: TPanel
                Left = 297
                Top = 0
                Width = 120
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 3
                object Label9: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 114
                  Height = 15
                  Align = alTop
                  Caption = 'Valor'
                  FocusControl = DBEdit9
                  ExplicitLeft = 40
                  ExplicitTop = 16
                  ExplicitWidth = 26
                end
                object DBEdit9: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 114
                  Height = 23
                  Align = alClient
                  DataField = 'nf_valor'
                  DataSource = GestaoEntradas.dsDocumentos
                  TabOrder = 0
                  ExplicitLeft = 40
                  ExplicitTop = 32
                  ExplicitWidth = 154
                end
              end
            end
          end
          object GroupBox3: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 175
            Width = 664
            Height = 80
            Align = alTop
            Caption = ' Frascos '
            TabOrder = 2
            ExplicitTop = 169
            object Panel14: TPanel
              Left = 2
              Top = 17
              Width = 660
              Height = 50
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              ExplicitLeft = 1
              object Panel15: TPanel
                Left = 0
                Top = 0
                Width = 100
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 0
                ExplicitLeft = -6
                object Label10: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 94
                  Height = 15
                  Align = alTop
                  Caption = 'Entradas'
                  FocusControl = DBEdit10
                  ExplicitLeft = 8
                  ExplicitWidth = 45
                end
                object DBEdit10: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 94
                  Height = 23
                  Align = alClient
                  DataField = 'frascos_total'
                  DataSource = GestaoEntradas.dsDocumentos
                  TabOrder = 0
                  ExplicitLeft = 8
                  ExplicitWidth = 229
                end
              end
              object Panel16: TPanel
                Left = 100
                Top = 0
                Width = 100
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 1
                object Label11: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 94
                  Height = 15
                  Align = alTop
                  Caption = 'Conformes'
                  FocusControl = DBEdit11
                  ExplicitWidth = 59
                end
                object DBEdit11: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 94
                  Height = 23
                  Align = alClient
                  DataField = 'frascos_conformes'
                  DataSource = GestaoEntradas.dsDocumentos
                  TabOrder = 0
                  ExplicitLeft = 24
                  ExplicitTop = 40
                  ExplicitWidth = 229
                end
              end
              object Panel17: TPanel
                Left = 200
                Top = 0
                Width = 100
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 2
                object Label12: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 94
                  Height = 15
                  Align = alTop
                  Caption = 'N'#227'o Conformes'
                  FocusControl = DBEdit12
                  ExplicitWidth = 84
                end
                object DBEdit12: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 94
                  Height = 23
                  Align = alClient
                  DataField = 'frascos_naoconformes'
                  DataSource = GestaoEntradas.dsDocumentos
                  TabOrder = 0
                  ExplicitLeft = 40
                  ExplicitTop = 40
                  ExplicitWidth = 229
                end
              end
              object Panel18: TPanel
                Left = 300
                Top = 0
                Width = 100
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 3
                object Label13: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 94
                  Height = 15
                  Align = alTop
                  Caption = 'V'#225'lidos'
                  FocusControl = DBEdit13
                  ExplicitLeft = 24
                  ExplicitTop = 16
                  ExplicitWidth = 37
                end
                object DBEdit13: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 94
                  Height = 23
                  Align = alClient
                  DataField = 'frascos_validos'
                  DataSource = GestaoEntradas.dsDocumentos
                  TabOrder = 0
                  ExplicitLeft = 24
                  ExplicitTop = 32
                  ExplicitWidth = 229
                end
              end
              object Panel19: TPanel
                Left = 400
                Top = 0
                Width = 100
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 4
                object Label14: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 94
                  Height = 15
                  Align = alTop
                  Caption = 'Vazios'
                  FocusControl = DBEdit14
                  ExplicitWidth = 32
                end
                object DBEdit14: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 94
                  Height = 23
                  Align = alClient
                  DataField = 'frascos_vazios'
                  DataSource = GestaoEntradas.dsDocumentos
                  TabOrder = 0
                  ExplicitLeft = 32
                  ExplicitTop = 32
                  ExplicitWidth = 229
                end
              end
              object Panel20: TPanel
                Left = 500
                Top = 0
                Width = 100
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 5
                object Label15: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 94
                  Height = 15
                  Align = alTop
                  Caption = 'Quebrados'
                  FocusControl = DBEdit15
                  ExplicitWidth = 58
                end
                object DBEdit15: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 94
                  Height = 23
                  Align = alClient
                  DataField = 'frascos_quebrados'
                  DataSource = GestaoEntradas.dsDocumentos
                  TabOrder = 0
                  ExplicitLeft = 40
                  ExplicitTop = 32
                  ExplicitWidth = 229
                end
              end
            end
          end
          object GroupBox4: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 261
            Width = 664
            Height = 80
            Align = alTop
            Caption = ' Seringas '
            TabOrder = 3
            ExplicitTop = 255
            object Panel21: TPanel
              Left = 2
              Top = 17
              Width = 660
              Height = 50
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object Panel22: TPanel
                Left = 0
                Top = 0
                Width = 100
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 0
                object Label16: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 94
                  Height = 15
                  Align = alTop
                  Caption = 'Entradas'
                  FocusControl = DBEdit16
                  ExplicitWidth = 45
                end
                object DBEdit16: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 94
                  Height = 23
                  Align = alClient
                  DataField = 'seringas_total'
                  DataSource = GestaoEntradas.dsDocumentos
                  TabOrder = 0
                end
              end
              object Panel23: TPanel
                Left = 100
                Top = 0
                Width = 100
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 1
                object Label17: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 94
                  Height = 15
                  Align = alTop
                  Caption = 'Conformes'
                  FocusControl = DBEdit17
                  ExplicitWidth = 59
                end
                object DBEdit17: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 94
                  Height = 23
                  Align = alClient
                  DataField = 'seringas_conformes'
                  DataSource = GestaoEntradas.dsDocumentos
                  TabOrder = 0
                end
              end
              object Panel24: TPanel
                Left = 200
                Top = 0
                Width = 100
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 2
                object Label18: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 94
                  Height = 15
                  Align = alTop
                  Caption = 'N'#227'o Conformes'
                  FocusControl = DBEdit18
                  ExplicitWidth = 84
                end
                object DBEdit18: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 94
                  Height = 23
                  Align = alClient
                  DataField = 'seringas_naoconformes'
                  DataSource = GestaoEntradas.dsDocumentos
                  TabOrder = 0
                end
              end
              object Panel25: TPanel
                Left = 300
                Top = 0
                Width = 100
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 3
                object Label19: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 94
                  Height = 15
                  Align = alTop
                  Caption = 'V'#225'lidas'
                  FocusControl = DBEdit19
                  ExplicitWidth = 36
                end
                object DBEdit19: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 94
                  Height = 23
                  Align = alClient
                  DataField = 'seringas_validas'
                  DataSource = GestaoEntradas.dsDocumentos
                  TabOrder = 0
                end
              end
              object Panel26: TPanel
                Left = 400
                Top = 0
                Width = 100
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 4
                object Label20: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 94
                  Height = 15
                  Align = alTop
                  Caption = 'Vazios'
                  FocusControl = DBEdit20
                  ExplicitWidth = 32
                end
                object DBEdit20: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 94
                  Height = 23
                  Align = alClient
                  DataField = 'seringas_vazios'
                  DataSource = GestaoEntradas.dsDocumentos
                  TabOrder = 0
                end
              end
              object Panel27: TPanel
                Left = 500
                Top = 0
                Width = 100
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 5
                object Label21: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 94
                  Height = 15
                  Align = alTop
                  Caption = 'Quebradas'
                  FocusControl = DBEdit21
                  ExplicitWidth = 57
                end
                object DBEdit21: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 94
                  Height = 23
                  Align = alClient
                  DataField = 'seringas_quebrados'
                  DataSource = GestaoEntradas.dsDocumentos
                  TabOrder = 0
                end
              end
            end
          end
          object GroupBox5: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 347
            Width = 664
            Height = 80
            Align = alTop
            Caption = ' Totais '
            TabOrder = 4
            ExplicitLeft = -7
            ExplicitTop = 433
            object Panel28: TPanel
              Left = 2
              Top = 17
              Width = 660
              Height = 50
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object Panel29: TPanel
                Left = 0
                Top = 0
                Width = 100
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 0
                object Label22: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 94
                  Height = 15
                  Align = alTop
                  Caption = 'Entradas'
                  FocusControl = DBEdit22
                  ExplicitWidth = 45
                end
                object DBEdit22: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 94
                  Height = 23
                  Align = alClient
                  DataField = 'total'
                  DataSource = GestaoEntradas.dsDocumentos
                  TabOrder = 0
                end
              end
              object Panel30: TPanel
                Left = 100
                Top = 0
                Width = 100
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 1
                object Label23: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 94
                  Height = 15
                  Align = alTop
                  Caption = 'Conformes'
                  FocusControl = DBEdit23
                  ExplicitWidth = 59
                end
                object DBEdit23: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 94
                  Height = 23
                  Align = alClient
                  DataField = 'conformes'
                  DataSource = GestaoEntradas.dsDocumentos
                  TabOrder = 0
                end
              end
              object Panel31: TPanel
                Left = 200
                Top = 0
                Width = 100
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 2
                object Label24: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 94
                  Height = 15
                  Align = alTop
                  Caption = 'N'#227'o Conformes'
                  FocusControl = DBEdit24
                  ExplicitWidth = 84
                end
                object DBEdit24: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 94
                  Height = 23
                  Align = alClient
                  DataField = 'naoconformes'
                  DataSource = GestaoEntradas.dsDocumentos
                  TabOrder = 0
                end
              end
              object Panel32: TPanel
                Left = 300
                Top = 0
                Width = 100
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 3
                object Label25: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 94
                  Height = 15
                  Align = alTop
                  Caption = 'V'#225'lidas'
                  FocusControl = DBEdit25
                  ExplicitWidth = 36
                end
                object DBEdit25: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 94
                  Height = 23
                  Align = alClient
                  DataField = 'validas'
                  DataSource = GestaoEntradas.dsDocumentos
                  TabOrder = 0
                end
              end
              object Panel33: TPanel
                Left = 400
                Top = 0
                Width = 100
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 4
                object Label26: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 94
                  Height = 15
                  Align = alTop
                  Caption = 'Vazios'
                  FocusControl = DBEdit26
                  ExplicitWidth = 32
                end
                object DBEdit26: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 94
                  Height = 23
                  Align = alClient
                  DataField = 'vazios'
                  DataSource = GestaoEntradas.dsDocumentos
                  TabOrder = 0
                end
              end
              object Panel34: TPanel
                Left = 500
                Top = 0
                Width = 100
                Height = 50
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 5
                object Label27: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 94
                  Height = 15
                  Align = alTop
                  Caption = 'Quebradas'
                  FocusControl = DBEdit27
                  ExplicitWidth = 57
                end
                object DBEdit27: TDBEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 24
                  Width = 94
                  Height = 23
                  Align = alClient
                  DataField = 'quebrados'
                  DataSource = GestaoEntradas.dsDocumentos
                  TabOrder = 0
                end
              end
            end
          end
        end
      end
    end
  end
  inherited alDef: TActionList
    Left = 912
    Top = 65528
  end
end
