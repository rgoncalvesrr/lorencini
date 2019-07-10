ALTER TABLE public.tb_orcamentos DISABLE TRIGGER tb_tb_orcamentos;
ALTER TABLE public.tb_orcamentos DISABLE TRIGGER ta_tb_orcamentos;
UPDATE tb_orcamentos SET markup = Null;
ALTER TABLE public.tb_orcamentos ENABLE TRIGGER tb_tb_orcamentos;
ALTER TABLE public.tb_orcamentos ENABLE TRIGGER ta_tb_orcamentos;

DELETE FROM markup WHERE _tabela = 9;

INSERT INTO public.markup(
            _tabela, _recno, bdi_mat, vlmat, vlcssl_mat, vlirpj_mat, vlpis_mat, 
            vlcofins_mat, vlicms, vlcom_mat, vlinss_mat, bdi_srv, vlmobra, 
            vlcssl_srv, vlirpj_srv, vlpis_srv, vlcofins_srv, vlsrvvar, vlsrvfixo, 
            vliss, vlcom_srv, vlinss_srv, vliqui_mat, vliqui_srv, 
            vimpos_mat, vimpos_srv, vimpos_fix, vldespe)

    SELECT 09, recno, bdi_mat, vlmat, vlcssl_mat, vlirpj_mat, vlpis, vlcofins, 
	   vlicms, vlcom_mat, vlinss_mat, bdi_srv, vlmobra, vlcssl_srv, vlirpj_srv, 
	   vlpis_srv, vlcofins_srv, vlsrvvar, vlsrvfixo, vliss, vlcom_srv, vlinss_srv,
	   0, 0, (vlcssl_mat + vlirpj_mat + vlpis + vlcofins + vlicms + vlinss_mat),
	   (vlcssl_srv + vlirpj_srv + vlpis_srv + vlcofins_srv + vliss + vlinss_srv), 
	   0, vlsrvdesp
     FROM tb_orcamentos;

SELECT vlmat, vimpos_mat, vlcssl_mat, vlirpj_mat, vlpis_mat, vlcofins_mat, vlicms, vlinss_mat FROM markup WHERE vlmat <= 0.00 AND vimpos_mat > 0.00;
	   
UPDATE markup SET vimpos_mat = 0, vlcssl_mat = 0, vlirpj_mat = 0, vlpis_mat = 0, vlcofins_mat = 0, vlicms = 0, vlinss_mat = 0 WHERE vlmat <= 0.00 AND vimpos_mat > 0.00;

UPDATE markup SET vimpos_srv = 0, vlcssl_srv = 0, vlirpj_srv = 0, vlpis_srv = 0, vlcofins_srv = 0, vliss = 0, vlinss_srv = 0 
 WHERE (vlmobra + vlsrvvar + vlsrvfixo) <= 0.00 AND vimpos_srv > 0.00;

UPDATE markup SET vliqui_mat = Case When (vimpos_mat + vlcom_mat) > vlmat Then 0 Else vlmat - vimpos_mat - vlcom_mat End, 
		  vliqui_srv = Case When (vimpos_srv + vlcom_srv) > (vlmobra + vlsrvvar + vlsrvfixo) Then 0 Else (vlmobra + vlsrvvar + vlsrvfixo) - vimpos_srv - vlcom_srv End, 
		  vimpos_fix = Case When (vlmobra + vlsrvvar + vlsrvfixo + vldespe) = 0 Then 0 
				    Else (vimpos_srv + vlcom_srv) / (vlmobra + vlsrvvar + vlsrvfixo + vldespe) * (vlsrvfixo + vldespe) End;

ALTER TABLE public.tb_orcamentos DISABLE TRIGGER tb_tb_orcamentos;
ALTER TABLE public.tb_orcamentos DISABLE TRIGGER ta_tb_orcamentos;
UPDATE tb_orcamentos SET markup = markup.recno FROM markup WHERE markup._recno = tb_orcamentos.recno AND markup._tabela = 9; 
ALTER TABLE public.tb_orcamentos ENABLE TRIGGER tb_tb_orcamentos;
ALTER TABLE public.tb_orcamentos ENABLE TRIGGER ta_tb_orcamentos;

