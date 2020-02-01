inherited OrcaOrigensM: TOrcaOrigensM
  Caption = 'Manuten'#231#227'o de Origem'
  ClientHeight = 140
  ClientWidth = 472
  ExplicitWidth = 478
  ExplicitHeight = 169
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 472
    Height = 96
    ExplicitHeight = 96
    inherited Panel3: TPanel
      Align = alNone
    end
    inherited PageControl1: TPageControl
      Width = 466
      Height = 90
      ExplicitHeight = 90
      inherited TabSheet1: TTabSheet
        Caption = 'Or'#237'gem'
        ExplicitHeight = 60
        object Label1: TLabel
          Left = 3
          Top = 6
          Width = 40
          Height = 15
          Caption = 'Origem'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 46
          Top = 6
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit2
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 24
          Width = 37
          Height = 23
          TabStop = False
          DataField = 'recno'
          DataSource = OrcaOrigens.DataSource1
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 46
          Top = 24
          Width = 403
          Height = 23
          DataField = 'descri'
          DataSource = OrcaOrigens.DataSource1
          TabOrder = 1
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 466
    inherited ToolBar1: TToolBar
      Width = 453
      ExplicitWidth = 453
    end
  end
  inherited alDef: TActionList
    Left = 200
    Top = 48
  end
end
