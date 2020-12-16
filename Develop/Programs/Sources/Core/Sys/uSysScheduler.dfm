inherited SysScheduler: TSysScheduler
  Caption = 'Processo Agendados'
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
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
    inherited PageControl1: TPageControl
      inherited TabSheet1: TTabSheet
        Caption = 'Agendamentos'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 823
        ExplicitHeight = 147
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
    AfterInsert = IBrwSrcAfterInsert
    SQL.Strings = (
      
        'select s.recno, s.descri, s.fn, f.descri, s.agendamento, s.inici' +
        'o, s.expiracao, s.habilitado, s.username, u."name"'
      '  from sys_schedules_setup s'
      '       join sys_fn f'
      '         on f.fn = s.fn'
      '        and f.tipo = 1'
      '       join sys_users u'
      '         on u.username = s.username')
    Sequence = sIBrwSrc
    SequenceField = 'recno'
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
      Required = True
    end
    object IBrwSrchabilitado: TBooleanField
      DisplayLabel = 'Habilitado'
      FieldName = 'habilitado'
      Required = True
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 25
      FieldName = 'descri'
      Required = True
      Size = 100
    end
    object IBrwSrcfn: TStringField
      DisplayLabel = 'Rotina'
      DisplayWidth = 25
      FieldName = 'fn'
      Required = True
      Size = 100
    end
    object IBrwSrcdescri_1: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 40
      FieldName = 'descri_1'
      Size = 150
    end
    object IBrwSrcagendamento: TStringField
      DisplayLabel = 'Agendamento'
      FieldName = 'agendamento'
      Required = True
      Size = 150
    end
    object IBrwSrcinicio: TDateField
      DisplayLabel = 'Primeira Execu'#231#227'o'
      FieldName = 'inicio'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object IBrwSrcexpiracao: TDateField
      DisplayLabel = 'Expira'#231#227'o'
      FieldName = 'expiracao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object IBrwSrcusername: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'username'
    end
    object IBrwSrcname: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'name'
      Size = 40
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM sys_schedules_setup'
      'WHERE'
      '  sys_schedules_setup.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO sys_schedules_setup'
      
        '  (recno, descri, fn, agendamento, inicio, expiracao, habilitado' +
        ', username)'
      'VALUES'
      
        '  (:recno, :descri, :fn, :agendamento, :inicio, :expiracao, :hab' +
        'ilitado, '
      '   :username)')
    ModifySQL.Strings = (
      'UPDATE sys_schedules_setup SET'
      '  recno = :recno,'
      '  descri = :descri,'
      '  fn = :fn,'
      '  agendamento = :agendamento,'
      '  inicio = :inicio,'
      '  expiracao = :expiracao,'
      '  habilitado = :habilitado,'
      '  username = :username'
      'WHERE'
      '  sys_schedules_setup.recno = :OLD_recno')
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
        Name = 'fn'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'agendamento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'inicio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'expiracao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'habilitado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'username'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_recno'
        ParamType = ptUnknown
      end>
  end
  object sIBrwSrc: TZSequence
    Connection = DM.Design
    SequenceName = 'public.sys_schedules_setup_recno_seq'
    Left = 96
    Top = 128
  end
end
