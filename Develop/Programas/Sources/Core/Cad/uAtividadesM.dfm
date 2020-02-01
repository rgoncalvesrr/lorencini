inherited AtividadesM: TAtividadesM
  Caption = 'Manuten'#231#227'o de Atividades'
  ClientHeight = 424
  ClientWidth = 535
  Constraints.MinWidth = 541
  ExplicitWidth = 541
  ExplicitHeight = 453
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 535
    Height = 380
    ExplicitLeft = 0
    ExplicitWidth = 535
    ExplicitHeight = 380
    inherited Panel3: TPanel
      Top = 145
      Width = 535
      ExplicitTop = 145
      ExplicitWidth = 535
      inherited PageControl3: TPageControl
        Width = 529
        ExplicitLeft = 3
        ExplicitTop = 47
        ExplicitWidth = 529
        ExplicitHeight = 185
        inherited tsDet: TTabSheet
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 521
          ExplicitHeight = 155
          inherited DBGrid1: TDBGrid
            Width = 521
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 529
        ExplicitWidth = 529
        inherited ToolBar3: TToolBar
          Width = 489
          ExplicitWidth = 489
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
      Width = 529
      Height = 139
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 529
      ExplicitHeight = 139
      inherited TabSheet1: TTabSheet
        Caption = 'Atividade'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 521
        ExplicitHeight = 109
        object Label1: TLabel
          Left = 5
          Top = 17
          Width = 50
          Height = 15
          Caption = 'Atividade'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 5
          Top = 47
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 5
          Top = 77
          Width = 79
          Height = 15
          Caption = 'Al'#237'quota de ISS'
          FocusControl = DBEdit3
        end
        object DBEdit1: TDBEdit
          Left = 89
          Top = 9
          Width = 55
          Height = 23
          DataField = 'codativ'
          DataSource = Atividades.DataSource1
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 89
          Top = 39
          Width = 415
          Height = 23
          DataField = 'descri'
          DataSource = Atividades.DataSource1
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 89
          Top = 69
          Width = 75
          Height = 23
          DataField = 'iss'
          DataSource = Atividades.DataSource1
          TabOrder = 2
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 529
    ExplicitWidth = 529
    inherited ToolBar1: TToolBar
      Width = 499
      ExplicitWidth = 499
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
    Left = 232
  end
end
