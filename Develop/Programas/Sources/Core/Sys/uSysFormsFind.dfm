inherited SysFormsFind: TSysFormsFind
  Caption = 'Pesquisa de Formu'#225'rios'
  PixelsPerInch = 96
  TextHeight = 14
  inherited PageControl1: TPageControl
    inherited TabSheet1: TTabSheet
      Caption = 'Formul'#225'rios'
    end
  end
  inherited IBrwSrc: TZReadOnlyQuery
    Connection = DM.Design
    SQL.Strings = (
      'select form, descri '
      '  from sys_forms')
    object IBrwSrcform: TStringField
      DisplayLabel = 'Fromu'#225'rio'
      FieldName = 'form'
      Required = True
      Size = 60
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Size = 60
    end
  end
end
