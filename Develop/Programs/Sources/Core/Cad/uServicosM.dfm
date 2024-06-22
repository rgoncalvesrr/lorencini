inherited ServicosM: TServicosM
  Margins.Left = 6
  Margins.Top = 6
  Margins.Right = 6
  Margins.Bottom = 6
  Caption = 'Naturezas'
  ClientHeight = 924
  ClientWidth = 1461
  Constraints.MinWidth = 803
  ParentFont = True
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1479
  ExplicitHeight = 971
  PixelsPerInch = 120
  TextHeight = 20
  inherited Panel1: TPanel
    Top = 48
    Width = 1461
    Height = 876
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 48
    ExplicitWidth = 1461
    ExplicitHeight = 876
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
      Top = 188
      Width = 1461
      Height = 688
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Visible = True
      StyleElements = [seFont, seClient, seBorder]
      ExplicitTop = 188
      ExplicitWidth = 1461
      ExplicitHeight = 688
      inherited PageControl3: TPageControl
        Left = 5
        Top = 53
        Width = 1451
        Height = 630
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 5
        ExplicitTop = 53
        ExplicitWidth = 1451
        ExplicitHeight = 630
        inherited tsDet: TTabSheet
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Caption = 'Desdobramento'
          ExplicitTop = 31
          ExplicitWidth = 1443
          ExplicitHeight = 595
          inherited DBGrid1: TDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 5
            Width = 1433
            Height = 585
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            DataSource = dsNatDet
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
          Caption = 'Tipo de Laudos'
          ImageIndex = 1
          object CheckListBox1: TCheckListBox
            Left = 0
            Top = 42
            Width = 1443
            Height = 553
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            Columns = 4
            ItemHeight = 21
            TabOrder = 0
            OnClickCheck = CheckListBox1ClickCheck
          end
          object ToolBar2: TToolBar
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 1435
            Height = 34
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            AutoSize = True
            BorderWidth = 1
            ButtonHeight = 30
            ButtonWidth = 59
            Caption = 'ToolBar1'
            DisabledImages = Resources.medium_d
            DrawingStyle = dsGradient
            HotImages = Resources.medium_h
            Images = Resources.medium_n
            List = True
            ParentShowHint = False
            ShowCaptions = True
            AllowTextButtons = True
            ShowHint = True
            TabOrder = 1
            object ToolButton5: TToolButton
              Left = 0
              Top = 0
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              AutoSize = True
            end
            object ToolButton15: TToolButton
              Left = 59
              Top = 0
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              AutoSize = True
            end
          end
        end
      end
      inherited ControlBar2: TControlBar
        Left = 5
        Top = 5
        Width = 1451
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        RowSize = 41
        ExplicitLeft = 5
        ExplicitTop = 5
        ExplicitWidth = 1451
        inherited ToolBar3: TToolBar
          Left = 18
          Width = 1011
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          ExplicitLeft = 18
          ExplicitWidth = 1011
          inherited ToolButton10: TToolButton
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
          end
          inherited ToolButton11: TToolButton
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
          end
          inherited ToolButton17: TToolButton
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
          end
          inherited ToolButton12: TToolButton
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
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
          end
          inherited tbRefazGrid: TToolButton
            Left = 217
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            ExplicitLeft = 217
          end
        end
      end
    end
    inherited PageControl1: TPageControl
      Left = 5
      Top = 5
      Width = 1451
      Height = 178
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitLeft = 5
      ExplicitTop = 5
      ExplicitWidth = 1451
      ExplicitHeight = 178
      inherited TabSheet1: TTabSheet
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Natureza'
        ExplicitTop = 31
        ExplicitWidth = 1443
        ExplicitHeight = 143
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 1443
          Height = 63
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 251
            Height = 63
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label6: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 243
              Height = 20
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alTop
              Caption = 'Categoria'
              ExplicitWidth = 65
            end
            object DBLookupComboBox1: TDBLookupComboBox
              AlignWithMargins = True
              Left = 4
              Top = 32
              Width = 243
              Height = 28
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alClient
              DataField = 'grupo'
              DataSource = Servicos.DataSource1
              KeyField = 'recno'
              ListField = 'descri'
              ListSource = dsCategorias
              TabOrder = 0
            end
          end
          object Panel7: TPanel
            Left = 251
            Top = 0
            Width = 112
            Height = 63
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label1: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 104
              Height = 20
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alTop
              Caption = 'Natureza'
              FocusControl = DBEdit1
              ExplicitWidth = 60
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 4
              Top = 32
              Width = 104
              Height = 27
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alClient
              DataField = 'codserv'
              DataSource = Servicos.DataSource1
              Enabled = False
              TabOrder = 0
              ExplicitHeight = 28
            end
          end
          object Panel8: TPanel
            Left = 363
            Top = 0
            Width = 965
            Height = 63
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 2
            object Label2: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 957
              Height = 20
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alTop
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit2
              ExplicitWidth = 65
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 4
              Top = 32
              Width = 957
              Height = 27
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alClient
              DataField = 'descri'
              DataSource = Servicos.DataSource1
              TabOrder = 0
              ExplicitHeight = 28
            end
          end
          object Panel9: TPanel
            Left = 1328
            Top = 0
            Width = 115
            Height = 63
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label5: TLabel
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
              Caption = 'Tipo'
              ExplicitWidth = 30
            end
            object JvDBComboBox1: TJvDBComboBox
              AlignWithMargins = True
              Left = 4
              Top = 32
              Width = 107
              Height = 28
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alClient
              DataField = 'tipo'
              DataSource = Servicos.DataSource1
              Items.Strings = (
                'Vari'#225'vel'
                'Fixa')
              TabOrder = 0
              Values.Strings = (
                '1'
                '2')
              ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
              ListSettings.OutfilteredValueFont.Color = clRed
              ListSettings.OutfilteredValueFont.Height = -11
              ListSettings.OutfilteredValueFont.Name = 'Tahoma'
              ListSettings.OutfilteredValueFont.Style = []
            end
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 63
          Width = 1443
          Height = 62
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 248
            Height = 62
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label3: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 240
              Height = 20
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alTop
              Caption = 'Unidade'
              ExplicitWidth = 56
            end
            object DBLookupComboBox2: TDBLookupComboBox
              AlignWithMargins = True
              Left = 4
              Top = 32
              Width = 240
              Height = 28
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alClient
              DataField = 'un'
              DataSource = Servicos.DataSource1
              KeyField = 'un'
              ListField = 'un;descri'
              ListSource = dsUnidades
              TabOrder = 0
            end
          end
          object Panel10: TPanel
            Left = 987
            Top = 0
            Width = 165
            Height = 62
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 5
            object Label4: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 157
              Height = 20
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alTop
              Caption = 'Consumo Flu'#237'do'
              ExplicitWidth = 107
            end
            object JvDBCalcEdit1: TJvDBCalcEdit
              AlignWithMargins = True
              Left = 4
              Top = 32
              Width = 157
              Height = 26
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alClient
              ButtonWidth = 26
              TabOrder = 0
              DecimalPlacesAlwaysShown = False
              DataField = 'consumo'
              DataSource = Servicos.DataSource1
              ExplicitHeight = 28
            end
          end
          object Panel11: TPanel
            Left = 1152
            Top = 0
            Width = 291
            Height = 62
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 6
            object DBCheckBox1: TDBCheckBox
              AlignWithMargins = True
              Left = 4
              Top = 30
              Width = 283
              Height = 28
              Margins.Left = 4
              Margins.Top = 30
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alClient
              Caption = 'Imprimir na Se'#231#227'o Servi'#231'os Executados'
              DataField = 'prnsecserv'
              DataSource = Servicos.DataSource1
              TabOrder = 0
            end
          end
          object Panel12: TPanel
            Left = 248
            Top = 0
            Width = 188
            Height = 62
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label7: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 180
              Height = 20
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alTop
              Caption = 'Valor'
              ExplicitWidth = 34
            end
            object JvDBCalcEdit2: TJvDBCalcEdit
              AlignWithMargins = True
              Left = 4
              Top = 32
              Width = 180
              Height = 26
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alClient
              DisplayFormat = ',0.00'
              ButtonWidth = 26
              TabOrder = 0
              DecimalPlacesAlwaysShown = True
              DataField = 'valor'
              DataSource = Servicos.DataSource1
              ExplicitHeight = 28
            end
          end
          object Panel14: TPanel
            Left = 436
            Top = 0
            Width = 72
            Height = 62
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object Label9: TLabel
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
              Caption = 'Vidraria'
              FocusControl = DBEdit8
              ExplicitWidth = 52
            end
            object DBEdit8: TDBEdit
              AlignWithMargins = True
              Left = 4
              Top = 32
              Width = 68
              Height = 26
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 0
              Margins.Bottom = 4
              Align = alClient
              DataField = 'vidraria'
              DataSource = Servicos.DataSource1
              TabOrder = 0
              OnExit = DBEdit8Exit
              ExplicitHeight = 28
            end
          end
          object Panel35: TPanel
            Left = 508
            Top = 0
            Width = 36
            Height = 62
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 3
            object SpeedButton1: TSpeedButton
              AlignWithMargins = True
              Left = 0
              Top = 30
              Width = 32
              Height = 28
              Margins.Left = 0
              Margins.Top = 30
              Margins.Right = 4
              Margins.Bottom = 4
              Action = actFindRecipiente
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
              ExplicitHeight = 29
            end
          end
          object Panel15: TPanel
            Left = 544
            Top = 0
            Width = 443
            Height = 62
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 4
            object Label10: TLabel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 435
              Height = 20
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              Align = alTop
              Caption = 'Recipiente'
              FocusControl = DBEdit9
              ExplicitWidth = 70
            end
            object DBEdit9: TDBEdit
              AlignWithMargins = True
              Left = 4
              Top = 32
              Width = 435
              Height = 26
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 4
              Margins.Bottom = 4
              TabStop = False
              Align = alClient
              DataField = 'recipiente'
              DataSource = Servicos.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitHeight = 28
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Left = 5
    Top = 5
    Width = 1451
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    RowSize = 41
    ExplicitLeft = 5
    ExplicitTop = 5
    ExplicitWidth = 1451
    inherited ToolBar1: TToolBar
      Left = 18
      Width = 771
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitLeft = 18
      ExplicitWidth = 771
      inherited ToolButton6: TToolButton
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
      end
      inherited ToolButton4: TToolButton
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
      end
      inherited ToolButton7: TToolButton
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
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
        ExplicitLeft = 109
      end
      inherited ToolButton2: TToolButton
        Left = 141
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 141
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
        ExplicitLeft = 185
      end
      inherited ToolButton9: TToolButton
        Left = 217
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 217
      end
      inherited ToolButton14: TToolButton
        Left = 249
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 249
      end
      inherited ToolButton16: TToolButton
        Left = 281
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 281
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
        ExplicitLeft = 370
      end
    end
  end
  inherited alDef: TActionList
    Left = 424
    Top = 48
    object actFindRecipiente: TAction
      ImageIndex = 332
      OnExecute = actFindRecipienteExecute
    end
  end
  object dsNatDet: TDataSource
    AutoEdit = False
    DataSet = Servicos.qNatDet
    Left = 368
    Top = 48
  end
  object dsCategorias: TDataSource
    AutoEdit = False
    DataSet = Servicos.qCate
    Left = 256
    Top = 48
  end
  object dsUnidades: TDataSource
    AutoEdit = False
    DataSet = Servicos.qUnidade
    Left = 304
    Top = 48
  end
end
