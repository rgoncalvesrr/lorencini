inherited Comodato: TComodato
  Caption = 'Estoque de Amostras'
  Constraints.MinWidth = 634
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    inherited pctlFind: TPageControl
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 819
        ExplicitHeight = 65
        object Label18: TLabel [0]
          Left = 4
          Top = 7
          Width = 90
          Height = 15
          Caption = 'Vizualizar cliente:'
          Transparent = True
        end
        object ComboBox1: TComboBox
          Left = 4
          Top = 25
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
    ExplicitTop = 119
    ExplicitHeight = 193
    inherited PageControl1: TPageControl
      ExplicitHeight = 187
      inherited TabSheet1: TTabSheet
        Caption = 'Amostras'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 823
        ExplicitHeight = 157
      end
    end
  end
  inherited ctrlBarTop: TControlBar
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
  inherited DataSource1: TDataSource
    Top = 64
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      
        'select c.recno, c.codigo, c.situacao, c.qtd, c.consumido, c.sald' +
        'o, cl.empresa, cl.nome_chave, cl.cnpj, cl.cpf, cl.cidade, cl.est' +
        'ado'
      '  from comodato c'
      '       join tbclientes cl'
      '         on cl.codigo = c.codigo'
      ' where c.saldo >= :saldo')
    Params = <
      item
        DataType = ftFloat
        Name = 'saldo'
        ParamType = ptUnknown
      end>
    Left = 144
    Top = 64
    ParamData = <
      item
        DataType = ftFloat
        Name = 'saldo'
        ParamType = ptUnknown
      end>
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Amostra'
      FieldName = 'recno'
      Required = True
    end
    object IBrwSrcsituacao: TIntegerField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'situacao'
    end
    object IBrwSrcqtd: TFloatField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 15
      FieldName = 'qtd'
      Required = True
      DisplayFormat = ',0.###0 ml'
    end
    object IBrwSrcconsumido: TFloatField
      DisplayLabel = 'Consumido'
      DisplayWidth = 15
      FieldName = 'consumido'
      Required = True
      DisplayFormat = ',0.###0 ml'
    end
    object IBrwSrcsaldo: TFloatField
      DisplayLabel = 'Saldo'
      DisplayWidth = 15
      FieldName = 'saldo'
      Required = True
      DisplayFormat = ',0.###0 ml'
    end
    object IBrwSrccodigo: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'codigo'
      Required = True
    end
    object IBrwSrcempresa: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 30
      FieldName = 'empresa'
      Size = 100
    end
    object IBrwSrcnome_chave: TStringField
      DisplayLabel = 'Nome Curto'
      FieldName = 'nome_chave'
      Size = 45
    end
    object IBrwSrccnpj: TStringField
      DefaultExpression = '99.999.999/9999-99;0;'
      DisplayLabel = 'C.N.P.J.'
      DisplayWidth = 18
      FieldName = 'cnpj'
      Size = 14
    end
    object IBrwSrccpf: TStringField
      DefaultExpression = '999.999.999-99;0;'
      DisplayLabel = 'C.P.F.'
      DisplayWidth = 14
      FieldName = 'cpf'
      Size = 11
    end
    object IBrwSrccidade: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 40
      FieldName = 'cidade'
      Size = 100
    end
    object IBrwSrcestado: TStringField
      DisplayLabel = 'UF'
      DisplayWidth = 4
      FieldName = 'estado'
      Size = 2
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    Left = 80
    Top = 64
  end
end
