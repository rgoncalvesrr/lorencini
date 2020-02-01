inherited LabFabricantes: TLabFabricantes
  Caption = 'Fabricantes'
  PixelsPerInch = 96
  TextHeight = 14
  inherited ToolBar1: TToolBar
    inherited ToolButton2: TToolButton
      ExplicitWidth = 64
    end
    inherited ToolButton5: TToolButton
      ExplicitWidth = 66
    end
    inherited ToolButton9: TToolButton
      ExplicitWidth = 87
    end
    inherited ToolButton6: TToolButton
      ExplicitWidth = 71
    end
    inherited ToolButton1: TToolButton
      ExplicitWidth = 83
    end
    inherited ToolButton8: TToolButton
      ExplicitWidth = 66
    end
    inherited ToolButton3: TToolButton
      ExplicitWidth = 82
    end
    inherited tbOrder: TToolButton
      ExplicitWidth = 71
    end
    inherited tbOpcao: TToolButton
      ExplicitWidth = 77
    end
    inherited ToolButton10: TToolButton
      ExplicitWidth = 90
    end
  end
  inherited Panel1: TPanel
    inherited pctlFind: TPageControl
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 771
        ExplicitHeight = 60
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 771
        ExplicitHeight = 60
      end
    end
  end
  inherited Panel2: TPanel
    inherited PageControl1: TPageControl
      inherited TabSheet1: TTabSheet
        Caption = 'Fabricantes de Equipamentos'
        ExplicitLeft = 4
        ExplicitTop = 25
        ExplicitWidth = 770
        ExplicitHeight = 89
      end
    end
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      'select recno, nome from labfabri ')
    Sequence = ZSequence1
    SequenceField = 'recno'
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Fabricante'
      FieldName = 'recno'
      Required = True
    end
    object IBrwSrcnome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Required = True
      Size = 60
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labfabri'
      'WHERE'
      '  labfabri.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO labfabri'
      '  (recno, nome)'
      'VALUES'
      '  (:recno, :nome)')
    ModifySQL.Strings = (
      'UPDATE labfabri SET'
      '  nome = :nome'
      'WHERE'
      '  labfabri.recno = :OLD_recno')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nome'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_recno'
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
    SequenceName = 'public.labfabri_recno_seq'
    Left = 112
    Top = 48
  end
end
