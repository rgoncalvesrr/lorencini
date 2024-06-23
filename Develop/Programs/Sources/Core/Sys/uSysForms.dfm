inherited SysForms: TSysForms
  Margins.Left = 6
  Margins.Top = 6
  Margins.Right = 6
  Margins.Bottom = 6
  Caption = 'Telas do Sistema'
  ClientHeight = 535
  ClientWidth = 1308
  Constraints.MinWidth = 1066
  Font.Height = -24
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1326
  ExplicitHeight = 582
  PixelsPerInch = 120
  TextHeight = 32
  inherited StatusBar1: TStatusBar
    Left = 5
    Top = 493
    Width = 1298
    Height = 37
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Panels = <
      item
        Alignment = taCenter
        Bevel = pbNone
        Text = 'Registro'
        Width = 79
      end
      item
        Alignment = taCenter
        Width = 94
      end
      item
        Alignment = taCenter
        Bevel = pbNone
        Text = 'de'
        Width = 48
      end
      item
        Alignment = taCenter
        Width = 94
      end
      item
        Width = 79
      end>
    ExplicitLeft = 5
    ExplicitTop = 493
    ExplicitWidth = 1298
    ExplicitHeight = 37
  end
  inherited Panel1: TPanel
    Top = 49
    Width = 1308
    Height = 132
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Padding.Left = 8
    Padding.Right = 8
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 58
    ExplicitWidth = 1308
    ExplicitHeight = 132
    inherited pctlFind: TPageControl
      Left = 8
      Width = 1292
      Height = 132
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitLeft = 8
      ExplicitWidth = 1292
      ExplicitHeight = 132
      inherited tsQuery: TTabSheet
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitWidth = 1284
        ExplicitHeight = 122
        inherited BitBtn2: TBitBtn
          Left = 1123
          Top = 16
          Width = 152
          Height = 67
          Margins.Left = 5
          Margins.Top = 16
          Margins.Right = 5
          Margins.Bottom = 35
          ExplicitLeft = 1123
          ExplicitTop = 16
          ExplicitWidth = 152
          ExplicitHeight = 67
        end
      end
      inherited tsFind: TTabSheet
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitWidth = 1284
        ExplicitHeight = 122
        inherited Label2: TLabel
          Left = 5
          Top = 5
          Width = 169
          Height = 32
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          StyleElements = [seFont, seClient, seBorder]
          ExplicitLeft = 5
          ExplicitTop = 5
          ExplicitWidth = 169
          ExplicitHeight = 32
        end
        inherited BitBtn1: TBitBtn
          Left = 813
          Top = 30
          Width = 150
          Height = 50
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Font.Height = -24
          ExplicitLeft = 813
          ExplicitTop = 30
          ExplicitWidth = 150
          ExplicitHeight = 50
        end
        inherited edSearch: TMaskEdit
          Left = 5
          Top = 38
          Width = 518
          Height = 37
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Font.Height = -24
          StyleElements = [seFont, seClient, seBorder]
          ExplicitLeft = 5
          ExplicitTop = 38
          ExplicitWidth = 518
          ExplicitHeight = 37
        end
      end
    end
  end
  inherited Panel2: TPanel
    Top = 181
    Width = 1308
    Height = 307
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 190
    ExplicitWidth = 1308
    ExplicitHeight = 298
    inherited PageControl1: TPageControl
      Left = 5
      Top = 5
      Width = 1298
      Height = 297
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitLeft = 5
      ExplicitTop = 5
      ExplicitWidth = 1298
      ExplicitHeight = 297
      inherited TabSheet1: TTabSheet
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Telas'
        ExplicitTop = 43
        ExplicitWidth = 1290
        ExplicitHeight = 250
        inherited DBGrid1: TDBGrid
          Left = 5
          Top = 5
          Width = 1276
          Height = 220
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          TitleFont.Height = -24
          Columns = <
            item
              Expanded = False
              FieldName = 'form'
              Width = 755
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'descri'
              Width = 755
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'recno'
              Width = 130
              Visible = True
            end>
        end
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Left = 5
    Top = 5
    Width = 1298
    Height = 39
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    RowSize = 41
    ExplicitLeft = 5
    ExplicitTop = 5
    ExplicitWidth = 1298
    ExplicitHeight = 39
    inherited ToolBar1: TToolBar
      Left = 18
      Width = 1016
      Height = 35
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ButtonHeight = 31
      ButtonWidth = 93
      ExplicitLeft = 18
      ExplicitWidth = 1016
      ExplicitHeight = 35
      inherited ToolButton2: TToolButton
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitHeight = 31
      end
      inherited ToolButton5: TToolButton
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitHeight = 31
      end
      inherited ToolButton9: TToolButton
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitHeight = 31
      end
      inherited ToolButton6: TToolButton
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitHeight = 31
      end
      inherited ToolButton7: TToolButton
        Width = 13
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitWidth = 13
        ExplicitHeight = 31
      end
      inherited ToolButton1: TToolButton
        Left = 141
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 141
        ExplicitHeight = 31
      end
      inherited ToolButton8: TToolButton
        Left = 173
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 173
        ExplicitHeight = 31
      end
      inherited ToolButton3: TToolButton
        Left = 205
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 205
        ExplicitHeight = 31
      end
      inherited ToolButton4: TToolButton
        Left = 237
        Width = 12
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 237
        ExplicitWidth = 12
        ExplicitHeight = 31
      end
      inherited tbOrder: TToolButton
        Left = 249
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 249
        ExplicitWidth = 97
        ExplicitHeight = 31
      end
      inherited tbReport: TToolButton
        Left = 346
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 346
        ExplicitHeight = 31
      end
      inherited tbOpcao: TToolButton
        Left = 378
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 378
        ExplicitHeight = 31
      end
      inherited ToolButton11: TToolButton
        Left = 410
        Width = 13
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 410
        ExplicitWidth = 13
        ExplicitHeight = 31
      end
      inherited ToolButton10: TToolButton
        Left = 423
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 423
        ExplicitHeight = 31
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
