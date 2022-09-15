drop table if exists sys_cfg cascade;
drop table if exists sys_cfgusr cascade;

create table sys_cfg (
	pname varchar(100) not null,
	pvalue text,
	ptype varchar(1) default 'V' not null,
	descri text,
	recno serial not null);

create table sys_cfgusr(
	pname varchar(100) not null,
	username varchar(20) not null,
	pvalue text not null,
	recno serial not null);

alter table sys_cfg add constraint pksys_cfg primary key(pname);
alter table sys_cfgusr add constraint pksys_cfgusr primary key(pname, username);
alter table sys_cfgusr add constraint fksys_cfgusr_1
	foreign key(pname) references sys_cfg(pname)
	on update cascade on delete cascade;
alter table sys_cfgusr add constraint fksys_cfgusr_2
	foreign key(username) references sys_users(username)
	on update cascade on delete restrict;

select sys_param_w('fluent_host', 'localhost');
select sys_param_w('fluent_port', 5432);
select sys_param_w('fluent_dbname', '0024_lorencini');
select sys_param_w('fluent_user', 'postgres');
select sys_param_w('fluent_password', 'postgres.');
select sys_param_w('fluent_cknfe', true);
select sys_param_w('prn_etiquetas', '\\HLXJ9P1\tlp2844');
select sys_param_w('prn_volumes', '\\HLXJ9P1\tlp2844');

select * from sys_cfg 
select * from sys_cfgusr  


select coalesce('host=' || sys_paramv('fluent_host') || ' ', '')||
                  coalesce('port=' || sys_parami('fluent_port') || ' ', '')||
                  coalesce('dbname=' || sys_paramv('fluent_dbname') || ' ', '')||
                  coalesce('user=' || sys_paramv('fluent_user') || ' ', '')||
                  coalesce('password=' || sys_paramv('fluent_password') || ' ', '');