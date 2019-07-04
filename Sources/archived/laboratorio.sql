insert into labtensao (classe, min, max)
select classe, tensao_minima, tensao_maxima 
  from transf_tensao 
 order by 1

select *, 'insert into labunidades (descri) values ('''||descri||''');' 
from labunidades 
order by descri
select *, 'insert into labmetodos (descri) values ('''||descri||''');' 
  from labmetodos 
 order by descri
 


select * from labtensao  
select * from labtipo  
select * from labrefs  


insert into labtipo (descri) values 1('Padrão');
insert into labtipo (descri) values 2('Transformador Novo');
insert into labtipo (descri) values 3('Silicone');
insert into labtipo (descri) values 4('Silicone Novo');
insert into labtipo (descri) values 5('Tambor Tratado');
insert into labtipo (descri) values 6('Tambor Não Tratado');
insert into labtipo (descri) values 7('Tanque Tratado');
insert into labtipo (descri) values 8('Tanque Não Tratado');

SELECT distinct classe, parametro, transformadornovo, 
       silicone, tambortratado, tamborntratado, siliconenovo, tanquetratado, 
       tanquentratado, case when caracteristica = 'TEOR DE AGUA' then 24
                            when caracteristica = 'RIGIDEZ DIELETRICA NBR' then 35
                            when caracteristica = 'RIGIDEZ DIELETRICA' then 22
                            when caracteristica = 'TENSAO INTERFACIAL' then 23
                            when caracteristica = 'FATOR DE POTENCIA' then 20
                            when caracteristica = 'TEOR DE PCB' then 25
                            when caracteristica = 'ACIDEZ' then 21
                       end as ensaio
  FROM tb_fisico_quimico;

select * from labens e, labmetodos m
 where e.metodo_recno = m.recno


create or replace function preenche_fq()
returns void
as
$$
declare
	rrow					record;
	i     				integer;
	itpamostra_recno	labrefs.tpamostra_recno%type;
	vvalor				labrefs.valor%type;
begin

  for rrow in (
	   SELECT distinct classe, parametro, transformadornovo, 
             silicone, tambortratado, tamborntratado, siliconenovo, tanquetratado, 
             tanquentratado, case when caracteristica = 'TEOR DE AGUA' then 24
                            when caracteristica = 'RIGIDEZ DIELETRICA NBR' then 35
                            when caracteristica = 'RIGIDEZ DIELETRICA' then 22
                            when caracteristica = 'TENSAO INTERFACIAL' then 23
                            when caracteristica = 'FATOR DE POTENCIA' then 20
                            when caracteristica = 'TEOR DE PCB' then 25
                            when caracteristica = 'ACIDEZ' then 21
                       end as ensaio
       FROM tb_fisico_quimico)
   loop
		for i in 1..8 Loop
			if i = 1 then
			   vvalor := rrow.parametro;
         elsif i = 2 then
			   vvalor := rrow.transformadornovo;
         elsif i = 3 then
			   vvalor := rrow.silicone;
         elsif i = 4 then
			   vvalor := rrow.tambortratado;
         elsif i = 5 then
			   vvalor := rrow.tamborntratado;
         elsif i = 6 then
			   vvalor := rrow.siliconenovo;
         elsif i = 7 then
			   vvalor := rrow.tanquetratado;
         elsif i = 8 then
			   vvalor := rrow.tanquentratado;
			end if;
			
			if vvalor is not null then
				insert into labrefs (classe, ensaio_recno, tpamostra_recno, valor)
						values        (rrow.classe, rrow.ensaio,  i, vvalor);
			end if;
		end loop;   
   end loop;  

end;
$$
language plpgsql;

select preenche_fq()
  
select * from labrefs