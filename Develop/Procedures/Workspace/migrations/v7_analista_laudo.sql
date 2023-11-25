alter table labamostras_rel
   add analista_nome varchar(60),
   add analista_cargo varchar(60),
   add analista_conselho varchar(5),
   add analista_registro varchar(15),
   add analista_assinatura varchar(50),
   add responsavel_nome varchar(60),
   add responsavel_cargo varchar(60),
   add responsavel_conselho varchar(5),
   add responsavel_registro varchar(15),
   add responsavel_assinatura varchar(50),
   add constraint fk_labamostras_rel_10
      foreign key(analista_conselho)
      references conselhos(sigla)
      on update cascade on delete restrict, 
   add constraint fk_labamostras_rel_11
      foreign key(responsavel_conselho)
      references conselhos(sigla)
      on update cascade on delete restrict; 

alter table labamostras_rel disable trigger all;
update 
	labamostras_rel r
set 
	analista_nome = Initcap(f.nome)f.nome, analista_cargo = f.cargo,
	analista_conselho = f.conselho, analista_registro = f.crq,
	analista_assinatura = f.assinatura
from
	tbfuncionarios f
where 
	f.idcodigo = r.analista and
	r.analista is not null;
update 
	labamostras_rel r
set 
	responsavel_nome = Initcap(f.nome), responsavel_cargo = f.cargo,
	responsavel_conselho = f.conselho, responsavel_registro = f.crq,
	responsavel_assinatura = f.assinatura
from
	tbfuncionarios f
where 
	f.idcodigo = r.idcodigo and
	r.idcodigo is not null;
alter table labamostras_rel enable trigger all;