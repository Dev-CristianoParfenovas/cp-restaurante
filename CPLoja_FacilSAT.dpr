program CPLoja_FacilSAT;

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
  untServicos in 'untServicos.pas' {frmVendasLoja},
  untRecebeLoja in 'untRecebeLoja.pas' {frmRecebeLoja},
  untRelEstoque in 'rel\untRelEstoque.pas' {frmRelEstoque},
  untFluxoCxP in 'untFluxoCxP.pas' {frmFluxoCxP},
  untRelFluxoCx in 'rel\untRelFluxoCx.pas' {frmRelFluxoCx},
  untRelContasaPagar in 'rel\untRelContasaPagar.pas' {frmRelContasPagar},
  untRelCodBarrasAD in 'rel\untRelCodBarrasAD.pas' {frmRelCodBarrasAD},
  untFuncSenha in 'untFuncSenha.pas' {frmFuncSenha},
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
  untSenhaCx in 'untSenhaCx.pas' {frmSenhaCx},
  untRelTotalFluxo in 'rel\untRelTotalFluxo.pas' {frmRelTotalFluxo},
  untProdutos_MPrima in 'untProdutos_MPrima.pas' {frmProd_MPrima},
  untRelTblPreco in 'rel\untRelTblPreco.pas' {frmRelTblPreco},
  unClientes in 'unClientes.pas' {frmClientes},
  Cond_pagto in 'Cond_pagto.pas' {frmCondpagto},
  untRelEstMin in 'rel\untRelEstMin.pas' {frmRelEstoqueMin},
  untSangria in 'untSangria.pas' {frmSangria},
  untEstoqueRapido in 'untEstoqueRapido.pas' {frmEstoqueRapido},
  untEstoqueMForn in 'untEstoqueMForn.pas' {frmEstoqueMForn},
  untRelProdDataCad in 'untRelProdDataCad.pas' {frmProdDataRegistro},
  untRelProdCad in 'rel\untRelProdCad.pas' {frmRelProdDataCad},
  untRelFluxoDetalhado in 'rel\untRelFluxoDetalhado.pas' {frmRelFluxoDetalhado},
  untTroca in 'untTroca.pas' {frmTrocaMercadoria},
  untVendasFunc in 'untVendasFunc.pas' {frmVendasFunc},
  untSenha in 'untSenha.pas' {frmSenha},
  untFluxoPrecoA in 'rel\untFluxoPrecoA.pas' {frmFluxoPrecoA},
  untFluxoPrecoD in 'rel\untFluxoPrecoD.pas' {frmRelFluxoPrecoD},
  untFluxoPrecoB in 'rel\untFluxoPrecoB.pas' {frmRelFluxoPrecoB},
  untFluxoPrecoC in 'rel\untFluxoPrecoC.pas' {frmRelFluxoPrecoC},
  untRelCustoDiario in 'rel\untRelCustoDiario.pas' {frmRelCustoDiario},
  untRelRecibo in 'rel\untRelRecibo.pas' {frmRelRecibo},
  untRelVendasFornecedor in 'rel\untRelVendasFornecedor.pas' {frmVendasFornecedor},
  untRelFluxoTroca in 'rel\untRelFluxoTroca.pas' {frmRelatFluxoTroca},
  untTrocaPeriodo in 'untTrocaPeriodo.pas' {frm_TrocaP},
  untRProdutos in 'untRProdutos.pas' {frmRProdutos},
  untRClientes in 'untRClientes.pas' {frmRClientes},
  untRelPendente in 'rel\untRelPendente.pas' {frmRelPendente},
  untServicosCPagar in 'untServicosCPagar.pas' {frmServicosCPagar},
  untInstrucoesCaixa in 'untInstrucoesCaixa.pas' {frmInstrucoesCaixa},
  untVendasCupom in 'untVendasCupom.pas' {frmVendasCupom},
  untRelatVendaCupom in 'rel\untRelatVendaCupom.pas' {frmRelatVendaCupom},
  untSenhaAlteracaoProd in 'untSenhaAlteracaoProd.pas' {frmSenhaAlteracaoProd},
  untEntradadeEstoque in 'untEntradadeEstoque.pas' {frmEntradadeEstoque},
  untGravarCP in 'untGravarCP.pas' {frmGravarCP},
  REtiquetasLoja in 'rel\REtiquetasLoja.pas' {frmREtiquetasLoja},
  Unit1 in 'Unit1.pas' {Form1},
  untRCupomVenda in 'rel\untRCupomVenda.pas' {frmCupomVenda},
  untRProdFornecedor in 'rel\untRProdFornecedor.pas' {frmRProdFornecedor},
  untNFPaulista in 'untNFPaulista.pas' {frmNFPaulista},
  untRCupomModR in 'rel\untRCupomModR.pas' {frmVendaCupomModR},
  untfrmREtiquetaZebra in 'rel\untfrmREtiquetaZebra.pas' {frmREtiquetaZebra},
  untRPedOrcObs in 'rel\untRPedOrcObs.pas' {frmRPedOrcObs},
  PrnDOS in 'library\PrnDOS.pas',
  untRelPedCompra in 'rel\untRelPedCompra.pas' {frmRelPedCompra},
  untCFOP in 'untCFOP.pas' {frmCFOP},
  untCST in 'untCST.pas' {frmCST},
  untCSOSN in 'untCSOSN.pas' {frmCSOSN},
  untFuncVenda in 'untFuncVenda.pas' {frmFuncVenda},
  untClasse.Cadastro in 'Classes\untClasse.Cadastro.pas',
  untClasse.VendasCX in 'Classes\untClasse.VendasCX.pas',
  untClasseUtil in 'untClasseUtil.pas',
  untClasse.ConfigCX in 'Classes\untClasse.ConfigCX.pas',
  untClasse.ImprimirCupom in 'Classes\untClasse.ImprimirCupom.pas',
  untClasse.DataEntrEstoque in 'Classes\untClasse.DataEntrEstoque.pas',
  untGradeProdutos in 'untGradeProdutos.pas' {frmGradeProdutos},
  untRFluxoVendasCaixa in 'rel\untRFluxoVendasCaixa.pas' {frmFluxoVendasCaixa},
  untGrupoSubGrupoEstoque in 'untGrupoSubGrupoEstoque.pas' {frmGrupoSubGrupoEstoque},
  untGrupoSubGrupEstoqueRelat in 'rel\untGrupoSubGrupEstoqueRelat.pas' {frmGrupoSubGrupoEstoqueRelat},
  untR_Orc in 'rel\untR_Orc.pas' {frmR_Orc},
  classComboBox in 'Classes\classComboBox.pas',
  untServer in 'Server\untServer.pas' {frmTesteServer},
  Firebase.Auth in 'Firebase\Firebase.Auth.pas',
  Firebase.Database in 'Firebase\Firebase.Database.pas',
  Firebase.Interfaces in 'Firebase\Firebase.Interfaces.pas',
  Firebase.Request in 'Firebase\Firebase.Request.pas',
  Firebase.Response in 'Firebase\Firebase.Response.pas',
  untPedidosNuvem in 'untPedidosNuvem.pas' {untPedidoNuvem},
  Pkg.Json.DTO in 'class_json\Pkg.Json.DTO.pas',
  RootUnit in 'class_json\RootUnit.pas',
  Model.Connection in 'Model\Model.Connection.pas',
  Model.Usuario in 'Model\Model.Usuario.pas',
  Controller.Usuario in 'Controller\Controller.Usuario.pas',
  UnitDM in 'UnitDM.pas' {dm: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'CP - Loja Facil Sat';
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
  Application.CreateForm(TfrmVendasLoja, frmVendasLoja);
  Application.CreateForm(TfrmRecebeLoja, frmRecebeLoja);
  Application.CreateForm(TfrmRelEstoque, frmRelEstoque);
  Application.CreateForm(TfrmFluxoCxP, frmFluxoCxP);
  Application.CreateForm(TfrmRelFluxoCx, frmRelFluxoCx);
  Application.CreateForm(TfrmRelContasPagar, frmRelContasPagar);
  Application.CreateForm(TfrmRelCodBarrasAD, frmRelCodBarrasAD);
  Application.CreateForm(TfrmFuncSenha, frmFuncSenha);
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
  Application.CreateForm(TfrmSenhaCx, frmSenhaCx);
  Application.CreateForm(TfrmRelTotalFluxo, frmRelTotalFluxo);
  Application.CreateForm(TfrmProd_MPrima, frmProd_MPrima);
  Application.CreateForm(TfrmRelTblPreco, frmRelTblPreco);
  Application.CreateForm(TfrmClientes, frmClientes);
  Application.CreateForm(TfrmCondpagto, frmCondpagto);
  Application.CreateForm(TfrmRelEstoqueMin, frmRelEstoqueMin);
  Application.CreateForm(TfrmSangria, frmSangria);
  Application.CreateForm(TfrmEstoqueRapido, frmEstoqueRapido);
  Application.CreateForm(TfrmEstoqueMForn, frmEstoqueMForn);
  Application.CreateForm(TfrmProdDataRegistro, frmProdDataRegistro);
  Application.CreateForm(TfrmRelProdDataCad, frmRelProdDataCad);
  Application.CreateForm(TfrmRelFluxoDetalhado, frmRelFluxoDetalhado);
  Application.CreateForm(TfrmTrocaMercadoria, frmTrocaMercadoria);
  Application.CreateForm(TfrmVendasFunc, frmVendasFunc);
  Application.CreateForm(TfrmSenha, frmSenha);
  Application.CreateForm(TfrmFluxoPrecoA, frmFluxoPrecoA);
  Application.CreateForm(TfrmRelFluxoPrecoD, frmRelFluxoPrecoD);
  Application.CreateForm(TfrmRelFluxoPrecoB, frmRelFluxoPrecoB);
  Application.CreateForm(TfrmRelFluxoPrecoC, frmRelFluxoPrecoC);
  Application.CreateForm(TfrmRelCustoDiario, frmRelCustoDiario);
  Application.CreateForm(TfrmRelRecibo, frmRelRecibo);
  Application.CreateForm(TfrmVendasFornecedor, frmVendasFornecedor);
  Application.CreateForm(TfrmRelatFluxoTroca, frmRelatFluxoTroca);
  Application.CreateForm(Tfrm_TrocaP, frm_TrocaP);
  Application.CreateForm(TfrmRProdutos, frmRProdutos);
  Application.CreateForm(TfrmRClientes, frmRClientes);
  Application.CreateForm(TfrmRelPendente, frmRelPendente);
  Application.CreateForm(TfrmServicosCPagar, frmServicosCPagar);
  Application.CreateForm(TfrmInstrucoesCaixa, frmInstrucoesCaixa);
  Application.CreateForm(TfrmVendasCupom, frmVendasCupom);
  Application.CreateForm(TfrmRelatVendaCupom, frmRelatVendaCupom);
  Application.CreateForm(TfrmSenhaAlteracaoProd, frmSenhaAlteracaoProd);
  Application.CreateForm(TfrmEntradadeEstoque, frmEntradadeEstoque);
  Application.CreateForm(TfrmGravarCP, frmGravarCP);
  Application.CreateForm(TfrmREtiquetasLoja, frmREtiquetasLoja);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmCupomVenda, frmCupomVenda);
  Application.CreateForm(TfrmRProdFornecedor, frmRProdFornecedor);
  Application.CreateForm(TfrmNFPaulista, frmNFPaulista);
  Application.CreateForm(TfrmFuncVenda, frmFuncVenda);
  Application.CreateForm(TfrmGradeProdutos, frmGradeProdutos);
  Application.CreateForm(TfrmFluxoVendasCaixa, frmFluxoVendasCaixa);
  Application.CreateForm(TfrmGrupoSubGrupoEstoque, frmGrupoSubGrupoEstoque);
  Application.CreateForm(TfrmGrupoSubGrupoEstoqueRelat, frmGrupoSubGrupoEstoqueRelat);
  Application.CreateForm(TfrmR_Orc, frmR_Orc);
  Application.CreateForm(TfrmTesteServer, frmTesteServer);
  Application.CreateForm(TuntPedidoNuvem, untPedidoNuvem);
  Application.CreateForm(Tdm, dm);
  // Application.CreateForm(TfrmCadFormasPagto, frmCadFormasPagto);
  Application.CreateForm(TfrmVendaCupomModR, frmVendaCupomModR);
 // Application.CreateForm(TfrmExportaTXT, frmExportaTXT);
  Application.CreateForm(TfrmREtiquetaZebra, frmREtiquetaZebra);
  Application.CreateForm(TfrmRPedOrcObs, frmRPedOrcObs);
  Application.CreateForm(TfrmRelPedCompra, frmRelPedCompra);
  //Application.CreateForm(TfrmEtiquetasNomePrat, frmEtiquetasNomePrat);
  //Application.CreateForm(TfrmEtiquetasNome, frmEtiquetasNome);
  Application.CreateForm(TfrmCFOP, frmCFOP);
  Application.CreateForm(TfrmCST, frmCST);
  Application.CreateForm(TfrmCSOSN, frmCSOSN);
  Application.Run;
end.
