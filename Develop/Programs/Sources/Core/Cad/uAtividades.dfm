inherited Atividades: TAtividades
  Caption = 'Cadastro de Atividades Municipais'
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel2: TPanel
    inherited PageControl1: TPageControl
      inherited TabSheet1: TTabSheet
        Caption = 'Atividades'
      end
    end
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      'select codativ, descri, iss '
      '  from atividades')
    object IBrwSrccodativ: TIntegerField
      DisplayLabel = 'Atividade'
      FieldName = 'codativ'
      Required = True
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Required = True
      Size = 60
    end
    object IBrwSrciss: TFloatField
      DisplayLabel = 'Al'#237'quota de ISS'
      FieldName = 'iss'
      Required = True
      DisplayFormat = ',0.#0%'
    end
  end
end
