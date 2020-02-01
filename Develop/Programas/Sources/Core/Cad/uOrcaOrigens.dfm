inherited OrcaOrigens: TOrcaOrigens
  Caption = 'Cadastro de Origens'
  PixelsPerInch = 96
  TextHeight = 14
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
        ExplicitWidth = 596
        ExplicitHeight = 60
        inherited BitBtn1: TBitBtn
          Glyph.Data = {00000000}
        end
      end
    end
  end
  inherited Panel2: TPanel
    inherited PageControl1: TPageControl
      inherited TabSheet1: TTabSheet
        Caption = 'Origens para Or'#231'amentos'
      end
    end
  end
  inherited IBrwSrc: TZQuery
    UpdateObject = ZUpdateSQL1
    SQL.Strings = (
      'select recno, descri from orca_origem')
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Origem'
      FieldName = 'recno'
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Required = True
      Size = 60
    end
  end
  object ZUpdateSQL1: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM orca_origem'
      'WHERE'
      '  orca_origem.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO orca_origem'
      '  (descri)'
      'VALUES'
      '  (:descri)')
    ModifySQL.Strings = (
      'UPDATE orca_origem SET'
      '  descri = :descri'
      'WHERE'
      '  orca_origem.recno = :OLD_recno')
    UseSequenceFieldForRefreshSQL = False
    Left = 144
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'descri'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_recno'
        ParamType = ptUnknown
      end>
  end
end
