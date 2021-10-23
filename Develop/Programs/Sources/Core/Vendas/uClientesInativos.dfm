inherited ClienteInativos: TClienteInativos
  Caption = 'Cliente Inativos'
  ClientHeight = 439
  ClientWidth = 871
  ExplicitWidth = 887
  ExplicitHeight = 478
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 412
    Width = 865
    ExplicitTop = 412
    ExplicitWidth = 865
  end
  inherited Panel1: TPanel
    Width = 871
    ExplicitWidth = 871
    inherited pctlFind: TPageControl
      Width = 861
      ExplicitWidth = 861
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 853
        ExplicitHeight = 75
        inherited BitBtn2: TBitBtn
          Left = 752
          ExplicitLeft = 752
        end
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 69
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Label1: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 63
            Height = 15
            Align = alTop
            Caption = 'Estado'
            ExplicitWidth = 35
          end
          object cbEstado: TComboBox
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 63
            Height = 23
            Align = alTop
            Style = csDropDownList
            ItemHeight = 15
            TabOrder = 0
          end
        end
        object Panel4: TPanel
          Left = 69
          Top = 0
          Width = 300
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object Label3: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 294
            Height = 15
            Align = alTop
            Caption = 'Cidade'
            ExplicitWidth = 37
          end
          object edCidade: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 294
            Height = 23
            Align = alTop
            TabOrder = 0
          end
        end
        object Panel5: TPanel
          Left = 369
          Top = 0
          Width = 113
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 3
        end
        object Panel6: TPanel
          Left = 482
          Top = 0
          Width = 113
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 4
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 853
        ExplicitHeight = 75
      end
    end
  end
  inherited Panel2: TPanel
    Width = 871
    Height = 280
    ExplicitWidth = 871
    ExplicitHeight = 280
    inherited PageControl1: TPageControl
      Width = 865
      Height = 274
      ExplicitWidth = 865
      ExplicitHeight = 274
      inherited TabSheet1: TTabSheet
        Caption = 'Clientes Inativos'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 857
        ExplicitHeight = 244
        inherited DBGrid1: TDBGrid
          Width = 851
          Height = 238
        end
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Width = 865
    ExplicitWidth = 865
    inherited ToolBar1: TToolBar
      inherited ToolButton2: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton5: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton9: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton6: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton1: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton8: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton3: TToolButton
        ExplicitWidth = 32
      end
      inherited tbOrder: TToolButton
        ExplicitWidth = 76
      end
      inherited tbReport: TToolButton
        ExplicitWidth = 32
      end
      inherited tbOpcao: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton10: TToolButton
        ExplicitWidth = 32
      end
    end
  end
  inherited DataSource1: TDataSource
    Left = 264
    Top = 144
  end
  inherited IBrwSrc: TZQuery
    Left = 208
    Top = 144
  end
  inherited zIBrwSrc: TZUpdateSQL
    Left = 160
    Top = 144
  end
end
