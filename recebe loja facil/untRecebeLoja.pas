unit untRecebeLoja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, classComboBox, IBQuery, DB, axCtrls, jpeg,
  ComCtrls, Menus, Printers, StrUtils, untClasse.VendasCX;


type
  TfrmRecebeLoja = class(TForm)
    lbl_edtValor: TLabeledEdit;
    cboTipoPagto: TComboBox;
    Label1: TLabel;
    lbl_edtTotalVenda: TLabeledEdit;
    lbl_edtTroco: TLabeledEdit;
    lbl_edtSair: TLabeledEdit;
    lbl_edtDesconto: TLabeledEdit;
    lbl_edtNumCheque: TLabeledEdit;
    lbl_Data: TLabel;
    lbl_edtCodCli: TLabeledEdit;
    lbl_edtNomeCliente: TLabeledEdit;
    Bevel1: TBevel;
    lbl_F3: TLabel;
    lbl_CondPagto: TLabel;
    lbl_edtAcrescimo: TLabeledEdit;
    Label3: TLabel;
    cboTPagto: TComboBox;
    lbl_edtValorPago: TLabeledEdit;
    MainMenu1: TMainMenu;
    iposdedesconto1: TMenuItem;
    Valor1: TMenuItem;
    Porcentagem1: TMenuItem;
    LimparCampos1: TMenuItem;
    lbl_edtKM: TLabeledEdit;
    lbl_CodVendaMPV: TLabel;
    NotaPaulista1: TMenuItem;
    LimparCamposNFPaulista1: TMenuItem;
    lbl_edtDescontoP: TLabeledEdit;
    cboCondPagto: TComboBox;
    dtpDataCheque: TDateTimePicker;

    procedure Commit(IBQueryExec : TIBQuery);
    procedure Tratar_RetornoSAT(iRetorno:integer);
    procedure ExecSELECTTipoPagto;
    procedure ExecSELECTTPagto;
    procedure ExecSELECTCondPagto;
    procedure cboTipoPagtoKeyPress(Sender: TObject; var Key: Char);
    procedure cboTipoPagtoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure lbl_edtValorExit(Sender: TObject);
    procedure lbl_edtTotalVendaKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtTrocoExit(Sender: TObject);
    procedure lbl_edtTrocoKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtSairKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtSairExit(Sender: TObject);
    procedure lbl_edtValorKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtDescontoKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtDescontoExit(Sender: TObject);
    procedure lbl_edtTotalVendaExit(Sender: TObject);
    procedure lbl_edtNumChequeKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbl_edtAcrescimoKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtAcrescimoExit(Sender: TObject);
    procedure lbl_edtValorPagoExit(Sender: TObject);
    procedure lbl_edtValorPagoKeyPress(Sender: TObject; var Key: Char);
    procedure ckValorCheck(Sender: TObject);
    procedure ckPorcentagemCheck(Sender: TObject);
    procedure Valor1Click(Sender: TObject);
    procedure Porcentagem1Click(Sender: TObject);
    procedure LimparCampos1Click(Sender: TObject);
    procedure cboTPagtoKeyPress(Sender: TObject; var Key: Char);
    procedure cboTPagtoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NotaPaulista1Click(Sender: TObject);
    procedure BmsXPButton1Click(Sender: TObject);
    procedure lbl_edtDescontoPKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtDescontoPExit(Sender: TObject);
    procedure lbl_edtDescontoEnter(Sender: TObject);
    procedure cboTipoPagtoEnter(Sender: TObject);
    procedure cboTPagtoEnter(Sender: TObject);
    procedure lbl_edtDescontoPEnter(Sender: TObject);
    procedure lbl_edtAcrescimoEnter(Sender: TObject);
    procedure lbl_edtValorEnter(Sender: TObject);
    procedure lbl_edtTotalVendaEnter(Sender: TObject);
    procedure lbl_edtTrocoEnter(Sender: TObject);
    procedure lbl_edtValorPagoEnter(Sender: TObject);
    procedure lbl_edtCodCliEnter(Sender: TObject);
    procedure lbl_edtNomeClienteEnter(Sender: TObject);
    procedure lbl_edtNumChequeEnter(Sender: TObject);
    procedure cboTipoPagtoExit(Sender: TObject);
    procedure cboTPagtoExit(Sender: TObject);
    procedure lbl_edtCodCliExit(Sender: TObject);
    procedure lbl_edtNomeClienteExit(Sender: TObject);
    procedure lbl_edtNumChequeExit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRecebeLoja: TfrmRecebeLoja;
  IDTipoPagto : TClasseCombo; //variavel pra trazer os dados no combo de consulta do pagto avulso
  IDTPagto    : TClasseCombo;
  ValorVenda,ValorPago,ValorTroco,ValorDesconto : String;//variaveis para gravar os valores na tblrecebpista
  ValorAcrescimo,ValorVendaPago : String;
  //variaveis para trazer o total das vendas
  ValorTotal    : Real;
  TotalVenda    : String;

 // ValorDesconto : String;
  ValorTotalB : Real;
  TotalVendaB : String;
  ValorTotalC : Real;
  TotalVendaC : String;

  TotalGeral : Real;

  TotalBC : Real;

  IDVenda : Integer;
  IDVendaCliente : Integer;
 // IDCliVendas : String;
  IDVendaInt : Integer;
  //variaveis para o tipo de pagto
  IDTipoPagamento, IDTipoPagamentoMPV      : TClasseCombo;
  StringTipoPagamento, StringTipoPagamentoMPV  : String;

  IDTipoProduto : Integer;
  IDProd : Integer;

  IDVendasServicos : Integer;
  ImagemProduto : String;
  ConfirmaMSG : Integer;
  IDServs : Integer;
  IDServsAcrescimo : Integer;
  NPedido : String;
  IDServsWhile : Integer;
  IDCliVenda   : TClasseCombo;
  StringCliVenda : String;
  NomeFunc : String;
  IDCondPagto : TClasseCombo;

  IDCondPagtoCA         : TClasseCombo;
  StringCondpagto     :String;

  IDFuncComiss : Integer;

  // Vari�vel geral para tratar o Retorno da Fun��o, N�mero Erro e N�mero do Aviso
  Int_Retorno, IRetorno: integer;
  Int_NumErro: integer;
  Int_NumAviso: integer;
  Str_Msg_Retorno_Metodo, Str_Msg_NumErro, Str_Msg_NumAviso, Str_Erro, Str_Aviso, Str_Msg_RetMetodo : string;


implementation

uses  funcPosto, untdmModule, untServicos, BuscaClientes,untNFPaulista, untRCupomModR;


////////////////////////////////////////////////////////////////////////////////
///SAT

    //Geral
   // function eDefinirProduto_Daruma(szProduto: String): Integer; StdCall; External 'DarumaFrameWork.dll';
   // function regAlterarValor_Daruma(pszPathChave:String; pszValor:String):Integer; StdCall; External 'DarumaFrameWork.dll';
    //function eVerificarVersaoDLL_Daruma(pszRet:String):Integer; StdCall; External 'DarumaFrameWork.dll';
    //DUAL - Mini-Impressoras
   // function eBuscarPortaVelocidade_DUAL_DarumaFramework(): Integer; StdCall; External 'DarumaFrameWork.dll';
    function iImprimirTexto_DUAL_DarumaFramework(pszString: String; iTam: Integer): Integer; StdCall; External 'DarumaFrameWork.dll';
  
    //function ebusca
    // SAT - XML
    function regAlterarValor_SAT_Daruma(pszTagSAT:String; pszValorTagSAT:String):Integer; StdCall; External 'DarumaFramework.dll';
    function regRetornarValor_SAT_Daruma(pszTagSAT:String; pszValorTagSAT:String):Integer; StdCall; External 'DarumaFramework.dll';

  // SAT - Cupom Fiscal Parametrizado
    //abertura
    function aCFAbrir_SAT_Daruma(pszCPF: String; pszNome: String; pszEndereceo: String): Integer; StdCall; External 'DarumaFrameWork.dll';
    //item
    function aCFVender_SAT_Daruma(pszCargaTributaria: String; pszQuantidade: String; pszPrecoUnitario: String; pszTipoDescAcres: String; pszValorDescAcres: String; pszCodigoItem: String; pszUnidadeMedida: String; pszDescricao: String): Integer; StdCall; External 'DarumaFrameWork.dll';
    function aCFVenderCompleto_SAT_Daruma(pszAliquota: String; pszQuantidade: String; pszPrecoUnitario: String; pszTipoDescAcresc: String; pszValorDescAcresc: String; pszCodigoItem: String; pszNCM: String; pszCFOP: String; pszUnidadeMedida: String; pszDescricaoItem: String; pszUsoFuturo: String): Integer; StdCall; External 'DarumaFrameWork.dll';
    function aCFeCancelarItem_SAT_Daruma(iNumItem: Integer): Integer; StdCall; External 'DarumaFrameWork.dll';
    //totalizar
    function aCFTotalizar_SAT_Daruma(pszTipoDescAcres: String; pszValorDescAcresc: String): Integer; StdCall; External 'DarumaFrameWork.dll';
    //pagamento
    function aCFEfetuarPagamento_SAT_Daruma (pszFormaPgto: String; pszValor:String; pszCodCred: String): Integer; StdCall; External 'DarumaFrameWork.dll';
    function aCFeCancelarFormaPagamento_SAT_Daruma(iIndiceMP: Integer): Integer; StdCall; External 'DarumaFrameWork.dll';
    function aCFEstornarPagamento_SAT_Daruma(pszFormaPgtoEstornado: String; pszFormaPgtoEfetivado:String; pszValor: String): Integer; StdCall; External 'DarumaFrameWork.dll';
    //encerrar
    function tCFEncerrar_SAT_Daruma(pszCupomAdicional: String; pszInfoAdicional: String): Integer; StdCall; External 'DarumaFrameWork.dll';

  // SAT - Cupom Fiscal montando xml
    //abertura
    function aCFeAbrir_SAT_Daruma(pszTagsParamAbertura: String): Integer; StdCall; External 'DarumaFrameWork.dll';
    //item
    function aCFeVender_SAT_Daruma(pszTagsParamVenda: String): Integer; StdCall; External 'DarumaFrameWork.dll';
    //totalizar
    function aCFeTotalizar_SAT_Daruma(pszTagsParamTotalizacao: String): Integer; StdCall; External 'DarumaFrameWork.dll';
    //pagamento
    function aCFeEfetuarPagamento_SAT_Daruma(pszTagsParamPagamento: String): Integer; StdCall; External 'DarumaFrameWork.dll';
    function aCFeEstornarPagamento_SAT_Daruma(pszTagsEstorno: String): Integer; StdCall; External 'DarumaFrameWork.dll';
    //encerrar
    function tCFeEncerrar_SAT_Daruma(pszTagsParamEncerramento: String): Integer; StdCall; External 'DarumaFrameWork.dll';
    // envio
    function tCFeEnviar_SAT_Daruma(pszTagsCFe: String): Integer; StdCall; External 'DarumaFrameWork.dll';

    //SAT - Cancela CF
    function tCFeCancelar_SAT_Daruma(): Integer; StdCall; External 'DarumaFrameWork.dll';
    function tCFeCancelarParametrizado_SAT_Daruma(pszCpfCnpj: String; pszChaveAcesso:String): Integer; StdCall; External 'DarumaFrameWork.dll';

    //SAT - Reimpress�o e Impress�o
    function iReimprimirUltimoCFe_SAT_Daruma() : Integer; StdCall; External 'DarumaFrameWork.dll';
    function iImprimirCFe_SAT_Daruma(szPathXmlSAT: String; pszTipo: String): Integer; StdCall; External 'DarumaFrameWork.dll';

    // SAT - Configura��o SAT
    function tCFeAssociarAssinatura_SAT_Daruma(pszTagsAssinatura: String): Integer; StdCall; External 'DarumaFrameWork.dll';

    // SAT - Configura��o de imposto
    function aCFConfImposto_SAT_Daruma(pszImposto: String; pszParametros:String): Integer; StdCall; External 'DarumaFrameWork.dll';

  //atualizarsat
  
  // SAT - Retornos e Status
 // function rVerificarComunicacao_SAT_Daruma(): Integer; StdCall; External 'DarumaFrameWork.dll';
 // function rConsultarStatus_SAT_Daruma(pszStatusSAT: String): Integer; StdCall; External 'DarumaFrameWork.dll';
//  function rConsultarStatusEspecifico_SAT_Daruma(pszCampo: String; pszRetornoSAT: String): Integer; StdCall; External 'DarumaFramework.dll';
//  function rConsultarArqCopSeguranca_SAT_Daruma(pszArqCopSeg: String): Integer; StdCall; External 'DarumaFramework.dll';
//  function rInfoEstendida_SAT_Daruma(pszIndice: String; pszRetorno: String): Integer; StdCall; External 'DarumaFramework.dll';

    function iAcionarGaveta_DUAL_DarumaFramework(): Integer; StdCall; External 'DarumaFrameWork.dll'

////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////

//CUPOM FISCAL
		//Abertura Cupom Fiscal
	{	function iCFAbrir_ECF_Daruma(pszCPF: String; pszNome: String; pszEndereco: String): Integer; StdCall; External 'DarumaFramework.dll';
		function iCFAbrirPadrao_ECF_Daruma: Integer; StdCall; External 'DarumaFramework.dll';
		//Registro de Item
		function iCFVender_ECF_Daruma(pszCargaTributaria:String; pszQuantidade:String; pszPrecoUnitario:String; pszTipoDescAcresc:String; pszValorDescAcresc:String; pszCodigoItem:String; pszUnidadeMedida:String; pszDescricaoItem:String): Integer; StdCall; External 'DarumaFramework.dll';
		function iCFVenderSemDesc_ECF_Daruma(pszCargaTributaria:String; pszQuantidade:String; pszPrecoUnitario:String; pszCodigoItem:String; pszUnidadeMedida:String; pszDescricaoItem:String): Integer; StdCall; External 'DarumaFramework.dll';
		function iCFVenderResumido_ECF_Daruma(pszCargaTributaria:String; pszPrecoUnitario:String; pszCodigoItem:String; pszDescricaoItem:String): Integer; StdCall; External 'DarumaFramework.dll';
		//Desconto ou Acr�scimo em Item de Cupom Fiscal
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
		//Identifica��o Consumidor Cupom Fiscal
		function iCFIdentificarConsumidor_ECF_Daruma(pszNome:string;pszEndereco:String; pszDoc:string): Integer; StdCall; External 'DarumaFramework.dll';
		//Cupom Mania
    function rCMEfetuarCalculo_ECF_Daruma(pszISS:string;pszICMS:string): Integer; StdCall; External 'DarumaFramework.dll';
		//Estornar Meio Pagamento
		function iEstornarPagamento_ECF_Daruma(pszFormaPgtoEstornado:string;pszFormaPgtoEfetivado:string;pszValor:string;pszInfoAdicional:string): Integer; StdCall; External 'DarumaFramework.dll';


//CCD - Comprovante de Cr�dito e D�bito
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

// CNF - Comprovante N�o Fiscal
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

//Relat�rio Gerencial
		function iRGAbrir_ECF_Daruma(pszNomeRG:String): Integer; StdCall; External 'DarumaFramework.dll';
		function iRGAbrirIndice_ECF_Daruma(iIndiceRG:Integer): Integer; StdCall; External 'DarumaFramework.dll';
		function iRGAbrirPadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		function iRGImprimirTexto_ECF_Daruma(pszTexto:String): Integer; StdCall; External 'DarumaFramework.dll';
		function iRGFechar_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';

//Bilhete Passagem
		function iCFBPAbrir_ECF_Daruma(pszOrigem:string;pszDestino:string;pszUFDestino:string;pszPercurso:string;pszPrestadora:string;pszPlataforma:string;pszPoltrona:string;pszModalidadetransp:string;pszCategoriaTransp:string;pszDataEmbarque:string;pszRGPassageiro:string;pszNomePassageiro:string;pszEnderecoPassageiro:string): Integer; StdCall; External 'DarumaFramework.dll';
		function iCFBPVender_ECF_Daruma(pszAliquota:string;pszValor:string;pszTipoDescAcresc:string;pszValorDescAcresc:string;pszDescricao:string): Integer; StdCall; External 'DarumaFramework.dll';
		function confCFBPProgramarUF_ECF_Daruma(pszUF:string): Integer; StdCall; External 'DarumaFramework.dll';

//Relat�rios Fiscais
		//Leitura X
		function iLeituraX_ECF_Daruma: Integer; StdCall; External 'DarumaFramework.dll';
		function rLeituraX_ECF_Daruma: Integer; StdCall; External 'DarumaFramework.dll';
		function rLeituraXCustomizada_ECF_Daruma(pszCaminho:String): Integer; StdCall; External 'DarumaFramework.dll';
		//Redu��o Z
		function iReducaoZ_ECF_Daruma(pszData:string; pszHora:String): Integer; StdCall; External 'DarumaFramework.dll';
		//Sangria
		function iSangriaPadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		function iSangria_ECF_Daruma(pszValor:string; pszMensagem:String): Integer; StdCall; External 'DarumaFramework.dll';
		//Suprimento
		function iSuprimentoPadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
		function iSuprimento_ECF_Daruma(pszValor:string; pszMensagem:String): Integer; StdCall; External 'DarumaFramework.dll';
		//Leitura Mem�ria Fiscal
		function iMFLerSerial_ECF_Daruma(pszInicial:string; pszFinal:string): Integer; StdCall; External 'DarumaFramework.dll';
		function iMFLer_ECF_Daruma(pszInicial:string; pszFinal:string): Integer; StdCall; External 'DarumaFramework.dll';

//Programa��o do ECF
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
 ///		function eAcionarGuilhotina_ECF_Daruma(pszTipoCorte:string): Integer; StdCall; External 'DarumaFramework.dll';
    //Relatorio de configura��o
    function iRelatorioConfiguracao_ECF_Daruma: Integer; StdCall; External 'DarumaFramework.dll'; }


{//Cheque
		function eEjetarCheque_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
    function confCorrigirGeometria_CHEQUE_Daruma(pszNumeroBanco: string; pszDistValorNumerico:string; pszColunaValorNumerico: string; pszDistPrimExtenso: string; pszColunaPrimExtenso:string; pszDistSegExtenso: string; pszColunaSegExtenso: string; pszDistFavorecido: string; pszColunaFavorecido: string; pszDistCidade: string; pszColunaCidade: string; pszColunaDia: string; pszColunaMes: string; pszColunaAno: string; pszLinhaAutenticacao: string; pszColunaAutenticacao: string): Integer; StdCall; External 'DarumaFramework.dll';
    function iAtributo_CHEQUE_Daruma(pszModo:string): Integer; StdCall; External 'DarumaFramework.dll';
    function iAutenticar_CHEQUE_Daruma(pszPosicao: string; pszTexto:string): Integer; StdCall; External 'DarumaFramework.dll';
    function iImprimir_CHEQUE_Daruma(pszNumeroBanco:string; pszCidade:string; pszData:string; pszNomeFavorecido:string; pszTextoFrente:string; pszValorCheque:string): Integer; StdCall; External 'DarumaFramework.dll';
    function iImprimirVerso_CHEQUE_Daruma(pszTexto:string): Integer; StdCall; External 'DarumaFramework.dll';
    function  iImprimirVertical_CHEQUE_Daruma(pszNumeroBanco:string; pszCidade:string; pszData:string; pszNomeFavorecido:string; pszTextoFrente:string; pszValorCheque:string): Integer; StdCall; External 'DarumaFramework.dll';  }

//C�digo de Barras
	///	function iImprimirCodigoBarras_ECF_Daruma(pszTipo:string; pszLargura:string; pszAltura:string; pszImprTexto:string; pszCodigo:string; pszOrientacao:string; pszTextoLivre:string): Integer; StdCall; External 'DarumaFramework.dll';

//Registry
		//Registry Sintegra
	{	function regSintegra_ECF_Daruma(pszChave:string;pszValor:string):Integer; StdCall; External 'DarumaFramework.dll';
		//Registry Gerais
	 //	function regAlterarValor_Daruma(pszPathChave:string;pszValor:string):Integer; StdCall; External 'DarumaFramework.dll';
		function regRetornaValorChave_DarumaFramework(pszProduto:string;pszChave:string;pszValor:string):Integer; StdCall; External 'DarumaFramework.dll';
		function regRetornaValorChave(pszProduto:string;pszChave:string;pszValor:string):Integer; StdCall; External 'DarumaFramework.dll';

//Gera��o Arquivos
		//Espelho MFD PAF-ECF
		function rGerarEspelhoMFD_ECF_Daruma(pszTipo:string; pszInicial:string;pszFinal:string): Integer; StdCall; External 'DarumaFramework.dll';
		//Relat�rio PAF-ECF ON-line
		function rGerarRelatorio_ECF_Daruma(szRelatorio:string; szTipo:string; szInicial:string; szFinal:string): Integer; StdCall; External 'DarumaFramework.dll';
    function rGerarMFD_ECF_Daruma(szTipo:string; szInicial:string; szFinal:string): Integer; StdCall; External 'DarumaFramework.dll';
    function rGerarMF_ECF_Daruma(szTipo:string; szInicial:string; szFinal:string): Integer; StdCall; External 'DarumaFramework.dll';
    function rGerarTDM_ECF_Daruma(szTipo:string; szInicial:string; szFinal:string): Integer; StdCall; External 'DarumaFramework.dll';
    function rGerarSPED_ECF_Daruma(szTipo:string; szInicial:string; szFinal:string): Integer; StdCall; External 'DarumaFramework.dll';
    function rGerarSINTEGRA_ECF_Daruma(szTipo:string; szInicial:string; szFinal:string): Integer; StdCall; External 'DarumaFramework.dll';
    function rGerarNFP_ECF_Daruma(szTipo:string; szInicial:string; szFinal:string): Integer; StdCall; External 'DarumaFramework.dll';
    function rGerarRelatorioBaixoNivel_ECF_Daruma(szRegistro:string; szTipo:string; szInicial:string; szFinal:string): Integer; StdCall; External 'DarumaFramework.dll';

		//Relat�rio PAF-ECF Off-line
		function rGerarRelatorioOffline_ECF_Daruma(szRelatorio:string; szTipo:string; szInicial:string; szFinal:string; szArquivo_MF:string; szArquivo_MFD:string; szArquivo_INF:string): Integer; StdCall; External 'DarumaFramework.dll';

    function rGerarRelatorioBaixoNivelOffLine_ECF_Daruma(szRegistro:string; szTipo:string; szInicial:string; szFinal:string; szArquivo_MFD:string; szArquivo_INF:string): Integer; StdCall; External 'DarumaFramework.dll';
		//Download Mem�rias
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
    function rCodigoModeloFiscal_ECF_Daruma(szCodModelo:string): Integer; StdCall; External 'DarumaFramework.dll';   }

//MENU-FISCAL

{//ESPECIAIS
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
    function eRetornarAvisoErroUltimoCMD_ECF_Daruma(pszAviso:string; pszErro:string): Integer; StdCall; External 'DarumaFramework.dll';  }

    //Comandos modo Generico
   { function eAbrirSerial_Daruma(pszPorta:string; pszVelocidade:string):Integer; StdCall; External 'DarumaFramework.dll';
    function eFecharSerial_Daruma():Integer; StdCall; External 'DarumaFramework.dll';
    function tEnviarDados_Daruma(pszBytes:string; iTamBytes:Integer):Integer; StdCall; External 'DarumaFramework.dll';
    function rReceberDados_Daruma(pszBufferEntrada:string):Integer; StdCall; External 'DarumaFramework.dll';

//CUPOM NAO FISCAL

//   function iImprimirTexto_DUAL_DarumaFramework(stTexto: String; iTam: Integer ): Integer; StdCall; External 'DarumaFramework.dll'
   function regAguardarProcesso_DUAL_DarumaFramework(stParametro: String): Integer; StdCall; External 'DarumaFrameWork.dll'
   function regEnterFinal_DUAL_DarumaFramework(stParametro: String): Integer; StdCall; External 'DarumaFrameWork.dll'
   function regLinhasGuilhotina_DUAL_DarumaFramework(stParametro: String): Integer; StdCall; External 'DarumaFrameWork.dll'
   function regModoGaveta_DUAL_DarumaFramework(stParametro: String): Integer; StdCall; External 'DarumaFrameWork.dll'
   function regPortaComunicacao_DUAL_DarumaFramework(stParametro: String): Integer; StdCall; External 'DarumaFrameWork.dll'
   function regTabulacao_DUAL_DarumaFramework(stParametro: String): Integer; StdCall; External 'DarumaFrameWork.dll'
   function regTermica_DUAL_DarumaFramework(stParametro: String): Integer; StdCall; External 'DarumaFrameWork.dll'
   function regVelocidade_DUAL_DarumaFramework(stParametro: String): Integer; StdCall; External 'DarumaFrameWork.dll'
   function rStatusImpressora_DUAL_DarumaFramework(): Integer; StdCall; External 'DarumaFrameWork.dll'
   function rStatusDocumento_DUAL_DarumaFramework(): Integer; StdCall; External 'DarumaFrameWork.dll'
   function rStatusGaveta_DUAL_DarumaFramework(var iStatusGaveta: Integer): Integer; StdCall; External 'DarumaFrameWork.dll'
   function rConsultaStatusImpressora_DUAL_DarumaFramework(stIndice: String; StTipo: String; StRetorno: String): Integer; StdCall; External 'DarumaFrameWork.dll'
   function iImprimirArquivo_DUAL_DarumaFramework(stPath: String): Integer; StdCall; External 'DarumaFrameWork.dll'
   function iAcionarGaveta_DUAL_DarumaFramework(): Integer; StdCall; External 'DarumaFrameWork.dll'
   function iEnviarBMP_DUAL_DarumaFramework(stArqOrigem: String): Integer; StdCall; External 'DarumaFrameWork.dll'
   function regCodePageAutomatico_DUAL_DarumaFramework(stParametro: String): Integer; StdCall; External 'DarumaFrameWork.dll'
   function regZeroCortado_DUAL_DarumaFramework(stParametro: String): Integer; StdCall; External 'DarumaFrameWork.dll'
//   function eDefinirProduto_Daruma(szProduto: String): Integer; StdCall; External 'DarumaFrameWork.dll'   }


//=================================================================================================
// EPSON_Serial
//=================================================================================================
{function EPSON_Serial_Abrir_Porta(dwVelocidade:Integer; wPorta:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Serial_Abrir_Fechar_Porta_CMD(dwVelocidade:Integer;wPorta:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Serial_Abrir_PortaAD(pszVelocidade:Pchar;pszPorta:Pchar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Serial_Abrir_PortaEx():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Serial_Fechar_Porta ():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Serial_Obter_Estado_Com():Integer;StdCall; External 'InterfaceEpson.dll';
//=================================================================================================
// EPSON_Fiscal
//=================================================================================================
function EPSON_Fiscal_Abrir_Cupom(pszCNPJ:PChar; pszRazaoSocial:PChar; pszEndereco1:PChar; pszEndereco2:PChar; dwPosicao:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Dados_Usuario(pszCGC:PChar; pszSocialReason:PChar; pszAddress1:PChar; pszAddress2:PChar; dwPosition:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Vender_Item(pszCodigo:PChar; pszDescricao:PChar; pszQuantidade:PChar; dwQuantCasasDecimais:Integer; pszUnidade:PChar; pszPrecoUnidade:PChar; dwPrecoCasasDecimais:Integer; pszAliquotas:PChar; dwLinhas:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Obter_SubTotal(pszSubTotal:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Pagamento(pszNumeroPagamento:PChar; pszValorPagamento:PChar; dwCasasDecimais:Integer; pszDescricao1:PChar; pszDescricao2:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Desconto_Acrescimo_Item(pszValor:PChar; dwCasasDecimais:Integer; bDesconto:Boolean; bPercentagem:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Desconto_Acrescimo_Subtotal(pszValor:PChar; dwCasasDecimais:Integer; bDesconto:Boolean; bPercentagem:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Cancelar_Cupom():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Cancelar_Item(pszNumeroItem:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Cancelar_Ultimo_Item():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Cancelar_Desconto_Acrescimo_Item(bDesconto:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Cancelar_Acrescimo_Desconto_Subtotal(bDesconto:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Cancelar_Item_Parcial(pszNumeroItem:PChar; pszQuantidade:PChar; dwQuantCasasDecimais:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Imprimir_Mensagem(pszLinhaTexto1:PChar; pszLinhaTexto2:PChar; pszLinhaTexto3:PChar; pszLinhaTexto4:PChar; pszLinhaTexto5:PChar; pszLinhaTexto6:PChar; pszLinhaTexto7:PChar; pszLinhaTexto8:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Configurar_Codigo_Barras_Mensagem(dwLinha:Integer; dwTipo:Integer; dwAltura:Integer; dwLargura:Integer; dwPosicao:Integer; dwCaracter:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Fechar_CupomEx(pszTotalCupom:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Fechar_Cupom(bCortarPapel:Boolean; bAdicional:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Mensagem_Aplicacao(pszLinha01:PChar; pszLinha02:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
//=================================================================================================
// EPSON_NaoFiscal
//=================================================================================================
function EPSON_NaoFiscal_Abrir_Comprovante(pszCNPJ:PChar; pszRazaoSocial:PChar; pszEndereco1:PChar; pszEndereco2:PChar; dwPosicao:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Vender_Item(pszNumeroOperacao:PChar; pszValorOperacao:PChar; dwCasasDecimais:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Obter_SubTotal(pszSubTotal:PChar):Integer;StdCall;External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Desconto_Acrescimo_Item(pszValor:PChar; dwCasasDecimais:Integer; bDesconto:Boolean; bPercentagem:Boolean):Integer;StdCall;External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Desconto_Acrescimo_Subtotal(pszValor:PChar; dwCasasDecimais:Integer; bDesconto:Boolean; bPercentagem:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Pagamento(pszNumeroPagamento:PChar; pszValorPagamento:PChar; dwCasasDecimais:Integer; pszDescricao1:PChar; pszDescricao2:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Cancelar_Item(pszItem:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Cancelar_Ultimo_Item():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Cancelar_Desconto_Acrescimo_Item(bDesconto:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Cancelar_Desconto_Acrescimo_Subtotal(bDesconto:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Cancelar_Comprovante():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Fechar_Comprovante(bCortarPapel:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Abrir_CCD(pszNumeroPagamento:PChar; pszValor:PChar; dwCasasDecimais:Integer; pszParcelas:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Abrir_Relatorio_Gerencial(pszNumeroRelatorio:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Imprimir_LinhaEX(pszLinha:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Imprimir_Linha(pszLinha:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Imprimir_15Linhas(pszLinha00:PChar;pszLinha01:PChar;pszLinha02:PChar;pszLinha03:PChar;pszLinha04:PChar;pszLinha05:PChar;pszLinha06:PChar;pszLinha07:PChar;pszLinha08:PChar;pszLinha09:PChar;pszLinha10:PChar;pszLinha11:PChar;pszLinha12:PChar;pszLinha13:PChar;pszLinha014:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Fechar_CCD(bCortarPapel:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Fechar_Relatorio_Gerencial(bCortarPapel:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Cancelar_CCD(pszNumeroPagamento:PChar; pszValor:PChar; dwCasasDecimais:Integer; pszParcelas:PChar; pszNumeroCupom:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Cancelar_Pagamento(pszFormaPagamento:PChar; pszNovaFormaPagamento:PChar; pszValor:PChar; dwCasasDecimais:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Nova_Parcela_CCD():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Nova_Via_CCD():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Reimprimir_CCD():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Sangria(pszValor:PChar; dwCasasDecimais:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Fundo_Troco(pszValor:PChar; dwCasasDecimais:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Imprimir_Codigo_Barras(dwTipo:Integer; dwAltura:Integer; dwLargura:Integer; dwPosicao:Integer; dwCaracter:Integer; pszCodigo:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
//=================================================================================================
// EPSON_RelatorioFiscal
//=================================================================================================
function EPSON_RelatorioFiscal_LeituraX():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_RelatorioFiscal_RZ(pszData:PChar; pszHora:PChar; dwHorarioVerao:Integer; pszCRZ:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_RelatorioFiscal_RZEx(dwHorarioVerao:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_RelatorioFiscal_Leitura_MF(pszInicio:PChar; pszFim:PChar; dwTipoImpressao:Integer; pszBuffer:PChar; pszArquivo:PChar; pdwTamanhoBuffer:PInteger; dwTamBuffer:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_RelatorioFiscal_Salvar_LeituraX(pszArquivo:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_RelatorioFiscal_Abrir_Dia():Integer;StdCall; External 'InterfaceEpson.dll';
//=================================================================================================
// EPSON_Obter
//=================================================================================================
function EPSON_Obter_Dados_Usuario(pszDadosUsuario:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Tabela_Aliquotas(pszTabelaAliquotas:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Total_Jornada(chOption:PChar; pszZnumber:PChar; pszData:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Tabela_Pagamentos(pszTabelaPagamentos:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Tabela_NaoFiscais(pszTabelaNaoFiscais:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Tabela_Relatorios_Gerenciais(pszTabelaRelatoriosGerenciais:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Total_Cancelado(pszTotalCancelado:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Total_Aliquotas(pszAliquotasTotal:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Total_Bruto(pszVendaBruta:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Total_Descontos(pszTotalDescontos:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Total_Troco(pszTotalTroco:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Total_Acrescimos(pszTotalAcrescimos:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Dados_Impressora(pszDadosImpressora:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Cliche_Usuario(pszDadosUsuario:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Data_Hora_Jornada(pszDataHora:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Numero_ECF_Loja(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Hora_Relogio(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Simbolo_Moeda(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Casas_Decimais(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Contadores(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Estado_Impressora(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_GT(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Linhas_Impressas(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Linhas_Impressas_RG(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Linhas_Impressas_CCD(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Linhas_Impressas_Vendas(pszLinhasImpressas:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Linhas_Impressas_Pagamentos(pszLinhasImpressas:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Total_Itens_Vendidos(pszItens:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Estado_Memoria_Fiscal(pszEstado:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Estado_MFD(pszEstado:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Total_Leituras_X_Impressas(pszLeituras:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Dados_Jornada(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Caracteres_Linha(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Operador(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Numero_Ultimo_Item(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Informacao_Item(pszNumeroItem:PChar; pszDadosItem:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Estado_Cupom(pszEstado:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Informacao_Ultimo_Documento(pszInfo:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Estado_Corte_Papel(Var bHabilitado:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Estado_Horario_Verao(Var bEstado:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Venda_Bruta(pszBrutAmount:PChar; pszLastBrutAmount:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Mensagem_Erro(pszCodigoErro:PChar; pszMensagemErro:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Dados_MF_MFD(pszInicio:PChar; pszFinal:PChar; dwTipoEntrada:Integer; dwEspelhos:Integer; dwAtoCotepe:Integer; dwSintegra:Integer; pszArquivoSaida:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Versao_DLL(pszVersao:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Total_JornadaEX(pszOption:Pchar;pszZnumber:PChar;pszData:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Dados_Arquivos_MF_MFD(pszInicio:PChar;pszFim:Pchar;dwTipoEntrada:Integer;dwEspelhos:Integer;dwAtoCOTEPE:Integer;dwSintegra:Integer;pszArquivoSaida:PChar;pszArquivoMF:PChar;pszArquivoMFD:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Separar_AtoCOTEPE(pszFileName:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Salvar_Binario_MF(pszArquivo:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Arquivo_Binario_MFD(pszFileName:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Dados_Ultima_RZ(pszLastRZData:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
//=================================================================================================
// EPSON_Config
//=================================================================================================
function EPSON_Config_Aliquota(pszTaxa:PChar; bTipoISS:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Relatorio_Gerencial(pszReportDescription:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Forma_Pagamento(bVinculado:Boolean; pszNumeroMeio:PChar; pszDescricao:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Totalizador_NaoFiscal(pszDescricao:PChar; Var pdwNumeroTotalizador:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Corte_Papel(bHabilitado:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Horario_Verao():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Espaco_Entre_Documentos(pszLinhas:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Espaco_Entre_Linhas(pszEspacos:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Logotipo(pszDados:PChar; dwTamDados:Integer; pszLinha:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Habilita_Logotipo(bHabilita:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Operador(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_OperadorEX(pszDados:PChar; dwReport:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Serial_Impressora(pszVelocidade:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Dados_Sintegra(pszRazaoSocial:PChar; pszLogradouro:PChar; pszNumero:PChar; pszComplemento:PChar; pszBairro:PChar; pszMunicipio:PChar; pszCEP:PChar; pszUF:PChar; pszFax:PChar; pszFone:PChar; pszNomeContato:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Download_Segmentado_MFD(bHabilita:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
//=================================================================================================
// EPSON_Cheque
//=================================================================================================
function EPSON_Cheque_Configurar_Moeda(pszSingular:PChar; pszPlural:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Cheque_Configurar_Parametros1(pszNumeroRegistro:PChar; pszValorX:PChar; pszValorY:PChar; pszDescricao1X:PChar; pszDescricao1Y:PChar; pszDescricao2X:PChar; pszDescricao2Y:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Cheque_Configurar_Parametros2(pszNumeroRegistro:PChar; pszParaX:PChar; pszParaY:PChar; pszCidadeX:PChar; pszCidadeY:PChar; pszOffsetDia:PChar; pszOffsetMes:PChar; pszOffsetAno:PChar; pszAdicionalX:PChar; pszAdicionalY:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Cheque_Imprimir(pszNumeroRegistro:PChar; pszValor:PChar; dwCasasDecimais:Integer; ByValpszPara:PChar; pszCidade:PChar; pszDados:PChar; pszTexto:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Cheque_ImprimirEX(pszNumeroRegistro:PChar; pszValor:PChar; dwCasasDecimais:Integer; pszPara:PChar; pszCidade:PChar; pszDados:PChar; pszTexto:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Cheque_Preparar_Endosso():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Endosso_Estacao_Cheque(pszToX:PChar;pszToY:PChar;dwHorizontal:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Cheque_Imprimir_Endosso(pszLinhaTexto:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Cheque_Ejetar_Endosso():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Cheque_Cancelar_Impressao():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Endosso_Estacao_ChequeEX(pszToX:PChar;pszToY:PChar;dwHorizontal:Integer;pszText:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Cheque_Ler_MICR(pszMICR:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
//=================================================================================================
// EPSON_Impressora
//=================================================================================================
function EPSON_Impressora_Abrir_Gaveta():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Impressora_Avancar_Papel(dwLines:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Impressora_Cortar_Papel():Integer;StdCall; External 'InterfaceEpson.dll';
//=================================================================================================
// EPSON_Autenticar
//=================================================================================================
function EPSON_Autenticar_Imprimir(pszMensagem:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Autenticar_Reimprimir():Integer;StdCall; External 'InterfaceEpson.dll';
//=================================================================================================
// EPSON_Sys
//=================================================================================================
function EPSON_Sys_Informar_Handle_Janela(HWNDHandle:THandle):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Sys_Atualizar_Janela():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Sys_Aguardar_Arquivo(pszArquivo:PChar; dwTimeout:Integer; bBloqueiaEntradas:Boolean; bSincrono:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Sys_Bloquear_Entradas(bBloqueiaEntradas:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Sys_Log(pszPath:PChar; dwAction:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
//=================================================================================================
// EPSON_Display
//=================================================================================================
function EPSON_Display_Enviar_Texto(pszTexto:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Display_Set_Cursor(dwAcao:Integer; dwColuna:Integer; dwLinha:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Display_Apagar_Texto(dwLinha:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Display_Configurar(dwBrilho:Integer; dwLampejo:Integer; dwRolagem:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Display_Inicializar(dwAcao:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
//=================================================================================================


{===============================================================================
********************************************************************************

                      DECLARA��O DAS FUN��ES DA BEMAFI32.DLL

********************************************************************************
===============================================================================}

// Fun��es de Inicializa��o 

{function Bematech_FI_AlteraSimboloMoeda( SimboloMoeda: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ProgramaAliquota( Aliquota: String; ICMS_ISS: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ProgramaHorarioVerao: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_NomeiaDepartamento( Indice: Integer; Departamento: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_NomeiaTotalizadorNaoSujeitoIcms( Indice: Integer; Totalizador: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ProgramaArredondamento: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ProgramaTruncamento: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_ProgramaTruncamento'; 
function Bematech_FI_LinhasEntreCupons( Linhas: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_EspacoEntreLinhas( Dots: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ForcaImpactoAgulhas( ForcaImpacto: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 

// Fun��es do Cupom Fiscal 

function Bematech_FI_AbreCupom( CGC_CPF: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VendeItem( Codigo: String; Descricao: String; Aliquota: String; TipoQuantidade: String; Quantidade: String; CasasDecimais: Integer; ValorUnitario: String; TipoDesconto: String; Desconto: String): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VendeItemDepartamento( Codigo: String; Descricao: String; Aliquota: String; ValorUnitario: String; Quantidade: String; Acrescimo: String; Desconto: String; IndiceDepartamento: String; UnidadeMedida: String): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_CancelaItemAnterior: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_CancelaItemGenerico( NumeroItem: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_CancelaCupom: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_FechaCupomResumido( FormaPagamento: String; Mensagem: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_FechaCupom( FormaPagamento: String; AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String; ValorPago: String; Mensagem: String): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ResetaImpressora: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_IniciaFechamentoCupom( AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_EfetuaFormaPagamento( FormaPagamento: String; ValorFormaPagamento: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_EfetuaFormaPagamentoDescricaoForma( FormaPagamento: string; ValorFormaPagamento: string; DescricaoFormaPagto: string ): integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_TerminaFechamentoCupom( Mensagem: String): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_EstornoFormasPagamento( FormaOrigem: String; FormaDestino: String; Valor: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_UsaUnidadeMedida( UnidadeMedida: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_AumentaDescricaoItem( Descricao: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EfetuaFormaPagamentoImpAntiga( FormaPagamento: String; ValorFormaPagamento: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 

// Fun��es dos Relat�rios Fiscais 

function Bematech_FI_LeituraX: Integer; StdCall; External 'BEMAFI32.DLL' ; 
function Bematech_FI_ReducaoZ( Data: String; Hora: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_RelatorioGerencial( Texto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
//function Bematech_FI_RelatorioGerencialTEF( Texto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaRelatorioGerencial: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_LeituraMemoriaFiscalData( DataInicial: String; DataFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_LeituraMemoriaFiscalReducao( ReducaoInicial: String; ReducaoFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_LeituraMemoriaFiscalSerialData( DataInicial: String; DataFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_LeituraMemoriaFiscalSerialReducao( ReducaoInicial: String; ReducaoFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 

// Fun��es das Opera��es N�o Fiscais 

function Bematech_FI_RecebimentoNaoFiscal( IndiceTotalizador: String; Valor: String; FormaPagamento: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_AbreComprovanteNaoFiscalVinculado( FormaPagamento: String; Valor: String; NumeroCupom: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_UsaComprovanteNaoFiscalVinculado( Texto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
//function Bematech_FI_UsaComprovanteNaoFiscalVinculadoTEF( Texto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaComprovanteNaoFiscalVinculado: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_Sangria( Valor: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_Suprimento( Valor: String; FormaPagamento: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 

// Fun��es de Informa��es da Impressora 

function Bematech_FI_NumeroSerie( NumeroSerie: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_SubTotal( SubTotal: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_NumeroCupom( NumeroCupom: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_LeituraXSerial: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VersaoFirmware( VersaoFirmware: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_CGC_IE( CGC: String; IE: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_GrandeTotal( GrandeTotal: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_Cancelamentos( ValorCancelamentos: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_Descontos( ValorDescontos: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_NumeroOperacoesNaoFiscais( NumeroOperacoes: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_NumeroCuponsCancelados( NumeroCancelamentos: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_NumeroIntervencoes( NumeroIntervencoes: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_NumeroReducoes( NumeroReducoes: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_NumeroSubstituicoesProprietario( NumeroSubstituicoes: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_UltimoItemVendido( NumeroItem: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ClicheProprietario( Cliche: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_NumeroCaixa( NumeroCaixa: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_NumeroLoja( NumeroLoja: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_SimboloMoeda( SimboloMoeda: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_MinutosLigada( Minutos: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_MinutosImprimindo( Minutos: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaModoOperacao( Modo: string ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaEpromConectada( Flag: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_FlagsFiscais( Var Flag: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ValorPagoUltimoCupom( ValorCupom: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_DataHoraImpressora( Data: String; Hora: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ContadoresTotalizadoresNaoFiscais( Contadores: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaTotalizadoresNaoFiscais( Totalizadores: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_DataHoraReducao( Data: String; Hora: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_DataMovimento( Data: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaTruncamento( Flag: string ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_Acrescimos( ValorAcrescimos: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ContadorBilhetePassagem( ContadorPassagem: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaAliquotasIss( Flag: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaFormasPagamento( Formas: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaRecebimentoNaoFiscal( Recebimentos: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaDepartamentos( Departamentos: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaTipoImpressora( Var TipoImpressora: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaTotalizadoresParciais( Totalizadores: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_RetornoAliquotas( Aliquotas: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaEstadoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_DadosUltimaReducao( DadosReducao: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_MonitoramentoPapel( Var Linhas: Integer): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaIndiceAliquotasIss( Flag: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ValorFormaPagamento( FormaPagamento: String; Valor: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ValorTotalizadorNaoFiscal( Totalizador: String; Valor: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 

// Fun��es de Autentica��o e Gaveta de Dinheiro 

function Bematech_FI_Autenticacao:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_Autenticacao'; 
function Bematech_FI_ProgramaCaracterAutenticacao( Parametros: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_AcionaGaveta:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_AcionaGaveta'; 
function Bematech_FI_VerificaEstadoGaveta( Var EstadoGaveta: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 

// Fun��es para a Impressora Restaurante 

function Bematech_FIR_AbreCupomRestaurante( Mesa: String; CGC_CPF: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_RegistraVenda( Mesa: String; Codigo: String; Descricao: String; Aliquota: String; Quantidade: String; ValorUnitario: String; FlagAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_CancelaVenda( Mesa: String; Codigo: String; Descricao: String; Aliquota: String; Quantidade: String; ValorUnitario: String; FlagAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_ConferenciaMesa( Mesa: String; FlagAcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_AbreConferenciaMesa( Mesa: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_FechaConferenciaMesa( FlagAcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_TransferenciaMesa( MesaOrigem: String; MesaDestino: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_ContaDividida( NumeroCupons: String; ValorPago: String; CGC_CPF: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_FechaCupomContaDividida( NumeroCupons: String; FlagAcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String; FormasPagamento: String; ValorFormasPagamento: String; ValorPagoCliente: String; CGC_CPF: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_TransferenciaItem( MesaOrigem: String; Codigo: String; Descricao: String; Aliquota: String; Quantidade: String; ValorUnitario: String; FlagAcrescimoDesconto: String; ValorAcrescimoDesconto: String; MesaDestino: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_RelatorioMesasAbertas( TipoRelatorio: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_ImprimeCardapio: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_RelatorioMesasAbertasSerial: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_CardapioPelaSerial: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_RegistroVendaSerial( Mesa: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_VerificaMemoriaLivre( Bytes: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_FechaCupomRestaurante( FormaPagamento: String; FlagAcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String; ValorFormaPagto: String; Mensagem: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_FechaCupomResumidoRestaurante( FormaPagamento: String; Mensagem: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 

// Fun��o para a Impressora Bilhete de Passagem 

function Bematech_FI_AbreBilhetePassagem( ImprimeValorFinal: string; ImprimeEnfatizado: string; Embarque: string; Destino: string; Linha: string; Prefixo: string; Agente: string; Agencia: string; Data: string; Hora: string; Poltrona: string; Plataforma: string ): Integer; StdCall; External 'BEMAFI32.DLL'; 

// Fun��es de Impress�o de Cheques 

function Bematech_FI_ProgramaMoedaSingular( MoedaSingular: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ProgramaMoedaPlural( MoedaPlural: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_CancelaImpressaoCheque: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaStatusCheque( Var StatusCheque: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ImprimeCheque( Banco: String; Valor: String; Favorecido: String; Cidade: String; Data: String; Mensagem: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_IncluiCidadeFavorecido( Cidade: String; Favorecido: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ImprimeCopiaCheque: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_ImprimeCopiaCheque'; 

// Outras Fun��es 

function Bematech_FI_AbrePortaSerial: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_RetornoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_FechaPortaSerial: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_FechaPortaSerial'; 
function Bematech_FI_MapaResumo:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_MapaResumo'; 
function Bematech_FI_AberturaDoDia( ValorCompra: string; FormaPagamento: string ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechamentoDoDia: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_FechamentoDoDia';
function Bematech_FI_ImprimeConfiguracoesImpressora:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_ImprimeConfiguracoesImpressora';
function Bematech_FI_ImprimeDepartamentos: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_ImprimeDepartamentos';
function Bematech_FI_RelatorioTipo60Analitico: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_RelatorioTipo60Analitico';
function Bematech_FI_RelatorioTipo60Mestre: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_RelatorioTipo60Mestre';
function Bematech_FI_VerificaImpressoraLigada: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_VerificaImpressoraLigada';
//function Bematech_FI_DadosSintegra( DataInicial: string; DataFinal: string ): integer; StdCall; External 'BEMAFI32.DLL';

// Fun��es da Impressora Fiscal MFD

function Bematech_FI_AbreCupomMFD(CGC: string; Nome: string; Endereco : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaCupomMFD(CGC, Nome, Endereco: string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ProgramaFormaPagamentoMFD(FormaPagto, OperacaoTef: String) : Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EfetuaFormaPagamentoMFD(FormaPagamento, ValorFormaPagamento, Parcelas, DescricaoFormaPagto: string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CupomAdicionalMFD(): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AcrescimoDescontoItemMFD (Item, AcrescimoDesconto,TipoAcrescimoDesconto, ValorAcrescimoDesconto: string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NomeiaRelatorioGerencialMFD (Indice, Descricao : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AutenticacaoMFD(Linhas, Texto : string) : Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AbreComprovanteNaoFiscalVinculadoMFD(FormaPagamento, Valor, NumeroCupom, CGC, nome, Endereco : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ReimpressaoNaoFiscalVinculadoMFD() : Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AbreRecebimentoNaoFiscalMFD(CGC, Nome, Endereco : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EfetuaRecebimentoNaoFiscalMFD(IndiceTotalizador, ValorRecebimento : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_IniciaFechamentoCupomMFD(AcrescimoDesconto,TipoAcrescimoDesconto, ValorAcrescimo, ValorDesconto : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_IniciaFechamentoRecebimentoNaoFiscalMFD(AcrescimoDesconto,TipoAcrescimoDesconto, ValorAcrescimo, ValorDesconto : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaRecebimentoNaoFiscalMFD(Mensagem : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaRecebimentoNaoFiscalMFD(CGC, Nome, Endereco : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AbreRelatorioGerencialMFD(Indice : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_UsaRelatorioGerencialMFD(Texto : string): Integer; StdCall; External 'BEMAFI32.DLL';
//function Bematech_FI_UsaRelatorioGerencialMFDTEF(Texto : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_SegundaViaNaoFiscalVinculadoMFD(): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EstornoNaoFiscalVinculadoMFD(CGC, Nome, Endereco : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroSerieMFD(NumeroSerie : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VersaoFirmwareMFD(VersaoFirmware : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CNPJMFD(CNPJ : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_InscricaoEstadualMFD(InscricaoEstadual : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_InscricaoMunicipalMFD(InscricaoMunicipal : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TempoOperacionalMFD(TempoOperacional : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_MinutosEmitindoDocumentosFiscaisMFD(Minutos : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadoresTotalizadoresNaoFiscaisMFD(Contadores : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaTotalizadoresNaoFiscaisMFD(Totalizadores : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaFormasPagamentoMFD(FormasPagamento : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaRecebimentoNaoFiscalMFD(Recebimentos : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaRelatorioGerencialMFD(Relatorios : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorComprovantesCreditoMFD(Comprovantes : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorOperacoesNaoFiscaisCanceladasMFD(OperacoesCanceladas : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorRelatoriosGerenciaisMFD (Relatorios : String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorCupomFiscalMFD(CuponsEmitidos : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorFitaDetalheMFD(ContadorFita : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ComprovantesNaoFiscaisNaoEmitidosMFD(Comprovantes : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroSerieMemoriaMFD(NumeroSerieMFD : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_MarcaModeloTipoImpressoraMFD(Marca, Modelo, Tipo : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ReducoesRestantesMFD(Reducoes : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaTotalizadoresParciaisMFD(Totalizadores : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DadosUltimaReducaoMFD(DadosReducao : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalDataMFD(DataInicial, DataFinal, FlagLeitura : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalReducaoMFD(ReducaoInicial, ReducaoFinal, FlagLeitura : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialDataMFD(DataInicial, DataFinal, FlagLeitura : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialReducaoMFD(ReducaoInicial, ReducaoFinal, FlagLeitura : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraChequeMFD(CodigoCMC7 : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ImprimeChequeMFD(NumeroBanco, Valor, Favorecido, Cidade, Data, Mensagem, ImpressaoVerso, Linhas : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_HabilitaDesabilitaRetornoEstendidoMFD(FlagRetorno : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RetornoImpressoraMFD(var ACK, ST1, ST2, ST3 : Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AbreBilhetePassagemMFD(Embarque, Destino, Linha, Agencia, Data, Hora, Poltrona, Plataforma, TipoPassagem: string ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaAcrescimoDescontoItemMFD( cFlag, cItem: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_SubTotalizaCupomMFD: integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_SubTotalizaRecebimentoMFD: integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TotalLivreMFD( cMemoriaLivre: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TamanhoTotalMFD( cTamanhoMFD: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AcrescimoDescontoSubtotalRecebimentoMFD( cFlag, cTipo, cValor: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AcrescimoDescontoSubtotalMFD( cFlag, cTipo, cValor: string): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaAcrescimoDescontoSubtotalMFD( cFlag: string): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaAcrescimoDescontoSubtotalRecebimentoMFD( cFlag: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TotalizaCupomMFD: integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TotalizaRecebimentoMFD: integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_PercentualLivreMFD( cMemoriaLivre: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DataHoraUltimoDocumentoMFD( cDataHora: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_MapaResumoMFD:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_MapaResumoMFD';
function Bematech_FI_RelatorioTipo60AnaliticoMFD: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_RelatorioTipo60AnaliticoMFD';
function Bematech_FI_ValorFormaPagamentoMFD( FormaPagamento: String; Valor: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ValorTotalizadorNaoFiscalMFD( Totalizador: String; Valor: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaEstadoImpressoraMFD( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer; Var ST3: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RelatorioSintegraMFD( iRelatorios : Integer; 
                                           cArquivo    : String; 
                                           cMes        : String; 
                                           cAno        : String; 
                                           cRazaoSocial: String;
                                           cEndereco   : String;
                                           cNumero     : String;
                                           cComplemento: String;
                                           cBairro     : String;
                                           cCidade     : String;
                                           cCEP        : String;
                                           cTelefone   : String;
                                           cFax        : String;
                                           cContato    : String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DownloadMF( Arquivo: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DownloadMFD( Arquivo: String; TipoDownload: String; ParametroInicial: String; ParametroFinal: String; UsuarioECF: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RegistrosTipo60: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_RegistrosTipo60';
function Bematech_FI_FormatoDadosMFD( ArquivoOrigem   : String;
                                      ArquivoDestino  : String;
                                      TipoFormato     : String;
                                      TipoDownload    : String;
                                      ParametroInicial: String;
                                      ParametroFinal  : String;
                                      UsuarioECF      : String ): Integer; StdCall; External 'BEMAFI32.DLL';

// Fun��es dispon�veis somente na impressora fiscal MP-2000 TH FI vers�o 01.00.02
function Bematech_FI_AtivaDesativaVendaUmaLinhaMFD( iFlag: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AtivaDesativaAlinhamentoEsquerdaMFD( iFlag: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AtivaDesativaCorteProximoMFD(): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AtivaDesativaTratamentoONOFFLineMFD( iFlag: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_StatusEstendidoMFD( Var iStatus: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaFlagCorteMFD( Var iStatus: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TempoRestanteComprovanteMFD( cTempo: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_UFProprietarioMFD( cUF: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_GrandeTotalUltimaReducaoMFD( cGT: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DataMovimentoUltimaReducaoMFD( cData: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_SubTotalComprovanteNaoFiscalMFD( cSubTotal: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_InicioFimCOOsMFD( cCOOIni, cCOOFim: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_InicioFimGTsMFD( cGTIni, cGTFim: String ): Integer; StdCall; External 'BEMAFI32.DLL';

// Fun��es para a impress�o de C�digo de Barras

function Bematech_FI_TerminaFechamentoCupomCodigoBarrasMFD( cMensagem: string;
                                                            cTipoCodigo: string;
                                                            cCodigo: string;
                                                            iAltura: integer;
                                                            iLargura: integer;
                                                            iPosicaoCaracteres: integer;
                                                            iFonte: integer;
                                                            iMargem: integer;
                                                            iCorrecaoErros: integer;
                                                            iColunas: integer ): Integer; StdCall; External 'BEMAFI32.DLL';  }

{ Fim da Declara��o }

{$R *.dfm}

function RemoveChar(Const Texto:String):String;
//
// Remove caracteres de uma string deixando apenas numeros
//
var
I: integer;
S: string;
begin
S := '';
for I := 1 To Length(Texto) Do
begin
if (Texto[I] in ['0'..'9']) then
begin
S := S + Copy(Texto, I, 1);
end;
end;
result := S;
end;

procedure TfrmRecebeLoja.Tratar_RetornoSAT(iRetorno:integer);
var
  Str_Msg: String;
begin
   Str_Msg:=StringOFChar(#0,300);

   if (iRetorno=1) then
   begin
     Str_Msg := 'Comando executado com sucesso!';
   end
   else
   begin
      case iRetorno of
         0: Str_Msg:= '[0] - M�todo n�o executado/ Tag inv�lida/ N�o foi poss�vel comunicar com impressora';
         //retorno 0, depende do m�todo que foi chamado tem significado diferente.
        -6: Str_Msg:= '[-6] - TimeOut, erro de comunica��o com o SAT';
        -7: Str_Msg:= '[-7] - Erro ao abrir comunica��o com o SAT';
        -40: Str_Msg:= '[-40] - Tag XML inv�lida';
        -50: Str_Msg:= '[-50] - Impressora off-Line';
        -51: Str_Msg:= '[-51] - Impressora sem papel';
        -99: Str_Msg:= '[-99] - Par�metro inv�lido ou ponteiro nulo de par�metro';
        -120: Str_Msg:= '[-120] - Encontrada tag inv�lida';
        -121: Str_Msg:= '[-121] - Estrutura Invalida';
        -122: Str_Msg:= '[-122] - Tag obrigat�ria n�o foi informada';
        -123: Str_Msg:= '[-123] - Tag obrigat�ria n�o tem valor preenchido';
        -130: Str_Msg:= '[-130] - CFe j� aberto';
        -131: Str_Msg:= '[-131] - CFe n�o aberto';
        -132: Str_Msg:= '[-132] - CFe n�o em fase de venda';
        -133: Str_Msg:= '[-133] - CFe n�o em fase de totaliza��o';
        -134: Str_Msg:= '[-134] - CFe n�o em fase de pagamento';
        -135: Str_Msg:= '[-135] - CFe n�o em fase de encerramento';
        -136: Str_Msg:= '[-136] - CFe em estado inv�lido para opera��o';
        -140: Str_Msg:= '[-140] - Biblioteca auxiliar SAT.dll n�o foi encontrada/carregada';
        -141: Str_Msg:= '[-141] - Impressora inv�lida (modelo deve ser DR700 ou vers�o incompativel)';
        -142: Str_Msg:= '[-142] - Resposta Incompleta do SAT';
        /// Os c�digos de erro abaixo s�o retornados pelo SAT  para verificar mais retornos consulte a Especifica��o de Requisitos do SAT vigente.
        1084: Str_Msg:= '[1084] - Formato do Certificado Inv�lido';
        1085: Str_Msg:= '[1085] - Assinatura do Aplicativo Comercial n�o confere';
        1218: Str_Msg:= '[1218] - CF-e-SAT J� est� cancelado';
        1412: Str_Msg:= '[1412] - CFe de cancelamento n�o corresponde a um CFe emitido nos 30 minutos anteriores ao pedido de cancelamento';
        1999: Str_Msg:= '[1999] - Erro desconhecido';
        6001: Str_Msg:= '[6001] - C�digo de ativa��o inv�lido';
        6002: Str_Msg:= '[6002] - SAT ainda n�o ativado';
        6003: Str_Msg:= '[6003] - SAT n�o vinculado ao AC';
        6004: Str_Msg:= '[6004] - Vincula��o do AC n�o confere';
        6005: Str_Msg:= '[6005] - Tamanho do CFe superior a 1500KB';
        6006: Str_Msg:= '[6006] - SAT bloqueado pelo contribuinte';
        6007: Str_Msg:= '[6007] - SAT bloqueado pela SEFAZ';
        6008: Str_Msg:= '[6008] - SAT bloqueado por falta de comunica��o';
        6009: Str_Msg:= '[6009] - SAT bloqueado, c�digo de ativa��o incorreto';
        6010: Str_Msg:= '[6010] - Erro de valida��o do conte�do';
        6098: Str_Msg:= '[6098] - SAT em processamento. Tente novamente';
        6099: Str_Msg:= '[6099] - Erro desconhecido';
        7001: Str_Msg:= '[7001] - C�digo de ativa��o inv�lido';
        7002: Str_Msg:= '[7002] - Cupom Inv�lido';
        7003: Str_Msg:= '[7003] - SAT bloqueado pelo contribuinte';
        7004: Str_Msg:= '[7004] - SAT bloqueado pela SEFAZ';
        7005: Str_Msg:= '[7005] - SAT bloqueado por falta de comunica��o';
        7006: Str_Msg:= '[7006] - SAT bloqueado, c�digo de ativa��o incorreto';
        7007: Str_Msg:= '[7007] - Erro de valida��o do conte�do';
        7098: Str_Msg:= '[7098] - SAT em processamento. Tente novamente';
        7099: Str_Msg:= '[7099] - Erro desconhecido';
        8098: Str_Msg:= '[8098] - SAT em processamento. Tente novamente';
        8099: Str_Msg:= '[8099] - Erro desconhecido';
        10001: Str_Msg:= '[10001] - C�digo de ativa��o inv�lido';
        10098: Str_Msg:= '[10098] - SAT em processamento. Tente novamente';
        10099: Str_Msg:= '[10099] - Erro desconhecido';
        13001: Str_Msg:= '[13001] - C�digo de ativa��o inv�lido';
        13002: Str_Msg:= '[13002] - Erro de comunica��o com a SEFAZ';
        13003: Str_Msg:= '[13003] - Assinatura fora do padr�o informado';
        13098: Str_Msg:= '[13098] - SAT em processamento. Tente novamente';
        13099: Str_Msg:= '[13099] - Erro desconhecido';

        else
          Str_Msg:= '['+ IntToStr(iRetorno)+'] - N�mero de Erro n�o identificado... Consulte a Especifica��o de Requisitos SAT vigente.';
      end;
 end;
 Application.MessageBox(pchar(Str_Msg), 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
end;

procedure TfrmRecebeLoja.Commit(IBQueryExec : TIBQuery);
begin

  with dmModule do begin

    with IBQueryExec do begin

      SQL.Clear;
      SQL.Add('Commit');
      Open;
      Close;

    end;

  end;

end;


procedure TfrmRecebeLoja.ExecSELECTTipoPagto;

begin

  with dmModule do begin

    ibTipoPagtoF.Close;
    ibTipoPagtoF.SQL.Clear;
    ibTipoPagtoF.SQL.Add('SELECT * FROM TBLTIPOPAGTOAVULSO');
    ibTipoPagtoF.Open;

    cboTipoPagto.Clear;

    while not ibTipoPagtoF.Eof do begin

      IDTipoPagto    := TClasseCombo.Create;
      IDTipoPagto.ID := ibTipoPagtoF.FieldByName('IDTIPO').AsInteger;
      cboTipoPagto.Items.AddObject(ibTipoPagtoF.FieldByName('DESCRICAO').AsString,IDTipoPagto);
      cboTipoPagto.ItemIndex := 0;
      ibTipoPagtoF.Next;

    end;{while}
    
  end;{with}

end;

procedure TfrmRecebeLoja.ExecSELECTTPagto;

begin

  with dmModule do begin

    ibTipoPagtoF.Close;
    ibTipoPagtoF.SQL.Clear;
    ibTipoPagtoF.SQL.Add('SELECT * FROM TBLTIPOPAGTOAVULSO');
    ibTipoPagtoF.Open;

    cboTPagto.Clear;

    while not ibTipoPagtoF.Eof do begin

      IDTPagto    := TClasseCombo.Create;
      IDTPagto.ID := ibTipoPagtoF.FieldByName('IDTIPO').AsInteger;
      cboTPagto.Items.AddObject(ibTipoPagtoF.FieldByName('DESCRICAO').AsString,IDTPagto);
      ibTipoPagtoF.Next;

    end;{while}

  end;//with

end;

procedure TfrmRecebeLoja.ExecSELECTCondPagto;

begin

  with dmModule do begin

  ibCondicoesPagto.Close;
  ibCondicoesPagto.SQL.Clear;
  ibCondicoesPagto.SQL.Add('SELECT * FROM CONDICOESPAGAMENTO');
  ibCondicoesPagto.Open;

  cboCondPagto.Clear;

    while not ibCondicoesPagto.Eof do begin

      IDCondPagto := TClasseCombo.Create;
      IDCondPagto.ID := ibCondicoesPagto.FieldByName('IDCONDPAGTO').AsInteger;
      cboCondPagto.Items.AddObject(ibCondicoesPagto.FieldByName('DESCRICAO').AsString,IDCondPagto);
      ibCondicoesPagto.Next;

    end;//while

  end;//with

end;

procedure TfrmRecebeLoja.cboTipoPagtoKeyPress(Sender: TObject;
  var Key: Char);
begin

  if Key = #13 Then begin

   if cboTipoPagto.Text <> 'PENDENTE' Then begin
   lbl_edtValor.Text := lbl_edtTotalVenda.Text;
   end;

   if cboTipoPagto.Text = 'PENDENTE' Then begin
   lbl_edtValor.Text := '0,00';
   end;

   cboTipoPagto.DroppedDown := True;
   SendMessage(cboTipoPagto.Handle,CB_SHOWDROPDOWN,1,0);

         if cboTipoPagto.ItemIndex = - 1 Then begin

            StringTipoPagamento        := ' ''0'',';

          end else begin

            IDTipoPagamento  := TClasseCombo( cboTipoPagto.Items.Objects[cboTipoPagto.ItemIndex] );

            StringTipoPagamento  := ' ''' + InttoStr( IDTipoPagamento.ID ) + ''',';



          end;

  // lbl_edtDescontoP.SetFocus;
     lbl_edtDesconto.SetFocus;
     
  end;

end;

procedure TfrmRecebeLoja.cboTipoPagtoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

  cboTipoPagto.DroppedDown := True;
  SendMessage(cboTipoPagto.Handle,CB_SHOWDROPDOWN,1,0);
  
end;

procedure TfrmRecebeLoja.FormShow(Sender: TObject);

var

  ibTempProd : TIBQuery;
 /// IDVeiculo : Integer;
  
begin

  
  lbl_CodVendaMPV.Caption := '';
  cboTipoPagto.SetFocus;
  dtpDataCheque.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));

  //ckValor.Checked := False;
 // ckPorcentagem.Checked := False;

  lbl_edtValor.Text     := '0,00';
  lbl_edtTroco.Text     := '0,00';
  lbl_edtDesconto.Text  := '0,00';
  lbl_edtAcrescimo.Text := '0,00';
  lbl_edtDescontoP.Clear;
  lbl_edtNumCheque.Clear;
  lbl_edtCodCli.Clear;
  lbl_edtNomeCliente.Clear;
  lbl_edtKM.Clear;


      if (frmVendasLoja.lbl_Cliente.Caption <> '')and(frmVendasLoja.lbl_edtCnpjCpf.Caption = '') Then begin

        lbl_edtNomeCliente.Text := frmVendasLoja.lbl_Cliente.Caption;
        lbl_edtCodCli.Text      := frmVendasLoja.lbl_CodCliente.Caption;

      end;


      if (frmVendasLoja.lbl_CodCliente.Caption <> '') then begin

      IDVendaCliente := StrToInt(frmVendasLoja.lbl_CodCliente.Caption);

      end;

      if frmVendasLoja.lbl_CodCliente.Caption = '' then begin

      IDVendaCliente := 0;

      end;

      if frmVendasLoja.lbl_NomeFuncComissao.Caption <> '' Then begin

        IDFuncComiss := StrToInt(frmVendasLoja.lbl_IDFuncComissao.Caption);

      end else begin

        IDFuncComiss := 0;

      end;//id idfunccomissao

     // NomeFunc := frmVendasLoja.lbl_Funcionario.Text;

  with dmModule do begin

        

        ExecSELECTCondPagto;

      if frmVendasLoja.lbl_CodVenda.Caption > '0' Then begin

        IDVenda := StrToInt(frmVendasLoja.lbl_CodVenda.Caption);

        ibServsVendasCli.Close;
        ibServsVendasCli.SQL.Clear;
        ibServsVendasCli.SQL.Add('SELECT IDSERVSVENDA FROM TBLSERVICOSVENDAS ORDER BY IDSERVSVENDA DESC');
        ibServsVendasCli.Open;

        InsereVenda := True;

          ibTempProd := TIBQuery.Create(Self); //CRIA O COMPONENTE NO FORMULARIO ATUAL

            with ibTempProd do begin

              //BUSCA TODOS OS PRODUTOS QUE ESTEJAM NA CLASSIFICA��O DE PRODUTOS
              ibTempProd.Database := IBDGeral; //ATRIBUI O DATABASE DO IBGERAL PRA LOCALIZAR O BANCO DE DADOS


              Commit(ibTempProd);
              ibTempProd.SQL.Clear;
              ibTempProd.SQL.Add('SELECT TBLSERVICOSVENDAS.IDPROD,TBLSERVICOSVENDAS.IDSERVSVENDA,'
              + 'TBLSERVICOSVENDAS.QTDE,TBLSERVICOSVENDAS.VLRTOTAL,TBLSERVICOSVENDAS.VALORB,'
              + 'TBLSERVICOSVENDAS.VALORC,TBLSERVICOSVENDAS.VLRUNIT FROM TBLSERVICOSVENDAS'
              + ' WHERE  TBLSERVICOSVENDAS.IDSERVSVENDA=''' + IntToStr(IDVenda) + '''');
              ibTempProd.Open;

              ValorTotal  := 0;
              ValorTotalB := 0;
              ValorTotalC := 0;

             end;{if temporario}


              while not ibTempProd.Eof do begin

                if (ValorTotal = 0) and (ValorTotalB = 0) and (ValorTotalC = 0) Then begin//se variavel for igual a zero

                  //atribui o vlr do campo abaixo na variavel
                  ValorTotal  := StrtoFloat(StringReplace(FloattoStr(ibTempProd.FieldByName('VLRTOTAL').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
                  ValorTotalB := StrToFloat(StringReplace(FloatToStr(ibTempProd.FieldByName('VALORB').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
                  ValorTotalC := StrToFloat(StringReplace(FloatToStr(ibTempProd.FieldByName('VALORC').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

                end else begin

                  //atribui na variavel substituindo o ponto para vlr em branco
                  TotalVenda   := StringReplace(FloattoStr(ibTempProd.FieldByName('VLRTOTAL').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
                  TotalVendaB  := StringReplace(FloatToStr(ibTempProd.FieldByName('VALORB').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
                  TotalVendaC  := StringReplace(FloatToStr(ibTempProd.FieldByName('VALORC').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);


                  //atribui a variavel o valor separando por ponto
                  ValorTotal  := ValorTotal + StrtoFloat(StringReplace(TotalVenda,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
                  ValorTotalB := ValorTotalB + StrtoFloat(StringReplace(TotalVendaB,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
                  ValorTotalC := ValorTotalC + StrtoFloat(StringReplace(TotalVendaC,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

                 end;

                  TotalBC := ValorTotalB + ValorTotalC;

                  if (TotalBC = 0)  Then begin

                    TotalGeral :=  ValorTotal;

                  end else begin

                    TotalGeral := TotalBC + ValorTotal;


                  end;

             //   end;{if}

                ibTempProd.Next;//vai para o pproximo registro pro looping nao ficar infinito.

            end;{while}



      end;//if



           lbl_edtTotalVenda.Text := frmVendasLoja.lbl_edtSubTotal.Caption;

           { if frmVendasloja.lbl_edtNPed.Text <> '' Then begin

              NPedido := frmVendasLoja.lbl_edtNPed.Text;
              lbl_edtTotalVenda.Text := frmVendasLoja.lbl_edtSubTotal.Text;

            end;}//if
        ExecSELECTTPagto;
        ExecSELECTTipoPagto;

        {  If frmVendasLoja.cboCliente.ItemIndex = -1 Then begin

            StringCliVenda          := ' '' 0 '',';

          end else begin

            IDCliVenda   := TClasseCombo( frmVendasLoja.cboCliente.Items.Objects[frmVendasLoja.cboCliente.ItemIndex] );
            StringCliVenda          := ' ''' + InttoStr( IDCliVenda.ID ) + ''',';

          end;}//if

  end;

end;

procedure TfrmRecebeLoja.lbl_edtValorExit(Sender: TObject);

var

//ImpressaoTermica,DarumaMFD : String;
ConfirmaTipoPagto : Integer;
//Valor1 : Real;
//VlrPagto1, VlrPagto2, VlrTotalVendaCX : TVendasCaixa;
begin
  with dmModule do begin

    tedit(sender).color := clwindow;
    
   { VlrPagto1 := TVendasCaixa.Create();
    VlrPagto2 := TVendasCaixa.Create();
    VlrTotalVendaCX := TVendasCaixa.Create();
    


      try  }

        lbl_edtValor.Text := StringReplace(lbl_edtValor.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
        lbl_edtValor.Text := FormatFloat(',0.00',strToFloat(lbl_edtValor.Text));

       { VlrPagto2.VlrPago     := StrToFloat(StringReplace(lbl_edtValorPago.Text,ThousandSeparator,'',[rfReplaceAll]));
        lbl_edtValorPago.Text := FormatFloat(',0.00',(VlrPagto2.VlrPago));

        VlrTotalVendaCX.VlrTotalVenda := StrToFloat(StringReplace(lbl_edtTotalVenda.Text,ThousandSeparator,'',[rfReplaceAll]));
        lbl_edtTotalVenda.Text := FormatFloat(',0.00',(VlrTotalVendaCX.VlrTotalVenda));

          if VlrPagto1.VlrPago < VlrTotalVendaCX.VlrTotalVenda Then begin

            lbl_edtValorPago.Text := FormatFloat(',0.00',(VlrTotalVendaCX.VlrTotalVenda - VlrPagto1.VlrPago));
            cboTPagto.SetFocus;

          end; }


        if cboTipoPagto.Text = '' Then begin

          ConfirmaTipoPagto := Application.MessageBox('Tipo de Pagto est� em Branco?,Favor Lan�ar um Tipo de Pagamento para Finalizar a Venda?','Tipo de Pagto em Branco',+MB_OK+MB_DEFBUTTON1+MB_ICONERROR);

          //if ConfirmaTipoPagto = 6 Then begin

          cboTipoPagto.SetFocus;

          end else begin

         { Commit(ibConfig);
          ibConfig.Close;
          ibConfig.SQL.Clear;
          ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
          ibConfig.Open;

          ImpressaoTermica   := ibConfig.FieldByName('IMPRESSORATERMICA').AsString;
          DarumaMFD          := ibConfig.FieldByName('DARUMAMFD').AsString;

          if (ImpressaoTermica = 'Sim')and(DarumaMFD = 'Sim')Then begin

            if (lbl_edtValor.Text = '0,00')or(lbl_edtValor.Text = '0')Then begin

              Application.MessageBox('Para continuar � necess�rio digitar o valor pago','Valor n�o Digitado',+MB_OK+MB_DEFBUTTON1+MB_ICONWARNING);

              lbl_edtValor.SetFocus;

            end;


          end; }

           { if (lbl_edtNomeCliente.Text='')and(cboTipoPagto.Text = 'PENDENTE') Then begin

            Application.MessageBox('Para lan�amento de pendentes � necess�rio selecionar um cliente, precione f3 para este procedimento','Cliente n�o selecionado',+MB_OK+MB_DEFBUTTON1+MB_ICONWARNING);

            end; }

         //   lbl_edtValor.Text := FormatFloat(CasasDecimais('Produtos'),StrToFloat(lbl_edtValor.Text));

        end;//if cbo tipopagto em branco

   { finally

      FreeAndNil(VlrPagto1);
      FreeAndNil(VlrPagto2);
      FreeAndNil(VlrTotalVendaCX);

    end; }

  end;{with}

end;

procedure TfrmRecebeLoja.lbl_edtTotalVendaKeyPress(Sender: TObject;
  var Key: Char);


begin

  if Key = #13 then begin

    lbl_edtTroco.SetFocus;

  end;

end;

procedure TfrmRecebeLoja.lbl_edtTrocoExit(Sender: TObject);

var
IDTipoDoc : Integer;
Convenio, SituacaoPed, Estoque, SituacaoCR : String;
IDFuncCaixa,IDProdPedVenda, IDVendasServsReceb : Integer;
ValordaVenda, Custo, QtdeVendida, QtdeEstoque, QtdeVendaEstoque, VlrProduto : Real;
TotaldaVenda, TotalCusto,NomeProduto, TotalQtde, EstoqueFinal, TotalProdEstoque : String;
SituacaoCliente : String;

StringTPagto,BematechMFD,strGavDaruma : String;
IDTPagto : TClasseCombo;

//IMPRESSAO  ,SwwedaMFD, BematechMFD,
AvisaCupom,ImprimirDireto,CupomTeste : String;
LPT1,COM1,DarumaMFD, EpsonMFD : String;
ConfirmaCupom,ImpressoraMatricial,ImpressoraTermica : Integer;

StringRecebeP : String;
IDClassRecebeP : TClasseCombo;

////////////////////////////////

//PARA O HIPERCARD

  AnoHC,MesHC,DiaHC : Word;
  DataPagtoHC,DataInicialHC, DataFinalHC : TDate;
  DataEmissaoHC, TxHiperCard : String;

////////////////////////////////////////////////////////////////////////////////

//PARA O VISA CREDITO

  AnoVC,MesVC,DiaVC : Word;
  DataPagtoVC,DataInicialVC, DataFinalVC : TDate;
  DataEmissaoVC, TxVisaCredito : String;

////////////////////////////////////////////////////////////////////////////////

//PARA O VISA DEBITO

  AnoVD,MesVD,DiaVD : Word;
  DataPagtoVD,DataInicialVD, DataFinalVD : TDate;
  DataEmissaoVD, TxVisaDebito : String;

////////////////////////////////////////////////////////////////////////////////

//PARA O MASTERCARD CREDITO

  AnoMC,MesMC,DiaMC : Word;
  DataPagtoMC,DataInicialMC, DataFinalMC : TDate;
  DataEmissaoMC, TxMastercardCredito : String;

////////////////////////////////////////////////////////////////////////////////

//PARA O MASTERCARD DEBITO

  AnoMD,MesMD,DiaMD : Word;
  DataPagtoMD,DataInicialMD, DataFinalMD : TDate;
  DataEmissaoMD, TxMastercardDebito : String;

////////////////////////////////////////////////////////////////////////////////
  A : TStrArray;
  CountIDUsuarios : longint;
  Dia,Mes,Ano, DiaDeb,MesDeb,AnoDeb : Word;
  DataInicial,DataFinal,DataPagto: TDate;
  TotalData,str,DataEmissao,CondPagto : String;
  i,SomaDia: integer;
  ValorParcelado : String;
  VlrTotalParc : String;

  TxVisaParc, TxMastercardParc : String;

  Valor1,Valor2,Valor3,Valor4,VlrConv, VlrArredond : Real;
  Valor5,ValorConvertido, DataConvertida, Hora : String;
/////////////////////////////////

   Cartao : String;
   NomeCliente : String;
   QtdedeSaltos : String;
   DesenhodeDivisao : String;
   FraseRodape,FrasePed,CXDialogo : String;
   IDClassPedido : Integer;
   Produto : Array[0..10] of String;

   PosVenda : String;

   //variaveis para impressora termica
   F : TextFile; 
   impressora : integer;
   //variaveis para tipo de impressao do cupom
   ImpressaoMatricial, ImpressaoTermica, ImprimirPosVenda : String;
   QtdeVenda,Unitario,Total, Historico : String;

   IDVendasServs : Integer;

   ValorDesconto,TotaldoDesconto, NomeVenda, Baixado : String;
   TotalVendaPorcentagem,DescontoPorcentagem : Real;
   ValorMultiplicado,TotalPorcentagem : Real;

  //DADOS DA EMPRESA

  Nome,Cnpj,IE,Endereco,Numero,Cidade,UF, ECF, Aliquota : String;
  CodBarras,NomeProd,VLrUnit,Qtde,Vlrtotal, strTipoQtde : String;
  Str_Tipo_de_Desconto,Str_Valor_do_Desconto, Str_Valor_Total  :String;
  Str_Acrescimo_ou_Desconto: String;
  Str_Tipo_do_Acrescimo_Desconto: String;
  Str_Valor_do_Acrescimo_Desconto: String;
  Str_Descricao_da_Forma_Pagamento: String;
  Str_Valor_da_Forma_Pagamento,Str_Valor_da_Forma_Pagamento2 : String;
  RQtde,RVlrUnit,RVlrTotal : Real;
  intVlrunit,intVlrtotal,Int_Casas_Decimais : Integer;
  Str_Nome_do_Consumidor: String;
  Str_Endereco: String;
  Str_CPF_ou_CNPJ: String;
  Str_Mensagem_Promocional: String;
  strNomeEmpr, strEndEmpr, strNumeroEmpr, strTelefoneEmpr, strBairroEmpr, strUFEmpr, strEnderecoEmpr : String;
  intIDCliCupom : Integer;
  CodigoPosVenda, IniciaCupomFiscalF4 : String;
//VARIAVEIS VENDE ITEM

Str_Codigo: String;

Str_Descricao: String;

Str_Aliquota: String;

Str_Tipo_de_Quantidade: String;

Str_Quantidade: String;
Str_UnidadeMedida : String;
Str_Valor_Unitario: String;
ProdutoID : Integer;
VlrDescontoMPV,sTipoCupomAdic : String;

IDMVP, ConfirmaChequePre, ConfirmaImpressao : Integer;
CupomOrc,Lpt1CupomOrc,szDados : String;
ProdutoMPV : Array[0..10] of String;
CaminhoImpressoraRede : String;
//VARIAVEL PARA OBTER SUBTOTAL

szSubTotal : array[0..20] of char;

//VARIAVEIS PARA IMPRESSORA EPSON

ValorUnitProd : Integer;
ValorAcrescimoDesconto,ValorPagoCliente,ValorPagoCliente2 : Real;

//abre cupom bematech  Str_CPF_ou_CNPJ, , Str_Endereco
Str_NomeCliente : String;

strVlrDescontoItem : String;
ImprimeCupomPedido : String;
//variaveis do calculo do imposto na venda

intIDProduto,intNCM: Integer;
strNCM,strTotalVenda,strQtde,NCM,strPorcNCM,resultado,InformaNCM, strNCMProd : String;
intNacionalidadeProd : Integer;
rTotalVlrVenda,rTotalQtde,rVlrPorcNCM,CalculoPorcentagem : Real;
rTotalImposto,rTotalGeralImposto,rSomaTotaldaVenda,RSomaaVenda : Real;
//rImpostoEstadual,rImpostoFederal :Real;
rResultadoemP : Real;
strResultadoemP : String;
AtivarCalcIBPT : Integer;
strCreditoCliente : String;
ncmexistente: Boolean;
rImpostoEstadual,rVlrImpostoEstadual,rCalculoImpEstadual,rTotalImpostoEstadual,rTotalGeralImpostoEstadual : Real;
strImpostoEstadual,resultadoestadual,strTotalpelosprodutos : String;

//impressao modelo relatorio no cupom

DescNormal,DescP,TotalDescontos : Real;
strTotalDescontos,HorarioVenda : String;
EnderecoCliente,NumeroCliente,BairroCliente,TelefoneCliente :String;
CepCliente,CidadeCliente,CaminhoImpressora,strVFiscal : String;

cAcresc,cDesc,cIndice,cUnidade,strVlrDesc,strRefProd   : String;

intSATDaruma : Integer;
Str_Nome,Str_CPF,str_PrecoUnit,str_TipoDescAcres,str_ValorDescAcres : String;
str_CodigoItem,str_UnidMedida,str_FormaPgto, str_FormaPgto2,str_CodCred, str_CodCred2,CaminhodeRede : String;
str_CupomAdic,str_InfoAdic, strNCMFixo,str_Valor, str_Valor2, TotalQtdeItens,TotalQtdeItensR,QtdeTotalItens,QtdeTotalItensR : String;
ConfirmaImprSAT,intCRT : Integer;
strCSOSN,strCST,strCFOP,strPIS,strIPI,strICMS,strCOFINS,DesenhoDivisao,Frase,strContadorItem, strContadorItem2: String;
rPIS,rIPI,rICMS,rCOFINS,QtdedeItens,QtdedeItensR,rVlrDesc :Real;
intImprSat, intCupomSimples,intContadorItem,intContadorItem2,intImprimirCupomSimples, intReImpressaoSC : Integer;
intImprCupomS, intCupomSat,intPagtoPosVenda,intReImpressaoCupom, intIDCliente : Integer;
Str_ParametroVenda,strNomeCli,strEnderecoCli,strNumeroCli,strBairroCli,strTelefoneCli : String;
strNomeProdCupom,strVlrUnitCupom,strVlrTotalCupom,strQtdeCupom : String;
intIdVendaOrc, intIdOrcamento : Integer;
IDProdutoEstoque : Integer;
QtdeOrcEstoque, QtdeEst, VlrProdutoEstoque, ValorCustoEstoque : Real;
EstoqueFinalOrc, TotalProdEstoqueOrc, TotalCustoEstoque : String;
begin


                                                  ///AnalisedeRetorno := '';
  with dmModule do begin

  tedit(sender).color := clwindow;
  //  if (lbl_edtTotalVenda.Text <> '') or (lbl_edtTotalVenda.Text > '0,00') Then begin

  if (frmRecebeLoja.Showing)and(cboTipoPagto.Text <> '')and(frmRecebeLoja.lbl_edtTotalVenda.Text > '0,00') Then begin

      ConfirmaMSG := Application.MessageBox('Confirma o Lan�amento?','Notifica��o:Confirma��o de Venda',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

      if ConfirmaMSG = 6 Then begin

 //     InsereVenda := True;


    if (frmVendasLoja.lbl_CodVenda.Caption > '0')and(lbl_CodVendaMPV.Caption = '') Then begin

        if (StringTipoPagamento = '0') or (StringTipoPagamento = '') Then begin

          if cboTipoPagto.ItemIndex = - 1 Then begin

            StringTipoPagamento        := ' ''0'',';

          end else begin
            IDTipoPagamento  := TClasseCombo( cboTipoPagto.Items.Objects[cboTipoPagto.ItemIndex] );
            StringTipoPagamento  := ' ''' + InttoStr( IDTipoPagamento.ID ) + ''',';

          end;

        end;

        if cboTPagto.ItemIndex = - 1 Then begin

          StringTPagto        := ' ''0'',';

        end else begin
          IDTPagto  := TClasseCombo( cboTPagto.Items.Objects[cboTPagto.ItemIndex] );
          StringTPagto  := ' ''' + InttoStr( IDTPagto.ID ) + ''',';

        end;

        ValorVenda := StringReplace(lbl_edtTotalVenda.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
        ValorVenda := StringReplace(ValorVenda,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);
        if ValorVenda  = '' Then
            ValorVenda := '0';

        ValorPago := StringReplace(lbl_edtValor.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
        ValorPago := StringReplace(ValorPago,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);
        if ValorPago  = '' Then
           ValorPago := '0';

        ValorTroco := StringReplace(lbl_edtTroco.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
        ValorTroco := StringReplace(ValorTroco,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);
        if ValorTroco  = '' Then
           ValorTroco := '0';

////////////////////////////////////////////////////////////////////////////////

          if cboTipoPagto.Text = 'HIPERCARD' Then begin

           {  decodedaTe(StrToDate(FormatDateTime('DD/MM/YYYY',Now)),AnoHC,MesHC,DiaHC);//decodifica a data do combo
             DataInicialHC := StrToInt('31');//atribui na variavel os valores sem a barra da condicao de pagto
             DataEmissaoHC := FormatDateTime('DD/MM/YYYY',Now);//atribui na variavel a data formatada
             DataPagtoHC   := StrToDate(DataEmissaoHC)+(DataInicialHC);//atribui na variavel a soma da data com a condicao de pagto.

              if MesHC=12 Then //se mes for igual a 12
                begin
                  MesHC:=+1;//no mes atribui 1
                  AnoHC:=AnoHC+1;//no ano atribui 1
                end
              else

                MesHC:=MesHC+1;//senao soma mais um no mes
                DataFinalHC:=encodeDate(AnoHC,MesHC,DiaHC);//atribui na varival a data codificada
                DataInicialHC:=DataFinalHC;//atribui na varivel a data ja codificada

            //  TxHiperCard := '3,1';

            //  Valor1 := StrToFloat(TxHiperCard);//(StringReplace(TxVisaParc,ThousandSeparator,'',[rfReplaceAll]));
              Valor2 := StrToFloat(StringReplace(ValorVenda,ThousandSeparator,',',[rfReplaceAll]));
              Valor3 := Valor2;//(Valor2 * Valor1);
             // Valor4 := Valor3/100;

              VlrConv := Valor2;// - Valor4;

              Valor5 := StringReplace(FloattoStr(VlrConv),ThousandSeparator,'',[rfReplaceAll]);
              Valor5 := StringReplace(Valor5,DecimalSeparator,'.',[rfReplaceAll]);  }

              Cartao := 'Cartao';
              Baixado := '';

            {  ibAReceber.Close;
              ibAReceber.SQL.Clear;
              ibAReceber.SQL.Add(' INSERT INTO TBLCONTASARECEBER '
              + ' (EMISSAOCONTA,IDSERVSVENDA,IDTIPOPAGTO,EMISSAO,VCTO,IDCLI,'
              + 'IDTIPODOC,NUMCHEQUE,CARTAO,BAIXADO,VLREMITIDO) values '
              + ' (''' + FormatDateTime('mm-dd-yyyy', now) + ''','
              + ' ''' + IntToStr(IDVenda) + ''','
              + StringTipoPagamento
              + ' ''' + FormatDateTime('mm-dd-yyyy', now) + ''','
              + ' ''' + FormatDateTime('mm-dd-yyyy', DataPagtoHC) + ''','
              + ' ''' + IntToStr(IDVendaCliente) + ''','
              + StringTipoPagamento
              + ' ''' + lbl_edtNumCheque.Text + ''','
              + ' ''' + Cartao + ''','
              + ' ''' + Baixado + ''','
              + ' ''' + Valor5 + ''')');
              ibAReceber.ExecSQL;
              Commit(ibAReceber); }

              SituacaoCliente := 'Pago';

              ///ibServsVenda.Close;
              ibServsVenda.SQL.Clear;
              ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
              + 'PENDENTEPAGO = ''' + SituacaoCliente + ''','
              + 'NOMEVENDA = ''' + Cartao + ''' WHERE IDSERVSVENDA = ''' + IntToStr(IDVenda) + '''');
              ibServsVenda.ExecSQL;
              Commit(ibServsVenda);

          end;//if


////////////////////////////////////////////////////////////////////////////////

          if cboTipoPagto.Text = 'VISA CREDITO' Then begin

           {  decodedaTe(StrToDate(FormatDateTime('DD/MM/YYYY',Now)),AnoVC,MesVC,DiaVC);//decodifica a data do combo
             DataInicialVC := StrToInt('31');//atribui na variavel os valores sem a barra da condicao de pagto
             DataEmissaoVC := FormatDateTime('DD/MM/YYYY',Now);//atribui na variavel a data formatada
             DataPagtoVC   := StrToDate(DataEmissaoVC)+(DataInicialVC);//atribui na variavel a soma da data com a condicao de pagto.


             
              if MesVC=12 Then //se mes for igual a 12
                begin
                  MesVC:=+1;//no mes atribui 1
                  AnoVC:=AnoVC+1;//no ano atribui 1
                end
              else

                MesVC:=MesVC+1;//senao soma mais um no mes
                DataFinalVC:=encodeDate(AnoVC,MesVC,DiaVC);//atribui na varival a data codificada
                DataInicialVC:=DataFinalVC;//atribui na varivel a data ja codificada

            //  TxVisaCredito := '3,1';

           //   Valor1 := StrToFloat(TxVisaCredito);//(StringReplace(TxVisaParc,ThousandSeparator,'',[rfReplaceAll]));
              Valor2 := StrToFloat(StringReplace(ValorVenda,ThousandSeparator,',',[rfReplaceAll]));
              Valor3 := Valor2;//(Valor2 * Valor1);
            //  Valor4 := Valor3/100;

              VlrConv := Valor2;// - Valor4;

              Valor5 := StringReplace(FloattoStr(VlrConv),ThousandSeparator,'',[rfReplaceAll]);
              Valor5 := StringReplace(Valor5,DecimalSeparator,'.',[rfReplaceAll]);}

              Cartao := 'Cartao';
              Baixado := '';

           {   ibAReceber.Close;
              ibAReceber.SQL.Clear;
              ibAReceber.SQL.Add(' INSERT INTO TBLCONTASARECEBER '
              + ' (EMISSAOCONTA,IDSERVSVENDA,IDTIPOPAGTO,EMISSAO,VCTO,IDCLI,'
              + 'IDTIPODOC,NUMCHEQUE,CARTAO,BAIXADO,VLREMITIDO) values '
              + ' (''' + FormatDateTime('mm-dd-yyyy', now) + ''','
              + ' ''' + IntToStr(IDVenda) + ''','
              + StringTipoPagamento
              + ' ''' + FormatDateTime('mm-dd-yyyy', now) + ''','
              + ' ''' + FormatDateTime('mm-dd-yyyy', DataPagtoVC) + ''','
              + ' ''' + IntToStr(IDVendaCliente) + ''','
              + StringTipoPagamento
              + ' ''' + lbl_edtNumCheque.Text + ''','
              + ' ''' + Cartao + ''','
              + ' ''' + Baixado + ''','
              + ' ''' + Valor5 + ''')');
              ibAReceber.ExecSQL;
              Commit(ibAReceber); }

              SituacaoCliente := 'Pago';

             /// ibServsVenda.Close;
              ibServsVenda.SQL.Clear;
              ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
              + 'PENDENTEPAGO = ''' + SituacaoCliente + ''','
              + 'NOMEVENDA = ''' + Cartao + ''' WHERE IDSERVSVENDA = ''' + IntToStr(IDVenda) + '''');
              ibServsVenda.ExecSQL;
              Commit(ibServsVenda);

          end;//if

////////////////////////////////////////////////////////////////////////////////

          if cboTipoPagto.Text = 'VISA DEBITO' Then begin

            { decodedaTe(StrToDate(FormatDateTime('DD/MM/YYYY',Now)),AnoVD,MesVD,DiaVD);//decodifica a data do combo
             DataInicialVD := StrToInt('1');//atribui na variavel os valores sem a barra da condicao de pagto
             DataEmissaoVD := FormatDateTime('DD/MM/YYYY',Now);//atribui na variavel a data formatada
             DataPagtoVD   := StrToDate(DataEmissaoVD)+(DataInicialVD);//atribui na variavel a soma da data com a condicao de pagto.

              if MesVD=12 Then //se mes for igual a 12
                begin
                  MesVD:=+1;//no mes atribui 1
                  AnoVD:=AnoVD+1;//no ano atribui 1
                end
              else

                MesVD:=MesVD+1;//senao soma mais um no mes
                DataFinalVD:=encodeDate(AnoVD,MesVD,DiaVD);//atribui na varival a data codificada
                DataInicialVD:=DataFinalVD;//atribui na varivel a data ja codificada


             // TxVisaDebito := '2,0';

            //  Valor1 := StrToFloat(TxVisaDebito);//(StringReplace(TxVisaParc,ThousandSeparator,'',[rfReplaceAll]));
              Valor2 := StrToFloat(StringReplace(ValorVenda,ThousandSeparator,',',[rfReplaceAll]));
              Valor3 := Valor2;//(Valor2 * Valor1);
             // Valor4 := Valor3/100;

              VlrConv := Valor2;// - Valor4;

              Valor5 := StringReplace(FloattoStr(VlrConv),ThousandSeparator,'',[rfReplaceAll]);
              Valor5 := StringReplace(Valor5,DecimalSeparator,'.',[rfReplaceAll]); }

              Cartao := 'Cartao';
              Baixado := '';

            {  ibAReceber.Close;
              ibAReceber.SQL.Clear;
              ibAReceber.SQL.Add(' INSERT INTO TBLCONTASARECEBER '
              + ' (EMISSAOCONTA,IDSERVSVENDA,IDTIPOPAGTO,EMISSAO,VCTO,IDCLI,'
              + 'IDTIPODOC,NUMCHEQUE,CARTAO,BAIXADO,VLREMITIDO) values '
              + ' (''' + FormatDateTime('mm-dd-yyyy', now) + ''','
              + ' ''' + IntToStr(IDVenda) + ''','
              + StringTipoPagamento
              + ' ''' + FormatDateTime('mm-dd-yyyy', now) + ''','
              + ' ''' + FormatDateTime('mm-dd-yyyy', DataPagtoVD) + ''','
              + ' ''' + IntToStr(IDVendaCliente) + ''','
              + StringTipoPagamento
              + ' ''' + lbl_edtNumCheque.Text + ''','
              + ' ''' + Cartao + ''','
              + ' ''' + Baixado + ''','
              + ' ''' + Valor5 + ''')');
              ibAReceber.ExecSQL;
              Commit(ibAReceber); }

              SituacaoCliente := 'Pago';

            ///  ibServsVenda.Close;
              ibServsVenda.SQL.Clear;
              ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
              + 'PENDENTEPAGO = ''' + SituacaoCliente + ''','
              + 'NOMEVENDA = ''' + Cartao + ''' WHERE IDSERVSVENDA = ''' + IntToStr(IDVenda) + '''');
              ibServsVenda.ExecSQL;
              Commit(ibServsVenda);

          end;//if

////////////////////////////////////////////////////////////////////////////////

          if cboTipoPagto.Text = 'MASTERCARD CREDITO' Then begin

         { DecodeDate(StrToDate(FormatDateTime('DD/MM/YYYY',Now)),AnoMC,MesMC,DiaMC);

             decodedaTe(StrToDate(FormatDateTime('DD/MM/YYYY',Now)),AnoMC,MesMC,DiaMC);//decodifica a data do combo
             DataInicialMC := StrToInt('31');//atribui na variavel os valores sem a barra da condicao de pagto
             DataEmissaoMC := FormatDateTime('DD/MM/YYYY',Now);//atribui na variavel a data formatada
             DataPagtoMC   := StrToDate(DataEmissaoMC)+(DataInicialMC);//atribui na variavel a soma da data com a condicao de pagto.

              if MesMC=12 Then //se mes for igual a 12
                begin
                  MesMC:=+1;//no mes atribui 1
                  AnoMC:=AnoMC+1;//no ano atribui 1
                end
              else

                MesMC:=MesMC+1;//senao soma mais um no mes
                DataFinalMC:=encodeDate(AnoMC,MesMC,DiaMC);//atribui na varival a data codificada
                DataInicialMC:=DataFinalMC;//atribui na varivel a data ja codificada  }


            //  TxMastercardCredito := '3,2';

            //  Valor1 := StrToFloat(TxMastercardCredito);//(StringReplace(TxVisaParc,ThousandSeparator,'',[rfReplaceAll]));
            {  Valor2 := StrToFloat(StringReplace(ValorVenda,ThousandSeparator,',',[rfReplaceAll]));
              Valor3 := Valor2;//(Valor2 * Valor1);
             // Valor4 := Valor3/100;

              VlrConv := Valor2;// - Valor4;

              Valor5 := StringReplace(FloattoStr(VlrConv),ThousandSeparator,'',[rfReplaceAll]);
              Valor5 := StringReplace(Valor5,DecimalSeparator,'.',[rfReplaceAll]); }

              Cartao := 'Cartao';
              Baixado := '';

            {  ibAReceber.Close;
              ibAReceber.SQL.Clear;
              ibAReceber.SQL.Add(' INSERT INTO TBLCONTASARECEBER '
              + ' (EMISSAOCONTA,IDSERVSVENDA,IDTIPOPAGTO,EMISSAO,VCTO,IDCLI,'
              + 'IDTIPODOC,NUMCHEQUE,CARTAO,BAIXADO,VLREMITIDO) values '
              + ' (''' + FormatDateTime('mm-dd-yyyy', now) + ''','
              + ' ''' + IntToStr(IDVenda) + ''','
              + StringTipoPagamento
              + ' ''' + FormatDateTime('mm-dd-yyyy', now) + ''','
              + ' ''' + FormatDateTime('mm-dd-yyyy', DataPagtoMC) + ''','
              + ' ''' + IntToStr(IDVendaCliente) + ''','
              + StringTipoPagamento
              + ' ''' + lbl_edtNumCheque.Text + ''','
              + ' ''' + Cartao + ''','
              + ' ''' + Baixado + ''','
              + ' ''' + Valor5 + ''')');
              ibAReceber.ExecSQL;
              Commit(ibAReceber); }

              SituacaoCliente := 'Pago';

             /// ibServsVenda.Close;
              ibServsVenda.SQL.Clear;
              ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
              + 'PENDENTEPAGO = ''' + SituacaoCliente + ''','
              + 'NOMEVENDA = ''' + Cartao + ''' WHERE IDSERVSVENDA = ''' + IntToStr(IDVenda) + '''');
              ibServsVenda.ExecSQL;
              Commit(ibServsVenda);


          end;//if

////////////////////////////////////////////////////////////////////////////////


          if cboTipoPagto.Text = 'MASTERCARD DEBITO' Then begin

         {DecodeDate(StrToDate(FormatDateTime('DD/MM/YYYY',Now)),AnoMD,MesMD,DiaMD);

             decodedaTe(StrToDate(FormatDateTime('DD/MM/YYYY',Now)),AnoMD,MesMD,DiaMD);//decodifica a data do combo
             DataInicialMD := StrToInt('1');//atribui na variavel os valores sem a barra da condicao de pagto
             DataEmissaoMD := FormatDateTime('DD/MM/YYYY',Now);//atribui na variavel a data formatada
             DataPagtoMD   := StrToDate(DataEmissaoMD)+(DataInicialMD);//atribui na variavel a soma da data com a condicao de pagto.

              if MesMD=12 Then //se mes for igual a 12
                begin
                  MesMD:=+1;//no mes atribui 1
                  AnoMD:=AnoMD+1;//no ano atribui 1
                end
              else

                MesMD:=MesMD+1;//senao soma mais um no mes
                DataFinalMD:=encodeDate(AnoMD,MesMD,DiaMD);//atribui na varival a data codificada
                DataInicialMD:=DataFinalMD;//atribui na varivel a data ja codificada  }


             // TxMastercardDebito := '2,0';

            //  Valor1 := StrToFloat(TxMastercardDebito);//(StringReplace(TxVisaParc,ThousandSeparator,'',[rfReplaceAll]));
             { Valor2 := StrToFloat(StringReplace(ValorVenda,ThousandSeparator,',',[rfReplaceAll]));
              Valor3 := Valor2;//(Valor2 * Valor1);
             // Valor4 := Valor3/100;

              VlrConv := Valor2;// - Valor4;

              Valor5 := StringReplace(FloattoStr(VlrConv),ThousandSeparator,'',[rfReplaceAll]);
              Valor5 := StringReplace(Valor5,DecimalSeparator,'.',[rfReplaceAll]);  }

              Cartao := 'Cartao';
              Baixado := '';

             { ibAReceber.Close;
              ibAReceber.SQL.Clear;
              ibAReceber.SQL.Add(' INSERT INTO TBLCONTASARECEBER '
              + ' (EMISSAOCONTA,IDSERVSVENDA,IDTIPOPAGTO,EMISSAO,VCTO,IDCLI,'
              + 'IDTIPODOC,NUMCHEQUE,CARTAO,BAIXADO,VLREMITIDO) values '
              + ' (''' + FormatDateTime('mm-dd-yyyy', now) + ''','
              + ' ''' + IntToStr(IDVenda) + ''','
              + StringTipoPagamento
              + ' ''' + FormatDateTime('mm-dd-yyyy', now) + ''','
              + ' ''' + FormatDateTime('mm-dd-yyyy', DataPagtoMD) + ''','
              + ' ''' + IntToStr(IDVendaCliente) + ''','
              + StringTipoPagamento
              + ' ''' + lbl_edtNumCheque.Text + ''','
              + ' ''' + Cartao + ''','
              + ' ''' + Baixado + ''','
              + ' ''' + Valor5 + ''')');
              ibAReceber.ExecSQL;
              Commit(ibAReceber);}

              SituacaoCliente := 'Pago';

             /// ibServsVenda.Close;
              ibServsVenda.SQL.Clear;
              ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
              + 'PENDENTEPAGO = ''' + SituacaoCliente + ''','
              + 'NOMEVENDA = ''' + Cartao + ''' WHERE IDSERVSVENDA = ''' + IntToStr(IDVenda) + '''');
              ibServsVenda.ExecSQL;
              Commit(ibServsVenda);

          end;//if

////////////////////////////////////////////////////////////////////////////////

       ///   if cboCondpagto.ItemIndex <> - 1 Then begin

        ///    str := cboCondpagto.Text;//atribui o conteudo na variavel
       ///     CountIDUsuarios := Explode(A, '/', str); //a tribuia funcao na variavel pegando os dados separados pela /


            if cboTipoPagto.Text = 'HIPERCARD PARCELADO' Then begin

             // TxHCParc := '3,6';

            //  Valor1 := StrToFloat(TxHCParc);//(StringReplace(TxVisaParc,ThousandSeparator,'',[rfReplaceAll]));
              Valor2 := StrToFloat(StringReplace(ValorVenda,FormatSettings.ThousandSeparator,',',[rfReplaceAll]));
              Valor3 := Valor2;//(Valor2 * Valor1);
             // Valor4 := Valor3/100;

              VlrConv := Valor2; //- Valor4;

              Valor5 := StringReplace(FloattoStr(VlrConv),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
             // Valor5 := StringReplace(Valor5,DecimalSeparator,'.',[rfReplaceAll]);

              Cartao := 'Cartao';
              Baixado := '';

              SituacaoCliente := 'Pago';

             /// ibServsVenda.Close;
              ibServsVenda.SQL.Clear;
              ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
              + 'PENDENTEPAGO = ''' + SituacaoCliente + ''','
              + 'NOMEVENDA = ''' + Cartao + ''' WHERE IDSERVSVENDA = ''' + IntToStr(IDVenda) + '''');
              ibServsVenda.ExecSQL;
              Commit(ibServsVenda);

            end;//if

////////////////////////////////////////////////////////////////////////////////

            if cboTipoPagto.Text = 'VISA PARCELADO' Then begin

             // TxVisaParc := '3,6';

            //  Valor1 := StrToFloat(TxVisaParc);//(StringReplace(TxVisaParc,ThousandSeparator,'',[rfReplaceAll]));
              Valor2 := StrToFloat(StringReplace(ValorVenda,FormatSettings.ThousandSeparator,',',[rfReplaceAll]));
              Valor3 := Valor2;//(Valor2 * Valor1);
             // Valor4 := Valor3/100;

              VlrConv := Valor2;// - Valor4;

              Valor5 := StringReplace(FloattoStr(VlrConv),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
             // Valor5 := StringReplace(Valor5,DecimalSeparator,'.',[rfReplaceAll]);

              Cartao := 'Cartao';
              Baixado := '';

              SituacaoCliente := 'Pago';

             /// ibServsVenda.Close;
              ibServsVenda.SQL.Clear;
              ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
              + 'PENDENTEPAGO = ''' + SituacaoCliente + ''','
              + 'NOMEVENDA = ''' + Cartao + ''' WHERE IDSERVSVENDA = ''' + IntToStr(IDVenda) + '''');
              ibServsVenda.ExecSQL;
              Commit(ibServsVenda);

            end;

            if cboTipoPagto.Text = 'MASTERCARD PARCELADO' Then begin

            //  TxMastercardParc := '3,7';

           //   Valor1 := StrToFloat(StringReplace(TxMastercardParc,ThousandSeparator,'',[rfReplaceAll]));
              Valor2 := StrToFloat(StringReplace(ValorVenda,FormatSettings.ThousandSeparator,',',[rfReplaceAll]));
              Valor3 := Valor2;// * Valor1;
             // Valor4 := Valor3 / 100;

              VlrConv := Valor2;// - Valor4;

              Valor5 := StringReplace(FloattoStr(VlrConv),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
           //   Valor5 := StringReplace(Valor5,DecimalSeparator,'.',[rfReplaceAll]);


              SituacaoCliente := 'Pago';

             /// ibServsVenda.Close;
              ibServsVenda.SQL.Clear;
              ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
              + 'PENDENTEPAGO = ''' + SituacaoCliente + ''','
              + 'NOMEVENDA = ''' + Cartao + ''' WHERE IDSERVSVENDA = ''' + IntToStr(IDVenda) + '''');
              ibServsVenda.ExecSQL;
              Commit(ibServsVenda);

            end;


       {     if Valor5 > '0' Then begin

              VlrTotalParc   := FloatToStr(StrtoFloat(Valor5));

            end else begin

              VlrTotalParc   := FloatToStr(StrtoFloat(ValorVenda));

            end;//if

            ValorParcelado := FloatToStr(StrtoFloat(VlrTotalParc) / CountIDUsuarios);
            ValorParcelado := StringReplace(ValorParcelado,DecimalSeparator,'.',[rfReplaceAll]);

            for i := 0 to CountIDUsuarios -1 do begin //busca pelo primeiro registro antes da barra

             decodedaTe(StrToDate(FormatDateTime('DD/MM/YYYY',Now)),ano,mes,dia);//decodifica a data do combo
             DataInicial := StrToInt(A[i]);//atribui na variavel os valores sem a barra da condicao de pagto
             DataEmissao := FormatDateTime('DD/MM/YYYY',Now);//atribui na variavel a data formatada
             DataPagto   := StrToDate(DataEmissao)+(DataInicial);//atribui na variavel a soma da data com a condicao de pagto.

              if Mes=12 Then //se mes for igual a 12
                begin
                  Mes:=+1;//no mes atribui 1
                  Ano:=Ano+1;//no ano atribui 1
                end
              else

                Mes:=Mes+1;//senao soma mais um no mes
                DataFinal:=encodeDate(Ano,Mes,Dia);//atribui na varival a data codificada
                DataInicial:=DataFinal;//atribui na varivel a data ja codificada  }

          //    end;{if}

       //   end;{if cond pagto}

                //traz a identificacao do funcionario do item do objeto selecionado.
           {  If cboCondpagto.ItemIndex = -1 Then begin

                //Erro := True;
              //  Application.MessageBox('Informe a Condi��o de Pagamento','Notifica��o: Produto n�o especificado', MB_OK + MB_ICONQUESTION);
               StringCondpagto     := ' ''0'',';

             end else begin

               IDCondPagtoCA       := TClasseCombo( cboCondpagto.Items.Objects[cboCondpagto.ItemIndex] );
               StringCondpagto     := ' ''' + InttoStr( IDCondPagtoCA.ID ) + ''',';

             end;//if condpagto

             if lbl_edtCodCli.Text <> '' Then begin

             IDVendaCliente := StrToInt(lbl_edtCodCli.Text);

             end else begin

             IDVendaCliente := 0;

             end;

             Cartao := 'Cartao';
             Baixado := '';   }

           {  ibAReceber.Close;
             ibAReceber.SQL.Clear;
             ibAReceber.SQL.Add(' INSERT INTO TBLCONTASARECEBER '
             + ' (EMISSAOCONTA,IDSERVSVENDA,IDTIPOPAGTO,IDCONDPAGTO,EMISSAO,VCTO,'
             + 'IDCLI,IDTIPODOC,NUMCHEQUE,CARTAO,BAIXADO,VLREMITIDO) values '
             + ' (''' + FormatDateTime('mm-dd-yyyy', now) + ''','
             + ' ''' + IntToStr(IDVenda) + ''','
             + StringTipoPagamento
             + StringCondpagto
             + ' ''' + FormatDateTime('mm-dd-yyyy', now) + ''','
             + ' ''' + FormatDateTime('mm-dd-yyyy', DataPagto) + ''','
             + ' ''' + IntToStr(IDVendaCliente) + ''','
             + StringTipoPagamento
             + ' ''' + lbl_edtNumCheque.Text + ''','
             + ' ''' + Cartao + ''','
             + ' ''' + Baixado + ''','
             + ' ''' + ValorParcelado + ''')');
             ibAReceber.ExecSQL;
             Commit(ibAReceber); }

           //  end;{if}

         ///  end;{for}

      ///   end;{if cond pagto}

        if (cboTipoPagto.Text = 'CHEQUE PRE')Then begin

          NomeVenda := 'Cheque Pre';

          ///ibServsVenda.Close;
          ibServsVenda.SQL.Clear;
          ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
          + 'NOMEVENDA = ''' + NomeVenda + ''' WHERE IDSERVSVENDA = ''' + IntToStr(IDVenda) + '''');
          ibServsVenda.ExecSQL;
          Commit(ibServsVenda);


          ConfirmaChequePre := Application.MessageBox('Confirma o lancto. no contas a receber do cheque pre?','Lancto. de Cheque Pre',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

          if ConfirmaChequePre = 6 Then begin

            Baixado := '';

            if (lbl_edtCodCli.Text <> '')and(lbl_edtNomeCliente.Text <> '')Then begin

            ///  ibAReceber.Close;
              ibAReceber.SQL.Clear;
              ibAReceber.SQL.Add(' INSERT INTO TBLCONTASARECEBER '
              + ' (EMISSAOCONTA,IDSERVSVENDA,IDTIPOPAGTO,EMISSAO,VCTO,'
              + 'IDCLI,IDTIPODOC,NUMCHEQUE,BAIXADO,VLREMITIDO) values '
              + ' (''' + FormatDateTime('mm-dd-yyyy', now) + ''','
              + ' ''' + IntToStr(IDVenda) + ''','
              + StringTipoPagamento
              + ' ''' + FormatDateTime('mm-dd-yyyy', now) + ''','
              + ' ''' + FormatDateTime('mm-dd-yyyy', dtpDataCheque.Date) + ''','
              + ' ''' + lbl_edtCodCli.Text + ''','
              + StringTipoPagamento
              + ' ''' + lbl_edtNumCheque.Text + ''','
              + ' ''' + Baixado + ''','
              + ' ''' + ValorVenda + ''')');
              ibAReceber.ExecSQL;
              Commit(ibAReceber);

            end;

            if (lbl_edtCodCli.Text = '')and(lbl_edtNomeCliente.Text = '')Then begin

             /// ibAReceber.Close;
              ibAReceber.SQL.Clear;
              ibAReceber.SQL.Add(' INSERT INTO TBLCONTASARECEBER '
              + ' (EMISSAOCONTA,IDSERVSVENDA,IDTIPOPAGTO,EMISSAO,VCTO,'
              + 'IDTIPODOC,NUMCHEQUE,BAIXADO,VLREMITIDO) values '
              + ' (''' + FormatDateTime('mm-dd-yyyy', now) + ''','
              + ' ''' + IntToStr(IDVenda) + ''','
              + StringTipoPagamento
              + ' ''' + FormatDateTime('mm-dd-yyyy', now) + ''','
              + ' ''' + FormatDateTime('mm-dd-yyyy', dtpDataCheque.Date) + ''','
              + StringTipoPagamento
              + ' ''' + lbl_edtNumCheque.Text + ''','
              + ' ''' + Baixado + ''','
              + ' ''' + ValorVenda + ''')');
              ibAReceber.ExecSQL;
              Commit(ibAReceber);

            end;

          end;

        end;//if

        if (cboTipoPagto.Text = 'DINHEIRO')or(cboTipoPagto.Text = 'Dinheiro') Then begin

          NomeVenda := '';

          ibServsVenda.Close;
          ibServsVenda.SQL.Clear;
          ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
          + 'NOMEVENDA = ''' + NomeVenda + ''' WHERE IDSERVSVENDA = ''' + IntToStr(IDVenda) + '''');
          ibServsVenda.ExecSQL;
          Commit(ibServsVenda);

        end;//if
        
        if (cboTipoPagto.Text = 'CHEQUE') Then begin

          NomeVenda := 'CH';

          ibServsVenda.Close;
          ibServsVenda.SQL.Clear;
          ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
          + 'NOMEVENDA = ''' + NomeVenda + ''' WHERE IDSERVSVENDA = ''' + IntToStr(IDVenda) + '''');
          ibServsVenda.ExecSQL;
          Commit(ibServsVenda);

        end;//if


////////////////////////////////////////////////////////////////////////////////
                                         // and(ckValor.Checked = False)and(ckPorcentagem.Checked = False)
        if (lbl_edtDesconto.Text > '0,00') Then begin

         /// ibServsVenda.Close;
          ibServsVenda.SQL.Clear;
          ibServsVenda.SQL.Add('SELECT * FROM TBLSERVICOSVENDAS WHERE IDSERVSVENDA=''' + frmVendasLoja.lbl_CodVenda.Caption + ''' ORDER BY IDSERVS DESC');
          ibServsVenda.Open;

          IDServs := ibServsVenda.FieldByName('IDSERVS').AsInteger;

          ValorDesconto := StringReplace(lbl_edtDesconto.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          ValorDesconto := StringReplace(ValorDesconto,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);
          if ValorDesconto  = '' Then
             ValorDesconto := '0';

          ///ibServsVenda.Close;
          ibServsVenda.SQL.Clear;
          ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
          + 'DESCONTO = ''' + ValorDesconto + ''' WHERE IDSERVS=''' + IntToStr(IDServs) + '''');
          ibServsVenda.ExecSQL;
          Commit(ibServsVenda);

         { ibRecVendas.SQL.Clear;
          ibRecVendas.SQL.Add('UPDATE TBLRECEBEVENDAS SET '
          + 'VLRDESCONTO = ''' + ValorDesconto + ''' WHERE IDVENDA=''' + IntToStr(IDServs) + '''');
          ibRecVendas.ExecSQL;
          Commit(ibRecVendas); }


          ///ibServsVendasCli.Close;
         { ibServsVendasCli.SQL.Clear;
          ibServsVendasCli.SQL.Add('UPDATE TBLSERVICOSVENDASCLI SET '
          + 'VALORDESCONTO = ''' + ValorDesconto + ''' WHERE IDSERVSVENDA=''' + frmVendasLoja.lbl_CodVenda.Caption + '''');
          ibServsVendasCli.ExecSQL;
          Commit(ibServsVendasCli);}

        end;//if  }

////////////////////////////////////////////////////////////////////////////////

       { if (ckPorcentagem.Checked = True)and(ckValor.Checked = False)Then begin

          ///ibServsVenda.Close;
          ibServsVenda.SQL.Clear;
          ibServsVenda.SQL.Add('SELECT * FROM TBLSERVICOSVENDAS ORDER BY IDSERVS DESC');
          ibServsVenda.Open;

          IDServs := ibServsVenda.FieldByName('IDSERVS').AsInteger;

          if lbl_edtTotalVenda.Text <> '' Then begin //se for diferente de branco executa rotina abaixo.

             if (Pos(',',lbl_edtTotalVenda.Text)>0) and (lbl_edtTotalVenda.Text <> '') Then begin

               TotalVendaPorcentagem := StrToFloat(StringReplace(frmVendasLoja.lbl_edtSubTotal.Caption,ThousandSeparator,'',[rfReplaceAll]));
               DescontoPorcentagem   := StrToFloat(StringReplace(lbl_edtDesconto.Text,ThousandSeparator,'',[rfReplaceAll]));
               ValorMultiplicado := TotalVendaPorcentagem * DescontoPorcentagem;
               TotalPorcentagem  := ValorMultiplicado / 100;
               TotaldoDesconto   := FormatFloat(CasasDecimais('Produtos'),TotalPorcentagem);
               TotaldoDesconto := StringReplace(TotaldoDesconto,ThousandSeparator,'',[rfReplaceAll]);
               TotaldoDesconto := StringReplace(TotaldoDesconto,DecimalSeparator,'.',[rfReplaceAll]);
               //lbl_edtTotalVenda.Text := FormatFloat(',0.00',(Valor1 - Valor2));

             end else begin

               TotalVendaPorcentagem := StrToFloat(StringReplace(frmVendasLoja.lbl_edtSubTotal.Caption,ThousandSeparator,'',[rfReplaceAll]));
               DescontoPorcentagem   := StrToFloat(StringReplace(lbl_edtDesconto.Text,ThousandSeparator,'',[rfReplaceAll]));
               ValorMultiplicado := TotalVendaPorcentagem * DescontoPorcentagem;
               TotalPorcentagem  := ValorMultiplicado / 100;
               TotaldoDesconto   := FormatFloat(CasasDecimais('Produtos'),TotalPorcentagem);
               TotaldoDesconto := StringReplace(TotaldoDesconto,ThousandSeparator,'',[rfReplaceAll]);
               TotaldoDesconto := StringReplace(TotaldoDesconto,DecimalSeparator,'.',[rfReplaceAll]);  }

          //   end;{if}

         //  end;{if}

        ///  ibServsVenda.Close;
          {ibServsVenda.SQL.Clear;
          ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
          + 'DESCONTO = ''' + TotaldoDesconto + ''' WHERE IDSERVS=''' + IntToStr(IDServs) + '''');
          ibServsVenda.ExecSQL;
          Commit(ibServsVenda);

        end;//if }

////////////////////////////////////////////////////////////////////////////////

        {if (ckValor.Checked = True)and(ckPorcentagem.Checked = False) Then begin

         /// ibServsVenda.Close;
          ibServsVenda.SQL.Clear;
          ibServsVenda.SQL.Add('SELECT * FROM TBLSERVICOSVENDAS ORDER BY IDSERVS DESC');
          ibServsVenda.Open;

          IDServs := ibServsVenda.FieldByName('IDSERVS').AsInteger;

          ValorDesconto := StringReplace(lbl_edtDesconto.Text,ThousandSeparator,'',[rfReplaceAll]);
          ValorDesconto := StringReplace(ValorDesconto,DecimalSeparator,'.',[rfReplaceAll]);
          if ValorDesconto  = '' Then
             ValorDesconto := '0';

         /// ibServsVenda.Close;
          ibServsVenda.SQL.Clear;
          ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
          + 'DESCONTO = ''' + ValorDesconto + ''' WHERE IDSERVS=''' + IntToStr(IDServs) + '''');
          ibServsVenda.ExecSQL;
          Commit(ibServsVenda);

        end;//if }

////////////////////////////////////////////////////////////////////////////////


        if lbl_edtAcrescimo.Text > '0,00' Then begin

         /// ibServsVenda.Close;
          ibServsVenda.SQL.Clear;
          ibServsVenda.SQL.Add('SELECT * FROM TBLSERVICOSVENDAS ORDER BY IDSERVS DESC');
          ibServsVenda.Open;

          IDServsAcrescimo := ibServsVenda.FieldByName('IDSERVS').AsInteger;

          ValorAcrescimo := StringReplace(lbl_edtAcrescimo.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          ValorAcrescimo := StringReplace(ValorAcrescimo,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);
          if ValorAcrescimo  = '' Then
             ValorAcrescimo := '0';

         /// ibServsVenda.Close;
          ibServsVenda.SQL.Clear;
          ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
          + 'ACRESCIMO = ''' + ValorAcrescimo + ''' WHERE IDSERVS=''' + IntToStr(IDServsAcrescimo) + '''');
          ibServsVenda.ExecSQL;
          Commit(ibServsVenda);

        end;//if

////////////////////////////////////////////////////////////////////////////////

              {  PosVenda := 'Pago';

              ///  ibServsVenda.Close;
                ibServsVenda.SQL.Clear;
                ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
                + 'POSVENDA = ''' + PosVenda + ''' WHERE CODPOSVENDA = ''' + frmVendasLoja.lbl_CodPosVenda.Caption + '''');
                ibServsVenda.ExecSQL;
                Commit(ibServsVenda);   }


        if (cboTipoPagto.Text = 'PENDENTE') Then begin

            if frmVendasLoja.lbl_CodVenda.Caption <> '' Then begin

            IDVendasServs := StrToInt(frmVendasLoja.lbl_CodVenda.Caption);////ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger;

            end else begin

            IDVendasServs := 0;

            end;

            NomeVenda := 'Pendente';

            if frmVendasLoja.lbl_IDFuncComissao.Caption<>'' then begin

              IDFuncCaixa := StrToInt(frmVendasLoja.lbl_IDFuncComissao.Caption);

            end else begin

            IDFuncCaixa := 0;

            end;
           /// ibServsVenda.Close;
            ibServsVenda.SQL.Clear;
            ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
            + 'NOMEVENDA = ''' + NomeVenda + ''','
            + 'IDFUNC = ''' + IntToStr(IDFuncCaixa) + ''','
            + 'IDVENDEDOR = ''' + IntToStr(IDFuncCaixa) + ''','
            + 'IDTIPOPAGTO = ''' + IntToStr(IDTipoPagamento.ID) + ''' WHERE IDSERVSVENDA=''' + IntToStr(IDVendasServs) + '''');
            ibServsVenda.ExecSQL;
            Commit(ibServsVenda);


            SituacaoCliente := 'Pendente';
            IDVendaCliente := StrToInt(lbl_edtCodCli.Text);
            //PosVenda := 'Pago';

            /// ibServsVendasCli.Close;
             ibServsVendasCli.SQL.Clear;
             ibServsVendasCli.SQL.Add('UPDATE TBLSERVICOSVENDASCLI SET '
             + 'IDCLI = ''' + IntToStr(IDVendaCliente) + ''','
             + 'DATA = ''' + FormatDateTime('mm-dd-yyyy',now) + ''','
             + 'IDFUNC = ''' + IntToStr(IDFuncCaixa) + ''','
             //+ 'IDVENDEDOR = ''' + IntToStr(IDFuncCaixa) + ''','
             + 'TOTALPENDENTE = ''' + ValorVenda + ''' WHERE IDSERVSVENDA=''' + IntToStr(IDVendasServs) + '''');
             ibServsVendasCli.ExecSQL;
             Commit(ibServsVendasCli);

           { ibRecVendas.Close;
            ibRecVendas.SQL.Clear;   //  VLRPAGO,  '' + ValorPago + ''','TOTALVENDA,
            ibRecVendas.SQL.Add('INSERT INTO TBLRECEBEVENDAS'
            + '(IDVENDA,IDVENDAINT,TROCO,IDTIPOPAGTO,IDTIPOPROD,IDCLI,'
            + 'IDPROD,IDFUNC,SITUACAOVENDA,TOTALVLRPENDENTE,IDFUNCCOMISSAO,DATA,HORA) values '
            + '(''' + IntToStr(IDVenda) + ''',''' + IntToStr(IDVendaInt) + ''','
           // + ' ''' + ValorVenda + ''','
            + ' ''' + ValorTroco + ''','
            + StringTipoPagamento
            + ' ''' + IntToStr(IDTipoProduto) + ''','
            + '  ''' + IntToStr(IDVendaCliente) + ''','
            + ' ''' + IntToStr(IDProd) + ''','
            + ' ''' + IntToStr(IDFuncCaixa) + ''','
            + ' ''' + SituacaoCliente + ''','
            + ' ''' + ValorVenda + ''','
            + ' ''' + IntToStr(IDFuncComiss) + ''','
            + ' ''' + FormatDateTime('mm-dd-yyyy',now) + ''','
            + ' ''' + FormatDateTime('hh:mm:ss',now) + ''')');
            ibRecVendas.ExecSQL;
            Commit(ibRecVendas); }

            Historico := 'Pendente';

           { ibPagtoPendente.Close;
            ibPagtoPendente.SQL.Clear;
            ibPagtoPendente.SQL.Add('INSERT INTO TBLPAGTOPENDENTE'
            + '(VLRPAGO,IDCLI,SITUACAO,DATAPAGTO) values '
            + '(''' + ValorPago + ''','
            + '  ''' + IntToStr(IDVendaCliente) + ''','
            + ' ''' + Historico + ''','
            + ' ''' + FormatDateTime('mm-dd-yyyy',Now) + ''')');
            ibPagtoPendente.ExecSQL;
            Commit(ibPagtoPendente); }


           //// if frmVendasLoja.lbl_Cliente.Caption = '' Then begin

             { ibServsVendasCli.Close;
              ibServsVendasCli.SQL.Clear;
              ibServsVendasCli.SQL.Add('INSERT INTO TBLSERVICOSVENDASCLI '
              + '(IDFUNC,DATA) values '
              + '(''' + IntToStr(IDFuncCaixa) + ''','
              + ' ''' + FormatDateTime('mm-dd-yyyy',now) + ''')');
              ibServsVendasCli.ExecSQL;
              Commit(ibServsVendasCli);  }

             //select para trazer o ultimo id
            ////  ibServsVendasCli.Close;
           ////   ibServsVendasCli.SQL.Clear;
            ////  ibServsVendasCli.SQL.Add('SELECT * FROM TBLSERVICOSVENDASCLI ORDER BY IDSERVSVENDA DESC');
            ////  ibServsVendasCli.Open;

             // //if ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger = 1 Then begin

               //// IDVendasServs := 1;

            ////  end else begin

             {   if frmVendasLoja.lbl_CodVenda.Caption <> '' Then begin

                IDVendasServs := StrToInt(frmVendasLoja.lbl_CodVenda.Caption);////ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger;

                end else begin

                IDVendasServs := 0;

                end;

             //// end;

              if frmVendasLoja.lbl_CodPosVenda.Caption <> '' Then begin

                PosVenda := 'Pago';

                ibServsVenda.Close;
                ibServsVenda.SQL.Clear;
                ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
                + 'POSVENDA = ''' + PosVenda + ''','
                + 'IDSERVSVENDA = ''' + IntToStr(IDVendasServs) + ''','
                + 'IDCLIENTE = ''' + IntToStr(IDVendaCliente) + ''','
                + 'PENDENTEPAGO = ''' + SituacaoCliente + ''' WHERE IDPOSVENDA = ''' + frmVendasLoja.lbl_CodPosVenda.Caption + '''');
                ibServsVenda.ExecSQL;
                Commit(ibServsVenda);

                ibServsVendasCli.Close;
                ibServsVendasCli.SQL.Clear;
                ibServsVendasCli.SQL.Add('INSERT INTO TBLSERVICOSVENDASCLI '
                + '(IDFUNC,DATA) values '
                + '(''' + IntToStr(IDFuncCaixa) + ''','
                + ' ''' + FormatDateTime('mm-dd-yyyy',now) + ''')');
                ibServsVendasCli.ExecSQL;
                Commit(ibServsVendasCli);

              end;//if label cod posvenda

              if frmVendasLoja.lbl_CodPosVenda.Caption = '' Then begin

                ibServsVenda.Close;
                ibServsVenda.SQL.Clear;
                ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
                + 'IDSERVSVENDA = ''' + IntToStr(IDVendasServs) + ''','
                + 'IDCLIENTE = ''' + IntToStr(IDVendaCliente) + ''','
                + 'PENDENTEPAGO = ''' + SituacaoCliente + ''' WHERE IDSERVSVENDA = ''' + IntToStr(IDVendasServs) + '''');
                ibServsVenda.ExecSQL;
                Commit(ibServsVenda);

              end;//if label cod posvenda

            end;//if label cliente = ''}

           if frmVendasLoja.lbl_Cliente.Caption <> '' Then begin

              if frmVendasLoja.lbl_CodVenda.Caption <> '' Then begin

                IDVendasServs := StrToInt(frmVendasLoja.lbl_CodVenda.Caption);////ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger;

              end else begin

                IDVendasServs := 0;

              end;

              if frmVendasLoja.lbl_CodPosVenda.Caption <> '' Then begin

                PosVenda := 'Pago';

              ///  ibServsVenda.Close;
                ibServsVenda.SQL.Clear;
                ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
                + 'POSVENDA = ''' + PosVenda + ''','
                + 'IDSERVSVENDA = ''' + IntToStr(IDVendasServs) + ''','
                + 'IDCLIENTE = ''' + IntToStr(IDVendaCliente) + ''','
                + 'TIPOVENDA = ''' + SituacaoCliente + ''','
                + 'PENDENTEPAGO = ''' + SituacaoCliente + ''' WHERE CODPOSVENDA = ''' + frmVendasLoja.lbl_CodPosVenda.Caption + '''');
                ibServsVenda.ExecSQL;
                Commit(ibServsVenda);

               /// ibServsVendasCli.Close;
                ibServsVendasCli.SQL.Clear;
                ibServsVendasCli.SQL.Add('INSERT INTO TBLSERVICOSVENDASCLI '
                + '(IDFUNC,DATA) values '
                + '(''' + IntToStr(IDFuncCaixa) + ''','
                + ' ''' + FormatDateTime('mm-dd-yyyy',now) + ''')');
                ibServsVendasCli.ExecSQL;
                Commit(ibServsVendasCli);

              end;//if label cod posvenda

              if frmVendasLoja.lbl_CodPosVenda.Caption = '' Then begin

                PosVenda := 'Pago';

               /// ibServsVenda.Close;
                ibServsVenda.SQL.Clear;
                ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
                + 'POSVENDA = ''' + PosVenda + ''','
                + 'IDSERVSVENDA = ''' + IntToStr(IDVendasServs) + ''','
                + 'IDCLIENTE = ''' + IntToStr(IDVendaCliente) + ''','
                + 'TIPOVENDA = ''' + SituacaoCliente + ''','
                + 'PENDENTEPAGO = ''' + SituacaoCliente + ''' WHERE IDSERVSVENDA = ''' + IntToStr(IDVendasServs) + '''');
                ibServsVenda.ExecSQL;
                Commit(ibServsVenda);

              end;//if label cod posvenda

           end;//if label cliente <> ''

        end;//CBOTIPOPAGTO = PENDENTE else begin

////////////////////////////////////////////////////////////////////////////////


        if (cboTipoPagto.Text <> 'PENDENTE') Then begin

            if frmVendasLoja.lbl_CodVenda.Caption <> '' Then begin

            IDVendasServs := StrToInt(frmVendasLoja.lbl_CodVenda.Caption);////ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger;

            end else begin

            IDVendasServs := 0;

            end;

            if frmVendasLoja.lbl_IDFuncComissao.Caption <> '' Then begin


              IDFuncCaixa := StrToInt(frmVendasLoja.lbl_IDFuncComissao.Caption);

            end;  


            if (frmVendasLoja.lbl_IdOrc.Caption <>'') Then begin

              PosVenda := 'Pago';

              intIdVendaOrc := 1;
              intIdOrcamento := StrToInt(frmVendasLoja.lbl_IdOrc.Caption);
             /// ibServsVenda.Close;
              ibServsVenda.SQL.Clear;
              ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
              + 'POSVENDA=''' + PosVenda + ''','
              + 'IDFUNC = ''' + IntToStr(IDFuncCaixa) + ''','
              + 'IDVENDAORC= ''' + IntToStr(intIdVendaOrc) + ''','
              + 'IDTIPOPAGTO = ''' + IntToStr(IDTipoPagamento.ID) + ''','
              + 'IDSERVSVENDA = ''' + IntToStr(IDVendasServs) + ''' WHERE IDORCAMENTO=''' + IntToStr(intIdOrcamento) + '''');
              ibServsVenda.ExecSQL;
              Commit(ibServsVenda);

                ibServsVenda.Close;
                ibServsVenda.SQL.Clear;
                ibServsVenda.SQL.Add('SELECT * FROM TBLSERVICOSVENDAS WHERE IDORCAMENTO=''' + IntToStr(intIdOrcamento) + '''');
                ibServsVenda.Open;

                while not ibServsVenda.Eof do begin

                IDProdutoEstoque := ibServsVenda.FieldByName('IDPROD').AsInteger;

                QtdeOrcEstoque   := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('QTDE').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

                ibEntrProdEstoque.Close;
                ibEntrProdEstoque.SQL.Clear;
                ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,'
                + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,TBLENTRADAESTOQUEPROD.ESTOQUEMIN,'
                + 'CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORCUSTO,CADPRODUTOS.TIPOPROD FROM TBLENTRADAESTOQUEPROD '
                + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
                + 'WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + IntToStr(IDProdutoEstoque) + '''');
                ibEntrProdEstoque.Open;

              //ROTINA ABAIXO PARA SOMAR TOTAL DO ESTQUE E QUANTIDADE DO ESTOQUE

              //traz na variavel a qtde conf. prod da select identificado por id.
               QtdeEst := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
             // QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),DecimalSeparator,',',[rfReplaceAll]));

             // QtdeVendaDevolve   := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));

               QtdeEst := QtdeEst - QtdeOrcEstoque;

               EstoqueFinalOrc := StringReplace(FloattoStr(QtdeEst),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
               EstoqueFinalOrc := StringReplace(EstoqueFinalOrc,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

              //AQUI VAI O CALCULO DO TOTAL CONFORME VENDE O PRODUTO
               VlrProdutoEstoque  := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORVENDAA').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

               VlrProdutoEstoque  := QtdeEst * VlrProdutoEstoque;

               TotalProdEstoqueOrc := StringReplace(FloattoStr(VlrProdutoEstoque),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
               TotalProdEstoqueOrc := StringReplace(TotalProdEstoqueOrc,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);


               ValorCustoEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORCUSTO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

               ValorCustoEstoque := QtdeEst * ValorCustoEstoque;

               TotalCustoEstoque := StringReplace(FloattoStr(ValorCustoEstoque),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
               TotalCustoEstoque := StringReplace(TotalCustoEstoque,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

               //ROTINA PARA O ESTOQUE MINIMO
               if ibEntrProdEstoque.RecordCount > 0 Then begin

                 ibEntrProdEstoque.Close;
                 ibEntrProdEstoque.SQL.Clear;
                 ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
                 +'TOTALCUSTO=''' + TotalCustoEstoque + ''','
                 +'VLRTOTAL=''' + (TotalProdEstoqueOrc) +  ''','
                 +'QUANTIDADE=''' + (EstoqueFinalOrc) + ''' WHERE IDPROD=''' + IntToStr(IDProdutoEstoque) + '''');
                 ibEntrProdEstoque.ExecSQL;
                 Commit(ibEntrProdEstoque);

               end;//if recordcount

               ibServsVenda.Next;

               end;//while

            end;  


          SituacaoCliente := 'Pago';
        //  IDVendaCliente := StrToInt(lbl_edtCodCli.Text);

           if lbl_edtCodCli.Text <> '' Then begin

             IDVendaCliente := StrToInt(lbl_edtCodCli.Text);

           end else begin

             IDVendaCliente := 0;

           end;

            if (cboTipoPagto.Text <> '')and(cboTPagto.Text = '') Then begin

              ValorDesconto := StringReplace(lbl_edtDesconto.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
              ValorDesconto := StringReplace(ValorDesconto,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);
              if ValorDesconto  = '' Then
                 ValorDesconto := '0';

             /// ibRecVendas.Close;
              ibRecVendas.SQL.Clear;
              ibRecVendas.SQL.Add('INSERT INTO TBLRECEBEVENDAS'
              + '(IDVENDA,IDVENDAINT,TOTALVENDA,VLRPAGO,TROCO,IDTIPOPAGTO,IDTIPOPROD,'
              + 'IDPROD,IDFUNC,SITUACAOVENDA,IDFUNCCOMISSAO,VLRDESCONTO,DATA,HORA) values '
              + '(''' + IntToStr(IDVenda) + ''',''' + IntToStr(IDVendaInt) + ''','
              + ' ''' + ValorVenda + ''',''' + ValorPago + ''','
              + ' ''' + ValorTroco + ''','
              + StringTipoPagamento
              + ' ''' + IntToStr(IDTipoProduto) + ''','
              + ' ''' + IntToStr(IDProd) + ''','
              + ' ''' + IntToStr(IDFuncCaixa) + ''','
              + ' ''' + SituacaoCliente + ''','
              + ' ''' + IntToStr(IDFuncComiss) + ''','
              + ' ''' + ValorDesconto + ''','
              + ' ''' + FormatDateTime('mm-dd-yyyy',now) + ''','
              + ' ''' + FormatDateTime('hh:mm:ss',now) + ''')');
              ibRecVendas.ExecSQL;
              Commit(ibRecVendas);

              ibServsVenda.SQL.Clear;
              ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
              + 'IDTIPOPAGTO = ''' + IntToStr(IDTipoPagamento.ID) + '''WHERE IDSERVSVENDA = ''' + IntToStr(IDVendasServs) + '''');
              ibServsVenda.ExecSQL;
              Commit(ibServsVenda);

            end else if (cboTipoPagto.Text <> '')and(cboTPagto.Text <> '') Then begin

           ///   ibRecVendas.Close;
              ibRecVendas.SQL.Clear;
              ibRecVendas.SQL.Add('INSERT INTO TBLRECEBEVENDAS'
              + '(IDVENDA,IDVENDAINT,TOTALVENDA,VLRPAGO,TROCO,IDTIPOPAGTO,IDTIPOPROD,'
              + 'IDPROD,IDFUNC,SITUACAOVENDA,IDFUNCCOMISSAO,VLRDESCONTO,DATA,HORA) values '
              + '(''' + IntToStr(IDVenda) + ''',''' + IntToStr(IDVendaInt) + ''','
              + ' ''' + ValorPago + ''',''' + ValorPago + ''','
              + ' ''' + ValorTroco + ''','
              + StringTipoPagamento
              + ' ''' + IntToStr(IDTipoProduto) + ''','
              + ' ''' + IntToStr(IDProd) + ''','
              + ' ''' + IntToStr(IDFuncCaixa) + ''','
              + ' ''' + SituacaoCliente + ''','
              + ' ''' + IntToStr(IDFuncComiss) + ''','
              + ' ''' + ValorDesconto + ''','
              + ' ''' + FormatDateTime('mm-dd-yyyy',now) + ''','
              + ' ''' + FormatDateTime('hh:mm:ss',now) + ''')');
              ibRecVendas.ExecSQL;
              Commit(ibRecVendas);

              ibServsVenda.SQL.Clear;
              ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
              + 'IDTIPOPAGTO = ''' + IntToStr(IDTipoPagamento.ID) + '''WHERE IDSERVSVENDA = ''' + IntToStr(IDVendasServs) + '''');
              ibServsVenda.ExecSQL;
              Commit(ibServsVenda);              

            end;//if

            if frmVendasLoja.lbl_Cliente.Caption = '' Then begin

              if frmVendasLoja.lbl_CodPosVenda.Caption <> '' Then begin

             ///   ibServsVendasCli.Close;
                ibServsVendasCli.SQL.Clear;
                ibServsVendasCli.SQL.Add('INSERT INTO TBLSERVICOSVENDASCLI '
                + '(IDFUNC,DATA) values '
                + '(''' + IntToStr(IDFuncCaixa) + ''','
                + ' ''' + FormatDateTime('mm-dd-yyyy',now) + ''')');
                ibServsVendasCli.ExecSQL;
                Commit(ibServsVendasCli);

               //select para trazer o ultimo id
               { ibServsVendasCli.Close;
                ibServsVendasCli.SQL.Clear;
                ibServsVendasCli.SQL.Add('SELECT * FROM TBLSERVICOSVENDASCLI ORDER BY IDSERVSVENDA DESC');
                ibServsVendasCli.Open; }

              ////  if ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger = 1 Then begin

              ////    IDVendasServs := 1;

              ////  end else begin

            ////     IDVendasServs := ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger;

              ////  end;

                if frmVendasLoja.lbl_CodVenda.Caption <> '' Then begin

                IDVendasServs := StrToInt(frmVendasLoja.lbl_CodVenda.Caption);////ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger;

                end else begin

                IDVendasServs := 0;

                end;

                PosVenda := 'Pago';

               /// ibServsVenda.Close;
                ibServsVenda.SQL.Clear;
                ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
                + 'POSVENDA = ''' + PosVenda + ''','
                + 'IDSERVSVENDA = ''' + IntToStr(IDVendasServs) + ''','
                + 'IDCLIENTE = ''' + IntToStr(IDVendaCliente) + ''','
                + 'PENDENTEPAGO = ''' + SituacaoCliente + ''' WHERE CODPOSVENDA = ''' + frmVendasLoja.lbl_CodPosVenda.Caption + '''');
                ibServsVenda.ExecSQL;
                Commit(ibServsVenda);

             {   //VENDE ITEM

                CodigoPosVenda := frmVendasLoja.lbl_CodPosVenda.Caption;

                Commit(ibTempVendaLoja);
                ibTempVendaLoja.Close;
                ibTempVendaLoja.SQL.Clear;
                ibTempVendaLoja.SQL.Add('SELECT * FROM TBLSERVICOSVENDAS WHERE IDPOSVENDA=''' + CodigoPosVenda + '''');
                ibTempVendaLoja.Open;


                Commit(ibConfig);
                ibConfig.Close;
                ibConfig.SQL.Clear;
                ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
                ibConfig.Open;

                ImpressaoTermica   := ibConfig.FieldByName('IMPRESSORATERMICA').AsString;
                DarumaMFD          := ibConfig.FieldByName('DARUMAMFD').AsString;
                AnalisedeRetorno   := ibConfig.FieldByName('ANALISARETORNO').AsString;

                if (DarumaMFD = 'Sim')and(ImpressaoTermica = 'Sim') Then begin


                  while not ibTempVendaLoja.Eof do begin

                    ProdutoID := ibTempVendaLoja.FieldByName('IDPROD').AsInteger;

                    Commit(ibProdutos);
                    ibProdutos.Close;
                    ibProdutos.SQL.Clear;
                    ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE IDPROD=''' + IntToStr(ProdutoID) + '''');
                    ibProdutos.Open;

                    Str_Aliquota := ibProdutos.FieldByName('ALIQUOTA').AsString;
                    CodBarras    := ibProdutos.FieldByName('CODBARRAS').AsString;
                    NomeProd  := ibProdutos.FieldByName('NOME').AsString;

                    RVlrUnit  := StrtoFloat(StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('VLRUNIT').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
                    VLrUnit   := FormatFloat(CasasDecimais('Produtos'),RVlrUnit);//StringReplace(FloatToStr(RVlrUnit),ThousandSeparator,'',[rfReplaceAll]);


                    RVlrTotal := StrtoFloat(StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
                    Vlrtotal  := FormatFloat(CasasDecimais('Produtos'),RVlrTotal);//StringReplace(FloatToStr(RVlrTotal),ThousandSeparator,'',[rfReplaceAll]);


                    RQtde     := StrtoFloat(StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('QTDE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
                    Qtde      := FormatFloat('0',RQtde);//StringReplace(FloatToStr(RQtde),ThousandSeparator,'',[rfReplaceAll]);

                    Str_Codigo := Trim(CodBarras);

                    Str_Descricao := Trim(NomeProd);

                    Str_Tipo_de_Quantidade := 'I';

                    Str_Quantidade := Trim(Qtde);

                    Int_Casas_Decimais := 2;

                    Str_Valor_Unitario := Trim(VLrUnit);

                    Str_Tipo_de_Desconto := '$';

                    Str_Valor_do_Desconto := '0,00';

                    Int_Retorno := Daruma_FI_VendeItem(pchar( Str_Codigo ), pchar( Str_Descricao ), pchar( Str_Aliquota ), pchar( Str_Tipo_de_Quantidade ), pchar( Str_Quantidade ), Int_Casas_Decimais, pchar( Str_Valor_Unitario ), pchar( Str_Tipo_de_Desconto ), pchar( Str_Valor_do_Desconto ) );

                    ibTempVendaLoja.Next;

                  end;//while


                  if AnalisedeRetorno = 'Sim' Then begin

                    Daruma_Analisa_Retorno();

                  end;

                end;//if }

              end;//if label cod posvenda

              if frmVendasLoja.lbl_CodPosVenda.Caption = '' Then begin

                PosVenda := 'Pago';

                ///ibServsVenda.Close;
                ibServsVenda.SQL.Clear;
                ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
                + 'IDSERVSVENDA = ''' + IntToStr(IDVendasServs) + ''','
                + 'IDCLIENTE = ''' + IntToStr(IDVendaCliente) + ''','
                + 'POSVENDA = ''' + PosVenda + ''','
                + 'PENDENTEPAGO = ''' + SituacaoCliente + ''' WHERE IDSERVSVENDA = ''' + IntToStr(IDVendasServs) + '''');
                ibServsVenda.ExecSQL;
                Commit(ibServsVenda);

              end;//if label cod posvenda

            end;//if label cliente = ''

           if frmVendasLoja.lbl_Cliente.Caption <> '' Then begin

            { ibServsVendasCli.Close;
             ibServsVendasCli.SQL.Clear;
             ibServsVendasCli.SQL.Add('INSERT INTO TBLSERVICOSVENDASCLI '
             + '(IDFUNC,DATA) values '
             + '(''' + IntToStr(IDFuncCaixa) + ''','
             + ' ''' + FormatDateTime('mm-dd-yyyy',now) + ''')');
             ibServsVendasCli.ExecSQL;
             Commit(ibServsVendasCli);

             //select para trazer o ultimo id
             ibServsVendasCli.Close;
             ibServsVendasCli.SQL.Clear;
             ibServsVendasCli.SQL.Add('SELECT * FROM TBLSERVICOSVENDASCLI ORDER BY IDSERVSVENDA DESC');//=''' + IntToStr(IDVendaCaixa) + '''');
             ibServsVendasCli.Open; }

           ////  if ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger = 1 Then begin

            ////   IDVendasServs := 1;

           ////  end else begin

            ////   IDVendasServs := ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger;

           ////  end;

                if frmVendasLoja.lbl_CodVenda.Caption <> '' Then begin

                IDVendasServs := StrToInt(frmVendasLoja.lbl_CodVenda.Caption);////ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger;

                end else begin

                IDVendasServs := 0;

                end;

              if frmVendasLoja.lbl_CodPosVenda.Caption <> '' Then begin

                PosVenda := 'Pago';

               ///ibServsVenda.Close;
                ibServsVenda.SQL.Clear;
                ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
                + 'POSVENDA = ''' + PosVenda + ''','
                + 'IDSERVSVENDA = ''' + IntToStr(IDVendasServs) + ''','
                + 'IDCLIENTE = ''' + IntToStr(IDVendaCliente) + ''','
                + 'PENDENTEPAGO = ''' + SituacaoCliente + ''' WHERE CODPOSVENDA = ''' + frmVendasLoja.lbl_CodPosVenda.Caption + '''');
                ibServsVenda.ExecSQL;
                Commit(ibServsVenda);

            ///   ibServsVendasCli.Close;
               ibServsVendasCli.SQL.Clear;
               ibServsVendasCli.SQL.Add('INSERT INTO TBLSERVICOSVENDASCLI '
               + '(IDFUNC,DATA) values '
               + '(''' + IntToStr(IDFuncCaixa) + ''','
               + ' ''' + FormatDateTime('mm-dd-yyyy',now) + ''')');
               ibServsVendasCli.ExecSQL;
               Commit(ibServsVendasCli);

{                //VENDE ITEM

                CodigoPosVenda := frmVendasLoja.lbl_CodPosVenda.Caption;

                Commit(ibTempVendaLoja);
                ibTempVendaLoja.Close;
                ibTempVendaLoja.SQL.Clear;
                ibTempVendaLoja.SQL.Add('SELECT * FROM TBLSERVICOSVENDAS WHERE IDPOSVENDA=''' + CodigoPosVenda + '''');
                ibTempVendaLoja.Open;


                Commit(ibConfig);
                ibConfig.Close;
                ibConfig.SQL.Clear;
                ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
                ibConfig.Open;

                ImpressaoTermica   := ibConfig.FieldByName('IMPRESSORATERMICA').AsString;
                DarumaMFD          := ibConfig.FieldByName('DARUMAMFD').AsString;
                AnalisedeRetorno   := ibConfig.FieldByName('ANALISARETORNO').AsString;

                if (DarumaMFD = 'Sim')and(ImpressaoTermica = 'Sim') Then begin


                  while not ibTempVendaLoja.Eof do begin

                    ProdutoID := ibTempVendaLoja.FieldByName('IDPROD').AsInteger;

                    Commit(ibProdutos);
                    ibProdutos.Close;
                    ibProdutos.SQL.Clear;
                    ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE IDPROD=''' + IntToStr(ProdutoID) + '''');
                    ibProdutos.Open;

                    Str_Aliquota := ibProdutos.FieldByName('ALIQUOTA').AsString;
                    CodBarras    := ibProdutos.FieldByName('CODBARRAS').AsString;
                    NomeProd  := ibProdutos.FieldByName('NOME').AsString;

                    RVlrUnit  := StrtoFloat(StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('VLRUNIT').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
                    VLrUnit   := FormatFloat(CasasDecimais('Produtos'),RVlrUnit);//StringReplace(FloatToStr(RVlrUnit),ThousandSeparator,'',[rfReplaceAll]);


                    RVlrTotal := StrtoFloat(StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
                    Vlrtotal  := FormatFloat(CasasDecimais('Produtos'),RVlrTotal);//StringReplace(FloatToStr(RVlrTotal),ThousandSeparator,'',[rfReplaceAll]);


                    RQtde     := StrtoFloat(StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('QTDE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
                    Qtde      := FormatFloat('0',RQtde);//StringReplace(FloatToStr(RQtde),ThousandSeparator,'',[rfReplaceAll]);

                    Str_Codigo := Trim(CodBarras);

                    Str_Descricao := Trim(NomeProd);

                    Str_Tipo_de_Quantidade := 'I';

                    Str_Quantidade := Trim(Qtde);

                    Int_Casas_Decimais := 2;

                    Str_Valor_Unitario := Trim(VLrUnit);

                    Str_Tipo_de_Desconto := '$';

                    Str_Valor_do_Desconto := '0,00';

                    Int_Retorno := Daruma_FI_VendeItem(pchar( Str_Codigo ), pchar( Str_Descricao ), pchar( Str_Aliquota ), pchar( Str_Tipo_de_Quantidade ), pchar( Str_Quantidade ), Int_Casas_Decimais, pchar( Str_Valor_Unitario ), pchar( Str_Tipo_de_Desconto ), pchar( Str_Valor_do_Desconto ) );

                    ibTempVendaLoja.Next;

                  end;//while


                  if AnalisedeRetorno = 'Sim' Then begin

                    Daruma_Analisa_Retorno();

                  end; }

            /////  end;

              end;//if label cod posvenda

              if frmVendasLoja.lbl_CodPosVenda.Caption = '' Then begin

                PosVenda := 'Pago';

              /// ibServsVenda.Close;
                ibServsVenda.SQL.Clear;
                ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
                + 'POSVENDA = ''' + PosVenda + ''','
                + 'IDSERVSVENDA = ''' + IntToStr(IDVendasServs) + ''','
                + 'IDCLIENTE = ''' + IntToStr(IDVendaCliente) + ''','
                + 'PENDENTEPAGO = ''' + SituacaoCliente + ''' WHERE IDSERVSVENDA = ''' + IntToStr(IDVendasServs) + '''');
                ibServsVenda.ExecSQL;
                Commit(ibServsVenda);

              end;//if label cod posvenda

           end;//if label cliente <> ''

        end;//if cbotipopagto <> pendente

////////////////////////////////////////////////////////////////////////////////

       if cboTPagto.Text <> '' Then begin

        ValorVendaPago := StringReplace(lbl_edtValorPago.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
        ValorVendaPago := StringReplace(ValorVendaPago,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);
        if ValorVendaPago  = '' Then
            ValorVendaPago := '0';


        /// ibRecVendas.Close;
         ibRecVendas.SQL.Clear;
         ibRecVendas.SQL.Add('INSERT INTO TBLRECEBEVENDAS'
         + '(IDVENDA,IDVENDAINT,VLRPAGO,TOTALVENDA,IDTIPOPAGTO,IDTIPOPROD,'
         + 'IDPROD,IDFUNC,SITUACAOVENDA,IDFUNCCOMISSAO,DATA,HORA) values '
         + '(''' + IntToStr(IDVenda) + ''',''' + IntToStr(IDVendaInt) + ''','
         + ' ''' + ValorVendaPago + ''',''' + ValorVendaPago + ''','
         + StringTPagto
         + ' ''' + IntToStr(IDTipoProduto) + ''','
         + ' ''' + IntToStr(IDProd) + ''','
         + ' ''' + IntToStr(IDFuncCaixa) + ''','
         + ' ''' + SituacaoCliente + ''','
         + ' ''' + IntToStr(IDFuncComiss) + ''','
         + ' ''' + FormatDateTime('mm-dd-yyyy',now) + ''','
         + ' ''' + FormatDateTime('hh:mm:ss',now) + ''')');
         ibRecVendas.ExecSQL;
         Commit(ibRecVendas);

       end;//if cbotpagto

             { if lbl_edtKM.Text <> '' Then begin

               /// ibServsVenda.Close;
                ibServsVenda.SQL.Clear;
                ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
                + 'KM = ''' + lbl_edtKM.Text + ''' WHERE IDSERVSVENDA = ''' + IntToStr(IDVendasServs) + '''');
                ibServsVenda.ExecSQL;
                Commit(ibServsVenda);

              end;//if label cod posvenda  }

       { if (lbl_edtCodCli.Text <> '') and (lbl_edtNomeCliente.Text <> '') and (cboTipoPagto.Text <> 'PENDENTE') Then begin


          SituacaoCliente := 'Pago';
          IDVendaCliente := StrToInt(lbl_edtCodCli.Text);


          ibServsVenda.Close;
          ibServsVenda.SQL.Clear;
          ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
          + 'IDCLIENTE = ''' + IntToStr(IDVendaCliente) + ''','
          + 'PENDENTEPAGO = ''' + SituacaoCliente + ''' WHERE IDSERVSVENDA = ''' + IntToStr(IDVenda) + '''');
          ibServsVenda.ExecSQL;
          Commit(ibServsVenda);


        end;}

////////////////////////////////////////////////////////////////////////////////


          Commit(ibDetalhePosVenda);
          ibDetalhePosVenda.Close;
          ibDetalhePosVenda.SQL.Clear;
          ibDetalhePosVenda.SQL.Add('SELECT * FROM TBLDETALHEPOSVENDA WHERE IDVENDA=''' + IntToStr(IDVendasServs) + '''');
          ibDetalhePosVenda.Open;

          if ibDetalhePosVenda.RecordCount > 0 Then begin

            intPagtoPosVenda := 1;

            ibDetalhePosVenda.Close;
            ibDetalhePosVenda.SQL.Clear;
            ibDetalhePosVenda.SQL.Add('UPDATE TBLDETALHEPOSVENDA SET '
            + 'PAGTO = ''' + IntToStr(intPagtoPosVenda) + ''' WHERE IDVENDA=''' + IntToStr(IDVendasServs) + '''');
            ibDetalhePosVenda.ExecSQL;

          end;

////////////////////////////////////////////////////////////////////////////////
  //ESTRUTURA INICIAL PARA IMPRESS�O

        Commit(ibConfig);
        ibConfig.Close;
        ibConfig.SQL.Clear;
        ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
        ibConfig.Open;

        AvisaCupom         := ibConfig.FieldByName('IMPRIMIRCUPOM').AsString;
        ImprimirDireto     := ibConfig.FieldByName('IMPRIMIRDIRETO').AsString;
        QtdedeSaltos       := IntToStr(ibConfig.FieldByName('QTDESALTOS').AsInteger);
        DesenhodeDivisao   := ibConfig.FieldByName('DESENHODIVISAO').AsString;
        FraseRodape        := ibConfig.FieldByName('FRASERODAPE').AsString;
        FrasePed           := ibConfig.FieldByName('FRASE').AsString;
        ImpressaoMatricial := ibConfig.FieldByName('IMPRESSORAMATRICIAL').AsString;
        ImpressaoTermica   := ibConfig.FieldByName('IMPRESSORATERMICA').AsString;
//        LPT1               := ibConfig.FieldByName('LPT1').AsString;
//        COM1               := ibConfig.FieldByName('COM1').AsString;
        DarumaMFD          := ibConfig.FieldByName('DARUMAMFD').AsString;
        BematechMFD        := ibConfig.FieldByName('BEMATECHMFD').AsString;
//        ECF                := ibConfig.FieldByName('ECF').AsString;
        Aliquota           := ibConfig.FieldByName('ALIQUOTA').AsString;
        intSATDaruma       := ibConfig.FieldByName('SATDARUMA').AsInteger;
        AtivarCalcIBPT     := ibConfig.FieldByName('ATIVARCALCULOIBPT').AsInteger;
        strGavDaruma       := ibConfig.FieldByName('GAVETADARUMA').AsString;
        strNCMFixo         := ibConfig.FieldByName('NCMFIXO').AsString;
        intCupomSimples    := ibConfig.FieldByName('CUPOMSIMPLESCONF').AsInteger;
        DesenhoDivisao   := ibConfig.FieldByName('DESENHODIVISAO').AsString;
        CaminhodeRede  := (ibConfig.FieldByName('CAMINHODEREDE').AsString);
        
              if ibConfig.FieldByName('CAMINHODEREDE').AsString <> '' Then begin

                CaminhoImpressora := ibConfig.FieldByName('CAMINHODEREDE').AsString;

              end;

        ibDadosEmpresa.Close;
        ibDadosEmpresa.SQL.Clear;
        ibDadosEmpresa.SQL.Add('SELECT IDCRT FROM TBLDADOSEMPRESA');
        ibDadosEmpresa.Open;

        intCRT := ibDadosEmpresa.FieldByName('IDCRT').AsInteger;

        if (intCRT = 0)Then begin

          intCRT := 1;

        end;
          
////////////////////////////////////////////////////////////////////////////////
          if intSATDaruma = 1 Then begin


            ConfirmaImprSAT := Application.MessageBox('Confirma Impress�o','SAT',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

            if strGavDaruma = 'Sim' Then begin

              IRetorno := iAcionarGaveta_DUAL_DarumaFramework();//eAbrirGaveta_ECF_Daruma();

            end;  


            if ConfirmaImprSAT = 6 Then begin

              intImprSat := 1;

              if intImprSat = 1 Then begin

            //  if IniciaCupomFiscalF4 = 'Nao' Then begin
                 //**ABRECUPOM SAT**
                // Str_CPF_ou_CNPJ := '';

                // Int_Retorno := iCFAbrirPadrao_ECF_Daruma();

                  Str_Nome := frmVendasLoja.lbl_Cliente.Caption;
                  Str_CPF := frmVendasLoja.lbl_edtCnpjCpf.Caption ;
                  Str_Endereco := '';
                  iRetorno:=  aCFAbrir_SAT_Daruma(Str_CPF, Str_Nome, Str_Endereco);
                  //Tratar_RetornoSAT(iRetorno);
               ///  iRetorno:= eAtualizarFW_SAT_Daruma();
            //  end;

                if frmVendasLoja.lbl_CodPosVenda.Caption = '' Then begin

                  Commit(ibTempVendaLoja);
                ///  ibTempVendaLoja.Close;
                  ibTempVendaLoja.SQL.Clear;
                  ibTempVendaLoja.SQL.Add('SELECT TBLSERVICOSVENDAS.*,'
                  + 'CADPRODUTOS.NOME As Produto,CADPRODUTOS.CODBARRAS FROM TBLSERVICOSVENDAS '
                  + 'INNER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD WHERE IDSERVSVENDA=''' + (frmVendasLoja.lbl_CodVenda.Caption) + '''');
                  ibTempVendaLoja.Open;

                 (ibTempVendaLoja.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := ',0.00';
                 (ibTempVendaLoja.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := ',0.00';
                 (ibTempVendaLoja.FieldByName('VALORB') as TFloatField).DisplayFormat := ',0.00';
                 (ibTempVendaLoja.FieldByName('VALORC') as TFloatField).DisplayFormat := ',0.00';
                 (ibTempVendaLoja.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis');

               end;


                    while not ibTempVendaLoja.Eof do begin

                          ProdutoID := ibTempVendaLoja.FieldByName('IDPROD').AsInteger;
                          ncmexistente := False;

                          Commit(ibProdutos);
                          ibProdutos.Close;
                          ibProdutos.SQL.Clear;
                          ibProdutos.SQL.Add('SELECT CADPRODUTOS.IDPROD,CADPRODUTOS.NCM,CADPRODUTOS.NCMSH,CADPRODUTOS.NOME,'
                          + 'CADPRODUTOS.CODBARRAS,CADPRODUTOS.ALIQUOTA,CADPRODUTOS.NACIONALIDADEPROD,CADPRODUTOS.IDCFOP,'
                          + 'CADPRODUTOS.IDCST,CADPRODUTOS.IDCSOSN,CADPRODUTOS.PIS,CADPRODUTOS.IPI,CADPRODUTOS.ICMS,CADPRODUTOS.COFINS,'
                          + 'TBL_CFOP.CODIGO_CFOP,TBL_CST.CODIGO_CST,TBL_CSOSN.CODIGO_CSOSN FROM CADPRODUTOS '
                          + 'LEFT OUTER JOIN TBL_CFOP ON CADPRODUTOS.IDCFOP=TBL_CFOP.IDCFOP '
                          + 'LEFT OUTER JOIN TBL_CST ON CADPRODUTOS.IDCST=TBL_CST.IDCST '
                          + 'LEFT OUTER JOIN TBL_CSOSN ON CADPRODUTOS.IDCSOSN=TBL_CSOSN.ID_CSOSN WHERE IDPROD=''' + IntToStr(ProdutoID) + '''');
                          ibProdutos.Open;

                          Str_Aliquota := ibProdutos.FieldByName('ALIQUOTA').AsString;

                          if Str_Aliquota = '' Then begin

                            Str_Aliquota := '0,00';
                            
                          end;

                          InformaNCM   := ibProdutos.FieldByName('NCM').AsString;

                          strCFOP      := ibProdutos.FieldByName('CODIGO_CFOP').AsString;
                          strCST       := ibProdutos.FieldByName('CODIGO_CST').AsString;
                          strCSOSN     := ibProdutos.FieldByName('CODIGO_CSOSN').AsString;
                          strNCMProd   := ibProdutos.FieldByName('NCM').AsString;

                          rPIS         := (ibProdutos.FieldByName('PIS').AsFloat);
                          strPIS       := FormatFloat(CasasDecimais('Produtos'),rPIS);

                          rIPI         :=  (ibProdutos.FieldByName('IPI').AsFloat);
                          strIPI       := FormatFloat(CasasDecimais('Produtos'),rIPI);

                          rICMS        := (ibProdutos.FieldByName('ICMS').AsFloat);
                          strICMS      := FormatFloat(CasasDecimais('Produtos'),rICMS);

                          rCOFINS      := (ibProdutos.FieldByName('COFINS').AsFloat);
                          strCOFINS    := FormatFloat(CasasDecimais('Produtos'),rCOFINS);

                          strCFOP := AnsiReplaceStr(strCFOP,'.','');
                          
                          ibImposto.Close;
                          ibImposto.SQL.Clear;
                          ibImposto.SQL.Add('SELECT * FROM TBLIMPOSTO_IBPT WHERE TBLIMPOSTO_IBPT.CODIGO=''' + InformaNCM + '''');
                          ibImposto.Open;

                          if ibImposto.RecordCount > 0 Then begin

                            ncmexistente := True;

                          end;

                              if (ncmexistente = True)and(AtivarCalcIBPT = 1) Then begin

                              //  InformaNCM   := ibProdutos.FieldByName('NCM').AsString;

                                if InformaNCM <> '' Then begin

                                  strNCM          := StringReplace(ibProdutos.FieldByName('NCM').AsString,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
                                 // intNCM := StrToInt(strNCM);
                                //  NCM := IntToStr(intNCM);
                                  intNacionalidadeProd := (ibProdutos.FieldByName('NACIONALIDADEPROD').AsInteger);

                                    if intNacionalidadeProd = 1 Then begin

                                      ibImposto.Close;
                                      ibImposto.SQL.Clear;
                                      ibImposto.SQL.Add('SELECT * FROM TBLIMPOSTO_IBPT WHERE TBLIMPOSTO_IBPT.CODIGO=''' + strNCM + '''');
                                      ibImposto.Open;

                                      strPorcNCM     := (ibImposto.FieldByName('NACIONALFE').AsString);
                                      strImpostoEstadual := (ibImposto.FieldByName('ESTADUAL').AsString);

                                    end;

                                    if intNacionalidadeProd = 2 Then begin

                                      ibImposto.Close;
                                      ibImposto.SQL.Clear;
                                      ibImposto.SQL.Add('SELECT * FROM TBLIMPOSTO_IBPT WHERE TBLIMPOSTO_IBPT.CODIGO=''' + strNCM + '''');
                                      ibImposto.Open;

                                      strPorcNCM     := (ibImposto.FieldByName('IMPORTADOS').AsString);
                                      strImpostoEstadual := (ibImposto.FieldByName('ESTADUAL').AsString);

                                    end;

                                end;

                              end;//calcibpt
//****************************************************************************//
  //     .*,CADPRODUTOS.NCM FROM TBLIMPOSTO_IBPT '
  //    + 'INNER JOIN CADPRODUTOS ON TBLIMPOSTO_IBPT.CODIGO=CADPRODUTOS.NCM

                          rTotalVlrVenda := StrtoFloat(StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
                          strTotalVenda  := FormatFloat(CasasDecimais('Produtos'),rTotalVlrVenda);//StringReplace(FloatToStr(RVlrTotal),ThousandSeparator,'',[rfReplaceAll]);

                          rTotalQtde     := StrtoFloat(StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('QTDE').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
                          strQtde        := FormatFloat(CasasDecimais('Produtos'),rTotalQtde);//StringReplace(FloatToStr(RQtde),ThousandSeparator,'',[rfReplaceAll]);

                        if (AtivarCalcIBPT = 1)and(ncmexistente = True) Then begin

                          if InformaNCM > '0' Then begin

                              //CALCULA ALIQUOTA NACIONAL OU IMORTADO imposto federal
                              strPorcNCM := StringReplace(strPorcNCM,FormatSettings.ThousandSeparator,',',[rfReplaceAll]);
                              rVlrPorcNCM    :=  StrtoFloat(strPorcNCM);//StrtoFloat(StringReplace(FloattoStr(ibImposto.FieldByName('ALIQNAC').AsFloat),ThousandSeparator,'.',[rfReplaceAll]));

                              //CALCULAIMPOSTO ESTADUAL
                              strImpostoEstadual := StringReplace(strImpostoEstadual,FormatSettings.ThousandSeparator,',',[rfReplaceAll]);
                              rVlrImpostoEstadual    :=  StrtoFloat(strImpostoEstadual);//StrtoFloat(StringReplace(FloattoStr(ibImposto.FieldByName('ALIQNAC').AsFloat),ThousandSeparator,'.',[rfReplaceAll]));

                            //calcula ref aliquota nacional ou importada imposto federal
                              CalculoPorcentagem := rTotalVlrVenda * rVlrPorcNCM / 100;

                            //calcula imposto estadual
                              rCalculoImpEstadual := rTotalVlrVenda * rVlrImpostoEstadual / 100;

                            // ref imposto federal
                            rTotalImposto := CalculoPorcentagem;

                            // ref imposto estadual
                            rTotalImpostoEstadual := rCalculoImpEstadual;

                            //total federal
                            rTotalGeralImposto :=  rTotalImposto + rTotalGeralImposto;
                            resultado :=  FormatFloat(CasasDecimais('Produtos'),rTotalGeralImposto);

                            //total estadual
                            rTotalGeralImpostoEstadual :=  rTotalImpostoEstadual + rTotalGeralImpostoEstadual;
                            resultadoestadual :=  FormatFloat(CasasDecimais('Produtos'),rTotalGeralImpostoEstadual);

                          end;

                        end;

                            RSomaaVenda := rTotalVlrVenda + RSomaaVenda;
                            rSomaTotaldaVenda := RSomaaVenda - rTotalGeralImposto - rTotalGeralImpostoEstadual;
                            strTotalpelosprodutos := FormatFloat(CasasDecimais('Produtos'),rSomaTotaldaVenda);

//****************************************************************************//


                      if ibProdutos.FieldByName('CODBARRAS').AsString > '0' Then begin

                        CodBarras    := ibProdutos.FieldByName('CODBARRAS').AsString;

                      end else begin

                        CodBarras    := IntToStr(ibProdutos.FieldByName('IDPROD').AsInteger);



                      end;


                      NomeProd  := ibProdutos.FieldByName('NOME').AsString;

                      RVlrUnit  := StrtoFloat(StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('VLRUNIT').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
                      VLrUnit   := FormatFloat(CasasDecimais('Produtos'),RVlrUnit);//StringReplace(FloatToStr(RVlrUnit),ThousandSeparator,'',[rfReplaceAll]);
                                   // FormatFloat('##.00',RVlrUnit);//#,##0,00

                      RVlrTotal := StrtoFloat(StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
                      Vlrtotal  := FormatFloat(CasasDecimais('Produtos'),RVlrTotal);//StringReplace(FloatToStr(RVlrTotal),ThousandSeparator,'',[rfReplaceAll]);
                                  // FormatFloat('##.00',RVlrTotal);//

                      RQtde     := StrtoFloat(StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('QTDE').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
                      Qtde      := FormatFloat(CasasDecimais('Combustiveis'),RQtde);//StringReplace(FloatToStr(RQtde),ThousandSeparator,'',[rfReplaceAll]);


                        str_Aliquota:= Str_Aliquota;
                        str_Quantidade:= Trim(Qtde);
                        str_PrecoUnit:= (VLrUnit);
                        str_TipoDescAcres:=  'D$';
                        str_ValorDescAcres:= lbl_edtDesconto.Text;
                        str_CodigoItem:= Trim(CodBarras);
                        str_UnidMedida:= 'UN';
                        str_Descricao:= Trim(NomeProd);

                        if strNCMProd = '' Then begin

                          strNCMProd := strNCMFixo;

                        end;
                        
                        if (strCFOP <>'')Then begin

                          iRetorno:= regAlterarValor_SAT_Daruma('PROD\CFOP',strCFOP);// -------------------> aqui lan�a o cfop;
                                     
                        end;

                        if (strNCMProd <>'')Then begin

                          iRetorno:= regAlterarValor_SAT_Daruma('PROD\NCM',strNCMProd);// -------------------> aqui lan�a o cfop;
                                    
                        end;

                      {  if (strCST <>'')Then begin

                          iRetorno:= regAlterarValor_SAT_Daruma('IMPOSTO\PIS\PISSN\CST',strCST);
                         // iRetorno:= regAlterarValor_SAT_Daruma('IMPOSTO\PIS\PISOUTR\CST','99');

                        end;

                        if (strCSOSN <>'')Then begin

                          iRetorno:= regAlterarValor_SAT_Daruma('IMPOSTO\ICMS\ICMSSN102\CSOSN',strCSOSN);
                          iRetorno:= regAlterarValor_SAT_Daruma('IMPOSTO\ICMS\ICMSSN102\ORIG','0');

                        end; }

                        //iRetorno:= aCFConfImposto_SAT_Daruma();

                       // iRetorno:=aCFVenderCompleto_SAT_Daruma(Str_Aliquota,Str_Quantidade,str_PrecoUnit,str_TipoDescAcres,str_ValorDescAcres,str_CodigoItem,strNCMProd,strCFOP,str_UnidMedida,Str_Descricao,'');
                        iRetorno:= aCFVender_SAT_Daruma(str_Aliquota, str_Quantidade , str_PrecoUnit , str_TipoDescAcres , str_ValorDescAcres , str_CodigoItem, str_UnidMedida, str_Descricao);
                       // Tratar_RetornoSAT(iRetorno);

                      ibTempVendaLoja.Next;

                    end;//while

////////////////////////////////////////////////////////////////////////////////

                    if (lbl_edtDesconto.Text > '0,00') Then begin

                        str_TipoDescAcres:= 'D$';
                        Str_Valor_do_Desconto:= lbl_edtDesconto.Text;
                        iRetorno:= aCFTotalizar_SAT_Daruma(str_TipoDescAcres, Str_Valor_do_Desconto);
                      //  Tratar_RetornoSAT(iRetorno);


                    end;

                    if (lbl_edtDesconto.Text = '0,00') Then begin

                        str_TipoDescAcres:= 'D$';
                        Str_Valor_do_Desconto:= '0,00';
                        iRetorno:= aCFTotalizar_SAT_Daruma(str_TipoDescAcres, Str_Valor_do_Desconto);
                      //  Tratar_RetornoSAT(iRetorno);

                    end;

////////////////////////////////////////////////////////////////////////////////

                    //EFETUA FORMAPAGTO

                    if (cboTipoPagto.Text <> '')and(cboTPagto.Text = '')Then begin

                      str_FormaPgto:= cboTipoPagto.Text;
                      str_Valor:= StringReplace(lbl_edtValor.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
                      str_CodCred:= '';
                      iRetorno:= aCFEfetuarPagamento_SAT_Daruma(str_FormaPgto, str_Valor, str_CodCred);
                     // Tratar_RetornoSAT(iRetorno);

                    end;

                    if (cboTipoPagto.Text <> '')and(cboTPagto.Text <> '')Then begin

                      str_FormaPgto:= cboTipoPagto.Text;
                      str_Valor:= lbl_edtValor.Text;

                      str_FormaPgto2 := cboTPagto.Text;
                      str_Valor2:= lbl_edtValorPago.Text;

                      str_CodCred:= '';
                      str_CodCred2:= '';
                      
                      iRetorno:= aCFEfetuarPagamento_SAT_Daruma(str_FormaPgto, str_Valor, str_CodCred);
                      iRetorno:= aCFEfetuarPagamento_SAT_Daruma(str_FormaPgto2, str_Valor2, str_CodCred2);
                     // Tratar_RetornoSAT(iRetorno);

                    end;
////////////////////////////////////////////////////////////////////////////////

              //TERMINA FECH CUPOM
                    if  (strTotalpelosprodutos >'0,00')and(AtivarCalcIBPT = 1) Then begin

                      Str_Mensagem_Promocional  := 'Trib aprox R$:'+resultado+' Federal e '+resultadoestadual+' Estadual'+#10+'Fonte:IBPT 5oi7eW';

                    end else begin

                      Str_Mensagem_Promocional := 'Obrigado Volte Sempre!!!';

                    end;

                    sTipoCupomAdic := '0';

                    //Int_Retorno := iCFEncerrar_ECF_Daruma(sTipoCupomAdic,Str_Mensagem_Promocional);

                    str_CupomAdic:= '';
                    str_InfoAdic:= Str_Mensagem_Promocional;
                    iRetorno := tCFEncerrar_SAT_Daruma(str_CupomAdic,str_InfoAdic);
                    Tratar_RetornoSAT(iRetorno);
                    
                    if iRetorno = 1 Then begin

                      intCupomSat := 1;

                      ibServsVenda.Close;
                      ibServsVenda.SQL.Clear;
                      ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
                      + 'CUPOMSAT = ''' + IntToStr(intCupomSat) + ''' WHERE IDSERVS=''' + IntToStr(IDServs) + '''');
                      ibServsVenda.ExecSQL;
                      Commit(ibServsVenda);

                    end;                    
                   //Tratar_RetornoSAT(iRetorno);

                //imprimir cupom sat
             {
                str_Path:= StringOfChar(#0,900);
                str_Tipo:= StringOfChar(#0,2);

                str_Path:= CaminhoXMLDarumaSAT;
                str_Tipo:= IntToStr(CB_Tipo.ItemIndex+1);
                iRetorno:= iImprimirCFe_SAT_Daruma(str_Path, str_Tipo);
                Tratar_RetornoSAT(iRetorno);
                                              }
            intImprSat := 0;

            end;//imprsat=1

            end;//ifconfirmaimpressao

          end;

//****************************************************************************//

//****************************************************************************//
            ///end;//if imprimir pos venda =nao
           // intCupomSimples := Application.MessageBox('Imprimir Simples Conferencia','Imprimir Cupom Simples',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);


              //  CaminhodeRede <>''
            if (CaminhodeRede <>'') Then begin

            intImprimirCupomSimples := Application.MessageBox('Imprimir Cupom Simples Conferencia?','Cupom para Simples Conferencia', +MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1);

            if intImprimirCupomSimples = 6 Then begin

              Commit(ibConfig);
              ibConfig.Close;
              ibConfig.SQL.Clear;
              ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
              ibConfig.Open;

              DesenhoDivisao   := ibConfig.FieldByName('DESENHODIVISAO').AsString;
              QtdedeSaltos := IntToStr(ibConfig.FieldByName('QTDESALTOS').AsInteger);
              FraseRodape  := ibConfig.FieldByName('FRASERODAPE').AsString;
              Frase        := ibConfig.FieldByName('FRASE').AsString;

           //   DataConvertida := FormatDateTime('DD/MM/YYYY',Now);
           //   Hora           := FormatDateTime('hh:mm:ss',Now);

              Commit(ibTempVendaLoja);
              ibTempVendaLoja.Close;
              ibTempVendaLoja.SQL.Clear;
              ibTempVendaLoja.SQL.Add('SELECT TBLSERVICOSVENDAS.IDPROD,TBLSERVICOSVENDAS.IDSERVSVENDA,TBLSERVICOSVENDAS.NOMEPROD,TBLSERVICOSVENDAS.IDFUNC,'
              + 'TBLSERVICOSVENDAS.QTDE,TBLSERVICOSVENDAS.HORA,TBLSERVICOSVENDAS.VLRUNIT,TBLSERVICOSVENDAS.VLRTOTAL,TBLSERVICOSVENDAS.DATA,'
              + 'TBLSERVICOSVENDAS.VALORB,TBLSERVICOSVENDAS.VALORC,TBLSERVICOSVENDAS.IDSERVS,TBLSERVICOSVENDAS.IDCLIENTE,TBLSERVICOSVENDAS.DESCONTO,'
              + 'TBLUSER.IDUSER,TBLUSER.LOGIN,CADPRODUTOS.NOME As Produto,CADPRODUTOS.CODBARRAS,CADPRODUTOS.REF FROM TBLSERVICOSVENDAS '
              + 'LEFT OUTER JOIN TBLUSER ON TBLSERVICOSVENDAS.IDFUNC=TBLUSER.IDUSER '
              + 'INNER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD WHERE IDSERVSVENDA=''' + (frmVendasLoja.lbl_CodVenda.Caption) + '''');
              ibTempVendaLoja.Open;

              intIDCliente := ibTempVendaLoja.FieldByName('IDCLIENTE').AsInteger;
              rVlrDesc     := StrtoFloat(StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('DESCONTO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
              strVlrDesc   := FormatFloat(CasasDecimais('Produtos'),rVlrDesc);//StringReplace(FloatToStr(RQtde),ThousandSeparator,'',[rfReplaceAll]);

              DataConvertida := FormatDateTime('DD/MM/YYYY',ibTempVendaLoja.FieldByName('DATA').AsDateTime);
              Hora           := FormatDateTime('hh:mm:ss',ibTempVendaLoja.FieldByName('HORA').AsDateTime);

             (ibTempVendaLoja.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := ',0.00';
             (ibTempVendaLoja.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := ',0.00';
             (ibTempVendaLoja.FieldByName('VALORB') as TFloatField).DisplayFormat := ',0.00';
             (ibTempVendaLoja.FieldByName('VALORC') as TFloatField).DisplayFormat := ',0.00';
             (ibTempVendaLoja.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis');

               // CaminhodeRede := '';
              //  CaminhodeRede := ('\\CRISTIANO-PC\GenericT');

             //   AssignFile(F,'LPT1'); ///CaminhoRede
                AssignPrn(F);
                Rewrite(F);
                i := 0;
                                                                          //.Text+ #27#97#49

                Commit(ibDadosEmpresa);
                ibDadosEmpresa.Close;
                ibDadosEmpresa.SQL.Clear;
                ibDadosEmpresa.SQL.Add('SELECT * FROM TBLDADOSEMPRESA');
                ibDadosEmpresa.Open;
                            // '<sp>1</sp>'+
                  Writeln(F,(ibDadosEmpresa.FieldByName('NOME').AsString));



                ///  Int_Retorno := Daruma_DUAL_ImprimirTexto(pchar(ibDadosEmpresa.FieldByName('NOME').AsString),0);

                  if ibDadosEmpresa.FieldByName('ENDERECO').AsString <> '' Then begin
                  Writeln(F,(ibDadosEmpresa.FieldByName('ENDERECO').AsString)+','+(ibDadosEmpresa.FieldByName('NUMERO').AsString));
               ///   Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(ibDadosEmpresa.FieldByName('ENDERECO').AsString)+'    ,'+(ibDadosEmpresa.FieldByName('NUMERO').AsString),0);
                  end;

                  if ibDadosEmpresa.FieldByName('BAIRRO').AsString <> '' Then begin
                  Writeln(F,(ibDadosEmpresa.FieldByName('BAIRRO').AsString));
                ///  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(ibDadosEmpresa.FieldByName('BAIRRO').AsString),0);
                  end;

                  if ibDadosEmpresa.FieldByName('TELEFONE').AsString <> '' Then begin
                  Writeln(F,('Fone:'+ibDadosEmpresa.FieldByName('TELEFONE').AsString));
                ///  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Fone: '+ibDadosEmpresa.FieldByName('TELEFONE').AsString),0);
                  end;

                Writeln(F,(DesenhoDivisao));

                Commit(ibCadastro);
                ibCadastro.Close;
                ibCadastro.SQL.Clear;
                ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE IDCAD=''' + IntToStr(intIDCliente) + '''');
                ibCadastro.Open;


                if frmVendasLoja.lbl_Func.Caption <> '' Then begin
                Writeln(F,('Funcion�rio: '+ ibtempVendaLoja.FieldByName('LOGIN').AsString));
                end;

                Writeln(F,('Cupom: '+frmVendasLoja.lbl_CodVenda.Caption));
                Writeln(F,('Data:'+DataConvertida+' '+'Hora:'+Hora));
                Writeln(F,('**Cupom nao Fiscal para simples conferencia**'));
                Writeln(F,(DesenhoDivisao));

                if ibCadastro.RecordCount > 0 Then begin

                   Writeln(F,(ibCadastro.FieldByName('NOME').AsString));
                   Writeln(F,('Telefone: '+ ibCadastro.FieldByName('TELEFONE').AsString));
                   Writeln(F,(ibCadastro.FieldByName('ENDERECO').AsString)+(' , '+ibCadastro.FieldByName('NUMERO').AsString));
                   Writeln(F,(ibCadastro.FieldByName('BAIRRO').AsString));
                   Writeln(F,(ibCadastro.FieldByName('CIDADE').AsString)+'  '+(ibCadastro.FieldByName('ESTADO').AsString));
                   Writeln(F,(DesenhoDivisao));

                 
                end;


////////////////////////////////////////////////////////////////////////////////
                intContadorItem := 1;
                while not ibTempVendaLoja.Eof do begin

                  strRefProd   := ibTempVendaLoja.FieldByName('REF').AsString;
                  
                  if intContadorItem = 1 Then begin

                    strContadorItem := '00'+ IntToStr(intContadorItem);

                  end else begin

                    strContadorItem := '00'+ IntToStr(intContadorItem);

                  end;

                    if strRefProd <> '' Then begin

                      Writeln(F,(strContadorItem+'- '+ibTempVendaLoja.FieldByName('REF').AsString+ ' ' +ibTempVendaLoja.FieldByName('NOMEPROD').AsString));

                    end else begin

                      Writeln(F,(strContadorItem+'- '+ibTempVendaLoja.FieldByName('NOMEPROD').AsString));

                    end;

                    if (ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat > 0) Then begin

                      Writeln(F,(FormatFloat('0',ibTempVendaLoja.FieldByName('QTDE').AsFloat))+' X '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRUNIT').AsFloat))+' = '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat)));

                    end;

                    if (ibTempVendaLoja.FieldByName('VALORB').AsFloat > 0) Then begin

                      Writeln(F,(FormatFloat('0',ibTempVendaLoja.FieldByName('QTDE').AsFloat))+' X '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRUNIT').AsFloat))+' = '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VALORB').AsFloat)));

                    end;

                    if (ibTempVendaLoja.FieldByName('VALORC').AsFloat > 0) Then begin

                      Writeln(F,(FormatFloat('0',ibTempVendaLoja.FieldByName('QTDE').AsFloat))+' X '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRUNIT').AsFloat))+' = '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VALORC').AsFloat)));

                    end;
                  //+ibTempVendaLoja.FieldByName('NOMEPROD').AsString)+'...R$ '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat)));
               // Writeln(11F,(FormatFloat(CasasDecimais('Combustiveis'),ibTempVendaLoja.FieldByName('QTDE').AsFloat))+' X '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRUNIT').AsFloat))+' = '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat)));

                   { if QtdedeItens = 0 Then begin

                      QtdedeItens := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('QTDE').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

                    end else begin

                      TotalQtdeItens := StringReplace(FloatToStr(ibServsVenda.FieldByName('QTDE').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

                      QtdedeItens := QtdedeItens + StrtoFloat(StringReplace(TotalQtdeItens,ThousandSeparator,'',[rfReplaceAll]));

                    end;//if }
                    if QtdedeItens = 0 Then begin

                      QtdedeItens := StrToFloat(StringReplace(FloatToStr(ibTempVendaLoja.FieldByName('QTDE').AsFloat),FormatSettings.ThousandSeparator,'',[rfreplaceAll]));

                    end else begin

                      TotalQtdeItens := StringReplace(FloatToStr(ibTempVendaLoja.FieldByName('QTDE').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);

                      QtdedeItens := QtdedeItens + StrtoFloat(StringReplace(TotalQtdeItens,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

                    end;//if

                    intContadorItem :=  intContadorItem+1;
                                    
                ibTempVendaLoja.Next;

                end;//while
                  QtdeTotalItens := FormatFloat('0',QtdedeItens);

                  Writeln(F,('Qtde.Itens..:'+ QtdeTotalItens));                
  ////////////////////////////////////////////////////////////////////////////////

           // Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sp>1</sp>'+(frmVendasLoja.listboxCupom.Items).Text+ ''),0);
              Writeln(F,(DesenhoDivisao));
////////////////////////////////////////////////////////////////////////////////

              if (cboTipoPagto.Text = 'PENDENTE') Then begin

                Produto[0]:=frmVendasLoja.lbl_edtSubTotal.Caption;
                Produto[1]:=cboTipoPagto.Text;
                Produto[2]:=lbl_edtValor.Text;
                Produto[3]:=lbl_edtTotalVenda.Text;
                Produto[4]:=lbl_edtTroco.Text;
                Produto[6]:=lbl_edtValor.Text;

                //Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhoDivisao),0);
                Writeln(F,('     **** VENDA PENDENTE ****'));
                Writeln(F,('TOTAL DA VENDA..:(R$)' + ' ' + '=' + ' ' +  Produto[0]));
                Writeln(F,('VLR.PAGO..:(R$)' + ' ' + '=' + ' ' +Produto[6]));

                if lbl_edtValor.Text = '0,00'Then begin
                Writeln(F,(Produto[1] + ' ' + '=' + ' ' + Produto[3]));
                end;

                if lbl_edtValor.Text > '0,00'Then begin
                Writeln(F,(Produto[1] + ' ' + '=' + ' ' + Produto[4]));
                end;

                Writeln(F,(DesenhoDivisao));

               ///Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sl>'+QtdedeSaltos+'</sl>'), 0);
              end;

              if (cboTipoPagto.Text <> 'PENDENTE') Then begin

                if (lbl_edtDesconto.Text = '')or (lbl_edtDesconto.Text = '0,00')and(lbl_edtAcrescimo.Text = '0,00')then begin

                  Produto[0]:=frmVendasLoja.lbl_edtSubTotal.Caption;
                  Produto[1]:=cboTipoPagto.Text;
                  Produto[2]:=lbl_edtValor.Text;
                  Produto[3]:=lbl_edtTotalVenda.Text;
                  Produto[4]:=lbl_edtTroco.Text;
                  Produto[5]:=strVlrDesc;
                  Produto[6]:=lbl_edtValor.Text;

                  if strVlrDesc >'0,00' Then begin

                    //Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhoDivisao),0);
                    Writeln(F,('TOTAL..:(R$)' + ' ' + '=' + ' ' +  Produto[0]));
                    Writeln(F,('DESCONTO..:(R$)' + ' ' + '=' + ' ' +  Produto[5]));
                    Writeln(F,('VLR.A PAGAR COM DESCONTO' + ' ' + '=' + ' ' +  Produto[3]));
                    Writeln(F,(Produto[1] + ' ' + '=' + ' ' + Produto[2]));
                    Writeln(F,('TROCO' + ' ' + '=' + ' ' +Produto[4]));
                    Writeln(F,(DesenhoDivisao));

                  end else begin

                  //  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
                    Writeln(F,('TOTAL..:(R$)' + ' ' + '=' + ' ' +  Produto[3]));
                    Writeln(F,('VLR.PAGO: '+Produto[1] + ' ' + '=' + ' ' + Produto[2]));
                   // Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('VLR.PAGO..:(R$)' + ' ' + '=' + ' ' +Produto[6]),0);
                    Writeln(F,('TROCO' + ' ' + '=' + ' ' +Produto[4]));
                    Writeln(F,(DesenhoDivisao));
                    ///Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sl>'+QtdedeSaltos+'</sl>'), 0);

                  end;

                end;
                
              end;

              if (lbl_edtDesconto.Text > '0,00')and(lbl_edtAcrescimo.Text = '0,00')and(cboTipoPagto.Text <> 'PENDENTE') Then begin

                Produto[0]:=frmVendasLoja.lbl_edtSubTotal.Caption;
                Produto[1]:=cboTipoPagto.Text;
                Produto[2]:=lbl_edtValor.Text;
                Produto[3]:=lbl_edtTotalVenda.Text;
                Produto[4]:=lbl_edtTroco.Text;
                Produto[5]:=lbl_edtDesconto.Text;
                {if ckPorcentagem.Checked = False Then begin
                Produto[5]:=lbl_edtDesconto.Text;
                end;
                if ckPorcentagem.Checked = True Then begin
                Produto[5]:=TotaldoDesconto;
                end;}

                Produto[6]:=lbl_edtValor.Text;

                //Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhoDivisao),0);
                Writeln(F,('TOTAL..:(R$)' + ' ' + '=' + ' ' +  Produto[0]));
                Writeln(F,('DESCONTO..:(R$)' + ' ' + '=' + ' ' +  Produto[5]));
                Writeln(F,('VLR.A PAGAR COM DESCONTO' + ' ' + '=' + ' ' +  Produto[3]));
                Writeln(F,(Produto[1] + ' ' + '=' + ' ' + Produto[2]));
                Writeln(F,('TROCO' + ' ' + '=' + ' ' +Produto[4]));
                Writeln(F,(DesenhoDivisao));
              ///  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sl>'+QtdedeSaltos+'</sl>'), 0);
              end;//if campo desconto

////////////////////////////////////////////////////////////////////////////////

              if (lbl_edtAcrescimo.Text > '0,00')and(lbl_edtDesconto.Text = '0,00')and(cboTipoPagto.Text <> 'PENDENTE') Then begin

                Produto[0]:=frmVendasLoja.lbl_edtSubTotal.Caption;
                Produto[1]:=cboTipoPagto.Text;
                Produto[2]:=lbl_edtValor.Text;
                Produto[3]:=lbl_edtTotalVenda.Text;
                Produto[4]:=lbl_edtTroco.Text;
                Produto[5]:=lbl_edtAcrescimo.Text;

                //Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhoDivisao),0);
                Writeln(F,('TOTAL..:(R$)' + ' ' + '=' + ' ' +  Produto[0]));
                Writeln(F,('ACRESCIMO..:(R$)' + ' ' + '=' + ' ' +  Produto[5]));
                Writeln(F,('VLR.A PAGAR COM ACRESCIMO' + ' ' + '=' + ' ' +  Produto[3]));
                Writeln(F,(Produto[1] + ' ' + '=' + ' ' + Produto[2]));
                Writeln(F,('TROCO' + ' ' + '=' + ' ' +Produto[4]));
                Writeln(F,(DesenhoDivisao));

              end;

                if Frase <> '' Then begin
                Writeln(F,(Frase));
                end;

                CloseFile(F);
                
{  if AcionaGaveta = 'Sim' Then begin

                // Fun��o para Abrir a gaveta de dinheiro
                iRetorno := Bematech_FI_AcionaGaveta();
                // Procedure que analisa o retorno da fun��o
              //  Analisa_iRetorno();
                // Procedure que analisa o retorno da Impressora
              //  Retorno_Impressora();

              end;   }

                //Writeln(F,(''));
               // Writeln(F,(''));
               // Writeln(F,(''));
              //  Writeln(F,(''));
              //  Writeln(F,(''));
              // Writeln(F,(''));
              //  Writeln(F,(''));
              //  Writeln(F,(''));
              //  Writeln(F,(''));

//****************************************************************************//

                intReImpressaoCupom := Application.MessageBox('Deseja Reimprimir?','Cupom para Simples Conferencia', +MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1);

                if intReImpressaoCupom = 6 Then begin

                  AssignPrn(F);
                  Rewrite(F);
                  i := 0;
                                                                            //.Text+ #27#97#49

                  Commit(ibDadosEmpresa);
                  ibDadosEmpresa.Close;
                  ibDadosEmpresa.SQL.Clear;
                  ibDadosEmpresa.SQL.Add('SELECT * FROM TBLDADOSEMPRESA');
                  ibDadosEmpresa.Open;
                              // '<sp>1</sp>'+
                  Writeln(F,(ibDadosEmpresa.FieldByName('NOME').AsString));

                  Commit(ibTempVendaLoja);
                  ibTempVendaLoja.Close;
                  ibTempVendaLoja.SQL.Clear;
                  ibTempVendaLoja.SQL.Add('SELECT TBLSERVICOSVENDAS.IDPROD,TBLSERVICOSVENDAS.IDSERVSVENDA,TBLSERVICOSVENDAS.NOMEPROD,TBLSERVICOSVENDAS.IDFUNC,'
                  + 'TBLSERVICOSVENDAS.QTDE,TBLSERVICOSVENDAS.HORA,TBLSERVICOSVENDAS.VLRUNIT,TBLSERVICOSVENDAS.VLRTOTAL,TBLSERVICOSVENDAS.DATA,'
                  + 'TBLSERVICOSVENDAS.VALORB,TBLSERVICOSVENDAS.VALORC,TBLSERVICOSVENDAS.IDSERVS,TBLSERVICOSVENDAS.IDCLIENTE,TBLSERVICOSVENDAS.DESCONTO,'
                  + 'TBLUSER.IDUSER,TBLUSER.LOGIN,CADPRODUTOS.NOME As Produto,CADPRODUTOS.CODBARRAS,CADPRODUTOS.REF FROM TBLSERVICOSVENDAS '
                  + 'LEFT OUTER JOIN TBLUSER ON TBLSERVICOSVENDAS.IDFUNC=TBLUSER.IDUSER '
                  + 'INNER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD WHERE IDSERVSVENDA=''' + (frmVendasLoja.lbl_CodVenda.Caption) + '''');
                  ibTempVendaLoja.Open;

                  intIDCliente := ibTempVendaLoja.FieldByName('IDCLIENTE').AsInteger;
                  rVlrDesc     := StrtoFloat(StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('DESCONTO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
                  strVlrDesc   := FormatFloat(CasasDecimais('Produtos'),rVlrDesc);//StringReplace(FloatToStr(RQtde),ThousandSeparator,'',[rfReplaceAll]);

                 (ibTempVendaLoja.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := ',0.00';
                 (ibTempVendaLoja.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := ',0.00';
                 (ibTempVendaLoja.FieldByName('VALORB') as TFloatField).DisplayFormat := ',0.00';
                 (ibTempVendaLoja.FieldByName('VALORC') as TFloatField).DisplayFormat := ',0.00';
                 (ibTempVendaLoja.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis');

                  ///  Int_Retorno := Daruma_DUAL_ImprimirTexto(pchar(ibDadosEmpresa.FieldByName('NOME').AsString),0);

                    if ibDadosEmpresa.FieldByName('ENDERECO').AsString <> '' Then begin
                    Writeln(F,(ibDadosEmpresa.FieldByName('ENDERECO').AsString)+','+(ibDadosEmpresa.FieldByName('NUMERO').AsString));
                 ///   Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(ibDadosEmpresa.FieldByName('ENDERECO').AsString)+'    ,'+(ibDadosEmpresa.FieldByName('NUMERO').AsString),0);
                    end;

                    if ibDadosEmpresa.FieldByName('BAIRRO').AsString <> '' Then begin
                    Writeln(F,(ibDadosEmpresa.FieldByName('BAIRRO').AsString));
                  ///  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(ibDadosEmpresa.FieldByName('BAIRRO').AsString),0);
                    end;

                    if ibDadosEmpresa.FieldByName('TELEFONE').AsString <> '' Then begin
                    Writeln(F,('Fone:'+ibDadosEmpresa.FieldByName('TELEFONE').AsString));
                  ///  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Fone: '+ibDadosEmpresa.FieldByName('TELEFONE').AsString),0);
                    end;

                  Writeln(F,(DesenhoDivisao));

                  Commit(ibCadastro);
                  ibCadastro.Close;
                  ibCadastro.SQL.Clear;
                  ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE IDCAD=''' + IntToStr(intIDCliente) + '''');
                  ibCadastro.Open;

                  if frmVendasLoja.lbl_Func.Caption <> '' Then begin
                  Writeln(F,('Funcion�rio: '+ ibTempVendaLoja.FieldByName('LOGIN').AsString));
                  end;

                  Writeln(F,('Cupom: '+frmVendasLoja.lbl_CodVenda.Caption));
                  Writeln(F,('Data:'+DataConvertida+' '+'Hora:'+Hora));
                  Writeln(F,('**Cupom nao Fiscal para simples conferencia**'));
                  Writeln(F,(DesenhoDivisao));
  ////////////////////////////////////////////////////////////////////////////////

                  if ibCadastro.RecordCount > 0 Then begin

                   Writeln(F,(ibCadastro.FieldByName('NOME').AsString));
                   Writeln(F,('Telefone: '+ ibCadastro.FieldByName('TELEFONE').AsString));
                   Writeln(F,(ibCadastro.FieldByName('ENDERECO').AsString)+(' , '+ibCadastro.FieldByName('NUMERO').AsString));
                   Writeln(F,(ibCadastro.FieldByName('BAIRRO').AsString));
                   Writeln(F,(ibCadastro.FieldByName('CIDADE').AsString)+'  '+(ibCadastro.FieldByName('ESTADO').AsString));
                   Writeln(F,(DesenhoDivisao));

                  end;

                  intContadorItem2 := 1;
                  while not ibTempVendaLoja.Eof do begin

                    strRefProd   := ibTempVendaLoja.FieldByName('REF').AsString;
                    
                    if intContadorItem2 = 1 Then begin

                      strContadorItem2 := '00'+ IntToStr(intContadorItem2);

                    end else begin

                      strContadorItem2 := '00'+ IntToStr(intContadorItem2);

                    end;

                    if strRefProd <> '' Then begin

                      Writeln(F,(strContadorItem+'- '+ibTempVendaLoja.FieldByName('REF').AsString+ ' ' +ibTempVendaLoja.FieldByName('NOMEPROD').AsString));

                    end else begin

                      Writeln(F,(strContadorItem+'- '+ibTempVendaLoja.FieldByName('NOMEPROD').AsString));

                    end;

                    if (ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat > 0) Then begin

                      Writeln(F,(FormatFloat('0',ibTempVendaLoja.FieldByName('QTDE').AsFloat))+' X '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRUNIT').AsFloat))+' = '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat)));

                    end;

                    if (ibTempVendaLoja.FieldByName('VALORB').AsFloat > 0) Then begin

                      Writeln(F,(FormatFloat('0',ibTempVendaLoja.FieldByName('QTDE').AsFloat))+' X '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRUNIT').AsFloat))+' = '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VALORB').AsFloat)));

                    end;

                    if (ibTempVendaLoja.FieldByName('VALORC').AsFloat > 0) Then begin

                      Writeln(F,(FormatFloat('0',ibTempVendaLoja.FieldByName('QTDE').AsFloat))+' X '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRUNIT').AsFloat))+' = '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VALORC').AsFloat)));

                    end;
                   // Writeln(F,(FormatFloat('0',ibTempVendaLoja.FieldByName('QTDE').AsFloat))+' X '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRUNIT').AsFloat))+' = '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat)));
                    //+ibTempVendaLoja.FieldByName('NOMEPROD').AsString)+'...R$ '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat)));
                 // Writeln(11F,(FormatFloat(CasasDecimais('Combustiveis'),ibTempVendaLoja.FieldByName('QTDE').AsFloat))+' X '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRUNIT').AsFloat))+' = '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat)));

                     { if QtdedeItens = 0 Then begin

                        QtdedeItens := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('QTDE').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

                      end else begin

                        TotalQtdeItens := StringReplace(FloatToStr(ibServsVenda.FieldByName('QTDE').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

                        QtdedeItens := QtdedeItens + StrtoFloat(StringReplace(TotalQtdeItens,ThousandSeparator,'',[rfReplaceAll]));

                      end;//if }
                      if QtdedeItensR = 0 Then begin

                        QtdedeItensR := StrToFloat(StringReplace(FloatToStr(ibTempVendaLoja.FieldByName('QTDE').AsFloat),FormatSettings.ThousandSeparator,'',[rfreplaceAll]));

                      end else begin

                        TotalQtdeItensR := StringReplace(FloatToStr(ibTempVendaLoja.FieldByName('QTDE').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);

                        QtdedeItensR := QtdedeItensR + StrtoFloat(StringReplace(TotalQtdeItensR,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

                      end;//if

                      intContadorItem2 :=  intContadorItem2+1;

                  ibTempVendaLoja.Next;

                  end;//while
                    QtdeTotalItensR := FormatFloat('0',QtdedeItensR);

                    Writeln(F,('Qtde.Itens..:'+ QtdeTotalItensR));
    ////////////////////////////////////////////////////////////////////////////////

             // Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sp>1</sp>'+(frmVendasLoja.listboxCupom.Items).Text+ ''),0);
                Writeln(F,(DesenhoDivisao));
  ////////////////////////////////////////////////////////////////////////////////

                if (cboTipoPagto.Text = 'PENDENTE') Then begin

                  Produto[0]:=frmVendasLoja.lbl_edtSubTotal.Caption;
                  Produto[1]:=cboTipoPagto.Text;
                  Produto[2]:=lbl_edtValor.Text;
                  Produto[3]:=lbl_edtTotalVenda.Text;
                  Produto[4]:=lbl_edtTroco.Text;
                  Produto[5]:=strVlrDesc;
                  Produto[6]:=lbl_edtValor.Text;

                  //Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhoDivisao),0);
                  Writeln(F,('     **** VENDA PENDENTE ****'));
                  Writeln(F,('TOTAL DA VENDA..:(R$)' + ' ' + '=' + ' ' +  Produto[0]));
                  Writeln(F,('VLR.PAGO..:(R$)' + ' ' + '=' + ' ' +Produto[6]));

                  if lbl_edtValor.Text = '0,00'Then begin
                  Writeln(F,(Produto[1] + ' ' + '=' + ' ' + Produto[3]));
                  end;

                  if lbl_edtValor.Text > '0,00'Then begin
                  Writeln(F,(Produto[1] + ' ' + '=' + ' ' + Produto[4]));
                  end;

                  Writeln(F,(DesenhoDivisao));

                 ///Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sl>'+QtdedeSaltos+'</sl>'), 0);
                end;

                if (cboTipoPagto.Text <> 'PENDENTE') Then begin

                  if (lbl_edtDesconto.Text = '')or (lbl_edtDesconto.Text = '0,00')and(lbl_edtAcrescimo.Text = '0,00')then begin

                    Produto[0]:=frmVendasLoja.lbl_edtSubTotal.Caption;
                    Produto[1]:=cboTipoPagto.Text;
                    Produto[2]:=lbl_edtValor.Text;
                    Produto[3]:=lbl_edtTotalVenda.Text;
                    Produto[4]:=lbl_edtTroco.Text;
                    Produto[5]:=strVlrDesc;
                    Produto[6]:=lbl_edtValor.Text;

                    if strVlrDesc >'0,00' Then begin

                      //Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhoDivisao),0);
                      Writeln(F,('TOTAL..:(R$)' + ' ' + '=' + ' ' +  Produto[0]));
                      Writeln(F,('DESCONTO..:(R$)' + ' ' + '=' + ' ' +  Produto[5]));
                      Writeln(F,('VLR.A PAGAR COM DESCONTO' + ' ' + '=' + ' ' +  Produto[3]));
                      Writeln(F,(Produto[1] + ' ' + '=' + ' ' + Produto[2]));
                      Writeln(F,('TROCO' + ' ' + '=' + ' ' +Produto[4]));
                      Writeln(F,(DesenhoDivisao));

                    end else begin

                    //  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
                      Writeln(F,('TOTAL..:(R$)' + ' ' + '=' + ' ' +  Produto[3]));
                      Writeln(F,('VLR.PAGO: '+Produto[1] + ' ' + '=' + ' ' + Produto[2]));
                     // Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('VLR.PAGO..:(R$)' + ' ' + '=' + ' ' +Produto[6]),0);
                      Writeln(F,('TROCO' + ' ' + '=' + ' ' +Produto[4]));
                      Writeln(F,(DesenhoDivisao));
                      ///Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sl>'+QtdedeSaltos+'</sl>'), 0);

                    end;

                  end;

                end; 

                if (lbl_edtDesconto.Text > '0,00')and(lbl_edtAcrescimo.Text = '0,00')and(cboTipoPagto.Text <> 'PENDENTE') Then begin

                  Produto[0]:=frmVendasLoja.lbl_edtSubTotal.Caption;
                  Produto[1]:=cboTipoPagto.Text;
                  Produto[2]:=lbl_edtValor.Text;
                  Produto[3]:=lbl_edtTotalVenda.Text;
                  Produto[4]:=lbl_edtTroco.Text;
                  Produto[5]:=lbl_edtDesconto.Text;
                  {if ckPorcentagem.Checked = False Then begin
                  Produto[5]:=lbl_edtDesconto.Text;
                  end;
                  if ckPorcentagem.Checked = True Then begin
                  Produto[5]:=TotaldoDesconto;
                  end;}

                  Produto[6]:=lbl_edtValor.Text;

                  //Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhoDivisao),0);
                  Writeln(F,('TOTAL..:(R$)' + ' ' + '=' + ' ' +  Produto[0]));
                  Writeln(F,('DESCONTO..:(R$)' + ' ' + '=' + ' ' +  Produto[5]));
                  Writeln(F,('VLR.A PAGAR COM DESCONTO' + ' ' + '=' + ' ' +  Produto[3]));
                  Writeln(F,(Produto[1] + ' ' + '=' + ' ' + Produto[2]));
                  Writeln(F,('TROCO' + ' ' + '=' + ' ' +Produto[4]));
                  Writeln(F,(DesenhoDivisao));
                ///  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sl>'+QtdedeSaltos+'</sl>'), 0);
                end;//if campo desconto

  ////////////////////////////////////////////////////////////////////////////////

                if (lbl_edtAcrescimo.Text > '0,00')and(lbl_edtDesconto.Text = '0,00')and(cboTipoPagto.Text <> 'PENDENTE') Then begin

                  Produto[0]:=frmVendasLoja.lbl_edtSubTotal.Caption;
                  Produto[1]:=cboTipoPagto.Text;
                  Produto[2]:=lbl_edtValor.Text;
                  Produto[3]:=lbl_edtTotalVenda.Text;
                  Produto[4]:=lbl_edtTroco.Text;
                  Produto[5]:=lbl_edtAcrescimo.Text;

                  //Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhoDivisao),0);
                  Writeln(F,('TOTAL..:(R$)' + ' ' + '=' + ' ' +  Produto[0]));
                  Writeln(F,('ACRESCIMO..:(R$)' + ' ' + '=' + ' ' +  Produto[5]));
                  Writeln(F,('VLR.A PAGAR COM ACRESCIMO' + ' ' + '=' + ' ' +  Produto[3]));
                  Writeln(F,(Produto[1] + ' ' + '=' + ' ' + Produto[2]));
                  Writeln(F,('TROCO' + ' ' + '=' + ' ' +Produto[4]));
                  Writeln(F,(DesenhoDivisao));

                end;

                  if Frase <> '' Then begin
                  Writeln(F,(Frase));
                  end;
  {  if AcionaGaveta = 'Sim' Then begin

                  // Fun��o para Abrir a gaveta de dinheiro
                  iRetorno := Bematech_FI_AcionaGaveta();
                  // Procedure que analisa o retorno da fun��o
                //  Analisa_iRetorno();
                  // Procedure que analisa o retorno da Impressora
                //  Retorno_Impressora();

                end;   }

                  //Writeln(F,(''));
                 // Writeln(F,(''));
                 // Writeln(F,(''));
                //  Writeln(F,(''));
                //  Writeln(F,(''));
                // Writeln(F,(''));
                //  Writeln(F,(''));
                //  Writeln(F,(''));
                //  Writeln(F,(''));

              CloseFile(F);

              end;//simples conf.

         //   end;

       //   end;

//****************************************************************************//


            //CloseFile(F);


            end;//simples conf.
            end;

//****************************************************************************//
            if intCupomSimples = 1 Then begin

            intImprimirCupomSimples := Application.MessageBox('Imprimir Cupom Simples Conferencia?','Cupom para Simples Conferencia', +MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1);

            if intImprimirCupomSimples = 6 Then begin

              Commit(ibConfig);
              ibConfig.Close;
              ibConfig.SQL.Clear;
              ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
              ibConfig.Open;

              DesenhoDivisao   := ibConfig.FieldByName('DESENHODIVISAO').AsString;
              QtdedeSaltos := IntToStr(ibConfig.FieldByName('QTDESALTOS').AsInteger);
              FraseRodape  := ibConfig.FieldByName('FRASERODAPE').AsString;
              Frase        := ibConfig.FieldByName('FRASE').AsString;

              DataConvertida := FormatDateTime('DD/MM/YYYY',Now);
              Hora           := FormatDateTime('hh:mm:ss',Now);

              {Commit(ibTempVendaLoja);
              ibTempVendaLoja.Close;
              ibTempVendaLoja.SQL.Clear;
              ibTempVendaLoja.SQL.Add('SELECT TBLSERVICOSVENDAS.*,'
              + 'CADPRODUTOS.NOME As Produto,CADPRODUTOS.CODBARRAS FROM TBLSERVICOSVENDAS '
              + 'INNER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD WHERE IDSERVSVENDA=''' + (frmVendasLoja.lbl_CodVenda.Caption) + '''');
              ibTempVendaLoja.Open; }

              Commit(ibTempVendaLoja);
              ibTempVendaLoja.Close;
              ibTempVendaLoja.SQL.Clear;
              ibTempVendaLoja.SQL.Add('SELECT TBLSERVICOSVENDAS.IDPROD,TBLSERVICOSVENDAS.IDSERVSVENDA,TBLSERVICOSVENDAS.NOMEPROD,TBLSERVICOSVENDAS.IDFUNC,'
              + 'TBLSERVICOSVENDAS.QTDE,TBLSERVICOSVENDAS.HORA,TBLSERVICOSVENDAS.VLRUNIT,TBLSERVICOSVENDAS.VLRTOTAL,TBLSERVICOSVENDAS.DATA,'
              + 'TBLSERVICOSVENDAS.VALORB,TBLSERVICOSVENDAS.VALORC,TBLSERVICOSVENDAS.IDSERVS,TBLSERVICOSVENDAS.IDCLIENTE,TBLSERVICOSVENDAS.DESCONTO,'
              + 'TBLUSER.IDUSER,TBLUSER.LOGIN,CADPRODUTOS.NOME As Produto,CADPRODUTOS.CODBARRAS,CADPRODUTOS.REF FROM TBLSERVICOSVENDAS '
              + 'LEFT OUTER JOIN TBLUSER ON TBLSERVICOSVENDAS.IDFUNC=TBLUSER.IDUSER '
              + 'INNER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD WHERE IDSERVSVENDA=''' + (frmVendasLoja.lbl_CodVenda.Caption) + '''');
              ibTempVendaLoja.Open;

              intIDCliCupom := ibTempVendaLoja.FieldByName('IDCLIENTE').AsInteger;

              (ibTempVendaLoja.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := ',0.00';
              (ibTempVendaLoja.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := ',0.00';
              (ibTempVendaLoja.FieldByName('VALORB') as TFloatField).DisplayFormat := ',0.00';
              (ibTempVendaLoja.FieldByName('VALORC') as TFloatField).DisplayFormat := ',0.00';
              (ibTempVendaLoja.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis');

               // CaminhodeRede := '';
              //  CaminhodeRede := ('\\CRISTIANO-PC\GenericT');

             //   AssignFile(F,'LPT1'); ///CaminhoRede
             {260719   AssignPrn(F);
                Rewrite(F);
                i := 0; }
                                                                          //.Text+ #27#97#49

                Commit(ibDadosEmpresa);
                ibDadosEmpresa.Close;
                ibDadosEmpresa.SQL.Clear;
                ibDadosEmpresa.SQL.Add('SELECT * FROM TBLDADOSEMPRESA');
                ibDadosEmpresa.Open;


                  strNomeEmpr     := ibDadosEmpresa.FieldByName('NOME').AsString;
                  strEnderecoEmpr := ibDadosEmpresa.FieldByName('ENDERECO').AsString;
                  strNumeroEmpr   := ibDadosEmpresa.FieldByName('NUMERO').AsString;
                  strBairroEmpr   := ibDadosEmpresa.FieldByName('BAIRRO').AsString;
                  strTelefoneEmpr := ibDadosEmpresa.FieldByName('TELEFONE').AsString;

                  Str_ParametroVenda := StringOFChar(#0,700);

                  Str_ParametroVenda:= '<ce>'+strNomeEmpr+'</ce><l></l>';
                //  Writeln(F,(ibDadosEmpresa.FieldByName('NOME').AsString));
                  if ibDadosEmpresa.FieldByName('ENDERECO').AsString <> '' Then begin

                    Str_ParametroVenda:= Str_ParametroVenda+ strEnderecoEmpr+' , '+strNumeroEmpr+'<l></l>';
                  //Writeln(F,(ibDadosEmpresa.FieldByName('ENDERECO').AsString)+'    ,'+(ibDadosEmpresa.FieldByName('NUMERO').AsString));//+'<l></l>'+//,0);

                  end;

                  if ibDadosEmpresa.FieldByName('BAIRRO').AsString <> '' Then begin //begin

                     Str_ParametroVenda:= Str_ParametroVenda+ strBairroEmpr+'<l></l>';
                    //Writeln(F,(ibDadosEmpresa.FieldByName('BAIRRO').AsString));//+'<l></l>'+//,0);

                  end;

                  if ibDadosEmpresa.FieldByName('TELEFONE').AsString <> '' Then begin //begin

                    Str_ParametroVenda := Str_ParametroVenda+ strTelefoneEmpr+'<l></l>';
                   //Writeln(F,('Fone: '+ibDadosEmpresa.FieldByName('TELEFONE').AsString));//+'<l></l>'+//,0);
                  end;

                  Str_ParametroVenda := Str_ParametroVenda+(DesenhoDivisao)+'<l></l>';
                //Writeln(F,(DesenhoDivisao));

              { if frmVendasLoja.lbl_Funcionario.Text <> '' Then begin
                Writeln(F,('Funcion�rio:<sp>1</sp>'+ frmVendasLoja.lbl_Funcionario.Text + ''));
                end;  }

                Str_ParametroVenda := Str_ParametroVenda+('Cupom: '+frmVendasLoja.lbl_CodVenda.Caption)+'<l></l>';//,0);
                Str_ParametroVenda := Str_ParametroVenda+('Data:'+DataConvertida+' '+'Hora:'+Hora)+'<l></l>';//,0);
                Str_ParametroVenda := Str_ParametroVenda+('**Cupom nao Fiscal para simples conferencia**')+'<l></l>';//,0);
                Str_ParametroVenda := Str_ParametroVenda+(DesenhoDivisao)+'<l></l>';//,0);


              { Writeln(F,('Cupom: '+frmVendasLoja.lbl_CodVenda.Caption));
               Writeln(F,('Data:'+DataConvertida+' '+'Hora:'+Hora));
               Writeln(F,('**Cupom nao Fiscal para simples conferencia**'));
               Writeln(F,(DesenhoDivisao)); }

                if intIDCliCupom > 0 Then begin

                  Commit(ibCadastro);
                  ibCadastro.Close;
                  ibCadastro.SQL.Clear;
                  ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE IDCAD=''' + IntToStr(intIDCliCupom) + '''');
                  ibCadastro.Open;

                  strNomeCli := ibCadastro.FieldByName('NOME').AsString;
                  strEnderecoCli := ibCadastro.FieldByName('ENDERECO').AsString;
                  strNumeroCli := ibCadastro.FieldByName('NUMERO').AsString;
                  strBairroCli := ibCadastro.FieldByName('BAIRRO').AsString;
                  strTelefoneCli := ibCadastro.FieldByName('TELEFONE').AsString;

                  Str_ParametroVenda:= Str_ParametroVenda+ strNomeCli+'<l></l>';
                  //Writeln(F,(ibCadastro.FieldByName('NOME').AsString));

                  if ibCadastro.FieldByName('ENDERECO').AsString <> '' Then begin

                    Str_ParametroVenda:= Str_ParametroVenda+ strEnderecoCli+' , '+strNumeroCli+'<l></l>';
                  //Writeln(F,(ibCadastro.FieldByName('ENDERECO').AsString)+'    ,'+(ibCadastro.FieldByName('NUMERO').AsString));//+'<l></l>'+//,0);

                  end;

                  if ibCadastro.FieldByName('BAIRRO').AsString <> '' Then begin //begin

                     Str_ParametroVenda:= Str_ParametroVenda+ strBairroCli+'<l></l>';
                    //Writeln(F,(ibCadastro.FieldByName('BAIRRO').AsString));//+'<l></l>'+//,0);

                  end;

                  if ibCadastro.FieldByName('TELEFONE').AsString <> '' Then begin //begin

                    Str_ParametroVenda := Str_ParametroVenda+ strTelefoneCli+'<l></l>';
                    //Writeln(F,('Fone: '+ibCadastro.FieldByName('TELEFONE').AsString));//+'<l></l>'+//,0);
                  end;

                    Str_ParametroVenda := Str_ParametroVenda+(DesenhoDivisao)+'<l></l>';
                  //Writeln(F,(DesenhoDivisao));

                end;//idclicupom


////////////////////////////////////////////////////////////////////////////////
                intContadorItem := 1;
                while not ibTempVendaLoja.Eof do begin

                  if intContadorItem = 1 Then begin

                    strContadorItem := '00'+ IntToStr(intContadorItem);

                  end else begin

                    strContadorItem := '00'+ IntToStr(intContadorItem);

                  end;

                  strNomeProdCupom := ibTempVendaLoja.FieldByName('NOMEPROD').AsString;
                  strVlrUnitCupom  := FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRUNIT').AsFloat);
                  strQtdeCupom     := FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('QTDE').AsFloat);
                  strVlrTotalCupom := FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat);


                 Str_ParametroVenda := Str_ParametroVenda+(strContadorItem+' '+strNomeProdCupom)+'<l></l>';//,0);
                 Str_ParametroVenda := Str_ParametroVenda+(strQtdeCupom+' X '+strVlrUnitCupom+' = '+strVlrTotalCupom)+'<l></l>';//,0);
                //  Writeln(F,(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('QTDE').AsFloat))+' X '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRUNIT').AsFloat))+' = '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat)));//+'<l></l>';//,0);
               //   Writeln(F,(strContadorItem+' '+ibTempVendaLoja.FieldByName('NOMEPROD').AsString)+'...R$ '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat)));
                //  Int_Retorno:= iImprimirTexto_DUAL_DarumaFramework(pchar(strContadorItem+' '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('QTDE').AsFloat))+' X '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRUNIT').AsFloat))+' = '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat))),0);
                  //+ibTempVendaLoja.FieldByName('NOMEPROD').AsString)+'...R$ '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat)),0);
               // Writeln(11F,(FormatFloat(CasasDecimais('Combustiveis'),ibTempVendaLoja.FieldByName('QTDE').AsFloat))+' X '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRUNIT').AsFloat))+' = '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat)));

                   { if QtdedeItens = 0 Then begin

                      QtdedeItens := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('QTDE').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

                    end else begin

                      TotalQtdeItens := StringReplace(FloatToStr(ibServsVenda.FieldByName('QTDE').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

                      QtdedeItens := QtdedeItens + StrtoFloat(StringReplace(TotalQtdeItens,ThousandSeparator,'',[rfReplaceAll]));

                    end;//if }
                    if QtdedeItens = 0 Then begin

                      QtdedeItens := StrToFloat(StringReplace(FloatToStr(ibTempVendaLoja.FieldByName('QTDE').AsFloat),FormatSettings.ThousandSeparator,'',[rfreplaceAll]));

                    end else begin

                      TotalQtdeItens := StringReplace(FloatToStr(ibTempVendaLoja.FieldByName('QTDE').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);

                      QtdedeItens := QtdedeItens + StrtoFloat(StringReplace(TotalQtdeItens,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

                    end;//if

                    intContadorItem :=  intContadorItem+1;

                ibTempVendaLoja.Next;

                end;//while
                  QtdeTotalItens := FormatFloat('0',QtdedeItens);

                 // Writeln(F,('Qtde.Itens..:'+ QtdeTotalItens));
                  Str_ParametroVenda := Str_ParametroVenda+('Qtde.Itens..:'+ QtdeTotalItens)+'<l></l>';//,0);
  ////////////////////////////////////////////////////////////////////////////////

           // Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sp>1</sp>'+(frmVendasLoja.listboxCupom.Items).Text+ ''),0);
              //Writeln(F,(DesenhoDivisao));
              Str_ParametroVenda := Str_ParametroVenda+(DesenhoDivisao)+'<l></l>';//,0);
////////////////////////////////////////////////////////////////////////////////

              if (cboTipoPagto.Text = 'PENDENTE') Then begin

                Produto[0]:=frmVendasLoja.lbl_edtSubTotal.Caption;
                Produto[1]:=cboTipoPagto.Text;
                Produto[2]:=lbl_edtValor.Text;
                Produto[3]:=lbl_edtTotalVenda.Text;
                Produto[4]:=lbl_edtTroco.Text;
                Produto[6]:=lbl_edtValor.Text;

                //Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhoDivisao),0);
               // Writeln(F,('     **** VENDA PENDENTE ****'));
                Str_ParametroVenda := Str_ParametroVenda+('     **** VENDA PENDENTE ****')+'<l></l>';//,0);
               // Writeln(F,('TOTAL DA VENDA..:(R$)' + ' ' + '=' + ' ' +  Produto[0]));
                Str_ParametroVenda := Str_ParametroVenda+('TOTAL DA VENDA..:(R$)' + ' ' + '=' + ' ' +  Produto[0])+'<l></l>';//,0);
                //Writeln(F,('VLR.PAGO..:(R$)' + ' ' + '=' + ' ' +Produto[6]));
                Str_ParametroVenda := Str_ParametroVenda+('VLR.PAGO..:(R$)' + ' ' + '=' + ' ' +Produto[6])+'<l></l>';//,0);

                if lbl_edtValor.Text = '0,00'Then begin
               // Writeln(F,(Produto[1] + ' ' + '=' + ' ' + Produto[3]));
                Str_ParametroVenda := Str_ParametroVenda+(Produto[1] + ' ' + '=' + ' ' + Produto[3])+'<l></l>';//,0);
                end;

                if lbl_edtValor.Text > '0,00'Then begin
               // Writeln(F,(Produto[1] + ' ' + '=' + ' ' + Produto[4]));
                Str_ParametroVenda := Str_ParametroVenda+(Produto[1] + ' ' + '=' + ' ' + Produto[4])+'<l></l>';//,0);
                end;

               // Writeln(F,(DesenhoDivisao));
                Str_ParametroVenda := Str_ParametroVenda+(DesenhoDivisao)+'<l></l>';//,0);
               ///Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sl>'+QtdedeSaltos+'</sl>'), 0);
              end;

              if (cboTipoPagto.Text <> 'PENDENTE') Then begin

                if (lbl_edtDesconto.Text = '')or (lbl_edtDesconto.Text = '0,00')and(lbl_edtAcrescimo.Text = '0,00')then begin

                  Produto[0]:=frmVendasLoja.lbl_edtSubTotal.Caption;
                  Produto[1]:=cboTipoPagto.Text;
                  Produto[2]:=lbl_edtValor.Text;
                  Produto[3]:=lbl_edtTotalVenda.Text;
                  Produto[4]:=lbl_edtTroco.Text;
                  Produto[6]:=lbl_edtValor.Text;

                //  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
                 // Writeln(F,('TOTAL..:(R$)' + ' ' + '=' + ' ' +  Produto[3]));
                  Str_ParametroVenda := Str_ParametroVenda+('TOTAL..:(R$)' + ' ' + '=' + ' ' +  Produto[3])+'<l></l>';//,0);

                 // Writeln(F,('VLR.PAGO: '+Produto[1] + ' ' + '=' + ' ' + Produto[2]));
                  Str_ParametroVenda := Str_ParametroVenda+('VLR.PAGO..:(R$)'+Produto[1]+ ' ' + '=' + ' ' +Produto[6])+'<l></l>';//,0);

                 // Writeln(F,('TROCO' + ' ' + '=' + ' ' +Produto[4]));
                  Str_ParametroVenda := Str_ParametroVenda+('TROCO' + ' ' + '=' + ' ' +Produto[4])+'<l></l>';//,0);

                 // Writeln(F,(DesenhoDivisao));
                  Str_ParametroVenda := Str_ParametroVenda+(DesenhoDivisao)+'<l></l>';//,0);
                  ///Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sl>'+QtdedeSaltos+'</sl>'), 0);

                end;
              end;

              if (lbl_edtDesconto.Text > '0,00')and(lbl_edtAcrescimo.Text = '0,00')and(cboTipoPagto.Text <> 'PENDENTE') Then begin

                Produto[0]:=frmVendasLoja.lbl_edtSubTotal.Caption;
                Produto[1]:=cboTipoPagto.Text;
                Produto[2]:=lbl_edtValor.Text;
                Produto[3]:=lbl_edtTotalVenda.Text;
                Produto[4]:=lbl_edtTroco.Text;

              {  if ckPorcentagem.Checked = False Then begin
                Produto[5]:=lbl_edtDesconto.Text;
                end;
                if ckPorcentagem.Checked = True Then begin
                Produto[5]:=TotaldoDesconto;
                end; }

                Produto[6]:=lbl_edtValor.Text;

                //Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhoDivisao),0);
               // Writeln(F,('TOTAL..:(R$)' + ' ' + '=' + ' ' +  Produto[0]));
                Str_ParametroVenda := Str_ParametroVenda+('TOTAL..:(R$)' + ' ' + '=' + ' ' +  Produto[0])+'<l></l>';//,0);

               // Writeln(F,('DESCONTO' + ' ' + '=' + ' ' +  Produto[5]));
                Str_ParametroVenda := Str_ParametroVenda+('DESCONTO' + ' ' + '=' + ' ' +  Produto[5])+'<l></l>';//,0);

               // Writeln(F,('VLR.A PAGAR COM DESCONTO' + ' ' + '=' + ' ' +  Produto[3]));
                Str_ParametroVenda := Str_ParametroVenda+('VLR.A PAGAR COM DESCONTO' + ' ' + '=' + ' ' +  Produto[3])+'<l></l>';//,0);

                //Writeln(F,(Produto[1] + ' ' + '=' + ' ' + Produto[2]));
                Str_ParametroVenda := Str_ParametroVenda+(Produto[1] + ' ' + '=' + ' ' + Produto[2])+'<l></l>';//,0);

               // Writeln(F,('TROCO' + ' ' + '=' + ' ' +Produto[4]));
                Str_ParametroVenda := Str_ParametroVenda+('TROCO' + ' ' + '=' + ' ' +Produto[4])+'<l></l>';//,0);

               // Writeln(F,(DesenhoDivisao));
                Str_ParametroVenda := Str_ParametroVenda+(DesenhoDivisao)+'<l></l>';//,0);
              ///  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sl>'+QtdedeSaltos+'</sl>'), 0);
              end;//if campo desconto

////////////////////////////////////////////////////////////////////////////////

             { if (lbl_edtAcrescimo.Text > '0,00')and(lbl_edtDesconto.Text = '0,00')and(cboTipoPagto.Text <> 'PENDENTE') Then begin

                Produto[0]:=frmVendasLoja.lbl_edtSubTotal.Caption;
                Produto[1]:=cboTipoPagto.Text;
                Produto[2]:=lbl_edtValor.Text;
                Produto[3]:=lbl_edtTotalVenda.Text;
                Produto[4]:=lbl_edtTroco.Text;
                Produto[5]:=lbl_edtAcrescimo.Text;

                //Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhoDivisao),0);
                Writeln(F,('TOTAL..:(R$)' + ' ' + '=' + ' ' +  Produto[0]));
                Writeln(F,('ACRESCIMO' + ' ' + '=' + ' ' +  Produto[5]));
                Writeln(F,('VLR.A PAGAR COM ACRESCIMO' + ' ' + '=' + ' ' +  Produto[3]));
                Writeln(F,(Produto[1] + ' ' + '=' + ' ' + Produto[2]));
                Writeln(F,('TROCO' + ' ' + '=' + ' ' +Produto[4]));
                Writeln(F,(DesenhoDivisao));

              end; }

               { if Frase <> '' Then begin

                Str_ParametroVenda := Str_ParametroVenda+(Frase)+'<l></l>';
               // Writeln(F,(Frase));
                //Int_Retorno:= iImprimirTexto_DUAL_DarumaFramework(Str_ParametroVenda+(Frase)+'<sl>05</sl><gui></gui>',0);

                end else begin

                Str_ParametroVenda := Str_ParametroVenda+('<sl>05</sl><gui></gui>');
               // Int_Retorno:= iImprimirTexto_DUAL_DarumaFramework(Str_ParametroVenda+'<sl>05</sl><gui></gui>',0);

                end;}

                if Frase <> '' Then begin
                //Writeln(F,(Frase));
                Int_Retorno:= iImprimirTexto_DUAL_DarumaFramework(Str_ParametroVenda+(Frase)+'<sl>05</sl><gui></gui>',0);

                end else begin

               // Str_ParametroVenda := Str_ParametroVenda+('<sl>05</sl><gui></gui>',0);
                Int_Retorno:= iImprimirTexto_DUAL_DarumaFramework(Str_ParametroVenda+'<sl>05</sl><gui></gui>',0);

                end;

            //intImprCupomS := 0;
            //  CloseFile(F);
            end; //if imprimir cupom simples conferencia

////////////////////////////////////////////////////////////////////////////////

            intReImpressaoSC := Application.MessageBox('Reimprimir Cupom Simples Conferencia?','Cupom para Simples Conferencia', +MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1);

            if intReImpressaoSC = 6 Then begin

              Commit(ibConfig);
              ibConfig.Close;
              ibConfig.SQL.Clear;
              ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
              ibConfig.Open;

              DesenhoDivisao   := ibConfig.FieldByName('DESENHODIVISAO').AsString;
              QtdedeSaltos := IntToStr(ibConfig.FieldByName('QTDESALTOS').AsInteger);
              FraseRodape  := ibConfig.FieldByName('FRASERODAPE').AsString;
              Frase        := ibConfig.FieldByName('FRASE').AsString;

              DataConvertida := FormatDateTime('DD/MM/YYYY',Now);
              Hora           := FormatDateTime('hh:mm:ss',Now);

              Commit(ibTempVendaLoja);
              ibTempVendaLoja.Close;
              ibTempVendaLoja.SQL.Clear;
              ibTempVendaLoja.SQL.Add('SELECT TBLSERVICOSVENDAS.IDPROD,TBLSERVICOSVENDAS.IDSERVSVENDA,TBLSERVICOSVENDAS.NOMEPROD,TBLSERVICOSVENDAS.IDFUNC,'
              + 'TBLSERVICOSVENDAS.QTDE,TBLSERVICOSVENDAS.HORA,TBLSERVICOSVENDAS.VLRUNIT,TBLSERVICOSVENDAS.VLRTOTAL,TBLSERVICOSVENDAS.DATA,'
              + 'TBLSERVICOSVENDAS.VALORB,TBLSERVICOSVENDAS.VALORC,TBLSERVICOSVENDAS.IDSERVS,TBLSERVICOSVENDAS.IDCLIENTE,TBLSERVICOSVENDAS.DESCONTO,'
              + 'TBLUSER.IDUSER,TBLUSER.LOGIN,CADPRODUTOS.NOME As Produto,CADPRODUTOS.CODBARRAS,CADPRODUTOS.REF FROM TBLSERVICOSVENDAS '
              + 'LEFT OUTER JOIN TBLUSER ON TBLSERVICOSVENDAS.IDFUNC=TBLUSER.IDUSER '
              + 'INNER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD WHERE IDSERVSVENDA=''' + (frmVendasLoja.lbl_CodVenda.Caption) + '''');
              ibTempVendaLoja.Open;

              intIDCliCupom := ibTempVendaLoja.FieldByName('IDCLIENTE').AsInteger;

             (ibTempVendaLoja.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := ',0.00';
             (ibTempVendaLoja.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := ',0.00';
             (ibTempVendaLoja.FieldByName('VALORB') as TFloatField).DisplayFormat := ',0.00';
             (ibTempVendaLoja.FieldByName('VALORC') as TFloatField).DisplayFormat := ',0.00';
             (ibTempVendaLoja.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis');


               // CaminhodeRede := '';
              //  CaminhodeRede := ('\\CRISTIANO-PC\GenericT');

             //   AssignFile(F,'LPT1'); ///CaminhoRede
               { AssignPrn(F);
                Rewrite(F);
                i := 0;}
                                                                          //.Text+ #27#97#49
                Commit(ibDadosEmpresa);
                ibDadosEmpresa.Close;
                ibDadosEmpresa.SQL.Clear;
                ibDadosEmpresa.SQL.Add('SELECT * FROM TBLDADOSEMPRESA');
                ibDadosEmpresa.Open;


                  strNomeEmpr     := ibDadosEmpresa.FieldByName('NOME').AsString;
                  strEnderecoEmpr := ibDadosEmpresa.FieldByName('ENDERECO').AsString;
                  strNumeroEmpr   := ibDadosEmpresa.FieldByName('NUMERO').AsString;
                  strBairroEmpr   := ibDadosEmpresa.FieldByName('BAIRRO').AsString;
                  strTelefoneEmpr := ibDadosEmpresa.FieldByName('TELEFONE').AsString;

                  Str_ParametroVenda := StringOFChar(#0,700);

                  Str_ParametroVenda:= '<ce>'+strNomeEmpr+'</ce><l></l>';
                //  Writeln(F,(ibDadosEmpresa.FieldByName('NOME').AsString));
                  if ibDadosEmpresa.FieldByName('ENDERECO').AsString <> '' Then begin

                    Str_ParametroVenda:= Str_ParametroVenda+ strEnderecoEmpr+' , '+strNumeroEmpr+'<l></l>';
                  //Writeln(F,(ibDadosEmpresa.FieldByName('ENDERECO').AsString)+'    ,'+(ibDadosEmpresa.FieldByName('NUMERO').AsString));//+'<l></l>'+//,0);

                  end;

                  if ibDadosEmpresa.FieldByName('BAIRRO').AsString <> '' Then begin //begin

                     Str_ParametroVenda:= Str_ParametroVenda+ strBairroEmpr+'<l></l>';
                    //Writeln(F,(ibDadosEmpresa.FieldByName('BAIRRO').AsString));//+'<l></l>'+//,0);

                  end;

                  if ibDadosEmpresa.FieldByName('TELEFONE').AsString <> '' Then begin //begin

                    Str_ParametroVenda := Str_ParametroVenda+ strTelefoneEmpr+'<l></l>';
                   //Writeln(F,('Fone: '+ibDadosEmpresa.FieldByName('TELEFONE').AsString));//+'<l></l>'+//,0);
                  end;

                  Str_ParametroVenda := Str_ParametroVenda+(DesenhoDivisao)+'<l></l>';
                //Writeln(F,(DesenhoDivisao));

              { if frmVendasLoja.lbl_Funcionario.Text <> '' Then begin
                Writeln(F,('Funcion�rio:<sp>1</sp>'+ frmVendasLoja.lbl_Funcionario.Text + ''));
                end;  }

                Str_ParametroVenda := Str_ParametroVenda+('Cupom: '+frmVendasLoja.lbl_CodVenda.Caption)+'<l></l>';//,0);
                Str_ParametroVenda := Str_ParametroVenda+('Data:'+DataConvertida+' '+'Hora:'+Hora)+'<l></l>';//,0);
                Str_ParametroVenda := Str_ParametroVenda+('**Cupom nao Fiscal para simples conferencia**')+'<l></l>';//,0);
                Str_ParametroVenda := Str_ParametroVenda+(DesenhoDivisao)+'<l></l>';//,0);


              { Writeln(F,('Cupom: '+frmVendasLoja.lbl_CodVenda.Caption));
               Writeln(F,('Data:'+DataConvertida+' '+'Hora:'+Hora));
               Writeln(F,('**Cupom nao Fiscal para simples conferencia**'));
               Writeln(F,(DesenhoDivisao)); }

                if intIDCliCupom > 0 Then begin

                  Commit(ibCadastro);
                  ibCadastro.Close;
                  ibCadastro.SQL.Clear;
                  ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE IDCAD=''' + IntToStr(intIDCliCupom) + '''');
                  ibCadastro.Open;

                  strNomeCli := ibCadastro.FieldByName('NOME').AsString;
                  strEnderecoCli := ibCadastro.FieldByName('ENDERECO').AsString;
                  strNumeroCli := ibCadastro.FieldByName('NUMERO').AsString;
                  strBairroCli := ibCadastro.FieldByName('BAIRRO').AsString;
                  strTelefoneCli := ibCadastro.FieldByName('TELEFONE').AsString;

                  Str_ParametroVenda:= Str_ParametroVenda+ strNomeCli+'<l></l>';
                  //Writeln(F,(ibCadastro.FieldByName('NOME').AsString));

                  if ibCadastro.FieldByName('ENDERECO').AsString <> '' Then begin

                    Str_ParametroVenda:= Str_ParametroVenda+ strEnderecoCli+' , '+strNumeroCli+'<l></l>';
                  //Writeln(F,(ibCadastro.FieldByName('ENDERECO').AsString)+'    ,'+(ibCadastro.FieldByName('NUMERO').AsString));//+'<l></l>'+//,0);

                  end;

                  if ibCadastro.FieldByName('BAIRRO').AsString <> '' Then begin //begin

                     Str_ParametroVenda:= Str_ParametroVenda+ strBairroCli+'<l></l>';
                    //Writeln(F,(ibCadastro.FieldByName('BAIRRO').AsString));//+'<l></l>'+//,0);

                  end;

                  if ibCadastro.FieldByName('TELEFONE').AsString <> '' Then begin //begin

                    Str_ParametroVenda := Str_ParametroVenda+ strTelefoneCli+'<l></l>';
                    //Writeln(F,('Fone: '+ibCadastro.FieldByName('TELEFONE').AsString));//+'<l></l>'+//,0);
                  end;

                    Str_ParametroVenda := Str_ParametroVenda+(DesenhoDivisao)+'<l></l>';
                  //Writeln(F,(DesenhoDivisao));

                end;//idclicupom


////////////////////////////////////////////////////////////////////////////////
                intContadorItem := 1;
                while not ibTempVendaLoja.Eof do begin

                  if intContadorItem = 1 Then begin

                    strContadorItem := '00'+ IntToStr(intContadorItem);

                  end else begin

                    strContadorItem := '00'+ IntToStr(intContadorItem);

                  end;

                  strNomeProdCupom := ibTempVendaLoja.FieldByName('NOMEPROD').AsString;
                  strVlrUnitCupom  := FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRUNIT').AsFloat);
                  strQtdeCupom     := FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('QTDE').AsFloat);
                  strVlrTotalCupom := FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat);


                 Str_ParametroVenda := Str_ParametroVenda+(strContadorItem+' '+strNomeProdCupom)+'<l></l>';//,0);
                 Str_ParametroVenda := Str_ParametroVenda+(strQtdeCupom+' X '+strVlrUnitCupom+' = '+strVlrTotalCupom)+'<l></l>';//,0);
               //   Writeln(F,(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('QTDE').AsFloat))+' X '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRUNIT').AsFloat))+' = '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat)));//+'<l></l>';//,0);
              //    Writeln(F,(strContadorItem+' '+ibTempVendaLoja.FieldByName('NOMEPROD').AsString)+'...R$ '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat)));
                //  Int_Retorno:= iImprimirTexto_DUAL_DarumaFramework(pchar(strContadorItem+' '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('QTDE').AsFloat))+' X '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRUNIT').AsFloat))+' = '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat))),0);
                  //+ibTempVendaLoja.FieldByName('NOMEPROD').AsString)+'...R$ '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat)),0);
               // Writeln(11F,(FormatFloat(CasasDecimais('Combustiveis'),ibTempVendaLoja.FieldByName('QTDE').AsFloat))+' X '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRUNIT').AsFloat))+' = '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat)));

                   { if QtdedeItens = 0 Then begin

                      QtdedeItens := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('QTDE').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

                    end else begin

                      TotalQtdeItens := StringReplace(FloatToStr(ibServsVenda.FieldByName('QTDE').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

                      QtdedeItens := QtdedeItens + StrtoFloat(StringReplace(TotalQtdeItens,ThousandSeparator,'',[rfReplaceAll]));

                    end;//if }
                    if QtdedeItens = 0 Then begin

                      QtdedeItens := StrToFloat(StringReplace(FloatToStr(ibTempVendaLoja.FieldByName('QTDE').AsFloat),FormatSettings.ThousandSeparator,'',[rfreplaceAll]));

                    end else begin

                      TotalQtdeItens := StringReplace(FloatToStr(ibTempVendaLoja.FieldByName('QTDE').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);

                      QtdedeItens := QtdedeItens + StrtoFloat(StringReplace(TotalQtdeItens,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

                    end;//if

                    intContadorItem :=  intContadorItem+1;

                ibTempVendaLoja.Next;

                end;//while
                  QtdeTotalItens := FormatFloat('0',QtdedeItens);

                 // Writeln(F,('Qtde.Itens..:'+ QtdeTotalItens));
                  Str_ParametroVenda := Str_ParametroVenda+('Qtde.Itens..:'+ QtdeTotalItens)+'<l></l>';//,0);
  ////////////////////////////////////////////////////////////////////////////////

           // Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sp>1</sp>'+(frmVendasLoja.listboxCupom.Items).Text+ ''),0);
              //Writeln(F,(DesenhoDivisao));
              Str_ParametroVenda := Str_ParametroVenda+(DesenhoDivisao)+'<l></l>';//,0);
////////////////////////////////////////////////////////////////////////////////

              if (cboTipoPagto.Text = 'PENDENTE') Then begin

                Produto[0]:=frmVendasLoja.lbl_edtSubTotal.Caption;
                Produto[1]:=cboTipoPagto.Text;
                Produto[2]:=lbl_edtValor.Text;
                Produto[3]:=lbl_edtTotalVenda.Text;
                Produto[4]:=lbl_edtTroco.Text;
                Produto[6]:=lbl_edtValor.Text;

                //Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhoDivisao),0);
               // Writeln(F,('     **** VENDA PENDENTE ****'));
                Str_ParametroVenda := Str_ParametroVenda+('     **** VENDA PENDENTE ****')+'<l></l>';//,0);
               // Writeln(F,('TOTAL DA VENDA..:(R$)' + ' ' + '=' + ' ' +  Produto[0]));
                Str_ParametroVenda := Str_ParametroVenda+('TOTAL DA VENDA..:(R$)' + ' ' + '=' + ' ' +  Produto[0])+'<l></l>';//,0);
                //Writeln(F,('VLR.PAGO..:(R$)' + ' ' + '=' + ' ' +Produto[6]));
                Str_ParametroVenda := Str_ParametroVenda+('VLR.PAGO..:(R$)' + ' ' + '=' + ' ' +Produto[6])+'<l></l>';//,0);

                if lbl_edtValor.Text = '0,00'Then begin
               // Writeln(F,(Produto[1] + ' ' + '=' + ' ' + Produto[3]));
                Str_ParametroVenda := Str_ParametroVenda+(Produto[1] + ' ' + '=' + ' ' + Produto[3])+'<l></l>';//,0);
                end;

                if lbl_edtValor.Text > '0,00'Then begin
               // Writeln(F,(Produto[1] + ' ' + '=' + ' ' + Produto[4]));
                Str_ParametroVenda := Str_ParametroVenda+(Produto[1] + ' ' + '=' + ' ' + Produto[4])+'<l></l>';//,0);
                end;

               // Writeln(F,(DesenhoDivisao));
                Str_ParametroVenda := Str_ParametroVenda+(DesenhoDivisao)+'<l></l>';//,0);
               ///Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sl>'+QtdedeSaltos+'</sl>'), 0);
              end;

              if (cboTipoPagto.Text <> 'PENDENTE') Then begin

                if (lbl_edtDesconto.Text = '')or (lbl_edtDesconto.Text = '0,00')and(lbl_edtAcrescimo.Text = '0,00')then begin

                  Produto[0]:=frmVendasLoja.lbl_edtSubTotal.Caption;
                  Produto[1]:=cboTipoPagto.Text;
                  Produto[2]:=lbl_edtValor.Text;
                  Produto[3]:=lbl_edtTotalVenda.Text;
                  Produto[4]:=lbl_edtTroco.Text;
                  Produto[6]:=lbl_edtValor.Text;

                //  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
                 // Writeln(F,('TOTAL..:(R$)' + ' ' + '=' + ' ' +  Produto[3]));
                  Str_ParametroVenda := Str_ParametroVenda+('TOTAL..:(R$)' + ' ' + '=' + ' ' +  Produto[3])+'<l></l>';//,0);

                 // Writeln(F,('VLR.PAGO: '+Produto[1] + ' ' + '=' + ' ' + Produto[2]));
                  Str_ParametroVenda := Str_ParametroVenda+('VLR.PAGO..:(R$)'+Produto[1]+ ' ' + '=' + ' ' +Produto[6])+'<l></l>';//,0);

                 // Writeln(F,('TROCO' + ' ' + '=' + ' ' +Produto[4]));
                  Str_ParametroVenda := Str_ParametroVenda+('TROCO' + ' ' + '=' + ' ' +Produto[4])+'<l></l>';//,0);

                 // Writeln(F,(DesenhoDivisao));
                  Str_ParametroVenda := Str_ParametroVenda+(DesenhoDivisao)+'<l></l>';//,0);
                  ///Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sl>'+QtdedeSaltos+'</sl>'), 0);

                end;
              end;

              if (lbl_edtDesconto.Text > '0,00')and(lbl_edtAcrescimo.Text = '0,00')and(cboTipoPagto.Text <> 'PENDENTE') Then begin

                Produto[0]:=frmVendasLoja.lbl_edtSubTotal.Caption;
                Produto[1]:=cboTipoPagto.Text;
                Produto[2]:=lbl_edtValor.Text;
                Produto[3]:=lbl_edtTotalVenda.Text;
                Produto[4]:=lbl_edtTroco.Text;

              {  if ckPorcentagem.Checked = False Then begin
                Produto[5]:=lbl_edtDesconto.Text;
                end;
                if ckPorcentagem.Checked = True Then begin
                Produto[5]:=TotaldoDesconto;
                end; }

                Produto[6]:=lbl_edtValor.Text;

                //Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhoDivisao),0);
               // Writeln(F,('TOTAL..:(R$)' + ' ' + '=' + ' ' +  Produto[0]));
                Str_ParametroVenda := Str_ParametroVenda+('TOTAL..:(R$)' + ' ' + '=' + ' ' +  Produto[0])+'<l></l>';//,0);

               // Writeln(F,('DESCONTO' + ' ' + '=' + ' ' +  Produto[5]));
                Str_ParametroVenda := Str_ParametroVenda+('DESCONTO' + ' ' + '=' + ' ' +  Produto[5])+'<l></l>';//,0);

               // Writeln(F,('VLR.A PAGAR COM DESCONTO' + ' ' + '=' + ' ' +  Produto[3]));
                Str_ParametroVenda := Str_ParametroVenda+('VLR.A PAGAR COM DESCONTO' + ' ' + '=' + ' ' +  Produto[3])+'<l></l>';//,0);

                //Writeln(F,(Produto[1] + ' ' + '=' + ' ' + Produto[2]));
                Str_ParametroVenda := Str_ParametroVenda+(Produto[1] + ' ' + '=' + ' ' + Produto[2])+'<l></l>';//,0);

               // Writeln(F,('TROCO' + ' ' + '=' + ' ' +Produto[4]));
                Str_ParametroVenda := Str_ParametroVenda+('TROCO' + ' ' + '=' + ' ' +Produto[4])+'<l></l>';//,0);

               // Writeln(F,(DesenhoDivisao));
                Str_ParametroVenda := Str_ParametroVenda+(DesenhoDivisao)+'<l></l>';//,0);
              ///  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sl>'+QtdedeSaltos+'</sl>'), 0);
              end;//if campo desconto

////////////////////////////////////////////////////////////////////////////////

             { if (lbl_edtAcrescimo.Text > '0,00')and(lbl_edtDesconto.Text = '0,00')and(cboTipoPagto.Text <> 'PENDENTE') Then begin

                Produto[0]:=frmVendasLoja.lbl_edtSubTotal.Caption;
                Produto[1]:=cboTipoPagto.Text;
                Produto[2]:=lbl_edtValor.Text;
                Produto[3]:=lbl_edtTotalVenda.Text;
                Produto[4]:=lbl_edtTroco.Text;
                Produto[5]:=lbl_edtAcrescimo.Text;

                //Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhoDivisao),0);
                Writeln(F,('TOTAL..:(R$)' + ' ' + '=' + ' ' +  Produto[0]));
                Writeln(F,('ACRESCIMO' + ' ' + '=' + ' ' +  Produto[5]));
                Writeln(F,('VLR.A PAGAR COM ACRESCIMO' + ' ' + '=' + ' ' +  Produto[3]));
                Writeln(F,(Produto[1] + ' ' + '=' + ' ' + Produto[2]));
                Writeln(F,('TROCO' + ' ' + '=' + ' ' +Produto[4]));
                Writeln(F,(DesenhoDivisao));

              end; }

                if Frase <> '' Then begin
                //Writeln(F,(Frase));
                Int_Retorno:= iImprimirTexto_DUAL_DarumaFramework(Str_ParametroVenda+(Frase)+'<sl>05</sl><gui></gui>',0);

                end else begin

               // Str_ParametroVenda := Str_ParametroVenda+('<sl>05</sl><gui></gui>',0);
                Int_Retorno:= iImprimirTexto_DUAL_DarumaFramework(Str_ParametroVenda+'<sl>05</sl><gui></gui>',0);

                end;

            //intImprCupomS := 0;
            //  CloseFile(F);
            end; //if imprimir cupom simples conferencia


            end;


//****************************************************************************//
    {    if ImpressaoMatricial = 'Sim' Then begin

        if AvisaCupom = 'Sim' Then begin

          ConfirmaCupom := Application.MessageBox('Deseja imprimir a Venda','Notifica��o:Impress�o de Cupom',+MB_YESNO+MB_ICONQUESTION);


          if ImprimirDireto= 'Sim' Then begin

            if ImpressaoMatricial = 'Sim' Then begin

              if ConfirmaCupom = 6 Then begin

                DataConvertida := FormatDateTime('DD/MM/YYYY',Now);
                Hora           := FormatDateTime('hh:mm:ss',Now);

  ////////////////////////////////////////////////////////////////////////////////

                Commit(ibServsVenda);
               /// ibServsVenda.Close;
                ibServsVenda.SQL.Clear;
                ibServsVenda.SQL.Add('SELECT TBLSERVICOSVENDAS.*,'
                + 'CADPRODUTOS.NOME As Produto,CADPRODUTOS.CODBARRAS FROM TBLSERVICOSVENDAS '
                + 'INNER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD WHERE IDSERVSVENDA=''' + (frmVendasLoja.lbl_CodVenda.Caption) + '''');
                ibServsVenda.Open;

               (ibServsVenda.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := ',0.00';
               (ibServsVenda.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := ',0.00';
               (ibServsVenda.FieldByName('VALORB') as TFloatField).DisplayFormat := ',0.00';
               (ibServsVenda.FieldByName('VALORC') as TFloatField).DisplayFormat := ',0.00';
               (ibServsVenda.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Copmbustiveis');

  ////////////////////////////////////////////////////////////////////////////////

                if (lbl_edtCodCli.Text <> '')and (lbl_edtNomeCliente.Text <> '')Then begin


                  ibClassificacao.Close;
                  ibClassificacao.SQL.Clear;
                  ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
                  ibClassificacao.Open;
                  IDClassPedido := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICA��O DO FORNECEDOR NA VARIAVEL.


                  Commit(ibTempCadastro);
                 /// ibTempCadastro.Close;
                  ibTempCadastro.SQL.Clear;
                  ibTempCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLLOGRADOURO.BAIRRO,'
                  + 'TBLLOGRADOURO.ENDERECO FROM TBLCADASTRO '
                  + 'LEFT OUTER JOIN TBLLOGRADOURO ON TBLCADASTRO.IDCAD = TBLLOGRADOURO.IDCAD '
                  + 'WHERE TBLCADASTRO.IDCLASS=''' + InttoStr(IDClassPedido) + '''and TBLCADASTRO.IDCAD=''' + lbl_edtCodCli.Text + '''');
                  ibTempCadastro.Open;

                end;
  ////////////////////////////////////////////////////////////////////////////////
                  AssignPrn(F);
                  //AssignFile(F,'LPT1');
                  Rewrite(F);
                  i := 0;

                  Writeln(F,(frmVendasLoja.ListBoxDadosEmpresa.Items).Text);
                  Writeln(F,(DesenhodeDivisao));
                  Writeln(F,('Cupom N�.:'+frmVendasLoja.lbl_CodVenda.Caption));
                  Writeln(F,('Data:'+DataConvertida+' '+'Hora:'+Hora));
                 /// Writeln(F,('**Cupom nao Fiscal para simples conferencia**'));
                  Writeln(F,(DesenhodeDivisao));
                  //Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sp>1</sp>'+(frmCliente.listboxCupom.Items).Text+ ''),0);


                  if (lbl_edtNomeCliente.Text <> '')and (lbl_edtCodCli.Text <> '')Then begin

                    if ibTempCadastro.recordcount > 0 Then begin

                      Writeln(F,('Cliente:'+ibTempCadastro.FieldByName('NOME').AsString));


                      if ibTempCadastro.FieldByName('ENDERECO').AsString <> '' Then begin
                      Writeln(F,('Endere�o: '+ibTempCadastro.FieldByName('ENDERECO').AsString)+'    ,'+(ibTempCadastro.FieldByName('NUMERO').AsString));
                      end;

                      if ibTempCadastro.FieldByName('BAIRRO').AsString <> '' Then begin
                      Writeln(F,('Bairro: '+ibTempCadastro.FieldByName('BAIRRO').AsString));
                      end;

                      if ibTempCadastro.FieldByName('PONTOREFERENCIA').AsString <> '' Then begin
                      Writeln(F,('** '+ibTempCadastro.FieldByName('PONTOREFERENCIA').AsString+' **'));
                      end;

                      Writeln(F,(DesenhodeDivisao));

                    end;
                  end;

                 // Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
                  while not ibServsVenda.Eof do begin

                  Writeln(F,(ibServsVenda.FieldByName('Produto').AsString));
                  if ibServsVenda.FieldByName('OBS').AsString <> '' Then begin
                  Writeln(F,(ibServsVenda.FieldByName('OBS').AsString));
                  end;
                strVlrDescontoItem := FormatFloat(CasasDecimais('Produtos'),ibServsVenda.FieldByName('DESCONTO').AsFloat);
                QtdeVenda := FormatFloat(CasasDecimais('Produtos'),ibServsVenda.FieldByName('QTDE').AsFloat);
                Unitario := FormatFloat(CasasDecimais('Produtos'),ibServsVenda.FieldByName('VLRUNIT').AsFloat);
                Total := FormatFloat(CasasDecimais('Produtos'),ibServsVenda.FieldByName('VLRTOTAL').AsFloat);

                if strVlrDescontoItem > '0,00' Then begin

                  Writeln(F,(QtdeVenda+' X '+Unitario+' Desc.: '+strVlrDescontoItem+ ' = '+ Total));

                end else begin

                  Writeln(F,(QtdeVenda+' X '+Unitario+' = '+Total));

                end;
                  ibServsVenda.Next;

                  end;//while
////////////////////////////////////////////////////////////////////////////////

            if FraseRodape = 'Sim'Then begin

              if (cboTipoPagto.Text = 'PENDENTE') Then begin

                Produto[0]:=frmVendasLoja.lbl_edtSubTotal.Caption;
                Produto[1]:=cboTipoPagto.Text;
                Produto[2]:=lbl_edtValor.Text;
                Produto[3]:=lbl_edtTotalVenda.Text;
                Produto[4]:=lbl_edtTroco.Text;
                Produto[6]:=lbl_edtValor.Text;

                Writeln(F,(DesenhodeDivisao));
                Writeln(F,('     **** VENDA PENDENTE ****'));
                Writeln(F,('TOTAL DA VENDA..:(R$)' + ' ' + '=' + ' ' +  Produto[0]));
                Writeln(F,('VLR.PAGO..:(R$)' + ' ' + '=' + ' ' +Produto[6]));

                if lbl_edtValor.Text = '0,00'Then begin
                Writeln(F,(Produto[1] + ' ' + '=' + ' ' + Produto[3]));
                end;

                if lbl_edtValor.Text > '0,00'Then begin
                Writeln(F,(Produto[1] + ' ' + '=' + ' ' + Produto[4]));
                end;

                Writeln(F,(DesenhodeDivisao));
                if ibConfig.FieldByName('FRASE').AsString <> '' Then begin
                Writeln(F,(FrasePed));
                end;

              end;



              if (cboTipoPagto.Text <> 'PENDENTE') Then begin

                if (lbl_edtDesconto.Text = '')or (lbl_edtDesconto.Text = '0,00')and(lbl_edtAcrescimo.Text = '0,00')then begin

                  Produto[0]:=frmVendasLoja.lbl_edtSubTotal.Caption;
                  Produto[1]:=cboTipoPagto.Text;
                  Produto[2]:=lbl_edtValor.Text;
                  Produto[3]:=lbl_edtTotalVenda.Text;
                  Produto[4]:=lbl_edtTroco.Text;
                  Produto[6]:=lbl_edtValor.Text;

                  Writeln(F,(DesenhodeDivisao));
                  Writeln(F,('TOTAL..:(R$)' + ' ' + '=' + ' ' +  Produto[3]));
                  if (lbl_edtValor.Text > '0,00') Then begin
                  Writeln(F,('VLR.PAGO..:(R$)' +Produto[1] + ' ' + '=' + ' ' + Produto[2]));
                  end;

                  if (lbl_edtValor.Text = '0,00') Then begin
                  Writeln(F,('VLR.PAGO..:(R$)' +Produto[1] + ' ' + '=' + ' ' + Produto[3]));
                  end;
                  //Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('VLR.PAGO..:(R$)' + ' ' + '=' + ' ' +Produto[6]),0);
                  Writeln(F,('TROCO' + ' ' + '=' + ' ' +Produto[4]));
                  Writeln(F,(DesenhodeDivisao));
                  if ibConfig.FieldByName('FRASE').AsString <> '' Then begin
                  Writeln(F,(FrasePed));
                  end;

                end;//if

              end;


              if (lbl_edtDesconto.Text > '0,00')and(lbl_edtAcrescimo.Text = '0,00') Then begin

                Produto[0]:=frmVendasLoja.lbl_edtSubTotal.Caption;
                Produto[1]:=cboTipoPagto.Text;
                Produto[2]:=lbl_edtValor.Text;
                Produto[3]:=lbl_edtTotalVenda.Text;
                Produto[4]:=lbl_edtTroco.Text;

                if ckPorcentagem.Checked = False Then begin
                Produto[5]:=lbl_edtDesconto.Text;
                end;
                if ckPorcentagem.Checked = True Then begin
                Produto[5]:=TotaldoDesconto;
                end;

                Produto[6]:=lbl_edtValor.Text;

                Writeln(F,(DesenhodeDivisao),0);
                Writeln(F,('TOTAL..:(R$)' + ' ' + '=' + ' ' +  Produto[0]));
                Writeln(F,('DESCONTO' + ' ' + '=' + ' ' +  Produto[5]));
                Writeln(F,('TOTAL A PAGAR COM DESCONTO' + ' ' + '=' + ' ' +  Produto[3]));
                if (lbl_edtValor.Text > '0,00') Then begin
                  Writeln(F,('VLR.PAGO..:(R$)' +Produto[1] + ' ' + '=' + ' ' + Produto[2]));
                end;

                if (lbl_edtValor.Text = '0,00') Then begin
                  Writeln(F,('VLR.PAGO..:(R$)' +Produto[1] + ' ' + '=' + ' ' + Produto[3]));
                end;
                Writeln(F,('TROCO' + ' ' + '=' + ' ' +Produto[4]));
                Writeln(F,(DesenhodeDivisao));
                if ibConfig.FieldByName('FRASE').AsString <> '' Then begin
                Writeln(F,(FrasePed));
                end;

              end;//if campo desconto

////////////////////////////////////////////////////////////////////////////////

              if (lbl_edtAcrescimo.Text > '0,00')and(lbl_edtDesconto.Text = '0,00') Then begin

                Produto[0]:=frmVendasLoja.lbl_edtSubTotal.Caption;
                Produto[1]:=cboTipoPagto.Text;
                Produto[2]:=lbl_edtValor.Text;
                Produto[3]:=lbl_edtTotalVenda.Text;
                Produto[4]:=lbl_edtTroco.Text;
                Produto[5]:=lbl_edtAcrescimo.Text;

                Writeln(F,(DesenhodeDivisao));
                Writeln(F,('TOTAL..:(R$)' + ' ' + '=' + ' ' +  Produto[0]));
                Writeln(F,('ACRESCIMO' + ' ' + '=' + ' ' +  Produto[5]));
                Writeln(F,('TOTAL A PAGAR COM ACRESCIMO' + ' ' + '=' + ' ' +  Produto[3]));
                if (lbl_edtValor.Text > '0,00') Then begin
                  Writeln(F,('VLR.PAGO..:(R$)' +Produto[1] + ' ' + '=' + ' ' + Produto[2]));
                end;

                if (lbl_edtValor.Text = '0,00') Then begin
                  Writeln(F,('VLR.PAGO..:(R$)' +Produto[1] + ' ' + '=' + ' ' + Produto[3]));
                end;
                Writeln(F,('TROCO' + ' ' + '=' + ' ' +Produto[4]));
                Writeln(F,(DesenhodeDivisao));
                if ibConfig.FieldByName('FRASE').AsString <> '' Then begin
                Writeln(F,(FrasePed));
                end;

              end;//if campo acrescimo

            end;//if frase rodape = sim

////////////////////////////////////////////////////////////////////////////////

              if FraseRodape = 'Nao'Then begin

                if (lbl_edtDesconto.Text = '')or (lbl_edtDesconto.Text = '0,00')and(lbl_edtAcrescimo.Text = '0,00') Then begin

                  Produto[0]:=frmVendasLoja.lbl_edtSubTotal.Caption;
                  Produto[1]:=cboTipoPagto.Text;
                  Produto[2]:=lbl_edtValor.Text;
                  Produto[3]:=lbl_edtTotalVenda.Text;
                  Produto[4]:=lbl_edtTroco.Text;
                  Produto[6]:=lbl_edtValor.Text;

                  Writeln(F,(DesenhodeDivisao));
                  Writeln(F,('TOTAL..:(R$)' + ' ' + '=' + ' ' +  Produto[3]));
                  //Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('VLR.PAGO..:(R$)' + ' ' + '=' + ' ' +Produto[6]),0);
                  Writeln(F,('TROCO' + ' ' + '=' + ' ' +Produto[4]));
                  Writeln(F,(DesenhodeDivisao));

                end;

                if (lbl_edtDesconto.Text > '0,00')and(lbl_edtAcrescimo.Text = '0,00') Then begin

                  Produto[0]:=frmVendasLoja.lbl_edtSubTotal.Caption;
                  Produto[1]:=cboTipoPagto.Text;
                  Produto[2]:=lbl_edtValor.Text;
                  Produto[3]:=lbl_edtTotalVenda.Text;
                  Produto[4]:=lbl_edtTroco.Text;
                  Produto[5]:=lbl_edtDesconto.Text;
                  Produto[6]:=lbl_edtValor.Text;

                  Writeln(F,(DesenhodeDivisao));
                  Writeln(F,('TOTAL..:(R$)' + ' ' + '=' + ' ' +  Produto[0]));
                  Writeln(F,('DESCONTO' + ' ' + '=' + ' ' +  Produto[5]));
                  Writeln(F,('TOTAL A PAGAR COM DESCONTO' + ' ' + '=' + ' ' +  Produto[3]));
                  Writeln(F,(Produto[1] + ' ' + '=' + ' ' + Produto[2]));
                  Writeln(F,('TROCO' + ' ' + '=' + ' ' +Produto[4]));
                  Writeln(F,(DesenhodeDivisao));

                end;//if campo desconto

////////////////////////////////////////////////////////////////////////////////

                if (lbl_edtAcrescimo.Text > '0,00')and(lbl_edtDesconto.Text = '0,00') Then begin

                  Produto[0]:=frmVendasLoja.lbl_edtSubTotal.Caption;
                  Produto[1]:=cboTipoPagto.Text;
                  Produto[2]:=lbl_edtValor.Text;
                  Produto[3]:=lbl_edtTotalVenda.Text;
                  Produto[4]:=lbl_edtTroco.Text;
                  Produto[5]:=lbl_edtAcrescimo.Text;

                  Writeln(F,(DesenhodeDivisao),0);
                  Writeln(F,('TOTAL..:(R$)' + ' ' + '=' + ' ' +  Produto[0]));
                  Writeln(F,('ACRESCIMO' + ' ' + '=' + ' ' +  Produto[5]));
                  Writeln(F,('TOTAL A PAGAR COM ACRESCIMO' + ' ' + '=' + ' ' +  Produto[3]));
                  Writeln(F,(Produto[1] + ' ' + '=' + ' ' + Produto[2]));
                  Writeln(F,('TROCO' + ' ' + '=' + ' ' +Produto[4]));
                  Writeln(F,(DesenhodeDivisao));

                end;//if campo acrescimo

              end;//if frase roadpe = nao

                Writeln(F,(''));
                Writeln(F,(''));
                Writeln(F,(''));
                Writeln(F,(''));
                Writeln(F,(''));
                Writeln(F,(''));
                Writeln(F,(''));
                Writeln(F,(''));
                Writeln(F,(''));

            CloseFile(F);

              end;// if confirmas cupom;

            end;//if cimpressora matricial

          end;//if imprimir direto = sim

        end;// if imprimir cupom = sim

       end;//if sim impressora matricial }
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

//**ESTRUTURA PARA IMPRESSORA FISCAL T�RMICA **\\

  //ESTRUTURA INICIAL PARA IMPRESS�O

    {    Commit(ibConfig);
        ibConfig.Close;
        ibConfig.SQL.Clear;
        ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
        ibConfig.Open;

        ImpressaoMatricial  := ibConfig.FieldByName('IMPRESSORAMATRICIAL').AsString;
        ImpressaoTermica    := ibConfig.FieldByName('IMPRESSORATERMICA').AsString;
        DarumaMFD           := ibConfig.FieldByName('DARUMAMFD').AsString;
        EpsonMFD            := ibConfig.FieldByName('EPSONMFD').AsString;
        BematechMFD        := ibConfig.FieldByName('BEMATECHMFD').AsString;
      /// AnalisedeRetorno    := ibConfig.FieldByName('ANALISARETORNO').AsString;
        ImprimirPosVenda    := ibConfig.FieldByName('IMPRESSAOPOSVENDA').AsString;
        IniciaCupomFiscalF4 := ibConfig.FieldByName('CUPOMFISCALF4').AsString;
        FraseRodape         := ibConfig.FieldByName('FRASERODAPE').AsString;
        FrasePed            := ibConfig.FieldByName('FRASE').AsString;
        CXDialogo           := ibConfig.FieldByName('CXDIALOGOIMPRESSAO').AsString;
        ImprimeCupomPedido  := ibConfig.FieldByName('IMPRIMECUPOMPED').AsString;
        AtivarCalcIBPT      := ibConfig.FieldByName('ATIVARCALCULOIBPT').AsInteger;
        intSATDaruma        := ibConfig.FieldByName('SATDARUMA').AsInteger;

    160616    if ImpressaoTermica = 'Sim' Then begin

      //  if LPT1 = 'Sim' Then begin

        if CXDialogo = 'Sim' Then begin

          ConfirmaCupom := Application.MessageBox('Deseja imprimir a Venda','Notifica��o:Impress�o de Cupom',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

          if ConfirmaCupom = 6 Then begin



          if (DarumaMFD = 'Sim')and(lbl_CodVendaMPV.Caption = '')and(ImprimeCupomPedido = 'Nao') Then begin

            if IniciaCupomFiscalF4 = 'Nao' Then begin
               //**ABRECUPOM**
               Str_CPF_ou_CNPJ := '';

               Int_Retorno := iCFAbrirPadrao_ECF_Daruma();

            end; }

          {  if ImprimirPosVenda = 'Nao' Then begin
                //INICIA FECH CUPOM

                if (lbl_edtDesconto.Text > '0,00')and(lbl_edtAcrescimo.Text = '0,00') Then begin

                  Str_Acrescimo_ou_Desconto:='D';

                  Str_Valor_do_Acrescimo_Desconto:= lbl_edtDesconto.Text;

                end;

                if (lbl_edtAcrescimo.Text > '0,00')and(lbl_edtDesconto.Text = '0,00') Then begin

                  Str_Acrescimo_ou_Desconto:='A';

                  Str_Valor_do_Acrescimo_Desconto:= lbl_edtAcrescimo.Text;

                end;

                if (lbl_edtAcrescimo.Text = '0,00')and(lbl_edtDesconto.Text = '0,00') Then begin

                  Str_Acrescimo_ou_Desconto:='D';
                  Str_Valor_do_Acrescimo_Desconto:= '0,00';

                end;

                Str_Tipo_do_Acrescimo_Desconto:='$';


                 Int_Retorno := Daruma_FI_IniciaFechamentoCupom( pchar( Str_Acrescimo_ou_Desconto ), pchar( Str_Tipo_do_Acrescimo_Desconto ), pchar( Str_Valor_do_Acrescimo_Desconto ) );

                if AnalisedeRetorno = 'Sim'Then begin

                Daruma_Analisa_Retorno();

                end;

////////////////////////////////////////////////////////////////////////////////
                //EFETUA FORMAPAGTO

                Str_Descricao_da_Forma_Pagamento := cboTipoPagto.Text;

                Str_Valor_da_Forma_Pagamento := lbl_edtValor.Text;

                Int_Retorno := Daruma_FI_EfetuaFormaPagamento( pchar( Str_Descricao_da_Forma_Pagamento ), pchar( Str_Valor_da_Forma_Pagamento ) );

                if AnalisedeRetorno = 'Sim'Then begin

                Daruma_Analisa_Retorno();

                end;
////////////////////////////////////////////////////////////////////////////////

               //IDENTIFICACONSUMIDOR

                if (frmVendasLoja.lbl_Cliente.Caption <> '')and(frmVendasLoja.lbl_edtCnpjCpf.Caption <> '')Then begin

                Str_Nome_do_Consumidor := frmVendasLoja.lbl_Cliente.Caption;
                Str_CPF_ou_CNPJ := frmVendasLoja.lbl_edtCnpjCpf.Caption ;
                Str_Endereco := '';
                Int_Retorno:=Daruma_FI_IdentificaConsumidor( pchar( Str_Nome_do_Consumidor ), pchar( Str_Endereco ), pchar( Str_CPF_ou_CNPJ ) );

                if AnalisedeRetorno = 'Sim'Then begin

                Daruma_Analisa_Retorno();

                end;

                end;

                if (frmVendasLoja.lbl_Cliente.Caption = '')and(frmVendasLoja.lbl_CnpjCpfP.Caption = '')Then begin

                Str_Nome_do_Consumidor := '';
                Str_CPF_ou_CNPJ := '' ;
                Str_Endereco := '';
                Int_Retorno:=Daruma_FI_IdentificaConsumidor( pchar( Str_Nome_do_Consumidor ), pchar( Str_Endereco ), pchar( Str_CPF_ou_CNPJ ) );

                if AnalisedeRetorno = 'Sim'Then begin

                Daruma_Analisa_Retorno();

                end;

                end;

////////////////////////////////////////////////////////////////////////////////
              //TERMINA FECH CUPOM


                Str_Mensagem_Promocional := 'Obrigado Volte Sempre!!!';

                Int_Retorno := Daruma_FI_TerminaFechamentoCupom( pchar( Str_Mensagem_Promocional ) );

                if AnalisedeRetorno = 'Sim'Then begin

                Daruma_Analisa_Retorno();

                end;
////////////////////////////////////////////////////////////////////////////////

            end else begin //se for imprmir pos venda = sim  }

         {160616     if frmVendasLoja.lbl_CodPosVenda.Caption = '' Then begin

              Commit(ibTempVendaLoja);
            ///  ibTempVendaLoja.Close;
              ibTempVendaLoja.SQL.Clear;
              ibTempVendaLoja.SQL.Add('SELECT TBLSERVICOSVENDAS.*,'
              + 'CADPRODUTOS.NOME As Produto,CADPRODUTOS.CODBARRAS FROM TBLSERVICOSVENDAS '
              + 'INNER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD WHERE IDSERVSVENDA=''' + (frmVendasLoja.lbl_CodVenda.Caption) + '''');
              ibTempVendaLoja.Open;

             (ibTempVendaLoja.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := ',0.00';
             (ibTempVendaLoja.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := ',0.00';
             (ibTempVendaLoja.FieldByName('VALORB') as TFloatField).DisplayFormat := ',0.00';
             (ibTempVendaLoja.FieldByName('VALORC') as TFloatField).DisplayFormat := ',0.00';
             (ibTempVendaLoja.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis');

             end;

              if frmVendasLoja.lbl_CodPosVenda.Caption <> '' Then begin

              Commit(ibTempVendaLoja);
              ///ibTempVendaLoja.Close;
              ibTempVendaLoja.SQL.Clear;
              ibTempVendaLoja.SQL.Add('SELECT TBLSERVICOSVENDAS.*,'
              + 'CADPRODUTOS.NOME As Produto,CADPRODUTOS.CODBARRAS FROM TBLSERVICOSVENDAS '
              + 'INNER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD WHERE CODPOSVENDA=''' + (frmVendasLoja.lbl_CodPosVenda.Caption) + '''');
              ibTempVendaLoja.Open;

             (ibTempVendaLoja.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis');
             (ibTempVendaLoja.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis');
             (ibTempVendaLoja.FieldByName('VALORB') as TFloatField).DisplayFormat := ',0.00';
             (ibTempVendaLoja.FieldByName('VALORC') as TFloatField).DisplayFormat := ',0.00';
             (ibTempVendaLoja.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis');

             end;

                  while not ibTempVendaLoja.Eof do begin

                        ProdutoID := ibTempVendaLoja.FieldByName('IDPROD').AsInteger;
                        ncmexistente := False;

                        Commit(ibProdutos);
                        ibProdutos.Close;
                        ibProdutos.SQL.Clear;
                        ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE IDPROD=''' + IntToStr(ProdutoID) + '''');
                        ibProdutos.Open;

                        Str_Aliquota := ibProdutos.FieldByName('ALIQUOTA').AsString;
                        InformaNCM   := ibProdutos.FieldByName('NCM').AsString;

                        ibImposto.Close;
                        ibImposto.SQL.Clear;
                        ibImposto.SQL.Add('SELECT * FROM TBLIMPOSTO_IBPT WHERE TBLIMPOSTO_IBPT.CODIGO=''' + InformaNCM + '''');
                        ibImposto.Open;

                        if ibImposto.RecordCount > 0 Then begin

                          ncmexistente := True;

                        end;

                            if (ncmexistente = True)and(AtivarCalcIBPT = 1) Then begin

                            //  InformaNCM   := ibProdutos.FieldByName('NCM').AsString;

                              if InformaNCM <> '' Then begin

                                strNCM          := StringReplace(ibProdutos.FieldByName('NCM').AsString,ThousandSeparator,'',[rfReplaceAll]);
                               // intNCM := StrToInt(strNCM);
                              //  NCM := IntToStr(intNCM);
                                intNacionalidadeProd := (ibProdutos.FieldByName('NACIONALIDADEPROD').AsInteger);

                                  if intNacionalidadeProd = 1 Then begin

                                    ibImposto.Close;
                                    ibImposto.SQL.Clear;
                                    ibImposto.SQL.Add('SELECT * FROM TBLIMPOSTO_IBPT WHERE TBLIMPOSTO_IBPT.CODIGO=''' + strNCM + '''');
                                    ibImposto.Open;

                                    strPorcNCM     := (ibImposto.FieldByName('NACIONALFE').AsString);
                                    strImpostoEstadual := (ibImposto.FieldByName('ESTADUAL').AsString);

                                  end;

                                  if intNacionalidadeProd = 2 Then begin

                                    ibImposto.Close;
                                    ibImposto.SQL.Clear;
                                    ibImposto.SQL.Add('SELECT * FROM TBLIMPOSTO_IBPT WHERE TBLIMPOSTO_IBPT.CODIGO=''' + strNCM + '''');
                                    ibImposto.Open;

                                    strPorcNCM     := (ibImposto.FieldByName('IMPORTADOS').AsString);
                                    strImpostoEstadual := (ibImposto.FieldByName('ESTADUAL').AsString);

                                  end;

                              end;

                            end;//calcibpt
//****************************************************************************//
  //     .*,CADPRODUTOS.NCM FROM TBLIMPOSTO_IBPT '
  //    + 'INNER JOIN CADPRODUTOS ON TBLIMPOSTO_IBPT.CODIGO=CADPRODUTOS.NCM

                        rTotalVlrVenda := StrtoFloat(StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
                        strTotalVenda  := FormatFloat(CasasDecimais('Produtos'),rTotalVlrVenda);//StringReplace(FloatToStr(RVlrTotal),ThousandSeparator,'',[rfReplaceAll]);

                        rTotalQtde     := StrtoFloat(StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('QTDE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
                        strQtde        := FormatFloat(CasasDecimais('Produtos'),rTotalQtde);//StringReplace(FloatToStr(RQtde),ThousandSeparator,'',[rfReplaceAll]);

                      if (AtivarCalcIBPT = 1)and(ncmexistente = True) Then begin

                        if InformaNCM > '0' Then begin

                            //CALCULA ALIQUOTA NACIONAL OU IMORTADO imposto federal
                            strPorcNCM := StringReplace(strPorcNCM,ThousandSeparator,',',[rfReplaceAll]);
                            rVlrPorcNCM    :=  StrtoFloat(strPorcNCM);//StrtoFloat(StringReplace(FloattoStr(ibImposto.FieldByName('ALIQNAC').AsFloat),ThousandSeparator,'.',[rfReplaceAll]));

                            //CALCULAIMPOSTO ESTADUAL
                            strImpostoEstadual := StringReplace(strImpostoEstadual,ThousandSeparator,',',[rfReplaceAll]);
                            rVlrImpostoEstadual    :=  StrtoFloat(strImpostoEstadual);//StrtoFloat(StringReplace(FloattoStr(ibImposto.FieldByName('ALIQNAC').AsFloat),ThousandSeparator,'.',[rfReplaceAll]));

                          //calcula ref aliquota nacional ou importada imposto federal
                            CalculoPorcentagem := rTotalVlrVenda * rVlrPorcNCM / 100;

                          //calcula imposto estadual
                            rCalculoImpEstadual := rTotalVlrVenda * rVlrImpostoEstadual / 100;

                          // ref imposto federal
                          rTotalImposto := CalculoPorcentagem;

                          // ref imposto estadual
                          rTotalImpostoEstadual := rCalculoImpEstadual;

                          //total federal
                          rTotalGeralImposto :=  rTotalImposto + rTotalGeralImposto;
                          resultado :=  FormatFloat(CasasDecimais('Produtos'),rTotalGeralImposto);

                          //total estadual
                          rTotalGeralImpostoEstadual :=  rTotalImpostoEstadual + rTotalGeralImpostoEstadual;
                          resultadoestadual :=  FormatFloat(CasasDecimais('Produtos'),rTotalGeralImpostoEstadual);

                        end;

                      end;

                          RSomaaVenda := rTotalVlrVenda + RSomaaVenda;
                          rSomaTotaldaVenda := RSomaaVenda - rTotalGeralImposto - rTotalGeralImpostoEstadual;
                          strTotalpelosprodutos := FormatFloat(CasasDecimais('Produtos'),rSomaTotaldaVenda);

//****************************************************************************//


                    if ibProdutos.FieldByName('CODBARRAS').AsString > '0' Then begin

                      CodBarras    := ibProdutos.FieldByName('CODBARRAS').AsString;

                    end else begin

                      CodBarras    := IntToStr(ibProdutos.FieldByName('IDPROD').AsInteger);

                    end;


                    NomeProd  := ibProdutos.FieldByName('NOME').AsString;

                    RVlrUnit  := StrtoFloat(StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('VLRUNIT').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
                    VLrUnit   := FormatFloat(CasasDecimais('Combustiveis'),RVlrUnit);//StringReplace(FloatToStr(RVlrUnit),ThousandSeparator,'',[rfReplaceAll]);


                    RVlrTotal := StrtoFloat(StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
                    Vlrtotal  := FormatFloat(CasasDecimais('Combustiveis'),RVlrTotal);//StringReplace(FloatToStr(RVlrTotal),ThousandSeparator,'',[rfReplaceAll]);


                    RQtde     := StrtoFloat(StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('QTDE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
                    Qtde      := FormatFloat(CasasDecimais('Combustiveis'),RQtde);//StringReplace(FloatToStr(RQtde),ThousandSeparator,'',[rfReplaceAll]);


                    Str_Codigo := Trim(CodBarras);

                    Str_Descricao := Trim(NomeProd);

                    Str_Tipo_de_Quantidade := 'F';

                    Str_Quantidade := Trim(Qtde);

                    Int_Casas_Decimais := 3;

                    Str_Valor_Unitario := (VLrUnit);

                    Str_Tipo_de_Desconto := 'D$';

                    Str_Valor_do_Desconto := '0,00';

                    Str_UnidadeMedida := 'UN';

                    Int_Retorno := iCFVender_ECF_Daruma(Str_Aliquota, Str_Quantidade, Str_Valor_Unitario, Str_Tipo_de_Desconto, Str_Valor_do_Desconto, Str_Codigo, Str_UnidadeMedida, Str_Descricao );

                    ibTempVendaLoja.Next;

                  end;//while  160616}

                 { if NCM <> '' Then begin

                    rResultadoemP := rTotalGeralImposto / rSomaTotaldaVenda * 100;
                    strResultadoemP := FormatFloat(CasasDecimais('Produtos'),rResultadoemP);

                  end; }

////////////////////////////////////////////////////////////////////////////////

             {160616   if (lbl_edtDesconto.Text > '0,00')and(lbl_edtAcrescimo.Text = '0,00') Then begin

                  Str_Acrescimo_ou_Desconto:='D$';

                  Str_Valor_do_Acrescimo_Desconto:= lbl_edtDesconto.Text;

                  Int_Retorno := iCFTotalizarCupom_ECF_Daruma( Str_Acrescimo_ou_Desconto,Str_Valor_do_Acrescimo_Desconto );

                end;

                if (lbl_edtAcrescimo.Text > '0,00')and(lbl_edtDesconto.Text = '0,00') Then begin

                  Str_Acrescimo_ou_Desconto:='A$';

                  Str_Valor_do_Acrescimo_Desconto:= lbl_edtAcrescimo.Text;

                  Int_Retorno := iCFTotalizarCupom_ECF_Daruma( Str_Acrescimo_ou_Desconto,Str_Valor_do_Acrescimo_Desconto );

                end;

                if (lbl_edtAcrescimo.Text = '0,00')and(lbl_edtDesconto.Text = '0,00') Then begin

                  Str_Acrescimo_ou_Desconto:='D$';
                  Str_Valor_do_Acrescimo_Desconto:= '0,00';

                  Int_Retorno := iCFTotalizarCupom_ECF_Daruma( Str_Acrescimo_ou_Desconto,Str_Valor_do_Acrescimo_Desconto );

                end;  }

////////////////////////////////////////////////////////////////////////////////

               //IDENTIFICACONSUMIDOR

             {160616   if (frmVendasLoja.lbl_Cliente.Caption <> '')and(frmVendasLoja.lbl_edtCnpjCpf.Caption <> '')Then begin

                Str_Nome_do_Consumidor := frmVendasLoja.lbl_Cliente.Caption;
                Str_CPF_ou_CNPJ := frmVendasLoja.lbl_edtCnpjCpf.Caption ;
                Str_Endereco := '';
                Int_Retorno:=iCFIdentificarConsumidor_ECF_Daruma(Str_Nome_do_Consumidor, Str_Endereco,Str_CPF_ou_CNPJ);

                end;

                if (frmVendasLoja.lbl_Cliente.Caption = '')and(frmVendasLoja.lbl_CnpjCpfP.Caption = '')Then begin

                Str_Nome_do_Consumidor := '';
                Str_CPF_ou_CNPJ := '' ;
                Str_Endereco := '';
                Int_Retorno:=iCFIdentificarConsumidor_ECF_Daruma(Str_Nome_do_Consumidor, Str_Endereco,Str_CPF_ou_CNPJ);

                end;


                //EFETUA FORMAPAGTO

                if (cboTipoPagto.Text <> '')and(cboTPagto.Text = '')Then begin

                  Str_Descricao_da_Forma_Pagamento := cboTipoPagto.Text;

                  Str_Valor_da_Forma_Pagamento := lbl_edtValor.Text;

                  Int_Retorno := iCFEfetuarPagamentoFormatado_ECF_Daruma(Str_Descricao_da_Forma_Pagamento,Str_Valor_da_Forma_Pagamento);

                end;

                if (cboTPagto.Text <> '')and(cboTipoPagto.Text <> '')Then begin

                  //pagto1
                  Str_Descricao_da_Forma_Pagamento := cboTipoPagto.Text;

                  Str_Valor_da_Forma_Pagamento := lbl_edtValor.Text;

                  Int_Retorno := iCFEfetuarPagamentoFormatado_ECF_Daruma(Str_Descricao_da_Forma_Pagamento,Str_Valor_da_Forma_Pagamento);
                  //pagto2
                  Str_Descricao_da_Forma_Pagamento := cboTPagto.Text;

                  Str_Valor_da_Forma_Pagamento := lbl_edtValorPago.Text;

                  Int_Retorno := iCFEfetuarPagamentoFormatado_ECF_Daruma(Str_Descricao_da_Forma_Pagamento,Str_Valor_da_Forma_Pagamento);

                end; }
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////

              //TERMINA FECH CUPOM
               {160616     if  (strTotalpelosprodutos >'0,00') Then begin

                      Str_Mensagem_Promocional  := 'Voce pagou aproximadamente:'+#10+'R$'+resultado+' de tributos federais'+#10+'R$'+resultadoestadual+' de tributos estaduais'+#10+'R$'+strTotalpelosprodutos+' pelos produtos'+#10+'Fonte:IBPT/FECOMERCIO  SP        Xe67Eq';

                    end else begin

                      Str_Mensagem_Promocional := 'Obrigado Volte Sempre!!!';
                      
                    end;

                sTipoCupomAdic := '0';

                Int_Retorno := iCFEncerrar_ECF_Daruma(sTipoCupomAdic,Str_Mensagem_Promocional);   }

////////////////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////////////////

            ///end;//if imprimir pos venda =nao

        ///160616  end;//if daruma mfd

////////////////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////////////////



    //160616    end;//if confirma cupom
     //   end;//if lpt1 = sim

      //  end;//cxdialogo


////////////////////////////////////////////////////////////////////////////////


     //   end;//if impressao termica = sim

      /// end;//if impressao termica = sim
////////////////////////////////////////////////////////////////////////////////

           {   if lbl_edtNumCheque.Text <> '' Then begin

                if cboTipoPagto.Text = 'CHEQUE' Then begin

                IDTipoDoc := 2;

                end;

                if cboTipoPagto.Text = 'CHEQUE PRE' Then begin

                IDTipoDoc := 3;

                end;

                SituacaoCR := 'Pendente';


                ibAReceber.Close;
                ibAReceber.SQL.Clear;
                ibAReceber.SQL.Add(' INSERT INTO TBLCONTASARECEBER '
                + ' (EMISSAOCONTA,DTVENCTO,EMISSAO,VCTO,IDCLI,NUMCHEQUE,IDTIPODOC,SITUACAO,VLREMITIDO) values '
                + ' (''' + FormatDateTime('mm-dd-yyyy', now) + ''','
                + ' ''' + FormatDateTime('mm-dd-yyyy', dtpDataCheque.Date) + ''','
                + ' ''' + FormatDateTime('mm-dd-yyyy', now) + ''','
                + ' ''' + FormatDateTime('mm-dd-yyyy', dtpDataCheque.Date) + ''','
                + StringCliVenda
                + ' ''' + lbl_edtNumCheque.Text + ''','
                + ' ''' + IntToStr(IDTipoDoc) + ''','
                + ' ''' + SituacaoCR + ''','
                + ' ''' + ValorPago + ''')');
                ibAReceber.ExecSQL;
                Commit(ibAReceber);

              end;//if label cheque  }


////////////////////////////////////////////////////////////////////////////////

              if frmVendasLoja.lbl_CodPosVenda.Caption <> '' Then begin

              ibDetalhePosVenda.Close;
              ibDetalhePosVenda.SQL.Clear;
              ibDetalhePosVenda.SQL.Add('DELETE FROM TBLDETALHEPOSVENDA WHERE IDDETALHEPOSVENDA=''' + frmVendasLoja.lbl_CodPosVenda.Caption + '''');
              ibDetalhePosVenda.ExecSQL;

              end;

////////////////////////////////////////////////////////////////////////////////


          ///    frmVendasLoja.listboxCupom.Clear;



        //      CancelarProduto := False;

            //frmVendasLoja.lbl_edtSubTotal.Text := '0,00';
             frmVendasLoja.lbl_edtVlrUnit.Text  := '0,00';
             frmVendasLoja.lbl_edtVlrTotal.Text := '0,00';


             if frmVendasLoja.lbl_TipoPreco.Caption = '' Then begin

              TipoPreco := 'A';

              end;


             { ibServsVendasCli.Close;
              ibServsVendasCli.SQL.Clear;
              ibServsVendasCli.SQL.Add('SELECT IDSERVSVENDA FROM TBLSERVICOSVENDASCLI ORDER BY IDSERVSVENDA DESC');
              ibServsVendasCli.Open;

              frmVendasLoja.lbl_CodVenda.Caption := IntToStr(ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger+1);

              IDVendasServs := (ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger + 1);}


               frmVendasLoja.lbl_edtInformacao.Caption := 'Caixa Livre';
               frmVendasLoja.lbl_edtQtde.Text := '1';
               frmVendasLoja.lbl_edtSubTotal.Caption := '0,00';
              /// frmVendasLoja.lbl_edtCodBarras.Enabled := False;
              /// frmVendasLoja.lbl_edtCodProd.Enabled := False;
               frmVendasLoja.lbl_Cliente.Caption := '';
               frmVendasLoja.lbl_CodCliente.Caption := '';
               frmVendasLoja.lbl_CodPosVenda.Caption := '';
               frmVendasLoja.lbl_edtCnpjCpf.Caption := '';
               frmVendasLoja.lbl_CnpjCpfP.Caption := '';
               frmVendasLoja.lbl_IDFuncComissao.Caption := '';
               frmVendasLoja.lbl_IDCli.Caption := '';
               frmVendasLoja.lbl_IdOrc.Caption := '';
////////////////////////////////////////////////////////////////////////////////

      end;//if label codvenda> 0


        if frmRecebeLoja.lbl_CodVendaMPV.Caption > '0' Then begin

          Commit(ibTempVendaLoja);
          ibTempVendaLoja.Close;
          ibTempVendaLoja.SQL.Clear;
          ibTempVendaLoja.SQL.Add('SELECT * FROM TBLSERVICOSVENDAS WHERE IDSERVSVENDA=''' + frmVendasLoja.lbl_CodVenda.Caption + '''');
          ibTempVendaLoja.Open;

          if ibTempVendaLoja.RecordCount > 0 Then begin


            ibTempVendaLoja.Close;
            ibTempVendaLoja.SQL.Clear;
            ibTempVendaLoja.SQL.Add('DELETE FROM TBLSERVICOSVENDAS WHERE IDSERVSVENDA=''' + frmVendasLoja.lbl_CodVenda.Caption + '''');
            ibTempVendaLoja.ExecSQL;
            Commit(ibTempVendaLoja);

            ibServsVendasCli.Close;
            ibServsVendasCli.SQL.Clear;
            ibServsVendasCli.SQL.Add('DELETE FROM TBLSERVICOSVENDASCLI WHERE IDSERVSVENDA=''' + frmVendasLoja.lbl_CodVenda.Caption + '''');
            ibServsVendasCli.ExecSQL;
            Commit(ibServsVendasCli);

          end;


      ///    if (StringTipoPagamentoMPV = '')or(StringTipoPagamentoMPV = '0')Then begin

 ///           if cboTipoPagto.Text <> '' Then begin

         {  ibTipoPagtoF.Close;
            ibTipoPagtoF.SQL.Clear;
            ibTipoPagtoF.SQL.Add('SELECT * FROM TBLTIPOPAGTOAVULSO');
            ibTipoPagtoF.Open;

            if cboTipoPagto.ItemIndex <> -1 Then begin

              IDTipoPagamentoMPV  := TClasseCombo( cboTipoPagto.Items.Objects[cboTipoPagto.ItemIndex] );
              StringTipoPagamentoMPV  := 'IDTIPOPAGTO= ''' + InttoStr( IDTipoPagamentoMPV.ID ) + '''';

            end else if cboTipoPagto.ItemIndex <> -1 Then begin

              StringTipoPagamentoMPV  := 'IDTIPOPAGTO= '' 0 '',';  }

            if cboTipoPagto.Text <> '' Then begin

             { if cboTipoPagto.Text = 'DINHEIRO' Then begin

                StringTipoPagamentoMPV := '1';

              end;

              if cboTipoPagto.Text = 'CHEQUE' Then begin

                StringTipoPagamentoMPV := '2';

              end;

              if cboTipoPagto.Text = 'CHEQUE PRE' Then begin

                StringTipoPagamentoMPV := '3';

              end;

              if cboTipoPagto.Text = 'VISA CREDITO' Then begin

                StringTipoPagamentoMPV := '4';

              end;

              if cboTipoPagto.Text = 'VISA DEBITO' Then begin

                StringTipoPagamentoMPV := '5';

              end;

              if cboTipoPagto.Text = 'VISA PARCELADO' Then begin

                StringTipoPagamentoMPV := '6';

              end;

              if cboTipoPagto.Text = 'MASTERCARD CREDITO' Then begin

                StringTipoPagamentoMPV := '7';

              end;

              if cboTipoPagto.Text = 'MASTERCARD DEBITO' Then begin

                StringTipoPagamentoMPV := '8';

              end;

              if cboTipoPagto.Text = 'MASTERCARD  PARCELADO' Then begin

                StringTipoPagamentoMPV := '9';

              end;

              if cboTipoPagto.Text = 'HIPERCARD' Then begin

                StringTipoPagamentoMPV := '10';

              end;

              if cboTipoPagto.Text = 'AMERICAN EXPRESS' Then begin

                StringTipoPagamentoMPV := '11';

              end;

              if cboTipoPagto.Text = 'PENDENTE' Then begin

                StringTipoPagamentoMPV := '12';

              end;

              if cboTipoPagto.Text = 'DUPLICATA' Then begin

                StringTipoPagamentoMPV := '13';

              end;

              if cboTipoPagto.Text = 'SOROCRED' Then begin

                StringTipoPagamentoMPV := '14';

              end; }

              StringTipoPagamentoMPV := '1';

              ibMPV.Close;
              ibMPV.SQL.Clear;
              ibMPV.SQL.Add('UPDATE TBLMPV SET '
              + 'IDTIPOPAGTO = ''' + StringTipoPagamentoMPV + ''' WHERE IDDETALHE = ''' + frmRecebeLoja.lbl_CodVendaMPV.Caption + '''');
              ibMPV.ExecSQL;
              Commit(ibMPV);

            end;
         ///   end;

       ///   end;

          VlrDescontoMPV := StringReplace(lbl_edtDesconto.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          VlrDescontoMPV := StringReplace(VlrDescontoMPV,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);
          if VlrDescontoMPV  = '' Then
             VlrDescontoMPV := '0';


          if lbl_edtDesconto.Text > '0,00' Then begin

          ibMPV.Close;
          ibMPV.SQL.Clear;                                                                               ///   ORDER BY IDMVP DESC
          ibMPV.SQL.Add('SELECT * FROM TBLMPV WHERE IDDETALHE = ''' + frmRecebeLoja.lbl_CodVendaMPV.Caption + ''' ORDER BY IDMVP DESC');
          ibMPV.Open;                        /// WHERE IDDETALHE = ''' + frmVendasLoja.lbl_CodVendaMPV.Caption + ''''
         /// Commit(ibMPV);

         IDMVP := ibMPV.FieldByName('IDMVP').AsInteger;



         if ibMPV.RecordCount > 0 Then begin


        ///  IDMVP := ibMPV.FieldByName('IDMVP').AsInteger;

          ibMPV.Close;
          ibMPV.SQL.Clear;                           ///   WHERE IDDETALHE = ''' + frmVendasLoja.lbl_CodVendaMPV.Caption + '''');
          ibMPV.SQL.Add('UPDATE TBLMPV SET '        /// WHERE IDMVP = ''' + IntToStr(IDMVP) + '''');  IDMVP = ''' + IntToStr(IDMVP) + '''
          + 'VLRDESCONTO = ''' + VlrDescontoMPV + ''' WHERE(IDMVP = ''' + IntToStr(IDMVP) + ''')and(IDDETALHE = ''' + frmRecebeLoja.lbl_CodVendaMPV.Caption + ''')');
          ibMPV.ExecSQL;
          Commit(ibMPV);

         /// ibMPV.Next;

        ///  end;

          end;//if record count

          end;

          ibDetalheMPV.Close;
          ibDetalheMPV.SQL.Clear;
          ibDetalheMPV.SQL.Add('UPDATE TBLDETALHEMPV SET '
          + 'VALORDESC = ''' + VlrDescontoMPV + ''' WHERE IDDETALHEMPV = ''' + frmRecebeLoja.lbl_CodVendaMPV.Caption + '''');
          ibDetalheMPV.ExecSQL;
          Commit(ibDetalheMPV);

          strVFiscal := 'Nao';

          ibDetalhePosVenda.Close;
          ibDetalhePosVenda.SQL.Clear;
          ibDetalhePosVenda.SQL.Add('UPDATE TBLDETALHEPOSVENDA SET '
          + 'VENDAFISCAL = ''' + strVFiscal + ''' WHERE VENDAFISCAL=''' + frmVendasLoja.lbl_CodPosVenda.Caption + '''');
          ibDetalhePosVenda.ExecSQL;
          
//****************************************************************************//
////////////////////////////////////////////////////////////////////////////////


        {  if (ibconfig.FieldByName('SIMCUPOMORC').AsString = 'Sim')and(ibconfig.FieldByName('LPT1CUPOMORC').AsString = 'Sim') Then begin

           /// if ibconfig.FieldByName('SIMCUPOMORC').AsString = 'Sim' Then begin

               /// AssignPrn(F);
              ///  Rewrite(F);
              ///  i := 0;

              ConfirmaImpressao := Application.MessageBox('Confirma Impress�o','Impress�o de Cupom',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

              if ConfirmaImpressao = 6 Then begin

              Commit(ibMPV);
              ibMPV.Close;
              ibMPV.SQL.Clear;
              ibMPV.SQL.Add('SELECT * FROM TBLMPV WHERE IDDETALHE=''' + frmVendasLoja.lbl_CodVendaMPV.Caption + '''');
              ibMPV.Open;

              (ibMPV.FieldByName('VLRUNITARIO') as TFloatField).DisplayFormat := ',0.00';
              (ibMPV.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := ',0.00';
              (ibMPV.FieldByName('QTDE') as TFloatField).DisplayFormat := '0';


                DataConvertida := FormatDateTime('DD/MM/YYYY',Now);
                Hora           := FormatDateTime('hh:mm:ss',Now);

                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sp>1</sp>'+(frmVendasLoja.ListBoxDadosEmpresa.Items).Text+ ''),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Cupom N�.:<sp>1</sp>'+frmVendasLoja.lbl_CodVendaMPV.Caption+ ''),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Data:<sp>1</sp>'+DataConvertida+ '<sp>1</sp>Hora:<sp>1</sp>'+Hora+''),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);

               // Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
                while not ibMPV.Eof do begin

                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(ibMPV.FieldByName('NOMEPROD').AsString),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(FormatFloat('0',ibMPV.FieldByName('QTDE').AsFloat))+' X '+(FormatFloat(CasasDecimais('Produtos'),ibMPV.FieldByName('VLRUNITARIO').AsFloat))+' = '+(FormatFloat(CasasDecimais('Produtos'),ibMPV.FieldByName('VLRTOTAL').AsFloat)),0);
               /// QtdeVenda := FormatFloat(CasasDecimais('Produtos'),ibMPV.FieldByName('QTDE').AsFloat);
              ///  Unitario  := FormatFloat(CasasDecimais('Produtos'),ibMPV.FieldByName('VLRUNITARIO').AsFloat);
             ///   Total     := FormatFloat(CasasDecimais('Produtos'),ibMPV.FieldByName('VLRTOTAL').AsFloat);
            ///    Writeln(F,(QtdeVenda+' X '+Unitario+' = '+Total));//+ ibServsVenda.FieldByName('VLRUNIT').AsFloat)+' = '+(ibServsVenda.FieldByName('VLRTOTAL').AsFloat)));

                ibMPV.Next;

                end;//while


            if FraseRodape = 'Sim'Then begin

              if (lbl_edtDesconto.Text = '')or (lbl_edtDesconto.Text = '0,00')and(lbl_edtAcrescimo.Text = '0,00') Then begin

                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL..:(R$)'+ ' ' +' = '+'  '+lbl_edtTotalVenda.Text),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(cboTipoPagto.Text + ' = '+lbl_edtValor.Text),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TROCO'+ ' ' +' = '+'  '+lbl_edtTroco.Text),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(FrasePed),0);

              end;

              if (lbl_edtDesconto.Text > '0,00')and(lbl_edtAcrescimo.Text = '0,00') Then begin

                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL..:(R$)'+ ' ' +' = '+'  '+frmVendasLoja.lbl_edtSubTotal.Caption),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('DESCONTO' + ' ' + '=' + ' ' +lbl_edtDesconto.Text),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL A PAGAR COM DESCONTO' + ' ' + '=' + ' ' +lbl_edtTotalVenda.Text),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(cboTipoPagto.Text+ ' ' + '=' + ' ' +lbl_edtValor.Text),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TROCO' + ' ' + '=' + ' ' +lbl_edtTroco.Text),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(FrasePed),0);

              end;//if campo desconto

              if (lbl_edtAcrescimo.Text > '0,00')and(lbl_edtDesconto.Text = '0,00') Then begin

                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL..:(R$)'+ ' ' +' = '+'  '+frmVendasLoja.lbl_edtSubTotal.Caption),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('ACRESCIMO' + ' ' + '=' + ' ' +lbl_edtAcrescimo.Text),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL A PAGAR COM ACRESCIMO' + ' ' + '=' + ' ' +lbl_edtTotalVenda.Text),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(cboTipoPagto.Text+ ' ' + '=' + ' ' +lbl_edtValor.Text),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TROCO' + ' ' + '=' + ' ' +lbl_edtTroco.Text),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(FrasePed),0);

              end;//if campo acrescimo

            end;

            if FraseRodape = 'Nao'Then begin

              if (lbl_edtDesconto.Text = '')or (lbl_edtDesconto.Text = '0,00')and(lbl_edtAcrescimo.Text = '0,00') Then begin

                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL..:(R$)'+ ' ' +' = '+'  '+lbl_edtTotalVenda.Text),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(cboTipoPagto.Text + ' = '+lbl_edtValor.Text),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TROCO'+ ' ' +' = '+'  '+lbl_edtTroco.Text),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);

              end;

              if (lbl_edtDesconto.Text > '0,00')and(lbl_edtAcrescimo.Text = '0,00') Then begin

                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL..:(R$)'+ ' ' +' = '+'  '+frmVendasLoja.lbl_edtSubTotal.Caption),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('DESCONTO' + ' ' + '=' + ' ' +lbl_edtDesconto.Text),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL A PAGAR COM DESCONTO' + ' ' + '=' + ' ' +lbl_edtTotalVenda.Text),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(cboTipoPagto.Text+ ' ' + '=' + ' ' +lbl_edtValor.Text),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TROCO' + ' ' + '=' + ' ' +lbl_edtTroco.Text),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);

              end;//if campo desconto

              if (lbl_edtAcrescimo.Text > '0,00')and(lbl_edtDesconto.Text = '0,00') Then begin

                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL..:(R$)'+ ' ' +' = '+'  '+frmVendasLoja.lbl_edtSubTotal.Caption),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('ACRESCIMO' + ' ' + '=' + ' ' +lbl_edtAcrescimo.Text),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL A PAGAR COM ACRESCIMO' + ' ' + '=' + ' ' +lbl_edtTotalVenda.Text),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(cboTipoPagto.Text+ ' ' + '=' + ' ' +lbl_edtValor.Text),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TROCO' + ' ' + '=' + ' ' +lbl_edtTroco.Text),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);

              end;//if campo acrescimo

             /// end;//if confirmacupom

            end;

            Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sl>'+QtdedeSaltos+'</sl>'), 0);

                    if Int_Retorno = 1 Then
                    begin
                      Application.MessageBox('Impressao Concluida!!!', 'CP SISTEMAS', mb_ok + 32);
                    end
                    else
                    begin
                      Application.MessageBox('Erro!', 'Daruma Framework', mb_ok + 16);
                    end;

            end;//if confirmaimpressao

            ///end;//if impressatermica=nao

        end;//if lpt1 }
////////////////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////////////////

//****************************************************************************//


             /// frmVendasLoja.listboxCupom.Clear;



        //      CancelarProduto := False;

            //frmVendasLoja.lbl_edtSubTotal.Text := '0,00';
         frmVendasLoja.lbl_edtVlrUnit.Text  := '0,00';
         frmVendasLoja.lbl_edtVlrTotal.Text := '0,00';

         frmVendasLoja.lbl_edtInformacao.Caption := 'Caixa Livre';
         frmVendasLoja.lbl_edtQtde.Text := '1';
         frmVendasLoja.lbl_edtCodBarras.Enabled := False;
         frmVendasLoja.lbl_edtCodProd.Enabled := False;
         frmVendasLoja.lbl_Cliente.Caption := '';
         frmVendasLoja.lbl_CodCliente.Caption := '';
         frmVendasLoja.lbl_CodPosVenda.Caption := '';
         frmVendasLoja.lbl_edtCnpjCpf.Caption := '';
         frmVendasLoja.lbl_CnpjCpfP.Caption := '';
         frmVendasLoja.lbl_TipoPreco.Caption := '';

        end;//if codvendampv

     end else begin

     lbl_edtValor.SetFocus;


    end;//if confirma msg


  end;//if frmrecebe loja showing

  end;{with}

   //   frmVendasLoja.lbl_CodBarras.Caption := '';
      frmVendasLoja.lbl_NomeProd.Caption := '';
      frmVendasLoja.lbl_NomeFuncComissao.Caption := '';
      frmVendasLoja.lbl_edtFuncComissao.Text := '';
      frmVendasLoja.lbl_QtdeEstoque.Caption := '';
      frmVendasLoja.lbl_TipoPreco.Caption := '';
      frmVendasLoja.ckAtualizaValor.Checked := False;
      lbl_edtKM.Clear;
  lbl_edtDesconto.Text   := '0,00';
  lbl_edtTotalVenda.Text := '0,00';
  lbl_edtValorPago.Text  := '0,00';
      
    //  frmVendasLoja.lbl_Valor.Caption := '';
    // frmVendasLoja.lbl_edtSubTotal.Text := '0,00';
  //    frmVendasLoja.lbl_NumCupom.Caption := '';
  //    frmVendasLoja.lbl_edtNPed.Clear;

   //       frmVendasLoja.imgProduto.Picture := Nil; //LIMPA A IMAGEM
       //   ImagemProduto := '';


end;

procedure TfrmRecebeLoja.lbl_edtTrocoKeyPress(Sender: TObject;
  var Key: Char);



//Produto : Array[0..10] of String;
//FraseRodape,Frase,DesenhodaDivisao : String;
begin

  with dmModule do begin

    if Key = #13 Then begin


   {  Commit(ibConfig);
      ibConfig.Close;
      ibConfig.SQL.Clear;
      ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
      ibConfig.Open;


      Frase            := ibConfig.FieldByName('FRASE').AsString;
      FraseRodape      := ibConfig.FieldByName('FRASERODAPE').AsString;
      DesenhodaDivisao := ibConfig.FieldByName('DESENHODIVISAO').AsString;

      if FraseRodape = 'Sim' Then begin

        if cboTipoPagto.Text = 'PENDENTE' Then begin

          Produto[0]:=frmVendasLoja.lbl_edtVlrTotal.Text;
          Produto[1]:=cboTipoPagto.Text;
          Produto[2]:=lbl_edtValor.Text;
          Produto[3]:=lbl_edtTotalVenda.Text;
          Produto[4]:=lbl_edtTroco.Text;

          frmVendasLoja.listboxCupom.Items.Add('');
          frmVendasLoja.listboxCupom.Items.Add(DesenhodaDivisao);
          frmVendasLoja.listboxCupom.Items.Add('TOTAL DA VENDA' + ' ' + '=' + ' ' +  Produto[3]);
         // frmVendasLoja.listboxCupom.Items.Add(Produto[1] + ' ' + '=' + ' ' + Produto[3]);

        //  frmVendasLoja.listboxCupom.Items.Add('TROCO' + ' ' + '=' + ' ' +Produto[4]);
          frmVendasLoja.listboxCupom.Items.Add('');
          frmVendasLoja.listboxCupom.Items.Add(DesenhodaDivisao);
         // frmVendasLoja.listboxCupom.Items.Add(Frase);


        end else begin

          Produto[0]:=frmVendasLoja.lbl_edtVlrTotal.Text;
          Produto[1]:=cboTipoPagto.Text;
          Produto[2]:=lbl_edtValor.Text;
          Produto[3]:=lbl_edtTotalVenda.Text;
          Produto[4]:=lbl_edtTroco.Text;
          Produto[5]:=lbl_edtDesconto.Text;
          Produto[6]:=frmVendasLoja.lbl_edtSubTotal.Caption;

          if (lbl_edtDesconto.Text = '')or (lbl_edtDesconto.Text = '0,00') Then begin

            frmVendasLoja.listboxCupom.Items.Add('');
            frmVendasLoja.listboxCupom.Items.Add(DesenhodaDivisao);
            frmVendasLoja.listboxCupom.Items.Add('TOTAL DA VENDA' + ' ' + '=' + ' ' +  Produto[3]);
          //  frmVendasLoja.listboxCupom.Items.Add(Produto[1] + ' ' + '=' + ' ' + Produto[2]);

         //   frmVendasLoja.listboxCupom.Items.Add('TROCO' + ' ' + '=' + ' ' +Produto[4]);
            frmVendasLoja.listboxCupom.Items.Add('');
            frmVendasLoja.listboxCupom.Items.Add(DesenhodaDivisao);
          //  frmVendasLoja.listboxCupom.Items.Add(Frase);

          end else if lbl_edtDesconto.Text > '0,00' Then begin

            frmVendasLoja.listboxCupom.Items.Add('');
            frmVendasLoja.listboxCupom.Items.Add(DesenhodaDivisao);
            frmVendasLoja.listboxCupom.Items.Add('TOTAL DA VENDA' + ' ' + '=' + ' ' +  Produto[6]);
            frmVendasLoja.listboxCupom.Items.Add('DESCONTO' + ' ' + '=' + ' ' +  Produto[5]);
            frmVendasLoja.listboxCupom.Items.Add('TOTAL A PAGAR COM DESCONTO' + ' ' + '=' + ' ' +  Produto[3]);
          //  frmVendasLoja.listboxCupom.Items.Add(Produto[1] + ' ' + '=' + ' ' + Produto[2]);

        //    frmVendasLoja.listboxCupom.Items.Add('TROCO' + ' ' + '=' + ' ' +Produto[4]);
         //   frmVendasLoja.listboxCupom.Items.Add('');
            frmVendasLoja.listboxCupom.Items.Add(DesenhodaDivisao);
        //    frmVendasLoja.listboxCupom.Items.Add(Frase);

          end;//if campo desconto

        end;//if


      end;

      if FraseRodape = 'Nao' Then begin

        if cboTipoPagto.Text = 'PENDENTE' Then begin

          Produto[0]:=frmVendasLoja.lbl_edtVlrTotal.Text;
          Produto[1]:=cboTipoPagto.Text;
          Produto[2]:=lbl_edtValor.Text;
          Produto[3]:=lbl_edtTotalVenda.Text;
          Produto[4]:=lbl_edtTroco.Text;

          frmVendasLoja.listboxCupom.Items.Add('');
          frmVendasLoja.listboxCupom.Items.Add(DesenhodaDivisao);
          frmVendasLoja.listboxCupom.Items.Add('TOTAL DA VENDA' + ' ' + '=' + ' ' +  Produto[3]);
         // frmVendasLoja.listboxCupom.Items.Add(Produto[1] + ' ' + '=' + ' ' + Produto[3]);

       //   frmVendasLoja.listboxCupom.Items.Add('TROCO' + ' ' + '=' + ' ' +Produto[4]);
          frmVendasLoja.listboxCupom.Items.Add('');
          frmVendasLoja.listboxCupom.Items.Add(DesenhodaDivisao);
         // frmVendasLoja.listboxCupom.Items.Add('       Obrigado Pela Preferencia!');
         // frmVendasLoja.listboxCupom.Items.Add('              Volte Sempre!');
        // frmVendasLoja.listboxCupom.Items.Add('        ** Sem Efeito Fiscal **');

        end else begin

          Produto[0]:=frmVendasLoja.lbl_edtVlrTotal.Text;
          Produto[1]:=cboTipoPagto.Text;
          Produto[2]:=lbl_edtValor.Text;
          Produto[3]:=lbl_edtTotalVenda.Text;
          Produto[4]:=lbl_edtTroco.Text;
          Produto[5]:=lbl_edtDesconto.Text;
          Produto[6]:=frmVendasLoja.lbl_edtSubTotal.Caption;

          if (lbl_edtDesconto.Text = '')or (lbl_edtDesconto.Text = '0,00') Then begin

            frmVendasLoja.listboxCupom.Items.Add('');
            frmVendasLoja.listboxCupom.Items.Add(DesenhodaDivisao);
            frmVendasLoja.listboxCupom.Items.Add('TOTAL DA VENDA' + ' ' + '=' + ' ' +  Produto[3]);
         //   frmVendasLoja.listboxCupom.Items.Add(Produto[1] + ' ' + '=' + ' ' + Produto[2]);

         //  frmVendasLoja.listboxCupom.Items.Add('TROCO' + ' ' + '=' + ' ' +Produto[4]);
            frmVendasLoja.listboxCupom.Items.Add(DesenhodaDivisao);
            frmVendasLoja.listboxCupom.Items.Add('');
          //  frmVendasLoja.listboxCupom.Items.Add('       Obrigado Pela Preferencia!');
          //  frmVendasLoja.listboxCupom.Items.Add('              Volte Sempre!');
         //  frmVendasLoja.listboxCupom.Items.Add('       ** Sem Efeito Fiscal **');

          end else if lbl_edtDesconto.Text > '0,00' Then begin

            frmVendasLoja.listboxCupom.Items.Add('');
            frmVendasLoja.listboxCupom.Items.Add(DesenhodaDivisao);
            frmVendasLoja.listboxCupom.Items.Add('TOTAL DA VENDA' + ' ' + '=' + ' ' +  Produto[6]);
            frmVendasLoja.listboxCupom.Items.Add('DESCONTO' + ' ' + '=' + ' ' +  Produto[5]);
            frmVendasLoja.listboxCupom.Items.Add('TOTAL A PAGAR COM DESCONTO' + ' ' + '=' + ' ' +  Produto[3]);
           // frmVendasLoja.listboxCupom.Items.Add(Produto[1] + ' ' + '=' + ' ' + Produto[2]);

          //  frmVendasLoja.listboxCupom.Items.Add('TROCO' + ' ' + '=' + ' ' +Produto[4]);
            frmVendasLoja.listboxCupom.Items.Add('');
            frmVendasLoja.listboxCupom.Items.Add(DesenhodaDivisao);
          //  frmVendasLoja.listboxCupom.Items.Add('       Obrigado Pela Preferencia!');
          //  frmVendasLoja.listboxCupom.Items.Add('              Volte Sempre!');
          //  frmVendasLoja.listboxCupom.Items.Add('       ** Sem Efeito Fiscal **');

          end;//if campo desconto

        end;//if

      end;//iffrase rodape  }

          {ibTempVendaLoja.Close;
          ibTempVendaLoja.SQL.Clear;
          ibTempVendaLoja.SQL.Add('DELETE FROM TBLSERVICOSVENDAS WHERE IDSERVSVENDA=''' + IntToStr(IDVendaTransf) + '''');
          ibTempVendaLoja.ExecSQL;
          Commit(ibTempVendaLoja);

          ibServsVendasCli.Close;
          ibServsVendasCli.SQL.Clear;
          ibServsVendasCli.SQL.Add('DELETE FROM TBLSERVICOSVENDASCLI WHERE IDSERVSVENDA=''' + IntToStr(IDVendaTransf) + '''');
          ibServsVendasCli.ExecSQL;
          Commit(ibServsVendasCli);}



      lbl_edtSair.SetFocus;

    end;

  end;//with

end;

procedure TfrmRecebeLoja.lbl_edtSairKeyPress(Sender: TObject;
  var Key: Char);

///  var

///IDVendaCaixa : Integer;

begin

  with dmModule do begin

    if Key = #13 Then begin

         { ibServsVendasCli.Close;
          ibServsVendasCli.SQL.Clear;
          ibServsVendasCli.SQL.Add('INSERT INTO TBLSERVICOSVENDASCLI '
          + '(DATA) values '
          + '(''' + FormatDateTime('mm-dd-yyyy',Now) + ''')');
          ibServsVendasCli.ExecSQL;
          Commit(ibServsVendasCli);
          ibServsVendasCli.Close;
          ibServsVendasCli.SQL.Clear;
          ibServsVendasCli.SQL.Add('SELECT IDSERVSVENDA FROM TBLSERVICOSVENDASCLI ORDER BY IDSERVSVENDA DESC');
          ibServsVendasCli.Open;

          frmVendasLoja.lbl_CodVenda.Caption := IntToStr(ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger);
         /// frmVendasLoja.lbl_CodVendaMPV.Caption := '';

          IDVendasServs := (ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger);}
    
      StringTipoPagamento := '0';
     /// frmVendasLoja.lbl_CodVenda.Caption := '';
     /// frmVendasLoja.lbl_CodVendaMPV.Caption := '';
      frmVendasLoja.lbl_edtSubTotal.Caption := '0,00';
      frmVendasLoja.lbl_IDPlacaVeiculo.Caption := '';
         frmVendasLoja.lbl_edtVlrUnit.Text  := '0,00';
         frmVendasLoja.lbl_edtVlrTotal.Text := '0,00';

         frmVendasLoja.lbl_edtInformacao.Caption := 'Caixa Livre';
         frmVendasLoja.lbl_edtQtde.Text := '1';
         frmVendasLoja.lbl_edtCodBarras.Enabled := False;
         frmVendasLoja.lbl_edtCodProd.Enabled := False;
         frmVendasLoja.lbl_Cliente.Caption := '';
         frmVendasLoja.lbl_CodCliente.Caption := '';
         frmVendasLoja.lbl_CodPosVenda.Caption := '';
         frmVendasLoja.lbl_edtCnpjCpf.Caption := '';
         frmVendasLoja.lbl_CnpjCpfP.Caption := '';
         lbl_CodVendaMPV.Caption := '';
    ///  frmVendasLoja.listboxCupom.Clear;
      ibServsVenda.SQL.Clear;
      frmRecebeLoja.Close;

    end;

  end;//with

end;

procedure TfrmRecebeLoja.lbl_edtSairExit(Sender: TObject);
begin

  lbl_edtDesconto.Text   := '0,00';
  lbl_edtTotalVenda.Text := '0,00';
  lbl_edtValorPago.Text  := '0,00';

end;

procedure TfrmRecebeLoja.lbl_edtValorKeyPress(Sender: TObject;
  var Key: Char);
  var
  ConfirmaTipoPagto : Integer;
  VlrPagto1, VlrPagto2, VlrTotalVendaCX : TVendasCaixa;
  Valor1, Valor2 : Real;
begin

    with dmModule do begin

    VlrPagto1 := TVendasCaixa.Create();
    VlrPagto2 := TVendasCaixa.Create();
    VlrTotalVendaCX := TVendasCaixa.Create();
    //VlrTroco := TVendasCaixa.Create();

      try

        if Key = #13 then begin

          VlrPagto1.VlrPago1 := StrToFloat(StringReplace(lbl_edtValor.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
          lbl_edtValor.Text := FormatFloat(',0.00',(VlrPagto1.VlrPago1));

          if cboTipoPagto.Text = '' Then begin

            ConfirmaTipoPagto := Application.MessageBox('Tipo de Pagto est� em Branco?,Favor Lan�ar um Tipo de Pagamento para Finalizar a Venda?','Tipo de Pagto em Branco',+MB_OK+MB_DEFBUTTON1+MB_ICONERROR);

            cboTipoPagto.SetFocus;

          end else begin

             if (lbl_edtValor.Text <> '')and(cboTipoPagto.Text <> 'PENDENTE') Then begin //se for em branco executa rotina abaixo.

               if (Pos(',',lbl_edtValor.Text)>0) and (lbl_edtValor.Text > '0,00') Then begin

                 VlrTotalVendaCX.VlrTotalVenda := StrToFloat(StringReplace(lbl_edtTotalVenda.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
                 lbl_edtTotalVenda.Text := FormatFloat(',0.00',(VlrTotalVendaCX.VlrTotalVenda));

                 if (VlrPagto1.VlrPago1 < VlrTotalVendaCX.VlrTotalVenda) Then begin

                   VlrPagto2.VlrPago2    := VlrTotalVendaCX.VlrTotalVenda - VlrPagto1.VlrPago1;
                   lbl_edtValorPago.Text := FormatFloat(',0.00',(VlrPagto2.VlrPago2));
                   lbl_edtTroco.Text     := FormatFloat(',0.00',(VlrPagto1.VlrPago1 + VlrPagto2.VlrPago2 - VlrTotalVendaCX.VlrTotalVenda));
                   frmVendasLoja.lbl_edtInformacao.Caption :='Troco : ' + lbl_edtTroco.Text;

                   cboTPagto.SetFocus;

                 end else if(VlrPagto1.VlrPago1 >= VlrTotalVendaCX.VlrTotalVenda) Then begin

                   lbl_edtTroco.Text     := FormatFloat(',0.00',(VlrPagto1.VlrPago1 - VlrTotalVendaCX.VlrTotalVenda));
                   frmVendasLoja.lbl_edtInformacao.Caption :='Troco : ' + lbl_edtTroco.Text;

                   lbl_edtTrocoExit(Sender);
                   StringTipoPagamento := '0';
                   frmVendasLoja.lbl_edtSubTotal.Caption := '0,00';
                   frmVendasLoja.lbl_IDPlacaVeiculo.Caption := '';
                   frmVendasLoja.lbl_edtVlrUnit.Text  := '0,00';
                   frmVendasLoja.lbl_edtVlrTotal.Text := '0,00';

                   frmVendasLoja.lbl_edtInformacao.Caption := 'Caixa Livre';
                   frmVendasLoja.lbl_edtQtde.Text := '1';
                   frmVendasLoja.lbl_edtCodBarras.Enabled := False;
                   frmVendasLoja.lbl_edtCodProd.Enabled := False;
                   frmVendasLoja.lbl_Cliente.Caption := '';
                   frmVendasLoja.lbl_CodCliente.Caption := '';
                   frmVendasLoja.lbl_CodPosVenda.Caption := '';
                   frmVendasLoja.lbl_edtCnpjCpf.Caption := '';
                   frmVendasLoja.lbl_CnpjCpfP.Caption := '';
                   lbl_CodVendaMPV.Caption := '';
                   frmVendasLoja.listboxCupom.Clear;
                   ibServsVenda.SQL.Clear;
                   frmRecebeLoja.Close;

                 end;//if vlr pagto 1 < total venda

               end;//if  lbl_edtvalor text > 0

            end;// if lbl_edtvalor <> ''

          end;//if cbo tipo pagto <>''

          if cboTipoPagto.Text = 'PENDENTE' then begin

            if (lbl_edtValor.Text > '0,00') then begin

              lbl_edtTroco.Text := FormatFloat(',0.00',(Valor2 - Valor1));

            end;//if

            if (lbl_edtValor.Text = '0,00') Then begin

              lbl_edtTroco.Text := FormatFloat(',0.00',(Valor1));

            end;

              frmVendasLoja.lbl_edtInformacao.Caption :='Pendente : ' + lbl_edtTroco.Text;

              lbl_edtTrocoExit(Sender);
              StringTipoPagamento := '0';
              frmVendasLoja.lbl_edtSubTotal.Caption := '0,00';
              frmVendasLoja.lbl_IDPlacaVeiculo.Caption := '';
              frmVendasLoja.lbl_edtVlrUnit.Text  := '0,00';
              frmVendasLoja.lbl_edtVlrTotal.Text := '0,00';

              frmVendasLoja.lbl_edtInformacao.Caption := 'Caixa Livre';
              frmVendasLoja.lbl_edtQtde.Text := '1';
              frmVendasLoja.lbl_edtCodBarras.Enabled := False;
              frmVendasLoja.lbl_edtCodProd.Enabled := False;
              frmVendasLoja.lbl_Cliente.Caption := '';
              frmVendasLoja.lbl_CodCliente.Caption := '';
              frmVendasLoja.lbl_CodPosVenda.Caption := '';
              frmVendasLoja.lbl_edtCnpjCpf.Caption := '';
              frmVendasLoja.lbl_CnpjCpfP.Caption := '';
              lbl_CodVendaMPV.Caption := '';
              frmVendasLoja.listboxCupom.Clear;
              ibServsVenda.SQL.Clear;
              frmRecebeLoja.Close;

          end;//cbotipopagto = PENDENTE
////////////////////////////////////////////////////////////////////////////////

        end;// if key = #13

      finally

       // FreeAndNil(VlrTroco);
        FreeAndNil(VlrPagto1);
        FreeAndNil(VlrPagto2);
        FreeAndNil(VlrTotalVendaCX);

      end;//finally

    end;//with

end;//begin

procedure TfrmRecebeLoja.lbl_edtDescontoKeyPress(Sender: TObject;
  var Key: Char);
begin

  if Key = #13 then begin

    lbl_edtValor.SetFocus;

  end;

end;

procedure TfrmRecebeLoja.lbl_edtDescontoExit(Sender: TObject);

var

Valor1,Valor2,Valor3 : Real;
TotalVendaPorcentagem,DescontoPorcentagem,ValorMultiplicado,TotalPorcentagem : Real;
TotalVendaValor,DescontoValor,TotalValor : Real;

begin

  with dmModule do begin

    tedit(sender).color := clwindow;
                                  //  and(ckValor.Checked = False)and(ckPorcentagem.Checked = False)
    if (lbl_edtValor.Text > '0,00') Then begin

      if lbl_edtTotalVenda.Text <> '' Then begin //se for diferente de branco executa rotina abaixo.

         if (Pos(',',lbl_edtTotalVenda.Text)>0) and (lbl_edtTotalVenda.Text <> '') Then begin

           Valor1 := StrToFloat(StringReplace(lbl_edtTotalVenda.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
           Valor2 := StrToFloat(StringReplace(lbl_edtDesconto.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
           lbl_edtTotalVenda.Text := FormatFloat(',0.00',(Valor1 - Valor2));
           lbl_edtValor.Text      := FormatFloat(',0.00',(Valor1 - Valor2));

         end else begin

           Valor1 := StrToFloat(StringReplace(lbl_edtTotalVenda.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
           Valor2 := StrToFloat(StringReplace(lbl_edtDesconto.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
           lbl_edtTotalVenda.Text := FormatFloat(',0.00',(Valor1 - Valor2));
           lbl_edtValor.Text      := FormatFloat(',0.00',(Valor1 - Valor2));
           
         end;{if}

       end;{if}

    end;//if label valor


  {  if (lbl_edtValor.Text = '0,00')and(ckPorcentagem.Checked) Then begin

      if lbl_edtTotalVenda.Text <> '' Then begin //se for diferente de branco executa rotina abaixo.

         if (Pos(',',lbl_edtTotalVenda.Text)>0) and (lbl_edtTotalVenda.Text <> '') Then begin

           TotalVendaPorcentagem := StrToFloat(StringReplace(lbl_edtTotalVenda.Text,ThousandSeparator,'',[rfReplaceAll]));
           DescontoPorcentagem   := StrToFloat(StringReplace(lbl_edtDesconto.Text,ThousandSeparator,'',[rfReplaceAll]));
           ValorMultiplicado := TotalVendaPorcentagem * DescontoPorcentagem;
           TotalPorcentagem  := ValorMultiplicado / 100;
           lbl_edtValor.Text := FormatFloat(',0.00',(TotalVendaPorcentagem - TotalPorcentagem));
           lbl_edtTotalVenda.Text := FormatFloat(',0.00',(TotalVendaPorcentagem - TotalPorcentagem));
           lbl_edtValor.Text := FormatFloat(',0.00',(TotalVendaPorcentagem - TotalPorcentagem));

         end else begin

           TotalVendaPorcentagem := StrToFloat(StringReplace(lbl_edtTotalVenda.Text,ThousandSeparator,'',[rfReplaceAll]));
           DescontoPorcentagem   := StrToFloat(StringReplace(lbl_edtDesconto.Text,ThousandSeparator,'',[rfReplaceAll]));
           ValorMultiplicado := TotalVendaPorcentagem * DescontoPorcentagem;
           TotalPorcentagem  := ValorMultiplicado / 100;
           lbl_edtValor.Text := FormatFloat(',0.00',(TotalVendaPorcentagem - TotalPorcentagem));
           lbl_edtTotalVenda.Text := FormatFloat(',0.00',(TotalVendaPorcentagem - TotalPorcentagem));
           lbl_edtValor.Text := FormatFloat(',0.00',(TotalVendaPorcentagem - TotalPorcentagem)); }

         //end;{if}

      // end;{if}

   // end;//if label valor

////////////////////////////////////////////////////////////////////////////////

    {if (ckValor.Checked) Then begin

      if lbl_edtTotalVenda.Text <> '' Then begin //se for diferente de branco executa rotina abaixo.

         if (Pos(',',lbl_edtTotalVenda.Text)>0) and (lbl_edtTotalVenda.Text <> '') Then begin

           TotalVendaValor := StrToFloat(StringReplace(lbl_edtTotalVenda.Text,ThousandSeparator,'',[rfReplaceAll]));
           DescontoValor   := StrToFloat(StringReplace(lbl_edtDesconto.Text,ThousandSeparator,'',[rfReplaceAll]));
           TotalValor  := TotalVendaValor - DescontoValor;
           lbl_edtValor.Text := FormatFloat(',0.00',(TotalValor));
           lbl_edtTotalVenda.Text := FormatFloat(',0.00',(TotalVendaValor - DescontoValor));
           lbl_edtValor.Text := FormatFloat(',0.00',(TotalVendaValor - DescontoValor));

         end else begin

           TotalVendaValor := StrToFloat(StringReplace(lbl_edtTotalVenda.Text,ThousandSeparator,'',[rfReplaceAll]));
           DescontoValor   := StrToFloat(StringReplace(lbl_edtDesconto.Text,ThousandSeparator,'',[rfReplaceAll]));
           TotalValor  := TotalVendaValor - DescontoValor;
           lbl_edtValor.Text := FormatFloat(',0.00',(TotalValor));
           lbl_edtTotalVenda.Text := FormatFloat(',0.00',(TotalVendaValor - DescontoValor));
           lbl_edtValor.Text := FormatFloat(',0.00',(TotalVendaValor - DescontoValor));   }
           
      //   end;{if}

    //   end;{if}

   // end;//if label valor


////////////////////////////////////////////////////////////////////////////////
    lbl_edtDesconto.Text := FormatFloat(CasasDecimais('Produtos'),StrToFloat(lbl_edtDesconto.Text)); //FormatFloat(casa',0.00',StrToFloat(lbl_edtValor.Text));

  end;{with}
 { with dmModule do begin

   if lbl_edtTotalVenda.Text <> '' Then begin //se for diferente de branco executa rotina abaixo.

      if (Pos(',',lbl_edtTotalVenda.Text)>0) and (lbl_edtTotalVenda.Text <> '') Then begin

        Valor1 := StrToFloat(StringReplace(lbl_edtTotalVenda.Text,ThousandSeparator,'',[rfReplaceAll]));
        Valor2 := StrToFloat(StringReplace(lbl_edtDesconto.Text,ThousandSeparator,'',[rfReplaceAll]));
        lbl_edtTotalVenda.Text := FormatFloat(',0.00',(Valor1 - Valor2));


      end else begin

        Valor1 := StrToFloat(StringReplace(lbl_edtTotalVenda.Text,ThousandSeparator,'',[rfReplaceAll]));
        Valor2 := StrToFloat(StringReplace(lbl_edtDesconto.Text,ThousandSeparator,'',[rfReplaceAll]));
        lbl_edtTotalVenda.Text := FormatFloat(',0.00',(Valor1 - Valor2)); }


    //  end;{if}

  //  end;{if}

   // lbl_edtDesconto.Text := FormatFloat(CasasDecimais('Produtos'),StrToFloat(lbl_edtDesconto.Text)); //FormatFloat(casa',0.00',StrToFloat(lbl_edtValor.Text));

 // end;{with}

end;

procedure TfrmRecebeLoja.lbl_edtTotalVendaExit(Sender: TObject);
var

Valor1,Valor2,Valor3,Valor4,Valor5,Valor6 : Real;

IDVendaCaixa : Integer;

begin
  with dmModule do begin

    tedit(sender).color := clwindow;
  ////  if cboTipoPagto.Text <> 'PENDENTE' then begin






     if (lbl_edtValor.Text <> '')and(cboTipoPagto.Text <> 'PENDENTE') Then begin //se for em branco executa rotina abaixo.

        if (Pos(',',lbl_edtValor.Text)>0) and (lbl_edtValor.Text > '0,00') Then begin

          Valor1 := StrToFloat(StringReplace(lbl_edtValor.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
          Valor2 := StrToFloat(StringReplace(lbl_edtTotalVenda.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          if (lbl_edtValorPago.Text >'0,00')and(lbl_edtValor.Text > '0,00') Then begin

          Valor3 := StrToFloat(StringReplace(lbl_edtValorPago.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
          lbl_edtTroco.Text := FormatFloat(',0.00',(Valor1 + Valor3 - Valor2));

          end else begin

          lbl_edtTroco.Text := FormatFloat(',0.00',(Valor1 - Valor2));

          end;// else begin

          frmVendasLoja.lbl_edtInformacao.Caption :='Troco : ' + lbl_edtTroco.Text;

        {  if cboTipoPagto.Text <> 'PENDENTE' Then begin

            if (lbl_edtValor.Text > '0,00') then begin

              lbl_edtTroco.Text := FormatFloat(',0.00',(Valor1 - Valor2));

            end;//if

         //   if (lbl_edtTotalVenda.Text > lbl_edtValor.Text) then begin

         //     lbl_edtTroco.Text := FormatFloat(',0.00',(Valor2 - Valor1));

        //    end;//if

            if (lbl_edtValor.Text = '0,00') Then begin

            lbl_edtTroco.Text := FormatFloat(',0.00',(Valor1));

            end;

            frmVendasLoja.lbl_edtInformacao.Caption :='Troco : ' + lbl_edtTroco.Text;

          end;//if cbo<>pendente  }

          if cboTipoPagto.Text = 'PENDENTE' Then begin

            if (lbl_edtValor.Text > '0,00') then begin

              lbl_edtTroco.Text := FormatFloat(',0.00',(Valor2 - Valor1));

            end;//if

          ////  if (lbl_edtTotalVenda.Text > lbl_edtValor.Text) then begin

          ////    lbl_edtTroco.Text := FormatFloat(',0.00',(Valor2 - Valor1));

          ////  end;//if

            if (lbl_edtValor.Text = '0,00') Then begin

            lbl_edtTroco.Text := FormatFloat(',0.00',(Valor1));

            end;

            frmVendasLoja.lbl_edtInformacao.Caption :='Pendente : ' + lbl_edtTroco.Text;

          end;//if cbo<>pendente

        end;{if}

      end;{if}



      if(lbl_CodVendaMPV.Caption <> '')Then begin

          IDVendaCaixa := StrToInt(frmVendasLoja.lbl_CodVenda.Caption);

          Commit(ibTempVendaLoja);
          ibTempVendaLoja.Close;
          ibTempVendaLoja.SQL.Clear;
          ibTempVendaLoja.SQL.Add('SELECT * FROM TBLSERVICOSVENDAS WHERE IDSERVSVENDA=''' + frmVendasLoja.lbl_CodVenda.Caption + '''');
          ibTempVendaLoja.Open;

          if ibTempVendaLoja.RecordCount > 0 Then begin


            ibTempVendaLoja.Close;
            ibTempVendaLoja.SQL.Clear;
            ibTempVendaLoja.SQL.Add('DELETE FROM TBLSERVICOSVENDAS WHERE IDSERVSVENDA=''' + frmVendasLoja.lbl_CodVenda.Caption + '''');
            ibTempVendaLoja.ExecSQL;
            Commit(ibTempVendaLoja);

            ibServsVendasCli.Close;
            ibServsVendasCli.SQL.Clear;
            ibServsVendasCli.SQL.Add('DELETE FROM TBLSERVICOSVENDASCLI WHERE IDSERVSVENDA=''' + frmVendasLoja.lbl_CodVenda.Caption + '''');
            ibServsVendasCli.ExecSQL;
            Commit(ibServsVendasCli);

          end;

      end;//if

   {   if lbl_edtSubTotal.Text = '' Then begin

       lbl_edtSubTotal.Text := FormatFloat(',0.00',Valor3);

      end else begin

       Valor4 := StrToFloat(StringReplace(lbl_edtSubTotal.Text,ThousandSeparator,'',[rfReplaceAll]));
       lbl_edtSubTotal.Text := FormatFloat(',0.00',(Valor4 + Valor3));   }

     // end;{if}

     // lbl_edtValor.Text := FormatFloat(CasasDecimais('Produtos'),StrToFloat(lbl_edtValor.Text)); //FormatFloat(casa',0.00',StrToFloat(lbl_edtValor.Text));
  //// end;//if cbopendente

////////////////////////////////////////////////////////////////////////////////

   { if(cboTipoPagto.Text = 'PENDENTE') then begin

      if (lbl_edtValor.Text > '0,00') Then begin //se for em branco executa rotina abaixo.

         if (Pos(',',lbl_edtValor.Text)>0) and (lbl_edtValor.Text <> '') Then begin

           Valor4:= StrToFloat(StringReplace(lbl_edtValor.Text,ThousandSeparator,'',[rfReplaceAll]));
           Valor5:= StrToFloat(StringReplace(lbl_edtTotalVenda.Text,ThousandSeparator,'',[rfReplaceAll]));

           if (lbl_edtValor.Text < lbl_edtTotalVenda.Text)Then begin

             Valor6:= Valor5 - Valor4;

             lbl_edtTotalVenda.Text := FormatFloat(',0.00',(Valor6));

           end;

           if (lbl_edtTotalVenda.Text < lbl_edtValor.Text )Then begin

             Application.MessageBox('Aten��o o pagamento deste pendente est� igual ou maior que o total da venda,favor verificar??','Aviso de pagamento pendente',+MB_OK+MB_DEFBUTTON1+MB_ICONINFORMATION);

           end;

           if (lbl_edtTotalVenda.Text = lbl_edtValor.Text)Then begin

             Application.MessageBox('Aten��o o pagamento deste pendente est� igual ou maior que o total da venda,favor verificar??','Aviso de pagamento pendente',+MB_OK+MB_DEFBUTTON1+MB_ICONINFORMATION);

           end;

           lbl_edtTroco.Text := '0,00';

         end else begin

           Valor4:= StrToFloat(StringReplace(lbl_edtValor.Text,ThousandSeparator,'',[rfReplaceAll]));
           Valor5:= StrToFloat(StringReplace(lbl_edtTotalVenda.Text,ThousandSeparator,'',[rfReplaceAll]));

           if (lbl_edtValor.Text < lbl_edtTotalVenda.Text)Then begin

             Valor6:= Valor5-  Valor4;

             lbl_edtTotalVenda.Text := FormatFloat(',0.00',(Valor6));

           end;}

          { if (lbl_edtValor.Text > lbl_edtTotalVenda.Text)Then begin

             Application.MessageBox('Aten��o o pagamento deste pendente est� igual ou maior que o total da venda,favor verificar??','Aviso de pagamento pendente',+MB_OK+MB_DEFBUTTON1+MB_ICONINFORMATION);

           end;

           if (lbl_edtValor.Text = lbl_edtTotalVenda.Text)Then begin

             Application.MessageBox('Aten��o o pagamento deste pendente est� igual ou maior que o total da venda,favor verificar??','Aviso de pagamento pendente',+MB_OK+MB_DEFBUTTON1+MB_ICONINFORMATION);

           end;}

      ////    lbl_edtTroco.Text := '0,00';

      ////  end;{if}

     //// end;{if}


  ////  end;//if cbopendente



////////////////////////////////////////////////////////////////////////////////

  end;{with}


end;

procedure TfrmRecebeLoja.lbl_edtNumChequeKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key = #13 Then begin

    cboTPagto.SetFocus;

  end;

end;

procedure TfrmRecebeLoja.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

var

IDProdTransf,IDVendaTransf,IDVendaMPV,IDFuncCX,IDVendaCliente : Integer;
NomeProduto,NomeFunc : String;
VlrUnit,Qtde,VlrTotal : String;
VlrUnitario,Quantde,ValorTotal : Real;
begin

  with dmModule do begin

    case key of

      VK_ESCAPE :begin

        Close;

      end;



      VK_F3 :begin

      frmBuscaClientes.ShowModal;

      end;//begin
    
      VK_F5 :begin

            ibDetalheMPV.Close;
            ibDetalheMPV.SQL.Clear;
            ibDetalheMPV.SQL.Add('INSERT INTO TBLDETALHEMPV '
            + '(DATA) values '
            + '(''' + FormatDateTime('mm-dd-yyyy',Now) + ''')');
            ibDetalheMPV.ExecSQL;

            Commit(ibDetalheMPV);
            ibDetalheMPV.Close;
            ibDetalheMPV.SQL.Clear;
            ibDetalheMPV.SQL.Add('SELECT IDDETALHEMPV FROM TBLDETALHEMPV ORDER BY IDDETALHEMPV DESC');
            ibDetalheMPV.Open;

            IDVendaMPV := (ibDetalheMPV.FieldByName('IDDETALHEMPV').AsInteger);
            lbl_CodVendaMPV.Caption := IntToStr(ibDetalheMPV.FieldByName('IDDETALHEMPV').AsInteger);

    /// IDVendaMPV := 0;
        IDVendaTransf := StrToInt(frmVendasLoja.lbl_CodVenda.Caption);

        Commit(ibServsVenda);
        ibServsVenda.Close;
        ibServsVenda.SQL.Clear;
        ibServsVenda.SQL.Add('SELECT * FROM TBLSERVICOSVENDAS WHERE IDSERVSVENDA=''' + IntToStr(IDVendaTransf) + '''');
        ibServsVenda.Open;

        while not ibServsVenda.Eof do begin

          if IDVendaMPV > 0 Then begin

          IDProdTransf := ibServsVenda.FieldByName('IDPROD').AsInteger;

          NomeProduto  := ibServsVenda.FieldByName('NOMEPROD').AsString;

          VlrUnitario := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRUNIT').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
          VlrUnit := StringReplace(FloattoStr(VlrUnitario),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          VlrUnit := StringReplace(VlrUnit,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);


          Quantde      := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('QTDE').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
          Qtde         := StringReplace(FloattoStr(Quantde),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          Qtde         := StringReplace(Qtde,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);


          ValorTotal   := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
          VlrTotal     := StringReplace(FloattoStr(ValorTotal),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          VlrTotal     := StringReplace(VlrTotal,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);



            if frmVendasLoja.lbl_IDCli.Caption <> '' Then begin

              IDFuncCX := StrToInt(frmVendasLoja.lbl_IDCli.Caption);

            end else begin

              IDFuncCX := 0;  

            end;//if

            if lbl_edtCodCli.Text > '0' Then begin

              IDVendaCliente := StrToInt(lbl_edtCodCli.Text);

            end else begin

              IDVendaCliente := 0;  

            end;//if

            if lbl_edtNomeCliente.Text <> '' Then begin

              NomeFunc := lbl_edtNomeCliente.Text;

            end;

            ibMPV.Close;
            ibMPV.SQL.Clear;
            ibMPV.SQL.Add('INSERT INTO TBLMPV '
            + ' (IDPROD,VLRUNITARIO,VLRTOTAL,IDDETALHE,'
            + 'NOMEPROD,QTDE,IDFUNC,IDCLI,NOMEFUNC,'
            + 'DATA,HORA) values '
            + ' (''' + intTostr(IDProdTransf)  + ''','
            + ' ''' + VlrUnit + ''','
            + ' ''' + VlrTotal + ''','
            + ' ''' + IntToStr(IDVendaMPV) + ''','
            + ' ''' + NomeProduto + ''','
            + ' ''' + Qtde + ''','
            + ' ''' + IntToStr(IDFuncCX) + ''','
            + ' ''' + IntToStr(IDVendaCliente) + ''','
            + ' ''' + NomeFunc + ''','
            + ' ''' + FormatDateTime('mm-dd-yyyy',now) + ''','
            + ' ''' + FormatDateTime('hh:mm:ss',now) + ''')');
            ibMPV.ExecSQL;
            Commit(ibMPV);
            
          end else begin

           { ibDetalheMPV.Close;
            ibDetalheMPV.SQL.Clear;
            ibDetalheMPV.SQL.Add('INSERT INTO TBLDETALHEMPV '
            + '(DATA) values '
            + '(''' + FormatDateTime('mm-dd-yyyy',Now) + ''')');
            ibDetalheMPV.ExecSQL;

            Commit(ibDetalheMPV);
            ibDetalheMPV.Close;
            ibDetalheMPV.SQL.Clear;
            ibDetalheMPV.SQL.Add('SELECT IDDETALHEMPV FROM TBLDETALHEMPV ORDER BY IDDETALHEMPV DESC');
            ibDetalheMPV.Open;

            IDVendaMPV := (ibDetalheMPV.FieldByName('IDDETALHEMPV').AsInteger);
            lbl_CodVendaMPV.Caption := IntToStr(ibDetalheMPV.FieldByName('IDDETALHEMPV').AsInteger);  }

          end;//idvendampv > 0

          ibServsVenda.Next;

        end;//while

      end;//begin

    end;//case

  end;//with

end;

procedure TfrmRecebeLoja.lbl_edtAcrescimoKeyPress(Sender: TObject;
  var Key: Char);
begin

  if Key = #13 then begin

    lbl_edtValor.SetFocus;

  end;

end;

procedure TfrmRecebeLoja.lbl_edtAcrescimoExit(Sender: TObject);

var

Valor1,Valor2 : Real;


begin


  with dmModule do begin

   tedit(sender).color := clwindow;
   if lbl_edtTotalVenda.Text <> '' Then begin //se for diferente de branco executa rotina abaixo.

      if (Pos(',',lbl_edtTotalVenda.Text)>0) and (lbl_edtTotalVenda.Text <> '') Then begin

        Valor1 := StrToFloat(StringReplace(lbl_edtTotalVenda.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
        Valor2 := StrToFloat(StringReplace(lbl_edtAcrescimo.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
        lbl_edtTotalVenda.Text := FormatFloat(',0.00',(Valor1 + Valor2));


      end else begin

        Valor1 := StrToFloat(StringReplace(lbl_edtTotalVenda.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
        Valor2 := StrToFloat(StringReplace(lbl_edtAcrescimo.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
        lbl_edtTotalVenda.Text := FormatFloat(',0.00',(Valor1 + Valor2));


      end;{if}

    end;{if}

    lbl_edtAcrescimo.Text := FormatFloat(CasasDecimais('Produtos'),StrToFloat(lbl_edtAcrescimo.Text)); //FormatFloat(casa',0.00',StrToFloat(lbl_edtValor.Text));

////////////////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////////////////


  end;{with}
 { with dmModule do begin

   if lbl_edtTotalVenda.Text <> '' Then begin //se for diferente de branco executa rotina abaixo.

      if (Pos(',',lbl_edtTotalVenda.Text)>0) and (lbl_edtTotalVenda.Text <> '') Then begin

        Valor1 := StrToFloat(StringReplace(lbl_edtTotalVenda.Text,ThousandSeparator,'',[rfReplaceAll]));
        Valor2 := StrToFloat(StringReplace(lbl_edtAcrescimo.Text,ThousandSeparator,'',[rfReplaceAll]));
        lbl_edtTotalVenda.Text := FormatFloat(',0.00',(Valor1 + Valor2));

      end else begin

        Valor1 := StrToFloat(StringReplace(lbl_edtTotalVenda.Text,ThousandSeparator,'',[rfReplaceAll]));
        Valor2 := StrToFloat(StringReplace(lbl_edtAcrescimo.Text,ThousandSeparator,'',[rfReplaceAll]));
        lbl_edtTotalVenda.Text := FormatFloat(',0.00',(Valor1 + Valor2)); }


     // end;{if}

   // end;{if}

   // lbl_edtAcrescimo.Text := FormatFloat(CasasDecimais('Produtos'),StrToFloat(lbl_edtAcrescimo.Text)); //FormatFloat(casa',0.00',StrToFloat(lbl_edtValor.Text));

 // end;{with}

end;

procedure TfrmRecebeLoja.lbl_edtValorPagoExit(Sender: TObject);

begin

  with dmModule do begin

    tedit(sender).color := clwindow;

  end;//with

end;

procedure TfrmRecebeLoja.lbl_edtValorPagoKeyPress(Sender: TObject;
  var Key: Char);
begin

  with dmModule do begin

    if key=#13 Then begin

      lbl_edtDesconto.SetFocus;

      lbl_edtTrocoExit(Sender);
      StringTipoPagamento := '0';
      frmVendasLoja.lbl_edtSubTotal.Caption := '0,00';
      frmVendasLoja.lbl_IDPlacaVeiculo.Caption := '';
      frmVendasLoja.lbl_edtVlrUnit.Text  := '0,00';
      frmVendasLoja.lbl_edtVlrTotal.Text := '0,00';

      frmVendasLoja.lbl_edtInformacao.Caption := 'Caixa Livre';
      frmVendasLoja.lbl_edtQtde.Text := '1';
      frmVendasLoja.lbl_edtCodBarras.Enabled := False;
      frmVendasLoja.lbl_edtCodProd.Enabled := False;
      frmVendasLoja.lbl_Cliente.Caption := '';
      frmVendasLoja.lbl_CodCliente.Caption := '';
      frmVendasLoja.lbl_CodPosVenda.Caption := '';
      frmVendasLoja.lbl_edtCnpjCpf.Caption := '';
      frmVendasLoja.lbl_CnpjCpfP.Caption := '';
      lbl_CodVendaMPV.Caption := '';
      frmVendasLoja.listboxCupom.Clear;
      ibServsVenda.SQL.Clear;
      frmRecebeLoja.Close;

    end;//if

  end;  

end;

procedure TfrmRecebeLoja.ckValorCheck(Sender: TObject);
begin

 { if ckValor.Checked Then begin

    ckPorcentagem.Checked := False;
    lbl_edtDesconto.SetFocus;

  end; }

end;

procedure TfrmRecebeLoja.ckPorcentagemCheck(Sender: TObject);
begin

 { if ckPorcentagem.Checked Then begin

    ckValor.Checked := False;
    lbl_edtDesconto.SetFocus;

  end; }

end;

procedure TfrmRecebeLoja.Valor1Click(Sender: TObject);
begin
//ckValor.Checked := True;
//ckPorcentagem.Checked := False;
lbl_edtDesconto.SetFocus;
end;

procedure TfrmRecebeLoja.Porcentagem1Click(Sender: TObject);
begin
//ckPorcentagem.Checked := True;
//ckValor.Checked := False;
lbl_edtDesconto.SetFocus;
end;

procedure TfrmRecebeLoja.LimparCampos1Click(Sender: TObject);
begin

  if (frmVendasLoja.lbl_CodVenda.Caption > '0')or(frmVendasLoja.lbl_CodVendaMPV.Caption > '0')Then begin

    lbl_edtDesconto.Text := '0,00';
    lbl_edtAcrescimo.Text := '0,00';
    lbl_edtTroco.Text := '0,00';
    lbl_edtValor.Text := frmVendasLoja.lbl_edtSubTotal.Caption;
    lbl_edtTotalVenda.Text := frmVendasLoja.lbl_edtSubTotal.Caption;
    cboTipoPagto.SetFocus;

  end;//if

end;

procedure TfrmRecebeLoja.cboTPagtoKeyPress(Sender: TObject; var Key: Char);
begin

   cboTPagto.DroppedDown := True;
   SendMessage(cboTPagto.Handle,CB_SHOWDROPDOWN,1,0);

   lbl_edtValorPago.SetFocus;

end;

procedure TfrmRecebeLoja.cboTPagtoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   cboTPagto.DroppedDown := True;
   SendMessage(cboTPagto.Handle,CB_SHOWDROPDOWN,1,0);

   
end;

procedure TfrmRecebeLoja.NotaPaulista1Click(Sender: TObject);
begin
frmNFPaulista.ShowModal;
end;

procedure TfrmRecebeLoja.BmsXPButton1Click(Sender: TObject);
begin
///iRetorno := EPSON_RelatorioFiscal_LeituraX();
end;

procedure TfrmRecebeLoja.lbl_edtDescontoPKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    if lbl_edtDescontoP.Text > '0' Then begin

      lbl_edtAcrescimo.SetFocus;

    end else begin

      lbl_edtDesconto.SetFocus;

    end;

  end;
    
end;

procedure TfrmRecebeLoja.lbl_edtDescontoPExit(Sender: TObject);

var

Valor1,Valor2 : Real;
TotalVendaPorcentagem,DescontoPorcentagem,ValorMultiplicado,TotalPorcentagem : Real;
TotalVendaValor,DescontoValor,TotalValor : Real;

begin

    tedit(sender).color := clwindow;
    
    if lbl_edtDescontoP.Text > '0,00' Then begin

      if lbl_edtTotalVenda.Text <> '' Then begin //se for diferente de branco executa rotina abaixo.

         if (Pos(',',lbl_edtTotalVenda.Text)>0) and (lbl_edtTotalVenda.Text <> '') Then begin

           TotalVendaPorcentagem := StrToFloat(StringReplace(lbl_edtTotalVenda.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
           DescontoPorcentagem   := StrToFloat(StringReplace(lbl_edtDescontoP.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
           ValorMultiplicado := TotalVendaPorcentagem * DescontoPorcentagem;
           TotalPorcentagem  := ValorMultiplicado / 100;
           ///lbl_edtValor.Text := (frmVendasLoja.lbl_edtSubTotal.Caption);
           lbl_edtTotalVenda.Text := FormatFloat(',0.00',(TotalVendaPorcentagem - TotalPorcentagem));
           lbl_edtValor.Text := FormatFloat(',0.00',(TotalVendaPorcentagem - TotalPorcentagem));
           lbl_edtDesconto.Text := FormatFloat(',0.00',(TotalPorcentagem));

         end else begin

           lbl_edtValor.Text := '0,00';

           TotalVendaPorcentagem := StrToFloat(StringReplace(lbl_edtTotalVenda.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
           DescontoPorcentagem   := StrToFloat(StringReplace(lbl_edtDescontoP.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
           ValorMultiplicado := TotalVendaPorcentagem * DescontoPorcentagem;
           TotalPorcentagem  := ValorMultiplicado / 100;
           ///lbl_edtValor.Text := (frmVendasLoja.lbl_edtSubTotal.Caption);
           lbl_edtTotalVenda.Text := FormatFloat(',0.00',(TotalVendaPorcentagem - TotalPorcentagem));
           lbl_edtValor.Text := FormatFloat(',0.00',(TotalVendaPorcentagem - TotalPorcentagem));
           lbl_edtDesconto.Text := FormatFloat(',0.00',(TotalPorcentagem));
                      
         end;{if}

       end;{if}

       lbl_edtDescontoP.Text := FormatFloat(CasasDecimais('Produtos'),StrToFloat(lbl_edtDescontoP.Text));

    end;//if label valor

////////////////////////////////////////////////////////////////////////////////

end;

procedure TfrmRecebeLoja.lbl_edtDescontoEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmRecebeLoja.cboTipoPagtoEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmRecebeLoja.cboTPagtoEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmRecebeLoja.lbl_edtDescontoPEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmRecebeLoja.lbl_edtAcrescimoEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmRecebeLoja.lbl_edtValorEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmRecebeLoja.lbl_edtTotalVendaEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmRecebeLoja.lbl_edtTrocoEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmRecebeLoja.lbl_edtValorPagoEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmRecebeLoja.lbl_edtCodCliEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmRecebeLoja.lbl_edtNomeClienteEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmRecebeLoja.lbl_edtNumChequeEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmRecebeLoja.cboTipoPagtoExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
end;

procedure TfrmRecebeLoja.cboTPagtoExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
end;

procedure TfrmRecebeLoja.lbl_edtCodCliExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
end;

procedure TfrmRecebeLoja.lbl_edtNomeClienteExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
end;

procedure TfrmRecebeLoja.lbl_edtNumChequeExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
end;

end.
