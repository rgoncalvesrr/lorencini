delete
  from tb_orcamentos 
 where recno = (
select min(recno)
  from tb_orcamentos
 group by idos
having count(idos) > 1);

alter table tb_orcamentos add constraint uk_tb_orcamentos unique (idos);

delete
  from tb_orcamentos_faturamento
 where recno in (
select a.recno
  from tb_orcamentos_faturamento a
       left join tb_orcamentos b
         on b.idos = a.idos
where b.recno is null);


alter table tb_orcamentos_faturamento add constraint fk_tb_orcamentos_faturamento
   foreign key(idos) references tb_orcamentos (idos)
   on update cascade on delete cascade;

delete
  from tb_orcamentos_historico_status
 where recno in (
select a.recno 
  from tb_orcamentos_historico_status a
       left join tb_orcamentos b
         on b.idos = a.idos
 where b.recno is null);


alter table tb_orcamentos_historico_status add constraint fk_tb_orcamentos_historico_status 
   foreign key(idos) references tb_orcamentos(idos)
   on update cascade on delete cascade;

alter table tb_orcamentos_historico_status alter status_data type timestamp;
alter table tb_orcamentos_historico_status alter status_data set default localtimestamp;
alter table tb_orcamentos_historico_status alter usuario type varchar(20);

insert into sys_users(username, password, name, active, admin, type_, changepass)
select distinct a.usuario, 'xx', a.usuario, false, false, 1, false
  from tb_orcamentos_historico_status a
       left join sys_users b
         on b.username = a.usuario
 where b.recno is null;

alter table tb_orcamentos_historico_status add constraint fk_tb_orcamentos_historico_status_1
   foreign key(usuario) references sys_users(username)
   on update cascade on delete restrict;

alter table tb_orcamentos_historico_status add constraint pk_tb_orcamentos_historico_status
   primary key(idos, recno);

alter table tb_orcamentos_faturamento add descto numeric(18,2) default 0 not null;
alter table tb_orcamentos_faturamento alter nota_valor type numeric(18,2); 
alter table tb_orcamentos_faturamento alter nota_valor set default 0;
alter table tb_orcamentos_faturamento alter nota_valor set not null;

select *
  from tb_orcamentos_faturamento

 select *
  from tb_orcamentos_historico_status where usuario = 'RICARDO'

select sum(nota_valor+descto) 
  from tb_orcamentos_faturamento
group by idos

select * from sys_users  


Create or Replace Function a_tb_orcamentos_faturamento()
Returns trigger
As $$
Declare
   fvlrprevisto   tb_orcamentos.vlrprevisto%type;
   ffaturado      tb_orcamentos.vlrprevisto%type;
Begin
   -- Processa faturamento
   if tg_op <> 'DELETE' then
      -- Recupera o valor total da OS
      select vlrprevisto
        into fvlrprevisto
        from tb_orcamentos
       where idos = new.idos;

      -- Soma o valor dos faturamentos
      select sum(nota_valor+descto)
        into ffaturado
        from tb_orcamentos_faturamento
       where idos = new.idos
       group by idos;

      -- Checa se o valor  pode ser faturado
      if ffaturado > fvlrprevisto then
         raise exception '[[O valor total da OS é % e o total faturado é %. Não é possível faturar um valor maior que o valor da OS.]]', fvlrprevisto, ffaturado;
      end if;

      -- Gravando faturamento
      if ffaturado < fvlrprevisto then
         update tb_orcamentos
            set status = 'PENDENTE'
          where idos = new.idos;
      end if;

      -- Gravando faturamento
      if ffaturado = fvlrprevisto then
         update tb_orcamentos
            set status = 'FATURADO'
          where idos = new.idos;
      end if;
   end if;

   return null;
End;
$$ language plpgsql;