inherited SysMenuEditorItem: TSysMenuEditorItem
  Caption = 'Item de Menu'
  ClientHeight = 240
  ClientWidth = 558
  ExplicitWidth = 574
  ExplicitHeight = 279
  PixelsPerInch = 96
  TextHeight = 15
  inherited ControlBar1: TControlBar
    Width = 552
    ExplicitWidth = 550
    inherited ToolBar1: TToolBar
      Width = 537
      ExplicitWidth = 537
      inherited ToolButton2: TToolButton
        AutoSize = True
        ExplicitWidth = 85
      end
    end
  end
  object PageControl1: TPageControl [1]
    AlignWithMargins = True
    Left = 3
    Top = 47
    Width = 552
    Height = 190
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    TabStop = False
    ExplicitLeft = 8
    object TabSheet1: TTabSheet
      Caption = 'Edi'#231#227'o do Item'
      ExplicitWidth = 281
      ExplicitHeight = 163
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 544
        Height = 50
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitTop = 44
        ExplicitWidth = 730
        object Label1: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 538
          Height = 15
          Align = alTop
          Caption = 'T'#237'tulo'
          ExplicitLeft = 33
          ExplicitTop = 35
          ExplicitWidth = 30
        end
        object edCaption: TEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 538
          Height = 23
          Align = alClient
          MaxLength = 150
          TabOrder = 0
          ExplicitLeft = 7
          ExplicitTop = 21
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 50
        Width = 544
        Height = 50
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitTop = 53
        ExplicitWidth = 281
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 113
          Height = 50
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitLeft = -3
          ExplicitTop = 3
          object Label2: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 107
            Height = 15
            Align = alTop
            Caption = 'Formul'#225'rio'
            ExplicitLeft = 33
            ExplicitTop = 35
            ExplicitWidth = 58
          end
          object edForm: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 107
            Height = 23
            Align = alClient
            CharCase = ecUpperCase
            MaxLength = 150
            TabOrder = 0
            OnChange = edFormChange
            OnExit = edFormExit
            ExplicitLeft = -62
            ExplicitTop = 27
            ExplicitWidth = 175
          end
        end
        object Panel5: TPanel
          Left = 113
          Top = 0
          Width = 29
          Height = 50
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitLeft = 116
          ExplicitTop = -3
          object SpeedButton1: TSpeedButton
            AlignWithMargins = True
            Left = 0
            Top = 24
            Width = 26
            Height = 23
            Margins.Left = 0
            Margins.Top = 24
            Action = actLkpForms
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
            ExplicitLeft = 89
            ExplicitTop = 26
            ExplicitWidth = 24
            ExplicitHeight = 24
          end
        end
        object Panel6: TPanel
          Left = 142
          Top = 0
          Width = 402
          Height = 50
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 2
          ExplicitLeft = 229
          ExplicitTop = 3
          ExplicitWidth = 490
          object Label4: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 396
            Height = 15
            Align = alTop
            Caption = 'Descri'#231#227'o'
            ExplicitWidth = 51
          end
          object edDescri: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 396
            Height = 23
            Align = alClient
            MaxLength = 150
            TabOrder = 0
            ExplicitLeft = -223
            ExplicitWidth = 278
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 100
        Width = 544
        Height = 50
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        ExplicitTop = 103
        ExplicitWidth = 281
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 65
          Height = 50
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object Label3: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 59
            Height = 15
            Align = alTop
            Caption = 'Relat'#243'rio'
            ExplicitTop = 35
            ExplicitWidth = 47
          end
          object edReport: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 59
            Height = 23
            Align = alClient
            CharCase = ecUpperCase
            MaxLength = 150
            TabOrder = 0
            OnExit = edReportExit
            ExplicitLeft = -14
            ExplicitTop = 27
            ExplicitWidth = 64
          end
        end
        object Panel8: TPanel
          Left = 65
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
            Action = actLkpReports
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
            ExplicitLeft = 27
            ExplicitTop = 26
            ExplicitWidth = 23
            ExplicitHeight = 24
          end
        end
        object Panel9: TPanel
          Left = 94
          Top = 0
          Width = 450
          Height = 50
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 2
          ExplicitLeft = 174
          ExplicitTop = 6
          ExplicitWidth = 50
          object Label5: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 444
            Height = 15
            Align = alTop
            Caption = 'Descri'#231#227'o'
            ExplicitWidth = 51
          end
          object edDescForm: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 444
            Height = 23
            Align = alClient
            MaxLength = 150
            TabOrder = 0
            ExplicitLeft = -337
            ExplicitWidth = 387
          end
        end
      end
    end
  end
  inherited alDef: TActionList
    Left = 152
    Top = 0
    inherited actCancel: TAction
      Enabled = True
    end
    object actLkpForms: TAction
      ImageIndex = 332
      OnExecute = actLkpFormsExecute
    end
    object actLkpReports: TAction
      ImageIndex = 332
    end
  end
end
