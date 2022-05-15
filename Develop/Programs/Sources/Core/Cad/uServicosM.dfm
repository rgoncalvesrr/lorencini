inherited ServicosM: TServicosM
  Caption = 'Naturezas'
  ClientHeight = 739
  ClientWidth = 1167
  Constraints.MinWidth = 642
  ExplicitWidth = 1173
  ExplicitHeight = 768
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 1167
    Height = 695
    ExplicitWidth = 1167
    ExplicitHeight = 695
    inherited Panel3: TPanel
      Top = 144
      Width = 1167
      Height = 551
      Visible = True
      ExplicitTop = 144
      ExplicitWidth = 1167
      ExplicitHeight = 551
      inherited PageControl3: TPageControl
        Width = 1161
        Height = 501
        ExplicitWidth = 1161
        ExplicitHeight = 501
        inherited tsDet: TTabSheet
          Caption = 'Desdobramento'
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 1153
          ExplicitHeight = 471
          inherited DBGrid1: TDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1147
            Height = 465
            DataSource = dsNatDet
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Tipo de Laudos'
          ImageIndex = 1
          object CheckListBox1: TCheckListBox
            Left = 0
            Top = 40
            Width = 1153
            Height = 431
            OnClickCheck = CheckListBox1ClickCheck
            Align = alClient
            Columns = 4
            ItemHeight = 15
            TabOrder = 0
          end
          object ToolBar2: TToolBar
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1147
            Height = 34
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
              AutoSize = True
            end
            object ToolButton15: TToolButton
              Left = 59
              Top = 0
              AutoSize = True
            end
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 1161
        ExplicitWidth = 1161
        inherited ToolBar3: TToolBar
          Width = 809
          ExplicitWidth = 809
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
      Width = 1161
      Height = 138
      ExplicitWidth = 1161
      ExplicitHeight = 138
      inherited TabSheet1: TTabSheet
        Caption = 'Natureza'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 1153
        ExplicitHeight = 108
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 1153
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 201
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label6: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 195
              Height = 15
              Align = alTop
              Caption = 'Categoria'
              ExplicitWidth = 51
            end
            object DBLookupComboBox1: TDBLookupComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 195
              Height = 23
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
            Left = 201
            Top = 0
            Width = 89
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 83
              Height = 15
              Align = alTop
              Caption = 'Natureza'
              FocusControl = DBEdit1
              ExplicitWidth = 47
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 83
              Height = 23
              Align = alClient
              DataField = 'codserv'
              DataSource = Servicos.DataSource1
              Enabled = False
              TabOrder = 0
            end
          end
          object Panel8: TPanel
            Left = 290
            Top = 0
            Width = 771
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 2
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 765
              Height = 15
              Align = alTop
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit2
              ExplicitWidth = 51
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 765
              Height = 23
              Align = alClient
              DataField = 'descri'
              DataSource = Servicos.DataSource1
              TabOrder = 0
            end
          end
          object Panel9: TPanel
            Left = 1061
            Top = 0
            Width = 92
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label5: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 86
              Height = 15
              Align = alTop
              Caption = 'Tipo'
              ExplicitWidth = 23
            end
            object JvDBComboBox1: TJvDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 86
              Height = 23
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
          Top = 50
          Width = 1153
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 198
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 192
              Height = 15
              Align = alTop
              Caption = 'Unidade'
              ExplicitWidth = 44
            end
            object DBLookupComboBox2: TDBLookupComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 192
              Height = 23
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
            Left = 788
            Top = 0
            Width = 132
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 5
            ExplicitLeft = 785
            ExplicitTop = 3
            object Label4: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 126
              Height = 15
              Align = alTop
              Caption = 'Consumo Flu'#237'do'
              ExplicitWidth = 88
            end
            object JvDBCalcEdit1: TJvDBCalcEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 126
              Height = 23
              Align = alClient
              TabOrder = 0
              DecimalPlacesAlwaysShown = False
              DataField = 'consumo'
              DataSource = Servicos.DataSource1
            end
          end
          object Panel11: TPanel
            Left = 920
            Top = 0
            Width = 233
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 6
            ExplicitLeft = 923
            ExplicitTop = 3
            object DBCheckBox1: TDBCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 227
              Height = 23
              Margins.Top = 24
              Align = alClient
              Caption = 'Imprimir na Se'#231#227'o Servi'#231'os Executados'
              DataField = 'prnsecserv'
              DataSource = Servicos.DataSource1
              TabOrder = 0
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              ExplicitLeft = 40
              ExplicitWidth = 229
            end
          end
          object Panel12: TPanel
            Left = 198
            Top = 0
            Width = 151
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitLeft = 195
            ExplicitTop = 3
            object Label7: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 145
              Height = 15
              Align = alTop
              Caption = 'Valor'
              ExplicitWidth = 26
            end
            object JvDBCalcEdit2: TJvDBCalcEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 145
              Height = 23
              Align = alClient
              DisplayFormat = ',0.00'
              TabOrder = 0
              DecimalPlacesAlwaysShown = True
              DataField = 'valor'
              DataSource = Servicos.DataSource1
            end
          end
          object Panel14: TPanel
            Left = 349
            Top = 0
            Width = 57
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitLeft = 346
            ExplicitTop = 3
            object Label9: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 51
              Height = 15
              Align = alTop
              Caption = 'Vidraria'
              FocusControl = DBEdit8
              ExplicitWidth = 40
            end
            object DBEdit8: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 54
              Height = 23
              Margins.Right = 0
              Align = alClient
              DataField = 'vidraria'
              DataSource = Servicos.DataSource1
              TabOrder = 0
              OnExit = DBEdit8Exit
            end
          end
          object Panel35: TPanel
            Left = 406
            Top = 0
            Width = 29
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 3
            ExplicitLeft = 392
            ExplicitTop = 3
            object SpeedButton1: TSpeedButton
              AlignWithMargins = True
              Left = 0
              Top = 24
              Width = 26
              Height = 23
              Margins.Left = 0
              Margins.Top = 24
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
              ExplicitTop = 32
            end
          end
          object Panel15: TPanel
            Left = 435
            Top = 0
            Width = 353
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 4
            ExplicitLeft = 438
            ExplicitTop = 3
            ExplicitWidth = 314
            object Label10: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 347
              Height = 15
              Align = alTop
              Caption = 'Recipiente'
              FocusControl = DBEdit9
              ExplicitWidth = 55
            end
            object DBEdit9: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 347
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'recipiente'
              DataSource = Servicos.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitWidth = 472
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 1161
    ExplicitWidth = 1161
    inherited ToolBar1: TToolBar
      Width = 617
      ExplicitWidth = 617
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
    end
  end
  inherited alDef: TActionList
    Left = 168
    Top = 8
    object actFindRecipiente: TAction
      ImageIndex = 332
      OnExecute = actFindRecipienteExecute
    end
  end
  object dsNatDet: TDataSource
    AutoEdit = False
    DataSet = Servicos.qNatDet
    Left = 104
    Top = 8
  end
  object dsCategorias: TDataSource
    AutoEdit = False
    DataSet = Servicos.qCate
    Left = 40
    Top = 8
  end
  object dsUnidades: TDataSource
    AutoEdit = False
    DataSet = Servicos.qUnidade
    Left = 72
    Top = 8
  end
end
