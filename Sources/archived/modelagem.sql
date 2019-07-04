alter table tb_vendedores add constraint pk_tb_vendedores primary key(idvendedor);
alter table tb_vendedores add constraint uk_tb_vendedores unique(nome);
alter table tbclientes add constraint fk_tbclientes foreign key(id_vendedor)
  references tb_vendedores(idvendedor) on update cascade on delete restrict;
ALTER TABLE `lorencini`.`tb_entrada_amostra` MODIFY COLUMN `ClienteID` INTEGER;
alter table tb_entrada_amostra add constraint fk_tb_entrada_amostra foreign key(clienteid)
  references tbclientes(codigo) on update cascade on delete restrict;

create table equip_fluido (
  fluido integer not null auto_increment,
  descri varchar(25) not null,
  constraint pk_equip_fluido primary key(fluido));
alter table equip_fluido add constraint uk_equip_fluido unique (descri);
insert into equip_fluido (descri)
select fluido
  from tb_entrada_amostra
 group by fluido;

create table equip_tipo (
  tipo integer not null auto_increment,
  descri varchar(25) not null,
  constraint pk_equip_tipo primary key(tipo));
alter table equip_tipo add constraint uk_equip_tipo unique (descri);
insert into equip_tipo (descri)
select equipamento
  from tb_entrada_amostra
 group by equipamento;

create table equip_fabri (
  fabricante integer not null auto_increment,
  descri varchar(25) not null,
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
select a.clienteid, a.numeroserie, b.fluido, c.tipo, a.potencia, a.tensao,
       a.ano, a.volume, a.estacao, a.tag,    a.unidpot, d.fabricante
  from tb_entrada_amostra a
       join equip_fluido b
         on b.descri = a.fluido
       join equip_tipo c
         on c.descri = a.equipamento
       left join equip_fabri d
         on d.descri = a.fabricante
 where a.numeroserie is not null
   and a.clienteid is not null
 group by a.clienteid, a.numeroserie;

alter table tb_entrada_amostra drop column fluido;
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