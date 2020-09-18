inherited LabAmostras: TLabAmostras
  Caption = 'Revis'#227'o de Amostras'
  ClientHeight = 530
  ClientWidth = 1011
  Constraints.MinWidth = 0
  ExplicitWidth = 1027
  ExplicitHeight = 569
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 503
    Width = 1005
    ExplicitTop = 503
    ExplicitWidth = 1005
  end
  inherited Panel1: TPanel
    Width = 1011
    ExplicitWidth = 1011
    inherited pctlFind: TPageControl
      Width = 1001
      ExplicitWidth = 1001
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 993
        ExplicitHeight = 75
        inherited BitBtn2: TBitBtn
          Left = 892
          ExplicitLeft = 892
        end
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 80
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Label4: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 74
            Height = 15
            Align = alTop
            Caption = 'Pedido'
            ExplicitWidth = 37
          end
          object edPedido: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 74
            Height = 23
            Align = alTop
            DecimalPlaces = 0
            DisplayFormat = '#'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
            OnChange = CriteriaChange
          end
        end
        object Panel4: TPanel
          Left = 80
          Top = 0
          Width = 80
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object Label5: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 74
            Height = 15
            Align = alTop
            Caption = 'Amostra'
            ExplicitWidth = 45
          end
          object edAmostra: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 74
            Height = 23
            Align = alTop
            DecimalPlaces = 0
            DisplayFormat = '#'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
            OnChange = CriteriaChange
          end
        end
        object Panel5: TPanel
          Left = 160
          Top = 0
          Width = 80
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 3
          object Label6: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 74
            Height = 15
            Align = alTop
            Caption = 'Etiqueta'
            ExplicitWidth = 43
          end
          object edEtiqueta: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 74
            Height = 23
            Align = alTop
            DecimalPlaces = 0
            DisplayFormat = '#'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
            OnChange = CriteriaChange
          end
        end
        object Panel7: TPanel
          Left = 736
          Top = 0
          Width = 153
          Height = 75
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 6
          object Label3: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 147
            Height = 15
            Align = alTop
            Caption = 'Data de Entrada'
            Transparent = True
            ExplicitWidth = 83
          end
          object Label1: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 54
            Width = 147
            Height = 15
            Align = alTop
            ExplicitWidth = 3
          end
          inline FrameData1: TFrameData
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 147
            Height = 24
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
            ExplicitWidth = 147
            ExplicitHeight = 24
            inherited ComboBox1: TComboBox
              Width = 147
              ExplicitWidth = 147
            end
            inherited CCalendarDiff1: TCCalendarDiff
              Date = 44075.747045115740000000
              DisplayInterval = Label1
              OnChange = FrameData1CCalendarDiff1Change
            end
          end
        end
        object Panel8: TPanel
          Left = 240
          Top = 0
          Width = 212
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 4
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
            OnChange = CriteriaChange
          end
        end
        object Panel9: TPanel
          Left = 452
          Top = 0
          Width = 284
          Height = 75
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 5
          object Label8: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 278
            Height = 15
            Align = alTop
            Caption = 'Nome Empresarial'
            ExplicitWidth = 97
          end
          object edRazao: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 278
            Height = 23
            Align = alTop
            TabOrder = 0
            OnChange = CriteriaChange
          end
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 993
        ExplicitHeight = 75
      end
    end
  end
  inherited Panel2: TPanel
    Width = 1011
    Height = 371
    ExplicitWidth = 1011
    ExplicitHeight = 371
    inherited PageControl1: TPageControl
      Width = 1005
      Height = 365
      ExplicitWidth = 1005
      ExplicitHeight = 365
      inherited TabSheet1: TTabSheet
        Caption = 'Amostras'
        ImageIndex = -1
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 997
        ExplicitHeight = 335
        inherited DBGrid1: TDBGrid
          Width = 991
          Height = 329
        end
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Width = 1005
    ExplicitWidth = 1005
    inherited ToolBar1: TToolBar
      Width = 784
      ExplicitWidth = 784
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
    Left = 360
    Top = 168
    inherited actNew: TAction
      Enabled = False
      Visible = False
    end
    inherited actDel: TAction
      Enabled = False
      Visible = False
    end
  end
  inherited pmRel: TPopupMenu
    Left = 408
    Top = 168
  end
  inherited pmOrder: TPopupMenu
    Left = 458
    Top = 166
  end
  inherited alRunTime: TActionList
    Left = 522
    Top = 166
  end
  inherited DataSource1: TDataSource
    Left = 296
    Top = 168
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SortedFields = 'entrada'
    SQL.Strings = (
      
        'select distinct a.recno,           a.codigo,      a.umidade,   a' +
        '.equip_recno,  a.estado_data entrada,  a.coleta,'
      
        '       a.tpamostra_recno, a.amostrador,  a.tamb,      a.toleo,  ' +
        '      a.labsubest_recno,     a.tensao,'
      
        '       a.estado,          a.origem,      a.tag,       a.local,  ' +
        '      a.destinatario,        c.empresa,'
      
        '       c.nome_chave,      c.cnpj,        c.cpf,       c.telefone' +
        ',     c.cidade,              c.estado, c.email,'
      
        '       e.fabricante,      e.serie,       e.tipo,      e.descri, ' +
        '      e.potencia,            e.imped,'
      
        '       e.tensao,          e.fases,       e.ano,       e.lote,   ' +
        '      e.isolante,            e.volume,'
      
        '       e.drenos,          e.familia,     e.tensao_un, e.potencia' +
        '_un,  tp.descri,             tp.inf_te,'
      
        '       s.sigla,           s.nome,        s.regional,  s.reg_nome' +
        ',     pa.pedido,             a.comodato,'
      
        '       a.cliente,         cf.empresa empresacli,     cf.nome_cha' +
        've nome_chavecli, cf.cnpj cnpj_cli, cf.cpf cpf_cli,'
      
        '       cf.telefone telefone_cli, cf.cidade cidade_cli, cf.estado' +
        ' estado_cli, cf.email email_cli,'
      '       a.tequip'
      '  from labamostras a'
      '       join tbclientes c'
      '         on c.codigo = a.codigo'
      '       join tbclientes cf'
      '         on cf.codigo = a.cliente'
      '       left join vequip e'
      '         on e.recno = a.equip_recno'
      '       left join labtipo tp'
      '         on tp.recno = a.tpamostra_recno'
      '       left join vsubest s'
      '         on s.codigo = c.codigo'
      '        and s.recno = a.labsubest_recno'
      '       left join pedido_amostras pa'
      '         on pa.amostra = a.recno'
      ' where a.estado = 40')
    IndexFieldNames = 'entrada Asc'
    Sequence = ZSequence1
    SequenceField = 'recno'
    Left = 232
    Top = 168
    object IBrwSrcestado: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Estado'
      FieldName = 'estado'
      Required = True
      Visible = False
    end
    object IBrwSrcpedido: TIntegerField
      DisplayLabel = 'Pedido'
      FieldName = 'pedido'
    end
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Amostra'
      FieldName = 'recno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBrwSrccomodato: TIntegerField
      DisplayLabel = 'Etiqueta'
      FieldName = 'comodato'
      Required = True
    end
    object IBrwSrcentrada: TDateField
      DisplayLabel = 'Entrada'
      FieldName = 'entrada'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object IBrwSrccodigo: TIntegerField
      DisplayLabel = 'Patrocinador'
      FieldName = 'codigo'
      Required = True
    end
    object IBrwSrcnome_chave: TStringField
      DisplayLabel = 'Nome Fantasia'
      DisplayWidth = 25
      FieldName = 'nome_chave'
      Size = 45
    end
    object IBrwSrcempresa: TStringField
      DisplayLabel = 'Nome Empresarial'
      DisplayWidth = 40
      FieldName = 'empresa'
      Size = 100
    end
    object IBrwSrccnpj: TStringField
      DisplayLabel = 'C.N.P.J.'
      DisplayWidth = 18
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object IBrwSrccpf: TStringField
      DisplayLabel = 'C.P.F.'
      DisplayWidth = 14
      FieldName = 'cpf'
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object IBrwSrccidade: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 25
      FieldName = 'cidade'
      Size = 100
    end
    object IBrwSrcestado_1: TStringField
      DisplayLabel = 'Estado'
      DisplayWidth = 3
      FieldName = 'estado_1'
      Size = 2
    end
    object IBrwSrcequip_recno: TIntegerField
      DisplayLabel = 'Equipamento'
      FieldName = 'equip_recno'
      Visible = False
      OnChange = IBrwSrcequip_recnoChange
    end
    object IBrwSrcserie: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'serie'
      Visible = False
      Size = 30
    end
    object IBrwSrcfabricante: TStringField
      DisplayLabel = 'Fabricante'
      DisplayWidth = 25
      FieldName = 'fabricante'
      Visible = False
      Size = 255
    end
    object IBrwSrctipo: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 20
      FieldName = 'tipo'
      Visible = False
      Size = 255
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Visible = False
      Size = 60
    end
    object IBrwSrcpotencia: TFloatField
      DisplayLabel = 'Pot'#234'ncia'
      FieldName = 'potencia'
      Visible = False
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcpotencia_un: TStringField
      DisplayLabel = 'P. Unidade'
      FieldName = 'potencia_un'
      Visible = False
      Size = 3
    end
    object IBrwSrcimped: TFloatField
      DisplayLabel = 'Imped'#226'ncia'
      FieldName = 'imped'
      Visible = False
      DisplayFormat = ',0.#0'
    end
    object IBrwSrctensao_1: TFloatField
      DisplayLabel = 'Tens'#227'o'
      FieldName = 'tensao_1'
      Visible = False
      DisplayFormat = ',0.#0'
    end
    object IBrwSrctensao_un: TStringField
      DisplayLabel = 'T. Unidade'
      FieldName = 'tensao_un'
      Visible = False
      Size = 3
    end
    object IBrwSrcfases: TIntegerField
      DisplayLabel = 'Fases'
      FieldName = 'fases'
      Visible = False
    end
    object IBrwSrcano: TIntegerField
      FieldName = 'ano'
      Visible = False
    end
    object IBrwSrclote: TStringField
      FieldName = 'lote'
      Visible = False
      Size = 15
    end
    object IBrwSrcisolante: TStringField
      DisplayLabel = 'Isolante'
      DisplayWidth = 20
      FieldName = 'isolante'
      Visible = False
      Size = 255
    end
    object IBrwSrcvolume: TIntegerField
      DisplayLabel = 'Volume'
      DisplayWidth = 7
      FieldName = 'volume'
      Visible = False
      DisplayFormat = ',0 L'
    end
    object IBrwSrcdrenos: TStringField
      DisplayLabel = 'Drenos'
      FieldName = 'drenos'
      Visible = False
      Size = 5
    end
    object IBrwSrcfamilia: TStringField
      DisplayLabel = 'Fam'#237'lia'
      DisplayWidth = 25
      FieldName = 'familia'
      Visible = False
      Size = 255
    end
    object IBrwSrccoleta: TDateField
      DisplayLabel = 'Coleta'
      FieldName = 'coleta'
      Visible = False
      DisplayFormat = 'dd/mm/yyyy'
    end
    object IBrwSrcamostrador: TStringField
      DisplayLabel = 'Amostrador'
      FieldName = 'amostrador'
      Visible = False
      Size = 60
    end
    object IBrwSrctpamostra_recno: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'tpamostra_recno'
      Visible = False
      OnChange = IBrwSrctpamostra_recnoChange
    end
    object IBrwSrcdescri_1: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'descri_1'
      Visible = False
      Size = 60
    end
    object IBrwSrcinf_te: TBooleanField
      DisplayLabel = 'Exige Equipamento'
      FieldName = 'inf_te'
      Visible = False
    end
    object IBrwSrctamb: TIntegerField
      DisplayLabel = 'T. Ambiente'
      FieldName = 'tamb'
      Visible = False
    end
    object IBrwSrctoleo: TIntegerField
      DisplayLabel = 'T. '#211'leo'
      FieldName = 'toleo'
      Visible = False
    end
    object IBrwSrctequip: TFloatField
      DisplayLabel = 'T. Equip.'
      FieldName = 'tequip'
      Required = True
    end
    object IBrwSrcumidade: TIntegerField
      DisplayLabel = 'Umidade'
      FieldName = 'umidade'
      Visible = False
    end
    object IBrwSrctensao: TFloatField
      DisplayLabel = 'Tens'#227'o'
      FieldName = 'tensao'
      Visible = False
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcorigem: TIntegerField
      FieldName = 'origem'
      Visible = False
    end
    object IBrwSrclabsubest_recno: TIntegerField
      DisplayLabel = 'Localiza'#231#227'o'
      FieldName = 'labsubest_recno'
      Visible = False
      OnChange = IBrwSrclabsubest_recnoChange
    end
    object IBrwSrcsigla: TStringField
      DisplayLabel = 'Sigla'
      FieldName = 'sigla'
      Visible = False
      Size = 3
    end
    object IBrwSrcnome: TStringField
      DisplayLabel = 'Local'
      FieldName = 'nome'
      Visible = False
      Size = 60
    end
    object IBrwSrcregional: TIntegerField
      DisplayLabel = 'Regional'
      FieldName = 'regional'
      Visible = False
    end
    object IBrwSrcreg_nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'reg_nome'
      Visible = False
      Size = 60
    end
    object IBrwSrctag: TStringField
      DisplayLabel = 'S'#233'rie Cliente'
      DisplayWidth = 20
      FieldName = 'tag'
      Visible = False
      Size = 50
    end
    object IBrwSrclocal: TStringField
      DisplayLabel = 'Local'
      DisplayWidth = 25
      FieldName = 'local'
      Visible = False
      Size = 50
    end
    object IBrwSrcdestinatario: TStringField
      FieldName = 'destinatario'
      Visible = False
      Size = 100
    end
    object IBrwSrctelefone: TStringField
      FieldName = 'telefone'
      Visible = False
      Size = 100
    end
    object IBrwSrccliente: TIntegerField
      FieldName = 'cliente'
      Required = True
      Visible = False
    end
    object IBrwSrcempresacli: TStringField
      FieldName = 'empresacli'
      Visible = False
      Size = 100
    end
    object IBrwSrcnome_chavecli: TStringField
      FieldName = 'nome_chavecli'
      Visible = False
      Size = 45
    end
    object IBrwSrccnpj_cli: TStringField
      FieldName = 'cnpj_cli'
      Visible = False
      Size = 14
    end
    object IBrwSrccpf_cli: TStringField
      FieldName = 'cpf_cli'
      Visible = False
      Size = 11
    end
    object IBrwSrctelefone_cli: TStringField
      FieldName = 'telefone_cli'
      Visible = False
      Size = 100
    end
    object IBrwSrccidade_cli: TStringField
      FieldName = 'cidade_cli'
      Visible = False
      Size = 100
    end
    object IBrwSrcestado_cli: TStringField
      FieldName = 'estado_cli'
      Visible = False
      Size = 2
    end
    object IBrwSrcemail: TStringField
      FieldName = 'email'
      Visible = False
      Size = 100
    end
    object IBrwSrcemail_cli: TStringField
      FieldName = 'email_cli'
      Visible = False
      Size = 100
    end
  end
  inherited pmOpcao: TPopupMenu
    Left = 592
    Top = 167
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labamostras'
      'WHERE'
      '  labamostras.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO labamostras'
      
        '  (recno, codigo, equip_recno, tpamostra_recno, coleta, amostrad' +
        'or, tamb, toleo, umidade, tensao, estado, origem,'
      '   labsubest_recno, local, tequip)'
      'VALUES'
      
        '  (:recno, :codigo, :equip_recno, :tpamostra_recno, :coleta, :am' +
        'ostrador, :tamb, :toleo, :umidade, :tensao, :estado, :origem,'
      '   :labsubest_recno, :local, :tequip)')
    ModifySQL.Strings = (
      'UPDATE labamostras SET'
      '  equip_recno = :equip_recno,'
      '  tpamostra_recno = :tpamostra_recno,'
      '  coleta = :coleta,'
      '  amostrador = :amostrador,'
      '  tamb = :tamb,'
      '  toleo = :toleo,'
      '  tequip = :tequip,'
      '  umidade = :umidade,'
      '  tensao = :tensao,'
      '  estado = :estado,'
      '  labsubest_recno = :labsubest_recno,'
      '  tag = :tag,'
      '  local = :local,'
      '  cliente = :cliente,'
      '  destinatario = :destinatario'
      'WHERE'
      '  labamostras.recno = :OLD_recno')
    Left = 176
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'equip_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tpamostra_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'coleta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'amostrador'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tamb'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'toleo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tequip'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'umidade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tensao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'estado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'labsubest_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tag'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'local'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'destinatario'
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
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'origem'
        ParamType = ptUnknown
      end>
  end
  object ZSequence1: TZSequence
    Connection = DM.Design
    SequenceName = 'public.labamostras_recno_seq'
    Left = 104
    Top = 168
  end
end
