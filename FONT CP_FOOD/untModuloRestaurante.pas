unit untModuloRestaurante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, StdCtrls, ExtCtrls, IBQuery, jpeg, ComObj,
  classComboBox, Menus, BmsXPCheckBox, axCtrls, ComCtrls,
  RxGIF, untClasse.Cadastro, untClasse.VendasCX;

type
  TfrmRestaurante = class(TForm)
    dbgLancamento: TDBGrid;
    lbl_edtObs: TLabeledEdit;
    lbl_edtRef: TLabeledEdit;
    lbl_edtCodBarras: TLabeledEdit;
    lbl_edtQtde: TLabeledEdit;
    lbl_edtVlrUnit: TLabeledEdit;
    lbl_edtVlrTotal: TLabeledEdit;
    lbl_edtNMesa: TLabeledEdit;
    lbl_edtTotal: TLabel;
    lbl_ValorTotal: TLabel;
    lbl_Informacao: TLabel;
    lbl_edtIDProduto: TLabeledEdit;
    MainMenu1: TMainMenu;
    Geral1: TMenuItem;
    LimparMesas1: TMenuItem;
    lbl_AbMesa: TLabel;
    pcMesas: TPageControl;
    tbsM1a20: TTabSheet;
    tbsM21a40: TTabSheet;
    sbMesa1: TSpeedButton;
    sbMesa2: TSpeedButton;
    sbMesa3: TSpeedButton;
    sbMesa4: TSpeedButton;
    sbMesa5: TSpeedButton;
    ckMesa1: TBmsXPCheckBox;
    ckMesa2: TBmsXPCheckBox;
    ckMesa3: TBmsXPCheckBox;
    ckMesa4: TBmsXPCheckBox;
    ckMesa5: TBmsXPCheckBox;
    Bevel1: TBevel;
    sbMesa6: TSpeedButton;
    sbMesa7: TSpeedButton;
    sbMesa8: TSpeedButton;
    sbMesa9: TSpeedButton;
    sbMesa10: TSpeedButton;
    ckMesa6: TBmsXPCheckBox;
    ckMesa7: TBmsXPCheckBox;
    ckMesa8: TBmsXPCheckBox;
    ckMesa9: TBmsXPCheckBox;
    ckMesa10: TBmsXPCheckBox;
    Bevel2: TBevel;
    sbMesa11: TSpeedButton;
    sbMesa12: TSpeedButton;
    sbMesa13: TSpeedButton;
    sbMesa14: TSpeedButton;
    sbMesa15: TSpeedButton;
    ckMesa11: TBmsXPCheckBox;
    ckMesa12: TBmsXPCheckBox;
    ckMesa13: TBmsXPCheckBox;
    ckMesa14: TBmsXPCheckBox;
    ckMesa15: TBmsXPCheckBox;
    Bevel3: TBevel;
    sbMesa16: TSpeedButton;
    sbMesa17: TSpeedButton;
    sbMesa18: TSpeedButton;
    sbMesa19: TSpeedButton;
    sbMesa20: TSpeedButton;
    ckMesa16: TBmsXPCheckBox;
    ckMesa17: TBmsXPCheckBox;
    ckMesa18: TBmsXPCheckBox;
    ckMesa19: TBmsXPCheckBox;
    ckMesa20: TBmsXPCheckBox;
    Bevel6: TBevel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    BmsXPCheckBox1: TBmsXPCheckBox;
    BmsXPCheckBox2: TBmsXPCheckBox;
    BmsXPCheckBox3: TBmsXPCheckBox;
    BmsXPCheckBox4: TBmsXPCheckBox;
    BmsXPCheckBox5: TBmsXPCheckBox;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    BmsXPCheckBox6: TBmsXPCheckBox;
    BmsXPCheckBox7: TBmsXPCheckBox;
    BmsXPCheckBox8: TBmsXPCheckBox;
    BmsXPCheckBox9: TBmsXPCheckBox;
    BmsXPCheckBox10: TBmsXPCheckBox;
    popMnuImagem: TPopupMenu;
    popmnuProcurar: TMenuItem;
    tbsM41a60: TTabSheet;
    SpeedButton11: TSpeedButton;
    BmsXPCheckBox11: TBmsXPCheckBox;
    SpeedButton12: TSpeedButton;
    BmsXPCheckBox12: TBmsXPCheckBox;
    SpeedButton13: TSpeedButton;
    BmsXPCheckBox13: TBmsXPCheckBox;
    SpeedButton14: TSpeedButton;
    BmsXPCheckBox14: TBmsXPCheckBox;
    SpeedButton15: TSpeedButton;
    BmsXPCheckBox15: TBmsXPCheckBox;
    SpeedButton16: TSpeedButton;
    BmsXPCheckBox16: TBmsXPCheckBox;
    SpeedButton17: TSpeedButton;
    BmsXPCheckBox17: TBmsXPCheckBox;
    SpeedButton18: TSpeedButton;
    BmsXPCheckBox18: TBmsXPCheckBox;
    SpeedButton19: TSpeedButton;
    BmsXPCheckBox19: TBmsXPCheckBox;
    SpeedButton20: TSpeedButton;
    BmsXPCheckBox20: TBmsXPCheckBox;
    SpeedButton21: TSpeedButton;
    BmsXPCheckBox21: TBmsXPCheckBox;
    SpeedButton22: TSpeedButton;
    BmsXPCheckBox23: TBmsXPCheckBox;
    SpeedButton23: TSpeedButton;
    BmsXPCheckBox26: TBmsXPCheckBox;
    SpeedButton24: TSpeedButton;
    BmsXPCheckBox28: TBmsXPCheckBox;
    SpeedButton25: TSpeedButton;
    BmsXPCheckBox30: TBmsXPCheckBox;
    SpeedButton26: TSpeedButton;
    BmsXPCheckBox22: TBmsXPCheckBox;
    SpeedButton27: TSpeedButton;
    BmsXPCheckBox24: TBmsXPCheckBox;
    SpeedButton28: TSpeedButton;
    BmsXPCheckBox25: TBmsXPCheckBox;
    SpeedButton29: TSpeedButton;
    BmsXPCheckBox27: TBmsXPCheckBox;
    SpeedButton30: TSpeedButton;
    BmsXPCheckBox29: TBmsXPCheckBox;
    sbMesa21: TSpeedButton;
    ckMesa21: TBmsXPCheckBox;
    sbMesa22: TSpeedButton;
    ckMesa22: TBmsXPCheckBox;
    sbMesa23: TSpeedButton;
    ckMesa23: TBmsXPCheckBox;
    sbMesa24: TSpeedButton;
    ckMesa24: TBmsXPCheckBox;
    sbMesa25: TSpeedButton;
    ckMesa25: TBmsXPCheckBox;
    sbMesa26: TSpeedButton;
    ckMesa26: TBmsXPCheckBox;
    sbMesa27: TSpeedButton;
    ckMesa27: TBmsXPCheckBox;
    sbMesa28: TSpeedButton;
    ckMesa28: TBmsXPCheckBox;
    sbMesa29: TSpeedButton;
    ckMesa29: TBmsXPCheckBox;
    sbMesa30: TSpeedButton;
    ckMesa30: TBmsXPCheckBox;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    Bevel10: TBevel;
    Bevel11: TBevel;
    Bevel12: TBevel;
    imgFundoCx: TImage;
    sh2: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape6: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Instrucoes1: TMenuItem;
    Shape7: TShape;
    Sair1: TMenuItem;
    opDialogImagem: TOpenDialog;
    shapeImgEmpresa: TShape;
    imgEmpresa: TImage;
    Label1: TLabel;
    Label2: TLabel;
    lbl_NomeProd: TLabel;
    Clientes1: TMenuItem;
    lbl_IDCli: TLabel;
    lbl_Cupom: TLabel;
    lbl_edtIDDetalheMesa: TLabel;
    ImprimeCupomInformativo1: TMenuItem;
    tbsProdutos: TTabSheet;
    btF3: TSpeedButton;
    btF4: TSpeedButton;
    btF5: TSpeedButton;
    btF6: TSpeedButton;
    btF7: TSpeedButton;
    btF8: TSpeedButton;
    btLimparMesas: TSpeedButton;
    btSair: TSpeedButton;
    btProd1: TSpeedButton;
    btProd2: TSpeedButton;
    btF9: TSpeedButton;
    btF1: TSpeedButton;
    btProd3: TSpeedButton;
    lbl_CodCliente: TLabel;
    lbl_edtCnpjCpf: TLabel;
    lbl_CnpjCpfP: TLabel;
    lbl_Cliente: TLabel;
    CTRLNNotaPaulista1: TMenuItem;
    CTRLUImprimeUltimoCupomValidado1: TMenuItem;
    estedeImpresso1: TMenuItem;
    LimpaCamposdaNFPaulista1: TMenuItem;
    btNotaPaulista: TSpeedButton;
    btCupomInf: TSpeedButton;
    CancelaltimoCupom1: TMenuItem;
    btCancelarCupomSat: TSpeedButton;
    btImprimeUltimoCupom: TSpeedButton;
    lbl_MesaaCancelar: TLabel;
    btLiberaMesa: TSpeedButton;
    lbl_TipoPreco: TLabel;
    btVendaB: TSpeedButton;
    btVendaC: TSpeedButton;
    Funcionario1: TMenuItem;
    lbl_Funcionario: TLabel;
    lbl_IDFunc: TLabel;
    btFunc: TSpeedButton;
    btLimpaFunc: TSpeedButton;
    lbl_DetalheFunc: TLabel;
    btManutCupons: TSpeedButton;
    btVendasAberto: TSpeedButton;
    procedure Commit(IBQueryExec : TIBQuery);
    procedure Tratar_RetornoSAT(iRetorno:integer);
    procedure ExecSelectVendasR;
    procedure ExecSELECTMesas;
    procedure ExecSELECTBotoesProd;
    procedure FormShow(Sender: TObject);
    procedure sbMesa1Click(Sender: TObject);
    procedure sbMesa2Click(Sender: TObject);
    procedure sbMesa3Click(Sender: TObject);
    procedure sbMesa4Click(Sender: TObject);
    procedure sbMesa5Click(Sender: TObject);
    procedure sbMesa6Click(Sender: TObject);
    procedure sbMesa7Click(Sender: TObject);
    procedure sbMesa8Click(Sender: TObject);
    procedure sbMesa9Click(Sender: TObject);
    procedure sbMesa10Click(Sender: TObject);
    procedure sbMesa11Click(Sender: TObject);
    procedure sbMesa12Click(Sender: TObject);
    procedure sbMesa13Click(Sender: TObject);
    procedure sbMesa14Click(Sender: TObject);
    procedure sbMesa15Click(Sender: TObject);
    procedure sbMesa16Click(Sender: TObject);
    procedure sbMesa17Click(Sender: TObject);
    procedure sbMesa18Click(Sender: TObject);
    procedure sbMesa19Click(Sender: TObject);
    procedure sbMesa20Click(Sender: TObject);
    procedure sbMesa21Click(Sender: TObject);
    procedure sbMesa22Click(Sender: TObject);
    procedure sbMesa23Click(Sender: TObject);
    procedure sbMesa24Click(Sender: TObject);
    procedure sbMesa25Click(Sender: TObject);
    procedure sbMesa26Click(Sender: TObject);
    procedure sbMesa27Click(Sender: TObject);
    procedure sbMesa28Click(Sender: TObject);
    procedure sbMesa29Click(Sender: TObject);
    procedure sbMesa30Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LimparMesas1Click(Sender: TObject);
    procedure lbl_edtVlrTotalKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtQtdeExit(Sender: TObject);
    procedure lbl_edtQtdeKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure dbgLancamentoKeyPress(Sender: TObject; var Key: Char);
    procedure imgLogoEmpresaClick(Sender: TObject);
    procedure popmnuProcurarClick(Sender: TObject);
    procedure lbl_edtCodBarrasExit(Sender: TObject);
    procedure lbl_edtCodBarrasKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtObsKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtVlrUnitKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtRefExit(Sender: TObject);
    procedure lbl_edtRefKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtCodBarrasChange(Sender: TObject);
    procedure Instrucoes1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure dbgLancamentoCellClick(Column: TColumn);
    procedure ImprimeCupomInformativo1Click(Sender: TObject);
    procedure lbl_edtNMesaExit(Sender: TObject);
    procedure lbl_edtObsExit(Sender: TObject);
    procedure lbl_edtVlrUnitExit(Sender: TObject);
    procedure lbl_edtVlrTotalExit(Sender: TObject);
    procedure lbl_edtNMesaEnter(Sender: TObject);
    procedure lbl_edtRefEnter(Sender: TObject);
    procedure lbl_edtCodBarrasEnter(Sender: TObject);
    procedure lbl_edtObsEnter(Sender: TObject);
    procedure lbl_edtVlrUnitEnter(Sender: TObject);
    procedure lbl_edtQtdeEnter(Sender: TObject);
    procedure lbl_edtVlrTotalEnter(Sender: TObject);
    procedure btF3Click(Sender: TObject);
    procedure btF7Click(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure btF1Click(Sender: TObject);
    procedure btF4Click(Sender: TObject);
    procedure btF5Click(Sender: TObject);
    procedure btF6Click(Sender: TObject);
    procedure btF8Click(Sender: TObject);
    procedure btF9Click(Sender: TObject);
    procedure btLimparMesasClick(Sender: TObject);
    procedure CTRLNNotaPaulista1Click(Sender: TObject);
    procedure CTRLUImprimeUltimoCupomValidado1Click(Sender: TObject);
    procedure LimpaCamposdaNFPaulista1Click(Sender: TObject);
    procedure btNotaPaulistaClick(Sender: TObject);
    procedure btCupomInfClick(Sender: TObject);
    procedure CancelaltimoCupom1Click(Sender: TObject);
    procedure btCancelarCupomSatClick(Sender: TObject);
    procedure btImprimeUltimoCupomClick(Sender: TObject);
    procedure btLiberaMesaClick(Sender: TObject);
    procedure btVendaBClick(Sender: TObject);
    procedure btVendaCClick(Sender: TObject);
    procedure Funcionario1Click(Sender: TObject);
    procedure btFuncClick(Sender: TObject);
    procedure btLimpaFuncClick(Sender: TObject);
    procedure btManutCuponsClick(Sender: TObject);
    procedure btVendasAbertoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRestaurante: TfrmRestaurante;
  MontaColunas : Boolean;
  IDDetalheMR,IDDetalheRestaurante,IDProdutoR,iRetorno : Integer;
  PathSistema, Str_Parametro : String;
  
implementation

uses untdmModule, uBuscaProdutos, DB, funcPosto, untRecebeLoja,
  untInstrucoesR, BuscaClientes, untImprimeCupomR, untNFPaulista,
  untFuncionario, untManutCx, untVendasAberto;

  //SAT - Cancela CF
  function tCFeCancelar_SAT_Daruma(): Integer; StdCall; External 'DarumaFrameWork.dll';
  function tCFeCancelarParametrizado_SAT_Daruma(pszCpfCnpj: String; pszChaveAcesso:String): Integer; StdCall; External 'DarumaFrameWork.dll';
  //SAT - Reimpressão e Impressão
  function iReimprimirUltimoCFe_SAT_Daruma() : Integer; StdCall; External 'DarumaFrameWork.dll';
  function iImprimirCFe_SAT_Daruma(szPathXmlSAT: String; pszTipo: String): Integer; StdCall; External 'DarumaFrameWork.dll';
  //DUAL - Mini-Impressoras
  function eBuscarPortaVelocidade_DUAL_DarumaFramework(): Integer; StdCall; External 'DarumaFrameWork.dll';
  function iImprimirTexto_DUAL_DarumaFramework(pszString: String; iTam: Integer): Integer; StdCall; External 'DarumaFrameWork.dll';

  // SAT - XML
  function regAlterarValor_SAT_Daruma(pszTagSAT:String; pszValorTagSAT:String):Integer; StdCall; External 'DarumaFramework.dll';
  function regRetornarValor_SAT_Daruma(pszTagSAT:String; pszValorTagSAT:String):Integer; StdCall; External 'DarumaFramework.dll';

  
{$R *.dfm}

procedure TfrmRestaurante.Commit(IBQueryExec : TIBQuery);

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

procedure TfrmRestaurante.Tratar_RetornoSAT(iRetorno:integer);
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

procedure TfrmRestaurante.ExecSelectVendasR;

var
TotalMesas : String;
ValorTotalMesas : Real;
intIDCliente : TCliente;
strNomeCli : TCliente;

begin

  with dmModule do begin

    if (lbl_edtIDDetalheMesa.Caption >'0') Then begin

      Commit(ibRestaurante);
      ibRestaurante.Close;
      ibRestaurante.SQL.Clear;
      ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + '''');
      ibRestaurante.Open;

      //instanciando a classe tcliente
      intIDCliente := TCliente.Create();
      strNomeCli   := TCliente.Create();

      intIDCliente.ID := ibRestaurante.FieldByName('IDCLIENTE').AsInteger;
      strNomeCli.BuscaNome := ibRestaurante.FieldByName('NOMECLIENTE').AsString;

      (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      if intIDCliente.ID > 0 Then begin

        try

          lbl_IDCli.Caption := IntToStr(intIDCliente.ID);
          lbl_Cliente.Caption := strNomeCli.BuscaNome;

        finally

          intIDCliente.Free;
          strNomeCli.Free;
          
        end;

      end;//if

      while not ibRestaurante.Eof do begin

        if ValorTotalMesas = 0 Then begin

          ValorTotalMesas := StrToFloat(StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalMesas := StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          ValorTotalMesas := ValorTotalMesas + StrtoFloat(StringReplace(TotalMesas,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibRestaurante.Next;

      end;//while

      lbl_ValorTotal.Caption := FormatFloat(CasasDecimais('Produtos'),ValorTotalMesas);

     end;//if iddetalhemesa
     
  end;//with

end;

procedure TfrmRestaurante.ExecSELECTBotoesProd;

begin

  with dmModule do begin

    ibTempProd.Close;
    ibTempProd.SQL.Clear;
    ibTempProd.SQL.Add('SELECT CADPRODUTOS.IDPROD,CADPRODUTOS.VALORCUSTO,CADPRODUTOS.VALORVENDAA,'
    + 'CADPRODUTOS.VALORVENDAB,CADPRODUTOS.VALORVENDAC,CADPRODUTOS.VALORVENDAD,CADPRODUTOS.REF,'
    + 'CADPRODUTOS.CODBARRAS,CADPRODUTOS.NCM,CADPRODUTOS.NCMSH,CADPRODUTOS.ALIQUOTA');
    ibTempProd.Open;

    

  end;//with

end;

procedure TfrmRestaurante.ExecSELECTMesas;

var
intIDCupom : Integer;

begin

  with dmModule do begin

    pcMesas.ActivePageIndex := 0;
    ibRestaurante.Close;
  ///  ExecSELECTProdutos;
    lbl_edtNMesa.Clear;

    lbl_edtCodBarras.SetFocus;
    lbl_ValorTotal.Caption := '0,00';
    lbl_MesaaCancelar.Caption := '';

      if lbl_edtIDDetalheMesa.Caption <> '' Then begin

        intIDCupom  := StrToInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT TBLCONTROLEMESAS.*,'
        + 'TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE FROM TBLCONTROLEMESAS '
        + 'INNER JOIN TBLDETALHERESTAURANTE ON TBLCONTROLEMESAS.IDDETALHECONTROLE=TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE WHERE TBLCONTROLEMESAS.IDDETALHECONTROLE=''' + IntToStr(intIDCupom) +'''');
        ibControleMesas.Open;

       { Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT TBLCONTROLEMESAS.*,'
        + 'TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE FROM TBLCONTROLEMESAS '
        + 'INNER JOIN TBLDETALHERESTAURANTE ON TBLCONTROLEMESAS.IDDETALHECONTROLE=TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE');
        ibControleMesas.Open;}
      //end; //begin

             { Commit(ibStatusMesa);
              ibStatusMesa.Close;
              ibStatusMesa.SQL.Clear;
              ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
              ibStatusMesa.Open; }

      //      end;

        if ibControleMesas.RecordCount > 0 Then begin

         // while not ibControleMesas.Eof do begin

            if ibControleMesas.FieldByName('M1').AsString = 'Sim' Then begin

            {  ckMesa1.Checked := True;
              ckMesa1.Font.Color := clRed;
              ckMesa1.Caption := 'Ocupada';

            end else begin }

              ckMesa1.Checked := False;
              ckMesa1.Font.Color := clBlack;
              ckMesa1.Caption :='Livre';

            end;

            if ibControleMesas.FieldByName('M2').AsString = 'Sim' Then begin

             { ckMesa2.Checked := True;
              ckMesa2.Font.Color := clRed;
              ckMesa2.Caption := 'Ocupada';

            end else begin  }

              ckMesa2.Checked := False;
              ckMesa2.Font.Color := clBlack;
              ckMesa2.Caption :='Livre';

            end;

            if ibControleMesas.FieldByName('M3').AsString = 'Sim' Then begin

             { ckMesa3.Checked := True;
              ckMesa3.Font.Color := clRed;
              ckMesa3.Caption := 'Ocupada';

            end else begin }

              ckMesa3.Checked := False;
              ckMesa3.Font.Color := clBlack;
              ckMesa3.Caption :='Livre';

            end;

            if ibControleMesas.FieldByName('M4').AsString = 'Sim' Then begin

             { ckMesa4.Checked := True;
              ckMesa4.Font.Color := clRed;
              ckMesa4.Caption := 'Ocupada';

            end else begin  }

              ckMesa4.Checked := False;
              ckMesa4.Font.Color := clBlack;
              ckMesa4.Caption :='Livre';

            end;

            if ibControleMesas.FieldByName('M5').AsString = 'Sim' Then begin

             { ckMesa5.Checked := True;
              ckMesa5.Font.Color := clRed;
              ckMesa5.Caption := 'Ocupada';

            end else begin  }

              ckMesa5.Checked := False;
              ckMesa5.Font.Color := clBlack;
              ckMesa5.Caption :='Livre';

            end;

            if ibControleMesas.FieldByName('M6').AsString = 'Sim' Then begin

             { ckMesa6.Checked := True;
              ckMesa6.Font.Color := clRed;
              ckMesa6.Caption := 'Ocupada';

            end else begin  }

              ckMesa6.Checked := False;
              ckMesa6.Font.Color := clBlack;
              ckMesa6.Caption :='Livre';

            end;

            if ibControleMesas.FieldByName('M7').AsString = 'Sim' Then begin

            {  ckMesa7.Checked := True;
              ckMesa7.Font.Color := clRed;
              ckMesa7.Caption := 'Ocupada';

            end else begin }

              ckMesa7.Checked := False;
              ckMesa7.Font.Color := clBlack;
              ckMesa7.Caption :='Livre';

            end;

            if ibControleMesas.FieldByName('M8').AsString = 'Sim' Then begin

            {  ckMesa8.Checked := True;
              ckMesa8.Font.Color := clRed;
              ckMesa8.Caption := 'Ocupada';

            end else begin  }

              ckMesa8.Checked := False;
              ckMesa8.Font.Color := clBlack;
              ckMesa8.Caption :='Livre';

            end;

            if ibControleMesas.FieldByName('M9').AsString = 'Sim' Then begin

             { ckMesa9.Checked := True;
              ckMesa9.Font.Color := clRed;
              ckMesa9.Caption := 'Ocupada';

            end else begin }

              ckMesa9.Checked := False;
              ckMesa9.Font.Color := clBlack;
              ckMesa9.Caption :='Livre';

            end;

            if ibControleMesas.FieldByName('M10').AsString = 'Sim' Then begin

             { ckMesa10.Checked := True;
              ckMesa10.Font.Color := clRed;
              ckMesa10.Caption := 'Ocupada';

            end else begin }

              ckMesa10.Checked := False;
              ckMesa10.Font.Color := clBlack;
              ckMesa10.Caption :='Livre';

            end;

            if ibControleMesas.FieldByName('M11').AsString = 'Sim' Then begin

             { ckMesa11.Checked := True;
              ckMesa11.Font.Color := clRed;
              ckMesa11.Caption := 'Ocupada';

            end else begin }

              ckMesa11.Checked := False;
              ckMesa11.Font.Color := clBlack;
              ckMesa11.Caption :='Livre';

            end;

            if ibControleMesas.FieldByName('M12').AsString = 'Sim' Then begin

             { ckMesa12.Checked := True;
              ckMesa12.Font.Color := clRed;
              ckMesa12.Caption := 'Ocupada';

            end else begin}

              ckMesa12.Checked := False;
              ckMesa12.Font.Color := clBlack;
              ckMesa12.Caption :='Livre';

            end;

            if ibControleMesas.FieldByName('M13').AsString = 'Sim' Then begin

             { ckMesa13.Checked := True;
              ckMesa13.Font.Color := clRed;
              ckMesa13.Caption := 'Ocupada';

            end else begin }

              ckMesa13.Checked := False;
              ckMesa13.Font.Color := clBlack;
              ckMesa13.Caption :='Livre';

            end;

            if ibControleMesas.FieldByName('M14').AsString = 'Sim' Then begin

             { ckMesa14.Checked := True;
              ckMesa14.Font.Color := clRed;
              ckMesa14.Caption := 'Ocupada';

            end else begin }

              ckMesa14.Checked := False;
              ckMesa14.Font.Color := clBlack;
              ckMesa14.Caption :='Livre';

            end;

            if ibControleMesas.FieldByName('M15').AsString = 'Sim' Then begin

             { ckMesa15.Checked := True;
              ckMesa15.Font.Color := clRed;
              ckMesa15.Caption := 'Ocupada';

            end else begin }

              ckMesa15.Checked := False;
              ckMesa15.Font.Color := clBlack;
              ckMesa15.Caption :='Livre';

            end;

            if ibControleMesas.FieldByName('M16').AsString = 'Sim' Then begin

             { ckMesa16.Checked := True;
              ckMesa16.Font.Color := clRed;
              ckMesa16.Caption := 'Ocupada';

            end else begin }

              ckMesa16.Checked := False;
              ckMesa16.Font.Color := clBlack;
              ckMesa16.Caption :='Livre';

            end;

            if ibControleMesas.FieldByName('M17').AsString = 'Sim' Then begin

             { ckMesa17.Checked := True;
              ckMesa17.Font.Color := clRed;
              ckMesa17.Caption := 'Ocupada';

            end else begin   }

              ckMesa17.Checked := False;
              ckMesa17.Font.Color := clBlack;
              ckMesa17.Caption :='Livre';

            end;

            if ibControleMesas.FieldByName('M18').AsString = 'Sim' Then begin

             { ckMesa18.Checked := True;
              ckMesa18.Font.Color := clRed;
              ckMesa18.Caption := 'Ocupada';

            end else begin }

              ckMesa18.Checked := False;
              ckMesa18.Font.Color := clBlack;
              ckMesa18.Caption :='Livre';

            end;

            if ibControleMesas.FieldByName('M19').AsString = 'Sim' Then begin

             { ckMesa19.Checked := True;
              ckMesa19.Font.Color := clRed;
              ckMesa19.Caption := 'Ocupada';

            end else begin  }

              ckMesa19.Checked := False;
              ckMesa19.Font.Color := clBlack;
              ckMesa19.Caption :='Livre';

            end;

            if ibControleMesas.FieldByName('M20').AsString = 'Sim' Then begin

            {  ckMesa20.Checked := True;
              ckMesa20.Font.Color := clRed;
              ckMesa20.Caption := 'Ocupada';

            end else begin  }

              ckMesa20.Checked := False;
              ckMesa20.Font.Color := clBlack;
              ckMesa20.Caption :='Livre';

            end;

            if ibControleMesas.FieldByName('M21').AsString = 'Sim' Then begin

             { ckMesa21.Checked := True;
              ckMesa21.Font.Color := clRed;
              ckMesa21.Caption := 'Ocupada';

            end else begin }

              ckMesa21.Checked := False;
              ckMesa21.Font.Color := clBlack;
              ckMesa21.Caption :='Livre';

            end;

            if ibControleMesas.FieldByName('M22').AsString = 'Sim' Then begin

              {ckMesa22.Checked := True;
              ckMesa22.Font.Color := clRed;
              ckMesa22.Caption := 'Ocupada';

            end else begin }

              ckMesa22.Checked := False;
              ckMesa22.Font.Color := clBlack;
              ckMesa22.Caption :='Livre';

            end;

            if ibControleMesas.FieldByName('M23').AsString = 'Sim' Then begin

             { ckMesa23.Checked := True;
              ckMesa23.Font.Color := clRed;
              ckMesa23.Caption := 'Ocupada';

            end else begin }

              ckMesa23.Checked := False;
              ckMesa23.Font.Color := clBlack;
              ckMesa23.Caption :='Livre';

            end;

            if ibControleMesas.FieldByName('M24').AsString = 'Sim' Then begin

             { ckMesa24.Checked := True;
              ckMesa24.Font.Color := clRed;
              ckMesa24.Caption := 'Ocupada';

            end else begin  }

              ckMesa24.Checked := False;
              ckMesa24.Font.Color := clBlack;
              ckMesa24.Caption :='Livre';

            end;

            if ibControleMesas.FieldByName('M25').AsString = 'Sim' Then begin

             { ckMesa25.Checked := True;
              ckMesa25.Font.Color := clRed;
              ckMesa25.Caption := 'Ocupada';

            end else begin   }

              ckMesa25.Checked := False;
              ckMesa25.Font.Color := clBlack;
              ckMesa25.Caption :='Livre';

            end;

            if ibControleMesas.FieldByName('M26').AsString = 'Sim' Then begin

            {  ckMesa26.Checked := True;
              ckMesa26.Font.Color := clRed;
              ckMesa26.Caption := 'Ocupada';

            end else begin  }

              ckMesa26.Checked := False;
              ckMesa26.Font.Color := clBlack;
              ckMesa26.Caption :='Livre';

            end;

            if ibControleMesas.FieldByName('M27').AsString = 'Sim' Then begin

             { ckMesa27.Checked := True;
              ckMesa27.Font.Color := clRed;
              ckMesa27.Caption := 'Ocupada';

            end else begin }

              ckMesa27.Checked := False;
              ckMesa27.Font.Color := clBlack;
              ckMesa27.Caption :='Livre';

            end;

            if ibControleMesas.FieldByName('M28').AsString = 'Sim' Then begin

              {ckMesa28.Checked := True;
              ckMesa28.Font.Color := clRed;
              ckMesa28.Caption := 'Ocupada';

            end else begin }

              ckMesa28.Checked := False;
              ckMesa28.Font.Color := clBlack;
              ckMesa28.Caption :='Livre';

            end;

            if ibControleMesas.FieldByName('M29').AsString = 'Sim' Then begin

             { ckMesa29.Checked := True;
              ckMesa29.Font.Color := clRed;
              ckMesa29.Caption := 'Ocupada';

            end else begin }

              ckMesa29.Checked := False;
              ckMesa29.Font.Color := clBlack;
              ckMesa29.Caption :='Livre';

            end;

            if ibControleMesas.FieldByName('M30').AsString = 'Sim' Then begin

             { ckMesa30.Checked := True;
              ckMesa30.Font.Color := clRed;
              ckMesa30.Caption := 'Ocupada';

            end else begin }

              ckMesa30.Checked := False;
              ckMesa30.Font.Color := clBlack;
              ckMesa30.Caption :='Livre';

            end; 


           // ibControleMesas.Next;

         // end;//while

         end;//recordcount

   end;//if lbliddetalhemesa

          ibControleMesas.Close;
          ibControleMesas.SQL.Clear;
          ibControleMesas.SQL.Add('DELETE FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + lbl_edtIDDetalheMesa.Caption + '''');
          ibControleMesas.ExecSQL;


  lbl_edtIDDetalheMesa.Caption := '';
  end;//with

end;

procedure TfrmRestaurante.FormShow(Sender: TObject);

var

IDControle,i : Integer;

begin

  {Top  := 0;
  Left := 0;
  Width  := Screen.Width;
  Height := Screen.Height;}

  with dmModule do begin

    pcMesas.ActivePageIndex := 0;
    ibRestaurante.Close;
  ///  ExecSELECTProdutos;
    lbl_edtNMesa.Clear;
    lbl_edtIDDetalheMesa.Caption := '';
    lbl_edtCodBarras.SetFocus;
    lbl_ValorTotal.Caption := '0,00';
    lbl_MesaaCancelar.Caption := '';
    lbl_IDCli.Caption := '';
    lbl_Cliente.Caption := '';
////////////////////////////////////////////////////////////////////////////////

    ibProdRestaurante.Close;
    ibProdRestaurante.SQL.Clear;
    ibProdRestaurante.SQL.Add('SELECT CADPRODUTOS.IDPROD,CADPRODUTOS.VALORCUSTO,'
    + 'CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORVENDAB,CADPRODUTOS.VALORVENDAC,'
    + 'CADPRODUTOS.CODBARRAS,CADPRODUTOS.REF,CADPRODUTOS.NOME FROM CADPRODUTOS ORDER BY CADPRODUTOS.NOME');
    ibProdRestaurante.Open;

    (ibProdRestaurante.FieldByName('VALORVENDAA')as TFloatField).DisplayFormat := CasasDecimais('Produtos');

          btProd1.Caption := (ibProdRestaurante.FieldByName('NOME').AsString+#13+FloatToStr(ibProdRestaurante.FieldByName('VALORVENDAA').AsFloat));

    while not ibProdRestaurante.Eof do begin

   //   for i:=1 to 2 do

    //  begin


      btProd2.Caption := (ibProdRestaurante.FieldByName('NOME').AsString+#13+FloatToStr(ibProdRestaurante.FieldByName('VALORVENDAA').AsFloat));
      btProd3.Caption := (ibProdRestaurante.FieldByName('NOME').AsString+#13+FloatToStr(ibProdRestaurante.FieldByName('VALORVENDAA').AsFloat));
     // end;
     // end;
      ibProdRestaurante.Next;

    end;//while

////////////////////////////////////////////////////////////////////////////////

    Commit(ibControleMesas);
    ibControleMesas.Close;
    ibControleMesas.SQL.Clear;
    ibControleMesas.SQL.Add('SELECT TBLCONTROLEMESAS.*,'
    + 'TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE FROM TBLCONTROLEMESAS '
    + 'INNER JOIN TBLDETALHERESTAURANTE ON TBLCONTROLEMESAS.IDDETALHECONTROLE=TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE');
    ibControleMesas.Open;

    if ibControleMesas.RecordCount > 0 Then begin

      while not ibControleMesas.Eof do begin


        if ibControleMesas.FieldByName('M1').AsString = 'Sim' Then begin

          ckMesa1.Checked := True;
          ckMesa1.Font.Color := clRed;
          ckMesa1.Caption := 'Ocupada';

        end;

        if ibControleMesas.FieldByName('M2').AsString = 'Sim' Then begin

          ckMesa2.Checked := True;
          ckMesa2.Font.Color := clRed;
          ckMesa2.Caption := 'Ocupada';

        end;

        if ibControleMesas.FieldByName('M3').AsString = 'Sim' Then begin

          ckMesa3.Checked := True;
          ckMesa3.Font.Color := clRed;
          ckMesa3.Caption := 'Ocupada';

        end;

        if ibControleMesas.FieldByName('M4').AsString = 'Sim' Then begin

          ckMesa4.Checked := True;
          ckMesa4.Font.Color := clRed;
          ckMesa4.Caption := 'Ocupada';

        end;

        if ibControleMesas.FieldByName('M5').AsString = 'Sim' Then begin

          ckMesa5.Checked := True;
          ckMesa5.Font.Color := clRed;
          ckMesa5.Caption := 'Ocupada';

        end;

        if ibControleMesas.FieldByName('M6').AsString = 'Sim' Then begin

          ckMesa6.Checked := True;
          ckMesa6.Font.Color := clRed;
          ckMesa6.Caption := 'Ocupada';

        end;

        if ibControleMesas.FieldByName('M7').AsString = 'Sim' Then begin

          ckMesa7.Checked := True;
          ckMesa7.Font.Color := clRed;
          ckMesa7.Caption := 'Ocupada';

        end;

        if ibControleMesas.FieldByName('M8').AsString = 'Sim' Then begin

          ckMesa8.Checked := True;
          ckMesa8.Font.Color := clRed;
          ckMesa8.Caption := 'Ocupada';

        end;

        if ibControleMesas.FieldByName('M9').AsString = 'Sim' Then begin

          ckMesa9.Checked := True;
          ckMesa9.Font.Color := clRed;
          ckMesa9.Caption := 'Ocupada';

        end;

        if ibControleMesas.FieldByName('M10').AsString = 'Sim' Then begin

          ckMesa10.Checked := True;
          ckMesa10.Font.Color := clRed;
          ckMesa10.Caption := 'Ocupada';

        end;

        if ibControleMesas.FieldByName('M11').AsString = 'Sim' Then begin

          ckMesa11.Checked := True;
          ckMesa11.Font.Color := clRed;
          ckMesa11.Caption := 'Ocupada';

        end;

        if ibControleMesas.FieldByName('M12').AsString = 'Sim' Then begin

          ckMesa12.Checked := True;
          ckMesa12.Font.Color := clRed;
          ckMesa12.Caption := 'Ocupada';

        end;

        if ibControleMesas.FieldByName('M13').AsString = 'Sim' Then begin

          ckMesa13.Checked := True;
          ckMesa13.Font.Color := clRed;
          ckMesa13.Caption := 'Ocupada';

        end;

        if ibControleMesas.FieldByName('M14').AsString = 'Sim' Then begin

          ckMesa14.Checked := True;
          ckMesa14.Font.Color := clRed;
          ckMesa14.Caption := 'Ocupada';

        end;

        if ibControleMesas.FieldByName('M15').AsString = 'Sim' Then begin

          ckMesa15.Checked := True;
          ckMesa15.Font.Color := clRed;
          ckMesa15.Caption := 'Ocupada';

        end;

        if ibControleMesas.FieldByName('M16').AsString = 'Sim' Then begin

          ckMesa16.Checked := True;
          ckMesa16.Font.Color := clRed;
          ckMesa16.Caption := 'Ocupada';

        end;

        if ibControleMesas.FieldByName('M17').AsString = 'Sim' Then begin

          ckMesa17.Checked := True;
          ckMesa17.Font.Color := clRed;
          ckMesa17.Caption := 'Ocupada';

        end;

        if ibControleMesas.FieldByName('M18').AsString = 'Sim' Then begin

          ckMesa18.Checked := True;
          ckMesa18.Font.Color := clRed;
          ckMesa18.Caption := 'Ocupada';

        end;

        if ibControleMesas.FieldByName('M19').AsString = 'Sim' Then begin

          ckMesa19.Checked := True;
          ckMesa19.Font.Color := clRed;
          ckMesa19.Caption := 'Ocupada';

        end;

        if ibControleMesas.FieldByName('M20').AsString = 'Sim' Then begin

          ckMesa20.Checked := True;
          ckMesa20.Font.Color := clRed;
          ckMesa20.Caption := 'Ocupada';

        end;

        if ibControleMesas.FieldByName('M21').AsString = 'Sim' Then begin

          ckMesa21.Checked := True;
          ckMesa21.Font.Color := clRed;
          ckMesa21.Caption := 'Ocupada';

        end;

        if ibControleMesas.FieldByName('M22').AsString = 'Sim' Then begin

          ckMesa22.Checked := True;
          ckMesa22.Font.Color := clRed;
          ckMesa22.Caption := 'Ocupada';

        end;

        if ibControleMesas.FieldByName('M23').AsString = 'Sim' Then begin

          ckMesa23.Checked := True;
          ckMesa23.Font.Color := clRed;
          ckMesa23.Caption := 'Ocupada';

        end;

        if ibControleMesas.FieldByName('M24').AsString = 'Sim' Then begin

          ckMesa24.Checked := True;
          ckMesa24.Font.Color := clRed;
          ckMesa24.Caption := 'Ocupada';

        end;

        if ibControleMesas.FieldByName('M25').AsString = 'Sim' Then begin

          ckMesa25.Checked := True;
          ckMesa25.Font.Color := clRed;
          ckMesa25.Caption := 'Ocupada';

        end;

        if ibControleMesas.FieldByName('M26').AsString = 'Sim' Then begin

          ckMesa26.Checked := True;
          ckMesa26.Font.Color := clRed;
          ckMesa26.Caption := 'Ocupada';

        end;

        if ibControleMesas.FieldByName('M27').AsString = 'Sim' Then begin

          ckMesa27.Checked := True;
          ckMesa27.Font.Color := clRed;
          ckMesa27.Caption := 'Ocupada';

        end;

        if ibControleMesas.FieldByName('M28').AsString = 'Sim' Then begin

          ckMesa28.Checked := True;
          ckMesa28.Font.Color := clRed;
          ckMesa28.Caption := 'Ocupada';

        end;

        if ibControleMesas.FieldByName('M29').AsString = 'Sim' Then begin

          ckMesa29.Checked := True;
          ckMesa29.Font.Color := clRed;
          ckMesa29.Caption := 'Ocupada';

        end;

        if ibControleMesas.FieldByName('M30').AsString = 'Sim' Then begin

          ckMesa30.Checked := True;
          ckMesa30.Font.Color := clRed;
          ckMesa30.Caption := 'Ocupada';

        end;


        ibControleMesas.Next;

      end;//while

     end;//recordcount

    with dbgLancamento do begin

      if MontaColunas Then begin

        DataSource := dmModule.dtsRestaurante;

        Columns.Insert(0);
        Columns.Insert(1);
        Columns.Insert(2);
        Columns.Insert(3);
        Columns.Insert(4);
        Columns.Insert(5);

        //Parametros da Coluna que exibe o Código do Produto
        // Parametros que exibe o nome do produto
        Columns.Items[0].Title.Caption := 'Descrição';
        Columns.Items[0].FieldName     := 'NOMEPRODUTO';
        Columns.Items[0].Width         := 250;
        Columns.Items[0].Alignment     := taLeftJustify;


        // Parametros que exibe o Bico da Bomba
        Columns.Items[1].Title.Caption := 'Qtde.';
        Columns.Items[1].FieldName     := 'QTDE';
        Columns.Items[1].Width         := 55;
        Columns.Items[1].Alignment     := taLeftJustify;

        // Parametros que exibe o Bico da Bomba
        Columns.Items[2].Title.Caption := 'Vlr.Unit.';
        Columns.Items[2].FieldName     := 'VLRUNIT';
        Columns.Items[2].Width         := 70;
        Columns.Items[2].Alignment     := taLeftJustify;

        // Parametros que exibe o Bico da Bomba
        Columns.Items[3].Title.Caption := 'Total';
        Columns.Items[3].FieldName     := 'VLRTOTAL';
        Columns.Items[3].Width         := 800;
        Columns.Items[3].Alignment     := taLeftJustify;

        Columns.Items[4].Title.Caption := 'Obs.:';
        Columns.Items[4].FieldName     := 'OBS';
        Columns.Items[4].Width         := 100;
        Columns.Items[4].Alignment     := taLeftJustify;

        Columns.Items[5].Title.Caption := 'Func.:';
        Columns.Items[5].FieldName     := 'NOMEFUNC';
        Columns.Items[5].Width         := 110;
        Columns.Items[5].Alignment     := taLeftJustify;

        MontaColunas := False;

      end;{if}

    end;{with monta colunas}



////////////////////////////////////////////////////////////////////////////////

  end;//with

end;

procedure TfrmRestaurante.sbMesa1Click(Sender: TObject);

var

IDDetalheRestauranteMesa,intStatusM1 : Integer;
SituacaoMesa, JuntarMesas : String;
M1 : String;//, TotalMesas : String;
ValorTotalMesas : Real;

begin

  with dmModule do begin

    if (lbl_edtIDDetalheMesa.Caption > '0')and(ckMesa1.Caption = 'Livre') Then begin

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text <> '') Then begin

        lbl_edtNMesa.Text := lbl_edtNMesa.Text+(' e 1');

      end;

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text = '')Then begin

        lbl_edtNMesa.Text := '1';

      end;

     { if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text <> '')and(lbl_edtIDDetalheMesa.Caption > '0')Then begin

        if lbl_edtNMesa.Text <> '' Then begin
        lbl_edtNMesa.Text := lbl_edtNMesa.Text +' e 1' ;
        end else begin
        lbl_edtNMesa.Text :=  '1';
        end;

        lbl_Informacao.Caption := 'Juntar Mesas';

      end;  }

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text = '')Then begin

        lbl_edtNMesa.Text :=  '1';

      end;

      ckMesa1.Checked := True;
      M1 := 'Sim';

////////////////////////////////////////////////////////////////////////////////

      if lbl_Informacao.Caption = 'Juntar Mesas' Then begin

        JuntarMesas := 'Sim';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M1 = ''' + M1 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M1 = ''' + M1 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M1) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M1 + ''')');
        ibControleMesas.ExecSQL;

        end;

        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM1 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M1 = ''' + IntToStr(intStatusM1) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M1) values '
          +'(''' + IntToStr(intStatusM1) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa1.Font.Color := clRed;
        ckMesa1.Caption := 'Ocupada';
        ckMesa1.Checked := True;
        lbl_Informacao.Caption := '';

      end else if lbl_AbMesa.Caption = 'Abertura de Mesas' then begin

        JuntarMesas := 'Nao';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M1 = ''' + M1 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M1 = ''' + M1 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M1) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M1 + ''')');
        ibControleMesas.ExecSQL;

        end;

        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM1 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M1 = ''' + IntToStr(intStatusM1) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M1) values '
          +'(''' + IntToStr(intStatusM1) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa1.Font.Color := clRed;
        ckMesa1.Caption := 'Ocupada';
        ckMesa1.Checked := True;
        lbl_Informacao.Caption := '';

      end;//if juntar mesas

       //ckMesa1.Font.Color := clRed;
      // ckMesa1.Caption := 'Ocupada';

    end else begin

      Commit(ibControleMesas);
      ibControleMesas.Close;
      ibControleMesas.SQL.Clear;
      ibControleMesas.SQL.Add('SELECT TBLCONTROLEMESAS.*,'
      + 'TBLDETALHERESTAURANTE.NRMESA,TBLDETALHERESTAURANTE.M1 FROM TBLCONTROLEMESAS '
      + 'INNER JOIN TBLDETALHERESTAURANTE ON TBLCONTROLEMESAS.IDDETALHECONTROLE=TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE WHERE TBLCONTROLEMESAS.M1=''Sim''');
      ibControleMesas.Open;

      if ibControleMesas.RecordCount > 0 Then begin
      lbl_edtIDDetalheMesa.Caption := InttoStr(ibControleMesas.FieldByName('IDDETALHECONTROLE').AsInteger);
      lbl_edtNMesa.Text := ibControleMesas.FieldByName('NRMESA').AsString;
      end;

    end;// if iddetalhe mesa


     if(ckMesa1.Caption = 'Ocupada') then begin

       ExecSelectVendasR;

     end;  
   { if (lbl_edtIDDetalheMesa.Caption >'0')and(ckMesa1.Caption = 'Ocupada') Then begin

      Commit(ibRestaurante);
      ibRestaurante.Close;
      ibRestaurante.SQL.Clear;
      ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + '''');
      ibRestaurante.Open;

      (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      while not ibRestaurante.Eof do begin

        if ValorTotalMesas = 0 Then begin

          ValorTotalMesas := StrToFloat(StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalMesas := StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          ValorTotalMesas := ValorTotalMesas + StrtoFloat(StringReplace(TotalMesas,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibRestaurante.Next;

      end;//while

      lbl_ValorTotal.Caption := FormatFloat(CasasDecimais('Produtos'),ValorTotalMesas);

     end;//if iddetalhemesa  }

  end;//with

end;

procedure TfrmRestaurante.sbMesa2Click(Sender: TObject);

var

IDDetalheRestauranteMesa,intStatusM2 : Integer;
SituacaoMesa, JuntarMesas : String;
M2 : String;
//TotalMesas : String;
//ValorTotalMesas : Real;
begin

  with dmModule do begin


    if (lbl_edtIDDetalheMesa.Caption > '0')and(ckMesa2.Caption = 'Livre') Then begin

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text <> '') Then begin

        lbl_edtNMesa.Text := lbl_edtNMesa.Text+(' e 2');

      end;

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text = '')Then begin

        lbl_edtNMesa.Text := '2';

      end;

     { if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text <> '')and(lbl_edtIDDetalheMesa.Caption > '0')Then begin

        if lbl_edtNMesa.Text <> '' Then begin
        lbl_edtNMesa.Text := lbl_edtNMesa.Text +' e 2' ;
        end else begin
        lbl_edtNMesa.Text :=  '2';
        end;

        lbl_Informacao.Caption := 'Juntar Mesas';

      end;  }

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text = '')Then begin

        lbl_edtNMesa.Text :=  '2';

      end;

      M2 := 'Sim';

////////////////////////////////////////////////////////////////////////////////

      if lbl_Informacao.Caption = 'Juntar Mesas' Then begin

        JuntarMesas := 'Sim';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M2 = ''' + M2 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M2 = ''' + M2 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M2) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M2 + ''')');
        ibControleMesas.ExecSQL;

        end;

        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM2 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M2 = ''' + IntToStr(intStatusM2) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M2) values '
          +'(''' + IntToStr(intStatusM2) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa2.Font.Color := clRed;
        ckMesa2.Caption := 'Ocupada';
        ckMesa2.Checked := True;
        lbl_Informacao.Caption := '';

      end else if lbl_AbMesa.Caption = 'Abertura de Mesas' then begin

        JuntarMesas := 'Nao';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M2 = ''' + M2 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M2 = ''' + M2 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M2) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M2 + ''')');
        ibControleMesas.ExecSQL;

        end;

        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM2 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M2 = ''' + IntToStr(intStatusM2) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M2) values '
          +'(''' + IntToStr(intStatusM2) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa2.Font.Color := clRed;
        ckMesa2.Caption := 'Ocupada';
        ckMesa2.Checked := True;
        lbl_Informacao.Caption := '';
        
      end;//if juntar mesas

     //  ckMesa2.Font.Color := clRed;
      // ckMesa2.Caption := 'Ocupada';

    end else begin

      Commit(ibControleMesas);
      ibControleMesas.Close;
      ibControleMesas.SQL.Clear;
      ibControleMesas.SQL.Add('SELECT TBLCONTROLEMESAS.*,'
      + 'TBLDETALHERESTAURANTE.NRMESA,TBLDETALHERESTAURANTE.M2 FROM TBLCONTROLEMESAS '
      + 'INNER JOIN TBLDETALHERESTAURANTE ON TBLCONTROLEMESAS.IDDETALHECONTROLE=TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE WHERE TBLCONTROLEMESAS.M2=''Sim''');
      ibControleMesas.Open;

      if ibControleMesas.RecordCount > 0 Then begin
      lbl_edtIDDetalheMesa.Caption := InttoStr(ibControleMesas.FieldByName('IDDETALHECONTROLE').AsInteger);
      lbl_edtNMesa.Text := ibControleMesas.FieldByName('NRMESA').AsString;
      end;

    end;// if iddetalhe mesa

     if(ckMesa2.Caption = 'Ocupada') then begin

       ExecSelectVendasR;

     end;
      
   { if (lbl_edtIDDetalheMesa.Caption >'0')and(ckMesa2.Caption = 'Ocupada') Then begin

      Commit(ibRestaurante);
      ibRestaurante.Close;
      ibRestaurante.SQL.Clear;
      ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + '''');
      ibRestaurante.Open;

      (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      while not ibRestaurante.Eof do begin

        if ValorTotalMesas = 0 Then begin

          ValorTotalMesas := StrToFloat(StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalMesas := StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          ValorTotalMesas := ValorTotalMesas + StrtoFloat(StringReplace(TotalMesas,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibRestaurante.Next;

      end;//while

      lbl_ValorTotal.Caption := FormatFloat(CasasDecimais('Produtos'),ValorTotalMesas);

     end;//if iddetalhemesa  }

  end;//with

end;

procedure TfrmRestaurante.sbMesa3Click(Sender: TObject);

var

IDDetalheRestauranteMesa,intStatusM3 : Integer;
SituacaoMesa, JuntarMesas : String;
M3 : String;
//ValorTotalMesas : Real;

begin

  with dmModule do begin

    if (lbl_edtIDDetalheMesa.Caption > '0')and(ckMesa3.Caption = 'Livre') Then begin

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text <> '') Then begin

        lbl_edtNMesa.Text := lbl_edtNMesa.Text+(' e 3');

      end;

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text = '')Then begin

        lbl_edtNMesa.Text := '3';

      end;

     { if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text <> '')and(lbl_edtIDDetalheMesa.Caption > '0')Then begin

        if lbl_edtNMesa.Text <> '' Then begin
        lbl_edtNMesa.Text := lbl_edtNMesa.Text +' e 3' ;
        end else begin
        lbl_edtNMesa.Text :=  '3';
        end;

        lbl_Informacao.Caption := 'Juntar Mesas';

      end;}

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text = '')Then begin

        lbl_edtNMesa.Text :=  '3';

      end;

      //ckMesa3.Checked := True;
      M3 := 'Sim';

////////////////////////////////////////////////////////////////////////////////

      if lbl_Informacao.Caption = 'Juntar Mesas' Then begin

        JuntarMesas := 'Sim';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M3 = ''' + M3 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M3 = ''' + M3 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M3) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M3 + ''')');
        ibControleMesas.ExecSQL;

        end;

        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM3 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M3 = ''' + IntToStr(intStatusM3) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M3) values '
          +'(''' + IntToStr(intStatusM3) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa3.Font.Color := clRed;
        ckMesa3.Caption := 'Ocupada';
        ckMesa3.Checked := True;
        lbl_Informacao.Caption := '';

      end else if lbl_AbMesa.Caption = 'Abertura de Mesas' then begin

        JuntarMesas := 'Nao';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M3 = ''' + M3 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M3 = ''' + M3 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M3) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M3 + ''')');
        ibControleMesas.ExecSQL;

        end;

        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM3 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M3 = ''' + IntToStr(intStatusM3) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M3) values '
          +'(''' + IntToStr(intStatusM3) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa3.Font.Color := clRed;
        ckMesa3.Caption := 'Ocupada';
        ckMesa3.Checked := True;
        lbl_Informacao.Caption := '';

      end;//if juntar mesas

     //  ckMesa3.Font.Color := clRed;
     // ckMesa3.Caption := 'Ocupada';

    end else begin

      Commit(ibControleMesas);
      ibControleMesas.Close;
      ibControleMesas.SQL.Clear;
      ibControleMesas.SQL.Add('SELECT TBLCONTROLEMESAS.*,'
      + 'TBLDETALHERESTAURANTE.NRMESA,TBLDETALHERESTAURANTE.M3 FROM TBLCONTROLEMESAS '
      + 'INNER JOIN TBLDETALHERESTAURANTE ON TBLCONTROLEMESAS.IDDETALHECONTROLE=TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE WHERE TBLCONTROLEMESAS.M3=''Sim''');
      ibControleMesas.Open;

      if ibControleMesas.RecordCount > 0 Then begin
      lbl_edtIDDetalheMesa.Caption := InttoStr(ibControleMesas.FieldByName('IDDETALHECONTROLE').AsInteger);
      lbl_edtNMesa.Text := ibControleMesas.FieldByName('NRMESA').AsString;
      end;

    end;// if iddetalhe mesa

     if(ckMesa3.Caption = 'Ocupada') then begin

       ExecSelectVendasR;

     end;

   { if (lbl_edtIDDetalheMesa.Caption >'0')and(ckMesa3.Caption = 'Ocupada') Then begin

      Commit(ibRestaurante);
      ibRestaurante.Close;
      ibRestaurante.SQL.Clear;
      ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + '''');
      ibRestaurante.Open;

      (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      while not ibRestaurante.Eof do begin

        if ValorTotalMesas = 0 Then begin

          ValorTotalMesas := StrToFloat(StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalMesas := StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          ValorTotalMesas := ValorTotalMesas + StrtoFloat(StringReplace(TotalMesas,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibRestaurante.Next;

      end;//while

      lbl_ValorTotal.Caption := FormatFloat(CasasDecimais('Produtos'),ValorTotalMesas);

     end;//if iddetalhemesa  }

  end;//with

end;

procedure TfrmRestaurante.sbMesa4Click(Sender: TObject);

var

IDDetalheRestauranteMesa,intStatusM4 : Integer;
SituacaoMesa, JuntarMesas : String;
M4 : String;
//ValorTotalMesas : Real;

begin

  with dmModule do begin

    if (lbl_edtIDDetalheMesa.Caption > '0')and(ckMesa4.Caption = 'Livre') Then begin

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text <> '') Then begin

        lbl_edtNMesa.Text := lbl_edtNMesa.Text+(' e 4');

      end;

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text = '')Then begin

        lbl_edtNMesa.Text := '4';

      end;

     { if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text <> '')and(lbl_edtIDDetalheMesa.Caption > '0')Then begin

        if lbl_edtNMesa.Text <> '' Then begin
        lbl_edtNMesa.Text := lbl_edtNMesa.Text +' e 4' ;
        end else begin
        lbl_edtNMesa.Text :=  '4';
        end;
        lbl_Informacao.Caption := 'Juntar Mesas';

      end; }

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text = '')Then begin

        lbl_edtNMesa.Text :=  '4';

      end;
            
      //ckMesa4.Checked := True;
      M4 := 'Sim';

////////////////////////////////////////////////////////////////////////////////

      if lbl_Informacao.Caption = 'Juntar Mesas' Then begin

        JuntarMesas := 'Sim';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M4 = ''' + M4 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M4 = ''' + M4 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M4) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M4 + ''')');
        ibControleMesas.ExecSQL;

        end;

        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM4 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M4 = ''' + IntToStr(intStatusM4) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M4) values '
          +'(''' + IntToStr(intStatusM4) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa4.Font.Color := clRed;
        ckMesa4.Caption := 'Ocupada';
        ckMesa4.Checked := True;
        lbl_Informacao.Caption := '';

      end else if lbl_AbMesa.Caption = 'Abertura de Mesas' then begin

        JuntarMesas := 'Nao';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M4 = ''' + M4 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M4 = ''' + M4 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M4) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M4 + ''')');
        ibControleMesas.ExecSQL;

        end;

        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM4 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M4 = ''' + IntToStr(intStatusM4) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M4) values '
          +'(''' + IntToStr(intStatusM4) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa4.Font.Color := clRed;
        ckMesa4.Caption := 'Ocupada';
        ckMesa4.Checked := True;
        lbl_Informacao.Caption := '';

      end;//if juntar mesas

       //ckMesa4.Font.Color := clRed;
       //ckMesa4.Caption := 'Ocupada';

    end else begin

      Commit(ibControleMesas);
      ibControleMesas.Close;
      ibControleMesas.SQL.Clear;
      ibControleMesas.SQL.Add('SELECT TBLCONTROLEMESAS.*,'
      + 'TBLDETALHERESTAURANTE.NRMESA,TBLDETALHERESTAURANTE.M4 FROM TBLCONTROLEMESAS '
      + 'INNER JOIN TBLDETALHERESTAURANTE ON TBLCONTROLEMESAS.IDDETALHECONTROLE=TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE WHERE TBLCONTROLEMESAS.M4=''Sim''');
      ibControleMesas.Open;

      if ibControleMesas.RecordCount > 0 Then begin
      lbl_edtIDDetalheMesa.Caption := InttoStr(ibControleMesas.FieldByName('IDDETALHECONTROLE').AsInteger);
      lbl_edtNMesa.Text := ibControleMesas.FieldByName('NRMESA').AsString;
      end;
      
    end;// if iddetalhe mesa

     if(ckMesa4.Caption = 'Ocupada') then begin

       ExecSelectVendasR;

     end;

   { if (lbl_edtIDDetalheMesa.Caption >'0')and(ckMesa3.Caption = 'Ocupada') Then begin

      Commit(ibRestaurante);
      ibRestaurante.Close;
      ibRestaurante.SQL.Clear;
      ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + '''');
      ibRestaurante.Open;

      (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      while not ibRestaurante.Eof do begin

        if ValorTotalMesas = 0 Then begin

          ValorTotalMesas := StrToFloat(StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalMesas := StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          ValorTotalMesas := ValorTotalMesas + StrtoFloat(StringReplace(TotalMesas,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibRestaurante.Next;

      end;//while

      lbl_ValorTotal.Caption := FormatFloat(CasasDecimais('Produtos'),ValorTotalMesas);

     end;//if iddetalhemesa  }

  end;//with

end;

procedure TfrmRestaurante.sbMesa5Click(Sender: TObject);

var

IDDetalheRestauranteMesa,intStatusM5 : Integer;
SituacaoMesa, JuntarMesas : String;
M5 : String;
//ValorTotalMesas : Real;

begin

  with dmModule do begin

    if (lbl_edtIDDetalheMesa.Caption > '0')and(ckMesa5.Caption = 'Livre') Then begin

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text <> '') Then begin

        lbl_edtNMesa.Text := lbl_edtNMesa.Text+(' e 5');

      end;

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text = '')Then begin

        lbl_edtNMesa.Text := '5';

      end;

     { if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text <> '')and(lbl_edtIDDetalheMesa.Caption > '0')Then begin

        if lbl_edtNMesa.Text <> '' Then begin
        lbl_edtNMesa.Text := lbl_edtNMesa.Text +' e 5' ;
        end else begin
        lbl_edtNMesa.Text :=  '5';
        end;

        lbl_Informacao.Caption := 'Juntar Mesas';

      end; }

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text = '')Then begin

        ///if lbl_edtNMesa.Text = '' Then begin
        lbl_edtNMesa.Text :=  '5';
      ///  end;

      end;

      //ckMesa5.Checked := True;
      M5 := 'Sim';

////////////////////////////////////////////////////////////////////////////////

      if lbl_Informacao.Caption = 'Juntar Mesas' Then begin

        JuntarMesas := 'Sim';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M5 = ''' + M5 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M5 = ''' + M5 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M5) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M5 + ''')');
        ibControleMesas.ExecSQL;

        end;

        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM5 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M5 = ''' + IntToStr(intStatusM5) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M5) values '
          +'(''' + IntToStr(intStatusM5) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa5.Font.Color := clRed;
        ckMesa5.Caption := 'Ocupada';
        ckMesa5.Checked := True;
        lbl_Informacao.Caption := '';

      end else if lbl_AbMesa.Caption = 'Abertura de Mesas' then begin

        JuntarMesas := 'Nao';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M5 = ''' + M5 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M5 = ''' + M5 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M5) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M5 + ''')');
        ibControleMesas.ExecSQL;

        end;

        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM5 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M5 = ''' + IntToStr(intStatusM5) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M5) values '
          +'(''' + IntToStr(intStatusM5) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa5.Font.Color := clRed;
        ckMesa5.Caption := 'Ocupada';
        ckMesa5.Checked := True;
        lbl_Informacao.Caption := '';

      end;//if juntar mesas

       //ckMesa5.Font.Color := clRed;
      // ckMesa5.Caption := 'Ocupada';

    end else begin

      Commit(ibControleMesas);
      ibControleMesas.Close;
      ibControleMesas.SQL.Clear;
      ibControleMesas.SQL.Add('SELECT TBLCONTROLEMESAS.*,'
      + 'TBLDETALHERESTAURANTE.NRMESA,TBLDETALHERESTAURANTE.M5 FROM TBLCONTROLEMESAS '
      + 'INNER JOIN TBLDETALHERESTAURANTE ON TBLCONTROLEMESAS.IDDETALHECONTROLE=TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE WHERE TBLCONTROLEMESAS.M5=''Sim''');
      ibControleMesas.Open;

      if ibControleMesas.RecordCount > 0 Then begin
      lbl_edtIDDetalheMesa.Caption := InttoStr(ibControleMesas.FieldByName('IDDETALHECONTROLE').AsInteger);
      lbl_edtNMesa.Text := ibControleMesas.FieldByName('NRMESA').AsString;
      end;

    end;// if iddetalhe mesa

     if(ckMesa5.Caption = 'Ocupada') then begin

       ExecSelectVendasR;

     end;

   { if (lbl_edtIDDetalheMesa.Caption >'0')and(ckMesa3.Caption = 'Ocupada') Then begin

      Commit(ibRestaurante);
      ibRestaurante.Close;
      ibRestaurante.SQL.Clear;
      ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + '''');
      ibRestaurante.Open;

      (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      while not ibRestaurante.Eof do begin

        if ValorTotalMesas = 0 Then begin

          ValorTotalMesas := StrToFloat(StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalMesas := StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          ValorTotalMesas := ValorTotalMesas + StrtoFloat(StringReplace(TotalMesas,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibRestaurante.Next;

      end;//while

      lbl_ValorTotal.Caption := FormatFloat(CasasDecimais('Produtos'),ValorTotalMesas);

     end;//if iddetalhemesa  }


  end;//with

end;

procedure TfrmRestaurante.sbMesa6Click(Sender: TObject);

var

IDDetalheRestauranteMesa,intStatusM6 : Integer;
SituacaoMesa, JuntarMesas : String;
M6 : String;
//ValorTotalMesas : Real;

begin

  with dmModule do begin

    if (lbl_edtIDDetalheMesa.Caption > '0')and(ckMesa6.Caption = 'Livre') Then begin

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text <> '') Then begin

        lbl_edtNMesa.Text := lbl_edtNMesa.Text+(' e 6');

      end;

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text = '')Then begin

        lbl_edtNMesa.Text := '6';

      end;

     { if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text <> '')and(lbl_edtIDDetalheMesa.Caption > '0')Then begin

        if lbl_edtNMesa.Text <> '' Then begin
        lbl_edtNMesa.Text := lbl_edtNMesa.Text +' e 6' ;
        end else begin
        lbl_edtNMesa.Text :=  '6';
        end;

        lbl_Informacao.Caption := 'Juntar Mesas';

      end;  }

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text = '')Then begin

        ///if lbl_edtNMesa.Text = '' Then begin
        lbl_edtNMesa.Text :=  '6';
      ///  end;

      end;

      //ckMesa6.Checked := True;
      M6 := 'Sim';

////////////////////////////////////////////////////////////////////////////////

      if lbl_Informacao.Caption = 'Juntar Mesas' Then begin

        JuntarMesas := 'Sim';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M6 = ''' + M6 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M6 = ''' + M6 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M6) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M6 + ''')');
        ibControleMesas.ExecSQL;

        end;

        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM6 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M6 = ''' + IntToStr(intStatusM6) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M6) values '
          +'(''' + IntToStr(intStatusM6) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa6.Font.Color := clRed;
        ckMesa6.Caption := 'Ocupada';
        ckMesa6.Checked := True;
        lbl_Informacao.Caption := '';

      end else if lbl_AbMesa.Caption = 'Abertura de Mesas' then begin

        JuntarMesas := 'Nao';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M6 = ''' + M6 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M6 = ''' + M6 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M6) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M6 + ''')');
        ibControleMesas.ExecSQL;

        end;

        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM6 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M6 = ''' + IntToStr(intStatusM6) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M6) values '
          +'(''' + IntToStr(intStatusM6) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa6.Font.Color := clRed;
        ckMesa6.Caption := 'Ocupada';
        ckMesa6.Checked := True;
        lbl_Informacao.Caption := '';

      end;//if juntar mesas

      // ckMesa6.Font.Color := clRed;
      // ckMesa6.Caption := 'Ocupada';

    end else begin

      Commit(ibControleMesas);
      ibControleMesas.Close;
      ibControleMesas.SQL.Clear;
      ibControleMesas.SQL.Add('SELECT TBLCONTROLEMESAS.*,'
      + 'TBLDETALHERESTAURANTE.NRMESA,TBLDETALHERESTAURANTE.M6 FROM TBLCONTROLEMESAS '
      + 'INNER JOIN TBLDETALHERESTAURANTE ON TBLCONTROLEMESAS.IDDETALHECONTROLE=TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE WHERE TBLCONTROLEMESAS.M6=''Sim''');
      ibControleMesas.Open;

      if ibControleMesas.RecordCount > 0 Then begin
      lbl_edtIDDetalheMesa.Caption := InttoStr(ibControleMesas.FieldByName('IDDETALHECONTROLE').AsInteger);
      lbl_edtNMesa.Text := ibControleMesas.FieldByName('NRMESA').AsString;
      end;

    end;// if iddetalhe mesa

     if(ckMesa6.Caption = 'Ocupada') then begin

       ExecSelectVendasR;

     end;

   { if (lbl_edtIDDetalheMesa.Caption >'0')and(ckMesa3.Caption = 'Ocupada') Then begin

      Commit(ibRestaurante);
      ibRestaurante.Close;
      ibRestaurante.SQL.Clear;
      ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + '''');
      ibRestaurante.Open;

      (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      while not ibRestaurante.Eof do begin

        if ValorTotalMesas = 0 Then begin

          ValorTotalMesas := StrToFloat(StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalMesas := StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          ValorTotalMesas := ValorTotalMesas + StrtoFloat(StringReplace(TotalMesas,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibRestaurante.Next;

      end;//while

      lbl_ValorTotal.Caption := FormatFloat(CasasDecimais('Produtos'),ValorTotalMesas);

     end;//if iddetalhemesa  }


  end;//with

end;

procedure TfrmRestaurante.sbMesa7Click(Sender: TObject);

var

IDDetalheRestauranteMesa,intStatusM7 : Integer;
SituacaoMesa, JuntarMesas : String;
M7 : String;
//ValorTotalMesas : Real;

begin

  with dmModule do begin

    if (lbl_edtIDDetalheMesa.Caption > '0')and(ckMesa7.Caption = 'Livre') Then begin

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text <> '') Then begin

        lbl_edtNMesa.Text := lbl_edtNMesa.Text+(' e 7');

      end;

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text = '')Then begin

        lbl_edtNMesa.Text := '7';

      end;

     { if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text <> '')and(lbl_edtIDDetalheMesa.Caption > '0')Then begin

        if lbl_edtNMesa.Text <> '' Then begin
        lbl_edtNMesa.Text := lbl_edtNMesa.Text +' e 7' ;
        end else begin
        lbl_edtNMesa.Text :=  '7';
        end;

        lbl_Informacao.Caption := 'Juntar Mesas';

      end;  }

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text = '')Then begin

        ///if lbl_edtNMesa.Text = '' Then begin
        lbl_edtNMesa.Text :=  '7';
      ///  end;

      end;

      //ckMesa7.Checked := True;
      M7 := 'Sim';

////////////////////////////////////////////////////////////////////////////////

      if lbl_Informacao.Caption = 'Juntar Mesas' Then begin

        JuntarMesas := 'Sim';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M7 = ''' + M7 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M7 = ''' + M7 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M7) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M7 + ''')');
        ibControleMesas.ExecSQL;

        end;

        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM7 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M7 = ''' + IntToStr(intStatusM7) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M7) values '
          +'(''' + IntToStr(intStatusM7) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa7.Font.Color := clRed;
        ckMesa7.Caption := 'Ocupada';
        ckMesa7.Checked := True;
        lbl_Informacao.Caption := '';

      end else if lbl_AbMesa.Caption = 'Abertura de Mesas' then begin

        JuntarMesas := 'Nao';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M7 = ''' + M7 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M7 = ''' + M7 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M7) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M7 + ''')');
        ibControleMesas.ExecSQL;

        end;

        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM7 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M7 = ''' + IntToStr(intStatusM7) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M7) values '
          +'(''' + IntToStr(intStatusM7) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa7.Font.Color := clRed;
        ckMesa7.Caption := 'Ocupada';
        ckMesa7.Checked := True;
        lbl_Informacao.Caption := '';

      end;//if juntar mesas

      // ckMesa7.Font.Color := clRed;
      // ckMesa7.Caption := 'Ocupada';

    end else begin

      Commit(ibControleMesas);
      ibControleMesas.Close;
      ibControleMesas.SQL.Clear;
      ibControleMesas.SQL.Add('SELECT TBLCONTROLEMESAS.*,'
      + 'TBLDETALHERESTAURANTE.NRMESA,TBLDETALHERESTAURANTE.M7 FROM TBLCONTROLEMESAS '
      + 'INNER JOIN TBLDETALHERESTAURANTE ON TBLCONTROLEMESAS.IDDETALHECONTROLE=TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE WHERE TBLCONTROLEMESAS.M7=''Sim''');
      ibControleMesas.Open;

      if ibControleMesas.RecordCount > 0 Then begin
      lbl_edtIDDetalheMesa.Caption := InttoStr(ibControleMesas.FieldByName('IDDETALHECONTROLE').AsInteger);
      lbl_edtNMesa.Text := ibControleMesas.FieldByName('NRMESA').AsString;
      end;
      
    end;// if iddetalhe mesa

     if(ckMesa7.Caption = 'Ocupada') then begin

       ExecSelectVendasR;

     end;

   { if (lbl_edtIDDetalheMesa.Caption >'0')and(ckMesa3.Caption = 'Ocupada') Then begin

      Commit(ibRestaurante);
      ibRestaurante.Close;
      ibRestaurante.SQL.Clear;
      ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + '''');
      ibRestaurante.Open;

      (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      while not ibRestaurante.Eof do begin

        if ValorTotalMesas = 0 Then begin

          ValorTotalMesas := StrToFloat(StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalMesas := StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          ValorTotalMesas := ValorTotalMesas + StrtoFloat(StringReplace(TotalMesas,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibRestaurante.Next;

      end;//while

      lbl_ValorTotal.Caption := FormatFloat(CasasDecimais('Produtos'),ValorTotalMesas);

     end;//if iddetalhemesa  }

  end;//with


end;

procedure TfrmRestaurante.sbMesa8Click(Sender: TObject);

var

IDDetalheRestauranteMesa,intStatusM8 : Integer;
SituacaoMesa, JuntarMesas : String;
M8 : String;
//ValorTotalMesas : Real;

begin

  with dmModule do begin

    if (lbl_edtIDDetalheMesa.Caption > '0')and(ckMesa8.Caption = 'Livre') Then begin

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text <> '') Then begin

        lbl_edtNMesa.Text := lbl_edtNMesa.Text+(' e 8');

      end;

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text = '')Then begin

        lbl_edtNMesa.Text := '8';

      end;

      {if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text <> '')and(lbl_edtIDDetalheMesa.Caption > '0')Then begin

        if lbl_edtNMesa.Text <> '' Then begin
        lbl_edtNMesa.Text := lbl_edtNMesa.Text +' e 8' ;
        end else begin
        lbl_edtNMesa.Text :=  '8';
        end;

        lbl_Informacao.Caption := 'Juntar Mesas';

      end; }

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text = '')Then begin

        ///if lbl_edtNMesa.Text = '' Then begin
        lbl_edtNMesa.Text :=  '8';
      ///  end;

      end;

      //ckMesa8.Checked := True;
      M8 := 'Sim';

////////////////////////////////////////////////////////////////////////////////

      if lbl_Informacao.Caption = 'Juntar Mesas' Then begin

        JuntarMesas := 'Sim';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M8 = ''' + M8 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M8 = ''' + M8 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M8) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M8 + ''')');
        ibControleMesas.ExecSQL;

        end;

        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM8 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M8 = ''' + IntToStr(intStatusM8) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M8) values '
          +'(''' + IntToStr(intStatusM8) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa8.Font.Color := clRed;
        ckMesa8.Caption := 'Ocupada';
        ckMesa8.Checked := True;
        lbl_Informacao.Caption := '';

      end else if lbl_AbMesa.Caption = 'Abertura de Mesas' then begin

        JuntarMesas := 'Nao';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M8 = ''' + M8 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M8 = ''' + M8 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M8) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M8 + ''')');
        ibControleMesas.ExecSQL;

        end;

        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM8 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M8 = ''' + IntToStr(intStatusM8) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M8) values '
          +'(''' + IntToStr(intStatusM8) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa8.Font.Color := clRed;
        ckMesa8.Caption := 'Ocupada';
        ckMesa8.Checked := True;
        lbl_Informacao.Caption := '';

      end;//if juntar mesas

       //ckMesa8.Font.Color := clRed;
      // ckMesa8.Caption := 'Ocupada';

    end else begin

      Commit(ibControleMesas);
      ibControleMesas.Close;
      ibControleMesas.SQL.Clear;
      ibControleMesas.SQL.Add('SELECT TBLCONTROLEMESAS.*,'
      + 'TBLDETALHERESTAURANTE.NRMESA,TBLDETALHERESTAURANTE.M8 FROM TBLCONTROLEMESAS '
      + 'INNER JOIN TBLDETALHERESTAURANTE ON TBLCONTROLEMESAS.IDDETALHECONTROLE=TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE WHERE TBLCONTROLEMESAS.M8=''Sim''');
      ibControleMesas.Open;

      if ibControleMesas.RecordCount > 0 Then begin
      lbl_edtIDDetalheMesa.Caption := InttoStr(ibControleMesas.FieldByName('IDDETALHECONTROLE').AsInteger);
      lbl_edtNMesa.Text := ibControleMesas.FieldByName('NRMESA').AsString;
      end;
      
    end;// if iddetalhe mesa

     if(ckMesa8.Caption = 'Ocupada') then begin

       ExecSelectVendasR;

     end;

   { if (lbl_edtIDDetalheMesa.Caption >'0')and(ckMesa3.Caption = 'Ocupada') Then begin

      Commit(ibRestaurante);
      ibRestaurante.Close;
      ibRestaurante.SQL.Clear;
      ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + '''');
      ibRestaurante.Open;

      (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      while not ibRestaurante.Eof do begin

        if ValorTotalMesas = 0 Then begin

          ValorTotalMesas := StrToFloat(StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalMesas := StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          ValorTotalMesas := ValorTotalMesas + StrtoFloat(StringReplace(TotalMesas,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibRestaurante.Next;

      end;//while

      lbl_ValorTotal.Caption := FormatFloat(CasasDecimais('Produtos'),ValorTotalMesas);

     end;//if iddetalhemesa  }

  end;//with

end;

procedure TfrmRestaurante.sbMesa9Click(Sender: TObject);

var

IDDetalheRestauranteMesa,intStatusM9 : Integer;
SituacaoMesa, JuntarMesas : String;
M9 : String;
//ValorTotalMesas : Real;

begin

  with dmModule do begin

    if (lbl_edtIDDetalheMesa.Caption > '0')and(ckMesa9.Caption = 'Livre') Then begin

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text <> '') Then begin

        lbl_edtNMesa.Text := lbl_edtNMesa.Text+(' e 9');

      end;

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text = '')Then begin

        lbl_edtNMesa.Text := '9';

      end;

     { if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text <> '')and(lbl_edtIDDetalheMesa.Caption > '0')Then begin

        if lbl_edtNMesa.Text <> '' Then begin
        lbl_edtNMesa.Text := lbl_edtNMesa.Text +' e 9' ;
        end else begin
        lbl_edtNMesa.Text :=  '9';
        end;

        lbl_Informacao.Caption := 'Juntar Mesas';

      end;  }

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text = '')Then begin

        ///if lbl_edtNMesa.Text = '' Then begin
        lbl_edtNMesa.Text :=  '9';
      ///  end;

      end;

      //ckMesa9.Checked := True;
      M9 := 'Sim';

////////////////////////////////////////////////////////////////////////////////

      if lbl_Informacao.Caption = 'Juntar Mesas' Then begin

        JuntarMesas := 'Sim';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M9 = ''' + M9 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M9 = ''' + M9 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M9) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M9 + ''')');
        ibControleMesas.ExecSQL;

        end;

        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM9 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M9 = ''' + IntToStr(intStatusM9) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M9) values '
          +'(''' + IntToStr(intStatusM9) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa9.Font.Color := clRed;
        ckMesa9.Caption := 'Ocupada';
        ckMesa9.Checked := True;
        lbl_Informacao.Caption := '';

      end else if lbl_AbMesa.Caption = 'Abertura de Mesas' then begin

        JuntarMesas := 'Nao';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M9 = ''' + M9 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M9 = ''' + M9 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M9) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M9 + ''')');
        ibControleMesas.ExecSQL;

        end;

        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM9 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M9 = ''' + IntToStr(intStatusM9) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M9) values '
          +'(''' + IntToStr(intStatusM9) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa9.Font.Color := clRed;
        ckMesa9.Caption := 'Ocupada';
        ckMesa9.Checked := True;
        lbl_Informacao.Caption := '';

      end;//if juntar mesas

     // ckMesa9.Font.Color := clRed;
     //  ckMesa9.Caption := 'Ocupada';

    end else begin

      Commit(ibControleMesas);
      ibControleMesas.Close;
      ibControleMesas.SQL.Clear;
      ibControleMesas.SQL.Add('SELECT TBLCONTROLEMESAS.*,'
      + 'TBLDETALHERESTAURANTE.NRMESA,TBLDETALHERESTAURANTE.M9 FROM TBLCONTROLEMESAS '
      + 'INNER JOIN TBLDETALHERESTAURANTE ON TBLCONTROLEMESAS.IDDETALHECONTROLE=TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE WHERE TBLCONTROLEMESAS.M9=''Sim''');
      ibControleMesas.Open;

      if ibControleMesas.RecordCount > 0 Then begin
      lbl_edtIDDetalheMesa.Caption := InttoStr(ibControleMesas.FieldByName('IDDETALHECONTROLE').AsInteger);
      lbl_edtNMesa.Text := ibControleMesas.FieldByName('NRMESA').AsString;
      end;
      
    end;// if iddetalhe mesa

     if(ckMesa9.Caption = 'Ocupada') then begin

       ExecSelectVendasR;

     end;

   { if (lbl_edtIDDetalheMesa.Caption >'0')and(ckMesa3.Caption = 'Ocupada') Then begin

      Commit(ibRestaurante);
      ibRestaurante.Close;
      ibRestaurante.SQL.Clear;
      ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + '''');
      ibRestaurante.Open;

      (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      while not ibRestaurante.Eof do begin

        if ValorTotalMesas = 0 Then begin

          ValorTotalMesas := StrToFloat(StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalMesas := StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          ValorTotalMesas := ValorTotalMesas + StrtoFloat(StringReplace(TotalMesas,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibRestaurante.Next;

      end;//while

      lbl_ValorTotal.Caption := FormatFloat(CasasDecimais('Produtos'),ValorTotalMesas);

     end;//if iddetalhemesa  }

  end;//with

end;

procedure TfrmRestaurante.sbMesa10Click(Sender: TObject);

var

IDDetalheRestauranteMesa,intStatusM10 : Integer;
SituacaoMesa, JuntarMesas : String;
M10 : String;
//ValorTotalMesas : Real;

begin

  with dmModule do begin

    if (lbl_edtIDDetalheMesa.Caption > '0')and(ckMesa10.Caption = 'Livre') Then begin

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text <> '') Then begin

        lbl_edtNMesa.Text := lbl_edtNMesa.Text+(' e 10');

      end;

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text = '')Then begin

        lbl_edtNMesa.Text := '10';

      end;

    {  if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text <> '')and(lbl_edtIDDetalheMesa.Caption > '0')Then begin

        if lbl_edtNMesa.Text <> '' Then begin
        lbl_edtNMesa.Text := lbl_edtNMesa.Text +' e 10' ;
        end else begin
        lbl_edtNMesa.Text :=  '10';
        end;

        lbl_Informacao.Caption := 'Juntar Mesas';

      end; }

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text = '')Then begin

        ///if lbl_edtNMesa.Text = '' Then begin
        lbl_edtNMesa.Text :=  '10';
      ///  end;

      end;

      //ckMesa10.Checked := True;
      M10 := 'Sim';

////////////////////////////////////////////////////////////////////////////////

      if lbl_Informacao.Caption = 'Juntar Mesas' Then begin

        JuntarMesas := 'Sim';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M10 = ''' + M10 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M10 = ''' + M10 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M10) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M10 + ''')');
        ibControleMesas.ExecSQL;

        end;

        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM10 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M10 = ''' + IntToStr(intStatusM10) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M10) values '
          +'(''' + IntToStr(intStatusM10) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa10.Font.Color := clRed;
        ckMesa10.Caption := 'Ocupada';
        ckMesa10.Checked := True;
        lbl_Informacao.Caption := '';

      end else if lbl_AbMesa.Caption = 'Abertura de Mesas' then begin

        JuntarMesas := 'Nao';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M10 = ''' + M10 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M10 = ''' + M10 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M10) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M10 + ''')');
        ibControleMesas.ExecSQL;

        end;

        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM10 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M10 = ''' + IntToStr(intStatusM10) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M10) values '
          +'(''' + IntToStr(intStatusM10) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa10.Font.Color := clRed;
        ckMesa10.Caption := 'Ocupada';
        ckMesa10.Checked := True;
        lbl_Informacao.Caption := '';

      end;//if juntar mesas

       //ckMesa10.Font.Color := clRed;
       //ckMesa10.Caption := 'Ocupada';

    end else begin

      Commit(ibControleMesas);
      ibControleMesas.Close;
      ibControleMesas.SQL.Clear;
      ibControleMesas.SQL.Add('SELECT TBLCONTROLEMESAS.*,'
      + 'TBLDETALHERESTAURANTE.NRMESA,TBLDETALHERESTAURANTE.M10 FROM TBLCONTROLEMESAS '
      + 'INNER JOIN TBLDETALHERESTAURANTE ON TBLCONTROLEMESAS.IDDETALHECONTROLE=TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE WHERE TBLCONTROLEMESAS.M10=''Sim''');
      ibControleMesas.Open;

      if ibControleMesas.RecordCount > 0 Then begin
      lbl_edtIDDetalheMesa.Caption := InttoStr(ibControleMesas.FieldByName('IDDETALHECONTROLE').AsInteger);
      lbl_edtNMesa.Text := ibControleMesas.FieldByName('NRMESA').AsString;
      end;

    end;// if iddetalhe mesa

     if(ckMesa10.Caption = 'Ocupada') then begin

       ExecSelectVendasR;

     end;

   { if (lbl_edtIDDetalheMesa.Caption >'0')and(ckMesa3.Caption = 'Ocupada') Then begin

      Commit(ibRestaurante);
      ibRestaurante.Close;
      ibRestaurante.SQL.Clear;
      ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + '''');
      ibRestaurante.Open;

      (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      while not ibRestaurante.Eof do begin

        if ValorTotalMesas = 0 Then begin

          ValorTotalMesas := StrToFloat(StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalMesas := StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          ValorTotalMesas := ValorTotalMesas + StrtoFloat(StringReplace(TotalMesas,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibRestaurante.Next;

      end;//while

      lbl_ValorTotal.Caption := FormatFloat(CasasDecimais('Produtos'),ValorTotalMesas);

     end;//if iddetalhemesa  }


  end;//with


end;

procedure TfrmRestaurante.sbMesa11Click(Sender: TObject);

var

IDDetalheRestauranteMesa,intStatusM11 : Integer;
SituacaoMesa, JuntarMesas : String;
M11 : String;
//ValorTotalMesas : Real;

begin

  with dmModule do begin

    if (lbl_edtIDDetalheMesa.Caption > '0')and(ckMesa11.Caption = 'Livre') Then begin

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text <> '') Then begin

        lbl_edtNMesa.Text := lbl_edtNMesa.Text+(' e 11');

      end;

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text = '')Then begin

        lbl_edtNMesa.Text := '11';

      end;

    {  if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text <> '')and(lbl_edtIDDetalheMesa.Caption > '0')Then begin

        if lbl_edtNMesa.Text <> '' Then begin
        lbl_edtNMesa.Text := lbl_edtNMesa.Text +' e 11' ;
        end else begin
        lbl_edtNMesa.Text :=  '11';
        end;

        lbl_Informacao.Caption := 'Juntar Mesas';

      end;}

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text = '')Then begin

        ///if lbl_edtNMesa.Text = '' Then begin
        lbl_edtNMesa.Text :=  '11';
      ///  end;

      end;

      //ckMesa11.Checked := True;
      M11 := 'Sim';

////////////////////////////////////////////////////////////////////////////////

      if lbl_Informacao.Caption = 'Juntar Mesas' Then begin

        JuntarMesas := 'Sim';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M11 = ''' + M11 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M11 = ''' + M11 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M11) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M11 + ''')');
        ibControleMesas.ExecSQL;

        end;

        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM11 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M11 = ''' + IntToStr(intStatusM11) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M11) values '
          +'(''' + IntToStr(intStatusM11) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa11.Font.Color := clRed;
        ckMesa11.Caption := 'Ocupada';
        ckMesa11.Checked := True;
        lbl_Informacao.Caption := '';

      end else if lbl_AbMesa.Caption = 'Abertura de Mesas' then begin

        JuntarMesas := 'Nao';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M11 = ''' + M11 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M11 = ''' + M11 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M11) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M11 + ''')');
        ibControleMesas.ExecSQL;

        end;
        
        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM11 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M11 = ''' + IntToStr(intStatusM11) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M11) values '
          +'(''' + IntToStr(intStatusM11) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa11.Font.Color := clRed;
        ckMesa11.Caption := 'Ocupada';
        ckMesa11.Checked := True;
        lbl_Informacao.Caption := '';

      end;//if juntar mesas

       //ckMesa11.Font.Color := clRed;
       //ckMesa11.Caption := 'Ocupada';

    end else begin

      Commit(ibControleMesas);
      ibControleMesas.Close;
      ibControleMesas.SQL.Clear;
      ibControleMesas.SQL.Add('SELECT TBLCONTROLEMESAS.*,'
      + 'TBLDETALHERESTAURANTE.NRMESA,TBLDETALHERESTAURANTE.M11 FROM TBLCONTROLEMESAS '
      + 'INNER JOIN TBLDETALHERESTAURANTE ON TBLCONTROLEMESAS.IDDETALHECONTROLE=TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE WHERE TBLCONTROLEMESAS.M11=''Sim''');
      ibControleMesas.Open;

      if ibControleMesas.RecordCount > 0 Then begin
      lbl_edtIDDetalheMesa.Caption := InttoStr(ibControleMesas.FieldByName('IDDETALHECONTROLE').AsInteger);
      lbl_edtNMesa.Text := ibControleMesas.FieldByName('NRMESA').AsString;
      end;

    end;// if iddetalhe mesa

     if(ckMesa11.Caption = 'Ocupada') then begin

       ExecSelectVendasR;

     end;

   { if (lbl_edtIDDetalheMesa.Caption >'0')and(ckMesa3.Caption = 'Ocupada') Then begin

      Commit(ibRestaurante);
      ibRestaurante.Close;
      ibRestaurante.SQL.Clear;
      ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + '''');
      ibRestaurante.Open;

      (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      while not ibRestaurante.Eof do begin

        if ValorTotalMesas = 0 Then begin

          ValorTotalMesas := StrToFloat(StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalMesas := StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          ValorTotalMesas := ValorTotalMesas + StrtoFloat(StringReplace(TotalMesas,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibRestaurante.Next;

      end;//while

      lbl_ValorTotal.Caption := FormatFloat(CasasDecimais('Produtos'),ValorTotalMesas);

     end;//if iddetalhemesa  }

  end;//with

end;

procedure TfrmRestaurante.sbMesa12Click(Sender: TObject);

var

IDDetalheRestauranteMesa,intStatusM12 : Integer;
SituacaoMesa, JuntarMesas : String;
M12 : String;
//ValorTotalMesas : Real;

begin

  with dmModule do begin

    if (lbl_edtIDDetalheMesa.Caption > '0')and(ckMesa12.Caption = 'Livre') Then begin

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text <> '') Then begin

        lbl_edtNMesa.Text := lbl_edtNMesa.Text+(' e 12');

      end;

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text = '')Then begin

        lbl_edtNMesa.Text := '12';

      end;

      {if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text <> '')and(lbl_edtIDDetalheMesa.Caption > '0')Then begin

        if lbl_edtNMesa.Text <> '' Then begin
        lbl_edtNMesa.Text := lbl_edtNMesa.Text +' e 12' ;
        end else begin
        lbl_edtNMesa.Text :=  '12';
        end;

        lbl_Informacao.Caption := 'Juntar Mesas';

      end;}

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text = '')Then begin

        ///if lbl_edtNMesa.Text = '' Then begin
        lbl_edtNMesa.Text :=  '12';
      ///  end;

      end;

     // ckMesa12.Checked := True;
      M12 := 'Sim';

////////////////////////////////////////////////////////////////////////////////

      if lbl_Informacao.Caption = 'Juntar Mesas' Then begin

        JuntarMesas := 'Sim';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M12 = ''' + M12 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M12 = ''' + M12 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M12) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M12 + ''')');
        ibControleMesas.ExecSQL;

        end;

        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM12 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M12 = ''' + IntToStr(intStatusM12) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M12) values '
          +'(''' + IntToStr(intStatusM12) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa12.Font.Color := clRed;
        ckMesa12.Caption := 'Ocupada';
        ckMesa12.Checked := True;
        lbl_Informacao.Caption := '';

      end else if lbl_AbMesa.Caption = 'Abertura de Mesas' then begin

        JuntarMesas := 'Nao';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M12 = ''' + M12 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M12 = ''' + M12 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M12) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M12 + ''')');
        ibControleMesas.ExecSQL;

        end;

        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM12 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M12 = ''' + IntToStr(intStatusM12) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M12) values '
          +'(''' + IntToStr(intStatusM12) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa12.Font.Color := clRed;
        ckMesa12.Caption := 'Ocupada';
        ckMesa12.Checked := True;
        lbl_Informacao.Caption := '';

      end;//if juntar mesas

       //ckMesa12.Font.Color := clRed;
       //ckMesa12.Caption := 'Ocupada';

    end else begin

      Commit(ibControleMesas);
      ibControleMesas.Close;
      ibControleMesas.SQL.Clear;
      ibControleMesas.SQL.Add('SELECT TBLCONTROLEMESAS.*,'
      + 'TBLDETALHERESTAURANTE.NRMESA,TBLDETALHERESTAURANTE.M12 FROM TBLCONTROLEMESAS '
      + 'INNER JOIN TBLDETALHERESTAURANTE ON TBLCONTROLEMESAS.IDDETALHECONTROLE=TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE WHERE TBLCONTROLEMESAS.M12=''Sim''');
      ibControleMesas.Open;

      if ibControleMesas.RecordCount > 0 Then begin
      lbl_edtIDDetalheMesa.Caption := InttoStr(ibControleMesas.FieldByName('IDDETALHECONTROLE').AsInteger);
      lbl_edtNMesa.Text := ibControleMesas.FieldByName('NRMESA').AsString;
      end;
      
    end;// if iddetalhe mesa

     if(ckMesa12.Caption = 'Ocupada') then begin

       ExecSelectVendasR;

     end;

   { if (lbl_edtIDDetalheMesa.Caption >'0')and(ckMesa3.Caption = 'Ocupada') Then begin

      Commit(ibRestaurante);
      ibRestaurante.Close;
      ibRestaurante.SQL.Clear;
      ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + '''');
      ibRestaurante.Open;

      (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      while not ibRestaurante.Eof do begin

        if ValorTotalMesas = 0 Then begin

          ValorTotalMesas := StrToFloat(StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalMesas := StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          ValorTotalMesas := ValorTotalMesas + StrtoFloat(StringReplace(TotalMesas,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibRestaurante.Next;

      end;//while

      lbl_ValorTotal.Caption := FormatFloat(CasasDecimais('Produtos'),ValorTotalMesas);

     end;//if iddetalhemesa  }

  end;//with


end;

procedure TfrmRestaurante.sbMesa13Click(Sender: TObject);

var

IDDetalheRestauranteMesa,intStatusM13 : Integer;
SituacaoMesa, JuntarMesas : String;
M13 : String;
//ValorTotalMesas : Real;

begin

  with dmModule do begin

    if (lbl_edtIDDetalheMesa.Caption > '0')and(ckMesa13.Caption = 'Livre') Then begin

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text <> '') Then begin

        lbl_edtNMesa.Text := lbl_edtNMesa.Text+(' e 13');

      end;

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text = '')Then begin

        lbl_edtNMesa.Text := '13';

      end;

     { if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text <> '')and(lbl_edtIDDetalheMesa.Caption > '0')Then begin

        if lbl_edtNMesa.Text <> '' Then begin
        lbl_edtNMesa.Text := lbl_edtNMesa.Text +' e 13' ;
        end else begin
        lbl_edtNMesa.Text :=  '13';
        end;

        lbl_Informacao.Caption := 'Juntar Mesas';

      end;}

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text = '')Then begin

        ///if lbl_edtNMesa.Text = '' Then begin
        lbl_edtNMesa.Text :=  '13';
      ///  end;

      end;

      //ckMesa13.Checked := True;
      M13 := 'Sim';

////////////////////////////////////////////////////////////////////////////////

      if lbl_Informacao.Caption = 'Juntar Mesas' Then begin

        JuntarMesas := 'Sim';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M13 = ''' + M13 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M13 = ''' + M13 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M13) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M13 + ''')');
        ibControleMesas.ExecSQL;

        end;

        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM13 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M13 = ''' + IntToStr(intStatusM13) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M13) values '
          +'(''' + IntToStr(intStatusM13) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa13.Font.Color := clRed;
        ckMesa13.Caption := 'Ocupada';
        ckMesa13.Checked := True;
        lbl_Informacao.Caption := '';

      end else if lbl_AbMesa.Caption = 'Abertura de Mesas' then begin

        JuntarMesas := 'Nao';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M13 = ''' + M13 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M13 = ''' + M13 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M13) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M13 + ''')');
        ibControleMesas.ExecSQL;

        end;

        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM13 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M13 = ''' + IntToStr(intStatusM13) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M13) values '
          +'(''' + IntToStr(intStatusM13) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa13.Font.Color := clRed;
        ckMesa13.Caption := 'Ocupada';
        ckMesa13.Checked := True;
        lbl_Informacao.Caption := '';

      end;//if juntar mesas

       //ckMesa13.Font.Color := clRed;
       //ckMesa13.Caption := 'Ocupada';

    end else begin

      Commit(ibControleMesas);
      ibControleMesas.Close;
      ibControleMesas.SQL.Clear;
      ibControleMesas.SQL.Add('SELECT TBLCONTROLEMESAS.*,'
      + 'TBLDETALHERESTAURANTE.NRMESA,TBLDETALHERESTAURANTE.M13 FROM TBLCONTROLEMESAS '
      + 'INNER JOIN TBLDETALHERESTAURANTE ON TBLCONTROLEMESAS.IDDETALHECONTROLE=TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE WHERE TBLCONTROLEMESAS.M13=''Sim''');
      ibControleMesas.Open;

      if ibControleMesas.RecordCount > 0 Then begin
      lbl_edtIDDetalheMesa.Caption := InttoStr(ibControleMesas.FieldByName('IDDETALHECONTROLE').AsInteger);
      lbl_edtNMesa.Text := ibControleMesas.FieldByName('NRMESA').AsString;
      end;
      
    end;// if iddetalhe mesa

     if(ckMesa13.Caption = 'Ocupada') then begin

       ExecSelectVendasR;

     end;

   { if (lbl_edtIDDetalheMesa.Caption >'0')and(ckMesa3.Caption = 'Ocupada') Then begin

      Commit(ibRestaurante);
      ibRestaurante.Close;
      ibRestaurante.SQL.Clear;
      ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + '''');
      ibRestaurante.Open;

      (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      while not ibRestaurante.Eof do begin

        if ValorTotalMesas = 0 Then begin

          ValorTotalMesas := StrToFloat(StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalMesas := StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          ValorTotalMesas := ValorTotalMesas + StrtoFloat(StringReplace(TotalMesas,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibRestaurante.Next;

      end;//while

      lbl_ValorTotal.Caption := FormatFloat(CasasDecimais('Produtos'),ValorTotalMesas);

     end;//if iddetalhemesa  }

  end;//with

end;

procedure TfrmRestaurante.sbMesa14Click(Sender: TObject);

var

IDDetalheRestauranteMesa,intStatusM14 : Integer;
SituacaoMesa, JuntarMesas : String;
M14 : String;
//ValorTotalMesas : Real;

begin

  with dmModule do begin

    if (lbl_edtIDDetalheMesa.Caption > '0')and(ckMesa14.Caption = 'Livre') Then begin

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text <> '') Then begin

        lbl_edtNMesa.Text := lbl_edtNMesa.Text+(' e 14');

      end;

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text = '')Then begin

        lbl_edtNMesa.Text := '14';

      end;

     { if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text <> '')and(lbl_edtIDDetalheMesa.Caption > '0')Then begin

        if lbl_edtNMesa.Text <> '' Then begin
        lbl_edtNMesa.Text := lbl_edtNMesa.Text +' e 14' ;
        end else begin
        lbl_edtNMesa.Text :=  '14';
        end;

        lbl_Informacao.Caption := 'Juntar Mesas';

      end;}

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text = '')Then begin

        ///if lbl_edtNMesa.Text = '' Then begin
        lbl_edtNMesa.Text :=  '14';
      ///  end;

      end;

      //ckMesa14.Checked := True;
      M14 := 'Sim';

////////////////////////////////////////////////////////////////////////////////

      if lbl_Informacao.Caption = 'Juntar Mesas' Then begin

        JuntarMesas := 'Sim';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M14 = ''' + M14 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M14 = ''' + M14 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M14) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M14 + ''')');
        ibControleMesas.ExecSQL;

        end;

        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM14 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M14 = ''' + IntToStr(intStatusM14) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M14) values '
          +'(''' + IntToStr(intStatusM14) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa14.Font.Color := clRed;
        ckMesa14.Caption := 'Ocupada';
        ckMesa14.Checked := True;
        lbl_Informacao.Caption := '';

      end else if lbl_AbMesa.Caption = 'Abertura de Mesas' then begin

        JuntarMesas := 'Nao';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M14 = ''' + M14 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M14 = ''' + M14 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M14) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M14 + ''')');
        ibControleMesas.ExecSQL;

        end;


        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM14 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M14 = ''' + IntToStr(intStatusM14) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M14) values '
          +'(''' + IntToStr(intStatusM14) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa14.Font.Color := clRed;
        ckMesa14.Caption := 'Ocupada';
        ckMesa14.Checked := True;
        lbl_Informacao.Caption := '';

      end;//if juntar mesas

       //ckMesa14.Font.Color := clRed;
       //ckMesa14.Caption := 'Ocupada';

    end else begin

      Commit(ibControleMesas);
      ibControleMesas.Close;
      ibControleMesas.SQL.Clear;
      ibControleMesas.SQL.Add('SELECT TBLCONTROLEMESAS.*,'
      + 'TBLDETALHERESTAURANTE.NRMESA,TBLDETALHERESTAURANTE.M14 FROM TBLCONTROLEMESAS '
      + 'INNER JOIN TBLDETALHERESTAURANTE ON TBLCONTROLEMESAS.IDDETALHECONTROLE=TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE WHERE TBLCONTROLEMESAS.M14=''Sim''');
      ibControleMesas.Open;

      if ibControleMesas.RecordCount > 0 Then begin
      lbl_edtIDDetalheMesa.Caption := InttoStr(ibControleMesas.FieldByName('IDDETALHECONTROLE').AsInteger);
      lbl_edtNMesa.Text := ibControleMesas.FieldByName('NRMESA').AsString;
      end;
      
    end;// if iddetalhe mesa

     if(ckMesa14.Caption = 'Ocupada') then begin

       ExecSelectVendasR;

     end;

   { if (lbl_edtIDDetalheMesa.Caption >'0')and(ckMesa3.Caption = 'Ocupada') Then begin

      Commit(ibRestaurante);
      ibRestaurante.Close;
      ibRestaurante.SQL.Clear;
      ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + '''');
      ibRestaurante.Open;

      (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      while not ibRestaurante.Eof do begin

        if ValorTotalMesas = 0 Then begin

          ValorTotalMesas := StrToFloat(StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalMesas := StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          ValorTotalMesas := ValorTotalMesas + StrtoFloat(StringReplace(TotalMesas,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibRestaurante.Next;

      end;//while

      lbl_ValorTotal.Caption := FormatFloat(CasasDecimais('Produtos'),ValorTotalMesas);

     end;//if iddetalhemesa  }

  end;//with

end;

procedure TfrmRestaurante.sbMesa15Click(Sender: TObject);

var

IDDetalheRestauranteMesa,intStatusM15 : Integer;
SituacaoMesa, JuntarMesas : String;
M15 : String;
//ValorTotalMesas : Real;

begin

  with dmModule do begin

    if (lbl_edtIDDetalheMesa.Caption > '0')and(ckMesa15.Caption = 'Livre') Then begin

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text <> '') Then begin

        lbl_edtNMesa.Text := lbl_edtNMesa.Text+(' e 15');

      end;

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text = '')Then begin

        lbl_edtNMesa.Text := '15';

      end;

      {if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text <> '')and(lbl_edtIDDetalheMesa.Caption > '0')Then begin

        if lbl_edtNMesa.Text <> '' Then begin
        lbl_edtNMesa.Text := lbl_edtNMesa.Text +' e 15' ;
        end else begin
        lbl_edtNMesa.Text :=  '15';
        end;

        lbl_Informacao.Caption := 'Juntar Mesas';

      end;}

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text = '')Then begin

        ///if lbl_edtNMesa.Text = '' Then begin
        lbl_edtNMesa.Text :=  '15';
      ///  end;

      end;

      //ckMesa15.Checked := True;
      M15 := 'Sim';

////////////////////////////////////////////////////////////////////////////////

      if lbl_Informacao.Caption = 'Juntar Mesas' Then begin

        JuntarMesas := 'Sim';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M15 = ''' + M15 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M15 = ''' + M15 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M15) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M15 + ''')');
        ibControleMesas.ExecSQL;

        end;


        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM15 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M15 = ''' + IntToStr(intStatusM15) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M15) values '
          +'(''' + IntToStr(intStatusM15) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa15.Font.Color := clRed;
        ckMesa15.Caption := 'Ocupada';
        ckMesa15.Checked := True;
        lbl_Informacao.Caption := '';

      end else if lbl_AbMesa.Caption = 'Abertura de Mesas' then begin

        JuntarMesas := 'Nao';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M15 = ''' + M15 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M15 = ''' + M15 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M15) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M15 + ''')');
        ibControleMesas.ExecSQL;

        end;

        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM15 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M15 = ''' + IntToStr(intStatusM15) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M15) values '
          +'(''' + IntToStr(intStatusM15) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa15.Font.Color := clRed;
        ckMesa15.Caption := 'Ocupada';
        ckMesa15.Checked := True;
        lbl_Informacao.Caption := '';

      end;//if juntar mesas

       //ckMesa15.Font.Color := clRed;
       //ckMesa15.Caption := 'Ocupada';

    end else begin

      Commit(ibControleMesas);
      ibControleMesas.Close;
      ibControleMesas.SQL.Clear;
      ibControleMesas.SQL.Add('SELECT TBLCONTROLEMESAS.*,'
      + 'TBLDETALHERESTAURANTE.NRMESA,TBLDETALHERESTAURANTE.M15 FROM TBLCONTROLEMESAS '
      + 'INNER JOIN TBLDETALHERESTAURANTE ON TBLCONTROLEMESAS.IDDETALHECONTROLE=TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE WHERE TBLCONTROLEMESAS.M15=''Sim''');
      ibControleMesas.Open;

      if ibControleMesas.RecordCount > 0 Then begin
      lbl_edtIDDetalheMesa.Caption := InttoStr(ibControleMesas.FieldByName('IDDETALHECONTROLE').AsInteger);
      lbl_edtNMesa.Text := ibControleMesas.FieldByName('NRMESA').AsString;
      end;
      
    end;// if iddetalhe mesa

     if(ckMesa15.Caption = 'Ocupada') then begin

       ExecSelectVendasR;

     end;

   { if (lbl_edtIDDetalheMesa.Caption >'0')and(ckMesa3.Caption = 'Ocupada') Then begin

      Commit(ibRestaurante);
      ibRestaurante.Close;
      ibRestaurante.SQL.Clear;
      ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + '''');
      ibRestaurante.Open;

      (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      while not ibRestaurante.Eof do begin

        if ValorTotalMesas = 0 Then begin

          ValorTotalMesas := StrToFloat(StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalMesas := StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          ValorTotalMesas := ValorTotalMesas + StrtoFloat(StringReplace(TotalMesas,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibRestaurante.Next;

      end;//while

      lbl_ValorTotal.Caption := FormatFloat(CasasDecimais('Produtos'),ValorTotalMesas);

     end;//if iddetalhemesa  }

  end;//with

end;

procedure TfrmRestaurante.sbMesa16Click(Sender: TObject);

var

IDDetalheRestauranteMesa,intStatusM16 : Integer;
SituacaoMesa, JuntarMesas : String;
M16 : String;
//ValorTotalMesas : Real;

begin

  with dmModule do begin

    if (lbl_edtIDDetalheMesa.Caption > '0')and(ckMesa16.Caption = 'Livre') Then begin

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text <> '') Then begin

        lbl_edtNMesa.Text := lbl_edtNMesa.Text+(' e 16');

      end;

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text = '')Then begin

        lbl_edtNMesa.Text := '16';

      end;

      {if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text <> '')and(lbl_edtIDDetalheMesa.Caption > '0')Then begin

        if lbl_edtNMesa.Text <> '' Then begin
        lbl_edtNMesa.Text := lbl_edtNMesa.Text +' e 16' ;
        end else begin
        lbl_edtNMesa.Text :=  '16';
        end;

        lbl_Informacao.Caption := 'Juntar Mesas';

      end;}

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text = '')Then begin

        ///if lbl_edtNMesa.Text = '' Then begin
        lbl_edtNMesa.Text :=  '16';
      ///  end;

      end;

      //ckMesa16.Checked := True;
      M16 := 'Sim';

////////////////////////////////////////////////////////////////////////////////

      if lbl_Informacao.Caption = 'Juntar Mesas' Then begin

        JuntarMesas := 'Sim';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M16 = ''' + M16 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M16 = ''' + M16 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M16) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M16 + ''')');
        ibControleMesas.ExecSQL;

        end;

        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM16 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M16 = ''' + IntToStr(intStatusM16) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M16) values '
          +'(''' + IntToStr(intStatusM16) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa16.Font.Color := clRed;
        ckMesa16.Caption := 'Ocupada';
        ckMesa16.Checked := True;
        lbl_Informacao.Caption := '';

      end else if lbl_AbMesa.Caption = 'Abertura de Mesas' then begin

        JuntarMesas := 'Nao';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M16 = ''' + M16 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M16 = ''' + M16 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M16) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M16 + ''')');
        ibControleMesas.ExecSQL;

        end;

        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM16 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M16 = ''' + IntToStr(intStatusM16) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M16) values '
          +'(''' + IntToStr(intStatusM16) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa16.Font.Color := clRed;
        ckMesa16.Caption := 'Ocupada';
        ckMesa16.Checked := True;
        lbl_Informacao.Caption := '';

      end;//if juntar mesas

       //ckMesa16.Font.Color := clRed;
       //ckMesa16.Caption := 'Ocupada';

    end else begin

      Commit(ibControleMesas);
      ibControleMesas.Close;
      ibControleMesas.SQL.Clear;
      ibControleMesas.SQL.Add('SELECT TBLCONTROLEMESAS.*,'
      + 'TBLDETALHERESTAURANTE.NRMESA,TBLDETALHERESTAURANTE.M16 FROM TBLCONTROLEMESAS '
      + 'INNER JOIN TBLDETALHERESTAURANTE ON TBLCONTROLEMESAS.IDDETALHECONTROLE=TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE WHERE TBLCONTROLEMESAS.M16=''Sim''');
      ibControleMesas.Open;

      if ibControleMesas.RecordCount > 0 Then begin
      lbl_edtIDDetalheMesa.Caption := InttoStr(ibControleMesas.FieldByName('IDDETALHECONTROLE').AsInteger);
      lbl_edtNMesa.Text := ibControleMesas.FieldByName('NRMESA').AsString;
      end;
      
    end;// if iddetalhe mesa

     if(ckMesa16.Caption = 'Ocupada') then begin

       ExecSelectVendasR;

     end;

   { if (lbl_edtIDDetalheMesa.Caption >'0')and(ckMesa3.Caption = 'Ocupada') Then begin

      Commit(ibRestaurante);
      ibRestaurante.Close;
      ibRestaurante.SQL.Clear;
      ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + '''');
      ibRestaurante.Open;

      (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      while not ibRestaurante.Eof do begin

        if ValorTotalMesas = 0 Then begin

          ValorTotalMesas := StrToFloat(StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalMesas := StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          ValorTotalMesas := ValorTotalMesas + StrtoFloat(StringReplace(TotalMesas,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibRestaurante.Next;

      end;//while

      lbl_ValorTotal.Caption := FormatFloat(CasasDecimais('Produtos'),ValorTotalMesas);

     end;//if iddetalhemesa  }

  end;//with

end;

procedure TfrmRestaurante.sbMesa17Click(Sender: TObject);

var

IDDetalheRestauranteMesa,intStatusM17 : Integer;
SituacaoMesa, JuntarMesas : String;
M17 : String;
//ValorTotalMesas : Real;

begin

  with dmModule do begin

    if (lbl_edtIDDetalheMesa.Caption > '0')and(ckMesa17.Caption = 'Livre') Then begin

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text <> '') Then begin

        lbl_edtNMesa.Text := lbl_edtNMesa.Text+(' e 17');

      end;

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text = '')Then begin

        lbl_edtNMesa.Text := '17';

      end;

      {if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text <> '')and(lbl_edtIDDetalheMesa.Caption > '0')Then begin

        if lbl_edtNMesa.Text <> '' Then begin
        lbl_edtNMesa.Text := lbl_edtNMesa.Text +' e 17' ;
        end else begin
        lbl_edtNMesa.Text :=  '17';
        end;

        lbl_Informacao.Caption := 'Juntar Mesas';

      end;}

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text = '')Then begin

        ///if lbl_edtNMesa.Text = '' Then begin
        lbl_edtNMesa.Text :=  '17';
      ///  end;

      end;

      //ckMesa17.Checked := True;
      M17 := 'Sim';

////////////////////////////////////////////////////////////////////////////////

      if lbl_Informacao.Caption = 'Juntar Mesas' Then begin

        JuntarMesas := 'Sim';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M17 = ''' + M17 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M17 = ''' + M17 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M17) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M17 + ''')');
        ibControleMesas.ExecSQL;

        end;

        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM17 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M17 = ''' + IntToStr(intStatusM17) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M17) values '
          +'(''' + IntToStr(intStatusM17) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa17.Font.Color := clRed;
        ckMesa17.Caption := 'Ocupada';
        ckMesa17.Checked := True;
        lbl_Informacao.Caption := '';

      end else if lbl_AbMesa.Caption = 'Abertura de Mesas' then begin

        JuntarMesas := 'Nao';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M17 = ''' + M17 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M17 = ''' + M17 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M17) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M17 + ''')');
        ibControleMesas.ExecSQL;

        end;

        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM17 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M17 = ''' + IntToStr(intStatusM17) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M17) values '
          +'(''' + IntToStr(intStatusM17) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa17.Font.Color := clRed;
        ckMesa17.Caption := 'Ocupada';
        ckMesa17.Checked := True;
        lbl_Informacao.Caption := '';

      end;//if juntar mesas

       //ckMesa17.Font.Color := clRed;
       //ckMesa17.Caption := 'Ocupada';

    end else begin

      Commit(ibControleMesas);
      ibControleMesas.Close;
      ibControleMesas.SQL.Clear;
      ibControleMesas.SQL.Add('SELECT TBLCONTROLEMESAS.*,'
      + 'TBLDETALHERESTAURANTE.NRMESA,TBLDETALHERESTAURANTE.M17 FROM TBLCONTROLEMESAS '
      + 'INNER JOIN TBLDETALHERESTAURANTE ON TBLCONTROLEMESAS.IDDETALHECONTROLE=TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE WHERE TBLCONTROLEMESAS.M17=''Sim''');
      ibControleMesas.Open;

      if ibControleMesas.RecordCount > 0 Then begin
      lbl_edtIDDetalheMesa.Caption := InttoStr(ibControleMesas.FieldByName('IDDETALHECONTROLE').AsInteger);
      lbl_edtNMesa.Text := ibControleMesas.FieldByName('NRMESA').AsString;
      end;
      
    end;// if iddetalhe mesa

     if(ckMesa17.Caption = 'Ocupada') then begin

       ExecSelectVendasR;

     end;

   { if (lbl_edtIDDetalheMesa.Caption >'0')and(ckMesa3.Caption = 'Ocupada') Then begin

      Commit(ibRestaurante);
      ibRestaurante.Close;
      ibRestaurante.SQL.Clear;
      ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + '''');
      ibRestaurante.Open;

      (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      while not ibRestaurante.Eof do begin

        if ValorTotalMesas = 0 Then begin

          ValorTotalMesas := StrToFloat(StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalMesas := StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          ValorTotalMesas := ValorTotalMesas + StrtoFloat(StringReplace(TotalMesas,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibRestaurante.Next;

      end;//while

      lbl_ValorTotal.Caption := FormatFloat(CasasDecimais('Produtos'),ValorTotalMesas);

     end;//if iddetalhemesa  }

  end;//with

end;

procedure TfrmRestaurante.sbMesa18Click(Sender: TObject);

var

IDDetalheRestauranteMesa,intStatusM18 : Integer;
SituacaoMesa, JuntarMesas : String;
M18 : String;
//ValorTotalMesas : Real;

begin

  with dmModule do begin

    if (lbl_edtIDDetalheMesa.Caption > '0')and(ckMesa18.Caption = 'Livre') Then begin

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text <> '') Then begin

        lbl_edtNMesa.Text := lbl_edtNMesa.Text+(' e 18');

      end;

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text = '')Then begin

        lbl_edtNMesa.Text := '18';

      end;

      {if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text <> '')and(lbl_edtIDDetalheMesa.Caption > '0')Then begin

        if lbl_edtNMesa.Text <> '' Then begin
        lbl_edtNMesa.Text := lbl_edtNMesa.Text +' e 18' ;
        end else begin
        lbl_edtNMesa.Text :=  '18';
        end;

        lbl_Informacao.Caption := 'Juntar Mesas';

      end;}

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text = '')Then begin

        ///if lbl_edtNMesa.Text = '' Then begin
        lbl_edtNMesa.Text :=  '18';
      ///  end;

      end;

      //ckMesa18.Checked := True;
      M18 := 'Sim';

////////////////////////////////////////////////////////////////////////////////

      if lbl_Informacao.Caption = 'Juntar Mesas' Then begin

        JuntarMesas := 'Sim';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M18 = ''' + M18 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M18 = ''' + M18 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M18) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M18 + ''')');
        ibControleMesas.ExecSQL;

        end;

        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM18 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M18 = ''' + IntToStr(intStatusM18) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M18) values '
          +'(''' + IntToStr(intStatusM18) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa18.Font.Color := clRed;
        ckMesa18.Caption := 'Ocupada';
        ckMesa18.Checked := True;
        lbl_Informacao.Caption := '';

      end else if lbl_AbMesa.Caption = 'Abertura de Mesas' then begin

        JuntarMesas := 'Nao';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M18 = ''' + M18 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M18 = ''' + M18 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M18) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M18 + ''')');
        ibControleMesas.ExecSQL;

        end;

        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM18 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M18 = ''' + IntToStr(intStatusM18) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M18) values '
          +'(''' + IntToStr(intStatusM18) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa18.Font.Color := clRed;
        ckMesa18.Caption := 'Ocupada';
        ckMesa18.Checked := True;
        lbl_Informacao.Caption := '';

      end;//if juntar mesas

       //ckMesa18.Font.Color := clRed;
       //ckMesa18.Caption := 'Ocupada';

    end else begin

      Commit(ibControleMesas);
      ibControleMesas.Close;
      ibControleMesas.SQL.Clear;
      ibControleMesas.SQL.Add('SELECT TBLCONTROLEMESAS.*,'
      + 'TBLDETALHERESTAURANTE.NRMESA,TBLDETALHERESTAURANTE.M18 FROM TBLCONTROLEMESAS '
      + 'INNER JOIN TBLDETALHERESTAURANTE ON TBLCONTROLEMESAS.IDDETALHECONTROLE=TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE WHERE TBLCONTROLEMESAS.M18=''Sim''');
      ibControleMesas.Open;

      if ibControleMesas.RecordCount > 0 Then begin
      lbl_edtIDDetalheMesa.Caption := InttoStr(ibControleMesas.FieldByName('IDDETALHECONTROLE').AsInteger);
      lbl_edtNMesa.Text := ibControleMesas.FieldByName('NRMESA').AsString;
      end;

    end;// if iddetalhe mesa

     if(ckMesa18.Caption = 'Ocupada') then begin

       ExecSelectVendasR;

     end;

   { if (lbl_edtIDDetalheMesa.Caption >'0')and(ckMesa3.Caption = 'Ocupada') Then begin

      Commit(ibRestaurante);
      ibRestaurante.Close;
      ibRestaurante.SQL.Clear;
      ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + '''');
      ibRestaurante.Open;

      (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      while not ibRestaurante.Eof do begin

        if ValorTotalMesas = 0 Then begin

          ValorTotalMesas := StrToFloat(StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalMesas := StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          ValorTotalMesas := ValorTotalMesas + StrtoFloat(StringReplace(TotalMesas,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibRestaurante.Next;

      end;//while

      lbl_ValorTotal.Caption := FormatFloat(CasasDecimais('Produtos'),ValorTotalMesas);

     end;//if iddetalhemesa  }


  end;//with

end;

procedure TfrmRestaurante.sbMesa19Click(Sender: TObject);

var

IDDetalheRestauranteMesa,intStatusM19 : Integer;
SituacaoMesa, JuntarMesas : String;
M19 : String;
//ValorTotalMesas : Real;

begin

  with dmModule do begin

    if (lbl_edtIDDetalheMesa.Caption > '0')and(ckMesa19.Caption = 'Livre') Then begin

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text <> '') Then begin

        lbl_edtNMesa.Text := lbl_edtNMesa.Text+(' e 19');

      end;

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text = '')Then begin

        lbl_edtNMesa.Text := '19';

      end;

     { if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text <> '')and(lbl_edtIDDetalheMesa.Caption > '0')Then begin

        if lbl_edtNMesa.Text <> '' Then begin
        lbl_edtNMesa.Text := lbl_edtNMesa.Text +' e 19' ;
        end else begin
        lbl_edtNMesa.Text :=  '19';
        end;

        lbl_Informacao.Caption := 'Juntar Mesas';

      end;}

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text = '')Then begin

        ///if lbl_edtNMesa.Text = '' Then begin
        lbl_edtNMesa.Text :=  '19';
      ///  end;

      end;

      //ckMesa19.Checked := True;
      M19 := 'Sim';

////////////////////////////////////////////////////////////////////////////////

      if lbl_Informacao.Caption = 'Juntar Mesas' Then begin

        JuntarMesas := 'Sim';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M19 = ''' + M19 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M19 = ''' + M19 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M19) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M19 + ''')');
        ibControleMesas.ExecSQL;

        end;

        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM19 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M19 = ''' + IntToStr(intStatusM19) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M19) values '
          +'(''' + IntToStr(intStatusM19) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa19.Font.Color := clRed;
        ckMesa19.Caption := 'Ocupada';
        ckMesa19.Checked := True;
        lbl_Informacao.Caption := '';

      end else if lbl_AbMesa.Caption = 'Abertura de Mesas' then begin

        JuntarMesas := 'Nao';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M19 = ''' + M19 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M19 = ''' + M19 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M19) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M19 + ''')');
        ibControleMesas.ExecSQL;

        end;

        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM19 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M19 = ''' + IntToStr(intStatusM19) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M19) values '
          +'(''' + IntToStr(intStatusM19) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa19.Font.Color := clRed;
        ckMesa19.Caption := 'Ocupada';
        ckMesa19.Checked := True;
        lbl_Informacao.Caption := '';

      end;//if juntar mesas

       //ckMesa19.Font.Color := clRed;
       //ckMesa19.Caption := 'Ocupada';

    end else begin

      Commit(ibControleMesas);
      ibControleMesas.Close;
      ibControleMesas.SQL.Clear;
      ibControleMesas.SQL.Add('SELECT TBLCONTROLEMESAS.*,'
      + 'TBLDETALHERESTAURANTE.NRMESA,TBLDETALHERESTAURANTE.M19 FROM TBLCONTROLEMESAS '
      + 'INNER JOIN TBLDETALHERESTAURANTE ON TBLCONTROLEMESAS.IDDETALHECONTROLE=TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE WHERE TBLCONTROLEMESAS.M19=''Sim''');
      ibControleMesas.Open;

      if ibControleMesas.RecordCount > 0 Then begin
      lbl_edtIDDetalheMesa.Caption := InttoStr(ibControleMesas.FieldByName('IDDETALHECONTROLE').AsInteger);
      lbl_edtNMesa.Text := ibControleMesas.FieldByName('NRMESA').AsString;
      end;
      
    end;// if iddetalhe mesa

     if(ckMesa19.Caption = 'Ocupada') then begin

       ExecSelectVendasR;

     end;

   { if (lbl_edtIDDetalheMesa.Caption >'0')and(ckMesa3.Caption = 'Ocupada') Then begin

      Commit(ibRestaurante);
      ibRestaurante.Close;
      ibRestaurante.SQL.Clear;
      ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + '''');
      ibRestaurante.Open;

      (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      while not ibRestaurante.Eof do begin

        if ValorTotalMesas = 0 Then begin

          ValorTotalMesas := StrToFloat(StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalMesas := StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          ValorTotalMesas := ValorTotalMesas + StrtoFloat(StringReplace(TotalMesas,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibRestaurante.Next;

      end;//while

      lbl_ValorTotal.Caption := FormatFloat(CasasDecimais('Produtos'),ValorTotalMesas);

     end;//if iddetalhemesa  }


  end;//with

end;

procedure TfrmRestaurante.sbMesa20Click(Sender: TObject);

var

IDDetalheRestauranteMesa,intStatusM20 : Integer;
SituacaoMesa, JuntarMesas : String;
M20 : String;
//ValorTotalMesas : Real;

begin

  with dmModule do begin

    if (lbl_edtIDDetalheMesa.Caption > '0')and(ckMesa20.Caption = 'Livre') Then begin

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text <> '') Then begin

        lbl_edtNMesa.Text := lbl_edtNMesa.Text+(' e 20');

      end;

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text = '')Then begin

        lbl_edtNMesa.Text := '20';

      end;

      {if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text <> '')and(lbl_edtIDDetalheMesa.Caption > '0')Then begin

        if lbl_edtNMesa.Text <> '' Then begin
        lbl_edtNMesa.Text := lbl_edtNMesa.Text +' e 20' ;
        end else begin
        lbl_edtNMesa.Text :=  '20';
        end;

        lbl_Informacao.Caption := 'Juntar Mesas';

      end;}

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text = '')Then begin

        ///if lbl_edtNMesa.Text = '' Then begin
        lbl_edtNMesa.Text :=  '20';
      ///  end;

      end;

      //ckMesa20.Checked := True;
      M20 := 'Sim';

////////////////////////////////////////////////////////////////////////////////

      if lbl_Informacao.Caption = 'Juntar Mesas' Then begin

        JuntarMesas := 'Sim';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M20 = ''' + M20 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M20 = ''' + M20 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M20) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M20 + ''')');
        ibControleMesas.ExecSQL;

        end;

        ibStatusMesa.Close;
        ibStatusMesa.SQL.Clear;
        ibStatusMesa.SQL.Add('SELECT * FROM TBL_STATUSMESA');
        ibStatusMesa.Open;

        intStatusM20 := 1;

        if ibStatusMesa.RecordCount > 0 Then begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('UPDATE TBL_STATUSMESA SET '
          + 'M20 = ''' + IntToStr(intStatusM20) + ''' WHERE IDSTATUSMESA = ''1''');
          ibStatusMesa.ExecSQL;

        end else begin

          ibStatusMesa.Close;
          ibStatusMesa.SQL.Clear;
          ibStatusMesa.SQL.Add('INSERT INTO TBL_STATUSMESA'
          + '(M20) values '
          +'(''' + IntToStr(intStatusM20) + ''')');
          ibStatusMesa.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa20.Font.Color := clRed;
        ckMesa20.Caption := 'Ocupada';
        ckMesa20.Checked := True;
        lbl_Informacao.Caption := '';

      end else if lbl_AbMesa.Caption = 'Abertura de Mesas' then begin

        JuntarMesas := 'Nao';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M20 = ''' + M20 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M20 = ''' + M20 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M20) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M20 + ''')');
        ibControleMesas.ExecSQL;

        end;

        lbl_AbMesa.Caption := '';
        ckMesa20.Font.Color := clRed;
        ckMesa20.Caption := 'Ocupada';
        ckMesa20.Checked := True;
        lbl_Informacao.Caption := '';

      end;//if juntar mesas

       //ckMesa20.Font.Color := clRed;
       //ckMesa20.Caption := 'Ocupada';

    end else begin

      Commit(ibControleMesas);
      ibControleMesas.Close;
      ibControleMesas.SQL.Clear;
      ibControleMesas.SQL.Add('SELECT TBLCONTROLEMESAS.*,'
      + 'TBLDETALHERESTAURANTE.NRMESA,TBLDETALHERESTAURANTE.M20 FROM TBLCONTROLEMESAS '
      + 'INNER JOIN TBLDETALHERESTAURANTE ON TBLCONTROLEMESAS.IDDETALHECONTROLE=TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE WHERE TBLCONTROLEMESAS.M20=''Sim''');
      ibControleMesas.Open;

      if ibControleMesas.RecordCount > 0 Then begin
      lbl_edtIDDetalheMesa.Caption := InttoStr(ibControleMesas.FieldByName('IDDETALHECONTROLE').AsInteger);
      lbl_edtNMesa.Text := ibControleMesas.FieldByName('NRMESA').AsString;
      end;
      
    end;// if iddetalhe mesa

     if(ckMesa20.Caption = 'Ocupada') then begin

       ExecSelectVendasR;

     end;

   { if (lbl_edtIDDetalheMesa.Caption >'0')and(ckMesa3.Caption = 'Ocupada') Then begin

      Commit(ibRestaurante);
      ibRestaurante.Close;
      ibRestaurante.SQL.Clear;
      ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + '''');
      ibRestaurante.Open;

      (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      while not ibRestaurante.Eof do begin

        if ValorTotalMesas = 0 Then begin

          ValorTotalMesas := StrToFloat(StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalMesas := StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          ValorTotalMesas := ValorTotalMesas + StrtoFloat(StringReplace(TotalMesas,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibRestaurante.Next;

      end;//while

      lbl_ValorTotal.Caption := FormatFloat(CasasDecimais('Produtos'),ValorTotalMesas);

     end;//if iddetalhemesa  }

  end;//with

end;

procedure TfrmRestaurante.sbMesa21Click(Sender: TObject);

var

IDDetalheRestauranteMesa : Integer;
SituacaoMesa, JuntarMesas : String;
M21, TotalMesas : String;
ValorTotalMesas : Real;

begin

  with dmModule do begin

    if (lbl_edtIDDetalheMesa.Caption > '0')and(ckMesa21.Caption = 'Livre') Then begin

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text <> '') Then begin

        lbl_edtNMesa.Text := lbl_edtNMesa.Text+(' e 21');

      end;

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text = '')Then begin

        lbl_edtNMesa.Text := '21';

      end;

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text <> '')and(lbl_edtIDDetalheMesa.Caption > '0')Then begin

        if lbl_edtNMesa.Text <> '' Then begin
        lbl_edtNMesa.Text := lbl_edtNMesa.Text +' e 21' ;
        end else begin
        lbl_edtNMesa.Text :=  '21';
        end;

        lbl_Informacao.Caption := 'Juntar Mesas';

      end;

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text = '')Then begin

        ///if lbl_edtNMesa.Text = '' Then begin
        lbl_edtNMesa.Text :=  '21';
      ///  end;

      end;

      ckMesa21.Checked := True;
      M21 := 'Sim';

////////////////////////////////////////////////////////////////////////////////

      if lbl_Informacao.Caption = 'Juntar Mesas' Then begin

        JuntarMesas := 'Sim';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M21 = ''' + M21 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M21 = ''' + M21 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M21) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M21 + ''')');
        ibControleMesas.ExecSQL;

        end;

      end else begin

        JuntarMesas := 'Nao';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M21 = ''' + M21 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M21 = ''' + M21 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M21) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M21 + ''')');
        ibControleMesas.ExecSQL;

        end;

      end;//if juntar mesas

       ckMesa21.Font.Color := clRed;
       ckMesa21.Caption := 'Ocupada';

    end else begin

      Commit(ibControleMesas);
      ibControleMesas.Close;
      ibControleMesas.SQL.Clear;
      ibControleMesas.SQL.Add('SELECT TBLCONTROLEMESAS.*,'
      + 'TBLDETALHERESTAURANTE.NRMESA,TBLDETALHERESTAURANTE.M21 FROM TBLCONTROLEMESAS '
      + 'INNER JOIN TBLDETALHERESTAURANTE ON TBLCONTROLEMESAS.IDDETALHECONTROLE=TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE WHERE TBLCONTROLEMESAS.M21=''Sim''');
      ibControleMesas.Open;

      if ibControleMesas.RecordCount > 0 Then begin
      lbl_edtIDDetalheMesa.Caption := InttoStr(ibControleMesas.FieldByName('IDDETALHECONTROLE').AsInteger);
      lbl_edtNMesa.Text := ibControleMesas.FieldByName('NRMESA').AsString;
      end;
      
    end;// if iddetalhe mesa

    if (lbl_edtIDDetalheMesa.Caption >'0')and(ckMesa21.Caption = 'Ocupada') Then begin

      Commit(ibRestaurante);
      ibRestaurante.Close;
      ibRestaurante.SQL.Clear;
      ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + '''');
      ibRestaurante.Open;

      (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      while not ibRestaurante.Eof do begin

        if ValorTotalMesas = 0 Then begin

          ValorTotalMesas := StrToFloat(StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalMesas := StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          ValorTotalMesas := ValorTotalMesas + StrtoFloat(StringReplace(TotalMesas,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibRestaurante.Next;

      end;//while

      lbl_ValorTotal.Caption := FormatFloat(CasasDecimais('Produtos'),ValorTotalMesas);

    end;//if iddetalhemesa

  end;//with

end;

procedure TfrmRestaurante.sbMesa22Click(Sender: TObject);

var

IDDetalheRestauranteMesa : Integer;
SituacaoMesa, JuntarMesas : String;
M22, TotalMesas : String;
ValorTotalMesas : Real;

begin

  with dmModule do begin

    if (lbl_edtIDDetalheMesa.Caption > '0')and(ckMesa22.Caption = 'Livre') Then begin

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text <> '') Then begin

        lbl_edtNMesa.Text := lbl_edtNMesa.Text+(' e 22');

      end;

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text = '')Then begin

        lbl_edtNMesa.Text := '22';

      end;

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text <> '')and(lbl_edtIDDetalheMesa.Caption > '0')Then begin

        if lbl_edtNMesa.Text <> '' Then begin
        lbl_edtNMesa.Text := lbl_edtNMesa.Text +' e 22' ;
        end else begin
        lbl_edtNMesa.Text :=  '22';
        end;

        lbl_Informacao.Caption := 'Juntar Mesas';

      end;

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text = '')Then begin

        ///if lbl_edtNMesa.Text = '' Then begin
        lbl_edtNMesa.Text :=  '22';
      ///  end;

      end;

      ckMesa22.Checked := True;
      M22 := 'Sim';

////////////////////////////////////////////////////////////////////////////////

      if lbl_Informacao.Caption = 'Juntar Mesas' Then begin

        JuntarMesas := 'Sim';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M22 = ''' + M22 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M22 = ''' + M22 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M22) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M22 + ''')');
        ibControleMesas.ExecSQL;

        end;

      end else begin

        JuntarMesas := 'Nao';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M22 = ''' + M22 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M22 = ''' + M22 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M22) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M22 + ''')');
        ibControleMesas.ExecSQL;

        end;

      end;//if juntar mesas

       ckMesa22.Font.Color := clRed;
       ckMesa22.Caption := 'Ocupada';

    end else begin

      Commit(ibControleMesas);
      ibControleMesas.Close;
      ibControleMesas.SQL.Clear;
      ibControleMesas.SQL.Add('SELECT TBLCONTROLEMESAS.*,'
      + 'TBLDETALHERESTAURANTE.NRMESA,TBLDETALHERESTAURANTE.M22 FROM TBLCONTROLEMESAS '
      + 'INNER JOIN TBLDETALHERESTAURANTE ON TBLCONTROLEMESAS.IDDETALHECONTROLE=TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE WHERE TBLCONTROLEMESAS.M22=''Sim''');
      ibControleMesas.Open;

      if ibControleMesas.RecordCount > 0 Then begin
      lbl_edtIDDetalheMesa.Caption := InttoStr(ibControleMesas.FieldByName('IDDETALHECONTROLE').AsInteger);
      lbl_edtNMesa.Text := ibControleMesas.FieldByName('NRMESA').AsString;
      end;
      
    end;// if iddetalhe mesa

    if (lbl_edtIDDetalheMesa.Caption >'0')and(ckMesa22.Caption = 'Ocupada') Then begin

      Commit(ibRestaurante);
      ibRestaurante.Close;
      ibRestaurante.SQL.Clear;
      ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + '''');
      ibRestaurante.Open;

      (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      while not ibRestaurante.Eof do begin

        if ValorTotalMesas = 0 Then begin

          ValorTotalMesas := StrToFloat(StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalMesas := StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          ValorTotalMesas := ValorTotalMesas + StrtoFloat(StringReplace(TotalMesas,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibRestaurante.Next;

      end;//while

      lbl_ValorTotal.Caption := FormatFloat(CasasDecimais('Produtos'),ValorTotalMesas);

    end;//if iddetalhemesa

  end;//with


end;

procedure TfrmRestaurante.sbMesa23Click(Sender: TObject);

var

IDDetalheRestauranteMesa : Integer;
SituacaoMesa, JuntarMesas : String;
M23, TotalMesas : String;
ValorTotalMesas : Real;

begin

  with dmModule do begin

    if (lbl_edtIDDetalheMesa.Caption > '0')and(ckMesa23.Caption = 'Livre') Then begin

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text <> '') Then begin

        lbl_edtNMesa.Text := lbl_edtNMesa.Text+(' e 23');

      end;

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text = '')Then begin

        lbl_edtNMesa.Text := '23';

      end;

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text <> '')and(lbl_edtIDDetalheMesa.Caption > '0')Then begin

        if lbl_edtNMesa.Text <> '' Then begin
        lbl_edtNMesa.Text := lbl_edtNMesa.Text +' e 23' ;
        end else begin
        lbl_edtNMesa.Text :=  '23';
        end;

        lbl_Informacao.Caption := 'Juntar Mesas';

      end;

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text = '')Then begin

        ///if lbl_edtNMesa.Text = '' Then begin
        lbl_edtNMesa.Text :=  '23';
      ///  end;

      end;

      ckMesa23.Checked := True;
      M23 := 'Sim';

////////////////////////////////////////////////////////////////////////////////

      if lbl_Informacao.Caption = 'Juntar Mesas' Then begin

        JuntarMesas := 'Sim';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M23 = ''' + M23 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M23 = ''' + M23 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M23) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M23 + ''')');
        ibControleMesas.ExecSQL;

        end;

      end else begin

        JuntarMesas := 'Nao';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M23 = ''' + M23 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M23 = ''' + M23 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M23) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M23 + ''')');
        ibControleMesas.ExecSQL;

        end;

      end;//if juntar mesas

       ckMesa23.Font.Color := clRed;
       ckMesa23.Caption := 'Ocupada';

    end else begin

      Commit(ibControleMesas);
      ibControleMesas.Close;
      ibControleMesas.SQL.Clear;
      ibControleMesas.SQL.Add('SELECT TBLCONTROLEMESAS.*,'
      + 'TBLDETALHERESTAURANTE.NRMESA,TBLDETALHERESTAURANTE.M23 FROM TBLCONTROLEMESAS '
      + 'INNER JOIN TBLDETALHERESTAURANTE ON TBLCONTROLEMESAS.IDDETALHECONTROLE=TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE WHERE TBLCONTROLEMESAS.M23=''Sim''');
      ibControleMesas.Open;

      if ibControleMesas.RecordCount > 0 Then begin
      lbl_edtIDDetalheMesa.Caption := InttoStr(ibControleMesas.FieldByName('IDDETALHECONTROLE').AsInteger);
      lbl_edtNMesa.Text := ibControleMesas.FieldByName('NRMESA').AsString;
      end;
      
    end;// if iddetalhe mesa

    if (lbl_edtIDDetalheMesa.Caption >'0')and(ckMesa23.Caption = 'Ocupada') Then begin

      Commit(ibRestaurante);
      ibRestaurante.Close;
      ibRestaurante.SQL.Clear;
      ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + '''');
      ibRestaurante.Open;

      (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      while not ibRestaurante.Eof do begin

        if ValorTotalMesas = 0 Then begin

          ValorTotalMesas := StrToFloat(StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalMesas := StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          ValorTotalMesas := ValorTotalMesas + StrtoFloat(StringReplace(TotalMesas,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibRestaurante.Next;

      end;//while

      lbl_ValorTotal.Caption := FormatFloat(CasasDecimais('Produtos'),ValorTotalMesas);

    end;//if iddetalhemesa

  end;//with


end;

procedure TfrmRestaurante.sbMesa24Click(Sender: TObject);

var

IDDetalheRestauranteMesa : Integer;
SituacaoMesa, JuntarMesas : String;
M24, TotalMesas : String;
ValorTotalMesas : Real;

begin

  with dmModule do begin

    if (lbl_edtIDDetalheMesa.Caption > '0')and(ckMesa24.Caption = 'Livre') Then begin

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text <> '') Then begin

        lbl_edtNMesa.Text := lbl_edtNMesa.Text+(' e 24');

      end;

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text = '')Then begin

        lbl_edtNMesa.Text := '24';

      end;

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text <> '')and(lbl_edtIDDetalheMesa.Caption > '0')Then begin

        if lbl_edtNMesa.Text <> '' Then begin
        lbl_edtNMesa.Text := lbl_edtNMesa.Text +' e 24' ;
        end else begin
        lbl_edtNMesa.Text :=  '24';
        end;

        lbl_Informacao.Caption := 'Juntar Mesas';

      end;

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text = '')Then begin

        ///if lbl_edtNMesa.Text = '' Then begin
        lbl_edtNMesa.Text :=  '24';
      ///  end;

      end;

      ckMesa24.Checked := True;
      M24 := 'Sim';

////////////////////////////////////////////////////////////////////////////////

      if lbl_Informacao.Caption = 'Juntar Mesas' Then begin

        JuntarMesas := 'Sim';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M24 = ''' + M24 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M24 = ''' + M24 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M24) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M24 + ''')');
        ibControleMesas.ExecSQL;

        end;

      end else begin

        JuntarMesas := 'Nao';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M24 = ''' + M24 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M24 = ''' + M24 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M24) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M24 + ''')');
        ibControleMesas.ExecSQL;

        end;

      end;//if juntar mesas

       ckMesa24.Font.Color := clRed;
       ckMesa24.Caption := 'Ocupada';

    end else begin

      Commit(ibControleMesas);
      ibControleMesas.Close;
      ibControleMesas.SQL.Clear;
      ibControleMesas.SQL.Add('SELECT TBLCONTROLEMESAS.*,'
      + 'TBLDETALHERESTAURANTE.NRMESA,TBLDETALHERESTAURANTE.M24 FROM TBLCONTROLEMESAS '
      + 'INNER JOIN TBLDETALHERESTAURANTE ON TBLCONTROLEMESAS.IDDETALHECONTROLE=TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE WHERE TBLCONTROLEMESAS.M24=''Sim''');
      ibControleMesas.Open;

      if ibControleMesas.RecordCount > 0 Then begin
      lbl_edtIDDetalheMesa.Caption := InttoStr(ibControleMesas.FieldByName('IDDETALHECONTROLE').AsInteger);
      lbl_edtNMesa.Text := ibControleMesas.FieldByName('NRMESA').AsString;
      end;
      
    end;// if iddetalhe mesa

    if (lbl_edtIDDetalheMesa.Caption >'0')and(ckMesa24.Caption = 'Ocupada') Then begin

      Commit(ibRestaurante);
      ibRestaurante.Close;
      ibRestaurante.SQL.Clear;
      ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + '''');
      ibRestaurante.Open;

      (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      while not ibRestaurante.Eof do begin

        if ValorTotalMesas = 0 Then begin

          ValorTotalMesas := StrToFloat(StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalMesas := StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          ValorTotalMesas := ValorTotalMesas + StrtoFloat(StringReplace(TotalMesas,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibRestaurante.Next;

      end;//while

      lbl_ValorTotal.Caption := FormatFloat(CasasDecimais('Produtos'),ValorTotalMesas);

    end;//if iddetalhemesa

  end;//with

end;

procedure TfrmRestaurante.sbMesa25Click(Sender: TObject);

var

IDDetalheRestauranteMesa : Integer;
SituacaoMesa, JuntarMesas : String;
M25, TotalMesas : String;
ValorTotalMesas : Real;

begin

  with dmModule do begin

    if (lbl_edtIDDetalheMesa.Caption > '0')and(ckMesa25.Caption = 'Livre') Then begin

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text <> '') Then begin

        lbl_edtNMesa.Text := lbl_edtNMesa.Text+(' e 25');

      end;

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text = '')Then begin

        lbl_edtNMesa.Text := '25';

      end;

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text <> '')and(lbl_edtIDDetalheMesa.Caption > '0')Then begin

        if lbl_edtNMesa.Text <> '' Then begin
        lbl_edtNMesa.Text := lbl_edtNMesa.Text +' e 25' ;
        end else begin
        lbl_edtNMesa.Text :=  '25';
        end;

        lbl_Informacao.Caption := 'Juntar Mesas';

      end;

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text = '')Then begin

        ///if lbl_edtNMesa.Text = '' Then begin
        lbl_edtNMesa.Text :=  '25';
      ///  end;

      end;

      ckMesa25.Checked := True;
      M25 := 'Sim';

////////////////////////////////////////////////////////////////////////////////

      if lbl_Informacao.Caption = 'Juntar Mesas' Then begin

        JuntarMesas := 'Sim';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M25 = ''' + M25 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M25 = ''' + M25 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M25) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M25 + ''')');
        ibControleMesas.ExecSQL;

        end;

      end else begin

        JuntarMesas := 'Nao';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M25 = ''' + M25 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M25 = ''' + M25 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M25) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M25 + ''')');
        ibControleMesas.ExecSQL;

        end;

      end;//if juntar mesas

       ckMesa25.Font.Color := clRed;
       ckMesa25.Caption := 'Ocupada';

    end else begin

      Commit(ibControleMesas);
      ibControleMesas.Close;
      ibControleMesas.SQL.Clear;
      ibControleMesas.SQL.Add('SELECT TBLCONTROLEMESAS.*,'
      + 'TBLDETALHERESTAURANTE.NRMESA,TBLDETALHERESTAURANTE.M25 FROM TBLCONTROLEMESAS '
      + 'INNER JOIN TBLDETALHERESTAURANTE ON TBLCONTROLEMESAS.IDDETALHECONTROLE=TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE WHERE TBLCONTROLEMESAS.M25=''Sim''');
      ibControleMesas.Open;

      if ibControleMesas.RecordCount > 0 Then begin
      lbl_edtIDDetalheMesa.Caption := InttoStr(ibControleMesas.FieldByName('IDDETALHECONTROLE').AsInteger);
      lbl_edtNMesa.Text := ibControleMesas.FieldByName('NRMESA').AsString;
      end;
      
    end;// if iddetalhe mesa

    if (lbl_edtIDDetalheMesa.Caption >'0')and(ckMesa25.Caption = 'Ocupada') Then begin

      Commit(ibRestaurante);
      ibRestaurante.Close;
      ibRestaurante.SQL.Clear;
      ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + '''');
      ibRestaurante.Open;

      (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      while not ibRestaurante.Eof do begin

        if ValorTotalMesas = 0 Then begin

          ValorTotalMesas := StrToFloat(StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalMesas := StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          ValorTotalMesas := ValorTotalMesas + StrtoFloat(StringReplace(TotalMesas,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibRestaurante.Next;

      end;//while

      lbl_ValorTotal.Caption := FormatFloat(CasasDecimais('Produtos'),ValorTotalMesas);

    end;//if iddetalhemesa

  end;//with

end;

procedure TfrmRestaurante.sbMesa26Click(Sender: TObject);

var

IDDetalheRestauranteMesa : Integer;
SituacaoMesa, JuntarMesas : String;
M26, TotalMesas : String;
ValorTotalMesas : Real;

begin

  with dmModule do begin

    if (lbl_edtIDDetalheMesa.Caption > '0')and(ckMesa26.Caption = 'Livre') Then begin

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text <> '') Then begin

        lbl_edtNMesa.Text := lbl_edtNMesa.Text+(' e 26');

      end;

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text = '')Then begin

        lbl_edtNMesa.Text := '26';

      end;

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text <> '')and(lbl_edtIDDetalheMesa.Caption > '0')Then begin

        if lbl_edtNMesa.Text <> '' Then begin
        lbl_edtNMesa.Text := lbl_edtNMesa.Text +' e 26' ;
        end else begin
        lbl_edtNMesa.Text :=  '26';
        end;

        lbl_Informacao.Caption := 'Juntar Mesas';

      end;

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text = '')Then begin

        ///if lbl_edtNMesa.Text = '' Then begin
        lbl_edtNMesa.Text :=  '26';
      ///  end;

      end;

      ckMesa26.Checked := True;
      M26 := 'Sim';

////////////////////////////////////////////////////////////////////////////////

      if lbl_Informacao.Caption = 'Juntar Mesas' Then begin

        JuntarMesas := 'Sim';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M26 = ''' + M26 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M26 = ''' + M26 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M26) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M26 + ''')');
        ibControleMesas.ExecSQL;

        end;

      end else begin

        JuntarMesas := 'Nao';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M26 = ''' + M26 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M26 = ''' + M26 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M26) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M26 + ''')');
        ibControleMesas.ExecSQL;

        end;

      end;//if juntar mesas

       ckMesa26.Font.Color := clRed;
       ckMesa26.Caption := 'Ocupada';

    end else begin

      Commit(ibControleMesas);
      ibControleMesas.Close;
      ibControleMesas.SQL.Clear;
      ibControleMesas.SQL.Add('SELECT TBLCONTROLEMESAS.*,'
      + 'TBLDETALHERESTAURANTE.NRMESA,TBLDETALHERESTAURANTE.M26 FROM TBLCONTROLEMESAS '
      + 'INNER JOIN TBLDETALHERESTAURANTE ON TBLCONTROLEMESAS.IDDETALHECONTROLE=TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE WHERE TBLCONTROLEMESAS.M26=''Sim''');
      ibControleMesas.Open;

      if ibControleMesas.RecordCount > 0 Then begin
      lbl_edtIDDetalheMesa.Caption := InttoStr(ibControleMesas.FieldByName('IDDETALHECONTROLE').AsInteger);
      lbl_edtNMesa.Text := ibControleMesas.FieldByName('NRMESA').AsString;
      end;
      
    end;// if iddetalhe mesa

    if (lbl_edtIDDetalheMesa.Caption >'0')and(ckMesa26.Caption = 'Ocupada') Then begin

      Commit(ibRestaurante);
      ibRestaurante.Close;
      ibRestaurante.SQL.Clear;
      ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + '''');
      ibRestaurante.Open;

      (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      while not ibRestaurante.Eof do begin

        if ValorTotalMesas = 0 Then begin

          ValorTotalMesas := StrToFloat(StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalMesas := StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          ValorTotalMesas := ValorTotalMesas + StrtoFloat(StringReplace(TotalMesas,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibRestaurante.Next;

      end;//while

      lbl_ValorTotal.Caption := FormatFloat(CasasDecimais('Produtos'),ValorTotalMesas);

    end;//if iddetalhemesa

  end;//with

end;

procedure TfrmRestaurante.sbMesa27Click(Sender: TObject);

var

IDDetalheRestauranteMesa : Integer;
SituacaoMesa, JuntarMesas : String;
M27, TotalMesas : String;
ValorTotalMesas : Real;

begin

  with dmModule do begin

    if (lbl_edtIDDetalheMesa.Caption > '0')and(ckMesa27.Caption = 'Livre') Then begin

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text <> '') Then begin

        lbl_edtNMesa.Text := lbl_edtNMesa.Text+(' e 27');

      end;

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text = '')Then begin

        lbl_edtNMesa.Text := '27';

      end;

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text <> '')and(lbl_edtIDDetalheMesa.Caption > '0')Then begin

        if lbl_edtNMesa.Text <> '' Then begin
        lbl_edtNMesa.Text := lbl_edtNMesa.Text +' e 27' ;
        end else begin
        lbl_edtNMesa.Text :=  '27';
        end;

        lbl_Informacao.Caption := 'Juntar Mesas';

      end;

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text = '')Then begin

        ///if lbl_edtNMesa.Text = '' Then begin
        lbl_edtNMesa.Text :=  '27';
      ///  end;

      end;

      ckMesa27.Checked := True;
      M27 := 'Sim';

////////////////////////////////////////////////////////////////////////////////

      if lbl_Informacao.Caption = 'Juntar Mesas' Then begin

        JuntarMesas := 'Sim';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M27 = ''' + M27 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M27 = ''' + M27 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M27) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M27 + ''')');
        ibControleMesas.ExecSQL;

        end;

      end else begin

        JuntarMesas := 'Nao';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M27 = ''' + M27 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M27 = ''' + M27 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M27) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M27 + ''')');
        ibControleMesas.ExecSQL;

        end;

      end;//if juntar mesas

       ckMesa27.Font.Color := clRed;
       ckMesa27.Caption := 'Ocupada';

    end else begin

      Commit(ibControleMesas);
      ibControleMesas.Close;
      ibControleMesas.SQL.Clear;
      ibControleMesas.SQL.Add('SELECT TBLCONTROLEMESAS.*,'
      + 'TBLDETALHERESTAURANTE.NRMESA,TBLDETALHERESTAURANTE.M27 FROM TBLCONTROLEMESAS '
      + 'INNER JOIN TBLDETALHERESTAURANTE ON TBLCONTROLEMESAS.IDDETALHECONTROLE=TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE WHERE TBLCONTROLEMESAS.M27=''Sim''');
      ibControleMesas.Open;

      if ibControleMesas.RecordCount > 0 Then begin
      lbl_edtIDDetalheMesa.Caption := InttoStr(ibControleMesas.FieldByName('IDDETALHECONTROLE').AsInteger);
      lbl_edtNMesa.Text := ibControleMesas.FieldByName('NRMESA').AsString;
      end;
      
    end;// if iddetalhe mesa

    if (lbl_edtIDDetalheMesa.Caption >'0')and(ckMesa27.Caption = 'Ocupada') Then begin

      Commit(ibRestaurante);
      ibRestaurante.Close;
      ibRestaurante.SQL.Clear;
      ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + '''');
      ibRestaurante.Open;

      (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      while not ibRestaurante.Eof do begin

        if ValorTotalMesas = 0 Then begin

          ValorTotalMesas := StrToFloat(StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalMesas := StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          ValorTotalMesas := ValorTotalMesas + StrtoFloat(StringReplace(TotalMesas,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibRestaurante.Next;

      end;//while

      lbl_ValorTotal.Caption := FormatFloat(CasasDecimais('Produtos'),ValorTotalMesas);

    end;//if iddetalhemesa

  end;//with

end;

procedure TfrmRestaurante.sbMesa28Click(Sender: TObject);

var

IDDetalheRestauranteMesa : Integer;
SituacaoMesa, JuntarMesas : String;
M28, TotalMesas : String;
ValorTotalMesas : Real;

begin

  with dmModule do begin

    if (lbl_edtIDDetalheMesa.Caption > '0')and(ckMesa28.Caption = 'Livre') Then begin

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text <> '') Then begin

        lbl_edtNMesa.Text := lbl_edtNMesa.Text+(' e 28');

      end;

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text = '')Then begin

        lbl_edtNMesa.Text := '28';

      end;

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text <> '')and(lbl_edtIDDetalheMesa.Caption > '0')Then begin

        if lbl_edtNMesa.Text <> '' Then begin
        lbl_edtNMesa.Text := lbl_edtNMesa.Text +' e 28' ;
        end else begin
        lbl_edtNMesa.Text :=  '28';
        end;

        lbl_Informacao.Caption := 'Juntar Mesas';

      end;

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text = '')Then begin

        ///if lbl_edtNMesa.Text = '' Then begin
        lbl_edtNMesa.Text :=  '28';
      ///  end;

      end;

      ckMesa28.Checked := True;
      M28 := 'Sim';

////////////////////////////////////////////////////////////////////////////////

      if lbl_Informacao.Caption = 'Juntar Mesas' Then begin

        JuntarMesas := 'Sim';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M28 = ''' + M28 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M28 = ''' + M28 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M28) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M28 + ''')');
        ibControleMesas.ExecSQL;

        end;

      end else begin

        JuntarMesas := 'Nao';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M28 = ''' + M28 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M28 = ''' + M28 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M28) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M28 + ''')');
        ibControleMesas.ExecSQL;

        end;

      end;//if juntar mesas

       ckMesa28.Font.Color := clRed;
       ckMesa28.Caption := 'Ocupada';

    end else begin

      Commit(ibControleMesas);
      ibControleMesas.Close;
      ibControleMesas.SQL.Clear;
      ibControleMesas.SQL.Add('SELECT TBLCONTROLEMESAS.*,'
      + 'TBLDETALHERESTAURANTE.NRMESA,TBLDETALHERESTAURANTE.M28 FROM TBLCONTROLEMESAS '
      + 'INNER JOIN TBLDETALHERESTAURANTE ON TBLCONTROLEMESAS.IDDETALHECONTROLE=TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE WHERE TBLCONTROLEMESAS.M28=''Sim''');
      ibControleMesas.Open;

      if ibControleMesas.RecordCount > 0 Then begin
      lbl_edtIDDetalheMesa.Caption := InttoStr(ibControleMesas.FieldByName('IDDETALHECONTROLE').AsInteger);
      lbl_edtNMesa.Text := ibControleMesas.FieldByName('NRMESA').AsString;
      end;
      
    end;// if iddetalhe mesa

    if (lbl_edtIDDetalheMesa.Caption >'0')and(ckMesa28.Caption = 'Ocupada') Then begin

      Commit(ibRestaurante);
      ibRestaurante.Close;
      ibRestaurante.SQL.Clear;
      ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + '''');
      ibRestaurante.Open;

      (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      while not ibRestaurante.Eof do begin

        if ValorTotalMesas = 0 Then begin

          ValorTotalMesas := StrToFloat(StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalMesas := StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          ValorTotalMesas := ValorTotalMesas + StrtoFloat(StringReplace(TotalMesas,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibRestaurante.Next;

      end;//while

      lbl_ValorTotal.Caption := FormatFloat(CasasDecimais('Produtos'),ValorTotalMesas);

    end;//if iddetalhemesa

  end;//with

end;

procedure TfrmRestaurante.sbMesa29Click(Sender: TObject);

var

IDDetalheRestauranteMesa : Integer;
SituacaoMesa, JuntarMesas : String;
M29, TotalMesas : String;
ValorTotalMesas : Real;

begin

  with dmModule do begin

    if (lbl_edtIDDetalheMesa.Caption > '0')and(ckMesa29.Caption = 'Livre') Then begin

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text <> '') Then begin

        lbl_edtNMesa.Text := lbl_edtNMesa.Text+(' e 29');

      end;

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text = '')Then begin

        lbl_edtNMesa.Text := '29';

      end;

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text <> '')and(lbl_edtIDDetalheMesa.Caption > '0')Then begin

        if lbl_edtNMesa.Text <> '' Then begin
        lbl_edtNMesa.Text := lbl_edtNMesa.Text +' e 29' ;
        end else begin
        lbl_edtNMesa.Text :=  '29';
        end;

        lbl_Informacao.Caption := 'Juntar Mesas';

      end;

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text = '')Then begin

        ///if lbl_edtNMesa.Text = '' Then begin
        lbl_edtNMesa.Text :=  '29';
      ///  end;

      end;

      ckMesa29.Checked := True;
      M29 := 'Sim';

////////////////////////////////////////////////////////////////////////////////

      if lbl_Informacao.Caption = 'Juntar Mesas' Then begin

        JuntarMesas := 'Sim';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M29 = ''' + M29 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M29 = ''' + M29 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M29) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M29 + ''')');
        ibControleMesas.ExecSQL;

        end;

      end else begin

        JuntarMesas := 'Nao';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M29 = ''' + M29 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M29 = ''' + M29 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M29) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M29 + ''')');
        ibControleMesas.ExecSQL;

        end;

      end;//if juntar mesas

       ckMesa29.Font.Color := clRed;
       ckMesa29.Caption := 'Ocupada';

    end else begin

      Commit(ibControleMesas);
      ibControleMesas.Close;
      ibControleMesas.SQL.Clear;
      ibControleMesas.SQL.Add('SELECT TBLCONTROLEMESAS.*,'
      + 'TBLDETALHERESTAURANTE.NRMESA,TBLDETALHERESTAURANTE.M29 FROM TBLCONTROLEMESAS '
      + 'INNER JOIN TBLDETALHERESTAURANTE ON TBLCONTROLEMESAS.IDDETALHECONTROLE=TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE WHERE TBLCONTROLEMESAS.M29=''Sim''');
      ibControleMesas.Open;

      if ibControleMesas.RecordCount > 0 Then begin
      lbl_edtIDDetalheMesa.Caption := InttoStr(ibControleMesas.FieldByName('IDDETALHECONTROLE').AsInteger);
      lbl_edtNMesa.Text := ibControleMesas.FieldByName('NRMESA').AsString;
      end;
      
    end;// if iddetalhe mesa

    if (lbl_edtIDDetalheMesa.Caption >'0')and(ckMesa29.Caption = 'Ocupada') Then begin

      Commit(ibRestaurante);
      ibRestaurante.Close;
      ibRestaurante.SQL.Clear;
      ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + '''');
      ibRestaurante.Open;

      (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      while not ibRestaurante.Eof do begin

        if ValorTotalMesas = 0 Then begin

          ValorTotalMesas := StrToFloat(StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalMesas := StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          ValorTotalMesas := ValorTotalMesas + StrtoFloat(StringReplace(TotalMesas,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibRestaurante.Next;

      end;//while

      lbl_ValorTotal.Caption := FormatFloat(CasasDecimais('Produtos'),ValorTotalMesas);

    end;//if iddetalhemesa

  end;//with

end;

procedure TfrmRestaurante.sbMesa30Click(Sender: TObject);

var

IDDetalheRestauranteMesa : Integer;
SituacaoMesa, JuntarMesas : String;
M30, TotalMesas : String;
ValorTotalMesas : Real;

begin

  with dmModule do begin

    if (lbl_edtIDDetalheMesa.Caption > '0')and(ckMesa30.Caption = 'Livre') Then begin

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text <> '') Then begin

        lbl_edtNMesa.Text := lbl_edtNMesa.Text+(' e 30');

      end;

      if (lbl_Informacao.Caption = 'Juntar Mesas')and(lbl_edtNMesa.Text = '')Then begin

        lbl_edtNMesa.Text := '30';

      end;

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text <> '')and(lbl_edtIDDetalheMesa.Caption > '0')Then begin

        if lbl_edtNMesa.Text <> '' Then begin
        lbl_edtNMesa.Text := lbl_edtNMesa.Text +' e 30' ;
        end else begin
        lbl_edtNMesa.Text :=  '30';
        end;

        lbl_Informacao.Caption := 'Juntar Mesas';

      end;

      if (lbl_Informacao.Caption = '')and(lbl_edtNMesa.Text = '')Then begin

        ///if lbl_edtNMesa.Text = '' Then begin
        lbl_edtNMesa.Text :=  '30';
      ///  end;

      end;

      ckMesa30.Checked := True;
      M30 := 'Sim';

////////////////////////////////////////////////////////////////////////////////

      if lbl_Informacao.Caption = 'Juntar Mesas' Then begin

        JuntarMesas := 'Sim';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M30 = ''' + M30 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M30 = ''' + M30 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M30) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M30 + ''')');
        ibControleMesas.ExecSQL;

        end;

      end else begin

        JuntarMesas := 'Nao';
        SituacaoMesa := 'Aberta';

        ibDetalheRestaurante.Close;
        ibDetalheRestaurante.SQL.Clear;
        ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
        + 'SITUACAOMESA = ''' + SituacaoMesa + ''','
        + 'JUNTARMESAS  = ''' + JuntarMesas + ''','
        + 'M30 = ''' + M30 + ''','
        + 'NRMESA = ''' + lbl_edtNMesa.Text + ''' WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption  + '''');
        ibDetalheRestaurante.ExecSQL;
        Commit(ibDetalheRestaurante);

        IDDetalheRestauranteMesa := StrtoInt(lbl_edtIDDetalheMesa.Caption);

        Commit(ibControleMesas);
        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.Open;

        if ibControleMesas.RecordCount > 0 Then begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('UPDATE TBLCONTROLEMESAS SET '
        + 'IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + 'M30 = ''' + M30 + ''' WHERE IDDETALHECONTROLE = ''' + IntToStr(IDDetalheRestauranteMesa) + '''');
        ibControleMesas.ExecSQL;

        end else begin

        ibControleMesas.Close;
        ibControleMesas.SQL.Clear;
        ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
        + '(IDDETALHECONTROLE,M30) values '
        +'(''' + IntToStr(IDDetalheRestauranteMesa) + ''','
        + ' ''' + M30 + ''')');
        ibControleMesas.ExecSQL;

        end;

      end;//if juntar mesas

       ckMesa30.Font.Color := clRed;
       ckMesa30.Caption := 'Ocupada';

    end else begin

      Commit(ibControleMesas);
      ibControleMesas.Close;
      ibControleMesas.SQL.Clear;
      ibControleMesas.SQL.Add('SELECT TBLCONTROLEMESAS.*,'
      + 'TBLDETALHERESTAURANTE.NRMESA,TBLDETALHERESTAURANTE.M30 FROM TBLCONTROLEMESAS '
      + 'INNER JOIN TBLDETALHERESTAURANTE ON TBLCONTROLEMESAS.IDDETALHECONTROLE=TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE WHERE TBLCONTROLEMESAS.M30=''Sim''');
      ibControleMesas.Open;

      if ibControleMesas.RecordCount > 0 Then begin
      lbl_edtIDDetalheMesa.Caption := InttoStr(ibControleMesas.FieldByName('IDDETALHECONTROLE').AsInteger);
      lbl_edtNMesa.Text := ibControleMesas.FieldByName('NRMESA').AsString;
      end;
      
    end;// if iddetalhe mesa

    if (lbl_edtIDDetalheMesa.Caption >'0')and(ckMesa30.Caption = 'Ocupada') Then begin

      Commit(ibRestaurante);
      ibRestaurante.Close;
      ibRestaurante.SQL.Clear;
      ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + '''');
      ibRestaurante.Open;

      (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      while not ibRestaurante.Eof do begin

        if ValorTotalMesas = 0 Then begin

          ValorTotalMesas := StrToFloat(StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalMesas := StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          ValorTotalMesas := ValorTotalMesas + StrtoFloat(StringReplace(TotalMesas,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibRestaurante.Next;

      end;//while

      lbl_ValorTotal.Caption := FormatFloat(CasasDecimais('Produtos'),ValorTotalMesas);

    end;//if iddetalhemesa

  end;//with

end;

procedure TfrmRestaurante.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

var

ConfirmaMesa, IDDetalheRestaurante, ConfirmaCancelamento : Integer;
SituacaoMesa, JuntarMesas : String;
M1,M2,M3,M4,M5 : String;
ConfirmaCancelamentodeItem : Integer;

//variaveis para cancelanento e acerto de estoque

QtdeEstoque,QtdeVenda, VlrProduto, ValorCustoE : Real;
EstoqueFinal, TotalProdEstoque, TotalCusto, StringProd, LocalEstoque :String;
NomeProduto,ValorUnit, Valortotal, QtdeProd :String;
Custo, QtdeVendida,Valor1, Valor2,Valor3 : Real;

//CANCELmento

ConfirmaCupomInteiro,IDProdutoDevolucao,intAberturaCupom : Integer;
QtdeVendaDevolve,QtdeEstoqueDevolve,VlrProdutoDevolve,ValorCustoDevolve : Real;
EstoqueFinalDevolve,TotalCustoDevolve,TotalProdEstoqueDevolve : String;

begin

  with dmModule do begin

    case key of

      VK_F1:begin

        if lbl_edtNMesa.Text <> '' Then begin

        lbl_Informacao.Caption := 'Juntar Mesas';

        end;

      end;

      VK_F3:begin

        frmRecebeLoja.ShowModal;

      end;

      VK_F4:begin

      if (lbl_edtIDDetalheMesa.Caption = '0')or(lbl_edtIDDetalheMesa.Caption = '') Then begin

        lbl_AbMesa.Caption := 'Abertura de Mesas';

          ConfirmaMesa := Application.MessageBox('Confirma Abertura de Mesa?','Abertura de Mesa',MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

          if ConfirmaMesa = 6 Then begin

            SituacaoMesa := 'Aberta';

              ibDetalheRestaurante.Close;
              ibDetalheRestaurante.SQL.Clear;
              ibDetalheRestaurante.SQL.Add('INSERT INTO TBLDETALHERESTAURANTE'
              +'(DATA,HORAABERTURA,SITUACAOMESA) values '
              + '(''' + FormatDateTime('mm-dd-yyyy',Now) + ''','
              + ' ''' + FormatDateTime('hh:mm:ss',Now) + ''','
              + ' ''' + SituacaoMesa + ''')');
              ibDetalheRestaurante.ExecSQL;

              Commit(ibDetalheRestaurante);
              ibDetalheRestaurante.Close;
              ibDetalheRestaurante.SQL.Clear;
              ibDetalheRestaurante.SQL.Add('SELECT * FROM TBLDETALHERESTAURANTE ORDER BY IDDETALHERESTAURANTE DESC');
              ibDetalheRestaurante.Open;

              IDDetalheRestaurante := ibDetalheRestaurante.FieldByName('IDDETALHERESTAURANTE').AsInteger;
              lbl_edtIDDetalheMesa.Caption := IntToStr(IDDetalheRestaurante);

//----------------------------------------------------------------------------//

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

          IDDetalheRestaurante := (ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger);
          lbl_edtIDDetalheMesa.Text := IntToStr(IDDetalheRestaurante); }

//----------------------------------------------------------------------------//
        {  Commit(ibControleMesas);
          ibControleMesas.Close;
          ibControleMesas.SQL.Clear;
          ibControleMesas.SQL.Add('SELECT TBLCONTROLEMESAS.*,'
          + 'TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE FROM TBLCONTROLEMESAS '
          + 'INNER JOIN TBLDETALHERESTAURANTE ON TBLCONTROLEMESAS.IDDETALHECONTROLE=TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE');
          ibControleMesas.Open;

          if ibControleMesas.RecordCount > 0 Then begin
                               ///  and(ibControleMesas.FieldByName('M1').AsString = 'Sim')
              if(ckMesa1.Checked = False) Then begin

                M1 := 'Nao';

              end else if (ckMesa1.Checked)and(ckMesa1.Font.Color = clblack)Then begin

                M1 := 'Sim';

              end;
                                ///  and(ibControleMesas.FieldByName('M2').AsString = 'Sim'
              if (ckMesa2.Checked = False)and(ckMesa2.Font.Color = clblack) Then begin

                M2 := 'Nao';

              end else if (ckMesa2.Checked) Then begin

                M2 := 'Sim';

              end;
                                         /// and(ibControleMesas.FieldByName('M3').AsString = 'Sim')
              if (ckMesa3.Checked = False) Then begin

                M3 := 'Nao';

              end else if (ckMesa3.Checked)and(ckMesa2.Font.Color = clblack) Then begin

                M3 := 'Sim';

              end;

              if ckMesa4.Checked = False Then begin///(ckMesa4.Checked)and(ibControleMesas.FieldByName('M4').AsString = 'Sim') Then begin

                M4 := 'Nao';

              end else if (ckMesa4.Checked)and(ckMesa4.Font.Color = clblack) Then begin

                M4 := 'Sim';

              end;

              if ckMesa5.Checked = False Then begin///(ibControleMesas.FieldByName('M5').AsString = 'Sim') Then begin

                M5 := 'Nao';
                                        ///   and(ibControleMesas.FieldByName('M5').AsString <> 'Sim')
              end else if (ckMesa5.Checked) and(ckMesa5.Font.Color = clblack) Then begin

                M5 := 'Sim';

              end;

          end else begin

              if (ckMesa1.Checked) Then begin

                M1 := 'Sim';

              end else begin

                M1 := 'Nao';

              end;

              if (ckMesa2.Checked) Then begin

                M2 := 'Sim';

              end else begin

                M2 := 'Nao';

              end;

              if (ckMesa3.Checked) Then begin

                M3 := 'Sim';

              end else begin

                M3 := 'Nao';

              end;

              if (ckMesa4.Checked) Then begin

                M4 := 'Sim';

              end else begin

                M4 := 'Nao';

              end;

              if (ckMesa5.Checked) Then begin

                M5 := 'Sim';

              end else begin

                M5 := 'Nao';

              end;

          end;//if recordcount


            if lbl_Informacao.Caption = 'Juntar Mesas' Then begin

              JuntarMesas := 'Sim';

              ibDetalheRestaurante.Close;
              ibDetalheRestaurante.SQL.Clear;
              ibDetalheRestaurante.SQL.Add('INSERT INTO TBLDETALHERESTAURANTE'
              +'(DATA,HORAABERTURA,SITUACAOMESA,JUNTARMESAS,M1,M2,M3,M4,M5,'
              + 'NRMESA) values '
              + '(''' + FormatDateTime('mm-dd-yyyy',Now) + ''','
              + ' ''' + FormatDateTime('hh:mm:ss',Now) + ''','
              + ' ''' + SituacaoMesa + ''','
              + ' ''' + JuntarMesas + ''','
              + ' ''' + M1 + ''',''' + M2 + ''','
              + ' ''' + M3 + ''',''' + M4 + ''','
              + ' ''' + M5 + ''','
              + ' ''' + lbl_edtNMesa.Text + ''')');
              ibDetalheRestaurante.ExecSQL;

              Commit(ibDetalheRestaurante);
              ibDetalheRestaurante.Close;
              ibDetalheRestaurante.SQL.Clear;
              ibDetalheRestaurante.SQL.Add('SELECT * FROM TBLDETALHERESTAURANTE ORDER BY IDDETALHERESTAURANTE DESC');
              ibDetalheRestaurante.Open;

              IDDetalheRestaurante := ibDetalheRestaurante.FieldByName('IDDETALHERESTAURANTE').AsInteger;

              ibControleMesas.Close;
              ibControleMesas.SQL.Clear;
              ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
              + '(IDDETALHECONTROLE,M1,M2,M3,M4,M5) values '
              +'(''' + IntToStr(IDDetalheRestaurante) + ''','
              + ' ''' + M1 + ''',''' + M2 + ''','
              + ' ''' + M3 + ''',''' + M4 + ''','
              + ' ''' + M5 + ''')');
              ibControleMesas.ExecSQL;

            end else begin

              ibDetalheRestaurante.Close;
              ibDetalheRestaurante.SQL.Clear;
              ibDetalheRestaurante.SQL.Add('INSERT INTO TBLDETALHERESTAURANTE'
              +'(DATA,HORAABERTURA,SITUACAOMESA,JUNTARMESAS,M1,M2,M3,M4,M5,'
              + 'NRMESA) values '
              + '(''' + FormatDateTime('mm-dd-yyyy',Now) + ''','
              + ' ''' + FormatDateTime('hh:mm:ss',Now) + ''','
              + ' ''' + SituacaoMesa + ''','
              + ' ''' + JuntarMesas + ''','
              + ' ''' + M1 + ''',''' + M2 + ''','
              + ' ''' + M3 + ''',''' + M4 + ''','
              + ' ''' + M5 + ''','
              + ' ''' + lbl_edtNMesa.Text + ''')');
              ibDetalheRestaurante.ExecSQL;

              Commit(ibDetalheRestaurante);
              ibDetalheRestaurante.Close;
              ibDetalheRestaurante.SQL.Clear;
              ibDetalheRestaurante.SQL.Add('SELECT * FROM TBLDETALHERESTAURANTE ORDER BY IDDETALHERESTAURANTE DESC');
              ibDetalheRestaurante.Open;

              IDDetalheRestaurante := ibDetalheRestaurante.FieldByName('IDDETALHERESTAURANTE').AsInteger;

              ibControleMesas.Close;
              ibControleMesas.SQL.Clear;
              ibControleMesas.SQL.Add('INSERT INTO TBLCONTROLEMESAS'
              + '(IDDETALHECONTROLE,M1,M2,M3,M4,M5) values '
              +'(''' + IntToStr(IDDetalheRestaurante) + ''','
              + ' ''' + M1 + ''',''' + M2 + ''','
              + ' ''' + M3 + ''',''' + M4 + ''','
              + ' ''' + M5 + ''')');
              ibControleMesas.ExecSQL;
              
            end;//if juntar mesas

          end;//confirmamesa }

          if ckMesa1.Checked Then begin

            ckMesa1.Font.Color := clRed;

          end;

          if ckMesa2.Checked Then begin

            ckMesa2.Font.Color := clRed;

          end;

          if ckMesa3.Checked Then begin

            ckMesa3.Font.Color := clRed;

          end;

          if ckMesa4.Checked Then begin

            ckMesa4.Font.Color := clRed;

          end;

          if ckMesa5.Checked Then begin

            ckMesa5.Font.Color := clRed;

          end;

          if ckMesa6.Checked Then begin

            ckMesa6.Font.Color := clRed;

          end;

          if ckMesa7.Checked Then begin

            ckMesa7.Font.Color := clRed;

          end;

          if ckMesa8.Checked Then begin

            ckMesa8.Font.Color := clRed;

          end;

          if ckMesa9.Checked Then begin

            ckMesa9.Font.Color := clRed;

          end;

          if ckMesa10.Checked Then begin

            ckMesa10.Font.Color := clRed;

          end;

          if ckMesa11.Checked Then begin

            ckMesa11.Font.Color := clRed;

          end;

          if ckMesa12.Checked Then begin

            ckMesa12.Font.Color := clRed;

          end;

          if ckMesa13.Checked Then begin

            ckMesa13.Font.Color := clRed;

          end;

          if ckMesa14.Checked Then begin

            ckMesa14.Font.Color := clRed;

          end;

          if ckMesa15.Checked Then begin

            ckMesa15.Font.Color := clRed;

          end;

          if ckMesa16.Checked Then begin

            ckMesa16.Font.Color := clRed;

          end;

          if ckMesa17.Checked Then begin

            ckMesa17.Font.Color := clRed;

          end;

          if ckMesa18.Checked Then begin

            ckMesa18.Font.Color := clRed;

          end;

          if ckMesa19.Checked Then begin

            ckMesa19.Font.Color := clRed;

          end;

          if ckMesa20.Checked Then begin

            ckMesa20.Font.Color := clRed;

          end;

          if ckMesa21.Checked Then begin

            ckMesa21.Font.Color := clRed;

          end;

          if ckMesa22.Checked Then begin

            ckMesa22.Font.Color := clRed;

          end;

          if ckMesa23.Checked Then begin

            ckMesa23.Font.Color := clRed;

          end;

          if ckMesa24.Checked Then begin

            ckMesa24.Font.Color := clRed;

          end;

          if ckMesa25.Checked Then begin

            ckMesa25.Font.Color := clRed;

          end;

          if ckMesa26.Checked Then begin

            ckMesa26.Font.Color := clRed;

          end;

          if ckMesa27.Checked Then begin

            ckMesa27.Font.Color := clRed;

          end;

          if ckMesa28.Checked Then begin

            ckMesa28.Font.Color := clRed;

          end;

          if ckMesa29.Checked Then begin

            ckMesa29.Font.Color := clRed;

          end;

          if ckMesa30.Checked Then begin

            ckMesa30.Font.Color := clRed;

          end;

          lbl_edtNMesa.Clear;
          lbl_Informacao.Caption := '';
          Application.MessageBox('Clique nas mesas para incluir','Informação',+MB_OK+MB_DEFBUTTON1+MB_ICONINFORMATION);

         ///lbl_InformacaoABMesa.Caption := 'Clique nas mesas para incluir';

        end;//if nmesa

        end;

      end;

      VK_F5:begin

        lbl_AbMesa.Caption := '';
        lbl_Informacao.Caption := '';
        ///lbl_InformacaoABMesa.Caption := '';
        lbl_edtNMesa.Clear;
        lbl_edtIDDetalheMesa.Caption := '';
        lbl_edtRef.Clear;
        lbl_edtCodBarras.Clear;
     ///   cboProdutos.ClearSelection;
        lbl_edtQtde.Text := '1';
        lbl_edtVlrUnit.Clear;
        lbl_edtVlrTotal.Clear;
        lbl_IDCli.Caption := '';
        lbl_Cliente.Caption := '';
        lbl_ValorTotal.Caption := '0,00';
        lbl_NomeProd.Caption := '';
        lbl_IDFunc.Caption := '';
        lbl_Funcionario.Caption := '';
        lbl_DetalheFunc.Caption := '';
        lbl_TipoPreco.Caption := '';
        ibRestaurante.Close;

      end;

      VK_F6:begin

        with dmModule do begin

              ConfirmaCancelamento := Application.MessageBox(PChar('Esta Opção cancela todas as Mesas do cupom:"'+ lbl_edtIDDetalheMesa.Caption +'", clique em sim para continuar e não para interromper?'),'Notificação: Cancela todas as mesas juntamente com o cupom.',+MB_YESNO+MB_DEFBUTTON1+MB_ICONWARNING);

        if ConfirmaCancelamento = 6 Then begin

         // ExecSELECTMesas;

////////////////////////////////////////////////////////////////////////////////

      if lbl_edtIDDetalheMesa.Caption > '0' Then begin

       // ConfirmaCupomInteiro := Application.MessageBox('Atenção esta operação cancela o cupom inteiro, clique em sim pra continuar e não pra cancelar.','Cancelamento de Cupom',+MB_YESNO+MB_DEFBUTTON1+MB_ICONINFORMATION);

          ibRestaurante.Close;
          ibRestaurante.SQL.Clear;
          ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + '''');
          ibRestaurante.Open;

       // if ConfirmaCupomInteiro = 6 Then begin

          while not ibRestaurante.Eof do begin

          IDProdutoDevolucao := ibRestaurante.FieldByName('IDPRODUTO').AsInteger;

          QtdeVendaDevolve   := StrtoFloat(StringReplace(FloattoStr(ibRestaurante.FieldByName('QTDE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

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

         ibRestaurante.Next;

         end;//while

          ibRestaurante.Close;
          ibRestaurante.SQL.Clear;
          ibRestaurante.SQL.Add('DELETE FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + '''');
          ibRestaurante.Open;

          {ibControleMesas.Close;
          ibControleMesas.SQL.Clear;
          ibControleMesas.SQL.Add('DELETE FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + lbl_edtIDDetalheMesa.Caption + '''');
          ibControleMesas.ExecSQL;}

          ibDetalheRestaurante.Close;
          ibDetalheRestaurante.SQL.Clear;
          ibDetalheRestaurante.SQL.Add('DELETE FROM TBLDETALHERESTAURANTE WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption + '''');
          ibDetalheRestaurante.ExecSQL;

        //end;//if

      // lbl_edtIDDetalheMesa.Caption := '';


      end;//if

////////////////////////////////////////////////////////////////////////////////


         ExecSELECTMesas;


        { ckMesa1.Checked := False;
          ckMesa1.Font.Color := clBlack;
          ckMesa1.Caption := 'Livre';

          ckMesa2.Checked := False;
          ckMesa2.Font.Color := clBlack;
          ckMesa2.Caption := 'Livre';

          ckMesa3.Checked := False;
          ckMesa3.Font.Color := clBlack;
          ckMesa3.Caption := 'Livre';

          ckMesa4.Checked := False;
          ckMesa4.Font.Color := clBlack;
          ckMesa4.Caption := 'Livre';

          ckMesa5.Checked := False;
          ckMesa5.Font.Color := clBlack;
          ckMesa5.Caption := 'Livre';

          ckMesa6.Checked := False;
          ckMesa6.Font.Color := clBlack;
          ckMesa6.Caption := 'Livre';

          ckMesa7.Checked := False;
          ckMesa7.Font.Color := clBlack;
          ckMesa7.Caption := 'Livre';

          ckMesa8.Checked := False;
          ckMesa8.Font.Color := clBlack;
          ckMesa8.Caption := 'Livre';

          ckMesa9.Checked := False;
          ckMesa9.Font.Color := clBlack;
          ckMesa9.Caption := 'Livre';

          ckMesa10.Checked := False;
          ckMesa10.Font.Color := clBlack;
          ckMesa10.Caption := 'Livre';

          ckMesa11.Checked := False;
          ckMesa11.Font.Color := clBlack;
          ckMesa11.Caption := 'Livre';

          ckMesa12.Checked := False;
          ckMesa12.Font.Color := clBlack;
          ckMesa12.Caption := 'Livre';

          ckMesa13.Checked := False;
          ckMesa13.Font.Color := clBlack;
          ckMesa13.Caption := 'Livre';

          ckMesa14.Checked := False;
          ckMesa14.Font.Color := clBlack;
          ckMesa14.Caption := 'Livre';

          ckMesa15.Checked := False;
          ckMesa15.Font.Color := clBlack;
          ckMesa15.Caption := 'Livre';

          ckMesa16.Checked := False;
          ckMesa16.Font.Color := clBlack;
          ckMesa16.Caption := 'Livre';

          ckMesa17.Checked := False;
          ckMesa17.Font.Color := clBlack;
          ckMesa17.Caption := 'Livre';

          ckMesa18.Checked := False;
          ckMesa18.Font.Color := clBlack;
          ckMesa18.Caption := 'Livre';

          ckMesa19.Checked := False;
          ckMesa19.Font.Color := clBlack;
          ckMesa19.Caption := 'Livre';

          ckMesa20.Checked := False;
          ckMesa20.Font.Color := clBlack;
          ckMesa20.Caption := 'Livre';

          ckMesa21.Checked := False;
          ckMesa21.Font.Color := clBlack;
          ckMesa21.Caption := 'Livre';

          ckMesa22.Checked := False;
          ckMesa22.Font.Color := clBlack;
          ckMesa22.Caption := 'Livre';

          ckMesa23.Checked := False;
          ckMesa23.Font.Color := clBlack;
          ckMesa23.Caption := 'Livre';

          ckMesa24.Checked := False;
          ckMesa24.Font.Color := clBlack;
          ckMesa24.Caption := 'Livre';

          ckMesa25.Checked := False;
          ckMesa25.Font.Color := clBlack;
          ckMesa25.Caption := 'Livre';

          ckMesa26.Checked := False;
          ckMesa26.Font.Color := clBlack;
          ckMesa26.Caption := 'Livre';

          ckMesa27.Checked := False;
          ckMesa27.Font.Color := clBlack;
          ckMesa27.Caption := 'Livre';

          ckMesa28.Checked := False;
          ckMesa28.Font.Color := clBlack;
          ckMesa28.Caption := 'Livre';

          ckMesa29.Checked := False;
          ckMesa29.Font.Color := clBlack;
          ckMesa29.Caption := 'Livre';

          ckMesa30.Checked := False;
          ckMesa30.Font.Color := clBlack;
          ckMesa30.Caption := 'Livre';  }

        end;//if confirma cancelamento

        {  lbl_edtNMesa.Clear;
          lbl_edtIDDetalheMesa.Caption := '';
          lbl_AbMesa.Caption := '';
          lbl_Informacao.Caption := '';
          lbl_ValorTotal.Caption := '';   }

   // end;//if iddetalhe mesa

        end;//with

      end;

      VK_F7:begin

        frmBuscaProdutos.ShowModal;

      end;

      VK_F8:begin

        lbl_TipoPreco.Caption := 'Preço de Venda B';
        
      end;

      VK_F9:begin

      lbl_TipoPreco.Caption := 'Preço de Venda C';
      
    {  ConfirmaCancelamentodeItem := Application.MessageBox('Confirma Cancelamento do Item?','Cancelamento de Item',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

      if ConfirmaCancelamentodeItem = 6 Then begin

        ibEntrProdEstoque.Close;
        ibEntrProdEstoque.SQL.Clear;
        ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,'
        + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,TBLENTRADAESTOQUEPROD.ESTOQUEMIN,'
        + 'CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORCUSTO,CADPRODUTOS.TIPOPROD FROM TBLENTRADAESTOQUEPROD '
        + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
        + 'WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + lbl_edtIDProduto.Text + '''');
        ibEntrProdEstoque.Open;

////////////////////////////////////////////////////////////////////////////////

          //ROTINA ABAIXO PARA SOMAR TOTAL DO ESTQUE E QUANTIDADE DO ESTOQUE
         if lbl_edtIDProduto.Text <> '' Then begin

           QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           QtdeVenda   := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));

           QtdeEstoque := QtdeEstoque + QtdeVenda;

           EstoqueFinal := StringReplace(FloattoStr(QtdeEstoque),ThousandSeparator,'',[rfReplaceAll]);
           EstoqueFinal := StringReplace(EstoqueFinal,DecimalSeparator,'.',[rfReplaceAll]);

           //AQUI VAI O CALCULO DO TOTAL CONFORME VENDE O PRODUTO
           VlrProduto  := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORVENDAA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           VlrProduto  := QtdeEstoque * VlrProduto;

           TotalProdEstoque := StringReplace(FloattoStr(VlrProduto),ThousandSeparator,'',[rfReplaceAll]);
           TotalProdEstoque := StringReplace(TotalProdEstoque,DecimalSeparator,'.',[rfReplaceAll]);

           ValorCustoE := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORCUSTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           ValorCustoE := QtdeEstoque * ValorCustoE;

           TotalCusto := StringReplace(FloattoStr(ValorCustoE),ThousandSeparator,'',[rfReplaceAll]);
           TotalCusto := StringReplace(TotalCusto,DecimalSeparator,'.',[rfReplaceAll]);

           ibEntrProdEstoque.Close;
           ibEntrProdEstoque.SQL.Clear;
           ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
           +'TOTALCUSTO=''' + TotalCusto + ''','
           +'QUANTIDADE=''' + (EstoqueFinal) + ''','
           +'VLRTOTAL=''' + (TotalProdEstoque) +  ''' WHERE IDPROD=''' + lbl_edtIDProduto.Text + '''');
           ibEntrProdEstoque.ExecSQL;
           Commit(ibEntrProdEstoque);

         end;//if label IDPRODCX


         if lbl_edtIDProduto.Text = '' Then begin

            StringProd := ' '' 0 '',';
            TotalCusto := '0';

          end else begin

            StringProd          := lbl_edtIDProduto.Text;

            ibProdutos.Close;
            ibProdutos.SQL.Clear;
            ibProdutos.SQL.Add('SELECT CADPRODUTOS.*,'
            + 'LOCALESTOCAGEM.NOME As Estoque FROM CADPRODUTOS '
            + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE '
            + 'WHERE IDPROD=''' + StringProd + '''');
            ibProdutos.Open;

            LocalEstoque := ibProdutos.FieldByName('Estoque').AsString;
            NomeProduto  := ibProdutos.FieldByName('NOME').AsString;


            Custo := StrtoFloat(StringReplace(FloattoStr(ibProdutos.FieldByName('VALORCUSTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
            QtdeVendida := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));
            Custo := QtdeVendida * Custo;

            TotalCusto := StringReplace(FloattoStr(Custo),ThousandSeparator,'',[rfReplaceAll]);
            TotalCusto := StringReplace(TotalCusto,DecimalSeparator,'.',[rfReplaceAll]);

          end;

/////////////////////////////////////////////////////////////////////////////////
          if lbl_edtVlrTotal.Text <> '' Then begin// se for em branco executa rotina abaixo.

            if (Pos(',',lbl_edtVlrTotal.Text)>0) and (lbl_edtVlrTotal.Text <> '') Then begin

              Valor1 := StrToFloat(StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]));

              if lbl_ValorTotal.Caption = '' Then begin

              lbl_ValorTotal.Caption := FormatFloat(',0.00',(Valor1));

              end else begin

              //Valor1 := StrToFloat(StringReplace(lbl_edtTotalPed.Text,ThousandSeparator,'',[rfReplaceAll]));
              Valor2 := StrToFloat(StringReplace(lbl_ValorTotal.Caption,ThousandSeparator,'',[rfReplaceAll]));
              Valor3 := (Valor2 - Valor1);

              lbl_ValorTotal.Caption := FormatFloat(',0.00',(Valor3));

              end;

              end else begin

              Valor1 := StrToFloat(StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]));

              if lbl_ValorTotal.Caption = '' Then begin

              lbl_ValorTotal.Caption := FormatFloat(',0.00',(Valor1));

              end else begin

              //Valor1 := StrToFloat(StringReplace(lbl_edtTotalPed.Text,ThousandSeparator,'',[rfReplaceAll]));
              Valor2 := StrToFloat(StringReplace(lbl_ValorTotal.Caption,ThousandSeparator,'',[rfReplaceAll]));
              Valor3 := (Valor2 - Valor1);

              lbl_ValorTotal.Caption := FormatFloat(',0.00',(Valor3));

              end;

            end;//if

          end;//if
////////////////////////////////////////////////////////////////////////////////

          ibRestaurante.Close;
          ibRestaurante.SQL.Clear;
          ibRestaurante.SQL.Add('DELETE FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + ''' and IDPRODUTO=''' + lbl_edtIDProduto.Text + '''');
          ibRestaurante.ExecSQL;

          ibRestaurante.Close;
          ibRestaurante.SQL.Clear;
          ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + '''');
          ibRestaurante.Open;

          (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
          (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
          (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

          lbl_edtRef.Clear;
          lbl_edtCodBarras.Clear;
       ///   cboProdutos.ClearSelection;
          lbl_edtQtde.Text := '1';
          lbl_edtVlrUnit.Clear;
          lbl_edtVlrTotal.Clear;
          lbl_IDCli.Caption := '';
          lbl_Cliente.Caption := '';
          lbl_NomeProd.Caption := ''; 

      end;  }

      end;

      VK_F10:begin

        intAberturaCupom := Application.MessageBox('Abertura de venda sem mesa?','Venda sem Mesas',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

        if intAberturaCupom = 6 Then begin

          ibDetalheRestaurante.Close;
          ibDetalheRestaurante.SQL.Clear;
          ibDetalheRestaurante.SQL.Add('INSERT INTO TBLDETALHERESTAURANTE'
          +'(DATA,HORAABERTURA,SITUACAOMESA) values '
          + '(''' + FormatDateTime('mm-dd-yyyy',Now) + ''','
          + ' ''' + FormatDateTime('hh:mm:ss',Now) + ''','
          + ' ''' + SituacaoMesa + ''')');
          ibDetalheRestaurante.ExecSQL;

          Commit(ibDetalheRestaurante);
          ibDetalheRestaurante.Close;
          ibDetalheRestaurante.SQL.Clear;
          ibDetalheRestaurante.SQL.Add('SELECT * FROM TBLDETALHERESTAURANTE ORDER BY IDDETALHERESTAURANTE DESC');
          ibDetalheRestaurante.Open;

          IDDetalheRestaurante := ibDetalheRestaurante.FieldByName('IDDETALHERESTAURANTE').AsInteger;
          lbl_edtIDDetalheMesa.Caption := IntToStr(IDDetalheRestaurante);

        end;//if abrecupom

      end;

      VK_F11:begin

        frmManutCx.ShowModal;

      end;

    end;//case

  end;//with

end;

procedure TfrmRestaurante.LimparMesas1Click(Sender: TObject);
begin

  with dmModule do begin

  lbl_edtNMesa.Clear;
  lbl_edtIDDetalheMesa.Caption := '';

  end;//with

end;

procedure TfrmRestaurante.lbl_edtVlrTotalKeyPress(Sender: TObject;
  var Key: Char);

var

QtdeEstoque,QtdeVenda, VlrProduto, ValorCustoE : Real;
EstoqueFinal, TotalProdEstoque, TotalCusto, StringProd, LocalEstoque :String;
NomeProduto,ValorUnit, Valortotal, QtdeProd,strNomeFunc :String;
Custo, QtdeVendida,Valor1, Valor2,Valor3 : Real;
IDDetalheR,IDCliente,intPrecoA,intPrecoB,intPrecoC,intFunc : Integer;
intIDVendasR : TVendasCX;
begin

  with dmModule do begin

    if (lbl_edtIDDetalheMesa.Caption > '0')and(lbl_edtIDProduto.Text > '0')and(lbl_edtVlrTotal.Text > '0,00')Then begin

      ibEntrProdEstoque.Close;      
      ibEntrProdEstoque.SQL.Clear;
      ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,'
      + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,TBLENTRADAESTOQUEPROD.ESTOQUEMIN,'
      + 'CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORCUSTO,CADPRODUTOS.TIPOPROD FROM TBLENTRADAESTOQUEPROD '
      + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
      + 'WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + lbl_edtIDProduto.Text + '''');
      ibEntrProdEstoque.Open;

////////////////////////////////////////////////////////////////////////////////

      //ROTINA ABAIXO PARA SOMAR TOTAL DO ESTQUE E QUANTIDADE DO ESTOQUE
     if lbl_edtIDProduto.Text <> '' Then begin

       QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

       QtdeVenda   := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));

       QtdeEstoque := QtdeEstoque - QtdeVenda;

       EstoqueFinal := StringReplace(FloattoStr(QtdeEstoque),ThousandSeparator,'',[rfReplaceAll]);
       EstoqueFinal := StringReplace(EstoqueFinal,DecimalSeparator,'.',[rfReplaceAll]);

       //AQUI VAI O CALCULO DO TOTAL CONFORME VENDE O PRODUTO
       VlrProduto  := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORVENDAA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

       VlrProduto  := QtdeEstoque * VlrProduto;

       TotalProdEstoque := StringReplace(FloattoStr(VlrProduto),ThousandSeparator,'',[rfReplaceAll]);
       TotalProdEstoque := StringReplace(TotalProdEstoque,DecimalSeparator,'.',[rfReplaceAll]);

       ValorCustoE := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORCUSTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

       ValorCustoE := QtdeEstoque * ValorCustoE;

       TotalCusto := StringReplace(FloattoStr(ValorCustoE),ThousandSeparator,'',[rfReplaceAll]);
       TotalCusto := StringReplace(TotalCusto,DecimalSeparator,'.',[rfReplaceAll]);

       ibEntrProdEstoque.Close;
       ibEntrProdEstoque.SQL.Clear;
       ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
       +'TOTALCUSTO=''' + TotalCusto + ''','
       +'QUANTIDADE=''' + (EstoqueFinal) + ''','
       +'VLRTOTAL=''' + (TotalProdEstoque) +  ''' WHERE IDPROD=''' + lbl_edtIDProduto.Text + '''');
       ibEntrProdEstoque.ExecSQL;
       Commit(ibEntrProdEstoque);

     end;//if label IDPRODCX


   if lbl_edtIDProduto.Text = '' Then begin

      StringProd := ' '' 0 '',';
      TotalCusto := '0';

    end else begin

      StringProd          := lbl_edtIDProduto.Text;

      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT CADPRODUTOS.*,'
      + 'LOCALESTOCAGEM.NOME As Estoque FROM CADPRODUTOS '
      + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE '
      + 'WHERE IDPROD=''' + StringProd + '''');
      ibProdutos.Open;

      LocalEstoque := ibProdutos.FieldByName('Estoque').AsString;
      NomeProduto  := ibProdutos.FieldByName('NOME').AsString;


      Custo := StrtoFloat(StringReplace(FloattoStr(ibProdutos.FieldByName('VALORCUSTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
      QtdeVendida := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));
      Custo := QtdeVendida * Custo;

      TotalCusto := StringReplace(FloattoStr(Custo),ThousandSeparator,'',[rfReplaceAll]);
      TotalCusto := StringReplace(TotalCusto,DecimalSeparator,'.',[rfReplaceAll]);

    end;

/////////////////////////////////////////////////////////////////////////////////
      if lbl_edtVlrTotal.Text <> '' Then begin// se for em branco executa rotina abaixo.

        if (Pos(',',lbl_edtVlrTotal.Text)>0) and (lbl_edtVlrTotal.Text <> '') Then begin

          Valor1 := StrToFloat(StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]));

          if lbl_ValorTotal.Caption = '' Then begin

          lbl_ValorTotal.Caption := FormatFloat(',0.00',(Valor1));

          end else begin

          //Valor1 := StrToFloat(StringReplace(lbl_edtTotalPed.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor2 := StrToFloat(StringReplace(lbl_ValorTotal.Caption,ThousandSeparator,'',[rfReplaceAll]));
          Valor3 := (Valor2 + Valor1);

          lbl_ValorTotal.Caption := FormatFloat(',0.00',(Valor3));

          end;

          end else begin

          Valor1 := StrToFloat(StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]));

          if lbl_ValorTotal.Caption = '' Then begin

          lbl_ValorTotal.Caption := FormatFloat(',0.00',(Valor1));

          end else begin

          //Valor1 := StrToFloat(StringReplace(lbl_edtTotalPed.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor2 := StrToFloat(StringReplace(lbl_ValorTotal.Caption,ThousandSeparator,'',[rfReplaceAll]));
          Valor3 := (Valor2 + Valor1);

          lbl_ValorTotal.Caption := FormatFloat(',0.00',(Valor3));

          end;

        end;{if}
        
      end;//if
////////////////////////////////////////////////////////////////////////////////

          ValorUnit := StringReplace(lbl_edtVlrUnit.Text,ThousandSeparator,'',[rfReplaceAll]);
          ValorUnit := StringReplace(ValorUnit,DecimalSeparator,'.',[rfReplaceAll]);
          if ValorUnit  = '' Then
             ValorUnit := '0';


          ValorTotal := StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]);
          ValorTotal := StringReplace(ValorTotal,DecimalSeparator,'.',[rfReplaceAll]);
          if ValorTotal = '' Then
          ValorTotal := '0';

          QtdeProd := StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]);
          QtdeProd := StringReplace(QtdeProd,DecimalSeparator,'.',[rfReplaceAll]);
          if QtdeProd  = '' Then
             QtdeProd := '0';

          if lbl_edtIDDetalheMesa.Caption > '0' Then begin

            IDDetalheR := StrToInt(lbl_edtIDDetalheMesa.Caption);

            if lbl_IDCli.Caption <> '' Then begin

              IDCliente := StrToInt(lbl_IDCli.Caption);

            end else begin

              IDCliente := 0;

            end;   

            if lbl_TipoPreco.Caption = '' Then begin

              intPrecoA := 1;

            end;// else begin

             // intPrecoA := 2;

         //   end;

            if lbl_TipoPreco.Caption = 'Preco de Venda B' Then begin

              intPrecoB := 2;

           // end else begin

           //   intPrecoB := 2;

            end;

            if lbl_TipoPreco.Caption = 'Preco de Venda C' Then begin

              intPrecoC := 3;

            //end else begin

             // intPrecoC := 2;

            end;

            if lbl_IDFunc.Caption <> '' Then begin

              intFunc := StrToInt(lbl_IDFunc.Caption);

            end else begin

              intFunc := 0;

            end;

            if lbl_Funcionario.Caption <> '' Then begin

              strNomeFunc := (lbl_Funcionario.Caption);

            end else begin

              strNomeFunc := '';

            end;

            //INSTANCIANDO A CLASSE TVENDASCX
            intIDVendasR := TVendasCX.Create();
            intIDVendasR.SituacaoVendaCx := 0;

            try

              ibRestaurante.Close;
              ibRestaurante.SQL.Clear;
              ibRestaurante.SQL.Add('INSERT INTO TBLRESTAURANTE'
              +'(MESAS,IDDETALHER,DATA,HORA,NOMEPRODUTO,IDPRODUTO,IDCLIENTE,NOMECLIENTE,'
              + 'CODBARRAS,REF,VLRUNIT,QTDE,IDFUNC,NOMEFUNC,PRECOA,PRECOB,PRECOC,OBS,SITUACAOVENDA,VLRTOTAL) values '
              +'(''' + lbl_edtNMesa.Text + ''','
              + ' ''' + IntToStr(IDDetalheR) + ''','
              + ' ''' + FormatDateTime('mm-dd-yyyy',Now) + ''','
              + ' ''' + FormatDateTime('hh:mm:ss',Now) + ''','
           ///   + ' ''' + cboProdutos.Text + ''',' NOMEPRODUTO,
              + ' ''' + lbl_NomeProd.Caption+ ''','
              + ' ''' + StringProd  + ''','
              + ' ''' + IntToStr(IDCliente) + ''','
              + ' ''' + lbl_Cliente.Caption + ''','
              + ' ''' + lbl_edtCodBarras.Text + ''','
              + ' ''' + lbl_edtRef.Text + ''','
              + ' ''' + ValorUnit + ''','
              + ' ''' + QtdeProd + ''','
              + ' ''' + IntToStr(intFunc) + ''','
              + ' ''' + strNomeFunc + ''','
              + ' ''' + IntToStr(intPrecoA) + ''','
              + ' ''' + IntToStr(intPrecoB) + ''','
              + ' ''' + IntToStr(intPrecoC) + ''','
              + ' ''' + lbl_edtObs.Text + ''','
              + ' ''' + IntToStr(intIDVendasR.SituacaoVendaCx) + ''','
              + ' ''' + Valortotal + ''')');
              ibRestaurante.ExecSQL;

            finally

              intIDVendasR.Free;

            end;

            Commit(ibRestaurante);
            ibRestaurante.Close;
            ibRestaurante.SQL.Clear;
            ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE IDDETALHER=''' + IntToStr(IDDetalheR) + '''');
            ibRestaurante.Open;

            (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

            lbl_edtRef.Clear;
            lbl_edtCodBarras.Clear;
          ///  cboProdutos.ClearSelection;
            lbl_edtQtde.Text := '1';
            lbl_edtVlrUnit.Clear;
            lbl_edtVlrTotal.Clear;
            lbl_edtObs.Clear;
            lbl_NomeProd.Caption := '';
            lbl_TipoPreco.Caption := '';
            lbl_edtCodBarras.SetFocus;
            lbl_IDFunc.Caption := '';
            lbl_Funcionario.Caption := '';
            lbl_DetalheFunc.Caption := '';
            
          end;

////////////////////////////////////////////////////////////////////////////////

    end else begin

    Application.MessageBox('Para concluir um lançamento selecione um produto?','Lançamento em branco',+MB_YESNO+MB_ICONQUESTION);

    end;//if
    
  end;//with

end;

procedure TfrmRestaurante.lbl_edtQtdeExit(Sender: TObject);

   var
    Valor1 :Real;
    Valor2 :Real;
    ValorReal :Real;
begin
tedit(sender).color := clwindow;
/// if (cboProdutos.Text <> '') Then begin

  if lbl_edtQtde.Text <> '' Then begin// se for em branco executa rotina abaixo.

    if (Pos(',',lbl_edtQtde.Text)>0) and (lbl_edtQtde.Text <> '') Then begin

      Valor1 := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));
      Valor2 := StrToFloat(StringReplace(lbl_edtVlrUnit.Text,ThousandSeparator,'',[rfReplaceAll]));

      lbl_edtVlrTotal.Text := FormatFloat(',0.00',(Valor2 * Valor1));

    end else begin

      Valor1 := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));
      Valor2 := StrToFloat(StringReplace(lbl_edtVlrUnit.Text,ThousandSeparator,'',[rfReplaceAll]));
       lbl_edtVlrTotal.Text := FormatFloat(',0.00',(Valor2 * Valor1));

    end;{if}

  end;{if}

/// end;{if cbo produto}

end;

procedure TfrmRestaurante.lbl_edtQtdeKeyPress(Sender: TObject;
  var Key: Char);
begin

  if Key = #13 Then begin

   lbl_edtVlrTotal.SetFocus;

  end;

end;

procedure TfrmRestaurante.FormCreate(Sender: TObject);

var

imgLogoEmpresa : String;
OleGraphic: TOleGraphic;
fs: TFileStream;

begin
MontaColunas := True;

  PathSistema := ExtractFilePath(ParamStr(0));
 if FileExists(PathSistema + 'Data\RunTime\Imagens_Sistema\NovoFundoCX2.gif') Then
    imgFundoCx.Picture.LoadFromFile(PathSistema + 'Data\RunTime\Imagens_Sistema\NovoFundoCX2.gif');

    btF1.Font.Style := [fsBold];
    btF1.Caption := 'JUNTAR'+#13+'MESAS'+#13+'(F1)';


    btF3.Font.Style := [fsBold];
    btF3.Caption := 'RECEBER'+#13+'(F3)';

    btF4.Font.Style := [fsBold];
    btF4.Caption := 'ABRIR'+#13+'MESAS'+#13+'(F4)';


    btF5.Font.Style := [fsBold];
    btF5.Caption := 'AGUARDAR'+#13+'FECH.'+#13+'(F5)';

    btF6.Font.Style := [fsBold];
    btF6.Caption := 'CANCELAR'+#13+'MESAS'+#13+'(F6)';


    btF7.Font.Style := [fsBold];
    btF7.Caption := 'PRODUTOS'+#13+'(F7)';

    btF8.Font.Style := [fsBold];                     // +#13+'(F8)'
    btF8.Caption := 'SELECIONA'+#13+'PRODUTO NA GRADE';


    btF9.Font.Style := [fsBold];                       // +#13+'(F9)'
    btF9.Caption := 'CANCELA'+#13+'PRODUTO SELEC.';

    btLimparMesas.Font.Style := [fsBold];
    btLimparMesas.Caption := 'LIMPA CAMPO'+#13+' DE MESAS'+#13+'CTLR-M';


    btSair.Font.Style := [fsBold];
    btSair.Caption := 'SAIR'+#13+'CTRL-S';

    btNotaPaulista.Font.Style := [fsBold];
    btNotaPaulista.Caption := 'NF PAULISTA'+#13+'CTRL-N';

    btCupomInf.Font.Style := [fsBold];
    btCupomInf.Caption := 'DIVIDE MESA'+#13+'CTRL-A';

    btCancelarCupomSat.Font.Style := [fsBold];
    btCancelarCupomSat.Caption := 'CANCELA ÚLTIMA VENDA'+#13+'CTRL-D';

    btImprimeUltimoCupom.Font.Style := [fsBold];
    btImprimeUltimoCupom.Caption := 'IMPRIME ÚLTIMA VENDA'+#13+'CTRL-U';

    btVendaB.Font.Style := [fsBold];
    btVendaB.Caption := 'PREÇO DE VENDA(B)'+#13+'(F8)';

    btVendaC.Font.Style := [fsBold];
    btVendaC.Caption := 'PREÇO DE VENDA(C)'+#13+'(F9)';

    btFunc.Font.Style := [fsBold];
    btFunc.Caption := 'Incluir Funcionário'+#13+'CTRL-F';

    btLimpaFunc.Font.Style := [fsBold];
    btLimpaFunc.Caption := 'Limpa campo do Funcionário';

    btManutCupons.Font.Style := [fsBold];
    btManutCupons.Caption := 'Manut.de Cupons'+#13+'(F11)';

    btVendasAberto.Font.Style := [fsBold];
    btVendasAberto.Caption := 'Vendas Aberto'+#13+'';//(F11)

   // btF10VendaSMesa.Font.Style := [fsBold];
    //btF10VendaSMesa.Caption := 'Venda Sem Mesa'+#13+'(F10)';

////////////////////////////////////////////////////////////////////////////////

       //ROTINA PARA EXIBIR A IMAGEM DO PRODUTO
    {  if Not FileExists(ExtractFilePath(Application.ExeName) + 'Data\RunTime\Imagens_Sistema\LogoEmpresa.jpg' ) Then begin

        frmRestaurante.imgLogoEmpresa.Picture := Nil; //LIMPA A IMAGEM

      end else begin

        try

          frmRestaurante.imgLogoEmpresa.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+ '\Data\RunTime\Imagens_Sistema\LogoEmpresa.jpg');

        finally
          fs.Free;
          OleGraphic.Free
        end;

       end; }
       
////////////////////////////////////////////////////////////////////////////////
end;

procedure TfrmRestaurante.dbgLancamentoKeyPress(Sender: TObject;
  var Key: Char);

  var
i : Integer;

begin

  with dmModule do begin

    if key=#13 Then begin

      IDDetalheMR := ibRestaurante.FieldByName('IDDETALHER').AsInteger;
    IDProdutoR           := ibRestaurante.FieldByName('IDPRODUTO').AsInteger;

    if ibRestaurante.RecordCount > 0 Then begin

      lbl_NomeProd.Caption  := ibRestaurante.FieldByName('NOMEPRODUTO').AsString;
      lbl_edtIDProduto.Text := IntToStr(IDProdutoR);
      lbl_edtCodBarras.Text := ibRestaurante.FieldByName('CODBARRAS').AsString;
      lbl_edtRef.Text       := ibRestaurante.FieldByName('REF').AsString;
      lbl_edtVlrUnit.Text   := FormatFloat(CasasDecimais('Produtos'),ibRestaurante.FieldByName('VLRUNIT').AsFloat);
      lbl_edtQtde.Text      := FormatFloat(CasasDecimais('Produtos'),ibRestaurante.FieldByName('QTDE').AsFloat);
      lbl_edtVlrTotal.Text  := FormatFloat(CasasDecimais('Produtos'),ibRestaurante.FieldByName('VLRTOTAL').AsFloat);
      lbl_edtObs.Text       := ibRestaurante.FieldByName('OBS').AsString;
     { lbl_IDFunc.Caption    := IntToStr(ibRestaurante.FieldByName('IDFUNC').AsInteger);
      lbl_Funcionario.Caption := ibRestaurante.FieldByName('NOMEFUNC').AsString;
      lbl_DetalheFunc.Caption := 'Entregador: ';  }

    end;//if recordcount
     { for i:=0 to cboProdutos.Items.Count -1 do begin
        if TClasseCombo( cboProdutos.Items.Objects[i]).ID = ibRestaurante.FieldByName('IDPRODUTO').AsInteger then begin
          cboProdutos.ItemIndex:= i;
          Break;
        end else begin
          cboProdutos.ClearSelection;
        end;
      end; }

    end;//if

  end;//with

end;

procedure TfrmRestaurante.imgLogoEmpresaClick(Sender: TObject);
begin
popmnuImagem.Popup(Self.Left + 154, Self.Top + 175);
end;

procedure TfrmRestaurante.popmnuProcurarClick(Sender: TObject);

///var

////  NovaImagem,Nome: String;
///  ImagemSalva : String;

begin
 ///   opDialogImagem.Title := 'Procurar imagem para ' + 'Logo do Cliente';
///    if opDialogImagem.Execute then begin

 ///     imgLogoEmpresa.Picture.LoadFromFile(opDialogImagem.FileName);

 ///   end;

/////////////////////////////////////////////////////////////////////////////////

          //COPIA A IMAGEM DO PRODUTO PARA A PASTA DE IMAGENS
       {  if opDialogImagem.FileName <> '' Then begin
                                                                                                   //  ' + lbl_edtNomeCachorro.Text + lbl_edtCodCliente.Text + '
            NovaImagem       := opDialogImagem.FileName;

          //  Nome :=  ExtractFileName('Data\RunTime\img_Tela_Sistema\'+ ''+ NovaImagem +'');

            Nome := 'LogoEmpresa';
                                                                                                      
            ImagemSalva      := ExtractFilePath(Application.ExeName) + 'Data\RunTime\LogoEmpresa\' + Nome + '.jpg' ; //

            if FileExists(ImagemSalva) Then begin //CASO JÁ EXISTA A IMAGEM
              DeleteFile(ImagemSalva); //APAGA A MESMA PARA QUE SEJA COLOCADA UMA NOVA
            end;

            if Not CopyFile(PChar(NovaImagem), PChar(ImagemSalva),true) then
              Application.MessageBox('Erro ao Copiar a Imagem do produto','Notificação: Erro ao copiar',MB_OK + MB_ICONERROR);

            NovaImagem  := ''; //LIMPA A VARIAVEL NOVAIMAGEM
            ImagemSalva := ''; //LIMPA A VARIAVEL IMAGEMSALVA

          end; }

////////////////////////////////////////////////////////////////////////////////


end;

procedure TfrmRestaurante.lbl_edtCodBarrasExit(Sender: TObject);

var

i,intAvisodeVenda : Integer;

CodBarrasVenda, TipoPreco : String;

begin
tedit(sender).color := clwindow;
  with dmModule do begin

    if (lbl_edtNMesa.Text = '')and(lbl_edtIDDetalheMesa.Caption = '') Then begin

      Application.MessageBox('Para lançamento é necessário abrir mesa ou precionar F10','Informação',+MB_OK+MB_DEFBUTTON1+MB_ICONINFORMATION);
      lbl_NomeProd.Caption := '';
      lbl_edtVlrUnit.Text := '0,00';
      lbl_edtCodBarras.Clear;
      lbl_edtCodBarras.SetFocus;

    end else begin

      if lbl_edtCodBarras.Text <> '' Then begin

        CodBarrasVenda := lbl_edtCodBarras.Text;

        Commit(ibProdutos);
        ibProdutos.Close;
        ibProdutos.SQL.Clear;
        ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE CADPRODUTOS.CODBARRAS=''' + CodBarrasVenda + ''' or CADPRODUTOS.CODBARRASAD=''' + CodBarrasVenda + '''');
        ibProdutos.Open;

        lbl_edtIDProduto.Text := IntToStr(ibProdutos.FieldByName('IDPROD').AsInteger);
        lbl_edtRef.Text := ibProdutos.FieldByName('REF').AsString;
        lbl_NomeProd.Caption := ibProdutos.FieldByName('NOME').AsString;

        if lbl_TipoPreco.Caption = '' Then begin

          TipoPreco := 'A';

        end;

        if lbl_TipoPreco.Caption = 'Preço de Venda(B)' Then begin

          TipoPreco := 'B';

        end;

        if lbl_TipoPreco.Caption = 'Preço de Venda(C)' Then begin

          TipoPreco := 'C';

        end;


        if  (TipoPreco = 'A') Then begin

          lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);

        end else if  (TipoPreco = 'B') Then begin

          lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAB').AsFloat);

        end else if  (TipoPreco = 'C') Then begin

          lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAC').AsFloat);

        end;

      {  for i:=0 to cboProdutos.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
          if TClasseCombo( cboProdutos.Items.Objects[i]).ID = ibProdutos.FieldByName('IDPROD').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
            cboProdutos.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
            Break;
          end else begin
            cboProdutos.ClearSelection;//LIMPA A SELECAO. }
        /// end;{if}
      ///  end;{for}

        if lbl_edtQtde.Text = '0' then begin

         lbl_edtQtde.Text := '1';

        end;

         lbl_edtQtdeExit(Sender);

       // if (lbl_edtQtde.Text > '0') and () Then begin

      //   lbl_edtVlrTotal.SetFocus;

       //end;//if}

         { cboServicos.ClearSelection;
          cboProdutos.ClearSelection;
          lbl_edtCodBarras.Clear;
          lbl_edtQtde.Clear;
          lbl_edtVlrUnit.Clear;
          lbl_edtVlrTotal.Clear;
          lbl_TipoPreco.Caption := '';
          lbl_edtCodBarras.SetFocus;}

      end;//if codprod

    end;//if mesa = ''

  end;{with}

end;

procedure TfrmRestaurante.lbl_edtCodBarrasKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key =#13 Then begin

    lbl_edtObs.SetFocus;
    lbl_edtQtde.Text := '1';

  end;
  
end;

procedure TfrmRestaurante.lbl_edtObsKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key =#13 Then begin

    lbl_edtQtde.SetFocus;

  end;

end;

procedure TfrmRestaurante.lbl_edtVlrUnitKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key =#13 Then begin

    lbl_edtQtde.SetFocus;

  end;

end;

procedure TfrmRestaurante.lbl_edtRefExit(Sender: TObject);

var

i : Integer;

CodBarrasVenda, TipoPreco : String;

begin
tedit(sender).color := clwindow;
  with dmModule do begin

    if lbl_edtRef.Text <> '' Then begin

      CodBarrasVenda := lbl_edtRef.Text;

      Commit(ibProdutos);
      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE CADPRODUTOS.CODBARRAS=''' + CodBarrasVenda + ''' or CADPRODUTOS.CODBARRASAD=''' + CodBarrasVenda + '''');
      ibProdutos.Open;

      lbl_edtIDProduto.Text := IntToStr(ibProdutos.FieldByName('IDPROD').AsInteger);
      lbl_NomeProd.Caption := ibProdutos.FieldByName('NOME').AsString;

      TipoPreco := 'A';

      if  (TipoPreco = 'A') Then begin

      lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);

      end else if  (TipoPreco = 'B') Then begin

     lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAB').AsFloat);

      end else if  (TipoPreco = 'C') Then begin

      lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAC').AsFloat);

      end;

     { for i:=0 to cboProdutos.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
        if TClasseCombo( cboProdutos.Items.Objects[i]).ID = ibProdutos.FieldByName('IDPROD').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
          cboProdutos.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
          Break;
        end else begin
          cboProdutos.ClearSelection;//LIMPA A SELECAO. }
     ///   end;{if}
     /// end;{for}

      if lbl_edtQtde.Text = '0' then begin

       lbl_edtQtde.Text := '1';

      end;

       lbl_edtQtdeExit(Sender);

     // if (lbl_edtQtde.Text > '0') and () Then begin

    //   lbl_edtVlrTotal.SetFocus;

     //end;//if}

       { cboServicos.ClearSelection;
        cboProdutos.ClearSelection;
        lbl_edtCodBarras.Clear;
        lbl_edtQtde.Clear;
        lbl_edtVlrUnit.Clear;
        lbl_edtVlrTotal.Clear;
        lbl_TipoPreco.Caption := '';
        lbl_edtCodBarras.SetFocus;}

    end;//if codprod

  end;{with}


end;

procedure TfrmRestaurante.lbl_edtRefKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key =#13 Then begin

    lbl_edtObs.SetFocus;
    lbl_edtQtde.Text := '1';

  end;
  
end;

procedure TfrmRestaurante.lbl_edtCodBarrasChange(Sender: TObject);

var

i : Integer;

CodBarrasVenda, TipoPreco : String;

begin

  with dmModule do begin


    if lbl_edtCodBarras.Text <> '' Then begin

      CodBarrasVenda := lbl_edtCodBarras.Text;


    ibProdutos.Close;
    ibProdutos.SQL.Clear;                                                                             //   
    ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE CADPRODUTOS.CODBARRAS=''' + CodBarrasVenda + ''' or CADPRODUTOS.REF=''' + CodBarrasVenda + '''');
    ibProdutos.Open;                                                                                    

    lbl_edtIDProduto.Text := IntToStr(ibProdutos.FieldByName('IDPROD').AsInteger);

  //  lbl_edtCodProd.Text := ibProdutos.FieldByName('IDPROD').AsString;
   // lbl_edtCodBarras.Text :=  ibProdutos.FieldByName('CODBARRAS').AsString;
    lbl_NomeProd.Caption  :=  ibProdutos.FieldByName('NOME').AsString;
  //  lbl_edtEstoque.Text := ibProdutos.FieldByName('Estoque').AsString;

     if lbl_TipoPreco.Caption = ''Then begin

       TipoPreco := 'A';

     end;

     if lbl_TipoPreco.Caption = 'Preço de Venda B'Then begin

       TipoPreco := 'B';

     end;

     if lbl_TipoPreco.Caption = 'Preço de Venda C'Then begin

       TipoPreco := 'C';

     end;

    if  (TipoPreco = 'A') Then begin

    lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);
   // lbl_Valor.Caption   := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);

    end else if  (TipoPreco = 'B') Then begin

   lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAB').AsFloat);
 //  lbl_Valor.Caption   := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);


    end else if  (TipoPreco = 'C') Then begin
 //
    lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAC').AsFloat);
  //  lbl_edtVlrTotal.Text   := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);

    end;

    {for i:=0 to cboProdutos.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
      if TClasseCombo( cboProdutos.Items.Objects[i]).ID = ibProdutos.FieldByName('IDPROD').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
        cboProdutos.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
        Break;
      end else begin
        cboProdutos.ClearSelection;//LIMPA A SELECAO. }
     /// end;{if}
   /// end;{for}

    if lbl_edtQtde.Text = '0' then begin

     lbl_edtQtde.Text := '1';

    end;

     lbl_edtQtdeExit(Sender);

   // if (lbl_edtQtde.Text > '0') and () Then begin

  //   lbl_edtVlrTotal.SetFocus;

   //end;//if}

     { cboServicos.ClearSelection;
      cboProdutos.ClearSelection;
      lbl_edtCodBarras.Clear;
      lbl_edtQtde.Clear;
      lbl_edtVlrUnit.Clear;
      lbl_edtVlrTotal.Clear;
      lbl_TipoPreco.Caption := '';
      lbl_edtCodBarras.SetFocus;}
///  cboProdutos.DroppedDown := True;

  end;//if cod barras
  
  end;{with}


end;

procedure TfrmRestaurante.Instrucoes1Click(Sender: TObject);
begin
frmInstrucoesR.ShowModal;
end;

procedure TfrmRestaurante.Sair1Click(Sender: TObject);
begin
Close;
end;

procedure TfrmRestaurante.Clientes1Click(Sender: TObject);
begin
frmBuscaClientes.ShowModal;
end;

procedure TfrmRestaurante.dbgLancamentoCellClick(Column: TColumn);
begin

  with dmModule do begin

    IDDetalheRestaurante := ibRestaurante.FieldByName('IDDETALHER').AsInteger;
    IDProdutoR           := ibRestaurante.FieldByName('IDPRODUTO').AsInteger;

    if ibRestaurante.RecordCount > 0 Then begin

      lbl_NomeProd.Caption  := ibRestaurante.FieldByName('NOMEPRODUTO').AsString;
      lbl_edtIDProduto.Text := IntToStr(IDProdutoR);
      lbl_edtCodBarras.Text := ibRestaurante.FieldByName('CODBARRAS').AsString;
      lbl_edtRef.Text       := ibRestaurante.FieldByName('REF').AsString;
      lbl_edtVlrUnit.Text   := FormatFloat(CasasDecimais('Produtos'),ibRestaurante.FieldByName('VLRUNIT').AsFloat);
      lbl_edtQtde.Text      := FormatFloat(CasasDecimais('Produtos'),ibRestaurante.FieldByName('QTDE').AsFloat);
      lbl_edtVlrTotal.Text  := FormatFloat(CasasDecimais('Produtos'),ibRestaurante.FieldByName('VLRTOTAL').AsFloat);
      lbl_edtObs.Text       := ibRestaurante.FieldByName('OBS').AsString;
      {lbl_IDFunc.Caption    := IntToStr(ibRestaurante.FieldByName('IDFUNC').AsInteger);
      lbl_Funcionario.Caption := ibRestaurante.FieldByName('NOMEFUNC').AsString;
      lbl_DetalheFunc.Caption := 'Entregador: '; }
      
    end;//if recordcount

  end;//with

end;

procedure TfrmRestaurante.ImprimeCupomInformativo1Click(Sender: TObject);
begin

  with dmModule do begin

    frmImprimeCupomR.ShowModal;

  end;//with
  
end;

procedure TfrmRestaurante.lbl_edtNMesaExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
end;

procedure TfrmRestaurante.lbl_edtObsExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
end;

procedure TfrmRestaurante.lbl_edtVlrUnitExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
end;

procedure TfrmRestaurante.lbl_edtVlrTotalExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
end;

procedure TfrmRestaurante.lbl_edtNMesaEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmRestaurante.lbl_edtRefEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmRestaurante.lbl_edtCodBarrasEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmRestaurante.lbl_edtObsEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmRestaurante.lbl_edtVlrUnitEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmRestaurante.lbl_edtQtdeEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmRestaurante.lbl_edtVlrTotalEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmRestaurante.btF3Click(Sender: TObject);
begin
frmRecebeLoja.ShowModal;
end;

procedure TfrmRestaurante.btF7Click(Sender: TObject);
begin
frmBuscaProdutos.ShowModal;
end;

procedure TfrmRestaurante.btSairClick(Sender: TObject);
begin
Close;
end;

procedure TfrmRestaurante.btF1Click(Sender: TObject);
begin

  if lbl_edtNMesa.Text <> '' Then begin

    lbl_Informacao.Caption := 'Juntar Mesas';

  end;

end;

procedure TfrmRestaurante.btF4Click(Sender: TObject);

var

ConfirmaMesa, IDDetalheRestaurante : Integer;
SituacaoMesa : String;

begin

  with dmModule do begin

      if (lbl_edtIDDetalheMesa.Caption = '0')or(lbl_edtIDDetalheMesa.Caption = '') Then begin

        lbl_AbMesa.Caption := 'Abertura de Mesas';

          ConfirmaMesa := Application.MessageBox('Confirma Abertura de Mesa?','Abertura de Mesa',MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

          if ConfirmaMesa = 6 Then begin

            SituacaoMesa := 'Aberta';

              ibDetalheRestaurante.Close;
              ibDetalheRestaurante.SQL.Clear;
              ibDetalheRestaurante.SQL.Add('INSERT INTO TBLDETALHERESTAURANTE'
              +'(DATA,HORAABERTURA,SITUACAOMESA) values '
              + '(''' + FormatDateTime('mm-dd-yyyy',Now) + ''','
              + ' ''' + FormatDateTime('hh:mm:ss',Now) + ''','
              + ' ''' + SituacaoMesa + ''')');
              ibDetalheRestaurante.ExecSQL;

              Commit(ibDetalheRestaurante);
              ibDetalheRestaurante.Close;
              ibDetalheRestaurante.SQL.Clear;
              ibDetalheRestaurante.SQL.Add('SELECT * FROM TBLDETALHERESTAURANTE ORDER BY IDDETALHERESTAURANTE DESC');
              ibDetalheRestaurante.Open;

              IDDetalheRestaurante := ibDetalheRestaurante.FieldByName('IDDETALHERESTAURANTE').AsInteger;
              lbl_edtIDDetalheMesa.Caption := IntToStr(IDDetalheRestaurante);

              if ckMesa1.Checked Then begin

                ckMesa1.Font.Color := clRed;

              end;

              if ckMesa2.Checked Then begin

                ckMesa2.Font.Color := clRed;

              end;

              if ckMesa3.Checked Then begin

                ckMesa3.Font.Color := clRed;

              end;

              if ckMesa4.Checked Then begin

                ckMesa4.Font.Color := clRed;

              end;

              if ckMesa5.Checked Then begin

                ckMesa5.Font.Color := clRed;

              end;

              if ckMesa6.Checked Then begin

                ckMesa6.Font.Color := clRed;

              end;

              if ckMesa7.Checked Then begin

                ckMesa7.Font.Color := clRed;

              end;

              if ckMesa8.Checked Then begin

                ckMesa8.Font.Color := clRed;

              end;

              if ckMesa9.Checked Then begin

                ckMesa9.Font.Color := clRed;

              end;

              if ckMesa10.Checked Then begin

                ckMesa10.Font.Color := clRed;

              end;

              if ckMesa11.Checked Then begin

                ckMesa11.Font.Color := clRed;

              end;

              if ckMesa12.Checked Then begin

                ckMesa12.Font.Color := clRed;

              end;

              if ckMesa13.Checked Then begin

                ckMesa13.Font.Color := clRed;

              end;

              if ckMesa14.Checked Then begin

                ckMesa14.Font.Color := clRed;

              end;

              if ckMesa15.Checked Then begin

                ckMesa15.Font.Color := clRed;

              end;

              if ckMesa16.Checked Then begin

                ckMesa16.Font.Color := clRed;

              end;

              if ckMesa17.Checked Then begin

                ckMesa17.Font.Color := clRed;

              end;

              if ckMesa18.Checked Then begin

                ckMesa18.Font.Color := clRed;

              end;

              if ckMesa19.Checked Then begin

                ckMesa19.Font.Color := clRed;

              end;

              if ckMesa20.Checked Then begin

                ckMesa20.Font.Color := clRed;

              end;

              if ckMesa21.Checked Then begin

                ckMesa21.Font.Color := clRed;

              end;

              if ckMesa22.Checked Then begin

                ckMesa22.Font.Color := clRed;

              end;

              if ckMesa23.Checked Then begin

                ckMesa23.Font.Color := clRed;

              end;

              if ckMesa24.Checked Then begin

                ckMesa24.Font.Color := clRed;

              end;

              if ckMesa25.Checked Then begin

                ckMesa25.Font.Color := clRed;

              end;

              if ckMesa26.Checked Then begin

                ckMesa26.Font.Color := clRed;

              end;

              if ckMesa27.Checked Then begin

                ckMesa27.Font.Color := clRed;

              end;

              if ckMesa28.Checked Then begin

                ckMesa28.Font.Color := clRed;

              end;

              if ckMesa29.Checked Then begin

                ckMesa29.Font.Color := clRed;

              end;

              if ckMesa30.Checked Then begin

                ckMesa30.Font.Color := clRed;

              end;

              lbl_edtNMesa.Clear;
              lbl_Informacao.Caption := '';
              Application.MessageBox('Clique nas mesas para incluir','Informação',+MB_OK+MB_DEFBUTTON1+MB_ICONINFORMATION);

          end;

      end;//
//----------------------------------------------------------------------------//

  end;//with

end;

procedure TfrmRestaurante.btF5Click(Sender: TObject);

begin

  with dmModule do begin

        lbl_AbMesa.Caption := '';
        lbl_Informacao.Caption := '';
        ///lbl_InformacaoABMesa.Caption := '';
        lbl_edtNMesa.Clear;
        lbl_edtIDDetalheMesa.Caption := '';
        lbl_edtRef.Clear;
        lbl_edtCodBarras.Clear;
     ///   cboProdutos.ClearSelection;
        lbl_edtQtde.Text := '1';
        lbl_edtVlrUnit.Clear;
        lbl_edtVlrTotal.Clear;
        lbl_IDCli.Caption := '';
        lbl_Cliente.Caption := '';
        lbl_ValorTotal.Caption := '0,00';
        lbl_TipoPreco.Caption := '';
        lbl_NomeProd.Caption := '';
        lbl_IDFunc.Caption := '';
        lbl_Funcionario.Caption := '';
        lbl_DetalheFunc.Caption := '';
        lbl_TipoPreco.Caption := '';
        lbl_edtObs.Clear;
        ibRestaurante.Close;


  end;//with

end;

procedure TfrmRestaurante.btF6Click(Sender: TObject);

var
ConfirmaCancelamento,ConfirmaCupomInteiro,IDProdutoDevolucao : Integer;
QtdeVendaDevolve,QtdeEstoqueDevolve,VlrProdutoDevolve,ValorCustoDevolve : Real;
EstoqueFinalDevolve,TotalCustoDevolve,TotalProdEstoqueDevolve : String;
intStatusMesa : Integer;
begin

  with dmModule do begin

    if lbl_edtIDDetalheMesa.Caption <> '' Then begin

        ConfirmaCancelamento := Application.MessageBox(PChar('Esta Opção cancela todas as Mesas do cupom:"'+ lbl_edtIDDetalheMesa.Caption +'", clique em sim para continuar e não para interromper?'),'Notificação: Cancela todas as mesas juntamente com o cupom.',+MB_YESNO+MB_DEFBUTTON1+MB_ICONWARNING);

        if ConfirmaCancelamento = 6 Then begin

         // ExecSELECTMesas;
        {  Commit(ibControleMesas);
          ibControleMesas.Close;
          ibControleMesas.SQL.Clear;
          ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE TBLCONTROLEMESAS.IDDETALHECONTROLE=''' + IntToStr(intIDCupom) +'''');
          ibControleMesas.Open;

          if ibControleMesas.RecordCount > 0 Then begin

            while not ibControleMesas.Eof do begin


            end;//while

          end;//if recordcount controlemesas }

////////////////////////////////////////////////////////////////////////////////

      if lbl_edtIDDetalheMesa.Caption > '0' Then begin

       // ConfirmaCupomInteiro := Application.MessageBox('Atenção esta operação cancela o cupom inteiro, clique em sim pra continuar e não pra cancelar.','Cancelamento de Cupom',+MB_YESNO+MB_DEFBUTTON1+MB_ICONINFORMATION);

          ibRestaurante.Close;
          ibRestaurante.SQL.Clear;
          ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + '''');
          ibRestaurante.Open;

       // if ConfirmaCupomInteiro = 6 Then begin

          while not ibRestaurante.Eof do begin

          IDProdutoDevolucao := ibRestaurante.FieldByName('IDPRODUTO').AsInteger;

          QtdeVendaDevolve   := StrtoFloat(StringReplace(FloattoStr(ibRestaurante.FieldByName('QTDE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

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

         ibRestaurante.Next;

         end;//while


          ibRestaurante.Close;
          ibRestaurante.SQL.Clear;
          ibRestaurante.SQL.Add('DELETE FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + '''');
          ibRestaurante.Open;


          ibDetalheRestaurante.Close;
          ibDetalheRestaurante.SQL.Clear;
          ibDetalheRestaurante.SQL.Add('DELETE FROM TBLDETALHERESTAURANTE WHERE IDDETALHERESTAURANTE=''' + lbl_edtIDDetalheMesa.Caption + '''');
          ibDetalheRestaurante.ExecSQL;

        //end;//if

      // lbl_edtIDDetalheMesa.Caption := '';


      end;//if

////////////////////////////////////////////////////////////////////////////////


           ExecSELECTMesas;


        { ckMesa1.Checked := False;
          ckMesa1.Font.Color := clBlack;
          ckMesa1.Caption := 'Livre';

          ckMesa2.Checked := False;
          ckMesa2.Font.Color := clBlack;
          ckMesa2.Caption := 'Livre';

          ckMesa3.Checked := False;
          ckMesa3.Font.Color := clBlack;
          ckMesa3.Caption := 'Livre';

          ckMesa4.Checked := False;
          ckMesa4.Font.Color := clBlack;
          ckMesa4.Caption := 'Livre';

          ckMesa5.Checked := False;
          ckMesa5.Font.Color := clBlack;
          ckMesa5.Caption := 'Livre';

          ckMesa6.Checked := False;
          ckMesa6.Font.Color := clBlack;
          ckMesa6.Caption := 'Livre';

          ckMesa7.Checked := False;
          ckMesa7.Font.Color := clBlack;
          ckMesa7.Caption := 'Livre';

          ckMesa8.Checked := False;
          ckMesa8.Font.Color := clBlack;
          ckMesa8.Caption := 'Livre';

          ckMesa9.Checked := False;
          ckMesa9.Font.Color := clBlack;
          ckMesa9.Caption := 'Livre';

          ckMesa10.Checked := False;
          ckMesa10.Font.Color := clBlack;
          ckMesa10.Caption := 'Livre';

          ckMesa11.Checked := False;
          ckMesa11.Font.Color := clBlack;
          ckMesa11.Caption := 'Livre';

          ckMesa12.Checked := False;
          ckMesa12.Font.Color := clBlack;
          ckMesa12.Caption := 'Livre';

          ckMesa13.Checked := False;
          ckMesa13.Font.Color := clBlack;
          ckMesa13.Caption := 'Livre';

          ckMesa14.Checked := False;
          ckMesa14.Font.Color := clBlack;
          ckMesa14.Caption := 'Livre';

          ckMesa15.Checked := False;
          ckMesa15.Font.Color := clBlack;
          ckMesa15.Caption := 'Livre';

          ckMesa16.Checked := False;
          ckMesa16.Font.Color := clBlack;
          ckMesa16.Caption := 'Livre';

          ckMesa17.Checked := False;
          ckMesa17.Font.Color := clBlack;
          ckMesa17.Caption := 'Livre';

          ckMesa18.Checked := False;
          ckMesa18.Font.Color := clBlack;
          ckMesa18.Caption := 'Livre';

          ckMesa19.Checked := False;
          ckMesa19.Font.Color := clBlack;
          ckMesa19.Caption := 'Livre';

          ckMesa20.Checked := False;
          ckMesa20.Font.Color := clBlack;
          ckMesa20.Caption := 'Livre';

          ckMesa21.Checked := False;
          ckMesa21.Font.Color := clBlack;
          ckMesa21.Caption := 'Livre';

          ckMesa22.Checked := False;
          ckMesa22.Font.Color := clBlack;
          ckMesa22.Caption := 'Livre';

          ckMesa23.Checked := False;
          ckMesa23.Font.Color := clBlack;
          ckMesa23.Caption := 'Livre';

          ckMesa24.Checked := False;
          ckMesa24.Font.Color := clBlack;
          ckMesa24.Caption := 'Livre';

          ckMesa25.Checked := False;
          ckMesa25.Font.Color := clBlack;
          ckMesa25.Caption := 'Livre';

          ckMesa26.Checked := False;
          ckMesa26.Font.Color := clBlack;
          ckMesa26.Caption := 'Livre';

          ckMesa27.Checked := False;
          ckMesa27.Font.Color := clBlack;
          ckMesa27.Caption := 'Livre';

          ckMesa28.Checked := False;
          ckMesa28.Font.Color := clBlack;
          ckMesa28.Caption := 'Livre';

          ckMesa29.Checked := False;
          ckMesa29.Font.Color := clBlack;
          ckMesa29.Caption := 'Livre';

          ckMesa30.Checked := False;
          ckMesa30.Font.Color := clBlack;
          ckMesa30.Caption := 'Livre';  }

        end;//if confirma cancelamento

        {  lbl_edtNMesa.Clear;
          lbl_edtIDDetalheMesa.Caption := '';
          lbl_AbMesa.Caption := '';
          lbl_Informacao.Caption := '';
          lbl_ValorTotal.Caption := ''; }

    end;//if iddetalhe mesa



  end;//with

end;

procedure TfrmRestaurante.btF8Click(Sender: TObject);
begin

  with dmModule do begin

    dbgLancamento.SetFocus;

  end;//with

end;

procedure TfrmRestaurante.btF9Click(Sender: TObject);

var
ConfirmaCancelamentodeItem : Integer;

//variaveis para cancelanento e acerto de estoque

QtdeEstoque,QtdeVenda, VlrProduto, ValorCustoE : Real;
EstoqueFinal, TotalProdEstoque, TotalCusto, StringProd, LocalEstoque :String;
NomeProduto,ValorUnit, Valortotal, QtdeProd :String;
Custo, QtdeVendida,Valor1, Valor2,Valor3 : Real;

begin

  with dmModule do begin

    if(lbl_edtIDProduto.Text > '0')and(lbl_NomeProd.Caption <>'')and(lbl_edtVlrUnit.Text >'0,00') Then begin

      ConfirmaCancelamentodeItem := Application.MessageBox('Confirma Cancelamento do Item?','Cancelamento de Item',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

      if ConfirmaCancelamentodeItem = 6 Then begin

        ibEntrProdEstoque.Close;
        ibEntrProdEstoque.SQL.Clear;
        ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,'
        + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,TBLENTRADAESTOQUEPROD.ESTOQUEMIN,'
        + 'CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORCUSTO,CADPRODUTOS.TIPOPROD FROM TBLENTRADAESTOQUEPROD '
        + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
        + 'WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + lbl_edtIDProduto.Text + '''');
        ibEntrProdEstoque.Open;

////////////////////////////////////////////////////////////////////////////////

          //ROTINA ABAIXO PARA SOMAR TOTAL DO ESTQUE E QUANTIDADE DO ESTOQUE
         if lbl_edtIDProduto.Text <> '' Then begin

           QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           QtdeVenda   := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));

           QtdeEstoque := QtdeEstoque + QtdeVenda;

           EstoqueFinal := StringReplace(FloattoStr(QtdeEstoque),ThousandSeparator,'',[rfReplaceAll]);
           EstoqueFinal := StringReplace(EstoqueFinal,DecimalSeparator,'.',[rfReplaceAll]);

           //AQUI VAI O CALCULO DO TOTAL CONFORME VENDE O PRODUTO
           VlrProduto  := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORVENDAA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           VlrProduto  := QtdeEstoque * VlrProduto;

           TotalProdEstoque := StringReplace(FloattoStr(VlrProduto),ThousandSeparator,'',[rfReplaceAll]);
           TotalProdEstoque := StringReplace(TotalProdEstoque,DecimalSeparator,'.',[rfReplaceAll]);

           ValorCustoE := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORCUSTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           ValorCustoE := QtdeEstoque * ValorCustoE;

           TotalCusto := StringReplace(FloattoStr(ValorCustoE),ThousandSeparator,'',[rfReplaceAll]);
           TotalCusto := StringReplace(TotalCusto,DecimalSeparator,'.',[rfReplaceAll]);

           ibEntrProdEstoque.Close;
           ibEntrProdEstoque.SQL.Clear;
           ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
           +'TOTALCUSTO=''' + TotalCusto + ''','
           +'QUANTIDADE=''' + (EstoqueFinal) + ''','
           +'VLRTOTAL=''' + (TotalProdEstoque) +  ''' WHERE IDPROD=''' + lbl_edtIDProduto.Text + '''');
           ibEntrProdEstoque.ExecSQL;
           Commit(ibEntrProdEstoque);

         end;//if label IDPRODCX


         if lbl_edtIDProduto.Text = '' Then begin

            StringProd := ' '' 0 '',';
            TotalCusto := '0';

          end else begin

            StringProd          := lbl_edtIDProduto.Text;

            ibProdutos.Close;
            ibProdutos.SQL.Clear;
            ibProdutos.SQL.Add('SELECT CADPRODUTOS.*,'
            + 'LOCALESTOCAGEM.NOME As Estoque FROM CADPRODUTOS '
            + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE '
            + 'WHERE IDPROD=''' + StringProd + '''');
            ibProdutos.Open;

            LocalEstoque := ibProdutos.FieldByName('Estoque').AsString;
            NomeProduto  := ibProdutos.FieldByName('NOME').AsString;


            Custo := StrtoFloat(StringReplace(FloattoStr(ibProdutos.FieldByName('VALORCUSTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
            QtdeVendida := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));
            Custo := QtdeVendida * Custo;

            TotalCusto := StringReplace(FloattoStr(Custo),ThousandSeparator,'',[rfReplaceAll]);
            TotalCusto := StringReplace(TotalCusto,DecimalSeparator,'.',[rfReplaceAll]);

          end;

/////////////////////////////////////////////////////////////////////////////////
          if lbl_edtVlrTotal.Text <> '' Then begin// se for em branco executa rotina abaixo.

            if (Pos(',',lbl_edtVlrTotal.Text)>0) and (lbl_edtVlrTotal.Text <> '') Then begin

              Valor1 := StrToFloat(StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]));

              if lbl_ValorTotal.Caption = '' Then begin

              lbl_ValorTotal.Caption := FormatFloat(',0.00',(Valor1));

              end else begin

              //Valor1 := StrToFloat(StringReplace(lbl_edtTotalPed.Text,ThousandSeparator,'',[rfReplaceAll]));
              Valor2 := StrToFloat(StringReplace(lbl_ValorTotal.Caption,ThousandSeparator,'',[rfReplaceAll]));
              Valor3 := (Valor2 - Valor1);

              lbl_ValorTotal.Caption := FormatFloat(',0.00',(Valor3));

              end;

              end else begin

              Valor1 := StrToFloat(StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]));

              if lbl_ValorTotal.Caption = '' Then begin

              lbl_ValorTotal.Caption := FormatFloat(',0.00',(Valor1));

              end else begin

              //Valor1 := StrToFloat(StringReplace(lbl_edtTotalPed.Text,ThousandSeparator,'',[rfReplaceAll]));
              Valor2 := StrToFloat(StringReplace(lbl_ValorTotal.Caption,ThousandSeparator,'',[rfReplaceAll]));
              Valor3 := (Valor2 - Valor1);

              lbl_ValorTotal.Caption := FormatFloat(',0.00',(Valor3));

              end;

            end;{if}

          end;//if
////////////////////////////////////////////////////////////////////////////////

          ibRestaurante.Close;
          ibRestaurante.SQL.Clear;
          ibRestaurante.SQL.Add('DELETE FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + ''' and IDPRODUTO=''' + lbl_edtIDProduto.Text + '''');
          ibRestaurante.ExecSQL;

          ibRestaurante.Close;
          ibRestaurante.SQL.Clear;
          ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE IDDETALHER=''' + lbl_edtIDDetalheMesa.Caption + '''');
          ibRestaurante.Open;

          (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
          (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
          (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

          lbl_edtRef.Clear;
          lbl_edtCodBarras.Clear;
       ///   cboProdutos.ClearSelection;
          lbl_edtQtde.Text := '1';
          lbl_edtVlrUnit.Clear;
          lbl_edtVlrTotal.Clear;
          lbl_IDCli.Caption := '';
          lbl_Cliente.Caption := '';
          lbl_NomeProd.Caption := '';
          lbl_edtObs.Clear;
          
      end;

    end;//if label idproduto nomeprod e vlrunit 

  end;//with
        
end;

procedure TfrmRestaurante.btLimparMesasClick(Sender: TObject);
begin

  with dmModule do begin

  lbl_edtNMesa.Clear;
  lbl_edtIDDetalheMesa.Caption := '';

  end;//with
  
end;

procedure TfrmRestaurante.CTRLNNotaPaulista1Click(Sender: TObject);
begin
frmNFPaulista.ShowModal;
end;

procedure TfrmRestaurante.CTRLUImprimeUltimoCupomValidado1Click(
  Sender: TObject);

  var

Int_Retorno,intConfirmaImpressao : Integer;
begin

  intConfirmaImpressao := Application.MessageBox('Imprimir Último Cupom Validado','SAT',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

  if intConfirmaImpressao = 6 Then begin

    Int_Retorno := iReimprimirUltimoCFe_SAT_Daruma();

  end;

end;

procedure TfrmRestaurante.LimpaCamposdaNFPaulista1Click(Sender: TObject);
begin
lbl_CnpjCpfP.Caption := '';
lbl_edtCnpjCpf.Caption := '';
lbl_Cliente.Caption := '';
lbl_CodCliente.Caption := '';
lbl_TipoPreco.Caption := '';
end;

procedure TfrmRestaurante.btNotaPaulistaClick(Sender: TObject);
begin
frmNFPaulista.ShowModal;
end;

procedure TfrmRestaurante.btCupomInfClick(Sender: TObject);
begin
frmImprimeCupomR.ShowModal;
end;

procedure TfrmRestaurante.CancelaltimoCupom1Click(Sender: TObject);

var

iRetorno : Integer; 
intSatDaruma : Integer;
begin

  with dmModule do begin

    Commit(ibConfig);
    ibConfig.Close;
    ibConfig.SQL.Clear;
    ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
    ibConfig.Open;

    intSatDaruma       := ibConfig.FieldByName('SATDARUMA').AsInteger;
    
    if intSatDaruma = 1 Then begin

      iRetorno:= tCFeCancelar_SAT_Daruma();
      Tratar_RetornoSAT(iRetorno);

    end;

  end;//with
              
end;

procedure TfrmRestaurante.btCancelarCupomSatClick(Sender: TObject);

var

iRetorno : Integer; 
intSatDaruma : Integer;
begin

  with dmModule do begin

    Commit(ibConfig);
    ibConfig.Close;
    ibConfig.SQL.Clear;
    ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
    ibConfig.Open;

    intSatDaruma       := ibConfig.FieldByName('SATDARUMA').AsInteger;
    
    if intSatDaruma = 1 Then begin

      iRetorno:= tCFeCancelar_SAT_Daruma();
      Tratar_RetornoSAT(iRetorno);

    end;

  end;//with


end;

procedure TfrmRestaurante.btImprimeUltimoCupomClick(Sender: TObject);

  var

Int_Retorno,intConfirmaImpressao : Integer;
begin

  intConfirmaImpressao := Application.MessageBox('Imprimir Último Cupom Validado','SAT',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

  if intConfirmaImpressao = 6 Then begin

    Int_Retorno := iReimprimirUltimoCFe_SAT_Daruma();

  end;

end;

procedure TfrmRestaurante.btLiberaMesaClick(Sender: TObject);
begin
lbl_Informacao.Caption := 'Liberar Mesa';
end;

procedure TfrmRestaurante.btVendaBClick(Sender: TObject);
begin
lbl_TipoPreco.Caption := 'Preço de Venda B';
end;

procedure TfrmRestaurante.btVendaCClick(Sender: TObject);
begin
lbl_TipoPreco.Caption := 'Preço de Venda C';
end;

procedure TfrmRestaurante.Funcionario1Click(Sender: TObject);
begin
frmFuncionario.ShowModal;
end;

procedure TfrmRestaurante.btFuncClick(Sender: TObject);
begin
frmFuncionario.ShowModal;
end;

procedure TfrmRestaurante.btLimpaFuncClick(Sender: TObject);
begin
lbl_IDFunc.Caption := '';
lbl_Funcionario.Caption := '';
lbl_DetalheFunc.Caption := '';
end;

procedure TfrmRestaurante.btManutCuponsClick(Sender: TObject);
begin
frmManutCx.ShowModal;
end;

procedure TfrmRestaurante.btVendasAbertoClick(Sender: TObject);
begin
frmVendasAberto.ShowModal;
end;

end.



