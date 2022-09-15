create table notificacoes (
   notificacao smallint not null,
   descricao descri$ not null,
   recno serial not null,
   constraint pk_notificacoes primary key(notificacao),
   constraint uk_notificacoes_1 unique(descricao),
   constraint uk_notificacoes_2 unique(recno)
);

alter table notificacoes owner to lorencini;

insert into notificacoes
   (notificacao, descricao)
values
   (0, 'Expirado a 30 dias'),
   (1, 'Aviso de expiração do laudo em 30 dias'),
   (2, 'Aviso de expiração do laudo em 15 dias'),
   (3, 'Aviso de expiração do laudo em 7 dias'),
   (4, 'Aviso de laudo expirado há 30 dias');

create table laudos_notificacoes (
   laudo integer not null,
   notificacao smallint not null,
   emissao timestamp default(clock_timestamp()) not null,
   recno serial not null,
   constraint pk_laudos_notificacoes primary key(laudo, notificacao),
   constraint fk_laudos_notificacoes_1 foreign key(laudo)
      references labamostras_rel(recno) on update cascade on delete cascade,
   constraint fk_laudos_notificacoes_2 foreign key(notificacao)
      references notificacoes(notificacao) on update cascade on delete restrict,
   constraint uk_laudos_notificacoes_1 unique(emissao),
   constraint uk_laudos_notificacoes_2 unique(recno));

create table laudos_notificacoes_contatos (
   laudo integer not null,
   notificacao smallint not null,
   cliente integer not null,
   contato integer not null,
   recno serial not null,
   constraint pk_laudos_notificacoes_contatos primary key(laudo, notificacao, cliente, contato),
   constraint fk_laudos_notificacoes_contatos_1 foreign key(laudo, notificacao)
      references laudos_notificacoes(laudo, notificacao) on update cascade on delete cascade,
   constraint fk_laudos_notificacoes_contatos_2 foreign key(cliente, contato)
      references tbclientes_contatos(cliente, contato) on update cascade on delete restrict,
   constraint uk_laudos_notificacoes_contatos_1 unique(recno));

alter table labamostras_rel
   add notificacao1 date,
   add notificacao2 date,
   add notificacao3 date,
   add notificacao4 date;

alter table labamostras_rel disable trigger all;   

update 
   labamostras_rel
set
   notificacao1 = pcoleta - interval '30 days',
   notificacao2 = pcoleta - interval '15 days',
   notificacao3 = pcoleta - interval '7 days',
   notificacao4 = pcoleta + interval '30 days'
where
   pcoleta is not null;

alter table labamostras_rel enable trigger all;

insert into sys_tables (tabela, descri) values ('laudos_notificacoes_contatos', 'Tabela de notificação de coleta');

create index idx_labamostras_rel_16 on labamostras_rel(notificacao1) where (status = 4 and revisao is null and notificar);
create index idx_labamostras_rel_17 on labamostras_rel(notificacao2) where (status = 4 and revisao is null and notificar);
create index idx_labamostras_rel_18 on labamostras_rel(notificacao3) where (status = 4 and revisao is null and notificar);
create index idx_labamostras_rel_19 on labamostras_rel(notificacao4) where (status = 4 and revisao is null and notificar);
create index idx_labamostras_rel_20 on labamostras_rel(pcoleta) where (status = 4 and revisao is null and notificar);   