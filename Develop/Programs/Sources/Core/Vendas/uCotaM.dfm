inherited CotaM: TCotaM
  BorderStyle = bsSizeable
  Caption = 'Manuten'#231#227'o de Cota'#231#227'o'
  ClientHeight = 653
  ClientWidth = 1091
  ExplicitWidth = 1107
  ExplicitHeight = 692
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 1091
    Height = 609
    ExplicitWidth = 1091
    ExplicitHeight = 609
    inherited Panel3: TPanel
      Top = 336
      Width = 1091
      Height = 273
      ExplicitTop = 336
      ExplicitWidth = 1091
      ExplicitHeight = 273
      inherited PageControl3: TPageControl
        Width = 1085
        Height = 223
        ActivePage = TabSheet2
        ExplicitWidth = 1085
        ExplicitHeight = 223
        object TabSheet2: TTabSheet [0]
          Caption = 'Servi'#231'os'
          object DBGrid2: TDBGrid
            Tag = 1
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1071
            Height = 187
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = Cota.dsServ
            DefaultDrawing = False
            Enabled = False
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
            OnDrawColumnCell = ChildGridDrawColumnCell
            OnDblClick = ChildGridDblClick
            OnEnter = ChildGridEnter
            OnKeyPress = ChildGridKeyPress
          end
        end
        inherited tsDet: TTabSheet
          Caption = 'Materiais'
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 1077
          ExplicitHeight = 193
          inherited DBGrid1: TDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1071
            Height = 187
            DataSource = Cota.dsMat
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'M'#227'o-de-Obra'
          ImageIndex = 2
          object DBGrid3: TDBGrid
            Tag = 1
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1071
            Height = 187
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = Cota.dsMObra
            DefaultDrawing = False
            Enabled = False
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
            OnDrawColumnCell = ChildGridDrawColumnCell
            OnDblClick = ChildGridDblClick
            OnEnter = ChildGridEnter
            OnKeyPress = ChildGridKeyPress
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Despesas'
          ImageIndex = 3
          object DBGrid4: TDBGrid
            Tag = 1
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 663
            Height = 187
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = Cota.dsDesp
            DefaultDrawing = False
            Enabled = False
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
            OnDrawColumnCell = ChildGridDrawColumnCell
            OnDblClick = ChildGridDblClick
            OnEnter = ChildGridEnter
            OnKeyPress = ChildGridKeyPress
          end
          object Panel54: TPanel
            Left = 669
            Top = 0
            Width = 408
            Height = 193
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            object Label50: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 402
              Height = 15
              Align = alTop
              Caption = 'Hist'#243'rico'
              FocusControl = DBMemo4
              ExplicitWidth = 48
            end
            object DBMemo4: TDBMemo
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 402
              Height = 166
              Align = alClient
              DataField = 'historico'
              DataSource = Cota.dsDesp
              TabOrder = 0
            end
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Contatos'
          ImageIndex = 4
          object DBGrid5: TDBGrid
            Tag = 1
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1071
            Height = 187
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = Cota.dsContatos
            DefaultDrawing = False
            Enabled = False
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
            OnDrawColumnCell = ChildGridDrawColumnCell
            OnDblClick = ChildGridDblClick
            OnEnter = ChildGridEnter
            OnKeyPress = ChildGridKeyPress
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 1085
        ExplicitWidth = 1085
        inherited ToolBar3: TToolBar
          Width = 1072
          ExplicitWidth = 1072
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
      Width = 1085
      Height = 330
      ExplicitWidth = 1085
      ExplicitHeight = 330
      inherited TabSheet1: TTabSheet
        Caption = 'Cota'#231#227'o'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 1077
        ExplicitHeight = 300
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 1077
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 52
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 46
              Height = 15
              Align = alTop
              Caption = 'Cota'#231#227'o'
              FocusControl = DBEdit1
              ExplicitWidth = 44
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 46
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'recno'
              DataSource = Cota.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel6: TPanel
            Left = 52
            Top = 0
            Width = 94
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 88
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
              Width = 88
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'emissao'
              DataSource = Cota.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel7: TPanel
            Left = 407
            Top = 0
            Width = 102
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 5
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 96
              Height = 15
              Align = alTop
              Caption = 'Validade'
              ExplicitWidth = 44
            end
            object JvDBDateEdit1: TJvDBDateEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 96
              Height = 23
              Align = alClient
              DataField = 'validade'
              DataSource = Cota.DataSource1
              ButtonFlat = True
              CheckOnExit = True
              ButtonWidth = 28
              ShowNullDate = False
              TabOrder = 0
            end
          end
          object Panel8: TPanel
            Left = 509
            Top = 0
            Width = 90
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 6
            object Label4: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 84
              Height = 15
              Align = alTop
              Caption = 'Servi'#231'os'
              FocusControl = DBEdit3
              ExplicitWidth = 43
            end
            object DBEdit3: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 84
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'vlsrv'
              DataSource = Cota.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel9: TPanel
            Left = 599
            Top = 0
            Width = 90
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 7
            object Label5: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 84
              Height = 15
              Align = alTop
              Caption = 'Materiais'
              FocusControl = DBEdit4
              ExplicitWidth = 48
            end
            object DBEdit4: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 84
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'vlmat'
              DataSource = Cota.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel10: TPanel
            Left = 689
            Top = 0
            Width = 90
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 8
            object Label6: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 84
              Height = 15
              Align = alTop
              Caption = 'M. Obra'
              FocusControl = DBEdit5
              ExplicitWidth = 43
            end
            object DBEdit5: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 84
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'vlmobra'
              DataSource = Cota.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel11: TPanel
            Left = 869
            Top = 0
            Width = 90
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 9
            object Label7: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 84
              Height = 15
              Align = alTop
              Caption = 'Valor'
              FocusControl = DBEdit6
              ExplicitWidth = 26
            end
            object DBEdit6: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 84
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'vltotal'
              DataSource = Cota.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel12: TPanel
            Left = 215
            Top = 0
            Width = 192
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 4
            object Label9: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 186
              Height = 15
              Align = alTop
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit8
              ExplicitWidth = 51
            end
            object DBEdit8: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 186
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'descri'
              DataSource = Cota.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel13: TPanel
            Left = 146
            Top = 0
            Width = 40
            Height = 50
            Margins.Right = 0
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object Label8: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 34
              Height = 15
              Align = alTop
              Caption = 'Tipo'
              FocusControl = DBEdit7
              ExplicitWidth = 23
            end
            object DBEdit7: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 37
              Height = 23
              Margins.Right = 0
              Align = alClient
              DataField = 'grupo'
              DataSource = Cota.DataSource1
              TabOrder = 0
              OnExit = DBEdit7Exit
            end
          end
          object Panel14: TPanel
            Left = 186
            Top = 0
            Width = 29
            Height = 50
            Margins.Top = 22
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 3
            object SpeedButton3: TSpeedButton
              AlignWithMargins = True
              Left = 0
              Top = 23
              Width = 26
              Height = 25
              Margins.Left = 0
              Margins.Top = 23
              Margins.Bottom = 2
              Action = actFindTipo
              Align = alClient
              ExplicitTop = 21
              ExplicitWidth = 23
              ExplicitHeight = 23
            end
          end
          object Panel18: TPanel
            Left = 959
            Top = 0
            Width = 118
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 10
            object Label11: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 112
              Height = 15
              Align = alTop
              Caption = 'Estado'
              ExplicitWidth = 35
            end
            object DBEdit10: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 112
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'statusDesc'
              DataSource = Cota.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel30: TPanel
            Left = 779
            Top = 0
            Width = 90
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 11
            object Label22: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 84
              Height = 15
              Align = alTop
              Caption = 'Despesas'
              FocusControl = DBEdit20
              ExplicitWidth = 48
            end
            object DBEdit20: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 84
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'vldespe'
              DataSource = Cota.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 50
          Width = 1077
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Panel15: TPanel
            Left = 0
            Top = 0
            Width = 55
            Height = 50
            Margins.Right = 0
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label10: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 49
              Height = 15
              Align = alTop
              Caption = 'Cliente'
              FocusControl = DBEdit9
              ExplicitWidth = 37
            end
            object DBEdit9: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 52
              Height = 23
              Margins.Right = 0
              Align = alClient
              DataField = 'cliente'
              DataSource = Cota.DataSource1
              TabOrder = 0
              OnExit = DBEdit9Exit
            end
          end
          object Panel16: TPanel
            Left = 55
            Top = 0
            Width = 29
            Height = 50
            Margins.Top = 22
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object SpeedButton1: TSpeedButton
              AlignWithMargins = True
              Left = 0
              Top = 23
              Width = 26
              Height = 25
              Margins.Left = 0
              Margins.Top = 23
              Margins.Bottom = 2
              Action = actFindCli
              Align = alClient
              ExplicitTop = 21
              ExplicitWidth = 23
              ExplicitHeight = 23
            end
          end
          object Panel20: TPanel
            Left = 84
            Top = 0
            Width = 177
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object Label12: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 171
              Height = 15
              Align = alTop
              Caption = 'Nome Curto'
              FocusControl = DBEdit11
              ExplicitWidth = 66
            end
            object DBEdit11: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 171
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'nome_chave'
              DataSource = Cota.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel21: TPanel
            Left = 664
            Top = 0
            Width = 118
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label13: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 112
              Height = 15
              Align = alTop
              Caption = 'C.N.P.J.'
              FocusControl = DBEdit12
              ExplicitWidth = 40
            end
            object DBEdit12: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 112
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'cnpj'
              DataSource = Cota.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel22: TPanel
            Left = 782
            Top = 0
            Width = 98
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 4
            object Label14: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 92
              Height = 15
              Align = alTop
              Caption = 'C.P.F.'
              FocusControl = DBEdit13
              ExplicitWidth = 30
            end
            object DBEdit13: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 92
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'cpf'
              DataSource = Cota.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel23: TPanel
            Left = 261
            Top = 0
            Width = 403
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 5
            object Label15: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 397
              Height = 15
              Align = alTop
              Caption = 'Empresa'
              FocusControl = DBEdit14
              ExplicitWidth = 45
            end
            object DBEdit14: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 397
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'empresa'
              DataSource = Cota.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel52: TPanel
            Left = 880
            Top = 0
            Width = 168
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 6
            object Label39: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 162
              Height = 15
              Align = alTop
              Caption = 'Cidade'
              FocusControl = DBEdit34
              ExplicitWidth = 37
            end
            object DBEdit34: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 162
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'cidade'
              DataSource = Cota.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel53: TPanel
            Left = 1048
            Top = 0
            Width = 29
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 7
            object Label40: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 23
              Height = 15
              Align = alTop
              Caption = 'UF'
              FocusControl = DBEdit35
              ExplicitWidth = 14
            end
            object DBEdit35: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 23
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'estado'
              DataSource = Cota.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
        object Panel17: TPanel
          Left = 0
          Top = 200
          Width = 1077
          Height = 100
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 4
          object Label16: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1071
            Height = 15
            Align = alTop
            Caption = 'Descri'#231#227'o'
            FocusControl = DBMemo1
            ExplicitWidth = 51
          end
          object DBMemo1: TDBMemo
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 1071
            Height = 73
            Align = alClient
            DataField = 'descricao'
            DataSource = Cota.DataSource1
            TabOrder = 0
          end
        end
        object Panel31: TPanel
          Left = 0
          Top = 100
          Width = 1077
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object Panel32: TPanel
            Left = 381
            Top = 0
            Width = 55
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 3
            object Label23: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 49
              Height = 15
              Align = alTop
              Caption = 'Frascos'
              FocusControl = edFrascos
              ExplicitWidth = 39
            end
            object edFrascos: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 49
              Height = 23
              Align = alClient
              DataField = 'frascos'
              DataSource = Cota.DataSource1
              TabOrder = 0
              OnExit = edFrascosExit
            end
          end
          object Panel34: TPanel
            Left = 436
            Top = 0
            Width = 55
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 4
            object Label24: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 49
              Height = 15
              Align = alTop
              Caption = 'Seringas'
              FocusControl = edSeringas
              ExplicitWidth = 44
            end
            object edSeringas: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 49
              Height = 23
              Align = alClient
              DataField = 'seringas'
              DataSource = Cota.DataSource1
              TabOrder = 0
              OnExit = edSeringasExit
            end
          end
          object Panel33: TPanel
            Left = 73
            Top = 0
            Width = 126
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label25: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 120
              Height = 15
              Align = alTop
              Caption = 'Tipo de Envio'
              ExplicitWidth = 71
            end
            object cbEnvio: TJvDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 120
              Height = 23
              Align = alClient
              DataField = 'envio'
              DataSource = Cota.DataSource1
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
              OnChange = cbEnvioChange
            end
          end
          object Panel35: TPanel
            Left = 491
            Top = 0
            Width = 167
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 5
            object Label26: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 161
              Height = 15
              Align = alTop
              Caption = 'Frete'
              ExplicitWidth = 26
            end
            object SpeedButton4: TSpeedButton
              AlignWithMargins = True
              Left = 140
              Top = 23
              Width = 24
              Height = 24
              Margins.Left = 1
              Margins.Top = 2
              Action = actSedex
              Align = alRight
              ParentShowHint = False
              ShowHint = True
              ExplicitLeft = 141
              ExplicitTop = 21
              ExplicitHeight = 22
            end
            object edFrete: TJvDBCalcEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 133
              Height = 23
              Align = alClient
              DisplayFormat = ',0.#0'
              ButtonWidth = 26
              ReadOnly = True
              TabOrder = 0
              DecimalPlacesAlwaysShown = False
              OnExit = edFreteExit
              DataField = 'frete'
              DataSource = Cota.DataSource1
            end
          end
          object Panel37: TPanel
            Left = 199
            Top = 0
            Width = 182
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object Label28: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 176
              Height = 15
              Align = alTop
              Caption = 'Repons'#225'vel pela Coleta'
              ExplicitWidth = 122
            end
            object cbFrete: TJvDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 176
              Height = 23
              Align = alClient
              DataField = 'coleta'
              DataSource = Cota.DataSource1
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
          object Panel58: TPanel
            Left = 0
            Top = 0
            Width = 73
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label43: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 67
              Height = 15
              Align = alTop
              Caption = 'Remessa'
              ExplicitWidth = 46
            end
            object cbRemessa: TJvDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 67
              Height = 23
              Align = alClient
              DataField = 'remessa'
              DataSource = Cota.DataSource1
              Items.Strings = (
                'Sim'
                'N'#227'o')
              TabOrder = 0
              Values.Strings = (
                'true'
                'false')
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
              OnChange = cbRemessaChange
            end
          end
          object Panel57: TPanel
            Left = 981
            Top = 0
            Width = 96
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 6
            object Label42: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 90
              Height = 15
              Align = alTop
              Caption = 'Laborat'#243'rio'
              ExplicitWidth = 61
            end
            object JvDBComboBox3: TJvDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 90
              Height = 23
              Align = alClient
              DataField = 'laboratorio'
              DataSource = Cota.DataSource1
              Items.Strings = (
                'Sim'
                'N'#227'o')
              ReadOnly = True
              TabOrder = 0
              Values.Strings = (
                'true'
                'false')
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
            end
          end
          object Panel55: TPanel
            Left = 658
            Top = 0
            Width = 323
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 7
            object Label41: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 317
              Height = 15
              Align = alTop
              Caption = 'Condi'#231#227'o Pagamento'
              FocusControl = DBEdit21
              ExplicitWidth = 115
            end
            object DBEdit21: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 317
              Height = 23
              Align = alClient
              DataField = 'condicaopg'
              DataSource = Cota.DataSource1
              TabOrder = 0
            end
          end
        end
        object Panel36: TPanel
          Left = 0
          Top = 150
          Width = 1077
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 3
          object Panel56: TPanel
            Left = 0
            Top = 0
            Width = 869
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Label27: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 863
              Height = 15
              Align = alTop
              Caption = 'Atividade'
              ExplicitWidth = 50
            end
            object DBEdit23: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 863
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'atividade'
              DataSource = Cota.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel59: TPanel
            Left = 869
            Top = 0
            Width = 208
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            object Label44: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 202
              Height = 15
              Align = alTop
              Caption = 'Declara'#231#227'o de Conformidade'
              ExplicitWidth = 154
            end
            object JvDBComboBox1: TJvDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 202
              Height = 23
              Align = alClient
              DataField = 'dec_conf'
              DataSource = Cota.DataSource1
              Items.Strings = (
                'Aceito a declara'#231#227'o'
                'N'#227'o aceito a declara'#231#227'o')
              TabOrder = 0
              Values.Strings = (
                'true'
                'false')
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
  end
  inherited ControlBar1: TControlBar
    Width = 1085
    ExplicitWidth = 1085
    inherited ToolBar1: TToolBar
      Width = 1072
      ExplicitWidth = 1072
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
        Action = Cota.actModelo
        Style = tbsTextButton
      end
      object ToolButton15: TToolButton
        Left = 473
        Top = 0
        Action = Cota.actMarkup
        Style = tbsTextButton
      end
    end
  end
  inherited alDef: TActionList
    Left = 200
    Top = 32
    object actFindTipo: TAction
      ImageIndex = 332
      OnExecute = actFindTipoExecute
    end
    object actFindCli: TAction
      ImageIndex = 332
      OnExecute = actFindCliExecute
    end
    object actSedex: TAction
      Enabled = False
      ImageIndex = 268
      OnExecute = actSedexExecute
    end
    object actDespVinc: TAction
      Caption = ' '
      ImageIndex = 336
      OnExecute = actDespVincExecute
    end
    object actAtuContatos: TAction
      Caption = 'actAtuContatos'
      ImageIndex = 336
      OnExecute = actAtuContatosExecute
    end
  end
end
