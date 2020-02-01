inherited Servicos_Grupo: TServicos_Grupo
  Caption = 'Categorias'
  Constraints.MinWidth = 853
  ExplicitWidth = 853
  ExplicitHeight = 380
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    ExplicitTop = 315
    ExplicitWidth = 831
  end
  inherited Panel1: TPanel
    Top = 44
    ExplicitTop = 45
    inherited pctlFind: TPageControl
      ExplicitLeft = 5
      ExplicitWidth = 827
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 819
        ExplicitHeight = 65
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 819
        ExplicitHeight = 65
      end
    end
  end
  inherited Panel2: TPanel
    Top = 119
    Height = 193
    ExplicitTop = 120
    ExplicitHeight = 192
    inherited PageControl1: TPageControl
      Height = 187
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 831
      ExplicitHeight = 186
      inherited TabSheet1: TTabSheet
        Caption = 'Categorias'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 823
        ExplicitHeight = 156
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 831
    ExplicitHeight = 38
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
  inherited alDef: TActionList
    Left = 272
    Top = 56
  end
  inherited pmRel: TPopupMenu
    Left = 312
    Top = 56
  end
  inherited pmOrder: TPopupMenu
    Left = 354
    Top = 54
  end
  inherited alRunTime: TActionList
    Left = 402
    Top = 54
  end
  inherited DataSource1: TDataSource
    Top = 56
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      'select recno, descri, pedidos, laboratorio'
      '  from servicos_grupo')
    Sequence = ZSequence1
    SequenceField = 'recno'
    Left = 152
    Top = 56
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Categoria'
      FieldName = 'recno'
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Required = True
      Size = 80
    end
    object IBrwSrcpedidos: TBooleanField
      DisplayLabel = 'Dispon'#237'vel em Pedidos'
      FieldName = 'pedidos'
      Required = True
    end
    object IBrwSrclaboratorio: TBooleanField
      DisplayLabel = 'Laborat'#243'rio'
      FieldName = 'laboratorio'
      Required = True
    end
  end
  inherited pmOpcao: TPopupMenu
    Left = 456
    Top = 56
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM servicos_grupo'
      'WHERE'
      '  servicos_grupo.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO servicos_grupo'
      '  (descri, pedidos, laboratorio)'
      'VALUES'
      '  (:descri, :pedidos, :laboratorio)')
    ModifySQL.Strings = (
      'UPDATE servicos_grupo SET'
      '  descri = :descri,'
      '  pedidos = :pedidos,'
      '  laboratorio = :laboratorio'
      'WHERE'
      '  servicos_grupo.recno = :OLD_recno')
    Left = 104
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'descri'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pedidos'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'laboratorio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_recno'
        ParamType = ptUnknown
      end>
  end
  object ZSequence1: TZSequence
    Connection = DM.Design
    SequenceName = 'public.servicos_grupo_recno_seq'
    Left = 40
    Top = 56
  end
end
