inherited LabInstM: TLabInstM
  Caption = 'Manuten'#231#227'o de Instrumentos'
  ClientHeight = 377
  ClientWidth = 828
  Constraints.MinWidth = 691
  ExplicitWidth = 834
  ExplicitHeight = 406
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 828
    Height = 333
    ExplicitWidth = 828
    ExplicitHeight = 333
    inherited Panel3: TPanel
      Top = 98
      Width = 828
      ExplicitTop = 98
      ExplicitWidth = 828
      inherited PageControl3: TPageControl
        Width = 822
        ExplicitWidth = 822
        inherited tsDet: TTabSheet
          Caption = 'Certificados de Aferi'#231#227'o'
          ExplicitWidth = 814
          inherited DBGrid1: TDBGrid
            Width = 814
            DataSource = LabInst.dsLabInstCert
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Ensaios'
          ImageIndex = 1
          object DBGrid2: TDBGrid
            Tag = 1
            Left = 0
            Top = 0
            Width = 814
            Height = 155
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = LabInst.dsLabEns
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
        Width = 822
        ExplicitWidth = 822
        inherited ToolBar3: TToolBar
          Width = 809
          ExplicitWidth = 809
        end
      end
    end
    inherited PageControl1: TPageControl
      Width = 822
      Height = 92
      ExplicitWidth = 822
      ExplicitHeight = 92
      inherited TabSheet1: TTabSheet
        Caption = 'Instrumento'
        ExplicitWidth = 814
        ExplicitHeight = 62
        object Label1: TLabel
          Left = 3
          Top = 9
          Width = 65
          Height = 15
          Caption = 'Instrumento'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 70
          Top = 9
          Width = 25
          Height = 15
          Caption = 'S'#233'rie'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 168
          Top = 9
          Width = 41
          Height = 15
          Caption = 'Modelo'
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 265
          Top = 9
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit4
        end
        object Label5: TLabel
          Left = 504
          Top = 9
          Width = 33
          Height = 15
          Caption = 'Grupo'
          FocusControl = DBEdit5
        end
        object SpeedButton2: TSpeedButton
          Left = 537
          Top = 26
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
          Left = 565
          Top = 9
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit6
        end
        object Label7: TLabel
          Left = 729
          Top = 9
          Width = 58
          Height = 15
          Caption = 'Aferido at'#233
          FocusControl = DBEdit7
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 26
          Width = 60
          Height = 23
          TabStop = False
          DataField = 'recno'
          DataSource = LabInst.DataSource1
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 70
          Top = 26
          Width = 94
          Height = 23
          CharCase = ecUpperCase
          DataField = 'serie'
          DataSource = LabInst.DataSource1
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 168
          Top = 26
          Width = 91
          Height = 23
          CharCase = ecUpperCase
          DataField = 'modelo'
          DataSource = LabInst.DataSource1
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 265
          Top = 26
          Width = 233
          Height = 23
          DataField = 'descri'
          DataSource = LabInst.DataSource1
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 504
          Top = 26
          Width = 32
          Height = 23
          DataField = 'labdiag_gp_recno'
          DataSource = LabInst.DataSource1
          TabOrder = 4
          OnExit = DBEdit5Exit
        end
        object DBEdit6: TDBEdit
          Left = 565
          Top = 26
          Width = 157
          Height = 23
          TabStop = False
          DataField = 'grupo'
          DataSource = LabInst.DataSource1
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 729
          Top = 26
          Width = 72
          Height = 23
          TabStop = False
          DataField = 'validade'
          DataSource = LabInst.DataSource1
          ReadOnly = True
          TabOrder = 6
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 822
    ExplicitWidth = 822
    inherited ToolBar1: TToolBar
      Width = 809
      ExplicitWidth = 809
    end
  end
  inherited alDef: TActionList
    Left = 200
    object actFindGrupo: TAction
      ImageIndex = 332
      OnExecute = actFindGrupoExecute
    end
  end
end
