inherited LabCalcM: TLabCalcM
  Caption = 'Manuten'#231#227'o de C'#225'lculos'
  ClientHeight = 372
  ExplicitHeight = 401
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Height = 328
    ExplicitHeight = 328
    inherited Panel3: TPanel
      Top = 93
      ExplicitTop = 93
      inherited PageControl3: TPageControl
        inherited tsDet: TTabSheet
          Caption = 'Vari'#225'veis'
          inherited DBGrid1: TDBGrid
            DataSource = LabCalc.dsCalcParam
          end
        end
      end
    end
    inherited PageControl1: TPageControl
      Height = 87
      ExplicitHeight = 87
      inherited TabSheet1: TTabSheet
        Caption = 'C'#225'lulo'
        ExplicitHeight = 57
        object Label1: TLabel
          Left = 3
          Top = -4
          Width = 34
          Height = 15
          Caption = 'Rotina'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 203
          Top = 0
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit2
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 17
          Width = 193
          Height = 23
          CharCase = ecLowerCase
          DataField = 'proc'
          DataSource = LabCalc.DataSource1
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 203
          Top = 17
          Width = 413
          Height = 23
          DataField = 'descri'
          DataSource = LabCalc.DataSource1
          TabOrder = 1
        end
      end
    end
  end
  inherited alDef: TActionList
    Left = 208
  end
end
