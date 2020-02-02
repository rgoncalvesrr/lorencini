inherited Precos: TPrecos
  Caption = 'Pol'#237'tica de Pre'#231'os'
  ClientHeight = 472
  ExplicitWidth = 853
  ExplicitHeight = 511
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 445
    ExplicitTop = 445
  end
  inherited Panel1: TPanel
    inherited pctlFind: TPageControl
      inherited tsQuery: TTabSheet
        object Label1: TLabel [0]
          Left = 3
          Top = 8
          Width = 33
          Height = 15
          Caption = 'Grupo'
        end
        object cbCat: TComboBox
          Left = 3
          Top = 29
          Width = 280
          Height = 23
          Style = csDropDownList
          ItemHeight = 15
          TabOrder = 1
          OnChange = cbCatChange
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
    Height = 323
    ExplicitHeight = 323
    inherited PageControl1: TPageControl
      Height = 317
      ExplicitHeight = 317
      inherited TabSheet1: TTabSheet
        Caption = 'Pre'#231'os dos Laudos'
        inherited DBGrid1: TDBGrid
          Height = 287
        end
      end
    end
  end
  inherited ctrlBarTop: TControlBar
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
    Left = 216
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    AfterScroll = IBrwSrcAfterScroll
    SQL.Strings = (
      'select s.grupo, g.descri descri_grupo, s.codserv, s.descri, '
      '       s.valor, s.tipo, s.recno'
      '  from servicos s'
      '       join (select codserv'
      '               from labrel'
      '              where ativo'
      '              group by codserv) sg'
      '         on sg.codserv = s.codserv'
      '       join servicos_grupo g'
      '         on g.recno = s.grupo'
      ' where s.grupo = :grupo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'grupo'
        ParamType = ptUnknown
      end>
    Left = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'grupo'
        ParamType = ptUnknown
      end>
    object IBrwSrcgrupo: TIntegerField
      FieldName = 'grupo'
      Visible = False
    end
    object IBrwSrcdescri_grupo: TStringField
      FieldName = 'descri_grupo'
      Visible = False
      Size = 80
    end
    object IBrwSrccodserv: TIntegerField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'codserv'
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Size = 80
    end
    object IBrwSrcvalor: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'valor'
      DisplayFormat = ',#.#0'
    end
    object IBrwSrctipo: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Tipo'
      FieldName = 'tipo'
      OnGetText = IBrwSrctipoGetText
      OnSetText = IBrwSrctipoSetText
    end
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM servicos'
      'WHERE'
      
        '  ((servicos.codserv IS NULL AND :OLD_codserv IS NULL) OR (servi' +
        'cos.codserv = :OLD_codserv))')
    InsertSQL.Strings = (
      'INSERT INTO servicos'
      '  (grupo, codserv, descri, valor, tipo, recno)'
      'VALUES'
      '  (:grupo, :codserv, :descri, :valor, :tipo, :recno)')
    ModifySQL.Strings = (
      'UPDATE servicos SET'
      '  valor = :valor'
      'WHERE'
      '  servicos.codserv = :OLD_codserv')
    Left = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_codserv'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'grupo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codserv'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'descri'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end>
  end
  object sqLaudosCli: TZSequence
    Connection = DM.Design
    SequenceName = 'public.tbclientesprecos_recno_seq'
    Left = 40
    Top = 216
  end
  object qGrupoServ: TZReadOnlyQuery
    Connection = DM.Design
    SortedFields = 'descri'
    AfterScroll = qGrupoServAfterScroll
    SQL.Strings = (
      'select g.recno, g.descri'
      '  from servicos_grupo g'
      '       join servicos s'
      '         on s.grupo = g.recno'
      '       join labrel r'
      '         on r.codserv = s.codserv'
      '        and r.ativo'
      ' group by g.recno, g.descri')
    Params = <>
    IndexFieldNames = 'descri Asc'
    Left = 152
    Top = 104
    object qGrupoServrecno: TIntegerField
      FieldName = 'recno'
      ReadOnly = True
    end
    object qGrupoServdescri: TStringField
      FieldName = 'descri'
      ReadOnly = True
      Size = 80
    end
  end
  object zLaudos: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labrel'
      'WHERE'
      
        '  ((labrel.recno IS NULL AND :OLD_recno IS NULL) OR (labrel.recn' +
        'o = :OLD_recno))')
    InsertSQL.Strings = (
      'INSERT INTO labrel'
      '  (valor)'
      'VALUES'
      '  (:valor)')
    ModifySQL.Strings = (
      'UPDATE labrel SET'
      '  valor = :valor'
      'WHERE'
      '  labrel.recno = :OLD_recno')
    UseSequenceFieldForRefreshSQL = False
    Left = 96
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_recno'
        ParamType = ptUnknown
      end>
  end
  object qLaudos: TZQuery
    Connection = DM.Design
    AfterScroll = qLaudosAfterScroll
    UpdateObject = zLaudos
    SQL.Strings = (
      'select recno, descri, valor, codserv, titulo '
      '  from labrel '
      ' where ativo '
      '   and codserv = :servico'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'servico'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    Left = 152
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'servico'
        ParamType = ptUnknown
      end>
    object qLaudosrecno: TIntegerField
      DisplayLabel = 'Relat'#243'rio'
      FieldName = 'recno'
      ReadOnly = True
    end
    object qLaudosdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      ReadOnly = True
      Size = 30
    end
    object qLaudostitulo: TStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'titulo'
      ReadOnly = True
      Size = 60
    end
    object qLaudosvalor: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'valor'
      DisplayFormat = ',0.#0'
    end
    object qLaudoscodserv: TIntegerField
      FieldName = 'codserv'
      Visible = False
    end
  end
  object dsLaudos: TDataSource
    AutoEdit = False
    DataSet = qLaudos
    Left = 216
    Top = 160
  end
  object zLaudosCli: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM tbclientesprecos'
      'WHERE'
      ' tbclientesprecos.relato_recno = :OLD_relato_recno AND'
      ' OR tbclientesprecos.cliente = :OLD_cliente')
    InsertSQL.Strings = (
      'INSERT INTO tbclientesprecos'
      '  (relato_recno, cliente, valor, recno)'
      'VALUES'
      '  (:relato_recno, :cliente, :valor, :recno)')
    ModifySQL.Strings = (
      'UPDATE tbclientesprecos SET'
      '  relato_recno = :relato_recno,'
      '  cliente = :cliente,'
      '  valor = :valor,'
      '  recno = :recno'
      'WHERE'
      '  tbclientesprecos.relato_recno = :OLD_relato_recno AND'
      '  tbclientesprecos.cliente = :OLD_cliente')
    UseSequenceFieldForRefreshSQL = True
    Left = 96
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'relato_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_relato_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_cliente'
        ParamType = ptUnknown
      end>
  end
  object qLaudosCli: TZQuery
    Connection = DM.Design
    UpdateObject = zLaudosCli
    AfterInsert = qLaudosCliAfterInsert
    SQL.Strings = (
      
        'select p.relato_recno, p.cliente, c.empresa, c.nome_chave, c.cnp' +
        'j, '
      '       c.cpf, c.cidade, c.estado, p.valor, p.recno'
      '  from tbclientesprecos p'
      '       join tbclientes c'
      '         on c.codigo = p.cliente'
      ' where relato_recno = :relato_recno        '
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'relato_recno'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    Sequence = sqLaudosCli
    SequenceField = 'recno'
    Left = 152
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'relato_recno'
        ParamType = ptUnknown
      end>
    object qLaudosClirelato_recno: TIntegerField
      FieldName = 'relato_recno'
      Visible = False
    end
    object qLaudosClicliente: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'cliente'
    end
    object qLaudosCliempresa: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      DisplayWidth = 25
      FieldName = 'empresa'
      Size = 100
    end
    object qLaudosClinome_chave: TStringField
      DisplayLabel = 'Fantasia'
      DisplayWidth = 25
      FieldName = 'nome_chave'
      Size = 45
    end
    object qLaudosClicnpj: TStringField
      DisplayLabel = 'CNPJ'
      DisplayWidth = 18
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object qLaudosClicpf: TStringField
      DisplayLabel = 'CPF'
      DisplayWidth = 14
      FieldName = 'cpf'
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object qLaudosClicidade: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 25
      FieldName = 'cidade'
      Size = 100
    end
    object qLaudosCliestado: TStringField
      DisplayLabel = 'UF'
      DisplayWidth = 4
      FieldName = 'estado'
      Size = 2
    end
    object qLaudosClivalor: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'valor'
      DisplayFormat = ',0.#0'
    end
    object qLaudosClirecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
    end
  end
  object dsLaudosCli: TDataSource
    AutoEdit = False
    DataSet = qLaudosCli
    Left = 216
    Top = 216
  end
end
