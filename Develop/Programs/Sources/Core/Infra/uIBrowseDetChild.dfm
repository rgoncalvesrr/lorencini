inherited IBrowseDetChild: TIBrowseDetChild
  Caption = 'IBrowseDetChild'
  ClientHeight = 468
  ClientWidth = 606
  ExplicitWidth = 612
  ExplicitHeight = 494
  PixelsPerInch = 96
  TextHeight = 14
  inherited Bevel1: TBevel
    Height = 190
  end
  inherited Bevel3: TBevel
    Width = 606
  end
  inherited Bevel2: TBevel
    Left = 601
    Height = 190
  end
  inherited Bevel4: TBevel
    Top = 226
    Width = 606
    ExplicitLeft = -32
    ExplicitTop = 215
    ExplicitWidth = 606
  end
  object Bevel5: TBevel [4]
    Left = 0
    Top = 462
    Width = 606
    Height = 6
    Align = alBottom
    Shape = bsSpacer
    ExplicitTop = 213
    ExplicitWidth = 465
  end
  inherited ToolBar1: TToolBar
    Width = 606
    ButtonWidth = 73
    object ToolButton8: TToolButton [0]
      Left = 0
      Top = 0
      Action = actEditMaster
      AutoSize = True
    end
    object ToolButton9: TToolButton [1]
      Left = 61
      Top = 0
      Width = 8
      Caption = 'ToolButton9'
      ImageIndex = 5
      Style = tbsSeparator
    end
    inherited ToolButton1: TToolButton
      Left = 69
      ExplicitLeft = 69
    end
    inherited ToolButton2: TToolButton
      Left = 134
      Enabled = False
      ExplicitLeft = 134
      ExplicitWidth = 77
    end
  end
  inherited Panel1: TPanel
    Width = 596
    Height = 190
    inherited PageControl1: TPageControl
      Width = 596
      Height = 190
    end
  end
  object Panel2: TPanel [7]
    Left = 0
    Top = 232
    Width = 606
    Height = 230
    Align = alBottom
    Caption = 'Panel2'
    Padding.Left = 5
    Padding.Right = 5
    TabOrder = 2
    object PageControl2: TPageControl
      Left = 6
      Top = 27
      Width = 594
      Height = 202
      ActivePage = TabSheet2
      Align = alClient
      TabOrder = 0
      TabStop = False
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 604
      ExplicitHeight = 150
      object TabSheet2: TTabSheet
        Caption = 'Filhos'
        ExplicitWidth = 596
        ExplicitHeight = 121
        object DBGrid1: TDBGrid
          Tag = 1
          Left = 0
          Top = 0
          Width = 586
          Height = 173
          Align = alClient
          BorderStyle = bsNone
          Ctl3D = False
          DefaultDrawing = False
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
        end
      end
    end
    object ToolBar2: TToolBar
      Left = 6
      Top = 1
      Width = 594
      Height = 26
      AutoSize = True
      BorderWidth = 1
      ButtonWidth = 73
      Caption = 'ToolBar2'
      Images = DM.small
      List = True
      ShowCaptions = True
      TabOrder = 1
      ExplicitLeft = 1
      ExplicitWidth = 604
      object ToolButton3: TToolButton
        Left = 0
        Top = 0
        Action = actNew
        AutoSize = True
      end
      object ToolButton4: TToolButton
        Left = 60
        Top = 0
        Action = actEdit
        AutoSize = True
      end
      object ToolButton5: TToolButton
        Left = 121
        Top = 0
        Action = actDel
        AutoSize = True
      end
      object ToolButton6: TToolButton
        Left = 186
        Top = 0
        Width = 8
        Caption = 'ToolButton6'
        ImageIndex = 56
        Style = tbsSeparator
      end
      object ToolButton7: TToolButton
        Left = 194
        Top = 0
        Action = actRefresh
        AutoSize = True
      end
    end
  end
  inherited alDef: TActionList
    object actEditMaster: TAction [0]
      Caption = 'Editar'
      Enabled = False
      ImageIndex = 11
    end
    object actNew: TAction
      Caption = 'Novo'
      Enabled = False
      ImageIndex = 28
    end
    object actEdit: TAction
      Caption = 'Editar'
      Enabled = False
      ImageIndex = 11
    end
    object actDel: TAction
      Caption = 'Excluir'
      Enabled = False
      ImageIndex = 55
    end
    object actRefresh: TAction
      Caption = 'Atualizar'
      Enabled = False
      ImageIndex = 41
    end
  end
end
