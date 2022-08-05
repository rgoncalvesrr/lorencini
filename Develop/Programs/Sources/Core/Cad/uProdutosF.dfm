inherited ProdutosF: TProdutosF
  Caption = 'Localizar Materiais'
  ClientHeight = 506
  ClientWidth = 844
  ExplicitWidth = 860
  ExplicitHeight = 545
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 844
    ExplicitTop = 44
    ExplicitWidth = 844
    inherited GroupBox1: TGroupBox
      Width = 838
      ExplicitLeft = 3
      ExplicitWidth = 838
      inherited Label2: TLabel
        Height = 30
      end
      inherited edSearch: TMaskEdit
        Width = 635
        BevelKind = bkNone
        BorderStyle = bsSingle
        ExplicitLeft = 95
        ExplicitTop = 20
        ExplicitWidth = 635
        ExplicitHeight = 30
      end
      inherited BitBtn1: TBitBtn
        Left = 736
        ExplicitLeft = 736
        ExplicitTop = 20
        ExplicitHeight = 30
      end
    end
  end
  inherited PageControl1: TPageControl
    Left = 224
    Width = 617
    Height = 395
    ExplicitLeft = 224
    ExplicitTop = 108
    ExplicitWidth = 617
    ExplicitHeight = 395
    inherited TabSheet1: TTabSheet
      Caption = 'Materiais'
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 609
      ExplicitHeight = 365
      inherited DBGrid1: TDBGrid
        Width = 609
        Height = 365
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 838
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 838
    inherited ToolBar1: TToolBar
      Width = 788
      ExplicitWidth = 788
      inherited tbOrder: TToolButton
        ExplicitWidth = 76
      end
      inherited ToolButton1: TToolButton
        ExplicitWidth = 93
      end
      inherited ToolButton2: TToolButton
        ExplicitWidth = 85
      end
    end
  end
  object PageControl2: TPageControl [3]
    Left = 0
    Top = 105
    Width = 221
    Height = 401
    ActivePage = TabSheet2
    Align = alLeft
    TabOrder = 3
    object TabSheet2: TTabSheet
      Caption = 'Grupos / Subgrupos'
      object TreeView1: TTreeView
        Left = 0
        Top = 0
        Width = 213
        Height = 371
        Align = alClient
        BorderStyle = bsNone
        Indent = 19
        TabOrder = 0
      end
    end
  end
end
