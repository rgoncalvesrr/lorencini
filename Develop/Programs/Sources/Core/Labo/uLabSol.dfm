inherited LabSol: TLabSol
  Caption = 'Solu'#231#245'es'
  PixelsPerInch = 96
  TextHeight = 15
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
  inherited Panel1: TPanel
    inherited pctlFind: TPageControl
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 819
        ExplicitHeight = 65
        object Label1: TLabel [0]
          Left = 172
          Top = 3
          Width = 24
          Height = 15
          Caption = 'Tipo'
        end
        object Label3: TLabel [1]
          Left = 354
          Top = 3
          Width = 60
          Height = 15
          Caption = 'Fornecedor'
        end
        object Label4: TLabel [2]
          Left = 120
          Top = 3
          Width = 42
          Height = 15
          Caption = 'Solu'#231#227'o'
        end
        object Label5: TLabel [3]
          Left = 1
          Top = 3
          Width = 24
          Height = 15
          Caption = 'Tipo'
        end
        inherited BitBtn2: TBitBtn
          Left = 718
          ExplicitLeft = 718
        end
        object cbTipo: TComboBox
          Left = 174
          Top = 21
          Width = 174
          Height = 23
          Style = csDropDownList
          ItemHeight = 15
          TabOrder = 1
          OnChange = cbTipoChange
        end
        object cbFornecedor: TComboBox
          Left = 354
          Top = 21
          Width = 316
          Height = 23
          Style = csDropDownList
          ItemHeight = 15
          TabOrder = 2
          OnChange = cbTipoChange
        end
        object edSol: TJvCalcEdit
          Left = 120
          Top = 21
          Width = 46
          Height = 23
          DecimalPlaces = 0
          DisplayFormat = '#'
          FormatOnEditing = True
          ShowButton = False
          TabOrder = 3
          DecimalPlacesAlwaysShown = False
          OnChange = edSolChange
        end
        object cbSaldo: TComboBox
          Left = 3
          Top = 21
          Width = 110
          Height = 23
          Style = csDropDownList
          ItemHeight = 15
          ItemIndex = 1
          TabOrder = 4
          Text = 'Dispon'#237'vel'
          OnChange = cbSaldoChange
          Items.Strings = (
            'Todos'
            'Dispon'#237'vel'
            'Indispon'#237'vel')
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
      ActivePage = TabSheet2
      Images = Resources.medium_n
      inherited TabSheet1: TTabSheet
        Caption = 'Todos'
        ImageIndex = -1
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 823
        ExplicitHeight = 163
        inherited DBGrid1: TDBGrid
          Height = 156
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Dispon'#237'vel'
        ImageIndex = 208
        ExplicitTop = 26
        ExplicitHeight = 163
      end
      object TabSheet3: TTabSheet
        Caption = 'Indispon'#237'vel'
        ImageIndex = 209
        ExplicitTop = 26
        ExplicitHeight = 163
      end
    end
  end
  inherited alDef: TActionList
    Left = 568
    Top = 160
  end
  inherited pmRel: TPopupMenu
    Left = 608
    Top = 160
  end
  inherited pmOrder: TPopupMenu
    Left = 642
    Top = 158
  end
  inherited alRunTime: TActionList
    Left = 674
    Top = 158
  end
  inherited DataSource1: TDataSource
    Left = 512
    Top = 160
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      
        'select s.recno, s.tipo, t.descri, s.codigo, f.empresa, f.nome_ch' +
        'ave, f.cnpj,'
      '       s.lotefor, s.validade, s.qtd, s.saldo '
      '  from labsol s'#9#9
      '       join labsoltipo t'
      '         on t.recno = s.tipo'
      '       left join fornecedores f'
      '         on f.codigo = s.codigo')
    Sequence = ZSequence1
    SequenceField = 'recno'
    Left = 480
    Top = 160
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Lote'
      FieldName = 'recno'
    end
    object IBrwSrctipo: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'tipo'
      Required = True
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Decri'#231#227'o'
      DisplayWidth = 25
      FieldName = 'descri'
      Size = 60
    end
    object IBrwSrcvalidade: TDateField
      DisplayLabel = 'Validade'
      FieldName = 'validade'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object IBrwSrcqtd: TFloatField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 15
      FieldName = 'qtd'
      Required = True
      OnChange = IBrwSrcqtdChange
      DisplayFormat = ',0.###0'
    end
    object IBrwSrcsaldo: TFloatField
      DisplayLabel = 'Saldo'
      DisplayWidth = 15
      FieldName = 'saldo'
      Required = True
      DisplayFormat = ',0.###0'
    end
    object IBrwSrclotefor: TStringField
      DisplayLabel = 'Lote Fornecedor'
      DisplayWidth = 15
      FieldName = 'lotefor'
      Size = 40
    end
    object IBrwSrccodigo: TIntegerField
      DisplayLabel = 'Fornecedor'
      FieldName = 'codigo'
    end
    object IBrwSrcempresa: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 40
      FieldName = 'empresa'
      Size = 60
    end
    object IBrwSrcnome_chave: TStringField
      DisplayLabel = 'Nome Curto'
      DisplayWidth = 20
      FieldName = 'nome_chave'
      Size = 60
    end
    object IBrwSrccnpj: TStringField
      DisplayLabel = 'CNPJ'
      DisplayWidth = 18
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
  end
  inherited pmOpcao: TPopupMenu
    Left = 712
    Top = 160
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labsol'
      'WHERE'
      '  labsol.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO labsol'
      '  (recno, tipo, codigo, lotefor, validade, qtd, saldo)'
      'VALUES'
      '  (:recno, :tipo, :codigo, :lotefor, :validade, :qtd, :saldo)')
    ModifySQL.Strings = (
      'UPDATE labsol SET'
      '  tipo = :tipo,'
      '  codigo = :codigo,'
      '  lotefor = :lotefor,'
      '  validade = :validade,'
      '  qtd = :qtd'
      'WHERE'
      '  labsol.recno = :OLD_recno')
    Left = 448
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'lotefor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'validade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'qtd'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'saldo'
        ParamType = ptUnknown
      end>
  end
  object ZSequence1: TZSequence
    Connection = DM.Design
    SequenceName = 'labsol_recno_seq'
    Left = 416
    Top = 160
  end
end
