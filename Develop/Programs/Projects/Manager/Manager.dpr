program Manager;

uses
  midaslib,
  Forms,
  SysUtils,
  Windows,
  uHelpers in '..\..\Sources\Common\uHelpers.pas',
  uMenu in '..\..\Sources\Core\Global\uMenu.pas' {Main},
  uFuncoes in '..\..\Sources\Core\Infra\uFuncoes.pas',
  uDM in '..\..\Sources\Core\Infra\uDM.pas' {DM: TDataModule},
  uIExcept in '..\..\Sources\Core\Class\uIExcept.pas',
  uIUtils in '..\..\Sources\Common\uIUtils.pas',
  uIForm in '..\..\Sources\Common\uIForm.pas' {IForm},
  uIWizard in '..\..\Sources\Common\uIWizard.pas' {IWizard},
  uilogin in '..\..\Sources\Core\Infra\uilogin.pas' {ILogin},
  iexcept in '..\..\Sources\Core\Class\iexcept.pas',
  uidefeditform in '..\..\Sources\Core\Infra\uidefeditform.pas' {IDefEditForm},
  uIBrowseDet in '..\..\Sources\Core\Infra\uIBrowseDet.pas' {IDefBrowseEdit},
  uIBrowse in '..\..\Sources\Core\Infra\uIBrowse.pas' {IDefBrowse},
  uIDefFind in '..\..\Sources\Core\Infra\uIDefFind.pas' {IDefFind},
  uIBrowseQry in '..\..\Sources\Core\Infra\uIBrowseQry.pas' {IDefBrowseQry},
  uClientes in '..\..\Sources\Core\Cad\uClientes.pas' {Clientes},
  uClienteM in '..\..\Sources\Core\Cad\uClienteM.pas' {ClientesM},
  ufieldnotnull in '..\..\Sources\Core\Global\ufieldnotnull.pas' {FieldsNotNull},
  uSysForms in '..\..\Sources\Core\Sys\uSysForms.pas' {SysForms},
  uSysFormsEdit in '..\..\Sources\Core\Sys\uSysFormsEdit.pas' {SysFormsEdit},
  uSysMenuEditor in '..\..\Sources\Core\Sys\uSysMenuEditor.pas' {SysMenuEditor},
  uSysMenuEditorItem in '..\..\Sources\Core\Sys\uSysMenuEditorItem.pas' {SysMenuEditorItem},
  uSysSecurityChangePass in '..\..\Sources\Core\Sys\uSysSecurityChangePass.pas' {SysSecurityChangePass},
  uOSClass in '..\..\Sources\Core\Vendas\uOSClass.pas',
  uOS in '..\..\Sources\Core\Vendas\uOS.pas' {OS},
  uColaboradores in '..\..\Sources\Core\RH\uColaboradores.pas' {Colaboradores},
  uColaboradoresM in '..\..\Sources\Core\RH\uColaboradoresM.pas' {ColaboradoresM},
  uSysVersions in '..\..\Sources\Core\Sys\uSysVersions.pas' {SysVersions},
  uDeptos in '..\..\Sources\Core\Cad\uDeptos.pas' {Deptos},
  uDeptosM in '..\..\Sources\Core\Cad\uDeptosM.pas' {DeptosM},
  uAtivosTipos in '..\..\Sources\Core\Cad\uAtivosTipos.pas' {AtivosTipos},
  uAtivosTiposM in '..\..\Sources\Core\Cad\uAtivosTiposM.pas' {AtivosTiposM},
  uAtivos in '..\..\Sources\Core\Cad\uAtivos.pas' {Ativos},
  uAtivosM in '..\..\Sources\Core\Cad\uAtivosM.pas' {AtivosM},
  iTypes in '..\..\Sources\Core\Infra\iTypes.pas',
  uVendedores in '..\..\Sources\Core\Cad\uVendedores.pas' {Vendedores},
  uVendedoresM in '..\..\Sources\Core\Cad\uVendedoresM.pas' {VendedoresM},
  uOSM in '..\..\Sources\Core\Vendas\uOSM.pas' {OSM},
  uProdutos in '..\..\Sources\Core\Cad\uProdutos.pas' {Produtos},
  uProdutosM in '..\..\Sources\Core\Cad\uProdutosM.pas' {ProdutosM},
  uUnidades in '..\..\Sources\Core\Cad\uUnidades.pas' {Unidades},
  uUnidadesM in '..\..\Sources\Core\Cad\uUnidadesM.pas' {UnidadesM},
  uServicos in '..\..\Sources\Core\Cad\uServicos.pas' {Servicos},
  uServicosM in '..\..\Sources\Core\Cad\uServicosM.pas' {ServicosM},
  uOSMServicos in '..\..\Sources\Core\Vendas\uOSMServicos.pas' {OSMServicos},
  uIndices in '..\..\Sources\Core\Cad\uIndices.pas' {Indices},
  uIndicesM in '..\..\Sources\Core\Cad\uIndicesM.pas' {IndicesM},
  uOSMMat in '..\..\Sources\Core\Vendas\uOSMMat.pas' {OSMMat},
  uAtividades in '..\..\Sources\Core\Cad\uAtividades.pas' {Atividades},
  uAtividadesM in '..\..\Sources\Core\Cad\uAtividadesM.pas' {AtividadesM},
  uTextos_OS in '..\..\Sources\Core\Cad\uTextos_OS.pas' {Textos_OS},
  uTextos_OSM in '..\..\Sources\Core\Cad\uTextos_OSM.pas' {Textos_OSM},
  uServicosMDet in '..\..\Sources\Core\Cad\uServicosMDet.pas' {ServicosMDet},
  uServicos_Grupo in '..\..\Sources\Core\Cad\uServicos_Grupo.pas' {Servicos_Grupo},
  uServicos_GrupoM in '..\..\Sources\Core\Cad\uServicos_GrupoM.pas' {Servicos_GrupoM},
  uART in '..\..\Sources\Core\Cad\uART.pas' {ART},
  uARTM in '..\..\Sources\Core\Cad\uARTM.pas' {ARTM},
  uOSMMO in '..\..\Sources\Core\Vendas\uOSMMO.pas' {OSMMO},
  uFFuncoes in '..\..\Sources\Core\Cad\uFFuncoes.pas' {Funcoes},
  uFFuncoesM in '..\..\Sources\Core\Cad\uFFuncoesM.pas' {FuncoesM},
  uProdutosGrupo in '..\..\Sources\Core\Cad\uProdutosGrupo.pas' {ProdutosGrupo},
  uContatoF in '..\..\Sources\Core\Cad\uContatoF.pas' {ContatoF},
  uProdutosGrupoM in '..\..\Sources\Core\Cad\uProdutosGrupoM.pas' {ProdutosGrupoM},
  uProdutosSGrupoM in '..\..\Sources\Core\Cad\uProdutosSGrupoM.pas' {ProdutosSGrupoM},
  uProdutosF in '..\..\Sources\Core\Cad\uProdutosF.pas' {ProdutosF},
  uDMReport in '..\..\Sources\Core\Infra\uDMReport.pas' {DMReport: TDataModule},
  uIDefReport in '..\..\Sources\Core\Infra\uIDefReport.pas' {IDefReport},
  uSysFormsFind in '..\..\Sources\Core\Sys\uSysFormsFind.pas' {SysFormsFind},
  uSysReports in '..\..\Sources\Core\Sys\uSysReports.pas' {SysReports},
  uReport in '..\..\Sources\Core\Class\uReport.pas',
  uSysReportsParam in '..\..\Sources\Core\Sys\uSysReportsParam.pas' {SysReportsParam},
  uR00001 in '..\..\Sources\Core\Reports\uR00001.pas' {R00001},
  uR00004 in '..\..\Sources\Core\Reports\uR00004.pas' {R00004},
  uFornecedores in '..\..\Sources\Core\Cad\uFornecedores.pas' {Fornecedores},
  uFornecedoresM in '..\..\Sources\Core\Cad\uFornecedoresM.pas' {FornecedoresM},
  uReceber in '..\..\Sources\Core\Financ\uReceber.pas' {Receber},
  uReceberM in '..\..\Sources\Core\Financ\uReceberM.pas' {ReceberM},
  uServicosF in '..\..\Sources\Core\Cad\uServicosF.pas' {ServicosF},
  uSysParams in '..\..\Sources\Core\Sys\uSysParams.pas' {SysParams},
  uClientesF in '..\..\Sources\Core\Cad\uClientesF.pas' {ClientesF},
  uFinNaturezas in '..\..\Sources\Core\Cad\uFinNaturezas.pas' {FinNaturezas},
  uFinNaturezasM in '..\..\Sources\Core\Cad\uFinNaturezasM.pas' {FinNaturezasM},
  uFinNaturezasCategM in '..\..\Sources\Core\Cad\uFinNaturezasCategM.pas' {FinNaturezasCategM},
  uMovtoBancario in '..\..\Sources\Core\Financ\uMovtoBancario.pas' {MovtoBancario},
  uFrameData in '..\..\Sources\Common\uFrameData.pas' {FrameData: TFrame},
  uIBrowseSQL in '..\..\Sources\Core\Infra\uIBrowseSQL.pas' {IDefBrowseSQL},
  uPagar in '..\..\Sources\Core\Financ\uPagar.pas' {Pagar},
  uFinCC in '..\..\Sources\Core\Cad\uFinCC.pas' {FinCC},
  uFinCCBancosM in '..\..\Sources\Core\Cad\uFinCCBancosM.pas' {FinCCBancosM},
  uFinCCM in '..\..\Sources\Core\Cad\uFinCCM.pas' {FinCCM},
  uMovtoBancarioM in '..\..\Sources\Core\Financ\uMovtoBancarioM.pas' {MovtoBancarioM},
  uPagarM in '..\..\Sources\Core\Financ\uPagarM.pas' {PagarM},
  uNFSSerie in '..\..\Sources\Core\Vendas\uNFSSerie.pas' {NFSSerie},
  uNFSSerieM in '..\..\Sources\Core\Vendas\uNFSSerieM.pas' {NFSSerieM},
  SecurityIntf in '..\..\Sources\Core\Class\SecurityIntf.pas',
  uNFS in '..\..\Sources\Core\Vendas\uNFS.pas' {NFS},
  uNFSm in '..\..\Sources\Core\Vendas\uNFSm.pas' {NFSM},
  uNFSMItens in '..\..\Sources\Core\Vendas\uNFSMItens.pas' {NFSMItens},
  uOrcaOrigens in '..\..\Sources\Core\Cad\uOrcaOrigens.pas' {OrcaOrigens},
  uOrcaOrigensM in '..\..\Sources\Core\Cad\uOrcaOrigensM.pas' {OrcaOrigensM},
  uParcelamento in '..\..\Sources\Core\Financ\uParcelamento.pas' {Parcelamento},
  uOrcaGrupos in '..\..\Sources\Core\Cad\uOrcaGrupos.pas' {OrcaGrupos},
  uOrcaGruposM in '..\..\Sources\Core\Cad\uOrcaGruposM.pas' {OrcaGruposM},
  uOSMCancelamento in '..\..\Sources\Core\Vendas\uOSMCancelamento.pas' {OSMCancelamento},
  uLabFabricantes in '..\..\Sources\Core\Labo\uLabFabricantes.pas' {LabFabricantes},
  uLabFabricantesM in '..\..\Sources\Core\Labo\uLabFabricantesM.pas' {LabFabricantesM},
  uLabIsolantes in '..\..\Sources\Core\Labo\uLabIsolantes.pas' {LabIsolantes},
  uLabIsolantesM in '..\..\Sources\Core\Labo\uLabIsolantesM.pas' {LabIsolantesM},
  uLabEquip in '..\..\Sources\Core\Labo\uLabEquip.pas' {LabEquip},
  uLabEquipM in '..\..\Sources\Core\Labo\uLabEquipM.pas' {LabEquipM},
  uSysDump in '..\..\Sources\Core\Sys\uSysDump.pas' {SysDump},
  uLabRegionais in '..\..\Sources\Core\Labo\uLabRegionais.pas' {LabRegionais},
  uLabRegionaisM in '..\..\Sources\Core\Labo\uLabRegionaisM.pas' {LabRegionaisM},
  uLabRegionaisMSub in '..\..\Sources\Core\Labo\uLabRegionaisMSub.pas' {LabRegionaisMSub},
  uR00010 in '..\..\Sources\Core\Reports\uR00010.pas' {R00010},
  uLabTensao in '..\..\Sources\Core\Labo\uLabTensao.pas' {LabTensao},
  uLabTensaoM in '..\..\Sources\Core\Labo\uLabTensaoM.pas' {LabTensaoM},
  uLabTipo in '..\..\Sources\Core\Labo\uLabTipo.pas' {LabTipo},
  uLabTipoM in '..\..\Sources\Core\Labo\uLabTipoM.pas' {LabTipoM},
  uLabUnidade in '..\..\Sources\Core\Labo\uLabUnidade.pas' {LabUnidade},
  uLabUnidadeM in '..\..\Sources\Core\Labo\uLabUnidadeM.pas' {LabUnidadeM},
  uLabMetodos in '..\..\Sources\Core\Labo\uLabMetodos.pas' {LabMetodos},
  uLabMetodosM in '..\..\Sources\Core\Labo\uLabMetodosM.pas' {LabMetodosM},
  uLabEnsaios in '..\..\Sources\Core\Labo\uLabEnsaios.pas' {LabEnsaios},
  uLabEnsaiosM in '..\..\Sources\Core\Labo\uLabEnsaiosM.pas' {LabEnsaiosM},
  uLabTiposLaudos in '..\..\Sources\Core\Labo\uLabTiposLaudos.pas' {LabTiposLaudos},
  uLabTiposLaudosM in '..\..\Sources\Core\Labo\uLabTiposLaudosM.pas' {LabTiposLaudosM},
  uLabTiposLaudosMEnsaios in '..\..\Sources\Core\Labo\uLabTiposLaudosMEnsaios.pas' {LabTiposLaudosMEnsaios},
  uLabRefs in '..\..\Sources\Core\Labo\uLabRefs.pas' {LabRefs},
  uLabProcM in '..\..\Sources\Core\Labo\uLabProcM.pas' {LabProcM},
  uLabRegionaisMSubEquip in '..\..\Sources\Core\Labo\uLabRegionaisMSubEquip.pas' {LabRegionaisMSubEquip},
  uLabEquipCli in '..\..\Sources\Core\Labo\uLabEquipCli.pas' {LabEquipCli},
  uLabEquipCliM in '..\..\Sources\Core\Labo\uLabEquipCliM.pas' {LabEquipCliM},
  uLabProcMItens in '..\..\Sources\Core\Labo\uLabProcMItens.pas' {LabProcMItens},
  uLabEquipTipo in '..\..\Sources\Core\Labo\uLabEquipTipo.pas' {LabEquipTipo},
  uLabEquipTipoM in '..\..\Sources\Core\Labo\uLabEquipTipoM.pas' {LabEquipTipoM},
  uLabEquipFam in '..\..\Sources\Core\Labo\uLabEquipFam.pas' {LabEquipFam},
  uLabEquipFamM in '..\..\Sources\Core\Labo\uLabEquipFamM.pas' {LabEquipFamM},
  uLabAmostras in '..\..\Sources\Core\Labo\uLabAmostras.pas' {LabAmostras},
  uLabRefsM in '..\..\Sources\Core\Labo\uLabRefsM.pas' {LabRefsM},
  uLabRef in '..\..\Sources\Core\Labo\uLabRef.pas' {LabRef},
  uLabRefM in '..\..\Sources\Core\Labo\uLabRefM.pas' {LabRefM},
  uSysReportsM in '..\..\Sources\Core\Sys\uSysReportsM.pas' {SysReportsM},
  uSysFormsEditM in '..\..\Sources\Core\Sys\uSysFormsEditM.pas' {SysFormsEditM},
  uEstados in '..\..\Sources\Core\Cad\uEstados.pas' {Estados},
  uEstadosM in '..\..\Sources\Core\Cad\uEstadosM.pas' {EstadosM},
  uLabProcBatch in '..\..\Sources\Core\Labo\uLabProcBatch.pas' {LabProcBatch},
  uR00011 in '..\..\Sources\Core\Reports\uR00011.pas' {R00011},
  uLabProcPort in '..\..\Sources\Core\Labo\uLabProcPort.pas' {LabProcPort},
  uLabProcPortM in '..\..\Sources\Core\Labo\uLabProcPortM.pas' {LabProcPortM},
  uLabEquipFind in '..\..\Sources\Core\Labo\uLabEquipFind.pas' {LabEquipFind},
  uLabDiag in '..\..\Sources\Core\Labo\uLabDiag.pas' {LabDiag},
  uLabDiagM in '..\..\Sources\Core\Labo\uLabDiagM.pas' {LabDiagM},
  uLabDiagGrupo in '..\..\Sources\Core\Labo\uLabDiagGrupo.pas' {LabDiagGrupo},
  uLabDiagGrupoM in '..\..\Sources\Core\Labo\uLabDiagGrupoM.pas' {LabDiagGrupoM},
  uSysFn in '..\..\Sources\Core\Sys\uSysFn.pas' {SysFn},
  uSysTables in '..\..\Sources\Core\Sys\uSysTables.pas' {SysTables},
  uSysFnM in '..\..\Sources\Core\Sys\uSysFnM.pas' {SysFnM},
  uLabCrit in '..\..\Sources\Core\Labo\uLabCrit.pas' {LabCrit},
  uLabCritM in '..\..\Sources\Core\Labo\uLabCritM.pas' {LabCritM},
  uLabCritMRel in '..\..\Sources\Core\Labo\uLabCritMRel.pas' {LabCritMRel},
  uLabDiagMRel in '..\..\Sources\Core\Labo\uLabDiagMRel.pas' {LabDiagMRel},
  uLabTiposLaudosMCrit in '..\..\Sources\Core\Labo\uLabTiposLaudosMCrit.pas' {LabTiposLaudosMCrit},
  uLabTiposLaudosMDiag in '..\..\Sources\Core\Labo\uLabTiposLaudosMDiag.pas' {LabTiposLaudosMDiag},
  uLabEnsaiosMRef in '..\..\Sources\Core\Labo\uLabEnsaiosMRef.pas' {LabEnsaiosMRef},
  uLabEnsaiosMRefs in '..\..\Sources\Core\Labo\uLabEnsaiosMRefs.pas' {LabEnsaiosMRefs},
  uLabInst in '..\..\Sources\Core\Labo\uLabInst.pas' {LabInst},
  uLabInstM in '..\..\Sources\Core\Labo\uLabInstM.pas' {LabInstM},
  uLabInstMCert in '..\..\Sources\Core\Labo\uLabInstMCert.pas' {LabInstMCert},
  uLabInstMEns in '..\..\Sources\Core\Labo\uLabInstMEns.pas' {LabInstMEns},
  uLabEnsaiosMInst in '..\..\Sources\Core\Labo\uLabEnsaiosMInst.pas' {LabEnsaiosMInst},
  uLabAmostrasM in '..\..\Sources\Core\Labo\uLabAmostrasM.pas' {LabAmostrasM},
  uLabEquipTipoMClasse in '..\..\Sources\Core\Labo\uLabEquipTipoMClasse.pas' {LabEquipTipoMClasse},
  uLabApont in '..\..\Sources\Core\Labo\uLabApont.pas' {LabApont},
  uLabLaudoCl in '..\..\Sources\Core\Labo\uLabLaudoCl.pas',
  uLabCalc in '..\..\Sources\Core\Labo\uLabCalc.pas' {LabCalc},
  uLabCalcM in '..\..\Sources\Core\Labo\uLabCalcM.pas' {LabCalcM},
  uLabCalcMVar in '..\..\Sources\Core\Labo\uLabCalcMVar.pas' {LabCalcMVar},
  uLabAcidez in '..\..\Sources\Core\Labo\uLabAcidez.pas' {LabAcidez},
  uLabAcidezM in '..\..\Sources\Core\Labo\uLabAcidezM.pas' {LabAcidezM},
  uLabApontM in '..\..\Sources\Core\Labo\uLabApontM.pas' {LabApontM},
  uIGrid in '..\..\Sources\Core\Infra\uIGrid.pas' {IGrid},
  uLabLaudoUI in '..\..\Sources\Core\Labo\uLabLaudoUI.pas' {LabLaudoUI},
  uLabLaudoUIParams in '..\..\Sources\Core\Labo\uLabLaudoUIParams.pas' {LabLaudoUIParams},
  uIConnection in '..\..\Sources\Common\uIConnection.pas' {IConnection},
  uLabProcSaldos in '..\..\Sources\Core\Labo\uLabProcSaldos.pas' {LabProcSaldos},
  uLabAmostraAss in '..\..\Sources\Core\Labo\uLabAmostraAss.pas' {LabAmostraAss},
  uLabAmostraAssM in '..\..\Sources\Core\Labo\uLabAmostraAssM.pas' {LabAmostraAssM},
  uLabRec in '..\..\Sources\Core\Labo\uLabRec.pas' {LabRec},
  uLabRecM in '..\..\Sources\Core\Labo\uLabRecM.pas' {LabRecM},
  uLabDiagMRec in '..\..\Sources\Core\Labo\uLabDiagMRec.pas' {LabDiagMRec},
  uR00014 in '..\..\Sources\Core\Reports\uR00014.pas' {R00014},
  uClientesGrupo in '..\..\Sources\Core\Cad\uClientesGrupo.pas' {ClientesGrupo},
  uClientesGrupoM in '..\..\Sources\Core\Cad\uClientesGrupoM.pas' {ClientesGrupoM},
  uClientesGrupoMClientes in '..\..\Sources\Core\Cad\uClientesGrupoMClientes.pas' {ClientesGrupoMClientes},
  uLabFrete in '..\..\Sources\Core\Labo\uLabFrete.pas' {LabFrete},
  uLabFreteM in '..\..\Sources\Core\Labo\uLabFreteM.pas' {LabFreteM},
  uResources in '..\..\Sources\Common\uResources.pas' {Resources: TDataModule},
  uLabProcSol in '..\..\Sources\Core\Labo\uLabProcSol.pas' {LabProcSol},
  uLabProcSolM in '..\..\Sources\Core\Labo\uLabProcSolM.pas' {LabProcSolM},
  uLabProcMonitor in '..\..\Sources\Core\Labo\uLabProcMonitor.pas' {LabProcMonitor},
  uLabProc in '..\..\Sources\Core\Labo\uLabProc.pas' {LabProc},
  uLabProcVol in '..\..\Sources\Core\Labo\uLabProcVol.pas' {LabProcVol},
  uLabProcVolAddBarcode in '..\..\Sources\Core\Labo\uLabProcVolAddBarcode.pas' {LabProcVolAddBarcode},
  uPrnTag in '..\..\Sources\Core\Class\uPrnTag.pas',
  uLabProcDespacho in '..\..\Sources\Core\Labo\uLabProcDespacho.pas' {LabProcDespacho},
  uLabProcDespachoVol in '..\..\Sources\Core\Labo\uLabProcDespachoVol.pas' {LabProcDespachoVol},
  uLabProcRastreio in '..\..\Sources\Core\Labo\uLabProcRastreio.pas' {LabProcRastreio},
  uLabProcRastreioM in '..\..\Sources\Core\Labo\uLabProcRastreioM.pas' {LabProcRastreioM},
  uPed in '..\..\Sources\Core\Vendas\uPed.pas' {Ped},
  uPedM in '..\..\Sources\Core\Vendas\uPedM.pas' {PedM},
  uPedProducao in '..\..\Sources\Core\Vendas\uPedProducao.pas' {PedProducao},
  uLabSolTipo in '..\..\Sources\Core\Labo\uLabSolTipo.pas' {LabSolTipo},
  uLabSolTipoM in '..\..\Sources\Core\Labo\uLabSolTipoM.pas' {LabSolTipoM},
  uLabSol in '..\..\Sources\Core\Labo\uLabSol.pas' {LabSol},
  uLabSolM in '..\..\Sources\Core\Labo\uLabSolM.pas' {LabSolM},
  uLabLaudoUIAtivos in '..\..\Sources\Core\Labo\uLabLaudoUIAtivos.pas' {LabLaudoUIAtivos},
  uLabLaudoUISolucoes in '..\..\Sources\Core\Labo\uLabLaudoUISolucoes.pas' {LabLaudoUISolucoes},
  uLabLaudo in '..\..\Sources\Core\Labo\uLabLaudo.pas' {LabLaudo},
  uFichaFinPos in '..\..\Sources\Core\Financ\uFichaFinPos.pas' {FichaFinPos},
  uFichaFinPosM in '..\..\Sources\Core\Financ\uFichaFinPosM.pas' {FichaFinPosM},
  uFichaFinPosGrafico in '..\..\Sources\Core\Financ\uFichaFinPosGrafico.pas' {FichaFinPosGrafico},
  uFichaFin in '..\..\Sources\Core\Financ\uFichaFin.pas' {FichaFin},
  uSedex in '..\..\Sources\Core\Admin\uSedex.pas' {Sedex},
  uFretes in '..\..\Sources\Core\Admin\uFretes.pas' {Fretes},
  uSedexServicos in '..\..\Sources\Core\Admin\uSedexServicos.pas' {SedexServicos},
  uSedexServicosM in '..\..\Sources\Core\Admin\uSedexServicosM.pas' {SedexServicosM},
  uFichaFinM in '..\..\Sources\Core\Financ\uFichaFinM.pas' {FichaFinM},
  uFichaFinDespM in '..\..\Sources\Core\Financ\uFichaFinDespM.pas' {FichaFinDespM},
  uFretesM in '..\..\Sources\Core\Admin\uFretesM.pas' {FretesM},
  uCota in '..\..\Sources\Core\Vendas\uCota.pas' {Cota},
  uCotaM in '..\..\Sources\Core\Vendas\uCotaM.pas' {CotaM},
  uCotaMMat in '..\..\Sources\Core\Vendas\uCotaMMat.pas' {CotaMMat},
  uCotaMServ in '..\..\Sources\Core\Vendas\uCotaMServ.pas' {CotaMServ},
  uCotaMMO in '..\..\Sources\Core\Vendas\uCotaMMO.pas' {CotaMMO},
  uMarkup in '..\..\Sources\Core\Vendas\uMarkup.pas' {Markup},
  uBiblioteca in '..\..\Sources\Core\Vendas\uBiblioteca.pas' {Biblioteca},
  uBibliotecaM in '..\..\Sources\Core\Vendas\uBibliotecaM.pas' {BibliotecaM},
  uDoc in '..\..\Sources\Core\Vendas\uDoc.pas' {Doc},
  uDocM in '..\..\Sources\Core\Vendas\uDocM.pas' {DocM},
  uDocSelBiblio in '..\..\Sources\Core\Vendas\uDocSelBiblio.pas' {DocSelBiblio},
  uIGraphicMng in '..\..\Sources\Common\uIGraphicMng.pas' {IGraphicMng},
  uFrameImage in '..\..\Sources\Common\uFrameImage.pas' {FrameImage: TFrame},
  uMarkupReprovMot in '..\..\Sources\Core\Vendas\uMarkupReprovMot.pas' {MarkupReprovMot},
  uDBLog in '..\..\Sources\Core\Class\uDBLog.pas',
  uSedexCalculos in '..\..\Sources\Core\Admin\uSedexCalculos.pas',
  uCotaAutorizar in '..\..\Sources\Core\Vendas\uCotaAutorizar.pas' {CotaAutorizar},
  uCotaCancelar in '..\..\Sources\Core\Vendas\uCotaCancelar.pas' {CotaCancelar},
  CCore in '..\..\Sources\Packages\CCore\CCore.pas',
  CMsg in '..\..\Sources\Packages\CCore\CMsg.pas',
  uSecGrants in '..\..\Sources\Core\RBAC\uSecGrants.pas' {SecGrants},
  uPrecosClientes in '..\..\Sources\Core\Vendas\uPrecosClientes.pas' {PrecosClientes},
  uPrecosClientesM in '..\..\Sources\Core\Vendas\uPrecosClientesM.pas' {PrecosClientesM},
  uClientesMFinais in '..\..\Sources\Core\Cad\uClientesMFinais.pas' {ClientesMFinais},
  uIFrameCliente in '..\..\Sources\Common\uIFrameCliente.pas' {FrameCliente: TFrame},
  uLabEnsaiosMComps in '..\..\Sources\Core\Labo\uLabEnsaiosMComps.pas' {LabEnsaiosMComps},
  uSysRoles in '..\..\Sources\Core\RBAC\uSysRoles.pas' {SysRoles},
  uSysRolesM in '..\..\Sources\Core\RBAC\uSysRolesM.pas' {SysRolesM},
  uSysRolesMUsers in '..\..\Sources\Core\RBAC\uSysRolesMUsers.pas' {SysRolesMUsers},
  uSysRolesMGrants in '..\..\Sources\Core\RBAC\uSysRolesMGrants.pas' {SysRolesMGrants},
  uPedMMat in '..\..\Sources\Core\Vendas\uPedMMat.pas' {PedMMat},
  uPedMServ in '..\..\Sources\Core\Vendas\uPedMServ.pas' {PedMServ},
  uPedMMO in '..\..\Sources\Core\Vendas\uPedMMO.pas' {PedMMO},
  uLabAmostraPed in '..\..\Sources\Core\Labo\uLabAmostraPed.pas' {LabAmostraPed},
  uLabAmostraPedM in '..\..\Sources\Core\Labo\uLabAmostraPedM.pas' {LabAmostraPedM},
  uLabAmostraPedMAmostra in '..\..\Sources\Core\Labo\uLabAmostraPedMAmostra.pas' {LabAmostraPedMAmostra},
  uAmostras in '..\..\Sources\Core\Labo\uAmostras.pas' {Amostras},
  uSysMenuComum in '..\..\Sources\Core\Sys\uSysMenuComum.pas',
  uLaudoRev in '..\..\Sources\Core\Labo\uLaudoRev.pas' {LaudoRev},
  uLaudoRevM in '..\..\Sources\Core\Labo\uLaudoRevM.pas' {LaudoRevM},
  uSysFnLoader in '..\..\Sources\Core\Sys\uSysFnLoader.pas',
  uIProgress in '..\..\Sources\Core\Infra\uIProgress.pas' {IProgress},
  uConsts in '..\..\Sources\Core\Class\uConsts.pas',
  uFrameCheckBar in '..\..\Sources\Common\uFrameCheckBar.pas' {FrameCheckBar: TFrame},
  uSysFnSyncResult in '..\..\Sources\Core\Sys\uSysFnSyncResult.pas' {SysFnSyncResult},
  uContatos in '..\..\Sources\Core\Cad\uContatos.pas' {Contatos},
  uContatosM in '..\..\Sources\Core\Cad\uContatosM.pas' {ContatosM},
  uContatosMClientes in '..\..\Sources\Core\Cad\uContatosMClientes.pas' {ContatosMClientes},
  uClientesMContatos in '..\..\Sources\Core\Cad\uClientesMContatos.pas' {ClientesMContatos},
  uSysService in '..\..\Sources\Core\Sys\uSysService.pas' {SysService},
  uSysServiceM in '..\..\Sources\Core\Sys\uSysServiceM.pas' {SysServiceM},
  uSysEmail in '..\..\Sources\Core\Sys\uSysEmail.pas' {SysEmail},
  uSysScheduler in '..\..\Sources\Core\Sys\uSysScheduler.pas' {SysScheduler},
  uSysSchedulerM in '..\..\Sources\Core\Sys\uSysSchedulerM.pas' {SysSchedulerM},
  uSysLog in '..\..\Sources\Core\Sys\uSysLog.pas' {SysLog},
  uEntidadesDeClasse in '..\..\Sources\Core\Cad\uEntidadesDeClasse.pas' {EntidadesDeClasse},
  uEntidadesDeClasseM in '..\..\Sources\Core\Cad\uEntidadesDeClasseM.pas' {EntidadesDeClasseM},
  uGestaoEntradas in '..\..\Sources\Core\Dash\uGestaoEntradas.pas' {GestaoEntradas},
  uGestaoEntradasDocs in '..\..\Sources\Core\Dash\uGestaoEntradasDocs.pas' {GestaoEntradasDocs},
  uRecAquisicao in '..\..\Sources\Core\Volume\uRecAquisicao.pas' {RecAquisicao},
  uRecPortador in '..\..\Sources\Core\Volume\uRecPortador.pas' {RecPortador};

{$R *.res}
begin
  {$IFDEF DEBUG}
  ReportMemoryLeaksOnShutdown := True;
  {$ENDIF}

  Application.Initialize;
  try
    Application.Title := 'Manager';
    Application.CreateForm(TResources, Resources);
    Application.CreateForm(TDM, DM);
    Application.CreateForm(TDMReport, DMReport);
    Application.CreateForm(TMain, Main);
    Application.CreateForm(TILogin, ILogin);
    ILogin.ShowModal;
    
    if ILogin.Execute then
      Application.Run;
  finally
    U.ExecuteSQL('select sys_session_release();');
    FreeAndNil(DM);
    FreeAndNil(DMReport);
    FreeAndNil(Main);
  end;


end.
