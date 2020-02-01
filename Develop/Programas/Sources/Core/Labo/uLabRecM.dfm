inherited LabRecM: TLabRecM
  Caption = 'Edi'#231#227'o de Recomenda'#231#245'es'
  ClientHeight = 258
  ClientWidth = 643
  ExplicitWidth = 649
  ExplicitHeight = 287
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 643
    Height = 214
    ExplicitWidth = 643
    ExplicitHeight = 214
    inherited Panel3: TPanel
      Align = alNone
    end
    inherited PageControl1: TPageControl
      Width = 637
      Height = 208
      ExplicitWidth = 637
      ExplicitHeight = 208
      inherited TabSheet1: TTabSheet
        Caption = 'Recomenda'#231#227'o'
        ExplicitWidth = 629
        ExplicitHeight = 178
        object Label1: TLabel
          Left = 3
          Top = 9
          Width = 43
          Height = 15
          Caption = 'Registro'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 53
          Top = 9
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 3
          Top = 51
          Width = 82
          Height = 15
          Caption = 'Recomenda'#231#227'o'
          FocusControl = DBMemo1
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 26
          Width = 43
          Height = 23
          TabStop = False
          DataField = 'recno'
          DataSource = LabRec.DataSource1
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 53
          Top = 26
          Width = 563
          Height = 23
          DataField = 'descri'
          DataSource = LabRec.DataSource1
          TabOrder = 1
        end
        object DBMemo1: TDBMemo
          Left = 3
          Top = 69
          Width = 613
          Height = 95
          DataField = 'recomenda'
          DataSource = LabRec.DataSource1
          TabOrder = 2
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 637
    ExplicitWidth = 637
    inherited ToolBar1: TToolBar
      Width = 600
      ExplicitWidth = 600
    end
  end
  inherited alDef: TActionList
    Left = 200
  end
end
