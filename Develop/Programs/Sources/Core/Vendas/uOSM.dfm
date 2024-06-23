inherited OSM: TOSM
  Margins.Left = 6
  Margins.Top = 6
  Margins.Right = 6
  Margins.Bottom = 6
  BorderStyle = bsSingle
  Caption = 'Manuten'#231#227'o de Ordem de Servi'#231'o'
  ClientHeight = 938
  ClientWidth = 1621
  Constraints.MinWidth = 920
  ParentFont = True
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1639
  ExplicitHeight = 985
  PixelsPerInch = 120
  TextHeight = 20
  inherited Panel1: TPanel
    Top = 48
    Width = 1621
    Height = 890
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 80
    ExplicitWidth = 1621
    ExplicitHeight = 858
    inherited pnLookup: TPanel
      Width = 794
      Height = 85
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 794
      ExplicitHeight = 85
    end
    inherited Panel3: TPanel
      Top = 438
      Width = 1621
      Height = 452
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      StyleElements = [seFont, seClient, seBorder]
      ExplicitTop = 406
      ExplicitWidth = 1621
      ExplicitHeight = 452
      inherited PageControl3: TPageControl
        Left = 5
        Top = 53
        Width = 1611
        Height = 394
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 5
        ExplicitTop = 53
        ExplicitWidth = 1611
        ExplicitHeight = 394
        inherited tsDet: TTabSheet
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Servi'#231'os'
          ExplicitTop = 31
          ExplicitWidth = 1603
          ExplicitHeight = 359
          inherited DBGrid1: TDBGrid
            Width = 1603
            Height = 359
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            DataSource = OS.dsServ
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Height = -15
            TitleFont.Pitch = fpDefault
          end
        end
        object TabSheet2: TTabSheet
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Materiais'
          ImageIndex = 1
          object DBGrid2: TDBGrid
            Tag = 1
            Left = 0
            Top = 0
            Width = 1601
            Height = 353
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = OS.dsMat
            DefaultDrawing = False
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            OnDrawColumnCell = ChildGridDrawColumnCell
            OnDblClick = ChildGridDblClick
            OnEnter = ChildGridEnter
            OnKeyPress = ChildGridKeyPress
          end
        end
        object TabSheet4: TTabSheet
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'M'#227'o-de-Obra'
          ImageIndex = 3
          object DBGrid3: TDBGrid
            Tag = 1
            Left = 0
            Top = 0
            Width = 1601
            Height = 353
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = OS.dsMObra
            DefaultDrawing = False
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            OnDrawColumnCell = ChildGridDrawColumnCell
            OnDblClick = ChildGridDblClick
            OnEnter = ChildGridEnter
            OnKeyPress = ChildGridKeyPress
          end
        end
        object TabSheet10: TTabSheet
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Despesas'
          ImageIndex = 4
          object DBGrid7: TDBGrid
            Tag = 1
            Left = 0
            Top = 0
            Width = 1091
            Height = 353
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = OS.dsDesp
            DefaultDrawing = False
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            OnDrawColumnCell = ChildGridDrawColumnCell
            OnDblClick = ChildGridDblClick
            OnEnter = ChildGridEnter
            OnKeyPress = ChildGridKeyPress
          end
          object Panel2: TPanel
            Left = 1091
            Top = 0
            Width = 510
            Height = 353
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            object Label50: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 60
              Height = 20
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alTop
              Caption = 'Hist'#243'rico'
              FocusControl = DBMemo4
            end
            object DBMemo4: TDBMemo
              AlignWithMargins = True
              Left = 4
              Top = 30
              Width = 502
              Height = 319
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alClient
              DataField = 'historico'
              TabOrder = 0
            end
          end
        end
        object TabSheet3: TTabSheet
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Contatos'
          ImageIndex = 4
          object DBGrid4: TDBGrid
            Tag = 1
            Left = 0
            Top = 0
            Width = 1601
            Height = 353
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
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
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            OnDrawColumnCell = ChildGridDrawColumnCell
            OnDblClick = ChildGridDblClick
            OnEnter = ChildGridEnter
            OnKeyPress = ChildGridKeyPress
          end
        end
      end
      inherited ControlBar2: TControlBar
        Left = 5
        Top = 5
        Width = 1611
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        RowSize = 41
        ExplicitLeft = 5
        ExplicitTop = 5
        ExplicitWidth = 1611
        inherited ToolBar3: TToolBar
          Width = 1271
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          ExplicitWidth = 1271
          inherited ToolButton10: TToolButton
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            ExplicitWidth = 150
          end
          inherited ToolButton11: TToolButton
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            ExplicitWidth = 150
          end
          inherited ToolButton17: TToolButton
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            ExplicitWidth = 150
          end
          inherited ToolButton12: TToolButton
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            ExplicitWidth = 150
          end
          inherited tbDivDet: TToolButton
            Width = 13
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            ExplicitWidth = 13
          end
          inherited ToolButton13: TToolButton
            Left = 141
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            ExplicitLeft = 141
            ExplicitWidth = 150
          end
          inherited ToolButton3: TToolButton
            Left = 173
            Width = 12
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            ExplicitLeft = 173
            ExplicitWidth = 12
          end
          inherited tbSQLDet: TToolButton
            Left = 185
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            ExplicitLeft = 185
            ExplicitWidth = 150
          end
          inherited tbRefazGrid: TToolButton
            Left = 217
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            ExplicitLeft = 217
            ExplicitWidth = 150
          end
          object ToolButton19: TToolButton
            Left = 249
            Top = 0
            Width = 10
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Caption = 'ToolButton19'
            ImageIndex = 225
            Style = tbsSeparator
          end
          object ToolButton15: TToolButton
            Left = 259
            Top = 0
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Action = actCopyCont
          end
        end
      end
    end
    inherited PageControl1: TPageControl
      Left = 5
      Top = 5
      Width = 1611
      Height = 428
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      OnChange = PageControl1Change
      ExplicitLeft = 5
      ExplicitTop = 5
      ExplicitWidth = 1611
      ExplicitHeight = 428
      inherited TabSheet1: TTabSheet
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Ordem de Servi'#231'o'
        ExplicitTop = 31
        ExplicitWidth = 1603
        ExplicitHeight = 393
        object Label10: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 192
          Width = 1595
          Height = 20
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alTop
          Caption = 'Descri'#231#227'o'
          FocusControl = DBMemo1
          ExplicitWidth = 65
        end
        object DBMemo1: TDBMemo
          AlignWithMargins = True
          Left = 4
          Top = 220
          Width = 1595
          Height = 169
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alClient
          DataField = 'descricao'
          DataSource = OS.DataSource1
          TabOrder = 0
          ExplicitTop = 232
          ExplicitHeight = 113
        end
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 1603
          Height = 63
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 1603
            Height = 63
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Panel7: TPanel
              Left = 0
              Top = 0
              Width = 88
              Height = 63
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label1: TLabel
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 19
                Height = 20
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Align = alTop
                Caption = 'OS'
                FocusControl = DBEdit1
              end
              object DBEdit1: TDBEdit
                AlignWithMargins = True
                Left = 4
                Top = 32
                Width = 80
                Height = 27
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Align = alClient
                DataField = 'idos'
                DataSource = OS.DataSource1
                ReadOnly = True
                TabOrder = 0
                ExplicitHeight = 28
              end
            end
            object Panel8: TPanel
              Left = 88
              Top = 0
              Width = 67
              Height = 63
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object Label11: TLabel
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 46
                Height = 20
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Align = alTop
                Caption = 'Pedido'
                FocusControl = DBEdit4
              end
              object DBEdit4: TDBEdit
                AlignWithMargins = True
                Left = 4
                Top = 32
                Width = 59
                Height = 27
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                TabStop = False
                Align = alClient
                DataField = 'pedido'
                DataSource = OS.DataSource1
                ReadOnly = True
                TabOrder = 0
                ExplicitHeight = 28
              end
            end
            object Panel9: TPanel
              Left = 715
              Top = 0
              Width = 115
              Height = 63
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 2
              object Label2: TLabel
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 107
                Height = 20
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Align = alTop
                Caption = 'Emiss'#227'o'
                ExplicitWidth = 54
              end
              object JvDBDatePickerEdit1: TJvDBDatePickerEdit
                AlignWithMargins = True
                Left = 4
                Top = 32
                Width = 107
                Height = 27
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Align = alClient
                AllowNoDate = True
                DataField = 'data'
                DataSource = OS.DataSource1
                ReadOnly = True
                TabOrder = 0
                ExplicitHeight = 28
              end
            end
            object Panel10: TPanel
              Left = 830
              Top = 0
              Width = 180
              Height = 63
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 3
              object Label7: TLabel
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 64
                Height = 20
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Align = alTop
                Caption = 'Vendedor'
              end
              object JvDBComboBox7: TJvDBComboBox
                AlignWithMargins = True
                Left = 4
                Top = 32
                Width = 172
                Height = 28
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
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
              Left = 1010
              Top = 0
              Width = 118
              Height = 63
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 4
              object Label3: TLabel
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 61
                Height = 20
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Align = alTop
                Caption = 'Materiais'
                FocusControl = DBEdit5
              end
              object DBEdit5: TDBEdit
                AlignWithMargins = True
                Left = 4
                Top = 32
                Width = 110
                Height = 27
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                TabStop = False
                Align = alClient
                DataField = 'vlmat'
                DataSource = OS.DataSource1
                ReadOnly = True
                TabOrder = 0
                ExplicitHeight = 28
              end
            end
            object Panel12: TPanel
              Left = 1128
              Top = 0
              Width = 119
              Height = 63
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 5
              object Label14: TLabel
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 54
                Height = 20
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Align = alTop
                Caption = 'Servi'#231'os'
                FocusControl = DBEdit6
              end
              object DBEdit6: TDBEdit
                AlignWithMargins = True
                Left = 4
                Top = 32
                Width = 111
                Height = 27
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                TabStop = False
                Align = alClient
                DataField = 'vlsrv'
                DataSource = OS.DataSource1
                ReadOnly = True
                TabOrder = 0
                ExplicitHeight = 28
              end
            end
            object Panel13: TPanel
              Left = 223
              Top = 0
              Width = 50
              Height = 63
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 0
              Margins.Bottom = 4
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 6
              object Label12: TLabel
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 30
                Height = 20
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Align = alTop
                Caption = 'Tipo'
                FocusControl = DBEdit7
              end
              object DBEdit7: TDBEdit
                AlignWithMargins = True
                Left = 4
                Top = 32
                Width = 46
                Height = 27
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 0
                Margins.Bottom = 4
                Align = alClient
                DataField = 'grupo'
                DataSource = OS.DataSource1
                TabOrder = 0
                OnExit = DBEdit7Exit
                ExplicitHeight = 28
              end
            end
            object Panel14: TPanel
              Left = 273
              Top = 0
              Width = 36
              Height = 63
              Margins.Left = 4
              Margins.Top = 28
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 7
              object SpeedButton2: TSpeedButton
                AlignWithMargins = True
                Left = 0
                Top = 29
                Width = 32
                Height = 30
                Margins.Left = 0
                Margins.Top = 29
                Margins.Right = 4
                Margins.Bottom = 4
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
                ExplicitWidth = 33
              end
            end
            object Panel15: TPanel
              Left = 309
              Top = 0
              Width = 406
              Height = 63
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 8
              object Label13: TLabel
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 65
                Height = 20
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Align = alTop
                Caption = 'Descri'#231#227'o'
                FocusControl = DBEdit8
              end
              object DBEdit8: TDBEdit
                AlignWithMargins = True
                Left = 4
                Top = 32
                Width = 398
                Height = 27
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                TabStop = False
                Align = alClient
                DataField = 'descri_grupo'
                DataSource = OS.DataSource1
                ReadOnly = True
                TabOrder = 0
                ExplicitHeight = 28
              end
            end
            object Panel16: TPanel
              Left = 1247
              Top = 0
              Width = 119
              Height = 63
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 9
              object Label15: TLabel
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 53
                Height = 20
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Align = alTop
                Caption = 'M. Obra'
                FocusControl = DBEdit9
              end
              object DBEdit9: TDBEdit
                AlignWithMargins = True
                Left = 4
                Top = 32
                Width = 111
                Height = 27
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                TabStop = False
                Align = alClient
                DataField = 'vlmobra'
                DataSource = OS.DataSource1
                ReadOnly = True
                TabOrder = 0
                ExplicitHeight = 28
              end
            end
            object Panel17: TPanel
              Left = 1366
              Top = 0
              Width = 119
              Height = 63
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 10
              object Label16: TLabel
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 62
                Height = 20
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Align = alTop
                Caption = 'Despesas'
                FocusControl = DBEdit10
              end
              object DBEdit10: TDBEdit
                AlignWithMargins = True
                Left = 4
                Top = 32
                Width = 111
                Height = 27
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                TabStop = False
                Align = alClient
                DataField = 'vlsrvdesp'
                DataSource = OS.DataSource1
                ReadOnly = True
                TabOrder = 0
                ExplicitHeight = 28
              end
            end
            object Panel18: TPanel
              Left = 1485
              Top = 0
              Width = 118
              Height = 63
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 11
              object Label17: TLabel
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 33
                Height = 20
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Align = alTop
                Caption = 'Total'
                FocusControl = DBEdit18
              end
              object DBEdit18: TDBEdit
                AlignWithMargins = True
                Left = 4
                Top = 32
                Width = 110
                Height = 27
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                TabStop = False
                Align = alClient
                DataField = 'vltotal'
                DataSource = OS.DataSource1
                ReadOnly = True
                TabOrder = 0
                ExplicitHeight = 28
              end
            end
            object Panel30: TPanel
              Left = 155
              Top = 0
              Width = 68
              Height = 63
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 12
              object Label18: TLabel
                AlignWithMargins = True
                Left = 4
                Top = 4
                Width = 55
                Height = 20
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                Align = alTop
                Caption = 'Cota'#231#227'o'
                FocusControl = DBEdit35
              end
              object DBEdit35: TDBEdit
                AlignWithMargins = True
                Left = 4
                Top = 32
                Width = 60
                Height = 27
                Margins.Left = 4
                Margins.Top = 4
                Margins.Right = 4
                Margins.Bottom = 4
                TabStop = False
                Align = alClient
                DataField = 'cotacao'
                DataSource = OS.DataSource1
                ReadOnly = True
                TabOrder = 0
                ExplicitHeight = 28
              end
            end
          end
        end
        object Panel21: TPanel
          Left = 0
          Top = 63
          Width = 1603
          Height = 62
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object Panel22: TPanel
            Left = 0
            Top = 0
            Width = 91
            Height = 62
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 0
            Margins.Bottom = 4
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label42: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 51
              Height = 18
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alTop
              Caption = 'Cliente'
              FocusControl = DBEdit27
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Arial'
              Font.Pitch = fpVariable
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit27: TDBEdit
              AlignWithMargins = True
              Left = 4
              Top = 30
              Width = 87
              Height = 28
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 0
              Margins.Bottom = 4
              Align = alClient
              DataField = 'idcliente'
              DataSource = OS.DataSource1
              TabOrder = 0
              OnExit = DBEdit27Exit
              ExplicitHeight = 40
            end
          end
          object Panel23: TPanel
            Left = 128
            Top = 0
            Width = 1000
            Height = 62
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label48: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 85
              Height = 20
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alTop
              Caption = 'Nome Chave'
              FocusControl = DBEdit33
            end
            object DBEdit33: TDBEdit
              AlignWithMargins = True
              Left = 4
              Top = 32
              Width = 992
              Height = 26
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              TabStop = False
              Align = alClient
              DataField = 'nome_chave'
              DataSource = OS.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 28
            end
          end
          object Panel24: TPanel
            Left = 1128
            Top = 0
            Width = 150
            Height = 62
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object Label33: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 45
              Height = 20
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alTop
              Caption = 'C.N.P.J.'
            end
            object DBEdit17: TDBEdit
              AlignWithMargins = True
              Left = 4
              Top = 32
              Width = 142
              Height = 26
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alClient
              DataField = 'cnpj'
              DataSource = OS.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 28
            end
          end
          object Panel29: TPanel
            Left = 1512
            Top = 0
            Width = 91
            Height = 62
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label49: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 57
              Height = 20
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alTop
              Caption = 'Controle'
            end
            object DBEdit34: TDBEdit
              AlignWithMargins = True
              Left = 4
              Top = 32
              Width = 83
              Height = 26
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              TabStop = False
              Align = alClient
              DataField = 'qtdorcs'
              DataSource = OS.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 28
            end
          end
          object Panel34: TPanel
            Left = 91
            Top = 0
            Width = 37
            Height = 62
            Margins.Left = 4
            Margins.Top = 28
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 4
            object SpeedButton4: TSpeedButton
              AlignWithMargins = True
              Left = 0
              Top = 29
              Width = 33
              Height = 29
              Margins.Left = 0
              Margins.Top = 29
              Margins.Right = 4
              Margins.Bottom = 4
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
              ExplicitHeight = 30
            end
          end
          object Panel19: TPanel
            Left = 1278
            Top = 0
            Width = 234
            Height = 62
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 5
            object Label5: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 46
              Height = 20
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alTop
              Caption = 'Pedido'
            end
            object DBEdit53: TDBEdit
              AlignWithMargins = True
              Left = 4
              Top = 32
              Width = 226
              Height = 26
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              TabStop = False
              Align = alClient
              DataField = 'pedidocliente'
              DataSource = OS.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 28
            end
          end
        end
        object Panel31: TPanel
          Left = 0
          Top = 125
          Width = 1603
          Height = 63
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 3
          object Panel33: TPanel
            Left = 0
            Top = 0
            Width = 1292
            Height = 63
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Label35: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 64
              Height = 20
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alTop
              Caption = 'Atividade'
              FocusControl = DBEdit37
            end
            object DBEdit37: TDBEdit
              AlignWithMargins = True
              Left = 4
              Top = 32
              Width = 1284
              Height = 27
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              TabStop = False
              Align = alClient
              DataField = 'atividade'
              DataSource = OS.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 28
            end
          end
          object Panel6: TPanel
            Left = 1292
            Top = 0
            Width = 311
            Height = 63
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            object Label6: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 142
              Height = 20
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alTop
              Caption = 'Condi'#231#227'o Pagamento'
              FocusControl = DBEdit16
            end
            object DBEdit16: TDBEdit
              AlignWithMargins = True
              Left = 4
              Top = 32
              Width = 303
              Height = 27
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alClient
              DataField = 'condicaopg'
              DataSource = OS.DataSource1
              TabOrder = 0
              ExplicitHeight = 28
            end
          end
        end
      end
      object TabSheet9: TTabSheet
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Informa'#231#245'es de Faturamento/Financeiras'
        ImageIndex = 3
        object Bevel6: TBevel
          Left = 608
          Top = 0
          Width = 8
          Height = 385
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alLeft
          Shape = bsSpacer
        end
        object GroupBox8: TGroupBox
          Left = 0
          Top = 0
          Width = 608
          Height = 385
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alLeft
          Caption = ' Notas Fiscais '
          Padding.Left = 6
          Padding.Right = 6
          Padding.Bottom = 6
          TabOrder = 0
          object DBGrid5: TDBGrid
            Tag = 1
            Left = 9
            Top = 21
            Width = 590
            Height = 220
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = dsFat
            DefaultDrawing = False
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            OnDrawColumnCell = ChildGridDrawColumnCell
            OnDblClick = ChildGridDblClick
            OnEnter = ChildGridEnter
            OnKeyPress = ChildGridKeyPress
          end
          object GroupBox9: TGroupBox
            Left = 9
            Top = 241
            Width = 590
            Height = 135
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alBottom
            Caption = ' Detalhes '
            TabOrder = 1
            object Label4: TLabel
              Left = 16
              Top = 21
              Width = 33
              Height = 20
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Nota'
              FocusControl = DBEdit19
            end
            object Label22: TLabel
              Left = 81
              Top = 21
              Width = 33
              Height = 20
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'S'#233'rie'
              FocusControl = DBEdit20
            end
            object Label36: TLabel
              Left = 124
              Top = 21
              Width = 40
              Height = 20
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Status'
              FocusControl = DBEdit21
            end
            object Label37: TLabel
              Left = 225
              Top = 21
              Width = 92
              Height = 20
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Valor Servi'#231'os'
              FocusControl = DBEdit22
            end
            object Label38: TLabel
              Left = 349
              Top = 21
              Width = 99
              Height = 20
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Valor Materiais'
              FocusControl = DBEdit23
            end
            object Label39: TLabel
              Left = 471
              Top = 21
              Width = 64
              Height = 20
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Comiss'#227'o'
              FocusControl = DBEdit24
            end
            object Label40: TLabel
              Left = 16
              Top = 76
              Width = 60
              Height = 20
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Hist'#243'rico'
              FocusControl = DBEdit25
            end
            object Label41: TLabel
              Left = 366
              Top = 76
              Width = 34
              Height = 20
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Valor'
              FocusControl = DBEdit26
            end
            object DBEdit19: TDBEdit
              Left = 16
              Top = 43
              Width = 57
              Height = 28
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              DataField = 'nf'
              DataSource = dsFat
              TabOrder = 0
            end
            object DBEdit20: TDBEdit
              Left = 81
              Top = 43
              Width = 34
              Height = 28
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              DataField = 'serie'
              DataSource = dsFat
              TabOrder = 1
            end
            object DBEdit21: TDBEdit
              Left = 124
              Top = 43
              Width = 94
              Height = 28
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              DataField = 'status'
              DataSource = dsFat
              TabOrder = 2
            end
            object DBEdit22: TDBEdit
              Left = 225
              Top = 43
              Width = 115
              Height = 28
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              DataField = 'vlsrv'
              DataSource = dsFat
              TabOrder = 3
            end
            object DBEdit23: TDBEdit
              Left = 349
              Top = 43
              Width = 115
              Height = 28
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              DataField = 'vlmat'
              DataSource = dsFat
              TabOrder = 4
            end
            object DBEdit24: TDBEdit
              Left = 471
              Top = 43
              Width = 109
              Height = 28
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              DataField = 'vlcom'
              DataSource = dsFat
              TabOrder = 5
            end
            object DBEdit25: TDBEdit
              Left = 16
              Top = 96
              Width = 343
              Height = 28
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              DataField = 'historico'
              DataSource = dsFat
              TabOrder = 6
            end
            object DBEdit26: TDBEdit
              Left = 366
              Top = 96
              Width = 214
              Height = 28
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              DataField = 'valor'
              DataSource = dsFat
              TabOrder = 7
            end
          end
        end
        object GroupBox10: TGroupBox
          Left = 616
          Top = 0
          Width = 985
          Height = 385
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alClient
          Caption = ' T'#237'tulos Financeiros '
          Padding.Left = 6
          Padding.Right = 6
          Padding.Bottom = 6
          TabOrder = 1
          object DBGrid6: TDBGrid
            Tag = 1
            Left = 9
            Top = 21
            Width = 752
            Height = 355
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = dsFin
            DefaultDrawing = False
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            OnDrawColumnCell = ChildGridDrawColumnCell
            OnDblClick = ChildGridDblClick
            OnEnter = ChildGridEnter
            OnKeyPress = ChildGridKeyPress
          end
          object GroupBox11: TGroupBox
            Left = 761
            Top = 21
            Width = 215
            Height = 355
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alRight
            Caption = ' Detalhes do T'#237'tulo '
            TabOrder = 1
            object Label43: TLabel
              Left = 33
              Top = 33
              Width = 54
              Height = 20
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Emiss'#227'o'
              FocusControl = DBEdit28
            end
            object Label44: TLabel
              Left = 40
              Top = 79
              Width = 45
              Height = 20
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Vencto'
              FocusControl = DBEdit29
            end
            object Label45: TLabel
              Left = 8
              Top = 126
              Width = 78
              Height = 20
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Vencto Real'
              FocusControl = DBEdit30
            end
            object Label46: TLabel
              Left = 50
              Top = 173
              Width = 36
              Height = 20
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Baixa'
              FocusControl = DBEdit31
            end
            object Label47: TLabel
              Left = 53
              Top = 220
              Width = 34
              Height = 20
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Caption = 'Valor'
              FocusControl = DBEdit32
            end
            object DBEdit28: TDBEdit
              Left = 94
              Top = 21
              Width = 111
              Height = 28
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              DataField = 'emissao'
              DataSource = dsFin
              TabOrder = 0
            end
            object DBEdit29: TDBEdit
              Left = 94
              Top = 69
              Width = 111
              Height = 28
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              DataField = 'vencimento'
              DataSource = dsFin
              TabOrder = 1
            end
            object DBEdit30: TDBEdit
              Left = 94
              Top = 115
              Width = 111
              Height = 28
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              DataField = 'vencimento_real'
              DataSource = dsFin
              TabOrder = 2
            end
            object DBEdit31: TDBEdit
              Left = 94
              Top = 163
              Width = 111
              Height = 28
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              DataField = 'baixa'
              DataSource = dsFin
              TabOrder = 3
            end
            object DBEdit32: TDBEdit
              Left = 94
              Top = 209
              Width = 111
              Height = 28
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
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
    Left = 5
    Top = 5
    Width = 1611
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    RowSize = 41
    ExplicitLeft = 5
    ExplicitTop = 5
    ExplicitWidth = 1611
    inherited ToolBar1: TToolBar
      Left = 15
      Width = 507
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitLeft = 15
      ExplicitWidth = 507
      inherited ToolButton6: TToolButton
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        AutoSize = False
        Visible = False
        ExplicitWidth = 133
      end
      inherited ToolButton4: TToolButton
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        AutoSize = False
        ExplicitWidth = 133
      end
      inherited ToolButton7: TToolButton
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        AutoSize = False
        Visible = False
        ExplicitWidth = 133
      end
      inherited ToolButtton5: TToolButton
        Width = 13
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitWidth = 13
      end
      inherited ToolButton1: TToolButton
        Left = 109
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        AutoSize = False
        ExplicitLeft = 109
        ExplicitWidth = 133
      end
      inherited ToolButton2: TToolButton
        Left = 141
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        AutoSize = False
        ExplicitLeft = 141
        ExplicitWidth = 133
      end
      inherited ToolButtton15: TToolButton
        Left = 173
        Width = 12
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 173
        ExplicitWidth = 12
      end
      inherited ToolButton8: TToolButton
        Left = 185
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        AutoSize = False
        ExplicitLeft = 185
        ExplicitWidth = 133
      end
      inherited ToolButton9: TToolButton
        Left = 217
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        AutoSize = False
        ExplicitLeft = 217
        ExplicitWidth = 133
      end
      inherited ToolButton14: TToolButton
        Left = 249
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        AutoSize = False
        ExplicitLeft = 249
        ExplicitWidth = 133
      end
      inherited ToolButton16: TToolButton
        Left = 281
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        AutoSize = False
        ExplicitLeft = 281
        ExplicitWidth = 133
      end
      inherited tbDiv: TToolButton
        Left = 313
        Width = 13
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 313
        ExplicitWidth = 13
      end
      inherited tbSQL: TToolButton
        Left = 326
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 326
        ExplicitWidth = 133
      end
      inherited tbDiv3: TToolButton
        Left = 358
        Width = 12
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 358
        ExplicitWidth = 12
      end
      inherited tbClose: TToolButton
        Left = 370
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        AutoSize = False
        ExplicitLeft = 370
        ExplicitWidth = 133
      end
    end
    object ToolBar2: TToolBar
      Left = 538
      Top = 2
      Width = 225
      Height = 34
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      AutoSize = True
      BorderWidth = 1
      ButtonHeight = 30
      ButtonWidth = 96
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
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = actLucra
        Style = tbsTextButton
      end
      object ToolButton5: TToolButton
        Left = 93
        Top = 0
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
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
    object actCopyCont: TAction
      Caption = 'Copiar Contatos'
      Enabled = False
      ImageIndex = 224
      OnExecute = actCopyContExecute
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
