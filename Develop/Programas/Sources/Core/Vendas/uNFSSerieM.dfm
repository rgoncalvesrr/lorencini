inherited NFSSerieM: TNFSSerieM
  Caption = 'Manuten'#231#227'o de S'#233'ries'
  ClientHeight = 143
  ClientWidth = 421
  ExplicitWidth = 427
  ExplicitHeight = 172
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 421
    Height = 99
    ExplicitHeight = 99
    inherited Panel3: TPanel
      Align = alNone
    end
    inherited PageControl1: TPageControl
      Width = 415
      Height = 93
      ExplicitHeight = 93
      inherited TabSheet1: TTabSheet
        Caption = 'S'#233'rie'
        ExplicitHeight = 63
        object Label1: TLabel
          Left = 6
          Top = 10
          Width = 25
          Height = 15
          Caption = 'S'#233'rie'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 168
          Top = 5
          Width = 24
          Height = 15
          Caption = 'Tipo'
        end
        object Label3: TLabel
          Left = 83
          Top = 10
          Width = 57
          Height = 15
          Caption = 'Nota Atual'
          FocusControl = DBEdit3
        end
        object DBEdit1: TDBEdit
          Left = 6
          Top = 27
          Width = 70
          Height = 23
          DataField = 'serie'
          DataSource = NFSSerie.DataSource1
          TabOrder = 0
        end
        object DBEdit3: TDBEdit
          Left = 83
          Top = 27
          Width = 79
          Height = 23
          DataField = 'nf_atual'
          DataSource = NFSSerie.DataSource1
          TabOrder = 1
        end
        object DBComboBox1: TDBComboBox
          Left = 168
          Top = 27
          Width = 96
          Height = 23
          Style = csDropDownList
          DataField = 'tipo'
          DataSource = NFSSerie.DataSource1
          ItemHeight = 15
          Items.Strings = (
            'Materiais'
            'Servi'#231'os')
          TabOrder = 2
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 415
    inherited ToolBar1: TToolBar
      Width = 402
      ExplicitWidth = 402
    end
  end
  inherited alDef: TActionList
    Left = 200
  end
end
