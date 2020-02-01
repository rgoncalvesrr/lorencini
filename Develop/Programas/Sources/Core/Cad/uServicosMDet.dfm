inherited ServicosMDet: TServicosMDet
  Caption = 'Desdobramento das Naturezas'
  ClientHeight = 143
  ClientWidth = 632
  ExplicitWidth = 638
  ExplicitHeight = 172
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 632
    Height = 99
    ExplicitHeight = 99
    inherited Panel3: TPanel
      Top = -195
      Width = 584
      Align = alNone
      ExplicitTop = -195
      ExplicitWidth = 584
      inherited PageControl3: TPageControl
        Width = 578
        ExplicitWidth = 578
        inherited tsDet: TTabSheet
          ExplicitWidth = 570
          inherited DBGrid1: TDBGrid
            Width = 570
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 578
        ExplicitWidth = 578
        inherited ToolBar3: TToolBar
          Width = 545
          ExplicitWidth = 545
        end
      end
    end
    inherited PageControl1: TPageControl
      Width = 626
      Height = 93
      ExplicitHeight = 93
      inherited TabSheet1: TTabSheet
        Caption = 'Desdobramento'
        ExplicitHeight = 63
        object Label1: TLabel
          Left = 3
          Top = 6
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit1
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 24
          Width = 607
          Height = 23
          DataField = 'descri'
          DataSource = ServicosM.dsNatDet
          TabOrder = 0
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 626
    inherited ToolBar1: TToolBar
      Width = 609
      ExplicitWidth = 609
    end
  end
end
