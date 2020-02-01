inherited LabFrete: TLabFrete
  Caption = 'Controle de Fretes'
  PixelsPerInch = 96
  TextHeight = 14
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
      ExplicitWidth = 71
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
        ExplicitWidth = 833
        ExplicitHeight = 60
        inherited BitBtn2: TBitBtn
          Glyph.Data = {00000000}
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 833
        ExplicitHeight = 60
        inherited BitBtn1: TBitBtn
          Glyph.Data = {00000000}
        end
      end
    end
  end
  inherited Panel2: TPanel
    inherited PageControl1: TPageControl
      inherited TabSheet1: TTabSheet
        Caption = 'Controle de Fretes'
        ExplicitLeft = 4
        ExplicitTop = 25
        ExplicitWidth = 832
        ExplicitHeight = 89
      end
    end
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      'select '
      
        '   s.codigo, s.recno, s.data, s.tipo, s.saldoa, s.valor, s.saldo' +
        ', s.obs,'
      '   c.nome_chave, c.cnpj, c.cpf'
      'from labsedex s'
      '     join tbclientes c'
      '       on c.codigo = s.codigo')
    object IBrwSrccodigo: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'codigo'
      Required = True
    end
    object IBrwSrcnome_chave: TStringField
      DisplayLabel = 'Nome Empresarial'
      FieldName = 'nome_chave'
      Size = 45
    end
    object IBrwSrccnpj: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object IBrwSrccpf: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'cpf'
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
      Required = True
      Visible = False
    end
    object IBrwSrcdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'data'
      Required = True
      Visible = False
      EditMask = 'dd/mm/yyyy'
    end
    object IBrwSrctipo: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'tipo'
      Required = True
      OnGetText = IBrwSrctipoGetText
    end
    object IBrwSrcsaldoa: TFloatField
      DisplayLabel = 'Saldo Anterior'
      FieldName = 'saldoa'
      ReadOnly = True
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      ReadOnly = True
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcsaldo: TFloatField
      DisplayLabel = 'Saldo Atual'
      FieldName = 'saldo'
      ReadOnly = True
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcobs: TStringField
      DisplayLabel = 'Obs'
      DisplayWidth = 60
      FieldName = 'obs'
      Visible = False
      Size = 200
    end
  end
end
