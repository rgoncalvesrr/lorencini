inherited LabProcM: TLabProcM
  BorderStyle = bsSizeable
  Caption = 'Manuten'#231#227'o de Processo'
  ClientHeight = 521
  ClientWidth = 787
  Constraints.MinWidth = 691
  ExplicitWidth = 803
  ExplicitHeight = 560
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 787
    Height = 477
    ExplicitTop = 44
    ExplicitWidth = 787
    ExplicitHeight = 477
    inherited Panel3: TPanel
      Top = 304
      Width = 787
      Height = 173
      ExplicitTop = 304
      ExplicitWidth = 787
      ExplicitHeight = 173
      inherited PageControl3: TPageControl
        Top = 47
        Width = 781
        Height = 123
        ExplicitLeft = 3
        ExplicitTop = 47
        ExplicitWidth = 781
        ExplicitHeight = 123
        inherited tsDet: TTabSheet
          Caption = 'Etiquetas'
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 773
          ExplicitHeight = 93
          inherited DBGrid1: TDBGrid
            Width = 773
            Height = 93
            DataSource = LabProc.dsPItens
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 781
        Height = 38
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 781
        ExplicitHeight = 38
        inherited ToolBar3: TToolBar
          Width = 689
          ButtonWidth = 129
          ExplicitWidth = 689
          inherited ToolButton10: TToolButton
            Action = nil
            DropdownMenu = PopupMenu1
            Enabled = True
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
          object ToolButton15: TToolButton
            Left = 240
            Top = 0
            Width = 8
            Caption = 'ToolButton15'
            ImageIndex = 8
            Style = tbsSeparator
          end
          object ToolButton5: TToolButton
            Left = 248
            Top = 0
            Action = actPrnEtiq
            ImageIndex = 287
            Style = tbsTextButton
          end
        end
      end
    end
    inherited PageControl1: TPageControl
      Width = 781
      Height = 298
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 781
      ExplicitHeight = 298
      inherited TabSheet1: TTabSheet
        Caption = 'Processo'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 773
        ExplicitHeight = 268
        object Label16: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 153
          Width = 102
          Height = 15
          Align = alTop
          Caption = 'Observa'#231#227'o Pedido'
          FocusControl = DBEdit11
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 773
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel4: TPanel
            Left = 502
            Top = 0
            Width = 128
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            object Label9: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 40
              Height = 15
              Align = alTop
              Caption = 'C.N.P.J.'
              FocusControl = DBEdit9
            end
            object DBEdit9: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 122
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'cnpj'
              DataSource = LabProc.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel5: TPanel
            Left = 60
            Top = 0
            Width = 60
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label7: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 37
              Height = 15
              Align = alTop
              Caption = 'Cliente'
              FocusControl = DBEdit7
            end
            object DBEdit7: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 57
              Height = 23
              Margins.Right = 0
              Align = alClient
              DataField = 'codigo'
              DataSource = LabProc.DataSource1
              TabOrder = 0
              OnExit = DBEdit7Exit
            end
          end
          object Panel6: TPanel
            Left = 120
            Top = 0
            Width = 29
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object SpeedButton3: TSpeedButton
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
              ExplicitLeft = 35
              ExplicitTop = 26
              ExplicitWidth = 25
            end
          end
          object Panel7: TPanel
            Left = 149
            Top = 0
            Width = 353
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 3
            object Label8: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 65
              Height = 15
              Align = alTop
              Caption = 'Raz'#227'o Social'
              FocusControl = DBEdit8
            end
            object DBEdit8: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 347
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'nome_chave'
              DataSource = LabProc.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel8: TPanel
            Left = 0
            Top = 0
            Width = 60
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 4
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 47
              Height = 15
              Align = alTop
              Caption = 'Processo'
              FocusControl = DBEdit1
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 54
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'recno'
              DataSource = LabProc.DataSource1
              Enabled = False
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel9: TPanel
            Left = 630
            Top = 0
            Width = 104
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 5
            object Label10: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 44
              Height = 15
              Align = alTop
              Caption = 'Telefone'
              FocusControl = DBEdit10
            end
            object DBEdit10: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 98
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'telefone'
              DataSource = LabProc.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel10: TPanel
            Left = 734
            Top = 0
            Width = 39
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 6
            object Label13: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 14
              Height = 15
              Align = alTop
              Caption = 'UF'
              FocusControl = DBEdit12
            end
            object DBEdit12: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 33
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'estado'
              DataSource = LabProc.DataSource1
              Enabled = False
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
        object Panel11: TPanel
          Left = 0
          Top = 50
          Width = 773
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Panel12: TPanel
            Left = 0
            Top = 0
            Width = 70
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label14: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 39
              Height = 15
              Align = alTop
              Caption = 'Frascos'
              FocusControl = DBEdit14
            end
            object DBEdit14: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 64
              Height = 23
              Align = alClient
              DataField = 'frascos'
              DataSource = LabProc.DataSource1
              TabOrder = 0
            end
          end
          object Panel13: TPanel
            Left = 70
            Top = 0
            Width = 70
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label15: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 44
              Height = 15
              Align = alTop
              Caption = 'Seringas'
              FocusControl = DBEdit15
            end
            object DBEdit15: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 64
              Height = 23
              Align = alClient
              DataField = 'seringas'
              DataSource = LabProc.DataSource1
              TabOrder = 0
            end
          end
          object Panel15: TPanel
            Left = 140
            Top = 0
            Width = 103
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 15
              Height = 15
              Align = alTop
              Caption = 'OS'
              FocusControl = DBEdit3
            end
            object DBEdit3: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 97
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'os'
              DataSource = LabProc.DataSource1
              Enabled = False
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel16: TPanel
            Left = 243
            Top = 0
            Width = 530
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 3
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 51
              Height = 15
              Align = alTop
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit2
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 524
              Height = 23
              Align = alClient
              DataField = 'descri'
              DataSource = LabProc.DataSource1
              TabOrder = 0
            end
          end
        end
        object Panel17: TPanel
          Left = 0
          Top = 100
          Width = 773
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object Panel18: TPanel
            Left = 0
            Top = 0
            Width = 147
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label5: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 40
              Height = 15
              Align = alTop
              Caption = 'Cria'#231#227'o'
              FocusControl = DBEdit4
            end
            object DBEdit4: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 141
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'criacao'
              DataSource = LabProc.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel19: TPanel
            Left = 147
            Top = 0
            Width = 147
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label6: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 43
              Height = 15
              Align = alTop
              Caption = 'Emiss'#227'o'
              FocusControl = DBEdit5
            end
            object DBEdit5: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 141
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'emissao'
              DataSource = LabProc.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel20: TPanel
            Left = 294
            Top = 0
            Width = 147
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object Label11: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 46
              Height = 15
              Align = alTop
              Caption = 'Remessa'
              FocusControl = DBEdit6
            end
            object DBEdit6: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 141
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'remessa'
              DataSource = LabProc.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel21: TPanel
            Left = 441
            Top = 0
            Width = 147
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 3
            object Label12: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 42
              Height = 15
              Align = alTop
              Caption = 'Retorno'
              FocusControl = DBEdit11
            end
            object DBEdit11: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 141
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'retorno'
              DataSource = LabProc.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
        object DBMemo1: TDBMemo
          AlignWithMargins = True
          Left = 3
          Top = 174
          Width = 767
          Height = 91
          Align = alClient
          DataField = 'obs_remessa'
          DataSource = LabProc.DataSource1
          ReadOnly = True
          TabOrder = 3
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 781
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 781
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      Width = 689
      ButtonWidth = 115
      ExplicitWidth = 689
      inherited ToolButton6: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton4: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton7: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButtton5: TToolButton
        Visible = False
      end
      inherited ToolButton1: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton2: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButtton15: TToolButton
        Visible = False
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
    Left = 432
    Top = 16
    inherited actOk: TAction
      Visible = False
    end
    inherited actCancel: TAction
      Enabled = False
      Visible = False
    end
    inherited actNewMaster: TAction
      Visible = False
    end
    inherited actEditMaster: TAction
      Visible = False
    end
    inherited actDelMaster: TAction
      Visible = False
    end
    inherited actNew: TAction
      Caption = 'Novo...'
    end
    object actFindCli: TAction
      ImageIndex = 332
      OnExecute = actFindCliExecute
    end
    object actNewBatch: TAction
      Caption = 'Novo em Lote...'
      Enabled = False
      OnExecute = actNewBatchExecute
    end
    object actPrnEtiq: TAction
      Caption = 'Imprimir Etiqueta'
      Enabled = False
      ImageIndex = 7
      OnExecute = actPrnEtiqExecute
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 496
    Top = 16
    object Novo1: TMenuItem
      Action = actNew
    end
    object InseriremLote1: TMenuItem
      Action = actNewBatch
    end
  end
end
