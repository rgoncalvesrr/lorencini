inherited Biblioteca: TBiblioteca
  Caption = 'Biblioteca - Modelos de Se'#231#245'es'
  ClientHeight = 445
  ExplicitWidth = 853
  ExplicitHeight = 484
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 418
    ExplicitTop = 418
  end
  inherited Panel1: TPanel
    inherited pctlFind: TPageControl
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 819
        ExplicitHeight = 65
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 819
        ExplicitHeight = 65
      end
    end
  end
  inherited Panel2: TPanel
    Height = 296
    ExplicitHeight = 296
    inherited PageControl1: TPageControl
      Height = 290
      ExplicitHeight = 290
      inherited TabSheet1: TTabSheet
        Caption = 'Se'#231#245'es Modelo'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 823
        ExplicitHeight = 260
        object Splitter1: TSplitter [0]
          Left = 0
          Top = 151
          Width = 823
          Height = 3
          Cursor = crVSplit
          Align = alBottom
          ExplicitTop = 0
          ExplicitWidth = 160
        end
        inherited DBGrid1: TDBGrid
          Height = 151
        end
        object JvDBRichEdit1: TJvDBRichEdit
          Left = 0
          Top = 154
          Width = 823
          Height = 106
          DataField = 'conteudo'
          DataSource = DataSource1
          Align = alBottom
          TabOrder = 1
        end
      end
    end
  end
  inherited ctrlBarTop: TControlBar
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
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      'select titulo, recno, ativo, conteudo, img1, img2'
      '  from doc_modelos')
    Sequence = ZSequence1
    SequenceField = 'recno'
    object IBrwSrcativo: TBooleanField
      DisplayLabel = 'Ativo'
      FieldName = 'ativo'
      Required = True
    end
    object IBrwSrctitulo: TStringField
      DisplayLabel = 'Se'#231#227'o'
      FieldName = 'titulo'
      Required = True
      Size = 150
    end
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
    end
    object IBrwSrcconteudo: TBlobField
      FieldName = 'conteudo'
      Visible = False
    end
    object IBrwSrcimg1: TBlobField
      DisplayLabel = 'Imagem 1'
      FieldName = 'img1'
      ProviderFlags = []
      Visible = False
    end
    object IBrwSrcimg2: TBlobField
      DisplayLabel = 'Imagem 2'
      FieldName = 'img2'
      ProviderFlags = []
      Visible = False
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM doc_modelos'
      'WHERE'
      '  doc_modelos.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO doc_modelos'
      '  (recno, titulo, conteudo, ativo, img1, img2)'
      'VALUES'
      '  (:recno, :titulo, :conteudo, :ativo, :img1, :img2)')
    ModifySQL.Strings = (
      'UPDATE doc_modelos SET'
      '  titulo = :titulo,'
      '  conteudo = :conteudo,'
      '  ativo = :ativo,'
      '  img1 = :img1,'
      '  img2 = :img2'
      'WHERE'
      '  doc_modelos.recno = :OLD_recno')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'titulo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'conteudo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ativo'
        ParamType = ptUnknown
      end
      item
        DataType = ftBlob
        Name = 'img1'
        ParamType = ptUnknown
      end
      item
        DataType = ftBlob
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
      end>
  end
  object ZSequence1: TZSequence
    Connection = DM.Design
    SequenceName = 'public.doc_modelos_recno_seq'
    Left = 112
    Top = 48
  end
end
