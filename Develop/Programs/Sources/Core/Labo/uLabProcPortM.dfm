inherited LabProcPortM: TLabProcPortM
  Caption = '190554'
  ClientHeight = 454
  ClientWidth = 913
  Constraints.MinWidth = 648
  ExplicitWidth = 919
  ExplicitHeight = 483
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 913
    Height = 410
    ExplicitTop = 44
    ExplicitWidth = 913
    ExplicitHeight = 410
    inherited Panel3: TPanel
      Align = alNone
      ExplicitTop = 204
      inherited PageControl3: TPageControl
        Top = 47
        Height = 185
        ExplicitLeft = 3
        ExplicitTop = 47
        ExplicitWidth = 633
        ExplicitHeight = 185
        inherited tsDet: TTabSheet
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 625
          ExplicitHeight = 155
          inherited DBGrid1: TDBGrid
            Width = 625
            Height = 155
          end
        end
      end
      inherited ControlBar2: TControlBar
        Height = 38
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 633
        ExplicitHeight = 38
        inherited ToolBar3: TToolBar
          ButtonWidth = 129
          inherited ToolButton10: TToolButton
            ExplicitWidth = 32
          end
          inherited ToolButton11: TToolButton
            ExplicitWidth = 32
          end
          inherited ToolButton17: TToolButton
            ExplicitWidth = 32
          end
          inherited ToolButton12: TToolButton
            ExplicitWidth = 32
          end
          inherited ToolButton13: TToolButton
            ExplicitWidth = 32
          end
          inherited tbSQLDet: TToolButton
            ExplicitWidth = 32
          end
          inherited tbRefazGrid: TToolButton
            ExplicitWidth = 32
          end
        end
      end
    end
    inherited PageControl1: TPageControl
      Width = 907
      Height = 404
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 907
      ExplicitHeight = 404
      inherited TabSheet1: TTabSheet
        Caption = 'Retorno de Materiais'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 899
        ExplicitHeight = 374
        object Bevel6: TBevel
          AlignWithMargins = True
          Left = 3
          Top = 53
          Width = 893
          Height = 1
          Align = alTop
          Shape = bsTopLine
          ExplicitLeft = 2
          ExplicitTop = 47
          ExplicitWidth = 733
        end
        object Label6: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 110
          Width = 893
          Height = 15
          Align = alTop
          Caption = 'Portador Remessa'
          FocusControl = DBMemo1
          ExplicitWidth = 95
        end
        object DBMemo1: TDBMemo
          AlignWithMargins = True
          Left = 3
          Top = 131
          Width = 893
          Height = 240
          TabStop = False
          Align = alClient
          DataField = 'rem_tr'
          DataSource = LabProcPort.dsPortItens
          ReadOnly = True
          TabOrder = 0
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 899
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 57
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 51
              Height = 15
              Align = alTop
              Caption = 'Cliente'
              FocusControl = DBEdit1
              ExplicitWidth = 37
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 51
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'codigo'
              DataSource = LabProcPort.dsPort
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel7: TPanel
            Left = 57
            Top = 0
            Width = 580
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label8: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 574
              Height = 15
              Align = alTop
              Caption = 'Raz'#227'o Social'
              FocusControl = DBEdit8
              ExplicitWidth = 65
            end
            object DBEdit8: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 574
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'nome_chave'
              DataSource = LabProcPort.dsPort
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel8: TPanel
            Left = 637
            Top = 0
            Width = 131
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object Label9: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 125
              Height = 15
              Align = alTop
              Caption = 'C.N.P.J.'
              FocusControl = DBEdit9
              ExplicitWidth = 40
            end
            object DBEdit9: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 125
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'cnpj_1'
              DataSource = LabProcPort.dsPort
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel9: TPanel
            Left = 768
            Top = 0
            Width = 131
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label10: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 125
              Height = 15
              Align = alTop
              Caption = 'Telefone'
              FocusControl = DBEdit10
              ExplicitWidth = 44
            end
            object DBEdit10: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 125
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'telefone'
              DataSource = LabProcPort.dsPort
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 57
          Width = 899
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object Panel6: TPanel
            Left = 0
            Top = 0
            Width = 90
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 84
              Height = 15
              Align = alTop
              Caption = 'Etiqueta'
              FocusControl = DBEdit2
              ExplicitWidth = 43
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 84
              Height = 23
              Align = alClient
              DataField = 'comodato'
              DataSource = LabProcPort.dsPortItens
              TabOrder = 0
              OnExit = DBEdit2Exit
            end
          end
          object Panel10: TPanel
            Left = 279
            Top = 0
            Width = 122
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 3
            object Label7: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 116
              Height = 15
              Align = alTop
              Caption = 'Etiqueta'
              FocusControl = DBEdit2
              ExplicitWidth = 43
            end
            object DBComboBox1: TDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 116
              Height = 23
              Style = csDropDownList
              Align = alClient
              DataField = 'status'
              DataSource = LabProcPort.dsPortItens
              ItemHeight = 15
              Items.Strings = (
                'Conforme'
                'N'#227'o Conforme'
                'Vazio'
                'Quebrado')
              TabOrder = 0
              OnChange = DBComboBox1Change
            end
          end
          object Panel11: TPanel
            Left = 401
            Top = 0
            Width = 131
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 4
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 125
              Height = 15
              Align = alTop
              Caption = 'Remessa'
              FocusControl = DBEdit3
              ExplicitWidth = 46
            end
            object DBEdit3: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 125
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'rem_dh'
              DataSource = LabProcPort.dsPortItens
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel13: TPanel
            Left = 768
            Top = 0
            Width = 131
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 6
            object Label5: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 125
              Height = 15
              Align = alTop
              Caption = 'Processo'
              FocusControl = DBEdit5
              ExplicitWidth = 47
            end
            object DBEdit5: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 125
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'labproc_recno'
              DataSource = LabProcPort.dsPortItens
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel14: TPanel
            Left = 180
            Top = 0
            Width = 99
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object Label11: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 93
              Height = 15
              Align = alTop
              Caption = 'Quantidade (ml)'
              FocusControl = DBEdit5
              ExplicitWidth = 87
            end
            object JvDBCalcEdit1: TJvDBCalcEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 93
              Height = 23
              Align = alClient
              DisplayFormat = ',0.#0'
              TabOrder = 0
              DecimalPlacesAlwaysShown = False
              DataField = 'qtd'
              DataSource = LabProcPort.dsPortItens
            end
          end
          object Panel12: TPanel
            Left = 532
            Top = 0
            Width = 236
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 5
            object Label4: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 230
              Height = 15
              Align = alTop
              Caption = 'Tipo'
              FocusControl = DBEdit4
              ExplicitWidth = 23
            end
            object DBEdit4: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 230
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'tipo'
              DataSource = LabProcPort.dsPortItens
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel15: TPanel
            Left = 90
            Top = 0
            Width = 90
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label12: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 84
              Height = 15
              Align = alTop
              Caption = 'Amostra'
              FocusControl = DBEdit6
              ExplicitWidth = 45
            end
            object DBEdit6: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 84
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'amostra'
              DataSource = LabProcPort.dsPortItens
              ReadOnly = True
              TabOrder = 0
              OnExit = DBEdit2Exit
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 907
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 907
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      Width = 623
      ButtonWidth = 115
      ExplicitWidth = 623
      inherited ToolButton6: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton4: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton7: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton1: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton2: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton8: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton9: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton14: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton16: TToolButton
        ExplicitWidth = 32
      end
      inherited tbSQL: TToolButton
        ExplicitWidth = 32
      end
      inherited tbClose: TToolButton
        ExplicitWidth = 32
      end
    end
  end
  inherited alDef: TActionList
    Left = 208
  end
end
