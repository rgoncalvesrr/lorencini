inherited LabAcidez: TLabAcidez
  Caption = 'Registro de Fator de Acidez'
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
      inherited TabSheet1: TTabSheet
        Caption = 'Fator de Acidez'
      end
    end
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    AfterInsert = IBrwSrcAfterInsert
    SQL.Strings = (
      'SELECT a.recno, a.username, u.name, a.vigencia, '
      '       a.biftalato_a, a.biftalato_b, a.volume_a, '
      '       a.volume_b, a.agua, a.con_a, a.con_b, '
      '       a.media'
      '  FROM labacidez a'
      '       join sys_users u'
      '         on u.username = a.username')
    Sequence = ZSequence1
    SequenceField = 'recno'
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Fator'
      FieldName = 'recno'
      Required = True
    end
    object IBrwSrcusername: TStringField
      DisplayLabel = 'T'#233'cnico'
      DisplayWidth = 15
      FieldName = 'username'
    end
    object IBrwSrcname: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 15
      FieldName = 'name'
      Size = 40
    end
    object IBrwSrcvigencia: TDateField
      DisplayLabel = 'Vig'#234'ncia'
      FieldName = 'vigencia'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object IBrwSrcagua: TFloatField
      FieldName = 'agua'
      Required = True
    end
    object IBrwSrcbiftalato_a: TFloatField
      DisplayLabel = 'Biftalato A'
      FieldName = 'biftalato_a'
      Required = True
      DisplayFormat = ',0.##0'
    end
    object IBrwSrcvolume_a: TFloatField
      DisplayLabel = 'Volume A'
      FieldName = 'volume_a'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object IBrwSrccon_a: TFloatField
      DisplayLabel = 'Concentra'#231#227'o A'
      FieldName = 'con_a'
      DisplayFormat = ',0.#####0'
    end
    object IBrwSrcbiftalato_b: TFloatField
      DisplayLabel = 'Biftalato B'
      FieldName = 'biftalato_b'
      Required = True
      DisplayFormat = ',0.##0'
    end
    object IBrwSrcvolume_b: TFloatField
      DisplayLabel = 'Volume B'
      FieldName = 'volume_b'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object IBrwSrccon_b: TFloatField
      DisplayLabel = 'Concentra'#231#227'o B'
      FieldName = 'con_b'
      DisplayFormat = ',0.#####0'
    end
    object IBrwSrcmedia: TFloatField
      DisplayLabel = 'M'#233'dia'
      FieldName = 'media'
      DisplayFormat = ',0.#####0'
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    InsertSQL.Strings = (
      'INSERT INTO labacidez '
      '  (recno, biftalato_a, biftalato_b, volume_a, volume_b, '
      '   agua)'
      'VALUES'
      '  (:recno, :biftalato_a, :biftalato_b, :volume_a, '
      '   :volume_b, :agua)')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'biftalato_a'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'biftalato_b'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'volume_a'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'volume_b'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'agua'
        ParamType = ptUnknown
      end>
  end
  object ZSequence1: TZSequence
    Connection = DM.Design
    SequenceName = 'public.labacidez_recno_seq'
    Left = 112
    Top = 48
  end
end
