inherited SysForms: TSysForms
  Caption = 'Telas do Sistema'
  Constraints.MinWidth = 853
  PixelsPerInch = 96
  TextHeight = 15
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
    inherited PageControl1: TPageControl
      inherited TabSheet1: TTabSheet
        Caption = 'Telas'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 823
        ExplicitHeight = 157
        inherited DBGrid1: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'form'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descri'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'recno'
              Visible = True
            end>
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
  inherited alDef: TActionList
    Left = 288
    Top = 184
  end
  inherited pmRel: TPopupMenu
    Left = 337
    Top = 184
  end
  inherited pmOrder: TPopupMenu
    Left = 386
    Top = 184
  end
  inherited alRunTime: TActionList
    Left = 435
    Top = 184
  end
  inherited DataSource1: TDataSource
    Left = 224
    Top = 184
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    AfterScroll = IBrwSrcAfterScroll
    SQL.Strings = (
      'select * from sys_forms')
    Sequence = ZSequence1
    SequenceField = 'recno'
    Left = 168
    Top = 184
    object IBrwSrcform: TStringField
      DisplayLabel = 'Formul'#225'rio'
      FieldName = 'form'
      Required = True
      Size = 60
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Required = True
      Size = 60
    end
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
    end
  end
  inherited pmOpcao: TPopupMenu
    Left = 484
    Top = 184
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM sys_forms'
      'WHERE'
      '  sys_forms.form = :OLD_form')
    InsertSQL.Strings = (
      'INSERT INTO sys_forms'
      '  (form, descri, recno)'
      'VALUES'
      '  (:form, :descri, :recno)')
    ModifySQL.Strings = (
      'UPDATE sys_forms SET'
      '  form = :form,'
      '  descri = :descri,'
      '  recno = :recno'
      'WHERE '
      '  sys_forms.form = :OLD_form')
    Left = 120
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'form'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'descri'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_form'
        ParamType = ptUnknown
      end>
  end
  object ZSequence1: TZSequence
    Connection = DM.Design
    SequenceName = 'public.sys_forms_recno_seq'
    Left = 64
    Top = 184
  end
  object uRpt: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM sys_forms_rpt'
      'WHERE'
      '  sys_forms_rpt.form = :OLD_form AND'
      '  sys_forms_rpt.report = :OLD_report')
    InsertSQL.Strings = (
      'INSERT INTO sys_forms_rpt'
      '  (form, report, recno, ordem, label)'
      'VALUES'
      '  (:form, :report, :recno, :ordem, :label)')
    ModifySQL.Strings = (
      'UPDATE sys_forms_rpt SET'
      '  form = :form,'
      '  report = :report,'
      '  recno = :recno, '
      '  ordem = :ordem,'
      '  label = :label'
      'WHERE'
      '  sys_forms_rpt.form = :OLD_form AND'
      '  sys_forms_rpt.report = :OLD_report')
    UseSequenceFieldForRefreshSQL = False
    Left = 120
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'form'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'report'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ordem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'label'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_form'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_report'
        ParamType = ptUnknown
      end>
  end
  object qRpt: TZQuery
    Connection = DM.Design
    UpdateObject = uRpt
    AfterInsert = qRptAfterInsert
    SQL.Strings = (
      'select fr.form, r.descri, fr.report, fr.ordem,'
      '       fr.recno, fr.label'
      '  from sys_forms_rpt fr'
      '       join sys_reports r'
      '         on r.report = fr.report'
      ' where fr.form = :form')
    Params = <
      item
        DataType = ftUnknown
        Name = 'form'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    Sequence = sRpt
    SequenceField = 'recno'
    Left = 168
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'form'
        ParamType = ptUnknown
      end>
    object qRptform: TStringField
      FieldName = 'form'
      Required = True
      Visible = False
      Size = 60
    end
    object qRptordem: TIntegerField
      DisplayLabel = 'Ordem'
      FieldName = 'ordem'
    end
    object qRptreport: TIntegerField
      DisplayLabel = 'Relat'#243'rio'
      FieldName = 'report'
      Required = True
    end
    object qRptdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Required = True
      Size = 60
    end
    object qRptlabel: TStringField
      DisplayLabel = 'Relat'#243'rio'
      DisplayWidth = 35
      FieldName = 'label'
      Required = True
      Size = 150
    end
    object qRptrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
      Required = True
    end
  end
  object dsRpt: TDataSource
    AutoEdit = False
    DataSet = qRpt
    Left = 224
    Top = 232
  end
  object sRpt: TZSequence
    Connection = DM.Design
    SequenceName = 'public.sys_forms_rpt_recno_seq'
    Left = 64
    Top = 232
  end
end
