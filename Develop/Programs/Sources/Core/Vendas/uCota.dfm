inherited Cota: TCota
  Caption = 'Cota'#231#227'o'
  ClientHeight = 570
  ClientWidth = 1091
  Constraints.MinWidth = 974
  ExplicitWidth = 1107
  ExplicitHeight = 609
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 543
    Width = 1085
    ExplicitTop = 543
    ExplicitWidth = 1085
  end
  inherited Panel1: TPanel
    Width = 1091
    ExplicitWidth = 1091
    inherited pctlFind: TPageControl
      Width = 1081
      ExplicitWidth = 1081
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1073
        ExplicitHeight = 75
        object Label4: TLabel [0]
          Left = 173
          Top = 48
          Width = 3
          Height = 15
        end
        object Label3: TLabel [1]
          Left = 261
          Top = 3
          Width = 63
          Height = 15
          Caption = 'Vencimento'
        end
        object Label1: TLabel [2]
          Left = 148
          Top = 3
          Width = 32
          Height = 15
          Caption = 'Status'
        end
        object Label18: TLabel [3]
          Left = 424
          Top = 2
          Width = 90
          Height = 15
          Caption = 'Vizualizar cliente:'
          Transparent = True
        end
        object Label5: TLabel [4]
          Left = 693
          Top = 2
          Width = 86
          Height = 15
          Caption = 'Tipo de Cota'#231#227'o'
          Transparent = True
        end
        object Label6: TLabel [5]
          Left = 3
          Top = 3
          Width = 44
          Height = 15
          Caption = 'Cota'#231#227'o'
        end
        object Label7: TLabel [6]
          Left = 60
          Top = 3
          Width = 77
          Height = 15
          Caption = 'Pedido Cliente'
        end
        inherited BitBtn2: TBitBtn
          Left = 972
          TabOrder = 6
          ExplicitLeft = 972
        end
        inline FrameData1: TFrameData
          Left = 261
          Top = 23
          Width = 156
          Height = 23
          AutoSize = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          ExplicitLeft = 261
          ExplicitTop = 23
          ExplicitWidth = 156
          inherited ComboBox1: TComboBox
            Width = 156
            ItemIndex = 2
            Text = 'Trimestralmente'
            ExplicitWidth = 156
          end
          inherited CCalendarDiff1: TCCalendarDiff
            Date = 44275.552895289350000000
            DisplayInterval = Label4
            OnChange = FrameData1CCalendarDiff1Change
          end
        end
        object cbStatus: TComboBox
          Left = 148
          Top = 24
          Width = 107
          Height = 23
          Style = csDropDownList
          ItemHeight = 15
          ItemIndex = 1
          TabOrder = 2
          Text = 'Em Digita'#231#227'o'
          OnChange = cbStatusChange
          Items.Strings = (
            'Todos'
            'Em Digita'#231#227'o'
            'Em Aprova'#231#227'o'
            'Aprovadas'
            'Em Estudo'
            'Autorizadas'
            'Executadas'
            'Expiradas'
            'Canceladas')
        end
        object ComboBox1: TComboBox
          Left = 424
          Top = 23
          Width = 264
          Height = 23
          DropDownCount = 30
          ItemHeight = 15
          TabOrder = 4
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
        object ComboBox2: TComboBox
          Left = 694
          Top = 23
          Width = 307
          Height = 23
          Style = csDropDownList
          DropDownCount = 30
          ItemHeight = 15
          TabOrder = 5
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
        object edCota: TJvCalcEdit
          Left = 3
          Top = 24
          Width = 51
          Height = 23
          DecimalPlaces = 0
          DisplayFormat = '#'
          FormatOnEditing = True
          ShowButton = False
          TabOrder = 0
          DecimalPlacesAlwaysShown = False
          OnChange = ComboBox1Change
        end
        object edPedcli: TJvCalcEdit
          Left = 60
          Top = 23
          Width = 82
          Height = 23
          DecimalPlaces = 0
          DisplayFormat = '#'
          FormatOnEditing = True
          ShowButton = False
          TabOrder = 1
          DecimalPlacesAlwaysShown = False
          OnChange = ComboBox1Change
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1073
        ExplicitHeight = 75
      end
    end
  end
  inherited Panel2: TPanel
    Width = 1091
    Height = 411
    ExplicitWidth = 1091
    ExplicitHeight = 411
    inherited PageControl1: TPageControl
      Width = 1085
      Height = 405
      ActivePage = TabSheet2
      Images = Resources.medium_n
      ExplicitWidth = 1085
      ExplicitHeight = 405
      inherited TabSheet1: TTabSheet
        Caption = 'Todas'
        ImageIndex = -1
        ExplicitLeft = 4
        ExplicitTop = 33
        ExplicitWidth = 1077
        ExplicitHeight = 368
        inherited DBGrid1: TDBGrid
          Width = 1071
          Height = 362
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Digita'#231#227'o'
        ImageIndex = 214
        ExplicitLeft = 6
        ExplicitTop = 37
        object ControlBar1: TControlBar
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1071
          Height = 38
          Align = alTop
          AutoSize = True
          BevelKind = bkNone
          DrawingStyle = dsGradient
          TabOrder = 0
          object ToolBar2: TToolBar
            Left = 11
            Top = 2
            Width = 924
            Height = 34
            AutoSize = True
            BorderWidth = 1
            ButtonHeight = 30
            ButtonWidth = 137
            Caption = 'ToolBar2'
            DisabledImages = Resources.medium_d
            DrawingStyle = dsGradient
            HotImages = Resources.medium_h
            Images = Resources.medium_n
            List = True
            AllowTextButtons = True
            TabOrder = 0
            object ToolButton17: TToolButton
              Left = 0
              Top = 0
              Action = actModelo
              Style = tbsTextButton
            end
            object ToolButton16: TToolButton
              Left = 89
              Top = 0
              Action = actSolAprov
              Style = tbsTextButton
            end
            object ToolButton12: TToolButton
              Left = 230
              Top = 0
              Action = actMarkup
              Style = tbsTextButton
            end
            object ToolButton13: TToolButton
              Left = 319
              Top = 0
              Action = actAutorizar
              Style = tbsTextButton
            end
            object ToolButton14: TToolButton
              Left = 435
              Top = 0
              Action = actCancelarCotacao
              Style = tbsTextButton
            end
            object ToolButton15: TToolButton
              Left = 529
              Top = 0
              Action = actRevalidar
              Style = tbsTextButton
            end
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Em Aprova'#231#227'o'
        ImageIndex = 213
      end
      object TabSheet4: TTabSheet
        Caption = 'Aprovadas'
        ImageIndex = 211
      end
      object TabSheet5: TTabSheet
        Caption = 'Em Estudo'
        ImageIndex = 208
      end
      object TabSheet6: TTabSheet
        Caption = 'Autorizadas'
        ImageIndex = 205
      end
      object TabSheet9: TTabSheet
        Caption = 'Executadas'
        ImageIndex = 210
      end
      object TabSheet7: TTabSheet
        Caption = 'Expiradas'
        ImageIndex = 204
      end
      object TabSheet8: TTabSheet
        Caption = 'Canceladas'
        ImageIndex = 209
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Width = 1085
    ExplicitWidth = 1085
    inherited ToolBar1: TToolBar
      Width = 942
      ExplicitWidth = 942
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
    Left = 576
    Top = 40
    object actSolAprov: TAction [17]
      Caption = 'Solicitar Aprova'#231#227'o'
      Enabled = False
      ImageIndex = 44
      OnExecute = actSolAprovExecute
    end
    object actMarkup: TAction [18]
      Caption = 'Markup...'
      Enabled = False
      ImageIndex = 279
      OnExecute = actMarkupExecute
    end
    object actModelo: TAction [19]
      Caption = 'Modelo...'
      Enabled = False
      ImageIndex = 248
      OnExecute = actModeloExecute
    end
    object actAutorizar: TAction
      Caption = 'Gerar Pedido...'
      Enabled = False
      ImageIndex = 91
      OnExecute = actAutorizarExecute
    end
    object actCancelarCotacao: TAction
      Caption = 'Cancelar...'
      Enabled = False
      ImageIndex = 106
      OnExecute = actCancelarCotacaoExecute
    end
    object actRevalidar: TAction
      Caption = 'Revalidar'
      Enabled = False
      ImageIndex = 55
      OnExecute = actRevalidarExecute
    end
  end
  inherited pmRel: TPopupMenu
    Left = 528
    Top = 0
  end
  inherited pmOrder: TPopupMenu
    Left = 474
    Top = 65534
  end
  inherited alRunTime: TActionList
    Top = 54
  end
  inherited DataSource1: TDataSource
    OnStateChange = DataSource1StateChange
    Left = 264
    Top = 192
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SortedFields = 'recno'
    SortType = stDescending
    AfterScroll = IBrwSrcAfterScroll
    OnCalcFields = IBrwSrcCalcFields
    AfterInsert = IBrwSrcAfterInsert
    AfterEdit = IBrwSrcAfterEdit
    SQL.Strings = (
      
        'select co.recno, co.cliente, co.vendedor, co.grupo, co.status, c' +
        'o.emissao, co.validade, m.vlmat, m.vlsrvvar,'
      
        '       m.vlsrvfixo, m.vlmobra, m.vldespe, cl.empresa, cl.nome_ch' +
        'ave, cl.cnpj, cl.cpf, cl.cidade, cl.estado,'
      
        '       og.descri, og.reqsrv, og.reqmat, og.reqmo, ve.nome, co.ma' +
        'rkup, co.descricao, co.condicaopg,'
      '       co.frascos, co.seringas, co.envio, co.frete, co.correio,'
      
        '       cast(a.ativdescri as varchar(150)) atividade, co.coleta, ' +
        'co.pedcli, lp.situacao situacaoenvio,'
      '       co.remessa, co.laboratorio, co.dec_conf'
      '  from cota co'
      '       join tbclientes cl'
      '         on cl.codigo = co.cliente'
      '       join orca_grupo og'
      '         on og.recno = co.grupo'
      '       join vatividades a'
      '         on a.item = og.atividade'
      '       left join tb_vendedores ve'
      '         on ve.idvendedor = co.vendedor'
      '       left join markup m'
      '         on m.recno = co.markup'
      '       left join labproc lp'
      '         on lp.cotacao = co.recno'
      '')
    IndexFieldNames = 'recno Desc'
    Sequence = zsCota
    SequenceField = 'recno'
    Left = 208
    Top = 192
    object IBrwSrcstatus: TIntegerField
      DisplayLabel = ' '
      FieldName = 'status'
      Required = True
    end
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Cota'#231#227'o'
      FieldName = 'recno'
      Required = True
    end
    object IBrwSrcpedcli: TStringField
      DisplayLabel = 'Pedido Cliente'
      DisplayWidth = 15
      FieldName = 'pedcli'
      Size = 100
    end
    object IBrwSrcemissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      DisplayWidth = 14
      FieldName = 'emissao'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object IBrwSrcfrascos: TIntegerField
      DisplayLabel = 'Frascos'
      FieldName = 'frascos'
    end
    object IBrwSrcseringas: TIntegerField
      DisplayLabel = 'Seringas'
      FieldName = 'seringas'
    end
    object IBrwSrcsituacaoenvio: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Envio'
      DisplayWidth = 20
      FieldName = 'situacaoenvio'
      OnGetText = IBrwSrcsituacaoenvioGetText
    end
    object IBrwSrcvalidade: TDateField
      DisplayLabel = 'Validade'
      FieldName = 'validade'
      DisplayFormat = 'dd/mm/yyyy'
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
      DisplayLabel = 'M. Obra'
      FieldName = 'vlmobra'
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcvlsrv: TFloatField
      DisplayLabel = 'Servi'#231'os'
      FieldKind = fkCalculated
      FieldName = 'vlsrv'
      DisplayFormat = ',0.#0'
      Calculated = True
    end
    object IBrwSrcvldespe: TFloatField
      DisplayLabel = 'Despesas'
      FieldName = 'vldespe'
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcvltotal: TFloatField
      DisplayLabel = 'Total'
      FieldKind = fkCalculated
      FieldName = 'vltotal'
      DisplayFormat = ',0.#0'
      Calculated = True
    end
    object IBrwSrcatividade: TStringField
      DisplayLabel = 'Atividade'
      DisplayWidth = 25
      FieldName = 'atividade'
      ReadOnly = True
      Size = 150
    end
    object IBrwSrccliente: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'cliente'
      Required = True
      OnChange = IBrwSrcclienteChange
    end
    object IBrwSrcempresa: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 20
      FieldName = 'empresa'
      Visible = False
      Size = 100
    end
    object IBrwSrcnome_chave: TStringField
      DisplayLabel = 'Nome Curto'
      DisplayWidth = 20
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
      DisplayLabel = 'C.P.F.'
      FieldName = 'cpf'
      Visible = False
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object IBrwSrccidade: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 25
      FieldName = 'cidade'
      Size = 100
    end
    object IBrwSrcestado: TStringField
      DisplayLabel = 'UF'
      DisplayWidth = 4
      FieldName = 'estado'
      Size = 2
    end
    object IBrwSrcgrupo: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'grupo'
      Visible = False
      OnChange = IBrwSrcgrupoChange
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
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
    object IBrwSrcvendedor: TIntegerField
      FieldName = 'vendedor'
      Visible = False
      OnChange = IBrwSrcvendedorChange
    end
    object IBrwSrcnome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 25
      FieldName = 'nome'
      Visible = False
      Size = 100
    end
    object IBrwSrcstatusDesc: TStringField
      FieldKind = fkCalculated
      FieldName = 'statusDesc'
      Visible = False
      Calculated = True
    end
    object IBrwSrcmarkup: TIntegerField
      FieldName = 'markup'
      Visible = False
    end
    object IBrwSrcdescricao: TMemoField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Required = True
      Visible = False
      BlobType = ftMemo
    end
    object IBrwSrcenvio: TIntegerField
      DisplayLabel = 'Tipo de Envio'
      FieldName = 'envio'
      Required = True
      Visible = False
      OnChange = IBrwSrcenvioChange
      OnGetText = IBrwSrcenvioGetText
      OnSetText = IBrwSrcenvioSetText
    end
    object IBrwSrcfrete: TFloatField
      DisplayLabel = 'Frete'
      FieldName = 'frete'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object IBrwSrccorreio: TIntegerField
      FieldName = 'correio'
      Visible = False
    end
    object IBrwSrccoleta: TIntegerField
      FieldName = 'coleta'
      Visible = False
    end
    object IBrwSrcremessa: TBooleanField
      DisplayLabel = 'Remessa?'
      FieldName = 'remessa'
      Visible = False
    end
    object IBrwSrclaboratorio: TBooleanField
      DisplayLabel = 'Laborat'#243'rio?'
      FieldName = 'laboratorio'
      Visible = False
    end
    object IBrwSrccondicaopg: TStringField
      DisplayLabel = 'Condi'#231#227'o'
      FieldName = 'condicaopg'
      Visible = False
      Size = 15
    end
    object IBrwSrcdec_conf: TBooleanField
      DisplayLabel = 'Declara'#231#227'o de Conformidade'
      FieldName = 'dec_conf'
      Required = True
    end
  end
  inherited pmOpcao: TPopupMenu
    Left = 528
    Top = 56
    object Markup1: TMenuItem
      Action = actMarkup
    end
    object Modelo1: TMenuItem
      Action = actModelo
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM cota'
      'WHERE'
      '  cota.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO cota'
      
        '   (cliente, vendedor, grupo, status, emissao, validade, descric' +
        'ao, recno, frascos, seringas, envio, frete, correio,'
      '   coleta, pedcli, remessa, laboratorio, condicaopg, dec_conf)'
      'VALUES'
      
        '  (:cliente, :vendedor, :grupo, :status, :emissao, :validade, :d' +
        'escricao, :recno, :frascos, :seringas, :envio, :frete,'
      
        '   :correio, :coleta, :pedcli, :remessa, :laboratorio, :condicao' +
        'pg, :dec_conf)')
    ModifySQL.Strings = (
      'UPDATE cota SET'
      '  cliente = :cliente,'
      '  vendedor = :vendedor, '
      '  grupo = :grupo,'
      '  status = :status,'
      '  emissao = :emissao,'
      '  validade = :validade,'
      '  descricao = :descricao,'
      '  frascos = :frascos,'
      '  seringas = :seringas,'
      '  envio = :envio,'
      '  frete = :frete,'
      '  correio = :correio,'
      '  coleta = :coleta,'
      '  pedcli = :pedcli,'
      '  remessa = :remessa,'
      '  laboratorio = :laboratorio,'
      '  condicaopg = :condicaopg,'
      '  dec_conf = :dec_conf'
      'WHERE'
      '  cota.recno = :OLD_recno')
    Left = 160
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vendedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'grupo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'status'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emissao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'validade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'descricao'
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
        Name = 'envio'
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
        Name = 'coleta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pedcli'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'remessa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'laboratorio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'condicaopg'
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
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end>
  end
  object qMat: TZQuery
    Connection = DM.Design
    SortedFields = 'recno'
    UpdateObject = zMat
    AfterInsert = qMatAfterInsert
    AfterPost = qMatAfterPost
    SQL.Strings = (
      
        'select a.cotacao, a.recno, a.material, b.descricao, a.qtd, a.uni' +
        'dade, a.unitario, '
      '       a.picms, a.vtotal, a.vvenda'
      '  from cota_mat a'
      '       join produtos b'
      '         on b.codigo = a.material'
      ' where a.cotacao = :cotacao')
    Params = <
      item
        DataType = ftUnknown
        Name = 'cotacao'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    IndexFieldNames = 'recno Asc'
    Sequence = zsCotaMat
    SequenceField = 'recno'
    Left = 208
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cotacao'
        ParamType = ptUnknown
      end>
    object qMatcotacao: TIntegerField
      FieldName = 'cotacao'
      Required = True
      Visible = False
    end
    object qMatrecno: TIntegerField
      FieldName = 'recno'
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
      DisplayWidth = 75
      FieldName = 'descricao'
      Size = 100
    end
    object qMatpicms: TFloatField
      DisplayLabel = 'ICMS'
      FieldName = 'picms'
      Required = True
      OnChange = qMatvtotalChange
      DisplayFormat = ',0.#0%'
    end
    object qMatqtd: TFloatField
      DisplayLabel = 'Qtd'
      FieldName = 'qtd'
      Required = True
      OnChange = qMatqtdChange
      DisplayFormat = ',0.###0'
    end
    object qMatunidade: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'unidade'
      Size = 2
    end
    object qMatunitario: TFloatField
      DisplayLabel = 'Custo'
      FieldName = 'unitario'
      Required = True
      OnChange = qMatqtdChange
      DisplayFormat = ',0.###0'
    end
    object qMatvvenda: TFloatField
      DisplayLabel = 'Valor de Venda'
      FieldName = 'vvenda'
      DisplayFormat = ',0.#0'
    end
    object qMatvtotal: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'vtotal'
      OnChange = qMatvtotalChange
      DisplayFormat = ',0.#0'
    end
  end
  object dsMat: TDataSource
    AutoEdit = False
    DataSet = qMat
    OnStateChange = DataSource1StateChange
    Left = 264
    Top = 240
  end
  object zMat: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM cota_mat'
      'WHERE'
      '  cota_mat.cotacao = :OLD_cotacao AND'
      '  cota_mat.material = :OLD_material')
    InsertSQL.Strings = (
      'INSERT INTO cota_mat'
      '  (cotacao, material, qtd, unidade, unitario, picms, '
      '   vtotal, vvenda, recno)'
      'VALUES'
      '  (:cotacao, :material, :qtd, :unidade, :unitario, '
      '   :picms, :vtotal, :vvenda, :recno)')
    ModifySQL.Strings = (
      'UPDATE cota_mat SET'
      '  cotacao = :cotacao,'
      '  material = :material,'
      '  qtd = :qtd,'
      '  unidade = :unidade,'
      '  unitario = :unitario,'
      '  picms = :picms,'
      '  vtotal = :vtotal,'
      '  vvenda = :vvenda'
      'WHERE'
      '  cota_mat.cotacao = :OLD_cotacao AND'
      '  cota_mat.material = :OLD_material')
    UseSequenceFieldForRefreshSQL = False
    Left = 160
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cotacao'
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
        Name = 'unidade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'unitario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'picms'
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
        Name = 'OLD_cotacao'
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
  object dsServ: TDataSource
    AutoEdit = False
    DataSet = qServ
    OnStateChange = DataSource1StateChange
    Left = 264
    Top = 288
  end
  object qServ: TZQuery
    Connection = DM.Design
    SortedFields = 'recno'
    AfterScroll = qServAfterScroll
    UpdateObject = zServ
    AfterInsert = qServAfterInsert
    AfterPost = qServAfterPost
    SQL.Strings = (
      
        'select a.cotacao, a.servico, s.descri, a.qtd, a.unidade, a.unita' +
        'rio,'
      #9'     a.vtotal, a.vvenda, s.tipo, a.recno'
      '  from cota_serv a'
      '        join servicos s'
      '          on s.codserv = a.servico'
      ' where a.cotacao = :cotacao')
    Params = <
      item
        DataType = ftUnknown
        Name = 'cotacao'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    IndexFieldNames = 'recno Asc'
    Sequence = zsServ
    SequenceField = 'recno'
    Left = 208
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cotacao'
        ParamType = ptUnknown
      end>
    object qServcotacao: TIntegerField
      DisplayLabel = 'Cota'#231#227'o'
      FieldName = 'cotacao'
      Required = True
      Visible = False
    end
    object qServservico: TIntegerField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'servico'
      Required = True
      OnChange = qServservicoChange
    end
    object qServdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Size = 80
    end
    object qServqtd: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'qtd'
      OnChange = qServqtdChange
      DisplayFormat = ',0.###0'
    end
    object qServunidade: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'unidade'
      Size = 2
    end
    object qServunitario: TFloatField
      DisplayLabel = 'Custo'
      FieldName = 'unitario'
      OnChange = qServqtdChange
      DisplayFormat = ',0.###0'
    end
    object qServvvenda: TFloatField
      DisplayLabel = 'Valor de Venda'
      FieldName = 'vvenda'
      DisplayFormat = ',0.#0'
    end
    object qServvtotal: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'vtotal'
      DisplayFormat = ',0.#0'
    end
    object qServtipo: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Tipo de Cobran'#231'a'
      FieldName = 'tipo'
      OnGetText = qServtipoGetText
    end
    object qServrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
    end
  end
  object zServ: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM cota_serv'
      'WHERE'
      '  cota_serv.cotacao = :OLD_cotacao AND'
      '  cota_serv.servico = :OLD_servico')
    InsertSQL.Strings = (
      'INSERT INTO cota_serv'
      
        '  (cotacao, servico, qtd, unidade, unitario, vtotal, vvenda, rec' +
        'no)'
      'VALUES'
      
        '  (:cotacao, :servico, :qtd, :unidade, :unitario, :vtotal, :vven' +
        'da, :recno)')
    ModifySQL.Strings = (
      'UPDATE cota_serv SET'
      '  qtd = :qtd,'
      '  unidade = :unidade,'
      '  unitario = :unitario,'
      '  vtotal = :vtotal,'
      '  vvenda = :vvenda'
      'WHERE'
      '  cota_serv.cotacao = :OLD_cotacao AND'
      '  cota_serv.servico = :OLD_servico')
    UseSequenceFieldForRefreshSQL = False
    Left = 160
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'qtd'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'unidade'
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
        Name = 'OLD_cotacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_servico'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cotacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'servico'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end>
  end
  object uServDet: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM cota_servdet'
      'WHERE'
      '  cota_servdet.cotacao = :OLD_cotacao AND'
      '  cota_servdet.servico = :OLD_servico AND'
      '  cota_servdet.detalhe = :OLD_detalhe')
    InsertSQL.Strings = (
      'INSERT INTO cota_servdet'
      '  (cotacao, servico, detalhe, descri, recno)'
      'VALUES'
      '  (:cotacao, :servico, :detalhe, :descri, :recno)')
    ModifySQL.Strings = (
      'UPDATE cota_servdet SET'
      '  cotacao = :cotacao,'
      '  servico = :servico,'
      '  detalhe = :detalhe,'
      '  descri = :descri,'
      '  recno = :recno'
      'WHERE'
      '  cota_servdet.cotacao = :OLD_cotacao AND'
      '  cota_servdet.servico = :OLD_servico AND'
      '  cota_servdet.detalhe = :OLD_detalhe')
    UseSequenceFieldForRefreshSQL = False
    Left = 160
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cotacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'servico'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'detalhe'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'descri'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_cotacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_servico'
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
    SQL.Strings = (
      'select a.cotacao, a.servico, a.detalhe, s.descri, s.recno'
      '  from cota_servdet a'
      '       join servicos_det s'
      '         on s.codserv = a.servico'
      '        and s.recno = a.detalhe'
      ' where a.cotacao = :cotacao'
      '   and a.servico = :servico')
    Params = <
      item
        DataType = ftUnknown
        Name = 'cotacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'servico'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    IndexFieldNames = 'recno Asc'
    Sequence = zsServDet
    SequenceField = 'recno'
    Left = 208
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cotacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'servico'
        ParamType = ptUnknown
      end>
    object qServDetcotacao: TIntegerField
      FieldName = 'cotacao'
      Visible = False
    end
    object qServDetservico: TIntegerField
      FieldName = 'servico'
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
    OnStateChange = DataSource1StateChange
    Left = 264
    Top = 336
  end
  object zMObra: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM cota_mo'
      'WHERE'
      '  cota_mo.cotacao = :OLD_cotacao AND'
      '  cota_mo.funcao = :OLD_funcao')
    InsertSQL.Strings = (
      'INSERT INTO cota_mo'
      
        '  (cotacao, funcao, qtd, uteis_dias, uteis_hrs_dias, uteis_vl_hr' +
        's, sabado_dias, '
      
        '   sabado_hrs_dias, sabado_vl_hrs, domingo_dias, domingo_hrs_dia' +
        's, domingo_vl_hrs, '
      
        '   adic_not_dias, adic_not_hrs_dias, adic_not_vl_hrs, percentual' +
        ', recno, unitario)'
      'VALUES'
      
        '  (:cotacao, :funcao, :qtd, :uteis_dias, :uteis_hrs_dias, :uteis' +
        '_vl_hrs,'
      
        '   :sabado_dias, :sabado_hrs_dias, :sabado_vl_hrs, :domingo_dias' +
        ', :domingo_hrs_dias,'
      
        '   :domingo_vl_hrs, :adic_not_dias, :adic_not_hrs_dias, :adic_no' +
        't_vl_hrs,'
      '   :percentual, :recno, :unitario)')
    ModifySQL.Strings = (
      'UPDATE cota_mo SET'
      '  cotacao = :cotacao,'
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
      '  cota_mo.cotacao = :OLD_cotacao AND'
      '  cota_mo.funcao = :OLD_funcao')
    UseSequenceFieldForRefreshSQL = False
    Left = 160
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cotacao'
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
        Name = 'OLD_cotacao'
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
    UpdateObject = zMObra
    AfterInsert = qMObraAfterInsert
    AfterPost = qMObraAfterPost
    SQL.Strings = (
      
        'select m.cotacao, m.funcao, m.qtd, m.uteis_dias, m.uteis_hrs_dia' +
        's, m.uteis_vl_hrs,'
      '       m.sabado_dias, m.sabado_hrs_dias, m.sabado_vl_hrs,'
      '       m.domingo_dias, m.domingo_hrs_dias, m.domingo_vl_hrs,'
      '       m.adic_not_dias, m.adic_not_hrs_dias, m.adic_not_vl_hrs,'
      '       m.total, m.vvenda, m.percentual, m.recno, f.descricao,'
      '       m.unitario'
      '  from cota_mo m'
      '       join tb_funcoes f'
      '         on f.id = m.funcao'
      ' where m.cotacao = :cotacao')
    Params = <
      item
        DataType = ftUnknown
        Name = 'cotacao'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    IndexFieldNames = 'recno Asc'
    Sequence = zsMObra
    SequenceField = 'recno'
    Left = 208
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cotacao'
        ParamType = ptUnknown
      end>
    object qMObracotacao: TIntegerField
      FieldName = 'cotacao'
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
      DisplayLabel = 'Valor de Venda'
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
    OnStateChange = DataSource1StateChange
    Left = 264
    Top = 384
  end
  object zsCota: TZSequence
    Connection = DM.Design
    SequenceName = 'public.cota_recno_seq'
    Left = 104
    Top = 192
  end
  object zsCotaMat: TZSequence
    Connection = DM.Design
    SequenceName = 'public.cota_mat_recno_seq'
    Left = 104
    Top = 240
  end
  object zsServ: TZSequence
    Connection = DM.Design
    SequenceName = 'public.cota_serv_recno_seq'
    Left = 104
    Top = 288
  end
  object zsServDet: TZSequence
    Connection = DM.Design
    SequenceName = 'public.cota_servdet_recno_seq'
    Left = 104
    Top = 336
  end
  object zsMObra: TZSequence
    Connection = DM.Design
    SequenceName = 'public.cota_mo_recno_seq'
    Left = 104
    Top = 384
  end
  object qDesp: TZQuery
    Connection = DM.Design
    SortedFields = 'data'
    OnCalcFields = qDespCalcFields
    UpdateObject = zDesp
    AfterPost = qDespAfterPost
    AfterDelete = qDespAfterDelete
    SQL.Strings = (
      
        'select cd.cotacao, cd.despesa, cd.recno, f.data, f.docto, f.hist' +
        'orico, f.valor * -1 valor'
      '  from cota_desp cd'
      '       join fin_caixa f'
      '         on f.recno = cd.despesa'
      ' where cd.cotacao = :cotacao')
    Params = <
      item
        DataType = ftUnknown
        Name = 'cotacao'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    IndexFieldNames = 'data Asc'
    Left = 208
    Top = 432
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cotacao'
        ParamType = ptUnknown
      end>
    object qDespcotacao: TIntegerField
      FieldName = 'cotacao'
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
      DisplayFormat = 'ss/mm/yyyy'
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
      Required = True
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
    Left = 264
    Top = 432
  end
  object zDesp: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM cota_desp'
      'WHERE'
      '  cota_desp.cotacao = :OLD_cotacao AND'
      '  cota_desp.despesa = :OLD_despesa')
    InsertSQL.Strings = (
      'INSERT INTO cota_desp'
      '  (cotacao, despesa)'
      'VALUES'
      '  (:cotacao, :despesa)')
    ModifySQL.Strings = (
      'UPDATE cota_desp SET'
      '  cotacao = :cotacao,'
      '  despesa = :despesa'
      'WHERE'
      '  cota_desp.cotacao = :OLD_cotacao AND'
      '  cota_desp.despesa = :OLD_despesa')
    UseSequenceFieldForRefreshSQL = False
    Left = 160
    Top = 432
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cotacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'despesa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_cotacao'
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
      '   and enviar_cotacao_venda'
      '   and ativo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    IndexFieldNames = 'nome Asc'
    Left = 208
    Top = 480
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
    OnStateChange = DataSource1StateChange
    Left = 264
    Top = 480
  end
end
