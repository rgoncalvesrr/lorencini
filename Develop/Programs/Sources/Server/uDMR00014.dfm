object DMR00014: TDMR00014
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Height = 280
  Width = 402
  object R00014: TZQuery
    SortedFields = 'recno'
    AfterScroll = R00014AfterScroll
    OnCalcFields = R00014CalcFields
    SQL.Strings = (
      'select'
      
        '  r.amostra,   r.relato_recno,  re.titulo as laudo, r.status,   ' +
        '  r.recno,'
      
        '  r.labcrit_recno,   r.idcodigo,      cri.descri as crit, cast(c' +
        'oalesce(cri.cor, '#39'clGreen'#39') as varchar(30)) as cor,'
      
        '  r.labdiag_recno,   r.apontado,      coalesce(re.acreditacao, r' +
        '.emissao + interval '#39'1 day'#39') <= cast(r.emissao as date) inmetro,'
      
        '  diag.descri as diag_descri, diag.diag as diag_diag, diag.dias ' +
        'as diag_dias,'
      
        '  r.labrec_recno, rec.descri as rec_descri, rec.recomenda, r.ass' +
        'inatura,'
      '  r.diagnostico,     r.recomendacao,  r.pcoleta,    r.obs,'
      '  r.emissao,         r.d1,            r.d2,         r.d3,'
      '  r.d4,              r.d5,            r.d6,         r.revisao,'
      
        '  trim(to_char(a.comodato, '#39'000000000000'#39')) as etiqueta, a.comod' +
        'ato,'
      '  r.os,              h.ocorrencia entrada,    a.coleta,'
      
        '  a.amostrador coletor,         cast(initcap(re.descri) as varch' +
        'ar(30)) as laudodesc,'
      '  a.tamb,       a.toleo,  a.tequip, '
      
        '  a.umidade,         a.tensao,        a.local,      a.labsubest_' +
        'recno,'
      ''
      '  a.codigo,          c.empresa,       c.nome_chave, c.cnpj,'
      #9'c.cpf,             c.telefone,      c.endereco,   c.bairro,'
      '  c.cidade,          c.estado,        c.cep,        c.email,'
      '  c.logo,'
      '  a.destinatario,    r.pedido,'
      ''
      '  a.tpamostra_recno, tp.descri as atipo,'
      
        '  a.equip_recno,     cast(e.fabricante as varchar(100)) as fabri' +
        'cante,    e.serie,'
      
        '  cast(e.tipo as varchar(100)) as tipo, e.tensao_un, e.potencia_' +
        'un,'
      '  e.descri,          e.potencia,      e.imped,      e.tensao,'
      
        '  e.fases,           e.ano,           e.lote,       cast(e.isola' +
        'nte as varchar(100)) as isolante,'
      
        '  e.volume,          e.drenos,        cast(e.familia as varchar(' +
        '100)) as familia, a.tag,'
      
        '  se.sigla,          se.nome nomese,         se.regional,  se.re' +
        'g_nome,'
      
        '  cast(Initcap(f.nome) as varchar(60)) as resp_nome, f.crq resp_' +
        'crq, f.assinatura resp_assinatura, f.cargo resp_cargo,'
      '  f.conselho resp_conselho,'
      
        '  cast(Initcap(an.nome) as varchar(60)) as analista_nome, an.crq' +
        ' analista_crq, an.assinatura analista_assinatura,'
      '  an.cargo analista_cargo, an.conselho analista_conselho,'
      '  o.idos,  p.dec_conf, re.legendas, re.regras'
      '  from labamostras_rel r'
      '       join labrel re'
      '         on re.recno = r.relato_recno'
      '       join labamostras a'
      '         on a.recno = r.amostra'
      '       left join pedido p'
      '         on p.recno = r.pedido'
      '       left join labamostras_hist h'
      '         on h.amostra = r.amostra'
      '        and h.estado = 40'
      '       join tb_orcamentos o'
      '         on o.os = r.os'
      '       join tbclientes c'
      '         on c.codigo = a.cliente'
      '       left join vequip e'
      '         on e.recno = a.equip_recno'
      '       join labtipo tp'
      '         on tp.recno = a.tpamostra_recno'
      '       left join vsubest se'
      '         on se.codigo = a.codigo'
      '        and se.recno = a.labsubest_recno'
      '       left join vlaudocrit cri'
      '         on cri.relato_recno = r.relato_recno'
      '        and cri.recno = r.labcrit_recno '
      '       left join vlaudodiags diag'
      '         on diag.relato_recno = r.relato_recno'
      '        and diag.recno = r.labdiag_recno'
      '       left join vlaudorec rec'
      '         on rec.relato_recno = r.relato_recno'
      '        and rec.labdiag_recno = r.labdiag_recno'
      '        and rec.recno = r.labrec_recno'
      '       left join tbfuncionarios f'
      '         on f.idcodigo = r.idcodigo'
      '       left join tbfuncionarios an'
      '         on an.idcodigo = r.analista'
      ' where r.status >= 4'
      '   and r.assinatura is not null'
      '   and r.recno = :recno')
    Params = <
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    IndexFieldNames = 'recno Asc'
    Left = 24
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end>
    object R00014amostra: TIntegerField
      FieldName = 'amostra'
      Required = True
    end
    object R00014relato_recno: TIntegerField
      FieldName = 'relato_recno'
      Required = True
    end
    object R00014laudo: TStringField
      FieldName = 'laudo'
      Required = True
      Size = 30
    end
    object R00014recno: TIntegerField
      FieldName = 'recno'
      Required = True
    end
    object f: TIntegerField
      FieldName = 'status'
      Required = True
    end
    object R00014labcrit_recno: TIntegerField
      FieldName = 'labcrit_recno'
      LookupDataSet = DM.qART
    end
    object R00014idcodigo: TIntegerField
      FieldName = 'idcodigo'
    end
    object R00014crit: TStringField
      FieldName = 'crit'
      Size = 60
    end
    object R00014labdiag_recno: TIntegerField
      FieldName = 'labdiag_recno'
    end
    object R00014diag_descri: TStringField
      FieldName = 'diag_descri'
      Size = 60
    end
    object R00014diag_diag: TMemoField
      FieldName = 'diag_diag'
      BlobType = ftMemo
    end
    object R00014diag_dias: TIntegerField
      FieldName = 'diag_dias'
    end
    object R00014labrec_recno: TIntegerField
      FieldName = 'labrec_recno'
    end
    object R00014rec_descri: TStringField
      FieldName = 'rec_descri'
      Size = 60
    end
    object R00014recomenda: TMemoField
      FieldName = 'recomenda'
      BlobType = ftMemo
    end
    object R00014diagnostico: TMemoField
      FieldName = 'diagnostico'
      BlobType = ftMemo
    end
    object R00014recomendacao: TMemoField
      FieldName = 'recomendacao'
      BlobType = ftMemo
    end
    object R00014pcoleta: TDateField
      FieldName = 'pcoleta'
    end
    object R00014obs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
    end
    object R00014os: TIntegerField
      FieldName = 'os'
    end
    object R00014entrada: TDateTimeField
      FieldName = 'entrada'
    end
    object R00014coleta: TDateField
      FieldName = 'coleta'
    end
    object R00014coletor: TStringField
      FieldName = 'coletor'
      Size = 60
    end
    object R00014laudodesc: TStringField
      FieldName = 'laudodesc'
      ReadOnly = True
      Size = 30
    end
    object R00014tamb: TIntegerField
      FieldName = 'tamb'
    end
    object R00014toleo: TIntegerField
      FieldName = 'toleo'
    end
    object R00014umidade: TIntegerField
      FieldName = 'umidade'
    end
    object R00014tensao: TFloatField
      FieldName = 'tensao'
    end
    object R00014local: TStringField
      FieldName = 'local'
      Size = 50
    end
    object R00014labsubest_recno: TIntegerField
      FieldName = 'labsubest_recno'
    end
    object R00014codigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object R00014empresa: TStringField
      FieldName = 'empresa'
      Size = 100
    end
    object R00014nome_chave: TStringField
      FieldName = 'nome_chave'
      Size = 45
    end
    object R00014cnpj: TStringField
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object R00014cpf: TStringField
      FieldName = 'cpf'
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object R00014telefone: TStringField
      FieldName = 'telefone'
      Size = 100
    end
    object R00014tpamostra_recno: TIntegerField
      FieldName = 'tpamostra_recno'
    end
    object R00014atipo: TStringField
      FieldName = 'atipo'
      Required = True
      Size = 60
    end
    object R00014equip_recno: TIntegerField
      FieldName = 'equip_recno'
    end
    object R00014fabricante: TStringField
      FieldName = 'fabricante'
      Size = 255
    end
    object R00014serie: TStringField
      FieldName = 'serie'
      Size = 30
    end
    object R00014tipo: TStringField
      FieldName = 'tipo'
      Size = 255
    end
    object R00014descri: TStringField
      FieldName = 'descri'
      Size = 60
    end
    object R00014potencia: TFloatField
      FieldName = 'potencia'
    end
    object R00014imped: TFloatField
      FieldName = 'imped'
    end
    object R00014tensao_1: TFloatField
      FieldName = 'tensao_1'
    end
    object R00014fases: TIntegerField
      FieldName = 'fases'
    end
    object R00014ano: TIntegerField
      FieldName = 'ano'
    end
    object R00014lote: TStringField
      FieldName = 'lote'
      Size = 15
    end
    object R00014isolante: TStringField
      FieldName = 'isolante'
      Size = 255
    end
    object R00014volume: TIntegerField
      FieldName = 'volume'
    end
    object R00014drenos: TStringField
      FieldName = 'drenos'
      Size = 5
    end
    object R00014familia: TStringField
      FieldName = 'familia'
      Size = 255
    end
    object R00014tag: TStringField
      FieldName = 'tag'
      Size = 50
    end
    object R00014sigla: TStringField
      FieldName = 'sigla'
      Size = 3
    end
    object R00014nomese: TStringField
      FieldName = 'nomese'
      Size = 60
    end
    object R00014regional: TIntegerField
      FieldName = 'regional'
    end
    object R00014reg_nome: TStringField
      FieldName = 'reg_nome'
      Size = 60
    end
    object R00014emissao: TDateTimeField
      FieldName = 'emissao'
    end
    object R00014etiqueta: TMemoField
      FieldName = 'etiqueta'
      ReadOnly = True
      BlobType = ftMemo
    end
    object R00014assinatura: TStringField
      FieldName = 'assinatura'
      Size = 128
    end
    object R00014d1: TDateField
      FieldName = 'd1'
      ReadOnly = True
    end
    object R00014comodato: TIntegerField
      FieldName = 'comodato'
      Required = True
    end
    object R00014d2: TDateField
      FieldName = 'd2'
      ReadOnly = True
    end
    object R00014d3: TDateField
      FieldName = 'd3'
      ReadOnly = True
    end
    object R00014d4: TDateField
      FieldName = 'd4'
      ReadOnly = True
    end
    object R00014d5: TDateField
      FieldName = 'd5'
      ReadOnly = True
    end
    object R00014d6: TDateField
      FieldName = 'd6'
      ReadOnly = True
    end
    object R00014localizacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'localizacao'
      Size = 100
      Calculated = True
    end
    object R00014idos: TStringField
      FieldName = 'idos'
      Required = True
      Size = 10
    end
    object R00014destinatario: TStringField
      FieldName = 'destinatario'
      Size = 100
    end
    object R00014cor: TStringField
      FieldName = 'cor'
      ReadOnly = True
      Size = 30
    end
    object R00014endereco: TStringField
      FieldName = 'endereco'
      Size = 85
    end
    object R00014bairro: TStringField
      FieldName = 'bairro'
      Size = 100
    end
    object R00014cidade: TStringField
      FieldName = 'cidade'
      Size = 100
    end
    object R00014estado: TStringField
      FieldName = 'estado'
      Size = 2
    end
    object R00014cep: TStringField
      FieldName = 'cep'
      Size = 100
    end
    object R00014email: TStringField
      FieldName = 'email'
      Size = 100
    end
    object R00014apontado: TDateTimeField
      FieldName = 'apontado'
      ReadOnly = True
    end
    object R00014pedido: TIntegerField
      FieldName = 'pedido'
    end
    object R00014tensao_un: TStringField
      FieldName = 'tensao_un'
      ReadOnly = True
      Size = 3
    end
    object R00014potencia_un: TStringField
      FieldName = 'potencia_un'
      ReadOnly = True
      Size = 3
    end
    object R00014logo: TBlobField
      FieldName = 'logo'
    end
    object R00014inmetro: TBooleanField
      FieldName = 'inmetro'
      ReadOnly = True
    end
    object R00014revisao: TIntegerField
      FieldName = 'revisao'
    end
    object R00014tequip: TFloatField
      FieldName = 'tequip'
      Required = True
    end
    object R00014dec_conf: TBooleanField
      FieldName = 'dec_conf'
      Required = True
    end
    object R00014resp_nome: TStringField
      FieldName = 'resp_nome'
      ReadOnly = True
      Size = 60
    end
    object R00014resp_assinatura: TStringField
      FieldName = 'resp_assinatura'
      Size = 50
    end
    object R00014resp_cargo: TStringField
      FieldName = 'resp_cargo'
      Size = 60
    end
    object R00014resp_conselho: TStringField
      FieldName = 'resp_conselho'
      Size = 5
    end
    object R00014resp_crq: TStringField
      FieldName = 'resp_crq'
      Size = 15
    end
    object R00014analista_nome: TStringField
      FieldName = 'analista_nome'
      ReadOnly = True
      Size = 60
    end
    object R00014analista_assinatura: TStringField
      FieldName = 'analista_assinatura'
      Size = 50
    end
    object R00014analista_cargo: TStringField
      FieldName = 'analista_cargo'
      Size = 60
    end
    object R00014analista_conselho: TStringField
      FieldName = 'analista_conselho'
      Size = 5
    end
    object R00014analista_crq: TStringField
      FieldName = 'analista_crq'
      Size = 15
    end
    object R00014legendas: TMemoField
      FieldName = 'legendas'
      BlobType = ftMemo
    end
    object R00014regras: TMemoField
      FieldName = 'regras'
      BlobType = ftMemo
    end
  end
  object frxR00014: TfrxDBDataset
    Description = 'Laudo'
    UserName = 'R00014'
    CloseDataSource = True
    FieldAliases.Strings = (
      'amostra=amostra'
      'relato_recno=relato_recno'
      'laudo=laudo'
      'recno=recno'
      'status=status'
      'labcrit_recno=labcrit_recno'
      'idcodigo=idcodigo'
      'crit=crit'
      'labdiag_recno=labdiag_recno'
      'diag_descri=diag_descri'
      'diag_diag=diag_diag'
      'diag_dias=diag_dias'
      'labrec_recno=labrec_recno'
      'rec_descri=rec_descri'
      'recomenda=recomenda'
      'diagnostico=diagnostico'
      'recomendacao=recomendacao'
      'pcoleta=pcoleta'
      'obs=obs'
      'os=os'
      'entrada=entrada'
      'coleta=coleta'
      'coletor=coletor'
      'laudodesc=laudodesc'
      'tamb=tamb'
      'toleo=toleo'
      'umidade=umidade'
      'tensao=tensao'
      'local=local'
      'labsubest_recno=labsubest_recno'
      'codigo=codigo'
      'empresa=empresa'
      'nome_chave=nome_chave'
      'cnpj=cnpj'
      'cpf=cpf'
      'telefone=telefone'
      'tpamostra_recno=tpamostra_recno'
      'atipo=atipo'
      'equip_recno=equip_recno'
      'fabricante=fabricante'
      'serie=serie'
      'tipo=tipo'
      'descri=descri'
      'potencia=potencia'
      'imped=imped'
      'tensao_1=tensao_1'
      'fases=fases'
      'ano=ano'
      'lote=lote'
      'isolante=isolante'
      'volume=volume'
      'drenos=drenos'
      'familia=familia'
      'tag=tag'
      'sigla=sigla'
      'nomese=nomese'
      'regional=regional'
      'reg_nome=reg_nome'
      'emissao=emissao'
      'etiqueta=etiqueta'
      'assinatura=assinatura'
      'd1=d1'
      'comodato=comodato'
      'd2=d2'
      'd3=d3'
      'd4=d4'
      'd5=d5'
      'd6=d6'
      'localizacao=localizacao'
      'idos=idos'
      'destinatario=destinatario'
      'cor=cor'
      'endereco=endereco'
      'bairro=bairro'
      'cidade=cidade'
      'estado=estado'
      'cep=cep'
      'email=email'
      'apontado=apontado'
      'pedido=pedido'
      'tensao_un=tensao_un'
      'potencia_un=potencia_un'
      'logo=logo'
      'inmetro=inmetro'
      'revisao=revisao'
      'tequip=tequip'
      'dec_conf=dec_conf'
      'resp_nome=resp_nome'
      'resp_assinatura=resp_assinatura'
      'resp_cargo=resp_cargo'
      'resp_conselho=resp_conselho'
      'resp_crq=resp_crq'
      'analista_nome=analista_nome'
      'analista_assinatura=analista_assinatura'
      'analista_cargo=analista_cargo'
      'analista_conselho=analista_conselho'
      'analista_crq=analista_crq'
      'legendas=legendas'
      'regras=regras')
    DataSet = R00014
    BCDToCurrency = False
    Left = 88
    Top = 16
  end
  object R00014a: TZQuery
    AfterScroll = R00014aAfterScroll
    SQL.Strings = (
      
        'select r.laudo, r.relato_recno, e.nome, cast(coalesce(e.unidade,' +
        ' '#39'-'#39') as varchar(100)) as unidade,'
      
        '       e.metodo, r.ref_tipo, r.ref_valor, r.valor, le.ordem, e.d' +
        'ec, e.arred, e.sezerotxt,'
      
        '       r.v1,     r.v2,       r.v3,        r.v4,       r.v5,     ' +
        'r.v6, r.ensaio_recno,'
      '       e.somenteleitura, r.incerteza'
      '  from labamostras_res r'
      '       join labrel_ens le'
      '         on le.relato_recno = r.relato_recno'
      '        and le.ensaio_recno = r.ensaio_recno'
      '       join vensaios e'
      '         on e.recno = r.ensaio_recno'
      'where r.laudo = :laudo'
      '   and r.relato_recno = :tipo'
      ' order by r.laudo, r.relato_recno, le.ordem')
    Params = <
      item
        DataType = ftInteger
        Name = 'laudo'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'tipo'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    Left = 24
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'laudo'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'tipo'
        ParamType = ptUnknown
      end>
    object R00014alaudo: TIntegerField
      FieldName = 'laudo'
      ReadOnly = True
    end
    object R00014arelato_recno: TIntegerField
      FieldName = 'relato_recno'
      Required = True
    end
    object R00014anome: TStringField
      FieldName = 'nome'
      Size = 60
    end
    object R00014aunidade: TStringField
      FieldName = 'unidade'
      Size = 30
    end
    object R00014ametodo: TStringField
      FieldName = 'metodo'
      Size = 30
    end
    object R00014aref_tipo: TIntegerField
      FieldName = 'ref_tipo'
    end
    object R00014aref_valor: TFloatField
      FieldName = 'ref_valor'
    end
    object R00014avalor: TFloatField
      FieldName = 'valor'
      Required = True
      DisplayFormat = ',0.##0'
    end
    object R00014av1: TFloatField
      FieldName = 'v1'
      ReadOnly = True
    end
    object R00014av2: TFloatField
      FieldName = 'v2'
      ReadOnly = True
    end
    object R00014av3: TFloatField
      FieldName = 'v3'
      ReadOnly = True
    end
    object R00014av4: TFloatField
      FieldName = 'v4'
      ReadOnly = True
    end
    object R00014av5: TFloatField
      FieldName = 'v5'
      ReadOnly = True
    end
    object R00014av6: TFloatField
      FieldName = 'v6'
      ReadOnly = True
    end
    object R00014aordem: TIntegerField
      FieldName = 'ordem'
      Required = True
    end
    object R00014adec: TIntegerField
      FieldName = 'dec'
    end
    object R00014aarred: TIntegerField
      FieldName = 'arred'
    end
    object R00014asezerotxt: TStringField
      FieldName = 'sezerotxt'
      Size = 10
    end
    object R00014aensaio_recno: TIntegerField
      FieldName = 'ensaio_recno'
      Required = True
    end
    object R00014asomenteleitura: TBooleanField
      FieldName = 'somenteleitura'
    end
    object R00014aincerteza: TFloatField
      FieldName = 'incerteza'
      Required = True
    end
  end
  object frxR00014a: TfrxDBDataset
    Description = 'Laudo'
    UserName = 'R00014a'
    CloseDataSource = True
    FieldAliases.Strings = (
      'laudo=laudo'
      'relato_recno=relato_recno'
      'nome=nome'
      'unidade=unidade'
      'metodo=metodo'
      'ref_tipo=ref_tipo'
      'ref_valor=ref_valor'
      'valor=valor'
      'v1=v1'
      'v2=v2'
      'v3=v3'
      'v4=v4'
      'v5=v5'
      'v6=v6'
      'ordem=ordem'
      'dec=dec'
      'arred=arred'
      'sezerotxt=sezerotxt'
      'ensaio_recno=ensaio_recno'
      'somenteleitura=somenteleitura'
      'incerteza=incerteza')
    DataSet = R00014a
    BCDToCurrency = False
    Left = 88
    Top = 64
  end
  object R00014b: TZQuery
    SQL.Strings = (
      
        'select a.ensaio_recno, e.nome, e.unidade, cast(c.emissao as date' +
        ') "data", a.valor, a.ref_valor'
      '  from labamostras_res a'
      '       join labamostras_hres b'
      '         on b.laudo_dep = a.laudo'
      '        and b.laudo = :laudo'
      '        and b.relato_recno = a.relato_recno'
      '        and b.ensaio_recno = a.ensaio_recno'
      '       join labamostras_rel c'
      '         on c.recno = a.laudo'
      '        and c.revisao is null'
      '       join vensaios e'
      '         on e.recno = a.ensaio_recno'
      ' where a.relato_recno = :tipo'
      '   and a.ensaio_recno = :ensaio'
      ' union all'
      
        'select a.ensaio_recno, e.nome, e.unidade, cast(c.emissao as date' +
        ') "data", a.valor, a.ref_valor'
      '  from labamostras_res a'
      '       join labamostras_rel c'
      '         on c.recno = a.laudo'
      '       join vensaios e'
      '         on e.recno = a.ensaio_recno'
      ' where a.laudo = :laudo'
      '   and a.relato_recno = :tipo'
      '   and a.ensaio_recno = :ensaio'
      ' order by 1, 2')
    Params = <
      item
        DataType = ftInteger
        Name = 'laudo'
        ParamType = ptUnknown
        Value = 102345
      end
      item
        DataType = ftInteger
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ensaio'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    Left = 24
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'laudo'
        ParamType = ptUnknown
        Value = 102345
      end
      item
        DataType = ftInteger
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ensaio'
        ParamType = ptUnknown
      end>
    object R00014bensaio_recno: TIntegerField
      FieldName = 'ensaio_recno'
      Required = True
    end
    object R00014bnome: TStringField
      FieldName = 'nome'
      Size = 60
    end
    object R00014bunidade: TStringField
      FieldName = 'unidade'
      Size = 30
    end
    object R00014bdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'data'
      ReadOnly = True
      DisplayFormat = 'dd/mm/yy'
    end
    object R00014bvalor: TFloatField
      FieldName = 'valor'
      Required = True
    end
    object R00014bref_valor: TFloatField
      FieldName = 'ref_valor'
    end
  end
  object frxR00014b: TfrxDBDataset
    Description = 'Laudo'
    UserName = 'R00014b'
    CloseDataSource = True
    FieldAliases.Strings = (
      'ensaio_recno=ensaio_recno'
      'nome=nome'
      'unidade=unidade'
      'data=data'
      'valor=valor'
      'ref_valor=ref_valor')
    DataSet = R00014b
    BCDToCurrency = False
    Left = 88
    Top = 112
  end
  object R00014c: TZQuery
    SQL.Strings = (
      'select c.nome, c.celular, c.telefone, c.email, c.funcao'
      '  from labamostras_rel_contatos co'
      '      join clientes_contatos c'
      '        on c.cliente = co.cliente'
      '       and c.contato = co.contato'
      ' where co.laudo = :laudo'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'laudo'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    Left = 24
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'laudo'
        ParamType = ptUnknown
      end>
    object R00014cnome: TStringField
      FieldName = 'nome'
      Size = 150
    end
    object R00014cfuncao: TStringField
      FieldName = 'funcao'
      Size = 54
    end
    object R00014ctelefone: TStringField
      FieldName = 'telefone'
      EditMask = '(99) 9999-9999;0;'
      Size = 25
    end
    object R00014cemail: TStringField
      FieldName = 'email'
      Size = 150
    end
    object R00014ccelular: TStringField
      FieldName = 'celular'
      Size = 25
    end
  end
  object frxR00014c: TfrxDBDataset
    Description = 'Laudo'
    UserName = 'R00014c'
    CloseDataSource = True
    FieldAliases.Strings = (
      'nome=nome'
      'funcao=funcao'
      'telefone=telefone'
      'email=email')
    DataSet = R00014c
    BCDToCurrency = False
    Left = 88
    Top = 160
  end
  object ReportBase: TfrxReport
    Version = '6.3.1'
    DotMatrixReport = False
    EngineOptions.PrintIfEmpty = False
    EngineOptions.SilentMode = True
    EngineOptions.NewSilentMode = simSilent
    IniFile = '\Software\Fast Reports'
    PreviewOptions.AllowEdit = False
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39757.585007557900000000
    ReportOptions.LastChange = 44300.019422986100000000
    ScriptLanguage = 'PascalScript'
    ShowProgress = False
    StoreInDFM = False
    OnReportPrint = 'ReportBaseOnReportPrint'
    Left = 168
    Top = 16
  end
  object frxPDF: TfrxPDFExport
    ShowDialog = False
    FileName = 'D:\Users\ricar\Desktop\r00018.pdf'
    UseFileCache = True
    ShowProgress = False
    OverwritePrompt = False
    CreationTime = 42926.623377650460000000
    DataOnly = False
    EmbeddedFonts = True
    EmbedFontsIfProtected = False
    OpenAfterExport = False
    PrintOptimized = True
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Title = 'Laudo'
    Author = 'Lorencini Brasil Ldta'
    Subject = 'Emitido por Lorencini Brasil'
    Creator = 'Lorencini Brasil Ltda'
    Producer = 'Laborat'#243'rio Lorencini Brasil'
    ProtectionFlags = [eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = True
    PdfA = True
    PDFStandard = psPDFA_1a
    PDFVersion = pv14
    Left = 232
    Top = 16
  end
end
