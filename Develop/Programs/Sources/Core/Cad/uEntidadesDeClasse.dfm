inherited EntidadesDeClasse: TEntidadesDeClasse
  Caption = 'Entidades de Classe'
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
        Caption = 'Entidades de Classe'
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
    SQL.Strings = (
      'select sigla, descri, recno'
      '  from conselhos ')
    Sequence = sIbrwSrc
    SequenceField = 'recno'
    object IBrwSrcsigla: TStringField
      DisplayLabel = 'Sigla'
      FieldName = 'sigla'
      Required = True
      Size = 5
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Entidade de Classe'
      FieldName = 'descri'
      Required = True
      Size = 60
    end
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
      Required = True
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM conselhos'
      'WHERE'
      '  conselhos.sigla = :OLD_sigla')
    InsertSQL.Strings = (
      'INSERT INTO conselhos'
      '  (sigla, descri, recno)'
      'VALUES'
      '  (:sigla, :descri, :recno)')
    ModifySQL.Strings = (
      'UPDATE conselhos SET'
      '  sigla = :sigla,'
      '  descri = :descri,'
      '  recno = :recno'
      'WHERE'
      '  conselhos.sigla = :OLD_sigla')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sigla'
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
        Name = 'OLD_sigla'
        ParamType = ptUnknown
      end>
  end
  object sIbrwSrc: TZSequence
    Connection = DM.Design
    SequenceName = 'public.conselhos_recno_seq'
    Left = 88
    Top = 128
  end
end
