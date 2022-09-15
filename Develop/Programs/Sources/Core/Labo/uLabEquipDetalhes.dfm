inherited LabEquipDetalhes: TLabEquipDetalhes
  Caption = 'Detalhes do Equipamento'
  ClientHeight = 295
  ClientWidth = 547
  ExplicitWidth = 555
  ExplicitHeight = 322
  PixelsPerInch = 96
  TextHeight = 14
  object StringGrid1: TStringGrid [0]
    Left = 0
    Top = 0
    Width = 547
    Height = 295
    Align = alClient
    BorderStyle = bsNone
    ColCount = 2
    DefaultRowHeight = 18
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    GridLineWidth = 0
    TabOrder = 0
    OnDrawCell = StringGrid1DrawCell
    ExplicitLeft = 8
    ExplicitTop = -8
    ColWidths = (
      172
      366)
  end
  object qEquip: TZQuery
    Connection = DM.Design
    AfterOpen = qEquipAfterOpen
    ReadOnly = True
    SQL.Strings = (
      'select * '
      '  from equip '
      'where recno = :recno')
    Params = <
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end>
    Left = 40
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end>
    object qEquiprecno: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'recno'
    end
    object qEquiptipo: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tipo'
      Size = 255
    end
    object qEquipserie: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'serie'
      Size = 30
    end
    object qEquipdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Size = 60
    end
    object qEquipisolante: TStringField
      DisplayLabel = 'Isolante'
      FieldName = 'isolante'
      Size = 255
    end
    object qEquipfabricante: TStringField
      DisplayLabel = 'Fabricante'
      FieldName = 'fabricante'
      Size = 255
    end
    object qEquipano: TIntegerField
      DisplayLabel = 'Ano de Fabrica'#231#227'o'
      FieldName = 'ano'
      DisplayFormat = '0000'
    end
    object qEquiplote: TStringField
      DisplayLabel = 'Lote de Fabrica'#231#227'o'
      FieldName = 'lote'
      Size = 15
    end
    object qEquippotencia: TIntegerField
      DisplayLabel = 'Pot'#234'ncia'
      FieldName = 'potencia'
      DisplayFormat = '0'
    end
    object qEquiptensao_p: TFloatField
      DisplayLabel = 'Tens'#227'o Prim'#225'ria'
      FieldName = 'tensao_p'
      DisplayFormat = ',0.#0'
    end
    object qEquiptensao_s: TFloatField
      DisplayLabel = 'Tens'#227'o Secund'#225'ria'
      FieldName = 'tensao_s'
      DisplayFormat = ',0.#0'
    end
    object qEquipimpedancia: TFloatField
      DisplayLabel = 'Imped'#226'ncia'
      FieldName = 'impedancia'
      DisplayFormat = ',0.#0'
    end
    object qEquipfases: TIntegerField
      DisplayLabel = 'Fases'
      FieldName = 'fases'
      DisplayFormat = '0'
    end
    object qEquipvolume: TIntegerField
      DisplayLabel = 'Volume'
      FieldName = 'volume'
      DisplayFormat = '0 L'
    end
    object qEquipdrenos: TStringField
      DisplayLabel = 'Drenos'
      FieldName = 'drenos'
      Size = 5
    end
    object qEquipclasse: TStringField
      DisplayLabel = 'Classe de Tens'#227'o'
      FieldName = 'classe'
      Size = 1
    end
  end
  object dsEquip: TDataSource
    DataSet = qEquip
    Left = 72
    Top = 24
  end
end
