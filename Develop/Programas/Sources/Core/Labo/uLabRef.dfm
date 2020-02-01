inherited LabRef: TLabRef
  Caption = 'Valores de Refer'#234'ncia'
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
        object Label1: TLabel [0]
          Left = 3
          Top = 3
          Width = 20
          Height = 14
          Caption = 'Tipo'
          Transparent = True
        end
        object Label3: TLabel [1]
          Left = 259
          Top = 3
          Width = 32
          Height = 14
          Caption = 'Ensaio'
          Transparent = True
        end
        object cbTipo: TComboBox
          Left = 3
          Top = 21
          Width = 250
          Height = 22
          DropDownCount = 30
          ItemHeight = 14
          TabOrder = 1
          OnChange = cbTipoChange
          Items.Strings = (
            '<TODOS>'
            'JANEIRO'
            'FEVEREIRO'
            'MAR'#199'O'
            'ABRIL'
            'MAIO'
            'JUNHO'
            'JULHO'
            'AGOSTO'
            'SETEMBRO'
            'OUTUBRO'
            'NOVEMBRO'
            'DEZEMBRO')
        end
        object cbEnsaios: TComboBox
          Left = 259
          Top = 21
          Width = 250
          Height = 22
          DropDownCount = 30
          ItemHeight = 14
          TabOrder = 2
          OnChange = cbEnsaiosChange
          Items.Strings = (
            '<TODOS>'
            'JANEIRO'
            'FEVEREIRO'
            'MAR'#199'O'
            'ABRIL'
            'MAIO'
            'JUNHO'
            'JULHO'
            'AGOSTO'
            'SETEMBRO'
            'OUTUBRO'
            'NOVEMBRO'
            'DEZEMBRO')
        end
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
        Caption = 'Refer'#234'ncias'
        ExplicitLeft = 4
        ExplicitTop = 25
        ExplicitWidth = 832
        ExplicitHeight = 89
      end
    end
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      'select r.tipo_recno, tp.descri, r.ensaio_recno, e.nome, '
      '       e.unidade, e.metodo, r.valor, r.recno, r.tipo'
      '  from labref r       '
      '       join ensaios e'
      '         on e.recno = r.ensaio_recno'
      '       join labtipo tp'
      '         on tp.recno = r.tipo_recno')
    Sequence = ZSequence1
    SequenceField = 'recno'
    object IBrwSrctipo_recno: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'tipo_recno'
      Required = True
      Visible = False
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'descri'
      Required = True
      Size = 60
    end
    object IBrwSrcensaio_recno: TIntegerField
      DisplayLabel = 'Ensaio'
      FieldName = 'ensaio_recno'
      Required = True
      Visible = False
    end
    object IBrwSrcnome: TStringField
      DisplayLabel = 'Ensaio'
      FieldName = 'nome'
      Size = 60
    end
    object IBrwSrcunidade: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'unidade'
      Size = 30
    end
    object IBrwSrcmetodo: TStringField
      DisplayLabel = 'M'#233'todo'
      FieldName = 'metodo'
      Size = 30
    end
    object IBrwSrctipo: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Tipo'
      FieldName = 'tipo'
      Required = True
      OnGetText = IBrwSrctipoGetText
      OnSetText = IBrwSrctipoSetText
    end
    object IBrwSrcvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Required = True
      DisplayFormat = ',0.##0'
    end
    object IBrwSrcrecno: TIntegerField
      FieldName = 'recno'
      Required = True
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labref'
      'WHERE'
      '  labref.ensaio_recno = :OLD_ensaio_recno AND'
      '  labref.tipo_recno = :OLD_tipo_recno')
    InsertSQL.Strings = (
      'INSERT INTO labref'
      '  (ensaio_recno, tipo_recno, tipo, valor, recno)'
      'VALUES'
      '  (:ensaio_recno, :tipo_recno, :tipo, :valor, :recno)')
    ModifySQL.Strings = (
      'UPDATE labref SET'
      '  ensaio_recno = :ensaio_recno,'
      '  tipo_recno = :tipo_recno,'
      '  tipo = :tipo,'
      '  valor = :valor,'
      '  recno = :recno'
      'WHERE'
      '  labref.ensaio_recno = :OLD_ensaio_recno AND'
      '  labref.tipo_recno = :OLD_tipo_recno')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ensaio_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ensaio_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_tipo_recno'
        ParamType = ptUnknown
      end>
  end
  object ZSequence1: TZSequence
    Connection = DM.Design
    SequenceName = 'public.labref_recno_seq'
    Left = 176
    Top = 80
  end
end
