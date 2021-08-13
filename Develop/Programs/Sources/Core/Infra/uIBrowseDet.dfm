inherited IDefBrowseEdit: TIDefBrowseEdit
  Left = 341
  Top = 154
  BorderStyle = bsDialog
  Caption = 'Detalhamento'
  ClientHeight = 474
  ClientWidth = 639
  OldCreateOrder = True
  ExplicitWidth = 645
  ExplicitHeight = 503
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel [0]
    Left = 0
    Top = 44
    Width = 639
    Height = 430
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pnLookup: TPanel
      Left = 0
      Top = 0
      Width = 508
      Height = 54
      TabOrder = 2
      Visible = False
    end
    object Panel3: TPanel
      Left = 0
      Top = 195
      Width = 639
      Height = 235
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      Visible = False
      object PageControl3: TPageControl
        AlignWithMargins = True
        Left = 3
        Top = 47
        Width = 633
        Height = 185
        ActivePage = tsDet
        Align = alClient
        TabOrder = 0
        TabStop = False
        OnChange = PageControl3Change
        object tsDet: TTabSheet
          Caption = 'T'#237'tulo do Detalhamento'
          object DBGrid1: TDBGrid
            Tag = 1
            Left = 0
            Top = 0
            Width = 625
            Height = 155
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DefaultDrawing = False
            Enabled = False
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Pitch = fpVariable
            TitleFont.Style = []
            OnDrawColumnCell = ChildGridDrawColumnCell
            OnDblClick = ChildGridDblClick
            OnEnter = ChildGridEnter
            OnKeyPress = ChildGridKeyPress
          end
        end
      end
      object ControlBar2: TControlBar
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 633
        Height = 38
        Align = alTop
        AutoSize = True
        BevelEdges = []
        BevelKind = bkNone
        DrawingStyle = dsGradient
        TabOrder = 1
        object ToolBar3: TToolBar
          Left = 11
          Top = 2
          Width = 620
          Height = 34
          AutoSize = True
          BorderWidth = 1
          ButtonHeight = 30
          ButtonWidth = 129
          Caption = 'ToolBar3'
          DisabledImages = Resources.medium_d
          DrawingStyle = dsGradient
          EdgeInner = esNone
          EdgeOuter = esNone
          HotImages = Resources.medium_h
          Images = Resources.medium_n
          List = True
          ParentShowHint = False
          ShowCaptions = True
          AllowTextButtons = True
          ShowHint = True
          TabOrder = 0
          object ToolButton10: TToolButton
            Left = 0
            Top = 0
            Action = actNew
            AutoSize = True
          end
          object ToolButton11: TToolButton
            Left = 32
            Top = 0
            Action = actEdit
            AutoSize = True
          end
          object ToolButton17: TToolButton
            Left = 64
            Top = 0
            Action = actView
          end
          object ToolButton12: TToolButton
            Left = 96
            Top = 0
            Action = actDel
            AutoSize = True
          end
          object tbDivDet: TToolButton
            Left = 128
            Top = 0
            Width = 8
            Caption = 'tbDivDet'
            ImageIndex = 6
            Style = tbsSeparator
          end
          object ToolButton13: TToolButton
            Left = 136
            Top = 0
            Action = actRefresh
            AutoSize = True
          end
          object ToolButton3: TToolButton
            Left = 168
            Top = 0
            Width = 8
            Caption = 'ToolButton3'
            ImageIndex = 42
            Style = tbsSeparator
          end
          object tbSQLDet: TToolButton
            Left = 176
            Top = 0
            Action = actShowSQLDet
          end
          object tbRefazGrid: TToolButton
            Left = 208
            Top = 0
            Action = actRGrid
          end
        end
      end
    end
    object PageControl1: TPageControl
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 633
      Height = 189
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      TabStop = False
      object TabSheet1: TTabSheet
        Caption = 'T'#237'tulo do Detalhamento'
      end
    end
  end
  object ControlBar1: TControlBar [1]
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 633
    Height = 38
    Align = alTop
    AutoSize = True
    BevelEdges = []
    BevelKind = bkNone
    DrawingStyle = dsGradient
    TabOrder = 1
    object ToolBar1: TToolBar
      Left = 11
      Top = 2
      Width = 620
      Height = 34
      AutoSize = True
      BorderWidth = 1
      ButtonHeight = 30
      ButtonWidth = 115
      Caption = 'ToolBar1'
      DisabledImages = Resources.medium_d
      DrawingStyle = dsGradient
      EdgeInner = esNone
      EdgeOuter = esNone
      HotImages = Resources.medium_h
      Images = Resources.medium_n
      List = True
      ParentShowHint = False
      ShowCaptions = True
      AllowTextButtons = True
      ShowHint = True
      TabOrder = 0
      object ToolButton6: TToolButton
        Left = 0
        Top = 0
        Action = actNewMaster
        AutoSize = True
      end
      object ToolButton4: TToolButton
        Left = 32
        Top = 0
        Action = actEditMaster
        AutoSize = True
      end
      object ToolButton7: TToolButton
        Left = 64
        Top = 0
        Action = actDelMaster
        AutoSize = True
      end
      object ToolButtton5: TToolButton
        Left = 96
        Top = 0
        Width = 8
        Caption = 'ToolButtton5'
        Enabled = False
        ImageIndex = 6
        Style = tbsSeparator
      end
      object ToolButton1: TToolButton
        Left = 104
        Top = 0
        Action = actOk
        AutoSize = True
      end
      object ToolButton2: TToolButton
        Left = 136
        Top = 0
        Action = actCancel
        AutoSize = True
        Enabled = False
      end
      object ToolButtton15: TToolButton
        Left = 168
        Top = 0
        Width = 8
        Caption = 'ToolButtton15'
        Enabled = False
        ImageIndex = 10
        Style = tbsSeparator
      end
      object ToolButton8: TToolButton
        Left = 176
        Top = 0
        Action = actFirst
        AutoSize = True
      end
      object ToolButton9: TToolButton
        Left = 208
        Top = 0
        Action = actPrior
        AutoSize = True
      end
      object ToolButton14: TToolButton
        Left = 240
        Top = 0
        Action = actNext
        AutoSize = True
      end
      object ToolButton16: TToolButton
        Left = 272
        Top = 0
        Action = actLast
        AutoSize = True
      end
      object tbDiv: TToolButton
        Left = 304
        Top = 0
        Width = 8
        Caption = 'tbDiv'
        ImageIndex = 37
        Style = tbsSeparator
      end
      object tbSQL: TToolButton
        Tag = 1
        Left = 312
        Top = 0
        Action = actShowSQL
      end
      object tbDiv3: TToolButton
        Left = 344
        Top = 0
        Width = 8
        Caption = 'tbDiv3'
        ImageIndex = 37
        Style = tbsSeparator
      end
      object tbClose: TToolButton
        Left = 352
        Top = 0
        Action = actClose
        AutoSize = True
      end
    end
  end
  inherited alDef: TActionList
    Left = 216
    Top = 56
    inherited actOk: TAction
      Caption = 'Gravar'
      Enabled = False
      Hint = 'Salvar Edi'#231#227'o'
      ImageIndex = 324
    end
    inherited actCancel: TAction
      Hint = 'Cancelar Edi'#231#227'o'
    end
    object actNewMaster: TAction [2]
      Tag = 1
      Caption = 'Novo'
      Enabled = False
      Hint = 'Novo'
      ImageIndex = 2
      OnExecute = actChangeMasterExecute
    end
    object actEditMaster: TAction [3]
      Tag = 2
      Caption = 'Editar'
      Enabled = False
      Hint = 'Editar'
      ImageIndex = 274
      OnExecute = actChangeMasterExecute
    end
    object actDelMaster: TAction [4]
      Tag = 3
      Caption = 'Excluir'
      Enabled = False
      Hint = 'Excluir'
      ImageIndex = 100
      OnExecute = actChangeMasterExecute
    end
    object actNew: TAction [5]
      Tag = 1
      Caption = 'Novo'
      Enabled = False
      Hint = 'Novo Item'
      ImageIndex = 2
      OnExecute = actNewExecute
    end
    object actEdit: TAction [6]
      Tag = 2
      Caption = 'Editar'
      Enabled = False
      Hint = 'Alterar Item'
      ImageIndex = 274
      OnExecute = actNewExecute
    end
    object actDel: TAction [7]
      Caption = 'Excluir'
      Enabled = False
      Hint = 'Excluir Item'
      ImageIndex = 100
      OnExecute = actDelExecute
    end
    object actRefresh: TAction [8]
      Caption = 'Atualizar'
      Enabled = False
      Hint = 'Atualizar'
      ImageIndex = 307
      OnExecute = actRefreshExecute
    end
    object actView: TAction [9]
      Tag = 3
      Caption = 'Visualizar'
      Enabled = False
      Hint = 'Visualizar'
      ImageIndex = 401
      OnExecute = actNewExecute
    end
    object actFirst: TAction [10]
      Tag = 4
      Enabled = False
      Hint = 'Primeiro registro'
      ImageIndex = 285
      OnExecute = actChangeMasterExecute
    end
    object actPrior: TAction [11]
      Tag = 5
      Enabled = False
      Hint = 'Registro anterior'
      ImageIndex = 19
      OnExecute = actChangeMasterExecute
    end
    object actNext: TAction [12]
      Tag = 6
      Enabled = False
      Hint = 'Pr'#243'ximo registro'
      ImageIndex = 152
      OnExecute = actChangeMasterExecute
    end
    object actLast: TAction [13]
      Tag = 7
      Enabled = False
      Hint = #218'ltimo registro'
      ImageIndex = 251
      OnExecute = actChangeMasterExecute
    end
    inherited actClose: TAction
      Caption = ''
      Hint = 'Fechar tela'
    end
    object actShowSQL: TAction
      Tag = 1
      Caption = 'Inspe'#231#227'o SQL...'
      Enabled = False
      Hint = 'Mostra Instru'#231#227'o SQL'
      ImageIndex = 398
      ShortCut = 16496
      OnExecute = actShowSQLExecute
    end
    object actShowSQLDet: TAction
      Tag = 2
      Caption = 'Inspecionar SQL...'
      Hint = 'Mostra Instru'#231#227'o SQL'
      ImageIndex = 398
      ShortCut = 16497
      OnExecute = actShowSQLExecute
    end
    object actRGrid: TAction
      ImageIndex = 194
      OnExecute = actRGridExecute
    end
  end
end
