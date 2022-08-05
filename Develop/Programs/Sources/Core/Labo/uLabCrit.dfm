inherited LabCrit: TLabCrit
  Caption = 'Cadastro de Criticidades'
  Constraints.MinWidth = 851
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    ExplicitTop = 35
    inherited pctlFind: TPageControl
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 819
        ExplicitHeight = 75
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 819
        ExplicitHeight = 75
      end
    end
  end
  inherited Panel2: TPanel
    ExplicitTop = 120
    ExplicitHeight = 192
    inherited PageControl1: TPageControl
      ExplicitHeight = 186
      inherited TabSheet1: TTabSheet
        Caption = 'Criticidades'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 823
        ExplicitHeight = 156
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
  inherited DataSource1: TDataSource
    Left = 288
    Top = 56
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    AfterScroll = IBrwSrcAfterScroll
    SQL.Strings = (
      'select c.recno, c.descri, c.nivel, cn.label, cn.exige_revisao'
      '  from labcrit c'
      '       join labcrit_niveis cn'
      '         on cn.nivel = c.nivel')
    Sequence = ZSequence1
    SequenceField = 'recno'
    Left = 232
    Top = 56
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
    object IBrwSrcnivel: TIntegerField
      DisplayLabel = 'N'#237'vel'
      FieldName = 'nivel'
      Required = True
      Visible = False
    end
    object IBrwSrclabel: TStringField
      DisplayLabel = 'N'#237'vel'
      FieldName = 'label'
      Size = 15
    end
    object IBrwSrcexige_revisao: TBooleanField
      DisplayLabel = 'Exige Revis'#227'o'
      FieldName = 'exige_revisao'
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labcrit'
      'WHERE'
      '  labcrit.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO labcrit'
      '  (recno, descri, nivel)'
      'VALUES'
      '  (:recno, :descri, :nivel)')
    ModifySQL.Strings = (
      'UPDATE labcrit SET'
      '  recno = :recno,'
      '  descri = :descri,'
      '  nivel = :nivel'
      'WHERE'
      '  labcrit.recno = :OLD_recno')
    Left = 176
    Top = 56
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
        Name = 'nivel'
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
    Left = 136
    Top = 200
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
    Left = 88
    Top = 200
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
    Left = 32
    Top = 200
  end
  object dsRelato: TDataSource
    AutoEdit = False
    DataSet = qRelato
    Left = 184
    Top = 200
  end
end
