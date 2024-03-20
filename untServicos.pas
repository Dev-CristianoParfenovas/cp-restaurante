unit untServicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, untClasse.ConfigCX, 
  classComboBox, IBQuery, DB, axCtrls, jpeg, Menus,
  untClasse.ImprimirCupom, Printers,
  Buttons, IniFiles, untClasse.Cadastro, ShellApi,
  Vcl.Imaging.GIFImg;

type
  TfrmVendasLoja = class(TForm)
    imgFundoCx: TImage;
    lbl_CodVenda: TLabel;
    listboxCupom: TListBox;
    lbl_Cupom: TLabel;
    lbl_edtSubTotal: TLabel;
    lbl_TipoPreco: TLabel;
    lbl_edtCodCartao: TLabeledEdit;
    lbl_edtCodBarras: TLabeledEdit;
    lbl_edtCodProd: TLabeledEdit;
    lbl_edtQtde: TLabeledEdit;
    lbl_X: TLabel;
    lbl_edtVlrUnit: TLabeledEdit;
    lbl_edtIgual: TLabel;
    lbl_edtVlrTotal: TLabeledEdit;
    ListBoxDadosEmpresa: TListBox;
    lbl_edtInformacao: TLabel;
    lbl_CancelaItem: TLabel;
    lbl_Data: TLabel;
    lbl_Func: TLabel;
    lbl_Dt: TLabel;
    Label2: TLabel;
    lbl_edtIDProdCX: TLabeledEdit;
    lbl_NomeProd: TLabel;
    lbl_TotalVendido: TLabel;
    lbl_Sangria: TLabel;
    lbl_edtFuncComissao: TLabeledEdit;
    lbl_NomeFuncComissao: TLabel;
    lbl_Cliente: TLabel;
    lbl_CodCliente: TLabel;
    lbl_CodPosVenda: TLabel;
    MainMenu1: TMainMenu;
    Venda1: TMenuItem;
    Venda2: TMenuItem;
    Sair1: TMenuItem;
    InstrucoesCaixa1: TMenuItem;
    lbl_edtCnpjCpf: TLabel;
    NotaPaulista1: TMenuItem;
    LimparClienteCnpj1: TMenuItem;
    lbl_CnpjCpfP: TLabel;
    LeituraX1: TMenuItem;
    LeituraZ1: TMenuItem;
    CadastrarFormasdePagto1: TMenuItem;
    lbl_QtdeEstoque: TLabel;
    AtualizaValor1: TMenuItem;
    FecharCaixa1: TMenuItem;
    lbl_IDCli: TLabel;
    CancelarItemCaixa1: TMenuItem;
    VendasTeste1: TMenuItem;
    lbl_CodVendaMPV: TLabel;
    PacoteFardo1: TMenuItem;
    lbl_edtPacoteFardo: TLabel;
    lbl_IDPlacaVeiculo: TLabel;
    CancelarCupomInteiro1: TMenuItem;
    LimparCPF1: TMenuItem;
    Sangria1: TMenuItem;
    Shape4: TShape;
    Shape5: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape1: TShape;
    shapeImgEmpresa: TShape;
    imgLogoCli: TImage;
    Shape6: TShape;
    opDialogImagem: TOpenDialog;
    popMnuImagem: TPopupMenu;
    popmnuProcurar: TMenuItem;
    ImprimirResumoVendas1: TMenuItem;
    dbgVendas: TDBGrid;
    roca1: TMenuItem;
    Shape7: TShape;
    lbl_edtDescontoItem: TLabeledEdit;
    AbrirGaveta1: TMenuItem;
    ImprimiUltimoCupom1: TMenuItem;
    AbreGavetaBematech1: TMenuItem;
    AbreGavetaTeste2: TMenuItem;
    AbrirFuncionarios1: TMenuItem;
    lbl_IDFuncComissao: TLabel;
    lbl_F4: TLabel;
    lbl_F3: TLabel;
    lbl_F6: TLabel;
    lbl_CtrlF6: TLabel;
    lbl_CTRLD: TLabel;
    lbl_F8: TLabel;
    lbl_F9: TLabel;
    lbl_F1: TLabel;
    lbl_CTRLN: TLabel;
    lbl_CTRLS: TLabel;
    Timer1: TTimer;
    lbl_Hr: TLabel;
    lbl_Relogio: TLabel;
    lbl_F7: TLabel;
    lbl_F10: TLabel;
    Label1: TLabel;
    lbl_TrocaMercadoria: TLabel;
    Orcamento1: TMenuItem;
    lbl_Orcamento: TLabel;
    lbl_IdOrc: TLabel;
    ckAtualizaValor: TCheckBox;

    procedure DesabilitaCampos(opcao : Boolean);
    procedure TrimAppMemorySize;
    procedure Tratar_RetornoSAT(iRetorno:integer);
    procedure LimpaVariavel;
    procedure LimpaCampos;
    procedure Commit(IBQueryExec : TIBQuery);
    procedure DarumaFramework_Mostrar_Retorno(iRetorno:integer);
    procedure GravaCx;
    procedure GravaMPV;
    procedure GravaOrcamento;
    procedure GravaCancelamento;
    procedure ExecSELECTTipoVenda;
    procedure ExecSELECTProdutos;
    procedure ExecSELECTCliente;
    procedure FormShow(Sender: TObject);
    procedure cboProdutoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgServsCellClick(Column: TColumn);
    procedure lbl_edtQtdeExit(Sender: TObject);
    procedure lbl_edtQtdeKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbl_edtCodProdExit(Sender: TObject);
    procedure lbl_edtCodProdKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtVlrTotalKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtCodBarrasChange(Sender: TObject);
    procedure lbl_edtCodBarrasKeyPress(Sender: TObject; var Key: Char);
    procedure cboTipoCompromissoChange(Sender: TObject);
    procedure lbl_edtVlrSangriaKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtCodBarrasExit(Sender: TObject);
    procedure lbl_edtDescVendaExit(Sender: TObject);
    procedure lbl_edtDescVendaKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtCodCartaoExit(Sender: TObject);
    procedure lbl_edtFuncComissaoKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtFuncComissaoExit(Sender: TObject);
    procedure Venda2Click(Sender: TObject);
    procedure InstrucoesCaixa1Click(Sender: TObject);
    procedure NotaPaulista1Click(Sender: TObject);
    procedure LimparClienteCnpj1Click(Sender: TObject);
    procedure LeituraX1Click(Sender: TObject);
    procedure LeituraZ1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure CadastrarFormasdePagto1Click(Sender: TObject);
    procedure btnVendeItemClick(Sender: TObject);
    procedure lbl_edtVlrTotalExit(Sender: TObject);
    procedure AtualizaValor1Click(Sender: TObject);
    procedure lbl_edtVlrUnitExit(Sender: TObject);
    procedure ckAtualizaValorCheck(Sender: TObject);
    procedure lbl_edtVlrUnitKeyPress(Sender: TObject; var Key: Char);
    procedure FecharCaixa1Click(Sender: TObject);
    procedure CancelarItemCaixa1Click(Sender: TObject);
    procedure VendasTeste1Click(Sender: TObject);
    procedure PacoteFardo1Click(Sender: TObject);
    procedure CancelarCupomInteiro1Click(Sender: TObject);
    procedure LimparCPF1Click(Sender: TObject);
    procedure Sangria1Click(Sender: TObject);
    procedure imgLogoCliClick(Sender: TObject);
    procedure popmnuProcurarClick(Sender: TObject);
    procedure dbgVendasKeyPress(Sender: TObject; var Key: Char);
    procedure roca1Click(Sender: TObject);
    procedure lbl_edtDescontoItemExit(Sender: TObject);
    procedure lbl_edtDescontoItemKeyPress(Sender: TObject; var Key: Char);
    procedure AbrirGaveta1Click(Sender: TObject);
    procedure ImprimiUltimoCupom1Click(Sender: TObject);
    procedure AbrirFuncionarios1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure lbl_edtCodBarrasEnter(Sender: TObject);
    procedure lbl_edtCodProdEnter(Sender: TObject);
    procedure lbl_edtVlrUnitEnter(Sender: TObject);
    procedure lbl_edtQtdeEnter(Sender: TObject);
    procedure lbl_edtVlrTotalEnter(Sender: TObject);
    procedure Orcamento1Click(Sender: TObject);
    procedure AbreGavetaTeste2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendasLoja: TfrmVendasLoja;
  MontaColunas : Boolean;

  //variaveis para select do cliente
  IDClass : Integer;
  IDCliente : TClasseCombo;

  //variavel para select dos produtos
  IDProduto : TClasseCombo;

  iRetorno : Integer;

  IDAnimalOc : TClasseCombo;
  IDClienteOc         : TClasseCombo;
  StringClienteOc     : String;
  IDTipoProd : TClasseCombo;

  //variaveis para trazer o produto ao clicar no tipo prod do combo
  ClassTipoProd : TClasseCombo;
  StringTipoProd : String;

  //variavel para trazer os dados do produto ao clicar no combo produto.
  IDClassProduto : TClasseCombo;

  ConfirmaMSG : Integer;

  //variaveis para abater do entrada estoque se tiver estoque do mesmo.
  ClassProdEstoque    : TClasseCombo;
  StringProdEstoque   :String;
  ProdutosEstoque : Integer;


  //variaveis para calcular  a saida do estoque nas vendas 
  QtdeEstoque : Real;
  QtdeVenda   : Real;
  EstoqueFinal : String;
  VlrProduto  :Real;
  TotalProdEstoque : String;

  IncluiProd : Boolean;

  ClassVendaProduto   : TClasseCombo;
  StringProd          : String;
  ValorVendaAlteracao : String;
  QtdeVendaPista : String;
  InsereVenda : Boolean;
  IDCli            : TClasseCombo;
  StringCli        : String;
  ValorUnit: String;
  ValorTotal : String;
  ValorA : String;
  ValorB : String;
  ValorC : String;
  ValorD : String;
  ValorMT : String;
  QtdeProd : String;
  TotalSaidaEstoque : String;
  IDProdMovEstoque : Integer;
  ClassGravaAnimal : TClasseCombo;
  StringGravaAnimal : String;
  IDAlteraProduto : Integer;

  ClassTipoProduto : TClasseCombo;
  StringTipoProduto : String;

  //variavel para trazer o tipo de produto e gravar na vendaloja
  ProdutoLoja : Integer;

  //variavel para deletar o produto refente oa id da venda
  IDServVenda : Integer;

  //variaveis para devolver a qtde do produto em estoque caso o cliente cancele a compra.
  ClassCancProdEstoq : TClasseCombo;
  IDProdCancelado : Integer;
  //ref a qtde do estoque
  QtdeProdEstoq : Real;
  QtdeCanc : Real;
  QtdeEstoq : String;
  //ref ao valor total do produto
  VlrProdestoq : Real;
  TotalProdEstoq : String;

  IDVendasServs : Integer;
  TipodoProduto : Integer;
  IDGravaProd : Integer;

  IDVenda : Integer;

  //variaveia ara alterar na venda
  QtdeVendaLoja : String;

  LimpaProdVenda : String;

  ClassProdEstoqueC : TClasseCombo;//variavel para devolver no estoque em caso de cancelamento do pedido

  IDTipoCompr : TClasseCombo;//variavel para select do tipo de compromisso

  //variaveis para gravar na tabela de servicos o tipo de compromisso
  ClassTipoCompr : TClasseCombo;
  StringTipoCompr : String;

  IDVendaLoja : Integer;


  ClassTipoVenda : TClasseCombo;
  Custo : Real;
  QtdeVendida : Real;

  ValorSangria : String;

  PathSistema : String;

  TipoPreco : String;

  CancelarProduto : Boolean;
  ImagemProduto : String;
  LocalEstoque : String;

  ValorDesconto : String;

  IDProdAltera : TClasseCombo;

  IDSelectAnimal : TClasseCombo;

  IDUsuarioLoginNomeProd : String;

  ConfirmaVendaCx : Boolean;

  IDProdVenda,IDServsCancela : Integer;

  ConfigSiSCX : TIniFile;

  //sat
  Str_Parametro: String;

implementation

uses untdmModule,funcPosto, untRecebeLoja, uBuscaProdutos, BuscaClientes,
  untManutCx, untSangria, untInstrucoesCaixa, untNFPaulista, untSenhaCx,
  untPrincipal, untProdutos_MPrima, untPedidosLoja, untTroca, untCadFormasPagto,
  untFuncVenda, untR_Orc, untRelFluxoCx, untSenhaAlteracaoProd, untPedidosNuvem;


////////////////////////////////////////////////////////////////////////////////

  //SAT - Cancela CF
  function tCFeCancelar_SAT_Daruma(): Integer; StdCall; External 'DarumaFrameWork.dll';
  function tCFeCancelarParametrizado_SAT_Daruma(pszCpfCnpj: String; pszChaveAcesso:String): Integer; StdCall; External 'DarumaFrameWork.dll';
  //SAT - Reimpress�o e Impress�o
  function iReimprimirUltimoCFe_SAT_Daruma() : Integer; StdCall; External 'DarumaFrameWork.dll';
  function iImprimirCFe_SAT_Daruma(szPathXmlSAT: String; pszTipo: String): Integer; StdCall; External 'DarumaFrameWork.dll';

////////////////////////////////////////////////////////////////////////////////
  //DUAL - Mini-Impressoras
  //function eBuscarPortaVelocidade_DUAL_DarumaFramework(): Integer; StdCall; External 'DarumaFrameWork.dll';
 // function iImprimirTexto_DUAL_DarumaFramework(pszString: String; iTam: Integer): Integer; StdCall; External 'DarumaFrameWork.dll';

  // SAT - XML
  function regAlterarValor_SAT_Daruma(pszTagSAT:String; pszValorTagSAT:String):Integer; StdCall; External 'DarumaFramework.dll';
  function regRetornarValor_SAT_Daruma(pszTagSAT:String; pszValorTagSAT:String):Integer; StdCall; External 'DarumaFramework.dll';

	 //Gaveta
  function iAcionarGaveta_DUAL_DarumaFramework(): Integer; StdCall; External 'DarumaFrameWork.dll'

////////////////////////////////////////////////////////////////////////////////
{$R *.dfm}

procedure TfrmVendasLoja.TrimAppMemorySize;
var
MainHandle : THandle;
begin
try
MainHandle := OpenProcess(PROCESS_ALL_ACCESS, false, GetCurrentProcessID) ;
SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF) ;
CloseHandle(MainHandle) ;
except
end;
Application.ProcessMessages;
end;

procedure TfrmVendasLoja.Tratar_RetornoSAT(iRetorno:integer);
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

procedure TfrmVendasLoja.DarumaFramework_Mostrar_Retorno(iRetorno:integer);

//var

//Int_NumErro, Int_NumAviso, Int_Retorno : Integer;
//Str_Msg_NumErro, Str_Msg_NumAviso, Str_Msg_RetMetodo, Str_Erro : String;
//Str_Aviso, Str_Msg_Retorno_Metodo : String;
begin
   //Variaveis devem ser inicializadas
{   Int_NumErro:= 0;
	 Int_NumAviso:= 0;
   Str_Msg_NumErro:=StringOFChar(' ',300);
   Str_Msg_NumAviso:=StringOFChar(' ',300);
   Str_Msg_RetMetodo:=StringOFChar(' ',300);

// Retorna a mensagem referente ao erro e aviso do ultimo comando enviado
   Int_Retorno:=eRetornarAvisoErroUltimoCMD_ECF_Daruma(Str_Msg_NumAviso, Str_Msg_NumErro);

// Retorno do m�todo
   Int_Retorno:=eInterpretarRetorno_ECF_Daruma(iRetorno, Str_Msg_RetMetodo);

  Str_Erro:=Str_Msg_NumErro;
  Str_Aviso:=Str_Msg_NumAviso;
  Str_Msg_Retorno_Metodo:=Str_Msg_RetMetodo;

   Application.MessageBox( Pchar('Retorno do M�todo = ' + pchar(Str_Msg_Retorno_Metodo) + #13 +
                                 'N�mero Erro = ' + pchar(Trim(Str_Erro)) +  #13 +
                                 'N�mero Aviso = ' + pchar(Trim(Str_Aviso))), 'DarumaFramework Retorno do M�todo', mb_ok);  }

end;

procedure TfrmVendasLoja.DesabilitaCampos(opcao : Boolean);

begin

//  lbl_edtCodCli.Enabled := opcao;
//  cboCliente.Enabled := opcao;
 //lbl_edtConvenio.Enabled := opcao;
  lbl_edtCodBarras.Enabled := opcao;
  lbl_edtCodProd.Enabled := opcao;
//  cboProduto.Enabled := opcao;
 // lbl_edtEstoque.Enabled := opcao;
  lbl_edtQtde.Enabled := opcao;
  lbl_edtVlrUnit.Enabled := opcao;
  lbl_edtVlrTotal.Enabled := opcao;
//  lbl_edtDescVenda.Enabled := opcao;

end;

procedure TfrmVendasLoja.LimpaVariavel;

begin

LimpaProdVenda := '0';


end;

procedure TfrmVendasLoja.LimpaCampos;

begin

 // lbl_edtCodCli.Clear;
//  cboCliente.ClearSelection;
  //  lbl_edtConvenio.Clear;
//  cboProduto.ClearSelection;
  lbl_edtCodBarras.Clear;
 // lbl_edtEstoque.Clear;
  lbl_edtCodProd.Clear;
  lbl_TipoPreco.Caption := '';
 // lbl_Sangria.Caption := '';
 lbl_CancelaItem.Caption := '';
 
end;

procedure TfrmVendasLoja.Commit(IBQueryExec : TIBQuery);

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

procedure TfrmVendasLoja.GravaOrcamento;

var
ValorUnit, ValorTotal, ValorB, ValorC, ValorD, QtdeProd, LocalEstoqueOrc : String;
IDFuncComissao, IDFuncCX, intIDProd, intIDCfop : Integer;
intIDOrc, intIDVendaOrc : Integer;
Custo, QtdeVendida : Real;
TotalCusto, PosVenda, NomedaVenda, NomeCliente, NomeProduto : String;
Str_Aliquota, CodBarras, strNcm, strNomeFunc : String;
begin

  with dmModule do begin

    intIDProd  := StrToInt(lbl_edtIDProdCX.Text);
    intIDOrc := StrToInt(lbl_IdOrc.Caption);
    intIDVendaOrc := 0;

    if intIDProd > 0 Then begin

      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT CADPRODUTOS.*,'
      + 'LOCALESTOCAGEM.NOME As Estoque FROM CADPRODUTOS '
      + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE '
      + 'WHERE IDPROD=''' + IntToStr(intIDProd) + '''');
      ibProdutos.Open;

      LocalEstoqueOrc := ibProdutos.FieldByName('Estoque').AsString;
      NomeProduto  := ibProdutos.FieldByName('NOME').AsString;
      Str_Aliquota := ibProdutos.FieldByName('ALIQUOTA').AsString;
      CodBarras    := ibProdutos.FieldByName('CODBARRAS').AsString;
      intIDCfop    := ibProdutos.FieldByName('IDCFOP').AsInteger;
      strNcm       := ibProdutos.FieldByName('NCM').AsString;

      Custo := StrtoFloat(StringReplace(FloattoStr(ibProdutos.FieldByName('VALORCUSTO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
      QtdeVendida := StrToFloat(StringReplace(lbl_edtQtde.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
      Custo := QtdeVendida * Custo;

      TotalCusto := StringReplace(FloattoStr(Custo),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
      TotalCusto := StringReplace(TotalCusto,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);


    end;  

    ValorUnit := StringReplace(lbl_edtVlrUnit.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
    ValorUnit := StringReplace(ValorUnit,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);
    if ValorUnit  = '' Then
       ValorUnit := '0';

    if (lbl_TipoPreco.Caption = '') Then begin

    ValorTotal := StringReplace(lbl_edtVlrTotal.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
    ValorTotal := StringReplace(ValorTotal,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

    end else begin

       ValorTotal := '0';

    end;

    if lbl_TipoPreco.Caption = 'Pre�o de Venda B' Then begin

    ValorB := StringReplace(lbl_edtVlrTotal.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
    ValorB := StringReplace(ValorB,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

    end else begin

       ValorB := '0';

    end;

   if lbl_TipoPreco.Caption = 'Pre�o de Venda C' Then begin

    ValorC := StringReplace(lbl_edtVlrTotal.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
    ValorC := StringReplace(ValorC,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

   end else begin

       ValorC := '0';

   end;

   if lbl_TipoPreco.Caption = 'Pre�o de Venda D' Then begin

    ValorD := StringReplace(lbl_edtVlrTotal.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
    ValorD := StringReplace(ValorD,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

   end else begin

       ValorD := '0';

   end;

    QtdeProd := StringReplace(lbl_edtQtde.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
    QtdeProd := StringReplace(QtdeProd,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);
    if QtdeProd  = '' Then
       QtdeProd := '0';


    if lbl_NomeFuncComissao.Caption <> '' Then begin

      IDFuncComissao := StrToInt(lbl_IDFuncComissao.Caption);

    end;

    if lbl_IDCli.Caption <> '' Then begin

    IDFuncCX := StrToInt(lbl_IDCli.Caption);

    end;

    if lbl_Cliente.Caption <> '' Then begin

    NomeCliente := lbl_Cliente.Caption;

    end;

    PosVenda := 'Pago';
    NomedaVenda   := '';
    strNomeFunc := lbl_NomeFuncComissao.Caption;

    ibServsVenda.Close;
    ibServsVenda.SQL.Clear;
    ibServsVenda.SQL.Add('INSERT INTO TBLSERVICOSVENDAS '
    + ' (IDPROD,VLRUNIT,VLRTOTAL,VALORB,VALORC,VALORD,ESTOQUE,IDVENDAORC, IDORCAMENTO,'
    + 'TOTALCUSTO,NOMEPROD,QTDE,IDFUNC,NOMEFUNC,IDFUNCCOMISSAO,POSVENDA,DATA,'
    + 'NOMECLI,NOMEVENDA,CODBARRAS,ALIQUOTA,IDCFOP,NCM,HORA) values '
    + ' (''' + lbl_edtIDProdCX.Text  + ''','
    + ' ''' + ValorUnit + ''','
    + ' ''' + ValorTotal + ''','
    + ' ''' + ValorB + ''','
    + ' ''' + ValorC + ''','
    + ' ''' + ValorD + ''','
    + ' ''' + LocalEstoqueOrc + ''','
    + ' ''' + IntToStr(intIDVendaOrc) + ''','
    + ' ''' + IntToStr(intIDOrc) + ''','
    + ' ''' + TotalCusto + ''','
    + ' ''' + NomeProduto + ''','
    + ' ''' + QtdeProd + ''','
    + ' ''' + IntToStr(IDFuncCX) + ''','
    + ' ''' + strNomeFunc + ''','
    + ' ''' + IntToStr(IDFuncComissao) + ''','
    + ' ''' + PosVenda + ''','
    + ' ''' + FormatDateTime('mm-dd-yyyy',now) + ''','
    + ' ''' + NomeCliente + ''','
    + ' ''' + NomedaVenda + ''','
    + ' ''' + CodBarras + ''','
    + ' ''' + Str_Aliquota + ''','
    + ' ''' + IntToStr(intIDCfop) + ''','
    + ' ''' + strNcm + ''','
    + ' ''' + FormatDateTime('hh:mm:ss',now) + ''')');
    ibServsVenda.ExecSQL;

    Commit(ibServsVenda);

    lbl_edtCodBarras.Clear;
    lbl_edtCodProd.Clear;

  end;//with

end;

procedure TfrmVendasLoja.GravaCx;

var

TipoVenda,TotalCusto,TipoSaida,NomeProduto,TotalQProdVendido,TotalPA : String;
ValorCustoE,QtdeProdutoV,QtdeVendida,QtdeLabel,ValorVendido,ValorTotalPA : Real;

TotalPB,TotalPC,QtdeMinimaEstoque,QtdeTotalEstoqueVenda,CodVendaCx,InfoEstoqueMinimo : String;
ValorTotalPB,ValorTotalPC,TotalPALabel,TotalPBLabel,TotalPCLabel,QtdeEstoqueVenda : Real;
IDVendaCaixa,IDFuncCX,IDFuncComissao : Integer;

MinimoTabela : Real;
MetroRestante : String;
PosVenda,NomeCliente,ValorDesconto : String;
IDPosVenda,IDVendedorPosVenda : Integer;
IDVendaCliente : Integer;

//VARIAVEIS VENDE ITEM

Str_Codigo: String;

Str_Descricao: String;

Str_Aliquota: String;

Str_Tipo_de_Quantidade: String;

Str_Quantidade: String;

Int_Casas_Decimais: Integer;

Str_Valor_Unitario: String;

Str_Tipo_de_Desconto,Str_UnidadeMedida: String;

Str_Valor_do_Desconto: String;

ImpressaoTermica   : String;
DarumaMFD,AnalisedeRetorno      : String;
Daruma_ACK,Daruma_ST1,Daruma_ST2:Integer;
St1,St2 : Integer;
ImprimirPosVenda, ControlarPrateleira, NegativarEstoque : String;
IDPlaca : Integer;
PosVendaPPago,NomedaVenda, strNcm : String;
IDDinheiro : Integer;
CodBarras,Aliquota,ProdTrib : String;
VlrTotalVendaEstoque,VlrTotalCustoEstoque : Real;
CalculoVendaEstoque,CalculoCustoEstoque : Real;
intIDCfop : Integer;
intIdOrc, intIdVendaOrc : Integer;
begin
 // ibeaVendeItemClick(Sender);
  with dmModule do begin


  //ROTINA PARA ABATER DO ESTOQUE CONFORME VENDE.


      {    if lbl_Func.Caption <> '' Then begin

            ibUser.Close;
            ibUser.SQL.Clear;
            ibUser.SQL.Add('SELECT NOME,LOGIN,IDUSER,SENHA FROM TBLUSER WHERE LOGIN=''' + lbl_Func.Caption+ '''');
            ibUser.Open;

            IDFuncCX := ibUser.FieldByName('IDUSER').AsInteger;

          end;//if labelfunc }

       Commit(ibConfig);
       ibConfig.Close;
       ibConfig.SQL.Clear;
       ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
       ibConfig.Open;

       InfoEstoqueMinimo := ibConfig.FieldByName('ESTOQUEMINIMO').AsString;

       ControlarPrateleira := ibConfig.FieldByName('CONTROLARPRATELEIRA').AsString;
       NegativarEstoque    := ibConfig.FieldByName('NEGATIVARESTOQUE').AsString;

      if ControlarPrateleira = 'Sim' Then begin

        Commit(ibEntrProdEstoque);
        ibEntrProdEstoque.Close;
        ibEntrProdEstoque.SQL.Clear;
        ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,'
        + 'TBLENTRADAESTOQUEPROD.QTDEPRATELEIRA,TBLENTRADAESTOQUEPROD.MINIMOPRATELEIRA,'
        + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,TBLENTRADAESTOQUEPROD.ESTOQUEMIN,'
        + 'CADPRODUTOS.NOME,CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORCUSTO,CADPRODUTOS.TIPOPROD FROM TBLENTRADAESTOQUEPROD '
        + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
        + 'WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + lbl_edtIDProdCX.Text + '''');
        ibEntrProdEstoque.Open;

       //ESTRUTURA PARA AVISO DO ESTOQUE M�NIMO

        if ibEntrProdEstoque.RecordCount > 0 Then begin

          QtdeEstoqueVenda := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QTDEPRATELEIRA').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          QtdeTotalEstoqueVenda := StringReplace(FloattoStr(QtdeEstoqueVenda),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          QtdeTotalEstoqueVenda := StringReplace(QtdeTotalEstoqueVenda,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

         //  TotaldoEstoque := StrToInt(FormatFloat(CasasDecimais('Produtos'),QtdeTotalEstoqueVenda));

          MinimoTabela := StrToFloat(StringReplace(FloatToStr(ibEntrProdEstoque.FieldByName('MINIMOPRATELEIRA').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          QtdeMinimaEstoque := StringReplace(FloatToStr(MinimoTabela),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          QtdeMinimaEstoque := StringReplace(QtdeMinimaEstoque,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

       //  TotaldoMinimo := StrToInt(QtdeMinimaEstoque);

          if InfoEstoqueMinimo = 'Sim' Then begin

            if (MinimoTabela = QtdeEstoqueVenda)or(MinimoTabela > QtdeEstoqueVenda) Then begin

              Application.MessageBox(PChar('Aten��o a Prateleira de:"'+ ibEntrProdEstoque.FieldByName('NOME').AsString +'", est� em sua Quantidade M�nima!!!'),'Notifica��o: Prateleira na qtde m�nima.',+MB_OK+MB_ICONWARNING);

            end;//if

          end;//if

        end;{if recordcount}

      //ROTINA ABAIXO PARA SOMAR TOTAL DO ESTQUE E QUANTIDADE DO ESTOQUE
        if lbl_edtIDProdCX.Text <> '' Then begin

       //traz na variavel a qtde conf. prod da select identificado por id.
          QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QTDEPRATELEIRA').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
       // QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),DecimalSeparator,',',[rfReplaceAll]));

          QtdeVenda   := StrToFloat(StringReplace(lbl_edtQtde.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          QtdeEstoque := QtdeEstoque - QtdeVenda;

          EstoqueFinal := StringReplace(FloattoStr(QtdeEstoque),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          EstoqueFinal := StringReplace(EstoqueFinal,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

       //AQUI VAI O CALCULO DO TOTAL CONFORME VENDE O PRODUTO
          VlrProduto  := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORVENDAA').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          VlrProduto  := QtdeEstoque * VlrProduto;

          TotalProdEstoque := StringReplace(FloattoStr(VlrProduto),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          TotalProdEstoque := StringReplace(TotalProdEstoque,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

          ValorCustoE := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORCUSTO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          ValorCustoE := QtdeEstoque * ValorCustoE;

          TotalCusto := StringReplace(FloattoStr(ValorCustoE),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          TotalCusto := StringReplace(TotalCusto,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

          ibEntrProdEstoque.Close;
          ibEntrProdEstoque.SQL.Clear;
          ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
        //  +'TOTALCUSTO=''' + TotalCusto + ''','
          +'QTDEPRATELEIRA=''' + (EstoqueFinal) + '''WHERE IDPROD=''' + lbl_edtIDProdCX.Text + '''');
       //  +'VLRTOTAL=''' + (TotalProdEstoque) +  ''' WHERE IDPROD=''' + lbl_edtIDProdCX.Text + '''');
          ibEntrProdEstoque.ExecSQL;
          Commit(ibEntrProdEstoque);

        end;//if label IDPRODCX

      end;//if controlarprateleira = sim

      if ControlarPrateleira = 'Nao' Then begin

        Commit(ibEntrProdEstoque);
        ibEntrProdEstoque.Close;
        ibEntrProdEstoque.SQL.Clear;
        ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,'
        + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.TOTALCUSTO,TBLENTRADAESTOQUEPROD.IDPROD,TBLENTRADAESTOQUEPROD.ESTOQUEMIN,'
        + 'CADPRODUTOS.NOME,CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORCUSTO,CADPRODUTOS.TIPOPROD FROM TBLENTRADAESTOQUEPROD '
        + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
        + 'WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + lbl_edtIDProdCX.Text + '''');
        ibEntrProdEstoque.Open;

       //ESTRUTURA PARA AVISO DO ESTOQUE M�NIMO

        if ibEntrProdEstoque.RecordCount > 0 Then begin

          QtdeEstoqueVenda := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          QtdeTotalEstoqueVenda := StringReplace(FloattoStr(QtdeEstoqueVenda),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          QtdeTotalEstoqueVenda := StringReplace(QtdeTotalEstoqueVenda,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

         //  TotaldoEstoque := StrToInt(FormatFloat(CasasDecimais('Produtos'),QtdeTotalEstoqueVenda));

          MinimoTabela := StrToFloat(StringReplace(FloatToStr(ibEntrProdEstoque.FieldByName('ESTOQUEMIN').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          QtdeMinimaEstoque := StringReplace(FloatToStr(MinimoTabela),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          QtdeMinimaEstoque := StringReplace(QtdeMinimaEstoque,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

       //  TotaldoMinimo := StrToInt(QtdeMinimaEstoque);

          if InfoEstoqueMinimo = 'Sim' Then begin

            if (MinimoTabela = QtdeEstoqueVenda)or(MinimoTabela > QtdeEstoqueVenda) Then begin

              Application.MessageBox(PChar('Aten��o o Estoque de:"'+ ibEntrProdEstoque.FieldByName('NOME').AsString +'", est� em sua Quantidade M�nima!!!'),'Notifica��o: Estoque na qtde m�nima.',+MB_OK+MB_ICONWARNING);

            end;//if

          end;//if

        end;{if recordcount}

      //ROTINA ABAIXO PARA SOMAR TOTAL DO ESTQUE E QUANTIDADE DO ESTOQUE
        if lbl_edtIDProdCX.Text <> '' Then begin

        if NegativarEstoque = 'Sim' Then begin

        //traz na variavel a qtde conf. prod da select identificado por id.
            QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
            QtdeVenda   := StrToFloat(StringReplace(lbl_edtQtde.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

            QtdeEstoque := QtdeEstoque - QtdeVenda;

            EstoqueFinal := StringReplace(FloattoStr(QtdeEstoque),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
            EstoqueFinal := StringReplace(EstoqueFinal,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

         //AQUI VAI O CALCULO DO TOTAL CONFORME VENDE O PRODUTO
            VlrProduto  := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORVENDAA').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
            VlrProduto  := VlrProduto * StrToFloat(StringReplace(lbl_edtQtde.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
            VlrTotalVendaEstoque := StrToFloat(StringReplace(FloatToStr(ibEntrProdEstoque.FieldByName('VLRTOTAL').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

            if(VlrTotalVendaEstoque > VlrProduto)Then begin

              CalculoVendaEstoque := VlrTotalVendaEstoque - VlrProduto;

            end;

            if(VlrProduto > VlrTotalVendaEstoque  )Then begin

              CalculoVendaEstoque := VlrProduto - VlrTotalVendaEstoque;

            end;

            TotalProdEstoque := StringReplace(FloattoStr(CalculoVendaEstoque),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
            TotalProdEstoque := StringReplace(TotalProdEstoque,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);


            //ACERTA O CUSTO DE ESTOQUE CONFORME VENDE O PRODUTO
            ValorCustoE := StrToFloat(StringReplace(FloatToStr(ibEntrProdEstoque.FieldByName('VALORCUSTO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
            ValorCustoE := ValorCustoE * StrToFloat(StringReplace(lbl_edtQtde.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
            VlrTotalCustoEstoque := StrToFloat(StringReplace(FloatToStr(ibEntrProdEstoque.FieldByName('TOTALCUSTO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

            if(VlrTotalCustoEstoque > ValorCustoE) Then begin

              CalculoCustoEstoque := VlrTotalCustoEstoque - ValorCustoE;

            end;

            if(ValorCustoE > VlrTotalCustoEstoque) Then begin

              CalculoCustoEstoque := ValorCustoE - VlrTotalCustoEstoque;

            end;


            TotalCusto := StringReplace(FloattoStr(CalculoCustoEstoque),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
            TotalCusto := StringReplace(TotalCusto,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

            ibEntrProdEstoque.Close;
            ibEntrProdEstoque.SQL.Clear;
            ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
            +'TOTALCUSTO=''' + TotalCusto + ''','
            +'QUANTIDADE=''' + (EstoqueFinal) + ''','
            +'VLRTOTAL=''' + (TotalProdEstoque) +  ''' WHERE IDPROD=''' + lbl_edtIDProdCX.Text + '''');
            ibEntrProdEstoque.ExecSQL;
            Commit(ibEntrProdEstoque);

          end;//if negativar estoque sim

        if NegativarEstoque = 'Nao' Then begin

         //traz na variavel a qtde conf. prod da select identificado por id.
            QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
         // QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),DecimalSeparator,',',[rfReplaceAll]));

            QtdeVenda   := StrToFloat(StringReplace(lbl_edtQtde.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

            QtdeEstoque := QtdeEstoque - QtdeVenda;

            EstoqueFinal := StringReplace(FloattoStr(QtdeEstoque),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
            EstoqueFinal := StringReplace(EstoqueFinal,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

            if EstoqueFinal < '0' Then begin

              EstoqueFinal := '0'

            end;
         //AQUI VAI O CALCULO DO TOTAL CONFORME VENDE O PRODUTO
            VlrProduto  := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORVENDAA').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
            VlrProduto  := VlrProduto * StrToFloat(StringReplace(lbl_edtQtde.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
            VlrTotalVendaEstoque := StrToFloat(StringReplace(FloatToStr(ibEntrProdEstoque.FieldByName('VLRTOTAL').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

            if(VlrTotalVendaEstoque > VlrProduto)Then begin

              CalculoVendaEstoque := VlrTotalVendaEstoque - VlrProduto;

            end;

            if(VlrProduto > VlrTotalVendaEstoque  )Then begin

              CalculoVendaEstoque := VlrProduto - VlrTotalVendaEstoque;

            end;

            TotalProdEstoque := StringReplace(FloattoStr(CalculoVendaEstoque),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
            TotalProdEstoque := StringReplace(TotalProdEstoque,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);


            //ACERTA O CUSTO DE ESTOQUE CONFORME VENDE O PRODUTO
            ValorCustoE := StrToFloat(StringReplace(FloatToStr(ibEntrProdEstoque.FieldByName('VALORCUSTO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
            ValorCustoE := ValorCustoE * StrToFloat(StringReplace(lbl_edtQtde.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
            VlrTotalCustoEstoque := StrToFloat(StringReplace(FloatToStr(ibEntrProdEstoque.FieldByName('TOTALCUSTO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

            if(VlrTotalCustoEstoque > ValorCustoE) Then begin

              CalculoCustoEstoque := VlrTotalCustoEstoque - ValorCustoE;

            end;

            if(ValorCustoE > VlrTotalCustoEstoque) Then begin

              CalculoCustoEstoque := ValorCustoE - VlrTotalCustoEstoque;

            end;


            TotalCusto := StringReplace(FloattoStr(CalculoCustoEstoque),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
            TotalCusto := StringReplace(TotalCusto,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

            ibEntrProdEstoque.Close;
            ibEntrProdEstoque.SQL.Clear;
            ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
            +'TOTALCUSTO=''' + TotalCusto + ''','
            +'QUANTIDADE=''' + (EstoqueFinal) + ''','
            +'VLRTOTAL=''' + (TotalProdEstoque) +  ''' WHERE IDPROD=''' + lbl_edtIDProdCX.Text + '''');
            ibEntrProdEstoque.ExecSQL;
            Commit(ibEntrProdEstoque);

          end;//if negativar estoque sim

        end;//if label IDPRODCX

      end;//ifcontrolarprateleira = nao


   //ROTINA PARA CALCULO DO CUSTO VENDIDO
  //  If cboProduto.ItemIndex = -1 Then begin

         if lbl_NomeProd.Caption = '' Then begin

            StringProd := ' '' 0 '',';
            TotalCusto := '0';

          end else begin

          //  ClassVendaProduto   := TClasseCombo( cboProduto.Items.Objects[cboProduto.ItemIndex] );
            StringProd          := lbl_edtIDProdCX.Text;

           /// Commit(ibProdutos);
            ibProdutos.Close;
            ibProdutos.SQL.Clear;
            ibProdutos.SQL.Add('SELECT CADPRODUTOS.*,'
            + 'LOCALESTOCAGEM.NOME As Estoque FROM CADPRODUTOS '
            + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE '
            + 'WHERE IDPROD=''' + StringProd + '''');
            ibProdutos.Open;

            LocalEstoque := ibProdutos.FieldByName('Estoque').AsString;
            NomeProduto  := ibProdutos.FieldByName('NOME').AsString;
            Str_Aliquota := ibProdutos.FieldByName('ALIQUOTA').AsString;
            CodBarras    := ibProdutos.FieldByName('CODBARRAS').AsString;
            intIDCfop    := ibProdutos.FieldByName('IDCFOP').AsInteger;
            strNcm       := ibProdutos.FieldByName('NCM').AsString;

            Custo := StrtoFloat(StringReplace(FloattoStr(ibProdutos.FieldByName('VALORCUSTO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
            QtdeVendida := StrToFloat(StringReplace(lbl_edtQtde.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
            Custo := QtdeVendida * Custo;

            TotalCusto := StringReplace(FloattoStr(Custo),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
            TotalCusto := StringReplace(TotalCusto,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

            ProdTrib  := ibProdutos.FieldByName('PRODUTOTRIBUTADO').AsString;

            ibProdutos.Close;

          end;


          ValorUnit := StringReplace(lbl_edtVlrUnit.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          ValorUnit := StringReplace(ValorUnit,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);
          if ValorUnit  = '' Then
             ValorUnit := '0';

          if (lbl_TipoPreco.Caption = '') Then begin

          ValorTotal := StringReplace(lbl_edtVlrTotal.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          ValorTotal := StringReplace(ValorTotal,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

          end else begin

             ValorTotal := '0';

          end;

          if lbl_TipoPreco.Caption = 'Pre�o de Venda B' Then begin

          ValorB := StringReplace(lbl_edtVlrTotal.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          ValorB := StringReplace(ValorB,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

          end else begin

             ValorB := '0';

          end;

         if lbl_TipoPreco.Caption = 'Pre�o de Venda C' Then begin

          ValorC := StringReplace(lbl_edtVlrTotal.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          ValorC := StringReplace(ValorC,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

         end else begin

             ValorC := '0';

         end;

         if lbl_TipoPreco.Caption = 'Pre�o de Venda D' Then begin

          ValorD := StringReplace(lbl_edtVlrTotal.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          ValorD := StringReplace(ValorD,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

         end else begin

             ValorD := '0';

         end;

          QtdeProd := StringReplace(lbl_edtQtde.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          QtdeProd := StringReplace(QtdeProd,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);
          if QtdeProd  = '' Then
             QtdeProd := '0';


          if lbl_NomeFuncComissao.Caption <> '' Then begin

            IDFuncComissao := StrToInt(lbl_IDFuncComissao.Caption);

          end;

          PosVenda := 'Pago';

          if lbl_CodPosVenda.Caption <> '' Then begin

            IDPosVenda := StrToInt(lbl_CodPosVenda.Caption);

            if lbl_Cliente.Caption <> '' Then begin

            NomeCliente := lbl_Cliente.Caption;

            end;

            Commit(ibDetalhePosVenda);
            ibDetalhePosVenda.Close;
            ibDetalhePosVenda.SQL.Clear;
            ibDetalhePosVenda.SQL.Add('SELECT * FROM TBLDETALHEPOSVENDA WHERE IDDETALHEPOSVENDA=''' + IntToStr(IDPosVenda) + '''');
            ibDetalhePosVenda.Open;

            IDVendedorPosVenda := ibDetalhePosVenda.FieldByName('IDVENDEDOR').AsInteger;

            if lbl_IDCli.Caption <> '' Then begin

            IDFuncCX := StrToInt(lbl_IDCli.Caption);

            end;

          if(lbl_NomeFuncComissao.Caption <> '')and(lbl_IDFuncComissao.Caption <> '') Then begin

            IDFuncComissao := StrToInt(lbl_IDFuncComissao.Caption);

          end;

            if lbl_IDCli.Caption = '' Then begin

            IDFuncCX := 0;

            end;

            if lbl_IDPlacaVeiculo.Caption > '0' Then begin

              IDPlaca := StrToInt(lbl_IDPlacaVeiculo.Caption);

            end else begin

              IDPlaca := 0;

            end;

            PosVendaPPago := 'Pago';
            IDDinheiro    := 1;
            NomedaVenda   := '';
            intIdVendaOrc := 1;
            
          ValorDesconto := StringReplace(lbl_edtDescontoItem.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          ValorDesconto := StringReplace(ValorDesconto,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);
          if ValorDesconto  = '' Then
             ValorDesconto := '0';

              ibServsVenda.Close;
              ibServsVenda.SQL.Clear;
              ibServsVenda.SQL.Add('INSERT INTO TBLSERVICOSVENDAS '
              + ' (IDPROD,IDVENDAORC,VLRUNIT,VLRTOTAL,VALORB,VALORC,VALORD,ESTOQUE,'
              + 'TOTALCUSTO,NOMEPROD,QTDE,IDFUNC,IDFUNCCOMISSAO,POSVENDA,DATA,'
              + 'IDPOSVENDA,NOMECLI,IDVENDEDOR,PENDENTEPAGO,IDTIPOPAGTO,'
              + 'NOMEVENDA,CODBARRAS,ALIQUOTA,DESCONTO,PRODTRIB,IDCFOP,NCM,HORA) values '
              + ' (''' + lbl_edtIDProdCX.Text  + ''','
              + ' ''' + IntToStr(intIdVendaOrc) + ''','
              + ' ''' + ValorUnit + ''','
              + ' ''' + ValorTotal + ''','
              + ' ''' + ValorB + ''','
              + ' ''' + ValorC + ''','
              + ' ''' + ValorD + ''','
              + ' ''' + LocalEstoque + ''','
            //  + ' ''' + IntToStr(IDVendasServs) + ''',' IDSERVSVENDA,
              + ' ''' + TotalCusto + ''','
              + ' ''' + NomeProduto + ''','
              + ' ''' + QtdeProd + ''','
              + ' ''' + IntToStr(IDFuncCX) + ''','
              + ' ''' + IntToStr(IDFuncComissao) + ''','
              + ' ''' + PosVenda + ''','
              + ' ''' + FormatDateTime('mm-dd-yyyy',now) + ''','
              + ' ''' + IntToStr(IDPosVenda) + ''','
              + ' ''' + NomeCliente + ''','
              + ' ''' + IntToStr(IDVendedorPosVenda) + ''','
              + ' ''' + PosVendaPPago + ''','
              + ' ''' + IntToStr(IDDinheiro) + ''','
              + ' ''' + NomedaVenda + ''','
              + ' ''' + CodBarras + ''','
              + ' ''' + Str_Aliquota + ''','
              + ' ''' + ValorDesconto + ''','
              + ' ''' + ProdTrib + ''','
              + ' ''' + IntToStr(intIDCfop) + ''','
              + ' ''' + strNcm + ''','
              + ' ''' + FormatDateTime('hh:mm:ss',now) + ''')');
              ibServsVenda.ExecSQL;

              Commit(ibServsVenda);


            //VENDE ITEM

          ///  Commit(ibConfig);
            ibConfig.Close;
            ibConfig.SQL.Clear;
            ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
            ibConfig.Open;

            ImpressaoTermica   := ibConfig.FieldByName('IMPRESSORATERMICA').AsString;
           //arumaMFD          := ibConfig.FieldByName('DARUMAMFD').AsString;
            AnalisedeRetorno   := ibConfig.FieldByName('ANALISARETORNO').AsString;
            ImprimirPosVenda   := ibConfig.FieldByName('IMPRESSAOPOSVENDA').AsString;

            if ImprimirPosVenda = 'Nao' Then begin

           { if (DarumaMFD = 'Sim')and(ImpressaoTermica = 'Sim') Then begin


              Str_Codigo := Trim(lbl_edtCodBarras.Text);


              Str_Descricao := Trim(lbl_NomeProd.Caption);

              Str_Tipo_de_Quantidade := 'I';

              Str_Quantidade := Trim(lbl_edtQtde.Text);

              Int_Casas_Decimais := 3;

              Str_Valor_Unitario := Trim(lbl_edtVlrUnit.Text);

              Str_Tipo_de_Desconto := 'D$';

              Str_Valor_do_Desconto := '0,00';
              Str_UnidadeMedida := 'UN';

              Int_Retorno := iCFVender_ECF_Daruma(Str_Aliquota, Str_Quantidade, Str_Valor_Unitario, Str_Tipo_de_Desconto, Str_Valor_do_Desconto, Str_Codigo, Str_UnidadeMedida, Str_Descricao );

            end; }

            end;//if impressao pos venda = nao

          end else begin

            if InsereVenda Then begin

               ibServsVendasCli.Close;
               ibServsVendasCli.SQL.Clear;
               ibServsVendasCli.SQL.Add('UPDATE TBLSERVICOSVENDASCLI SET '
               + 'IDPROD = ''' + StringProd + ''','
               + 'CNPJ_CPF = ''' + lbl_edtCnpjCpf.Caption + ''','
               + 'NOME_DOC = ''' + lbl_Cliente.Caption + ''','
               + 'IDFUNC = ''' + IntToStr(IDFuncCX) + ''' WHERE IDSERVSVENDA=''' + lbl_CodVenda.Caption + '''');
               ibServsVendasCli.ExecSQL;
            ///   Commit(ibServsVendasCli);

               CodVendaCx := (lbl_CodVenda.Caption);

               IDVendaCaixa := StrToInt(CodVendaCx);

               //select para trazer o ultimo id
               Commit(ibServsVendasCli);
               ibServsVendasCli.Close;
               ibServsVendasCli.SQL.Clear;
               ibServsVendasCli.SQL.Add('SELECT * FROM TBLSERVICOSVENDASCLI WHERE IDSERVSVENDA=''' + IntToStr(IDVendaCaixa) + '''');
               ibServsVendasCli.Open;

                   if lbl_CodVenda.Caption = '1' Then begin

                    IDVendasServs := 1;

                  end else begin

                    IDVendasServs := ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger;

                  end;

                    InsereVenda := False;

            end;//if inserevenda

            if lbl_CodCliente.Caption <> '' Then begin

            IDVendaCliente := StrToInt(lbl_CodCliente.Caption);

            end else begin

            IDVendaCliente := 0;

            end;

            if lbl_IDCli.Caption <> '' Then begin

            IDFuncCX := StrToInt(lbl_IDCli.Caption);

            end;

            if lbl_IDCli.Caption = '' Then begin

            IDFuncCX := 0;

            end;

            if lbl_IDPlacaVeiculo.Caption > '0' Then begin

              IDPlaca := StrToInt(lbl_IDPlacaVeiculo.Caption);

            end else begin

              IDPlaca := 0;

            end;

            PosVendaPPago := 'Pago';
            IDDinheiro    := 1;
            NomedaVenda   := '';
            intIdVendaOrc := 1;
            
          ValorDesconto := StringReplace(lbl_edtDescontoItem.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          ValorDesconto := StringReplace(ValorDesconto,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);
          if ValorDesconto  = '' Then
             ValorDesconto := '0';

            ibServsVenda.Close;
            ibServsVenda.SQL.Clear;
            ibServsVenda.SQL.Add('INSERT INTO TBLSERVICOSVENDAS '
            + ' (IDPROD,IDVENDAORC,VLRUNIT,VLRTOTAL,VALORB,VALORC,VALORD,ESTOQUE,IDSERVSVENDA,'
            + 'TOTALCUSTO,NOMEPROD,QTDE,IDFUNC,POSVENDA,IDCLIENTE,'
            + 'PENDENTEPAGO,IDTIPOPAGTO,NOMEVENDA,CODBARRAS,ALIQUOTA,'
            + 'PRODTRIB,DESCONTO,IDCFOP,NCM,DATA,HORA) values '
            + ' (''' + lbl_edtIDProdCX.Text  + ''','
            + ' ''' + IntToStr(intIdVendaOrc) + ''','
            + ' ''' + ValorUnit + ''','
            + ' ''' + ValorTotal + ''','
            + ' ''' + ValorB + ''','
            + ' ''' + ValorC + ''','
            + ' ''' + ValorD + ''','
            + ' ''' + LocalEstoque + ''','
            + ' ''' + IntToStr(IDVendasServs) + ''','
            + ' ''' + TotalCusto + ''','
            + ' ''' + NomeProduto + ''','
            + ' ''' + QtdeProd + ''','
            + ' ''' + IntToStr(IDFuncCX) + ''','
            + ' ''' + PosVenda + ''','
            + ' ''' + IntToStr(IDVendaCliente) + ''','
            + ' ''' + PosVendaPPago + ''','
            + ' ''' + IntToStr(IDDinheiro) + ''','
            + ' ''' + NomedaVenda + ''','
            + ' ''' + CodBarras + ''','
            + ' ''' + Str_Aliquota + ''','
            + ' ''' + ProdTrib + ''','
            + ' ''' + ValorDesconto + ''','
            + ' ''' + IntToStr(intIDCfop) + ''','
            + ' ''' + strNcm + ''','
            + ' ''' + FormatDateTime('mm-dd-yyyy',now) + ''','
            + ' ''' + FormatDateTime('hh:mm:ss',now) + ''')');
            ibServsVenda.ExecSQL;

            Commit(ibServsVenda);

            //VENDE ITEM

          {  Commit(ibConfig);
            ibConfig.Close;
            ibConfig.SQL.Clear;
            ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
            ibConfig.Open;

            ImpressaoTermica   := ibConfig.FieldByName('IMPRESSORATERMICA').AsString;
            DarumaMFD          := ibConfig.FieldByName('DARUMAMFD').AsString;
            AnalisedeRetorno   := ibConfig.FieldByName('ANALISARETORNO').AsString;
            ImprimirPosVenda   := ibConfig.FieldByName('IMPRESSAOPOSVENDA').AsString;

            if ImprimirPosVenda = 'Nao' Then begin

            if (DarumaMFD = 'Sim')and(ImpressaoTermica = 'Sim') Then begin

              Str_Codigo := Trim(lbl_edtCodBarras.Text);

              Str_Descricao := Trim(lbl_NomeProd.Caption);

              Str_Tipo_de_Quantidade := 'I';

              Str_Quantidade := Trim(lbl_edtQtde.Text);

              Int_Casas_Decimais := 2;

              Str_Valor_Unitario := Trim(lbl_edtVlrUnit.Text);

              Str_Tipo_de_Desconto := '$';

              Str_Valor_do_Desconto := '0,00';

              Int_Retorno := Daruma_FI_VendeItem(pchar( Str_Codigo ), pchar( Str_Descricao ), pchar( Str_Aliquota ), pchar( Str_Tipo_de_Quantidade ), pchar( Str_Quantidade ), Int_Casas_Decimais, pchar( Str_Valor_Unitario ), pchar( Str_Tipo_de_Desconto ), pchar( Str_Valor_do_Desconto ) );

              if AnalisedeRetorno = 'Sim' Then begin

                Daruma_Analisa_Retorno();

              end;

            end;//if

            end;//if imprimir pos venda = nao     }

          end;//lblcodposvenda



////////////////////////////////////////////////////////////////////////////////


       { TotalSaidaEstoque := StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]);
        TotalSaidaEstoque := StringReplace(TotalSaidaEstoque,DecimalSeparator,'.',[rfReplaceAll]);
        if TotalSaidaEstoque  = '' Then
         TotalSaidaEstoque := '0';

        ibMovEst.Close;
        ibMovEst.SQL.Clear;
        ibMovEst.SQL.Add('INSERT INTO TBLMOVESTOQUE '
        + '(IDPROD,DATA,HORA,IDVENDA,SAIDA) values '
        + ' (''' + IntToStr(IDProdMovEstoque) + ''','
        + ' ''' + FormatDateTime('mm-dd-yyyy',now) + ''','
        + ' ''' + FormatDateTime('hh:mm:ss',now) + ''','
        + ' ''' + IntToStr(IDVendasServs) + ''','
        + ' ''' + TotalSaidaEstoque + ''')');
        ibMovEst.ExecSQL;
        Commit(ibMovEst); }

   //     IDGravaProd   := ibServsVenda.FieldByName('IDPROD').AsInteger;

        lbl_edtCodBarras.Clear;
        lbl_edtCodProd.Clear;
        lbl_edtDescontoItem.Text := '0,00';
        lbl_IdOrc.Caption := '';
//    end;//if label cancela item
  ibConfig.Close;
  ibDetalhePosVenda.Close;
 /// ibServsVenda.Close;
 /// ibServsVendasCli.Close;
 /// ibEntrProdEstoque.Close;
  
  end;{with}
end;

procedure TfrmVendasLoja.GravaMPV;

var

TipoVenda,TotalCusto,TipoSaida,NomeProduto,TotalQProdVendido,TotalPA : String;
ValorCustoE,QtdeProdutoV,QtdeVendida,QtdeLabel,ValorVendido,ValorTotalPA : Real;

TotalPB,TotalPC,QtdeMinimaEstoque,QtdeTotalEstoqueVenda,CodVendaCx,InfoEstoqueMinimo : String;
ValorTotalPB,ValorTotalPC,TotalPALabel,TotalPBLabel,TotalPCLabel,QtdeEstoqueVenda : Real;
IDVendaCaixa,IDFuncCX,IDFuncComissao : Integer;

MinimoTabela : Real;
MetroRestante : String;
PosVenda,NomeCliente : String;
IDPosVenda,IDVendedorPosVenda : Integer;
IDVendaCliente, IDVendaMPV : Integer;

InsereVendaMPV : Boolean;
ControlarPrateleira : String;

begin

  with dmModule do begin

       Commit(ibConfig);
       ibConfig.Close;
       ibConfig.SQL.Clear;
       ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
       ibConfig.Open;

       InfoEstoqueMinimo := ibConfig.FieldByName('ESTOQUEMINIMO').AsString;

       ControlarPrateleira := ibConfig.FieldByName('CONTROLARPRATELEIRA').AsString;

      if ControlarPrateleira = 'Sim' Then begin

        Commit(ibEntrProdEstoque);
        ibEntrProdEstoque.Close;
        ibEntrProdEstoque.SQL.Clear;
        ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,'
        + 'TBLENTRADAESTOQUEPROD.QTDEPRATELEIRA,TBLENTRADAESTOQUEPROD.MINIMOPRATELEIRA,'
        + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,TBLENTRADAESTOQUEPROD.ESTOQUEMIN,'
        + 'CADPRODUTOS.NOME,CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORCUSTO,CADPRODUTOS.TIPOPROD FROM TBLENTRADAESTOQUEPROD '
        + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
        + 'WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + lbl_edtIDProdCX.Text + '''');
        ibEntrProdEstoque.Open;

       //ESTRUTURA PARA AVISO DO ESTOQUE M�NIMO

        if ibEntrProdEstoque.RecordCount > 0 Then begin

          QtdeEstoqueVenda := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QTDEPRATELEIRA').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          QtdeTotalEstoqueVenda := StringReplace(FloattoStr(QtdeEstoqueVenda),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          QtdeTotalEstoqueVenda := StringReplace(QtdeTotalEstoqueVenda,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

         //  TotaldoEstoque := StrToInt(FormatFloat(CasasDecimais('Produtos'),QtdeTotalEstoqueVenda));

          MinimoTabela := StrToFloat(StringReplace(FloatToStr(ibEntrProdEstoque.FieldByName('MINIMOPRATELEIRA').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          QtdeMinimaEstoque := StringReplace(FloatToStr(MinimoTabela),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          QtdeMinimaEstoque := StringReplace(QtdeMinimaEstoque,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

       //  TotaldoMinimo := StrToInt(QtdeMinimaEstoque);

          if InfoEstoqueMinimo = 'Sim' Then begin

            if (MinimoTabela = QtdeEstoqueVenda)or(MinimoTabela > QtdeEstoqueVenda) Then begin

              Application.MessageBox(PChar('Aten��o a Prateleira de:"'+ ibEntrProdEstoque.FieldByName('NOME').AsString +'", est� em sua Quantidade M�nima!!!'),'Notifica��o: Prateleira na qtde m�nima.',+MB_OK+MB_ICONWARNING);

            end;//if

          end;//if

        end;{if recordcount}

      //ROTINA ABAIXO PARA SOMAR TOTAL DO ESTQUE E QUANTIDADE DO ESTOQUE
        if lbl_edtIDProdCX.Text <> '' Then begin

       //traz na variavel a qtde conf. prod da select identificado por id.
          QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QTDEPRATELEIRA').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
       // QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),DecimalSeparator,',',[rfReplaceAll]));

          QtdeVenda   := StrToFloat(StringReplace(lbl_edtQtde.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          QtdeEstoque := QtdeEstoque - QtdeVenda;

          EstoqueFinal := StringReplace(FloattoStr(QtdeEstoque),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          EstoqueFinal := StringReplace(EstoqueFinal,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

       //AQUI VAI O CALCULO DO TOTAL CONFORME VENDE O PRODUTO
          VlrProduto  := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORVENDAA').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          VlrProduto  := QtdeEstoque * VlrProduto;

          TotalProdEstoque := StringReplace(FloattoStr(VlrProduto),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          TotalProdEstoque := StringReplace(TotalProdEstoque,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

          ValorCustoE := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORCUSTO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          ValorCustoE := QtdeEstoque * ValorCustoE;

          TotalCusto := StringReplace(FloattoStr(ValorCustoE),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          TotalCusto := StringReplace(TotalCusto,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

          ibEntrProdEstoque.Close;
          ibEntrProdEstoque.SQL.Clear;
          ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
        //  +'TOTALCUSTO=''' + TotalCusto + ''','
          +'QTDEPRATELEIRA=''' + (EstoqueFinal) + '''WHERE IDPROD=''' + lbl_edtIDProdCX.Text + '''');
       //  +'VLRTOTAL=''' + (TotalProdEstoque) +  ''' WHERE IDPROD=''' + lbl_edtIDProdCX.Text + '''');
          ibEntrProdEstoque.ExecSQL;
          Commit(ibEntrProdEstoque);

        end;//if label IDPRODCX

      end;//if controlarprateleira = sim

      if ControlarPrateleira = 'Nao' Then begin

        Commit(ibEntrProdEstoque);
        ibEntrProdEstoque.Close;
        ibEntrProdEstoque.SQL.Clear;
        ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,'
        + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,TBLENTRADAESTOQUEPROD.ESTOQUEMIN,'
        + 'CADPRODUTOS.NOME,CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORCUSTO,CADPRODUTOS.TIPOPROD FROM TBLENTRADAESTOQUEPROD '
        + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
        + 'WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + lbl_edtIDProdCX.Text + '''');
        ibEntrProdEstoque.Open;

       //ESTRUTURA PARA AVISO DO ESTOQUE M�NIMO

        if ibEntrProdEstoque.RecordCount > 0 Then begin

          QtdeEstoqueVenda := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          QtdeTotalEstoqueVenda := StringReplace(FloattoStr(QtdeEstoqueVenda),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          QtdeTotalEstoqueVenda := StringReplace(QtdeTotalEstoqueVenda,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

         //  TotaldoEstoque := StrToInt(FormatFloat(CasasDecimais('Produtos'),QtdeTotalEstoqueVenda));

          MinimoTabela := StrToFloat(StringReplace(FloatToStr(ibEntrProdEstoque.FieldByName('ESTOQUEMIN').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          QtdeMinimaEstoque := StringReplace(FloatToStr(MinimoTabela),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          QtdeMinimaEstoque := StringReplace(QtdeMinimaEstoque,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

       //  TotaldoMinimo := StrToInt(QtdeMinimaEstoque);

          if InfoEstoqueMinimo = 'Sim' Then begin

            if (MinimoTabela = QtdeEstoqueVenda)or(MinimoTabela > QtdeEstoqueVenda) Then begin

              Application.MessageBox(PChar('Aten��o o Estoque de:"'+ ibEntrProdEstoque.FieldByName('NOME').AsString +'", est� em sua Quantidade M�nima!!!'),'Notifica��o: Estoque na qtde m�nima.',+MB_OK+MB_ICONWARNING);

            end;//if

          end;//if

        end;{if recordcount}

      //ROTINA ABAIXO PARA SOMAR TOTAL DO ESTQUE E QUANTIDADE DO ESTOQUE
        if lbl_edtIDProdCX.Text <> '' Then begin

       //traz na variavel a qtde conf. prod da select identificado por id.
          QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
       // QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),DecimalSeparator,',',[rfReplaceAll]));

          QtdeVenda   := StrToFloat(StringReplace(lbl_edtQtde.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          QtdeEstoque := QtdeEstoque - QtdeVenda;

          EstoqueFinal := StringReplace(FloattoStr(QtdeEstoque),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          EstoqueFinal := StringReplace(EstoqueFinal,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

       //AQUI VAI O CALCULO DO TOTAL CONFORME VENDE O PRODUTO
          VlrProduto  := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORVENDAA').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          VlrProduto  := QtdeEstoque * VlrProduto;

          TotalProdEstoque := StringReplace(FloattoStr(VlrProduto),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          TotalProdEstoque := StringReplace(TotalProdEstoque,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

          ValorCustoE := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORCUSTO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          ValorCustoE := QtdeEstoque * ValorCustoE;

          TotalCusto := StringReplace(FloattoStr(ValorCustoE),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          TotalCusto := StringReplace(TotalCusto,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

          ibEntrProdEstoque.Close;
          ibEntrProdEstoque.SQL.Clear;
          ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
          +'TOTALCUSTO=''' + TotalCusto + ''','
          +'QUANTIDADE=''' + (EstoqueFinal) + ''','
          +'VLRTOTAL=''' + (TotalProdEstoque) +  ''' WHERE IDPROD=''' + lbl_edtIDProdCX.Text + '''');
          ibEntrProdEstoque.ExecSQL;
          Commit(ibEntrProdEstoque);

        end;//if label IDPRODCX

      end;//ifcontrolarprateleira = nao


   //ROTINA PARA CALCULO DO CUSTO VENDIDO
  //  If cboProduto.ItemIndex = -1 Then begin

         if lbl_NomeProd.Caption = '' Then begin

            StringProd := ' '' 0 '',';
            TotalCusto := '0';

          end else begin

          //  ClassVendaProduto   := TClasseCombo( cboProduto.Items.Objects[cboProduto.ItemIndex] );
            StringProd          := lbl_edtIDProdCX.Text;

            ibProdutos.Close;
            ibProdutos.SQL.Clear;
            ibProdutos.SQL.Add('SELECT CADPRODUTOS.*,'
            + 'LOCALESTOCAGEM.NOME As Estoque FROM CADPRODUTOS '
            + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE '
            + 'WHERE IDPROD=''' + StringProd + '''');
            ibProdutos.Open;

            LocalEstoque := ibProdutos.FieldByName('Estoque').AsString;
            NomeProduto  := ibProdutos.FieldByName('NOME').AsString;
           // Str_Aliquota := ibProdutos.FieldByName('ALIQUOTA').AsString;

            Custo := StrtoFloat(StringReplace(FloattoStr(ibProdutos.FieldByName('VALORCUSTO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
            QtdeVendida := StrToFloat(StringReplace(lbl_edtQtde.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
            Custo := QtdeVendida * Custo;

            TotalCusto := StringReplace(FloattoStr(Custo),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
            TotalCusto := StringReplace(TotalCusto,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);


          end;


          ValorUnit := StringReplace(lbl_edtVlrUnit.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          ValorUnit := StringReplace(ValorUnit,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);
          if ValorUnit  = '' Then
             ValorUnit := '0';

          if (lbl_TipoPreco.Caption = '') Then begin

          ValorTotal := StringReplace(lbl_edtVlrTotal.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          ValorTotal := StringReplace(ValorTotal,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

          end else begin

             ValorTotal := '0';

          end;

          if lbl_TipoPreco.Caption = 'Pre�o de Venda B' Then begin

          ValorB := StringReplace(lbl_edtVlrTotal.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          ValorB := StringReplace(ValorB,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

          end else begin

             ValorB := '0';

          end;

         if lbl_TipoPreco.Caption = 'Pre�o de Venda C' Then begin

          ValorC := StringReplace(lbl_edtVlrTotal.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          ValorC := StringReplace(ValorC,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

         end else begin

             ValorC := '0';

         end;

         if lbl_TipoPreco.Caption = 'Pre�o de Venda D' Then begin

          ValorD := StringReplace(lbl_edtVlrTotal.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          ValorD := StringReplace(ValorD,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

         end else begin

             ValorD := '0';

         end;

          QtdeProd := StringReplace(lbl_edtQtde.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          QtdeProd := StringReplace(QtdeProd,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);
          if QtdeProd  = '' Then
             QtdeProd := '0';


          if lbl_NomeFuncComissao.Caption <> '' Then begin

            IDFuncComissao := StrToInt(lbl_edtFuncComissao.Text);

          end;


            {  ibMPV.Close;
               ibMPV.SQL.Clear;
               ibMPV.SQL.Add('UPDATE TBLSERVICOSVENDASCLI SET '
               + 'IDPROD = ''' + StringProd + ''','
               + 'IDFUNC = ''' + IntToStr(IDFuncCX) + ''' WHERE IDSERVSVENDA=''' + lbl_CodVenda.Caption + '''');
               ibMPV.ExecSQL;
               Commit(ibMPV);

               CodVendaCx := (lbl_CodVenda.Caption);

               IDVendaCaixa := StrToInt(CodVendaCx);

               //select para trazer o ultimo id
               ibDetalheMPV.Close;
               ibDetalheMPV.SQL.Clear;
               ibDetalheMPV.SQL.Add('SELECT * FROM TBLSERVICOSVENDASCLI WHERE IDSERVSVENDA=''' + IntToStr(IDVendaCaixa) + '''');
               ibDetalheMPV.Open;

                   if lbl_CodVenda.Caption = '1' Then begin

                    IDVendasServs := 1;

                  end else begin

                    IDVendasServs := ibDetalheMPV.FieldByName('IDSERVSVENDA').AsInteger;

                  end;

                    InsereVenda := False;  }


            if lbl_CodCliente.Caption <> '' Then begin

            IDVendaCliente := StrToInt(lbl_CodCliente.Caption);

            end else begin

            IDVendaCliente := 0;

            end;

            if lbl_IDCli.Caption <> '' Then begin

            IDFuncCX := StrToInt(lbl_IDCli.Caption);

            end;

            if lbl_IDCli.Caption = '' Then begin

            IDFuncCX := 0;

            end;

            if lbl_CodVendaMPV.Caption > '0' Then begin

              IDVendaMPV := StrToInt(lbl_CodVendaMPV.Caption);

            end;  

            ibMPV.Close;
            ibMPV.SQL.Clear;
            ibMPV.SQL.Add('INSERT INTO TBLMPV '
            + ' (IDPROD,VLRUNITARIO,VLRTOTAL,ESTOQUE,IDDETALHE,'
            + 'TOTALCUSTO,NOMEPROD,QTDE,IDFUNC,IDCLI,NOMEFUNC,'
            + 'DATA,HORA) values '
            + ' (''' + StringProd  + ''','
            + ' ''' + ValorUnit + ''','
            + ' ''' + ValorTotal + ''','
            + ' ''' + LocalEstoque + ''','
            + ' ''' + IntToStr(IDVendaMPV) + ''','
            + ' ''' + TotalCusto + ''','
            + ' ''' + NomeProduto + ''','
            + ' ''' + QtdeProd + ''','
            + ' ''' + IntToStr(IDFuncCX) + ''','
            + ' ''' + IntToStr(IDVendaCliente) + ''','
            + ' ''' + lbl_Func.Caption + ''','
            + ' ''' + FormatDateTime('mm-dd-yyyy',now) + ''','
            + ' ''' + FormatDateTime('hh:mm:ss',now) + ''')');
            ibMPV.ExecSQL;

        ///    Commit(ibMPV);


        TotalSaidaEstoque := StringReplace(lbl_edtQtde.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
        TotalSaidaEstoque := StringReplace(TotalSaidaEstoque,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);
        if TotalSaidaEstoque  = '' Then
         TotalSaidaEstoque := '0';

        lbl_edtCodBarras.Clear;
        lbl_edtCodProd.Clear;


  end;//with

end;

procedure TfrmVendasLoja.GravaCancelamento;

var

QtdeEstoque, QtdeVenda, QtdeEstoqueVenda : Real;
EstoqueFinal, QtdeTotalEstoqueVenda, ImpressaoTermica,AnalisedeRetorno : String;

begin

  with dmModule do begin


    if lbl_CodVenda.Caption > '0' Then begin

    if lbl_CodPosVenda.Caption <> '' Then begin

    ibServsVenda.Close;
    ibServsVenda.SQL.Clear;
    ibServsVenda.SQL.Add('DELETE FROM TBLSERVICOSVENDAS WHERE IDPOSVENDA=''' + lbl_CodPosVenda.Caption + ''' and TBLSERVICOSVENDAS.IDPROD=''' + lbl_edtIDProdCX.Text + '''');
    ibServsVenda.Open;


    end else begin

    ibServsVenda.Close;
    ibServsVenda.SQL.Clear;
    ibServsVenda.SQL.Add('DELETE FROM TBLSERVICOSVENDAS WHERE IDSERVSVENDA=''' + lbl_CodVenda.Caption + ''' and TBLSERVICOSVENDAS.IDPROD=''' + lbl_edtIDProdCX.Text + '''');
    ibServsVenda.Open;

    end;

    ibMovEst.Close;                                //
    ibMovEst.SQL.Clear;
    ibMovEst.SQL.Add('DELETE FROM TBLMOVESTOQUE WHERE IDVENDA=''' + lbl_CodVenda.Caption + ''' and IDPROD=''' + lbl_edtIDProdCX.Text + '''');
    ibMovEst.Open;

    ibAReceber.Close;                                     //
    ibAReceber.SQL.Clear;
    ibAReceber.SQL.Add('DELETE FROM TBLCONTASARECEBER WHERE IDSERVSVENDA =''' + lbl_CodVenda.Caption + ''' and IDPROD=''' + lbl_edtIDProdCX.Text + '''');
    ibAReceber.Open;

    end; //cod venda

    if lbl_CodVendaMPV.Caption > '0' Then begin


    ibMPV.Close;
    ibMPV.SQL.Clear;
    ibMPV.SQL.Add('DELETE FROM TBLMPV WHERE IDDETALHE=''' + lbl_CodVendaMPV.Caption + ''' and TBLMPV.IDPROD=''' + lbl_edtIDProdCX.Text + '''');
    ibMPV.Open;

    end; //cod mpv


//    if lbl_edtCodProd.Text <> '' Then begin

    ibEntrProdEstoque.Close;
    ibEntrProdEstoque.SQL.Clear;
    ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,'
    + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,TBLENTRADAESTOQUEPROD.ESTOQUEMIN,'
    + 'CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORCUSTO,CADPRODUTOS.TIPOPROD FROM TBLENTRADAESTOQUEPROD '
    + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
    + 'WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + lbl_edtIDProdCX.Text + '''');
    ibEntrProdEstoque.Open;

    //ROTINA ABAIXO PARA SOMAR TOTAL DO ESTQUE E QUANTIDADE DO ESTOQUE

    //traz na variavel a qtde conf. prod da select identificado por id.
    QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
   // QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),DecimalSeparator,',',[rfReplaceAll]));

    QtdeVenda   := StrToFloat(StringReplace(lbl_edtQtde.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

    QtdeEstoque := QtdeEstoque + QtdeVenda;

    EstoqueFinal := StringReplace(FloattoStr(QtdeEstoque),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
    EstoqueFinal := StringReplace(EstoqueFinal,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

    //AQUI VAI O CALCULO DO TOTAL CONFORME VENDE O PRODUTO
  {  VlrProduto  := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORVENDAA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

    VlrProduto  := QtdeEstoque * VlrProduto;

    TotalProdEstoque := StringReplace(FloattoStr(VlrProduto),ThousandSeparator,'',[rfReplaceAll]);
    TotalProdEstoque := StringReplace(TotalProdEstoque,DecimalSeparator,'.',[rfReplaceAll]);


    ValorCustoE := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORCUSTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

    ValorCustoE := QtdeEstoque * ValorCustoE;

    TotalCusto := StringReplace(FloattoStr(ValorCustoE),ThousandSeparator,'',[rfReplaceAll]);
    TotalCusto := StringReplace(TotalCusto,DecimalSeparator,'.',[rfReplaceAll]); }

     //ROTINA PARA O ESTOQUE MINIMO
     if ibEntrProdEstoque.RecordCount > 0 Then begin

       QtdeEstoqueVenda := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

       QtdeTotalEstoqueVenda := StringReplace(FloattoStr(QtdeEstoqueVenda),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
       QtdeTotalEstoqueVenda := StringReplace(QtdeTotalEstoqueVenda,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

    //   TotaldoEstoque := StrToInt(QtdeTotalEstoqueVenda);

       ibEntrProdEstoque.Close;
       ibEntrProdEstoque.SQL.Clear;
       ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
       +'QUANTIDADE=''' + (EstoqueFinal) + ''' WHERE IDPROD=''' + lbl_edtIDProdCX.Text + '''');
     //  +'TOTALCUSTO=''' + TotalCusto + ''','
     //  +'VLRTOTAL=''' + (TotalProdEstoque) +  ''' 
       ibEntrProdEstoque.ExecSQL;
       Commit(ibEntrProdEstoque);

     end;//if recordcount

//    end;{if lblcodprod}

////////////////////////////////////////////////////////////////////////////////

   {      ibConfig.Close;
         ibConfig.SQL.Clear;
         ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
         ibConfig.Open;

         ImpressaoTermica   := ibConfig.FieldByName('IMPRESSORATERMICA').AsString;


    if ImpressaoTermica = 'Sim' Then begin

      Int_Retorno := Daruma_FI_CancelaItemAnterior();

        Commit(ibConfig);
        ibConfig.Close;
        ibConfig.SQL.Clear;
        ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
        ibConfig.Open;

        AnalisedeRetorno := ibConfig.FieldByName('ANALISARETORNO').AsString;

        if AnalisedeRetorno = 'Sim'Then begin

        Daruma_Analisa_Retorno();

        end;

    end;//if impressora termica = sim }

    lbl_edtCodBarras.Text := '';
    lbl_edtCodProd.Text := '';

  end;//with

end;

procedure TfrmVendasLoja.ExecSELECTTipoVenda;

begin

 { with dmModule do begin

    ibTipoVenda.Close;
    ibTipoVenda.SQL.Clear;
    ibTipoVenda.SQL.Add('SELECT * FROM TBLTIPOVENDA');
    ibTipoVenda.Open;

    cboTipoVenda.Clear;

    while not ibTipoVenda.Eof do begin

      ClassTipoVenda := TClasseCombo.Create;
      ClassTipoVenda.ID := ibTipoVenda.FieldByName('IDTIPOVENDA').AsInteger;
      cboTipoVenda.Items.AddObject(ibTipoVenda.FieldByName('TIPOVENDA').AsString,ClassTipoVenda);
      ibTipoVenda.Next; }
      
 //   end;{while}

//  end;{with}

end;


procedure TfrmVendasLoja.ExecSELECTProdutos;

begin

{  with dmModule do begin

    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS ORDER BY NOME');
  // + 'INNER JOIN TBLTIPOPRODUTO ON CADPRODUTOS.TIPOPROD=TBLTIPOPRODUTO.IDTIPOPROD WHERE TBLTIPOPRODUTO.NOME=''LOJA''');
    ibProdutos.Open;

    cboProduto.Clear;

    while not ibProdutos.Eof do begin

      IDProduto    := TClasseCombo.Create;
      IDProduto.ID := ibProdutos.FieldByName('IDPROD').AsInteger;
      cboProduto.Items.AddObject(ibProdutos.FieldByName('NOME').AsString,IDProduto);
      ibProdutos.Next;  }

  //  end;{while}

 // end;{with}

end;

procedure TfrmVendasLoja.ExecSELECTCliente;

begin

{  with dmModule do begin

    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
    ibClassificacao.Open;
    IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICA��O DO CLIENTE NA VARIAVEL.

    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + IntToStr(IDClass) + '''');
    ibCadastro.Open;

    cboCliente.Clear;

    while not ibCadastro.Eof do begin

      IDCliente := TClasseCombo.Create;
      IDCliente.ID := ibCadastro.FieldByName('IDCAD').AsInteger;
      cboCliente.Items.AddObject(ibCadastro.FieldByName('NOME').AsString,IDCliente);
      ibCadastro.Next; }

 //   end;{while}

 // end;{whit}

end;

procedure TfrmVendasLoja.FormShow(Sender: TObject);

var

//OleGraphic: TOleGraphic;
//fs: TFileStream;
DadosEmpresa : Array[0..10] of String;
EpsonMFD : String;
iRetorno : Integer;
begin

 // Top := 0;
 // Left := 0;
 // Width := Screen.Width;
 // Height := Screen.Height;
  
  ListBoxDadosEmpresa.Clear;

  ConfirmaVendaCx := True;
  ckAtualizaValor.Checked := False;

  //lbl_edtCodBarras.SetFocus;

//  imgProduto.Picture := Nil; //LIMPA A IMAGEM
  lbl_edtInformacao.Caption := 'Caixa Livre';

  listboxCupom.Items.Clear;
  lbl_Data.Caption := FormatDateTime('dd/mm/yyyy',Now);

  lbl_edtVlrTotal.Text   := '0,00';
  lbl_edtSubTotal.Caption := '0,00';
  lbl_edtVlrUnit.Text := '0,00';
  lbl_TipoPreco.Caption := '';
  lbl_CodVenda.Caption := '';
  lbl_NomeFuncComissao.Caption := '';
  lbl_Cliente.Caption := '';
  lbl_CodCliente.Caption := '';
  lbl_TrocaMercadoria.Caption := '';
  
  if frmSenhaCx.Showing Then begin

    lbl_Func.Caption   := frmSenhaCX.cboUsuario.Text;
    lbl_IDCli.Caption  := frmSenhaCx.lbl_edtIDFunc.Text;

  end else begin

    lbl_Func.Caption   := frmPrincipal.lbl_Usuario.Caption;
    lbl_IDCli.Caption  := frmPrincipal.lbl_CodUsuario.Text;


  end;

  with dmModule do begin

  {  Commit(ibConfig);
    ibConfig.Close;
    ibConfig.SQL.Clear;
    ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
    ibConfig.Open;

//    EpsonMFD           := ibConfig.FieldByName('EPSONMFD').AsString;

    if EpsonMFD = 'Sim' Then begin

      iRetorno := EPSON_Serial_Abrir_Porta(115200, 1);
      ///iRetorno := EPSON_Serial_Abrir_Porta(38400, 1);
     /// iRetorno := EPSON_RelatorioFiscal_Abrir_Dia();

    end;//if }

  { with ConfigSiSCX do begin

      ConfigSiSCX := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'CP Frente de Caixa\Data\RunTime\siscx.ini'); //Cria o vinculo com o Arquivo ini

      with dmModule do begin

        dmModule.IBDCX.DatabaseName := ReadString('ConfigSiSCX','Banco','') + '\LOJACX.fdb'; //Faz a leitura de uma String na se��o do arquivo ini
        dmModule.IBDCX.Connected := True; //Manda Conectar o Banco de Dados

      end;//with

    end;//with configsis }

    ibServsVenda.Close;

          //SELECT PARA TRAZER O ULTIMO ID NA ABERTURA DO FORM

       { ibServsVendasCli.Close;
        ibServsVendasCli.SQL.Clear;
        ibServsVendasCli.SQL.Add('SELECT IDSERVSVENDA FROM TBLSERVICOSVENDAS ORDER BY IDSERVSVENDA DESC');
        ibServsVendasCli.Open;

        //atribui o id de vendas pista no label.
        if (ibServsVendasCli.RecordCount = 0) Then begin

          lbl_CodVenda.Caption := '1';

        end else begin

          lbl_CodVenda.Caption := IntToStr(ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger + 1);

          IDServVenda := (ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger + 1);  }


      //  end;{if}
////////////////////////////////////////////////////////////////////////////////


          listboxCupom.Clear;

         lbl_edtSubTotal.Caption := '0,00';
         lbl_edtVlrUnit.Text  := '0,00';
         lbl_edtVlrTotal.Text := '0,00';

         if lbl_TipoPreco.Caption = '' Then begin

          TipoPreco := 'A';

          end;

          frmVendasLoja.lbl_edtCodBarras.Enabled := False;
          frmVendasLoja.lbl_edtCodProd.Enabled := False;


       {   ibServsVendasCli.Close;
          ibServsVendasCli.SQL.Clear;
          ibServsVendasCli.SQL.Add('SELECT IDSERVSVENDA FROM TBLSERVICOSVENDASCLI ORDER BY IDSERVSVENDA DESC');
          ibServsVendasCli.Open;

        if (ibServsVendasCli.RecordCount = 0) Then begin

          lbl_CodVenda.Caption := '1';

        end else begin

          lbl_CodVenda.Caption := IntToStr(ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger + 1);

          IDServVenda := (ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger + 1);   }

      ////  end;{if}

          InsereVenda := True;

       //   lbl_CodVenda.Caption := IntToStr(ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger + 1);

      //    IDServVenda := (ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger + 1);

        //  lbl_edtQtde.Text := '1';


////////////////////////////////////////////////////////////////////////////////

      //rotina para cabe�alho do cupom

      ibDadosEmpresa.Close;
      ibDadosEmpresa.SQL.Clear;
      ibDadosEmpresa.SQL.Add('SELECT * FROM TBLDADOSEMPRESA');
      ibDadosEmpresa.Open;

      DadosEmpresa[0]:=ibDadosEmpresa.FieldByName('NOME').AsString;
      DadosEmpresa[1]:=ibDadosEmpresa.FieldByName('ENDERECO').AsString;
      DadosEmpresa[2]:=ibDadosEmpresa.FieldByName('NUMERO').AsString;
      DadosEmpresa[3]:=ibDadosEmpresa.FieldByName('BAIRRO').AsString;
      DadosEmpresa[4]:=ibDadosEmpresa.FieldByName('ESTADO').AsString;
      DadosEmpresa[5]:=ibDadosEmpresa.FieldByName('DDD').AsString;
      DadosEmpresa[6]:=ibDadosEmpresa.FieldByName('TELEFONE').AsString;
      DadosEmpresa[7]:=ibDadosEmpresa.FieldByName('CNPJCPF').AsString;
      DadosEmpresa[8]:=ibDadosEmpresa.FieldByName('IE').AsString;
      DadosEmpresa[9]:=ibDadosEmpresa.FieldByName('INFORMACOES').AsString;
      DadosEmpresa[10]:=ibDadosEmpresa.FieldByName('SITE').AsString;

      with ListBoxDadosEmpresa do begin


      ListBoxDadosEmpresa.Items.Add(DadosEmpresa[0]);
      ListBoxDadosEmpresa.Items.Add(DadosEmpresa[1]+','+DadosEmpresa[2]);
      if ibDadosEmpresa.FieldByName('BAIRRO').AsString <> '' Then begin
      ListBoxDadosEmpresa.Items.Add(DadosEmpresa[3]+'  '+'-'+'  '+DadosEmpresa[4]);
      end;
      ListBoxDadosEmpresa.Items.Add('Fone:'+'   '+DadosEmpresa[6]);
      if ibDadosEmpresa.FieldByName('CNPJCPF').AsString <> '' Then begin
      ListBoxDadosEmpresa.Items.Add('CNPJ'+' '+DadosEmpresa[7]);
      end;
      if ibDadosEmpresa.FieldByName('IE').AsString <> '' Then begin
      ListBoxDadosEmpresa.Items.Add('I.E.'+' '+DadosEmpresa[8]);
      end;
      if ibDadosEmpresa.FieldByName('INFORMACOES').AsString <> '' Then begin
      ListBoxDadosEmpresa.Items.Add(DadosEmpresa[9]);
      end;
      if ibDadosEmpresa.FieldByName('SITE').AsString <> '' Then begin
      ListBoxDadosEmpresa.Items.Add(DadosEmpresa[10]);
      end;

     end;//with }

////////////////////////////////////////////////////////////////////////////////

    //Adiciona as Colunas com os dados do Clientes
    with dbgVendas do begin

      // monta as colunas abaixo se for verdadeiro
      if MontaColunas Then begin

         DataSource := dmModule.dtsServsVenda;

        //determina as colunas a serem montadas 0 codigo cliente, 1 razao Social, 2 endere�o numero...
        Columns.Insert(0);
        Columns.Insert(1);
        Columns.Insert(2);
        Columns.Insert(3);
        Columns.Insert(4);
        Columns.Insert(5);
       { Columns.Insert(6);
        Columns.Insert(7);
        Columns.Insert(8);
        Columns.Insert(9);
        Columns.Insert(10); }

        //Parametros da Coluna que exibe o C�digo do Cadastro

        //Parametros da Coluna que exibe o Nome do cliente.
        Columns.Items[0].Title.Caption := 'Produto';
        Columns.Items[0].FieldName     := 'NOMEPROD';
        Columns.Items[0].Width         := 350;
        Columns.Items[0].Alignment     := taLeftJustify;

        // Parametros que exibe o nome fantasia do cliente
        Columns.Items[1].Title.Caption := 'Vlr.Unit�rio';
        Columns.Items[1].FieldName     := 'VLRUNIT';
        Columns.Items[1].Width         := 80;
        Columns.Items[1].Alignment     := taCenter;

        // Parametros que exibe o numero do cliente
        Columns.Items[2].Title.Caption := 'Qtde.';
        Columns.Items[2].FieldName     := 'QTDE';
        Columns.Items[2].Width         := 70;
        Columns.Items[2].Alignment     := taLeftJustify;

       // Parametros que exibe o compl. do cliente
        Columns.Items[3].Title.Caption := 'Vlr.Total';
        Columns.Items[3].FieldName     := 'VLRTOTAL';
        Columns.Items[3].Width         := 80;
        Columns.Items[3].Alignment     := taLeftJustify;

       // Parametros que exibe o compl. do cliente
        Columns.Items[4].Title.Caption := 'Total(B)';
        Columns.Items[4].FieldName     := 'VALORB';
        Columns.Items[4].Width         := 80;
        Columns.Items[4].Alignment     := taLeftJustify;

       // Parametros que exibe o compl. do cliente
        Columns.Items[5].Title.Caption := 'Total(C)';
        Columns.Items[5].FieldName     := 'VALORC';
        Columns.Items[5].Width         := 80;
        Columns.Items[5].Alignment     := taLeftJustify;

       // Parametros que exibe o compl. do cliente
      {  Columns.Items[7].Title.Caption := 'Data';
        Columns.Items[7].FieldName     := 'DATA';
        Columns.Items[7].Width         := 70;
        Columns.Items[7].Alignment     := taLeftJustify;}

       // Parametros que exibe o compl. do cliente
      {  Columns.Items[8].Title.Caption := 'Hora';
        Columns.Items[8].FieldName     := 'HORA';
        Columns.Items[8].Width         := 70;
        Columns.Items[8].Alignment     := taLeftJustify;

        Columns.Items[9].Title.Caption:= 'Tipo de Sa�da';
        Columns.Items[9].FieldName    := 'TIPOSAIDA';
        Columns.Items[9].Width        := 80;
        Columns.Items[9].Alignment    := taLeftJustify; }

        MontaColunas := False;

      end; {if}

    end; {with do db grid}

 //  lbl_edtCodCli.Text := '';
//   cboCliente.ClearSelection;
//  lbl_edtConvenio.Text := '';
   lbl_edtCodBarras.Text := '';
   lbl_edtCodProd.Text := '';
//   cboProduto.ClearSelection;
 //  lbl_edtVlrSangria.Text := '0,00';
  // lbl_Sangria.Caption := '';
   lbl_edtQtde.Text := '1';
   lbl_edtVlrUnit.Text := '0,00';
   lbl_edtVlrTotal.Text := '0,00';
   lbl_edtSubTotal.Caption := '0,00';
//   lbl_CodBarras.Caption := '';
   lbl_NomeProd.Caption := '';
//   lbl_Valor.Caption := '';


  end;{with}

end;

procedure TfrmVendasLoja.cboProdutoClick(Sender: TObject);

{var

//i : Integer;
OleGraphic: TOleGraphic;
fs: TFileStream;

Produto : Array[0..3] of String;   }

begin

{  with dmModule do begin

    if cboProduto.ItemIndex <> - 1 Then begin

      IDClassProduto := TClasseCombo(cboProduto.Items.Objects[cboProduto.ItemIndex]);

    end;

    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT CADPRODUTOS.*,LOCALESTOCAGEM.NOME As Estoque FROM CADPRODUTOS '
    + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE '
    + 'WHERE CADPRODUTOS.IDPROD=''' + IntToStr(IDClassProduto.ID) + '''');
    ibProdutos.Open;

////////////////////////////////////////////////////////////////////////////////

    if lbl_TipoPreco.Caption = '' Then begin

      TipoPreco := 'A';

    end;


    lbl_edtCodProd.Text := ibProdutos.FieldByName('IDPROD').AsString;
   // lbl_edtEstoque.Text := ibProdutos.FieldByName('Estoque').AsString;

    if  (TipoPreco = 'A') Then begin

    lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);

    end else if  (TipoPreco = 'B') Then begin

    lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAB').AsFloat);

    end else if  (TipoPreco = 'C') Then begin

    lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAC').AsFloat);

    end;

////////////////////////////////////////////////////////////////////////////////


    lbl_edtCodBarras.Text := ibProdutos.FieldByName('CODBARRAS').AsString;
    lbl_edtCodProd.Text := ibProdutos.FieldByName('IDPROD').AsString;
  //  lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);
 //   lbl_edtEstoque.Text := ibProdutos.FieldByName('Estoque').AsString;


    lbl_edtQtde.SetFocus;


    //ROTINA PARA EXIBIR A IMAGEM DO PRODUTO
    if Not FileExists(ExtractFilePath(Application.ExeName) + 'Data\RunTime\ProdImagens\' + cboProduto.Text + '.jpg') Then begin

      imgProduto.Picture := Nil; //LIMPA A IMAGEM
      ImagemProduto := '';

    end else begin

      try
        OleGraphic := TOleGraphic.Create;
        fs         := TFileStream.Create(ExtractFilePath(Application.ExeName) //EXIBE A IMAGEM DO PRODUTO
                                        + 'Data\RunTime\ProdImagens\' + cboProduto.Text + '.jpg', fmOpenRead or fmSharedenyNone);
        OleGraphic.LoadFromStream(fs);
        imgProduto.Picture.Assign(OleGraphic);

       // imgProduto.Picture.LoadFromFile();

        ImagemProduto := ExtractFilePath(Application.ExeName) //EXIBE A IMAGEM DO PRODUTO
                                        + 'Data\RunTime\ProdImagens\' + cboProduto.Text + '.jpg';

      finally
        fs.Free;
        OleGraphic.Free
      end;

     end;

    if cboProduto.Text <> '' Then begin

    Produto[0]:=lbl_edtCodBarras.Text;
    Produto[1]:=cboProduto.Text;
    Produto[2]:=lbl_edtVlrUnit.Text;
  //  Produto[4]:=lbl_X.Caption;



    lbl_CodBarras.Caption := Produto[0];
    lbl_Traco.Caption := '-';
    lbl_NomeProd.Caption := Produto[1];
    lbl_Valor.Caption := Produto[2];

    end;  }

//  end;{with}

end;

procedure TfrmVendasLoja.FormCreate(Sender: TObject);

begin

  InsereVenda := True;
  MontaColunas := True;

  PathSistema := ExtractFilePath(ParamStr(0));
  if FileExists(PathSistema + 'Data\RunTime\Imagens_Sistema\NovoFundoCX.gif') Then
    imgFundoCx.Picture.LoadFromFile(PathSistema + 'Data\RunTime\Imagens_Sistema\NovoFundoCX.gif');
end;

procedure TfrmVendasLoja.dbgServsCellClick(Column: TColumn);

//var

//i : Integer;

begin

  with dmModule do begin

      {ibServsVenda.Close;
      ibServsVenda.SQL.Clear;
      ibServsVenda.SQL.Add('SELECT TBLSERVICOSVENDAS.VLRTOTAL,'
      + 'TBLSERVICOSVENDAS.VLRUNIT,TBLSERVICOSVENDAS.NOMEPROD,TBLSERVICOSVENDAS.QTDE,TBLSERVICOSVENDAS.IDSERVS,'
      + 'TBLSERVICOSVENDAS.IDPROD FROM TBLSERVICOSVENDAS WHERE TBLSERVICOSVENDAS.IDSERVSVENDA=''' + (frmVendasLoja.lbl_CodVenda.Caption) + '''');
      ibServsVenda.Open;

      (ibServsVenda.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibServsVenda.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibServsVenda.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis');} //CRIA UMA MASCARA PARA O CAMPO


      if lbl_CancelaItem.Caption = 'Cancelar Item' then begin

        IDServsCancela  := ibServsVenda.FieldByName('IDSERVS').AsInteger;
        IDProdCancelado := ibServsVenda.FieldByName('IDPROD').AsInteger;

        if ibServsVenda.RecordCount > 0 Then begin

          lbl_edtVlrTotal.Text  := FormatFloat(CasasDecimais('Produtos'),ibServsVenda.FieldByName('VLRTOTAL').AsFloat);
          lbl_edtVlrUnit.Text   := FormatFloat(CasasDecimais('Produtos'),ibServsVenda.FieldByName('VLRUNIT').AsFloat);
          lbl_edtQtde.Text      := FormatFloat(CasasDecimais('Combustiveis'),ibServsVenda.FieldByName('QTDE').AsFloat);
          lbl_edtIDProdCX.Text  := IntToStr(ibServsVenda.FieldByName('IDPROD').AsInteger);
          lbl_NomeProd.Caption  := (ibServsVenda.FieldByName('NOMEPROD').AsString);
          lbl_edtVlrUnit.SetFocus;

       end;{if}

     end;//if cancelar item  

  end;{with}

end;

procedure TfrmVendasLoja.lbl_edtQtdeExit(Sender: TObject);
   var
    Valor1 :Real;
    Valor2 :Real;
    Valor3 :Real;
    Valor4 :Real;
    ConfirmaVenda : Integer;
    NomeUnidVenda : String;

begin

  with dmModule do begin
  tedit(sender).color := clwindow;
        if (lbl_NomeProd.Caption <> '') Then begin

         if lbl_edtQtde.Text <> '' Then begin// se for em branco executa rotina abaixo.

         ///  if lbl_edtPacoteFardo.Caption = '' Then begin

             if (Pos(',',lbl_edtQtde.Text)>0) and (lbl_edtQtde.Text <> '') Then begin

               Valor1 := StrToFloat(StringReplace(lbl_edtQtde.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
               Valor2 := StrToFloat(StringReplace(lbl_edtVlrUnit.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));


               ///if ibConfig.FieldByName('TRESCASASDECIMAIS').AsString = 'Sim' Then begin
              /// lbl_edtVlrTotal.Text := FormatFloat(CasasDecimais('Combustiveis'),(Valor2 * Valor1));
              /// end else begin


                 lbl_edtVlrTotal.Text := FormatFloat(CasasDecimais('Produtos'),(Valor2 * Valor1));

               ///end;
             ///end;
            end else begin

               Valor1 := StrToFloat(StringReplace(lbl_edtQtde.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
               Valor2 := StrToFloat(StringReplace(lbl_edtVlrUnit.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

              /// if ibConfig.FieldByName('TRESCASASDECIMAIS').AsString = 'Sim' Then begin
             ///  lbl_edtVlrTotal.Text := FormatFloat(CasasDecimais('Combustiveis'),(Valor2 * Valor1));
               ///end else begin


                 lbl_edtVlrTotal.Text := FormatFloat(CasasDecimais('Produtos'),(Valor2 * Valor1));

               ///end;               ///end;

             end;

         ///  end;//if pacotefardo = ''

          { if lbl_edtPacoteFardo.Caption <> '' Then begin

             lbl_edtVlrTotal.Text := lbl_edtVlrUnit.Text;

           end;//if pacotefardo <> '' }

         end;//IF

        end;{if cbo produto}

        if (lbl_edtQtde.Text > '0')  and (lbl_edtVlrTotal.Text > '0,00')  Then begin

         lbl_edtVlrTotal.SetFocus;
         lbl_edtInformacao.Caption := '';

        end;{if}
  {221018  if (lbl_edtCodBarras.Text <> '') Then begin

      Commit(ibProdutos);
      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT NOME,VALORCUSTO,VALORVENDAA,VALORVENDAB,IDPROD,'
      + 'VALORVENDAC,VALORVENDAD,REF,CODBARRAS FROM CADPRODUTOS WHERE CADPRODUTOS.CODBARRAS=''' + lbl_edtCodBarras.Text + '''');
      ibProdutos.Open;

      lbl_edtIDProdCX.Text := IntToStr(ibProdutos.FieldByName('IDPROD').AsInteger);


        if (lbl_NomeProd.Caption <> '') Then begin

         if lbl_edtQtde.Text <> '' Then begin// se for em branco executa rotina abaixo.

         ///  if lbl_edtPacoteFardo.Caption = '' Then begin

             if (Pos(',',lbl_edtQtde.Text)>0) and (lbl_edtQtde.Text <> '') Then begin

               Valor1 := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));
               Valor2 := StrToFloat(StringReplace(lbl_edtVlrUnit.Text,ThousandSeparator,'',[rfReplaceAll]));

               ///if ibConfig.FieldByName('TRESCASASDECIMAIS').AsString = 'Sim' Then begin
              /// lbl_edtVlrTotal.Text := FormatFloat(CasasDecimais('Combustiveis'),(Valor2 * Valor1));
              /// end else begin
               lbl_edtVlrTotal.Text := FormatFloat(CasasDecimais('Produtos'),(Valor2 * Valor1));
              /// end;
             ///end;
            end else begin

               Valor1 := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));
               Valor2 := StrToFloat(StringReplace(lbl_edtVlrUnit.Text,ThousandSeparator,'',[rfReplaceAll]));

              /// if ibConfig.FieldByName('TRESCASASDECIMAIS').AsString = 'Sim' Then begin
             ///  lbl_edtVlrTotal.Text := FormatFloat(CasasDecimais('Combustiveis'),(Valor2 * Valor1));
               ///end else begin
               lbl_edtVlrTotal.Text := FormatFloat(CasasDecimais('Produtos'),(Valor2 * Valor1));
               ///end;

             end;


         end;//IF

        end;//if cbo produto

        if (lbl_edtQtde.Text > '0')  and (lbl_edtVlrTotal.Text > '0,00')  Then begin

         lbl_edtVlrTotal.SetFocus;
         lbl_edtInformacao.Caption := '';

        end;//if  221018 }

      // end;
       //  end;//IF

      //  end;{if cbo produto}

       { if (lbl_edtQtde.Text > '0')  and (lbl_edtVlrTotal.Text > '0,00')  Then begin


          lbl_edtVlrTotal.SetFocus;
          lbl_edtInformacao.Caption := '';

         // end;

        end;}

      //  lbl_edtVlrTotal.SetFocus;

////////////////////////////////////////////////////////////////////////////////

  {  if (lbl_edtCodBarras.Text = '')and(lbl_edtCodProd.Text <> '')and(ckAtualizaValor.Checked = False) Then begin

      Commit(ibProdutos);
      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT NOME,VALORCUSTO,VALORVENDAA,VALORVENDAB,IDPROD,'
      + 'VALORVENDAC,VALORVENDAD,REF,CODBARRAS FROM CADPRODUTOS WHERE(CADPRODUTOS.REF=''' + lbl_edtCodProd.Text + ''')');
      ibProdutos.Open;

      lbl_edtIDProdCX.Text := IntToStr(ibProdutos.FieldByName('IDPROD').AsInteger);

      if lbl_TipoPreco.Caption = '' Then begin

        TipoPreco := 'A';

      end;

      IDProdVenda := ibProdutos.FieldByName('IDPROD').AsInteger;

      if  (TipoPreco = 'A') Then begin

      lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);

      end else if  (TipoPreco = 'B') Then begin

      lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAB').AsFloat);

      end else if  (TipoPreco = 'C') Then begin

      lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAC').AsFloat);

      end else if  (TipoPreco = 'D') Then begin

      lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAD').AsFloat);

      end;

      lbl_NomeProd.Caption := ibProdutos.FieldByName('NOME').AsString;

        if (lbl_NomeProd.Caption <> '') Then begin

         if lbl_edtQtde.Text <> '' Then begin// se for em branco executa rotina abaixo.

           if (Pos(',',lbl_edtQtde.Text)>0) and (lbl_edtQtde.Text <> '') Then begin

             Valor1 := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));
             Valor2 := StrToFloat(StringReplace(lbl_edtVlrUnit.Text,ThousandSeparator,'',[rfReplaceAll]));

             lbl_edtVlrTotal.Text := FormatFloat(',0.00',(Valor2 * Valor1));

           end else begin

             Valor1 := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));
             Valor2 := StrToFloat(StringReplace(lbl_edtVlrUnit.Text,ThousandSeparator,'',[rfReplaceAll]));
             lbl_edtVlrTotal.Text := FormatFloat(',0.00',(Valor2 * Valor1)); }

         ///  end;{if}

       ///  end;{if}

      ///  end;{if cbo produto}

     {   if (lbl_edtQtde.Text > '0')  and (lbl_edtVlrTotal.Text > '0,00')  Then begin

         lbl_edtVlrTotal.SetFocus;
         lbl_edtInformacao.Caption := '';   }

      ///  end;{if}

   /// end;//if ref

////////////////////////////////////////////////////////////////////////////////

  {  if (lbl_edtIDProdCX.Text <> '')and(ckAtualizaValor.Checked = False) Then begin

      Commit(ibProdutos);
      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT NOME,VALORCUSTO,VALORVENDAA,VALORVENDAB,IDPROD,'
      + 'VALORVENDAC,VALORVENDAD,REF,CODBARRAS FROM CADPRODUTOS WHERE(CADPRODUTOS.IDPROD=''' + lbl_edtIDProdCX.Text + ''')');
      ibProdutos.Open;

      lbl_edtIDProdCX.Text := IntToStr(ibProdutos.FieldByName('IDPROD').AsInteger);

      if lbl_TipoPreco.Caption = '' Then begin

        TipoPreco := 'A';

      end;

      IDProdVenda := ibProdutos.FieldByName('IDPROD').AsInteger;

      if  (TipoPreco = 'A') Then begin

      lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);

      end else if  (TipoPreco = 'B') Then begin

      lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAB').AsFloat);

      end else if  (TipoPreco = 'C') Then begin

      lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAC').AsFloat);

      end else if  (TipoPreco = 'D') Then begin

      lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAD').AsFloat);

      end;

      lbl_NomeProd.Caption := ibProdutos.FieldByName('NOME').AsString;

        if (lbl_NomeProd.Caption <> '') Then begin

         if lbl_edtQtde.Text <> '' Then begin// se for em branco executa rotina abaixo.

           if (Pos(',',lbl_edtQtde.Text)>0) and (lbl_edtQtde.Text <> '') Then begin

             Valor1 := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));
             Valor2 := StrToFloat(StringReplace(lbl_edtVlrUnit.Text,ThousandSeparator,'',[rfReplaceAll]));

             lbl_edtVlrTotal.Text := FormatFloat(',0.00',(Valor2 * Valor1));

           end else begin

             Valor1 := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));
             Valor2 := StrToFloat(StringReplace(lbl_edtVlrUnit.Text,ThousandSeparator,'',[rfReplaceAll]));
             lbl_edtVlrTotal.Text := FormatFloat(',0.00',(Valor2 * Valor1)); }

       ///    end;{if}

     ///    end;{if}

    ///    end;{if cbo produto}

       { if (lbl_edtQtde.Text > '0')  and (lbl_edtVlrTotal.Text > '0,00')  Then begin

         lbl_edtVlrTotal.SetFocus;
         lbl_edtInformacao.Caption := '';  }

      ///  end;{if}

  ///  end;//if ref

////////////////////////////////////////////////////////////////////////////////

 {   if ckAtualizaValor.Checked Then begin

         if lbl_edtQtde.Text <> '' Then begin// se for em branco executa rotina abaixo.

           if (Pos(',',lbl_edtQtde.Text)>0) and (lbl_edtQtde.Text <> '') Then begin

             Valor1 := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));
             Valor2 := StrToFloat(StringReplace(lbl_edtVlrUnit.Text,ThousandSeparator,'',[rfReplaceAll]));

             lbl_edtVlrTotal.Text := FormatFloat(',0.00',(Valor2 * Valor1));

           end else begin

             Valor1 := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));
             Valor2 := StrToFloat(StringReplace(lbl_edtVlrUnit.Text,ThousandSeparator,'',[rfReplaceAll]));
             lbl_edtVlrTotal.Text := FormatFloat(',0.00',(Valor2 * Valor1));   }

        ///   end;{if}

      ///   end;

  ///  end;//if

  ibProdutos.Close;

  end;//with

end;

procedure TfrmVendasLoja.lbl_edtQtdeKeyPress(Sender: TObject; var Key: Char);

var
CodBarras,NomeProd,VlrUnit : String;

begin

    CodBarras :='';
    NomeProd  :='';
    VlrUnit   :='';

  if Key = #13 Then begin


    if lbl_edtCodBarras.Text <> '' Then begin

    CodBarras :=lbl_edtCodBarras.Text;
    NomeProd  :=lbl_NomeProd.Caption;
    VlrUnit   :=lbl_edtVlrUnit.Text;
  //  Produto[4]:=lbl_X.Caption;



 //  lbl_CodBarras.Caption := Produto[0];
//    lbl_Traco.Caption := '-';
    lbl_NomeProd.Caption := NomeProd;
 //   lbl_Valor.Caption := Produto[2];


     // lbl_edtQtde.Text := '1';
      lbl_edtVlrTotal.SetFocus;

    end else begin

    lbl_edtCodBarras.SetFocus;

    end;

  end;

end;

procedure TfrmVendasLoja.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

var

IDFuncionarioCX, ConfirmaFechCx, IDVendaCancela, intSatGeral : Integer;
DataAtual : TDateTime;
ProdutoEstoque, CancelarItemCaixa : String;
ConfirmaCancelamento, AvisodeCupom : Integer;
QtdeEstoqueVendaDevolve,VlrProdutoDevolve,QtdeEstoqueDevolve,QtdeVendaDevolve,ValorCustoDevolve : Real;
TotalCusto,TotalProdEstoqueDevolve,EstoqueFinalDevolve,TotalCustoDevolve : String;
IDProdutoDevolucao : Integer;
AbrePedidos,AbreSangria : String;
ImpressaoTermica,IniciaCupomFiscalF4 : String;
//abre cupom  AnalisedeRetorno,
Str_CPF_ou_CNPJ: String;
Daruma_ACK,Daruma_ST1,Daruma_ST2, ConfirmaConfiguracao, intSATDaruma:Integer;
ArquivoINI, Ini : TIniFile;
Caminho, strTipoUsuario, intIdUser : String;
intAbreFormNP : TConfigCX;

//classe imprimir cupom
intImprCupomSimplesConf : TConfiguracoes;
begin

  with dmModule do begin

    case key of

      VK_f1:begin

        ConfirmaVendaCx := True;
        LimpaCampos;
        lbl_Cliente.Caption := '';
        lbl_CodCliente.Caption := '';
        lbl_IDPlacaVeiculo.Caption := '';
        lbl_edtQtde.Text := '1';
        lbl_edtVlrUnit.Text := '0,00';
        lbl_edtVlrTotal.Text := '0,00';
        lbl_edtDescontoItem.Text := '0,00';
        lbl_NomeFuncComissao.Caption := '';
        lbl_edtPacoteFardo.Caption := '';
        lbl_edtFuncComissao.Text := '';
        //  cboProduto.ClearSelection;
        //  lbl_CodBarras.Caption := '';
        lbl_NomeProd.Caption := '';
        //  lbl_Valor.Caption := '';
        //  lbl_edtDescVenda.Text := '0,00';
        //  imgProduto.Picture := Nil; //LIMPA A IMAGEM
        lbl_edtCodBarras.SetFocus;
      /// lbl_Cliente.Caption := '';
     ///   lbl_CodCliente.Caption := '';
        lbl_QtdeEstoque.Caption := '';
        lbl_TrocaMercadoria.Caption := '';
     //   lbl_edtDescVenda.SetFocus;  }
     end;//begin


       VK_f2:Begin

       if lbl_edtCodBarras.Enabled = True Then begin

       lbl_edtQtde.SetFocus;

       end;

       end;{begin}


      VK_f3:begin

      //instanciando a classe tconfiguracoes

          intImprCupomSimplesConf := TConfiguracoes.Create();

          Commit(ibConfig);
          ibConfig.Close;
          ibConfig.SQL.Clear;
          ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
          ibConfig.Open;

          intSATDaruma       := ibConfig.FieldByName('SATDARUMA').AsInteger;
          ImpressaoTermica   := ibConfig.FieldByName('IMPRESSORATERMICA').AsString;
          intImprCupomSimplesConf.intImprSimplesConf := ibConfig.FieldByName('CUPOMSIMPLESCONF').AsInteger;
          intSatGeral := ibConfig.FieldByName('SATGERAL').AsInteger;
          //instanciando a classe tconfigcx
          intAbreFormNP := TConfigCX.Create();
          intAbreFormNP.AbreNotaP := ibConfig.FieldByName('ABREFORMNP').AsInteger;

          try

            if intAbreFormNP.AbreNotaP = 1 then

              frmNFPaulista.ShowModal;

          finally

              intAbreFormNP.Free;

          end;

      

          if intSATDaruma = 1 then begin

            if lbl_CodVenda.Caption > '0' Then begin

              if lbl_edtSubTotal.Caption <> '0,00' Then begin

                IDVenda := IDVendasServs;
                frmRecebeLoja.ShowModal;

              end;

            end;


            if lbl_CodVendaMPV.Caption > '0' Then begin

              if lbl_edtSubTotal.Caption <> '0,00' Then begin

                frmRecebeLoja.ShowModal;

              end;

            end;

          end;
                                  // (intImprCupomSimplesConf.intImprSimplesConf = 0)
          if (intSatGeral = 1)and(intSATDaruma = 0) then begin

            Ini := TIniFile.Create('C:\CP Sistemmas\CP FinalizaVendas\DadosVendas.ini');

            try

              Ini.WriteString('TotalVenda','VlrTotal',lbl_edtSubTotal.Caption);
              Ini.WriteString('Cupom','NCupom',lbl_CodVenda.Caption);
              Ini.WriteString('NOrcamento','NOrc',lbl_IdOrc.Caption);
              Ini.WriteString('NotaPaulista','CPF_CNPJ',lbl_edtCnpjCpf.Caption);
              Ini.WriteString('NotaPaulista','NOME',lbl_Cliente.Caption);

            finally

              Ini.Free;
              frmVendasLoja.lbl_IDPlacaVeiculo.Caption := '';
              frmVendasLoja.lbl_edtVlrUnit.Text  := '0,00';
              frmVendasLoja.lbl_edtVlrTotal.Text := '0,00';
              frmVendasLoja.lbl_edtSubTotal.Caption := '0,00';
              frmVendasLoja.lbl_edtInformacao.Caption := 'Caixa Livre';
              frmVendasLoja.lbl_edtQtde.Text := '1';
              frmVendasLoja.lbl_edtCodBarras.Enabled := False;
              frmVendasLoja.lbl_edtCodProd.Enabled := False;
              frmVendasLoja.lbl_Cliente.Caption := '';
              frmVendasLoja.lbl_CodCliente.Caption := '';
              lbl_CodVenda.Caption := '';
              frmVendasLoja.lbl_CodPosVenda.Caption := '';
              frmVendasLoja.lbl_edtCnpjCpf.Caption := '';
              frmVendasLoja.lbl_CnpjCpfP.Caption := '';
              lbl_CodVendaMPV.Caption := '';
              frmVendasLoja.listboxCupom.Clear;
              ibServsVenda.Close;

            end;

              ArquivoINI:= TIniFile.Create( ExtractFilePath(ParamStr(0))+ 'Data\RunTime\sis.ini');
              Caminho := ArquivoINI.ReadString('FinalizaVendas','Path','');
              ArquivoINI.Free;
              WinExec('C:\CP Sistemmas\CP FinalizaVendas\\CP_FinalizaVendas.exe',sw_normal);

          end;


            if (intImprCupomSimplesConf.intImprSimplesConf = 1)and(intSATDaruma = 0)then begin

              try

                if lbl_edtSubTotal.Caption <> '0,00' Then begin

                  IDVenda := IDVendasServs;
                  frmRecebeLoja.ShowModal;

                end;

              finally

                FreeAndNil(intImprCupomSimplesConf);

              end;  

            end;

            if (intImprCupomSimplesConf.intImprSimplesConf = 0)and(intSATDaruma = 0)and(intSatGeral = 0)then begin

              try

                if lbl_edtSubTotal.Caption <> '0,00' Then begin

                  IDVenda := IDVendasServs;
                  frmRecebeLoja.ShowModal;

                end;

              finally

                FreeAndNil(intImprCupomSimplesConf);

              end;  

            end;
    {  if ImpressaoTermica = 'Sim' then begin

        frmRecebeLoja.ShowModal;

      end; }

    end;

      VK_f4:begin


        if (lbl_edtCodBarras.Enabled = True)and(lbl_edtCodProd.Enabled = True) Then begin

          AvisodeCupom := Application.MessageBox('� necess�rio terminar esta venda para um novo cupom de venda?','**Venda n�o finalizada**',+MB_OK+MB_DEFBUTTON1+MB_ICONINFORMATION);

        end;


        if (lbl_edtCodBarras.Enabled = False)and(lbl_edtCodProd.Enabled = False) Then begin


          ibServsVendasCli.Close;
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
          frmVendasLoja.lbl_CodVendaMPV.Caption := '';
          
          IDVendasServs := (ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger);

          frmVendasLoja.lbl_edtCodBarras.Enabled := True;
          frmVendasLoja.lbl_edtCodProd.Enabled := True;
          frmVendasLoja.lbl_edtCodBarras.SetFocus;
          { frmVendasLoja.lbl_edtInformacao.Caption := 'Caixa Livre';
           frmVendasLoja.lbl_edtQtde.Text := '1';
           frmVendasLoja.lbl_edtSubTotal.Caption := '0,00';
           frmVendasLoja.lbl_edtCodBarras.SetFocus;
           frmVendasLoja.lbl_Cliente.Caption := '';
           frmVendasLoja.lbl_CodCliente.Caption := '';
           frmVendasLoja.lbl_CodPosVenda.Caption := '';
           frmVendasLoja.lbl_edtCnpjCpf.Caption := '';
           frmVendasLoja.lbl_CnpjCpfP.Caption := ''; }

           InsereVenda := True;


         { Commit(ibConfig);
          ibConfig.Close;
          ibConfig.SQL.Clear;
          ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
          ibConfig.Open;  }

        //  AnalisedeRetorno := ibConfig.FieldByName('ANALISARETORNO').AsString;
       //   IniciaCupomFiscalF4 := ibConfig.FieldByName('CUPOMFISCALF4').AsString;

        {  if IniciaCupomFiscalF4 = 'Sim' Then begin
             //**ABRECUPOM**
             Str_CPF_ou_CNPJ := '';

             Int_Retorno := iCFAbrirPadrao_ECF_Daruma();

          end; }

         end;  
////////////////////////////////////////////////////////////////////////////////


      end;{begin}

      VK_F5 :Begin

         { try
             if frmProd_MPrima = Nil then
                frmProd_MPrima := TfrmProd_MPrima.Create(self);
          except
              ShowMessage('Erro na cria��o do formul�rio !!');
              exit;
          end;  }

          frmProd_MPrima.ShowModal;
         // FreeAndNil(frmProd_MPrima);
          
      end;//begin

       VK_f6:Begin


        frmSenhaAlteracaoProd.ShowModal;

        {ibUser.Close;
        ibUser.SQL.Clear;
        ibUser.SQL.Add('SELECT IDUSER, SENHA, TIPOUSUARIO FROM TBLUSER WHERE TBLUSER.SENHA=''' + frmSenhaAlteracaoProd.lbl_edtSenha.Text + '''');
        ibUser.Open;

        strTipoUsuario := ibUser.FieldByName('TIPOUSUARIO').AsString;

        if strTipoUsuario = 'Administrador' then begin

          lbl_CancelaItem.Caption := 'Cancelar Item';
          dbgVendas.SetFocus;

        end else begin

           ShowMessage('Para cancelar o item da venda contate o administrador');

        end;}

       {  Commit(ibConfig);
         ibConfig.Close;
         ibConfig.SQL.Clear;
         ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
         ibConfig.Open;

         ImpressaoTermica   := ibConfig.FieldByName('IMPRESSORATERMICA').AsString;
         CancelarItemCaixa := ibConfig.FieldByName('CANCELARITEMCX').AsString;}

         {  if CancelarItemCaixa = 'Sim' Then begin

           lbl_CancelaItem.Caption := 'Cancelar Item';
           ConfirmaVendaCx := False;

           end else if CancelarItemCaixa = 'Nao' Then begin

            ConfirmaCancelamento := Application.MessageBox('Confirma o cancelamento da venda?','Cancelar Venda',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

            if ConfirmaCancelamento = 6 Then begin

              IDVendaCancela := StrToInt(lbl_CodVenda.Caption);

////////////////////////////////////////////////////////////////////////////////
            Commit(ibServsVenda);
            ibServsVenda.Close;
            ibServsVenda.SQL.Clear;
            ibServsVenda.SQL.Add('SELECT * FROM TBLSERVICOSVENDAS WHERE IDSERVSVENDA=''' + IntToStr(IDVendaCancela) + '''');
            ibServsVenda.Open;

            while not ibServsVenda.Eof do begin

            IDProdutoDevolucao := ibServsVenda.FieldByName('IDPROD').AsInteger;

            QtdeVendaDevolve   := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('QTDE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

            ibEntrProdEstoque.Close;
            ibEntrProdEstoque.SQL.Clear;
            ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,'
            + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,TBLENTRADAESTOQUEPROD.ESTOQUEMIN,'
            + 'CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORCUSTO,CADPRODUTOS.TIPOPROD FROM TBLENTRADAESTOQUEPROD '
            + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
            + 'WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + IntToStr(IDProdutoDevolucao) + '''');
            ibEntrProdEstoque.Open;

          //ROTINA ABAIXO PARA SOMAR TOTAL DO ESTQUE E QUANTIDADE DO ESTOQUE

          //traz na variavel a qtde conf. prod da select identificado por id.
           QtdeEstoqueDevolve := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
         // QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),DecimalSeparator,',',[rfReplaceAll]));

         // QtdeVendaDevolve   := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));

           QtdeEstoqueDevolve := QtdeEstoqueDevolve + QtdeVendaDevolve;

           EstoqueFinalDevolve := StringReplace(FloattoStr(QtdeEstoqueDevolve),ThousandSeparator,'',[rfReplaceAll]);
           EstoqueFinalDevolve := StringReplace(EstoqueFinalDevolve,DecimalSeparator,'.',[rfReplaceAll]);

          //AQUI VAI O CALCULO DO TOTAL CONFORME VENDE O PRODUTO
           VlrProdutoDevolve  := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORVENDAA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           VlrProdutoDevolve  := QtdeEstoqueDevolve * VlrProdutoDevolve;

           TotalProdEstoqueDevolve := StringReplace(FloattoStr(VlrProdutoDevolve),ThousandSeparator,'',[rfReplaceAll]);
           TotalProdEstoqueDevolve := StringReplace(TotalProdEstoqueDevolve,DecimalSeparator,'.',[rfReplaceAll]);


           ValorCustoDevolve := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORCUSTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           ValorCustoDevolve := QtdeEstoqueDevolve * ValorCustoDevolve;

           TotalCustoDevolve := StringReplace(FloattoStr(ValorCustoDevolve),ThousandSeparator,'',[rfReplaceAll]);
           TotalCustoDevolve := StringReplace(TotalCustoDevolve,DecimalSeparator,'.',[rfReplaceAll]);

           //ROTINA PARA O ESTOQUE MINIMO
           if ibEntrProdEstoque.RecordCount > 0 Then begin

             ibEntrProdEstoque.Close;
             ibEntrProdEstoque.SQL.Clear;
             ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
             +'TOTALCUSTO=''' + TotalCustoDevolve + ''','
             +'VLRTOTAL=''' + (TotalProdEstoqueDevolve) +  ''','
             +'QUANTIDADE=''' + (EstoqueFinalDevolve) + ''' WHERE IDPROD=''' + IntToStr(IDProdutoDevolucao) + '''');
             ibEntrProdEstoque.ExecSQL;
             Commit(ibEntrProdEstoque);

           end;//if recordcount

           ibServsVenda.Next;

           end;//while
////////////////////////////////////////////////////////////////////////////////

            ibServsVenda.Close;
            ibServsVenda.SQL.Clear;
            ibServsVenda.SQL.Add('DELETE FROM TBLSERVICOSVENDAS WHERE IDSERVSVENDA=''' + IntToStr(IDVendaCancela) + '''');
            ibServsVenda.Open;

            //frmVendasLoja.lbl_CodVenda.Caption := IntToStr(ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger + 1);
            frmVendasLoja.listboxCupom.Clear;
            frmVendasLoja.lbl_edtSubTotal.Caption := '0,00';
            frmVendasLoja.lbl_edtInformacao.Caption := 'Caixa Livre';

             if ImpressaoTermica = 'Sim' Then begin

                Int_Retorno := Daruma_FI_CancelaCupom();

                Commit(ibConfig);
                ibConfig.Close;
                ibConfig.SQL.Clear;
                ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
                ibConfig.Open;

                AnalisedeRetorno := ibConfig.FieldByName('ANALISARETORNO').AsString;

                if AnalisedeRetorno = 'Sim'Then begin

                  Daruma_Analisa_Retorno();

                end;

             end;//if impressora termica = sim

           end;//if confirma cancelamento

         end;//if cancelar item cx }

       end;{begin}



       VK_f7:begin

        {  try
             if frmBuscaProdutos = Nil then
                frmBuscaProdutos := TfrmBuscaProdutos.Create(self);
          except
              ShowMessage('Erro na cria��o do formul�rio !!');
              exit;
          end; }

          frmBuscaProdutos.ShowModal;
         // FreeAndNil(frmBuscaProdutos);
      // lbl_edtInformacao.Caption := '';
        end;{begin}


      VK_f8 :begin

      // frmEstoqueRapido.ShowModal;
     //  frmTrocaMercadoria.ShowModal;

      if lbl_edtCodBarras.Enabled = True Then begin

       lbl_TipoPreco.Caption := 'Pre�o de Venda B';

      end;

       if lbl_TipoPreco.Caption = 'Pre�o de Venda B' Then begin

       TipoPreco := 'B';

       end else begin

       TipoPreco := 'A';

       end;

      lbl_edtCodBarras.SetFocus;
      lbl_edtQtde.Text := '1';


       end;{begin}


      VK_f9 :begin

     // lbl_edtFuncComissao.SetFocus;

    {   ibProdutos.Close;
       ibProdutos.SQL.Clear;
       ibProdutos.SQl.Add('SELECT * FROM CADPRODUTOS WHERE IDPROD=''' + lbl_edtCodProd.Text + '''');
       ibProdutos.Open;

       (ibProdutos.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat  := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

       lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Combustiveis'),ibProdutos.FieldByName('VALORVENDAC').AsFloat);  }

    //  lbl_edtQtde.SetFocus;

      if lbl_edtCodBarras.Enabled = True Then begin

       lbl_TipoPreco.Caption := 'Pre�o de Venda C';

      end;


       if lbl_TipoPreco.Caption = 'Pre�o de Venda C' Then begin

       TipoPreco := 'C';

       end else begin

       TipoPreco := 'A';

       end;

      lbl_edtCodBarras.SetFocus;
      lbl_edtQtde.Text := '1';  

       end;{begin}

       VK_f10:begin

         //frmPedidosLoja.ShowModal;
       { ConfirmaConfiguracao := Application.MessageBox('Confirma Configura��o da Impressora?','Config.Impressora',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

          if ConfirmaConfiguracao = 6 Then begin

            Int_Retorno := eBuscarPortaVelocidade_ECF_Daruma();
            frmVendasLoja.DarumaFramework_Mostrar_Retorno(Int_Retorno);
            
          end;//if }

       end;

       VK_f11:begin

       Commit(ibConfig);
       ibConfig.Close;
       ibConfig.SQL.Clear;
       ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
       ibConfig.Open;

       AbrePedidos := ibConfig.FieldByName('PEDIDOS').AsString;
       AbreSangria := ibConfig.FieldByName('SANGRIA').AsString;

       if (AbrePedidos = 'Sim')and(AbreSangria = 'Nao') Then begin

         frmPedidosLoja.ShowModal;

       end;

       if (AbreSangria = 'Sim')and(AbrePedidos = 'Nao') Then begin 

         frmManutCx.ShowModal;

       end;



        end;{begin}

       VK_f12:begin

          untPedidoNuvem.ShowModal;
         { if lbl_Func.Caption <> '' Then begin//SE HOUVER REGISTRO NO COMBO

            ibUser.Close;
            ibUser.SQL.Clear;
            ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE NOME=''' + lbl_Func.Caption + '''');
            ibUser.Open;

            IDFuncionarioCX := ibAberturaCX.FieldByName('IDFUNC').AsInteger;

          end;

          ibUser.Close;
          ibUser.SQL.Clear;
          ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + IntToStr(IDFuncionarioCX) + '''');
          ibUser.Open;

          ibAberturaCX.Close;
          ibAberturaCX.SQL.Clear;
          ibAberturaCX.SQL.Add('SELECT * FROM TBLABERTURACX WHERE IDFUNC=''' + InttoStr(IDFuncionarioCX) + ''' and DATAABERTURA=''' + FormatDateTime('mm/dd/yyyy',Now) + '''');
          ibAberturaCX.Open;

  //       if ibAberturaCX.FieldByName('HORAFECH').AsDateTime = 0 Then begin


            ConfirmaFechCx :=  Application.MessageBox ( PChar('Confirma o Fechamento do Caixa de: "' + lbl_Func.Caption
                + '"'),'Notifica��o Fechamento de Caixa', MB_YESNO + mb_DefButton1+MB_ICONINFORMATION);

            if ConfirmaFechCx = 6 Then begin

              ibAberturaCX.Close;
              ibAberturaCX.SQL.Clear;
              ibAberturaCX.SQL.Add('SELECT * FROM TBLABERTURACX WHERE IDFUNC=''' + InttoStr(IDFuncionarioCX) + '''');
              ibAberturaCX.Open;

              DataAtual    := StrToDate(FormatDateTime('dd/mm/yyyy',now));

              if ibAberturaCX.RecordCount > 0 Then begin

                ibAberturaCX.Close;
                ibAberturaCX.SQL.Clear;
                ibAberturaCX.SQL.Add('UPDATE TBLABERTURACX SET '
                + 'HORAFECH=''' + FormatDateTime('hh:mm:ss',now) + ''' WHERE IDFUNC=''' + InttoStr(IDFuncionarioCX) + ''' and DATAABERTURA=''' + FormatDateTime('mm/dd/yyyy',DataAtual) + '''');
                ibAberturaCX.ExecSQL;  }

            ////  end;{if record count}


         ////   frmVendasLoja.Close;

         ////   end;{if confirma msg}

       //  end else begin

        //  Application.MessageBox(PChar('Aten��o o Caixa de: "' + lbl_Funcionario.Text
        //        + '"''j� se encontra fechado'),'Notifica��o Fechamento de Caixa', MB_OK + mb_DefButton1+MB_ICONINFORMATION);
       //
       //   end;//if

        end;{F11 begin}

    end;{begin}

  end;{with}

end;

procedure TfrmVendasLoja.lbl_edtCodProdExit(Sender: TObject);

var

i : Integer;
//OleGraphic: TOleGraphic;
//fs: TFileStream;
Produto : Array[0..3] of String;
VlrUnit, VlrTroca, VlrCorrigido : Real;

begin

  with dmModule do begin

  tedit(sender).color := clwindow;  
   if lbl_edtCodProd.Text <> ''Then begin

    Commit(ibConfig);
    ibConfig.Close;
    ibConfig.SQL.Clear;
    ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
    ibConfig.Open;


    if ibConfig.FieldByName('ESTOQUEITEMCX').AsString = 'Sim' Then begin

      Commit(ibProdutos);
    ///  ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT CADPRODUTOS.*,'
      + 'TBLENTRADAESTOQUEPROD.QUANTIDADE As TotalEstoque FROM CADPRODUTOS '         
   //   + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE 'LOCALESTOCAGEM.NOME As NomeEstoque,
      + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD WHERE CADPRODUTOS.REF=''' + lbl_edtCodProd.Text + '''');
      ibProdutos.Open;

      if (ibProdutos.FieldByName('TotalEstoque').AsString <> '')and(ibProdutos.FieldByName('TotalEstoque').AsString <> null) Then begin

      lbl_QtdeEstoque.Caption := 'Qtde. Estoque: '+(FormatFloat('0',StrToFloat(ibProdutos.FieldByName('TotalEstoque').AsString)));

      end;

      lbl_edtIDProdCX.Text := IntToStr(ibProdutos.FieldByName('IDPROD').AsInteger);
      lbl_edtCodProd.Text := ibProdutos.FieldByName('REF').AsString;
      lbl_edtCodBarras.Text := ibProdutos.FieldByName('CODBARRAS').AsString;

    end;


    if ibConfig.FieldByName('ESTOQUEITEMCX').AsString = 'Nao' Then begin

      Commit(ibProdutos);
    ///  ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE CADPRODUTOS.REF=''' + lbl_edtCodProd.Text + '''');
   //  + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE 'LOCALESTOCAGEM.NOME As Estoque FROM CADPRODUTOS '
     // + '
      ibProdutos.Open;

      lbl_edtIDProdCX.Text := IntToStr(ibProdutos.FieldByName('IDPROD').AsInteger);
      lbl_edtCodProd.Text := ibProdutos.FieldByName('REF').AsString;
      lbl_edtCodBarras.Text := ibProdutos.FieldByName('CODBARRAS').AsString;

    end;

    Commit(ibTempProdNome);
   ///ibTempProdNome.Close;
    ibTempProdNome.SQL.Clear;
    ibTempProdNome.SQL.Add('SELECT NOME,VALORCUSTO,VALORVENDAA,VALORVENDAB,IDPROD,'
      + 'VALORVENDAC,VALORVENDAD,REF,CODBARRAS,QTDEPACOTEFARDO,VLRPACOTEFARDO FROM CADPRODUTOS WHERE REF=''' + lbl_edtCodProd.Text + '''');
    ibTempProdNome.Open;

    if ibTempProdNome.RecordCount > 0 Then begin

      if lbl_TipoPreco.Caption = '' Then begin

        TipoPreco := 'A';

      end;

        if lbl_TipoPreco.Caption = 'Pre�o de Venda B' Then begin

          TipoPreco := 'B';

        end;


        if lbl_TipoPreco.Caption = 'Pre�o de Venda C' Then begin

          TipoPreco := 'C';

        end;  


      if lbl_edtPacoteFardo.Caption =  '' Then begin

        if  (TipoPreco = 'A') Then begin

          if lbl_TrocaMercadoria.Caption = 'Troca'Then begin

            VlrTroca := StrToFloat(StringReplace(lbl_edtVlrUnit.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
            VlrUnit  := StrtoFloat(StringReplace(FloattoStr(ibTempProdNome.FieldByName('VALORVENDAA').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
            VlrCorrigido := VlrUnit - VlrTroca;
            lbl_edtVlrUnit.Text := FormatFloat(',0.00',(VlrCorrigido));

          end else if lbl_TrocaMercadoria.Caption = ''then
          lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProdNome.FieldByName('VALORVENDAA').AsFloat);

        end else if  (TipoPreco = 'B') Then begin

        lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProdNome.FieldByName('VALORVENDAB').AsFloat);

        end else if  (TipoPreco = 'C') Then begin

        lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProdNome.FieldByName('VALORVENDAC').AsFloat);

      //  end else if (TipoPreco = 'MT') Then begin

     //   lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORMETRO').AsFloat);

        end;
        
      end;
      
        if lbl_edtPacoteFardo.Caption <>  '' Then begin

          lbl_edtQtde.Text := FormatFloat('0',ibTempProdNome.FieldByName('QTDEPACOTEFARDO').AsFloat);

          lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProdNome.FieldByName('VLRPACOTEFARDO').AsFloat);

          lbl_NomeProd.Caption := ibTempProdNome.FieldByName('NOME').AsString;
          
        end;//if pacote fardo <> ''

      lbl_NomeProd.Caption  := ibTempProdNome.FieldByName('NOME').AsString;

    end;//if recordcount

    

{  for i:=0 to cboProduto.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
      if TClasseCombo( cboProduto.Items.Objects[i]).ID = ibProdutos.FieldByName('IDPROD').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
        cboProduto.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
        Break;
      end else begin
        cboProduto.ClearSelection;//LIMPA A SELECAO.  }
  //    end;{if}
  //  end;{for}

 //   Produto[0]:=lbl_edtCodBarras.Text;
 //   Produto[1]:=cboProduto.Text;
//    Produto[2]:=lbl_edtVlrUnit.Text;
  //  Produto[4]:=lbl_X.Caption;



//    lbl_CodBarras.Caption := Produto[0];
 //   lbl_Traco.Caption := '-';
 //   lbl_NomeProd.Caption := Produto[1];
//    lbl_Valor.Caption := Produto[2];


    if lbl_NomeProd.Caption <> '' Then begin

    lbl_edtInformacao.Caption := '';

    end;

   end;{if lblcodprod}


    //ROTINA PARA EXIBIR A IMAGEM DO PRODUTO
 {   if Not FileExists(ExtractFilePath(Application.ExeName) + 'Data\RunTime\ProdImagens\' + lbl_NomeProd.Caption + '.jpg') Then begin

      imgProduto.Picture := Nil; //LIMPA A IMAGEM
      ImagemProduto := '';

    end else begin

      try
        OleGraphic := TOleGraphic.Create;
        fs         := TFileStream.Create(ExtractFilePath(Application.ExeName) //EXIBE A IMAGEM DO PRODUTO
                                        + 'Data\RunTime\ProdImagens\' + lbl_NomeProd.Caption + '.jpg', fmOpenRead or fmSharedenyNone);
        OleGraphic.LoadFromStream(fs);
        imgProduto.Picture.Assign(OleGraphic);

       // imgProduto.Picture.LoadFromFile();

        ImagemProduto := ExtractFilePath(Application.ExeName) //EXIBE A IMAGEM DO PRODUTO
                                        + 'Data\RunTime\ProdImagens\' + lbl_NomeProd.Caption + '.jpg';

      finally
        fs.Free;
        OleGraphic.Free
      end;

     end; }

    TrimAppMemorySize;
    
  end;{with}


end;

procedure TfrmVendasLoja.lbl_edtCodProdKeyPress(Sender: TObject;
  var Key: Char);

begin

  if Key = #13 Then begin

    lbl_edtQtde.Text := '1';
    lbl_edtVlrUnit.SetFocus;

  end;{if}

end;

procedure TfrmVendasLoja.lbl_edtVlrTotalKeyPress(Sender: TObject;
  var Key: Char);

var

///Produto : Array[0..8] of String;
CodProd,NomeProd,QtdeProd,XProd,VlrUnitProd,IgualProd,VlrTotalProd,Cancela : String;
Valor1, Valor2, Valor3, Valor4 : Real;
//VlrSubTotal, VlrTotal, VlrUnit : Real;
i : Integer;

begin


  with dmModule do begin

  if Key = #13 Then begin

    if lbl_edtVlrTotal.Text > '0,00' Then begin

    {  CodProd      :=lbl_edtCodProd.Text;
      NomeProd     :=lbl_NomeProd.Caption;
      QtdeProd     :=lbl_edtQtde.Text;
      XProd        :=lbl_X.Caption;
      VlrUnitProd  :=lbl_edtVlrUnit.Text;
      IgualProd    :=lbl_edtIgual.Caption;
      VlrTotalProd :=lbl_edtVlrTotal.Text;
      Cancela      :='Cancelado item abaixo'; }

      if lbl_CancelaItem.Caption = '' Then begin


          if lbl_IdOrc.Caption <> '' Then begin

            GravaOrcamento;

            Commit(ibServsVenda);
            ibServsVenda.Close;
            ibServsVenda.SQL.Clear;                                                                                                                    //
            ibServsVenda.SQL.Add('SELECT TBLSERVICOSVENDAS.NOMEPROD,TBLSERVICOSVENDAS.VLRUNIT,TBLSERVICOSVENDAS.IDSERVS,TBLSERVICOSVENDAS.IDPROD,TBLSERVICOSVENDAS.IDORCAMENTO,'                                                          // ORDER BY TBLSERVICOSVENDAS.IDSERVS DESC
            + 'TBLSERVICOSVENDAS.VLRTOTAL,TBLSERVICOSVENDAS.VALORB,TBLSERVICOSVENDAS.VALORC,TBLSERVICOSVENDAS.QTDE FROM TBLSERVICOSVENDAS WHERE TBLSERVICOSVENDAS.IDORCAMENTO=''' + lbl_IdOrc.Caption + ''' ');
            ibServsVenda.Open;

           (ibServsVenda.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
           (ibServsVenda.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
           (ibServsVenda.FieldByName('VALORB') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
           (ibServsVenda.FieldByName('VALORC') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
           (ibServsVenda.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO


          end;

        if lbl_CodVenda.Caption > '0' Then begin

          if lbl_IdOrc.Caption = '' Then begin

            GravaCx;

            Commit(ibServsVenda);
            ibServsVenda.Close;
            ibServsVenda.SQL.Clear;                                                                                                                    //
            ibServsVenda.SQL.Add('SELECT TBLSERVICOSVENDAS.NOMEPROD,TBLSERVICOSVENDAS.VLRUNIT,TBLSERVICOSVENDAS.IDSERVS,TBLSERVICOSVENDAS.IDPROD,'
            + 'TBLSERVICOSVENDAS.VLRTOTAL,TBLSERVICOSVENDAS.VALORB,TBLSERVICOSVENDAS.VALORC,TBLSERVICOSVENDAS.QTDE FROM TBLSERVICOSVENDAS WHERE TBLSERVICOSVENDAS.IDSERVSVENDA=''' + lbl_CodVenda.Caption + ''' ORDER BY TBLSERVICOSVENDAS.IDSERVS DESC');
            ibServsVenda.Open;

           (ibServsVenda.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
           (ibServsVenda.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
           (ibServsVenda.FieldByName('VALORB') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
           (ibServsVenda.FieldByName('VALORC') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
           (ibServsVenda.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO


          end;


        end;

      {  if lbl_CodVendaMPV.Caption > '0' Then begin

        GravaMPV;

        end; }

      {  listboxCupom.Items.Add(CodProd + ' ' + '-' + ' ' + NomeProd);
        listboxCupom.Items.Add(QtdeProd + ' ' + ' ' + ' ' + XProd + ' ' + ' ' + ' ' + VlrUnitProd + ' ' + ' ' + ' ' + IgualProd  + ' ' + ' ' + ' ' + VlrTotalProd);

        for i := 0 to listboxCupom.Items.Count-1 do begin

          SendMessage(listboxCupom.Handle,WM_VSCROLL,SB_LINEDOWN,0);

        end;//for }

      end;//if



      if lbl_CancelaItem.Caption <> '' Then begin

       // if lbl_CancelaItem.Caption = '' Then begin

        GravaCancelamento;

        ibServsVenda.Close;
        ibServsVenda.SQL.Clear;
        ibServsVenda.SQL.Add('SELECT TBLSERVICOSVENDAS.NOMEPROD,TBLSERVICOSVENDAS.VLRUNIT,'                                                           ///   ORDER BY TBLSERVICOSVENDAS.IDSERVS DESC
        + 'TBLSERVICOSVENDAS.VLRTOTAL,TBLSERVICOSVENDAS.VALORB,TBLSERVICOSVENDAS.VALORC,TBLSERVICOSVENDAS.QTDE FROM TBLSERVICOSVENDAS WHERE TBLSERVICOSVENDAS.IDSERVSVENDA=''' + lbl_CodVenda.Caption + '''');
        ibServsVenda.Open;

       (ibServsVenda.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
       (ibServsVenda.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
       (ibServsVenda.FieldByName('VALORB') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
       (ibServsVenda.FieldByName('VALORC') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
       (ibServsVenda.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO

     //   end;

        //listboxCupom.Font.Color := clRed;

      {210711  listboxCupom.Items.Add('-----------------------------------------------');
        listboxCupom.Items.Add(Cancela);
        listboxCupom.Items.Add(CodProd + ' ' + '-' + ' ' + NomeProd);
        listboxCupom.Items.Add(QtdeProd + ' ' + ' ' + ' ' + XProd + ' ' + ' ' + ' ' + VlrUnitProd + ' ' + ' ' + ' ' + IgualProd  + ' ' + ' ' + ' ' + VlrTotalProd);
        listboxCupom.Items.Add('-----------------------------------------------');

        for i := 0 to listboxCupom.Items.Count-1 do begin

          SendMessage(listboxCupom.Handle,WM_VSCROLL,SB_LINEDOWN,0);

        end;//for }

      end;//if

  ////////////////////////////////////////////////////////////////////////////////
      if (lbl_edtSubTotal.Caption = '0,00') and (lbl_CancelaItem.Caption = '') Then begin

        lbl_edtSubTotal.Caption  := lbl_edtVlrTotal.Text;

      end else

      if (lbl_edtSubTotal.Caption > '0,00') and (lbl_CancelaItem.Caption = '') Then begin

        Valor1 := StrToFloat(StringReplace(lbl_edtSubTotal.Caption,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
        Valor2 := StrToFloat(StringReplace(lbl_edtVlrTotal.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
        Valor3 := (Valor1)+ (Valor2);

       { if(lbl_TrocaMercadoria.Caption = 'Troca')Then begin

          if(Valor1 > Valor2) Then begin

            Valor3 := (Valor1)-(Valor2);
            lbl_edtSubTotal.Caption := FormatFloat(',0.00',(Valor3));

          end else begin

            Valor3 := (Valor1)-(Valor2);
            lbl_edtSubTotal.Caption := FormatFloat(',0.00',(Valor3));

          end;  

        end else begin }

          lbl_edtSubTotal.Caption := FormatFloat(',0.00',(Valor3));

       // end;
            
      end;{if}

    {  if lbl_edtSubTotal.Text = '0,00' Then begin

      lbl_edtSubTotal.Text  := lbl_Valor.Caption;

      Valor1 := StrToFloat(StringReplace(lbl_edtSubTotal.Text,ThousandSeparator,'',[rfReplaceAll]));

     end else begin

      Valor1 := StrToFloat(StringReplace(lbl_edtSubTotal.Text,ThousandSeparator,'',[rfReplaceAll]));
      Valor2 := StrToFloat(lbl_Valor.Caption);
      Valor3 := StrToFloat(FormatFloat(',0.00',(Valor1)+ (Valor2)));
      lbl_edtSubTotal.Text := FormatFloat(',0.00',(Valor3));   }

   //  end;{if}

////////////////////////////////////////////////////////////////////////////////

      if  (lbl_CancelaItem.Caption <> '') Then begin

        Valor1 := StrToFloat(StringReplace(lbl_edtSubTotal.Caption,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
        Valor2 := StrToFloat(StringReplace(lbl_edtVlrTotal.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
        Valor3 := (Valor1)-(Valor2);
        lbl_edtSubTotal.Caption := FormatFloat(',0.00',(Valor3));
        lbl_CancelaItem.Caption := '';

      end;//if}

////////////////////////////////////////////////////////////////////////////////

   {  if ConfirmaVendaCx = True Then begin

       GravaCx;//procedimento para gravar a venda

     end else if ConfirmaVendaCx = False Then begin

       GravaCancelamento;

     end; }

      lbl_edtIDProdCX.Text := '';
      lbl_edtQtde.Text := '1';
      lbl_edtVlrTotal.Text   := '0,00';
      lbl_edtVlrUnit.Text := '0,00';
      lbl_TipoPreco.Caption := '';
      lbl_edtCodBarras.SetFocus;
      lbl_NomeProd.Caption := '';
      lbl_edtPacoteFardo.Caption := '';
      lbl_QtdeEstoque.Caption := '';
      lbl_TrocaMercadoria.Caption := '';
      ckAtualizaValor.Checked := False;

      if lbl_Cliente.Caption = '' Then begin

        lbl_TipoPreco.Caption := '';

      end;  

    end else begin

      Application.MessageBox('Para concluir um lan�amento selecione um produto ou servi�o?','Lan�amento em branco',+MB_YESNO+MB_ICONQUESTION);

    end;//iflblvlrtotal

  end;{if}

    TrimAppMemorySize;
    
  end;//with
  
end;

procedure TfrmVendasLoja.lbl_edtCodBarrasChange(Sender: TObject);

var

NomeUnidadeVenda,strVlrKilo, TextoCodigo, strQtde  : String;
Valor1,Valor2,Valor3,Valor4,rVlrKilo, VlrUnit, VlrTroca, VlrCorrigido, rQtde : Real;
//strTextoCodigo, strCodBarras : TProdutos;
strCodBarras : TProdutos;
intQtde, intVendaEstoqueNulo, ConfirmaVendaEstoque : Integer;
intIdProd : Integer;

begin

  with dmModule do begin

  //instanciando a classe TCadastro
 // strTextoCodigo := TProdutos.Create();
  strCodBarras := TProdutos.Create();

//  try

    if (lbl_edtCodBarras.Text <> '') Then begin

    TextoCodigo := lbl_edtCodBarras.Text;

    if (Length(TextoCodigo) = 13) and (TextoCodigo[1] = '2') then begin//Verifica se � produto de pesagem

      lbl_edtCodBarras.Text := Copy(TextoCodigo,2,6);

      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT CADPRODUTOS.NOME,CADPRODUTOS.VALORCUSTO,CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORVENDAB,CADPRODUTOS.IDPROD,'
      + 'CADPRODUTOS.VALORVENDAC,CADPRODUTOS.VALORVENDAD,CADPRODUTOS.REF,CADPRODUTOS.CODBARRAS,CADPRODUTOS.VLRPACOTEFARDO,CADPRODUTOS.QTDEPACOTEFARDO,'          /// or(CADPRODUTOS.REF=''' + lbl_edtCodBarras.Text + ''')
      + 'CADPRODUTOS.QTDEB,CADPRODUTOS.QTDEC,CADPRODUTOS.QTDED,TBLUNIDADEDEVENDA.TIPODEUNIDADE FROM CADPRODUTOS '
      + 'LEFT OUTER JOIN TBLUNIDADEDEVENDA ON CADPRODUTOS.IDUNIDVENDA=TBLUNIDADEDEVENDA.IDTIPOUNID WHERE(CADPRODUTOS.CODBARRAS=''' + lbl_edtCodBarras.Text + ''')');
      ibProdutos.Open;

      lbl_edtIDProdCX.Text := IntToStr(ibProdutos.FieldByName('IDPROD').AsInteger);

      IDProdVenda := ibProdutos.FieldByName('IDPROD').AsInteger;


      NomeUnidadeVenda := ibProdutos.FieldByName('TIPODEUNIDADE').AsString;
                                                                     // or(NomeUnidadeVenda = 'UN')
      if (NomeUnidadeVenda = 'KG/QTDE')or(NomeUnidadeVenda = 'KG/VLR')Then begin


          if ibProdutos.RecordCount > 0 Then begin

            if NomeUnidadeVenda = 'KG/QTDE' Then begin

              lbl_edtQtde.Text := Copy(TextoCodigo,9,4);//Coloco a quantidade no Edit de quantidade
              lbl_edtCodBarras.Text := Copy(TextoCodigo,2,6);//Coloco o c�digo do produto no Edit de c�digo do produto

              Valor1 := (ibProdutos.FieldByName('VALORVENDAA').AsFloat);
              Valor2 := Valor1 ;

              Valor3 := StrToFloat(StringReplace(lbl_edtQtde.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

                Valor3 := Valor3 / 1000;
                lbl_edtQtde.Text := FormatFloat(CasasDecimais('Combustiveis'),Valor3);

              Valor4 := Valor2 * Valor3;

              lbl_edtVlrTotal.Text := FormatFloat(CasasDecimais('Produtos'),Valor4);

            end;

            if NomeUnidadeVenda = 'KG/VLR' Then begin


             /// lbl_edtQtde.Text := Copy(TextoCodigo,9,4);//Coloco a quantidade no Edit de quantidade
              lbl_edtCodBarras.Text := Copy(TextoCodigo,2,6);//Coloco o c�digo do produto no Edit de c�digo do produto

              Valor1 := (ibProdutos.FieldByName('VALORVENDAA').AsFloat);
              Valor2 := Valor1 ;

              strVlrKilo := Copy(TextoCodigo,9,4);

              rVlrKilo   := StrToFloat(StringReplace(strVlrKilo,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
              strVlrKilo := FormatFloat(CasasDecimais('Produtos'),rVlrKilo/100);
              rVlrKilo   := StrToFloat(StringReplace(strVlrKilo,FormatSettings.ThousandSeparator,',',[rfReplaceAll]));


                Valor3 := rVlrKilo / Valor2;
                lbl_edtQtde.Text := FormatFloat(CasasDecimais('Combustiveis'),Valor3);

              Valor4 := Valor2 * Valor3;

              lbl_edtVlrTotal.Text := FormatFloat(CasasDecimais('Produtos'),Valor4);

            end;

          end;

          {  if NomeUnidadeVenda = 'UN' Then begin

              lbl_edtCodBarras.Text := Copy(TextoCodigo,2,6);//Coloco o c�digo do produto no Edit de c�digo do produto

            end;  }
           /// Valor4 := Valor3 /100;

             { if  (TipoPreco = 'A') Then begin

              lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);

              end else if  (TipoPreco = 'B') Then begin

              lbl_edtQtde.Text := FormatFloat('0',ibProdutos.FieldByName('QTDEB').AsFloat);

              lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Combustiveis'),ibProdutos.FieldByName('VALORVENDAB').AsFloat);

              lbl_NomeProd.Caption := ibProdutos.FieldByName('NOME').AsString;

              end else if  (TipoPreco = 'C') Then begin

              lbl_edtQtde.Text := FormatFloat('0',ibProdutos.FieldByName('QTDEC').AsFloat);

              lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Combustiveis'),ibProdutos.FieldByName('VALORVENDAC').AsFloat);

              lbl_NomeProd.Caption := ibProdutos.FieldByName('NOME').AsString;


              end else if  (TipoPreco = 'D') Then begin

              lbl_edtQtde.Text := FormatFloat('0',ibProdutos.FieldByName('QTDED').AsFloat);

              lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Combustiveis'),ibProdutos.FieldByName('VALORVENDAD').AsFloat);

              lbl_NomeProd.Caption := ibProdutos.FieldByName('NOME').AsString;

              end; }

              lbl_NomeProd.Caption := ibProdutos.FieldByName('NOME').AsString;

         if lbl_edtIDProdCX.Text > '0' Then begin

         {  intQtde := StrToInt(lbl_edtQtde.Text);

           if intQtde > 100 Then begin

             ShowMessage('Aten��o a qtde. est� maior que 100?');

           end else begin  }

             lbl_edtQtdeExit(Sender);

          // end;

        end;

      end;  

      end else begin

      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT NOME,VALORCUSTO,VALORVENDAA,VALORVENDAB,IDPROD,'                        /// or(CADPRODUTOS.REF=''' + lbl_edtCodBarras.Text + ''')
      + 'VALORVENDAC,VALORVENDAD,REF,CODBARRAS,VLRPACOTEFARDO,QTDEPACOTEFARDO,'
      + 'QTDEB,QTDEC,QTDED FROM CADPRODUTOS WHERE(CADPRODUTOS.CODBARRAS=''' + lbl_edtCodBarras.Text + ''')');
      ibProdutos.Open;

      intIdProd := ibProdutos.FieldByName('IDPROD').AsInteger;


      if ibProdutos.RecordCount > 0 Then begin

        lbl_edtIDProdCX.Text := IntToStr(intIdProd);

        Commit(ibEntrProdEstoque);
        ibEntrProdEstoque.Close;
        ibEntrProdEstoque.SQL.Clear;
        ibEntrProdEstoque.SQL.Add('SELECT * FROM TBLENTRADAESTOQUEPROD WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + lbl_edtIDProdCX.Text + '''');
        ibEntrProdEstoque.Open;

        strQtde := FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat);
        rQtde := StrToFloat(StringReplace(strQtde,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
        intQtde := Trunc(rQtde);

        Commit(ibConfig);
        ibConfig.Close;
        ibConfig.SQL.Clear;
        ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
        ibConfig.Open;

        intVendaEstoqueNulo := ibConfig.FieldByName('BLOQUEIAVENDAESTOQUE').AsInteger;

        lbl_edtIDProdCX.Text := IntToStr(ibProdutos.FieldByName('IDPROD').AsInteger);

        if lbl_TipoPreco.Caption = '' Then begin

          TipoPreco := 'A';

        end;

        IDProdVenda := ibProdutos.FieldByName('IDPROD').AsInteger;

        if lbl_edtPacoteFardo.Caption = '' Then begin

          if ibConfig.FieldByName('TRESCASASDECIMAIS').AsString = 'Sim' Then begin

            if  (TipoPreco = 'A') Then begin

              lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);

            end else if  (TipoPreco = 'B') Then begin

            lbl_edtQtde.Text := FormatFloat('0',ibProdutos.FieldByName('QTDEB').AsFloat);

            lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Combustiveis'),ibProdutos.FieldByName('VALORVENDAB').AsFloat);

            lbl_NomeProd.Caption := ibProdutos.FieldByName('NOME').AsString;

            end else if  (TipoPreco = 'C') Then begin

            lbl_edtQtde.Text := FormatFloat('0',ibProdutos.FieldByName('QTDEC').AsFloat);

            lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Combustiveis'),ibProdutos.FieldByName('VALORVENDAC').AsFloat);

            lbl_NomeProd.Caption := ibProdutos.FieldByName('NOME').AsString;


            end else if  (TipoPreco = 'D') Then begin

            lbl_edtQtde.Text := FormatFloat('0',ibProdutos.FieldByName('QTDED').AsFloat);

            lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Combustiveis'),ibProdutos.FieldByName('VALORVENDAD').AsFloat);

            lbl_NomeProd.Caption := ibProdutos.FieldByName('NOME').AsString;

            end;

            lbl_NomeProd.Caption := ibProdutos.FieldByName('NOME').AsString;

            if lbl_edtQtde.Text = '0' then begin

             lbl_edtQtde.Text := '1';

            end;

          end else begin

            if  (TipoPreco = 'A') Then begin

              if lbl_TrocaMercadoria.Caption = 'Troca'Then begin

                VlrTroca := StrToFloat(StringReplace(lbl_edtVlrUnit.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
                VlrUnit  := StrtoFloat(StringReplace(FloattoStr(ibProdutos.FieldByName('VALORVENDAA').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
                VlrCorrigido := VlrUnit - VlrTroca;
                lbl_edtVlrUnit.Text := FormatFloat(',0.00',(VlrCorrigido));

              end else if lbl_TrocaMercadoria.Caption = ''then

              lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);

            end else if  (TipoPreco = 'B') Then begin

            lbl_edtQtde.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('QTDEB').AsFloat);

            lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAB').AsFloat);

            lbl_NomeProd.Caption := ibProdutos.FieldByName('NOME').AsString;

            end else if  (TipoPreco = 'C') Then begin

            lbl_edtQtde.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('QTDEC').AsFloat);

            lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAC').AsFloat);

            lbl_NomeProd.Caption := ibProdutos.FieldByName('NOME').AsString;


            end else if  (TipoPreco = 'D') Then begin

            lbl_edtQtde.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('QTDED').AsFloat);

            lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAD').AsFloat);

            lbl_NomeProd.Caption := ibProdutos.FieldByName('NOME').AsString;

            end;

            lbl_NomeProd.Caption := ibProdutos.FieldByName('NOME').AsString;

            if lbl_edtQtde.Text = '0' then begin

             lbl_edtQtde.Text := '1';

            end;

          end;//if

        end;//if pacotefardo = ''


        if lbl_edtPacoteFardo.Caption <>  '' Then begin

          lbl_edtQtde.Text := FormatFloat('0',ibProdutos.FieldByName('QTDEPACOTEFARDO').AsFloat);

          lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VLRPACOTEFARDO').AsFloat);

          lbl_NomeProd.Caption := ibProdutos.FieldByName('NOME').AsString;

        end;//if pacote fardo <> ''

         if lbl_edtIDProdCX.Text > '0' Then begin

           {intQtde := StrToInt(lbl_edtQtde.Text);

           if intQtde > 100 Then begin

             ShowMessage('Aten��o a qtde. est� maior que 100?');

           end else begin  }

             if (intVendaEstoqueNulo = 1)and(intQtde <= 0) Then begin

               ConfirmaVendaEstoque := Application.MessageBox('Produto indispon�vel no estoque,'
               + #13 + 'clique em sim para continuar e n�o para verifica��o','Notifica��o: Produto sem estoque',MB_YESNO + MB_ICONQUESTION);

               if ConfirmaVendaEstoque = 6 then begin

                 lbl_edtQtdeExit(Sender);

               
               end else begin

                 lbl_edtVlrUnit.Text := '0,00';
                 lbl_edtVlrTotal.Text := '0,00';
                 lbl_edtCodBarras.Text := '';
                 lbl_edtCodProd.Text := '';
                 lbl_edtInformacao.Caption := '';
                 lbl_NomeProd.Caption := '';
                 lbl_edtQtde.Text := '1';
                 lbl_edtCodBarras.SetFocus;

               end;

             end;

        end;

      end;//if recordcount

    end;//if cod barras

    end;

  end;{with}

end;

procedure TfrmVendasLoja.lbl_edtCodBarrasKeyPress(Sender: TObject;
  var Key: Char);

var

//Produto : Array[0..3] of String;

CodBarras,NomeProd,VlrUnit : String;

begin

    CodBarras :='';
    NomeProd  :='';
    VlrUnit   :='';

  if Key = #13 Then begin

    if lbl_edtCodBarras.Text <> '' Then begin

    CodBarras :=lbl_edtCodBarras.Text;
    NomeProd  :=lbl_NomeProd.Caption;
    VlrUnit   :=lbl_edtVlrUnit.Text;
  //  Produto[4]:=lbl_X.Caption;



 //  lbl_CodBarras.Caption := Produto[0];
//    lbl_Traco.Caption := '-';
    lbl_NomeProd.Caption := NomeProd;
 //   lbl_Valor.Caption := Produto[2];


      lbl_edtQtde.Text := '1';
      lbl_edtQtde.SetFocus;
    // lbl_edtVlrTotal.SetFocus;
     
    end;

      if lbl_edtCodBarras.Text = '' then begin

        lbl_edtCodProd.SetFocus;

      end;

  end;

end;

procedure TfrmVendasLoja.cboTipoCompromissoChange(Sender: TObject);
begin
  lbl_edtVlrTotal.SetFocus;
end;

procedure TfrmVendasLoja.lbl_edtVlrSangriaKeyPress(Sender: TObject;
  var Key: Char);
var

Produto : Array[0..2] of String;

begin

  if Key = #13 Then begin

 //   Produto[0]:=lbl_Sangria.Caption;
 //   Produto[1]:=lbl_edtVlrSangria.Text;
  {  Produto[2]:=cboTipoCompromisso.Text;
    Produto[3]:=lbl_edtQtde.Text;
    Produto[4]:=lbl_X.Caption;
    Produto[5]:=lbl_edtVlrUnit.Text;
    Produto[6]:=lbl_edtIgual.Caption;
    Produto[7]:=lbl_edtVlrTotal.Text;}


  //  listboxCupom.Items.Add(Produto[0] + ' ' + '-' + ' ' + ' ' + 'R$' + ' ' + Produto[1]);
  //  listboxCupom.Items.Add(Produto[3] + ' ' + ' ' + ' ' + Produto[4] + ' ' + ' ' + ' ' + Produto[5] + ' ' + ' ' + ' ' + Produto[6]  + ' ' + ' ' + ' ' + Produto[7]);


  //  ibeaOkProdClick(Sender);


  end;{if}


end;

procedure TfrmVendasLoja.lbl_edtCodBarrasExit(Sender: TObject);

//var

//i : Integer;
//OleGraphic: TOleGraphic;
//fs: TFileStream;

begin

  with dmModule do begin

  tedit(sender).color := clwindow;

      //ROTINA PARA EXIBIR A IMAGEM DO PRODUTO
   {   if Not FileExists(ExtractFilePath(Application.ExeName) + 'Data\RunTime\ProdImagens\' + lbl_NomeProd.Caption + '.jpg') Then begin

        imgProduto.Picture := Nil; //LIMPA A IMAGEM
        ImagemProduto := '';

      end else begin

        try
          OleGraphic := TOleGraphic.Create;
          fs         := TFileStream.Create(ExtractFilePath(Application.ExeName) //EXIBE A IMAGEM DO PRODUTO
                                          + 'Data\RunTime\ProdImagens\' + lbl_NomeProd.Caption + '.jpg', fmOpenRead or fmSharedenyNone);
          OleGraphic.LoadFromStream(fs);
          imgProduto.Picture.Assign(OleGraphic);

         // imgProduto.Picture.LoadFromFile();

          ImagemProduto := ExtractFilePath(Application.ExeName) //EXIBE A IMAGEM DO PRODUTO
                                          + 'Data\RunTime\ProdImagens\' + lbl_NomeProd.Caption + '.jpg';

        finally
          fs.Free;
          OleGraphic.Free
        end;

       end;  }
 /// lbl_edtQtdeExit(Sender);
  end;{with}

end;

procedure TfrmVendasLoja.lbl_edtDescVendaExit(Sender: TObject);

var

Valor1,Valor2 : Real;


begin
 { with dmModule do begin

   if lbl_edtDescVenda.Text <> '' Then begin //se for em branco executa rotina abaixo.

      if (Pos(',',lbl_edtDescVenda.Text)>0) and (lbl_edtDescVenda.Text <> '') Then begin

        Valor1 := StrToFloat(StringReplace(lbl_edtDescVenda.Text,ThousandSeparator,'',[rfReplaceAll]));
        Valor2 := StrToFloat(StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]));
        lbl_edtVlrTotal.Text := FormatFloat(',0.00',(Valor2 - Valor1));


      end else begin

        Valor1 := StrToFloat(StringReplace(lbl_edtDescVenda.Text,ThousandSeparator,'',[rfReplaceAll]));
        Valor2 := StrToFloat(StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]));
        lbl_edtVlrTotal.Text := FormatFloat(',0.00',(Valor2 - Valor1)); }


     // end;{if}

  //  end;{if}

 //   lbl_edtDescVenda.Text} := FormatFloat(CasasDecimais('Produtos'),StrToFloat(lbl_edtDescVenda.Text)); //FormatFloat(casa',0.00',StrToFloat(lbl_edtValor.Text));

//  end;{with}


end;

procedure TfrmVendasLoja.lbl_edtDescVendaKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtVlrTotal.SetFocus;

  end;//if//

end;

procedure TfrmVendasLoja.lbl_edtCodCartaoExit(Sender: TObject);

var

ValorPosVenda : Real;
TotalPosVenda,VlrTotalPosVenda : String;
Produto : Array[0..10]of String;
begin

  with dmModule do begin

    ibServsVenda.Close;
    ibServsVenda.SQL.Clear;
    ibServsVenda.SQL.Add('SELECT TBLSERVICOSVENDAS.IDPROD,TBLSERVICOSVENDAS.VLRUNIT,'
    + 'TBLSERVICOSVENDAS.QTDE,TBLSERVICOSVENDAS.DATA,TBLSERVICOSVENDAS.ESTOQUE,'
    + 'TBLSERVICOSVENDAS.HORA,TBLSERVICOSVENDAS.VLRTOTAL,'
    + 'TBLSERVICOSVENDAS.VALORB,TBLSERVICOSVENDAS.VALORC,CADPRODUTOS.NOME As PRODUTO,'
    + 'TBLSERVICOSVENDAS.IDSERVSVENDA FROM TBLSERVICOSVENDAS '
    + 'LEFT OUTER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD '
    + 'WHERE  TBLSERVICOSVENDAS.CODPOSVENDA=''' + lbl_edtCodCartao.Text + '''');
    ibServsVenda.Open;

    while not ibServsVenda.Eof do begin//enquanto nao for fim de registro

      if ValorPosVenda = 0 Then begin//se variavel for igual a zero

        //atribui o vlr do campo abaixo na variavel
        ValorPosVenda := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

      end else begin

        //atribui na variavel substituindo o ponto para vlr em branco
        TotalPosVenda := StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
        //atribui a variavel o valor separando por ponto
        ValorPosVenda := ValorPosVenda + StrtoFloat(StringReplace(TotalPosVenda,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

      end;{if}

////////////////////////////////////////////////////////////////////////////////

      if lbl_edtCodCartao.Text > '0,00' Then begin

        Produto[0]:=IntToStr(ibServsVenda.FieldByName('IDPROD').AsInteger);
        Produto[1]:=ibServsVenda.FieldByName('PRODUTO').AsString;
        Produto[3]:=ibServsVenda.FieldByName('QTDE').AsString;
        Produto[4]:=lbl_X.Caption;
        Produto[5]:=FormatFloat(CasasDecimais('Produtos'),ibServsVenda.FieldByName('VLRUNIT').AsFloat);
        Produto[6]:=lbl_edtIgual.Caption;
        Produto[7]:=FormatFloat(CasasDecimais('Produtos'),ibServsVenda.FieldByName('VLRTOTAL').AsFloat);
     //   Produto[8]:=ibServsVenda.FieldByName('CODBARRAS').AsString;
     //   Produto[10]:=lbl_CodVenda.Caption;
     {  if lbl_Sangria.Caption <> '' Then begin
        Produto[8]:=lbl_Sangria.Caption;
       end; }                                                                   //  +Produto[8]

        listboxCupom.Items.Add(Produto[0] + ' ' + '-' + ' ' + Produto[1]);
        listboxCupom.Items.Add(Produto[3] + ' ' + ' ' + ' ' + Produto[4] + ' ' + ' ' + ' ' + Produto[5] + ' ' + ' ' + ' ' + Produto[6]  + ' ' + ' ' + ' ' + Produto[7]);

     //   lbl_CodBarras.Caption := Produto[8];
     //   lbl_Traco.Caption := '-';
     //   lbl_NomeProd.Caption := Produto[1];
     //   lbl_Valor.Caption := Produto[7];

     //   lbl_TipoPreco.Caption := '';

      end;//if nped
  ////////////////////////////////////////////////////////////////////////////////


     ibServsVenda.Next;

    end;//while

    lbl_edtSubTotal.Caption := FormatFloat(',0.00',ValorPosVenda);

  end;//with

end;

procedure TfrmVendasLoja.lbl_edtFuncComissaoKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtCodBarras.SetFocus;

  end;//if

end;

procedure TfrmVendasLoja.lbl_edtFuncComissaoExit(Sender: TObject);
begin

  with dmModule do begin

    Commit(ibUser);
    ibUser.Close;
    ibUser.SQL.Clear;
    ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + lbl_edtFuncComissao.Text + '''');
    ibUser.Open;

    if ibUser.RecordCount > 0 Then begin

      lbl_NomeFuncComissao.Caption := 'Funcion�rio:'+ibUser.FieldByName('LOGIN').AsString;

    end;//if

  end;//with

end;

procedure TfrmVendasLoja.Venda2Click(Sender: TObject);
begin
frmBuscaClientes.ShowModal;
end;

procedure TfrmVendasLoja.InstrucoesCaixa1Click(Sender: TObject);
begin
frmInstrucoesCaixa.ShowModal;
end;

procedure TfrmVendasLoja.NotaPaulista1Click(Sender: TObject);
begin

frmNFPaulista.ShowModal;

end;

procedure TfrmVendasLoja.LimparClienteCnpj1Click(Sender: TObject);
begin

lbl_Cliente.Caption := '';
lbl_edtCnpjCpf.Caption := '';
lbl_CnpjCpfP.Caption := '';

end;

procedure TfrmVendasLoja.LeituraX1Click(Sender: TObject);

//var

//DarumaMFD,EpsonMFD,BematechMFD : String;
//iRetorno_Epson : Integer;
begin

  with dmModule do begin

   { Commit(ibConfig);
    ibConfig.Close;
    ibConfig.SQL.Clear;
    ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
    ibConfig.Open;

    DarumaMFD          := ibConfig.FieldByName('DARUMAMFD').AsString;
    EpsonMFD           := ibConfig.FieldByName('EPSONMFD').AsString;
    BematechMFD        := ibConfig.FieldByName('BEMATECHMFD').AsString;

      if BematechMFD = 'Sim' Then begin

        iRetorno := Bematech_FI_LeituraX();

      end;

      if (DarumaMFD = 'Sim') Then begin

        Int_Retorno := iLeituraX_ECF_Daruma();

      end;

      if (EpsonMFD = 'Sim') Then begin

        iRetorno := EPSON_RelatorioFiscal_LeituraX();

      end; }

  end;//with 

end;

procedure TfrmVendasLoja.LeituraZ1Click(Sender: TObject);
{var
   Int_Confirma, iRetorno: Integer;
   DarumaMFD,EpsonMFD,BematechMFD : String;
   szCRZ:String;
   iConta:Integer; }

begin

{ with dmModule do begin

    Commit(ibConfig);
    ibConfig.Close;
    ibConfig.SQL.Clear;
    ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
    ibConfig.Open;

    DarumaMFD          := ibConfig.FieldByName('DARUMAMFD').AsString;
    EpsonMFD           := ibConfig.FieldByName('EPSONMFD').AsString;
    BematechMFD        := ibConfig.FieldByName('BEMATECHMFD').AsString;

    int_Confirma:= Application.MessageBox ('Tem Certeza que Deseja Efetuar a ReducaoZ?' , 'Daruma Framework',mb_YesNo+mb_DefButton2+mb_IconQuestion);
    if (int_Confirma = 6) then begin  //Int_Confirma = 6(Sim), = 7(N�o), � o valor de retorno do Application.MessageBox


        if BematechMFD = 'Sim' Then begin

          iRetorno := Bematech_FI_ReducaoZ( pchar( '' ), pchar( '' ) )

        end;
        
        if (DarumaMFD = 'Sim') Then begin

          Int_Retorno := iReducaoZ_ECF_Daruma(' ',' ');

        end;

        if (EpsonMFD = 'Sim') Then begin

          For iConta := 1 To 20 Do
            szCRZ := szCRZ + ' ';

          iRetorno := EPSON_RelatorioFiscal_RZ('', '', 2, PChar(szCRZ));
        ///  atualizaRetorno('EPSON_RelatorioFiscal_RZ');
          ShowMessage('Redu��o Z n�mero: ' + szCRZ);

        end;  


     end Else begin

         exit;

     end;

  end;}

end;

procedure TfrmVendasLoja.Sair1Click(Sender: TObject);

var
ConfirmaSaida : Integer;

begin

  if lbl_edtInformacao.Caption <> '' Then begin

   ConfirmaSaida := Application.MessageBox('Deseja realmente sair do caixa?','Notifica��o: Confirma��o de sa�da.',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

   if ConfirmaSaida = 6 Then begin

     ListBoxDadosEmpresa.Clear;
     frmVendasLoja.Close;

   end;//ifconfirmasaida

  end else begin

    Application.MessageBox('� necess�rio finalizar a venda para sair do caixa','Notifica��o:Venda n�o finalizada.',+MB_OK+MB_DEFBUTTON1+MB_ICONINFORMATION);

  end;

end;

procedure TfrmVendasLoja.CadastrarFormasdePagto1Click(Sender: TObject);

// var

// Str_Descricao_das_Formas_Pagamento: String;

 begin

{ Str_Descricao_das_Formas_Pagamento := 'Cartao;Cheque;Redecard;';

 Int_Retorno := Daruma_FI_ProgramaFormasPagamento( pchar( Str_Descricao_das_Formas_Pagamento ) ); }
///frmCadFormasPagto.ShowModal;
end;

procedure TfrmVendasLoja.btnVendeItemClick(Sender: TObject);

{var

//VARIAVEIS VENDE ITEM

Str_Codigo: String;

Str_Descricao: String;

Str_Aliquota: String;

Str_Tipo_de_Quantidade: String;

Str_Quantidade: String;

Int_Casas_Decimais: Integer;

Str_Valor_Unitario: String;

Str_Tipo_de_Desconto: String;

Str_Valor_do_Desconto: String;

ImpressaoTermica   : String;
DarumaMFD,AnalisedeRetorno      : String;
Daruma_ACK,Daruma_ST1,Daruma_ST2:Integer;
St1,St2 : Integer;}


begin

 { with dmModule do begin

         if lbl_NomeProd.Caption = '' Then begin


            ibProdutos.Close;
            ibProdutos.SQL.Clear;
            ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE IDPROD=''' + lbl_edtIDProdCX.Text + '''');
            ibProdutos.Open;

            Str_Aliquota := ibProdutos.FieldByName('ALIQUOTA').AsString;

          end;


            //VENDE ITEM

            Commit(ibConfig);
            ibConfig.Close;
            ibConfig.SQL.Clear;
            ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
            ibConfig.Open;

            ImpressaoTermica   := ibConfig.FieldByName('IMPRESSORATERMICA').AsString;
            DarumaMFD          := ibConfig.FieldByName('DARUMAMFD').AsString;
            AnalisedeRetorno   := ibConfig.FieldByName('ANALISARETORNO').AsString;

            if (DarumaMFD = 'Sim')and(ImpressaoTermica = 'Sim') Then begin

              Str_Codigo := Trim(lbl_edtCodBarras.Text);

              Str_Descricao := Trim(lbl_NomeProd.Caption);

              //Str_Aliquota := 'II';

              Str_Tipo_de_Quantidade := 'I';

              Str_Quantidade := Trim(lbl_edtQtde.Text);

              Int_Casas_Decimais := 2;

              Str_Valor_Unitario := Trim(lbl_edtVlrUnit.Text);

              Str_Tipo_de_Desconto := '$';

              Str_Valor_do_Desconto := '0,00';

              Int_Retorno := Daruma_FI_VendeItem(pchar( Str_Codigo ), pchar( Str_Descricao ), pchar( Str_Aliquota ), pchar( Str_Tipo_de_Quantidade ), pchar( Str_Quantidade ), Int_Casas_Decimais, pchar( Str_Valor_Unitario ), pchar( Str_Tipo_de_Desconto ), pchar( Str_Valor_do_Desconto ) );

              if AnalisedeRetorno = 'Sim' Then begin

                Daruma_Analisa_Retorno();

              end;

              end;
  end;//with  }

end;

procedure TfrmVendasLoja.lbl_edtVlrTotalExit(Sender: TObject);

{var

//VARIAVEIS VENDE ITEM

Str_Codigo: String;

Str_Descricao: String;

Str_Aliquota: String;

Str_Tipo_de_Quantidade: String;

Str_Quantidade: String;

Int_Casas_Decimais: Integer;

Str_Valor_Unitario: String;

Str_Tipo_de_Desconto: String;

Str_Valor_do_Desconto: String;

ImpressaoTermica, NomeProd   : String;
DarumaMFD,AnalisedeRetorno      : String;
Daruma_ACK,Daruma_ST1,Daruma_ST2:Integer;
St1,St2 : Integer; }


begin
tedit(sender).color := clwindow;
 { with dmModule do begin

         if lbl_edtIDProdCX.Text <> '' Then begin


            ibProdutos.Close;
            ibProdutos.SQL.Clear;
            ibProdutos.SQL.Add('SELECT CADPRODUTOS.*,'
            + 'LOCALESTOCAGEM.NOME As Estoque FROM CADPRODUTOS '
            + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE '
            + 'WHERE IDPROD=''' + lbl_edtIDProdCX.Text + '''');
            ibProdutos.Open;

            Str_Aliquota := ibProdutos.FieldByName('ALIQUOTA').AsString;
            NomeProd     := ibProdutos.FieldByName('NOME').AsString;

          end;


            //VENDE ITEM

            Commit(ibConfig);
            ibConfig.Close;
            ibConfig.SQL.Clear;
            ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
            ibConfig.Open;

            ImpressaoTermica   := ibConfig.FieldByName('IMPRESSORATERMICA').AsString;
            DarumaMFD          := ibConfig.FieldByName('DARUMAMFD').AsString;
            AnalisedeRetorno   := ibConfig.FieldByName('ANALISARETORNO').AsString;

            if (DarumaMFD = 'Sim')and(ImpressaoTermica = 'Sim') Then begin

              Str_Codigo := Trim(lbl_edtCodBarras.Text);

              Str_Descricao := Trim(NomeProd);

              //Str_Aliquota := 'II';

              Str_Tipo_de_Quantidade := 'I';

              Str_Quantidade := Trim(lbl_edtQtde.Text);

              Int_Casas_Decimais := 2;

              Str_Valor_Unitario := Trim(lbl_edtVlrUnit.Text);

              Str_Tipo_de_Desconto := '$';

              Str_Valor_do_Desconto := '0,00';

              Int_Retorno := Daruma_FI_VendeItem(pchar( Str_Codigo ), pchar( Str_Descricao ), pchar( Str_Aliquota ), pchar( Str_Tipo_de_Quantidade ), pchar( Str_Quantidade ), Int_Casas_Decimais, pchar( Str_Valor_Unitario ), pchar( Str_Tipo_de_Desconto ), pchar( Str_Valor_do_Desconto ) );

              if AnalisedeRetorno = 'Sim' Then begin

                Daruma_Analisa_Retorno();

              end;

            end;//if  
  end;//with   }

end;

procedure TfrmVendasLoja.AtualizaValor1Click(Sender: TObject);
begin

  if lbl_edtVlrUnit.Text > '0,00'Then begin

    lbl_edtVlrUnit.SetFocus;
    ckAtualizaValor.Checked := True;

  end;

end;

procedure TfrmVendasLoja.lbl_edtVlrUnitExit(Sender: TObject);

var
ValorTot, rQtde : Real;
intVendaEstoqueNulo, intQtde, ConfirmaVendaEstoque : Integer;
strQtde : String;
begin

  with dmModule do begin
  tedit(sender).color := clwindow;
    Commit(ibConfig);
    ibConfig.Close;
    ibConfig.SQL.Clear;
    ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
    ibConfig.Open;

    intVendaEstoqueNulo := ibConfig.FieldByName('BLOQUEIAVENDAESTOQUE').AsInteger;

   { if ibConfig.FieldByName('VLRPACOTEFARDOCASASDECIMAIS').AsString = 'Sim' Then begin
    lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Combustiveis'),StrToFloat(lbl_edtVlrUnit.Text));
    end else begin
    lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),StrToFloat(lbl_edtVlrUnit.Text));
    end;  }

      ValorTot := StrToFloat(StringReplace(lbl_edtVlrUnit.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
      lbl_edtVlrUnit.Text := FormatFloat(',0.00',(ValorTot));

      if lbl_edtIDProdCX.Text <> '' Then begin

        Commit(ibEntrProdEstoque);
        ibEntrProdEstoque.Close;
        ibEntrProdEstoque.SQL.Clear;
        ibEntrProdEstoque.SQL.Add('SELECT * FROM TBLENTRADAESTOQUEPROD WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + lbl_edtIDProdCX.Text + '''');
        ibEntrProdEstoque.Open;

        strQtde := FormatFloat(CasasDecimais('Produtos'),ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat);//FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat);
        rQtde := StrToFloat(StringReplace(strQtde,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
        intQtde := Trunc(rQtde);


             if (intVendaEstoqueNulo = 1)and(intQtde <= 0) Then begin

               ConfirmaVendaEstoque := Application.MessageBox('Produto indispon�vel no estoque,'
               + #13 + 'clique em sim para continuar e n�o para verifica��o','Notifica��o: Produto sem estoque',MB_YESNO + MB_ICONQUESTION);

               if ConfirmaVendaEstoque = 6 then begin

                 lbl_edtQtde.SetFocus;

               
               end else begin

                lbl_edtVlrUnit.Text := '0,00';
                lbl_edtVlrTotal.Text := '0,00';
                lbl_edtCodBarras.Text := '';
                lbl_edtCodProd.Text := '';
                lbl_edtInformacao.Caption := '';
                lbl_NomeProd.Caption := '';
                lbl_edtQtde.Text := '1';
                lbl_edtCodBarras.SetFocus;

               end;

             end;

      end;

  end;//with

end;

procedure TfrmVendasLoja.ckAtualizaValorCheck(Sender: TObject);
begin

  if lbl_edtVlrUnit.Text > '0,00'Then begin

    lbl_edtVlrUnit.SetFocus;

  end;
  
end;

procedure TfrmVendasLoja.lbl_edtVlrUnitKeyPress(Sender: TObject;
  var Key: Char);

  var


  ///VARIAVEIS PARA CANCELAR ITEM VENDIDO

ConfirmaCancelamentoVenda : Integer;
Valor1,Valor2,Valor3 : Real;
ValorVendaCx,ValorCancelado, TotalCancelado : Real;
QtdeEstoque, VlrProduto, ValorCustoE : Real;
QtdeVenda, QtdeItens, Itens1, Itens2 : Real;
EstoqueFinal, TotalProdEstoque, TotalCustoVenda, AvisaCupom : String;
VlrTotalVendaEstoque,VlrTotalCustoEstoque : Real;
CalculoVendaEstoque,CalculoCustoEstoque : Real;
begin

  with dmModule do begin

    if key= '.' then
    key:=',';

    if key=#13 Then begin

      if lbl_CancelaItem.Caption = '' Then begin

      lbl_edtQtde.SetFocus;

      end else if lbl_CancelaItem.Caption = 'Cancelar Item' Then begin

        if (IDServsCancela > 0)and(IDProdCancelado > 0) Then begin

        ConfirmaCancelamentoVenda := Application.MessageBox('Confirma o cancelamento','exclus�o de registro',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

          if ConfirmaCancelamentoVenda = 6 Then begin

            ibServsVenda.Close;
            ibServsVenda.SQL.Clear;
            ibServsVenda.SQL.Add('DELETE FROM TBLSERVICOSVENDAS WHERE IDSERVS=''' + InttoStr(IDServsCancela) + '''');
            ibServsVenda.Open;
            Commit(ibServsVenda);

////////////////////////////////////////////////////////////////////////////////

        if lbl_edtVlrTotal.Text <> '' Then begin// se for em branco executa rotina abaixo.

            if (Pos(',',lbl_edtVlrTotal.Text)>0) and (lbl_edtVlrTotal.Text <> '') Then begin

              Valor1 := StrToFloat(StringReplace(lbl_edtVlrTotal.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

              if lbl_edtSubTotal.Caption = '' Then begin

              lbl_edtSubTotal.Caption := FormatFloat(',0.00',(Valor1));

              end;

              if lbl_edtSubTotal.Caption <> '' Then begin

              //Valor1 := StrToFloat(StringReplace(lbl_edtTotalPed.Text,ThousandSeparator,'',[rfReplaceAll]));
              Valor2 := StrToFloat(StringReplace(lbl_edtSubTotal.Caption,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

              end;


              if Valor2 > Valor1 then begin

              Valor3 := (Valor2 - Valor1);

              end else if Valor1 > Valor2 then begin

              Valor3 := (Valor1 - Valor2);

              end;

              lbl_edtSubTotal.Caption := FormatFloat(',0.00',(Valor3));

             // end;

              end else begin

              Valor1 := StrToFloat(StringReplace(lbl_edtVlrTotal.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

              if lbl_edtSubTotal.Caption = '' Then begin

              lbl_edtSubTotal.Caption := FormatFloat(',0.00',(Valor1));

              end;

              if lbl_edtSubTotal.Caption <> '' Then begin

              //Valor1 := StrToFloat(StringReplace(lbl_edtTotalPed.Text,ThousandSeparator,'',[rfReplaceAll]));
              Valor2 := StrToFloat(StringReplace(lbl_edtSubTotal.Caption,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

              end;


              if Valor2 > Valor1 then begin

              Valor3 := (Valor2 - Valor1);

              end else if Valor1 > Valor2 then begin

              Valor3 := (Valor1 - Valor2);

              end;

              lbl_edtSubTotal.Caption := FormatFloat(',0.00',(Valor3));

              end;

              lbl_edtSubTotal.Caption := FormatFloat(',0.00',(Valor3));

              end;

////////////////////////////////////////////////////////////////////////////////

      //ROTINA PARA CONTROLE DE ESTOQUE

          ibEntrProdEstoque.Close;
          ibEntrProdEstoque.SQL.Clear;
          ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,'
          + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.TOTALCUSTO,TBLENTRADAESTOQUEPROD.IDPROD,'
          + 'CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORCUSTO,CADPRODUTOS.TIPOPROD FROM TBLENTRADAESTOQUEPROD '
          + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
          + 'WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + IntToStr(IDProdCancelado) + '''');
          ibEntrProdEstoque.Open;

          //ROTINA ABAIXO PARA SOMAR TOTAL DO ESTQUE E QUANTIDADE DO ESTOQUE

          //traz na variavel a qtde conf. prod da select identificado por id.
          QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
         // QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),DecimalSeparator,',',[rfReplaceAll]));

          QtdeVenda   := StrToFloat(StringReplace(lbl_edtQtde.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          QtdeEstoque := QtdeEstoque + QtdeVenda;

          EstoqueFinal := StringReplace(FloattoStr(QtdeEstoque),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          EstoqueFinal := StringReplace(EstoqueFinal,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

          //AQUI VAI O CALCULO DO TOTAL DE VENDA DO ESTOQUE
          VlrProduto  := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORVENDAA').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
          VlrProduto  := VlrProduto * StrToFloat(StringReplace(lbl_edtQtde.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
          VlrTotalVendaEstoque := StrToFloat(StringReplace(FloatToStr(ibEntrProdEstoque.FieldByName('VLRTOTAL').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          CalculoVendaEstoque := VlrTotalVendaEstoque + VlrProduto;

          TotalProdEstoque := StringReplace(FloattoStr(CalculoVendaEstoque),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          TotalProdEstoque := StringReplace(TotalProdEstoque,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

          //CALCULA O CUSTO DE ESTOQUE
          ValorCustoE := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORCUSTO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
          ValorCustoE := ValorCustoE * StrToFloat(StringReplace(lbl_edtQtde.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
          VlrTotalCustoEstoque := StrToFloat(StringReplace(FloatToStr(ibEntrProdEstoque.FieldByName('TOTALCUSTO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          CalculoCustoEstoque := VlrTotalCustoEstoque + ValorCustoE;

          TotalCustoVenda := StringReplace(FloattoStr(CalculoCustoEstoque),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          TotalCustoVenda := StringReplace(TotalCustoVenda,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

           //se houver registro ele atribui na alteracao o vlr da variavel
           if ibEntrProdEstoque.RecordCount > 0 Then begin

             ibEntrProdEstoque.Close;
             ibEntrProdEstoque.SQL.Clear;
             ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
             +'QUANTIDADE=''' + (EstoqueFinal) + ''','
             +'TOTALCUSTO=''' + TotalCustoVenda + ''','
             +'VLRTOTAL=''' + (TotalProdEstoque) +  ''' WHERE IDPROD=''' + IntToStr(IDProdCancelado) + '''');
             ibEntrProdEstoque.ExecSQL;
             Commit(ibEntrProdEstoque);

           end;{if}

////////////////////////////////////////////////////////////////////////////////

          ibServsVenda.Close;
          ibServsVenda.SQL.Clear;
          ibServsVenda.SQL.Add('SELECT TBLSERVICOSVENDAS.*,CADPRODUTOS.NOME As PRODUTO FROM TBLSERVICOSVENDAS '
          + 'LEFT OUTER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD '
          + 'WHERE  TBLSERVICOSVENDAS.IDSERVSVENDA=''' + lbl_CodVenda.Caption + '''');
          ibServsVenda.Open;                                                     ///  ORDER BY TBLSERVICOSVENDAS.IDSERVS DESC

          IDProdMovEstoque := ibServsVenda.FieldByName('IDPROD').AsInteger;//ARMAZENA O ID DO PRODUTO PRA GRAVAR EM MOV ESTOQUE
         (ibServsVenda.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
         (ibServsVenda.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
         (ibServsVenda.FieldByName('VALORB') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
         (ibServsVenda.FieldByName('VALORC') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
         (ibServsVenda.FieldByName('VALORD') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
         (ibServsVenda.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO

         { Commit(ibConfig);
          ibConfig.Close;
          ibConfig.SQL.Clear;
          ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
          ibConfig.Open;

          AvisaCupom         := ibConfig.FieldByName('IMPRIMIRCUPOM').AsString;

          if AvisaCupom = 'Sim' Then begin

           Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('*** Cancelado Item Abaixo ***'),0);
           Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('*--------------------------------------*'),0);
           Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(' '+frmVendasLoja.lbl_NomeProd.Caption),0);
           Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(' '+frmVendasLoja.lbl_edtVlrUnit.Text+ ' X '+ frmVendasLoja.lbl_edtQtde.Text+ ' = '+ frmVendasLoja.lbl_edtVlrTotal.Text+'   *cancelado*' ),0);
           Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('*--------------------------------------*'),0);
          ///Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Cupom N�.:<sp>1</sp>'+frmVendasLoja.lbl_CodVenda.Caption+ ''),0);

          end;//if avisa cupom

          lbl_edtIDProdCX.Clear;
          lbl_NomeProd.Caption := '';
          lbl_edtQtde.Text := '1';
          lbl_edtVlrUnit.Text := '0,00';
          lbl_edtVlrTotal.Text := '0,00';
          lbl_CancelaItem.Caption := '';
          lbl_edtCodBarras.SetFocus;

        end;//if idprod e idservs > 0  }

          lbl_edtIDProdCX.Clear;
          lbl_NomeProd.Caption := '';
          lbl_edtQtde.Text := '1';
          lbl_edtVlrUnit.Text := '0,00';
          lbl_edtVlrTotal.Text := '0,00';
          lbl_CancelaItem.Caption := '';
          lbl_edtCodBarras.SetFocus;
        
      end;

      end;

    end;

    end;

  end;//with

end;

procedure TfrmVendasLoja.FecharCaixa1Click(Sender: TObject);

var

ConfirmaFechCX : Integer;

begin

  with dmModule do begin

    ConfirmaFechCX := Application.MessageBox ( PChar('Aten��o!! o Caixa de: "' + lbl_Func.Caption
        + '" ser� fechado, deseja continuar'),'Notifica��o Fechamento de Caixa', MB_YESNO + mb_DefButton1+MB_ICONINFORMATION);

    if ConfirmaFechCX = 6 Then begin

      Commit(ibUser);
      ibUser.Close;
      ibUser.SQL.Clear;
      ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + lbl_IDCli.Caption + '''');
      ibUser.Open;

      Commit(ibAberturaCX);
      ibAberturaCX.Close;
      ibAberturaCX.SQL.Clear;
      ibAberturaCX.SQL.Add('SELECT * FROM TBLABERTURACX WHERE IDFUNC = ''' + lbl_IDCli.Caption + ''' and DATAABERTURA = ''' + FormatDateTime('mm-dd-yyyy',Now) + ''' ORDER BY IDABERTURACX DESC');
      ibAberturaCX.Open;

      ibAberturaCX.Close;
      ibAberturaCX.SQL.Clear;
      ibAberturaCX.SQL.Add('UPDATE TBLABERTURACX SET '
      + 'HORAFECH=''' + FormatDateTime('hh:mm:ss',now) + '''WHERE IDFUNC=''' + lbl_IDCli.Caption + ''' and DATAABERTURA = ''' + FormatDateTime('mm-dd-yyyy',Now) + '''');
      ibAberturaCX.ExecSQL;
      Commit(ibAberturaCX);

    end;//if confirma fech

    frmVendasLoja.Close;

  end;//with

end;

procedure TfrmVendasLoja.CancelarItemCaixa1Click(Sender: TObject);

var

ImpressaoTermica, AnalisedeRetorno : String;
ConfirmaCancelamento,iRetorno : Integer;

//VARI�VEIS PARA CANCELAR �LTIMA VENDA DO SISTEMA

IDVendaCancela, IDProdutoDevolucao, IDRecebeVendas,ConfirmaUltimoCupom : Integer;
QtdeVendaDevolve, VlrProdutoDevolve, ValorCustoDevolve, QtdeEstoqueDevolve : Real;
EstoqueFinalDevolve, TotalProdEstoqueDevolve, TotalCustoDevolve : String;
//DarumaMFD,EpsonMFD,BematechMFD : String;
intSatDaruma : Integer;
begin

  with dmModule do begin

    Commit(ibConfig);
    ibConfig.Close;
    ibConfig.SQL.Clear;
    ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
    ibConfig.Open;

    ImpressaoTermica   := ibConfig.FieldByName('IMPRESSORATERMICA').AsString;
    AnalisedeRetorno   := ibConfig.FieldByName('ANALISARETORNO').AsString;
   // DarumaMFD           := ibConfig.FieldByName('DARUMAMFD').AsString;
   // EpsonMFD            := ibConfig.FieldByName('EPSONMFD').AsString;
   // BematechMFD        := ibConfig.FieldByName('BEMATECHMFD').AsString;
    intSatDaruma       := ibConfig.FieldByName('SATDARUMA').AsInteger;
    
    ConfirmaCancelamento := Application.MessageBox('Confirma o Cancelamento do Cupom?','Cancelamento de Cupom',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);


      if ConfirmaCancelamento = 6 Then begin

        if intSatDaruma = 1 Then begin

          iRetorno:= tCFeCancelar_SAT_Daruma();
          Tratar_RetornoSAT(iRetorno);

        end;
              
      {  if DarumaMFD = 'Sim' Then begin

          Int_Retorno := iCFCancelar_ECF_Daruma();

        end;//if impressora termica = sim

        if BematechMFD = 'Sim' Then begin

          iRetorno := Bematech_FI_CancelaCupom();

        end;

        if EpsonMFD = 'Sim'  Then begin

          iRetorno := EPSON_Fiscal_Cancelar_Cupom();

        end; }

      end;//if confirma cancelamento

      ConfirmaUltimoCupom := Application.MessageBox('Este procedimento tamb�m cancela o �ltimo cupom do Sistema,Clique em sim para continuar ou n�o para cancelar somente da impressora','Cancelamento',+MB_YESNO+MB_DEFBUTTON1+MB_ICONINFORMATION);

      if ConfirmaUltimoCupom = 6 Then begin

        Commit(ibTempVendaLoja);
        ibTempVendaLoja.Close;
        ibTempVendaLoja.SQL.Clear;
        ibTempVendaLoja.SQL.Add('SELECT * FROM TBLSERVICOSVENDAS ORDER BY IDSERVS DESC');
        ibTempVendaLoja.Open;

        IDVendaCancela := ibTempVendaLoja.FieldByName('IDSERVSVENDA').AsInteger;   //StrToInt(lbl_CodVenda.Caption - 1);

        Commit(ibServsVenda);
        ibServsVenda.Close;
        ibServsVenda.SQL.Clear;
        ibServsVenda.SQL.Add('SELECT * FROM TBLSERVICOSVENDAS WHERE IDSERVSVENDA=''' + IntToStr(IDVendaCancela) + '''');
        ibServsVenda.Open;

        IDRecebeVendas := IDVendaCancela;

        while not ibServsVenda.Eof do begin

        IDProdutoDevolucao := ibServsVenda.FieldByName('IDPROD').AsInteger;

        QtdeVendaDevolve   := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('QTDE').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

        ibEntrProdEstoque.Close;
        ibEntrProdEstoque.SQL.Clear;
        ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,'
        + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,TBLENTRADAESTOQUEPROD.ESTOQUEMIN,'
        + 'CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORCUSTO,CADPRODUTOS.TIPOPROD FROM TBLENTRADAESTOQUEPROD '
        + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
        + 'WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + IntToStr(IDProdutoDevolucao) + '''');
        ibEntrProdEstoque.Open;

      //ROTINA ABAIXO PARA SOMAR TOTAL DO ESTQUE E QUANTIDADE DO ESTOQUE

      //traz na variavel a qtde conf. prod da select identificado por id.
       QtdeEstoqueDevolve := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
     // QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),DecimalSeparator,',',[rfReplaceAll]));

     // QtdeVendaDevolve   := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));

       QtdeEstoqueDevolve := QtdeEstoqueDevolve + QtdeVendaDevolve;

       EstoqueFinalDevolve := StringReplace(FloattoStr(QtdeEstoqueDevolve),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
       EstoqueFinalDevolve := StringReplace(EstoqueFinalDevolve,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

      //AQUI VAI O CALCULO DO TOTAL CONFORME VENDE O PRODUTO
       VlrProdutoDevolve  := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORVENDAA').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

       VlrProdutoDevolve  := QtdeEstoqueDevolve * VlrProdutoDevolve;

       TotalProdEstoqueDevolve := StringReplace(FloattoStr(VlrProdutoDevolve),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
       TotalProdEstoqueDevolve := StringReplace(TotalProdEstoqueDevolve,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);


       ValorCustoDevolve := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORCUSTO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

       ValorCustoDevolve := QtdeEstoqueDevolve * ValorCustoDevolve;

       TotalCustoDevolve := StringReplace(FloattoStr(ValorCustoDevolve),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
       TotalCustoDevolve := StringReplace(TotalCustoDevolve,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

       //ROTINA PARA O ESTOQUE MINIMO
       if ibEntrProdEstoque.RecordCount > 0 Then begin

         ibEntrProdEstoque.Close;
         ibEntrProdEstoque.SQL.Clear;
         ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
         +'TOTALCUSTO=''' + TotalCustoDevolve + ''','
         +'VLRTOTAL=''' + (TotalProdEstoqueDevolve) +  ''','
         +'QUANTIDADE=''' + (EstoqueFinalDevolve) + ''' WHERE IDPROD=''' + IntToStr(IDProdutoDevolucao) + '''');
         ibEntrProdEstoque.ExecSQL;
         Commit(ibEntrProdEstoque);

       end;//if recordcount

       ibServsVenda.Next;

       end;//while
////////////////////////////////////////////////////////////////////////////////

          ibServsVenda.Close;
          ibServsVenda.SQL.Clear;
          ibServsVenda.SQL.Add('DELETE FROM TBLSERVICOSVENDAS WHERE IDSERVSVENDA=''' + IntToStr(IDVendaCancela) + '''');
          ibServsVenda.ExecSQL;
          Commit(ibServsVenda);

          ibRecVendas.Close;
          ibRecVendas.SQL.Clear;
          ibRecVendas.SQL.Add('DELETE FROM TBLRECEBEVENDAS WHERE IDVENDA=''' + IntToStr(IDRecebeVendas) + '''');
          ibRecVendas.ExecSQL;
          Commit(ibRecVendas);

      end else begin

      Application.MessageBox('Voc� optou por n�o cancelar o �ltimo cupom do sistema,lembre-se que s� foi cancelado a �ltima venda na impressora,'+
      'no sistema cancele o �ltimo cupom no m�dulo manuten��o de cupons',+MB_OK);

      end;

  end;//with

end;

procedure TfrmVendasLoja.VendasTeste1Click(Sender: TObject);

///var

///AvisodeCupom : Integer;
///AnalisedeRetorno, IniciaCupomFiscalF4, Str_CPF_ou_CNPJ : String;

begin

 {with dmModule do begin

        if (lbl_edtCodBarras.Enabled = True)and(lbl_edtCodProd.Enabled = True) Then begin

          AvisodeCupom := Application.MessageBox('� necess�rio terminar esta venda para um novo cupom de venda?','**Venda n�o finalizada**',+MB_OK+MB_DEFBUTTON1+MB_ICONINFORMATION);

        end;


        if (lbl_edtCodBarras.Enabled = False)and(lbl_edtCodProd.Enabled = False) Then begin

          
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

          frmVendasLoja.lbl_CodVendaMPV.Caption := IntToStr(ibDetalheMPV.FieldByName('IDDETALHEMPV').AsInteger);
          frmVendasLoja.lbl_CodVenda.Caption := '';

          IDVendasServs := (ibDetalheMPV.FieldByName('IDDETALHEMPV').AsInteger);

          frmVendasLoja.lbl_edtCodBarras.Enabled := True;
          frmVendasLoja.lbl_edtCodProd.Enabled := True;
          frmVendasLoja.lbl_edtCodBarras.SetFocus; 



    end;

  end;//with}

end; 

procedure TfrmVendasLoja.PacoteFardo1Click(Sender: TObject);
begin

  lbl_edtPacoteFardo.Caption := 'Pacote/Fardo';

end;

procedure TfrmVendasLoja.CancelarCupomInteiro1Click(Sender: TObject);

var

ConfirmaCancelamento, IDVendaCancela, IDProdutoDevolucao : Integer;
QtdeVendaDevolve, VlrProdutoDevolve, ValorCustoDevolve, QtdeEstoqueDevolve : Real;
EstoqueFinalDevolve, TotalProdEstoqueDevolve, TotalCustoDevolve,TotalCusto : String;
VlrTotalVendaEstoque,VlrTotalCustoEstoque : Real;
CalculoVendaEstoque,CalculoCustoEstoque,ValorCustoE : Real;
begin

  with dmModule do begin

        ConfirmaCancelamento := Application.MessageBox('Confirma o cancelamento da venda?','Cancelar Venda',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

        if ConfirmaCancelamento = 6 Then begin

          IDVendaCancela := StrToInt(lbl_CodVenda.Caption);

////////////////////////////////////////////////////////////////////////////////

        ibServsVenda.Close;
        ibServsVenda.SQL.Clear;
        ibServsVenda.SQL.Add('SELECT * FROM TBLSERVICOSVENDAS WHERE IDSERVSVENDA=''' + IntToStr(IDVendaCancela) + '''');
        ibServsVenda.Open;

        while not ibServsVenda.Eof do begin

        IDProdutoDevolucao := ibServsVenda.FieldByName('IDPROD').AsInteger;

        QtdeVendaDevolve   := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('QTDE').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

        ibEntrProdEstoque.Close;
        ibEntrProdEstoque.SQL.Clear;
        ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,'
        + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.TOTALCUSTO,TBLENTRADAESTOQUEPROD.IDPROD,TBLENTRADAESTOQUEPROD.ESTOQUEMIN,'
        + 'CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORCUSTO,CADPRODUTOS.TIPOPROD FROM TBLENTRADAESTOQUEPROD '
        + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
        + 'WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + IntToStr(IDProdutoDevolucao) + '''');
        ibEntrProdEstoque.Open;

      //ROTINA ABAIXO PARA SOMAR TOTAL DO ESTQUE E QUANTIDADE DO ESTOQUE

      //traz na variavel a qtde conf. prod da select identificado por id.
       QtdeEstoqueDevolve := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
     // QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),DecimalSeparator,',',[rfReplaceAll]));

     // QtdeVendaDevolve   := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));

       QtdeEstoqueDevolve := QtdeEstoqueDevolve + QtdeVendaDevolve;

       EstoqueFinalDevolve := StringReplace(FloattoStr(QtdeEstoqueDevolve),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
       EstoqueFinalDevolve := StringReplace(EstoqueFinalDevolve,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

          //AQUI VAI O CALCULO DO TOTAL DE VENDA DO ESTOQUE
          VlrProduto  := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORVENDAA').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
          VlrProduto  := VlrProduto * StrToFloat(StringReplace(lbl_edtQtde.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
          VlrTotalVendaEstoque := StrToFloat(StringReplace(FloatToStr(ibEntrProdEstoque.FieldByName('VLRTOTAL').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          CalculoVendaEstoque := VlrTotalVendaEstoque + VlrProduto;

          TotalProdEstoque := StringReplace(FloattoStr(CalculoVendaEstoque),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          TotalProdEstoque := StringReplace(TotalProdEstoque,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

          //CALCULA O CUSTO DE ESTOQUE
          ValorCustoE := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORCUSTO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
          ValorCustoE := ValorCustoE * StrToFloat(StringReplace(lbl_edtQtde.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
          VlrTotalCustoEstoque := StrToFloat(StringReplace(FloatToStr(ibEntrProdEstoque.FieldByName('TOTALCUSTO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          CalculoCustoEstoque := VlrTotalCustoEstoque + ValorCustoE;

          TotalCusto := StringReplace(FloattoStr(CalculoCustoEstoque),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          TotalCusto := StringReplace(TotalCusto,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

       //ROTINA PARA O ESTOQUE MINIMO
       if ibEntrProdEstoque.RecordCount > 0 Then begin

         ibEntrProdEstoque.Close;
         ibEntrProdEstoque.SQL.Clear;
         ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
         +'TOTALCUSTO=''' + TotalCusto + ''','
         +'VLRTOTAL=''' + (TotalProdEstoque) +  ''','
         +'QUANTIDADE=''' + (EstoqueFinalDevolve) + ''' WHERE IDPROD=''' + IntToStr(IDProdutoDevolucao) + '''');
         ibEntrProdEstoque.ExecSQL;
         Commit(ibEntrProdEstoque);

       end;//if recordcount

       ibServsVenda.Next;

       end;//while
////////////////////////////////////////////////////////////////////////////////

          ibServsVenda.Close;
          ibServsVenda.SQL.Clear;
          ibServsVenda.SQL.Add('DELETE FROM TBLSERVICOSVENDAS WHERE IDSERVSVENDA=''' + IntToStr(IDVendaCancela) + '''');
          ibServsVenda.ExecSQL;
          Commit(ibServsVenda);

          //frmVendasLoja.lbl_CodVenda.Caption := IntToStr(ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger + 1);
          frmVendasLoja.lbl_Cliente.Caption := '';
          frmVendasLoja.lbl_CodCliente.Caption := '';
          frmVendasLoja.lbl_IDPlacaVeiculo.Caption := '';

          frmVendasLoja.listboxCupom.Clear;
          frmVendasLoja.lbl_edtSubTotal.Caption := '0,00';
          frmVendasLoja.lbl_edtInformacao.Caption := 'Caixa Livre';

        end;//if confirma cancelamento

  end;//with


end;

procedure TfrmVendasLoja.LimparCPF1Click(Sender: TObject);
begin
lbl_CnpjCpfP.Caption := '';
lbl_edtCnpjCpf.Caption := '';
lbl_Cliente.Caption := '';
lbl_CodCliente.Caption := '';
end;

procedure TfrmVendasLoja.Sangria1Click(Sender: TObject);
begin
frmSangria.ShowModal;
end;

procedure TfrmVendasLoja.imgLogoCliClick(Sender: TObject);
begin
popmnuImagem.Popup(Self.Left + 177, Self.Top + 45);
end;

procedure TfrmVendasLoja.popmnuProcurarClick(Sender: TObject);

var

  NovaImagem: String;
  ImagemSalva : String;

begin

    opDialogImagem.Title := 'Procurar imagem para ' + 'Logo do Cliente';
    if opDialogImagem.Execute then begin

      imgLogoCli.Picture.LoadFromFile(opDialogImagem.FileName);

    end;

end;

procedure TfrmVendasLoja.dbgVendasKeyPress(Sender: TObject; var Key: Char);
begin

  with dmModule do begin

    if key=#13 Then begin

      if lbl_CancelaItem.Caption = 'Cancelar Item' then begin

        {ibServsVenda.Close;
        ibServsVenda.SQL.Clear;
        ibServsVenda.SQL.Add('SELECT TBLSERVICOSVENDAS.VLRTOTAL,'
        + 'TBLSERVICOSVENDAS.VLRUNIT,TBLSERVICOSVENDAS.NOMEPROD,TBLSERVICOSVENDAS.QTDE,TBLSERVICOSVENDAS.IDSERVS,'
        + 'TBLSERVICOSVENDAS.IDPROD FROM TBLSERVICOSVENDAS WHERE TBLSERVICOSVENDAS.IDSERVSVENDA=''' + (frmVendasLoja.lbl_CodVenda.Caption) + '''');
        ibServsVenda.Open;

        (ibServsVenda.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
        (ibServsVenda.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
        (ibServsVenda.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis');} //CRIA UMA MASCARA PARA O CAMPO

        IDServsCancela  := ibServsVenda.FieldByName('IDSERVS').AsInteger;
        IDProdCancelado := ibServsVenda.FieldByName('IDPROD').AsInteger;

        if ibServsVenda.RecordCount > 0 Then begin

          lbl_edtVlrTotal.Text  := FormatFloat(CasasDecimais('Produtos'),ibServsVenda.FieldByName('VLRTOTAL').AsFloat);
          lbl_edtVlrUnit.Text   := FormatFloat(CasasDecimais('Produtos'),ibServsVenda.FieldByName('VLRUNIT').AsFloat);
          lbl_edtQtde.Text      := FormatFloat(CasasDecimais('Combustiveis'),ibServsVenda.FieldByName('QTDE').AsFloat);
          lbl_edtIDProdCX.Text  := IntToStr(ibServsVenda.FieldByName('IDPROD').AsInteger);
          lbl_NomeProd.Caption  := (ibServsVenda.FieldByName('NOMEPROD').AsString);
          lbl_edtVlrUnit.SetFocus;

        end;{if}

      end;//if cancelar item  

    end;//if

  end;//with

end;

procedure TfrmVendasLoja.roca1Click(Sender: TObject);
begin
  frmTrocaMercadoria.ShowModal;
{  Str_Parametro:= StringOFChar(#0,700);
  Str_Parametro:= '<ce>Estabelecimento Fantasia 2<l></l>Estabelecimento de Teste 2<l></l>';
  Str_Parametro:= Str_Parametro+ 'rua das flores 1005 frente centro Sao Paulo 00000000</ce><l></l>CNPJ:11111111111111 IE:111111111111 IM:<l></l>------------------------------------------------';
  Str_Parametro:= Str_Parametro+ '<ce><b>Extrato No. 999999<l></l>CUPOM FISCAL ELETR�NICO-SAT</b></ce><l></l>------------------------------------------------';
  Str_Parametro:= Str_Parametro+ 'CPF/CNPJ do Consumidor: 45170289000125<l></l>------------------------------------------------<sl>04</sl><gui></gui>';
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(Str_Parametro,0);
  Tratar_RetornoSAT(iRetorno);  }
end;

procedure TfrmVendasLoja.lbl_edtDescontoItemExit(Sender: TObject);

  var

Valor1,Valor2 : Real;
TotalVendaPorcentagem,DescontoPorcentagem,ValorMultiplicado,TotalPorcentagem : Real;

begin
  with dmModule do begin

   if lbl_edtDescontoItem.Text <> '' Then begin //se for em branco executa rotina abaixo.

      if (Pos(',',lbl_edtDescontoItem.Text)>0) and (lbl_edtDescontoItem.Text <> '') Then begin


        Valor1 := StrToFloat(StringReplace(lbl_edtDescontoItem.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
        Valor2 := StrToFloat(StringReplace(lbl_edtVlrTotal.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
        lbl_edtVlrTotal.Text := FormatFloat(',0.00',(Valor2 - Valor1));

       { if lbl_Porcentagem.Caption <> '' then begin

        Valor1 := StrToFloat(StringReplace(lbl_edtDescVenda.Text,ThousandSeparator,'',[rfReplaceAll]));
        Valor2 := StrToFloat(StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]));
        ValorMultiplicado := Valor1 * Valor2;
        TotalPorcentagem  := ValorMultiplicado / 100;
        lbl_edtVlrTotal.Text := FormatFloat(',0.00',(Valor2 - TotalPorcentagem));

        end;}


      end else begin

        Valor1 := StrToFloat(StringReplace(lbl_edtDescontoItem.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
        Valor2 := StrToFloat(StringReplace(lbl_edtVlrTotal.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
        lbl_edtVlrTotal.Text := FormatFloat(',0.00',(Valor2 - Valor1));

       { if lbl_Porcentagem.Caption <> '' then begin

        Valor1 := StrToFloat(StringReplace(lbl_edtDescVenda.Text,ThousandSeparator,'',[rfReplaceAll]));
        Valor2 := StrToFloat(StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]));
        ValorMultiplicado := Valor1 * Valor2;
        TotalPorcentagem  := ValorMultiplicado / 100;
        lbl_edtVlrTotal.Text := FormatFloat(',0.00',(Valor2 - TotalPorcentagem));

        end; }


      end;{if}

    end;{if}

    lbl_edtDescontoItem.Text := FormatFloat(CasasDecimais('Produtos'),StrToFloat(lbl_edtDescontoItem.Text)); //FormatFloat(casa',0.00',StrToFloat(lbl_edtValor.Text));

  end;{with}


end;

procedure TfrmVendasLoja.lbl_edtDescontoItemKeyPress(Sender: TObject;
  var Key: Char);
begin

  with dmModule do begin

    if key=#13 Then begin

      lbl_edtVlrTotal.SetFocus;

    end;

  end;{with}
  
end;

procedure TfrmVendasLoja.AbrirGaveta1Click(Sender: TObject);

var

Int_Retorno : Integer;
begin
Int_Retorno := iAcionarGaveta_DUAL_DarumaFramework();//eAbrirGaveta_ECF_Daruma();
end;

procedure TfrmVendasLoja.ImprimiUltimoCupom1Click(Sender: TObject);

var

Int_Retorno,intConfirmaImpressao : Integer;
begin

  intConfirmaImpressao := Application.MessageBox('Imprimir �ltimo Cupom Validado','SAT',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

  if intConfirmaImpressao = 6 Then begin

    Int_Retorno := iReimprimirUltimoCFe_SAT_Daruma();

  end;

end;

procedure TfrmVendasLoja.AbrirFuncionarios1Click(Sender: TObject);
begin
frmFuncVenda.ShowModal;
end;

procedure TfrmVendasLoja.Timer1Timer(Sender: TObject);
begin
lbl_Relogio.caption := timetostr(time);
end;

procedure TfrmVendasLoja.lbl_edtCodBarrasEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmVendasLoja.lbl_edtCodProdEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmVendasLoja.lbl_edtVlrUnitEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmVendasLoja.lbl_edtQtdeEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmVendasLoja.lbl_edtVlrTotalEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmVendasLoja.Orcamento1Click(Sender: TObject);

var
IDDetalheOrc : Integer;

begin  

  with dmModule do begin

    if (lbl_edtCodBarras.Enabled = False)and(lbl_edtCodProd.Enabled = False) Then begin

      {ibServsVenda.Close;
      ibServsVenda.SQL.Clear;
      ibServsVenda.SQL.Add('INSERT INTO TBLSERVICOSVENDAS '
      + '(IDVENDAORC,DATA) values '
      + '(''' + IntToStr(idVendaOrc) + ''','
      + ' ''' + FormatDateTime('mm-dd-yyyy',Now) + ''')');
      ibServsVenda.ExecSQL;
      Commit(ibServsVenda);
      ibServsVenda.Close;
      ibServsVenda.SQL.Clear;
      ibServsVenda.SQL.Add('SELECT IDSERVS FROM TBLSERVICOSVENDAS ORDER BY IDSERVS DESC');
      ibServsVenda.Open; }

      ibDetalheOrcamento.Close;
      ibDetalheOrcamento.SQL.Clear;
      ibDetalheOrcamento.SQL.Add('INSERT INTO TBLDETALHEORCAMENTO '
      + '(DATA) values '
      + '( ''' + FormatDateTime('mm-dd-yyyy',Now) + ''')');
      ibDetalheOrcamento.ExecSQL;

      ibDetalheOrcamento.Close;
      ibDetalheOrcamento.SQL.Clear;
      ibDetalheOrcamento.SQL.Add('SELECT * FROM TBLDETALHEORCAMENTO ORDER BY IDDETALHEORCAMENTO DESC');
      ibDetalheOrcamento.Open;

      IDDetalheOrc := ibDetalheOrcamento.FieldByName('IDDETALHEORCAMENTO').AsInteger;

      frmVendasLoja.lbl_IdOrc.Caption := IntToStr(IDDetalheOrc);
      frmVendasLoja.lbl_Orcamento.Caption := 'Or�amento N�:';

      //IDVendasServs := (ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger);
      frmVendasLoja.lbl_edtInformacao.Caption := '';
      frmVendasLoja.lbl_edtCodBarras.Enabled := True;
      frmVendasLoja.lbl_edtCodProd.Enabled := True;
      frmVendasLoja.lbl_edtCodBarras.SetFocus;

    end;//if

  end;//with 

end;

procedure TfrmVendasLoja.AbreGavetaTeste2Click(Sender: TObject);

var

intEncerrarOrc, ConfirmaImpressao, i : Integer;
strOrc : String;
F : TextFile;
//fs: TFileStream;
OleGraphic: TOleGraphic;
QtdeVenda, Unitario, Total, Vendedor, TotalOrcamento, strDataOrc : String;

begin

  with dmModule do begin

    strOrc := lbl_IdOrc.Caption;
    strDataOrc  := (FormatDateTime('dd-mm-yyyy',Now));

    intEncerrarOrc := Application.MessageBox('Deseja encerrar o or�amento?','Or�amento', +MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

    if intEncerrarOrc = 6 then begin 

      ConfirmaImpressao := Application.MessageBox('Imprimir Or�amento?','Or�amento',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

      if ConfirmaImpressao = 6 then begin


        Commit(ibDadosEmpresa);
        ibDadosEmpresa.Close;
        ibDadosEmpresa.SQL.Clear;
        ibDadosEmpresa.SQL.Add('SELECT * FROM TBLDADOSEMPRESA');
        ibDadosEmpresa.Open;

        Commit(ibServsVenda);
        ibServsVenda.Close;
        ibServsVenda.SQL.Clear;                                                                                                                    //
        ibServsVenda.SQL.Add('SELECT TBLSERVICOSVENDAS.NOMEPROD,TBLSERVICOSVENDAS.VLRUNIT,TBLSERVICOSVENDAS.IDSERVS,TBLSERVICOSVENDAS.IDPROD,TBLSERVICOSVENDAS.IDORCAMENTO,'                                                          // ORDER BY TBLSERVICOSVENDAS.IDSERVS DESC
        + 'TBLSERVICOSVENDAS.VLRTOTAL,TBLSERVICOSVENDAS.VALORB,TBLSERVICOSVENDAS.VALORC,TBLSERVICOSVENDAS.QTDE,TBLSERVICOSVENDAS.DATA,'
        + 'TBLSERVICOSVENDAS.NOMEFUNC FROM TBLSERVICOSVENDAS WHERE TBLSERVICOSVENDAS.IDORCAMENTO=''' + lbl_IdOrc.Caption + ''' ');
        ibServsVenda.Open;

       (ibServsVenda.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
       (ibServsVenda.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
       (ibServsVenda.FieldByName('VALORB') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
       (ibServsVenda.FieldByName('VALORC') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
       (ibServsVenda.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO


        //AssignFile(F,'LPT1');
        AssignPrn(F);
        Rewrite(F);
        i := 0;
        Writeln(F,('                          ** ORCAMENTO **'));
        Writeln(F,('--------------------------------------------------------------------'));
        Writeln(F,(ibDadosEmpresa.FieldByName('NOME').AsString));
        Writeln(F,(ibDadosEmpresa.FieldByName('ENDERECO').AsString)+','+(ibDadosEmpresa.FieldByName('NUMERO').AsString));
        if ibDadosEmpresa.FieldByName('BAIRRO').AsString <> '' Then begin
        Writeln(F,(ibDadosEmpresa.FieldByName('BAIRRO').AsString));
        end;
        Writeln(F,('Fone:'+ibDadosEmpresa.FieldByName('TELEFONE').AsString));
       { if ibDadosEmpresa.FieldByName('CNPJCPF').AsString <> '' Then begin
        Writeln(F,('CNPJ:'+ibDadosEmpresa.FieldByName('CNPJCPF').AsString));
        end;
        if ibDadosEmpresa.FieldByName('IE').AsString <> '' Then begin
        Writeln(F,('IE:'+ibDadosEmpresa.FieldByName('IE').AsString));
        end;
        if ibDadosEmpresa.FieldByName('INFORMACOES').AsString <> '' Then begin
        Writeln(F,(ibDadosEmpresa.FieldByName('INFORMACOES').AsString));
        end;
        if ibDadosEmpresa.FieldByName('SITE').AsString <> '' Then begin
        Writeln(F,(ibDadosEmpresa.FieldByName('SITE').AsString));
        end;}
        Writeln(F,('--------------------------------------------------------------------'));
        Writeln(F,('Vendedor:'+ibServsVenda.FieldByName('NOMEFUNC').AsString)+' '+' '+'Data:'+' '+strDataOrc + '  Numero Orc.: '+lbl_IdOrc.Caption);
        Writeln(F,('--------------------------------------------------------------------'));
       { if ibServsVenda.FieldByName('NOMECLI').AsString <> '' Then begin
        Writeln(F,('Cliente: '+(ibServsVenda.FieldByName('NOMECLI').AsString) + '  Fone: '+(ibOrcamentoPed.FieldByName('TELEFONECLI').AsString)));
        end;
        if lbl_edtEndereco.Text <> '' Then begin
        Writeln(F,('Endereco: '+lbl_edtEndereco.Text+ '  N�.:'+lbl_edtNumero.Text));
        end;
        if lbl_edtTelCom.Text <> '' Then begin
        Writeln(F,('Telefone: '+lbl_edtTelCom.Text));
        end;
        Writeln(F,('--------------------------------------------------')); }
        while not ibServsVenda.Eof do begin

        Writeln(F,(ibServsVenda.FieldByName('NOMEPROD').AsString));
        QtdeVenda := FormatFloat('0',ibServsVenda.FieldByName('QTDE').AsFloat);
        Unitario  := FormatFloat(CasasDecimais('Produtos'),ibServsVenda.FieldByName('VLRUNIT').AsFloat);
        Total     := FormatFloat(CasasDecimais('Produtos'),ibServsVenda.FieldByName('VLRTOTAL').AsFloat);
        Writeln(F,(QtdeVenda+' X '+Unitario+' = '+Total));

        ibServsVenda.Next;

        end;//while
        TotalOrcamento := lbl_edtSubTotal.Caption;
        Writeln(F,('--------------------------------------------------------------------'));
        Writeln(F,('Total do Orcamento..:(R$)'+TotalOrcamento));
        CloseFile(F);

      end;//if confirma impressao

       Application.CreateForm(TfrmR_Orc, frmR_Orc);

        TRY

          with frmR_Orc do begin

              frmR_Orc.qrpOrcamento.DataSet := ibServsVenda;
              //frmRelFluxoCx.qrpFluxoCx.DataSet := ibRecVendas;

              //ATRIBUI OS NOMES DOS CAMPOS AOS QRDBTEXT DO QUICKREPORT
              qrdbProd.DataSet    := ibServsVenda;
              qrdbProd.DataField  := ibServsVenda.FieldByName('NOMEPROD').FieldName;

              qrdbNOrc.DataSet    := ibServsVenda;
              qrdbNOrc.DataField  := ibServsVenda.FieldByName('IDORCAMENTO').FieldName;

              qrdbVlrUnit.DataSet     := ibServsVenda;
              qrdbVlrUnit.DataField   := ibServsVenda.FieldByName('VLRUNIT').FieldName;
             (ibServsVenda.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

              qrdbQtde.DataSet        := ibServsVenda;
              qrdbQtde.DataField      := ibServsVenda.FieldByName('QTDE').FieldName;
              (ibServsVenda.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO

              qrdbVlrTotal.DataSet       := ibServsVenda;
              qrdbVlrTotal.DataField     := ibServsVenda.FieldByName('VLRTOTAL').FieldName;
              (ibServsVenda.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

             // qrdbData.DataSet    := ibServsVenda;
             // qrdbData.DataField  := ibServsVenda.FieldByName('DATA').FieldName;

              ibDadosEmpresa.Close;
              ibDadosEmpresa.SQL.Clear;
              ibDadosEmpresa.SQL.Add('SELECT * FROM TBLDADOSEMPRESA');
              ibDadosEmpresa.Open;

              qrl_Titulo.Caption := 'Or�amento';
              qrl_Data.Caption := frmVendasLoja.lbl_Data.Caption;
              qrlEmpresa.Caption := ibDadosEmpresa.FieldByName('NOME').AsString;
              qrlEndereco.Caption := ibDadosEmpresa.FieldByName('ENDERECO').AsString;
              qrlNum.Caption := ibDadosEmpresa.FieldByName('NUMERO').AsString;
              qrlBairro.Caption := ibDadosEmpresa.FieldByName('BAIRRO').AsString;
              qrlEstado.Caption := ibDadosEmpresa.FieldByName('ESTADO').AsString;
              qrlDDDEmpresa.Caption := ibDadosEmpresa.FieldByName('DDD').AsString;
              qrlTelefoneEmpresa.Caption := ibDadosEmpresa.FieldByName('TELEFONE').AsString;

              qrpOrcamento.Prepare;
              //ExportQR1.Report := frmR_Orc.qrpOrcamento;
              //ExportQR1.ExportQRPDF('C:\Or�amentos\''Or�amento N� '+strOrc+'  '+ strDataOrc+'',false);
             // ExportQR1.ExportQR1('C:\Pedidos_Email\''N� '+strNpedido+'  '+ ClientePedido+'',false);

              qrpOrcamento.Preview;

          end; {if}


        EXCEPT
          on E : Exception do begin
             frmR_Orc.Release;
             MessageDlg('Ocorreu um erro ao tentar mostrar o Formul�rio: ' + E.Message,mtError,[mbOk],0);
          end;
        END;
      

////////////////////////////////////////////////////////////////////////////////

      {  Commit(ibServsVenda);
        ibServsVenda.Close;
        ibServsVenda.SQL.Clear;
        ibServsVenda.SQL.Add('SELECT TBLSERVICOSVENDAS.IDPROD,TBLSERVICOSVENDAS.IDSERVSVENDA,TBLSERVICOSVENDAS.IDTIPOPAGTO,'
        + 'TBLSERVICOSVENDAS.QTDE,TBLSERVICOSVENDAS.HORA,TBLSERVICOSVENDAS.VLRUNIT,TBLSERVICOSVENDAS.VLRTOTAL,TBLSERVICOSVENDAS.DATA,'
        + 'TBLSERVICOSVENDAS.VALORB,TBLSERVICOSVENDAS.TOTALCUSTO,'
        + 'TBLSERVICOSVENDAS.VALORC,TBLSERVICOSVENDAS.DESCONTO,TBLSERVICOSVENDAS.ACRESCIMO,TBLSERVICOSVENDAS.TOTALVLRPROD,'
        + 'TBLSERVICOSVENDAS.NOMEPROD,TBLTIPOPAGTOAVULSO.TIPOPAGTO,CADPRODUTOS.NOME As Produto FROM TBLSERVICOSVENDAS '
        + 'INNER JOIN TBLTIPOPAGTOAVULSO ON TBLSERVICOSVENDAS.IDTIPOPAGTO=TBLTIPOPAGTOAVULSO.IDTIPO '
        + 'INNER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD WHERE TBLSERVICOSVENDAS.IDORCAMENTO=''' + lbl_IdOrc.Caption + ''' ORDER BY IDSERVSVENDA ASC');
        ibServsVenda.Open; }

 ////////////////////////////////////////////////////////////////////////////////

      ibServsVenda.Close;
      lbl_IdOrc.Caption := '';
      lbl_edtIDProdCX.Clear;
      lbl_CodCliente.Caption := '';
      lbl_Cliente.Caption := '';

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

    end;//if

  end;//with

end;

end.
