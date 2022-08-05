inherited Textos_OSM: TTextos_OSM
  Caption = 'Atividades para OS'
  ClientHeight = 272
  ExplicitHeight = 301
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Height = 228
    ExplicitHeight = 228
    inherited Panel3: TPanel
      Top = -66
      Width = 611
      Align = alNone
      ExplicitTop = -66
      ExplicitWidth = 611
      inherited PageControl3: TPageControl
        Width = 605
        ExplicitWidth = 605
        inherited tsDet: TTabSheet
          ExplicitWidth = 597
          inherited DBGrid1: TDBGrid
            Width = 597
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 605
        ExplicitWidth = 605
        inherited ToolBar3: TToolBar
          Width = 592
          ExplicitWidth = 592
        end
      end
    end
    inherited PageControl1: TPageControl
      Height = 222
      ExplicitHeight = 222
      inherited TabSheet1: TTabSheet
        Caption = 'Textos de Atividades'
        ExplicitHeight = 192
        object Label1: TLabel
          Left = 12
          Top = 9
          Width = 24
          Height = 15
          Caption = 'Item'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 12
          Top = 56
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBMemo1
        end
        object Label3: TLabel
          Left = 70
          Top = 9
          Width = 50
          Height = 15
          Caption = 'Atividade'
          FocusControl = DBEdit1
        end
        object DBEdit1: TDBEdit
          Left = 12
          Top = 26
          Width = 51
          Height = 23
          DataField = 'item'
          DataSource = Textos_OS.DataSource1
          TabOrder = 0
        end
        object DBMemo1: TDBMemo
          Left = 70
          Top = 56
          Width = 541
          Height = 121
          DataField = 'descri'
          DataSource = Textos_OS.DataSource1
          TabOrder = 2
        end
        object RxDBComboBox1: TJvDBComboBox
          Left = 70
          Top = 26
          Width = 541
          Height = 23
          DataField = 'codativ'
          DataSource = Textos_OS.DataSource1
          TabOrder = 1
          ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
          ListSettings.OutfilteredValueFont.Color = clRed
          ListSettings.OutfilteredValueFont.Height = -11
          ListSettings.OutfilteredValueFont.Name = 'Tahoma'
          ListSettings.OutfilteredValueFont.Style = []
        end
      end
    end
  end
  inherited alDef: TActionList
    Left = 232
  end
end
