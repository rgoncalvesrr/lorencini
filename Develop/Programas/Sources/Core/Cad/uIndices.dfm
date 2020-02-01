inherited Indices: TIndices
  Caption = 'Cadastro de '#205'ndices'
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel2: TPanel
    inherited PageControl1: TPageControl
      inherited TabSheet1: TTabSheet
        Caption = #205'ndices'
      end
    end
  end
  inherited IBrwSrc: TZQuery
    UpdateObject = updIBRWSrc
    SQL.Strings = (
      'SELECT vigencia, iss, pis, cofins, irpj_mat,'
      '       cssl_mat, cssl_srv, irpj_srv, irpf,'
      '       ci, com_srv, com_mat, recno,'
      '       pis_srv, cofins_srv, inss_srv, inss_mat,'
      '       aliq_srv, aliq_mat, regime, icms'
      '  FROM indices')
    object IBrwSrcvigencia: TDateField
      DisplayLabel = 'Vig'#234'ncia'
      FieldName = 'vigencia'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object IBrwSrciss: TFloatField
      DisplayLabel = 'ISS'
      FieldName = 'iss'
      Required = True
      OnChange = IBrwSrcTotAliqChange
      DisplayFormat = ',0.#0%'
    end
    object IBrwSrcpis: TFloatField
      DisplayLabel = 'PIS Materiais'
      FieldName = 'pis'
      Required = True
      OnChange = IBrwSrcTotAliqChange
      DisplayFormat = ',0.#0%'
    end
    object IBrwSrccofins: TFloatField
      DisplayLabel = 'Cofins Materiais'
      FieldName = 'cofins'
      Required = True
      OnChange = IBrwSrcTotAliqChange
      DisplayFormat = ',0.#0%'
    end
    object IBrwSrcirpj_mat: TFloatField
      DisplayLabel = 'IRPJ Materiais'
      FieldName = 'irpj_mat'
      Required = True
      OnChange = IBrwSrcTotAliqChange
      DisplayFormat = ',0.#0%'
    end
    object IBrwSrccssl_mat: TFloatField
      DisplayLabel = 'CSSL Materiais'
      FieldName = 'cssl_mat'
      Required = True
      OnChange = IBrwSrcTotAliqChange
      DisplayFormat = ',0.#0%'
    end
    object IBrwSrccssl_srv: TFloatField
      DisplayLabel = 'CSSL Servi'#231'o'
      FieldName = 'cssl_srv'
      Required = True
      OnChange = IBrwSrcTotAliqChange
      DisplayFormat = ',0.#0%'
    end
    object IBrwSrcirpj_srv: TFloatField
      DisplayLabel = 'IRPJ Servi'#231'o'
      FieldName = 'irpj_srv'
      Required = True
      OnChange = IBrwSrcTotAliqChange
      DisplayFormat = ',0.#0%'
    end
    object IBrwSrcirpf: TFloatField
      DisplayLabel = 'IRPF'
      FieldName = 'irpf'
      Required = True
      DisplayFormat = ',0.#0%'
    end
    object IBrwSrcci: TFloatField
      DisplayLabel = 'Custo Interno'
      FieldName = 'ci'
      Required = True
      DisplayFormat = ',0.#0%'
    end
    object IBrwSrccom_srv: TFloatField
      DisplayLabel = 'Comiss'#227'o Servi'#231'o'
      FieldName = 'com_srv'
      Required = True
      OnChange = IBrwSrcTotAliqChange
      DisplayFormat = ',0.#0%'
    end
    object IBrwSrccom_mat: TFloatField
      DisplayLabel = 'Comiss'#227'o Materiais'
      FieldName = 'com_mat'
      Required = True
      OnChange = IBrwSrcTotAliqChange
      DisplayFormat = ',0.#0%'
    end
    object IBrwSrcrecno: TIntegerField
      FieldName = 'recno'
      Visible = False
    end
    object IBrwSrcpis_srv: TFloatField
      DisplayLabel = 'PIS Servi'#231'os'
      FieldName = 'pis_srv'
      Required = True
      OnChange = IBrwSrcTotAliqChange
      DisplayFormat = ',0.#0%'
    end
    object IBrwSrccofins_srv: TFloatField
      DisplayLabel = 'Cofins Servi'#231'os'
      FieldName = 'cofins_srv'
      Required = True
      OnChange = IBrwSrcTotAliqChange
      DisplayFormat = ',0.#0%'
    end
    object IBrwSrcinss_srv: TFloatField
      DisplayLabel = 'INSS Servi'#231'os'
      FieldName = 'inss_srv'
      Required = True
      OnChange = IBrwSrcTotAliqChange
      DisplayFormat = ',0.#0%'
    end
    object IBrwSrcinss_mat: TFloatField
      DisplayLabel = 'INSS Materiais'
      FieldName = 'inss_mat'
      Required = True
      OnChange = IBrwSrcTotAliqChange
      DisplayFormat = ',0.#0%'
    end
    object IBrwSrcaliq_srv: TFloatField
      DisplayLabel = 'Aliquota Servi'#231'os'
      FieldName = 'aliq_srv'
      Required = True
      DisplayFormat = ',0.#0%'
    end
    object IBrwSrcaliq_mat: TFloatField
      DisplayLabel = 'Aliquota Materiais'
      FieldName = 'aliq_mat'
      Required = True
      DisplayFormat = ',0.#0%'
    end
    object IBrwSrcregime: TIntegerField
      DisplayLabel = 'Regime da Empresa'
      FieldName = 'regime'
      Required = True
      OnChange = IBrwSrcTotAliqChange
      OnGetText = IBrwSrcregimeGetText
      OnSetText = IBrwSrcregimeSetText
    end
    object IBrwSrcicms: TFloatField
      DisplayLabel = 'ICMS'
      FieldName = 'icms'
      Required = True
      OnChange = IBrwSrcTotAliqChange
      DisplayFormat = ',0.#0%'
    end
  end
  object updIBRWSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM indices'
      'WHERE'
      '  vigencia = :OLD_vigencia')
    InsertSQL.Strings = (
      'INSERT INTO indices'
      
        '  (iss, pis, cofins, irpj_mat, cssl_mat, cssl_srv, irpj_srv, irp' +
        'f, ci,'
      
        '   com_srv, com_mat, pis_srv, cofins_srv, inss_srv, inss_mat, re' +
        'gime,'
      '   icms)'
      'VALUES'
      
        '  (:iss, :pis, :cofins, :irpj_mat, :cssl_mat, :cssl_srv, :irpj_s' +
        'rv, :irpf, :ci,'
      
        '   :com_srv, :com_mat, :pis_srv, :cofins_srv, :inss_srv, :inss_m' +
        'at, :regime,'
      '   :icms)')
    ModifySQL.Strings = (
      'UPDATE indices SET'
      '  iss = :iss,'
      '  pis = :pis,'
      '  cofins = :cofins,'
      '  irpj_mat = :irpj_mat,'
      '  cssl_mat = :cssl_mat,'
      '  cssl_srv = :cssl_srv,'
      '  irpj_srv = :irpj_srv,'
      '  irpf = :irpf,'
      '  ci = :ci,'
      '  com_srv = :com_srv,'
      '  com_mat = :com_mat,'
      '  pis_srv = :pis_srv,'
      '  cofins_srv = :cofins_srv,'
      '  inss_srv = :inss_srv,'
      '  inss_mat = :inss_mat,'
      '  regime = :regime,'
      '  icms = :icms'
      'WHERE'
      '  vigencia = :OLD_vigencia')
    UseSequenceFieldForRefreshSQL = False
    Left = 176
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'iss'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pis'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cofins'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'irpj_mat'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cssl_mat'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cssl_srv'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'irpj_srv'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'irpf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ci'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'com_srv'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'com_mat'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pis_srv'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cofins_srv'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'inss_srv'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'inss_mat'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'regime'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'icms'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_vigencia'
        ParamType = ptUnknown
      end>
  end
end
