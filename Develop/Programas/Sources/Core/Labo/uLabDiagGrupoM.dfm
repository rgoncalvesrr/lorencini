inherited LabDiagGrupoM: TLabDiagGrupoM
  Caption = 'Manuten'#231#227'o de Grupos de Diagn'#243'stico'
  ClientHeight = 143
  ExplicitHeight = 172
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Height = 99
    ExplicitHeight = 99
    inherited Panel3: TPanel
      Align = alNone
    end
    inherited PageControl1: TPageControl
      Height = 93
      ExplicitHeight = 93
      inherited TabSheet1: TTabSheet
        Caption = 'Grupo de Diagn'#243'stico'
        ExplicitHeight = 63
        object Label1: TLabel
          Left = 3
          Top = 9
          Width = 33
          Height = 15
          Caption = 'Grupo'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 71
          Top = 9
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit2
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 26
          Width = 61
          Height = 23
          TabStop = False
          DataField = 'recno'
          DataSource = LabDiagGrupo.DataSource1
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 71
          Top = 26
          Width = 539
          Height = 23
          DataField = 'descri'
          DataSource = LabDiagGrupo.DataSource1
          TabOrder = 1
        end
      end
    end
  end
  inherited alDef: TActionList
    Left = 200
  end
end
