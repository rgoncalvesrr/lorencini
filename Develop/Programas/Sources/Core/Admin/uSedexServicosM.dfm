inherited SedexServicosM: TSedexServicosM
  Caption = 'Manuten'#231#227'o de Servi'#231'os para Sedex'
  ClientHeight = 146
  ExplicitHeight = 175
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Height = 102
    ExplicitHeight = 102
    inherited Panel3: TPanel
      Align = alNone
    end
    inherited PageControl1: TPageControl
      Height = 96
      ExplicitHeight = 96
      inherited TabSheet1: TTabSheet
        Caption = 'Servi'#231'o Sedex'
        ExplicitHeight = 66
        object Panel2: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 619
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 86
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 80
              Height = 15
              Align = alTop
              Caption = 'Servi'#231'o'
              FocusControl = DBEdit1
              ExplicitWidth = 38
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 80
              Height = 23
              Align = alClient
              CharCase = ecUpperCase
              DataField = 'servico'
              DataSource = SedexServicos.DataSource1
              TabOrder = 0
            end
          end
          object Panel5: TPanel
            Left = 86
            Top = 0
            Width = 473
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 467
              Height = 15
              Align = alTop
              Caption = 'Nome'
              FocusControl = DBEdit2
              ExplicitWidth = 33
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 467
              Height = 23
              Align = alClient
              DataField = 'descri'
              DataSource = SedexServicos.DataSource1
              TabOrder = 0
            end
          end
          object Panel6: TPanel
            Left = 559
            Top = 0
            Width = 60
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object DBCheckBox1: TDBCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 20
              Width = 54
              Height = 27
              Margins.Top = 20
              Align = alClient
              Caption = 'Ativo'
              DataField = 'ativo'
              DataSource = SedexServicos.DataSource1
              TabOrder = 0
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
          end
        end
      end
    end
  end
  inherited alDef: TActionList
    Left = 208
  end
end
