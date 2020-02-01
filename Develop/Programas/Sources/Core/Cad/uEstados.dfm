inherited Estados: TEstados
  Caption = 'Estados'
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
        inherited BitBtn2: TBitBtn
          Glyph.Data = {00000000}
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 833
        ExplicitHeight = 60
        inherited BitBtn1: TBitBtn
          Glyph.Data = {00000000}
        end
      end
    end
  end
  inherited Panel2: TPanel
    inherited PageControl1: TPageControl
      ExplicitWidth = 840
      inherited TabSheet1: TTabSheet
        Caption = 'Estados'
      end
    end
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      'select uf, nome, dias_coleta, recno'
      '  from estados')
    Sequence = ZSequence1
    SequenceField = 'recno'
    object IBrwSrcuf: TStringField
      DisplayLabel = 'UF'
      FieldName = 'uf'
      Required = True
      Size = 2
    end
    object IBrwSrcnome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Required = True
      Size = 35
    end
    object IBrwSrcdias_coleta: TIntegerField
      DisplayLabel = 'Dias Coleta'
      FieldName = 'dias_coleta'
      Required = True
    end
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM estados'
      'WHERE'
      '  estados.uf = :OLD_uf')
    InsertSQL.Strings = (
      'INSERT INTO estados'
      '  (uf, nome, dias_coleta, recno)'
      'VALUES'
      '  (:uf, :nome, :dias_coleta, :recno)')
    ModifySQL.Strings = (
      'UPDATE estados SET'
      '  uf = :uf,'
      '  nome = :nome,'
      '  dias_coleta = :dias_coleta,'
      '  recno = :recno'
      'WHERE'
      '  estados.uf = :OLD_uf')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'uf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nome'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dias_coleta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_uf'
        ParamType = ptUnknown
      end>
  end
  object ZSequence1: TZSequence
    Connection = DM.Design
    SequenceName = 'public.estados_recno_seq'
    Left = 112
    Top = 48
  end
end
