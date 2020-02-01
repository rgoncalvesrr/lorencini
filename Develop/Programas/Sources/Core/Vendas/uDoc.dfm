inherited Doc: TDoc
  Caption = 'Documento'
  ClientHeight = 720
  Constraints.MinWidth = 1134
  ExplicitWidth = 1134
  ExplicitHeight = 767
  PixelsPerInch = 120
  TextHeight = 20
  inherited StatusBar1: TStatusBar
    Top = 693
    ExplicitTop = 693
    ExplicitWidth = 1110
  end
  inherited Panel1: TPanel
    Top = 44
    inherited pctlFind: TPageControl
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1098
        ExplicitHeight = 90
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1098
        ExplicitHeight = 90
      end
    end
  end
  inherited Panel2: TPanel
    Top = 144
    Height = 546
    ExplicitTop = 157
    ExplicitHeight = 546
    inherited PageControl1: TPageControl
      Height = 540
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 1110
      ExplicitHeight = 527
      inherited TabSheet1: TTabSheet
        Caption = 'Se'#231#245'es do Documento'
        ExplicitLeft = 4
        ExplicitTop = 31
        ExplicitWidth = 1102
        ExplicitHeight = 492
        object Splitter1: TSplitter [0]
          Left = 289
          Top = 49
          Width = 4
          Height = 456
          ExplicitTop = 65
          ExplicitHeight = 408
        end
        inherited DBGrid1: TDBGrid
          Top = 49
          Width = 289
          Height = 456
          Align = alLeft
        end
        object Panel6: TPanel
          Left = 293
          Top = 49
          Width = 809
          Height = 456
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitTop = 62
          ExplicitHeight = 430
          object Splitter2: TSplitter
            Left = 377
            Top = 144
            Width = 4
            Height = 312
            ExplicitLeft = 379
            ExplicitHeight = 264
          end
          object Splitter3: TSplitter
            Left = 0
            Top = 140
            Width = 809
            Height = 4
            Cursor = crVSplit
            Align = alTop
            ExplicitWidth = 804
          end
          object GroupBox1: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 147
            Width = 371
            Height = 306
            Align = alLeft
            Caption = ' Imagem 1 '
            TabOrder = 0
            ExplicitHeight = 280
            inline FrameImage1: TFrameImage
              Left = 2
              Top = 22
              Width = 367
              Height = 282
              Align = alClient
              TabOrder = 0
              ExplicitLeft = 2
              ExplicitTop = 22
              ExplicitWidth = 367
              ExplicitHeight = 256
              inherited FrameImage: TJvDBImage
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 361
                Height = 276
                DataField = 'img1'
                DataSource = DataSource1
                ExplicitLeft = 3
                ExplicitTop = 3
                ExplicitWidth = 361
                ExplicitHeight = 250
              end
            end
          end
          object GroupBox2: TGroupBox
            AlignWithMargins = True
            Left = 384
            Top = 147
            Width = 422
            Height = 306
            Align = alClient
            Caption = ' Imagem 2 '
            TabOrder = 1
            ExplicitHeight = 280
            inline FrameImage2: TFrameImage
              Left = 2
              Top = 22
              Width = 418
              Height = 282
              Align = alClient
              TabOrder = 0
              ExplicitLeft = 2
              ExplicitTop = 22
              ExplicitWidth = 418
              ExplicitHeight = 256
              inherited FrameImage: TJvDBImage
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 412
                Height = 276
                DataField = 'img2'
                DataSource = DataSource1
                ExplicitLeft = 3
                ExplicitTop = 3
                ExplicitWidth = 412
                ExplicitHeight = 250
              end
            end
          end
          object GroupBox3: TGroupBox
            Left = 0
            Top = 0
            Width = 809
            Height = 140
            Align = alTop
            Caption = ' Texto '
            TabOrder = 2
            object DBRichEdit1: TDBRichEdit
              AlignWithMargins = True
              Left = 5
              Top = 25
              Width = 799
              Height = 110
              Align = alClient
              DataField = 'conteudo'
              DataSource = DataSource1
              HideScrollBars = False
              ScrollBars = ssVertical
              TabOrder = 0
            end
          end
        end
        object ControlBar1: TControlBar
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1096
          Height = 38
          Margins.Bottom = 8
          Align = alTop
          AutoSize = True
          BevelKind = bkNone
          DrawingStyle = dsGradient
          TabOrder = 2
          object ToolBar2: TToolBar
            Left = 11
            Top = 2
            Width = 803
            Height = 34
            AutoSize = True
            BorderWidth = 1
            ButtonHeight = 30
            ButtonWidth = 90
            Caption = 'ToolBar2'
            DisabledImages = Resources.medium_d
            DrawingStyle = dsGradient
            EdgeInner = esNone
            EdgeOuter = esNone
            HotImages = Resources.medium_h
            Images = Resources.medium_n
            List = True
            AllowTextButtons = True
            TabOrder = 0
            object ToolButton13: TToolButton
              Left = 0
              Top = 0
              Action = actRecreate
              Style = tbsTextButton
            end
          end
        end
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 1110
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      ButtonWidth = 81
      inherited ToolButton2: TToolButton
        Action = nil
        DropdownMenu = pmNovo
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
      inherited ToolButton7: TToolButton
        ExplicitHeight = 38
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
      inherited ToolButton4: TToolButton
        ExplicitHeight = 38
      end
      inherited tbOrder: TToolButton
        ExplicitWidth = 85
      end
      inherited tbReport: TToolButton
        Left = 325
        ExplicitWidth = 32
      end
      inherited tbOpcao: TToolButton
        Left = 357
        ExplicitWidth = 32
      end
      inherited ToolButton11: TToolButton
        Left = 389
      end
      inherited ToolButton10: TToolButton
        Left = 397
        ExplicitLeft = 397
        ExplicitWidth = 32
      end
    end
  end
  inherited alDef: TActionList
    Left = 272
    object actNewLib: TAction
      Caption = 'Biblioteca...'
      ImageIndex = 2
      OnExecute = actNewLibExecute
    end
    object actRecreate: TAction
      Caption = 'Recriar...'
      Enabled = False
      ImageIndex = 79
      OnExecute = actRecreateExecute
    end
  end
  inherited pmRel: TPopupMenu
    Left = 320
  end
  inherited pmOrder: TPopupMenu
    Left = 362
  end
  inherited alRunTime: TActionList
    Left = 410
  end
  inherited DataSource1: TDataSource
    Left = 224
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SortedFields = 'ordem'
    AfterInsert = IBrwSrcAfterInsert
    SQL.Strings = (
      
        'select recno, titulo, ordem, conteudo, _tabela, _recno, img1, im' +
        'g2'
      '  from docs'
      ' where _tabela = :_tabela'
      '   and _recno = :_recno')
    Params = <
      item
        DataType = ftUnknown
        Name = '_tabela'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = '_recno'
        ParamType = ptUnknown
      end>
    IndexFieldNames = 'ordem Asc'
    Sequence = ZSequence1
    SequenceField = 'recno'
    Left = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = '_tabela'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = '_recno'
        ParamType = ptUnknown
      end>
    object IBrwSrcordem: TIntegerField
      DisplayLabel = 'Ordem'
      FieldName = 'ordem'
      Required = True
    end
    object IBrwSrctitulo: TStringField
      DisplayLabel = 'T'#237'tulo da Se'#231#227'o'
      DisplayWidth = 25
      FieldName = 'titulo'
      Required = True
      Size = 150
    end
    object IBrwSrcconteudo: TBlobField
      FieldName = 'conteudo'
    end
    object IBrwSrcrecno: TIntegerField
      FieldName = 'recno'
      Required = True
      Visible = False
    end
    object IBrwSrc_tabela: TIntegerField
      FieldName = '_tabela'
      Required = True
      Visible = False
    end
    object IBrwSrc_recno: TIntegerField
      FieldName = '_recno'
      Required = True
      Visible = False
    end
    object IBrwSrcimg1: TBlobField
      DisplayLabel = 'Vazio'
      FieldName = 'img1'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
    object IBrwSrcimg2: TBlobField
      DisplayLabel = 'Vazio'
      FieldName = 'img2'
      ProviderFlags = [pfInUpdate]
      Visible = False
    end
  end
  inherited pmOpcao: TPopupMenu
    Left = 472
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM docs'
      'WHERE'
      '  docs.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO docs'
      '  (recno, titulo, ordem, conteudo, _tabela, _recno, img1, img2)'
      'VALUES'
      
        '  (:recno, :titulo, :ordem, :conteudo, :_tabela, :_recno, :img1,' +
        ' :img2)')
    ModifySQL.Strings = (
      'UPDATE docs SET'
      '  titulo = :titulo,'
      '  ordem = :ordem,'
      '  conteudo = :conteudo,'
      '  img1 = :img1,'
      '  img2 = :img2'
      'WHERE'
      '  docs.recno = :OLD_recno')
    Left = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'titulo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ordem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'conteudo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'img1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'img2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = '_tabela'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = '_recno'
        ParamType = ptUnknown
      end>
  end
  object ZSequence1: TZSequence
    Connection = DM.Design
    SequenceName = 'public.docs_recno_seq'
    Left = 64
    Top = 48
  end
  object pmNovo: TPopupMenu
    Left = 512
    Top = 48
    object Visualizar1: TMenuItem
      Action = actNew
    end
    object Biblioteca1: TMenuItem
      Action = actNewLib
    end
  end
end
