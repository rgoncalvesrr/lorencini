inherited LabAcidezM: TLabAcidezM
  Caption = 'Inclus'#227'o do Fator de Acidez'
  ClientHeight = 248
  ClientWidth = 666
  ExplicitWidth = 672
  ExplicitHeight = 277
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 666
    Height = 204
    ExplicitWidth = 666
    ExplicitHeight = 211
    inherited Panel3: TPanel
      Align = alNone
    end
    inherited PageControl1: TPageControl
      Width = 660
      Height = 198
      ExplicitWidth = 660
      ExplicitHeight = 205
      inherited TabSheet1: TTabSheet
        Caption = 'Fator de Acidez'
        ExplicitWidth = 652
        ExplicitHeight = 175
        object Label1: TLabel
          Left = 3
          Top = 9
          Width = 27
          Height = 15
          Caption = 'Fator'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 164
          Top = 9
          Width = 41
          Height = 15
          Caption = 'T'#233'cnico'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 295
          Top = 9
          Width = 33
          Height = 15
          Caption = 'Nome'
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 526
          Top = 9
          Width = 45
          Height = 15
          Caption = 'Vig'#234'ncia'
          FocusControl = DBEdit4
        end
        object Bevel6: TBevel
          Left = 3
          Top = 56
          Width = 637
          Height = 14
          Shape = bsTopLine
        end
        object Label5: TLabel
          Left = 3
          Top = 69
          Width = 55
          Height = 15
          Caption = 'Biftalato A'
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 164
          Top = 69
          Width = 51
          Height = 15
          Caption = 'Volume A'
          FocusControl = DBEdit6
        end
        object Label7: TLabel
          Left = 325
          Top = 69
          Width = 85
          Height = 15
          Caption = 'Concentra'#231#227'o A'
          FocusControl = DBEdit7
        end
        object Label8: TLabel
          Left = 3
          Top = 117
          Width = 54
          Height = 15
          Caption = 'Biftalato B'
          FocusControl = DBEdit8
        end
        object Label9: TLabel
          Left = 164
          Top = 117
          Width = 50
          Height = 15
          Caption = 'Volume B'
          FocusControl = DBEdit9
        end
        object Label10: TLabel
          Left = 325
          Top = 117
          Width = 84
          Height = 15
          Caption = 'Concentra'#231#227'o B'
          FocusControl = DBEdit10
        end
        object Label11: TLabel
          Left = 485
          Top = 69
          Width = 28
          Height = 15
          Caption = #193'gua'
          FocusControl = DBEdit11
        end
        object Label12: TLabel
          Left = 485
          Top = 117
          Width = 33
          Height = 15
          Caption = 'M'#233'dia'
          FocusControl = DBEdit12
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 26
          Width = 155
          Height = 23
          TabStop = False
          DataField = 'recno'
          DataSource = LabAcidez.DataSource1
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 164
          Top = 26
          Width = 124
          Height = 23
          TabStop = False
          DataField = 'username'
          DataSource = LabAcidez.DataSource1
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 295
          Top = 26
          Width = 218
          Height = 23
          TabStop = False
          DataField = 'name'
          DataSource = LabAcidez.DataSource1
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 526
          Top = 26
          Width = 114
          Height = 23
          TabStop = False
          DataField = 'vigencia'
          DataSource = LabAcidez.DataSource1
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 3
          Top = 86
          Width = 155
          Height = 23
          DataField = 'biftalato_a'
          DataSource = LabAcidez.DataSource1
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 164
          Top = 86
          Width = 154
          Height = 23
          DataField = 'volume_a'
          DataSource = LabAcidez.DataSource1
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 325
          Top = 86
          Width = 154
          Height = 23
          TabStop = False
          DataField = 'con_a'
          DataSource = LabAcidez.DataSource1
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit8: TDBEdit
          Left = 3
          Top = 134
          Width = 155
          Height = 23
          DataField = 'biftalato_b'
          DataSource = LabAcidez.DataSource1
          TabOrder = 7
        end
        object DBEdit9: TDBEdit
          Left = 164
          Top = 134
          Width = 154
          Height = 23
          DataField = 'volume_b'
          DataSource = LabAcidez.DataSource1
          TabOrder = 8
        end
        object DBEdit10: TDBEdit
          Left = 325
          Top = 134
          Width = 154
          Height = 23
          TabStop = False
          DataField = 'con_b'
          DataSource = LabAcidez.DataSource1
          ReadOnly = True
          TabOrder = 9
        end
        object DBEdit11: TDBEdit
          Left = 485
          Top = 86
          Width = 155
          Height = 23
          DataField = 'agua'
          DataSource = LabAcidez.DataSource1
          TabOrder = 10
        end
        object DBEdit12: TDBEdit
          Left = 485
          Top = 134
          Width = 155
          Height = 23
          TabStop = False
          DataField = 'media'
          DataSource = LabAcidez.DataSource1
          ReadOnly = True
          TabOrder = 11
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 660
    ExplicitWidth = 660
    inherited ToolBar1: TToolBar
      Width = 622
      ExplicitWidth = 622
    end
  end
  inherited alDef: TActionList
    Left = 200
  end
end
