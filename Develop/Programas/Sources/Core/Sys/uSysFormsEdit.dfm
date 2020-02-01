inherited SysFormsEdit: TSysFormsEdit
  Caption = 'Manuten'#231#227'o de Formul'#225'rios'
  ClientHeight = 394
  ExplicitHeight = 423
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Height = 350
    ExplicitHeight = 350
    inherited Panel3: TPanel
      Top = 115
      ExplicitTop = 115
      inherited PageControl3: TPageControl
        inherited tsDet: TTabSheet
          Caption = 'Relat'#243'rios'
          inherited DBGrid1: TDBGrid
            DataSource = SysForms.dsRpt
          end
        end
      end
    end
    inherited PageControl1: TPageControl
      Height = 109
      ExplicitHeight = 109
      inherited TabSheet1: TTabSheet
        Caption = 'Formul'#225'rio'
        ExplicitHeight = 79
        object Label1: TLabel
          Left = 9
          Top = 21
          Width = 58
          Height = 15
          Caption = 'Formul'#225'rio'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 9
          Top = 51
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit2
        end
        object DBEdit1: TDBEdit
          Left = 69
          Top = 13
          Width = 129
          Height = 23
          CharCase = ecUpperCase
          DataField = 'form'
          DataSource = SysForms.DataSource1
          Enabled = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 69
          Top = 43
          Width = 515
          Height = 23
          DataField = 'descri'
          DataSource = SysForms.DataSource1
          TabOrder = 1
        end
      end
    end
  end
  inherited alDef: TActionList
    Left = 232
    Top = 64
  end
end
