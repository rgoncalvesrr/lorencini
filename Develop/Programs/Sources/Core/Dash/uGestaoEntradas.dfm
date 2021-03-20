inherited GestaoEntradas: TGestaoEntradas
  Caption = 'Entradas de Frascos e Seringas'
  ClientHeight = 729
  ClientWidth = 1008
  ExplicitWidth = 1024
  ExplicitHeight = 768
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 702
    Width = 1002
    ExplicitTop = 702
    ExplicitWidth = 1002
  end
  inherited Panel1: TPanel
    Width = 1008
    ExplicitWidth = 1008
    inherited pctlFind: TPageControl
      Width = 998
      ExplicitWidth = 998
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 990
        ExplicitHeight = 75
        inherited BitBtn2: TBitBtn
          Left = 889
          ExplicitLeft = 889
        end
        object Panel8: TPanel
          Left = 0
          Top = 0
          Width = 191
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Label5: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 185
            Height = 15
            Align = alTop
            Caption = 'Entrada'
            Transparent = True
            ExplicitWidth = 40
          end
          object Label6: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 53
            Width = 185
            Height = 15
            Align = alTop
            Caption = '01/02/2021 a 28/02/2021'
            Transparent = True
            ExplicitWidth = 128
          end
          inline FrameData1: TFrameData
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 185
            Height = 23
            Align = alTop
            AutoSize = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Pitch = fpVariable
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            ExplicitLeft = 3
            ExplicitTop = 24
            ExplicitWidth = 185
            inherited ComboBox1: TComboBox
              Width = 185
              ItemIndex = 2
              Text = 'Trimestralmente'
              ExplicitWidth = 185
            end
            inherited CCalendarDiff1: TCCalendarDiff
              Interval = diMonthly
              Date = 44244.926457430560000000
              DisplayInterval = Label6
              OnChange = FrameData1CCalendarDiff1Change
            end
          end
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 990
        ExplicitHeight = 75
      end
    end
  end
  inherited Panel2: TPanel
    Width = 1008
    Height = 570
    ExplicitWidth = 1008
    ExplicitHeight = 570
    inherited PageControl1: TPageControl
      Width = 1002
      Height = 564
      OnResize = PageControl1Resize
      ExplicitWidth = 1002
      ExplicitHeight = 564
      inherited TabSheet1: TTabSheet
        Caption = 'Entradas'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 994
        ExplicitHeight = 534
        inherited DBGrid1: TDBGrid
          Width = 988
          Height = 151
        end
        object PageControl3: TPageControl
          AlignWithMargins = True
          Left = 3
          Top = 160
          Width = 988
          Height = 371
          ActivePage = TabSheet8
          Align = alBottom
          TabOrder = 1
          TabStop = False
          OnChange = PageControl1Change
          OnMouseDown = PageControl1MouseDown
          object TabSheet8: TTabSheet
            Caption = 'Movimenta'#231#227'o'
            object DBGrid5: TDBGrid
              Tag = 1
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 974
              Height = 335
              Align = alClient
              BorderStyle = bsNone
              Ctl3D = False
              DataSource = dsDiaria
              DefaultDrawing = False
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ParentCtl3D = False
              PopupMenu = pmOpcao
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Segoe UI'
              TitleFont.Pitch = fpVariable
              TitleFont.Style = []
              OnDrawColumnCell = DBGridDrawColumnCell
              OnDblClick = DBGridDblClick
              OnEnter = DBGridEnter
              OnKeyPress = DBGridKeyPress
            end
          end
          object TabSheet11: TTabSheet
            Caption = 'Documentos'
            ImageIndex = 3
            object DBGrid2: TDBGrid
              Tag = 1
              AlignWithMargins = True
              Left = 3
              Top = 47
              Width = 362
              Height = 291
              Align = alClient
              BorderStyle = bsNone
              Ctl3D = False
              DataSource = dsDocumentos
              DefaultDrawing = False
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ParentCtl3D = False
              PopupMenu = pmOpcao
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Segoe UI'
              TitleFont.Pitch = fpVariable
              TitleFont.Style = []
              OnDrawColumnCell = DBGridDrawColumnCell
              OnDblClick = actViewDocsExecute
              OnEnter = DBGridEnter
              OnKeyPress = DBGridKeyPress
            end
            object ControlBar1: TControlBar
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 974
              Height = 38
              Align = alTop
              AutoSize = True
              BevelEdges = []
              BevelKind = bkNone
              DrawingStyle = dsGradient
              TabOrder = 1
              object ToolBar2: TToolBar
                Left = 11
                Top = 2
                Width = 818
                Height = 34
                AutoSize = True
                BorderWidth = 1
                ButtonHeight = 30
                ButtonWidth = 80
                Caption = 'ToolBar1'
                DisabledImages = Resources.medium_d
                DrawingStyle = dsGradient
                EdgeInner = esNone
                EdgeOuter = esNone
                HotImages = Resources.medium_h
                Images = Resources.medium_n
                List = True
                ParentShowHint = False
                AllowTextButtons = True
                ShowHint = True
                TabOrder = 0
                object ToolButton14: TToolButton
                  Left = 0
                  Top = 0
                  Action = actViewDocs
                  AutoSize = True
                  Style = tbsTextButton
                end
              end
            end
            object Panel3: TPanel
              Left = 368
              Top = 44
              Width = 612
              Height = 297
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 2
              object GroupBox2: TGroupBox
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 606
                Height = 80
                Align = alTop
                Caption = ' Nota Fiscal de Entrada '
                TabOrder = 0
                object Panel9: TPanel
                  AlignWithMargins = True
                  Left = 5
                  Top = 20
                  Width = 596
                  Height = 50
                  Align = alTop
                  BevelOuter = bvNone
                  TabOrder = 0
                  object Panel10: TPanel
                    Left = 0
                    Top = 0
                    Width = 105
                    Height = 50
                    Align = alLeft
                    BevelOuter = bvNone
                    TabOrder = 0
                    object Label1: TLabel
                      AlignWithMargins = True
                      Left = 3
                      Top = 3
                      Width = 99
                      Height = 15
                      Align = alTop
                      Caption = 'NF'
                      FocusControl = DBEdit6
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
                      DataSource = dsDocumentos
                      TabOrder = 0
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
                    object Label7: TLabel
                      AlignWithMargins = True
                      Left = 3
                      Top = 3
                      Width = 78
                      Height = 15
                      Align = alTop
                      Caption = 'S'#233'rie'
                      FocusControl = DBEdit7
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
                      DataSource = dsDocumentos
                      TabOrder = 0
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
                      DataSource = dsDocumentos
                      TabOrder = 0
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
                      DataSource = dsDocumentos
                      TabOrder = 0
                    end
                  end
                end
              end
              object GroupBox3: TGroupBox
                AlignWithMargins = True
                Left = 3
                Top = 89
                Width = 606
                Height = 80
                Align = alTop
                Caption = ' Frascos '
                TabOrder = 1
                object Panel14: TPanel
                  Left = 2
                  Top = 17
                  Width = 602
                  Height = 50
                  Align = alTop
                  BevelOuter = bvNone
                  TabOrder = 0
                  object Panel15: TPanel
                    Left = 0
                    Top = 0
                    Width = 100
                    Height = 50
                    Align = alLeft
                    BevelOuter = bvNone
                    TabOrder = 0
                    object Label10: TLabel
                      AlignWithMargins = True
                      Left = 3
                      Top = 3
                      Width = 94
                      Height = 15
                      Align = alTop
                      Caption = 'Entradas'
                      FocusControl = DBEdit10
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
                      DataSource = dsDocumentos
                      TabOrder = 0
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
                      DataSource = dsDocumentos
                      TabOrder = 0
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
                      DataSource = dsDocumentos
                      TabOrder = 0
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
                      DataSource = dsDocumentos
                      TabOrder = 0
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
                      DataSource = dsDocumentos
                      TabOrder = 0
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
                      DataSource = dsDocumentos
                      TabOrder = 0
                    end
                  end
                end
              end
              object GroupBox4: TGroupBox
                AlignWithMargins = True
                Left = 3
                Top = 175
                Width = 606
                Height = 80
                Align = alTop
                Caption = ' Seringas '
                TabOrder = 2
                object Panel21: TPanel
                  Left = 2
                  Top = 17
                  Width = 602
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
                      DataSource = dsDocumentos
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
                      DataSource = dsDocumentos
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
                      DataSource = dsDocumentos
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
                      DataSource = dsDocumentos
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
                      DataSource = dsDocumentos
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
                      DataSource = dsDocumentos
                      TabOrder = 0
                    end
                  end
                end
              end
              object GroupBox5: TGroupBox
                AlignWithMargins = True
                Left = 3
                Top = 261
                Width = 606
                Height = 80
                Align = alTop
                Caption = ' Totais '
                TabOrder = 3
                object Panel28: TPanel
                  Left = 2
                  Top = 17
                  Width = 602
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
                      DataSource = dsDocumentos
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
                      DataSource = dsDocumentos
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
                      DataSource = dsDocumentos
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
                      DataSource = dsDocumentos
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
                      DataSource = dsDocumentos
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
                      DataSource = dsDocumentos
                      TabOrder = 0
                    end
                  end
                end
              end
            end
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Entradas de Frascos no Per'#237'odo'
        ImageIndex = 1
        object PageControl2: TPageControl
          AlignWithMargins = True
          Left = 3
          Top = 225
          Width = 988
          Height = 306
          ActivePage = TabSheet5
          Align = alBottom
          TabOrder = 0
          TabStop = False
          OnChange = PageControl1Change
          OnMouseDown = PageControl1MouseDown
          object TabSheet5: TTabSheet
            Caption = 'Frascos'
            ImageIndex = 1
            object DBGrid3: TDBGrid
              Tag = 1
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 974
              Height = 270
              Align = alClient
              BorderStyle = bsNone
              Ctl3D = False
              DataSource = dsDFrascos
              DefaultDrawing = False
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ParentCtl3D = False
              PopupMenu = pmOpcao
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Segoe UI'
              TitleFont.Pitch = fpVariable
              TitleFont.Style = []
              OnDrawColumnCell = DBGridDrawColumnCell
              OnDblClick = DBGridDblClick
              OnEnter = DBGridEnter
              OnKeyPress = DBGridKeyPress
            end
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Entradas de Seringas no Per'#237'odo'
        ImageIndex = 2
        object PageControl4: TPageControl
          AlignWithMargins = True
          Left = 3
          Top = 225
          Width = 988
          Height = 306
          ActivePage = TabSheet7
          Align = alBottom
          TabOrder = 0
          TabStop = False
          OnChange = PageControl1Change
          OnMouseDown = PageControl1MouseDown
          object TabSheet7: TTabSheet
            Caption = 'Seringas'
            ImageIndex = 2
            object DBGrid6: TDBGrid
              Tag = 1
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 974
              Height = 270
              Align = alClient
              BorderStyle = bsNone
              Ctl3D = False
              DataSource = dsDSeringas
              DefaultDrawing = False
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ParentCtl3D = False
              PopupMenu = pmOpcao
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Segoe UI'
              TitleFont.Pitch = fpVariable
              TitleFont.Style = []
              OnDrawColumnCell = DBGridDrawColumnCell
              OnDblClick = DBGridDblClick
              OnEnter = DBGridEnter
              OnKeyPress = DBGridKeyPress
            end
          end
        end
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Width = 1002
    ExplicitWidth = 1002
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
    Top = 64
    object actViewDocs: TAction
      Caption = 'Detalhes'
      ImageIndex = 401
      OnExecute = actViewDocsExecute
    end
  end
  inherited pmRel: TPopupMenu
    Left = 376
    Top = 64
  end
  inherited pmOrder: TPopupMenu
    Left = 424
    Top = 64
  end
  inherited alRunTime: TActionList
    Left = 480
    Top = 64
  end
  inherited DataSource1: TDataSource
    Left = 216
    Top = 184
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    AfterRefresh = IBrwSrcAfterRefresh
    AfterScroll = IBrwSrcAfterRefresh
    OnCalcFields = IBrwSrcCalcFields
    SQL.Strings = (
      
        'select cast(to_char(p.emissao, '#39'yyyymm'#39') as varchar(6)) competen' +
        'cia, '
      '       min(p.emissao) emissaode, max(p.emissao) emissaoate,'
      '       sum(sys_iif(r.status = 1, 1, 0)) conformes,'
      '       sum(sys_iif(r.status = 2, 1, 0)) naoconformes,'
      '       sum(sys_iif(r.status = 3, 1, 0)) vazios,'
      '       sum(sys_iif(r.status = 4, 1, 0)) quebrados'
      '  from labport p'
      '       join labret r'
      '         on r.labport_recno = p.recno'
      '       join labprocxequip e'
      '         on e.amostra = r.amostra'
      ' where p.operac = 2'
      '   and p.status = 2'
      
        '   and cast(p.emissao as date) between :emissaode and :emissaoat' +
        'e'
      ' group by cast(to_char(p.emissao, '#39'yyyymm'#39') as varchar(6))')
    Params = <
      item
        DataType = ftUnknown
        Name = 'emissaode'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emissaoate'
        ParamType = ptUnknown
      end>
    Left = 160
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emissaode'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emissaoate'
        ParamType = ptUnknown
      end>
    object IBrwSrccompetencia: TStringField
      FieldName = 'competencia'
      ReadOnly = True
      Visible = False
      Size = 6
    end
    object IBrwSrccompet: TStringField
      DisplayLabel = 'Compet'#234'ncia'
      FieldKind = fkCalculated
      FieldName = 'compet'
      EditMask = '99/9999;0;'
      Size = 6
      Calculated = True
    end
    object IBrwSrctotal: TLargeintField
      DisplayLabel = 'Entradas'
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
    object IBrwSrcconformes: TLargeintField
      DisplayLabel = 'Conformes'
      FieldName = 'conformes'
      ReadOnly = True
    end
    object IBrwSrcnaoconformes: TLargeintField
      DisplayLabel = 'N'#227'o Conformes'
      FieldName = 'naoconformes'
      ReadOnly = True
    end
    object IBrwSrcvalidas: TLargeintField
      DisplayLabel = 'Entradas V'#225'lidas'
      FieldKind = fkCalculated
      FieldName = 'validas'
      Calculated = True
    end
    object IBrwSrcvazios: TLargeintField
      DisplayLabel = 'Vazios'
      FieldName = 'vazios'
      ReadOnly = True
    end
    object IBrwSrcquebrados: TLargeintField
      DisplayLabel = 'Quebrados'
      FieldName = 'quebrados'
      ReadOnly = True
    end
    object IBrwSrcivalidos: TFloatField
      DisplayLabel = #205'ndice V'#225'lidos'
      FieldKind = fkCalculated
      FieldName = 'ivalidos'
      DisplayFormat = ',0.#0%'
      Calculated = True
    end
    object IBrwSrcivazios: TFloatField
      DisplayLabel = #205'ndice de Vazios'
      FieldKind = fkCalculated
      FieldName = 'ivazios'
      DisplayFormat = ',0.#0%'
      Calculated = True
    end
    object IBrwSrciquebrados: TFloatField
      DisplayLabel = #205'ndice de Quebrados'
      FieldKind = fkCalculated
      FieldName = 'iquebrados'
      DisplayFormat = ',0.#0%'
      Calculated = True
    end
    object IBrwSrcemissaode: TDateTimeField
      FieldName = 'emissaode'
      ReadOnly = True
      Visible = False
    end
    object IBrwSrcemissaoate: TDateTimeField
      FieldName = 'emissaoate'
      ReadOnly = True
      Visible = False
    end
  end
  inherited pmOpcao: TPopupMenu
    Left = 536
    Top = 64
  end
  inherited zIBrwSrc: TZUpdateSQL
    Left = 104
    Top = 184
  end
  object qDiaria: TZQuery
    Connection = DM.Design
    OnCalcFields = qDiariaCalcFields
    SQL.Strings = (
      'select cast(p.emissao as date) emissao, '
      '       sum(sys_iif(r.status = 1, 1, 0)) conformes,'
      '       sum(sys_iif(r.status = 2, 1, 0)) naoconformes,'
      '       sum(sys_iif(r.status = 3, 1, 0)) vazios,'
      '       sum(sys_iif(r.status = 4, 1, 0)) quebrados'
      '  from labport p'
      '       join labret r'
      '         on r.labport_recno = p.recno'
      '       join labprocxequip e'
      '         on e.amostra = r.amostra'
      ' where p.operac = 2'
      '   and p.status = 2'
      
        '   and cast(p.emissao as date) between :emissaode and :emissaoat' +
        'e'
      ' group by cast(p.emissao as date)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'emissaode'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emissaoate'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    Left = 344
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emissaode'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emissaoate'
        ParamType = ptUnknown
      end>
    object qDiariaemissao: TDateField
      DisplayLabel = 'Entrada'
      FieldName = 'emissao'
      ReadOnly = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qDiariatotal: TLargeintField
      DisplayLabel = 'Entradas'
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
    object qDiariaconformes: TLargeintField
      DisplayLabel = 'Conformes'
      FieldName = 'conformes'
      ReadOnly = True
    end
    object qDiarianaoconformes: TLargeintField
      DisplayLabel = 'N'#227'o Conformes'
      FieldName = 'naoconformes'
      ReadOnly = True
    end
    object qDiariavalidas: TLargeintField
      DisplayLabel = 'Entradas V'#225'lidas'
      FieldKind = fkCalculated
      FieldName = 'validas'
      Calculated = True
    end
    object qDiariavazios: TLargeintField
      DisplayLabel = 'Vazios'
      FieldName = 'vazios'
      ReadOnly = True
    end
    object qDiariaquebrados: TLargeintField
      DisplayLabel = 'Quebrados'
      FieldName = 'quebrados'
      ReadOnly = True
    end
    object qDiariaivalidos: TFloatField
      DisplayLabel = #205'ndice Validos'
      FieldKind = fkCalculated
      FieldName = 'ivalidos'
      DisplayFormat = ',0.#0%'
      Calculated = True
    end
    object qDiariaivazios: TFloatField
      DisplayLabel = #205'ndice Vazios'
      FieldKind = fkCalculated
      FieldName = 'ivazios'
      DisplayFormat = ',0.#0%'
      Calculated = True
    end
    object qDiariaiquebrados: TFloatField
      DisplayLabel = #205'ndice Quebrados'
      FieldKind = fkCalculated
      FieldName = 'iquebrados'
      DisplayFormat = ',0.#0%'
      Calculated = True
    end
  end
  object dsDiaria: TDataSource
    AutoEdit = False
    DataSet = qDiaria
    Left = 408
    Top = 176
  end
  object qFrascos: TZQuery
    Connection = DM.Design
    AfterRefresh = qFrascosAfterRefresh
    AfterScroll = qFrascosAfterRefresh
    OnCalcFields = IBrwSrcCalcFields
    UpdateObject = zIBrwSrc
    SQL.Strings = (
      
        'select cast(to_char(p.emissao, '#39'yyyymm'#39') as varchar(6)) competen' +
        'cia, '
      '       min(p.emissao) emissaode, max(p.emissao) emissaoate,'
      '       sum(sys_iif(r.status = 1, 1, 0)) conformes,'
      '       sum(sys_iif(r.status = 2, 1, 0)) naoconformes,'
      '       sum(sys_iif(r.status = 3, 1, 0)) vazios,'
      '       sum(sys_iif(r.status = 4, 1, 0)) quebrados'
      '  from labport p'
      '       join labret r'
      '         on r.labport_recno = p.recno'
      '       join labprocxequip e'
      '         on e.amostra = r.amostra'
      '        and e.tipo = 1 '
      ' where p.operac = 2'
      '   and p.status = 2'
      
        '   and cast(p.emissao as date) between :emissaode and :emissaoat' +
        'e'
      ' group by cast(to_char(p.emissao, '#39'yyyymm'#39') as varchar(6))')
    Params = <
      item
        DataType = ftUnknown
        Name = 'emissaode'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emissaoate'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    Left = 160
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emissaode'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emissaoate'
        ParamType = ptUnknown
      end>
    object StringField1: TStringField
      FieldName = 'competencia'
      ReadOnly = True
      Visible = False
      Size = 6
    end
    object StringField2: TStringField
      DisplayLabel = 'Compet'#234'ncia'
      FieldKind = fkCalculated
      FieldName = 'compet'
      EditMask = '99/9999;0;'
      Size = 6
      Calculated = True
    end
    object LargeintField1: TLargeintField
      DisplayLabel = 'Entradas'
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
    object LargeintField2: TLargeintField
      DisplayLabel = 'Conformes'
      FieldName = 'conformes'
      ReadOnly = True
    end
    object LargeintField3: TLargeintField
      DisplayLabel = 'N'#227'o Conformes'
      FieldName = 'naoconformes'
      ReadOnly = True
    end
    object LargeintField4: TLargeintField
      DisplayLabel = 'Entradas V'#225'lidas'
      FieldKind = fkCalculated
      FieldName = 'validas'
      Calculated = True
    end
    object LargeintField5: TLargeintField
      DisplayLabel = 'Vazios'
      FieldName = 'vazios'
      ReadOnly = True
    end
    object LargeintField6: TLargeintField
      DisplayLabel = 'Quebrados'
      FieldName = 'quebrados'
      ReadOnly = True
    end
    object FloatField1: TFloatField
      DisplayLabel = #205'ndice V'#225'lidos'
      FieldKind = fkCalculated
      FieldName = 'ivalidos'
      DisplayFormat = ',0.#0%'
      Calculated = True
    end
    object FloatField2: TFloatField
      DisplayLabel = #205'ndice de Vazios'
      FieldKind = fkCalculated
      FieldName = 'ivazios'
      DisplayFormat = ',0.#0%'
      Calculated = True
    end
    object FloatField3: TFloatField
      DisplayLabel = #205'ndice de Quebrados'
      FieldKind = fkCalculated
      FieldName = 'iquebrados'
      DisplayFormat = ',0.#0%'
      Calculated = True
    end
    object qFrascosemissaode: TDateTimeField
      FieldName = 'emissaode'
      ReadOnly = True
      Visible = False
    end
    object qFrascosemissaoate: TDateTimeField
      FieldName = 'emissaoate'
      ReadOnly = True
      Visible = False
    end
  end
  object dsFrascos: TDataSource
    AutoEdit = False
    DataSet = qFrascos
    Left = 216
    Top = 232
  end
  object qSeringas: TZQuery
    Connection = DM.Design
    AfterRefresh = qSeringasAfterRefresh
    AfterScroll = qSeringasAfterRefresh
    OnCalcFields = IBrwSrcCalcFields
    UpdateObject = zIBrwSrc
    SQL.Strings = (
      
        'select cast(to_char(p.emissao, '#39'yyyymm'#39') as varchar(6)) competen' +
        'cia, '
      '       min(p.emissao) emissaode, max(p.emissao) emissaoate,'
      '       sum(sys_iif(r.status = 1, 1, 0)) conformes,'
      '       sum(sys_iif(r.status = 2, 1, 0)) naoconformes,'
      '       sum(sys_iif(r.status = 3, 1, 0)) vazios,'
      '       sum(sys_iif(r.status = 4, 1, 0)) quebrados'
      '  from labport p'
      '       join labret r'
      '         on r.labport_recno = p.recno'
      '       join labprocxequip e'
      '         on e.amostra = r.amostra'
      '        and e.tipo = 2'
      ' where p.operac = 2'
      '   and p.status = 2'
      
        '   and cast(p.emissao as date) between :emissaode and :emissaoat' +
        'e'
      ' group by cast(to_char(p.emissao, '#39'yyyymm'#39') as varchar(6))')
    Params = <
      item
        DataType = ftUnknown
        Name = 'emissaode'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emissaoate'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    Left = 160
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emissaode'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emissaoate'
        ParamType = ptUnknown
      end>
    object StringField3: TStringField
      FieldName = 'competencia'
      ReadOnly = True
      Visible = False
      Size = 6
    end
    object StringField4: TStringField
      DisplayLabel = 'Compet'#234'ncia'
      FieldKind = fkCalculated
      FieldName = 'compet'
      EditMask = '99/9999;0;'
      Size = 6
      Calculated = True
    end
    object LargeintField7: TLargeintField
      DisplayLabel = 'Entradas'
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
    object LargeintField8: TLargeintField
      DisplayLabel = 'Conformes'
      FieldName = 'conformes'
      ReadOnly = True
    end
    object LargeintField9: TLargeintField
      DisplayLabel = 'N'#227'o Conformes'
      FieldName = 'naoconformes'
      ReadOnly = True
    end
    object LargeintField10: TLargeintField
      DisplayLabel = 'Entradas V'#225'lidas'
      FieldKind = fkCalculated
      FieldName = 'validas'
      Calculated = True
    end
    object LargeintField11: TLargeintField
      DisplayLabel = 'Vazios'
      FieldName = 'vazios'
      ReadOnly = True
    end
    object LargeintField12: TLargeintField
      DisplayLabel = 'Quebrados'
      FieldName = 'quebrados'
      ReadOnly = True
    end
    object FloatField4: TFloatField
      DisplayLabel = #205'ndice V'#225'lidos'
      FieldKind = fkCalculated
      FieldName = 'ivalidos'
      DisplayFormat = ',0.#0%'
      Calculated = True
    end
    object FloatField5: TFloatField
      DisplayLabel = #205'ndice de Vazios'
      FieldKind = fkCalculated
      FieldName = 'ivazios'
      DisplayFormat = ',0.#0%'
      Calculated = True
    end
    object FloatField6: TFloatField
      DisplayLabel = #205'ndice de Quebrados'
      FieldKind = fkCalculated
      FieldName = 'iquebrados'
      DisplayFormat = ',0.#0%'
      Calculated = True
    end
    object qSeringasemissaode: TDateTimeField
      FieldName = 'emissaode'
      ReadOnly = True
      Visible = False
    end
    object qSeringasemissaoate: TDateTimeField
      FieldName = 'emissaoate'
      ReadOnly = True
      Visible = False
    end
  end
  object dsSeringas: TDataSource
    AutoEdit = False
    DataSet = qSeringas
    Left = 216
    Top = 280
  end
  object qDFrascos: TZQuery
    Connection = DM.Design
    OnCalcFields = qDiariaCalcFields
    SQL.Strings = (
      'select cast(p.emissao as date) emissao, '
      '       sum(sys_iif(r.status = 1, 1, 0)) conformes,'
      '       sum(sys_iif(r.status = 2, 1, 0)) naoconformes,'
      '       sum(sys_iif(r.status = 3, 1, 0)) vazios,'
      '       sum(sys_iif(r.status = 4, 1, 0)) quebrados'
      '  from labport p'
      '       join labret r'
      '         on r.labport_recno = p.recno'
      '       join labprocxequip e'
      '         on e.amostra = r.amostra'
      '        and e.tipo = 1 '
      ' where p.operac = 2'
      '   and p.status = 2'
      
        '   and cast(p.emissao as date) between :emissaode and :emissaoat' +
        'e'
      ' group by cast(p.emissao as date)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'emissaode'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emissaoate'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    Left = 344
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emissaode'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emissaoate'
        ParamType = ptUnknown
      end>
    object DateField1: TDateField
      DisplayLabel = 'Entrada'
      FieldName = 'emissao'
      ReadOnly = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object LargeintField13: TLargeintField
      DisplayLabel = 'Entradas'
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
    object LargeintField14: TLargeintField
      DisplayLabel = 'Conformes'
      FieldName = 'conformes'
      ReadOnly = True
    end
    object LargeintField15: TLargeintField
      DisplayLabel = 'N'#227'o Conformes'
      FieldName = 'naoconformes'
      ReadOnly = True
    end
    object LargeintField16: TLargeintField
      DisplayLabel = 'Entradas V'#225'lidas'
      FieldKind = fkCalculated
      FieldName = 'validas'
      Calculated = True
    end
    object LargeintField17: TLargeintField
      DisplayLabel = 'Vazios'
      FieldName = 'vazios'
      ReadOnly = True
    end
    object LargeintField18: TLargeintField
      DisplayLabel = 'Quebrados'
      FieldName = 'quebrados'
      ReadOnly = True
    end
    object FloatField7: TFloatField
      DisplayLabel = #205'ndice Validos'
      FieldKind = fkCalculated
      FieldName = 'ivalidos'
      DisplayFormat = ',0.#0%'
      Calculated = True
    end
    object FloatField8: TFloatField
      DisplayLabel = #205'ndice Vazios'
      FieldKind = fkCalculated
      FieldName = 'ivazios'
      DisplayFormat = ',0.#0%'
      Calculated = True
    end
    object FloatField9: TFloatField
      DisplayLabel = #205'ndice Quebrados'
      FieldKind = fkCalculated
      FieldName = 'iquebrados'
      DisplayFormat = ',0.#0%'
      Calculated = True
    end
  end
  object dsDFrascos: TDataSource
    AutoEdit = False
    DataSet = qDFrascos
    Left = 408
    Top = 224
  end
  object qDSeringas: TZQuery
    Connection = DM.Design
    OnCalcFields = qDiariaCalcFields
    SQL.Strings = (
      'select cast(p.emissao as date) emissao, '
      '       sum(sys_iif(r.status = 1, 1, 0)) conformes,'
      '       sum(sys_iif(r.status = 2, 1, 0)) naoconformes,'
      '       sum(sys_iif(r.status = 3, 1, 0)) vazios,'
      '       sum(sys_iif(r.status = 4, 1, 0)) quebrados'
      '  from labport p'
      '       join labret r'
      '         on r.labport_recno = p.recno'
      '       join labprocxequip e'
      '         on e.amostra = r.amostra'
      '        and e.tipo = 2 '
      ' where p.operac = 2'
      '   and p.status = 2'
      
        '   and cast(p.emissao as date) between :emissaode and :emissaoat' +
        'e'
      ' group by cast(p.emissao as date)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'emissaode'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emissaoate'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    Left = 344
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emissaode'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emissaoate'
        ParamType = ptUnknown
      end>
    object DateField2: TDateField
      DisplayLabel = 'Entrada'
      FieldName = 'emissao'
      ReadOnly = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object LargeintField19: TLargeintField
      DisplayLabel = 'Entradas'
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
    object LargeintField20: TLargeintField
      DisplayLabel = 'Conformes'
      FieldName = 'conformes'
      ReadOnly = True
    end
    object LargeintField21: TLargeintField
      DisplayLabel = 'N'#227'o Conformes'
      FieldName = 'naoconformes'
      ReadOnly = True
    end
    object LargeintField22: TLargeintField
      DisplayLabel = 'Entradas V'#225'lidas'
      FieldKind = fkCalculated
      FieldName = 'validas'
      Calculated = True
    end
    object LargeintField23: TLargeintField
      DisplayLabel = 'Vazios'
      FieldName = 'vazios'
      ReadOnly = True
    end
    object LargeintField24: TLargeintField
      DisplayLabel = 'Quebrados'
      FieldName = 'quebrados'
      ReadOnly = True
    end
    object FloatField10: TFloatField
      DisplayLabel = #205'ndice Validos'
      FieldKind = fkCalculated
      FieldName = 'ivalidos'
      DisplayFormat = ',0.#0%'
      Calculated = True
    end
    object FloatField11: TFloatField
      DisplayLabel = #205'ndice Vazios'
      FieldKind = fkCalculated
      FieldName = 'ivazios'
      DisplayFormat = ',0.#0%'
      Calculated = True
    end
    object FloatField12: TFloatField
      DisplayLabel = #205'ndice Quebrados'
      FieldKind = fkCalculated
      FieldName = 'iquebrados'
      DisplayFormat = ',0.#0%'
      Calculated = True
    end
  end
  object dsDSeringas: TDataSource
    AutoEdit = False
    DataSet = qDSeringas
    Left = 408
    Top = 272
  end
  object qDocumentos: TZQuery
    Connection = DM.Design
    OnCalcFields = qDocumentosCalcFields
    SQL.Strings = (
      
        'select p.emissao, p.codigo, c.empresa, c.nome_chave, c.cnpj, c.c' +
        'pf, p.nf, p.nf_serie, p.nf_emissao, p.nf_valor,'
      
        '       x.frascos_conformes, x.frascos_naoconformes,  x.frascos_v' +
        'azios, x.frascos_quebrados,'
      
        '       x.seringas_conformes, x.seringas_naoconformes, x.seringas' +
        '_vazios, x.seringas_quebrados'
      '  from labport p'
      '       join (select p.recno,'
      
        '                    sum(sys_iif(r.status = 1 and e.tipo = 1, 1, ' +
        '0)) frascos_conformes,'
      
        '                    sum(sys_iif(r.status = 2 and e.tipo = 1, 1, ' +
        '0)) frascos_naoconformes,'
      
        '                    sum(sys_iif(r.status = 3 and e.tipo = 1, 1, ' +
        '0)) frascos_vazios,'
      
        '                    sum(sys_iif(r.status = 4 and e.tipo = 1, 1, ' +
        '0)) frascos_quebrados,'
      
        '                    sum(sys_iif(r.status = 1 and e.tipo = 2, 1, ' +
        '0)) seringas_conformes,'
      
        '                    sum(sys_iif(r.status = 2 and e.tipo = 2, 1, ' +
        '0)) seringas_naoconformes,'
      
        '                    sum(sys_iif(r.status = 3 and e.tipo = 2, 1, ' +
        '0)) seringas_vazios,'
      
        '                    sum(sys_iif(r.status = 4 and e.tipo = 2, 1, ' +
        '0)) seringas_quebrados'
      '              from labport p'
      '                   join labret r'
      '                     on r.labport_recno = p.recno'
      '                   join labprocxequip e'
      '                     on e.amostra = r.amostra'
      '             where p.operac = 2'
      '               and p.status = 2'
      
        '               and cast(p.emissao as date) between :emissaode an' +
        'd :emissaoate'
      '             group by p.recno) x'
      '         on x.recno = p.recno'
      '       join tbclientes c'
      '         on c.codigo = p.codigo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'emissaode'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emissaoate'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    Left = 488
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emissaode'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emissaoate'
        ParamType = ptUnknown
      end>
    object qDocumentosemissao: TDateTimeField
      DisplayLabel = 'Entrada'
      FieldName = 'emissao'
      Required = True
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object qDocumentoscodigo: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'codigo'
      Required = True
    end
    object qDocumentosempresa: TStringField
      DisplayLabel = 'Raz'#227'o'
      DisplayWidth = 40
      FieldName = 'empresa'
      Size = 100
    end
    object qDocumentosnome_chave: TStringField
      DisplayLabel = 'Nome Curto'
      DisplayWidth = 20
      FieldName = 'nome_chave'
      Size = 45
    end
    object qDocumentoscnpj: TStringField
      DisplayLabel = 'CNPJ'
      DisplayWidth = 18
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object qDocumentoscpf: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'cpf'
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object qDocumentosnf: TIntegerField
      DisplayLabel = 'NF'
      FieldName = 'nf'
      Required = True
    end
    object qDocumentosnf_serie: TIntegerField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'nf_serie'
      Required = True
    end
    object qDocumentosnf_emissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'nf_emissao'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qDocumentosnf_valor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'nf_valor'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object LargeintField25: TLargeintField
      DisplayLabel = 'Entradas'
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
    object qDocumentosconformes: TLargeintField
      DisplayLabel = 'Conformes'
      FieldKind = fkCalculated
      FieldName = 'conformes'
      Calculated = True
    end
    object qDocumentosnaoconformes: TLargeintField
      DisplayLabel = 'N'#227'o Conformes'
      FieldKind = fkCalculated
      FieldName = 'naoconformes'
      Calculated = True
    end
    object LargeintField28: TLargeintField
      DisplayLabel = 'Entradas V'#225'lidas'
      FieldKind = fkCalculated
      FieldName = 'validas'
      Calculated = True
    end
    object qDocumentosvazios: TLargeintField
      DisplayLabel = 'Vazios'
      FieldKind = fkCalculated
      FieldName = 'vazios'
      Calculated = True
    end
    object qDocumentosquebrados: TLargeintField
      DisplayLabel = 'Quebrados'
      FieldKind = fkCalculated
      FieldName = 'quebrados'
      Calculated = True
    end
    object FloatField13: TFloatField
      DisplayLabel = #205'ndice Validos'
      FieldKind = fkCalculated
      FieldName = 'ivalidos'
      DisplayFormat = ',0.#0%'
      Calculated = True
    end
    object FloatField14: TFloatField
      DisplayLabel = #205'ndice Vazios'
      FieldKind = fkCalculated
      FieldName = 'ivazios'
      DisplayFormat = ',0.#0%'
      Calculated = True
    end
    object FloatField15: TFloatField
      DisplayLabel = #205'ndice Quebrados'
      FieldKind = fkCalculated
      FieldName = 'iquebrados'
      DisplayFormat = ',0.#0%'
      Calculated = True
    end
    object qDocumentosfrascos_total: TLargeintField
      DisplayLabel = 'Entradas'
      FieldKind = fkCalculated
      FieldName = 'frascos_total'
      Calculated = True
    end
    object qDocumentosfrascos_conformes: TLargeintField
      DisplayLabel = 'Frascos Conformes'
      FieldName = 'frascos_conformes'
      ReadOnly = True
      Visible = False
    end
    object qDocumentosfrascos_naoconformes: TLargeintField
      DisplayLabel = 'Frascos N'#227'o Conformes'
      FieldName = 'frascos_naoconformes'
      ReadOnly = True
      Visible = False
    end
    object qDocumentosfrascos_validos: TLargeintField
      DisplayLabel = 'V'#225'lidos'
      FieldKind = fkCalculated
      FieldName = 'frascos_validos'
      Calculated = True
    end
    object qDocumentosfrascos_vazios: TLargeintField
      DisplayLabel = 'Frascos Vazios'
      FieldName = 'frascos_vazios'
      ReadOnly = True
      Visible = False
    end
    object qDocumentosfrascos_quebrados: TLargeintField
      DisplayLabel = 'Frascos Quebrados'
      FieldName = 'frascos_quebrados'
      ReadOnly = True
      Visible = False
    end
    object qDocumentosseringas_total: TLargeintField
      DisplayLabel = 'Entradas'
      FieldKind = fkCalculated
      FieldName = 'seringas_total'
      Calculated = True
    end
    object qDocumentosseringas_conformes: TLargeintField
      DisplayLabel = 'Seringas Conformes'
      FieldName = 'seringas_conformes'
      ReadOnly = True
      Visible = False
    end
    object qDocumentosseringas_naoconformes: TLargeintField
      DisplayLabel = 'Serginas N'#227'o Conformes'
      FieldName = 'seringas_naoconformes'
      ReadOnly = True
      Visible = False
    end
    object qDocumentosseringas_validas: TLargeintField
      DisplayLabel = 'Validas'
      FieldKind = fkCalculated
      FieldName = 'seringas_validas'
      Calculated = True
    end
    object qDocumentosseringas_vazios: TLargeintField
      DisplayLabel = 'Seringas Vazias'
      FieldName = 'seringas_vazios'
      ReadOnly = True
      Visible = False
    end
    object qDocumentosseringas_quebrados: TLargeintField
      DisplayLabel = 'Seringas Quebradas'
      FieldName = 'seringas_quebrados'
      ReadOnly = True
      Visible = False
    end
  end
  object dsDocumentos: TDataSource
    AutoEdit = False
    DataSet = qDocumentos
    Left = 568
    Top = 176
  end
end
