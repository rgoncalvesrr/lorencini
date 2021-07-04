inherited Receber: TReceber
  Caption = 'Contas a Receber'
  ClientHeight = 754
  ClientWidth = 1075
  Constraints.MinWidth = 696
  ExplicitWidth = 1091
  ExplicitHeight = 793
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 727
    Width = 1069
    ExplicitTop = 727
    ExplicitWidth = 1069
  end
  inherited Panel1: TPanel
    Width = 1075
    ExplicitWidth = 1075
    inherited pctlFind: TPageControl
      Width = 1065
      ExplicitWidth = 1065
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1057
        ExplicitHeight = 75
        inherited BitBtn2: TBitBtn
          Left = 956
          ExplicitLeft = 956
        end
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 101
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Label1: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 95
            Height = 15
            Align = alTop
            Caption = 'Status'
            ExplicitWidth = 32
          end
          object cbStatus: TComboBox
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 95
            Height = 23
            Align = alTop
            Style = csDropDownList
            ItemHeight = 15
            ItemIndex = 1
            TabOrder = 0
            Text = 'Em Aberto'
            OnChange = cbStatusChange
            Items.Strings = (
              'Todos'
              'Em Aberto'
              'Recebidos'
              'Em Atraso')
          end
        end
        object Panel4: TPanel
          Left = 101
          Top = 0
          Width = 163
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object Label3: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 157
            Height = 15
            Align = alTop
            Caption = 'Vencimento Real'
            ExplicitWidth = 88
          end
          object Label4: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 53
            Width = 157
            Height = 15
            Align = alTop
            ExplicitWidth = 3
          end
          inline FrameData1: TFrameData
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 157
            Height = 23
            Align = alTop
            AutoSize = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Pitch = fpVariable
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            ExplicitLeft = 3
            ExplicitTop = 24
            ExplicitWidth = 157
            inherited ComboBox1: TComboBox
              Width = 157
              ItemIndex = 2
              Text = 'Trimestralmente'
              ExplicitWidth = 157
            end
            inherited CCalendarDiff1: TCCalendarDiff
              Date = 44305.905535405090000000
              DisplayInterval = Label4
              OnChange = FrameData1CCalendarDiff1Change
            end
          end
        end
        object Panel5: TPanel
          Left = 264
          Top = 0
          Width = 375
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 3
          object Label18: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 369
            Height = 15
            Align = alTop
            Caption = 'Vizualizar cliente:'
            Transparent = True
            ExplicitWidth = 90
          end
          object ComboBox1: TComboBox
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 369
            Height = 23
            Align = alTop
            DropDownCount = 30
            ItemHeight = 15
            TabOrder = 0
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
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1057
        ExplicitHeight = 75
      end
    end
  end
  inherited Panel2: TPanel
    Width = 1075
    Height = 595
    ExplicitWidth = 1075
    ExplicitHeight = 595
    inherited PageControl1: TPageControl
      Width = 1069
      Height = 589
      ActivePage = TabSheet2
      Images = Resources.medium_n
      ExplicitWidth = 1069
      ExplicitHeight = 589
      inherited TabSheet1: TTabSheet
        Caption = 'Todos os T'#237'tulos'
        ImageIndex = -1
        ExplicitLeft = 4
        ExplicitTop = 33
        ExplicitWidth = 1061
        ExplicitHeight = 552
        inherited DBGrid1: TDBGrid
          Width = 1055
          Height = 546
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
    Width = 1069
    ExplicitWidth = 1069
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
    Left = 264
    Top = 200
  end
  inherited pmRel: TPopupMenu
    Left = 312
    Top = 200
  end
  inherited pmOrder: TPopupMenu
    Left = 362
    Top = 198
  end
  inherited alRunTime: TActionList
    Left = 418
    Top = 198
  end
  inherited DataSource1: TDataSource
    Left = 264
    Top = 256
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SortedFields = 'vencimento_real'
    AfterScroll = IBrwSrcAfterScroll
    OnCalcFields = IBrwSrcCalcFields
    UpdateObject = ZUpdateSQL1
    AfterInsert = IBrwSrcAfterInsert
    SQL.Strings = (
      
        'select a.recno, a.natureza, c.descri, c.tipo, a.id_cli, b.nome_c' +
        'have, b.cnpj, b.telefone, a.docto, a.criacao, a.emissao,'
      
        '       a.vencimento, a.vencimento_real, a.baixa, a.valor, a.valo' +
        'r_baixado, a.obs, a.cc, a.historico, a.juros, a.multa,'
      '       a.descto'
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
    Top = 256
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
  inherited pmOpcao: TPopupMenu
    Left = 480
    Top = 200
  end
  inherited zIBrwSrc: TZUpdateSQL
    Left = 136
    Top = 256
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
    Left = 136
    Top = 352
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
    Left = 64
    Top = 256
  end
  object sContatos: TZSequence
    Connection = DM.Design
    SequenceName = 'public.fin_receber_contatos_recno_seq'
    Left = 64
    Top = 304
  end
  object uContatos: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM fin_receber_contatos'
      'WHERE'
      '  fin_receber_contatos.titulo = :OLD_titulo AND'
      '  fin_receber_contatos.cliente = :OLD_cliente AND'
      '  fin_receber_contatos.contato = :OLD_contato')
    InsertSQL.Strings = (
      'INSERT INTO fin_receber_contatos'
      '  (titulo, cliente, contato, recno)'
      'VALUES'
      '  (:titulo, :cliente, :contato, :recno)')
    ModifySQL.Strings = (
      'UPDATE fin_receber_contatos SET'
      '  titulo = :titulo,'
      '  cliente = :cliente,'
      '  contato = :contato,'
      '  recno = :recno'
      'WHERE'
      '  fin_receber_contatos.titulo = :OLD_titulo AND'
      '  fin_receber_contatos.cliente = :OLD_cliente AND'
      '  fin_receber_contatos.contato = :OLD_contato')
    UseSequenceFieldForRefreshSQL = False
    Left = 136
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'titulo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_titulo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_contato'
        ParamType = ptUnknown
      end>
  end
  object qContatos: TZQuery
    Connection = DM.Design
    SortedFields = 'nome'
    UpdateObject = uContatos
    SQL.Strings = (
      
        'select co.titulo, co.contato, co.cliente, c.nome, c.celular, c.t' +
        'elefone, c.ramal, c.email, c.padrao, co.recno'
      '  from fin_receber_contatos co'
      '      join clientes_contatos  c'
      '        on c.cliente = co.cliente'
      '       and c.contato = co.contato'
      ' where co.titulo = :titulo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'titulo'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    IndexFieldNames = 'nome Asc'
    Sequence = sContatos
    SequenceField = 'recno'
    Left = 200
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'titulo'
        ParamType = ptUnknown
      end>
    object qContatostitulo: TIntegerField
      FieldName = 'titulo'
      Required = True
      Visible = False
    end
    object qContatoscliente: TIntegerField
      FieldName = 'cliente'
      Visible = False
    end
    object qContatospadrao: TBooleanField
      DisplayLabel = 'Padr'#227'o'
      FieldName = 'padrao'
    end
    object qContatoscontato: TIntegerField
      DisplayLabel = 'Contato'
      FieldName = 'contato'
      Required = True
    end
    object qContatosnome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 35
      FieldName = 'nome'
      Size = 150
    end
    object qContatoscelular: TStringField
      DisplayLabel = 'Celular'
      DisplayWidth = 15
      FieldName = 'celular'
      EditMask = '(99) 9.9999-9999;0;'
      Size = 25
    end
    object qContatostelefone: TStringField
      DisplayLabel = 'Fixo'
      DisplayWidth = 15
      FieldName = 'telefone'
      EditMask = '(99) 9999-9999;0;'
      Size = 25
    end
    object qContatosramal: TStringField
      DisplayLabel = 'Ramal'
      FieldName = 'ramal'
      Size = 6
    end
    object qContatosemail: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'email'
      Size = 150
    end
    object qContatosrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
    end
  end
  object dsContatos: TDataSource
    AutoEdit = False
    DataSet = qContatos
    Left = 264
    Top = 304
  end
end
