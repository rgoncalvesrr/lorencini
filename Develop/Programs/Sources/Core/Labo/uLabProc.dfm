inherited LabProc: TLabProc
  Caption = 'Processamento de Remessas'
  ClientHeight = 545
  ClientWidth = 1155
  Constraints.MinWidth = 793
  ExplicitWidth = 1171
  ExplicitHeight = 584
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 518
    Width = 1149
    ExplicitTop = 518
    ExplicitWidth = 1149
  end
  inherited Panel1: TPanel
    Width = 1155
    ExplicitWidth = 1155
    inherited pctlFind: TPageControl
      Width = 1145
      ExplicitWidth = 1145
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1137
        ExplicitHeight = 75
        object Label18: TLabel [0]
          Left = 445
          Top = 3
          Width = 90
          Height = 15
          Caption = 'Vizualizar cliente:'
          Transparent = True
        end
        object Label1: TLabel [1]
          Left = 4
          Top = 3
          Width = 32
          Height = 15
          Caption = 'Status'
        end
        object Label4: TLabel [2]
          Left = 238
          Top = 3
          Width = 37
          Height = 15
          Caption = 'Pedido'
          Transparent = True
        end
        object Label5: TLabel [3]
          Left = 342
          Top = 3
          Width = 44
          Height = 15
          Caption = 'Cota'#231#227'o'
          Transparent = True
        end
        inherited BitBtn2: TBitBtn
          Left = 1036
          TabOrder = 4
          ExplicitLeft = 1036
        end
        object ComboBox1: TComboBox
          Left = 445
          Top = 21
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
        object cbStatus: TComboBox
          Left = 4
          Top = 21
          Width = 227
          Height = 23
          Style = csDropDownList
          ItemHeight = 15
          ItemIndex = 1
          TabOrder = 0
          Text = 'Aguardando A'#231#227'o'
          OnChange = cbStatusChange
          Items.Strings = (
            'Todos'
            'Aguardando A'#231#227'o'
            'Em Processamento')
        end
        object edPedido: TJvCalcEdit
          Left = 238
          Top = 21
          Width = 98
          Height = 23
          DecimalPlaces = 0
          DisplayFormat = '#'
          ShowButton = False
          TabOrder = 1
          DecimalPlacesAlwaysShown = False
          OnChange = edPedidoChange
        end
        object edCotacao: TJvCalcEdit
          Left = 342
          Top = 21
          Width = 98
          Height = 23
          DecimalPlaces = 0
          DisplayFormat = '#'
          ShowButton = False
          TabOrder = 2
          DecimalPlacesAlwaysShown = False
          OnChange = edPedidoChange
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1137
        ExplicitHeight = 75
      end
    end
  end
  inherited Panel2: TPanel
    Width = 1155
    Height = 386
    ExplicitWidth = 1155
    ExplicitHeight = 386
    inherited PageControl1: TPageControl
      Width = 1149
      Height = 380
      ActivePage = TabSheet2
      Images = Resources.medium_n
      ExplicitWidth = 1149
      ExplicitHeight = 380
      inherited TabSheet1: TTabSheet
        Caption = 'Todas'
        ImageIndex = -1
        ExplicitLeft = 4
        ExplicitTop = 33
        ExplicitWidth = 1141
        ExplicitHeight = 343
        inherited DBGrid1: TDBGrid
          Width = 1135
          Height = 337
          OnDrawColumnCell = DBGrid1DrawColumnCell
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Aguardando A'#231#227'o'
        ImageIndex = 213
        ExplicitLeft = 6
        ExplicitTop = 37
      end
      object TabSheet3: TTabSheet
        Caption = 'Em Processamento'
        ImageIndex = 210
        object PageControl2: TPageControl
          AlignWithMargins = True
          Left = 3
          Top = 120
          Width = 1135
          Height = 220
          ActivePage = TabSheet4
          Align = alBottom
          TabOrder = 0
          object TabSheet4: TTabSheet
            Caption = 'Etiquetas'
            object DBGrid3: TDBGrid
              Tag = 1
              Left = 0
              Top = 0
              Width = 1127
              Height = 190
              Align = alClient
              BorderStyle = bsNone
              Ctl3D = False
              DataSource = dsPItens
              DefaultDrawing = False
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Segoe UI'
              TitleFont.Pitch = fpVariable
              TitleFont.Style = []
              OnDrawColumnCell = DBGridDrawColumnCell
              OnDblClick = DBGridDblClick
              OnEnter = DBGridEnter
              OnKeyPress = DBGridKeyPress
            end
          end
        end
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Width = 1149
    ExplicitWidth = 1149
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
  inherited alDef: TActionList
    Left = 456
    Top = 8
    inherited actNew: TAction
      Enabled = False
      Visible = False
    end
    inherited actEdit: TAction
      Enabled = False
      Visible = False
    end
    inherited actDel: TAction
      Enabled = False
      Visible = False
    end
    object actPrnEtiq: TAction
      Caption = 'Etiquetas'
      OnExecute = actPrnEtiqExecute
    end
  end
  inherited pmRel: TPopupMenu
    Left = 496
    Top = 8
    object Etiquetas1: TMenuItem
      Action = actPrnEtiq
    end
  end
  inherited pmOrder: TPopupMenu
    Left = 530
    Top = 6
  end
  inherited alRunTime: TActionList
    Left = 562
    Top = 6
  end
  inherited DataSource1: TDataSource
    Left = 544
    Top = 305
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    AfterScroll = IBrwSrcAfterScroll
    AfterInsert = IBrwSrcAfterInsert
    AfterPost = IBrwSrcAfterPost
    SQL.Strings = (
      
        'select p.recno, p.descri, p.criacao, p.emissao, p.remessa, p.ret' +
        'orno,'
      
        '       p.situacao, p.os,c.codigo, c.nome_chave, c.cnpj, c.telefo' +
        'ne,'
      
        '       c.estado, p.frascos, p.seringas, p.envio, p.correio, p.fr' +
        'ete,'
      '       p.cotacao, p.pedido, p.obs, pd.obs_remessa'
      '  from labproc p'
      '       left join tbclientes c'
      '         on c.codigo = p.codigo'
      '       left join pedido pd'
      '         on pd.recno = p.pedido')
    FetchRow = 100
    Sequence = ZSequence1
    SequenceField = 'recno'
    Left = 480
    Top = 304
    object IBrwSrcsituacao: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = ' '
      FieldName = 'situacao'
      Required = True
      OnGetText = IBrwSrcsituacaoGetText
      OnSetText = IBrwSrcsituacaoSetText
    end
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Processo'
      DisplayWidth = 7
      FieldName = 'recno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBrwSrccotacao: TIntegerField
      DisplayLabel = 'Cota'#231#227'o'
      FieldName = 'cotacao'
    end
    object IBrwSrcpedido: TIntegerField
      DisplayLabel = 'Pedido'
      FieldName = 'pedido'
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Obs'
      DisplayWidth = 25
      FieldName = 'descri'
      Visible = False
      Size = 60
    end
    object IBrwSrccriacao: TDateTimeField
      DisplayLabel = 'Cria'#231#227'o'
      FieldName = 'criacao'
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object IBrwSrcemissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'emissao'
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object IBrwSrcremessa: TDateTimeField
      DisplayLabel = 'Remessa'
      FieldName = 'remessa'
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object IBrwSrcretorno: TDateTimeField
      DisplayLabel = 'Retorno'
      FieldName = 'retorno'
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object IBrwSrcfrascos: TIntegerField
      DisplayLabel = 'Frascos'
      FieldName = 'frascos'
    end
    object IBrwSrcseringas: TIntegerField
      DisplayLabel = 'Seringas'
      FieldName = 'seringas'
      ReadOnly = True
    end
    object IBrwSrcenvio: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Tipo de Envio'
      FieldName = 'envio'
      OnGetText = IBrwSrcenvioGetText
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
    object IBrwSrcos: TIntegerField
      DisplayLabel = 'OS'
      FieldName = 'os'
    end
    object IBrwSrccodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 5
      FieldName = 'codigo'
    end
    object IBrwSrcnome_chave: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 15
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
    object IBrwSrctelefone: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 15
      FieldName = 'telefone'
      Size = 100
    end
    object IBrwSrcestado: TStringField
      DisplayLabel = 'UF'
      DisplayWidth = 4
      FieldName = 'estado'
      Size = 2
    end
    object IBrwSrcobs: TMemoField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'obs'
      Visible = False
      BlobType = ftMemo
    end
    object IBrwSrcobs_remessa: TMemoField
      DisplayLabel = 'Obs. Pedido'
      FieldName = 'obs_remessa'
      Visible = False
      BlobType = ftMemo
    end
  end
  inherited pmOpcao: TPopupMenu
    Left = 600
    Top = 8
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labproc'
      'WHERE'
      '  labproc.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO labproc'
      
        '  (recno, descri, criacao, emissao, remessa, retorno, situacao, ' +
        'codigo, os, obs)'
      'VALUES'
      
        '  (:recno, :descri, :criacao, :emissao, :remessa, :retorno, :sit' +
        'uacao, :codigo, :os, :obs)')
    ModifySQL.Strings = (
      'UPDATE labproc SET'
      '  descri = :descri,'
      '  emissao = :emissao,'
      '  remessa = :remessa,'
      '  retorno = :retorno,'
      '  situacao = :situacao,'
      '  os = :os,'
      '  codigo = :codigo,'
      '  obs = :obs'
      'WHERE'
      '  labproc.recno = :OLD_recno')
    Left = 424
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'descri'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emissao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'remessa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'retorno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'situacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'os'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'obs'
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
      end
      item
        DataType = ftUnknown
        Name = 'criacao'
        ParamType = ptUnknown
      end>
  end
  object ZSequence1: TZSequence
    SequenceName = 'public.labproc_recno_seq'
    Left = 360
    Top = 304
  end
  object qPItens: TZQuery
    Connection = DM.Design
    SortedFields = 'etiq_proc'
    OnCalcFields = qPItensCalcFields
    UpdateObject = uPItens
    AfterInsert = qPItensAfterInsert
    SQL.Strings = (
      
        'select pe.recno, pe.tipo, pe.validade, pe.dataprog, pe.labproc_r' +
        'ecno, pe.amostra, c.comodato'
      '  from labprocxequip pe       '
      '       left join labamostras c'
      '         on c.recno = pe.amostra'
      'where pe.labproc_recno = :proc')
    Params = <
      item
        DataType = ftUnknown
        Name = 'proc'
        ParamType = ptUnknown
      end>
    IndexFieldNames = 'etiq_proc Asc'
    Sequence = sPItens
    SequenceField = 'recno'
    Left = 480
    Top = 360
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'proc'
        ParamType = ptUnknown
      end>
    object qPItensrecno: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'recno'
      Required = True
    end
    object qPItensamostra: TIntegerField
      DisplayLabel = 'Amostra'
      FieldName = 'amostra'
      Required = True
    end
    object qPItensetiq_proc: TStringField
      DisplayLabel = 'Etiqueta'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'etiq_proc'
      EditMask = '000.000.000.000;0;'
      Size = 12
      Calculated = True
    end
    object qPItenstipo: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Tipo'
      FieldName = 'tipo'
      Required = True
      OnGetText = qPItenstipoGetText
      OnSetText = qPItenstipoSetText
    end
    object qPItensvalidade: TDateField
      DisplayLabel = 'Esteriliza'#231#227'o'
      FieldName = 'validade'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qPItenslabproc_recno: TIntegerField
      FieldName = 'labproc_recno'
      Required = True
      Visible = False
    end
    object qPItensetiq_tipo: TStringField
      FieldKind = fkCalculated
      FieldName = 'etiq_tipo'
      Visible = False
      Size = 15
      Calculated = True
    end
    object qPItensdataprog: TDateField
      DisplayLabel = 'Programa'#231#227'o'
      FieldName = 'dataprog'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qPItenscomodato: TIntegerField
      FieldName = 'comodato'
      Visible = False
    end
  end
  object uPItens: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labprocxequip'
      'WHERE'
      '  labprocxequip.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO labprocxequip'
      '  (recno, labproc_recno, amostra, tipo, validade, dataprog)'
      'VALUES'
      
        '  (:recno, :labproc_recno, :amostra, :tipo, :validade, :dataprog' +
        ')')
    ModifySQL.Strings = (
      'UPDATE labprocxequip SET'
      '  recno = :recno,'
      '  labproc_recno = :labproc_recno,'
      '  amostra = :amostra,'
      '  tipo = :tipo,'
      '  validade = :validade,'
      '  dataprog = :dataprog'
      'WHERE'
      '  labprocxequip.recno = :OLD_recno')
    UseSequenceFieldForRefreshSQL = False
    Left = 424
    Top = 360
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'labproc_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'amostra'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'validade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dataprog'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_recno'
        ParamType = ptUnknown
      end>
  end
  object sPItens: TZSequence
    Connection = DM.Design
    SequenceName = 'public.labprocxequip_recno_seq'
    Left = 360
    Top = 360
  end
  object dsPItens: TDataSource
    AutoEdit = False
    DataSet = qPItens
    Left = 544
    Top = 361
  end
end
