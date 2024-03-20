unit DarumaFramework_SAT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Menus;

type
  TFR_DarumaFramework_SAT = class(TForm)
    BT_Fechar: TButton;
    MainMenu1: TMainMenu;
    MtodosdeConfigurao1: TMenuItem;
    Mtodosdeemisso1: TMenuItem;
    Testes1: TMenuItem;
    Versao1: TMenuItem;
    eBuscarPortaVelociadadeDUAL1: TMenuItem;
    Usarvaloresdefaultparateste1: TMenuItem;
    ImpressoMiniImpressora1: TMenuItem;
    EmissoCupomTeste1: TMenuItem;
    tCFeCancelarSATDaruma1: TMenuItem;
    LB_Versao: TLabel;
    Mtodosdestatus1: TMenuItem;
    rVerificarComunicacaoSATDaruma3: TMenuItem;
    rConsultarStatusSATDaruma1: TMenuItem;
    Image1: TImage;
    tCFeAssociarAssinaturaSATDAruma1: TMenuItem;
    MtodosdeAbertura1: TMenuItem;
    Mtodos1: TMenuItem;
    MotodosTotalizao1: TMenuItem;
    MtodosdePagamento1: TMenuItem;
    MtodosEncerramento1: TMenuItem;
    MtodoCancelamento1: TMenuItem;
    aCFAbrirSATDaruma1: TMenuItem;
    aCFVenderSATDaruma1: TMenuItem;
    aCFeCancelarItemSATDaruma1: TMenuItem;
    aCFEfetuarPagamentoSATDaruma1: TMenuItem;
    aCFeCancelarFormaPagamentoSATDaruma1: TMenuItem;
    aCFEstornarPagamentoSATDaruma1: TMenuItem;
    tCFEncerrarSATDaruma1: TMenuItem;
    MtodoEnvio1: TMenuItem;
    MtodoReimprimirUltimoCFeSATDaruma1: TMenuItem;
    aCFTotalizarSATDaruma1: TMenuItem;
    rConsultarStatusEspecificoSATDaruma1: TMenuItem;
    rConsultarArqCopSegurancaSATDaruma1: TMenuItem;
    Configurao1: TMenuItem;
    regAlterarValorSATDaruma1: TMenuItem;
    regRetornarValorSATDaruma1: TMenuItem;
    tCFeCancelarParametrizado1: TMenuItem;
    rInfoestendidaSATDaruma1: TMenuItem;
    MtodosdeImpressao1: TMenuItem;
    MtodoiImprimirCfeSATDaruma1: TMenuItem;
    versaoExemplo: TMenuItem;
    procedure Tratar_RetornoSAT(iRetorno :integer);
    procedure BT_FecharClick(Sender: TObject);
    procedure eBuscarPortaVelociadadeDUAL1Click(Sender: TObject);
    procedure Usarvaloresdefaultparateste1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ImpressoMiniImpressora1Click(Sender: TObject);
    procedure EmissoCupomTeste1Click(Sender: TObject);
    procedure aCFeAbrirSATDaruma1Click(Sender: TObject);
    procedure aCFeVenderSATDaruma1Click(Sender: TObject);
    procedure aCFeTotalizarSATDaruma1Click(Sender: TObject);
    procedure aCFeEfetuarPagamentoSATDaruma1Click(Sender: TObject);
    procedure tCFeEncerrarSATDaruma1Click(Sender: TObject);
    procedure tCFeCancelarSATDaruma1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rVerificarComunicacaoSATDaruma3Click(Sender: TObject);
    procedure rConsultarStatusSATDaruma1Click(Sender: TObject);
    procedure MtodoReimprimirUltimoCFeSATDaruma1Click(Sender: TObject);
    procedure aCFAbrirSATDaruma1Click(Sender: TObject);
    procedure aCFVenderSATDaruma1Click(Sender: TObject);
    procedure aCFTotalizarSATDaruma1Click(Sender: TObject);
    procedure aCFEfetuarPagamentoSATDaruma1Click(Sender: TObject);
    procedure tCFEncerrarSATDaruma1Click(Sender: TObject);
    procedure aCFEstornarPagamentoSATDaruma1Click(Sender: TObject);
    procedure regAlterarValorSATDaruma1Click(Sender: TObject);
    procedure tCFeAssociarAssinaturaSATDAruma1Click(Sender: TObject);
    procedure regRetornarValorSATDaruma1Click(Sender: TObject);
    procedure MtodoEnvio1Click(Sender: TObject);
    procedure aCFeCancelarFormaPagamentoSATDaruma1Click(Sender: TObject);
    procedure aCFeCancelarItemSATDaruma1Click(Sender: TObject);
    procedure aCFeEstornarPagamentoSATDaruma1Click(Sender: TObject);
    procedure rConsultarStatusEspecificoSATDaruma1Click(Sender: TObject);
    procedure rConsultarArqCopSegurancaSATDaruma1Click(Sender: TObject);
    procedure tCFeCancelarParametrizado1Click(Sender: TObject);
    procedure rInfoestendidaSATDaruma1Click(Sender: TObject);
    procedure MtodoiImprimirCfeSATDaruma1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

	//Geral
  function eDefinirProduto_Daruma(szProduto: String): Integer; StdCall; External 'DarumaFrameWork.dll';
  function regAlterarValor_Daruma(pszPathChave:String; pszValor:String):Integer; StdCall; External 'DarumaFrameWork.dll';
  function eVerificarVersaoDLL_Daruma(pszRet:String):Integer; StdCall; External 'DarumaFrameWork.dll';
  //DUAL - Mini-Impressoras
  function eBuscarPortaVelocidade_DUAL_DarumaFramework(): Integer; StdCall; External 'DarumaFrameWork.dll';
  function iImprimirTexto_DUAL_DarumaFramework(pszString: String; iTam: Integer): Integer; StdCall; External 'DarumaFrameWork.dll';

  // SAT - XML
  function regAlterarValor_SAT_Daruma(pszTagSAT:String; pszValorTagSAT:String):Integer; StdCall; External 'DarumaFramework.dll';
  function regRetornarValor_SAT_Daruma(pszTagSAT:String; pszValorTagSAT:String):Integer; StdCall; External 'DarumaFramework.dll';

  // SAT - Cupom Fiscal Parametrizado
    //abertura
    function aCFAbrir_SAT_Daruma(pszCPF: String; pszNome: String; pszEndereceo: String): Integer; StdCall; External 'DarumaFrameWork.dll';
    //item
    function aCFVender_SAT_Daruma(pszCargaTributaria: String; pszQuantidade: String; pszPrecoUnitario: String; pszTipoDescAcres: String; pszValorDescAcres: String; pszCodigoItem: String; pszUnidadeMedida: String; pszDescricao: String): Integer; StdCall; External 'DarumaFrameWork.dll';
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

  //SAT - Reimpressão e Impressão
  function iReimprimirUltimoCFe_SAT_Daruma() : Integer; StdCall; External 'DarumaFrameWork.dll';
  function iImprimirCFe_SAT_Daruma(szPathXmlSAT: String; pszTipo: String): Integer; StdCall; External 'DarumaFrameWork.dll';

  // SAT - Configuração SAT
  function tCFeAssociarAssinatura_SAT_Daruma(pszTagsAssinatura: String): Integer; StdCall; External 'DarumaFrameWork.dll';

  // SAT - Retornos e Status
  function rVerificarComunicacao_SAT_Daruma(): Integer; StdCall; External 'DarumaFrameWork.dll';
  function rConsultarStatus_SAT_Daruma(pszStatusSAT: String): Integer; StdCall; External 'DarumaFrameWork.dll';
  function rConsultarStatusEspecifico_SAT_Daruma(pszCampo: String; pszRetornoSAT: String): Integer; StdCall; External 'DarumaFramework.dll';
  function rConsultarArqCopSeguranca_SAT_Daruma(pszArqCopSeg: String): Integer; StdCall; External 'DarumaFramework.dll';
  function rInfoEstendida_SAT_Daruma(pszIndice: String; pszRetorno: String): Integer; StdCall; External 'DarumaFramework.dll';


var
  FR_DarumaFramework_SAT: TFR_DarumaFramework_SAT;
  iRetorno: Integer;
  Str_Parametro: String;

implementation

uses EmissaoCupomTeste, Metodo_aCFeAbrir_SAT_Daruma, Metodo_aCFeVender_SAT_Daruma,
  Metodo_aCFeTotalizar_SAT_Daruma, Metodo_aCFeEfetuarPagamento_SAT_Daruma,
  Metodo_tCFeEncerrar_SAT_Daruma, Metodo_aCFAbrir_SAT_Daruma,
  Metodo_aCFVender_SAT_Daruma, Metodo_aCFTotalizar_SAT_Daruma,
  Metodo_aCFEfetuarPagamento_SAT_Daruma, Metodo_tCFEncerrar_SAT_Daruma,
  Metodo_aCFEstornarPagamento_SAT_Daruma, Metodo_regRetornarValor_SAT_Daruma,
  Metodo_tCFeAssociarAssinatura_SAT_Daruma, Metodo_tCFeEnviar_SAT_Daruma,
  Metodo_aCFeCancelarFormaPagamento_SAT_Daruma, Metodo_regAlterarValor_SAT_Daruma,
  Metodo_aCFeCancelarItem_SAT_Daruma, Metodo_aCFeEstornarPagamento_SAT_Daruma,
  Metodo_rConsultarStatusEspecifico_SAT_Daruma,
  Metodo_tCFeCancelarParametrizado_SAT_Daruma,
  Metodo_rInfoEstendida_SAT_Daruma, Metodo_iImprimirCFe_SAT_Daruma;

{$R *.dfm}

procedure TFR_DarumaFramework_SAT.Tratar_RetornoSAT(iRetorno:integer);
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
         0: Str_Msg:= '[0] - Método não executado/ Tag inválida/ Não foi possível comunicar com impressora';
         //retorno 0, depende do método que foi chamado tem significado diferente.
        -6: Str_Msg:= '[-6] - TimeOut, erro de comunicação com o SAT';
        -7: Str_Msg:= '[-7] - Erro ao abrir comunicação com o SAT';
        -40: Str_Msg:= '[-40] - Tag XML inválida';
        -50: Str_Msg:= '[-50] - Impressora off-Line';
        -51: Str_Msg:= '[-51] - Impressora sem papel';
        -99: Str_Msg:= '[-99] - Parâmetro inválido ou ponteiro nulo de parâmetro';
        -120: Str_Msg:= '[-120] - Encontrada tag inválida';
        -121: Str_Msg:= '[-121] - Estrutura Invalida';
        -122: Str_Msg:= '[-122] - Tag obrigatória não foi informada';
        -123: Str_Msg:= '[-123] - Tag obrigatória não tem valor preenchido';
        -130: Str_Msg:= '[-130] - CFe já aberto';
        -131: Str_Msg:= '[-131] - CFe não aberto';
        -132: Str_Msg:= '[-132] - CFe não em fase de venda';
        -133: Str_Msg:= '[-133] - CFe não em fase de totalização';
        -134: Str_Msg:= '[-134] - CFe não em fase de pagamento';
        -135: Str_Msg:= '[-135] - CFe não em fase de encerramento';
        -136: Str_Msg:= '[-136] - CFe em estado inválido para operação';
        -140: Str_Msg:= '[-140] - Biblioteca auxiliar SAT.dll não foi encontrada/carregada';
        -141: Str_Msg:= '[-141] - Impressora inválida (modelo deve ser DR700 ou versão incompativel)';
        -142: Str_Msg:= '[-142] - Resposta Incompleta do SAT';
        /// Os códigos de erro abaixo são retornados pelo SAT  para verificar mais retornos consulte a Especificação de Requisitos do SAT vigente.
        1084: Str_Msg:= '[1084] - Formato do Certificado Inválido';
        1085: Str_Msg:= '[1085] - Assinatura do Aplicativo Comercial não confere';
        1218: Str_Msg:= '[1218] - CF-e-SAT Já está cancelado';
        1412: Str_Msg:= '[1412] - CFe de cancelamento não corresponde a um CFe emitido nos 30 minutos anteriores ao pedido de cancelamento';
        1999: Str_Msg:= '[1999] - Erro desconhecido';
        6001: Str_Msg:= '[6001] - Código de ativação inválido';
        6002: Str_Msg:= '[6002] - SAT ainda não ativado';
        6003: Str_Msg:= '[6003] - SAT não vinculado ao AC';
        6004: Str_Msg:= '[6004] - Vinculação do AC não confere';
        6005: Str_Msg:= '[6005] - Tamanho do CFe superior a 1500KB';
        6006: Str_Msg:= '[6006] - SAT bloqueado pelo contribuinte';
        6007: Str_Msg:= '[6007] - SAT bloqueado pela SEFAZ';
        6008: Str_Msg:= '[6008] - SAT bloqueado por falta de comunicação';
        6009: Str_Msg:= '[6009] - SAT bloqueado, código de ativação incorreto';
        6010: Str_Msg:= '[6010] - Erro de validação do conteúdo';
        6098: Str_Msg:= '[6098] - SAT em processamento. Tente novamente';
        6099: Str_Msg:= '[6099] - Erro desconhecido';
        7001: Str_Msg:= '[7001] - Código de ativação inválido';
        7002: Str_Msg:= '[7002] - Cupom Inválido';
        7003: Str_Msg:= '[7003] - SAT bloqueado pelo contribuinte';
        7004: Str_Msg:= '[7004] - SAT bloqueado pela SEFAZ';
        7005: Str_Msg:= '[7005] - SAT bloqueado por falta de comunicação';
        7006: Str_Msg:= '[7006] - SAT bloqueado, código de ativação incorreto';
        7007: Str_Msg:= '[7007] - Erro de validação do conteúdo';
        7098: Str_Msg:= '[7098] - SAT em processamento. Tente novamente';
        7099: Str_Msg:= '[7099] - Erro desconhecido';
        8098: Str_Msg:= '[8098] - SAT em processamento. Tente novamente';
        8099: Str_Msg:= '[8099] - Erro desconhecido';
        10001: Str_Msg:= '[10001] - Código de ativação inválido';
        10098: Str_Msg:= '[10098] - SAT em processamento. Tente novamente';
        10099: Str_Msg:= '[10099] - Erro desconhecido';
        13001: Str_Msg:= '[13001] - Código de ativação inválido';
        13002: Str_Msg:= '[13002] - Erro de comunicação com a SEFAZ';
        13003: Str_Msg:= '[13003] - Assinatura fora do padrão informado';
        13098: Str_Msg:= '[13098] - SAT em processamento. Tente novamente';
        13099: Str_Msg:= '[13099] - Erro desconhecido';

        else
          Str_Msg:= '['+ IntToStr(iRetorno)+'] - Número de Erro não identificado... Consulte a Especificação de Requisitos SAT vigente.';
      end;
 end;
 Application.MessageBox(pchar(Str_Msg), 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
end;

procedure TFR_DarumaFramework_SAT.BT_FecharClick(Sender: TObject);
begin
  Close();
end;

procedure TFR_DarumaFramework_SAT.eBuscarPortaVelociadadeDUAL1Click(
  Sender: TObject);
begin
  iRetorno:= eBuscarPortaVelocidade_DUAL_DarumaFramework();
  Tratar_RetornoSAT(iRetorno);
end;

procedure TFR_DarumaFramework_SAT.Usarvaloresdefaultparateste1Click(
  Sender: TObject);
var
  Str_Confirma: string;
begin
   Str_Confirma :=StringOfChar(#0,1);
   Str_Confirma := InputBox('DarumaFramework_SAT','A configuração atende os testes com emulador, caso esteja utilizando o equipamento SAT, NÃO REALIZE essa configuração pois poderá causar problemas em seu SAT. Confirma configuração? (0- Não, 1- Sim)', '0');
   if (Str_Confirma = '1') Then
   begin
      	/// configurações válidas para quem estiver testando com emulador.
  	Str_Parametro:= StringOFChar(#0,500);
	iRetorno:=regAlterarValor_SAT_Daruma('CONFIGURACAO\codigoDeAtivacao','12345678');
  	iRetorno:=regAlterarValor_SAT_Daruma('IDENTIFICACAO_CFE\CNPJ','22222222222222');
  	Str_Parametro:= '11111111111112222222222222211111111111111222222222222221111111111111122222222222222111111111111112222222222222211111111111111';
  	Str_Parametro:= Str_Parametro + '2222222222222211111111111111222222222222221111111111111122222222222222111111111111112222222222222211111111111';
  	Str_Parametro:= Str_Parametro + '11122222222222222111111111111112222222222222211111111111111222222222222221111111111111122222222222222111111111';
  	iRetorno:=regAlterarValor_SAT_Daruma('IDENTIFICACAO_CFE\signAC',pchar(Str_Parametro));
  	iRetorno:=regAlterarValor_SAT_Daruma('IDENTIFICACAO_CFE\numeroCaixa','001');
  	iRetorno:=regAlterarValor_SAT_Daruma('EMIT\CNPJ','11111111111111');
  	iRetorno:=regAlterarValor_SAT_Daruma('EMIT\IE','111111111111');
  	iRetorno:=regAlterarValor_SAT_Daruma('EMIT\indRatISSQN', 'N');
  	iRetorno:=regAlterarValor_SAT_Daruma('EMIT\cRegTribISSQN', '1');
  	iRetorno:=regAlterarValor_SAT_Daruma('PROD\indRegra', 'A');
  	iRetorno:=regAlterarValor_SAT_Daruma('PROD\CFOP','0001');
  	iRetorno:=regAlterarValor_SAT_Daruma('IMPOSTO\ICMS\ICMS00\Orig','0');
  	iRetorno:=tCFeAssociarAssinatura_SAT_Daruma(pchar('<cnpjEmit>11111111111111</cnpjEmit><cnpjIdent>11111111111111</cnpjIdent><signAC>'+Str_Parametro+'</signAC>'));
  	Tratar_RetornoSAT(iRetorno);
   end
   else
   begin
   	Application.MessageBox('Não vai configurar', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
        Exit;
   end;


end;

procedure TFR_DarumaFramework_SAT.FormShow(Sender: TObject);
begin
  //Configurando DarumaFramework.xml para funcionar com o SAT.
  iRetorno:=eDefinirProduto_Daruma('SAT');
end;

procedure TFR_DarumaFramework_SAT.ImpressoMiniImpressora1Click(
  Sender: TObject);
begin
  Str_Parametro:= StringOFChar(#0,700);
  Str_Parametro:= '<ce>Estabelecimento Fantasia 2<l></l>Estabelecimento de Teste 2<l></l>';
  Str_Parametro:= Str_Parametro+ 'rua das flores 1005 frente centro Sao Paulo 00000000</ce><l></l>CNPJ:11111111111111 IE:111111111111 IM:<l></l>------------------------------------------------';
  Str_Parametro:= Str_Parametro+ '<ce><b>Extrato No. 999999<l></l>CUPOM FISCAL ELETRÔNICO-SAT</b></ce><l></l>------------------------------------------------';
  Str_Parametro:= Str_Parametro+ 'CPF/CNPJ do Consumidor: 45170289000125<l></l>------------------------------------------------<sl>04</sl><gui></gui>';
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(Str_Parametro,0);
  Tratar_RetornoSAT(iRetorno);
end;

procedure TFR_DarumaFramework_SAT.EmissoCupomTeste1Click(Sender: TObject);
begin
  FR_EmissaoCupomTeste.Show();
end;

procedure TFR_DarumaFramework_SAT.aCFeAbrirSATDaruma1Click(
  Sender: TObject);
begin
  FR_aCFeAbrir_SAT_Daruma.Show();
end;

procedure TFR_DarumaFramework_SAT.aCFeVenderSATDaruma1Click(
  Sender: TObject);
begin
  FR_aCFeVender_SAT_Daruma.Show();
end;

procedure TFR_DarumaFramework_SAT.aCFeTotalizarSATDaruma1Click(
  Sender: TObject);
begin
  FR_aCFeTotalizar_SAT_Daruma.Show();
end;

procedure TFR_DarumaFramework_SAT.aCFeEfetuarPagamentoSATDaruma1Click(
  Sender: TObject);
begin
  FR_aCFeEfetuarPagamento_SAT_Daruma.Show();
end;

procedure TFR_DarumaFramework_SAT.tCFeEncerrarSATDaruma1Click(
  Sender: TObject);
begin
  FR_tCFeEncerrar_SAT_Daruma.Show();
end;

procedure TFR_DarumaFramework_SAT.tCFeCancelarSATDaruma1Click(
  Sender: TObject);
begin
  iRetorno:= tCFeCancelar_SAT_Daruma();
  Tratar_RetornoSAT(iRetorno);

end;

procedure TFR_DarumaFramework_SAT.FormCreate(Sender: TObject);
var
  StrVersao: String;
begin
  StrVersao:= StringOfChar(#0,10);
  iRetorno:= eDefinirProduto_Daruma('SAT');
  iRetorno:= eVerificarVersaoDLL_Daruma(StrVersao);
  LB_Versao.Caption:= LB_Versao.Caption + StrVersao;


end;

procedure TFR_DarumaFramework_SAT.rVerificarComunicacaoSATDaruma3Click(
  Sender: TObject);
begin
  iRetorno:= rVerificarComunicacao_SAT_Daruma();
  Tratar_RetornoSAT(iRetorno);
end;

procedure TFR_DarumaFramework_SAT.rConsultarStatusSATDaruma1Click(
  Sender: TObject);
begin
  Str_Parametro := StringOFChar(#0,700);
  iRetorno:=rConsultarStatus_SAT_Daruma(Str_Parametro);
  Tratar_RetornoSAT(iRetorno);
  if (iRetorno=1) then
      Application.MessageBox(pchar('Consulta Status retornou: '+ Str_Parametro), 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
end;



procedure TFR_DarumaFramework_SAT.MtodoReimprimirUltimoCFeSATDaruma1Click(Sender: TObject);
begin
  iRetorno:= iReimprimirUltimoCFe_SAT_Daruma();
  Tratar_RetornoSAT(iRetorno);
end;

procedure TFR_DarumaFramework_SAT.aCFAbrirSATDaruma1Click(Sender: TObject);
begin
  FR_MetodoaCFAbrir_SAT_Daruma.Show();
end;

procedure TFR_DarumaFramework_SAT.aCFVenderSATDaruma1Click(
  Sender: TObject);
begin
   FR_MetodoaCFVender_SAT_Daruma.Show();
end;

procedure TFR_DarumaFramework_SAT.aCFTotalizarSATDaruma1Click(
  Sender: TObject);
begin
  FR_MetodoaCFTotalizar_SAT_Daruma.Show();
end;

procedure TFR_DarumaFramework_SAT.aCFEfetuarPagamentoSATDaruma1Click(
  Sender: TObject);
begin
  FR_MetodoaCFEfetuarPagamento_SAT_Daruma.Show();
end;

procedure TFR_DarumaFramework_SAT.tCFEncerrarSATDaruma1Click(
  Sender: TObject);
begin
  FR_MetodotCFEncerrar_SAT_Daruma.Show();
end;

procedure TFR_DarumaFramework_SAT.aCFEstornarPagamentoSATDaruma1Click(
  Sender: TObject);
begin
	FR_MetodoaCFEstornarPagamento_SAT_Daruma.Show();
end;

procedure TFR_DarumaFramework_SAT.regAlterarValorSATDaruma1Click(
  Sender: TObject);
begin
	FR_MetodoregAlterarValor_SAT_Daruma.Show();
end;

procedure TFR_DarumaFramework_SAT.tCFeAssociarAssinaturaSATDAruma1Click(
  Sender: TObject);
begin
	FR_MetodotCFeAssociarAssinatura_SAT_Daruma.Show();
end;

procedure TFR_DarumaFramework_SAT.regRetornarValorSATDaruma1Click(
  Sender: TObject);
begin
	FR_MetodoregRetornarValor_SAT_Daruma.Show();
end;

procedure TFR_DarumaFramework_SAT.MtodoEnvio1Click(Sender: TObject);
begin
	FR_MetodotCFeEnviar_SAT_Daruma.Show();
end;

procedure TFR_DarumaFramework_SAT.aCFeCancelarFormaPagamentoSATDaruma1Click(
  Sender: TObject);
begin
	FR_MetodoaCFeCancelarFormaPagamento_SAT_Daruma.Show();
end;

procedure TFR_DarumaFramework_SAT.aCFeCancelarItemSATDaruma1Click(
  Sender: TObject);
begin
	FR_MetodoaCFeCancelarItem_SAT_Daruma.Show();
end;

procedure TFR_DarumaFramework_SAT.aCFeEstornarPagamentoSATDaruma1Click(
  Sender: TObject);
begin
	FR_MetodoaCFeEstornarPagamento_SAT_Daruma.Show();
end;

procedure TFR_DarumaFramework_SAT.rConsultarStatusEspecificoSATDaruma1Click(
  Sender: TObject);
begin
	FR_MetodorConsultarStatusEspecifico_SAT_Daruma.Show();
end;

procedure TFR_DarumaFramework_SAT.rConsultarArqCopSegurancaSATDaruma1Click(
  Sender: TObject);
begin
  Str_Parametro := StringOFChar(#0,700);
  iRetorno:= rConsultarArqCopSeguranca_SAT_Daruma(Str_Parametro);
  Tratar_RetornoSAT(iRetorno);
  if (iRetorno=1) then
      Application.MessageBox(pchar('Arquivo está no diretório: '+ Str_Parametro), 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);

end;

procedure TFR_DarumaFramework_SAT.tCFeCancelarParametrizado1Click(
  Sender: TObject);
begin
	FR_tCFeCancelarParametrizado_SAT_Daruma.Show();
end;

procedure TFR_DarumaFramework_SAT.rInfoestendidaSATDaruma1Click(
  Sender: TObject);
begin
	FR_MetodorInfoEstendida_SAT_Daruma.Show();
end;

procedure TFR_DarumaFramework_SAT.MtodoiImprimirCfeSATDaruma1Click(Sender: TObject);
begin
	FR_MetodoiImprimirCFe_SAT_Daruma.Show();
end;

end.
