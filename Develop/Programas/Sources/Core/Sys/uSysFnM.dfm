inherited SysFnM: TSysFnM
  Caption = 'Rotina de manuten'#231#227'o de Procedures e Triggers'
  ClientHeight = 774
  ClientWidth = 1160
  ExplicitWidth = 1166
  ExplicitHeight = 803
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 1160
    Height = 730
    ExplicitTop = 44
    ExplicitWidth = 1160
    ExplicitHeight = 730
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
      Width = 1154
      Height = 724
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 1154
      ExplicitHeight = 724
      inherited TabSheet1: TTabSheet
        Caption = 'Procedures / Triggers'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 1146
        ExplicitHeight = 694
        object GroupBox1: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 53
          Width = 1140
          Height = 132
          Align = alTop
          Caption = ' Informa'#231#245'es do Gatilho '
          TabOrder = 0
          object Panel4: TPanel
            Left = 2
            Top = 17
            Width = 1136
            Height = 50
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Panel9: TPanel
              Left = 0
              Top = 0
              Width = 73
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label3: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 67
                Height = 15
                Align = alTop
                Caption = 'Tabela'
                FocusControl = DBEdit3
                ExplicitWidth = 33
              end
              object DBEdit3: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 70
                Height = 23
                Margins.Right = 0
                Align = alClient
                CharCase = ecLowerCase
                DataField = 'table_recno'
                DataSource = SysFn.DataSource1
                TabOrder = 0
                OnExit = DBEdit3Exit
              end
            end
            object Panel10: TPanel
              Left = 73
              Top = 0
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
                Action = actFindTable
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
                ExplicitLeft = 177
                ExplicitTop = 27
                ExplicitWidth = 24
              end
            end
            object Panel11: TPanel
              Left = 102
              Top = 0
              Width = 619
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 2
              object Label5: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 613
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
                Width = 613
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'tabela'
                DataSource = SysFn.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel12: TPanel
              Left = 721
              Top = 0
              Width = 415
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 3
              object Label4: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 409
                Height = 15
                Align = alTop
                Caption = 'Registro'
                FocusControl = DBEdit4
                ExplicitWidth = 43
              end
              object DBEdit4: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 409
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'table_name'
                DataSource = SysFn.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
          end
          object Panel13: TPanel
            Left = 2
            Top = 67
            Width = 1136
            Height = 50
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object Panel14: TPanel
              Left = 0
              Top = 0
              Width = 106
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label6: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 100
                Height = 15
                Align = alTop
                Caption = 'Disparo'
                FocusControl = DBEdit3
                ExplicitWidth = 40
              end
              object DBComboBox1: TDBComboBox
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 100
                Height = 23
                Style = csDropDownList
                Align = alClient
                DataField = 'evento'
                DataSource = SysFn.DataSource1
                ItemHeight = 15
                Items.Strings = (
                  'Before'
                  'After')
                TabOrder = 0
              end
            end
            object Panel15: TPanel
              Left = 106
              Top = 0
              Width = 200
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object DBCheckBox1: TDBCheckBox
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 194
                Height = 23
                Margins.Top = 24
                Align = alClient
                Caption = 'Disparar na Inser'#231#227'o (Insert)'
                DataField = 'ins'
                DataSource = SysFn.DataSource1
                TabOrder = 0
                ValueChecked = 'True'
                ValueUnchecked = 'False'
              end
            end
            object Panel16: TPanel
              Left = 306
              Top = 0
              Width = 200
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 2
              object DBCheckBox2: TDBCheckBox
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 194
                Height = 23
                Margins.Top = 24
                Align = alClient
                Caption = 'Disparar na Atualiza'#231#227'o (Update)'
                DataField = 'upd'
                DataSource = SysFn.DataSource1
                TabOrder = 0
                ValueChecked = 'True'
                ValueUnchecked = 'False'
              end
            end
            object Panel17: TPanel
              Left = 506
              Top = 0
              Width = 200
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 3
              object DBCheckBox3: TDBCheckBox
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 194
                Height = 23
                Margins.Top = 24
                Align = alClient
                Caption = 'Disparar na Exclus'#227'o (Delete)'
                DataField = 'del'
                DataSource = SysFn.DataSource1
                TabOrder = 0
                ValueChecked = 'True'
                ValueUnchecked = 'False'
              end
            end
            object Panel18: TPanel
              Left = 695
              Top = 0
              Width = 185
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 4
              object Label9: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 179
                Height = 15
                Align = alTop
                Caption = 'Modifica'#231#227'o'
                FocusControl = DBEdit2
                ExplicitWidth = 66
              end
              object DBEdit7: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 179
                Height = 23
                Align = alClient
                DataField = 'modification'
                DataSource = SysFn.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel19: TPanel
              Left = 880
              Top = 0
              Width = 256
              Height = 50
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 5
              object Label10: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 250
                Height = 15
                Align = alTop
                Caption = 'Soma de Verifica'#231#227'o'
                FocusControl = DBEdit2
                ExplicitWidth = 106
              end
              object DBEdit8: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 250
                Height = 23
                Align = alClient
                DataField = 'checksum'
                DataSource = SysFn.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 1146
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 247
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 241
              Height = 15
              Align = alTop
              Caption = 'Rotina'
              FocusControl = DBEdit1
              ExplicitWidth = 34
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 241
              Height = 23
              Align = alClient
              CharCase = ecLowerCase
              DataField = 'fn'
              DataSource = SysFn.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel6: TPanel
            Left = 247
            Top = 0
            Width = 657
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 651
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
              Width = 651
              Height = 23
              Align = alClient
              DataField = 'descri'
              DataSource = SysFn.DataSource1
              TabOrder = 0
            end
          end
          object Panel7: TPanel
            Left = 904
            Top = 0
            Width = 121
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object Label7: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 115
              Height = 15
              Align = alTop
              Caption = 'Tipo'
              FocusControl = DBEdit6
              ExplicitWidth = 23
            end
            object DBEdit6: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 115
              Height = 23
              Align = alClient
              CharCase = ecLowerCase
              DataField = 'tipo'
              DataSource = SysFn.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel8: TPanel
            Left = 1025
            Top = 0
            Width = 121
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label8: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 115
              Height = 15
              Align = alTop
              Caption = 'Status'
              ExplicitWidth = 32
            end
            object JvDBComboBox1: TJvDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 115
              Height = 23
              Align = alClient
              DataField = 'status'
              DataSource = SysFn.DataSource1
              Items.Strings = (
                'Desenvolvimento'
                'Pronta')
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
        object GroupBox2: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 191
          Width = 1140
          Height = 500
          Align = alClient
          Caption = ' Fonte '
          TabOrder = 2
          object SynEdit1: TSynEdit
            Left = 2
            Top = 17
            Width = 1136
            Height = 481
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Courier New'
            Font.Style = []
            TabOrder = 0
            BookMarkOptions.LeftMargin = 0
            BookMarkOptions.XOffset = 0
            BorderStyle = bsNone
            Gutter.AutoSize = True
            Gutter.Font.Charset = DEFAULT_CHARSET
            Gutter.Font.Color = clWindowText
            Gutter.Font.Height = -11
            Gutter.Font.Name = 'Courier New'
            Gutter.Font.Style = []
            Gutter.LeftOffset = 12
            Gutter.ShowLineNumbers = True
            Gutter.Width = 23
            Gutter.Gradient = True
            Highlighter = SynSQLSyn1
            RightEdge = 120
            FontSmoothing = fsmClearType
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 1154
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 1154
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      Width = 675
      ButtonWidth = 115
      ExplicitWidth = 675
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
    Left = 208
    object actFindTable: TAction
      ImageIndex = 332
      OnExecute = actFindTableExecute
    end
  end
  object SynSQLSyn1: TSynSQLSyn
    Options.AutoDetectEnabled = False
    Options.AutoDetectLineLimit = 0
    Options.Visible = False
    CommentAttri.Foreground = clGreen
    ConditionalCommentAttri.Foreground = clGreen
    FunctionAttri.Foreground = clBlack
    IdentifierAttri.Foreground = clBlack
    KeyAttri.Foreground = clBlue
    KeyAttri.Style = []
    PLSQLAttri.Style = []
    StringAttri.Foreground = clRed
    SymbolAttri.Style = [fsBold]
    ProcNameAttri.Foreground = clFuchsia
    TableNameAttri.Foreground = clFuchsia
    VariableAttri.Foreground = clPurple
    SQLDialect = sqlPostgres
    Left = 984
    Top = 296
  end
end
