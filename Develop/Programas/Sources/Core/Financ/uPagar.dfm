inherited Pagar: TPagar
  Caption = 'Contas Pagar'
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    inherited pctlFind: TPageControl
      inherited tsQuery: TTabSheet
        object Label1: TLabel [0]
          Left = 4
          Top = 3
          Width = 32
          Height = 15
          Caption = 'Status'
        end
        object Label3: TLabel [1]
          Left = 93
          Top = 3
          Width = 88
          Height = 15
          Caption = 'Vencimento Real'
        end
        object Label18: TLabel [2]
          Left = 256
          Top = 3
          Width = 113
          Height = 15
          Caption = 'Vizualizar fornecedor:'
          Transparent = True
        end
        object Label4: TLabel [3]
          Left = 93
          Top = 48
          Width = 3
          Height = 15
        end
        inline FrameData1: TFrameData
          Left = 93
          Top = 23
          Width = 156
          Height = 23
          TabOrder = 1
          ExplicitLeft = 93
          ExplicitTop = 23
          ExplicitWidth = 156
          ExplicitHeight = 23
          inherited ComboBox1: TComboBox
            Width = 156
            Height = 23
            ItemHeight = 15
            ItemIndex = 2
            Text = 'Trimestralmente'
            ExplicitWidth = 156
            ExplicitHeight = 23
          end
          inherited CCalendarDiff1: TCCalendarDiff
            Date = 42912.747748321760000000
            DisplayInterval = Label4
            OnChange = FrameData1CCalendarDiff1Change
          end
        end
        object cbStatus: TComboBox
          Left = 4
          Top = 23
          Width = 83
          Height = 23
          Style = csDropDownList
          ItemHeight = 15
          ItemIndex = 1
          TabOrder = 2
          Text = 'Em Aberto'
          OnChange = cbStatusChange
          Items.Strings = (
            'Todos'
            'Em Aberto'
            'Pagos'
            'Em Atraso')
        end
        object ComboBox1: TComboBox
          Left = 256
          Top = 23
          Width = 264
          Height = 23
          DropDownCount = 30
          ItemHeight = 15
          TabOrder = 3
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
    end
  end
  inherited Panel2: TPanel
    inherited PageControl1: TPageControl
      Images = Resources.medium_n
      inherited TabSheet1: TTabSheet
        Caption = 'Todos os T'#237'tulos'
        ImageIndex = -1
        ExplicitTop = 33
        ExplicitHeight = 156
        inherited DBGrid1: TDBGrid
          Height = 156
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'T'#237'tulos em Aberto'
        ImageIndex = 205
        ExplicitLeft = 0
        ExplicitTop = 26
        ExplicitWidth = 0
        ExplicitHeight = 165
      end
      object TabSheet3: TTabSheet
        Caption = 'T'#237'tulos Pagos'
        ImageIndex = 208
        ExplicitLeft = 0
        ExplicitTop = 26
        ExplicitWidth = 0
        ExplicitHeight = 165
      end
      object TabSheet4: TTabSheet
        Caption = 'T'#237'tulos em Atraso'
        ImageIndex = 213
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
    end
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SortedFields = 'vencimento_real'
    OnCalcFields = IBrwSrcCalcFields
    UpdateObject = ZUpdateSQL1
    AfterInsert = IBrwSrcAfterInsert
    SQL.Strings = (
      'select a.recno, a.natureza, c.descri, c.tipo,'
      '       a.id_forn, b.nome_chave, b.cnpj, b.telefone,'
      '       a.docto, a.criacao, a.emissao, a.vencimento,'
      '       a.vencimento_real, a.baixa, a.valor,'
      '       a.valor_baixado, a.obs, a.cc, a.historico,'
      '       a.juros, a.multa, a.descto'
      '  from fin_pagar a'
      '       join fornecedores b'
      '         on b.codigo = a.id_forn'
      '       join fin_naturezas c'
      '         on c.natureza = a.natureza'
      ' where a.id_forn between :fornde and :fornate')
    Params = <
      item
        DataType = ftLargeint
        Name = 'fornde'
        ParamType = ptUnknown
      end
      item
        DataType = ftLargeint
        Name = 'fornate'
        ParamType = ptUnknown
      end>
    IndexFieldNames = 'vencimento_real Asc'
    Sequence = ZSequence1
    SequenceField = 'recno'
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'fornde'
        ParamType = ptUnknown
      end
      item
        DataType = ftLargeint
        Name = 'fornate'
        ParamType = ptUnknown
      end>
    object IBrwSrcstatus: TIntegerField
      DisplayLabel = ' '
      FieldKind = fkCalculated
      FieldName = 'status'
      Calculated = True
    end
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Ficha'
      DisplayWidth = 5
      FieldName = 'recno'
    end
    object IBrwSrcdocto: TStringField
      DisplayLabel = 'Documento'
      DisplayWidth = 10
      FieldName = 'docto'
      Size = 50
    end
    object IBrwSrcnatureza: TIntegerField
      DisplayLabel = 'Natureza'
      DisplayWidth = 5
      FieldName = 'natureza'
      Required = True
      Visible = False
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 25
      FieldName = 'descri'
      Visible = False
      Size = 60
    end
    object IBrwSrctipo: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 7
      FieldName = 'tipo'
      Visible = False
      OnGetText = IBrwSrctipoGetText
      OnSetText = IBrwSrctipoSetText
      Size = 1
    end
    object IBrwSrchistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      DisplayWidth = 25
      FieldName = 'historico'
      Required = True
      Size = 100
    end
    object IBrwSrcid_forn: TIntegerField
      DisplayLabel = 'Fornecedor'
      FieldName = 'id_forn'
      Required = True
    end
    object IBrwSrcnome_chave: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 25
      FieldName = 'nome_chave'
      Size = 60
    end
    object IBrwSrccnpj: TStringField
      DisplayLabel = 'C.N.P.J.'
      FieldName = 'cnpj'
      Visible = False
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object IBrwSrctelefone: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 10
      FieldName = 'telefone'
      Visible = False
      Size = 50
    end
    object IBrwSrccriacao: TDateTimeField
      DisplayLabel = 'Cria'#231#227'o'
      FieldName = 'criacao'
      Visible = False
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object IBrwSrcemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'emissao'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object IBrwSrcvencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'vencimento'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object IBrwSrcvencimento_real: TDateField
      DisplayLabel = 'Vencimento Real'
      FieldName = 'vencimento_real'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object IBrwSrcbaixa: TDateField
      DisplayLabel = 'Baixa'
      FieldName = 'baixa'
      OnChange = IBrwSrcbaixaChange
      DisplayFormat = 'dd/mm/yyyy'
    end
    object IBrwSrcvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcjuros: TFloatField
      DisplayLabel = 'Juros'
      FieldName = 'juros'
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcmulta: TFloatField
      DisplayLabel = 'Multa'
      FieldName = 'multa'
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcdescto: TFloatField
      DisplayLabel = 'Descto'
      FieldName = 'descto'
      DisplayFormat = ',0.#0'
    end
    object IBrwSrctotal: TFloatField
      DisplayLabel = 'Total'
      FieldKind = fkCalculated
      FieldName = 'total'
      DisplayFormat = ',0.#0'
      Calculated = True
    end
    object IBrwSrcvalor_baixado: TFloatField
      DisplayLabel = 'Valor Baixado'
      FieldName = 'valor_baixado'
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcobs: TMemoField
      DisplayLabel = 'Obs'
      FieldName = 'obs'
      Visible = False
      BlobType = ftMemo
    end
    object IBrwSrccc: TStringField
      DisplayLabel = 'Conta'
      DisplayWidth = 15
      FieldName = 'cc'
      Size = 25
    end
  end
  object ZUpdateSQL1: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM fin_pagar'
      'WHERE'
      '  fin_pagar.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO fin_pagar'
      
        '  (natureza, id_forn, docto, emissao, vencimento, vencimento_rea' +
        'l, '
      '   valor, obs, cc, historico, recno, juros, multa, descto)'
      'VALUES'
      
        '  (:natureza, :id_forn, :docto, :emissao, :vencimento, :vencimen' +
        'to_real,'
      
        '   :valor, :obs, :cc, :historico, :recno, :juros, :multa, :desct' +
        'o)')
    ModifySQL.Strings = (
      'UPDATE fin_pagar SET'
      '  natureza = :natureza,'
      '  id_forn = :id_forn,'
      '  docto = :docto,'
      '  emissao = :emissao,'
      '  vencimento = :vencimento,'
      '  vencimento_real = :vencimento_real,'
      '  baixa = :baixa,'
      '  valor = :valor,'
      '  valor_baixado = :valor_baixado,'
      '  obs = :obs,'
      '  cc = :cc,'
      '  historico = :historico,'
      '  juros = :juros,'
      '  multa = :multa,'
      '  descto = :descto'
      'WHERE'
      '  fin_pagar.recno = :OLD_recno')
    UseSequenceFieldForRefreshSQL = False
    Left = 144
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'natureza'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_forn'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'docto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emissao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vencimento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vencimento_real'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'baixa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'valor_baixado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'obs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'historico'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'juros'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'multa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'descto'
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
      end>
  end
  object ZSequence1: TZSequence
    Connection = DM.Design
    SequenceName = 'public.fin_pagar_recno_seq'
    Left = 112
    Top = 48
  end
end
