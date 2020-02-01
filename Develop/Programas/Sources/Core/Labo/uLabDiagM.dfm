inherited LabDiagM: TLabDiagM
  Caption = 'Manuten'#231#227'o de Diagn'#243'sticos'
  ClientHeight = 535
  ClientWidth = 641
  Constraints.MinWidth = 647
  ExplicitWidth = 647
  ExplicitHeight = 564
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 641
    Height = 491
    ExplicitWidth = 641
    ExplicitHeight = 491
    inherited Panel3: TPanel
      Top = 256
      Width = 641
      ExplicitTop = 256
      ExplicitWidth = 641
      inherited PageControl3: TPageControl
        Width = 635
        ExplicitWidth = 635
        inherited tsDet: TTabSheet
          Caption = 'Tipos de Laudo'
          ExplicitWidth = 627
          inherited DBGrid1: TDBGrid
            Width = 627
            DataSource = LabDiag.dsLaudos
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Recomenda'#231#245'es'
          ImageIndex = 1
          object DBGrid2: TDBGrid
            Tag = 1
            Left = 0
            Top = 0
            Width = 627
            Height = 155
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = LabDiag.dsRec
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
            TitleFont.Style = []
            OnDrawColumnCell = ChildGridDrawColumnCell
            OnDblClick = ChildGridDblClick
            OnEnter = ChildGridEnter
            OnKeyPress = ChildGridKeyPress
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 635
        inherited ToolBar3: TToolBar
          Width = 622
          ExplicitWidth = 622
        end
      end
    end
    inherited PageControl1: TPageControl
      Width = 635
      Height = 250
      ExplicitWidth = 635
      ExplicitHeight = 250
      inherited TabSheet1: TTabSheet
        Caption = 'Diagn'#243'stico'
        ExplicitWidth = 627
        ExplicitHeight = 220
        object Label1: TLabel
          Left = 3
          Top = 9
          Width = 39
          Height = 15
          Caption = 'C'#243'digo'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 62
          Top = 9
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 501
          Top = 9
          Width = 116
          Height = 15
          Caption = 'Pr'#243'xima An'#225'lise (dias)'
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 3
          Top = 99
          Width = 63
          Height = 15
          Caption = 'Diagn'#243'stico'
          FocusControl = DBMemo1
        end
        object Label5: TLabel
          Left = 3
          Top = 51
          Width = 34
          Height = 15
          Caption = 'Grupo'
          FocusControl = DBEdit4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SpeedButton2: TSpeedButton
          Left = 56
          Top = 69
          Width = 24
          Height = 23
          Action = actFindGrupo
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
        end
        object Label6: TLabel
          Left = 83
          Top = 51
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit5
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 26
          Width = 53
          Height = 23
          TabStop = False
          DataField = 'recno'
          DataSource = LabDiag.DataSource1
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 62
          Top = 26
          Width = 433
          Height = 23
          DataField = 'descri'
          DataSource = LabDiag.DataSource1
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 501
          Top = 26
          Width = 115
          Height = 23
          DataField = 'dias'
          DataSource = LabDiag.DataSource1
          TabOrder = 2
        end
        object DBMemo1: TDBMemo
          Left = 3
          Top = 120
          Width = 613
          Height = 83
          DataField = 'diag'
          DataSource = LabDiag.DataSource1
          TabOrder = 5
        end
        object DBEdit4: TDBEdit
          Left = 3
          Top = 69
          Width = 52
          Height = 23
          DataField = 'labdiag_gp_recno'
          DataSource = LabDiag.DataSource1
          TabOrder = 3
          OnExit = DBEdit4Exit
        end
        object DBEdit5: TDBEdit
          Left = 83
          Top = 69
          Width = 533
          Height = 23
          TabStop = False
          DataField = 'grupo'
          DataSource = LabDiag.DataSource1
          ReadOnly = True
          TabOrder = 4
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 635
    inherited ToolBar1: TToolBar
      Width = 622
      ExplicitWidth = 622
    end
  end
  inherited alDef: TActionList
    Left = 208
    object actFindGrupo: TAction
      ImageIndex = 332
      OnExecute = actFindGrupoExecute
    end
  end
end
