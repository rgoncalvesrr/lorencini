create table if not exists aab (  
   aab_tipo integer not null,
   aab_descri varchar(60),
   constraint pk_aab primary key (aab_tipo));
  
create table if not exists aad (  
   aad_fluido integer not null,
   aad_descri varchar(60),
   constraint pk_aad primary key (aad_fluido));  
   
create table if not exists aae(  
   aae_cli integer not null,
   aae_razao varchar(40),
   aae_cnpj varchar(14),
   aae_tag_cap varchar(20) default 'série cliente',
   constraint pk_aae primary key (aae_cli));     
   
create table if not exists aal (  
   aal_cat varchar(1) not null,
   constraint pk_aal primary key (aal_cat));   
   
create table if not exists aaa (
   aaa_serie varchar(25) not null,
   aab_tipo integer not null,
   aaa_descri varchar(60) not null,
   aae_cli integer not null,
   aaa_fabricacao integer,
   aad_fluido integer not null,
   aaa_potencia varchar(25) not null,
   aaa_tensaop numeric(18,5) default 0 not null,
   aaa_tensaos numeric(18,5) default 0 not null,
   aaa_tag varchar(50),
   aal_cat varchar(1) not null,
   aaa_vol numeric(18,5) default 0 not null,
   aaa_data date not null,
   aaa_unidpot varchar(3) default 'kva' not null,
   aaa_fabricante varchar(60),
   aaa_subest varchar(80),
   constraint pk_aaa primary key (aaa_serie),
   constraint fk_aaa foreign key (aab_tipo) 
      references aab (aab_tipo) on update cascade on delete cascade,
   constraint fk_aaa_1 foreign key (aae_cli) 
      references aae (aae_cli) on update cascade on delete cascade,
   constraint fk_aaa_4 foreign key (aad_fluido) 
      references aad (aad_fluido) on update cascade on delete cascade,
   constraint fk_aaa_5 foreign key (aal_cat) 
      references aal (aal_cat) on update cascade on delete cascade);

create table if not exists aac (  
   aac_amostra integer not null primary key autoincrement,
   aaa_serie varchar(25) not null,
   aac_tipo integer default 1 not null,
   aac_data date not null,
   aac_origem integer default 1,
   aac_amostragem date not null,
   aac_tempamo numeric(9,4),
   aac_tempamb numeric(9,4),
   aac_tempoleo numeric(9,4),
   aac_umidade numeric(9,4),
   aac_obs text,
   constraint fk_aac foreign key (aaa_serie) 
      references aaa (aaa_serie) on update cascade on delete cascade);

create table if not exists aaf (  
   aae_cli integer not null,
   aaf_subest varchar(15) not null,
   aaf_descri varchar(60) not null,
   constraint pk_aaf primary key (aae_cli,aaf_subest),
   constraint fk_aaf foreign key (aae_cli) 
      references aae (aae_cli) on update cascade on delete cascade);
      
create table if not exists aag (
  aag_fabri integer not null,
  aag_razao varchar(40),
  constraint pk_aag primary key (aag_fabri)
);
create table if not exists aah (  
   aal_cat varchar(1) not null,
   aah_ensaio varchar(60) not null,
   aah_parametro numeric(18,5) default 0 not null,
   constraint pk_aah primary key (aal_cat,aah_ensaio),
   constraint fk_aah foreign key (aal_cat) 
      references aal (aal_cat) on update cascade on delete cascade);

create table if not exists aat (
  aat_id integer not null,
  aat_nome varchar(60) not null,
  aat_crq varchar(15),
  constraint pk_aat primary key (aat_id));
  
create table if not exists aan (  
   aac_amostra integer not null,
   aan_relatorio varchar(30) not null,
   aan_data date not null,
   aan_dtensaio date not null,
   aan_hidrogenio numeric(18,6) default 0 not null,
   aan_oxigenio numeric(18,6) default 0 not null,
   aan_nitrogenio numeric(18,6) default 0 not null,
   aan_metano numeric(18,6) default 0 not null,
   aan_monoxido numeric(18,6) default 0 not null,
   aan_dioxido numeric(18,6) default 0 not null,
   aan_etileno numeric(18,6) default 0 not null,
   aan_etano numeric(18,6) default 0 not null,
   aan_acetileno numeric(18,6) default 0 not null,
   aan_parecer text,
   aan_recomen text,
   aan_criticidade integer default 1,
   aat_id integer,
   constraint pk_aan primary key (aac_amostra,aan_relatorio),
   constraint fk_aan foreign key (aac_amostra) 
      references aac (aac_amostra) on update cascade on delete cascade,
   constraint fk_aan_eng foreign key (aat_id) 
      references aat (aat_id) on update cascade,
   constraint ck_aan_criticidade check (aan_criticidade in (1,2,3,4)));
   
create table if not exists aao (  
   aac_amostra integer not null,
   aao_relatorio varchar(30) not null,
   aao_data date not null,
   aao_dtensaio date not null,
   aao_cor numeric(18,6) default 0 not null,
   aao_densidade numeric(18,6) default 0 not null,
   aao_teoragua numeric(18,6) default 0 not null,
   aao_rigidez1 numeric(18,6) default 0 not null,
   aao_rigidez2 numeric(18,6) default 0 not null,
   aao_acidez numeric(18,6) default 0 not null,
   aao_tensaointerfacial numeric(18,6) default 0 not null,
   aao_fatorpotencia numeric(18,6) default 0 not null,
   aao_teorpcb numeric(18,6) default 0 not null,
   aao_tensaolida numeric(18,6) default 0 not null,
   aao_parecer text,
   aao_recomen text,
   aao_criticidade integer default 1,
   aat_id integer,
   constraint pk_aao primary key (aac_amostra,aao_relatorio),
   constraint fk_aao foreign key (aac_amostra) 
      references aac (aac_amostra) on update cascade on delete cascade,
   constraint fk_aao_eng foreign key (aat_id) 
      references aat (aat_id) on update cascade,
   constraint ck_aao check (aao_criticidade in (1,2,3,4)));
   
create table if not exists aas (  
   aaa_serie varchar(25) not null,
   aae_cli integer not null,
   aas_ctrl serial not null,
   aas_data date not null,
   aas_hidrogenio numeric(18,6) default 0 not null,
   aas_oxigenio numeric(18,6) default 0 not null,
   aas_nitrogenio numeric(18,6) default 0 not null,
   aas_metano numeric(18,6) default 0 not null,
   aas_monoxido numeric(18,6) default 0 not null,
   aas_dioxido numeric(18,6) default 0 not null,
   aas_etileno numeric(18,6) default 0 not null,
   aas_etano numeric(18,6) default 0 not null,
   aas_acetileno numeric(18,6) default 0 not null,
   constraint pk_aas primary key (aaa_serie,aae_cli,aas_ctrl),
   constraint fk_aas foreign key (aaa_serie) 
      references aaa (aaa_serie) on update cascade on delete cascade);
      
create table if not exists cromato (
   trafo integer,
   relato varchar(30),
   amostragem date,
   temp_oleo float,
   umidade float,
   temp_ambi float,
   h2 integer,
   o2 integer,
   n2 integer,
   ch4 integer,
   co integer,
   co2 integer,
   c2h4 integer,
   c2h6 integer,
   c2h2 integer,
   dt_rel date,
   amostra integer);

create table if not exists fisico (
   trafo integer,
   relato varchar(30),
   amostragem date,
   temp_oleo float,
   umidade float,
   temp_ambi float,
   acidez float,
   perdas float,
   rigidez float,
   tens_face float,
   teor_agua float,
   teor_pcb float,
   dt_rel date,
   amostra integer);
   
create table if not exists tbclientes (
   codigo integer not null,
   empresa varchar(100),
   cnpj varchar(100),
   tag_caption varchar(20),
   constraint pk_tbclientes primary key (codigo));
   
create table if not exists tb_cromatografia (
  amostra integer not null,
  dt_ensaio date,
  relatorio varchar(100) not null,
  dt_relatorio date,
  hidrogenio varchar(100),
  oxigenio varchar(100),
  nitrogenio varchar(100),
  metano varchar(100),
  monoxido varchar(100),
  dioxido varchar(100),
  etileno varchar(100),
  etano varchar(100),
  acetileno varchar(100),
  diagnostico text,
  recomendacao text,
  criticidade integer default 1,
  ideng integer,
  constraint pk_tb_cromatografia primary key (amostra,relatorio),
  constraint cktb_cromatografia check (criticidade in (1,2,3,4)));
  
create table if not exists tb_cromatografia_hist(
  numserial varchar(100),
  ctrl integer,
  dthisto date,
  hidrogenio varchar(20),
  metano varchar(20),
  monoxido varchar(20),
  dioxido varchar(20),
  etileno varchar(20),
  etano varchar(20),
  acetileno varchar(20),
  oxigenio varchar(20),
  nitrogenio varchar(20),
  clienteid integer);
create table if not exists tb_entrada_amostra(
  numeroid integer not null,
  data date,
  origem varchar(100),
  frasco varchar(100),
  seringa varchar(100),
  fluido varchar(100),
  ensaio varchar(100),
  numeroserie varchar(100),
  equipamento varchar(100),
  clienteid varchar(100),
  clienteterceiro varchar(100),
  fabricante varchar(100),
  identificacao varchar(100),
  local varchar(100),
  potencia varchar(100),
  tensao numeric(18,7),
  categoria varchar(100),
  ano varchar(100),
  volume numeric(18,7),
  tipo varchar(100),
  amostragem date,
  os varchar(100),
  estacao varchar(100),
  fase varchar(100),
  temp_amb varchar(100),
  temp_oleo varchar(100),
  sub_local varchar(100),
  aplicacao varchar(100),
  temp_oleo_amostra varchar(100),
  umidade_rel_ar varchar(100),
  observacoes text,
  observacoesrelatorio text,
  tag varchar(50),
  unidpot varchar(3),
  constraint pk_tb_entrada_amostra primary key (numeroid));
create table if not exists tb_fisico_quimico (
  numeroamostra integer not null,
  ensaio date,
  numerorelatorio varchar(100) not null,
  datarelatorio date,
  cor varchar(100),
  densidade varchar(100),
  teor_agua numeric(18,7),
  rigidez1 numeric(18,7),
  rigidez2 numeric(18,7),
  acidez numeric(18,7),
  tensaointerfacial numeric(18,7),
  fatorpotencia numeric(18,7),
  parecer varchar(250),
  teor_pcb varchar(100),
  recomendacao text,
  tensao_lida numeric(18,7),
  criticidade integer default 1,
  ideng integer,
  constraint pk_tb_fisico_quimico primary key (numeroamostra,numerorelatorio),
  constraint cktb_fisico_quimico check (criticidade in (1,2,3,4)));
create table if not exists tb_fisico_quimico_x (
  registro integer not null,
  caracteristica varchar(100),
  classe varchar(100),
  parametro numeric(18,7),
  transformadornovo numeric(18,7),
  silicone numeric(18,7),
  tambortratado numeric(18,7),
  tamborntratado numeric(18,7),
  siliconenovo numeric(18,7),
  tanquetratado numeric(18,7),
  tanquentratado numeric(18,7),
  constraint pk_tb_fisico_quimico_x primary key (registro)
);
create table if not exists trafos (
  trafo integer,
  serie varchar(25),
  fabricante varchar(15),
  subest varchar(60),
  ptensao float,
  stensao float,
  potencia float,
  volume float,
  tag varchar(50));
  
create table if not exists profile (
   profile integer not null primary key,
   caption varchar(50) default('Perfil Padrão') not null unique,
   proxy_server varchar(60),
   proxy_port integer,
   proxy_username varchar(60),
   proxy_password varchar(60),
   mail_smtp_host varchar(60),
   mail_smtp_port integer default(587),
   mail_smtp_user varchar(60),
   mail_smtp_pass varchar(60),
   mail_from varchar(60),
   mail_from_name varchar(60),
   srv_protocol varchar(60),
   srv_host varchar(100),
   srv_port integer,
   srv_database varchar(30),
   srv_user varchar(50),
   srv_pass varchar(50),
   auth_cnpj varchar(14),
   auth_cliente_id integer,
   auth_pass varchar(50));