inherited Receber: TReceber
  Caption = 'Contas a Receber'
  ClientHeight = 601
  ClientWidth = 855
  Constraints.MinWidth = 696
  ExplicitWidth = 871
  ExplicitHeight = 640
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 574
    Width = 849
    ExplicitTop = 574
    ExplicitWidth = 849
  end
  inherited Panel1: TPanel
    Width = 855
    ExplicitWidth = 855
    inherited pctlFind: TPageControl
      Width = 845
      ExplicitWidth = 845
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 837
        ExplicitHeight = 65
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
        object Label4: TLabel [2]
          Left = 93
          Top = 48
          Width = 3
          Height = 15
        end
        object Label18: TLabel [3]
          Left = 255
          Top = 2
          Width = 90
          Height = 15
          Caption = 'Vizualizar cliente:'
          Transparent = True
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
            Date = 43622.860870532410000000
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
            'Recebidos'
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
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 837
        ExplicitHeight = 65
      end
    end
  end
  inherited Panel2: TPanel
    Width = 855
    Height = 452
    ExplicitWidth = 855
    ExplicitHeight = 452
    inherited PageControl1: TPageControl
      Width = 849
      Height = 446
      Images = Resources.medium_n
      ExplicitWidth = 849
      ExplicitHeight = 446
      inherited TabSheet1: TTabSheet
        Caption = 'Todos os T'#237'tulos'
        ImageIndex = -1
        ExplicitLeft = 4
        ExplicitTop = 33
        ExplicitWidth = 841
        ExplicitHeight = 409
        inherited DBGrid1: TDBGrid
          Width = 841
          Height = 409
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'T'#237'tulo em Aberto'
        ImageIndex = 205
      end
      object TabSheet3: TTabSheet
        Caption = 'T'#237'tulos Recebidos'
        ImageIndex = 208
      end
      object TabSheet4: TTabSheet
        Caption = 'T'#237'tulos em Atraso'
        ImageIndex = 213
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Width = 849
    ExplicitWidth = 849
    inherited ToolBar1: TToolBar
      Width = 836
      ExplicitWidth = 836
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
  inherited alDef: TActionList
    Left = 248
    Top = 200
  end
  inherited DataSource1: TDataSource
    Left = 200
    Top = 168
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SortedFields = 'vencimento_real'
    AfterScroll = IBrwSrcAfterScroll
    OnCalcFields = IBrwSrcCalcFields
    UpdateObject = ZUpdateSQL1
    AfterInsert = IBrwSrcAfterInsert
    SQL.Strings = (
      'select a.recno, a.natureza, c.descri, c.tipo,'
      '       a.id_cli, b.nome_chave, b.cnpj, b.telefone,'
      '       a.docto, a.criacao, a.emissao, a.vencimento,'
      '       a.vencimento_real, a.baixa, a.valor,'
      '       a.valor_baixado, a.obs, a.cc, a.historico,'
      '       a.juros, a.multa, a.descto'
      '  from fin_receber a'
      '       join tbclientes b'
      '         on b.codigo = a.id_cli'
      '       join fin_naturezas c'
      '         on c.natureza = a.natureza'
      ' where a.id_cli between :ClienteDe and :ClienteAte')
    Params = <
      item
        DataType = ftLargeint
        Name = 'ClienteDe'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftLargeint
        Name = 'ClienteAte'
        ParamType = ptUnknown
        Value = '999999'
      end>
    IndexFieldNames = 'vencimento_real Asc'
    Sequence = ZSequence1
    SequenceField = 'recno'
    Left = 120
    Top = 160
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'ClienteDe'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftLargeint
        Name = 'ClienteAte'
        ParamType = ptUnknown
        Value = '999999'
      end>
    object IBrwSrcstatus: TIntegerField
      DisplayLabel = ' '
      FieldKind = fkCalculated
      FieldName = 'status'
      Calculated = True
    end
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Ficha'
      FieldName = 'recno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IBrwSrcdocto: TStringField
      DisplayLabel = 'Documento'
      DisplayWidth = 7
      FieldName = 'docto'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object IBrwSrchistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      DisplayWidth = 25
      FieldName = 'historico'
      Required = True
      Size = 100
    end
    object IBrwSrcnatureza: TIntegerField
      DisplayLabel = 'Natureza'
      DisplayWidth = 7
      FieldName = 'natureza'
      Required = True
      Visible = False
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 40
      FieldName = 'descri'
      Visible = False
      Size = 80
    end
    object IBrwSrctipo: TStringField
      DisplayWidth = 7
      FieldName = 'tipo'
      OnGetText = IBrwSrctipoGetText
      OnSetText = IBrwSrctipoSetText
      Size = 1
    end
    object IBrwSrcid_cli: TIntegerField
      DisplayLabel = 'Cliente'
      DisplayWidth = 7
      FieldName = 'id_cli'
      Required = True
    end
    object IBrwSrcnome_chave: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      DisplayWidth = 20
      FieldName = 'nome_chave'
      Size = 45
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
      DisplayWidth = 15
      FieldName = 'telefone'
      Visible = False
      Size = 100
    end
    object IBrwSrccriacao: TDateTimeField
      DisplayLabel = 'Cria'#231#227'o'
      FieldName = 'criacao'
      Visible = False
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
      Visible = False
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
      DefaultExpression = '0'
      DisplayLabel = 'Juros'
      FieldName = 'juros'
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcmulta: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Multa'
      FieldName = 'multa'
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcdescto: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Descto'
      FieldName = 'descto'
      DisplayFormat = ',0.#0'
    end
    object IBrwSrctotal: TFloatField
      DefaultExpression = '0'
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
  inherited zIBrwSrc: TZUpdateSQL
    Left = 120
    Top = 200
  end
  object ZUpdateSQL1: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM fin_receber'
      'WHERE'
      '  recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO fin_receber'
      
        '  (natureza, id_cli, docto, emissao, vencimento, vencimento_real' +
        ', baixa,'
      
        '   valor, valor_baixado, obs, cc, historico, recno, juros, multa' +
        ', descto)'
      'VALUES'
      
        '  (:natureza, :id_cli, :docto, :emissao, :vencimento, :venciment' +
        'o_real, :baixa, '
      
        '   :valor, :valor_baixado, :obs, :cc, :historico, :recno, :juros' +
        ', :multa, :descto)')
    ModifySQL.Strings = (
      'UPDATE fin_receber SET'
      '  natureza = :natureza,'
      '  id_cli = :id_cli,'
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
      '  recno = :OLD_recno')
    UseSequenceFieldForRefreshSQL = False
    Left = 80
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'natureza'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_cli'
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
    SequenceName = 'fin_receber_recno_seq'
    Left = 24
    Top = 192
  end
  object dsContatos: TDataSource
    AutoEdit = False
    DataSet = qContatos
    Left = 184
    Top = 120
  end
  object qContatos: TZQuery
    Connection = DM.Design
    UpdateObject = zContatos
    AfterInsert = qContatosAfterInsert
    SQL.Strings = (
      
        'select con.cliente, con.nome, con.funcao, con.telefone, con.celu' +
        'lar, '
      
        '       con.email, con.contato_nextel, con.contato_nextelcel, con' +
        '.recno,'
      '       con.item, cli.empresa'
      '  from tbclientes_contatos con'
      '       join tbclientes cli'
      '         on cli.codigo = con.cliente'
      ' where con.cliente = :cliente')
    Params = <
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end>
    Sequence = sContatos
    SequenceField = 'recno'
    Left = 152
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end>
    object qContatoscliente: TIntegerField
      FieldName = 'cliente'
      Required = True
      Visible = False
    end
    object qContatosrecno: TIntegerField
      FieldName = 'recno'
      Required = True
      Visible = False
    end
    object qContatosnome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 20
      FieldName = 'nome'
      Size = 60
    end
    object qContatosfuncao: TStringField
      DisplayLabel = 'Fun'#231#227'o'
      DisplayWidth = 15
      FieldName = 'funcao'
      Size = 54
    end
    object qContatostelefone: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 15
      FieldName = 'telefone'
      Size = 100
    end
    object qContatoscelular: TStringField
      DisplayLabel = 'Celular'
      DisplayWidth = 15
      FieldName = 'celular'
      Size = 100
    end
    object qContatosemail: TStringField
      DisplayLabel = 'Email'
      DisplayWidth = 30
      FieldName = 'email'
      Size = 100
    end
    object qContatoscontato_nextel: TStringField
      DisplayLabel = 'Nextel'
      DisplayWidth = 15
      FieldName = 'contato_nextel'
      Size = 25
    end
    object qContatoscontato_nextelcel: TStringField
      DisplayLabel = 'Nextel Cel.'
      DisplayWidth = 15
      FieldName = 'contato_nextelcel'
      Size = 25
    end
    object qContatositem: TIntegerField
      FieldName = 'item'
      Visible = False
    end
    object qContatosempresa: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 25
      FieldName = 'empresa'
      Visible = False
      Size = 100
    end
  end
  object sContatos: TZSequence
    Connection = DM.Design
    SequenceName = 'public.tbclientes_contatos_recno_seq'
    Left = 80
    Top = 120
  end
  object zContatos: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM tbclientes_contatos'
      'WHERE'
      '  tbclientes_contatos.cliente = :OLD_cliente AND'
      '  tbclientes_contatos.item = :OLD_item')
    InsertSQL.Strings = (
      'INSERT INTO tbclientes_contatos'
      
        '  (cliente, nome, funcao, telefone, celular, email, recno, conta' +
        'to_nextel, '
      '   contato_nextelcel)'
      'VALUES'
      
        '  (:cliente, :nome, :funcao, :telefone, :celular, :email, :recno' +
        ', :contato_nextel, '
      '   :contato_nextelcel)')
    ModifySQL.Strings = (
      'UPDATE tbclientes_contatos SET'
      '  cliente = :cliente,'
      '  nome = :nome,'
      '  funcao = :funcao,'
      '  telefone = :telefone,'
      '  celular = :celular,'
      '  email = :email,'
      '  recno = :recno,'
      '  contato_nextel = :contato_nextel,'
      '  contato_nextelcel = :contato_nextelcel'
      'WHERE'
      '  tbclientes_contatos.cliente = :OLD_cliente AND'
      '  tbclientes_contatos.item = :OLD_item')
    UseSequenceFieldForRefreshSQL = False
    Left = 120
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nome'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'funcao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'telefone'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'celular'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'email'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contato_nextel'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contato_nextelcel'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_item'
        ParamType = ptUnknown
      end>
  end
end
