inherited NFSSerie: TNFSSerie
  Caption = 'S'#233'ries de Nota Fiscal de Sa'#237'da'
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
        Caption = 'S'#233'ries'
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
    UpdateObject = ZUpdateSQL1
    AfterInsert = IBrwSrcAfterInsert
    SQL.Strings = (
      'select serie, nf_atual, tipo '
      ' from nf_serie')
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
    Left = 120
    Top = 64
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
