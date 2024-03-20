unit Daruma_Framework_FISCAL_Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Menus;

type
  TFR_MenuImpressoraFiscal_Principal = class(TForm)
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    MN_MetodosCupom: TMenuItem;
    N1: TMenuItem;
    MetodoiLeituraX_ECF_Daruma: TMenuItem;
    BT_Fechar: TButton;
    LB_Duvidas: TLabel;
    PN_Dual: TPanel;
    I_DDC: TImage;
    LB_Dual: TLabel;
    LB_DLL: TLabel;
    AberturadeCupomFiscal1: TMenuItem;
    MtodoiCFAbrirECFDaruma1: TMenuItem;
    MtodoiCFAbrirPadraoECFDaruma1: TMenuItem;
    MtodoiCFVenderECFDaruma1: TMenuItem;
    MtodoiCFVenderSemDescECFDaruma1: TMenuItem;
    MtodoiCFVenderResumidoECFDaruma1: TMenuItem;
    DescontoouAcrscimoemItemCupomFiscal1: TMenuItem;
    CancelamentoTotaldeItememCupomFiscal1: TMenuItem;
    CancelamentoParcialdeitememCupomFiscal1: TMenuItem;
    CancelamentodeDescontoItem1: TMenuItem;
    otalizaodoCupomFiscal1: TMenuItem;
    CancelamentoDescon1: TMenuItem;
    DescriodoMeiodePagamento1: TMenuItem;
    EncerramentodeCupomFiscal1: TMenuItem;
    CancelamentodeCupomFiscal1: TMenuItem;
    IdentificaoConsumidorRodapdoCupomFiscal1: TMenuItem;
    MtodoiCFCancelarECFDaruma1: TMenuItem;
    iCFLancarAcrescimoItemECFDaruma1: TMenuItem;
    MtodoiCFLancarDescontoItemECFDaruma1: TMenuItem;
    MtodoiCFLancarAcrescimoUltimoItemECFDaruma1: TMenuItem;
    MtodoiCFLancarDescontoUltimoItemECFDaruma1: TMenuItem;
    MtodoiCFCancelarItemECFDaruma1: TMenuItem;
    MtodoiCFCancelarUltimoItemECFDaruma1: TMenuItem;
    MtodoiCFCancelarItemParcialECFDaruma1: TMenuItem;
    MtodoiCFCancelarUltimoItemParcialECFDaruma1: TMenuItem;
    MtodoiCFCancelarDescontoItemECFDaruma1: TMenuItem;
    MtodoiCFCancelarDescontoUltimoItemECFDaruma1: TMenuItem;
    MtodoiCFTotalizarCupomECFDaruma1: TMenuItem;
    MtodoiCFTotalizarCupomPadraoECFDaruma1: TMenuItem;
    MtodoiCFCancelarDescontoSubtotalECFDaruma1: TMenuItem;
    MtodoiCFCancelarAcrescimoSubtotalECFDaruma1: TMenuItem;
    MtodoiCFEfetuarPagamentoPadraoECFDaruma1: TMenuItem;
    MtodoiCFEfetuarPagamentoFormatadoECFDaruma1: TMenuItem;
    MtodoiCFEfetuarPagamentoECFDaruma1: TMenuItem;
    MtodoiCFEncerrarPadraoECFDaruma1: TMenuItem;
    MtodoiCFEncerrarConfigMsgECFDaruma1: TMenuItem;
    MtodoiCFEncerrarResumidoECFDaruma1: TMenuItem;
    MtodoiCFEmitirCupomAdicionalECFDaruma1: TMenuItem;
    MtodoiCFIdentificarConsumidorECFDaruma1: TMenuItem;
    MtodoiLeituraXECFDaruma1: TMenuItem;
    MtodorLeituraXECFDaruma1: TMenuItem;
    MtodorLeituraXCustomizadaECFDaruma1: TMenuItem;
    ReduoZ1: TMenuItem;
    MtodoiReducaoZECFDaruma1: TMenuItem;
    Sangria1: TMenuItem;
    Suprimento1: TMenuItem;
    LeituraMemriaFiscal1: TMenuItem;
    ComprovanteCrditoeDbito1: TMenuItem;
    MtodoiSangriaPadraoECFDaruma1: TMenuItem;
    MtodoiSangriaECFDaruma1: TMenuItem;
    MtodoiSuprimentoPadraoECFDaruma1: TMenuItem;
    MtodoiSuprimentoECFDaruma1: TMenuItem;
    MtodoiMFLerECFDaruma1: TMenuItem;
    MtodoiMFLerSerialECFDaruma1: TMenuItem;
    MtodoiRGAbrirECFDaruma1: TMenuItem;
    MtodoiRGAbrirIndiceECFDaruma1: TMenuItem;
    MtodoiRGAbrirPadraoECFDaruma1: TMenuItem;
    MtodoiRGImprimirTextoECFDaruma1: TMenuItem;
    MtodoiRGFecharECFDaruma1: TMenuItem;
    MtodoiCCDAbrirECFDaruma1: TMenuItem;
    MtodoiCCDAbrirSimplificadoECFDaruma1: TMenuItem;
    MtodoiCCDAbrirPadraoECFDaruma1: TMenuItem;
    MtodoiCCDImprimirTextoECFDaruma1: TMenuItem;
    MtodoiCCDImprimirArquivoECFDaruma1: TMenuItem;
    MtodoiCCDFecharECFDaruma1: TMenuItem;
    MtodoiCCDEstornarPadraoECFDaruma1: TMenuItem;
    MtodoiCCDEstornarECFDaruma1: TMenuItem;
    MetodosPAFECF1: TMenuItem;
    MtodosGavetaAutenticaeOutros1: TMenuItem;
    MtodosBilhetedePassagem1: TMenuItem;
    MN_MenuFiscal: TMenuItem;
    MtodorGerarRelatorioECFDaruma1: TMenuItem;
    MtodorGerarRelatorioOffLineECFDaruma1: TMenuItem;
    MtodorAssinarRSAECFDaruma1: TMenuItem;
    MtodorCalcularMD5ECFDaruma1: TMenuItem;
    MtodosComprovanteNoFiscal1: TMenuItem;
    MtodosRelatrioGerencial1: TMenuItem;
    MtodosRelatriosFiscais1: TMenuItem;
    MtodosObterConfigImpressora1: TMenuItem;
    MtodosConfiguraoImpressora1: TMenuItem;
    MtodosRegistry1: TMenuItem;
    MtodosCdigodeBarras1: TMenuItem;
    Aberturadecomprovantenaofiscal1: TMenuItem;
    Recebimentodeitens1: TMenuItem;
    Cancelamentodeitem1: TMenuItem;
    Cancelamentodeacrescimoemitem1: TMenuItem;
    Cancelamentodedescontoemitem1: TMenuItem;
    otalizacaodeCNF1: TMenuItem;
    CancelamentodedescontoeacrescimoemsubtotaldeCNF1: TMenuItem;
    DescricaodomeiosdepagamentodeCNF1: TMenuItem;
    EncerramentodeCNF1: TMenuItem;
    CancelamentodeCNF1: TMenuItem;
    MtodoiCNFAbrirECFDaruma1: TMenuItem;
    MtodoiCNFAbrirPadraoECFDaruma1: TMenuItem;
    M1: TMenuItem;
    MtodoiCNFReceberSemDescECFDaruma1: TMenuItem;
    MtodoiCNFCancelarItemECFDaruma1: TMenuItem;
    MtodoiCNFCancelarUltimoItemECFDaruma1: TMenuItem;
    MtodoiCNFCancelarAcrescimoItemECFDaruma1: TMenuItem;
    MtodoiCNFCancelarAcrescimoUltimoItemECFDaruma1: TMenuItem;
    Mto1: TMenuItem;
    MtodoiCNFCancelarDescontoUltimoItemECFDaruma1: TMenuItem;
    MtodoiCNFTotalizarComprovanteECFDaruma1: TMenuItem;
    MtodoiCNFTotalizarComprovantePadraoECFDaruma1: TMenuItem;
    MtodoiCNFCancelarAcrescimoSubtotalECFDaruma1: TMenuItem;
    MtodoiCNFCancelarDescontoSubtotalECFDaruma1: TMenuItem;
    MtodoiCNFEfetuarPagamentoECFDaruma1: TMenuItem;
    MtodoiCNFEfetuarPagamentoFormatadoECFDaruma1: TMenuItem;
    Mto2: TMenuItem;
    MtodoiCNFEncerrarECFDaruma1: TMenuItem;
    MtodoiCNFEncerrarPadraoECFDaruma1: TMenuItem;
    MtodoiCNFCancelarECFDaruma1: TMenuItem;
    MtodoiCFBPAbrirECFDaruma1: TMenuItem;
    MtodoiCFBPVenderECFDaruma1: TMenuItem;
    MtodoconfCFBPProgramarUFECFDaruma1: TMenuItem;
    AberturaCCD1: TMenuItem;
    extoImprimir1: TMenuItem;
    EncerrarCCD1: TMenuItem;
    EstornoCCD1: TMenuItem;
    AberturaRelatrioGerencial1: TMenuItem;
    extoImpresso1: TMenuItem;
    EncerramentoRelatrioGerencial1: TMenuItem;
    HorriodeVero1: TMenuItem;
    Habilitar1: TMenuItem;
    Desabilitar1: TMenuItem;
    ModoPrVenda1: TMenuItem;
    Habilitar2: TMenuItem;
    Desabilitar2: TMenuItem;
    AvanoPapel1: TMenuItem;
    Loja1: TMenuItem;
    Operador1: TMenuItem;
    ECF1: TMenuItem;
    MtodoconfCadastrarPadraoECFDaruma1: TMenuItem;
    MtodoconfCadastrarECFDaruma1: TMenuItem;
    EspelhoMFD1: TMenuItem;
    MtodoiCFEncerrarECFDaruma1: TMenuItem;
    CupomMania1: TMenuItem;
    ConfigurarCupomMania: TMenuItem;
    otaldeISSeICMScontabilizadoltimoCFMania1: TMenuItem;
    GeralDarumaFramework1: TMenuItem;
    ECF2: TMenuItem;
    MtodoregAlterarValorDaruma1: TMenuItem;
    MtodoeAcionarGuilhotinaECFDaruma1: TMenuItem;
    MtodoeAbrirGavetaECFDaruma1: TMenuItem;
    N2viadoCCD1: TMenuItem;
    MtodoiImprimirCodigoBarrasECFDaruma1: TMenuItem;
    GeraodeArquivos1: TMenuItem;
    Cheque2: TMenuItem;
    MtodorRetornarGTCodificadoECFDaruma1: TMenuItem;
    MtodorVerificarGTCodificadoECFDaruma1: TMenuItem;
    MtodorRetornarNumeroSerieCodificadoECFDaruma1: TMenuItem;
    MtodorVerificarNumeroSerieCodificadoECFDaruma1: TMenuItem;
    LX1: TMenuItem;
    LMFC1: TMenuItem;
    LMF1: TMenuItem;
    ArqMFD1: TMenuItem;
    abProd1: TMenuItem;
    Estoque1: TMenuItem;
    MovimentoporECF1: TMenuItem;
    MeiosdePgto1: TMenuItem;
    DAVEmitidos1: TMenuItem;
    Encerrantes1: TMenuItem;
    ransfMesas1: TMenuItem;
    MesasAbertas1: TMenuItem;
    ManifestoFiscaldeViagem1: TMenuItem;
    IdentificaodoPAFECF1: TMenuItem;
    VendasdoPerodo1: TMenuItem;
    abTcnicondicesdeProduo1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    estedeVendadeItensSemPararBuferizando1: TMenuItem;
    N4: TMenuItem;
    Exemplos1: TMenuItem;
    CCDCompleto1: TMenuItem;
    Exemplos2: TMenuItem;
    CupomFiscalCompleto1: TMenuItem;
    CupomFiscalResumido1: TMenuItem;
    N5: TMenuItem;
    Exemplos3: TMenuItem;
    CNFDetalhado1: TMenuItem;
    Extras1: TMenuItem;
    esteConsumoMFD1: TMenuItem;
    Especiais1: TMenuItem;
    MtodoeDefinirProdutoDaruma1: TMenuItem;
    Mtodo1: TMenuItem;
    MtodoeEnviarComandoECFDaruma1: TMenuItem;
    Especiais2: TMenuItem;
    MtodoregAlterarValorDaruma2: TMenuItem;
    MtodorGerarEspelhoMFDECFDaruma1: TMenuItem;
    MtodorEfetuarDownloadMFECFDaruma1: TMenuItem;
    MtodorEfetuarDownloadMFDECFDaruma1: TMenuItem;
    CupomFiscalPrVenda1: TMenuItem;
    EF1: TMenuItem;
    eTEFTravarTecladoECFDaruma1: TMenuItem;
    eTEFSetarFocoECFDaruma1: TMenuItem;
    iTEFFecharECFDaruma1: TMenuItem;
    MtodorCodigoModeloFiscalECFDaruma1: TMenuItem;
    EstornoMeiopagamento1: TMenuItem;
    iEstornarPagamentoECFDaruma1: TMenuItem;
    iTEFImprimirRespostaCartaoECFDaruma1: TMenuItem;
    iTEFImprimirRespostaECFDaruma1: TMenuItem;
    eTEFEsperarArquivoECFDaruma1: TMenuItem;
    esteCompletoTEF1: TMenuItem;
    M2: TMenuItem;
    MtodorRSARetornaChavePublicaECFDaruma1: TMenuItem;
    iImprimir_CHEQUE_Daruma: TMenuItem;
    Mtodo2: TMenuItem;
    eCarregarBitmapPromocional_ECF_Daruma: TMenuItem;
    MtodoeMemoriaFiscalECFDaruma1: TMenuItem;
    ComunicaoSerial1: TMenuItem;
    MtodoconfModoPAFECFDaruma1: TMenuItem;
    MtodorGerarMFDECFDaruma1: TMenuItem;
    MtodorGerarMFECFDaruma1: TMenuItem;
    MtodorGerarTDMECFDaruma1: TMenuItem;
    MtodorGerarSPEDECFDaruma1: TMenuItem;
    MtodorGerarSINTEGRAECFDaruma1: TMenuItem;
    MtodorGerarNFPECFDaruma1: TMenuItem;
    eEjetarChequeECFDaruma1: TMenuItem;
    procedure DarumaFramework_Mostrar_Retorno(iRetorno:integer);
    procedure BT_FecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MtodoiCFAbrirPadraoECFDaruma1Click(Sender: TObject);
    procedure MtodoiCFCancelarECFDaruma1Click(Sender: TObject);
    procedure MtodoiCFAbrirECFDaruma1Click(Sender: TObject);
    procedure MtodoiCFVenderECFDaruma1Click(Sender: TObject);
    procedure MtodoiCFVenderSemDescECFDaruma1Click(Sender: TObject);
    procedure MtodoiCFVenderResumidoECFDaruma1Click(Sender: TObject);
    procedure iCFLancarAcrescimoItemECFDaruma1Click(Sender: TObject);
    procedure MtodoiCFLancarDescontoItemECFDaruma1Click(Sender: TObject);
    procedure MtodoiCFLancarAcrescimoUltimoItemECFDaruma1Click(
      Sender: TObject);
    procedure MtodoiCFLancarDescontoUltimoItemECFDaruma1Click(
      Sender: TObject);
    procedure MtodoiCFCancelarItemECFDaruma1Click(Sender: TObject);
    procedure MtodoiCFCancelarUltimoItemECFDaruma1Click(Sender: TObject);
    procedure MtodoiCFCancelarItemParcialECFDaruma1Click(Sender: TObject);
    procedure MtodoiCFCancelarUltimoItemParcialECFDaruma1Click(
      Sender: TObject);
    procedure MtodoiCFCancelarDescontoUltimoItemECFDaruma1Click(
      Sender: TObject);
    procedure MtodoiCFCancelarDescontoItemECFDaruma1Click(Sender: TObject);
    procedure MtodoiCFTotalizarCupomPadraoECFDaruma1Click(Sender: TObject);
    procedure MtodoiCFTotalizarCupomECFDaruma1Click(Sender: TObject);
    procedure MtodoiCFCancelarDescontoSubtotalECFDaruma1Click(
      Sender: TObject);
    procedure MtodoiCFCancelarAcrescimoSubtotalECFDaruma1Click(
      Sender: TObject);
    procedure MtodoiCFEfetuarPagamentoPadraoECFDaruma1Click(
      Sender: TObject);
    procedure MtodoiCFEfetuarPagamentoFormatadoECFDaruma1Click(
      Sender: TObject);
    procedure MtodoiCFEfetuarPagamentoECFDaruma1Click(Sender: TObject);
    procedure MtodoiCFEncerrarPadraoECFDaruma1Click(Sender: TObject);
    procedure MtodoiCFEncerrarResumidoECFDaruma1Click(Sender: TObject);
    procedure MtodoiCFEmitirCupomAdicionalECFDaruma1Click(Sender: TObject);
    procedure MtodoiCFEncerrarConfigMsgECFDaruma1Click(Sender: TObject);
    procedure MtodoiCFIdentificarConsumidorECFDaruma1Click(
      Sender: TObject);
    procedure MtodoiLeituraXECFDaruma1Click(Sender: TObject);
    procedure MtodorLeituraXECFDaruma1Click(Sender: TObject);
    procedure MtodorLeituraXCustomizadaECFDaruma1Click(Sender: TObject);
    procedure MtodoiReducaoZECFDaruma1Click(Sender: TObject);
    procedure MtodoiSangriaPadraoECFDaruma1Click(Sender: TObject);
    procedure MtodoiSangriaECFDaruma1Click(Sender: TObject);
    procedure MtodoiSuprimentoPadraoECFDaruma1Click(Sender: TObject);
    procedure MtodoiSuprimentoECFDaruma1Click(Sender: TObject);
    procedure MtodoiMFLerECFDaruma1Click(Sender: TObject);
    procedure MtodoiMFLerSerialECFDaruma1Click(Sender: TObject);
    procedure MtodoiRGAbrirECFDaruma1Click(Sender: TObject);
    procedure MtodoiRGAbrirIndiceECFDaruma1Click(Sender: TObject);
    procedure MtodoiRGAbrirPadraoECFDaruma1Click(Sender: TObject);
    procedure MtodoiRGFecharECFDaruma1Click(Sender: TObject);
    procedure MtodoiRGImprimirTextoECFDaruma1Click(Sender: TObject);
    procedure MtodoiCCDAbrirECFDaruma1Click(Sender: TObject);
    procedure MtodoiCCDAbrirSimplificadoECFDaruma1Click(Sender: TObject);
    procedure MtodoiCCDAbrirPadraoECFDaruma1Click(Sender: TObject);
    procedure MtodoiCCDImprimirTextoECFDaruma1Click(Sender: TObject);
    procedure MtodoiCCDFecharECFDaruma1Click(Sender: TObject);
    procedure MtodoiCCDEstornarPadraoECFDaruma1Click(Sender: TObject);
    procedure MtodoiCCDEstornarECFDaruma1Click(Sender: TObject);
    procedure MtodosdeRetornos1Click(Sender: TObject);
    procedure MtodosProgramaoeConfig1Click(Sender: TObject);
    procedure MtodoiCNFAbrirPadraoECFDaruma1Click(Sender: TObject);
    procedure MtodoiCNFAbrirECFDaruma1Click(Sender: TObject);
    procedure MtodoiCNFCancelarECFDaruma1Click(Sender: TObject);
    procedure MtodoiCNFReceberSemDescECFDaruma1Click(Sender: TObject);
    procedure MtodoiCNFCancelarUltimoItemECFDaruma1Click(Sender: TObject);
    procedure MtodoiCNFCancelarAcrescimoItemECFDaruma1Click(
      Sender: TObject);
    procedure MtodoiCNFCancelarAcrescimoUltimoItemECFDaruma1Click(
      Sender: TObject);
    procedure MtodoiCNFCancelarDescontoUltimoItemECFDaruma1Click(
      Sender: TObject);
    procedure MtodoiCNFEncerrarPadraoECFDaruma1Click(Sender: TObject);
    procedure Mto2Click(Sender: TObject);
    procedure MtodoiCNFCancelarAcrescimoSubtotalECFDaruma1Click(
      Sender: TObject);
    procedure MtodoiCNFCancelarDescontoSubtotalECFDaruma1Click(
      Sender: TObject);
    procedure MtodoiCNFTotalizarComprovantePadraoECFDaruma1Click(
      Sender: TObject);
    procedure MtodoiCNFTotalizarComprovanteECFDaruma1Click(
      Sender: TObject);
    procedure MtodoiCNFEfetuarPagamentoECFDaruma1Click(Sender: TObject);
    procedure MtodoiCNFEfetuarPagamentoFormatadoECFDaruma1Click(
      Sender: TObject);
    procedure MtodoiCNFEncerrarECFDaruma1Click(Sender: TObject);
    procedure MtodoiCFBPAbrirECFDaruma1Click(Sender: TObject);
    procedure MtodoconfCFBPProgramarUFECFDaruma1Click(Sender: TObject);
    procedure MtodoiCFBPVenderECFDaruma1Click(Sender: TObject);
    procedure MtodoconfCadastrarPadraoECFDaruma1Click(Sender: TObject);
    procedure EspelhoMFD1Click(Sender: TObject);
    procedure MtodoiCFEncerrarECFDaruma1Click(Sender: TObject);
    procedure Habilitar1Click(Sender: TObject);
    procedure Desabilitar1Click(Sender: TObject);
    procedure Habilitar2Click(Sender: TObject);
    procedure Desabilitar2Click(Sender: TObject);
    procedure MtodorStatusImpressoraECFDaruma1Click(Sender: TObject);
    procedure MtodoconfCadastrarECFDaruma1Click(Sender: TObject);
    procedure AvanoPapel1Click(Sender: TObject);
    procedure Operador1Click(Sender: TObject);
    procedure MtodoregAlterarValorDaruma1Click(Sender: TObject);
    procedure ConfigurarCupomManiaClick(Sender: TObject);
    procedure MtodorGerarRelatorioECFDaruma1Click(Sender: TObject);
    procedure MtodorGerarRelatorioOffLineECFDaruma1Click(Sender: TObject);
    procedure MtodorStatusUltimoCmdECFDaruma1Click(Sender: TObject);
    procedure MtodorVerificarImpressoraLigadaECFDaruma1Click(
      Sender: TObject);
    procedure MtodoeAcionarGuilhotinaECFDaruma1Click(Sender: TObject);
    procedure N2viadoCCD1Click(Sender: TObject);
    procedure MtodoeAbrirGavetaECFDaruma1Click(Sender: TObject);
    procedure MtodoiImprimirCodigoBarrasECFDaruma1Click(Sender: TObject);
    procedure MtodorLerAliquotasECFDaruma1Click(Sender: TObject);
    procedure Mtodo1Click(Sender: TObject);
    procedure MtodorLerRGECFDaruma1Click(Sender: TObject);
    procedure MtodosObterConfigImpressora1Click(Sender: TObject);
    procedure MtodorAssinarRSAECFDaruma1Click(Sender: TObject);
    procedure MtodorCalcularMD5ECFDaruma1Click(Sender: TObject);
    procedure Loja1Click(Sender: TObject);
    procedure MtodorRetornarGTCodificadoECFDaruma1Click(Sender: TObject);
    procedure MtodorVerificarGTCodificadoECFDaruma1Click(Sender: TObject);
    procedure MtodorRetornarNumeroSerieCodificadoECFDaruma1Click(
      Sender: TObject);
    procedure MtodorVerificarNumeroSerieCodificadoECFDaruma1Click(
      Sender: TObject);
    procedure LX1Click(Sender: TObject);
    procedure MtodoeDefinirProdutoDaruma1Click(Sender: TObject);
    procedure MtodoeRetornarAvisoECFDaruma1Click(Sender: TObject);
    procedure MtodoeRetornarErroECFDaruma1Click(Sender: TObject);
    procedure MtodoeAguardarCompactacaoECFDaruma1Click(Sender: TObject);
    procedure MtodoregAlterarValorDaruma2Click(Sender: TObject);
    procedure MtodosTEF1Click(Sender: TObject);
    procedure Cheque1Click(Sender: TObject);
    procedure MtodorGerarEspelhoMFDECFDaruma1Click(Sender: TObject);
    procedure MtodoregCCDECFDaruma1Click(Sender: TObject);
    procedure MtodoeEnviarComandoECFDaruma1Click(Sender: TObject);
    procedure estedeVendadeItensSemPararBuferizando1Click(Sender: TObject);
    procedure CupomFiscalCompleto1Click(Sender: TObject);
    procedure CupomFiscalResumido1Click(Sender: TObject);
    procedure CupomFiscalPrVenda1Click(Sender: TObject);
    procedure CCDCompleto1Click(Sender: TObject);
    procedure CNFDetalhado1Click(Sender: TObject);
    procedure esteConsumoMFD1Click(Sender: TObject);
    procedure LMFC1Click(Sender: TObject);
    procedure LMF1Click(Sender: TObject);
    procedure ArqMFD1Click(Sender: TObject);
    procedure abProd1Click(Sender: TObject);
    procedure Estoque1Click(Sender: TObject);
    procedure MovimentoporECF1Click(Sender: TObject);
    procedure abTcnicondicesdeProduo1Click(Sender: TObject);
    procedure DAVEmitidos1Click(Sender: TObject);
    procedure Encerrantes1Click(Sender: TObject);
    procedure ransfMesas1Click(Sender: TObject);
    procedure MesasAbertas1Click(Sender: TObject);
    procedure ManifestoFiscaldeViagem1Click(Sender: TObject);
    procedure MeiosdePgto1Click(Sender: TObject);
    procedure IdentificaodoPAFECF1Click(Sender: TObject);
    procedure VendasdoPerodo1Click(Sender: TObject);
    procedure MtodorCodigoModeloFiscalECFDaruma1Click(Sender: TObject);
    procedure eTEFTravarTecladoECFDaruma1Click(Sender: TObject);
    procedure eTEFSetarFocoECFDaruma1Click(Sender: TObject);
    procedure iEstornarPagamentoECFDaruma1Click(Sender: TObject);
    procedure iTEFImprimirRespostaECFDaruma1Click(Sender: TObject);
    procedure iTEFFecharECFDaruma1Click(Sender: TObject);
    procedure iTEFImprimirRespostaCartaoECFDaruma1Click(Sender: TObject);
    procedure eTEFEsperarArquivoECFDaruma1Click(Sender: TObject);
    procedure M2Click(Sender: TObject);
    procedure MtodorRSARetornaChavePublicaECFDaruma1Click(Sender: TObject);
    procedure otaldeISSeICMScontabilizadoltimoCFMania1Click(
      Sender: TObject);
    procedure iImprimir_CHEQUE_DarumaClick(Sender: TObject);
    procedure Mtodo2Click(Sender: TObject);
    procedure eCarregarBitmapPromocional_ECF_DarumaClick(Sender: TObject);
    procedure MtodoeMemoriaFiscalECFDaruma1Click(Sender: TObject);
    procedure M1Click(Sender: TObject);
    procedure MtodoconfModoPAFECFDaruma1Click(Sender: TObject);
    procedure MtodorGerarMFDECFDaruma1Click(Sender: TObject);
    procedure MtodorGerarMFECFDaruma1Click(Sender: TObject);
    procedure MtodorGerarTDMECFDaruma1Click(Sender: TObject);
    procedure MtodorGerarSINTEGRAECFDaruma1Click(Sender: TObject);
    procedure MtodorGerarSPEDECFDaruma1Click(Sender: TObject);
    procedure MtodorGerarNFPECFDaruma1Click(Sender: TObject);
    procedure eEjetarChequeECFDaruma1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//Declaracao da Dll Integradora DarumaFramework.dll - Módulo Fiscal

//CUPOM FISCAL
		//Abertura Cupom Fiscal
		function iCFAbrir_ECF_Daruma(pszCPF: String; pszNome: String; pszEndereco: String): Integer; StdCall; External 'DarumaFramework.dll';
		function iCFAbrirPadrao_ECF_Daruma: Integer; StdCall; External 'DarumaFramework.dll';
		//Registro de Item
		function iCFVender_ECF_Daruma(pszCargaTributaria:String; pszQuantidade:String; pszPrecoUnitario:String; pszTipoDescAcresc:String; pszValorDescAcresc:String; pszCodigoItem:String; pszUnidadeMedida:String; pszDescricaoItem:String): Integer; StdCall; External 'DarumaFramework.dll';
		function iCFVenderSemDesc_ECF_Daruma(pszCargaTributaria:String; pszQuantidade:String; pszPrecoUnitario:String; pszCodigoItem:String; pszUnidadeMedida:String; pszDescricaoItem:String): Integer; StdCall; External 'DarumaFramework.dll';
		function iCFVenderResumido_ECF_Daruma(pszCargaTributaria:String; pszPrecoUnitario:String; pszCodigoItem:String; pszDescricaoItem:String): Integer; StdCall; External 'DarumaFramework.dll';
		//Desconto ou Acréscimo em Item de Cupom Fiscal
		function iCFLancarAcrescimoItem_ECF_Daruma(pszNumItem:String; pszTipoDescAcresc:String; pszValorDescAcresc:String): Integer; StdCall; External 'DarumaFramework.dll';
		function iCFLancarDescontoItem_ECF_Daruma(pszNumItem:String; pszTipoDescAcresc:String; pszValorDescAcresc:String): Integer; StdCall; External 'DarumaFramework.dll';
		function iCFLancarAcrescimoUltimoItem_ECF_Daruma(pszTipoDescAcresc:String; pszValorDescAcresc:String): Integer; StdCall; External 'DarumaFramework.dll';
		function iCFLancarDescontoUltimoItem_ECF_Daruma(pszTipoDescAcresc: String; pszValorDescAcresc:String): Integer; StdCall; External 'DarumaFramework.dll';
		//Cancelamento Total de Item em Cupom Fiscal
		function iCFCancelarItem_ECF_Daruma(pszNumItem: String): Integer; StdCall; External 'DarumaFramework.dll';
		function iCFCancelarUltimoItem_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		//Cancelamento parcial de item em cupom fiscal
		function iCFCancelarItemParcial_ECF_Daruma(pszNumItem:String;pszQuantidade: String): Integer; StdCall; External 'DarumaFramework.dll';
		function iCFCancelarUltimoItemParcial_ECF_Daruma(pszQuantidade: String): Integer; StdCall; External 'DarumaFramework.dll';
		//Cancelamento de desconto e acrescimo em item
		function iCFCancelarDescontoItem_ECF_Daruma(pszNumItem:String): Integer; StdCall; External 'DarumaFramework.dll';
		function iCFCancelarDescontoUltimoItem_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		function iCFCancelarAcrescimoItem_ECF_Daruma(pszNumItem:string):Integer; StdCall; External 'DarumaFramework.dll';
		function iCFCancelarAcrescimoUltimoItem_ECF_Daruma():Integer; StdCall; External 'DarumaFramework.dll';
		//Totalizacao de cupom fiscal
		function iCFTotalizarCupom_ECF_Daruma(pszTipoDescAcresc:String; pszValorDescAcresc:String): Integer; StdCall; External 'DarumaFramework.dll';
		function iCFTotalizarCupomPadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		//Cancelamento de desconto e acrescimo em subtotal de cupom fiscal
		function iCFCancelarDescontoSubtotal_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		function iCFCancelarAcrescimoSubtotal_ECF(): Integer; StdCall; External 'DarumaFramework.dll';

    //Descricao do meios de pagamento de cupom fiscal
		function iCFEfetuarPagamentoPadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		function iCFEfetuarPagamentoFormatado_ECF_Daruma(pszFormaPgto:String; pszValor:String): Integer; StdCall; External 'DarumaFramework.dll';
		function iCFEfetuarPagamento_ECF_Daruma(pszFormaPgto:String;pszValor:String;pszInfoAdicional:String): Integer; StdCall; External 'DarumaFramework.dll';
		//Encerramento de cupom fiscal
		function iCFEncerrar_ECF_Daruma(pszCupomAdicional:string;pszMensagem:string):Integer; StdCall; External 'DarumaFramework.dll';
		function iCFEncerrarPadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		function iCFEncerrarConfigMsg_ECF_Daruma(pszMensagem:string): Integer; StdCall; External 'DarumaFramework.dll';
		function iCFEncerrarResumido_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		function iCFEmitirCupomAdicional_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		//Cancelamento de cupom fiscal
		function iCFCancelar_ECF_Daruma: Integer; StdCall; External 'DarumaFramework.dll';
		//Identificação Consumidor Cupom Fiscal
		function iCFIdentificarConsumidor_ECF_Daruma(pszNome:string;pszEndereco:String; pszDoc:string): Integer; StdCall; External 'DarumaFramework.dll';
		//Cupom Mania
    function rCMEfetuarCalculo_ECF_Daruma(pszISS:string;pszICMS:string): Integer; StdCall; External 'DarumaFramework.dll';
		//Estornar Meio Pagamento
		function iEstornarPagamento_ECF_Daruma(pszFormaPgtoEstornado:string;pszFormaPgtoEfetivado:string;pszValor:string;pszInfoAdicional:string): Integer; StdCall; External 'DarumaFramework.dll';


//CCD - Comprovante de Crédito e Débito
		function iCCDAbrir_ECF_Daruma(pszFormaPgto:String;pszParcelas:String;pszDocOrigem:String;pszValor:String;pszCPF:String;pszNome:String;pszEndereco:String): Integer; StdCall; External 'DarumaFramework.dll';
		function iCCDAbrirSimplificado_ECF_Daruma(pszFormaPgto:String; pszParcelas:String;pszDocOrigem:String;pszValor: String): Integer; StdCall; External 'DarumaFramework.dll';
		function iCCDAbrirPadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		function iCCDImprimirTexto_ECF_Daruma(pszTexto:string): Integer; StdCall; External 'DarumaFramework.dll';
		function iCCDImprimirArquivo_ECF_Daruma(pszArqOrigem:String): Integer; StdCall; External 'DarumaFramework.dll';
		function iCCDFechar_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		//CCD - Segunda via
		function iCCDSegundaVia_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		//Estorno CCD
		function iCCDEstornarPadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		function iCCDEstornar_ECF_Daruma(pszCOO:String;pszCPF:String; pszNome:String; pszEndereco:String): Integer; StdCall; External 'DarumaFramework.dll';
    //TEF
    function iTEF_ImprimirResposta_ECF_Daruma(szArquivo:String; bTravarTeclado:Boolean):Integer; StdCall; External 'DarumaFramework.dll';
    function iTEF_ImprimirRespostaCartao_ECF_Daruma(szArquivo:string; bTravarTeclado:Boolean; szForma:string; szValor:string):Integer; StdCall; External 'DarumaFramework.dll';
    function iTEF_Fechar_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
    function eTEF_EsperarArquivo_ECF_Daruma(szArquivo: String; iTempo:integer; bTravar:Boolean): Integer; StdCall; External 'DarumaFramework.dll';
    function eTEF_TravarTeclado_ECF_Daruma(bTravar:Boolean):Integer; StdCall; External 'DarumaFramework.dll';
    function eTEF_SetarFoco_ECF_Daruma(szNomeTela:String):Integer; StdCall; External 'DarumaFramework.dll';

// CNF - Comprovante Não Fiscal
		// Abertura de comprovante nao fiscal
		function iCNFAbrir_ECF_Daruma(pszCPF:string; pszNome:string;pszEndereco:string): Integer; StdCall; External 'DarumaFramework.dll';
		function iCNFAbrirPadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		// Recebimento de itens
		function iCNFReceber_ECF_Daruma(pszIndice:string;pszValor:string;pszTipoDescAcresc:string;pszValorDescAcresc:string): Integer; StdCall; External 'DarumaFramework.dll';
		function iCNFReceberSemDesc_ECF_Daruma(pszIndice:string;pszValor:string): Integer; StdCall; External 'DarumaFramework.dll';
		//Cancelamento de item
		function iCNFCancelarItem_ECF_Daruma(pszNumItem:string): Integer; StdCall; External 'DarumaFramework.dll';
		function iCNFCancelarUltimoItem_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		//Cancelamento de acrescimo em item
		function iCNFCancelarAcrescimoItem_ECF_Daruma(pszNumItem:string): Integer; StdCall; External 'DarumaFramework.dll';
		function iCNFCancelarAcrescimoUltimoItem_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		//Cancelamento de desconto em item
		function iCNFCancelarDescontoItem_ECF_Daruma(pszNumItem:string): Integer; StdCall; External 'DarumaFramework.dll';
		function iCNFCancelarDescontoUltimoItem_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		//Totalizacao de CNF
		function iCNFTotalizarComprovante_ECF_Daruma(pszTipoDescAcresc:string;pszValorDescAcresc:string): Integer; StdCall; External 'DarumaFramework.dll';
		function iCNFTotalizarComprovantePadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		//Cancelamento de desconto e acrescimo em subtotal de CNF
		function iCNFCancelarAcrescimoSubtotal_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		function iCNFCancelarDescontoSubtotal_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		//Descricao do meios de pagamento de CNF
		function iCNFEfetuarPagamento_ECF_Daruma(pszFormaPgto:string;pszValor:string;pszInfoAdicional:string): Integer; StdCall; External 'DarumaFramework.dll';
		function iCNFEfetuarPagamentoFormatado_ECF_Daruma(pszFormaPgto:string;pszValor:string): Integer; StdCall; External 'DarumaFramework.dll';
		function iCNFEfetuarPagamentoPadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		//Encerramento de CNF
		function iCNFEncerrar_ECF_Daruma(pszMensagem:string): Integer; StdCall; External 'DarumaFramework.dll';
		function iCNFEncerrarPadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		//Cancelamento de CNF
		function iCNFCancelar_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';

//Relatório Gerencial
		function iRGAbrir_ECF_Daruma(pszNomeRG:String): Integer; StdCall; External 'DarumaFramework.dll';
		function iRGAbrirIndice_ECF_Daruma(iIndiceRG:Integer): Integer; StdCall; External 'DarumaFramework.dll';
		function iRGAbrirPadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		function iRGImprimirTexto_ECF_Daruma(pszTexto:String): Integer; StdCall; External 'DarumaFramework.dll';
		function iRGFechar_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';

//Bilhete Passagem
		function iCFBPAbrir_ECF_Daruma(pszOrigem:string;pszDestino:string;pszUFDestino:string;pszPercurso:string;pszPrestadora:string;pszPlataforma:string;pszPoltrona:string;pszModalidadetransp:string;pszCategoriaTransp:string;pszDataEmbarque:string;pszRGPassageiro:string;pszNomePassageiro:string;pszEnderecoPassageiro:string): Integer; StdCall; External 'DarumaFramework.dll';
		function iCFBPVender_ECF_Daruma(pszAliquota:string;pszValor:string;pszTipoDescAcresc:string;pszValorDescAcresc:string;pszDescricao:string): Integer; StdCall; External 'DarumaFramework.dll';
		function confCFBPProgramarUF_ECF_Daruma(pszUF:string): Integer; StdCall; External 'DarumaFramework.dll';

//Relatórios Fiscais
		//Leitura X
		function iLeituraX_ECF_Daruma: Integer; StdCall; External 'DarumaFramework.dll';
		function rLeituraX_ECF_Daruma: Integer; StdCall; External 'DarumaFramework.dll';
		function rLeituraXCustomizada_ECF_Daruma(pszCaminho:String): Integer; StdCall; External 'DarumaFramework.dll';
		//Redução Z
		function iReducaoZ_ECF_Daruma(pszData:string; pszHora:String): Integer; StdCall; External 'DarumaFramework.dll';
		//Sangria
		function iSangriaPadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		function iSangria_ECF_Daruma(pszValor:string; pszMensagem:String): Integer; StdCall; External 'DarumaFramework.dll';
		//Suprimento
		function iSuprimentoPadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		function iSuprimento_ECF_Daruma(pszValor:string; pszMensagem:String): Integer; StdCall; External 'DarumaFramework.dll';
		//Leitura Memória Fiscal
		function iMFLerSerial_ECF_Daruma(pszInicial:string; pszFinal:string): Integer; StdCall; External 'DarumaFramework.dll';
		function iMFLer_ECF_Daruma(pszInicial:string; pszFinal:string): Integer; StdCall; External 'DarumaFramework.dll';

//Programação do ECF
		function confCadastrarPadrao_ECF_Daruma(pszCadastrar:string;pszValor:string): Integer; StdCall; External 'DarumaFramework.dll';
		function confCadastrar_ECF_Daruma(pszCadastrar:string;pszValor:string;pszSeparador:string): Integer; StdCall; External 'DarumaFramework.dll';
		function confHabilitarHorarioVerao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		function confDesabilitarHorarioVerao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		function confProgramarOperador_ECF_Daruma(pszValor:string): Integer; StdCall; External 'DarumaFramework.dll';
		function confProgramarIDLoja_ECF_Daruma(pszValor:string): Integer; StdCall; External 'DarumaFramework.dll';
		function confProgramarAvancoPapel_ECF_Daruma(pszSepEntreLinhas:string;pszSepEntreDoc:string;pszLinhasGuilhotina:string;pszGuilhotina:string;pszImpClicheAntecipada:string): Integer; StdCall; External 'DarumaFramework.dll';
		function confHabilitarModoPreVenda_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		function confDesabilitarModoPreVenda_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';

//Metodos modo PAF
    function confModoPAF_ECF_Daruma(pszAtivar:string; pszChaveRSA:string; pszArquivo:string): Integer; StdCall; External 'DarumaFramework.dll'
    function ePAFCadastrar_ECF_Daruma(pszNomeArquivo:string; pszChave:string; pszNumSerieECF: string; pszGT:string): Integer; StdCall; External 'DarumaFramework.dll';
    function ePAFAtualizarGT_ECF_Daruma(pszNomeArquivo:string; pszChave:string; pszNumSerieECF: string; pszGT:string): Integer; StdCall; External 'DarumaFramework.dll';
    function ePAFValidarDados_ECF_Daruma(pszNomeArquivo:string; pszChave:string; pszNumSerieECF: string; pszGT:string): Integer; StdCall; External 'DarumaFramework.dll';

//Retornos e Status do ECF
		//Retornos
		function rRetornarInformacaoSeparador_ECF_Daruma(pszIndice:string; pszVSignificativo:string; pszRetornar:string): Integer; StdCall; External 'DarumaFramework.dll';
    function rRetornarInformacao_ECF_Daruma(pszIndice:string;pszRetornar:string): Integer; StdCall; External 'DarumaFramework.dll';
		function rLerAliquotas_ECF_Daruma(cAliquotas:string): Integer; StdCall; External 'DarumaFramework.dll';
		function rLerMeiosPagto_ECF_Daruma(pszRelatorios:string): Integer; StdCall; External 'DarumaFramework.dll';
		function rLerRG_ECF_Daruma(pszRelatorios:string): Integer; StdCall; External 'DarumaFramework.dll';
 		function rLerCNF_ECF_Daruma(pszRelatorios:string): Integer; StdCall; External 'DarumaFramework.dll';
		function rLerDecimais_ECF_Daruma(pszDecimalQtde:string;pszDecimalValor:string;var piDecimalQtde:Integer; var piDecimalValor:Integer): Integer; StdCall; External 'DarumaFramework.dll';
		function rLerDecimaisInt_ECF_Daruma(piDecimalQtde:integer;piDecimalValor:integer): Integer; StdCall; External 'DarumaFramework.dll';
		function LerDecimaisStr_ECF_Daruma(pszDecimalQtde:string;pszDecimalValor:string): Integer; StdCall; External 'DarumaFramework.dll';
		function rDataHoraImpressora_ECF_Daruma(pszData:string;pszHora:string): Integer; StdCall; External 'DarumaFramework.dll';
		function rVerificarImpressoraLigada_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		function rVerificarReducaoZ_ECF_Daruma(zPendente:string): Integer; StdCall; External 'DarumaFramework.dll';
		function rRetornarDadosReducaoZ_ECF_Daruma(pszDados:string): Integer; StdCall; External 'DarumaFramework.dll';
    function rTipoUltimoDocumentoInt_ECF_Daruma(pszRetorno:string): Integer; StdCall; External 'DarumaFramework.dll';
    function rTipoUltimoDocumentoStr_ECF_Daruma(pszRetorno:string): Integer; StdCall; External 'DarumaFramework.dll';
    function rUltimoCMDEnviado_ECF_Daruma(pszUltimoCMD:string): Integer; StdCall; External 'DarumaFramework.dll';
    function rMinasLegal_ECF_Daruma(pszRetorno:string): Integer; StdCall; External 'DarumaFramework.dll';
    function rRetornarVendaBruta_ECF_Daruma(pszVendaBruta:string): Integer; StdCall; External 'DarumaFramework.dll';
    function rRetornarVendaLiquida_ECF_Daruma(pszVendaLiquida:string): Integer; StdCall; External 'DarumaFramework.dll';
    function rCompararDataHora_ECF_Daruma(var piDiferenca:integer): Integer; StdCall; External 'DarumaFramework.dll';
    function rInfoCNF_ECF_Daruma(pszRetorno:string): Integer; StdCall; External 'DarumaFramework.dll';

		//Status
		function rStatusImpressora_ECF_Daruma(pszStatus:string): Integer; StdCall; External 'DarumaFramework.dll';
		function rInfoEstendida_ECF_Daruma(int:integer; char:string): Integer; StdCall; External 'DarumaFramework.dll';
    function rInfoEstentida1_ECF_Daruma(cInfoEx:string): Integer; StdCall; External 'DarumaFramework.dll';
		function rInfoEstentida2_ECF_Daruma(cInfoEx:string): Integer; StdCall; External 'DarumaFramework.dll';
		function rInfoEstentida3_ECF_Daruma(cInfoEx:string): Integer; StdCall; External 'DarumaFramework.dll';
		function rInfoEstentida4_ECF_Daruma(cInfoEx:string): Integer; StdCall; External 'DarumaFramework.dll';
		function rInfoEstentida5_ECF_Daruma(cInfoEx:string): Integer; StdCall; External 'DarumaFramework.dll';
		function rStatusUltimoCmd_ECF_Daruma(pszErro:string;pszAviso:string;var piErro:integer;var piAviso:integer): Integer; StdCall; External 'DarumaFramework.dll';
		function rStatusUltimoCmdInt_ECF_Daruma(var piErro:integer;var piAviso:integer): Integer; StdCall; External 'DarumaFramework.dll';
		function rStatusUltimoCmdStr_ECF_Daruma(cErro:string;cAviso:string): Integer; StdCall; External 'DarumaFramework.dll';
    function rStatusGaveta_ECF_Daruma(var piStatusGaveta:Integer): Integer; StdCall; External 'DarumaFramework.dll';
    function rConsultaStatusImpressoraInt_ECF_Daruma(iIndice:Integer; var iRetorno:Integer):Integer; StdCall; External 'DarumaFramework.dll';
    function rConsultaStatusImpressoraStr_ECF_Daruma(iIndice:Integer; szStatus:String):Integer; StdCall; External 'DarumaFramework.dll';
    function rStatusImpressoraBinario_ECF_Daruma(pszStatus:String):Integer; StdCall; External 'DarumaFramework.dll';

		//Status Cupom Fiscal
		function rCFVerificarStatus_ECF_Daruma(pszStatus:string; var piStatus:Integer): Integer; StdCall; External 'DarumaFrameWork.dll';
		function rCFVerificarStatusInt_ECF_Daruma(var iStatusCF:Integer): Integer; StdCall; External 'DarumaFrameWork.dll';
		function rCFVerificarStatusStr_ECF_Daruma(cStatusCF:string): Integer; StdCall; External 'DarumaFrameWork.dll';
		//Saldo a Pagar
		function rCFSaldoAPagar_ECF_Daruma(pszValor:string):Integer; StdCall; External 'DarumaFramework.dll';
		//Subtotal Cupom Fiscal
		function rCFSubTotal_ECF_Daruma(pszValor:string):Integer; StdCall; External 'DarumaFramework.dll';

//Gaveta, Autentica e Outros
		//Gaveta
		function eAbrirGaveta_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		//Guilhotina
		function eAcionarGuilhotina_ECF_Daruma(pszTipoCorte:string): Integer; StdCall; External 'DarumaFramework.dll';
    //Relatorio de configuração
    function iRelatorioConfiguracao_ECF_Daruma: Integer; StdCall; External 'DarumaFramework.dll';


//Cheque
		function eEjetarCheque_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
    function confCorrigirGeometria_CHEQUE_Daruma(pszNumeroBanco: string; pszDistValorNumerico:string; pszColunaValorNumerico: string; pszDistPrimExtenso: string; pszColunaPrimExtenso:string; pszDistSegExtenso: string; pszColunaSegExtenso: string; pszDistFavorecido: string; pszColunaFavorecido: string; pszDistCidade: string; pszColunaCidade: string; pszColunaDia: string; pszColunaMes: string; pszColunaAno: string; pszLinhaAutenticacao: string; pszColunaAutenticacao: string): Integer; StdCall; External 'DarumaFramework.dll';
    function iAtributo_CHEQUE_Daruma(pszModo:string): Integer; StdCall; External 'DarumaFramework.dll';
    function iAutenticar_CHEQUE_Daruma(pszPosicao: string; pszTexto:string): Integer; StdCall; External 'DarumaFramework.dll';
    function iImprimir_CHEQUE_Daruma(pszNumeroBanco:string; pszCidade:string; pszData:string; pszNomeFavorecido:string; pszTextoFrente:string; pszValorCheque:string): Integer; StdCall; External 'DarumaFramework.dll';
    function iImprimirVerso_CHEQUE_Daruma(pszTexto:string): Integer; StdCall; External 'DarumaFramework.dll';
    function  iImprimirVertical_CHEQUE_Daruma(pszNumeroBanco:string; pszCidade:string; pszData:string; pszNomeFavorecido:string; pszTextoFrente:string; pszValorCheque:string): Integer; StdCall; External 'DarumaFramework.dll';

//Código de Barras
		function iImprimirCodigoBarras_ECF_Daruma(pszTipo:string; pszLargura:string; pszAltura:string; pszImprTexto:string; pszCodigo:string; pszOrientacao:string; pszTextoLivre:string): Integer; StdCall; External 'DarumaFramework.dll';

//Registry
		//Registry Sintegra
		function regSintegra_ECF_Daruma(pszChave:string;pszValor:string):Integer; StdCall; External 'DarumaFramework.dll';
		//Registry Gerais
		function regAlterarValor_Daruma(pszPathChave:string;pszValor:string):Integer; StdCall; External 'DarumaFramework.dll';
		function regRetornaValorChave_DarumaFramework(pszProduto:string;pszChave:string;pszValor:string):Integer; StdCall; External 'DarumaFramework.dll';
		function regRetornaValorChave(pszProduto:string;pszChave:string;pszValor:string):Integer; StdCall; External 'DarumaFramework.dll';

//Geração Arquivos
		//Espelho MFD PAF-ECF
		function rGerarEspelhoMFD_ECF_Daruma(pszTipo:string; pszInicial:string;pszFinal:string): Integer; StdCall; External 'DarumaFramework.dll';
		//Relatório PAF-ECF ON-line
		function rGerarRelatorio_ECF_Daruma(szRelatorio:string; szTipo:string; szInicial:string; szFinal:string): Integer; StdCall; External 'DarumaFramework.dll';
    function rGerarMFD_ECF_Daruma(szTipo:string; szInicial:string; szFinal:string): Integer; StdCall; External 'DarumaFramework.dll';
    function rGerarMF_ECF_Daruma(szTipo:string; szInicial:string; szFinal:string): Integer; StdCall; External 'DarumaFramework.dll';
    function rGerarTDM_ECF_Daruma(szTipo:string; szInicial:string; szFinal:string): Integer; StdCall; External 'DarumaFramework.dll';
    function rGerarSPED_ECF_Daruma(szTipo:string; szInicial:string; szFinal:string): Integer; StdCall; External 'DarumaFramework.dll';
    function rGerarSINTEGRA_ECF_Daruma(szTipo:string; szInicial:string; szFinal:string): Integer; StdCall; External 'DarumaFramework.dll';
    function rGerarNFP_ECF_Daruma(szTipo:string; szInicial:string; szFinal:string): Integer; StdCall; External 'DarumaFramework.dll';
    function rGerarRelatorioBaixoNivel_ECF_Daruma(szRegistro:string; szTipo:string; szInicial:string; szFinal:string): Integer; StdCall; External 'DarumaFramework.dll';

		//Relatório PAF-ECF Off-line
		function rGerarRelatorioOffline_ECF_Daruma(szRelatorio:string; szTipo:string; szInicial:string; szFinal:string; szArquivo_MF:string; szArquivo_MFD:string; szArquivo_INF:string): Integer; StdCall; External 'DarumaFramework.dll';

    function rGerarRelatorioBaixoNivelOffLine_ECF_Daruma(szRegistro:string; szTipo:string; szInicial:string; szFinal:string; szArquivo_MFD:string; szArquivo_INF:string): Integer; StdCall; External 'DarumaFramework.dll';
		//Download Memórias
		function rEfetuarDownloadMFD_ECF_Daruma(pszTipo:string;pszInicial:string;pszFinal:string;pszNomeArquivo:string): Integer; StdCall; External 'DarumaFramework.dll';
		function rEfetuarDownloadMF_ECF_Daruma(pszNomeArquivo:string): Integer; StdCall; External 'DarumaFramework.dll';
		function rEfetuarDownloadTDM_ECF_Daruma(pszTipo:string; pszInicial:string;pszFinal:string;pszNomeArquivo:string): Integer; StdCall; External 'DarumaFramework.dll';


//PAF-ECF
		//RSA - EAD PAF-ECF
		function rAssinarRSA_ECF_Daruma(pszPathArquivo:string;pszChavePrivada:string;pszAssinaturaGerada:string): Integer; StdCall; External 'DarumaFramework.dll';
    function rRSAChavePublica_ECF_Daruma(pszPathArquivo:string;pszChavePublica:string;pszExpoente:string): Integer; StdCall; External 'DarumaFramework.dll';
    function eRSAAssinarArquivo_ECF_Daruma(pszPathArquivo:string;pszChavePublica:string): Integer; StdCall; External 'DarumaFramework.dll';

		//MD5
		function rCalcularMD5_ECF_Daruma(pszPathArquivo:string;pszMD5GeradoHex:string;pszMD5GeradoAscii:string): Integer; StdCall; External 'DarumaFramework.dll';
		function rRetornarNumeroSerieCodificado_ECF_Daruma(pszSerialCriptografado:string): Integer; StdCall; External 'DarumaFramework.dll';
		function rVerificarNumeroSerieCodificado_ECF_Daruma(pszSerialCriptografado:string): Integer; StdCall; External 'DarumaFramework.dll';
		function rRetornarGTCodificado_ECF_Daruma(pszGTCodificado:string): Integer; StdCall; External 'DarumaFramework.dll';
		function rVerificarGTCodificado_ECF_Daruma(pszGTCodificado:string): Integer; StdCall; External 'DarumaFramework.dll';
    function rCodigoModeloFiscal_ECF_Daruma(szCodModelo:string): Integer; StdCall; External 'DarumaFramework.dll';

//MENU-FISCAL

//ESPECIAIS
		function eAguardarCompactacao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		function eBuscarPorta_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		function eBuscarPortaVelocidade_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		function eEnviarComando_ECF_Daruma(cComando:string;var intiTamanhoComando:integer; var intiType:integer): Integer; StdCall; External 'DarumaFramework.dll';
		function eRetornarAviso_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		function eRetornarErro_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		function eAguardarRecepcao_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		function eAuditar_Daruma(cAuditoria:string;var intiFlag:integer): Integer; StdCall; External 'DarumaFramework.dll';
		function eCancelaComunicacao_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		function eDefinirProduto_Daruma(pszProduto:string): Integer; StdCall; External 'DarumaFramework.dll';
		function eDefinirModoRegistro_Daruma(intiTipo:integer): Integer; StdCall; External 'DarumaFramework.dll';
		function eVerificarVersaoDLL_Daruma(pszRet:string): Integer; StdCall; External 'DarumaFramework.dll';
		function eVerificarVersaoDLL(pszRet:string): Integer; StdCall; External 'DarumaFramework.dll';
    function eInterpretarErro_ECF_Daruma(iIndice:Integer; pszRetorno:string): Integer; StdCall; External 'DarumaFramework.dll';
    function eInterpretarAviso_ECF_Daruma(iIndice:Integer; pszRetorno:string): Integer; StdCall; External 'DarumaFramework.dll';
    function eInterpretarRetorno_ECF_Daruma(iIndice:Integer; pszRetorno:string): Integer; StdCall; External 'DarumaFramework.dll';
    function eCarregarBitmapPromocional_ECF_Daruma(pszPathLogotipo:string; pszNumBitmap:string; pszOrientacao:string):Integer; StdCall; External 'DarumaFramework.dll';
    function eMemoriaFiscal_ECF_Daruma(pszInicial:string; pszFinal:string; pszCompleta: Boolean; pszTipo:string):Integer; StdCall; External 'DarumaFramework.dll';
    function eRetornarPortasCOM_ECF_Daruma(pszCOM:string): Integer; StdCall; External 'DarumaFramework.dll';
    function eRetornarAvisoErroUltimoCMD_ECF_Daruma(pszAviso:string; pszErro:string): Integer; StdCall; External 'DarumaFramework.dll';

    //Comandos modo Generico
    function eAbrirSerial_Daruma(pszPorta:string; pszVelocidade:string):Integer; StdCall; External 'DarumaFramework.dll';
    function eFecharSerial_Daruma():Integer; StdCall; External 'DarumaFramework.dll';
    function tEnviarDados_Daruma(pszBytes:string; iTamBytes:Integer):Integer; StdCall; External 'DarumaFramework.dll';
    function rReceberDados_Daruma(pszBufferEntrada:string):Integer; StdCall; External 'DarumaFramework.dll';



  var
  FR_MenuImpressoraFiscal_Principal: TFR_MenuImpressoraFiscal_Principal;
  // Variável geral para tratar o Retorno da Função, Número Erro e Número do Aviso
  Int_Retorno: integer;
  Int_NumErro: integer;
  Int_NumAviso: integer;
  Str_Msg_Retorno_Metodo, Str_Msg_NumErro, Str_Msg_NumAviso, Str_Erro, Str_Aviso, Str_Msg_RetMetodo : string;

implementation

uses Daruma_Framework_FISCAL_iCFAbrir_ECF_Daruma,
  Daruma_Framework_FISCAL_iCFVender_ECF_Daruma,
  Daruma_Framework_FISCAL_iCFVenderSemDesc_ECF_Daruma,
  Daruma_Framework_FISCAL_iCFVenderResumido_ECF_Daruma,
  Daruma_Framework_FISCAL_iCFLancarAcrescimoItem_ECF_Daruma,
  Daruma_Framework_FISCAL_iCFLancarDescontoItem_ECF_Daruma,
  Daruma_Framework_FISCAL_iCFLancarAcrescimoUltimoItem_ECF_Daruma,
  Daruma_Framework_FISCAL_iCFLancarDescontoUltimoItem_ECF_Daruma,
  Daruma_Framework_FISCAL_iCFCancelarItem_ECF_Daruma,
  Daruma_Framework_FISCAL_iCFCancelarItemParcial_ECF_Daruma,
  Daruma_Framework_FISCAL_iCFCancelarUltimoItemParcial_ECF_Daruma,
  Daruma_Framework_FISCAL_iCFEfetuarPagamentoFormatado_ECF_Daruma,
  Daruma_Framework_FISCAL_iCFEfetuarPagamento_ECF_Daruma,
  Daruma_Framework_FISCAL_iCFEncerrarConfigMsg_ECF_Daruma,
  Daruma_Framework_FISCAL_iCFIdentificarConsumidor_ECF_Daruma,
  Daruma_Framework_FISCAL_rLeituraXCustomizada_ECF_Daruma,
  Daruma_Framework_FISCAL_iSangria_ECF_Daruma,
  Daruma_Framework_FISCAL_iSuprimento_ECF_Daruma,
  Daruma_Framework_FISCAL_iMFLer_ECF_Daruma,
  Daruma_Framework_FISCAL_iMFLerSerial_ECF_Daruma,
  Daruma_Framework_FISCAL_iRGAbrir_ECF_Daruma,
  Daruma_Framework_FISCAL_iRGAbrirIndice_ECF_Daruma,
  Daruma_Framework_FISCAL_iRGImprimirTexto_ECF_Daruma,
  Daruma_Framework_FISCAL_iCCDAbrir_ECF_Daruma,
  Daruma_Framework_FISCAL_iCCDAbrirSimplificado_ECF_Daruma,
  Daruma_Framework_FISCAL_iCCDImprimirTexto_ECF_Daruma,
  Daruma_Framework_FISCAL_iCCDEstornar_ECF_Daruma,
  Daruma_Framework_FISCAL_RetornoECF,
  Daruma_Framework_FISCAL_iCNFAbrir_ECF_Daruma,
  Daruma_Framework_FISCAL_iCNFReceberSemDesc_ECF_Daruma,
  Daruma_Framework_FISCAL_iCNFCancelarItem_ECF_Daruma,
  Daruma_Framework_FISCAL_iCNFCancelarAcrescimoItem_ECF_Daruma,
  Daruma_Framework_FISCAL_iCNFTotalizarComprovante_ECF_Daruma,
  Daruma_Framework_FISCAL_iCNFEfetuarPagamento_ECF_Daruma,
  Daruma_Framework_FISCAL_iCNFEfetuarPagamentoFormatado_ECF_Daruma,
  Daruma_Framework_FISCAL_iCNFEncerrar_ECF_Daruma,
  Daruma_Framework_FISCAL_iCFBPAbrir_ECF_Daruma,
  Daruma_Framework_FISCAL_confCFBPProgramarUF_ECF_Daruma,
  Daruma_Framework_FISCAL_iCFBPVender_ECF_Daruma,
  Daruma_Framework_FISCAL_confCadastrarPadrao_ECF_Daruma,
  Daruma_Framework_FISCAL_rGerarEspelhoMFD_ECF_Daruma,
  Daruma_Framework_FISCAL_iCFEncerrar_ECF_Daruma,
  Daruma_Framework_FISCAL_rStatusImpressora_ECF_Daruma,
  Daruma_Framework_FISCAL_confCadastrar_ECF_Daruma,
  Daruma_Framework_FISCAL_confProgramarAvancoPapel_ECF_Daruma,
  Daruma_Framework_FISCAL_confProgramarOperador_ECF_Daruma,
  Daruma_Framework_FISCAL_rGerarRelatorio_ECF_Daruma,
  Daruma_Framework_FISCAL_rGerarRelatorioOffline_ECF_Daruma,
  Daruma_Framework_FISCAL_rRetornarInformacao_ECF_Daruma,
  Daruma_Framework_FISCAL_eAcionarGuilhotina_ECF_Daruma,
  Daruma_Framework_FISCAL_iImprimirCodigoBarras_ECF_Daruma,
	Daruma_Framework_FISCAL_rLerAliquotas_ECF_Daruma,
  Daruma_Framework_FISCAL_rLerMeiosPagto_ECF_Daruma,
  Daruma_Framework_FISCAL_rLerRG_ECF_Daruma,
  Daruma_Framework_FISCAL_rAssinarRSA_ECF_Daruma,
  Daruma_Framework_FISCAL_rCalcularMD5_ECF_Daruma,
  Daruma_Framework_FISCAL_confProgramarIDLoja_ECF_Daruma,
  Daruma_Framework_FISCAL_rRetornarGTCodificado_ECF_Daruma,
  Daruma_Framework_FISCAL_rVerificarGTCodificado_ECF_Daruma,
  Daruma_Framework_FISCAL_rRetornarNumeroSerieCodificado_ECF_Daruma,
  Daruma_Framework_FISCAL_rVerificarNumeroSerieCodificado_ECF_Daruma,
  Daruma_Framework_FISCAL_eDefinirProduto_Daruma,
  Daruma_Framework_FISCAL_eDefinirModoRegistro_Daruma,
  Daruma_Framework_FISCAL_TestedeVendadeItensSemPararBuferizando,
  Daruma_Framework_FISCAL_TesteConsumoMFD,
  Daruma_Framework_FISCAL_MENUFISCAL_LMFC,
  Daruma_Framework_FISCAL_MENUFISCAL_LMFS,
  Daruma_Framework_FISCAL_MENUFISCAL_ArqMFD,
  Daruma_Framework_FISCAL_MENUFISCAL_Info,
  Daruma_Framework_FISCAL_iEstornarPagamento_ECF_Daruma,
  Daruma_Framework_FISCAL_iTEF_ImprimirResposta_ECF_Daruma,
  Daruma_Framework_FISCAL_iTEF_ImprimirRespostaCartao_ECF_Daruma,
  Daruma_Framework_FISCAL_eTEF_EsperarArquivo_ECF_Daruma,
  Daruma_Framework_FISCAL_eRSAAssinarArquivo,
  Daruma_Framework_FISCAL_rRSARetornaChavePublica,
  Daruma_Framework_FS2100_iChequeImprimir_FS2100_Daruma,
  Daruma_Framework_FISCAL_eCarregarBitmapPromocional,
  Daruma_Framework_FISCAL_eMemoriaFiscal_ECF_Daruma, FR_CominuicacaoSerial,
  Daruma_Framework_ECF_iCNFReceber_ECF_Daruma,
  Daruma_Framework_ECF_iCFTotalizarCupom_ECF_Daruma,
  Daruma_Framework_FISCAL_rGerarMFD_ECF_Daruma,
  Daruma_Framework_FISCAL_rGerarMF_ECF_Daruma,
  Daruma_Framework_FISCAL_rGerarTDM_ECF_Daruma,
  Daruma_Framework_FISCAL_rGerarSINTEGRA_ECF_Daruma,
  Daruma_Framework_FISCAL_rGerarSPED_ECF_Daruma,
  Daruma_Framework_FISCAL_rGerarNFP_ECF_Daruma;

{$R *.dfm}

//Funcao que analisa o retorno da impressora
procedure TFR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(iRetorno:integer);
begin
   //Variaveis devem ser inicializadas
   Int_NumErro:= 0;
	 Int_NumAviso:= 0;
   Str_Msg_NumErro:=StringOFChar(' ',300);
   Str_Msg_NumAviso:=StringOFChar(' ',300);
   Str_Msg_RetMetodo:=StringOFChar(' ',300);

// Retorna a mensagem referente ao erro e aviso do ultimo comando enviado
   Int_Retorno:=eRetornarAvisoErroUltimoCMD_ECF_Daruma(Str_Msg_NumAviso, Str_Msg_NumErro);

// Retorno do método
   Int_Retorno:=eInterpretarRetorno_ECF_Daruma(iRetorno, Str_Msg_RetMetodo);

  Str_Erro:=Str_Msg_NumErro;
  Str_Aviso:=Str_Msg_NumAviso;
  Str_Msg_Retorno_Metodo:=Str_Msg_RetMetodo;

   Application.MessageBox( Pchar('Retorno do Método = ' + pchar(Str_Msg_Retorno_Metodo) + #13 +
                                 'Número Erro = ' + pchar(Trim(Str_Erro)) +  #13 +
                                 'Número Aviso = ' + pchar(Trim(Str_Aviso))), 'DarumaFramework Retorno do Método', mb_ok);

end;

procedure TFR_MenuImpressoraFiscal_Principal.BT_FecharClick(
  Sender: TObject);
begin
Close();
end;

procedure TFR_MenuImpressoraFiscal_Principal.FormShow(Sender: TObject);
begin
    Int_Retorno:= rVerificarImpressoraLigada_ECF_Daruma();
    If Int_Retorno <> 1 Then
    begin

       If Int_Retorno = 1 Then
       begin
         ShowMessage('Impressora Ligada')
         end
       Else
         ShowMessage('Impressora Desligada');
    end;
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCFAbrirPadraoECFDaruma1Click(
  Sender: TObject);
begin
   Int_Retorno:= iCFAbrirPadrao_ECF_Daruma();
   DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCFCancelarECFDaruma1Click(
  Sender: TObject);
begin
   Int_Retorno:= iCFCancelar_ECF_Daruma();
   DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCFAbrirECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_iCFAbrir_ECF_Daruma.Show;
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCFVenderECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_iCFVender_ECF_Daruma.Show;
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCFVenderSemDescECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_iCFVenderSemDesc_ECF_Daruma.Show;
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCFVenderResumidoECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_iCFVenderResumido_ECF_Daruma.Show;
end;

procedure TFR_MenuImpressoraFiscal_Principal.iCFLancarAcrescimoItemECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_iCFLancarAcrescimoItem_ECF_Daruma.Show;
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCFLancarDescontoItemECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_iCFLancarDescontoItem_ECF_Daruma.Show;
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCFLancarAcrescimoUltimoItemECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_iCFLancarAcrescimoUltimoItem_ECF_Daruma.Show;
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCFLancarDescontoUltimoItemECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_iCFLancarDescontoUltimoItem_ECF_Daruma.Show;
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCFCancelarItemECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_iCFCancelarItem_ECF_Daruma.Show;
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCFCancelarUltimoItemECFDaruma1Click(
  Sender: TObject);
begin
   Int_Retorno:= iCFCancelarUltimoItem_ECF_Daruma();
   DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCFCancelarItemParcialECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_iCFCancelarItemParcial_ECF_Daruma.Show;
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCFCancelarUltimoItemParcialECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_iCFCancelarUltimoItemParcial_ECF_Daruma.Show;
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCFCancelarDescontoUltimoItemECFDaruma1Click(
  Sender: TObject);
begin
   Int_Retorno:= iCFCancelarDescontoUltimoItem_ECF_Daruma();
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCFCancelarDescontoItemECFDaruma1Click(
  Sender: TObject);
begin
 //  FR_FISCAL_iCFCancelarDescontoItem_ECF_Daruma.Show;
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCFTotalizarCupomPadraoECFDaruma1Click(
  Sender: TObject);
begin
   Int_Retorno:= iCFTotalizarCupomPadrao_ECF_Daruma();
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCFTotalizarCupomECFDaruma1Click(
  Sender: TObject);
begin
  FR_FISCAL_iCFTotalizarCupom.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCFCancelarDescontoSubtotalECFDaruma1Click(
  Sender: TObject);
begin
   Int_Retorno:= iCFCancelarDescontoSubtotal_ECF_Daruma();
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCFCancelarAcrescimoSubtotalECFDaruma1Click(
  Sender: TObject);
begin
   Int_Retorno:= iCFCancelarAcrescimoSubtotal_ECF();
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCFEfetuarPagamentoPadraoECFDaruma1Click(
  Sender: TObject);
begin
   Int_Retorno:= iCFEfetuarPagamentoPadrao_ECF_Daruma();
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCFEfetuarPagamentoFormatadoECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_iCFEfetuarPagamentoFormatado_ECF_Daruma.show;
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCFEfetuarPagamentoECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_iCFEfetuarPagamento_ECF_Daruma.show;
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCFEncerrarPadraoECFDaruma1Click(
  Sender: TObject);
begin
   Int_Retorno:= iCFEncerrarPadrao_ECF_Daruma();
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCFEncerrarResumidoECFDaruma1Click(
  Sender: TObject);
begin
   Int_Retorno:= iCFEncerrarResumido_ECF_Daruma();
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCFEmitirCupomAdicionalECFDaruma1Click(
  Sender: TObject);
begin
   Int_Retorno:= iCFEmitirCupomAdicional_ECF_Daruma();
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCFEncerrarConfigMsgECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_iCFEncerrarConfigMsg_ECF_Daruma.show;
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCFIdentificarConsumidorECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_iCFIdentificarConsumidor_ECF_Daruma.Show;
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiLeituraXECFDaruma1Click(
  Sender: TObject);

begin

   Int_Retorno:=  iLeituraX_ECF_Daruma();
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
      end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodorLeituraXECFDaruma1Click(
  Sender: TObject);
begin
   Int_Retorno:= rLeituraX_ECF_Daruma();
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodorLeituraXCustomizadaECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_rLeituraXCustomizada_ECF_Daruma.Show;
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiReducaoZECFDaruma1Click(
  Sender: TObject);
begin
   Int_Retorno:= iReducaoZ_ECF_Daruma(' ',' ');
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiSangriaPadraoECFDaruma1Click(
  Sender: TObject);
begin
   Int_Retorno:= iSangriaPadrao_ECF_Daruma();
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiSangriaECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_iSangria_ECF_Daruma.Show;
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiSuprimentoPadraoECFDaruma1Click(
  Sender: TObject);
begin
   Int_Retorno:= iSuprimentoPadrao_ECF_Daruma();
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiSuprimentoECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_iSuprimento_ECF_Daruma.Show;
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiMFLerECFDaruma1Click(
  Sender: TObject);
begin
  FR_FISCAL_iMFLer_ECF_Daruma.show;
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiMFLerSerialECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_iMFLerSerial_ECF_Daruma.Show;
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiRGAbrirECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_iRGAbrir_ECF_Daruma.show;
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiRGAbrirIndiceECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_iRGAbrirIndice_ECF_Daruma.show;
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiRGAbrirPadraoECFDaruma1Click(
  Sender: TObject);
begin
   Int_Retorno:= iRGAbrirPadrao_ECF_Daruma();
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiRGFecharECFDaruma1Click(
  Sender: TObject);
begin
   Int_Retorno:= iRGFechar_ECF_Daruma();
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiRGImprimirTextoECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_iRGImprimirTexto_ECF_Daruma.show;
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCCDAbrirECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_iCCDAbrir_ECF_Daruma.show;
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCCDAbrirSimplificadoECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_iCCDAbrirSimplificado_ECF_Daruma.show;
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCCDAbrirPadraoECFDaruma1Click(
  Sender: TObject);
begin
   Int_Retorno:= iCCDAbrirPadrao_ECF_Daruma();
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCCDImprimirTextoECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_iCCDImprimirTexto_ECF_Daruma.Show;
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCCDFecharECFDaruma1Click(
  Sender: TObject);
begin
   Int_Retorno:= iCCDFechar_ECF_Daruma();
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCCDEstornarPadraoECFDaruma1Click(
  Sender: TObject);
begin
   Int_Retorno:= iCCDEstornarPadrao_ECF_Daruma();
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCCDEstornarECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_iCCDEstornar_ECF_Daruma.show;
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodosdeRetornos1Click(
  Sender: TObject);
begin
   FR_FISCAL_RetornoECF.show;
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodosProgramaoeConfig1Click(
  Sender: TObject);
begin
   Int_Retorno:= regAlterarValor_Daruma('ECF\Auditoria', '0');

   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCNFAbrirPadraoECFDaruma1Click(
  Sender: TObject);
begin
   Int_Retorno:= iCNFAbrirPadrao_ECF_Daruma();
   DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCNFAbrirECFDaruma1Click(
  Sender: TObject);
begin
 FR_FISCAL_iCNFAbrir_ECF_Daruma.Show;
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCNFCancelarECFDaruma1Click(
  Sender: TObject);
begin
   Int_Retorno:= iCNFCancelar_ECF_Daruma();
   DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCNFReceberSemDescECFDaruma1Click(
  Sender: TObject);
begin
FR_FISCAL_iCNFReceberSemDesc_ECF_Daruma.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCNFCancelarUltimoItemECFDaruma1Click(
  Sender: TObject);
begin
   Int_Retorno:= iCNFCancelarUltimoItem_ECF_Daruma();
   DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCNFCancelarAcrescimoItemECFDaruma1Click(
  Sender: TObject);
begin
FR_FISCAL_iCNFCancelarAcrescimoItem_ECF_Daruma.Show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCNFCancelarAcrescimoUltimoItemECFDaruma1Click(
  Sender: TObject);
begin
 Int_Retorno:= iCNFCancelarAcrescimoUltimoItem_ECF_Daruma();
 DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCNFCancelarDescontoUltimoItemECFDaruma1Click(
  Sender: TObject);
begin
  Int_Retorno:= iCNFCancelarDescontoUltimoItem_ECF_Daruma();
  DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCNFEncerrarPadraoECFDaruma1Click(
  Sender: TObject);
begin
   Int_Retorno:= iCNFEncerrarPadrao_ECF_Daruma();
   DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.Mto2Click(Sender: TObject);
begin
  Int_Retorno:= iCNFEfetuarPagamentoPadrao_ECF_Daruma();
  DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCNFCancelarAcrescimoSubtotalECFDaruma1Click(
  Sender: TObject);
begin
   Int_Retorno:= iCNFCancelarAcrescimoSubtotal_ECF_Daruma();
   DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCNFCancelarDescontoSubtotalECFDaruma1Click(
  Sender: TObject);
begin
   Int_Retorno:= iCNFCancelarDescontoSubtotal_ECF_Daruma();
   DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCNFTotalizarComprovantePadraoECFDaruma1Click(
  Sender: TObject);
begin
   Int_Retorno:= iCNFTotalizarComprovantePadrao_ECF_Daruma();
   DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCNFTotalizarComprovanteECFDaruma1Click(
  Sender: TObject);
begin
  FR_FISCAL_iCNFTotalizarComprovante_ECF_Daruma.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCNFEfetuarPagamentoECFDaruma1Click(
  Sender: TObject);
begin
  FR_FISCAL_iCNFEfetuarPagamento_ECF_Daruma.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCNFEfetuarPagamentoFormatadoECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_iCNFEfetuarPagamentoFormatado_ECF_Daruma.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCNFEncerrarECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_iCNFEncerrar_ECF_Daruma.Show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCFBPAbrirECFDaruma1Click(
  Sender: TObject);
begin
FR_FISCAL_iCFBPAbrir_ECF_Daruma.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoconfCFBPProgramarUFECFDaruma1Click(
  Sender: TObject);
begin
  FR_FISCAL_confCFBPProgramarUF_ECF_Daruma.show;
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCFBPVenderECFDaruma1Click(
  Sender: TObject);
begin
FR_FISCAL_iCFBPVender_ECF_Daruma.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoconfCadastrarPadraoECFDaruma1Click(
  Sender: TObject);
begin
    FR_FISCAL_confCadastrarPadrao_ECF_Daruma.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.EspelhoMFD1Click(
  Sender: TObject);
begin
   FR_FISCAL_rGerarEspelhoMFD_ECF_Daruma.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiCFEncerrarECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_iCFEncerrar_ECF_Daruma.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.Habilitar1Click(
  Sender: TObject);
begin
   Int_Retorno:= confHabilitarHorarioVerao_ECF_Daruma();
   DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.Desabilitar1Click(
  Sender: TObject);
begin
   Int_Retorno:= confDesabilitarHorarioVerao_ECF_Daruma();
   DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.Habilitar2Click(
  Sender: TObject);
begin
   Int_Retorno:= confHabilitarModoPreVenda_ECF_Daruma();
   DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.Desabilitar2Click(
  Sender: TObject);
begin
   Int_Retorno:= confDesabilitarModoPreVenda_ECF_Daruma();
   DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodorStatusImpressoraECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_rStatusImpressora_ECF_Daruma.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoconfCadastrarECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_confCadastrar_ECF_Daruma.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.AvanoPapel1Click(
  Sender: TObject);
begin
   FR_FISCAL_confProgramarAvancoPapel_ECF_Daruma.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.Operador1Click(
  Sender: TObject);
begin
   FR_FISCAL_confProgramarOperador_ECF_Daruma.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoregAlterarValorDaruma1Click(
  Sender: TObject);
var
    Str_Produto: String;
    Str_Chave: String;
    Str_Valor: String;
begin
   Str_Valor:= StringOFChar(#0,200);
   Str_Produto := InputBox('DarumaFramework', 'Entre com o Nome do Produto:',  'ECF');
   Str_Chave := InputBox('Entre com o Nome da Chave para Saber o seu Valor:', 'Daruma Framework', 'Auditoria');
   if (Str_Produto = '')or(Str_Chave = '') Then
   begin
      Exit;
      end
   else
   begin
   Int_Retorno := regRetornaValorChave_DarumaFramework(Str_Produto, Str_Chave, Str_Valor);
   Application.MessageBox(pchar('Valor retornado = ' + Str_Valor), 'Daruma Framework', mb_ok + 32);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
   end
end;

procedure TFR_MenuImpressoraFiscal_Principal.ConfigurarCupomManiaClick(
  Sender: TObject);
var
    Str_Nome_do_Produto_Chave: String;
    Str_Chave_Valor: String;
begin
   Str_Nome_do_Produto_Chave := InputBox('Daruma Framework', 'Entre com o Path e a chave:',  'ECF\CF\CupomMania');
   Str_Chave_Valor := InputBox('Entre com o Valor da Chave:', 'Daruma Framework', '1');
   if (Str_Nome_do_Produto_Chave = '') Then
      Exit;

   Int_Retorno := regAlterarValor_Daruma(Str_Nome_do_Produto_Chave, Str_Chave_Valor);
   Application.MessageBox(pchar(Str_Nome_do_Produto_Chave + ' = '+Str_Chave_Valor), 'DarumaFramework', mb_ok + 32);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);


end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodorGerarRelatorioECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_rGerarRelatorio.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodorGerarRelatorioOffLineECFDaruma1Click(
  Sender: TObject);
begin
FR_FISCAL_rGerarRelatorioOffline.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodorStatusUltimoCmdECFDaruma1Click(
  Sender: TObject);
begin
FR_FISCAL_rRetornarInformacao_ECF_Daruma.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodorVerificarImpressoraLigadaECFDaruma1Click(
  Sender: TObject);
begin
    Int_Retorno:= rVerificarImpressoraLigada_ECF_Daruma();
    If Int_Retorno <> 1 Then
    begin
         ShowMessage('Impressora Desligada');
         end
       Else begin
         ShowMessage('Impressora Ligada')
    end;
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoeAcionarGuilhotinaECFDaruma1Click(
  Sender: TObject);
begin
FR_FISCAL_eAcionarGuilhotina_ECF_Daruma.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.N2viadoCCD1Click(
  Sender: TObject);
begin
  Int_Retorno:= iCCDSegundaVia_ECF_Daruma();
  FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoeAbrirGavetaECFDaruma1Click(
  Sender: TObject);
begin
  Int_Retorno:= eAbrirGaveta_ECF_Daruma();
  FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoiImprimirCodigoBarrasECFDaruma1Click(
  Sender: TObject);
begin
//   ShowMessage('Método não disponível... AGUARDE!!!');
     FR_FISCAL_iImprimirCodigoBarras_ECF_Daruma.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodorLerAliquotasECFDaruma1Click(
  Sender: TObject);
begin
FR_FISCAL_rLerAliquotas_ECF_Daruma.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.Mtodo1Click(Sender: TObject);
begin
FR_FISCAL_eDefinirModoRegistro_Daruma.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodorLerRGECFDaruma1Click(
	Sender: TObject);
	begin
FR_FISCAL_rLerRG_ECF_Daruma.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodosObterConfigImpressora1Click(
  Sender: TObject);
begin
	 FR_FISCAL_RetornoECF.Show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodorAssinarRSAECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_AssinarRSA_ECF_Daruma.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodorCalcularMD5ECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_rCalcularMD5_ECF_Daruma.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.Loja1Click(Sender: TObject);
var
 Str_ID_Loja: String;
 begin
   Str_ID_Loja := InputBox('Daruma Framework', 'Entre com o ID da Loja:',  'ID');
   if (Str_ID_Loja = '') Then
      Exit;

   Int_Retorno := confProgramarIDLoja_ECF_Daruma(Str_ID_Loja);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;


procedure TFR_MenuImpressoraFiscal_Principal.MtodorRetornarGTCodificadoECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_rRetornarGTCodificado_ECF_Daruma.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodorVerificarGTCodificadoECFDaruma1Click(
  Sender: TObject);
begin
    FR_FISCAL_rVerificarGTCodificado_ECF_Daruma.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodorRetornarNumeroSerieCodificadoECFDaruma1Click(
  Sender: TObject);
begin
  FR_FISCAL_rRetornarNumeroSerieCodificado_ECF_Daruma.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodorVerificarNumeroSerieCodificadoECFDaruma1Click(
  Sender: TObject);
begin
FR_FISCAL_rVerificarNumeroSerieCodificado_ECF_Daruma.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.LX1Click(Sender: TObject);
begin
   Int_Retorno:=  iLeituraX_ECF_Daruma();
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;


procedure TFR_MenuImpressoraFiscal_Principal.MtodoeDefinirProdutoDaruma1Click(
  Sender: TObject);
begin
  FR_FISCAL_eDefinirProduto_Daruma.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoeRetornarAvisoECFDaruma1Click(
  Sender: TObject);
begin
     Int_Retorno := eRetornarAviso_ECF_Daruma();
  	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoeRetornarErroECFDaruma1Click(
  Sender: TObject);
begin
     Int_Retorno := eRetornarErro_ECF_Daruma();
  	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoeAguardarCompactacaoECFDaruma1Click(
  Sender: TObject);
begin
    Int_Retorno:= eAguardarCompactacao_ECF_Daruma();
  	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);    
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoregAlterarValorDaruma2Click(
  Sender: TObject);
var
    Str_Nome_do_Produto_Chave: String;
    Str_Chave_Valor: String;
begin
   Str_Nome_do_Produto_Chave := InputBox('Daruma Framework', 'Entre com o Path e a chave:',  'ECF\Auditoria');
   Str_Chave_Valor := InputBox('Entre com o Valor da Chave:', 'Daruma Framework', '1');
   if (Str_Nome_do_Produto_Chave = '') Then
      Exit;

   Int_Retorno := regAlterarValor_Daruma(Str_Nome_do_Produto_Chave, Str_Chave_Valor);
   Application.MessageBox(pchar(Str_Nome_do_Produto_Chave + ' = '+Str_Chave_Valor), 'DarumaFramework', mb_ok + 32);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodosTEF1Click(
  Sender: TObject);
begin
  ShowMessage('Métodos não disponíveis... AGUARDE!!!');
end;

procedure TFR_MenuImpressoraFiscal_Principal.Cheque1Click(Sender: TObject);
begin
   ShowMessage('Métodos não disponíveis... AGUARDE!!!');
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodorGerarEspelhoMFDECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_rGerarEspelhoMFD_ECF_Daruma.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoregCCDECFDaruma1Click(
  Sender: TObject);
var
    Str_Nome_do_Produto_Chave: String;
    Str_Chave_Valor: String;
begin
   Str_Nome_do_Produto_Chave := InputBox('Daruma Framework', 'Entre com a chave:',  'DocOrigem');
   Str_Chave_Valor := InputBox('Entre com o Valor da Chave:', 'Daruma Framework', '19876');
   if (Str_Nome_do_Produto_Chave = '') Then
      Exit;

 //  Int_Retorno := regCCD_ECF_Daruma(Str_Nome_do_Produto_Chave, Str_Chave_Valor);
   Application.MessageBox(pchar(Str_Nome_do_Produto_Chave + ' = '+Str_Chave_Valor), 'DarumaFramework', mb_ok + 32);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoeEnviarComandoECFDaruma1Click(
  Sender: TObject);
begin
   ShowMessage('Método não disponível... AGUARDE!!!');
end;

procedure TFR_MenuImpressoraFiscal_Principal.estedeVendadeItensSemPararBuferizando1Click(
  Sender: TObject);
begin
FR_FISCAL_TestedeVendadeItensSemPararBuferizan.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.CupomFiscalCompleto1Click(
  Sender: TObject);
begin
    ShowMessage('Não disponível... AGUARDE!!!');
end;

procedure TFR_MenuImpressoraFiscal_Principal.CupomFiscalResumido1Click(
  Sender: TObject);
begin
   ShowMessage('Não disponível... AGUARDE!!!');
end;

procedure TFR_MenuImpressoraFiscal_Principal.CupomFiscalPrVenda1Click(
  Sender: TObject);
begin
   ShowMessage('Não disponível... AGUARDE!!!');
end;

procedure TFR_MenuImpressoraFiscal_Principal.CCDCompleto1Click(
  Sender: TObject);
begin
   ShowMessage('Não disponível... AGUARDE!!!');
end;

procedure TFR_MenuImpressoraFiscal_Principal.CNFDetalhado1Click(
  Sender: TObject);
begin
ShowMessage('Não disponível... AGUARDE!!!');
end;

procedure TFR_MenuImpressoraFiscal_Principal.esteConsumoMFD1Click(
  Sender: TObject);
begin
FR_FISCAL_Teste_Consumo_MFD.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.LMFC1Click(Sender: TObject);
begin
FR_FISCAL_MENUFISCAL_LMFC.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.LMF1Click(Sender: TObject);
begin
FR_FISCAL_MENUFISCAL_LMFS.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.ArqMFD1Click(Sender: TObject);
begin
FR_FISCAL_MENUFISCAL_ArqMFD.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.abProd1Click(Sender: TObject);
begin
FR_FISCAL_MENU_FISCAL_Info.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.Estoque1Click(
  Sender: TObject);
begin
FR_FISCAL_MENU_FISCAL_Info.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.MovimentoporECF1Click(
  Sender: TObject);
begin
FR_FISCAL_MENU_FISCAL_Info.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.abTcnicondicesdeProduo1Click(
  Sender: TObject);
begin
FR_FISCAL_MENU_FISCAL_Info.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.DAVEmitidos1Click(
  Sender: TObject);
begin
FR_FISCAL_MENU_FISCAL_Info.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.Encerrantes1Click(
  Sender: TObject);
begin
FR_FISCAL_MENU_FISCAL_Info.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.ransfMesas1Click(
  Sender: TObject);
begin
FR_FISCAL_MENU_FISCAL_Info.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.MesasAbertas1Click(
  Sender: TObject);
begin
FR_FISCAL_MENU_FISCAL_Info.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.ManifestoFiscaldeViagem1Click(
  Sender: TObject);
begin
FR_FISCAL_MENU_FISCAL_Info.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.MeiosdePgto1Click(
  Sender: TObject);
begin
   FR_FISCAL_MENU_FISCAL_Info.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.IdentificaodoPAFECF1Click(
  Sender: TObject);
begin
    FR_FISCAL_MENU_FISCAL_Info.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.VendasdoPerodo1Click(
  Sender: TObject);
begin
ShowMessage('Arquivo Sintegra veja rGerarRelatorio_ECF_Daruma');
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodorCodigoModeloFiscalECFDaruma1Click(
  Sender: TObject);
var
    Str_CodigoModeloFiscal: String;
begin
   Str_CodigoModeloFiscal := StringOFChar(#0,7);
   Int_Retorno := rCodigoModeloFiscal_ECF_Daruma(Str_CodigoModeloFiscal);
   Application.MessageBox(pchar('Codigo Modelo Fiscal: ' + Str_CodigoModeloFiscal ), 'Daruma Framework', mb_ok + 32);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.eTEFTravarTecladoECFDaruma1Click(
  Sender: TObject);
begin
   Int_Retorno:= rVerificarImpressoraLigada_ECF_Daruma();
   Application.MessageBox('Seu Teclado Ficara Travado por 5 segundos Pressione Enter para começar!!!', 'DarumaFramework', mb_ok + 32);
   Int_Retorno := eTEF_TravarTeclado_ECF_Daruma(true);
   Sleep (5000);
   Int_Retorno := eTEF_TravarTeclado_ECF_Daruma(false);
   Application.MessageBox('Seu Teclado foi Destravado!!!', 'Daruma Framework', mb_ok + 32);
end;

procedure TFR_MenuImpressoraFiscal_Principal.eTEFSetarFocoECFDaruma1Click(
  Sender: TObject);
Var Str_Titulo: string;
begin
   Str_Titulo := InputBox('Daruma Framework', 'Entre com o título da Janela que você deseja setar o foco:', 'Daruma Framework Impressoras Fiscais');
   Int_Retorno := eTEF_SetarFoco_ECF_Daruma(pchar(Str_Titulo));
end;

procedure TFR_MenuImpressoraFiscal_Principal.iEstornarPagamentoECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_iEstornarPagamento_ECF_Daruma.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.iTEFImprimirRespostaECFDaruma1Click(
  Sender: TObject);
begin
    FR_FISCAL_iTEF_ImprimirResposta_ECF_Daruma.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.iTEFFecharECFDaruma1Click(
  Sender: TObject);
begin
   Int_Retorno:= iTEF_Fechar_ECF_Daruma();
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.iTEFImprimirRespostaCartaoECFDaruma1Click(
  Sender: TObject);
begin
    FR_FISCAL_iTEF_ImprimirRespostaCartao_ECF_Daruma.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.eTEFEsperarArquivoECFDaruma1Click(
  Sender: TObject);
begin
    FR_FISCAL_eTEF_EsperarArquivo_ECF_Daruma.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.M2Click(Sender: TObject);
begin
    FR_FISCAL_eRSAAssinarArquivo_ECF_Daruma.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodorRSARetornaChavePublicaECFDaruma1Click(
  Sender: TObject);
begin
     FR_FISCAL_rRSARetornaChavePublica_ECF_Daruma.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.otaldeISSeICMScontabilizadoltimoCFMania1Click(
  Sender: TObject);
Var Str_ICMS, Str_ISS: String;
begin
    Str_ISS:=' ';
    Str_ICMS:=' ';
     SetLength (Str_ISS,13);
     SetLength (Str_ICMS,13);
     Int_Retorno := rCMEfetuarCalculo_ECF_Daruma(Str_ISS, Str_ICMS);
     ShowMessage(' Total ICMS: ' + Str_ICMS );
     ShowMessage('Total ISS: ' + Str_ISS);
     FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.iImprimir_CHEQUE_DarumaClick(
  Sender: TObject);
begin
    FR_FS2100_iChequeImprimir.show();

end;

procedure TFR_MenuImpressoraFiscal_Principal.Mtodo2Click(Sender: TObject);
Var Int_Status:Integer;
begin
  Int_Status:=0;
  Int_Retorno := rStatusGaveta_ECF_Daruma(Int_Status);

   if(Int_Status=0)then
      ShowMessage(' Gaveta Fechada ') else
      ShowMessage(' Gaveta Aberta ');


	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_MenuImpressoraFiscal_Principal.eCarregarBitmapPromocional_ECF_DarumaClick(
  Sender: TObject);
begin

FR_FISCAL_eCarregarBitmapPromocional_ECF_Daruma.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoeMemoriaFiscalECFDaruma1Click(
  Sender: TObject);
begin
   FR_FISCAL_eMemoriaFiscal_ECF_Daruma.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.M1Click(Sender: TObject);
begin
FR_iCNFReceber_ECF_Daruma.show();

end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodoconfModoPAFECFDaruma1Click(
  Sender: TObject);
var
    Str_Ativar: String;
    Str_Chave: String;
    Str_Arquivo: String;
begin
   Str_Ativar := InputBox('DarumaFramework', 'Ativar Modo PAF:',  '1');
   Str_Chave := InputBox('Daruma Framework', 'Chave para o Modo PAF:', '123');
   Str_Arquivo:= InputBox('DarumaFramework', 'Caminho do arquivo: ','c:\PAF.DFW');

   if (Str_Ativar = '')or(Str_Chave = '') or (Str_Arquivo='') Then
   begin
      Exit;
      end
   else
   begin
   Int_Retorno := confModoPAF_ECF_Daruma(Str_Ativar, Str_Chave, Str_Arquivo);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
   end
end;


procedure TFR_MenuImpressoraFiscal_Principal.MtodorGerarMFDECFDaruma1Click(
  Sender: TObject);
begin
  FR_FISCAL_rGerarMFD.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodorGerarMFECFDaruma1Click(
  Sender: TObject);
begin
  FR_FISCAL_rGerarMF.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodorGerarTDMECFDaruma1Click(
  Sender: TObject);
begin
FR_FISCAL_rGerarTDM.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodorGerarSINTEGRAECFDaruma1Click(
  Sender: TObject);
begin
FR_FISCAL_rGerarSINTEGRA.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodorGerarSPEDECFDaruma1Click(
  Sender: TObject);
begin
FR_FISCAL_rGerarSPED.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.MtodorGerarNFPECFDaruma1Click(
  Sender: TObject);
begin
FR_FISCAL_rGerarNFP.show();
end;

procedure TFR_MenuImpressoraFiscal_Principal.eEjetarChequeECFDaruma1Click(
  Sender: TObject);
begin
    Application.MessageBox('A impressora não responde enquanto o cheque não é retirado, Tecle enter para iniciar a execução do método e retire o cheque!', 'DarumaFramework', mb_ok + 32);
    Int_Retorno:= eEjetarCheque_ECF_Daruma();
    If (Int_Retorno =1)  then
       Application.MessageBox(' 1 - O cheque foi retirado com sucesso!', 'DarumaFramework', mb_ok + 32)
    Else
        Application.MessageBox('0 - O cheque não foi retirado, a impressora continuará sem responder!', 'DarumaFramework', mb_ok + 32);

    FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
    
end;

end.












