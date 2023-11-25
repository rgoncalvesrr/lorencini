alter table tbclientes
   add envia_cronograma_coleta boolean default(true) not null;

alter table tbclientes_contatos
   add envia_cronograma_coleta boolean default(true) not null;