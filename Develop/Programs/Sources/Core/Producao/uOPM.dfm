inherited OPM: TOPM
  Caption = 'Ordem de Produ'#231#227'o'
  ClientHeight = 628
  ClientWidth = 927
  ExplicitWidth = 933
  ExplicitHeight = 657
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 927
    Height = 584
    inherited Panel3: TPanel
      Top = 349
      Width = 927
      inherited PageControl3: TPageControl
        Width = 921
        ExplicitWidth = 921
        inherited tsDet: TTabSheet
          Caption = 'Servi'#231'os'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          inherited DBGrid1: TDBGrid
            Width = 913
            DataSource = OP.dsServ
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 921
      end
    end
    inherited PageControl1: TPageControl
      Width = 921
      Height = 343
      inherited TabSheet1: TTabSheet
        Caption = 'Ordem de Produ'#231#227'o'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 921
  end
end
