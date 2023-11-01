create schema if not exists correios;

alter schema correios owner to lorencini;

CREATE DOMAIN public."cep$" AS varchar(8);

alter domain public."cep$" owner to lorencini;

alter table svc_cliapi
   add source_table integer,
   add source_recno integer,
   add constraint fk_svc_cliapi_4 foreign key(source_table)
      references sys_tables(recno)
      on update cascade on delete set null;

create table if not exists correios.tokens (
   token text not null,
   ambiente varchar(15) not null,
   id varchar(30) not null,
   perfil varchar(10) not null,
   cnpj varchar(14) not null,
   emissao timestamp not null,
   expiracao timestamp not null,
   recno serial not null,
   constraint pk_tokens primary key(token));

alter table correios.tokens owner to lorencini;

create table if not exists correios.precos (
   recno serial not null,
   cliente integer not null,
   emissao timestamp default(clock_timestamp()) not null,
   servico varchar(5) not null,
   origem cep$ not null,
   destino cep$ not null,
   volumes integer default(1) not null,
   peso integer not null,
   tipo integer default(2) not null,
   comprimento integer,
   largura integer,
   altura integer,
   contrato varchar(10),
   contrato_dr varchar(3),
   diametro integer,
   peso_cubico integer,
   valor_declarado moeda$,
   preco_base moeda$,
   preco_base_geral moeda$,
   variacao percent$,
   preco_referencia moeda$,
   base_calculo_imposto moeda$,
   in_peso_cubico boolean default(false) not null,
   peso_cobrado integer,
   adicional percent$,
   seguro_automatico moeda$,
   qtd_adicionais integer,
   preco_faixa moeda$,
   preco_cada_adicional moeda$,
   preco_total_adicional moeda$,
   preco_faixaVariacao moeda$,
   preco_cada_adicional_variacao moeda$,
   preco_total_adicional_variacao moeda$,
   preco_produto moeda$,
   preco_final moeda$,
   prazo_entrega integer,
   prazo_data_maxima timestamp,
   prazo_entrega_domiciliar boolean default(false),
   prazo_entrega_sabado boolean default(false),
   prazo_mensagem text,
   preco_processado boolean default(false),
   prazo_processado boolean default(false),
   account account$,
   obs text,
   fator percent$ default(48) not null,
   constraint pk_precos primary key(recno),
   constraint fk_precos_1 foreign key (servico) 
      references public.correioserv(servico)
      on update cascade on delete cascade,
   constraint fk_precos_2 foreign key (account) 
      references public.sys_accounts(recno)
      on update cascade on delete cascade,
   constraint fk_precos_3 foreign key (cliente) 
      references public.tbclientes(codigo)
      on update cascade on delete cascade,
   constraint ck_precos_1 check (origem <> destino));

alter table correios.precos owner to lorencini;

insert into sys_tables
   (schema_, tabela, descri)
values
   ('correios', 'precos', 'Tabela de requisições de cálculo de frete Correios');

alter table public.correio
   add calculo integer,
   add account account$,
   add constraint fk_correio_3 foreign key(calculo)
      references correios.precos(recno)
      on update cascade on delete set null,
   add constraint fk_correio_4 foreign key(account)
      references public.sys_accounts(recno)
      on update cascade on delete set null,
   add constraint uk_correio_5 unique(calculo);

