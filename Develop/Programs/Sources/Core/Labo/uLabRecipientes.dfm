inherited LabRecipientes: TLabRecipientes
  Caption = 'Tipo de Recipientes'
  PixelsPerInch = 96
  TextHeight = 15
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
        ExplicitWidth = 819
        ExplicitHeight = 75
        inherited BitBtn1: TBitBtn
          Glyph.Data = {00000000}
        end
      end
    end
  end
  inherited Panel2: TPanel
    inherited PageControl1: TPageControl
      inherited TabSheet1: TTabSheet
        Caption = 'Tipos de Recipientes'
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
      'select recno, descri from labtipo_recipiente')
    Sequence = sIbrwSrc
    SequenceField = 'recno'
    object IBrwSrcrecno: TLargeintField
      DisplayLabel = 'Tipo'
      FieldName = 'recno'
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Recipiente'
      FieldName = 'descri'
      Required = True
      Size = 60
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labtipo_recipiente'
      'WHERE'
      '  labtipo_recipiente.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO labtipo_recipiente'
      '  (recno, descri)'
      'VALUES'
      '  (:recno, :descri)')
    ModifySQL.Strings = (
      'UPDATE labtipo_recipiente SET'
      '  recno = :recno,'
      '  descri = :descri'
      'WHERE'
      '  labtipo_recipiente.recno = :OLD_recno')
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
        Name = 'OLD_recno'
        ParamType = ptUnknown
      end>
  end
  object sIbrwSrc: TZSequence
    Connection = DM.Design
    SequenceName = 'public.labtipo_recipiente_recno_seq'
    Left = 104
    Top = 128
  end
end
