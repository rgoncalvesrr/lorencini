inherited LaudoRevM: TLaudoRevM
  Caption = 'Revis'#227'o de Laudo'
  ClientHeight = 614
  ClientWidth = 1013
  ExplicitWidth = 1019
  ExplicitHeight = 643
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 1013
    Height = 570
    ExplicitWidth = 1013
    ExplicitHeight = 570
    inherited Panel3: TPanel
      Top = 206
      Align = alNone
      ExplicitTop = 206
      inherited PageControl3: TPageControl
        inherited tsDet: TTabSheet
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 625
          ExplicitHeight = 155
        end
      end
      inherited ControlBar2: TControlBar
        inherited ToolBar3: TToolBar
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
      Width = 1007
      Height = 564
      ExplicitWidth = 1007
      ExplicitHeight = 564
      inherited TabSheet1: TTabSheet
        Caption = 'Laudo'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 999
        ExplicitHeight = 534
        object Label15: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 366
          Width = 993
          Height = 15
          Align = alTop
          Caption = 'Observa'#231#227'o'
          FocusControl = DBMemo1
          ExplicitWidth = 62
        end
        object Panel5: TPanel
          Left = 0
          Top = 50
          Width = 999
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Panel2: TPanel
            Left = 80
            Top = 0
            Width = 80
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 74
              Height = 15
              Align = alTop
              Caption = 'Amostra'
              ExplicitWidth = 45
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 74
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'amostra'
              DataSource = LaudoRev.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel18: TPanel
            Left = 240
            Top = 0
            Width = 102
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object Label40: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 96
              Height = 15
              Align = alTop
              Caption = 'Entrada'
              FocusControl = DBEdit39
              ExplicitWidth = 40
            end
            object DBEdit39: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 96
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'entrada'
              DataSource = LaudoRev.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel69: TPanel
            Left = 0
            Top = 0
            Width = 80
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label44: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 74
              Height = 15
              Align = alTop
              Caption = 'Pedido'
              FocusControl = DBEdit51
              ExplicitWidth = 37
            end
            object DBEdit51: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 74
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'pedido'
              DataSource = LaudoRev.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel68: TPanel
            Left = 342
            Top = 0
            Width = 72
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 3
            object Label43: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 66
              Height = 15
              Align = alTop
              Caption = 'Cliente'
              FocusControl = DBEdit54
              ExplicitWidth = 37
            end
            object DBEdit54: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 66
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'cliente'
              DataSource = LaudoRev.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel72: TPanel
            Left = 414
            Top = 0
            Width = 361
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 4
            object Label54: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 355
              Height = 15
              Align = alTop
              Caption = 'Nome Empresarial'
              FocusControl = DBEdit55
              ExplicitWidth = 97
            end
            object DBEdit55: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 355
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'empresa'
              DataSource = LaudoRev.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel75: TPanel
            Left = 775
            Top = 0
            Width = 224
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 5
            object Label56: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 218
              Height = 15
              Align = alTop
              Caption = 'Nome Fantasia'
              FocusControl = DBEdit57
              ExplicitWidth = 79
            end
            object DBEdit57: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 218
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'nome_chave'
              DataSource = LaudoRev.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel16: TPanel
            Left = 160
            Top = 0
            Width = 80
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 6
            object Label11: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 74
              Height = 15
              Align = alTop
              Caption = 'Etiqueta'
              ExplicitWidth = 43
            end
            object DBEdit9: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 74
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'comodato'
              DataSource = LaudoRev.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 999
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel15: TPanel
            Left = 80
            Top = 0
            Width = 45
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label10: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 39
              Height = 15
              Align = alTop
              Caption = 'Servi'#231'o'
              FocusControl = DBEdit10
              ExplicitWidth = 38
            end
            object DBEdit10: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 39
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'codserv'
              DataSource = LaudoRev.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel17: TPanel
            Left = 776
            Top = 0
            Width = 120
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            object Label12: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 114
              Height = 15
              Align = alTop
              Caption = 'Cria'#231#227'o'
              FocusControl = DBEdit12
              ExplicitWidth = 40
            end
            object DBEdit12: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 114
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'criacao'
              DataSource = LaudoRev.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 80
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 74
              Height = 15
              Align = alTop
              Caption = 'Laudo'
              FocusControl = DBEdit3
              ExplicitWidth = 33
            end
            object DBEdit3: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 74
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'recno'
              DataSource = LaudoRev.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel7: TPanel
            Left = 125
            Top = 0
            Width = 571
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 3
            object Label4: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 565
              Height = 15
              Align = alTop
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit4
              ExplicitWidth = 51
            end
            object DBEdit4: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 565
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'servico'
              DataSource = LaudoRev.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel13: TPanel
            Left = 696
            Top = 0
            Width = 80
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 4
            object Label6: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 74
              Height = 15
              Align = alTop
              Caption = 'OS'
              FocusControl = DBEdit6
              ExplicitWidth = 15
            end
            object DBEdit6: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 74
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'os'
              DataSource = LaudoRev.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel14: TPanel
            Left = 896
            Top = 0
            Width = 103
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 5
            object Label9: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 97
              Height = 15
              Align = alTop
              Caption = 'Status'
              ExplicitWidth = 32
            end
            object DBComboBox1: TDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 97
              Height = 23
              Style = csDropDownList
              Align = alClient
              DataField = 'status'
              DataSource = LaudoRev.DataSource1
              ItemHeight = 15
              Items.Strings = (
                'Digitando'
                'Apontamento')
              TabOrder = 0
            end
          end
        end
        object DBMemo1: TDBMemo
          AlignWithMargins = True
          Left = 3
          Top = 387
          Width = 993
          Height = 144
          Align = alClient
          DataField = 'obs'
          DataSource = LaudoRev.DataSource1
          TabOrder = 3
        end
        object Panel8: TPanel
          Left = 0
          Top = 100
          Width = 999
          Height = 263
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object Label5: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 993
            Height = 15
            Align = alTop
            Caption = 'Tipo de Laudo'
            ExplicitWidth = 75
          end
          object DBLookupListBox1: TDBLookupListBox
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 993
            Height = 229
            Align = alClient
            DataField = 'relato_recno'
            DataSource = LaudoRev.DataSource1
            KeyField = 'recno'
            ListField = 'descri'
            ListSource = LaudoRev.dsQTipoLaudo
            TabOrder = 0
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 1007
    ExplicitWidth = 1007
    inherited ToolBar1: TToolBar
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
    object actFindLaudo: TAction
      ImageIndex = 332
    end
  end
end
