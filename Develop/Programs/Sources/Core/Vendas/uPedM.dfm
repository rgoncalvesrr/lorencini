inherited PedM: TPedM
  BorderStyle = bsSingle
  Caption = 'Manuten'#231#227'o de Pedido'
  ClientHeight = 643
  ClientWidth = 1132
  ExplicitWidth = 1138
  ExplicitHeight = 672
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 1132
    Height = 599
    ExplicitTop = 44
    ExplicitWidth = 1132
    ExplicitHeight = 599
    inherited Panel3: TPanel
      Top = 361
      Width = 1132
      Height = 238
      Alignment = taLeftJustify
      ExplicitTop = 361
      ExplicitWidth = 1132
      ExplicitHeight = 238
      inherited PageControl3: TPageControl
        Top = 47
        Width = 1126
        Height = 188
        ExplicitLeft = 3
        ExplicitTop = 47
        ExplicitWidth = 1126
        ExplicitHeight = 188
        inherited tsDet: TTabSheet
          Caption = 'Servi'#231'os'
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 1118
          ExplicitHeight = 158
          inherited DBGrid1: TDBGrid
            Width = 1118
            Height = 158
            DataSource = Ped.dsServ
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Materiais'
          ImageIndex = 1
          object DBGrid2: TDBGrid
            Tag = 1
            Left = 0
            Top = 0
            Width = 1118
            Height = 158
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = Ped.dsMat
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
        object TabSheet3: TTabSheet
          Caption = 'M'#227'o-de-Obra'
          ImageIndex = 2
          object DBGrid3: TDBGrid
            Tag = 1
            Left = 0
            Top = 0
            Width = 1118
            Height = 158
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = Ped.dsMObra
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
        object TabSheet7: TTabSheet
          Caption = 'Despesas'
          ImageIndex = 3
          object DBGrid4: TDBGrid
            Tag = 1
            Left = 0
            Top = 0
            Width = 710
            Height = 158
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = Ped.dsDesp
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
          object Panel61: TPanel
            Left = 710
            Top = 0
            Width = 408
            Height = 158
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            object Label44: TLabel
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
              Height = 131
              Align = alClient
              DataField = 'historico'
              DataSource = Ped.dsDesp
              TabOrder = 0
            end
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 1126
        Height = 38
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 1126
        ExplicitHeight = 38
        inherited ToolBar3: TToolBar
          Width = 1111
          ButtonWidth = 129
          ExplicitWidth = 1111
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
      Width = 1126
      Height = 355
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 1126
      ExplicitHeight = 355
      inherited TabSheet1: TTabSheet
        Caption = 'Pedido de Servi'#231'o'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 1118
        ExplicitHeight = 325
        object GroupBox2: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 59
          Width = 1112
          Height = 72
          Align = alTop
          Caption = ' Patrocinador '
          Padding.Bottom = 3
          TabOrder = 1
          object Panel2: TPanel
            Left = 2
            Top = 17
            Width = 57
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label9: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 51
              Height = 15
              Align = alTop
              Caption = 'C'#243'digo'
              FocusControl = DBEdit8
              ExplicitWidth = 39
            end
            object DBEdit8: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 54
              Height = 23
              Margins.Right = 0
              Align = alClient
              DataField = 'codigo'
              DataSource = Ped.DataSource1
              TabOrder = 0
              OnExit = DBEdit8Exit
            end
          end
          object Panel4: TPanel
            Left = 88
            Top = 17
            Width = 418
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label10: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 412
              Height = 15
              Align = alTop
              Caption = 'Nome Empresarial'
              FocusControl = DBEdit9
              ExplicitWidth = 97
            end
            object DBEdit9: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 412
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'empresa'
              DataSource = Ped.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel5: TPanel
            Left = 506
            Top = 17
            Width = 187
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object Label11: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 181
              Height = 15
              Align = alTop
              Caption = 'Nome Curto'
              FocusControl = DBEdit10
              ExplicitWidth = 66
            end
            object DBEdit10: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 181
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'nome_chave'
              DataSource = Ped.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel6: TPanel
            Left = 693
            Top = 17
            Width = 120
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label12: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 114
              Height = 15
              Align = alTop
              Caption = 'CNPJ'
              FocusControl = DBEdit11
              ExplicitWidth = 27
            end
            object DBEdit11: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 114
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'cnpj'
              DataSource = Ped.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel7: TPanel
            Left = 813
            Top = 17
            Width = 98
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 4
            object Label13: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 92
              Height = 15
              Align = alTop
              Caption = 'CPF'
              FocusControl = DBEdit12
              ExplicitWidth = 21
            end
            object DBEdit12: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 92
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'cpf'
              DataSource = Ped.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel30: TPanel
            Left = 911
            Top = 17
            Width = 199
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 5
            object Label20: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 193
              Height = 15
              Align = alTop
              Caption = 'Email'
              FocusControl = DBEdit17
              ExplicitWidth = 29
            end
            object DBEdit17: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 193
              Height = 23
              TabStop = False
              Align = alClient
              CharCase = ecLowerCase
              DataField = 'email'
              DataSource = Ped.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel35: TPanel
            Left = 59
            Top = 17
            Width = 29
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 6
            object SpeedButton1: TSpeedButton
              AlignWithMargins = True
              Left = 0
              Top = 24
              Width = 26
              Height = 23
              Margins.Left = 0
              Margins.Top = 24
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
              ExplicitTop = 36
              ExplicitWidth = 23
              ExplicitHeight = 21
            end
          end
        end
        object Panel8: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1112
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel9: TPanel
            Left = 0
            Top = 0
            Width = 49
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 43
              Height = 15
              Align = alTop
              Caption = 'Pedido'
              FocusControl = DBEdit1
              ExplicitWidth = 37
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 43
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'recno'
              DataSource = Ped.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel10: TPanel
            Left = 49
            Top = 0
            Width = 176
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label14: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 170
              Height = 15
              Align = alTop
              Caption = 'Status'
              ExplicitWidth = 32
            end
            object DBEdit19: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 170
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'status'
              DataSource = Ped.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel14: TPanel
            Left = 225
            Top = 0
            Width = 40
            Height = 50
            Margins.Right = 0
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object Label5: TLabel
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
              DataSource = Ped.DataSource1
              TabOrder = 0
              OnExit = DBEdit7Exit
            end
          end
          object Panel15: TPanel
            Left = 265
            Top = 0
            Width = 29
            Height = 50
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 3
            object SpeedButton4: TSpeedButton
              AlignWithMargins = True
              Left = 0
              Top = 24
              Width = 26
              Height = 23
              Margins.Left = 0
              Margins.Top = 24
              Action = actFindGrupo
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
              ExplicitTop = 21
              ExplicitWidth = 24
            end
          end
          object Panel16: TPanel
            Left = 294
            Top = 0
            Width = 368
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 4
            object Label6: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 362
              Height = 15
              Align = alTop
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit5
              ExplicitWidth = 51
            end
            object DBEdit5: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 362
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'descri'
              DataSource = Ped.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel31: TPanel
            Left = 752
            Top = 0
            Width = 90
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 6
            object Label7: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 84
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
              Width = 84
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'vlsrv'
              DataSource = Ped.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel32: TPanel
            Left = 662
            Top = 0
            Width = 90
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 5
            object Label21: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 84
              Height = 15
              Align = alTop
              Caption = 'Materiais'
              FocusControl = DBEdit18
              ExplicitWidth = 48
            end
            object DBEdit18: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 84
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'vlmat'
              DataSource = Ped.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel33: TPanel
            Left = 842
            Top = 0
            Width = 90
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 7
            object Label22: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 84
              Height = 15
              Align = alTop
              Caption = 'M. Obra'
              FocusControl = DBEdit20
              ExplicitWidth = 43
            end
            object DBEdit20: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 84
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'vlmobra'
              DataSource = Ped.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel34: TPanel
            Left = 932
            Top = 0
            Width = 90
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 8
            object Label23: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 84
              Height = 15
              Align = alTop
              Caption = 'Despesas'
              FocusControl = DBEdit33
              ExplicitWidth = 48
            end
            object DBEdit33: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 84
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'vldespe'
              DataSource = Ped.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel36: TPanel
            Left = 1022
            Top = 0
            Width = 90
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 9
            object Label24: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 84
              Height = 15
              Align = alTop
              Caption = 'Valor'
              FocusControl = DBEdit34
              ExplicitWidth = 26
            end
            object DBEdit34: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 84
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'vltotal'
              DataSource = Ped.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
        object Panel24: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 249
          Width = 1112
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 4
          object Panel25: TPanel
            Left = 0
            Top = 0
            Width = 177
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label15: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 171
              Height = 15
              Align = alTop
              Caption = 'Solicitante'
              FocusControl = DBEdit13
              ExplicitWidth = 55
            end
            object DBEdit13: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 171
              Height = 23
              Align = alClient
              DataField = 'solicitante'
              DataSource = Ped.DataSource1
              TabOrder = 0
            end
          end
          object Panel26: TPanel
            Left = 177
            Top = 0
            Width = 144
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label16: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 138
              Height = 15
              Align = alTop
              Caption = 'Departamento'
              FocusControl = DBEdit14
              ExplicitWidth = 76
            end
            object DBEdit14: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 138
              Height = 23
              Align = alClient
              DataField = 'solicitante_dep'
              DataSource = Ped.DataSource1
              TabOrder = 0
            end
          end
          object Panel27: TPanel
            Left = 321
            Top = 0
            Width = 88
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object Label17: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 82
              Height = 15
              Align = alTop
              Caption = 'Pedido Cliente'
              FocusControl = DBEdit15
              ExplicitWidth = 77
            end
            object DBEdit15: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 82
              Height = 23
              Align = alClient
              DataField = 'pedido_cliente'
              DataSource = Ped.DataSource1
              TabOrder = 0
            end
          end
          object Panel28: TPanel
            Left = 409
            Top = 0
            Width = 96
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 3
            object Label18: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 90
              Height = 15
              Align = alTop
              Caption = 'Aprova'#231#227'o'
              ExplicitWidth = 57
            end
            object DBComboBox1: TDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 90
              Height = 23
              Style = csDropDownList
              Align = alClient
              DataField = 'aprovado'
              DataSource = Ped.DataSource1
              Enabled = False
              ItemHeight = 15
              Items.Strings = (
                'Email'
                'Verbal'
                'Autom'#225'tica')
              ReadOnly = True
              TabOrder = 0
              TabStop = False
            end
          end
          object Panel29: TPanel
            Left = 505
            Top = 0
            Width = 511
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 4
            object Label19: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 505
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
              Width = 505
              Height = 23
              Align = alClient
              DataField = 'condicaopg'
              DataSource = Ped.DataSource1
              TabOrder = 0
            end
          end
          object Panel57: TPanel
            Left = 1016
            Top = 0
            Width = 96
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 5
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
              DataSource = Ped.DataSource1
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
        end
        object Panel51: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 193
          Width = 1112
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 3
          object Panel54: TPanel
            Left = 0
            Top = 0
            Width = 120
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label39: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 114
              Height = 15
              Align = alTop
              Caption = 'Entrada'
              FocusControl = DBEdit37
              ExplicitWidth = 40
            end
            object DBEdit37: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 114
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'criado'
              DataSource = Ped.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel55: TPanel
            Left = 120
            Top = 0
            Width = 120
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label40: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 114
              Height = 15
              Align = alTop
              Caption = 'Emiss'#227'o'
              FocusControl = DBEdit38
              ExplicitWidth = 43
            end
            object DBEdit38: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 114
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'emitido'
              DataSource = Ped.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel56: TPanel
            Left = 240
            Top = 0
            Width = 120
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object Label41: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 114
              Height = 15
              Align = alTop
              AutoSize = False
              Caption = 'Autoriza'#231#227'o'
              FocusControl = DBEdit39
              ExplicitLeft = 2
              ExplicitTop = 2
              ExplicitWidth = 116
            end
            object DBEdit39: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 114
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'autorizado'
              DataSource = Ped.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel11: TPanel
            Left = 693
            Top = 0
            Width = 54
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 6
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 48
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
              Width = 48
              Height = 23
              Align = alClient
              DataField = 'frascos'
              DataSource = Ped.DataSource1
              TabOrder = 0
            end
          end
          object Panel12: TPanel
            Left = 747
            Top = 0
            Width = 56
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 7
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 50
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
              Width = 50
              Height = 23
              Align = alClient
              DataField = 'seringas'
              DataSource = Ped.DataSource1
              TabOrder = 0
            end
          end
          object Panel13: TPanel
            Left = 433
            Top = 0
            Width = 120
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 4
            object Label25: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 114
              Height = 15
              Align = alTop
              Caption = 'Tipo de Envio'
              ExplicitWidth = 71
            end
            object cbEnvio: TJvDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 114
              Height = 23
              Align = alClient
              DataField = 'envio'
              DataSource = Ped.DataSource1
              Items.Strings = (
                'Correio'
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
          object Panel52: TPanel
            Left = 553
            Top = 0
            Width = 140
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 5
            object Label4: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 134
              Height = 15
              Align = alTop
              Caption = 'Repons'#225'vel pelo Frete'
              ExplicitWidth = 115
            end
            object cbFrete: TJvDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 134
              Height = 23
              Align = alClient
              DataField = 'coleta'
              DataSource = Ped.DataSource1
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
          object Panel53: TPanel
            Left = 803
            Top = 0
            Width = 167
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 8
            object Label38: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 161
              Height = 15
              Align = alTop
              Caption = 'Frete'
              ExplicitWidth = 26
            end
            object SpeedButton6: TSpeedButton
              AlignWithMargins = True
              Left = 138
              Top = 24
              Width = 26
              Height = 23
              Margins.Left = 1
              Action = actFreteCorreio
              Align = alRight
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00C1C3C5004B769500275E87006A8AA200B4BAC000FF00FF00FF00
                FF00C1C5C6000A6B9B000A6B9B00BBC1C500FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00597E9B0010508100306E99001D5D8B000D4E7E003D6D9000829B
                AD000A6B9B00B3FCFC00AEFCFC000A6B9B00BBC1C500FF00FF00FF00FF00FF00
                FF0090A3B1000B4C7C003F7EAA00447FA7003775A20033739F00246492000A6B
                9B00BFFCFC00BAFAFB00A6CFE900AEFCFC000A6B9B00BBC1C500FF00FF00B6BC
                C1001A558100306F9B005A98C0005288AE003977A4003775A2000A6B9B00C7FC
                FC00C6FAFB00A6CFE900B7FCFC00A6CFE900AEFCFC000A6B9B00FF00FF00406E
                90001F5F8D005795BE0063A0C8006193B5003C7AA6003977A4000A6B9B00D0F8
                FA00CCFCFC00C3FCFC00A6CFE900B3FCFC00B3FCFC000A6B9B007692A7001454
                84004F8EB700619DC5005E9BC300336C96002C6C99003775A2000A6B9B00D8FC
                FC00104F8000C7FCFC00BFFCFC00BCFCFC000A6B9B00BDC3C500275E87004181
                AC005D99C200518FB900155484003F759D001B5C8A000D4E7E000A6B9B00DCFC
                FC00D4FCFC00CAFAFB00C7FCFC000A6B9B00BFC4C600FF00FF0020598400508E
                B8004785AF0013538300619EC60087AEC9004483AD004180AB0017729F000A6B
                9B000A6B9B000A6B9B000A6B9B000F508000FF00FF00FF00FF00205984003373
                9F001656860066A4CB0087C2E60094B8D0004685AF004382AC004180AB001C5D
                8B002A6997003775A2002A699700104F8000FF00FF00FF00FF00185481001B5B
                8A006DABD10083BFE4008FCAEE00A7C4D8004987B2004685AF004382AC001D5E
                8C002C6B98003C7AA6003977A30012528200FF00FF00FF00FF002059830066A3
                CC0080BDE2008CC7EB00A4D7F700D8E4ED0086AECB005E95BB004685AF001E5E
                8C002D6D99003E7DA8003C7AA60013528200FF00FF00FF00FF002059840070AC
                D30089C4E900ACD7F200C1DDEE0099D0F000A0CFEB009CC1D90094B7CF002A63
                8E004C80A700558CB3003F7DA90013538300FF00FF00FF00FF00205984007BB5
                DB00ACD2E900A6CFE90086C1E6007CB8DE0073AFD5004B89B300155484002564
                9200558FB6005B91B5005487AC001C598600FF00FF00FF00FF00255C86008FBA
                D50090C5E4007BB7DD0072AED4005996BF0021618F00175786003C7AA6004381
                AC002E6E9A00165585002C61890099A9B400FF00FF00FF00FF0097A8B4002A5F
                88000F4F7F001E5E8C00286795000D4E7E00266593003C7BA6002A6997001352
                830035678C0093A5B300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00A4B0B900899EAE006C8BA2004F78980030648A00447193009EAC
                B700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
              ParentShowHint = False
              ShowHint = True
              ExplicitTop = 23
            end
            object edFrete: TJvDBCalcEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 131
              Height = 23
              Align = alClient
              DisplayFormat = ',0.#0'
              TabOrder = 0
              DecimalPlacesAlwaysShown = False
              DataField = 'frete'
              DataSource = Ped.DataSource1
            end
          end
          object Panel58: TPanel
            Left = 360
            Top = 0
            Width = 73
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 3
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
              DataSource = Ped.DataSource1
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
        end
        object Panel59: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 137
          Width = 1112
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object Panel60: TPanel
            Left = 0
            Top = 0
            Width = 904
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitWidth = 1112
            object Label8: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 898
              Height = 15
              Align = alTop
              Caption = 'Destinat'#225'rio'
              FocusControl = DBEdit2
              ExplicitWidth = 63
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 898
              Height = 23
              Align = alClient
              DataField = 'destinatario'
              DataSource = Ped.DataSource1
              TabOrder = 0
              ExplicitWidth = 1106
            end
          end
          object Panel62: TPanel
            Left = 904
            Top = 0
            Width = 208
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitLeft = 872
            ExplicitTop = 3
            object Label45: TLabel
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
              DataSource = Ped.DataSource1
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
      object TabSheet4: TTabSheet
        Caption = 'Contatos'
        ImageIndex = 1
        object GroupBox1: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 81
          Width = 1112
          Height = 72
          Align = alTop
          Caption = ' Contato Financeiro '
          Padding.Bottom = 3
          TabOrder = 1
          object Panel37: TPanel
            Left = 2
            Top = 17
            Width = 57
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label26: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 51
              Height = 15
              Align = alTop
              Caption = 'C'#243'digo'
              ExplicitWidth = 39
            end
            object DBEdit21: TDBEdit
              Tag = 1
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 54
              Height = 23
              Margins.Right = 0
              Align = alClient
              DataField = 'contato_fin'
              DataSource = Ped.DataSource1
              TabOrder = 0
              OnExit = DBEdit49Exit
            end
          end
          object Panel38: TPanel
            Left = 59
            Top = 17
            Width = 29
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object SpeedButton2: TSpeedButton
              AlignWithMargins = True
              Left = 0
              Top = 24
              Width = 26
              Height = 23
              Margins.Left = 0
              Margins.Top = 24
              Action = actFindCliContFin
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
              ExplicitTop = 21
              ExplicitWidth = 22
            end
          end
          object Panel39: TPanel
            Left = 88
            Top = 17
            Width = 208
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object Label27: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 202
              Height = 15
              Align = alTop
              Caption = 'Nome'
              ExplicitWidth = 33
            end
            object DBEdit22: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 202
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'contatofin_nome'
              DataSource = Ped.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel40: TPanel
            Left = 296
            Top = 17
            Width = 137
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 3
            object Label28: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 131
              Height = 15
              Align = alTop
              Caption = 'Cargo'
              ExplicitWidth = 32
            end
            object DBEdit23: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 131
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'contatofin_funcao'
              DataSource = Ped.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel41: TPanel
            Left = 433
            Top = 17
            Width = 102
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 4
            object Label29: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 96
              Height = 15
              Align = alTop
              Caption = 'Telefone'
              ExplicitWidth = 44
            end
            object DBEdit24: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 96
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'contatofin_telefone'
              DataSource = Ped.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel42: TPanel
            Left = 535
            Top = 17
            Width = 114
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 5
            object Label30: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 108
              Height = 15
              Align = alTop
              Caption = 'Celular'
              ExplicitWidth = 37
            end
            object DBEdit25: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 108
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'contatofin_celular'
              DataSource = Ped.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel43: TPanel
            Left = 649
            Top = 17
            Width = 461
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 6
            object Label31: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 455
              Height = 15
              Align = alTop
              Caption = 'Email'
              ExplicitWidth = 29
            end
            object DBEdit26: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 455
              Height = 23
              TabStop = False
              Align = alClient
              CharCase = ecLowerCase
              DataField = 'contatofin_email'
              DataSource = Ped.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
        object GroupBox4: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 159
          Width = 1112
          Height = 72
          Align = alTop
          Caption = ' Contato T'#233'cnico '
          Padding.Bottom = 3
          TabOrder = 2
          object Panel44: TPanel
            Left = 2
            Top = 17
            Width = 57
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label32: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 51
              Height = 15
              Align = alTop
              Caption = 'C'#243'digo'
              ExplicitWidth = 39
            end
            object DBEdit27: TDBEdit
              Tag = 2
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 54
              Height = 23
              Margins.Right = 0
              Align = alClient
              DataField = 'contato_tec'
              DataSource = Ped.DataSource1
              TabOrder = 0
              OnExit = DBEdit49Exit
            end
          end
          object Panel45: TPanel
            Left = 59
            Top = 17
            Width = 29
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object SpeedButton3: TSpeedButton
              AlignWithMargins = True
              Left = 0
              Top = 24
              Width = 26
              Height = 23
              Margins.Left = 0
              Margins.Top = 24
              Action = actFindCliContTec
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
              ExplicitTop = 21
              ExplicitWidth = 22
            end
          end
          object Panel46: TPanel
            Left = 88
            Top = 17
            Width = 208
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object Label33: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 202
              Height = 15
              Align = alTop
              Caption = 'Nome'
              ExplicitWidth = 33
            end
            object DBEdit28: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 202
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'contatotec_nome'
              DataSource = Ped.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel47: TPanel
            Left = 296
            Top = 17
            Width = 137
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 3
            object Label34: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 131
              Height = 15
              Align = alTop
              Caption = 'Cargo'
              ExplicitWidth = 32
            end
            object DBEdit29: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 131
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'contatotec_funcao'
              DataSource = Ped.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel48: TPanel
            Left = 433
            Top = 17
            Width = 102
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 4
            object Label35: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 96
              Height = 15
              Align = alTop
              Caption = 'Telefone'
              ExplicitWidth = 44
            end
            object DBEdit30: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 96
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'contatotec_telefone'
              DataSource = Ped.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel49: TPanel
            Left = 535
            Top = 17
            Width = 114
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 5
            object Label36: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 108
              Height = 15
              Align = alTop
              Caption = 'Celular'
              ExplicitWidth = 37
            end
            object DBEdit31: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 108
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'contatotec_celular'
              DataSource = Ped.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel50: TPanel
            Left = 649
            Top = 17
            Width = 461
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 6
            object Label37: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 455
              Height = 15
              Align = alTop
              Caption = 'Email'
              ExplicitWidth = 29
            end
            object DBEdit32: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 455
              Height = 23
              TabStop = False
              Align = alClient
              CharCase = ecLowerCase
              DataField = 'contatotec_email'
              DataSource = Ped.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
        object GroupBox3: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1112
          Height = 72
          Align = alTop
          Caption = ' Contato '
          Padding.Bottom = 3
          TabOrder = 0
          object Panel17: TPanel
            Left = 2
            Top = 17
            Width = 57
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label51: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 51
              Height = 15
              Align = alTop
              Caption = 'C'#243'digo'
              ExplicitWidth = 39
            end
            object DBEdit49: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 54
              Height = 23
              Margins.Right = 0
              Align = alClient
              DataField = 'contato'
              DataSource = Ped.DataSource1
              TabOrder = 0
              OnExit = DBEdit49Exit
            end
          end
          object Panel18: TPanel
            Left = 59
            Top = 17
            Width = 29
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object SpeedButton5: TSpeedButton
              AlignWithMargins = True
              Left = 0
              Top = 24
              Width = 26
              Height = 23
              Margins.Left = 0
              Margins.Top = 24
              Action = actFindCliCont
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
              ExplicitTop = 21
              ExplicitWidth = 22
            end
          end
          object Panel19: TPanel
            Left = 88
            Top = 17
            Width = 208
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object Label47: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 202
              Height = 15
              Align = alTop
              Caption = 'Nome'
              ExplicitWidth = 33
            end
            object DBEdit45: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 202
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'nome'
              DataSource = Ped.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel20: TPanel
            Left = 296
            Top = 17
            Width = 137
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 3
            object Label48: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 131
              Height = 15
              Align = alTop
              Caption = 'Cargo'
              ExplicitWidth = 32
            end
            object DBEdit48: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 131
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'funcao'
              DataSource = Ped.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel21: TPanel
            Left = 433
            Top = 17
            Width = 102
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 4
            object Label49: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 96
              Height = 15
              Align = alTop
              Caption = 'Telefone'
              ExplicitWidth = 44
            end
            object DBEdit47: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 96
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'telefone_1'
              DataSource = Ped.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel22: TPanel
            Left = 535
            Top = 17
            Width = 114
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 5
            object Label50: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 108
              Height = 15
              Align = alTop
              Caption = 'Celular'
              ExplicitWidth = 37
            end
            object DBEdit46: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 108
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'celular'
              DataSource = Ped.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel23: TPanel
            Left = 649
            Top = 17
            Width = 461
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 6
            object Label52: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 455
              Height = 15
              Align = alTop
              Caption = 'Email'
              ExplicitWidth = 29
            end
            object DBEdit50: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 455
              Height = 23
              TabStop = False
              Align = alClient
              CharCase = ecLowerCase
              DataField = 'email_1'
              DataSource = Ped.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Observa'#231#245'es'
        ImageIndex = 2
        object GroupBox5: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1112
          Height = 121
          Align = alTop
          Caption = ' Observa'#231#227'o Pedido / Laborat'#243'rio '
          TabOrder = 0
          object DBMemo1: TDBMemo
            AlignWithMargins = True
            Left = 5
            Top = 20
            Width = 1102
            Height = 96
            Align = alClient
            DataField = 'obs'
            DataSource = Ped.DataSource1
            TabOrder = 0
          end
        end
        object GroupBox6: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 130
          Width = 1112
          Height = 121
          Align = alTop
          Caption = ' Observa'#231#227'o Remessa '
          TabOrder = 1
          object DBMemo2: TDBMemo
            AlignWithMargins = True
            Left = 5
            Top = 20
            Width = 1102
            Height = 96
            Align = alClient
            DataField = 'obs_remessa'
            DataSource = Ped.DataSource1
            TabOrder = 0
          end
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'Cliente do Laudo'
        ImageIndex = 3
        object GroupBox7: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1112
          Height = 124
          Align = alTop
          Caption = ' Cliente do Laudo '
          TabOrder = 0
          inline FrameCliente1: TFrameCliente
            Left = 2
            Top = 17
            Width = 1108
            Height = 100
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
            ExplicitLeft = 2
            ExplicitTop = 17
            inherited Panel1: TPanel
              inherited Panel2: TPanel
                Width = 57
                ExplicitWidth = 57
                ExplicitHeight = 50
                inherited Label9: TLabel
                  Width = 51
                end
                inherited DBEdit8: TDBEdit
                  Width = 54
                  DataField = 'cliente'
                  OnExit = FrameCliente1DBEdit8Exit
                  ExplicitTop = 24
                  ExplicitWidth = 54
                  ExplicitHeight = 23
                end
              end
              inherited Panel35: TPanel
                Left = 57
                ExplicitLeft = 57
                ExplicitHeight = 50
                inherited SpeedButton1: TSpeedButton
                  Width = 27
                  Height = 24
                  Margins.Right = 2
                  Margins.Bottom = 3
                  ExplicitLeft = 0
                  ExplicitTop = 16
                  ExplicitWidth = 20
                  ExplicitHeight = 20
                end
              end
              inherited Panel4: TPanel
                Left = 86
                Width = 617
                ExplicitLeft = 86
                ExplicitWidth = 617
                ExplicitHeight = 50
                inherited Label10: TLabel
                  Width = 611
                end
                inherited DBEdit9: TDBEdit
                  Width = 611
                  DataField = 'cliente_empresa'
                  ExplicitTop = 24
                  ExplicitWidth = 611
                  ExplicitHeight = 23
                end
              end
              inherited Panel5: TPanel
                Left = 703
                Width = 186
                ExplicitLeft = 703
                ExplicitWidth = 186
                ExplicitHeight = 50
                inherited Label11: TLabel
                  Width = 180
                end
                inherited DBEdit10: TDBEdit
                  Width = 180
                  DataField = 'cliente_nome_chave'
                  ExplicitTop = 24
                  ExplicitWidth = 180
                  ExplicitHeight = 23
                end
              end
              inherited Panel6: TPanel
                Left = 889
                Width = 120
                ExplicitLeft = 889
                ExplicitWidth = 120
                ExplicitHeight = 50
                inherited Label12: TLabel
                  Width = 114
                end
                inherited DBEdit11: TDBEdit
                  Width = 114
                  DataField = 'cliente_cnpj'
                  ExplicitTop = 24
                  ExplicitWidth = 114
                  ExplicitHeight = 23
                end
              end
              inherited Panel7: TPanel
                Left = 1009
                Width = 99
                ExplicitLeft = 1009
                ExplicitWidth = 99
                ExplicitHeight = 50
                inherited Label13: TLabel
                  Width = 93
                end
                inherited DBEdit12: TDBEdit
                  Width = 93
                  DataField = 'cliente_cpf'
                  ExplicitTop = 24
                  ExplicitWidth = 93
                  ExplicitHeight = 23
                end
              end
            end
            inherited Panel3: TPanel
              inherited Panel8: TPanel
                Left = 241
                Width = 732
                ExplicitLeft = 241
                ExplicitWidth = 732
                ExplicitHeight = 50
                inherited Label1: TLabel
                  Width = 726
                end
                inherited DBEdit1: TDBEdit
                  Width = 726
                  DataField = 'cliente_cidade'
                  ExplicitTop = 24
                  ExplicitWidth = 726
                  ExplicitHeight = 23
                end
              end
              inherited Panel9: TPanel
                Left = 973
                Width = 39
                ExplicitLeft = 973
                ExplicitWidth = 39
                ExplicitHeight = 50
                inherited Label2: TLabel
                  Width = 33
                end
                inherited DBEdit2: TDBEdit
                  Width = 33
                  DataField = 'cliente_estado'
                  ExplicitTop = 24
                  ExplicitWidth = 33
                  ExplicitHeight = 23
                end
              end
              inherited Panel30: TPanel
                Width = 241
                ExplicitWidth = 241
                ExplicitHeight = 50
                inherited Label20: TLabel
                  Width = 235
                end
                inherited DBEdit17: TDBEdit
                  Width = 235
                  DataField = 'cliente_email'
                  ExplicitTop = 24
                  ExplicitWidth = 235
                  ExplicitHeight = 23
                end
              end
              inherited Panel10: TPanel
                Left = 1012
                Width = 96
                ExplicitLeft = 1012
                ExplicitWidth = 96
                ExplicitHeight = 50
                inherited Label3: TLabel
                  Width = 90
                end
                inherited DBEdit3: TDBEdit
                  Width = 90
                  DataField = 'cliente_telefone'
                  ExplicitTop = 24
                  ExplicitWidth = 90
                  ExplicitHeight = 23
                end
              end
            end
            inherited dsCliente: TDataSource
              DataSet = Ped.IBrwSrc
              Left = 200
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 1126
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 1126
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      Width = 1112
      ButtonWidth = 115
      ExplicitWidth = 1112
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
      inherited tbDiv: TToolButton
        Enabled = False
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
    end
  end
  inherited alDef: TActionList
    Left = 192
    Top = 32
    inherited actNew: TAction
      Caption = 'Novo...'
    end
    object actFindCliCont: TAction
      ImageIndex = 332
      OnExecute = actFindCliContExecute
    end
    object actFindCli: TAction
      ImageIndex = 332
      OnExecute = actFindCliExecute
    end
    object actPrint: TAction
      Caption = 'Selecionada'
      ImageIndex = 287
      OnExecute = actPrintExecute
    end
    object actPrintAll: TAction
      Caption = 'Todas'
      ImageIndex = 287
      OnExecute = actPrintAllExecute
    end
    object actDespVinc: TAction
      ImageIndex = 336
      OnExecute = actDespVincExecute
    end
    object actFindCliContFin: TAction
      Tag = 1
      ImageIndex = 332
      OnExecute = actFindCliContExecute
    end
    object actFindCliContTec: TAction
      Tag = 2
      ImageIndex = 332
      OnExecute = actFindCliContExecute
    end
    object actFindGrupo: TAction
      OnExecute = actFindGrupoExecute
    end
    object actFreteCorreio: TAction
      ImageIndex = 268
      OnExecute = actFreteCorreioExecute
    end
  end
  object pmPrint: TPopupMenu
    Left = 240
    Top = 32
    object Selecionada1: TMenuItem
      Action = actPrint
    end
    object odas1: TMenuItem
      Action = actPrintAll
    end
  end
end
