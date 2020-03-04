inherited Indices: TIndices
  Caption = 'Cadastro de '#205'ndices'
  Constraints.MinWidth = 680
  ExplicitWidth = 741
  ExplicitHeight = 335
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TStatusBar
    ExplicitTop = 269
    ExplicitWidth = 719
  end
  inherited Panel1: TPanel
    Top = 44
    ExplicitTop = 39
    inherited pctlFind: TPageControl
      ExplicitLeft = 5
      ExplicitWidth = 715
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 707
        ExplicitHeight = 64
        inherited BitBtn2: TBitBtn
          Left = 619
          Top = 10
          Height = 32
          ExplicitLeft = 619
          ExplicitTop = 10
          ExplicitHeight = 32
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 707
        ExplicitHeight = 64
      end
    end
  end
  inherited Panel2: TPanel
    Top = 118
    Height = 148
    ExplicitTop = 113
    ExplicitHeight = 153
    inherited PageControl1: TPageControl
      Height = 142
      ExplicitWidth = 719
      ExplicitHeight = 147
      inherited TabSheet1: TTabSheet
        Caption = #205'ndices'
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 711
        ExplicitHeight = 119
        inherited DBGrid1: TDBGrid
          Width = 705
          Height = 108
        end
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Height = 38
    ExplicitWidth = 719
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      Width = 706
      ButtonWidth = 70
      ExplicitWidth = 706
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
        ExplicitWidth = 74
      end
      inherited tbReport: TToolButton
        Left = 314
        ExplicitLeft = 314
        ExplicitWidth = 32
      end
      inherited tbOpcao: TToolButton
        Left = 346
        ExplicitLeft = 346
        ExplicitWidth = 32
      end
      inherited ToolButton11: TToolButton
        Left = 378
        ExplicitLeft = 378
      end
      inherited ToolButton10: TToolButton
        Left = 386
        ExplicitLeft = 386
        ExplicitWidth = 32
      end
    end
  end
  inherited DataSource1: TDataSource
    Left = 248
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
    Left = 184
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
  inherited zIBrwSrc: TZUpdateSQL
    Left = 128
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
    Left = 128
    Top = 64
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
