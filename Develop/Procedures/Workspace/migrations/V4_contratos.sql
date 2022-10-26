CREATE DOMAIN public."contrato$" AS varchar(20);

alter domain public."contrato$" owner to lorencini;

drop table if exists public.contratos cascade;
drop table if exists public.contratos_serv cascade;
drop table if exists public.contratos_reajustes cascade;

create table public.contratos (
	cliente integer not null,
	contrato contrato$ not null,
	status integer default(1) not null,
	emissao timestamp default(clock_timestamp()) not null,
	inicio date not null,
	termino date not null,
	valor moeda$ not null,
	valor_coleta moeda$ not null,
   prazo_rec integer default(30) not null,
	email email$ not null,
   transporte integer default(1) not null,
   coleta integer default(1) not null,
   obs text,
	recno serial not null,
	constraint pk_contratos 
		primary key (cliente, contrato),
	constraint 
		fk_contratos_1 foreign key(cliente) 
		references tbclientes(codigo)
		on update cascade on delete restrict,
	constraint 
		ck_contratos_1 check(inicio < termino),
	constraint 
		ck_contratos_2 check(valor >= 0),
	constraint 
		ck_contratos_3 check(valor_coleta >= 0),
	constraint 
		ck_contratos_4 check(email ~ '^[a-za-z0-9][a-za-z0-9\._-]+@([a-za-z0-9\._-]+\.)[a-za-z0-9]{2}'),
   constraint 
		ck_contratos_5 check(prazo_rec >= 0),
   constraint 
		ck_contratos_6 check(transporte in (1,2)),
   constraint 
		ck_contratos_7 check(coleta in (1,2)),
	constraint 
		uk_contratos_1 unique(recno)
);

alter table public.contratos owner to lorencini;

insert into sys_errors 
	(constraint_, descri, solucao)
values
	('fk_contratos_1', 'Cliente não pode ser removido porque possui contratos', null),
	('ck_contratos_1', 'Data de término do contrato deve ser posterior a data de início do contrato', null),
	('ck_contratos_2', 'Valor do contrato não deve ser negativo', null),
	('ck_contratos_3', 'Valor de despesas do contrato não deve ser negativo', null),
	('ck_contratos_4', 'E-mail informado no contrato é inválido', null),
	('ck_contratos_5', 'Prazo para recebimento não deve ser negativo', null),
	('ck_contratos_6', 'Transporte deve ser 1.Lorencini ou 2.Cliente', null),
	('ck_contratos_7', 'Coleta deve ser 1.Lorencini ou 2.Cliente', null),
	('uk_contratos_1', 'Registro não deve se duplicar na tabela de contatos', null)
on conflict(constraint_)
   do nothing;


create table public.contratos_serv (
	cliente integer not null,
	contrato contrato$ not null,
	servico integer not null,
	qtd qtd$ not null,
	saldo qtd$ not null,
	unitario moeda$ not null,
	recno serial not null,
	constraint pk_contratos_serv 
		primary key (cliente, contrato, servico),
	constraint 
		fk_contratos_serv_1 foreign key(cliente, contrato) 
		references public.contratos(cliente, contrato)
		on update cascade on delete cascade,
	constraint 
		fk_contratos_serv_2 foreign key(servico) 
		references public.servicos(codserv)
		on update cascade on delete restrict,
	constraint 
		ck_contratos_serv_1 check(qtd > 0),
	constraint 
		ck_contratos_serv_2 check(saldo between 0 and qtd),
	constraint 
		ck_contratos_serv_3 check(unitario > 0),	
	constraint 
		uk_contratos_serv_1 unique(recno)
);

alter table public.contratos_serv owner to lorencini;

insert into sys_errors 
	(constraint_, descri, solucao)
values
	('fk_contratos_serv_1', 'Contrato não localizado na tabela de contratos', 'Informa um contrato válido'),
	('fk_contratos_serv_2', 'Serviço não pode ser excluído porque é utilizado por contratos', null),
	('ck_contratos_serv_1', 'Quantidade deve ser maior que zero', null),
	('ck_contratos_serv_2', 'Saldo deve ser maior que zero e menor que a quantidade', null),
	('ck_contratos_serv_3', 'Valor unitário deve ser maior que zero', null),	
	('uk_contratos_serv_1', 'Registro não deve se duplicar na tabela serviços por contatos', null)
on conflict(constraint_)
   do nothing;

create table public.contratos_reajustes (
	cliente integer not null,
	contrato contrato$ not null,
	vigencia date default(current_date) not null,
	emissao timestamp default(clock_timestamp()) not null,
	reajuste percent$ not null,
	recno serial not null,
	constraint pk_contratos_reajustes 
		primary key (cliente, contrato, vigencia),
	constraint 
		fk_contratos_reajustes_1 foreign key(cliente, contrato) 
		references public.contratos(cliente, contrato)
		on update cascade on delete cascade,
	constraint 
		ck_contratos_reajustes_1 check(reajuste > 0),
	constraint 
		uk_contratos_reajustes_1 unique(recno)
);

alter table public.contratos_reajustes owner to lorencini;

insert into sys_errors 
	(constraint_, descri, solucao)
values
	('fk_contratos_reajustes_1', 'Contrato não localizado na tabela de contratos', 'Informar um contrato válido'),
	('ck_contratos_reajustes_1', 'Percentual de reajuste deve ser maior que zero', null),
	('uk_contratos_reajustes_1', 'Registro não deve se duplicar na tabela de reajustes', null)
on conflict(constraint_)
   do nothing;

create table public.contratos_serv_hist (
	cliente integer not null,
	contrato contrato$ not null,
	servico integer not null,
	vigencia date default(current_date) not null,
	unitario_anterior moeda$ not null,
	unitario_ajustado moeda$ not null,
	recno serial not null,
	constraint pk_contratos_serv_hist 
		primary key (cliente, contrato, servico, vigencia),
	constraint 
		fk_contratos_serv_hist_1 foreign key(cliente, contrato, servico) 
		references public.contratos_serv(cliente, contrato, servico)
		on update cascade on delete cascade,
	constraint 
		fk_contratos_serv_hist_2 foreign key(cliente, contrato, vigencia) 
		references public.contratos_reajustes(cliente, contrato, vigencia)
		on update cascade on delete cascade,
	constraint 
		ck_contratos_serv_hist_1 check(unitario_anterior > 0),
	constraint 
		ck_contratos_serv_hist_2 check(unitario_ajustado > 0),
	constraint 
		uk_contratos_serv_hist_1 unique(recno)
);

alter table public.contratos_serv_hist owner to lorencini;

insert into sys_errors 
	(constraint_, descri, solucao)
values
	('fk_contratos_serv_hist_1', 'Histórico de reajuste de contrato não pode ser gravado porque serviço não existe', null),
	('fk_contratos_serv_hist_2', 'Histórico de reajuste de contrato não pode ser gravado porque vigência não existe', null),
	('ck_contratos_serv_hist_1', 'Valor unitário anterior deve ser maior que zero', null),
	('ck_contratos_serv_hist_2', 'Valor unitário ajustado deve ser maior que zero', null),
	('uk_contratos_serv_hist_1', 'Registro não deve se duplicar na tabela de reajustes', null)
on conflict(constraint_)
   do nothing;

create table public.contratos_lotes (
	cliente integer not null,
	contrato contrato$ not null,
	recno serial not null,
	status smallint default(1) not null,
	laudos smallint default(0) not null,
	valor moeda$ not null,
	constraint pk_contratos_lotes 
		primary key (cliente, contrato, recno),
	constraint 
		fk_contratos_lotes_1 foreign key(cliente, contrato) 
		references public.contratos(cliente, contrato)
		on update cascade on delete cascade,
	constraint 
		ck_contratos_lotes_1 check(status between 1 and 3),
	constraint 
		ck_contratos_lotes_2 check(laudos >= 0),
	constraint 
		ck_contratos_lotes_3 check(valor >= 0)
);

alter table public.contratos_lotes owner to lorencini;

insert into sys_errors 
	(constraint_, descri, solucao)
values
	('fk_contratos_lotes_1', 'Lote não pode ser gravado porque o contrato não existe', null),
	('ck_contratos_lotes_1', 'Lote com status inválido. Valores possíveis: 1.Aberto / 2.Fechado / 3.Faturado', null),
	('ck_contratos_lotes_2', 'Quantidade de laudos no lote não deve ser negativa', null),
	('ck_contratos_lotes_3', 'Valor do lote não deve ser negativo', null)
on conflict(constraint_)
   do nothing;

alter table labamostras_rel 
	add contrato contrato$,
	add lote integer,
	add constraint fk_labamostras_rel_9
		foreign key(cliente,contrato,lote)
		references contratos_lotes(cliente,contrato,recno)
		on update cascade on delete restrict;

insert into sys_errors 
	(constraint_, descri, solucao)
values
	('fk_labamostras_rel_9', 'Laudo não pode ser gravado porque o contrato ou lote informado não existe', null)
on conflict(constraint_)
   do nothing;

create table public.contratos_contatos (
	cliente integer not null,
	contrato contrato$ not null,
	contato integer not null,
	status smallint default(1) not null,
	responsavel boolean default(false) not null,
	recno serial not null,
	constraint pk_contratos_contatos
		primary key(cliente, contrato, contato),
	constraint fk_contratos_contatos_1
		foreign key(cliente, contrato)
		references contratos(cliente, contrato)
		on update cascade on delete cascade,
	constraint fk_contratos_contatos_2
		foreign key(cliente, contato)
		references tbclientes_contatos(cliente, contato)
		on update cascade on delete restrict,
	constraint ck_contratos_contatos_1
		check(status in (1, 2)),
	constraint uk_contratos_contatos_1
		unique(recno)		
);

alter table public.contratos_contatos owner to lorencini;

insert into sys_errors 
	(constraint_, descri, solucao)
values
	('fk_contratos_contatos_1', 'Contato não pode ser gravado porque o contrato não foi localizado', null),
	('fk_contratos_contatos_2', 'Contato não pode ser gravado porque o não é um contato do cliente', null),
	('ck_contratos_contatos_1', 'Status do contato de contrato inválido! Possíveis valores: 1.Ativo / 2.Inativo', null),
   ('uk_contratos_contatos_1', 'Registro não deve se duplicar na tabela de contatos', null)
on conflict(constraint_)
   do nothing;

-- alter table nf
-- 	add emissao_dia smallint,
-- 	add emissao_mes smallint,
-- 	add emissao_ano smallint;

-- alter table nf disable trigger all;
-- update 
-- 	nf
-- set
-- 	emissao_dia = extract(day from emissao),
-- 	emissao_mes = extract(month from emissao),
-- 	emissao_ano = extract(year from emissao);
-- alter table nf enable trigger all;

create index idx_nf_1 on nf(emissao) where (status = 2);

alter table labamostras_rel 
	add preco moeda$ default(0) not null;

update 
	labamostras_rel r
set
	preco = os.vl_venda 
from
	servicos_os os
where	
	os.os = r.os and
	os.codserv = r.codserv and
	r.status <> 5;

create index idx_labamostras_rel_21 on labamostras_rel(emissao_dia, emissao_mes, emissao_ano) where (status = 4 and revisao is null);

delete 
from 
	sys_fn 
where 
	fn ~* '\_oe';

delete 
from 
	sys_fn 
where 
	fn ~* '^op';

delete 
from 
	sys_tables 
where 
	tabela ~* '^op|^oe';   

delete
from 
	sys_tables t
using (
	select
		t.recno 
	from
		sys_tables t
	where
		not exists(
			select 
				1
			from
				pg_catalog.pg_tables pg
			where
				pg.tablename = t.tabela)) x
where
	t.recno = x.recno;