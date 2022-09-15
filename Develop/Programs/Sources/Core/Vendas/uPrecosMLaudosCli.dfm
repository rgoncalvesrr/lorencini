inherited PrecosMLaudosCli: TPrecosMLaudosCli
  BorderStyle = bsSizeable
  Caption = 'Manuten'#231#227'o de Pol'#237'tica de Pre'#231'os por Laudo'
  ClientHeight = 514
  ClientWidth = 707
  Position = poDefault
  SnapBuffer = 0
  ExplicitWidth = 723
  ExplicitHeight = 552
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 707
    Height = 470
    OnResize = Panel1Resize
    ExplicitWidth = 707
    ExplicitHeight = 470
    inherited Panel3: TPanel
      Top = 144
      Width = 707
      Height = 326
      ExplicitTop = 144
      ExplicitWidth = 707
      ExplicitHeight = 326
      inherited PageControl3: TPageControl
        Width = 701
        Height = 276
        ExplicitWidth = 701
        ExplicitHeight = 276
        inherited tsDet: TTabSheet
          Caption = 'Pre'#231'o por Cliente'
          inherited DBGrid1: TDBGrid
            Width = 693
            Height = 246
            DataSource = Precos.dsLaudosCli
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 701
        ExplicitWidth = 701
        inherited ToolBar3: TToolBar
          Width = 610
          ExplicitWidth = 610
        end
      end
    end
    inherited PageControl1: TPageControl
      Width = 701
      Height = 138
      ExplicitWidth = 701
      ExplicitHeight = 138
      inherited TabSheet1: TTabSheet
        Caption = 'Laudo'
        object Panel8: TPanel
          Left = 0
          Top = 50
          Width = 693
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel9: TPanel
            Left = 0
            Top = 0
            Width = 71
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label5: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 65
              Height = 15
              Align = alTop
              Caption = 'Laudo'
              FocusControl = DBEdit3
              ExplicitWidth = 33
            end
            object DBEdit3: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 65
              Height = 23
              Align = alClient
              DataField = 'recno'
              DataSource = Precos.dsLaudos
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel10: TPanel
            Left = 71
            Top = 0
            Width = 248
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label6: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 242
              Height = 15
              Align = alTop
              Caption = 'Descri'#231#227'o'
              FocusControl = DBEdit4
              ExplicitWidth = 51
            end
            object DBEdit4: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 242
              Height = 23
              Align = alClient
              DataField = 'descri'
              DataSource = Precos.dsLaudos
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel12: TPanel
            Left = 574
            Top = 0
            Width = 119
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label8: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 113
              Height = 15
              Align = alTop
              Caption = 'Pre'#231'o'
              ExplicitWidth = 30
            end
            object JvDBCalcEdit2: TJvDBCalcEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 113
              Height = 23
              Align = alClient
              TabOrder = 0
              DecimalPlacesAlwaysShown = False
              DataField = 'valor'
              DataSource = Precos.dsLaudos
            end
          end
          object Panel11: TPanel
            Left = 319
            Top = 0
            Width = 255
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 2
            object Label7: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 249
              Height = 15
              Align = alTop
              Caption = 'T'#237'tulo'
              FocusControl = DBEdit5
              ExplicitWidth = 31
            end
            object DBEdit5: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 249
              Height = 23
              Align = alClient
              DataField = 'titulo'
              DataSource = Precos.dsLaudos
              ReadOnly = True
              TabOrder = 0
            end
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 693
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
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
              TabStop = False
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
            Width = 399
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 393
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
              Width = 393
              Height = 23
              TabStop = False
              Align = alClient
              DataField = 'descri'
              DataSource = Precos.DataSource1
              ReadOnly = True
              TabOrder = 0
            end
          end
          object Panel6: TPanel
            Left = 470
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
              TabStop = False
            end
          end
          object Panel7: TPanel
            Left = 575
            Top = 0
            Width = 118
            Height = 50
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label4: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 112
              Height = 15
              Align = alTop
              Caption = 'Pre'#231'o'
              ExplicitWidth = 30
            end
            object JvDBCalcEdit1: TJvDBCalcEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 112
              Height = 23
              TabStop = False
              Align = alClient
              ReadOnly = True
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
    Width = 701
    ExplicitWidth = 701
    inherited ToolBar1: TToolBar
      Width = 610
      ExplicitWidth = 610
    end
  end
end
