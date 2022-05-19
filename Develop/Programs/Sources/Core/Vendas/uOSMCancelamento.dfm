inherited OSMCancelamento: TOSMCancelamento
  Caption = 'Cancelamento de Ordem de Servi'#231'o'
  ClientHeight = 415
  ClientWidth = 818
  ExplicitWidth = 824
  ExplicitHeight = 444
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 818
    Height = 371
    ExplicitTop = 35
    ExplicitWidth = 818
    ExplicitHeight = 380
    inherited Panel3: TPanel
      Align = alNone
      ExplicitTop = 204
      inherited PageControl3: TPageControl
        ExplicitTop = 38
        ExplicitHeight = 194
        inherited tsDet: TTabSheet
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 625
          ExplicitHeight = 164
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
      Width = 812
      Height = 365
      ExplicitWidth = 812
      ExplicitHeight = 374
      inherited TabSheet1: TTabSheet
        Caption = 'Cancelamento OS'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 804
        ExplicitHeight = 344
        object GroupBox1: TGroupBox
          Left = 3
          Top = 3
          Width = 791
          Height = 158
          Caption = ' Informa'#231#245'es da OS '
          TabOrder = 0
          object Label1: TLabel
            Left = 9
            Top = 19
            Width = 15
            Height = 15
            Caption = 'OS'
            FocusControl = DBEdit1
          end
          object Label2: TLabel
            Left = 69
            Top = 19
            Width = 43
            Height = 15
            Caption = 'Emiss'#227'o'
          end
          object Label3: TLabel
            Left = 170
            Top = 19
            Width = 45
            Height = 15
            Caption = 'Empresa'
            FocusControl = DBEdit2
          end
          object Label4: TLabel
            Left = 444
            Top = 19
            Width = 41
            Height = 15
            Caption = 'Apelido'
            FocusControl = DBEdit3
          end
          object Label11: TLabel
            Left = 625
            Top = 19
            Width = 43
            Height = 15
            Caption = 'Servi'#231'os'
            FocusControl = DBEdit4
          end
          object Label10: TLabel
            Left = 9
            Top = 66
            Width = 51
            Height = 15
            Caption = 'Descri'#231#227'o'
            FocusControl = DBMemo1
          end
          object Label19: TLabel
            Left = 706
            Top = 19
            Width = 48
            Height = 15
            Caption = 'Materiais'
            FocusControl = DBEdit11
          end
          object DBEdit1: TDBEdit
            Left = 9
            Top = 36
            Width = 52
            Height = 23
            DataField = 'idos'
            DataSource = OS.DataSource1
            Enabled = False
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 170
            Top = 36
            Width = 268
            Height = 23
            DataField = 'empresa'
            DataSource = OS.DataSource1
            Enabled = False
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit3: TDBEdit
            Left = 444
            Top = 36
            Width = 173
            Height = 23
            DataField = 'nome_chave'
            DataSource = OS.DataSource1
            Enabled = False
            ReadOnly = True
            TabOrder = 2
          end
          object DBEdit4: TDBEdit
            Left = 625
            Top = 36
            Width = 75
            Height = 23
            DataField = 'vlsrv'
            DataSource = OS.DataSource1
            Enabled = False
            TabOrder = 3
          end
          object DBMemo1: TDBMemo
            Left = 9
            Top = 86
            Width = 772
            Height = 63
            DataField = 'atividade'
            DataSource = OS.DataSource1
            Enabled = False
            TabOrder = 5
          end
          object DBEdit11: TDBEdit
            Left = 706
            Top = 36
            Width = 75
            Height = 23
            DataField = 'vlmat'
            DataSource = OS.DataSource1
            Enabled = False
            TabOrder = 4
          end
          object DBEdit12: TDBEdit
            Left = 69
            Top = 36
            Width = 95
            Height = 23
            DataField = 'data'
            DataSource = OS.DataSource1
            Enabled = False
            ReadOnly = True
            TabOrder = 6
          end
        end
        object GroupBox2: TGroupBox
          Left = 3
          Top = 167
          Width = 791
          Height = 158
          Caption = ' Motivo do Cancelamento '
          TabOrder = 1
          object DBMemo2: TDBMemo
            Left = 3
            Top = 26
            Width = 772
            Height = 112
            DataField = 'motivo'
            DataSource = OS.DataSource1
            TabOrder = 0
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 812
    ExplicitWidth = 812
    inherited ToolBar1: TToolBar
      Width = 799
      ExplicitWidth = 799
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
  end
end
