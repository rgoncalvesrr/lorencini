inherited Contratos: TContratos
  Caption = 'Contratos'
  ClientHeight = 614
  ClientWidth = 1075
  ExplicitWidth = 1091
  ExplicitHeight = 653
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 587
    Width = 1069
    ExplicitTop = 587
    ExplicitWidth = 1338
  end
  inherited Panel1: TPanel
    Width = 1075
    ExplicitWidth = 1344
    inherited pctlFind: TPageControl
      Width = 1065
      ExplicitWidth = 1334
      inherited tsQuery: TTabSheet
        ExplicitLeft = 2
        ExplicitTop = 7
        ExplicitWidth = 1057
        ExplicitHeight = 75
        inherited BitBtn2: TBitBtn
          Left = 956
          TabOrder = 6
          ExplicitLeft = 956
          ExplicitTop = 11
        end
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 128
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitLeft = -27
          ExplicitTop = -16
          object Label1: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 122
            Height = 15
            Align = alTop
            Caption = 'Status'
            ExplicitWidth = 32
          end
          object cbStatus: TComboBox
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 122
            Height = 23
            Align = alTop
            Style = csDropDownList
            ItemHeight = 15
            ItemIndex = 2
            TabOrder = 0
            Text = 'Vigentes'
            OnChange = cbStatusChange
            Items.Strings = (
              'Todos'
              'Elabora'#231#227'o'
              'Vigentes'
              'Encerrado')
          end
        end
        object Panel5: TPanel
          Left = 128
          Top = 0
          Width = 161
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitLeft = 0
          object Label3: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 155
            Height = 15
            Align = alTop
            Caption = 'Contrato'
            ExplicitWidth = 47
          end
          object edContrato: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 155
            Height = 23
            Align = alTop
            CharCase = ecUpperCase
            TabOrder = 0
            OnChange = edContratoChange
          end
        end
        object Panel3: TPanel
          Left = 289
          Top = 0
          Width = 92
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          ExplicitLeft = 113
          object Label4: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 86
            Height = 15
            Align = alTop
            Caption = 'Cliente'
            ExplicitWidth = 37
          end
          object edCodigo: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 86
            Height = 23
            Align = alTop
            DecimalPlaceRound = True
            DecimalPlaces = 0
            DisplayFormat = ',0'
            ShowButton = False
            TabOrder = 0
            ZeroEmpty = False
            DecimalPlacesAlwaysShown = False
            OnChange = edContratoChange
          end
        end
        object Panel4: TPanel
          Left = 381
          Top = 0
          Width = 124
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 3
          ExplicitLeft = 205
          object Label5: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 118
            Height = 15
            Align = alTop
            Caption = 'CNPJ'
            ExplicitWidth = 27
          end
          object edCNPJ: TMaskEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 118
            Height = 23
            Align = alTop
            EditMask = '99.999.999/9999-99;0;'
            MaxLength = 18
            TabOrder = 0
            OnChange = edContratoChange
          end
        end
        object Panel7: TPanel
          Left = 505
          Top = 0
          Width = 124
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 4
          ExplicitLeft = 329
          object Label6: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 118
            Height = 15
            Align = alTop
            Caption = 'CPF'
            ExplicitWidth = 21
          end
          object edCPF: TMaskEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 118
            Height = 23
            Align = alTop
            EditMask = '999.999.999-99;0;'
            MaxLength = 14
            TabOrder = 0
            OnChange = edContratoChange
          end
        end
        object Panel8: TPanel
          Left = 629
          Top = 0
          Width = 212
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 5
          ExplicitLeft = 453
          object Label7: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 206
            Height = 15
            Align = alTop
            Caption = 'Nome Fantasia'
            ExplicitWidth = 79
          end
          object edEmpresa: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 206
            Height = 23
            Align = alTop
            TabOrder = 0
            OnChange = edContratoChange
          end
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1326
        ExplicitHeight = 75
      end
    end
  end
  inherited Panel2: TPanel
    Width = 1075
    Height = 455
    ExplicitWidth = 1344
    ExplicitHeight = 455
    inherited PageControl1: TPageControl
      Width = 1069
      Height = 449
      ActivePage = TabSheet3
      Images = Resources.medium_n
      ExplicitWidth = 1338
      ExplicitHeight = 449
      inherited TabSheet1: TTabSheet
        Caption = 'Todos'
        ImageIndex = -1
        ExplicitLeft = 4
        ExplicitTop = 33
        ExplicitWidth = 1330
        ExplicitHeight = 412
        inherited DBGrid1: TDBGrid
          Width = 1055
          Height = 406
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Elabora'#231#227'o'
        ImageIndex = 215
        ExplicitWidth = 1330
      end
      object TabSheet3: TTabSheet
        Caption = 'Vigentes'
        ImageIndex = 208
        ExplicitWidth = 1330
      end
      object TabSheet4: TTabSheet
        Caption = 'Encerrados'
        ImageIndex = 209
        ExplicitWidth = 1330
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Width = 1069
    ExplicitWidth = 1069
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
    Left = 288
    Top = 88
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    AfterScroll = IBrwSrcAfterScroll
    AfterInsert = IBrwSrcAfterInsert
    SQL.Strings = (
      'select '
      
        #9'co.contrato, co.status, co.emissao, co.inicio, co.termino, co.v' +
        'alor, co.valor_coleta,'
      
        #9'co.prazo_rec, co.email, co.transporte, co.coleta, co.obs, co.cl' +
        'iente, cli.empresa,'
      
        #9'cli.nome_chave, cli.cnpj, cli.cpf, cli.email, cli.cidade, cli.e' +
        'stado, cli.telefone,'
      '  co.recno  '
      'from '
      #9'contratos co'
      'join'#9
      #9'tbclientes cli on'
      #9'cli.codigo = co.cliente'
      'where'
      '  1 = 1  ')
    Sequence = sBrwSrc
    SequenceField = 'recno'
    Left = 208
    Top = 88
    object IBrwSrcstatus: TIntegerField
      DisplayLabel = ' '
      FieldName = 'status'
      Required = True
      OnGetText = IBrwSrcstatusGetText
      OnSetText = IBrwSrcstatusSetText
    end
    object IBrwSrccontrato: TStringField
      DisplayLabel = 'Contrato'
      FieldName = 'contrato'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IBrwSrcemissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'emissao'
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object IBrwSrcinicio: TDateField
      DisplayLabel = 'In'#237'cio'
      FieldName = 'inicio'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object IBrwSrctermino: TDateField
      DisplayLabel = 'T'#233'rmino'
      FieldName = 'termino'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object IBrwSrcvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcvalor_coleta: TFloatField
      DisplayLabel = 'Custo Coleta'
      FieldName = 'valor_coleta'
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcprazo_rec: TIntegerField
      DisplayLabel = 'Recebimento'
      FieldName = 'prazo_rec'
      Required = True
      DisplayFormat = '00 dia(s)'
    end
    object IBrwSrccoleta: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Coleta'
      FieldName = 'coleta'
      Required = True
      OnGetText = IBrwSrctransporteGetText
      OnSetText = IBrwSrctransporteSetText
    end
    object IBrwSrctransporte: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Transporte'
      FieldName = 'transporte'
      Required = True
      OnGetText = IBrwSrctransporteGetText
      OnSetText = IBrwSrctransporteSetText
    end
    object IBrwSrcemail: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'email'
      Visible = False
      Size = 150
    end
    object IBrwSrcobs: TMemoField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'obs'
      Visible = False
      BlobType = ftMemo
    end
    object IBrwSrccliente: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'cliente'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBrwSrcempresa: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'empresa'
      Visible = False
      Size = 100
    end
    object IBrwSrcnome_chave: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'nome_chave'
      Size = 45
    end
    object IBrwSrccnpj: TStringField
      DisplayLabel = 'C.N.P.J.'
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object IBrwSrccpf: TStringField
      FieldName = 'cpf'
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object IBrwSrcemail_1: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'email_1'
      Visible = False
      Size = 100
    end
    object IBrwSrccidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cidade'
      Visible = False
      Size = 100
    end
    object IBrwSrcestado: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'estado'
      Visible = False
      Size = 2
    end
    object IBrwSrctelefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      Visible = False
      Size = 100
    end
    object IBrwSrcrecno: TIntegerField
      FieldName = 'recno'
      Required = True
      Visible = False
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM contratos'
      'WHERE'
      '  contratos.cliente = :OLD_cliente AND'
      
        '  ((contratos.contrato IS NULL AND :OLD_contrato IS NULL) OR (co' +
        'ntratos.contrato = :OLD_contrato))')
    InsertSQL.Strings = (
      'INSERT INTO contratos'
      
        '  (cliente, contrato, status, inicio, termino, valor, valor_cole' +
        'ta, '
      '   prazo_rec, email, transporte, coleta, obs, recno)'
      'VALUES'
      
        '  (:cliente, :contrato, :status, :inicio, :termino, :valor, :val' +
        'or_coleta, '
      '   :prazo_rec, :email, :transporte, :coleta, :obs, :recno)')
    ModifySQL.Strings = (
      'UPDATE contratos SET'
      '  status = :status,'
      '  inicio = :inicio,'
      '  termino = :termino,'
      '  valor = :valor,'
      '  valor_coleta = :valor_coleta,'
      '  prazo_rec = :prazo_rec,'
      '  email = :email,'
      '  transporte = :transporte,'
      '  coleta = :coleta,'
      '  obs = :obs'
      'WHERE'
      '  contratos.cliente = :OLD_cliente AND'
      '  contratos.contrato = :OLD_contrato')
    UseSequenceFieldForRefreshSQL = True
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'status'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'inicio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'termino'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'valor_coleta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prazo_rec'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'email'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'transporte'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'coleta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'obs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end>
  end
  object sBrwSrc: TZSequence
    Connection = DM.Design
    SequenceName = 'public.contatos_recno_seq'
    Left = 96
    Top = 88
  end
  object qContatos: TZQuery
    Connection = DM.Design
    UpdateObject = uContatos
    SQL.Strings = (
      'select '
      
        #9'cc.cliente, cc.contrato, cc.contato, cc.status, cc.responsavel,' +
        ' cc.recno,'
      
        #9'co.nome, co.telefone, co.email, co.contato_comercial, co.contat' +
        'o_tecnico,'
      #9'co.contato_financeiro '
      'from'
      #9'contratos_contatos cc'
      'join'
      #9'clientes_contatos co on'
      #9'co.cliente = cc.cliente and'
      #9'co.contato = cc.contato '
      'where'
      #9'cc.cliente = :cliente and'
      #9'cc.contrato = :contrato')
    Params = <
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end>
    Sequence = sContatos
    SequenceField = 'recno'
    Left = 208
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end>
    object qContatoscliente: TIntegerField
      FieldName = 'cliente'
      Required = True
      Visible = False
    end
    object qContatoscontrato: TStringField
      FieldName = 'contrato'
      Visible = False
    end
    object qContatoscontato: TIntegerField
      FieldName = 'contato'
      Required = True
      Visible = False
    end
    object qContatosstatus: TSmallintField
      DisplayLabel = ' '
      FieldName = 'status'
      Required = True
    end
    object qContatosnome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 45
      FieldName = 'nome'
      Size = 150
    end
    object qContatosresponsavel: TBooleanField
      DisplayLabel = 'Respons'#225'vel'
      FieldName = 'responsavel'
      Required = True
    end
    object qContatoscontato_comercial: TBooleanField
      DisplayLabel = 'Comercial'
      FieldName = 'contato_comercial'
    end
    object qContatoscontato_tecnico: TBooleanField
      DisplayLabel = 'T'#233'cnico'
      FieldName = 'contato_tecnico'
    end
    object qContatoscontato_financeiro: TBooleanField
      DisplayLabel = 'Financeiro'
      FieldName = 'contato_financeiro'
    end
    object qContatostelefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      Size = 25
    end
    object qContatosemail: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'email'
      Size = 150
    end
    object qContatosrecno: TIntegerField
      FieldName = 'recno'
      Required = True
      Visible = False
    end
  end
  object uContatos: TZUpdateSQL
    UseSequenceFieldForRefreshSQL = False
    Left = 152
    Top = 160
  end
  object sContatos: TZSequence
    Connection = DM.Design
    SequenceName = 'public.contratos_contatos_recno_seq'
    Left = 96
    Top = 160
  end
  object dsContatos: TDataSource
    AutoEdit = False
    DataSet = qContatos
    Left = 272
    Top = 160
  end
  object qServicos: TZQuery
    Connection = DM.Design
    UpdateObject = uServicos
    SQL.Strings = (
      'select '
      
        #9'cs.cliente, cs.contrato, cs.servico, cs.qtd, cs.saldo, cs.unita' +
        'rio,  '
      #9's.descri, s.consumo, s.vidraria, r.descri, cs.recno '
      'from'
      #9'contratos_serv cs'
      'join'
      #9'servicos s on'
      #9's.codserv = cs.servico '
      'join'
      #9'labtipo_recipiente r on'
      #9'r.recno = s.vidraria '
      'where'
      #9'cs.cliente = :cliente and'
      #9'cs.contrato = :contrato')
    Params = <
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end>
    Sequence = sServicos
    SequenceField = 'recno'
    Left = 208
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end>
    object qServicoscliente: TIntegerField
      FieldName = 'cliente'
      Required = True
      Visible = False
    end
    object qServicoscontrato: TStringField
      FieldName = 'contrato'
      Visible = False
    end
    object qServicosservico: TIntegerField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'servico'
      Required = True
    end
    object qServicosdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Required = True
      Size = 80
    end
    object qServicosqtd: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'qtd'
      DisplayFormat = ',0.#0'
    end
    object qServicossaldo: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'saldo'
      DisplayFormat = ',0.#0'
    end
    object qServicosunitario: TFloatField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'unitario'
      DisplayFormat = ',0.#0'
    end
    object qServicosconsumo: TFloatField
      DisplayLabel = 'Consumo'
      FieldName = 'consumo'
    end
    object qServicosvidraria: TIntegerField
      FieldName = 'vidraria'
      Visible = False
    end
    object qServicosdescri_1: TStringField
      DisplayLabel = 'Recipiente'
      FieldName = 'descri_1'
      Size = 60
    end
    object qServicosrecno: TIntegerField
      FieldName = 'recno'
      Required = True
      Visible = False
    end
  end
  object uServicos: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM contratos_serv'
      'WHERE'
      '  contratos_serv.cliente = :OLD_cliente AND'
      
        '  ((contratos_serv.contrato IS NULL AND :OLD_contrato IS NULL) O' +
        'R (contratos_serv.contrato = :OLD_contrato)) AND'
      '  contratos_serv.servico = :OLD_servico')
    InsertSQL.Strings = (
      'INSERT INTO contratos_serv'
      '  (cliente, contrato, servico, qtd, saldo, unitario, recno)'
      'VALUES'
      
        '  (:cliente, :contrato, :servico, :qtd, :saldo, :unitario, :recn' +
        'o)')
    ModifySQL.Strings = (
      'UPDATE contratos_serv SET'
      '  cliente = :cliente,'
      '  contrato = :contrato,'
      '  servico = :servico,'
      '  qtd = :qtd,'
      '  saldo = :saldo,'
      '  unitario = :unitario,'
      '  recno = :recno'
      'WHERE'
      '  contratos_serv.cliente = :OLD_cliente AND'
      
        '  ((contratos_serv.contrato IS NULL AND :OLD_contrato IS NULL) O' +
        'R (contratos_serv.contrato = :OLD_contrato)) AND'
      '  contratos_serv.servico = :OLD_servico')
    UseSequenceFieldForRefreshSQL = False
    Left = 152
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'servico'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'qtd'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'saldo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'unitario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_servico'
        ParamType = ptUnknown
      end>
  end
  object sServicos: TZSequence
    Connection = DM.Design
    SequenceName = 'public.contratos_serv_recno_seq'
    Left = 96
    Top = 208
  end
  object dsServicos: TDataSource
    AutoEdit = False
    DataSet = qServicos
    Left = 264
    Top = 208
  end
end
