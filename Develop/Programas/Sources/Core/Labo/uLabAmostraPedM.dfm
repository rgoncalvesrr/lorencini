inherited LabAmostraPedM: TLabAmostraPedM
  Caption = 'Associa'#231#227'o de Amostra com Servi'#231'o'
  ClientHeight = 573
  ClientWidth = 905
  ExplicitWidth = 911
  ExplicitHeight = 602
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 905
    Height = 529
    ExplicitTop = 44
    ExplicitWidth = 781
    ExplicitHeight = 381
    inherited Panel3: TPanel
      Top = 152
      Width = 905
      Height = 377
      ExplicitTop = 152
      ExplicitWidth = 905
      ExplicitHeight = 377
      inherited PageControl3: TPageControl
        Top = 47
        Width = 899
        Height = 327
        ExplicitLeft = 3
        ExplicitTop = 47
        ExplicitWidth = 775
        ExplicitHeight = 185
        inherited tsDet: TTabSheet
          Caption = 'Amostras'
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 767
          ExplicitHeight = 155
          inherited DBGrid1: TDBGrid
            Width = 891
            Height = 297
            DataSource = LabAmostraPed.dsPedAmostras
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 899
        Height = 38
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 775
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
      Width = 899
      Height = 146
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 899
      ExplicitHeight = 288
      inherited TabSheet1: TTabSheet
        Caption = 'Pedido'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 767
        ExplicitHeight = 110
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 891
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitWidth = 767
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 61
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 55
              Height = 15
              Align = alTop
              Caption = 'Pedido'
              FocusControl = DBEdit1
              ExplicitWidth = 37
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 55
              Height = 23
              Align = alClient
              DataField = 'pedido'
              DataSource = LabAmostraPed.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel5: TPanel
            Left = 61
            Top = 0
            Width = 70
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 64
              Height = 15
              Align = alTop
              Caption = 'Servi'#231'o'
              FocusControl = DBEdit2
              ExplicitWidth = 38
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 64
              Height = 23
              Align = alClient
              DataField = 'codserv'
              DataSource = LabAmostraPed.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel6: TPanel
            Left = 131
            Top = 0
            Width = 468
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitWidth = 344
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 462
              Height = 15
              Align = alTop
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit3
              ExplicitWidth = 51
            end
            object DBEdit3: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 462
              Height = 23
              Align = alClient
              DataField = 'descri'
              DataSource = LabAmostraPed.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitWidth = 338
            end
          end
          object Panel7: TPanel
            Left = 599
            Top = 0
            Width = 112
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            ExplicitLeft = 475
            object Label6: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 106
              Height = 15
              Align = alTop
              Caption = 'Quantidade'
              FocusControl = DBEdit6
              ExplicitWidth = 62
            end
            object DBEdit6: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 106
              Height = 23
              Align = alClient
              DataField = 'qtd'
              DataSource = LabAmostraPed.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel8: TPanel
            Left = 711
            Top = 0
            Width = 113
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 4
            ExplicitLeft = 587
            object Label5: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 107
              Height = 15
              Align = alTop
              Caption = 'Amostras'
              FocusControl = DBEdit5
              ExplicitWidth = 50
            end
            object DBEdit5: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 107
              Height = 23
              Align = alClient
              DataField = 'amostras'
              DataSource = LabAmostraPed.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel9: TPanel
            Left = 824
            Top = 0
            Width = 67
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 5
            ExplicitLeft = 700
            object Label4: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 61
              Height = 15
              Align = alTop
              Caption = 'Registro'
              FocusControl = DBEdit4
              ExplicitWidth = 43
            end
            object DBEdit4: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 61
              Height = 23
              Align = alClient
              DataField = 'recno'
              DataSource = LabAmostraPed.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
        object Panel10: TPanel
          Left = 0
          Top = 50
          Width = 891
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitWidth = 767
          object Panel11: TPanel
            Left = 0
            Top = 0
            Width = 59
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label7: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 53
              Height = 15
              Align = alTop
              Caption = 'C'#243'digo'
              FocusControl = DBEdit7
              ExplicitWidth = 39
            end
            object DBEdit7: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 53
              Height = 23
              Align = alClient
              DataField = 'codigo'
              DataSource = LabAmostraPed.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel12: TPanel
            Left = 59
            Top = 0
            Width = 313
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitWidth = 208
            object Label12: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 307
              Height = 15
              Align = alTop
              Caption = 'Empresa'
              FocusControl = DBEdit12
              ExplicitWidth = 45
            end
            object DBEdit12: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 307
              Height = 23
              Align = alClient
              DataField = 'empresa'
              DataSource = LabAmostraPed.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitWidth = 202
            end
          end
          object Panel13: TPanel
            Left = 372
            Top = 0
            Width = 124
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            ExplicitLeft = 376
            object Label11: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 118
              Height = 15
              Align = alTop
              Caption = 'C.N.P.J.'
              FocusControl = DBEdit11
              ExplicitWidth = 40
            end
            object DBEdit11: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 118
              Height = 23
              Align = alClient
              DataField = 'cnpj'
              DataSource = LabAmostraPed.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitWidth = 103
            end
          end
          object Panel14: TPanel
            Left = 496
            Top = 0
            Width = 106
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label10: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 100
              Height = 15
              Align = alTop
              Caption = 'C.P.F.'
              FocusControl = DBEdit10
              ExplicitWidth = 30
            end
            object DBEdit10: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 100
              Height = 23
              Align = alClient
              DataField = 'cpf'
              DataSource = LabAmostraPed.DataSource1
              ReadOnly = True
              TabOrder = 0
              ExplicitWidth = 96
            end
          end
          object Panel15: TPanel
            Left = 602
            Top = 0
            Width = 180
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 4
            ExplicitLeft = 478
            object Label9: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 174
              Height = 15
              Align = alTop
              Caption = 'E-mail'
              FocusControl = DBEdit9
              ExplicitWidth = 34
            end
            object DBEdit9: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 174
              Height = 23
              Align = alClient
              DataField = 'email'
              DataSource = LabAmostraPed.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel16: TPanel
            Left = 782
            Top = 0
            Width = 109
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 5
            ExplicitLeft = 658
            object Label8: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 103
              Height = 15
              Align = alTop
              Caption = 'Telefone'
              FocusControl = DBEdit8
              ExplicitWidth = 44
            end
            object DBEdit8: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 103
              Height = 23
              Align = alClient
              DataField = 'telefone'
              DataSource = LabAmostraPed.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 899
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 775
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      ButtonWidth = 115
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
end
