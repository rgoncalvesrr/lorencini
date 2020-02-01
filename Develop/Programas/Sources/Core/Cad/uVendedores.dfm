inherited Vendedores: TVendedores
  Caption = 'Cadastro de Vendedores'
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
        Caption = 'Vendedores'
        inherited DBGrid1: TDBGrid
          DataSource = DM.dsVendedores
        end
      end
    end
  end
  inherited alDef: TActionList
    Left = 256
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SortedFields = 'NOME'
    SQL.Strings = (
      'select * '
      '  from tb_vendedores')
    IndexFieldNames = 'NOME Asc'
    object IBrwSrcidvendedor: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'idvendedor'
      ReadOnly = True
    end
    object IBrwSrcativo: TBooleanField
      DisplayLabel = 'Ativo'
      FieldName = 'ativo'
    end
    object IBrwSrcnome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 25
      FieldName = 'nome'
      Size = 100
    end
    object IBrwSrccpf: TStringField
      DisplayLabel = 'CPF'
      DisplayWidth = 14
      FieldName = 'cpf'
      EditMask = '999.999.999-99;0;'
      Size = 100
    end
    object IBrwSrcrg: TStringField
      DisplayLabel = 'RG'
      DisplayWidth = 10
      FieldName = 'rg'
      EditMask = '99.999.999-9;0;'
      Size = 100
    end
    object IBrwSrccep: TStringField
      DisplayLabel = 'C.E.P.'
      DisplayWidth = 10
      FieldName = 'cep'
      Visible = False
      EditMask = '99999-999;1;'
      Size = 100
    end
    object IBrwSrcendereco: TStringField
      DisplayLabel = 'Logradouro'
      DisplayWidth = 30
      FieldName = 'endereco'
      Visible = False
      Size = 100
    end
    object IBrwSrcbairro: TStringField
      DisplayLabel = 'Bairro'
      DisplayWidth = 25
      FieldName = 'bairro'
      Visible = False
      Size = 100
    end
    object IBrwSrccidade: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 30
      FieldName = 'cidade'
      Visible = False
      Size = 100
    end
    object IBrwSrcestado: TStringField
      DisplayLabel = 'UF'
      DisplayWidth = 4
      FieldName = 'estado'
      Visible = False
      Size = 100
    end
    object IBrwSrctelefone: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 15
      FieldName = 'telefone'
      Size = 100
    end
    object IBrwSrccelular: TStringField
      DisplayLabel = 'Celular'
      DisplayWidth = 15
      FieldName = 'celular'
      Size = 100
    end
    object IBrwSrccomissao: TFloatField
      DisplayLabel = 'Comiss'#227'o'
      FieldName = 'comissao'
      Visible = False
      DisplayFormat = ',0.#0%'
    end
    object IBrwSrcajudacusto: TFloatField
      DisplayLabel = 'Ajuda de Custo'
      FieldName = 'ajudacusto'
      Visible = False
      DisplayFormat = ',0.#0'
      currency = True
    end
    object IBrwSrcemail: TStringField
      DisplayLabel = 'E-Mail'
      DisplayWidth = 30
      FieldName = 'email'
      Size = 100
    end
    object IBrwSrccnpj: TStringField
      DisplayLabel = 'C.N.P.J.'
      FieldName = 'cnpj'
      Visible = False
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object IBrwSrcinscrestadual: TStringField
      DisplayLabel = 'Inscri'#231#227'o Estadual'
      DisplayWidth = 15
      FieldName = 'inscrestadual'
      Visible = False
      Size = 100
    end
    object IBrwSrcusername: TStringField
      DisplayLabel = 'Login'
      FieldName = 'username'
      Visible = False
    end
  end
end
