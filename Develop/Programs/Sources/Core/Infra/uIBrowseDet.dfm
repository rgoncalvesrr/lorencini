inherited IDefBrowseEdit: TIDefBrowseEdit
  Left = 341
  Top = 154
  Margins.Left = 5
  Margins.Top = 5
  Margins.Right = 5
  Margins.Bottom = 5
  BorderStyle = bsDialog
  Caption = 'Detalhamento'
  ClientHeight = 593
  ClientWidth = 799
  Font.Height = -19
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 817
  ExplicitHeight = 640
  PixelsPerInch = 120
  TextHeight = 25
  object Panel1: TPanel [0]
    Left = 0
    Top = 46
    Width = 799
    Height = 547
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 55
    ExplicitHeight = 538
    object pnLookup: TPanel
      Left = 0
      Top = 0
      Width = 635
      Height = 68
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      TabOrder = 2
      Visible = False
    end
    object Panel3: TPanel
      Left = 0
      Top = 253
      Width = 799
      Height = 294
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      Visible = False
      ExplicitTop = 244
      object PageControl3: TPageControl
        AlignWithMargins = True
        Left = 4
        Top = 50
        Width = 791
        Height = 240
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        ActivePage = tsDet
        Align = alClient
        TabOrder = 0
        TabStop = False
        OnChange = PageControl3Change
        object tsDet: TTabSheet
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'T'#237'tulo do Detalhamento'
          object DBGrid1: TDBGrid
            Tag = 1
            Left = 0
            Top = 0
            Width = 781
            Height = 194
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
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
            TitleFont.Height = -19
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
        Left = 4
        Top = 4
        Width = 791
        Height = 38
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alTop
        AutoSize = True
        BevelEdges = []
        BevelKind = bkNone
        DrawingStyle = dsGradient
        RowSize = 33
        TabOrder = 1
        object ToolBar3: TToolBar
          Left = 14
          Top = 2
          Width = 615
          Height = 34
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          AutoSize = True
          BorderWidth = 1
          ButtonHeight = 30
          ButtonWidth = 150
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
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Action = actNew
            AutoSize = True
          end
          object ToolButton11: TToolButton
            Left = 32
            Top = 0
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Action = actEdit
            AutoSize = True
          end
          object ToolButton17: TToolButton
            Left = 64
            Top = 0
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Action = actView
          end
          object ToolButton12: TToolButton
            Left = 96
            Top = 0
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Action = actDel
            AutoSize = True
          end
          object tbDivDet: TToolButton
            Left = 128
            Top = 0
            Width = 10
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Caption = 'tbDivDet'
            ImageIndex = 6
            Style = tbsSeparator
          end
          object ToolButton13: TToolButton
            Left = 138
            Top = 0
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Action = actRefresh
            AutoSize = True
          end
          object ToolButton3: TToolButton
            Left = 170
            Top = 0
            Width = 10
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Caption = 'ToolButton3'
            ImageIndex = 42
            Style = tbsSeparator
          end
          object tbSQLDet: TToolButton
            Left = 180
            Top = 0
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Action = actShowSQLDet
          end
          object tbRefazGrid: TToolButton
            Left = 212
            Top = 0
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Action = actRGrid
          end
        end
      end
    end
    object PageControl1: TPageControl
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 791
      Height = 245
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      TabStop = False
      object TabSheet1: TTabSheet
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'T'#237'tulo do Detalhamento'
      end
    end
  end
  object ControlBar1: TControlBar [1]
    AlignWithMargins = True
    Left = 4
    Top = 4
    Width = 791
    Height = 38
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alTop
    AutoSize = True
    BevelEdges = []
    BevelKind = bkNone
    DrawingStyle = dsGradient
    RowSize = 33
    TabOrder = 1
    object ToolBar1: TToolBar
      Left = 14
      Top = 2
      Width = 615
      Height = 34
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      AutoSize = True
      BorderWidth = 1
      ButtonHeight = 30
      ButtonWidth = 133
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
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = actNewMaster
        AutoSize = True
      end
      object ToolButton4: TToolButton
        Left = 32
        Top = 0
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = actEditMaster
        AutoSize = True
      end
      object ToolButton7: TToolButton
        Left = 64
        Top = 0
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = actDelMaster
        AutoSize = True
      end
      object ToolButtton5: TToolButton
        Left = 96
        Top = 0
        Width = 10
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'ToolButtton5'
        Enabled = False
        ImageIndex = 6
        Style = tbsSeparator
      end
      object ToolButton1: TToolButton
        Left = 106
        Top = 0
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = actOk
        AutoSize = True
      end
      object ToolButton2: TToolButton
        Left = 138
        Top = 0
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = actCancel
        AutoSize = True
        Enabled = False
      end
      object ToolButtton15: TToolButton
        Left = 170
        Top = 0
        Width = 10
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'ToolButtton15'
        Enabled = False
        ImageIndex = 10
        Style = tbsSeparator
      end
      object ToolButton8: TToolButton
        Left = 180
        Top = 0
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = actFirst
        AutoSize = True
      end
      object ToolButton9: TToolButton
        Left = 212
        Top = 0
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = actPrior
        AutoSize = True
      end
      object ToolButton14: TToolButton
        Left = 244
        Top = 0
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = actNext
        AutoSize = True
      end
      object ToolButton16: TToolButton
        Left = 276
        Top = 0
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = actLast
        AutoSize = True
      end
      object tbDiv: TToolButton
        Left = 308
        Top = 0
        Width = 10
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'tbDiv'
        ImageIndex = 37
        Style = tbsSeparator
      end
      object tbSQL: TToolButton
        Tag = 1
        Left = 318
        Top = 0
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Action = actShowSQL
      end
      object tbDiv3: TToolButton
        Left = 350
        Top = 0
        Width = 10
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'tbDiv3'
        ImageIndex = 37
        Style = tbsSeparator
      end
      object tbClose: TToolButton
        Left = 360
        Top = 0
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
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
