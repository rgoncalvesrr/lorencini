inherited Ped: TPed
  Caption = 'Pedidos'
  ClientHeight = 651
  ClientWidth = 1119
  Constraints.MinWidth = 851
  ExplicitWidth = 1135
  ExplicitHeight = 690
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 624
    Width = 1113
    ExplicitTop = 624
    ExplicitWidth = 1113
  end
  inherited Panel1: TPanel
    Width = 1119
    ExplicitWidth = 1119
    inherited pctlFind: TPageControl
      Width = 1109
      ExplicitWidth = 1109
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1101
        ExplicitHeight = 75
        object Panel5: TPanel [0]
          Left = 0
          Top = 0
          Width = 54
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Label3: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 48
            Height = 15
            Align = alTop
            Caption = 'Pedido'
            ExplicitWidth = 37
          end
          object edPedido: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 48
            Height = 23
            Align = alTop
            DecimalPlaces = 0
            DisplayFormat = '#'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
            OnChange = ComboBox1Change
          end
        end
        inherited BitBtn2: TBitBtn
          Left = 1000
          ExplicitLeft = 1000
        end
        object Panel6: TPanel
          Left = 54
          Top = 0
          Width = 234
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object Label1: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 228
            Height = 15
            Align = alTop
            Caption = 'Status'
            ExplicitWidth = 32
          end
          object cbStatus: TComboBox
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 228
            Height = 23
            Align = alTop
            Style = csDropDownList
            ItemHeight = 15
            TabOrder = 0
            OnChange = cbStatusChange
            Items.Strings = (
              'Todos'
              'Em Digita'#231#227'o'
              'Aprova'#231#227'o de Cr'#233'dito'
              'Aguardando Autoriza'#231#227'o'
              'Em Remessa'
              'Aguardando Amostras'
              'Executando'
              'Executado'
              'Cancelado')
          end
        end
        object Panel7: TPanel
          Left = 288
          Top = 0
          Width = 234
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 3
          object Label18: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 228
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
            Width = 228
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
        object Panel8: TPanel
          Left = 522
          Top = 0
          Width = 191
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 4
          object Label5: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 185
            Height = 15
            Align = alTop
            Caption = 'Emiss'#227'o'
            Transparent = True
            ExplicitWidth = 43
          end
          object Label6: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 53
            Width = 185
            Height = 15
            Align = alTop
            Caption = '01/04/2021 a 30/04/2021'
            Transparent = True
            ExplicitWidth = 128
          end
          inline FrameData1: TFrameData
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 185
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
            ExplicitWidth = 185
            inherited ComboBox1: TComboBox
              Width = 185
              Enabled = False
              ItemIndex = 2
              Text = 'Trimestralmente'
              ExplicitWidth = 185
            end
            inherited CCalendarDiff1: TCCalendarDiff
              Interval = diMonthly
              Date = 44287.088349444440000000
              DisplayInterval = Label6
              OnChange = FrameData1CCalendarDiff1Change
            end
          end
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1101
        ExplicitHeight = 75
      end
    end
  end
  inherited Panel2: TPanel
    Width = 1119
    Height = 492
    ExplicitWidth = 1119
    ExplicitHeight = 492
    inherited PageControl1: TPageControl
      Width = 1113
      Height = 486
      ActivePage = TabSheet2
      Images = Resources.medium_n
      ExplicitWidth = 1113
      ExplicitHeight = 486
      inherited TabSheet1: TTabSheet
        Caption = 'Todos'
        ImageIndex = -1
        ExplicitLeft = 4
        ExplicitTop = 33
        ExplicitWidth = 1105
        ExplicitHeight = 449
        inherited DBGrid1: TDBGrid
          Width = 1099
          Height = 443
          OnDrawColumnCell = DBGrid1DrawColumnCell
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Em Digita'#231#227'o'
        ImageIndex = 213
        object ControlBar1: TControlBar
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1099
          Height = 40
          Align = alTop
          AutoSize = True
          BevelEdges = []
          BevelKind = bkNone
          BorderWidth = 1
          DrawingStyle = dsGradient
          TabOrder = 0
          object ToolBar2: TToolBar
            AlignWithMargins = True
            Left = 11
            Top = 2
            Width = 962
            Height = 34
            AutoSize = True
            BorderWidth = 1
            ButtonHeight = 30
            ButtonWidth = 145
            Caption = 'ToolBar1'
            DisabledImages = Resources.medium_d
            DrawingStyle = dsGradient
            HotImages = Resources.medium_h
            Images = Resources.medium_n
            List = True
            ParentShowHint = False
            AllowTextButtons = True
            ShowHint = True
            TabOrder = 0
            object ToolButton31: TToolButton
              Left = 0
              Top = 0
              Action = actPedLiberar
              Style = tbsTextButton
            end
            object ToolButton13: TToolButton
              Left = 75
              Top = 0
              Action = actPedAprovCred
              Style = tbsTextButton
            end
            object ToolButton32: TToolButton
              Left = 198
              Top = 0
              Action = actPedEmitir
              Style = tbsTextButton
            end
            object ToolButton33: TToolButton
              Left = 347
              Top = 0
              Action = actPedProduzir
              Style = tbsTextButton
            end
            object ToolButton12: TToolButton
              Left = 439
              Top = 0
              Action = actPedCancelar
              Style = tbsTextButton
            end
          end
        end
      end
      object TabSheet7: TTabSheet
        Caption = 'Aprova'#231#227'o de Cr'#233'dito'
        ImageIndex = 214
      end
      object TabSheet3: TTabSheet
        Caption = 'Autoriza'#231#227'o para Execu'#231#227'o'
        ImageIndex = 210
      end
      object TabSheet8: TTabSheet
        Caption = 'Em Remessa'
        ImageIndex = 211
      end
      object TabSheet9: TTabSheet
        Caption = 'Aguardando Amostra'
        ImageIndex = 212
      end
      object TabSheet4: TTabSheet
        Caption = 'Em Execu'#231#227'o'
        ImageIndex = 205
      end
      object TabSheet5: TTabSheet
        Caption = 'Executado'
        ImageIndex = 208
      end
      object TabSheet10: TTabSheet
        Caption = 'Cancelados'
        ImageIndex = 204
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Width = 1113
    ExplicitWidth = 1113
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
      inherited ToolButton4: TToolButton
        Enabled = False
      end
      inherited tbOrder: TToolButton
        Enabled = False
        ExplicitWidth = 76
      end
      inherited tbReport: TToolButton
        ExplicitWidth = 32
      end
      inherited tbOpcao: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton11: TToolButton
        Enabled = False
      end
      inherited ToolButton10: TToolButton
        Enabled = False
        ExplicitWidth = 32
      end
    end
  end
  inherited alDef: TActionList
    Left = 224
    inherited actRGrid: TAction
      ShortCut = 49234
    end
    object actPedEmitir: TAction [19]
      Caption = 'Autorizar Execu'#231#227'o...'
      Enabled = False
      ImageIndex = 195
      OnExecute = actPedEmitirExecute
    end
    object actPedProduzir: TAction [20]
      Caption = 'Produzir...'
      Enabled = False
      ImageIndex = 196
      OnExecute = actPedProduzirExecute
    end
    object actPedLiberar: TAction [21]
      Caption = 'Liberar'
      Enabled = False
      ImageIndex = 279
      OnExecute = actPedLiberarExecute
    end
    object actPedCancelar: TAction [22]
      Caption = 'Cancelar'
      Enabled = False
      ImageIndex = 43
      OnExecute = actPedCancelarExecute
    end
    object actPedAprovCred: TAction [23]
      Caption = 'Aprovar Cr'#233'dito'
      Enabled = False
      ImageIndex = 118
      OnExecute = actPedAprovCredExecute
    end
  end
  inherited pmRel: TPopupMenu
    Left = 272
  end
  inherited pmOrder: TPopupMenu
    Left = 354
  end
  inherited alRunTime: TActionList
    Left = 418
    Top = 54
  end
  inherited DataSource1: TDataSource
    Left = 520
    Top = 216
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SortedFields = 'recno'
    AfterScroll = IBrwSrcAfterScroll
    OnCalcFields = IBrwSrcCalcFields
    AfterInsert = IBrwSrcAfterInsert
    SQL.Strings = (
      
        'select p.recno, p.codigo, p.criado, p.emitido, p.autorizado, p.a' +
        'provado, p.status, p.remessa, p.laboratorio,'
      
        '   p.obs, p.solicitante, p.solicitante_dep, p.condicaopg, p.pedi' +
        'do_cliente,    p.grupo, p.markup, p.correio, '
      
        '   m.vlmat, m.vlsrvvar, m.vlsrvfixo, m.vlmobra, m.vldespe, p.fre' +
        'te, p.frascos, p.seringas, p.envio, p.coleta, '
      
        '   p.destinatario, p.obs_remessa, p.cliente, p.lote_aprov, og.de' +
        'scri, og.reqsrv, og.reqmat, og.reqmo,'
      
        '   c.empresa, c.nome_chave, c.endereco, c.cep, c.bairro, c.cidad' +
        'e, c.estado, c.cnpj, c.cpf, c.telefone, c.email,'
      
        '   cl.empresa cliente_empresa, cl.nome_chave cliente_nome_chave,' +
        ' cl.cnpj cliente_cnpj, cl.cpf cliente_cpf, '
      
        '   cl.email cliente_email, cl.cidade cliente_cidade, cl.estado c' +
        'liente_estado, cl.telefone cliente_telefone,'
      '   p.dec_conf'
      '  from pedido p'
      '       join tbclientes c'
      '         on c.codigo = p.codigo'
      '       join tbclientes cl'
      '         on cl.codigo = p.cliente'
      '       left join markup m'
      '         on m.recno = p.markup'
      '       join orca_grupo og'
      '         on og.recno = p.grupo')
    IndexFieldNames = 'recno Asc'
    Sequence = sIBrwSrc
    SequenceField = 'recno'
    Left = 448
    Top = 216
    object IBrwSrcstatus: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = ' '
      FieldName = 'status'
      Required = True
      OnGetText = IBrwSrcstatusGetText
    end
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Pedido'
      FieldName = 'recno'
    end
    object IBrwSrclote_aprov: TIntegerField
      DisplayLabel = 'Aprova'#231#227'o'
      FieldName = 'lote_aprov'
      ReadOnly = True
    end
    object IBrwSrccriado: TDateTimeField
      DisplayLabel = 'Entrada'
      FieldName = 'criado'
      DisplayFormat = 'dd/mm/yyy hh:nn'
    end
    object IBrwSrcemitido: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'emitido'
      DisplayFormat = 'dd/mm/yyy hh:nn'
    end
    object IBrwSrcautorizado: TDateTimeField
      DisplayLabel = 'Autoriza'#231#227'o'
      FieldName = 'autorizado'
      DisplayFormat = 'dd/mm/yyy hh:nn'
    end
    object IBrwSrcremessa: TBooleanField
      DisplayLabel = 'Remessa?'
      FieldName = 'remessa'
    end
    object IBrwSrclaboratorio: TBooleanField
      DisplayLabel = 'Laborat'#243'rio?'
      FieldName = 'laboratorio'
    end
    object IBrwSrcaprovado: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Aprova'#231#227'o'
      FieldName = 'aprovado'
      OnGetText = IBrwSrcaprovadoGetText
      OnSetText = IBrwSrcaprovadoSetText
    end
    object IBrwSrcmarkup: TIntegerField
      FieldName = 'markup'
      Visible = False
    end
    object IBrwSrcvlmat: TFloatField
      DisplayLabel = 'Materiais'
      FieldName = 'vlmat'
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcvlsrvvar: TFloatField
      FieldName = 'vlsrvvar'
      Visible = False
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcvlsrvfixo: TFloatField
      FieldName = 'vlsrvfixo'
      Visible = False
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcvlmobra: TFloatField
      DisplayLabel = 'M'#227'o-de-Obra'
      FieldName = 'vlmobra'
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcvldespe: TFloatField
      DisplayLabel = 'Despesas'
      FieldName = 'vldespe'
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcvlsrv: TFloatField
      DisplayLabel = 'Servi'#231'os'
      FieldKind = fkCalculated
      FieldName = 'vlsrv'
      DisplayFormat = ',0.#0'
      Calculated = True
    end
    object IBrwSrcvltotal: TFloatField
      DisplayLabel = 'Total'
      FieldKind = fkCalculated
      FieldName = 'vltotal'
      DisplayFormat = ',0.#0'
      Calculated = True
    end
    object IBrwSrcobs: TMemoField
      DisplayLabel = 'Obs'
      FieldName = 'obs'
      Visible = False
      BlobType = ftMemo
    end
    object IBrwSrcsolicitante: TStringField
      DisplayLabel = 'Solicitante'
      DisplayWidth = 15
      FieldName = 'solicitante'
      Size = 60
    end
    object IBrwSrcsolicitante_dep: TStringField
      DisplayLabel = 'Departamento'
      DisplayWidth = 15
      FieldName = 'solicitante_dep'
      Size = 60
    end
    object IBrwSrccondicaopg: TStringField
      DisplayLabel = 'Cond. Pag.'
      FieldName = 'condicaopg'
      Visible = False
      Size = 15
    end
    object IBrwSrcpedido_cliente: TStringField
      DisplayLabel = 'Pedido Cliente'
      FieldName = 'pedido_cliente'
      Visible = False
      Size = 15
    end
    object IBrwSrccodigo: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'codigo'
      Required = True
    end
    object IBrwSrcempresa: TStringField
      DisplayLabel = 'Nome Empresarial'
      DisplayWidth = 25
      FieldName = 'empresa'
      Size = 100
    end
    object IBrwSrcnome_chave: TStringField
      DisplayLabel = 'Nome Curto'
      DisplayWidth = 25
      FieldName = 'nome_chave'
      Visible = False
      Size = 45
    end
    object IBrwSrcendereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      DisplayWidth = 30
      FieldName = 'endereco'
      Visible = False
      Size = 85
    end
    object IBrwSrccep: TStringField
      DisplayLabel = 'CEP'
      DisplayWidth = 9
      FieldName = 'cep'
      Visible = False
      EditMask = '99999-999;0;'
      Size = 100
    end
    object IBrwSrcbairro: TStringField
      DisplayLabel = 'Bairro'
      DisplayWidth = 20
      FieldName = 'bairro'
      Visible = False
      Size = 100
    end
    object IBrwSrccidade: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 20
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
    object IBrwSrctelefone: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 15
      FieldName = 'telefone'
      Size = 100
    end
    object IBrwSrcemail: TStringField
      DisplayLabel = 'EMail'
      DisplayWidth = 25
      FieldName = 'email'
      Size = 100
    end
    object IBrwSrcgrupo: TIntegerField
      FieldName = 'grupo'
      Visible = False
    end
    object IBrwSrcdescri: TStringField
      FieldName = 'descri'
      Required = True
      Visible = False
      Size = 60
    end
    object IBrwSrcreqsrv: TBooleanField
      FieldName = 'reqsrv'
      Visible = False
    end
    object IBrwSrcreqmat: TBooleanField
      FieldName = 'reqmat'
      Visible = False
    end
    object IBrwSrcreqmo: TBooleanField
      FieldName = 'reqmo'
      Visible = False
    end
    object IBrwSrcenvio: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Envio'
      FieldName = 'envio'
      OnGetText = IBrwSrcenvioGetText
      OnSetText = IBrwSrcenvioSetText
    end
    object IBrwSrccoleta: TIntegerField
      DisplayLabel = 'Coleta'
      FieldName = 'coleta'
    end
    object IBrwSrccorreio: TIntegerField
      FieldName = 'correio'
      Visible = False
    end
    object IBrwSrcfrascos: TIntegerField
      DisplayLabel = 'Frascos'
      FieldName = 'frascos'
    end
    object IBrwSrcseringas: TIntegerField
      DisplayLabel = 'Seringas'
      FieldName = 'seringas'
    end
    object IBrwSrcfrete: TFloatField
      DisplayLabel = 'Frete'
      FieldName = 'frete'
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcdestinatario: TStringField
      FieldName = 'destinatario'
      Visible = False
      Size = 120
    end
    object IBrwSrcobs_remessa: TMemoField
      FieldName = 'obs_remessa'
      Visible = False
      BlobType = ftMemo
    end
    object IBrwSrccliente: TIntegerField
      FieldName = 'cliente'
      Visible = False
    end
    object IBrwSrccliente_empresa: TStringField
      FieldName = 'cliente_empresa'
      Visible = False
      Size = 100
    end
    object IBrwSrccliente_nome_chave: TStringField
      FieldName = 'cliente_nome_chave'
      Visible = False
      Size = 45
    end
    object IBrwSrccliente_cnpj: TStringField
      FieldName = 'cliente_cnpj'
      Visible = False
      Size = 14
    end
    object IBrwSrccliente_cpf: TStringField
      FieldName = 'cliente_cpf'
      Visible = False
      Size = 11
    end
    object IBrwSrccliente_email: TStringField
      FieldName = 'cliente_email'
      Visible = False
      Size = 100
    end
    object IBrwSrccliente_cidade: TStringField
      FieldName = 'cliente_cidade'
      Visible = False
      Size = 100
    end
    object IBrwSrccliente_estado: TStringField
      FieldName = 'cliente_estado'
      Visible = False
      Size = 2
    end
    object IBrwSrccliente_telefone: TStringField
      FieldName = 'cliente_telefone'
      Visible = False
      Size = 100
    end
    object IBrwSrcdec_conf: TBooleanField
      DisplayLabel = 'Declara'#231#227'o de Conformnidade'
      FieldName = 'dec_conf'
      Required = True
      Visible = False
    end
  end
  inherited pmOpcao: TPopupMenu
    Left = 488
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM pedido'
      'WHERE'
      '  pedido.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO pedido'
      
        '  (recno,    codigo, criado, emitido, autorizado, aprovado, stat' +
        'us, obs, solicitante, solicitante_dep,'
      
        '   condicaopg, pedido_cliente, grupo, markup, correio, envio, co' +
        'leta, frascos, seringas, frete, remessa, destinatario,'
      '   obs_remessa, cliente, dec_conf)'
      'VALUES'
      
        '  (:recno, :codigo, :criado, :emitido, :autorizado, :aprovado, :' +
        'status, :obs, :solicitante, :solicitante_dep,'
      
        '   :condicaopg, :pedido_cliente, :grupo, :markup, :correio, :env' +
        'io, :coleta, :frascos, :seringas, :frete, :remessa,'
      '   :destinatario, :obs_remessa, :cliente, :dec_conf)')
    ModifySQL.Strings = (
      'UPDATE pedido SET'
      '  recno = :recno,'
      '  codigo = :codigo,'
      '  criado = :criado,'
      '  emitido = :emitido,'
      '  autorizado = :autorizado,'
      '  aprovado = :aprovado,'
      '  status = :status,'
      '  obs = :obs,'
      '  solicitante = :solicitante,'
      '  solicitante_dep = :solicitante_dep,'
      '  condicaopg = :condicaopg,'
      '  pedido_cliente = :pedido_cliente,'
      '  grupo = :grupo,'
      '  markup = :markup,'
      '  correio = :correio,'
      '  envio = :envio,'
      '  coleta = :coleta,'
      '  frascos = :frascos,'
      '  seringas = :seringas,'
      '  frete = :frete,'
      '  remessa = :remessa,'
      '  destinatario = :destinatario,'
      '  obs_remessa = :obs_remessa,'
      '  cliente = :cliente,'
      '  dec_conf = :dec_conf '
      'WHERE'
      '  pedido.recno = :OLD_recno')
    Left = 384
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'criado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emitido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'autorizado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'aprovado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'status'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'obs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'solicitante'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'solicitante_dep'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'condicaopg'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pedido_cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'grupo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'markup'
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
        Name = 'coleta'
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
        Name = 'frete'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'remessa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'destinatario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'obs_remessa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dec_conf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_recno'
        ParamType = ptUnknown
      end>
  end
  object dsAmostras: TDataSource
    AutoEdit = False
    DataSet = qAmostras
    Left = 840
    Top = 320
  end
  object qAmostras: TZQuery
    Connection = DM.Design
    SortedFields = 'recno'
    AfterScroll = qAmostrasAfterScroll
    OnCalcFields = qAmostrasCalcFields
    AfterInsert = qAmostrasAfterInsert
    SQL.Strings = (
      
        'select p.pedido, p.comodato_recno, p.tipo, c.imp_dh, c.imp_usr, ' +
        'u.name, p.recno, '
      
        '       po.nf, po.nf_serie, po.nf_emissao, po.nf_valor, e.volume,' +
        ' co.cotacao'
      '  from pedido_amostras p'
      '       join pedido pe'
      '         on pe.recno = p.pedido'
      '        and pe.labport_recno is not null'
      '       join comodato c'
      '         on c.recno = p.comodato_recno'
      '       join labprocxequip e'
      '         on e.comodato_recno = p.comodato_recno'
      '       left join labport po'
      '         on po.labproc_recno = e.labproc_recno'
      '       join labret lr'
      '         on lr.labport_recno = pe.labport_recno'
      '        and lr.comodato_recno = p.comodato_recno'
      '        and lr.status = 1'
      '       join sys_users u'
      '         on u.username = c.imp_usr'
      '       join vcotacomodato co'
      '         on co.comodato_recno = p.comodato_recno'
      ' where p.pedido = :pedido'
      'union all'
      
        'select p.pedido, p.comodato_recno, p.tipo, c.imp_dh, c.imp_usr, ' +
        'u.name, p.recno,'
      '       null, null, null, null, null, null'
      '  from pedido_amostras p'
      '       join pedido pe'
      '         on pe.recno = p.pedido'
      '        and pe.labport_recno is null'
      '       join comodato c'
      '         on c.recno = p.comodato_recno'
      '       left join sys_users u'
      '         on u.username = c.imp_usr'
      ' where p.pedido = :pedido')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pedido'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    IndexFieldNames = 'recno Asc'
    SequenceField = 'recno'
    Left = 720
    Top = 320
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pedido'
        ParamType = ptUnknown
      end>
    object qAmostraspedido: TIntegerField
      FieldName = 'pedido'
      Required = True
      Visible = False
    end
    object qAmostrascomodato_recno: TIntegerField
      DisplayLabel = 'Amostra'
      FieldName = 'comodato_recno'
      Required = True
    end
    object qAmostrascotacao: TIntegerField
      DisplayLabel = 'Cota'#231#227'o'
      FieldName = 'cotacao'
    end
    object qAmostrastipo: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Tipo'
      FieldName = 'tipo'
      Required = True
      OnGetText = qAmostrastipoGetText
      OnSetText = qAmostrastipoSetText
    end
    object qAmostrasimp_dh: TDateTimeField
      DisplayLabel = 'Impress'#227'o'
      FieldName = 'imp_dh'
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object qAmostrasimp_usr: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'imp_usr'
    end
    object qAmostrasname: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'name'
      Required = True
      Size = 40
    end
    object qAmostrasrecno: TIntegerField
      FieldName = 'recno'
      Visible = False
    end
    object qAmostrasnf: TIntegerField
      DisplayLabel = 'Nota'
      FieldName = 'nf'
    end
    object qAmostrasnf_serie: TIntegerField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'nf_serie'
    end
    object qAmostrasnf_emissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'nf_emissao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qAmostrasnf_valor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'nf_valor'
      DisplayFormat = ',0.#0'
    end
    object qAmostrasvolume: TIntegerField
      DisplayLabel = 'Volume'
      FieldName = 'volume'
    end
    object qAmostrasetiqueta: TStringField
      FieldKind = fkCalculated
      FieldName = 'etiqueta'
      Visible = False
      Size = 12
      Calculated = True
    end
  end
  object qAmostrasServ: TZQuery
    Connection = DM.Design
    UpdateObject = uAmostrasServ
    AfterInsert = qAmostrasServAfterInsert
    SQL.Strings = (
      
        'select p.pedido, p.comodato_recno, p.relato_recno, p.recno, r.co' +
        'dserv'
      '  from pedido_amostras_serv p'
      '       join labrel r'
      '         on r.recno = p.relato_recno'
      ' where p.pedido = :pedido'
      '   and p.comodato_recno = :comodato_recno')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'comodato_recno'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    Sequence = sAmostrasServ
    SequenceField = 'recno'
    Left = 720
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'comodato_recno'
        ParamType = ptUnknown
      end>
    object qAmostrasServpedido: TIntegerField
      FieldName = 'pedido'
    end
    object qAmostrasServcomodato_recno: TIntegerField
      FieldName = 'comodato_recno'
    end
    object qAmostrasServrelato_recno: TIntegerField
      FieldName = 'relato_recno'
    end
    object qAmostrasServrecno: TIntegerField
      FieldName = 'recno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qAmostrasServcodserv: TIntegerField
      FieldName = 'codserv'
      ReadOnly = True
    end
  end
  object dsAmostrasServ: TDataSource
    AutoEdit = False
    DataSet = qAmostrasServ
    Left = 840
    Top = 368
  end
  object qDesp: TZQuery
    Connection = DM.Design
    OnCalcFields = qDespCalcFields
    UpdateObject = uDesp
    AfterPost = qDespAfterPost
    AfterDelete = qDespAfterDelete
    SQL.Strings = (
      
        'select pd.pedido, pd.despesa, pd.recno, f.data, f.docto, f.histo' +
        'rico, f.valor * -1 valor'
      '  from pedido_desp pd'
      '       join fin_caixa f'
      '         on f.recno = pd.despesa'
      ' where pd.pedido = :pedido')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pedido'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    Left = 176
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pedido'
        ParamType = ptUnknown
      end>
    object qDesppedido: TIntegerField
      FieldName = 'pedido'
      Required = True
      Visible = False
    end
    object qDespdespesa: TIntegerField
      DisplayLabel = 'Despesa'
      FieldName = 'despesa'
      Required = True
    end
    object qDespdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'data'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qDespdocto: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'docto'
    end
    object qDesphistorico: TMemoField
      FieldName = 'historico'
      Required = True
      Visible = False
      BlobType = ftMemo
    end
    object qDesphistorico_desc: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldKind = fkCalculated
      FieldName = 'historico_desc'
      Size = 150
      Calculated = True
    end
    object qDespvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      ReadOnly = True
      DisplayFormat = ',0.#0'
    end
    object qDesprecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
      Required = True
    end
  end
  object dsDesp: TDataSource
    AutoEdit = False
    DataSet = qDesp
    Left = 232
    Top = 280
  end
  object sIBrwSrc: TZSequence
    Connection = DM.Design
    SequenceName = 'public.pedido_recno_seq'
    Left = 320
    Top = 216
  end
  object qAmostrasDisp: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      
        'select co.cotacao, co.comodato_recno, s.servico, r.titulo, r.rec' +
        'no, r.descri'
      '  from vcotacomodato co'
      '       join cota_serv s'
      '         on co.cotacao = s.cotacao'
      '       join labrel r'
      '         on r.codserv = s.servico'
      '        and r.ativo        '
      ' where co.comodato_recno = :comodato_recno'
      '   and not exists('
      '       select 1'
      '         from cota_laudo cl'
      '        where cl.cotacao = co.cotacao)'
      'union all'
      
        'select co.cotacao, co.comodato_recno, cl.servico, r.titulo, r.re' +
        'cno, r.descri'
      '  from vcotacomodato co'
      '       join cota_laudo cl'
      '         on cl.cotacao = co.cotacao       '
      '       join labrel r'
      '         on r.recno = cl.relato_recno        '
      ' where co.comodato_recno = :comodato_recno        '
      ' order by servico, descri'
      ''
      ''
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'comodato_recno'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    SequenceField = 'recno'
    Left = 720
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'comodato_recno'
        ParamType = ptUnknown
      end>
    object qAmostrasDispcotacao: TIntegerField
      FieldName = 'cotacao'
      ReadOnly = True
    end
    object qAmostrasDispcomodato_recno: TIntegerField
      FieldName = 'comodato_recno'
      ReadOnly = True
    end
    object qAmostrasDispservico: TIntegerField
      FieldName = 'servico'
      ReadOnly = True
    end
    object qAmostrasDisptitulo: TStringField
      FieldName = 'titulo'
      ReadOnly = True
      Size = 60
    end
    object qAmostrasDisprecno: TIntegerField
      FieldName = 'recno'
      ReadOnly = True
    end
    object qAmostrasDispdescri: TStringField
      FieldName = 'descri'
      ReadOnly = True
      Size = 30
    end
  end
  object uAmostrasServ: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM pedido_amostras_serv'
      'WHERE'
      
        '  ((pedido_amostras_serv.recno IS NULL AND :OLD_recno IS NULL) O' +
        'R (pedido_amostras_serv.recno = :OLD_recno))')
    InsertSQL.Strings = (
      'INSERT INTO pedido_amostras_serv'
      '  (pedido, comodato_recno, relato_recno, recno)'
      'VALUES'
      '  (:pedido, :comodato_recno, :relato_recno, :recno)')
    ModifySQL.Strings = (
      'UPDATE pedido_amostras_serv SET'
      '  pedido = :pedido,'
      '  comodato_recno = :comodato_recno,'
      '  relato_recno = :relato_recno,'
      '  recno = :recno'
      'WHERE'
      
        '  ((pedido_amostras_serv.recno IS NULL AND :OLD_recno IS NULL) O' +
        'R (pedido_amostras_serv.recno = :OLD_recno))')
    UseSequenceFieldForRefreshSQL = False
    Left = 832
    Top = 432
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'comodato_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'relato_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_recno'
        ParamType = ptUnknown
      end>
  end
  object sAmostrasServ: TZSequence
    Connection = DM.Design
    SequenceName = 'pedido_amostras_serv_recno_seq'
    Left = 720
    Top = 424
  end
  object qMat: TZQuery
    Connection = DM.Design
    UpdateObject = uMat
    AfterInsert = qMatAfterInsert
    AfterPost = qMatAfterPost
    AfterDelete = qMatAfterDelete
    SQL.Strings = (
      
        'select p.pedido, p.material, pro.descricao, pro.unidade, p.qtd, ' +
        'p.unitario, '
      '       p.vtotal, p.picms, p.vvenda, p.recno'
      '  from pedido_mat p    '
      '       join produtos pro'
      '         on pro.codigo = p.material'
      ' where p.pedido = :pedido')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pedido'
        ParamType = ptUnknown
      end>
    Sequence = sMat
    SequenceField = 'recno'
    Left = 448
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pedido'
        ParamType = ptUnknown
      end>
    object qMatpedido: TIntegerField
      DisplayLabel = 'Pedido'
      FieldName = 'pedido'
      Required = True
      Visible = False
    end
    object qMatmaterial: TIntegerField
      DisplayLabel = 'Material'
      FieldName = 'material'
      Required = True
      OnChange = qMatmaterialChange
    end
    object qMatdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 40
      FieldName = 'descricao'
      Size = 100
    end
    object qMatqtd: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'qtd'
      Required = True
      OnChange = qMatqtdChange
      DisplayFormat = ',0.###0'
    end
    object qMatunidade: TStringField
      DisplayLabel = 'Unidade'
      DisplayWidth = 4
      FieldName = 'unidade'
      Size = 2
    end
    object qMatunitario: TFloatField
      DisplayLabel = 'Custo'
      FieldName = 'unitario'
      Required = True
      OnChange = qMatqtdChange
      DisplayFormat = ',0.#0'
    end
    object qMatpicms: TFloatField
      DisplayLabel = 'ICMS'
      FieldName = 'picms'
      OnChange = qMatqtdChange
      DisplayFormat = ',0.#0 %'
    end
    object qMatvvenda: TFloatField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'vvenda'
      Required = True
      OnChange = qMatvvendaChange
      DisplayFormat = ',0.#0'
    end
    object qMatvtotal: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'vtotal'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object qMatrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
      Required = True
    end
  end
  object dsMat: TDataSource
    AutoEdit = False
    DataSet = qMat
    Left = 520
    Top = 264
  end
  object uMat: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM pedido_mat'
      'WHERE'
      '  pedido_mat.pedido = :OLD_pedido AND'
      '  pedido_mat.material = :OLD_material')
    InsertSQL.Strings = (
      'INSERT INTO pedido_mat'
      
        '  (pedido, material, qtd, unitario, vtotal, vvenda, recno, picms' +
        ')'
      'VALUES'
      
        '  (:pedido, :material, :qtd, :unitario, :vtotal, :vvenda, :recno' +
        ', :picms)')
    ModifySQL.Strings = (
      'UPDATE pedido_mat SET'
      '  pedido = :pedido,'
      '  material = :material,'
      '  qtd = :qtd,'
      '  unitario = :unitario,'
      '  vtotal = :vtotal,'
      '  vvenda = :vvenda,'
      '  picms = :picms'
      'WHERE'
      '  pedido_mat.pedido = :OLD_pedido AND'
      '  pedido_mat.material = :OLD_material')
    UseSequenceFieldForRefreshSQL = False
    Left = 384
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'material'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'qtd'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'unitario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vtotal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vvenda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'picms'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_pedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_material'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end>
  end
  object sMat: TZSequence
    Connection = DM.Design
    SequenceName = 'public.pedido_mat_recno_seq'
    Left = 320
    Top = 264
  end
  object qServ: TZQuery
    Connection = DM.Design
    AfterScroll = qServAfterScroll
    OnCalcFields = qServCalcFields
    UpdateObject = uServ
    AfterInsert = qServAfterInsert
    AfterPost = qServAfterPost
    AfterDelete = qMatAfterDelete
    SQL.Strings = (
      
        'select p.pedido, p.codserv, s.descri, s.un unidade, p.qtd, p.uni' +
        'tario, p.vtotal,'
      '       p.obs, p.recno, s.consumo, p.vvenda, s.tipo'
      '  from pedido_serv p'
      '       join servicos s'
      '         on s.codserv = p.codserv'
      ' where p.pedido = :pedido')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pedido'
        ParamType = ptUnknown
      end>
    Sequence = sServ
    SequenceField = 'recno'
    Left = 448
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pedido'
        ParamType = ptUnknown
      end>
    object qServpedido: TIntegerField
      DisplayLabel = 'Pedido'
      FieldName = 'pedido'
      Required = True
      Visible = False
    end
    object qServcodserv: TIntegerField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'codserv'
      Required = True
      OnChange = qServcodservChange
    end
    object qServdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 60
      FieldName = 'descri'
      Required = True
      Size = 80
    end
    object qServtipo: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Tipo'
      FieldName = 'tipo'
      OnGetText = qServtipoGetText
    end
    object qServqtd: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'qtd'
      Required = True
      OnChange = qServqtdChange
      DisplayFormat = ',0'
    end
    object qServunidade: TStringField
      DisplayLabel = 'Unidade'
      DisplayWidth = 4
      FieldName = 'unidade'
      Required = True
      Size = 2
    end
    object qServunitario: TFloatField
      DisplayLabel = 'Custo'
      FieldName = 'unitario'
      Required = True
      OnChange = qServqtdChange
      DisplayFormat = ',0.#0'
    end
    object qServvvenda: TFloatField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'vvenda'
      DisplayFormat = ',0.#0'
    end
    object qServvtotal: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'vtotal'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object qServobs: TMemoField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'obs'
      Visible = False
      BlobType = ftMemo
    end
    object qServrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
      Required = True
    end
    object qServconsumo: TFloatField
      DisplayLabel = 'Consumo'
      FieldName = 'consumo'
      Required = True
      DisplayFormat = ',0.###0 ml'
    end
    object qServfluido: TFloatField
      DisplayLabel = 'Flu'#237'do Necess'#225'rio'
      FieldKind = fkCalculated
      FieldName = 'fluido'
      DisplayFormat = ',0.##0 ml'
      Calculated = True
    end
  end
  object dsServ: TDataSource
    AutoEdit = False
    DataSet = qServ
    Left = 520
    Top = 312
  end
  object uServ: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM pedido_serv'
      'WHERE'
      '  pedido_serv.pedido = :OLD_pedido AND'
      '  pedido_serv.codserv = :OLD_codserv')
    InsertSQL.Strings = (
      'INSERT INTO pedido_serv'
      '  (pedido, codserv, qtd, unitario, vtotal, obs, recno)'
      'VALUES'
      '  (:pedido, :codserv, :qtd, :unitario, :vtotal, :obs, :recno)')
    ModifySQL.Strings = (
      'UPDATE pedido_serv SET'
      '  pedido = :pedido,'
      '  codserv = :codserv,'
      '  qtd = :qtd,'
      '  unitario = :unitario,'
      '  vtotal = :vtotal,'
      '  obs = :obs'
      'WHERE'
      '  pedido_serv.pedido = :OLD_pedido AND'
      '  pedido_serv.codserv = :OLD_codserv')
    UseSequenceFieldForRefreshSQL = False
    Left = 384
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codserv'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'qtd'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'unitario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vtotal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'obs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_pedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_codserv'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end>
  end
  object sServ: TZSequence
    Connection = DM.Design
    SequenceName = 'public.pedido_serv_recno_seq'
    Left = 320
    Top = 312
  end
  object sServDet: TZSequence
    Connection = DM.Design
    SequenceName = 'public.pedido_serv_det_recno_seq'
    Left = 320
    Top = 360
  end
  object uServDet: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM pedido_servicos_det'
      'WHERE'
      '  pedido_servicos_det.pedido = :OLD_pedido AND'
      '  pedido_servicos_det.codserv = :OLD_codserv AND'
      '  pedido_servicos_det.detalhe = :OLD_detalhe')
    InsertSQL.Strings = (
      'INSERT INTO pedido_servicos_det'
      '  (pedido, codserv, detalhe, recno)'
      'VALUES'
      '  (:pedido, :codserv, :detalhe, :recno)')
    ModifySQL.Strings = (
      'UPDATE pedido_servicos_det SET'
      '  pedido = :pedido,'
      '  codserv = :codserv,'
      '  detalhe = :detalhe,'
      '  recno = :recno'
      'WHERE'
      '  pedido_servicos_det.pedido = :OLD_pedido AND'
      '  pedido_servicos_det.codserv = :OLD_codserv AND'
      '  pedido_servicos_det.detalhe = :OLD_detalhe')
    UseSequenceFieldForRefreshSQL = False
    Left = 384
    Top = 360
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codserv'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'detalhe'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_pedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_codserv'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_detalhe'
        ParamType = ptUnknown
      end>
  end
  object qServDet: TZQuery
    Connection = DM.Design
    SortedFields = 'recno'
    UpdateObject = uServDet
    AfterInsert = qServDetAfterInsert
    SQL.Strings = (
      'select a.pedido, a.codserv, a.detalhe, s.descri, s.recno'
      '  from pedido_serv_det a'
      '       join servicos_det s'
      '         on s.codserv = a.codserv'
      '        and s.recno = a.detalhe'
      ' where a.pedido = :pedido'
      '   and a.codserv = :servico')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'servico'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    IndexFieldNames = 'recno Asc'
    Sequence = sServDet
    SequenceField = 'recno'
    Left = 448
    Top = 360
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'servico'
        ParamType = ptUnknown
      end>
    object qServDetpedido: TIntegerField
      FieldName = 'pedido'
      Required = True
      Visible = False
    end
    object qServDetcodserv: TIntegerField
      DisplayLabel = 'Servico'
      FieldName = 'codserv'
      Required = True
      Visible = False
    end
    object qServDetdetalhe: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'detalhe'
      Required = True
    end
    object qServDetdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 70
      FieldName = 'descri'
      Size = 250
    end
    object qServDetrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
    end
  end
  object dsServDet: TDataSource
    AutoEdit = False
    DataSet = qServDet
    Left = 520
    Top = 360
  end
  object sMObra: TZSequence
    Connection = DM.Design
    SequenceName = 'public.pedido_mo_recno_seq'
    Left = 320
    Top = 408
  end
  object uMObra: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM pedido_mo'
      'WHERE'
      '  pedido_mo.pedido = :OLD_pedido AND'
      '  pedido_mo.funcao = :OLD_funcao')
    InsertSQL.Strings = (
      'INSERT INTO pedido_mo'
      
        '  (pedido, funcao, qtd, uteis_dias, uteis_hrs_dias, uteis_vl_hrs' +
        ', sabado_dias, '
      
        '   sabado_hrs_dias, sabado_vl_hrs, domingo_dias, domingo_hrs_dia' +
        's, domingo_vl_hrs, '
      
        '   adic_not_dias, adic_not_hrs_dias, adic_not_vl_hrs, percentual' +
        ', recno, unitario)'
      'VALUES'
      
        '  (:pedido, :funcao, :qtd, :uteis_dias, :uteis_hrs_dias, :uteis_' +
        'vl_hrs,'
      
        '   :sabado_dias, :sabado_hrs_dias, :sabado_vl_hrs, :domingo_dias' +
        ', :domingo_hrs_dias,'
      
        '   :domingo_vl_hrs, :adic_not_dias, :adic_not_hrs_dias, :adic_no' +
        't_vl_hrs,'
      '   :percentual, :recno, :unitario)')
    ModifySQL.Strings = (
      'UPDATE pedido_mo SET'
      '  pedido = :pedido,'
      '  funcao = :funcao,'
      '  qtd = :qtd,'
      '  uteis_dias = :uteis_dias,'
      '  uteis_hrs_dias = :uteis_hrs_dias,'
      '  uteis_vl_hrs = :uteis_vl_hrs,'
      '  sabado_dias = :sabado_dias,'
      '  sabado_hrs_dias = :sabado_hrs_dias,'
      '  sabado_vl_hrs = :sabado_vl_hrs,'
      '  domingo_dias = :domingo_dias,'
      '  domingo_hrs_dias = :domingo_hrs_dias,'
      '  domingo_vl_hrs = :domingo_vl_hrs,'
      '  adic_not_dias = :adic_not_dias,'
      '  adic_not_hrs_dias = :adic_not_hrs_dias,'
      '  adic_not_vl_hrs = :adic_not_vl_hrs,'
      '  percentual = :percentual,'
      '  unitario = :unitario'
      'WHERE'
      '  pedido_mo.pedido = :OLD_pedido AND'
      '  pedido_mo.funcao = :OLD_funcao')
    UseSequenceFieldForRefreshSQL = False
    Left = 384
    Top = 408
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'funcao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'qtd'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'uteis_dias'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'uteis_hrs_dias'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'uteis_vl_hrs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sabado_dias'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sabado_hrs_dias'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sabado_vl_hrs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'domingo_dias'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'domingo_hrs_dias'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'domingo_vl_hrs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'adic_not_dias'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'adic_not_hrs_dias'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'adic_not_vl_hrs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'percentual'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'unitario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_pedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_funcao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end>
  end
  object qMObra: TZQuery
    Connection = DM.Design
    SortedFields = 'recno'
    UpdateObject = uMObra
    AfterInsert = qMObraAfterInsert
    AfterPost = qMObraAfterPost
    AfterDelete = qMatAfterDelete
    SQL.Strings = (
      
        'select m.pedido, m.funcao, m.qtd, m.uteis_dias, m.uteis_hrs_dias' +
        ', m.uteis_vl_hrs,'
      '       m.sabado_dias, m.sabado_hrs_dias, m.sabado_vl_hrs,'
      '       m.domingo_dias, m.domingo_hrs_dias, m.domingo_vl_hrs,'
      '       m.adic_not_dias, m.adic_not_hrs_dias, m.adic_not_vl_hrs,'
      '       m.total, m.vvenda, m.percentual, m.recno, f.descricao,'
      '       m.unitario'
      '  from pedido_mo m'
      '       join tb_funcoes f'
      '         on f.id = m.funcao'
      ' where m.pedido = :pedido')
    Params = <
      item
        DataType = ftUnknown
        Name = 'pedido'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    IndexFieldNames = 'recno Asc'
    Sequence = sMObra
    SequenceField = 'recno'
    Left = 448
    Top = 408
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pedido'
        ParamType = ptUnknown
      end>
    object qMObrapedido: TIntegerField
      FieldName = 'pedido'
      Required = True
      Visible = False
    end
    object qMObrafuncao: TIntegerField
      DisplayLabel = 'Fun'#231#227'o'
      FieldName = 'funcao'
      Required = True
    end
    object qMObradescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 50
      FieldName = 'descricao'
      Size = 100
    end
    object qMObraqtd: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'qtd'
      Required = True
      OnChange = qMObraqtdChange
    end
    object qMObrapercentual: TFloatField
      DisplayLabel = '%'
      FieldName = 'percentual'
      OnChange = qMObraqtdChange
    end
    object qMObrauteis_dias: TIntegerField
      DisplayLabel = 'D'#237'as '#218'teis'
      FieldName = 'uteis_dias'
      Required = True
      OnChange = qMObraqtdChange
    end
    object qMObrauteis_hrs_dias: TFloatField
      DisplayLabel = 'Horas '#218'teis'
      FieldName = 'uteis_hrs_dias'
      OnChange = qMObraqtdChange
    end
    object qMObrauteis_vl_hrs: TFloatField
      DisplayLabel = 'Custo'
      FieldName = 'uteis_vl_hrs'
      OnChange = qMObraqtdChange
      DisplayFormat = ',0.#0'
    end
    object qMObrasabado_dias: TIntegerField
      FieldName = 'sabado_dias'
      Required = True
      Visible = False
      OnChange = qMObraqtdChange
    end
    object qMObrasabado_hrs_dias: TFloatField
      FieldName = 'sabado_hrs_dias'
      Visible = False
      OnChange = qMObraqtdChange
    end
    object qMObrasabado_vl_hrs: TFloatField
      FieldName = 'sabado_vl_hrs'
      Visible = False
      OnChange = qMObraqtdChange
      DisplayFormat = ',0.#0'
    end
    object qMObradomingo_dias: TIntegerField
      FieldName = 'domingo_dias'
      Required = True
      Visible = False
      OnChange = qMObraqtdChange
    end
    object qMObradomingo_hrs_dias: TFloatField
      FieldName = 'domingo_hrs_dias'
      Visible = False
      OnChange = qMObraqtdChange
    end
    object qMObradomingo_vl_hrs: TFloatField
      FieldName = 'domingo_vl_hrs'
      Visible = False
      OnChange = qMObraqtdChange
      DisplayFormat = ',0.#0'
    end
    object qMObraadic_not_dias: TIntegerField
      FieldName = 'adic_not_dias'
      Required = True
      Visible = False
      OnChange = qMObraqtdChange
    end
    object qMObraadic_not_hrs_dias: TFloatField
      FieldName = 'adic_not_hrs_dias'
      Visible = False
      OnChange = qMObraqtdChange
    end
    object qMObraadic_not_vl_hrs: TFloatField
      FieldName = 'adic_not_vl_hrs'
      Visible = False
      OnChange = qMObraqtdChange
      DisplayFormat = ',0.#0'
    end
    object qMObraunitario: TFloatField
      DisplayLabel = 'Custo'
      FieldName = 'unitario'
      DisplayFormat = ',0.#0'
    end
    object qMObravvenda: TFloatField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'vvenda'
      DisplayFormat = ',0.#0'
    end
    object qMObratotal: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'total'
      DisplayFormat = ',0.#0'
    end
    object qMObrarecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
    end
  end
  object dsMObra: TDataSource
    AutoEdit = False
    DataSet = qMObra
    Left = 520
    Top = 408
  end
  object uDesp: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM pedido_desp'
      'WHERE'
      '  pedido_desp.pedido = :OLD_pedido AND'
      '  pedido_desp.despesa = :OLD_despesa')
    InsertSQL.Strings = (
      'INSERT INTO pedido_desp'
      '  (pedido, despesa, recno)'
      'VALUES'
      '  (:pedido, :despesa, :recno)')
    ModifySQL.Strings = (
      'UPDATE pedido_desp SET'
      '  pedido = :pedido,'
      '  despesa = :despesa,'
      '  recno = :recno'
      'WHERE'
      '  pedido_desp.pedido = :OLD_pedido AND'
      '  pedido_desp.despesa = :OLD_despesa')
    UseSequenceFieldForRefreshSQL = False
    Left = 128
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'despesa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_pedido'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_despesa'
        ParamType = ptUnknown
      end>
  end
  object qContatos: TZQuery
    Connection = DM.Design
    SortedFields = 'nome'
    SQL.Strings = (
      
        'select cliente, nome, celular, telefone, ramal, email, padrao, r' +
        'ecno'
      '  from clientes_contatos'
      ' where cliente = :cliente'
      '   and contato_pedido'
      '   and ativo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    IndexFieldNames = 'nome Asc'
    Left = 448
    Top = 456
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end>
    object qContatoscliente: TIntegerField
      FieldName = 'cliente'
      Visible = False
    end
    object qContatospadrao: TBooleanField
      DisplayLabel = 'Padr'#227'o'
      FieldName = 'padrao'
    end
    object qContatosrecno: TIntegerField
      DisplayLabel = 'Contato'
      FieldName = 'recno'
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
  end
  object dsContatos: TDataSource
    AutoEdit = False
    DataSet = qContatos
    Left = 520
    Top = 456
  end
end
