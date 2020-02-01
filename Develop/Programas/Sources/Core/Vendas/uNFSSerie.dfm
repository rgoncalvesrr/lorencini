inherited NFSSerie: TNFSSerie
  Caption = 'S'#233'ries de Nota Fiscal de Sa'#237'da'
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel2: TPanel
    inherited PageControl1: TPageControl
      inherited TabSheet1: TTabSheet
        Caption = 'S'#233'ries'
      end
    end
  end
  inherited IBrwSrc: TZQuery
    UpdateObject = ZUpdateSQL1
    AfterInsert = IBrwSrcAfterInsert
    SQL.Strings = (
      'select serie, nf_atual, tipo '
      ' from nf_serie')
    Top = 40
    object IBrwSrcserie: TIntegerField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'serie'
      Required = True
    end
    object IBrwSrctipo: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'tipo'
      Required = True
      OnGetText = IBrwSrctipoGetText
      OnSetText = IBrwSrctipoSetText
    end
    object IBrwSrcnf_atual: TIntegerField
      DisplayLabel = 'Nota Atual'
      FieldName = 'nf_atual'
      Required = True
    end
  end
  object ZUpdateSQL1: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM nf_serie'
      'WHERE'
      '  nf_serie.serie = :OLD_serie')
    InsertSQL.Strings = (
      'INSERT INTO nf_serie'
      '  (nf_atual, tipo)'
      'VALUES'
      '  (:nf_atual, :tipo)')
    ModifySQL.Strings = (
      'UPDATE nf_serie SET'
      '  nf_atual = :nf_atual,'
      '  tipo = :tipo'
      'WHERE'
      '  nf_serie.serie = :OLD_serie')
    UseSequenceFieldForRefreshSQL = False
    Left = 176
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nf_atual'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_serie'
        ParamType = ptUnknown
      end>
  end
end
