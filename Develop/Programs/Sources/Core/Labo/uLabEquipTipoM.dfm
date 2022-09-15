inherited LabEquipTipoM: TLabEquipTipoM
  Caption = 'Manuten'#231#227'o de Tipos de Equipamentos'
  ClientHeight = 376
  ClientWidth = 642
  ExplicitWidth = 648
  ExplicitHeight = 405
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 642
    Height = 332
    ExplicitWidth = 642
    ExplicitHeight = 332
    inherited Panel3: TPanel
      Top = 97
      Width = 642
      ExplicitTop = 97
      ExplicitWidth = 642
      inherited PageControl3: TPageControl
        Width = 636
        ExplicitWidth = 636
        inherited tsDet: TTabSheet
          Caption = 'Classes de Tens'#227'o'
          ExplicitWidth = 628
          inherited DBGrid1: TDBGrid
            Width = 628
            DataSource = LabEquipTipo.dsClasse
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 636
        ExplicitWidth = 636
        inherited ToolBar3: TToolBar
          Width = 589
          ExplicitWidth = 589
        end
      end
    end
    inherited PageControl1: TPageControl
      Width = 636
      Height = 91
      ExplicitWidth = 636
      ExplicitHeight = 91
      inherited TabSheet1: TTabSheet
        Caption = 'Tipo de Equipamento'
        ExplicitWidth = 628
        ExplicitHeight = 61
        object Label1: TLabel
          Left = 3
          Top = 9
          Width = 39
          Height = 15
          Caption = 'C'#243'digo'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 65
          Top = 9
          Width = 24
          Height = 15
          Caption = 'Tipo'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 567
          Top = 9
          Width = 25
          Height = 15
          Caption = 'Sigla'
          FocusControl = DBEdit3
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 26
          Width = 56
          Height = 23
          DataField = 'tipo'
          DataSource = LabEquipTipo.DataSource1
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 65
          Top = 26
          Width = 495
          Height = 23
          DataField = 'descri'
          DataSource = LabEquipTipo.DataSource1
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 567
          Top = 26
          Width = 49
          Height = 23
          CharCase = ecUpperCase
          DataField = 'sigla'
          DataSource = LabEquipTipo.DataSource1
          TabOrder = 2
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 636
    ExplicitWidth = 636
    inherited ToolBar1: TToolBar
      Width = 599
      ExplicitWidth = 599
    end
  end
  inherited alDef: TActionList
    Left = 192
  end
end
