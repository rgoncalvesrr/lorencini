inherited LabAcidez: TLabAcidez
  Caption = 'Registro de Fator de Acidez'
  Constraints.MinWidth = 853
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
        Caption = 'Fator de Acidez'
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
    AfterInsert = IBrwSrcAfterInsert
    SQL.Strings = (
      
        'SELECT a.recno, a.account, u.nome, a.vigencia, a.biftalato_a, a.' +
        'biftalato_b, a.volume_a,'
      '       a.volume_b, a.agua, a.con_a, a.con_b, a.media'
      '  FROM labacidez a'
      '       join vaccounts u'
      '         on u.account = a.account')
    Sequence = ZSequence1
    SequenceField = 'recno'
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Fator'
      FieldName = 'recno'
      Required = True
    end
    object IBrwSrcnome: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'nome'
      Size = 150
    end
    object IBrwSrcaccount: TLargeintField
      DisplayLabel = 'Conta'
      FieldName = 'account'
      Required = True
      Visible = False
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
      '  (recno, biftalato_a, biftalato_b, volume_a, volume_b, agua)'
      'VALUES'
      
        '  (:recno, :biftalato_a, :biftalato_b, :volume_a, :volume_b, :ag' +
        'ua)')
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
