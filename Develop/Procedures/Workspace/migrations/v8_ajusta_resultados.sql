alter table labamostras_res
	add unidade integer,
	add metodo integer,
   add resultado varchar(60),
   add resultado_digitado boolean default(false) not null,
   add r1 varchar(60),
   add r2 varchar(60),
   add r3 varchar(60),
   add r4 varchar(60),
   add r5 varchar(60),
   add r6 varchar(60),
	add constraint fk_labamostras_res_4 foreign key (unidade)
		references labunidades(recno)
		on update cascade on delete restrict,
	add constraint fk_labamostras_res_5 foreign key (metodo)
		references labmetodos(recno)
		on update cascade on delete restrict;
	
alter table labamostras_res 
	disable trigger all;

-- Atualizando resultados
update 
	labamostras_res r
set
	unidade     = e.recno, 
   metodo      = e.metodo_recno,
   resultado   = sys_iif(r.valor = 0 and e.sezerotxt is not null, e.sezerotxt, to_char(r.valor, e.mask)),
	r1          = sys_iif(r.v1 = 0 and e.sezerotxt is not null, e.sezerotxt, to_char(r.v1, e.mask)),
	r2          = sys_iif(r.v2 = 0 and e.sezerotxt is not null, e.sezerotxt, to_char(r.v2, e.mask)),
	r3          = sys_iif(r.v3 = 0 and e.sezerotxt is not null, e.sezerotxt, to_char(r.v3, e.mask)),
	r4          = sys_iif(r.v4 = 0 and e.sezerotxt is not null, e.sezerotxt, to_char(r.v4, e.mask)),
	r5          = sys_iif(r.v5 = 0 and e.sezerotxt is not null, e.sezerotxt, to_char(r.v5, e.mask)),
	r6          = sys_iif(r.v6 = 0 and e.sezerotxt is not null, e.sezerotxt, to_char(r.v6, e.mask))
from
	labens e
where
	e.recno = r.ensaio_recno;

-- Ajuste de alterção de norma:  81 - NBR-10505/2017 -> 21 - NBR-10505/2012 para laudos anteriores a 23/2/2024  
update
	labamostras_res r
set
	metodo = 21
from
	labamostras_rel l
where
	l.recno = r.laudo and
	l.emissao < '2024-02-23' and
	r.metodo = 81;

alter table labamostras_res 
	enable trigger all;