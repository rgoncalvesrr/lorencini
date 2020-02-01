inherited LabEquipFam: TLabEquipFam
  Caption = 'Fam'#237'lia de Equipamentos'
  Constraints.MinWidth = 853
  ExplicitLeft = 8
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
    ExplicitLeft = 0
    ExplicitTop = 119
    ExplicitWidth = 837
    ExplicitHeight = 199
    inherited PageControl1: TPageControl
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 831
      ExplicitHeight = 193
      inherited TabSheet1: TTabSheet
        Caption = 'Fam'#237'lia de Equipamentos'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 823
        ExplicitHeight = 163
      end
    end
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SortedFields = 'descri'
    SQL.Strings = (
      'select * from labfamilia')
    IndexFieldNames = 'descri Asc'
    Sequence = ZSequence1
    SequenceField = 'recno'
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Fam'#237'lia'
      FieldName = 'recno'
      Required = True
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Required = True
      Size = 60
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labfamilia'
      'WHERE'
      '  labfamilia.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO labfamilia'
      '  (recno, descri)'
      'VALUES'
      '  (:recno, :descri)')
    ModifySQL.Strings = (
      'UPDATE labfamilia SET'
      '  recno = :recno,'
      '  descri = :descri'
      'WHERE'
      '  labfamilia.recno = :OLD_recno')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'descri'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_recno'
        ParamType = ptUnknown
      end>
  end
  object ZSequence1: TZSequence
    Connection = DM.Design
    SequenceName = 'public.labfamilia_recno_seq'
    Left = 112
    Top = 48
  end
end
