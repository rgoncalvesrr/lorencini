inherited LabProcOld: TLabProcOld
  Caption = 'Processo Laboratorial'
  ClientHeight = 545
  Constraints.MinWidth = 793
  ExplicitHeight = 584
  PixelsPerInch = 96
  TextHeight = 15
  inherited ToolBar1: TToolBar
    ButtonWidth = 90
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
    object ToolButton12: TToolButton
      Left = 420
      Top = 0
      Action = actRemessa
      Style = tbsTextButton
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 521
    ExplicitTop = 521
  end
  inherited Panel1: TPanel
    inherited pctlFind: TPageControl
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 819
        ExplicitHeight = 65
        object Label1: TLabel [0]
          Left = 3
          Top = 3
          Width = 45
          Height = 15
          Caption = 'Situa'#231#227'o'
        end
        object Label18: TLabel [1]
          Left = 272
          Top = 3
          Width = 90
          Height = 15
          Caption = 'Vizualizar cliente:'
          Transparent = True
        end
        object Label3: TLabel [2]
          Left = 120
          Top = 3
          Width = 43
          Height = 15
          Caption = 'Emiss'#227'o'
        end
        object Label4: TLabel [3]
          Left = 120
          Top = 47
          Width = 128
          Height = 15
          Caption = '01/01/2016 a 31/03/2016'
        end
        inherited BitBtn2: TBitBtn
          Left = 574
          Top = 21
          ExplicitLeft = 574
          ExplicitTop = 21
        end
        object cbSituacao: TComboBox
          Left = 3
          Top = 21
          Width = 111
          Height = 23
          Style = csDropDownList
          ItemHeight = 15
          ItemIndex = 0
          TabOrder = 1
          Text = 'Em Digita'#231#227'o'
          OnChange = cbSituacaoChange
          Items.Strings = (
            'Em Digita'#231#227'o'
            'Emitido'
            'Remetidos'
            'Encerrados'
            'Expirados'
            'Todos')
        end
        object ComboBox1: TComboBox
          Left = 272
          Top = 21
          Width = 264
          Height = 23
          DropDownCount = 30
          ItemHeight = 15
          TabOrder = 2
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
        inline FrameData1: TFrameData
          Left = 120
          Top = 21
          Width = 148
          Height = 23
          TabOrder = 3
          ExplicitLeft = 120
          ExplicitTop = 21
          ExplicitWidth = 148
          ExplicitHeight = 23
          inherited ComboBox1: TComboBox
            Height = 23
            ItemHeight = 15
            ExplicitHeight = 23
          end
          inherited CCalendarDiff1: TCCalendarDiff
            Interval = diQuarterly
            Date = 42424.705553113420000000
            DisplayInterval = Label4
            OnChange = ComboBox1Change
          end
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 819
        ExplicitHeight = 65
      end
    end
  end
  inherited Panel2: TPanel
    Height = 402
    ExplicitHeight = 402
    object Splitter1: TSplitter [0]
      Left = 0
      Top = 234
      Width = 837
      Height = 6
      Cursor = crVSplit
      Align = alBottom
      Beveled = True
      ExplicitTop = 225
      ExplicitWidth = 884
    end
    inherited PageControl1: TPageControl
      Height = 228
      ExplicitHeight = 228
      inherited TabSheet1: TTabSheet
        Caption = 'Em Digita'#231#227'o'
        ImageIndex = 27
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 823
        ExplicitHeight = 198
        inherited DBGrid1: TDBGrid
          Height = 198
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Emitidos'
        ImageIndex = 28
      end
      object TabSheet3: TTabSheet
        Caption = 'Remetidos'
        ImageIndex = 26
      end
      object TabSheet5: TTabSheet
        Caption = 'Encerrados'
        ImageIndex = 25
      end
      object TabSheet4: TTabSheet
        Caption = 'Expirados'
        ImageIndex = 29
      end
      object TabSheet6: TTabSheet
        Caption = 'Todos'
        ImageIndex = -1
      end
    end
    object PageControl2: TPageControl
      Left = 0
      Top = 240
      Width = 837
      Height = 162
      ActivePage = TabSheet7
      Align = alBottom
      TabOrder = 1
      TabStop = False
      object TabSheet7: TTabSheet
        Caption = 'Opera'#231#245'es Sobre o Processo'
        ImageIndex = 34
        object DBGrid2: TDBGrid
          Tag = 1
          Left = 0
          Top = 0
          Width = 829
          Height = 132
          Align = alClient
          BorderStyle = bsNone
          Ctl3D = False
          DataSource = LabProcPort.dsPort
          DefaultDrawing = False
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnDrawColumnCell = DBGridDrawColumnCell
          OnDblClick = DBGridDblClick
          OnEnter = DBGridEnter
          OnKeyPress = DBGridKeyPress
        end
      end
    end
  end
  inherited alDef: TActionList
    Left = 456
    Top = 8
    object actPrnEtiq: TAction
      Caption = 'Etiquetas'
      OnExecute = actPrnEtiqExecute
    end
    object actRemessa: TAction
      Caption = 'Remessa...'
      Enabled = False
      Hint = 'Gerar Remessa para o processo selecionado'
      ImageIndex = 94
      OnExecute = actRemessaExecute
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
    Left = 736
    Top = 9
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    AfterScroll = IBrwSrcAfterScroll
    AfterInsert = IBrwSrcAfterInsert
    SQL.Strings = (
      
        'select p.recno, p.descri, p.criacao, p.emissao, p.remessa, p.ret' +
        'orno,'
      
        '       p.situacao, p.os,c.codigo, c.nome_chave, c.cnpj, c.telefo' +
        'ne, '
      '       c.estado, p.frascos, p.seringas'
      '  from labproc p'
      '       left join tbclientes c'
      '         on c.codigo = p.codigo')
    FetchRow = 100
    Sequence = ZSequence1
    SequenceField = 'recno'
    Left = 704
    Top = 8
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Processo'
      DisplayWidth = 7
      FieldName = 'recno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 25
      FieldName = 'descri'
      Required = True
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
    object IBrwSrcsituacao: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'situacao'
      Required = True
      OnGetText = IBrwSrcsituacaoGetText
      OnSetText = IBrwSrcsituacaoSetText
    end
    object IBrwSrcfrascos: TIntegerField
      DisplayLabel = 'Frascos'
      FieldName = 'frascos'
    end
    object IBrwSrcseringas: TIntegerField
      DisplayLabel = 'Seringas'
      FieldName = 'seringas'
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
      '  (recno, descri, criacao, emissao, remessa, '
      '     retorno, situacao, codigo, os)'
      'VALUES'
      '  (:recno, :descri, :criacao, :emissao, :remessa, '
      '      :retorno, :situacao, :codigo, :os)')
    ModifySQL.Strings = (
      'UPDATE labproc SET'
      '  descri = :descri,'
      '  emissao = :emissao,'
      '  remessa = :remessa,'
      '  retorno = :retorno,'
      '  situacao = :situacao,'
      '  os = :os,'
      '  codigo = :codigo'
      'WHERE'
      '  labproc.recno = :OLD_recno')
    Left = 672
    Top = 8
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
    Left = 640
    Top = 8
  end
  object qPItens: TZQuery
    Connection = DM.Design
    SortedFields = 'etiq_proc'
    OnCalcFields = qPItensCalcFields
    UpdateObject = uPItens
    AfterInsert = qPItensAfterInsert
    SQL.Strings = (
      'select pe.recno,    pe.codigo,     pe.tipo,     pe.equip_recno,'
      '       ce.tag,      ce.serie,      ce.potencia, ce.tensao,'
      '       ce.fases,    ce.fabricante, ce.lote,     pe.validade,'
      '       ce.ano,      ce.isolante,   ce.volume,   ce.drenos,'
      '       ce.imped,    pe.dataprog,   ce.tipo as tipo_e,'
      
        '       ce.reg_nome, ce.sigla,      ce.nome,     pe.labproc_recno' +
        ','
      '       c.situacao,  c.ean39,       pe.comodato_recno'
      '  from labprocxequip pe'
      '       left join vequipxcli ce'
      '         on ce.codigo = pe.codigo'
      '        and ce.equip = pe.equip_recno       '
      '       left join comodato c'
      '         on c.recno = pe.comodato_recno'
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
    Left = 704
    Top = 40
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
    object qPItenscodigo: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'codigo'
      Required = True
      Visible = False
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
    object qPItensequip_recno: TIntegerField
      DisplayLabel = 'Equipamento'
      DisplayWidth = 5
      FieldName = 'equip_recno'
      OnChange = qPItensequip_recnoChange
    end
    object qPItenstag: TStringField
      DisplayLabel = 'C'#243'digo Cliente'
      DisplayWidth = 25
      FieldName = 'tag'
      Size = 50
    end
    object qPItensserie: TStringField
      DisplayLabel = 'S'#233'rie'
      DisplayWidth = 20
      FieldName = 'serie'
      Size = 30
    end
    object qPItenspotencia: TFloatField
      DisplayLabel = 'Pot'#234'ncia'
      FieldName = 'potencia'
      DisplayFormat = ',0.#0 MVA'
    end
    object qPItenstensao: TFloatField
      DisplayLabel = 'Tens'#227'o'
      FieldName = 'tensao'
      DisplayFormat = ',0.#0 %z'
    end
    object qPItensimped: TFloatField
      DisplayLabel = 'Imped'#226'ncia'
      FieldName = 'imped'
      DisplayFormat = ',0.#0 KV'
    end
    object qPItenstipo_e: TStringField
      DisplayLabel = 'Tipo Equipamento'
      DisplayWidth = 20
      FieldName = 'tipo_e'
      Size = 255
    end
    object qPItensfabricante: TStringField
      DisplayLabel = 'Fabricante'
      FieldName = 'fabricante'
      Visible = False
      Size = 255
    end
    object qPItensano: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'ano'
      Visible = False
    end
    object qPItenslote: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'lote'
      Size = 15
    end
    object qPItensisolante: TStringField
      DisplayLabel = 'Isolante'
      FieldName = 'isolante'
      Visible = False
      Size = 255
    end
    object qPItensfases: TIntegerField
      DisplayLabel = 'Fases'
      DisplayWidth = 5
      FieldName = 'fases'
    end
    object qPItensvolume: TIntegerField
      DisplayLabel = 'Volume'
      FieldName = 'volume'
      Visible = False
      DisplayFormat = '0 L'
    end
    object qPItensdrenos: TStringField
      DisplayLabel = 'Drenos'
      FieldName = 'drenos'
      Visible = False
      Size = 5
    end
    object qPItensreg_nome: TStringField
      DisplayLabel = 'Regional'
      DisplayWidth = 25
      FieldName = 'reg_nome'
      Visible = False
      Size = 60
    end
    object qPItenssigla: TStringField
      DisplayLabel = 'Sigla'
      FieldName = 'sigla'
      Visible = False
      Size = 3
    end
    object qPItensnome: TStringField
      DisplayLabel = 'Subesta'#231#227'o'
      DisplayWidth = 25
      FieldName = 'nome'
      Visible = False
      Size = 60
    end
    object qPItenslabproc_recno: TIntegerField
      FieldName = 'labproc_recno'
      Required = True
      Visible = False
    end
    object qPItenscomodato_recno: TIntegerField
      DisplayLabel = 'C'#243'digo de Barra'
      FieldName = 'comodato_recno'
      Visible = False
    end
    object qPItenssituacao: TIntegerField
      FieldName = 'situacao'
      Visible = False
    end
    object qPItensean39: TStringField
      DisplayLabel = 'Etiqueta'
      DisplayWidth = 20
      FieldName = 'ean39'
      Visible = False
      Size = 50
    end
    object qPItensetiq_local: TStringField
      FieldKind = fkCalculated
      FieldName = 'etiq_local'
      Visible = False
      Size = 50
      Calculated = True
    end
    object qPItensetiq_tag: TStringField
      FieldKind = fkCalculated
      FieldName = 'etiq_tag'
      Visible = False
      Size = 50
      Calculated = True
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
  end
  object uPItens: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labprocxequip'
      'WHERE'
      '  labprocxequip.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO labprocxequip'
      '  (recno, codigo, labproc_recno, equip_recno, comodato_recno, '
      '   tipo, validade, dataprog)'
      'VALUES'
      
        '  (:recno, :codigo, :labproc_recno, :equip_recno, :comodato_recn' +
        'o, '
      '   :tipo, :validade, :dataprog)')
    ModifySQL.Strings = (
      'UPDATE labprocxequip SET'
      '  recno = :recno,'
      '  codigo = :codigo,'
      '  labproc_recno = :labproc_recno,'
      '  equip_recno = :equip_recno,'
      '  comodato_recno = :comodato_recno,'
      '  tipo = :tipo,'
      '  validade = :validade,'
      '  dataprog = :dataprog'
      'WHERE'
      '  labprocxequip.recno = :OLD_recno')
    UseSequenceFieldForRefreshSQL = False
    Left = 672
    Top = 40
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
        Name = 'labproc_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'equip_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'comodato_recno'
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
    Left = 640
    Top = 40
  end
  object dsPItens: TDataSource
    AutoEdit = False
    DataSet = qPItens
    Left = 736
    Top = 41
  end
end
