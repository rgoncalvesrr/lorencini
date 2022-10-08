alter table cota 
	add emissao_dia smallint,
	add emissao_mes smallint,
	add emissao_ano smallint;
	
alter table cota disable trigger all;

update 
	cota
set
	emissao_dia = extract('day' from emissao), 	
	emissao_mes = extract('month' from emissao),
	emissao_ano = extract('year' from emissao);

alter table cota enable trigger all;

-- Marcando logs da cotações Aguardando Aprovação
update 
	sys_logs
set
	status_code = 1
where 
	source_table = 198 and 
	detail ~ 'Criação da cotação' and 
	status_code is null;

-- Marcando logs da cotações Aguardando Aprovação
update 
	sys_logs
set
	status_code = 2
where 
	source_table = 198 and 
	detail ~ '"Digitação" para "Aguardando Aprovação"' and 
	status_code is null;

update 
	sys_logs
set
	status_code = 3
where 
	source_table = 198 and 
	detail ~ '"Aguardando Aprovação" para "Aprovada"' and 
	status_code is null;

update 
	sys_logs
set
	status_code = 4
where 
	source_table = 198 and 
	detail ~ '"Aprovada" para "Em Estudo"' and 
	status_code is null;

update 
	sys_logs
set
	status_code = 5
where 
	source_table = 198 and 
	detail ~ '"Em Estudo" para "Autorizada"' and 
	status_code is null;

update 
	sys_logs
set
	status_code = 6
where 
	source_table = 198 and 
	detail ~ '"Autorizada" para "Executada"' and 
	status_code is null;

-- Marcando logs da cotações expiradas
update 
	sys_logs
set
	status_code = 7
where 
	source_table = 198 and 
	detail ~ 'para "Expirada"' and 
	status_code is null;

update 
	sys_logs
set
	status_code = 8
where 
	source_table = 198 and 
	detail ~ 'para "Cancelada"' and 
	status_code is null;   

alter table	sys_logs 
	add day smallint,
	add month smallint,
	add year smallint;

create index idx_sys_logs_2 on sys_logs(source_table, year, month) where (source_table = 198 and status_code is not null);
create index idx_sys_logs_3 on sys_logs(source_table, year, month) where (source_table = 187 and status_code is not null);

update 
	sys_logs
set
	day = extract('day' from registred), 	
	month = extract('month' from registred),
	year = extract('year' from registred);   


update 
	sys_logs
set
	status_code = 20
where 
	source_table = 187 and 
	status_code is null and 
	title = 'Pedido mudou de status' and
	detail = 'Status mudou de 10 - Digitação para 20 - Aprovação de Crédito';

update 
	sys_logs
set
	status_code = 30
where 
	source_table = 187 and 
	status_code is null and 
	title = 'Pedido mudou de status' and
	detail = 'Status mudou de 20 - Aprovação de Crédito para 30 - Autorização';

update 
	sys_logs
set
	status_code = 40
where 
	source_table = 187 and 
	status_code is null and 
	title = 'Pedido mudou de status' and
	detail = 'Status mudou de 30 - Autorização para 40 - Coletando';   

update 
	sys_logs
set
	status_code = 50
where 
	source_table = 187 and 
	status_code is null and 
	title = 'Pedido mudou de status' and
	detail = 'Status mudou de 40 - Coletando para 50 - Aguardando Fluído';   

update 
	sys_logs
set
	status_code = 50
where 
	source_table = 187 and 
	status_code is null and 
	title = 'Pedido mudou de status' and
	detail = 'Status mudou de 30 - Autorização para 50 - Aguardando Fluído';

update 
	sys_logs
set
	status_code = 60
where 
	source_table = 187 and 
	status_code is null and 
	title = 'Pedido mudou de status' and
	detail = 'Status mudou de 50 - Aguardando Fluído para 60 - Executando';

update 
	sys_logs
set
	status_code = 60
where 
	source_table = 187 and 
	status_code is null and 
	title = 'Pedido mudou de status' and
	detail = 'Status mudou de 30 - Autorização para 60 - Executando';   

update 
	sys_logs
set
	status_code = 70
where 
	source_table = 187 and 
	status_code is null and 
	title = 'Pedido mudou de status' and
	detail = 'Status mudou de 60 - Executando para 70 - Executado';

update 
	sys_logs
set
	status_code = 99
where 
	source_table = 187 and 
	status_code is null and 
	title = 'Pedido mudou de status' and
	detail ~ 'para 99 - Cancelado$';   

alter table fin_receber
	add baixa_dia smallint,
	add baixa_mes smallint,
	add baixa_ano smallint;
	
alter table fin_receber disable trigger all;
update 
	fin_receber
set
	baixa_dia = extract(day from baixa),
	baixa_mes = extract(month from baixa),
	baixa_ano = extract(year from baixa);

alter table fin_receber enable trigger all;   

create index idx_fin_receber_6 on fin_receber(baixa_mes, baixa_ano) where (baixa is not null);