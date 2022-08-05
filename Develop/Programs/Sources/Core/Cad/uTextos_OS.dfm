inherited Textos_OS: TTextos_OS
  Caption = 'Textos de Atividade de Ordem de Servi'#231'o'
  Constraints.MinWidth = 853
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    inherited pctlFind: TPageControl
      inherited tsQuery: TTabSheet
        object Label18: TLabel [0]
          Left = 2
          Top = 2
          Width = 55
          Height = 15
          Caption = 'Atividades'
          Transparent = True
        end
        object ComboBox1: TComboBox
          Left = 3
          Top = 23
          Width = 264
          Height = 23
          DropDownCount = 30
          ItemHeight = 15
          TabOrder = 1
          OnChange = ComboBox1Change
          Items.Strings = (
            '<TODOS>'
            'JANEIRO'
            'FEVEREIRO'
            'MAR'#199'O'
            'ABRIL'
            'MAIO'
            'JUNHO'
            'JULHO'
            'AGOSTO'
            'SETEMBRO'
            'OUTUBRO'
            'NOVEMBRO'
            'DEZEMBRO')
        end
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
    inherited PageControl1: TPageControl
      inherited TabSheet1: TTabSheet
        Caption = 'Textos'
      end
    end
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SortedFields = 'item'
    UpdateObject = ZUpdateSQL1
    SQL.Strings = (
      
        'select a.codativ, b.descri as tipo, a.item, a.descri::::varchar(' +
        '80) as resumo, a.descri, b.iss'
      '  from textos_os a'
      '       join atividades b'
      '         on b.codativ = a.codativ'
      ' where a.codativ = :atividade ')
    Params = <
      item
        DataType = ftUnknown
        Name = 'atividade'
        ParamType = ptUnknown
      end>
    IndexFieldNames = 'item Asc'
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atividade'
        ParamType = ptUnknown
      end>
    object IBrwSrccodativ: TIntegerField
      DisplayLabel = 'Atividade'
      FieldName = 'codativ'
      Required = True
      Visible = False
    end
    object IBrwSrctipo: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 25
      FieldName = 'tipo'
      ReadOnly = True
      Visible = False
      Size = 60
    end
    object IBrwSrcitem: TIntegerField
      DisplayLabel = 'Texto'
      FieldName = 'item'
      Required = True
    end
    object IBrwSrcresumo: TStringField
      DisplayLabel = 'Resumo'
      FieldName = 'resumo'
      ReadOnly = True
      Size = 80
    end
    object IBrwSrcdescri: TMemoField
      FieldName = 'descri'
      Required = True
      Visible = False
      BlobType = ftMemo
    end
    object IBrwSrciss: TFloatField
      DisplayLabel = 'Al'#237'quota de ISS'
      FieldName = 'iss'
      ReadOnly = True
      DisplayFormat = ',0.#0%'
    end
  end
  inherited pmOpcao: TPopupMenu
    Top = 40
  end
  object ZUpdateSQL1: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM textos_os'
      'WHERE'
      '  item = :OLD_item')
    InsertSQL.Strings = (
      'INSERT INTO textos_os'
      '  (item, descri, codativ)'
      'VALUES'
      '  (:item, :descri, :codativ)')
    ModifySQL.Strings = (
      'UPDATE textos_os SET'
      '  item = :item,'
      '  descri = :descri,'
      '  codativ = :codativ'
      'WHERE'
      '  item = :OLD_item')
    UseSequenceFieldForRefreshSQL = False
    Left = 176
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'item'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'descri'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codativ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_item'
        ParamType = ptUnknown
      end>
  end
end
