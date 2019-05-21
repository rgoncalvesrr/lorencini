--Instrução utilizada para obter as instruções de exclusão dos campos recno provenientes do banco MySQL
--select 'alter table '||codtable||' drop recno;' from mcsyscolumns where columnname = 'recno';
alter table cad_servicos drop recno;
alter table configuracoes_art drop recno;
alter table configuracoes_indices drop recno;
alter table fornecedores drop recno;
alter table fornecedores_contatos drop recno;
alter table fornecedores_produtos drop recno;
alter table grupo_produto drop recno;
alter table grupo_produto_subgrupo drop recno;
alter table job drop recno;
alter table job_cabo_mt drop recno;
alter table job_cabo_mt_parte2 drop recno;
alter table job_cabo_mt_parte3 drop recno;
alter table job_chave_sec drop recno;
alter table job_chave_sec_parte2 drop recno;
alter table job_disjuntor_bt drop recno;
alter table job_disjuntor_bt_parte2 drop recno;
alter table job_disjuntor_mt drop recno;
alter table job_disjuntor_mt_parte2 drop recno;
alter table job_para_raio_mt drop recno;
alter table job_para_raio_mt_parte2 drop recno;
alter table job_termografia drop recno;
alter table job_termografia_imagens drop recno;
alter table job_termografia_parte2 drop recno;
alter table job_termografia_parte3 drop recno;
alter table job_termografia_roteiro drop recno;
alter table job_transf_corrente_mt drop recno;
alter table job_transf_corrente_mt_parte2 drop recno;
alter table job_transf_potencia_bt drop recno;
alter table job_transf_potencia_bt_parte2 drop recno;
alter table job_transf_potencia_mt drop recno;
alter table job_transf_potencia_mt_parte2 drop recno;
alter table job_transf_potencia_mt_parte3 drop recno;
alter table job_transf_potencia_mt_parte4 drop recno;
alter table job_transf_potencia_mt_parte5 drop recno;
alter table job_transf_potencia_mt_parte6 drop recno;
alter table job_transf_potencial_at drop recno;
alter table job_transf_potencial_at_parte2 drop recno;
alter table job_transf_potencial_bt drop recno;
alter table job_transf_potencial_bt_parte2 drop recno;
alter table job_transf_potencial_mt drop recno;
alter table job_transf_potencial_mt_parte2 drop recno;
alter table nota_fiscal drop recno;
alter table nota_fiscal_produtos drop recno;
alter table nota_fiscal_servicos drop recno;
alter table nota_fiscal_vencimentos drop recno;
alter table nota_produtos_temporario drop recno;
alter table nota_servicos_temporario drop recno;
alter table nota_vencimentos_temporario drop recno;
alter table pagamentos drop recno;
alter table pagamentos_baixados drop recno;
alter table pagamentos_baixados_titulos drop recno;
alter table pagamentos_vencimentos drop recno;
alter table param_calculo_acidez drop recno;
alter table plano_contas_contas drop recno;
alter table plano_contas_grupo drop recno;
alter table plano_contas_sub_grupo drop recno;
alter table produtos drop recno;
alter table produtos_unidades drop recno;
alter table recebimentos drop recno;
alter table recebimentos_vencimentos drop recno;
alter table retorno_mao_obra drop recno;
alter table retorno_materiais drop recno;
alter table retorno_materiais_incluidos drop recno;
alter table rpt_comissao_vendedores drop recno;
alter table rpt_entrada_amostra_analitico drop recno;
alter table rpt_faturamento_servicos drop recno;
alter table rptapontamentofolha drop recno;
alter table sub_grupo_produtos drop recno;
alter table tb_agenda drop recno;
alter table tb_compra_cotacao drop recno;
alter table tb_compra_cotacao_fornecedores drop recno;
alter table tb_compra_cotacao_produtos drop recno;
alter table tb_entrada_amostra drop recno;
alter table tb_entrada_amostra_comutador drop recno;
alter table tb_entrada_amostra_envio drop recno;
alter table tb_equip_locacao drop recno;
alter table tb_fisico_quimico drop recno;
alter table tb_fisico_quimico_acao drop recno;
alter table tb_funcoes drop recno;
alter table tb_funcoes_outros drop recno;
alter table tb_orcamentos drop recno;
alter table tb_orcamentos_faturamento drop recno;
alter table tb_orcamentos_historico_status drop recno;
alter table tb_orcamentos_lucratividade drop recno;
alter table tb_orcamentos_servicos drop recno;
alter table tb_parecer_cromatografico drop recno;
alter table tb_relatorio_cromatografia drop recno;
alter table tb_relatorio_cromatografia_hist drop recno;
alter table tb_relatorio_fisico_quimico drop recno;
alter table tb_transformadores_dijuntores drop recno;
alter table tb_transformadores_instrumentos drop recno;
alter table tb_transformadores_potencia drop recno;
alter table tb_vendedores drop recno;
alter table tbapontamento drop recno;
alter table tbclientes drop recno;
alter table tbclientes_contatos drop recno;
alter table tbfuncionarios drop recno;
alter table tbmenugeral drop recno;
alter table tbmenupersonalizado drop recno;
alter table tbusuarios drop recno;


--Instrução utilizada para obter as instruções de criação do campo recno
--select 'alter table '||tablename||' add recno serial not null unique;' from pg_tables where schemaname = 'public';

alter table cad_cfop add recno serial not null unique;
alter table cad_servicos add recno serial not null unique;
alter table configuracoes add recno serial not null unique;
alter table configuracoes_art add recno serial not null unique;
alter table configuracoes_indices add recno serial not null unique;
alter table crm_apont add recno serial not null unique;
alter table fis_apont add recno serial not null unique;
alter table fluxo_caixa add recno serial not null unique;
alter table fornecedores add recno serial not null unique;
alter table fornecedores_contatos add recno serial not null unique;
alter table fornecedores_produtos add recno serial not null unique;
alter table grupo_produto add recno serial not null unique;
alter table grupo_produto_subgrupo add recno serial not null unique;
alter table job add recno serial not null unique;
alter table job_cabo_mt add recno serial not null unique;
alter table job_cabo_mt_parte2 add recno serial not null unique;
alter table job_cabo_mt_parte3 add recno serial not null unique;
alter table job_chave_sec add recno serial not null unique;
alter table job_chave_sec_parte2 add recno serial not null unique;
alter table job_disjuntor_bt add recno serial not null unique;
alter table job_disjuntor_bt_parte2 add recno serial not null unique;
alter table job_disjuntor_mt add recno serial not null unique;
alter table job_disjuntor_mt_parte2 add recno serial not null unique;
alter table job_para_raio_mt add recno serial not null unique;
alter table job_para_raio_mt_parte2 add recno serial not null unique;
alter table job_termografia add recno serial not null unique;
alter table job_termografia_imagens add recno serial not null unique;
alter table job_termografia_parte2 add recno serial not null unique;
alter table job_termografia_parte3 add recno serial not null unique;
alter table job_termografia_roteiro add recno serial not null unique;
alter table job_transf_corrente_mt add recno serial not null unique;
alter table job_transf_corrente_mt_parte2 add recno serial not null unique;
alter table job_transf_potencia_bt add recno serial not null unique;
alter table job_transf_potencia_bt_parte2 add recno serial not null unique;
alter table job_transf_potencia_mt add recno serial not null unique;
alter table job_transf_potencia_mt_parte2 add recno serial not null unique;
alter table job_transf_potencia_mt_parte3 add recno serial not null unique;
alter table job_transf_potencia_mt_parte4 add recno serial not null unique;
alter table job_transf_potencia_mt_parte5 add recno serial not null unique;
alter table job_transf_potencia_mt_parte6 add recno serial not null unique;
alter table job_transf_potencial_at add recno serial not null unique;
alter table job_transf_potencial_at_parte2 add recno serial not null unique;
alter table job_transf_potencial_bt add recno serial not null unique;
alter table job_transf_potencial_bt_parte2 add recno serial not null unique;
alter table job_transf_potencial_mt add recno serial not null unique;
alter table job_transf_potencial_mt_parte2 add recno serial not null unique;
alter table lr_tables add recno serial not null unique;
alter table nota_fiscal add recno serial not null unique;
alter table nota_fiscal_produtos add recno serial not null unique;
alter table nota_fiscal_servicos add recno serial not null unique;
alter table nota_fiscal_vencimentos add recno serial not null unique;
alter table nota_produtos_temporario add recno serial not null unique;
alter table nota_servicos_temporario add recno serial not null unique;
alter table nota_vencimentos_temporario add recno serial not null unique;
alter table pagamentos add recno serial not null unique;
alter table pagamentos_baixados add recno serial not null unique;
alter table pagamentos_baixados_titulos add recno serial not null unique;
alter table pagamentos_vencimentos add recno serial not null unique;
alter table param_calculo_acidez add recno serial not null unique;
alter table plano_contas_contas add recno serial not null unique;
alter table plano_contas_grupo add recno serial not null unique;
alter table plano_contas_sub_grupo add recno serial not null unique;
alter table produtos add recno serial not null unique;
alter table produtos_unidades add recno serial not null unique;
alter table recebimentos add recno serial not null unique;
alter table recebimentos_vencimentos add recno serial not null unique;
alter table report_balanco_financeiro add recno serial not null unique;
alter table report_fluxo_caixa add recno serial not null unique;
alter table retorno_mao_obra add recno serial not null unique;
alter table retorno_materiais add recno serial not null unique;
alter table retorno_materiais_incluidos add recno serial not null unique;
alter table rpt_comissao_vendedores add recno serial not null unique;
alter table rpt_entrada_amostra_analitico add recno serial not null unique;
alter table rpt_faturamento_servicos add recno serial not null unique;
alter table rpt_os add recno serial not null unique;
alter table rptapontamentofolha add recno serial not null unique;
alter table sub_grupo_produtos add recno serial not null unique;
alter table tb_agenda add recno serial not null unique;
alter table tb_compra_cotacao add recno serial not null unique;
alter table tb_compra_cotacao_fornecedores add recno serial not null unique;
alter table tb_compra_cotacao_produtos add recno serial not null unique;
alter table tb_condicao_pagamento add recno serial not null unique;
alter table tb_entrada_amostra add recno serial not null unique;
alter table tb_entrada_amostra_comutador add recno serial not null unique;
alter table tb_entrada_amostra_envio add recno serial not null unique;
alter table tb_equip_locacao add recno serial not null unique;
alter table tb_fisico_quimico add recno serial not null unique;
alter table tb_fisico_quimico_acao add recno serial not null unique;
alter table tb_funcoes add recno serial not null unique;
alter table tb_funcoes_outros add recno serial not null unique;
alter table tb_orcamentos add recno serial not null unique;
alter table tb_orcamentos_faturamento add recno serial not null unique;
alter table tb_orcamentos_historico_status add recno serial not null unique;
alter table tb_orcamentos_lucratividade add recno serial not null unique;
alter table tb_orcamentos_lucratividade_combustivel add recno serial not null unique;
alter table tb_orcamentos_lucratividade_detalhes add recno serial not null unique;
alter table tb_orcamentos_lucratividade_hotel add recno serial not null unique;
alter table tb_orcamentos_lucratividade_lorencini add recno serial not null unique;
alter table tb_orcamentos_lucratividade_maoobra add recno serial not null unique;
alter table tb_orcamentos_lucratividade_materiais add recno serial not null unique;
alter table tb_orcamentos_lucratividade_mobra add recno serial not null unique;
alter table tb_orcamentos_lucratividade_pedagio add recno serial not null unique;
alter table tb_orcamentos_lucratividade_refeicao add recno serial not null unique;
alter table tb_orcamentos_lucratividade_veiculos add recno serial not null unique;
alter table tb_orcamentos_pedido_compra_materiais add recno serial not null unique;
alter table tb_orcamentos_pedido_compra_vencimentos add recno serial not null unique;
alter table tb_orcamentos_servicos add recno serial not null unique;
alter table tb_parecer_cromatografico add recno serial not null unique;
alter table tb_relatorio_cromatografia add recno serial not null unique;
alter table tb_relatorio_cromatografia_hist add recno serial not null unique;
alter table tb_relatorio_fisico_quimico add recno serial not null unique;
alter table tb_transformadores_dijuntores add recno serial not null unique;
alter table tb_transformadores_instrumentos add recno serial not null unique;
alter table tb_transformadores_potencia add recno serial not null unique;
alter table tb_vendedores add recno serial not null unique;
alter table tbapontamento add recno serial not null unique;
alter table tbclientes add recno serial not null unique;
alter table tbclientes_contatos add recno serial not null unique;
alter table tbfuncionarios add recno serial not null unique;
alter table tbmenugeral add recno serial not null unique;
alter table tbmenupersonalizado add recno serial not null unique;
alter table tbusuarios add recno serial not null unique;

delete from job where recno in (
select max(recno)
  from job
group by job, id_cliente, cliente_razao
 having count(*) > 1);

delete from job_chave_sec where recno in (
select max(recno)
  from job_chave_sec
group by job, item
 having count(*) > 1);

delete from job_chave_sec_parte2 where recno in (
select max(recno)
  from job_chave_sec_parte2
group by job, item
 having count(*) > 1);

delete from job_termografia where recno in (
select max(recno)
  from job_termografia
group by job, item
 having count(*) > 1);

delete from job_termografia_parte3
 where recno in (
select max(recno)
  from job_termografia_parte3
group by job, item
 having count(*) > 1);

delete from tb_orcamentos_faturamento
 where recno in (
select max(recno)
  from tb_orcamentos_faturamento
group by idos, nota_numero
 having count(*) > 1);

delete from tb_orcamentos_historico_status
 where recno in (
select max(recno)
  from tb_orcamentos_historico_status
group by idos, status, status_data, usuario
 having count(*) > 1);

create index idx_tb_orcamentos_lucratividade_detalhes
   on tb_orcamentos_lucratividade_detalhes (idos, descricao);

delete from tb_orcamentos_lucratividade_detalhes
 where recno in (
select max(recno)
  from tb_orcamentos_lucratividade_detalhes
group by idos, descricao
 having count(*) > 1);

delete from tb_orcamentos_servicos
 where recno in (
select max(recno)
  from tb_orcamentos_servicos
group by idos, id_servico
 having count(*) > 1);

delete from tbclientes
 where recno in (
select max(recno)
  from tbclientes
group by nome_chave
 having count(*) > 1);
 
delete from job_chave_sec
 where item is null;

delete from job_chave_sec_parte2
 where item is null;

alter table cad_cfop add constraint pk_cad_cfop primary key(idregistro);
alter table cad_servicos add constraint pk_cad_servicos primary key(id_servico);
alter table fornecedores add constraint pk_fornecedores primary key(codigo);
alter table fornecedores_contatos add constraint pk_fornecedores_contatos primary key(cliente, item);
alter table fornecedores_produtos add constraint pk_fornecedores_produtos primary key(id_fornecedor, id_produto);
alter table produtos add constraint pk_produtos primary key(codigo);
alter table grupo_produto add constraint pk_grupo_produto primary key(codigo);
alter table grupo_produto_subgrupo add constraint pk_grupo_produto_subgrupo primary key(id_codigo, id_grupo);
alter table job add constraint pk_job primary key(job);
alter table job_cabo_mt add constraint pk_job_cabo_mt primary key(job, item);
alter table job_cabo_mt_parte2 add constraint pk_job_cabo_mt_parte2 primary key(job, item);
alter table job_chave_sec add constraint pk_job_chave_sec primary key(job, item);
alter table job_chave_sec_parte2 add constraint pk_job_chave_sec_parte2 primary key(job, item);
alter table job_disjuntor_bt add constraint pk_job_disjuntor_bt primary key(job, item);
alter table job_disjuntor_bt_parte2 add constraint pk_job_disjuntor_bt_parte2 primary key(job, item);
alter table job_para_raio_mt add constraint pk_job_para_raio_mt primary key(job, item);
alter table job_para_raio_mt_parte2 add constraint pk_job_para_raio_mt_parte2 primary key(job, item);
alter table job_termografia add constraint pk_job_termografia primary key(job, item);
alter table job_termografia_parte3 add constraint pk_job_termografia_parte3 primary key(job, item);
alter table job_termografia_roteiro add constraint pk_job_termografia_roteiro primary key(job, item);
alter table tb_entrada_amostra add constraint pk_tb_entrada_amostra primary key(numeroid);
alter table tb_entrada_amostra_comutador add constraint pk_tb_entrada_amostra_comutador primary key(numeroid);
alter table tb_fisico_quimico add constraint pk_tb_fisico_quimico primary key(registro);
alter table tb_funcoes add constraint pk_tb_funcoes primary key(id);
alter table tb_orcamentos add constraint pk_tb_orcamentos primary key(idos);
alter table tb_orcamentos_faturamento add constraint pk_tb_orcamentos_faturamento primary key(idos, nota_numero);
alter table tb_orcamentos_historico_status add constraint pk_tb_orcamentos_historico_status primary key(idos, status, status_data, usuario);
alter table tb_orcamentos_lucratividade add constraint pk_tb_orcamentos_lucratividade primary key(idos);
alter table tb_orcamentos_lucratividade_combustivel add constraint pk_tb_orcamentos_lucratividade_combustivel primary key(idos, item);
alter table tb_orcamentos_lucratividade_detalhes add constraint pk_tb_orcamentos_lucratividade_detalhes primary key(idos, descricao);
alter table tb_orcamentos_lucratividade_hotel add constraint pk_tb_orcamentos_lucratividade_hotel primary key(idos);
alter table tb_orcamentos_lucratividade_lorencini add constraint pk_tb_orcamentos_lucratividade_lorencini primary key(idos, item);
alter table tb_orcamentos_lucratividade_maoobra add constraint pk_tb_orcamentos_lucratividade_maoobra primary key(idos, item);
alter table tb_orcamentos_lucratividade_materiais add constraint pk_tb_orcamentos_lucratividade_materiais primary key(idos, item);
alter table tb_orcamentos_lucratividade_mobra add constraint pk_tb_orcamentos_lucratividade_mobra primary key(idos);
alter table tb_orcamentos_lucratividade_pedagio add constraint pk_tb_orcamentos_lucratividade_pedagio primary key(idos, item);
alter table tb_orcamentos_lucratividade_refeicao add constraint pk_tb_orcamentos_lucratividade_refecao primary key(idos);
alter table tb_orcamentos_lucratividade_veiculos add constraint pk_tb_orcamentos_lucratividade_veiculos primary key(idos);
alter table tb_orcamentos_servicos add constraint pk_tb_orcamentos_servicos primary key(idos, id_servico);
alter table tb_parecer_cromatografico add constraint pk_tb_parecer_cromatografico primary key(id);
alter table tb_relatorio_fisico_quimico add constraint pk_tb_relatorio_fisico_quimico primary key(numeroamostra, numerorelatorio);
alter table tb_vendedores add constraint pk_tb_vendedores primary key(idvendedor);
alter table tbapontamento add constraint pk_tbapontamento primary key(dia, funcionarioid);
alter table tbclientes add constraint pk_tbclientes primary key(codigo);
alter table tbclientes add constraint uk_tbclientes unique (nome_chave);
alter table tbclientes_contatos add constraint pk_tbclientes_contatos primary key(cliente, item);
alter table tbfuncionarios add constraint pk_tbfuncionarios primary key(idcodigo);
alter table tbmenugeral add constraint pk_tbmenugeral primary key(idmenu);
alter table tbmenupersonalizado add constraint pk_tbmenupersonalizado primary key(idusuario, idmenu);
alter table tbusuarios add constraint pk_tbusuarios primary key(idusuario);
alter table tb_relatorio_cromatografia add constraint pk_tb_relatorio_cromatografia primary key(amostra, relatorio);
alter table tb_relatorio_cromatografia_hist add constraint pk_tb_relatorio_cromatografia_hist primary key(numserial, ctrl);

-- Cria constraint da tabela de entrada de amostra
alter table tb_entrada_amostra add cli integer;
update tb_entrada_amostra set cli = clienteid::integer;
alter table tb_entrada_amostra drop clienteid;
alter table tb_entrada_amostra add clienteid integer;
update tb_entrada_amostra set clienteid = cli;
alter table tb_entrada_amostra alter clienteid set not null;
alter table tb_entrada_amostra drop cli;

update tb_entrada_amostra
   set clienteid = 526
 where clienteid = 305;

update tb_entrada_amostra
   set clienteid = 810
 where clienteid = 777;

update tb_entrada_amostra
   set clienteid = 847
 where clienteid in (
       select clienteid
         from tb_entrada_amostra a
              left join tbclientes b
                on b.codigo = a.clienteid
        where b.nome_chave is null
        group by clienteid);

alter table tb_entrada_amostra add constraint fk_tb_entrada_amostra
      foreign key(clienteid) references tbclientes(codigo)
      on update cascade on delete restrict;

update tb_entrada_amostra
   set os = null
 where os in (
       select os
         from tb_entrada_amostra a
              left join tb_orcamentos b
                on b.idos = a.os
        where b.idos is null);

alter table tb_entrada_amostra add constraint fk_tb_entrada_amostra_1
      foreign key(os) references tb_orcamentos(idos)
      on update cascade on delete restrict;

alter table tb_relatorio_cromatografia add constraint fk_tb_relatorio_cromatografia
      foreign key(amostra) references tb_entrada_amostra(numeroid)
      on update cascade on delete cascade;

alter table tb_relatorio_fisico_quimico add constraint fk_tb_relatorio_fisico_quimico
      foreign key(numeroamostra) references tb_entrada_amostra(numeroid)
      on update cascade on delete cascade;

alter table tb_vendedores add constraint pk_tb_vendedores primary key(idvendedor);
alter table tb_vendedores add constraint uk_tb_vendedores unique(nome);
alter table tbclientes add constraint fk_tbclientes foreign key(id_vendedor)
  references tb_vendedores(idvendedor) on update cascade on delete restrict;

create or replace function isnumber(in numero varchar) returns numeric
as
$$
Declare
   Result numeric;
Begin
  begin
    result:= numero;	
  exception
    when invalid_text_representation then
	result:= null;
    when numeric_value_out_of_range then
        result:= null;
  end;
  return result;
End;
$$
language plpgsql;

select isnumber('ggh')

create table equip_fluido (
  fluido serial not null,
  descri varchar(25) not null,
  constraint pk_equip_fluido primary key(fluido));
alter table equip_fluido add constraint uk_equip_fluido unique (descri);
insert into equip_fluido (descri)
select fluido
  from tb_entrada_amostra
 group by fluido;

create table equip_tipo (
  tipo serial not null,
  descri varchar(25) not null,
  constraint pk_equip_tipo primary key(tipo));
alter table equip_tipo add constraint uk_equip_tipo unique (descri);
insert into equip_tipo (descri)
select equipamento
  from tb_entrada_amostra
 group by equipamento;

create table equip_fabri (
  fabricante serial not null,
  descri varchar(55) not null,
  constraint pk_equip_fabri primary key(fabricante));
alter table equip_fabri add constraint uk_equip_fabri unique (descri);
insert into equip_fabri (descri)
select fabricante
  from tb_entrada_amostra
 group by fabricante
having length(fabricante) > 2;

create table equip_estac (
  codigo integer not null,
  estacao varchar(35) not null,
  constraint pk_equip_estac primary key(codigo, estacao));
alter table equip_estac add constraint fk_equip_estac foreign key (codigo)
  references tbclientes (codigo) on update cascade on delete cascade;
insert into equip_estac (codigo, estacao)
select clienteid, estacao
  from tb_entrada_amostra
 group by clienteid, estacao
 having estacao is not null;

create table equip (
  codigo integer not null,
  serie varchar(30) not null,
  fluido integer not null,
  tipo integer not null,
  fabricante integer,
  potencia numeric(9,4) default 0 not null,
  tensao numeric(9,4) default 0 not null,
  ano integer,
  volume numeric(9,4) default 0 not null,
  estacao varchar(35),
  tag varchar(50),
  unidpot varchar(3) default 'kVA' not null,
  constraint pk_equip primary key(codigo, serie));
alter table equip add constraint fk_equip foreign key(codigo)
  references tbclientes(codigo) on update cascade on delete cascade;
alter table equip add constraint fk_equip_1 foreign key(fluido)
  references equip_fluido(fluido) on update cascade on delete restrict;
alter table equip add constraint fk_equip_2 foreign key(tipo)
  references equip_tipo(tipo) on update cascade on delete restrict;
alter table equip add constraint fk_equip_3 foreign key(fabricante)
  references equip_fabri(fabricante) on update cascade on delete set null;
alter table equip add constraint fk_equip_4 foreign key(codigo, estacao)
  references equip_estac(codigo, estacao) on update cascade on delete set null;

insert into equip ( codigo, serie, fluido, tipo, potencia, tensao,
       ano, volume, estacao, tag, unidpot, fabricante )
select a.clienteid, a.numeroserie, b.fluido, c.tipo, round(coalesce(isnumber(a.potencia),0.0),4), round(a.tensao,0),
       isnumber(a.ano)::integer, round(coalesce(a.volume,0), 4), a.estacao, a.tag,    a.unidpot, d.fabricante
  from tb_entrada_amostra a
       join ( select max(a.recno) as recno
                from tb_entrada_amostra a                
               where a.numeroserie is not null
                 and a.clienteid is not null
               group by a.clienteid, a.numeroserie) equip
         on equip.recno = a.recno 
       join equip_fluido b
         on b.descri = a.fluido
       join equip_tipo c
         on c.descri = a.equipamento
       left join equip_fabri d
        on d.descri = a.fabricante

/*alter table tb_entrada_amostra drop column fluido;
alter table tb_entrada_amostra drop column equipamento;
alter table tb_entrada_amostra drop column fabricante;
alter table tb_entrada_amostra drop column potencia;
alter table tb_entrada_amostra drop column tensao;
alter table tb_entrada_amostra drop column ano;
alter table tb_entrada_amostra drop column volume;
alter table tb_entrada_amostra drop column estacao;
alter table tb_entrada_amostra drop column tag;
alter table tb_entrada_amostra drop column unidpot;
alter table tb_entrada_amostra modify column numeroserie varchar(30);
alter table tb_entrada_amostra
  add constraint fk_tb_entrada_amostra_1 foreign key (clienteid,numeroserie)
  references equip(codigo, serie) on update cascade on delete restrict;


--insert into tbmenugeral (idmenu, descricao, idpai) values ('03.12', 'Envio de Ensaios ao Cliente', '03.00');

/*CREATE TABLE tb_entrada_amostra_envio
(
  session varchar(50) not null,
  numeroid integer NOT NULL,
  ensaio character varying(100),
  dt_ensaio date,
  relatorio character varying(100) NOT NULL,
  equipamento character varying(100),
  numeroserie character varying(100),
  tag character varying(50),
  fluido character varying(100),
  tipo integer,
  recno serial,
  CONSTRAINT pk_entrada_amostra_envio PRIMARY KEY (session, numeroid, relatorio)
);

alter table tb_relatorio_cromatografia add criticidade integer default 1 check (criticidade in (1,2,3,4));
alter table tb_relatorio_fisico_quimico add criticidade integer default 1 check (criticidade in (1,2,3,4)); */

-- Regra de ligação entre tabela de faturamento e a tabela de orçamentos
delete
  from tb_orcamentos 
 where recno = (
select min(recno)
  from tb_orcamentos
 group by idos
having count(idos) > 1);

alter table tb_orcamentos add constraint uk_tb_orcamentos unique (idos);

delete
  from tb_orcamentos_faturamento
 where recno in (
select a.recno
  from tb_orcamentos_faturamento a
       left join tb_orcamentos b
         on b.idos = a.idos
where b.recno is null);


alter table tb_orcamentos_faturamento add constraint fk_tb_orcamentos_faturamento
   foreign key(idos) references tb_orcamentos (idos)
   on update cascade on delete cascade;

delete
  from tb_orcamentos_historico_status
 where recno in (
select a.recno 
  from tb_orcamentos_historico_status a
       left join tb_orcamentos b
         on b.idos = a.idos
 where b.recno is null);


alter table tb_orcamentos_historico_status add constraint fk_tb_orcamentos_historico_status 
   foreign key(idos) references tb_orcamentos(idos)
   on update cascade on delete cascade;

alter table tb_orcamentos_historico_status alter status_data type timestamp;
alter table tb_orcamentos_historico_status alter status_data set default localtimestamp;
alter table tb_orcamentos_historico_status alter usuario type varchar(20);

insert into sys_users(username, password, name, active, admin, type_, changepass)
select distinct a.usuario, 'xx', a.usuario, false, false, 1, false
  from tb_orcamentos_historico_status a
       left join sys_users b
         on b.username = a.usuario
 where b.recno is null;

alter table tb_orcamentos_historico_status add constraint fk_tb_orcamentos_historico_status_1
   foreign key(usuario) references sys_users(username)
   on update cascade on delete restrict;

alter table tb_orcamentos_historico_status add constraint pk_tb_orcamentos_historico_status
   primary key(idos, recno);