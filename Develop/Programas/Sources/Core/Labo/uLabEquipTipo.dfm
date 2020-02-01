inherited LabEquipTipo: TLabEquipTipo
  Caption = 'Cadastro de Tipos de Equipamento'
  ClientHeight = 360
  Constraints.MinWidth = 853
  ExplicitLeft = 8
  ExplicitHeight = 399
  PixelsPerInch = 96
  TextHeight = 15
  inherited ToolBar1: TToolBar
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 831
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
  inherited StatusBar1: TStatusBar
    Top = 336
    ExplicitTop = 336
  end
  inherited Panel1: TPanel
    inherited pctlFind: TPageControl
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
    Height = 217
    ExplicitLeft = 0
    ExplicitTop = 119
    ExplicitWidth = 837
    ExplicitHeight = 217
    inherited PageControl1: TPageControl
      Height = 211
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 831
      ExplicitHeight = 211
      inherited TabSheet1: TTabSheet
        Caption = 'Tipos de Equipamento'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 823
        ExplicitHeight = 181
        inherited DBGrid1: TDBGrid
          Height = 181
        end
      end
    end
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    AfterScroll = IBrwSrcAfterScroll
    SQL.Strings = (
      'select * from labequip_tipo')
    Sequence = ZSequence1
    SequenceField = 'recno'
    object IBrwSrctipo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tipo'
      Required = True
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'descri'
      Required = True
      Size = 60
    end
    object IBrwSrcsigla: TStringField
      DisplayLabel = 'Sigla'
      FieldName = 'sigla'
      Required = True
      Size = 3
    end
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
      Required = True
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labequip_tipo'
      'WHERE'
      '  labequip_tipo.tipo = :OLD_tipo')
    InsertSQL.Strings = (
      'INSERT INTO labequip_tipo'
      '  (tipo, descri, sigla, recno)'
      'VALUES'
      '  (:tipo, :descri, :sigla, :recno)')
    ModifySQL.Strings = (
      'UPDATE labequip_tipo SET'
      '  tipo = :tipo,'
      '  descri = :descri,'
      '  sigla = :sigla,'
      '  recno = :recno'
      'WHERE'
      '  labequip_tipo.tipo = :OLD_tipo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'descri'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sigla'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_tipo'
        ParamType = ptUnknown
      end>
  end
  object ZSequence1: TZSequence
    Connection = DM.Design
    SequenceName = 'public.labequip_tipo_recno_seq'
    Left = 112
    Top = 48
  end
  object sClasse: TZSequence
    Connection = DM.Design
    SequenceName = 'public.labtipotensao_recno_seq'
    Left = 112
    Top = 80
  end
  object uClasse: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labtipotensao'
      'WHERE'
      '  labtipotensao.classe = :OLD_classe AND'
      '  labtipotensao.tipo = :OLD_tipo')
    InsertSQL.Strings = (
      'INSERT INTO labtipotensao'
      '  (classe, tipo, recno)'
      'VALUES'
      '  (:classe, :tipo, :recno)')
    ModifySQL.Strings = (
      'UPDATE labtipotensao SET'
      '  classe = :classe,'
      '  tipo = :tipo,'
      '  recno = :recno'
      'WHERE'
      '  labtipotensao.classe = :OLD_classe AND'
      '  labtipotensao.tipo = :OLD_tipo')
    UseSequenceFieldForRefreshSQL = False
    Left = 144
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'classe'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_classe'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_tipo'
        ParamType = ptUnknown
      end>
  end
  object qClasse: TZQuery
    Connection = DM.Design
    SortedFields = 'min'
    UpdateObject = uClasse
    AfterInsert = qClasseAfterInsert
    SQL.Strings = (
      'select tt.classe, t.min, t.max, tt.tipo, tt.recno'
      '  from labtipotensao tt'
      '       join labtensao t'
      '         on t.classe = tt.classe'
      ' where tt.tipo = :tipo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    IndexFieldNames = 'min Asc'
    Sequence = sClasse
    SequenceField = 'recno'
    Left = 176
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end>
    object qClasseclasse: TStringField
      DisplayLabel = 'Classe'
      DisplayWidth = 3
      FieldName = 'classe'
      Required = True
      Size = 1
    end
    object qClassemin: TFloatField
      DisplayLabel = 'M'#237'nimo'
      FieldName = 'min'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object qClassemax: TFloatField
      DisplayLabel = 'Max'
      FieldName = 'max'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object qClassetipo: TIntegerField
      FieldName = 'tipo'
      Required = True
      Visible = False
    end
    object qClasserecno: TIntegerField
      FieldName = 'recno'
      Required = True
      Visible = False
    end
  end
  object dsClasse: TDataSource
    AutoEdit = False
    DataSet = qClasse
    Left = 208
    Top = 80
  end
end
