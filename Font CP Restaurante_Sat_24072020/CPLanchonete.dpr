program CPLanchonete;







uses
  Forms,
  untPrincipal in 'untPrincipal.pas' {frmPrincipal},
  untdmModule in 'untdmModule.pas' {dmModule: TDataModule},
  untLocalEstocagem in 'untLocalEstocagem.pas' {frmLocalEstocagem},
  funcPosto in 'library\funcPosto.pas',
  uGrupoeSubgrupo in 'uGrupoeSubgrupo.pas' {frmGrupoeSubgrupo},
  Fornecedores in 'Fornecedores.pas' {frmFornecedores},
  uBuscaProdutos in 'library\forms\uBuscaProdutos.pas' {frmBuscaProdutos},
  untRelClientes in 'rel\untRelClientes.pas' {frmRelClientes},
  untRelProd in 'rel\untRelProd.pas' {frmRelProd},
  untRecebeLoja in 'untRecebeLoja.pas' {frmRecebeLoja},
  untRelEstoque in 'rel\untRelEstoque.pas' {frmRelEstoque},
  untFluxoCxP in 'untFluxoCxP.pas' {frmFluxoCxP},
  untRelFluxoCx in 'rel\untRelFluxoCx.pas' {frmRelFluxoCx},
  untRelContasaReceber in 'rel\untRelContasaReceber.pas' {frmRelContasaReceber},
  untRelContasaPagar in 'rel\untRelContasaPagar.pas' {frmRelContasPagar},
  untRelCodBarrasAD in 'rel\untRelCodBarrasAD.pas' {frmRelCodBarrasAD},
  untFuncSenha in 'untFuncSenha.pas' {frmFuncSenha},
  unrRelPedOrcamento in 'rel\unrRelPedOrcamento.pas' {frmRelPedOrcamento},
  untManutCx in 'untManutCx.pas' {frmManutCx},
  BuscaClientes in 'library\forms\BuscaClientes.pas' {frmBuscaClientes},
  untRelQtdeVendida in 'rel\untRelQtdeVendida.pas' {frmRelQtdeVendida},
  untProdutoVendidoP in 'untProdutoVendidoP.pas' {frmProdutosVendidos},
  untFluxoDetalhado in 'untFluxoDetalhado.pas' {frmFluxoDetalhado},
  untFormSplash in 'untFormSplash.pas' {frmFormSplash},
  untRelEstoqueFornecedor in 'untRelEstoqueFornecedor.pas' {frmRelEstoqueFornecedor},
  untSobre in 'untSobre.pas' {frmSobre},
  untDadosEmpresa in 'untDadosEmpresa.pas' {frmDadosEmpresa},
  untConfiguracoes in 'untConfiguracoes.pas' {frmConfiguracoes},
  untContasaReceber in 'untContasaReceber.pas' {frmContasaReceber},
  untRelTotalFluxo in 'rel\untRelTotalFluxo.pas' {frmRelTotalFluxo},
  untProdutos_MPrima in 'untProdutos_MPrima.pas' {frmProd_MPrima},
  untUnidVenda in 'untUnidVenda.pas' {frmUnidVenda},
  untRelTblPreco in 'rel\untRelTblPreco.pas' {frmRelTblPreco},
  untrelTblPrecoForn in 'untrelTblPrecoForn.pas' {frmTblPrecoForn},
  untLanctoContasaPagar in 'untLanctoContasaPagar.pas' {frmContasApagar},
  unClientes in 'unClientes.pas' {frmClientes},
  untRelEstMin in 'rel\untRelEstMin.pas' {frmRelEstoqueMin},
  Daruma_Framework_Autenticar in 'Daruma_DS300\Daruma_Framework_Autenticar.pas' {Framework_Autenticar},
  Daruma_Framework_DUAL_ImprimirTexto in 'Daruma_DS300\Daruma_Framework_DUAL_ImprimirTexto.pas' {Framework_DUAL_ImprimirTexto},
  Daruma_Framework_Exemplo_Dual_01 in 'Daruma_DS300\Daruma_Framework_Exemplo_Dual_01.pas' {Framework_Exemplo_DUAL_01},
  Daruma_Framework_Exemplo_DUAL_02 in 'Daruma_DS300\Daruma_Framework_Exemplo_DUAL_02.pas' {Framework_Exemplo_DUAL_02},
  Daruma_Framework_Impressora_Dual in 'Daruma_DS300\Daruma_Framework_Impressora_Dual.pas' {Framework_Impressora_Dual},
  Daruma_Framework_Looping_Verificacao_Status in 'Daruma_DS300\Daruma_Framework_Looping_Verificacao_Status.pas' {Framework_LoopingVerificacaoStatus},
  Daruma_Framework_Looping_Verificacao_Status_Doc in 'Daruma_DS300\Daruma_Framework_Looping_Verificacao_Status_Doc.pas' {Framework_LoopingVerificacaoStatusDoc},
  Daruma_Framework_Variaveis_Globais in 'Daruma_DS300\Daruma_Framework_Variaveis_Globais.pas',
  untRelCRCartao in 'untRelCRCartao.pas' {frmRelCRCartao},
  untCRGeralP in 'untCRGeralP.pas' {frmCRGeralP},
  untSangria in 'untSangria.pas' {frmSangria},
  untTblPreco in 'untTblPreco.pas' {frmTblPreco},
  untEstoqueRapido in 'untEstoqueRapido.pas' {frmEstoqueRapido},
  untEstoqueMForn in 'untEstoqueMForn.pas' {frmEstoqueMForn},
  untRelProdDataCad in 'untRelProdDataCad.pas' {frmProdDataRegistro},
  untRelProdCad in 'rel\untRelProdCad.pas' {frmRelProdDataCad},
  untContasaPagarP in 'untContasaPagarP.pas' {frmContasaPagarP},
  untVendasDetalhado in 'untVendasDetalhado.pas' {frmVendasDetalhado},
  untRelFluxoDetalhado in 'rel\untRelFluxoDetalhado.pas' {frmRelFluxoDetalhado},
  untVendasFunc in 'untVendasFunc.pas' {frmVendasFunc},
  untSenha in 'untSenha.pas' {frmSenha},
  untEtiquetas6087Ref in 'rel\untEtiquetas6087Ref.pas' {frmEtiquetas6087Ref},
  untEtiquetasPimaco6087 in 'rel\untEtiquetasPimaco6087.pas' {frmEtiquetasPimaco6087},
  untPimaco6087 in 'untPimaco6087.pas' {frmPimaco6087},
  untPimaco6089 in 'untPimaco6089.pas' {frmPimaco6089},
  untEtiquetasPimaco6089 in 'rel\untEtiquetasPimaco6089.pas' {frmEtiquetasPimaco6089},
  untCliente in 'untCliente.pas' {frmCliente},
  untEtiquetasLoja in 'untEtiquetasLoja.pas' {frmEtiquetasLoja},
  untFluxoPrecoA in 'rel\untFluxoPrecoA.pas' {frmFluxoPrecoA},
  untFluxoPrecoD in 'rel\untFluxoPrecoD.pas' {frmRelFluxoPrecoD},
  untFluxoPrecoB in 'rel\untFluxoPrecoB.pas' {frmRelFluxoPrecoB},
  untFluxoPrecoC in 'rel\untFluxoPrecoC.pas' {frmRelFluxoPrecoC},
  untCRPeriodo in 'untCRPeriodo.pas' {frmCRPeriodo},
  untRelCRBaixado in 'rel\untRelCRBaixado.pas' {frmRelCRBaixado},
  untRelCPBaixado in 'rel\untRelCPBaixado.pas' {frmRelCPBaixado},
  untRelCustoDiario in 'rel\untRelCustoDiario.pas' {frmRelCustoDiario},
  untRelNotaFiscal in 'rel\untRelNotaFiscal.pas' {frmRelNotaFiscal},
  untRelHistorico in 'rel\untRelHistorico.pas' {frmRelHistorico},
  untRelPendente in 'rel\untRelPendente.pas' {frmRelPendente},
  untServicosCPagar in 'untServicosCPagar.pas' {frmServicosCPagar},
  untRelPendentes in 'rel\untRelPendentes.pas' {frmRelatorioPendentes},
  untRelatPendenteDetalhado in 'rel\untRelatPendenteDetalhado.pas' {frmPendentesDetalhado},
  untRClientes in 'untRClientes.pas' {frmRClientes},
  untRVendasCliBar in 'rel\untRVendasCliBar.pas' {frmRVendasClientesBar},
  untSenhaCx in 'untSenhaCx.pas' {frmSenhaCx},
  untFluxoFuncP in 'untFluxoFuncP.pas' {frmFluxoFunc},
  untRelFluxoFunc in 'rel\untRelFluxoFunc.pas' {frmRelFluxoFunc},
  untModuloRestaurante in 'untModuloRestaurante.pas' {frmRestaurante},
  untRFluxoRestaurante in 'rel\untRFluxoRestaurante.pas' {frmRFluxoRestaurante},
  untFluxoRestauranteP in 'untFluxoRestauranteP.pas' {frmFluxoRestauranteP},
  untFluxoCaixa in 'untFluxoCaixa.pas' {frmFluxoCaixa},
  untInstrucoesR in 'untInstrucoesR.pas' {frmInstrucoesR},
  untChaveAcessoSis in 'untChaveAcessoSis.pas' {frmChaveAcesso},
  untCupomInformativo in 'untCupomInformativo.pas' {frmCupomInformativo},
  untImprimeCupomR in 'untImprimeCupomR.pas' {frmImprimeCupomR},
  untBuscaCep in 'untBuscaCep.pas' {frmBuscaCep},
  untSenhaAlteracaoProd in 'untSenhaAlteracaoProd.pas' {frmSenhaAlteracaoProd},
  untRProdFornecedor in 'rel\untRProdFornecedor.pas' {frmRProdFornecedor};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'CP - Lanchonete';
  frmFormSplash := TfrmFormSplash.Create(Application);
  frmFormSplash.Show;
  frmFormSplash.Refresh;  
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmModule, dmModule);
  Application.CreateForm(TfrmLocalEstocagem, frmLocalEstocagem);
  Application.CreateForm(TfrmGrupoeSubgrupo, frmGrupoeSubgrupo);
  Application.CreateForm(TfrmFornecedores, frmFornecedores);
  Application.CreateForm(TfrmBuscaProdutos, frmBuscaProdutos);
  Application.CreateForm(TfrmRelClientes, frmRelClientes);
  Application.CreateForm(TfrmRelProd, frmRelProd);
  Application.CreateForm(TfrmRecebeLoja, frmRecebeLoja);
  Application.CreateForm(TfrmRelEstoque, frmRelEstoque);
  Application.CreateForm(TfrmFluxoCxP, frmFluxoCxP);
  Application.CreateForm(TfrmRelFluxoCx, frmRelFluxoCx);
  Application.CreateForm(TfrmRelContasaReceber, frmRelContasaReceber);
  Application.CreateForm(TfrmRelContasPagar, frmRelContasPagar);
  Application.CreateForm(TfrmRelCodBarrasAD, frmRelCodBarrasAD);
  Application.CreateForm(TfrmFuncSenha, frmFuncSenha);
  Application.CreateForm(TfrmRelPedOrcamento, frmRelPedOrcamento);
  Application.CreateForm(TfrmManutCx, frmManutCx);
  Application.CreateForm(TfrmBuscaClientes, frmBuscaClientes);
  Application.CreateForm(TfrmRelQtdeVendida, frmRelQtdeVendida);
  Application.CreateForm(TfrmProdutosVendidos, frmProdutosVendidos);
  Application.CreateForm(TfrmFluxoDetalhado, frmFluxoDetalhado);
  Application.CreateForm(TfrmFormSplash, frmFormSplash);
  Application.CreateForm(TfrmRelEstoqueFornecedor, frmRelEstoqueFornecedor);
  Application.CreateForm(TfrmSobre, frmSobre);
  Application.CreateForm(TfrmDadosEmpresa, frmDadosEmpresa);
  Application.CreateForm(TfrmConfiguracoes, frmConfiguracoes);
  Application.CreateForm(TfrmContasaReceber, frmContasaReceber);
  Application.CreateForm(TfrmRelTotalFluxo, frmRelTotalFluxo);
  Application.CreateForm(TfrmProd_MPrima, frmProd_MPrima);
  Application.CreateForm(TfrmUnidVenda, frmUnidVenda);
  Application.CreateForm(TfrmRelTblPreco, frmRelTblPreco);
  Application.CreateForm(TfrmTblPrecoForn, frmTblPrecoForn);
  Application.CreateForm(TfrmContasApagar, frmContasApagar);
  Application.CreateForm(TfrmClientes, frmClientes);
  Application.CreateForm(TfrmRelEstoqueMin, frmRelEstoqueMin);
  Application.CreateForm(TFramework_Autenticar, Framework_Autenticar);
  Application.CreateForm(TFramework_DUAL_ImprimirTexto, Framework_DUAL_ImprimirTexto);
  Application.CreateForm(TFramework_Exemplo_DUAL_01, Framework_Exemplo_DUAL_01);
  Application.CreateForm(TFramework_Exemplo_DUAL_02, Framework_Exemplo_DUAL_02);
  Application.CreateForm(TFramework_Impressora_Dual, Framework_Impressora_Dual);
  Application.CreateForm(TFramework_LoopingVerificacaoStatus, Framework_LoopingVerificacaoStatus);
  Application.CreateForm(TFramework_LoopingVerificacaoStatusDoc, Framework_LoopingVerificacaoStatusDoc);
  Application.CreateForm(TfrmRelCRCartao, frmRelCRCartao);
  Application.CreateForm(TfrmCRGeralP, frmCRGeralP);
  Application.CreateForm(TfrmSangria, frmSangria);
  Application.CreateForm(TfrmTblPreco, frmTblPreco);
  Application.CreateForm(TfrmEstoqueRapido, frmEstoqueRapido);
  Application.CreateForm(TfrmEstoqueMForn, frmEstoqueMForn);
  Application.CreateForm(TfrmProdDataRegistro, frmProdDataRegistro);
  Application.CreateForm(TfrmRelProdDataCad, frmRelProdDataCad);
  Application.CreateForm(TfrmContasaPagarP, frmContasaPagarP);
  Application.CreateForm(TfrmVendasDetalhado, frmVendasDetalhado);
  Application.CreateForm(TfrmRelFluxoDetalhado, frmRelFluxoDetalhado);
  Application.CreateForm(TfrmVendasFunc, frmVendasFunc);
  Application.CreateForm(TfrmSenha, frmSenha);
  Application.CreateForm(TfrmEtiquetas6087Ref, frmEtiquetas6087Ref);
  Application.CreateForm(TfrmEtiquetasPimaco6087, frmEtiquetasPimaco6087);
  Application.CreateForm(TfrmPimaco6087, frmPimaco6087);
  Application.CreateForm(TfrmPimaco6089, frmPimaco6089);
  Application.CreateForm(TfrmEtiquetasPimaco6089, frmEtiquetasPimaco6089);
  Application.CreateForm(TfrmCliente, frmCliente);
  Application.CreateForm(TfrmEtiquetasLoja, frmEtiquetasLoja);
  Application.CreateForm(TfrmFluxoPrecoA, frmFluxoPrecoA);
  Application.CreateForm(TfrmRelFluxoPrecoD, frmRelFluxoPrecoD);
  Application.CreateForm(TfrmRelFluxoPrecoB, frmRelFluxoPrecoB);
  Application.CreateForm(TfrmRelFluxoPrecoC, frmRelFluxoPrecoC);
  Application.CreateForm(TfrmCRPeriodo, frmCRPeriodo);
  Application.CreateForm(TfrmRelCRBaixado, frmRelCRBaixado);
  Application.CreateForm(TfrmRelCPBaixado, frmRelCPBaixado);
  Application.CreateForm(TfrmRelCustoDiario, frmRelCustoDiario);
  Application.CreateForm(TfrmRelNotaFiscal, frmRelNotaFiscal);
  Application.CreateForm(TfrmRelHistorico, frmRelHistorico);
  Application.CreateForm(TfrmRelPendente, frmRelPendente);
  Application.CreateForm(TfrmServicosCPagar, frmServicosCPagar);
  Application.CreateForm(TfrmRelatorioPendentes, frmRelatorioPendentes);
  Application.CreateForm(TfrmPendentesDetalhado, frmPendentesDetalhado);
  Application.CreateForm(TfrmRClientes, frmRClientes);
  Application.CreateForm(TfrmRVendasClientesBar, frmRVendasClientesBar);
  Application.CreateForm(TfrmSenhaCx, frmSenhaCx);
  Application.CreateForm(TfrmFluxoFunc, frmFluxoFunc);
  Application.CreateForm(TfrmRelFluxoFunc, frmRelFluxoFunc);
  Application.CreateForm(TfrmRestaurante, frmRestaurante);
  Application.CreateForm(TfrmRFluxoRestaurante, frmRFluxoRestaurante);
  Application.CreateForm(TfrmFluxoRestauranteP, frmFluxoRestauranteP);
  Application.CreateForm(TfrmFluxoCaixa, frmFluxoCaixa);
  Application.CreateForm(TfrmInstrucoesR, frmInstrucoesR);
  Application.CreateForm(TfrmChaveAcesso, frmChaveAcesso);
  Application.CreateForm(TfrmCupomInformativo, frmCupomInformativo);
  Application.CreateForm(TfrmImprimeCupomR, frmImprimeCupomR);
  Application.CreateForm(TfrmBuscaCep, frmBuscaCep);
  Application.CreateForm(TfrmSenhaAlteracaoProd, frmSenhaAlteracaoProd);
  Application.CreateForm(TfrmRProdFornecedor, frmRProdFornecedor);
  Application.Run;
end.
