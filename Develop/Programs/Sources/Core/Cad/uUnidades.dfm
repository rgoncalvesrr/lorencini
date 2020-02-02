inherited Unidades: TUnidades
  Caption = 'Unidades'
  Constraints.MinWidth = 853
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    inherited pctlFind: TPageControl
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
        Caption = 'Unidades'
      end
    end
  end
  inherited DataSource1: TDataSource
    DataSet = DM.qUnidade
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      'select un, descri from unidades')
    object IBrwSrcun: TStringField
      DisplayLabel = 'Unidade de Medida'
      FieldName = 'un'
      Required = True
      Size = 3
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Required = True
      Size = 100
    end
  end
end
