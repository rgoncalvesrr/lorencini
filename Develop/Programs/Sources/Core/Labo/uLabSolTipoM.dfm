inherited LabSolTipoM: TLabSolTipoM
  Caption = 'Manuten'#231#227'o do Tipo de Solu'#231#227'o'
  ClientHeight = 131
  ClientWidth = 643
  ExplicitWidth = 649
  ExplicitHeight = 160
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 643
    Height = 87
    ExplicitWidth = 643
    ExplicitHeight = 87
    inherited Panel3: TPanel
      Align = alNone
    end
    inherited PageControl1: TPageControl
      Width = 637
      Height = 81
      ExplicitWidth = 637
      ExplicitHeight = 81
      inherited TabSheet1: TTabSheet
        Caption = 'Solu'#231#227'o'
        ExplicitWidth = 629
        ExplicitHeight = 51
        object Label1: TLabel
          Left = 3
          Top = 0
          Width = 24
          Height = 15
          Caption = 'Tipo'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 55
          Top = 0
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit2
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 16
          Width = 49
          Height = 23
          TabStop = False
          DataField = 'recno'
          DataSource = LabSolTipo.DataSource1
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 55
          Top = 16
          Width = 562
          Height = 23
          DataField = 'descri'
          DataSource = LabSolTipo.DataSource1
          TabOrder = 1
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 637
    ExplicitWidth = 637
    inherited ToolBar1: TToolBar
      Width = 624
      ExplicitWidth = 624
    end
  end
  inherited alDef: TActionList
    Left = 200
  end
end
