inherited LabEquipFamM: TLabEquipFamM
  Caption = 'Manuten'#231#227'o de Fam'#237'lias de Equipamentos'
  ClientHeight = 156
  ExplicitHeight = 185
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Height = 112
    ExplicitHeight = 112
    inherited Panel3: TPanel
      Align = alNone
    end
    inherited PageControl1: TPageControl
      Height = 106
      ExplicitHeight = 106
      inherited TabSheet1: TTabSheet
        Caption = 'Fam'#237'lia de Equipamento'
        ExplicitHeight = 76
        object Label1: TLabel
          Left = 3
          Top = 11
          Width = 38
          Height = 15
          Caption = 'Fam'#237'lia'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 44
          Top = 11
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit2
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 28
          Width = 35
          Height = 23
          TabStop = False
          DataField = 'recno'
          DataSource = LabEquipFam.DataSource1
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 44
          Top = 28
          Width = 566
          Height = 23
          DataField = 'descri'
          DataSource = LabEquipFam.DataSource1
          TabOrder = 1
        end
      end
    end
  end
  inherited alDef: TActionList
    Left = 200
    Top = 48
  end
end
