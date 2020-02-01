inherited LabCrit: TLabCrit
  Caption = 'Cadastro de Criticidades'
  Constraints.MinWidth = 1134
  PixelsPerInch = 120
  TextHeight = 20
  inherited StatusBar1: TStatusBar
    ExplicitTop = 429
    ExplicitWidth = 1110
  end
  inherited Panel1: TPanel
    Top = 44
    ExplicitTop = 57
    inherited pctlFind: TPageControl
      ExplicitLeft = 5
      ExplicitWidth = 1106
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
    Height = 282
    inherited PageControl1: TPageControl
      Height = 276
      inherited TabSheet1: TTabSheet
        Caption = 'Criticidades'
        ExplicitLeft = 4
        ExplicitTop = 31
        ExplicitWidth = 1102
        ExplicitHeight = 228
        inherited DBGrid1: TDBGrid
          Width = 1102
          Height = 241
        end
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Height = 38
    inherited ToolBar1: TToolBar
      ButtonWidth = 81
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
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    AfterScroll = IBrwSrcAfterScroll
    AfterInsert = IBrwSrcAfterInsert
    SQL.Strings = (
      'select recno, descri, cor'
      '  from labcrit')
    Sequence = ZSequence1
    SequenceField = 'recno'
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
      Required = True
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Criticidade'
      FieldName = 'descri'
      Required = True
      Size = 60
    end
    object IBrwSrccor: TStringField
      FieldName = 'cor'
      Visible = False
      Size = 30
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labcrit'
      'WHERE'
      '  labcrit.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO labcrit'
      '  (recno, descri, cor)'
      'VALUES'
      '  (:recno, :descri, :cor)')
    ModifySQL.Strings = (
      'UPDATE labcrit SET'
      '  recno = :recno, '
      '  descri = :descri,'
      '  cor = :cor'
      'WHERE'
      '  labcrit.recno = :OLD_recno')
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
        Name = 'cor'
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
    SequenceName = 'public.labcrit_recno_seq'
    Left = 112
    Top = 48
  end
  object qRelato: TZQuery
    Connection = DM.Design
    UpdateObject = uRelato
    AfterInsert = qRelatoAfterInsert
    SQL.Strings = (
      
        'select c.labcrit_recno, c.relato_recno, r.descri, r.ativo, c.rec' +
        'no'
      '  from labcrit_rel c'
      '       join labrel r'
      '         on r.recno = c.relato_recno'
      ' where c.labcrit_recno = :crit')
    Params = <
      item
        DataType = ftUnknown
        Name = 'crit'
        ParamType = ptUnknown
      end>
    Sequence = sRelato
    SequenceField = 'recno'
    Left = 176
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'crit'
        ParamType = ptUnknown
      end>
    object qRelatolabcrit_recno: TIntegerField
      FieldName = 'labcrit_recno'
      Required = True
      Visible = False
    end
    object qRelatorelato_recno: TIntegerField
      DisplayLabel = 'Laudo'
      FieldName = 'relato_recno'
      Required = True
    end
    object qRelatodescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Required = True
      Size = 30
    end
    object qRelatoativo: TBooleanField
      DisplayLabel = 'Ativo'
      FieldName = 'ativo'
      Required = True
    end
    object qRelatorecno: TIntegerField
      FieldName = 'recno'
      Required = True
      Visible = False
    end
  end
  object uRelato: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labcrit_rel'
      'WHERE'
      '  labcrit_rel.relato_recno = :OLD_relato_recno AND'
      '  labcrit_rel.labcrit_recno = :OLD_labcrit_recno')
    InsertSQL.Strings = (
      'INSERT INTO labcrit_rel'
      '  (relato_recno, labcrit_recno, recno)'
      'VALUES'
      '  (:relato_recno, :labcrit_recno, :recno)')
    ModifySQL.Strings = (
      'UPDATE labcrit_rel SET'
      '  relato_recno = :relato_recno,'
      '  labcrit_recno = :labcrit_recno,'
      '  recno = :recno '
      'WHERE'
      '  labcrit_rel.relato_recno = :OLD_relato_recno AND'
      '  labcrit_rel.labcrit_recno = :OLD_labcrit_recno')
    UseSequenceFieldForRefreshSQL = False
    Left = 144
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'relato_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'labcrit_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_relato_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_labcrit_recno'
        ParamType = ptUnknown
      end>
  end
  object sRelato: TZSequence
    Connection = DM.Design
    SequenceName = 'public.labcrit_rel_recno_seq'
    Left = 112
    Top = 104
  end
  object dsRelato: TDataSource
    AutoEdit = False
    DataSet = qRelato
    Left = 208
    Top = 104
  end
end
