inherited PrecosM: TPrecosM
  BorderStyle = bsSizeable
  Caption = 'Manuten'#231#227'o de Pol'#237'ticas de Pre'#231'os'
  ClientHeight = 464
  ClientWidth = 629
  Position = poDefault
  SnapBuffer = 0
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 629
    Height = 420
    OnResize = Panel1Resize
    ExplicitWidth = 629
    ExplicitHeight = 420
    inherited Panel3: TPanel
      Top = 89
      Width = 629
      Height = 331
      ExplicitTop = 89
      ExplicitWidth = 629
      ExplicitHeight = 331
      inherited PageControl3: TPageControl
        Width = 623
        Height = 281
        ExplicitWidth = 623
        ExplicitHeight = 281
        inherited tsDet: TTabSheet
          Caption = 'Laudos'
          inherited DBGrid1: TDBGrid
            Width = 615
            Height = 251
            DataSource = Precos.dsLaudos
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 623
        ExplicitWidth = 623
        inherited ToolBar3: TToolBar
          Width = 610
          ExplicitWidth = 610
        end
      end
    end
    inherited PageControl1: TPageControl
      Width = 623
      Height = 83
      ExplicitWidth = 623
      ExplicitHeight = 83
      inherited TabSheet1: TTabSheet
        Caption = 'Servi'#231'o'
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 615
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 71
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 65
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
              Width = 65
              Height = 23
              Align = alClient
              DataField = 'codserv'
              DataSource = Precos.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel5: TPanel
            Left = 71
            Top = 0
            Width = 335
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 329
              Height = 15
              Align = alTop
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit2
              ExplicitWidth = 51
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 329
              Height = 23
              Align = alClient
              DataField = 'descri'
              DataSource = Precos.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel6: TPanel
            Left = 406
            Top = 0
            Width = 105
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 99
              Height = 15
              Align = alTop
              Caption = 'Tipo'
              ExplicitWidth = 24
            end
            object DBComboBox1: TDBComboBox
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 99
              Height = 23
              Style = csDropDownList
              Align = alClient
              DataField = 'tipo'
              DataSource = Precos.DataSource1
              ItemHeight = 15
              Items.Strings = (
                'Vari'#225'vel'
                'Fixo')
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel7: TPanel
            Left = 511
            Top = 0
            Width = 104
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label4: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 98
              Height = 15
              Align = alTop
              Caption = 'Pre'#231'o'
              ExplicitWidth = 30
            end
            object JvDBCalcEdit1: TJvDBCalcEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 98
              Height = 23
              Align = alClient
              TabOrder = 0
              DecimalPlacesAlwaysShown = False
              DataField = 'valor'
              DataSource = Precos.DataSource1
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 623
    ExplicitWidth = 623
    inherited ToolBar1: TToolBar
      Width = 610
      ExplicitWidth = 610
    end
  end
  inherited alDef: TActionList
    inherited actNew: TAction
      Visible = False
    end
  end
end
