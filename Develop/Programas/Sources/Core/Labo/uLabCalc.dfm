inherited LabCalc: TLabCalc
  Caption = 'C'#225'lculos utilzados em ensaios'
  PixelsPerInch = 96
  TextHeight = 14
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
      ExplicitWidth = 71
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
        ExplicitWidth = 833
        ExplicitHeight = 60
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 833
        ExplicitHeight = 60
      end
    end
  end
  inherited Panel2: TPanel
    inherited PageControl1: TPageControl
      inherited TabSheet1: TTabSheet
        Caption = 'C'#225'lculos'
        ExplicitLeft = 4
        ExplicitTop = 25
        ExplicitWidth = 832
        ExplicitHeight = 89
      end
    end
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    AfterScroll = IBrwSrcAfterScroll
    SQL.Strings = (
      'select proc, descri, recno '
      '  from labcalc')
    Sequence = ZSequence1
    SequenceField = 'recno'
    object IBrwSrcproc: TStringField
      DisplayLabel = 'Rotina'
      DisplayWidth = 25
      FieldName = 'proc'
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
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
      Required = True
      Visible = False
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labcalc'
      'WHERE'
      '  labcalc.proc = :OLD_proc')
    InsertSQL.Strings = (
      'INSERT INTO labcalc'
      '  (proc, descri, recno)'
      'VALUES'
      '  (:proc, :descri, :recno)')
    ModifySQL.Strings = (
      'UPDATE labcalc SET'
      '  descri = :descri'
      'WHERE'
      '  labcalc.proc = :OLD_proc')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'descri'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_proc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'proc'
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
    SequenceName = 'public.labcalc_recno_seq'
    Left = 112
    Top = 48
  end
  object sCalcParam: TZSequence
    Connection = DM.Design
    SequenceName = 'public.labcalcvar_recno_seq'
    Left = 112
    Top = 80
  end
  object uCalcParam: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labcalcvar'
      'WHERE'
      '  labcalcvar.proc = :OLD_proc AND'
      '  labcalcvar.param = :OLD_param')
    InsertSQL.Strings = (
      'INSERT INTO labcalcvar'
      '  (proc, param, titulo, int_, dec_, ensaio_recno, recno)'
      'VALUES'
      '  (:proc, :param, :titulo, :int_, :dec_, :ensaio_recno, :recno)')
    ModifySQL.Strings = (
      'UPDATE labcalcvar SET'
      '  titulo = :titulo,'
      '  int_ = :int_,'
      '  dec_ = :dec_,'
      '  ensaio_recno = :ensaio_recno'
      'WHERE'
      '  labcalcvar.proc = :OLD_proc AND'
      '  labcalcvar.param = :OLD_param')
    UseSequenceFieldForRefreshSQL = False
    Left = 144
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'titulo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'int_'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dec_'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ensaio_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_proc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_param'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'proc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'param'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end>
  end
  object qCalcParam: TZQuery
    Connection = DM.Design
    UpdateObject = uCalcParam
    AfterInsert = qCalcParamAfterInsert
    SQL.Strings = (
      'select p.proc, p.param,   p.titulo, p.int_, '
      '       p.dec_, p.recno,   p.ensaio_recno,'
      '       e.nome, e.unidade, e.metodo'
      '  from labcalcvar p  '
      '       left join vensaios e'
      '         on e.recno = p.ensaio_recno'
      ' where p.proc = :proc')
    Params = <
      item
        DataType = ftUnknown
        Name = 'proc'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    Sequence = sCalcParam
    SequenceField = 'recno'
    Left = 176
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'proc'
        ParamType = ptUnknown
      end>
    object qCalcParamproc: TStringField
      FieldName = 'proc'
      Required = True
      Visible = False
      Size = 100
    end
    object qCalcParamparam: TStringField
      DisplayLabel = 'Vari'#225'vel'
      FieldName = 'param'
      Required = True
      Size = 15
    end
    object qCalcParamtitulo: TStringField
      DisplayLabel = 'T'#237'tulo'
      DisplayWidth = 25
      FieldName = 'titulo'
      Required = True
      Size = 60
    end
    object qCalcParamint_: TIntegerField
      DisplayLabel = 'Inteiro'
      FieldName = 'int_'
      Required = True
    end
    object qCalcParamdec_: TIntegerField
      DisplayLabel = 'Decimal'
      FieldName = 'dec_'
      Required = True
    end
    object qCalcParamrecno: TIntegerField
      FieldName = 'recno'
      Required = True
    end
    object qCalcParamensaio_recno: TIntegerField
      DisplayLabel = 'Ensaio'
      FieldName = 'ensaio_recno'
    end
    object qCalcParamnome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 25
      FieldName = 'nome'
      Size = 60
    end
    object qCalcParamunidade: TStringField
      DisplayLabel = 'Unidade'
      DisplayWidth = 15
      FieldName = 'unidade'
      Size = 30
    end
    object qCalcParammetodo: TStringField
      DisplayLabel = 'M'#233'todo'
      DisplayWidth = 15
      FieldName = 'metodo'
      Size = 30
    end
  end
  object dsCalcParam: TDataSource
    AutoEdit = False
    DataSet = qCalcParam
    Left = 208
    Top = 80
  end
end
