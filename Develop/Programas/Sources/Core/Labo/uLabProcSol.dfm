inherited LabProcSol: TLabProcSol
  Caption = 'Solicita'#231#227'o de Envio de Vidrarias'
  ClientWidth = 829
  Constraints.MinWidth = 842
  ExplicitWidth = 845
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Width = 823
    ExplicitWidth = 823
  end
  inherited Panel1: TPanel
    Width = 829
    ExplicitTop = 35
    ExplicitWidth = 829
    inherited pctlFind: TPageControl
      Width = 819
      ExplicitWidth = 819
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 811
        ExplicitHeight = 65
        object Label18: TLabel [0]
          Left = 3
          Top = 3
          Width = 90
          Height = 15
          Caption = 'Vizualizar cliente:'
          Transparent = True
        end
        object ComboBox1: TComboBox
          Left = 3
          Top = 21
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
        ExplicitWidth = 1087
        ExplicitHeight = 90
      end
    end
  end
  inherited Panel2: TPanel
    Width = 829
    ExplicitTop = 110
    ExplicitWidth = 829
    ExplicitHeight = 202
    inherited PageControl1: TPageControl
      Width = 823
      ExplicitWidth = 823
      ExplicitHeight = 196
      inherited TabSheet1: TTabSheet
        Caption = 'Remessa de Vidraria'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 815
        ExplicitHeight = 166
        inherited DBGrid1: TDBGrid
          Width = 815
        end
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Width = 823
    ExplicitWidth = 823
    inherited ToolBar1: TToolBar
      Width = 810
      ExplicitWidth = 810
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
    Left = 264
    Top = 200
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    AfterInsert = IBrwSrcAfterInsert
    SQL.Strings = (
      
        'select r.situacao, r.recno, r.atualizacao, r.emissao, r.frascos,' +
        ' r.seringas,'
      
        '       r.codigo, c.empresa, c.nome_chave, r.descri, c.cnpj, c.cp' +
        'f, c.cep, '
      
        '       r.coleta, r.frete, r.correio, r.envio, r.cotacao, r.pedid' +
        'o'
      '  from labproc r'
      '       join tbclientes c'
      '         on c.codigo = r.codigo'
      ' where r.situacao = 0')
    Left = 192
    Top = 200
    object IBrwSrcsituacao: TIntegerField
      FieldName = 'situacao'
      Visible = False
    end
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Solicita'#231#227'o'
      FieldName = 'recno'
    end
    object IBrwSrccotacao: TIntegerField
      DisplayLabel = 'Cota'#231#227'o'
      FieldName = 'cotacao'
    end
    object IBrwSrcpedido: TIntegerField
      DisplayLabel = 'Pedido'
      FieldName = 'pedido'
    end
    object IBrwSrcatualizacao: TDateTimeField
      DisplayLabel = 'Atualiza'#231#227'o'
      FieldName = 'atualizacao'
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object IBrwSrcemissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'emissao'
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object IBrwSrcfrascos: TIntegerField
      DisplayLabel = 'Frascos'
      FieldName = 'frascos'
      Required = True
    end
    object IBrwSrcseringas: TIntegerField
      DisplayLabel = 'Seringas'
      FieldName = 'seringas'
      Required = True
    end
    object IBrwSrcenvio: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Tipo de Envio'
      FieldName = 'envio'
      Required = True
      OnChange = IBrwSrcenvioChange
      OnGetText = IBrwSrcenvioGetText
      OnSetText = IBrwSrcenvioSetText
    end
    object IBrwSrccorreio: TIntegerField
      DisplayLabel = 'Sedex'
      FieldName = 'correio'
    end
    object IBrwSrcfrete: TFloatField
      DisplayLabel = 'Frete'
      FieldName = 'frete'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object IBrwSrccodigo: TIntegerField
      DisplayLabel = 'Cliente'
      DisplayWidth = 7
      FieldName = 'codigo'
      Required = True
      OnChange = IBrwSrccodigoChange
    end
    object IBrwSrcnome_chave: TStringField
      DisplayLabel = 'Nome Curto'
      DisplayWidth = 25
      FieldName = 'nome_chave'
      Size = 45
    end
    object IBrwSrccnpj: TStringField
      DisplayLabel = 'CNPJ'
      DisplayWidth = 18
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object IBrwSrccpf: TStringField
      DisplayLabel = 'CPF'
      DisplayWidth = 13
      FieldName = 'cpf'
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object IBrwSrcempresa: TStringField
      DisplayLabel = 'Raz'#227'o'
      DisplayWidth = 30
      FieldName = 'empresa'
      Size = 100
    end
    object IBrwSrcdescri: TStringField
      FieldName = 'descri'
      Visible = False
      Size = 60
    end
    object IBrwSrccoleta: TIntegerField
      FieldName = 'coleta'
      Required = True
      Visible = False
    end
    object IBrwSrccep: TStringField
      DisplayLabel = 'C.E.P.'
      DisplayWidth = 9
      FieldName = 'cep'
      Visible = False
      EditMask = '9999-999;9;'
      Size = 100
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labproc '
      'WHERE'
      '  labproc.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO labproc'
      
        '  (descri, codigo, frascos, seringas, coleta, frete, correio, en' +
        'vio)'
      'VALUES'
      
        '  (:descri, :codigo, :frascos, :seringas, :coleta, :frete, :corr' +
        'eio, :envio)')
    ModifySQL.Strings = (
      'UPDATE labproc SET'
      '  recno = :recno,'
      '  descri = :descri,'
      '  codigo = :codigo,'
      '  frascos = :frascos,'
      '  seringas = :seringas,'
      '  coleta = :coleta,'
      '  frete = :frete,'
      '  correio = :correio,'
      '  envio = :envio'
      'WHERE'
      '  labproc.recno = :OLD_recno')
    Left = 128
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'descri'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'frascos'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'seringas'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'coleta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'frete'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'correio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'envio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_recno'
        ParamType = ptUnknown
      end>
  end
end
