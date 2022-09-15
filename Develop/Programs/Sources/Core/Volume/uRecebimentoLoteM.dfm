inherited RecebimentoLoteM: TRecebimentoLoteM
  Caption = 'Recebimento - Edi'#231#227'o de Etiqueta'
  ClientHeight = 250
  ClientWidth = 578
  ExplicitWidth = 584
  ExplicitHeight = 279
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 578
    Height = 206
    inherited Panel3: TPanel
      Top = 206
      Align = alNone
      inherited PageControl3: TPageControl
        Top = 47
        Height = 185
        inherited tsDet: TTabSheet
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
      Width = 572
      Height = 200
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 633
      ExplicitHeight = 189
      inherited TabSheet1: TTabSheet
        Caption = 'Etiqueta'
        object Panel2: TPanel
          Left = 0
          Top = 100
          Width = 564
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitLeft = 224
          ExplicitTop = 176
          ExplicitWidth = 185
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 103
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 97
              Height = 15
              Align = alTop
              Caption = 'Amostra'
              FocusControl = DBEdit1
              ExplicitLeft = 16
              ExplicitTop = 16
              ExplicitWidth = 45
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 97
              Height = 23
              TabStop = False
              Align = alTop
              DataField = 'amostra'
              DataSource = RecebimentoLote.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitLeft = 16
              ExplicitTop = 32
              ExplicitWidth = 154
            end
          end
          object Panel6: TPanel
            Left = 103
            Top = 0
            Width = 103
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitLeft = 176
            ExplicitTop = -6
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 97
              Height = 15
              Align = alTop
              Caption = 'Etiqueta'
              FocusControl = DBEdit2
              ExplicitLeft = 56
              ExplicitTop = 16
              ExplicitWidth = 43
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 97
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'comodato'
              DataSource = RecebimentoLote.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitLeft = 56
              ExplicitTop = 32
              ExplicitWidth = 154
            end
          end
          object Panel7: TPanel
            Left = 206
            Top = 0
            Width = 139
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 2
            object Label8: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 133
              Height = 15
              Align = alTop
              Caption = 'Entrada'
              FocusControl = DBEdit8
              ExplicitLeft = 48
              ExplicitTop = 24
              ExplicitWidth = 40
            end
            object DBEdit8: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 133
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'entrada'
              DataSource = RecebimentoLote.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitLeft = 48
              ExplicitTop = 40
              ExplicitWidth = 274
            end
          end
          object Panel8: TPanel
            Left = 488
            Top = 0
            Width = 76
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 4
            ExplicitLeft = 448
            object Label9: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 70
              Height = 15
              Align = alTop
              Caption = 'Quantidade'
              FocusControl = DBEdit9
              ExplicitLeft = 32
              ExplicitTop = 16
              ExplicitWidth = 62
            end
            object DBEdit9: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 70
              Height = 23
              Align = alClient
              DataField = 'qtd'
              DataSource = RecebimentoLote.DataSource1
              TabOrder = 0
              ExplicitLeft = 32
              ExplicitTop = 32
              ExplicitWidth = 154
            end
          end
          object Panel9: TPanel
            Left = 345
            Top = 0
            Width = 143
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 3
            ExplicitLeft = 319
            ExplicitTop = 6
            ExplicitWidth = 103
            object Label6: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 137
              Height = 15
              Align = alTop
              Caption = 'Status'
              ExplicitLeft = 32
              ExplicitTop = 16
              ExplicitWidth = 32
            end
            object DBComboBox1: TDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 137
              Height = 23
              Style = csDropDownList
              Align = alClient
              DataField = 'status'
              DataSource = RecebimentoLote.DataSource1
              ItemHeight = 15
              Items.Strings = (
                'Conforme'
                'N'#227'o Conforme'
                'Vazio'
                'Quebrado')
              TabOrder = 0
            end
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 564
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitLeft = 16
          ExplicitTop = -3
          ExplicitWidth = 872
          object Panel10: TPanel
            Left = 0
            Top = 0
            Width = 304
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitWidth = 303
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 298
              Height = 15
              Align = alTop
              Caption = 'Empresa'
              FocusControl = DBEdit3
              ExplicitLeft = 24
              ExplicitTop = 24
              ExplicitWidth = 45
            end
            object DBEdit3: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 298
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'empresa'
              DataSource = RecebimentoLote.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitLeft = 24
              ExplicitTop = 40
              ExplicitWidth = 604
            end
          end
          object Panel11: TPanel
            Left = 304
            Top = 0
            Width = 130
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitLeft = 303
            object Label4: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 124
              Height = 15
              Align = alTop
              Caption = 'C.N.P.J.'
              FocusControl = DBEdit4
              ExplicitLeft = 24
              ExplicitTop = 24
              ExplicitWidth = 40
            end
            object DBEdit4: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 124
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'cnpj'
              DataSource = RecebimentoLote.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitLeft = 24
              ExplicitTop = 40
              ExplicitWidth = 274
            end
          end
          object Panel12: TPanel
            Left = 434
            Top = 0
            Width = 130
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitLeft = 433
            object Label5: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 124
              Height = 15
              Align = alTop
              Caption = 'C.P.F.'
              FocusControl = DBEdit5
              ExplicitLeft = 16
              ExplicitTop = 32
              ExplicitWidth = 30
            end
            object DBEdit5: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 124
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'cpf'
              DataSource = RecebimentoLote.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitLeft = 16
              ExplicitTop = 48
              ExplicitWidth = 214
            end
          end
        end
        object Panel15: TPanel
          Left = 0
          Top = 50
          Width = 564
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          ExplicitTop = 0
          ExplicitWidth = 872
          object Panel19: TPanel
            Left = 0
            Top = 0
            Width = 527
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitLeft = 509
            ExplicitWidth = 326
            object Label13: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 521
              Height = 15
              Align = alTop
              Caption = 'Cidade'
              FocusControl = DBEdit13
              ExplicitWidth = 37
            end
            object DBEdit13: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 521
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'cidade'
              DataSource = RecebimentoLote.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitWidth = 320
            end
          end
          object Panel20: TPanel
            Left = 527
            Top = 0
            Width = 37
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitLeft = 835
            object Label14: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 31
              Height = 15
              Align = alTop
              Caption = 'UF'
              FocusControl = DBEdit14
              ExplicitWidth = 14
            end
            object DBEdit14: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 31
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'estado'
              DataSource = RecebimentoLote.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitTop = 23
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 572
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 633
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      Width = 434
      ButtonWidth = 115
      ExplicitWidth = 434
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
    Left = 144
    Top = 48
  end
end
