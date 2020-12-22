inherited SysTables: TSysTables
  Caption = 'Tabelas'
  Constraints.MinWidth = 853
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    inherited pctlFind: TPageControl
      inherited tsFind: TTabSheet
        ExplicitHeight = 65
      end
    end
  end
  inherited Panel2: TPanel
    inherited PageControl1: TPageControl
      inherited TabSheet1: TTabSheet
        Caption = 'Tabelas'
      end
    end
  end
  inherited pmOrder: TPopupMenu
    Left = 354
    Top = 54
  end
  inherited alRunTime: TActionList
    Left = 418
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      'select recno, tabela, descri '
      '  from sys_tables')
    Sequence = ZSequence1
    SequenceField = 'recno'
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
      Required = True
    end
    object IBrwSrctabela: TStringField
      DisplayLabel = 'Tabela'
      DisplayWidth = 25
      FieldName = 'tabela'
      Required = True
      Size = 100
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 30
      FieldName = 'descri'
      Required = True
      Size = 60
    end
  end
  inherited pmOpcao: TPopupMenu
    Left = 480
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM sys_tables'
      'WHERE'
      '  sys_tables.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO sys_tables'
      '  (recno, tabela, descri)'
      'VALUES'
      '  (:recno, :tabela, :descri)')
    ModifySQL.Strings = (
      'UPDATE sys_tables SET'
      '  recno = :recno,'
      '  tabela = :tabela,'
      '  descri = :descri'
      'WHERE'
      '  sys_tables.recno = :OLD_recno')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tabela'
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
    SequenceName = 'public.sys_tables_recno_seq'
    Left = 112
    Top = 48
  end
end
