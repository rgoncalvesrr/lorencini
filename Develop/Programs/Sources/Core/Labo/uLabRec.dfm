inherited LabRec: TLabRec
  Caption = 'Recomenda'#231#245'es'
  ClientHeight = 430
  Constraints.MinWidth = 853
  ExplicitLeft = 8
  ExplicitHeight = 469
  PixelsPerInch = 96
  TextHeight = 15
  inherited ToolBar1: TToolBar
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 831
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
  inherited StatusBar1: TStatusBar
    Top = 406
    ExplicitTop = 406
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
    Height = 287
    ExplicitLeft = 0
    ExplicitTop = 119
    ExplicitWidth = 837
    ExplicitHeight = 287
    object Splitter1: TSplitter [0]
      Left = 0
      Top = 143
      Width = 837
      Height = 7
      Cursor = crVSplit
      Align = alBottom
      Beveled = True
      ExplicitTop = 140
      ExplicitWidth = 897
    end
    inherited PageControl1: TPageControl
      Height = 137
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 831
      ExplicitHeight = 143
      inherited TabSheet1: TTabSheet
        Caption = 'Recomenda'#231#245'es'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 823
        ExplicitHeight = 113
        inherited DBGrid1: TDBGrid
          Height = 107
        end
      end
    end
    object Panel3: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 153
      Width = 831
      Height = 131
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitLeft = 0
      ExplicitTop = 156
      ExplicitWidth = 837
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 831
        Height = 27
        Align = alTop
        Alignment = taLeftJustify
        Caption = '  Recomenda'#231#227'o'
        TabOrder = 0
        ExplicitLeft = -2
        ExplicitTop = 3
      end
      object DBMemo1: TDBMemo
        AlignWithMargins = True
        Left = 3
        Top = 30
        Width = 825
        Height = 98
        Align = alClient
        DataField = 'recomenda'
        DataSource = DataSource1
        TabOrder = 1
        ExplicitLeft = 0
        ExplicitTop = 27
        ExplicitWidth = 837
        ExplicitHeight = 104
      end
    end
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      'select * from labrec')
    Sequence = ZSequence1
    SequenceField = 'recno'
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
      Required = True
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Required = True
      Size = 60
    end
    object IBrwSrcrecomenda: TMemoField
      DisplayLabel = 'Recomenda'#231#227'o'
      FieldName = 'recomenda'
      Required = True
      Visible = False
      BlobType = ftMemo
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labrec'
      'WHERE'
      '  labrec.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO labrec'
      '  (recno, descri, recomenda)'
      'VALUES'
      '  (:recno, :descri, :recomenda)')
    ModifySQL.Strings = (
      'UPDATE labrec SET'
      '  descri = :descri,'
      '  recomenda = :recomenda'
      'WHERE'
      '  labrec.recno = :OLD_recno')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'descri'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recomenda'
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
    SequenceName = 'public.labrec_recno_seq'
    Left = 112
    Top = 48
  end
end
