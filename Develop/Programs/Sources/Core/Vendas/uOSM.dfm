inherited OSM: TOSM
  BorderStyle = bsSingle
  Caption = 'Manuten'#231#227'o de Ordem de Servi'#231'o'
  ClientHeight = 750
  ClientWidth = 1295
  Constraints.MinWidth = 736
  ExplicitWidth = 1301
  ExplicitHeight = 779
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 1295
    Height = 706
    ExplicitTop = 44
    ExplicitWidth = 1295
    ExplicitHeight = 706
    inherited Panel3: TPanel
      Top = 344
      Width = 1295
      Height = 362
      ExplicitTop = 347
      ExplicitWidth = 1295
      ExplicitHeight = 362
      inherited PageControl3: TPageControl
        Top = 47
        Width = 1289
        Height = 312
        ExplicitLeft = 3
        ExplicitTop = 47
        ExplicitWidth = 1289
        ExplicitHeight = 312
        inherited tsDet: TTabSheet
          Caption = 'Servi'#231'os'
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 1281
          ExplicitHeight = 282
          inherited DBGrid1: TDBGrid
            Width = 1281
            Height = 282
            DataSource = OS.dsServ
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Materiais'
          ImageIndex = 1
          object DBGrid2: TDBGrid
            Tag = 1
            Left = 0
            Top = 0
            Width = 1281
            Height = 282
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = OS.dsMat
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
            OnDrawColumnCell = ChildGridDrawColumnCell
            OnDblClick = ChildGridDblClick
            OnEnter = ChildGridEnter
            OnKeyPress = ChildGridKeyPress
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'M'#227'o-de-Obra'
          ImageIndex = 3
          object DBGrid3: TDBGrid
            Tag = 1
            Left = 0
            Top = 0
            Width = 1281
            Height = 282
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = OS.dsMObra
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
            OnDrawColumnCell = ChildGridDrawColumnCell
            OnDblClick = ChildGridDblClick
            OnEnter = ChildGridEnter
            OnKeyPress = ChildGridKeyPress
          end
        end
        object TabSheet10: TTabSheet
          Caption = 'Despesas'
          ImageIndex = 4
          object DBGrid7: TDBGrid
            Tag = 1
            Left = 0
            Top = 0
            Width = 873
            Height = 282
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = OS.dsDesp
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
            OnDrawColumnCell = ChildGridDrawColumnCell
            OnDblClick = ChildGridDblClick
            OnEnter = ChildGridEnter
            OnKeyPress = ChildGridKeyPress
          end
          object Panel2: TPanel
            Left = 873
            Top = 0
            Width = 408
            Height = 282
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
              Height = 255
              Align = alClient
              DataField = 'historico'
              TabOrder = 0
            end
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Contatos'
          ImageIndex = 4
          object DBGrid4: TDBGrid
            Tag = 1
            Left = 0
            Top = 0
            Width = 1281
            Height = 282
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = OS.dsContatos
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
        Width = 1289
        Height = 38
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 1289
        ExplicitHeight = 38
        inherited ToolBar3: TToolBar
          Width = 1276
          ButtonWidth = 129
          ExplicitWidth = 1276
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
      Width = 1289
      Height = 338
      OnChange = PageControl1Change
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 1289
      ExplicitHeight = 338
      inherited TabSheet1: TTabSheet
        Caption = 'Ordem de Servi'#231'o'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 1281
        ExplicitHeight = 308
        object Label10: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 153
          Width = 1275
          Height = 15
          Align = alTop
          Caption = 'Descri'#231#227'o'
          FocusControl = DBMemo1
          ExplicitWidth = 51
        end
        object DBMemo1: TDBMemo
          AlignWithMargins = True
          Left = 3
          Top = 174
          Width = 1275
          Height = 131
          Align = alClient
          DataField = 'descricao'
          DataSource = OS.DataSource1
          TabOrder = 0
        end
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 1281
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 1281
            Height = 50
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Panel7: TPanel
              Left = 0
              Top = 0
              Width = 70
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label1: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 64
                Height = 15
                Align = alTop
                Caption = 'OS'
                FocusControl = DBEdit1
                ExplicitWidth = 15
              end
              object DBEdit1: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 64
                Height = 23
                Align = alClient
                DataField = 'idos'
                DataSource = OS.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel8: TPanel
              Left = 70
              Top = 0
              Width = 54
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object Label11: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 48
                Height = 15
                Align = alTop
                Caption = 'Pedido'
                FocusControl = DBEdit4
                ExplicitWidth = 37
              end
              object DBEdit4: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 48
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'pedido'
                DataSource = OS.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel9: TPanel
              Left = 570
              Top = 0
              Width = 92
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 2
              object Label2: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 86
                Height = 15
                Align = alTop
                Caption = 'Emiss'#227'o'
                ExplicitWidth = 43
              end
              object JvDBDatePickerEdit1: TJvDBDatePickerEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 86
                Height = 23
                Align = alClient
                AllowNoDate = True
                DataField = 'data'
                DataSource = OS.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel10: TPanel
              Left = 662
              Top = 0
              Width = 144
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 3
              object Label7: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 138
                Height = 15
                Align = alTop
                Caption = 'Vendedor'
                ExplicitWidth = 50
              end
              object JvDBComboBox7: TJvDBComboBox
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 138
                Height = 23
                Align = alClient
                DataField = 'idvendedor'
                DataSource = OS.DataSource1
                TabOrder = 0
                ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
                ListSettings.OutfilteredValueFont.Color = clRed
                ListSettings.OutfilteredValueFont.Height = -11
                ListSettings.OutfilteredValueFont.Name = 'Tahoma'
                ListSettings.OutfilteredValueFont.Style = []
              end
            end
            object Panel11: TPanel
              Left = 806
              Top = 0
              Width = 95
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 4
              object Label3: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 89
                Height = 15
                Align = alTop
                Caption = 'Materiais'
                FocusControl = DBEdit5
                ExplicitWidth = 48
              end
              object DBEdit5: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 89
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'vlmat'
                DataSource = OS.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel12: TPanel
              Left = 901
              Top = 0
              Width = 95
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 5
              object Label14: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 89
                Height = 15
                Align = alTop
                Caption = 'Servi'#231'os'
                FocusControl = DBEdit6
                ExplicitWidth = 43
              end
              object DBEdit6: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 89
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'vlsrv'
                DataSource = OS.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel13: TPanel
              Left = 178
              Top = 0
              Width = 40
              Height = 50
              Margins.Right = 0
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 6
              object Label12: TLabel
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
                DataSource = OS.DataSource1
                TabOrder = 0
                OnExit = DBEdit7Exit
              end
            end
            object Panel14: TPanel
              Left = 218
              Top = 0
              Width = 29
              Height = 50
              Margins.Top = 22
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 7
              object SpeedButton2: TSpeedButton
                AlignWithMargins = True
                Left = 0
                Top = 23
                Width = 26
                Height = 24
                Margins.Left = 0
                Margins.Top = 23
                Action = actFindTipo
                Align = alClient
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
                ExplicitLeft = 16
                ExplicitTop = 26
                ExplicitWidth = 24
              end
            end
            object Panel15: TPanel
              Left = 247
              Top = 0
              Width = 323
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 8
              object Label13: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 317
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
                Width = 317
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'descri_grupo'
                DataSource = OS.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel16: TPanel
              Left = 996
              Top = 0
              Width = 95
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 9
              object Label15: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 89
                Height = 15
                Align = alTop
                Caption = 'M. Obra'
                FocusControl = DBEdit9
                ExplicitWidth = 43
              end
              object DBEdit9: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 89
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'vlmobra'
                DataSource = OS.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel17: TPanel
              Left = 1091
              Top = 0
              Width = 95
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 10
              object Label16: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 89
                Height = 15
                Align = alTop
                Caption = 'Despesas'
                FocusControl = DBEdit10
                ExplicitWidth = 48
              end
              object DBEdit10: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 89
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'vlsrvdesp'
                DataSource = OS.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel18: TPanel
              Left = 1186
              Top = 0
              Width = 95
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 11
              object Label17: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 89
                Height = 15
                Align = alTop
                Caption = 'Total'
                FocusControl = DBEdit18
                ExplicitWidth = 25
              end
              object DBEdit18: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 89
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'vltotal'
                DataSource = OS.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel30: TPanel
              Left = 124
              Top = 0
              Width = 54
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 12
              object Label18: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 48
                Height = 15
                Align = alTop
                Caption = 'Cota'#231#227'o'
                FocusControl = DBEdit35
                ExplicitWidth = 44
              end
              object DBEdit35: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 48
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'cotacao'
                DataSource = OS.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
          end
        end
        object Panel21: TPanel
          Left = 0
          Top = 50
          Width = 1281
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object Panel22: TPanel
            Left = 0
            Top = 0
            Width = 73
            Height = 50
            Margins.Right = 0
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label42: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 67
              Height = 15
              Align = alTop
              Caption = 'Cliente'
              FocusControl = DBEdit27
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitWidth = 39
            end
            object DBEdit27: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 70
              Height = 23
              Margins.Right = 0
              Align = alClient
              DataField = 'idcliente'
              DataSource = OS.DataSource1
              TabOrder = 0
              OnExit = DBEdit27Exit
            end
          end
          object Panel23: TPanel
            Left = 102
            Top = 0
            Width = 799
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label48: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 793
              Height = 15
              Align = alTop
              Caption = 'Nome Chave'
              FocusControl = DBEdit33
              ExplicitWidth = 69
            end
            object DBEdit33: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 793
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'nome_chave'
              DataSource = OS.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel24: TPanel
            Left = 901
            Top = 0
            Width = 120
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object Label33: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 114
              Height = 15
              Align = alTop
              Caption = 'C.N.P.J.'
              ExplicitWidth = 40
            end
            object DBEdit17: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 114
              Height = 23
              Align = alClient
              DataField = 'cnpj'
              DataSource = OS.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel29: TPanel
            Left = 1208
            Top = 0
            Width = 73
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label49: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 67
              Height = 15
              Align = alTop
              Caption = 'Controle'
              ExplicitWidth = 46
            end
            object DBEdit34: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 67
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'qtdorcs'
              DataSource = OS.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel34: TPanel
            Left = 73
            Top = 0
            Width = 29
            Height = 50
            Margins.Top = 22
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 4
            object SpeedButton4: TSpeedButton
              AlignWithMargins = True
              Left = 0
              Top = 23
              Width = 26
              Height = 24
              Margins.Left = 0
              Margins.Top = 23
              Action = actFindCli
              Align = alClient
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
              ExplicitLeft = 16
              ExplicitTop = 26
              ExplicitWidth = 24
            end
          end
          object Panel19: TPanel
            Left = 1021
            Top = 0
            Width = 187
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 5
            object Label5: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 181
              Height = 15
              Align = alTop
              Caption = 'Pedido'
              ExplicitWidth = 37
            end
            object DBEdit53: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 181
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'pedidocliente'
              DataSource = OS.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
        object Panel31: TPanel
          Left = 0
          Top = 100
          Width = 1281
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 3
          object Panel33: TPanel
            Left = 0
            Top = 0
            Width = 1032
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Label35: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 1026
              Height = 15
              Align = alTop
              Caption = 'Atividade'
              FocusControl = DBEdit37
              ExplicitWidth = 50
            end
            object DBEdit37: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 1026
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'atividade'
              DataSource = OS.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel6: TPanel
            Left = 1032
            Top = 0
            Width = 249
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            object Label6: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 243
              Height = 15
              Align = alTop
              Caption = 'Condi'#231#227'o Pagamento'
              FocusControl = DBEdit16
              ExplicitWidth = 115
            end
            object DBEdit16: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 243
              Height = 23
              Align = alClient
              DataField = 'condicaopg'
              DataSource = OS.DataSource1
              TabOrder = 0
            end
          end
        end
      end
      object TabSheet9: TTabSheet
        Caption = 'Informa'#231#245'es de Faturamento/Financeiras'
        ImageIndex = 3
        object Bevel6: TBevel
          Left = 486
          Top = 0
          Width = 7
          Height = 308
          Align = alLeft
          Shape = bsSpacer
          ExplicitHeight = 231
        end
        object GroupBox8: TGroupBox
          Left = 0
          Top = 0
          Width = 486
          Height = 308
          Align = alLeft
          Caption = ' Notas Fiscais '
          Padding.Left = 5
          Padding.Right = 5
          Padding.Bottom = 5
          TabOrder = 0
          object DBGrid5: TDBGrid
            Tag = 1
            Left = 7
            Top = 17
            Width = 472
            Height = 176
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = dsFat
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
            OnDrawColumnCell = ChildGridDrawColumnCell
            OnDblClick = ChildGridDblClick
            OnEnter = ChildGridEnter
            OnKeyPress = ChildGridKeyPress
          end
          object GroupBox9: TGroupBox
            Left = 7
            Top = 193
            Width = 472
            Height = 108
            Align = alBottom
            Caption = ' Detalhes '
            TabOrder = 1
            object Label4: TLabel
              Left = 13
              Top = 17
              Width = 26
              Height = 15
              Caption = 'Nota'
              FocusControl = DBEdit19
            end
            object Label22: TLabel
              Left = 65
              Top = 17
              Width = 25
              Height = 15
              Caption = 'S'#233'rie'
              FocusControl = DBEdit20
            end
            object Label36: TLabel
              Left = 99
              Top = 17
              Width = 32
              Height = 15
              Caption = 'Status'
              FocusControl = DBEdit21
            end
            object Label37: TLabel
              Left = 180
              Top = 17
              Width = 72
              Height = 15
              Caption = 'Valor Servi'#231'os'
              FocusControl = DBEdit22
            end
            object Label38: TLabel
              Left = 279
              Top = 17
              Width = 77
              Height = 15
              Caption = 'Valor Materiais'
              FocusControl = DBEdit23
            end
            object Label39: TLabel
              Left = 377
              Top = 17
              Width = 52
              Height = 15
              Caption = 'Comiss'#227'o'
              FocusControl = DBEdit24
            end
            object Label40: TLabel
              Left = 13
              Top = 61
              Width = 48
              Height = 15
              Caption = 'Hist'#243'rico'
              FocusControl = DBEdit25
            end
            object Label41: TLabel
              Left = 293
              Top = 61
              Width = 26
              Height = 15
              Caption = 'Valor'
              FocusControl = DBEdit26
            end
            object DBEdit19: TDBEdit
              Left = 13
              Top = 34
              Width = 45
              Height = 23
              DataField = 'nf'
              DataSource = dsFat
              TabOrder = 0
            end
            object DBEdit20: TDBEdit
              Left = 65
              Top = 34
              Width = 27
              Height = 23
              DataField = 'serie'
              DataSource = dsFat
              TabOrder = 1
            end
            object DBEdit21: TDBEdit
              Left = 99
              Top = 34
              Width = 75
              Height = 23
              DataField = 'status'
              DataSource = dsFat
              TabOrder = 2
            end
            object DBEdit22: TDBEdit
              Left = 180
              Top = 34
              Width = 92
              Height = 23
              DataField = 'vlsrv'
              DataSource = dsFat
              TabOrder = 3
            end
            object DBEdit23: TDBEdit
              Left = 279
              Top = 34
              Width = 92
              Height = 23
              DataField = 'vlmat'
              DataSource = dsFat
              TabOrder = 4
            end
            object DBEdit24: TDBEdit
              Left = 377
              Top = 34
              Width = 87
              Height = 23
              DataField = 'vlcom'
              DataSource = dsFat
              TabOrder = 5
            end
            object DBEdit25: TDBEdit
              Left = 13
              Top = 77
              Width = 274
              Height = 23
              DataField = 'historico'
              DataSource = dsFat
              TabOrder = 6
            end
            object DBEdit26: TDBEdit
              Left = 293
              Top = 77
              Width = 171
              Height = 23
              DataField = 'valor'
              DataSource = dsFat
              TabOrder = 7
            end
          end
        end
        object GroupBox10: TGroupBox
          Left = 493
          Top = 0
          Width = 788
          Height = 308
          Align = alClient
          Caption = ' T'#237'tulos Financeiros '
          Padding.Left = 5
          Padding.Right = 5
          Padding.Bottom = 5
          TabOrder = 1
          object DBGrid6: TDBGrid
            Tag = 1
            Left = 7
            Top = 17
            Width = 602
            Height = 284
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = dsFin
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
            OnDrawColumnCell = ChildGridDrawColumnCell
            OnDblClick = ChildGridDblClick
            OnEnter = ChildGridEnter
            OnKeyPress = ChildGridKeyPress
          end
          object GroupBox11: TGroupBox
            Left = 609
            Top = 17
            Width = 172
            Height = 284
            Align = alRight
            Caption = ' Detalhes do T'#237'tulo '
            TabOrder = 1
            object Label43: TLabel
              Left = 26
              Top = 26
              Width = 43
              Height = 15
              Caption = 'Emiss'#227'o'
              FocusControl = DBEdit28
            end
            object Label44: TLabel
              Left = 32
              Top = 63
              Width = 36
              Height = 15
              Caption = 'Vencto'
              FocusControl = DBEdit29
            end
            object Label45: TLabel
              Left = 6
              Top = 101
              Width = 61
              Height = 15
              Caption = 'Vencto Real'
              FocusControl = DBEdit30
            end
            object Label46: TLabel
              Left = 40
              Top = 138
              Width = 28
              Height = 15
              Caption = 'Baixa'
              FocusControl = DBEdit31
            end
            object Label47: TLabel
              Left = 42
              Top = 176
              Width = 26
              Height = 15
              Caption = 'Valor'
              FocusControl = DBEdit32
            end
            object DBEdit28: TDBEdit
              Left = 75
              Top = 17
              Width = 89
              Height = 23
              DataField = 'emissao'
              DataSource = dsFin
              TabOrder = 0
            end
            object DBEdit29: TDBEdit
              Left = 75
              Top = 55
              Width = 89
              Height = 23
              DataField = 'vencimento'
              DataSource = dsFin
              TabOrder = 1
            end
            object DBEdit30: TDBEdit
              Left = 75
              Top = 92
              Width = 89
              Height = 23
              DataField = 'vencimento_real'
              DataSource = dsFin
              TabOrder = 2
            end
            object DBEdit31: TDBEdit
              Left = 75
              Top = 130
              Width = 89
              Height = 23
              DataField = 'baixa'
              DataSource = dsFin
              TabOrder = 3
            end
            object DBEdit32: TDBEdit
              Left = 75
              Top = 167
              Width = 89
              Height = 23
              DataField = 'valor'
              DataSource = dsFin
              TabOrder = 4
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 1289
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 1289
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      Width = 406
      ButtonWidth = 115
      ExplicitWidth = 406
      inherited ToolButton6: TToolButton
        AutoSize = False
        Visible = False
        ExplicitWidth = 32
      end
      inherited ToolButton4: TToolButton
        AutoSize = False
        ExplicitWidth = 32
      end
      inherited ToolButton7: TToolButton
        AutoSize = False
        Visible = False
        ExplicitWidth = 32
      end
      inherited ToolButton1: TToolButton
        AutoSize = False
        ExplicitWidth = 32
      end
      inherited ToolButton2: TToolButton
        AutoSize = False
        ExplicitWidth = 32
      end
      inherited ToolButton8: TToolButton
        AutoSize = False
        ExplicitWidth = 32
      end
      inherited ToolButton9: TToolButton
        AutoSize = False
        ExplicitWidth = 32
      end
      inherited ToolButton14: TToolButton
        AutoSize = False
        ExplicitWidth = 32
      end
      inherited ToolButton16: TToolButton
        AutoSize = False
        ExplicitWidth = 32
      end
      inherited tbSQL: TToolButton
        ExplicitWidth = 32
      end
      inherited tbClose: TToolButton
        AutoSize = False
        ExplicitWidth = 32
      end
    end
    object ToolBar2: TToolBar
      Left = 430
      Top = 2
      Width = 180
      Height = 34
      AutoSize = True
      BorderWidth = 1
      ButtonHeight = 30
      ButtonWidth = 85
      Caption = 'ToolBar2'
      DisabledImages = Resources.medium_d
      DrawingStyle = dsGradient
      HotImages = Resources.medium_h
      Images = Resources.medium_n
      List = True
      AllowTextButtons = True
      TabOrder = 1
      object ToolButton18: TToolButton
        Left = 0
        Top = 0
        Action = actLucra
        Style = tbsTextButton
      end
      object ToolButton5: TToolButton
        Left = 85
        Top = 0
        Action = OS.actModelo
        Style = tbsTextButton
      end
    end
  end
  inherited alDef: TActionList
    Left = 400
    object actLucra: TAction
      Caption = 'Makup...'
      ImageIndex = 279
      OnExecute = actLucraExecute
    end
    object actLkpContatos: TAction
      Hint = 'Localizar Contatos'
      ImageIndex = 332
    end
    object actFindCli: TAction
      ImageIndex = 332
      OnExecute = actFindCliExecute
    end
    object actDespVinc: TAction
      ImageIndex = 336
      OnExecute = actDespVincExecute
    end
    object actFindTipo: TAction
      ImageIndex = 332
      OnExecute = actFindTipoExecute
    end
    object actAtuContatos: TAction
      Caption = 'Atualiza Contatos'
      ImageIndex = 336
      OnExecute = actAtuContatosExecute
    end
  end
  object qOrigem: TZQuery
    SQL.Strings = (
      'select * '
      '  from orca_origem')
    Params = <>
    Left = 808
    Top = 16
    object qOrigemrecno: TIntegerField
      FieldName = 'recno'
      Required = True
    end
    object qOrigemdescri: TStringField
      FieldName = 'descri'
      Required = True
      Size = 60
    end
  end
  object dsOrigem: TDataSource
    DataSet = qOrigem
    Left = 872
    Top = 18
  end
  object qFat: TZQuery
    SQL.Strings = (
      'select n.nf, n.serie, n.status, i.valor, i.vlsrv,'
      '       i.vlmat, i.vlcom, n.historico, n.emissao,'
      '       n.vencto '
      '  from nf_itens i'
      '       join nf n'
      '         on n.recno = i.recno_nf'
      ' where i.os = :os')
    Params = <
      item
        DataType = ftUnknown
        Name = 'os'
        ParamType = ptUnknown
      end>
    Left = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'os'
        ParamType = ptUnknown
      end>
    object qFatnf: TIntegerField
      DisplayLabel = 'Nota'
      DisplayWidth = 7
      FieldName = 'nf'
      Required = True
    end
    object qFatserie: TIntegerField
      DisplayLabel = 'S'#233'rie'
      DisplayWidth = 5
      FieldName = 'serie'
      Required = True
    end
    object qFatemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'emissao'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qFatvencto: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'vencto'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qFatstatus: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Status'
      FieldName = 'status'
      Required = True
      OnGetText = qFatstatusGetText
    end
    object qFatvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object qFatvlsrv: TFloatField
      DisplayLabel = 'Valor Servi'#231'os'
      FieldName = 'vlsrv'
      Required = True
      Visible = False
      DisplayFormat = ',0.#0'
    end
    object qFatvlmat: TFloatField
      DisplayLabel = 'Valor Materiais'
      FieldName = 'vlmat'
      Required = True
      Visible = False
      DisplayFormat = ',0.#0'
    end
    object qFatvlcom: TFloatField
      DisplayLabel = 'Comiss'#227'o'
      FieldName = 'vlcom'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object qFathistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'historico'
      Visible = False
      Size = 100
    end
  end
  object dsFat: TDataSource
    DataSet = qFat
    Left = 376
    Top = 65530
  end
  object qFin: TZQuery
    SQL.Strings = (
      'select r.recno, r.docto, r.criacao, r.emissao, '
      '       r.vencimento, r.vencimento_real, r.baixa, r.valor,'
      
        '       cast(sys_iif(r.baixa is null, '#39'Em Aberto'#39', '#39'Baixado'#39') as ' +
        'varchar(15)) as status'
      '  from fin_receber r'
      '       join nf_itens i       '
      '         on i.recno_nf = r.recno_nf'
      '        and i.os = :os')
    Params = <
      item
        DataType = ftUnknown
        Name = 'os'
        ParamType = ptUnknown
      end>
    Left = 248
    Top = 65535
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'os'
        ParamType = ptUnknown
      end>
    object qFinrecno: TIntegerField
      DisplayLabel = 'Ficha'
      DisplayWidth = 5
      FieldName = 'recno'
      Required = True
    end
    object qFinstatus: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      DisplayWidth = 9
      FieldName = 'status'
      ReadOnly = True
      Size = 15
    end
    object qFindocto: TStringField
      DisplayLabel = 'Documento'
      DisplayWidth = 10
      FieldName = 'docto'
      Size = 50
    end
    object qFincriacao: TDateTimeField
      FieldName = 'criacao'
      Required = True
      Visible = False
    end
    object qFinemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'emissao'
      Required = True
      Visible = False
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qFinvencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'vencimento'
      Required = True
      Visible = False
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qFinvencimento_real: TDateField
      DisplayLabel = 'Vencto Real'
      FieldName = 'vencimento_real'
      Required = True
      Visible = False
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qFinbaixa: TDateField
      DisplayLabel = 'Baixa'
      FieldName = 'baixa'
      Visible = False
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qFinvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Required = True
      Visible = False
      DisplayFormat = ',0.#0'
    end
  end
  object dsFin: TDataSource
    DataSet = qFin
    Left = 280
    Top = 1
  end
end
