select to_date(to_char(data, 'YYYYMM01'), 'YYYYMMDD') as competencia, sum(sys_iif(status = 'EM ESTUDO', vlrprevisto, 0)) as emestudo,
       sum(sys_iif(upper(trim(status)) = 'FATURADO', vlrprevisto, 0)) as faturado,
       sum(sys_iif(upper(trim(status)) = 'PENDENTE', vlrprevisto, 0)) as pendete,
       sum(sys_iif(upper(trim(status)) = 'EXECUTADO', vlrprevisto, 0)) as executado,
       sum(sys_iif(upper(trim(status)) = 'PERDIDO', vlrprevisto, 0)) as pedido,
       sum(sys_iif(upper(trim(status)) = 'APROVADO', vlrprevisto, 0)) as aprovado,
       sum(sys_iif(upper(trim(status)) = 'CONTRATO', vlrprevisto, 0)) as contrato,
      sum(vlrprevisto) as total
  from tb_orcamentos
 where ano between 2007 and 2007
 group by 1
having to_date(to_char(data, 'YYYYMM01'), 'YYYYMMDD') is not null 
 order by 1


select status, sum(vlrprevisto)::numeric(15,2), count(status)
  from tb_orcamentos
 where ano between 2007 and 2007
 group by status


Create or Replace Function sys_iif(in cond boolean, in btrue numeric, in bfalse numeric)
Returns numeric
As
$$
Begin
   if cond then
      return btrue;
   end if;

   return bfalse;
End;
$$ LANGUAGE plpgsql;