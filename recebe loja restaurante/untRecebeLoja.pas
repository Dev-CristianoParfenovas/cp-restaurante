unit untRecebeLoja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, classComboBox, IBQuery, DB, axCtrls, jpeg,
  ComCtrls, untClasse.VendasCX, Printers;

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
    Bevel1: TBevel;
    lbl_CondPagto: TLabel;
    lbl_edtAcrescimo: TLabeledEdit;
    Label3: TLabel;
    cboTPagto: TComboBox;
    lbl_edtValorPago: TLabeledEdit;
    lbl_Informacao: TLabel;
    dtpDataCheque: TDateTimePicker;
    cboCondPagto: TComboBox;

    procedure Commit(IBQueryExec : TIBQuery);
    procedure Tratar_RetornoSAT(iRetorno:integer);
    procedure ExecSELECTTipoPagto;
    procedure ExecSELECTTPagto;
    procedure ExecSELECTCondPagto;
    procedure ExecSELECTSituacaoMesas;
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
    procedure cboTPagtoKeyPress(Sender: TObject; var Key: Char);

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

  //IDVenda : Integer;
  IDVendaInt : Integer;
  //variaveis para o tipo de pagto
  IDTipoPagamento      : TClasseCombo;
  StringTipoPagamento  : String;

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

  IDFuncComiss, IDVenda : Integer;
  Int_Retorno, iRetorno : Integer;
  
implementation

uses  funcPosto, untdmModule, BuscaClientes,
  Daruma_Framework_Exemplo_Dual_01, Daruma_Framework_Exemplo_DUAL_02,
  Daruma_Framework_Impressora_Dual,
  Daruma_Framework_Looping_Verificacao_Status,
  Daruma_Framework_Looping_Verificacao_Status_Doc,
  Daruma_Framework_Variaveis_Globais, Daruma_Framework_DUAL_ImprimirTexto,
  untCliente, untModuloRestaurante;
Function Daruma_DUAL_ImprimirTexto( TextoLivre: String; TamanhoTexto: Integer ): Integer; StdCall; External 'Daruma32.dll'

///SAT

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

  //SAT - Reimpress�o e Impress�o
  function iReimprimirUltimoCFe_SAT_Daruma() : Integer; StdCall; External 'DarumaFrameWork.dll';
  function iImprimirCFe_SAT_Daruma(szPathXmlSAT: String; pszTipo: String): Integer; StdCall; External 'DarumaFrameWork.dll';

  // SAT - Configura��o SAT
  function tCFeAssociarAssinatura_SAT_Daruma(pszTagsAssinatura: String): Integer; StdCall; External 'DarumaFrameWork.dll';

  // SAT - Retornos e Status
 // function rVerificarComunicacao_SAT_Daruma(): Integer; StdCall; External 'DarumaFrameWork.dll';
 // function rConsultarStatus_SAT_Daruma(pszStatusSAT: String): Integer; StdCall; External 'DarumaFrameWork.dll';
//  function rConsultarStatusEspecifico_SAT_Daruma(pszCampo: String; pszRetornoSAT: String): Integer; StdCall; External 'DarumaFramework.dll';
//  function rConsultarArqCopSeguranca_SAT_Daruma(pszArqCopSeg: String): Integer; StdCall; External 'DarumaFramework.dll';
//  function rInfoEstendida_SAT_Daruma(pszIndice: String; pszRetorno: String): Integer; StdCall; External 'DarumaFramework.dll';



////////////////////////////////////////////////////////////////////////////////

{$R *.dfm}

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

procedure TfrmRecebeLoja.ExecSELECTSituacaoMesas;

begin

  with dmModule do begin

    Commit(ibControleMesas);
    ibControleMesas.Close;
    ibControleMesas.SQL.Clear;
    ibControleMesas.SQL.Add('SELECT TBLCONTROLEMESAS.*,'
    + 'TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE FROM TBLCONTROLEMESAS '
    + 'INNER JOIN TBLDETALHERESTAURANTE ON TBLCONTROLEMESAS.IDDETALHECONTROLE=TBLDETALHERESTAURANTE.IDDETALHERESTAURANTE');
    ibControleMesas.Open;

    if ibControleMesas.RecordCount > 0 Then begin

      while not ibControleMesas.Eof do begin

        if ibControleMesas.FieldByName('M1').AsString <> 'Sim' Then begin

          frmRestaurante.ckMesa1.Checked := False;
          frmRestaurante.ckMesa1.Font.Color := clBlack;
          frmRestaurante.ckMesa1.Caption := 'Livre';

        end;

        if ibControleMesas.FieldByName('M2').AsString <> 'Sim' Then begin

          frmRestaurante.ckMesa2.Checked := False;
          frmRestaurante.ckMesa2.Font.Color := clBlack;
          frmRestaurante.ckMesa2.Caption := 'Livre';

        end;

        if ibControleMesas.FieldByName('M3').AsString <> 'Sim' Then begin

          frmRestaurante.ckMesa3.Checked := False;
          frmRestaurante.ckMesa3.Font.Color := clBlack;
          frmRestaurante.ckMesa3.Caption := 'Livre';

        end;

        if ibControleMesas.FieldByName('M4').AsString <> 'Sim' Then begin

          frmRestaurante.ckMesa4.Checked := False;
          frmRestaurante.ckMesa4.Font.Color := clBlack;
          frmRestaurante.ckMesa4.Caption := 'Livre';

        end;

        if ibControleMesas.FieldByName('M5').AsString <> 'Sim' Then begin

          frmRestaurante.ckMesa5.Checked := False;
          frmRestaurante.ckMesa5.Font.Color := clBlack;
          frmRestaurante.ckMesa5.Caption := 'Livre';

        end;

        ibControleMesas.Next;

      end;//while

     end;//recordcount

  end;//with

end;  

procedure TfrmRecebeLoja.cboTipoPagtoKeyPress(Sender: TObject;
  var Key: Char);
begin

  if Key = #13 Then begin

   cboTipoPagto.DroppedDown := True;
   SendMessage(cboTipoPagto.Handle,CB_SHOWDROPDOWN,1,0);

      ///   if frmCliente.Showing Then begin

         if cboTipoPagto.ItemIndex = - 1 Then begin

            StringTipoPagamento        := ' ''0'',';

          end else begin

            IDTipoPagamento  := TClasseCombo( cboTipoPagto.Items.Objects[cboTipoPagto.ItemIndex] );

            StringTipoPagamento  := ' ''' + InttoStr( IDTipoPagamento.ID ) + ''',';


          end;

      ///    end;
   lbl_edtValor.Text     := lbl_edtTotalVenda.Text;
   lbl_edtValor.SetFocus;
   
   
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

begin

  cboTipoPagto.SetFocus;
  dtpDataCheque.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));

  
  lbl_edtTroco.Text     := '0,00';
  lbl_edtDesconto.Text  := '0,00';
  lbl_edtAcrescimo.Text := '0,00';
  lbl_edtNumCheque.Clear;
//  lbl_edtCodCli.Clear;
//  lbl_edtNomeCliente.Clear;


  with dmModule do begin

    ExecSELECTCondPagto;  

   { if frmVendasLoja.Showing Then begin

      if frmVendasLoja.lbl_CodVenda.Caption <> '' Then begin

        if frmVendasLoja.lbl_NomeFuncComissao.Caption <> '' Then begin

          IDFuncComiss := StrToInt(frmVendasLoja.lbl_edtFuncComissao.Text);

        end else begin

          IDFuncComiss := 0;

        end;//id idfunccomissao

        ibServsVendasCli.Close;
        ibServsVendasCli.SQL.Clear;
        ibServsVendasCli.SQL.Add('SELECT IDSERVSVENDA FROM TBLSERVICOSVENDAS ORDER BY IDSERVSVENDA DESC');
        ibServsVendasCli.Open;

        InsereVenda := True;

        lbl_edtTotalVenda.Text := frmVendasLoja.lbl_edtSubTotal.Caption;

      end;//if

    end;// if frmvendasloja showing }

////////////////////////////////////////////////////////////////////////////////

       if frmCliente.lbl_CodVenda.Caption <> '' Then begin

         ibServsVendasCli.Close;
         ibServsVendasCli.SQL.Clear;
         ibServsVendasCli.SQL.Add('SELECT IDSERVSVENDA FROM TBLSERVICOSVENDAS ORDER BY IDSERVSVENDA DESC');
         ibServsVendasCli.Open;

         InsereVenda := True;

       end;//if

       if frmCliente.Showing Then begin

         if frmCliente.lbl_edtTotalPedido.Text > '0,00' Then begin

         lbl_edtTotalVenda.Text := frmCliente.lbl_edtTotalPedido.Text;

         end;

         if frmCliente.lbl_edtTotalDetalhado.Text > '0,00' Then begin

         lbl_edtTotalVenda.Text := frmCliente.lbl_edtTotalDetalhado.Text;

         end;

       end;

       if frmRestaurante.Showing Then begin

         lbl_edtTotalVenda.Text := frmRestaurante.lbl_ValorTotal.Caption;

       end;//if

////////////////////////////////////////////////////////////////////////////////

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
              ValorTotal  := StrtoFloat(StringReplace(FloattoStr(ibTempProd.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
              ValorTotalB := StrToFloat(StringReplace(FloatToStr(ibTempProd.FieldByName('VALORB').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
              ValorTotalC := StrToFloat(StringReplace(FloatToStr(ibTempProd.FieldByName('VALORC').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

            end else begin

              //atribui na variavel substituindo o ponto para vlr em branco
              TotalVenda   := StringReplace(FloattoStr(ibTempProd.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);
              TotalVendaB  := StringReplace(FloatToStr(ibTempProd.FieldByName('VALORB').AsFloat),ThousandSeparator,'',[rfReplaceAll]);
              TotalVendaC  := StringReplace(FloatToStr(ibTempProd.FieldByName('VALORC').AsFloat),ThousandSeparator,'',[rfReplaceAll]);


              //atribui a variavel o valor separando por ponto
              ValorTotal  := ValorTotal + StrtoFloat(StringReplace(TotalVenda,ThousandSeparator,'',[rfReplaceAll]));
              ValorTotalB := ValorTotalB + StrtoFloat(StringReplace(TotalVendaB,ThousandSeparator,'',[rfReplaceAll]));
              ValorTotalC := ValorTotalC + StrtoFloat(StringReplace(TotalVendaC,ThousandSeparator,'',[rfReplaceAll]));

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


    ExecSELECTTPagto;
    ExecSELECTTipoPagto;

  end;

end;

procedure TfrmRecebeLoja.lbl_edtValorExit(Sender: TObject);

var

Valor1,Valor2,Valor3 : Real;


begin

      Valor1 := StrToFloat(StringReplace(lbl_edtValor.Text,ThousandSeparator,'',[rfReplaceAll]));
      lbl_edtValor.Text := FormatFloat(',0.00',(Valor1));

      Valor2 := StrToFloat(StringReplace(lbl_edtTotalVenda.Text,ThousandSeparator,'',[rfReplaceAll]));

      if Valor1 < Valor2 Then begin

        Valor3 := Valor2 - Valor1;

         lbl_edtValorPago.Text := FormatFloat(',0.00',(Valor3));

      end;//if
      
 { with dmModule do begin

   if lbl_edtValor.Text <> '' Then begin //se for em branco executa rotina abaixo.

      if (Pos(',',lbl_edtValor.Text)>0) and (lbl_edtValor.Text <> '') Then begin

        Valor1 := StrToFloat(StringReplace(lbl_edtValor.Text,ThousandSeparator,'',[rfReplaceAll]));
        Valor2 := StrToFloat(StringReplace(lbl_edtTotalVenda.Text,ThousandSeparator,'',[rfReplaceAll]));
        lbl_edtTroco.Text := FormatFloat(',0.00',(Valor1 - Valor2));


      end else begin

        Valor1 := StrToFloat(StringReplace(lbl_edtValor.Text,ThousandSeparator,'',[rfReplaceAll]));
        Valor2 := StrToFloat(StringReplace(lbl_edtTotalVenda.Text,ThousandSeparator,'',[rfReplaceAll]));
        lbl_edtTroco.Text := FormatFloat(',0.00',(Valor1 - Valor2)); }


    //  end;{if}

 //   end;{if}
////////////////////////////////////
 {   if lbl_edtSubTotal.Text = '' Then begin

     lbl_edtSubTotal.Text := FormatFloat(',0.00',Valor3);

    end else begin

     Valor4 := StrToFloat(StringReplace(lbl_edtSubTotal.Text,ThousandSeparator,'',[rfReplaceAll]));
     lbl_edtSubTotal.Text := FormatFloat(',0.00',(Valor4 + Valor3));   }

   // end;{if}
/////////////////////////////////
  //  lbl_edtValor.Text := FormatFloat(CasasDecimais('Produtos'),StrToFloat(lbl_edtValor.Text)); //FormatFloat(casa',0.00',StrToFloat(lbl_edtValor.Text));

   { if (cboTipoPagto.Text = 'PENDENTE')and(lbl_edtNomeCliente.Text='') Then begin

    Application.MessageBox('Para lan�amento de pendentes � necess�rio selecionar um cliente, precione f1 para este procedimento','Cliente n�o selecionado',+MB_OK+MB_DEFBUTTON1+MB_ICONWARNING);

    end;}


//  end;{with}

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
IDVendaCliente : Integer;

StringTPagto : String;
IDTPagto : TClasseCombo;

AvisaCupom,ImprimirDireto,DesenhodeDivisao,TesteCupom,QtdedeSaltos : String;

ConfirmaCupom : Integer;

StringRecebeP : String;
IDClassRecebeP : TClasseCombo;

QtdedeSaltosPed,AvisaCupomPed,ImprimirDiretoPed,DesenhodeDivisaoPed : String;
ConfirmaCupomPed     : Integer;

////////////////////////////////

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

   Cartao,FraseRodapePed,FrasePed : String;
   NomeCliente, PosVenda : String;
   Produto : Array[0..15] of String;
   IDClassPedido,IDVendaPedido,IDClassPedidoCupom, IDVenda : Integer;

   Lpt1,Com1, NomeVenda, Baixado : String;
   F : TextFile;

   IDClienteCx : Integer;

   //VARIAVEIS PARA MODULO DE RESTAURANTE

   ConfirmaReceberR : Integer;

   IDTipoPagtoR : TClasseCombo;
   StringTipoPagtoR : String;
   VlrPagoR,SituacaoMesas : String;
   VlrDescontoR,VlrAcrescimoR, VlrTotalVendaR,VlrTrocoR : String;
   IDVendaRestaurante : Integer;

   //VARIAVEIS PARA DADOS DA EMPRESA

   NomeEmpresa,TelefoneEmpresa,EnderecoEmpresa,NumeroEndEmpresa : String;
   BairroEmpresa,CaminhoImpressora : String;

   //VARIAVEIS SAT

   intSATDaruma, ConfirmaImprSAT,ProdutoID, AtivarCalcIBPT : Integer;
   Str_Nome,Str_CPF,Str_Endereco,strNCM,strPorcNCM,strImpostoEstadual : String;
   ncmexistente : Boolean;
   Str_Aliquota,InformaNCM,strCFOP,strCST,strCSOSN,strPis,strIPI,strICMS,strCOFINS : String;
   rPIS,rIPI,rICMS,rCOFINS,intNacionalidadeProd,rTotalVlrVenda,rTotalQtde : Real;
   rVlrPorcNCM,rVlrImpostoEstadual,CalculoPorcentagem,rCalculoImpEstadual : Real;
   rTotalImposto,rTotalImpostoEstadual,rTotalGeralImposto,RVlrUnit,RVlrTotal: Real;
   rTotalGeralImpostoEstadual,RSomaaVenda,rSomaTotaldaVenda,RQtde : Real;
   strTotalVenda,strQtde,resultado,resultadoestadual,strTotalpelosprodutos : String;
   CodBarras,NomeProd,VLrUnit,VlrTotal,Qtde,str_Quantidade,str_PrecoUnit : String;
   str_TipoDescAcres,str_ValorDescAcres,str_CodigoItem,str_UnidMedida,str_Descricao : String;
   Str_Valor_do_Desconto,str_FormaPgto,str_CodCred,str_Valor,Str_Mensagem_Promocional : String;
   sTipoCupomAdic,str_CupomAdic,str_InfoAdic : String;
   intCupomSat : Integer;
   StringTPagto2, NomePagtoR2 : String;
   IDTPagto2  : TClasseCombo;
   str_FormaPgto2, str_Valor2, str_CodCred2 : String;
   intIDVendasCX, intIDVendasCX2, intVendaP, intVendaP2 : TVendasCX;
   intImprimeSimplesConf : TVendasCX;
   ConfirmaImprCupomSimples : Integer;
   //simples conf
strNomeEmpr, strEnderecoEmpr, strNumeroEmpr, strBairroEmpr, strTelefoneEmpr, Str_ParametroVenda : String;
strNomeCli, strEnderecoCli, strNumeroCli, strBairroCli, strTelefoneCli, DesenhoDivisao : String;
intContadorItem, intIDCliCupom : Integer;
strNomeProdCupom, strVlrUnitCupom, strQtdeCupom, strVlrTotalCupom, strContadorItem :  String;
TotalQtdeItens, QtdeTotalItens, Frase :  String;
QtdedeItens : Real;

begin

  with dmModule do begin

  //instanciando o obj com a classe tvendascx
  intVendaP  := TVendasCX.Create();
  intVendaP2 := TVendasCX.Create();
  intImprimeSimplesConf := TVendasCX.Create();
  
  StringTipoPagtoR := '0';

  if frmRestaurante.Showing Then begin

    ConfirmaReceberR := Application.MessageBox('Confirma o Recebimento?','Recebimento',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

    if ConfirmaReceberR = 6 Then begin

  ///    if (StringTipoPagtoR = '0') or (StringTipoPagtoR = '') Then begin

        if cboTipoPagto.ItemIndex <> - 1 Then begin

          IDTipoPagtoR  := TClasseCombo( cboTipoPagto.Items.Objects[cboTipoPagto.ItemIndex] );
          StringTipoPagtoR  := ' ''' + InttoStr( IDTipoPagtoR.ID ) + ''',';

          

        end else begin

          StringTipoPagtoR        := ' ''0'',';

        end;
////////////////////////////////////////////////////////////////////////////////

        if cboTPagto.ItemIndex = - 1 Then begin

          StringTPagto2        := ' ''0'',';

        end else begin

          IDTPagto2  := TClasseCombo( cboTPagto.Items.Objects[cboTPagto.ItemIndex] );
          StringTPagto2  := ' ''' + InttoStr( IDTPagto2.ID ) + ''',';

          NomePagtoR2 := cboTPagto.Text;
          
        end;

////////////////////////////////////////////////////////////////////////////////
   ///   end;

        VlrTotalVendaR := StringReplace(lbl_edtTotalVenda.Text,ThousandSeparator,'',[rfReplaceAll]);
        VlrTotalVendaR := StringReplace(VlrTotalVendaR,DecimalSeparator,'.',[rfReplaceAll]);
        if VlrTotalVendaR  = '' Then
            VlrTotalVendaR := '0';

        VlrDescontoR := StringReplace(lbl_edtDesconto.Text,ThousandSeparator,'',[rfReplaceAll]);
        VlrDescontoR := StringReplace(VlrDescontoR,DecimalSeparator,'.',[rfReplaceAll]);
        if VlrDescontoR  = '' Then
            VlrDescontoR := '0';

        VlrAcrescimoR := StringReplace(lbl_edtAcrescimo.Text,ThousandSeparator,'',[rfReplaceAll]);
        VlrAcrescimoR := StringReplace(VlrAcrescimoR,DecimalSeparator,'.',[rfReplaceAll]);
        if VlrAcrescimoR  = '' Then
            VlrAcrescimoR := '0';

        VlrPagoR := StringReplace(lbl_edtValor.Text,ThousandSeparator,'',[rfReplaceAll]);
        VlrPagoR := StringReplace(VlrPagoR,DecimalSeparator,'.',[rfReplaceAll]);
        if VlrPagoR  = '' Then
           VlrPagoR := '0';

        VlrTrocoR := StringReplace(lbl_edtTroco.Text,ThousandSeparator,'',[rfReplaceAll]);
        VlrTrocoR := StringReplace(VlrTrocoR,DecimalSeparator,'.',[rfReplaceAll]);
        if VlrTrocoR  = '' Then
           VlrTrocoR := '0';


      IDDetalheMR := StrToInt(frmRestaurante.lbl_edtIDDetalheMesa.Caption);


        //INSTANCIANDO A CLASSE TVENDASCX
        intIDVendasCX := TVendasCX.Create();
        intIDVendasCX.SituacaoVendaCx := 1;

        if cboTipoPagto.Text = 'PENDENTE' then begin

          intVendaP.VendaP := 1;

        end else begin

           intVendaP.VendaP := 0;

        end;
        
      try

        ibRecebeRestaurante.Close;
        ibRecebeRestaurante.SQL.Clear;
        ibRecebeRestaurante.SQL.Add('INSERT INTO TBLRECEBERESTAURANTE'
        +'(DATA,HORA,IDTIPOPAGTO,IDTIPOPAGTO2,NOMETIPOPAGTO,NOMETIPOPAGTO2,IDDETALHER,VLRDESCONTO,VLRACRESCIMO,'
        + 'VLRPAGO, SITUACAOVENDA, VENDAPENDENTE,VLRTOTALVENDA) values '
        + '(''' + FormatDateTime('mm-dd-yyyy',Now) + ''','
        + ' ''' + FormatDateTime('hh:mm:ss',Now) + ''','
        + StringTipoPagamento
        + StringTPagto2
        + ' ''' + cboTipoPagto.Text + ''','
        + ' ''' + NomePagtoR2 + ''','
        + ' ''' + IntToStr(IDDetalheMR) + ''','
        + ' ''' + VlrDescontoR + ''','
        + ' ''' + VlrAcrescimoR + ''','
        + ' ''' + VlrPagoR + ''','
        + ' ''' + IntToStr(intIDVendasCX.SituacaoVendaCx) + ''','
        + ' ''' + IntToStr(intVendaP.VendaP) + ''','
        + ' ''' + VlrTotalVendaR + ''')');
        ibRecebeRestaurante.ExecSQL;
        Commit(ibRecebeRestaurante);

      finally

        intIDVendasCX.Free;
        intVendaP.Free;
        
      end;
    /// SituacaoMesas := 'Liberadas';

      ibDetalheRestaurante.Close;
      ibDetalheRestaurante.SQL.Clear;
      ibDetalheRestaurante.SQL.Add('UPDATE TBLDETALHERESTAURANTE SET '
      + 'HORAFECH=''' + FormatDateTime('hh:mm:ss',Now) + ''' WHERE IDDETALHERESTAURANTE=''' + IntToStr(IDDetalheMR) + '''');
      ibDetalheRestaurante.ExecSQL;
      Commit(ibDetalheRestaurante); 

    end;//if confirmarecebimento

//////////////////////////**ROTINA PARA IMPRIMIR**//////////////////////////////

            Commit(ibConfig);
            ibConfig.Close;
            ibConfig.SQL.Clear;
            ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
            ibConfig.Open;

            intImprimeSimplesConf.ImprimeSimplesConf := ibConfig.FieldByName('IMPRIMESIMPLESCONF').AsInteger;
            AvisaCupomPed       := ibConfig.FieldByName('IMPRIMIRCUPOM').AsString;
            ImprimirDiretoPed   := ibConfig.FieldByName('IMPRIMIRDIRETO').AsString;
            QtdedeSaltosPed     := IntToStr(ibConfig.FieldByName('QTDESALTOS').AsInteger);
            DesenhodeDivisaoPed := ibConfig.FieldByName('DESENHODIVISAO').AsString;
            FrasePed            := ibConfig.FieldByName('FRASE').AsString;
            FraseRodapePed      := ibConfig.FieldByName('FRASERODAPE').AsString;
            Lpt1                := ibConfig.FieldByName('LPT1').AsString;
            Com1                := ibConfig.FieldByName('COM1').AsString;
            intSatDaruma        := ibConfig.FieldByName('SATDARUMA').AsInteger;
            AtivarCalcIBPT      := ibConfig.FieldByName('ATIVARCALCULOIBPT').AsInteger;
////////////////////////////////////////////////////////////////////////////////
          if (intSATDaruma = 1)and(intImprimeSimplesConf.ImprimeSimplesConf = 0)and(AvisaCupomPed = 'Nao') Then begin

            ConfirmaImprSAT := Application.MessageBox('Confirma Impress�o','SAT',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

           { if strGavDaruma = 'Sim' Then begin

              IRetorno := eAbrirGaveta_ECF_Daruma();

            end; }

            if ConfirmaImprSAT = 6 Then begin
            //  if IniciaCupomFiscalF4 = 'Nao' Then begin
                 //**ABRECUPOM SAT**
                // Str_CPF_ou_CNPJ := '';

                // Int_Retorno := iCFAbrirPadrao_ECF_Daruma();

                  Str_Nome := frmRestaurante.lbl_Cliente.Caption;
                  Str_CPF := frmRestaurante.lbl_edtCnpjCpf.Caption ;
                  Str_Endereco := '';
                  iRetorno:=  aCFAbrir_SAT_Daruma(Str_CPF, Str_Nome, Str_Endereco);
                  //Tratar_RetornoSAT(iRetorno);

            //  end;

                if frmRestaurante.lbl_edtIDDetalheMesa.Caption <>'' Then begin

                 Commit(ibRestaurante);
                 ibRestaurante.SQL.Clear;
                 ibRestaurante.SQL.Add('SELECT TBLRESTAURANTE.*,'
                 + 'CADPRODUTOS.NOME As Produto,CADPRODUTOS.CODBARRAS FROM TBLRESTAURANTE '
                 + 'INNER JOIN CADPRODUTOS ON TBLRESTAURANTE.IDPRODUTO=CADPRODUTOS.IDPROD WHERE TBLRESTAURANTE.IDDETALHER=''' + (frmRestaurante.lbl_edtIDDetalheMesa.Caption) + '''');
                 ibRestaurante.Open;

                 (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := ',0.00';
                 (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := ',0.00';
                 (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := '0';

               end;


                    while not ibRestaurante.Eof do begin

                          ProdutoID := ibRestaurante.FieldByName('IDPRODUTO').AsInteger;
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
                          InformaNCM   := ibProdutos.FieldByName('NCM').AsString;
                          strCFOP      := ibProdutos.FieldByName('CODIGO_CFOP').AsString;
                          strCST       := ibProdutos.FieldByName('CODIGO_CST').AsString;
                          strCSOSN     := ibProdutos.FieldByName('CODIGO_CSOSN').AsString;

                          rPIS         := (ibProdutos.FieldByName('PIS').AsFloat);
                          strPIS       := FormatFloat(CasasDecimais('Produtos'),rPIS);

                          rIPI         :=  (ibProdutos.FieldByName('IPI').AsFloat);
                          strIPI       := FormatFloat(CasasDecimais('Produtos'),rIPI);

                          rICMS        := (ibProdutos.FieldByName('ICMS').AsFloat);
                          strICMS      := FormatFloat(CasasDecimais('Produtos'),rICMS);

                          rCOFINS      := (ibProdutos.FieldByName('COFINS').AsFloat);
                          strCOFINS    := FormatFloat(CasasDecimais('Produtos'),rCOFINS);

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

                          rTotalVlrVenda := StrtoFloat(StringReplace(FloattoStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
                          strTotalVenda  := FormatFloat(CasasDecimais('Produtos'),rTotalVlrVenda);//StringReplace(FloatToStr(RVlrTotal),ThousandSeparator,'',[rfReplaceAll]);

                          rTotalQtde     := StrtoFloat(StringReplace(FloattoStr(ibRestaurante.FieldByName('QTDE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
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

                      RVlrUnit  := StrtoFloat(StringReplace(FloattoStr(ibRestaurante.FieldByName('VLRUNIT').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
                      VLrUnit   := FormatFloat(CasasDecimais('Combustiveis'),RVlrUnit);//StringReplace(FloatToStr(RVlrUnit),ThousandSeparator,'',[rfReplaceAll]);


                      RVlrTotal := StrtoFloat(StringReplace(FloattoStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
                      Vlrtotal  := FormatFloat(CasasDecimais('Combustiveis'),RVlrTotal);//StringReplace(FloatToStr(RVlrTotal),ThousandSeparator,'',[rfReplaceAll]);


                      RQtde     := StrtoFloat(StringReplace(FloattoStr(ibRestaurante.FieldByName('QTDE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
                      Qtde      := FormatFloat(CasasDecimais('Combustiveis'),RQtde);//StringReplace(FloatToStr(RQtde),ThousandSeparator,'',[rfReplaceAll]);


                        str_Aliquota:= Str_Aliquota;
                        str_Quantidade:= Trim(Qtde);
                        str_PrecoUnit:= (VLrUnit);
                        str_TipoDescAcres:=  'D$';
                        str_ValorDescAcres:= lbl_edtDesconto.Text;
                        str_CodigoItem:= Trim(CodBarras);
                        str_UnidMedida:= 'UN';
                        str_Descricao:= Trim(NomeProd);

                        if (strCFOP <>'')and(strCFOP <> '0')Then begin

                          iRetorno:= regAlterarValor_SAT_Daruma('PROD\CFOP',strCFOP);// -------------------> aqui lan�a o cfop;

                        end;

                        if (strCST <>'')Then begin

                          iRetorno:= regAlterarValor_SAT_Daruma('IMPOSTO\PIS\PISSN\CST',strCST);
                          //iRetorno:= regAlterarValor_SAT_Daruma('IMPOSTO\PIS\PISOUTR\CST','99');

                        end;

                        if (strCSOSN <>'')Then begin

                          iRetorno:= regAlterarValor_SAT_Daruma('IMPOSTO\ICMS\ICMSSN102\CSOSN',strCSOSN);
                          iRetorno:= regAlterarValor_SAT_Daruma('IMPOSTO\ICMS\ICMSSN102\ORIG','0');

                        end;
                                                
                        {if (strCST <>'')and(strCST <> '0')Then begin

                            if (strCST = '000')or(strCST = '00')Then begin

                              iRetorno:= aCFConfImposto_SAT_Daruma('IMPOSTO\ICMS\ICMS00\Orig\CST',strCST);//('IMPOSTO\ICMS\ICMS00\CST',strCST);

                            end else begin


                              iRetorno:= aCFConfImposto_SAT_Daruma('IMPOSTO\ICMS40\Orig\CST',strCST);//('IMPOSTO\ICMS\ICMS00\CST',strCST);

                            end;
                            
                        end;

                        if (strCSOSN <>'')and(strCSOSN <> '0')Then begin
                        
                          iRetorno:= regAlterarValor_SAT_Daruma('PROD\CFOP',strCSOSN);// -------------------> aqui lan�a o cfop;

                        end;}

                        iRetorno:= aCFVender_SAT_Daruma(str_Aliquota, str_Quantidade , str_PrecoUnit , str_TipoDescAcres , str_ValorDescAcres , str_CodigoItem, str_UnidMedida, str_Descricao);
                       // Tratar_RetornoSAT(iRetorno);

                      ibRestaurante.Next;

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

                   { if (cboTipoPagto.Text <> '')and(cboTPagto.Text = '')Then begin

                      str_FormaPgto:= cboTipoPagto.Text;
                      str_Valor:= lbl_edtValor.Text;
                      str_CodCred:= '';
                      iRetorno:= aCFEfetuarPagamento_SAT_Daruma(str_FormaPgto, str_Valor, str_CodCred);
                     // Tratar_RetornoSAT(iRetorno);

                    end; }

                    if (cboTipoPagto.Text <> '')and(cboTPagto.Text = '')Then begin

                      str_FormaPgto:= cboTipoPagto.Text;
                      str_Valor:= lbl_edtValor.Text;
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

                   // sTipoCupomAdic := '0';
                                    /// iCFEncerrar_ECF_Daruma
                   // Int_Retorno := tCFEncerrar_SAT_Daruma(sTipoCupomAdic,Str_Mensagem_Promocional);

                    str_CupomAdic:= '';
                    str_InfoAdic:= Str_Mensagem_Promocional;
                    iRetorno := tCFEncerrar_SAT_Daruma(str_CupomAdic,str_InfoAdic);
                                
                    Tratar_RetornoSAT(iRetorno);

                    if iRetorno = 1 Then begin

                      intCupomSat := 1;

                      ibRestaurante.Close;
                      ibRestaurante.SQL.Clear;
                      ibRestaurante.SQL.Add('UPDATE TBLRESTAURANTE SET '
                      + 'CUPOMSAT = ''' + IntToStr(intCupomSat) + ''' WHERE IDDETALHER=''' + frmRestaurante.lbl_edtIDDetalheMesa.Caption + '''');
                      ibRestaurante.ExecSQL;
                      Commit(ibRestaurante);

                    end;
                //imprimir cupom sat
             {
                str_Path:= StringOfChar(#0,900);
                str_Tipo:= StringOfChar(#0,2);

                str_Path:= CaminhoXMLDarumaSAT;
                str_Tipo:= IntToStr(CB_Tipo.ItemIndex+1);
                iRetorno:= iImprimirCFe_SAT_Daruma(str_Path, str_Tipo);
                Tratar_RetornoSAT(iRetorno);
                                              }
            end;//ifconfirmaimpressao

          end;

//****************************************************************************//


          if (AvisaCupomPed = 'Sim')and(intImprimeSimplesConf.ImprimeSimplesConf = 0) Then begin


            ConfirmaCupomPed := Application.MessageBox('Deseja imprimir a Venda','Notifica��o:Impress�o de Cupom',+MB_YESNO+MB_ICONQUESTION);


          if ImprimirDiretoPed= 'Sim' Then begin

            if ConfirmaCupomPed = 6 Then begin

              Commit(ibDadosEmpresa);
              ibDadosEmpresa.Close;
              ibDadosEmpresa.SQL.Clear;
              ibDadosEmpresa.SQL.Add('SELECT * FROM TBLDADOSEMPRESA');
              ibDadosEmpresa.Open;

              Commit(ibConfig);
              ibConfig.Close;
              ibConfig.SQL.Clear;
              ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
              ibConfig.Open;

              if ibConfig.FieldByName('CAMINHOIMPRESSORA').AsString <> '' Then begin

                CaminhoImpressora := ibConfig.FieldByName('CAMINHOIMPRESSORA').AsString;

              end;

              DataConvertida := FormatDateTime('DD/MM/YYYY',Now);
              Hora           := FormatDateTime('hh:mm:ss',Now);

////////////////////////////////////////////////////////////////////////////////

              Commit(ibRestaurante);
              ibRestaurante.Close;
              ibRestaurante.SQL.Clear;
              ibRestaurante.SQL.Add('SELECT TBLRESTAURANTE.*,'
              + 'CADPRODUTOS.NOME As Produto,CADPRODUTOS.CODBARRAS FROM TBLRESTAURANTE '
              + 'INNER JOIN CADPRODUTOS ON TBLRESTAURANTE.IDPRODUTO=CADPRODUTOS.IDPROD WHERE TBLRESTAURANTE.IDDETALHER=''' + (frmRestaurante.lbl_edtIDDetalheMesa.Caption) + '''');
              ibRestaurante.Open;

             (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := ',0.00';
             (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := ',0.00';
             (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := '0';

////////////////////////////////////////////////////////////////////////////////

            if (frmRestaurante.lbl_IDCli.Caption <> '')and (frmRestaurante.lbl_Cliente.Caption <> '')Then begin


              ibClassificacao.Close;
              ibClassificacao.SQL.Clear;
              ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
              ibClassificacao.Open;
              IDClassPedido := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICA��O DO FORNECEDOR NA VARIAVEL.


              Commit(ibTempCadastro);
              ibTempCadastro.Close;
              ibTempCadastro.SQL.Clear;
              ibTempCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLLOGRADOURO.BAIRRO,'
              + 'TBLLOGRADOURO.ENDERECO FROM TBLCADASTRO '
              + 'LEFT OUTER JOIN TBLLOGRADOURO ON TBLCADASTRO.IDCAD = TBLLOGRADOURO.IDCAD '
              + 'WHERE TBLCADASTRO.IDCLASS=''' + InttoStr(IDClassPedido) + '''and TBLCADASTRO.IDCAD=''' + frmRestaurante.lbl_IDCli.Caption + '''');
              ibTempCadastro.Open;

            end;

           ibDadosEmpresa.Close;
           ibDadosEmpresa.SQL.Clear;
           ibDadosEmpresa.SQL.Add('SELECT * FROM TBLDADOSEMPRESA');
           ibDadosEmpresa.Open;

           if ibDadosEmpresa.RecordCount > 0 Then begin

             NomeEmpresa := ibDadosEmpresa.FieldByName('NOME').AsString;
             EnderecoEmpresa := ibDadosEmpresa.FieldByName('ENDERECO').AsString;
             NumeroEndEmpresa := ibDadosEmpresa.FieldByName('NUMERO').AsString;
             TelefoneEmpresa := ibDadosEmpresa.FieldByName('TELEFONE').AsString;
             BairroEmpresa := ibDadosEmpresa.FieldByName('BAIRRO').AsString;

           end;//if

////////////////////////////////////////////////////////////////////////////////

          if Lpt1 = 'Sim' Then begin


                  AssignPrn(F);
                  Rewrite(F);
                  i := 0;

            Writeln(F,(ibDadosEmpresa.FieldByName('NOME').AsString));

            if (ibDadosEmpresa.FieldByName('ENDERECO').AsString <> '')and(ibDadosEmpresa.FieldByName('NUMERO').AsString <> '') Then begin

            Writeln(F,(ibDadosEmpresa.FieldByName('ENDERECO').AsString)+','+(ibDadosEmpresa.FieldByName('NUMERO').AsString));

            end;

            if ibDadosEmpresa.FieldByName('BAIRRO').AsString <> '' Then begin
            Writeln(F,(ibDadosEmpresa.FieldByName('BAIRRO').AsString));
            end;

            if (ibDadosEmpresa.FieldByName('TELEFONE').AsString <> '')Then begin
            Writeln(F,('Fone:'+ibDadosEmpresa.FieldByName('TELEFONE').AsString));
            end;
              Writeln(F,(DesenhodeDivisaoPed));
              Writeln(F,('Mesa(s)N�.:'+frmRestaurante.lbl_edtNMesa.Text+ ''));
              Writeln(F,('Data:'+DataConvertida+ ' Hora:'+Hora+''));
              Writeln(F,(DesenhodeDivisaoPed));
              //Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sp>1</sp>'+(frmCliente.listboxCupom.Items).Text+ ''),0);
              if ibTempCadastro.recordcount > 0 Then begin

                Writeln(F,('Cliente:'+(ibTempCadastro.FieldByName('NOME').AsString)));
                if ibTempCadastro.FieldByName('TELEFONE').AsString <> '' then begin
                Writeln(F,('Telefone: '+ibTempCadastro.FieldByName('TELEFONE').AsString));
                end;
                if ibTempCadastro.FieldByName('CELULAR').AsString <> '' Then begin
                Writeln(F,('Celular : '+ibTempCadastro.FieldByName('CELULAR').AsString));
                end;
                Writeln(F,('Endere�o: '+ibTempCadastro.FieldByName('ENDERECO').AsString)+'  ,'+(ibTempCadastro.FieldByName('NUMERO').AsString));
                if ibTempCadastro.FieldByName('COMPL').AsString <> '' Then begin
                Writeln(F,('Compl.: '+ibTempCadastro.FieldByName('COMPL').AsString));
                end;
                Writeln(F,('Bairro: '+ibTempCadastro.FieldByName('BAIRRO').AsString));
                if ibTempCadastro.FieldByName('BAIRRO').AsString <> '' Then begin
                Writeln(F,('** '+ibTempCadastro.FieldByName('BAIRRO').AsString+' **'));
                end;
             Writeln(F,(DesenhodeDivisaoPed));
             end;

             


              while not ibRestaurante.Eof do begin

              Writeln(F,(ibRestaurante.FieldByName('Produto').AsString));
              if ibRestaurante.FieldByName('OBS').AsString <> '' Then begin
              Writeln(F,(ibRestaurante.FieldByName('OBS').AsString),0);
              end;
              Writeln(F,(FormatFloat('0',ibRestaurante.FieldByName('QTDE').AsFloat))+' X '+(FormatFloat(CasasDecimais('Produtos'),ibRestaurante.FieldByName('VLRUNIT').AsFloat))+' = '+(FormatFloat(CasasDecimais('Produtos'),ibRestaurante.FieldByName('VLRTOTAL').AsFloat)));
              //+''+'X'+''+(FormatFloat(CasasDecimais('Produtos'),FloatToStr(ibServsVenda.FieldByName('VLRUNIT').AsFloat)))+''+'='+''+(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat))
              ibRestaurante.Next;

              end;//while
////////////////////////////////////////////////////////////////////////////////

          if FraseRodapePed = 'Sim'Then begin

            if (cboTipoPagto.Text = 'PENDENTE') Then begin

              Produto[0]:=frmCliente.lbl_edtTotalPedido.Text;
              Produto[1]:=cboTipoPagto.Text;
              Produto[2]:=lbl_edtValor.Text;
              Produto[3]:=lbl_edtTotalVenda.Text;
              Produto[4]:=lbl_edtTroco.Text;
              Produto[6]:=lbl_edtValor.Text;
              Produto[7]:=lbl_Informacao.Caption;
              Produto[8]:=lbl_edtAcrescimo.Text;

              Writeln(F,(DesenhodeDivisaoPed));
              Writeln(F,('     **** VENDA PENDENTE ****'));
              Writeln(F,('TOTAL DA VENDA..:(R$)' + ' ' + '=' + ' ' +  frmCliente.lbl_edtTotalPedido.Text));
              if lbl_edtAcrescimo.Text > '0,00' Then begin
              Writeln(F,('TAXA..:(R$)' + ' ' + '=' + ' ' +  Produto[8]));
              end;
              Writeln(F,('VLR.PAGO..:(R$)' + ' ' + '=' + ' ' +Produto[6]));

              if lbl_edtValor.Text = '0,00'Then begin
              Writeln(F,(Produto[1] + ' ' + '=' + ' ' + Produto[3]));
              end;

              if lbl_edtValor.Text > '0,00'Then begin
              Writeln(F,(Produto[7]));
              end;                                        

              Writeln(F,(DesenhodeDivisaoPed));
              if ibConfig.FieldByName('FRASE').AsString <> '' Then begin
              Writeln(F,(FrasePed),0);
              end;
              Writeln(F,(''));
              Writeln(F,(''));
              Writeln(F,(''));
              Writeln(F,(''));
              Writeln(F,(''));

             // CloseFile(F);
              
            end;//cbo tipopagto = pendente


            if cboTipoPagto.Text <> 'PENDENTE' Then begin

              if (lbl_edtDesconto.Text = '')or (lbl_edtDesconto.Text = '0,00')and(lbl_edtAcrescimo.Text = '0,00') Then begin

                Produto[0]:=frmCliente.lbl_edtTotalPedido.Text;
                Produto[1]:=cboTipoPagto.Text;
                Produto[2]:=lbl_edtValor.Text;
                Produto[3]:=lbl_edtTotalVenda.Text;
                Produto[4]:=lbl_edtTroco.Text;
                Produto[6]:=lbl_edtValor.Text;

                Writeln(F,(DesenhodeDivisaoPed));
                Writeln(F,('TOTAL DO PEDIDO..:(R$)' + ' ' + '=' + ' ' +  Produto[3]));
                Writeln(F,(Produto[1] + ' ' + '=' + ' ' + Produto[2]));
                Writeln(F,('VLR.PAGO..:(R$)' + ' ' + '=' + ' ' +Produto[6]));
                Writeln(F,('TROCO' + ' ' + '=' + ' ' +Produto[4]));
                Writeln(F,(DesenhodeDivisaoPed));
                Writeln(F,(FrasePed));

              end else if lbl_edtDesconto.Text > '0,00' Then begin

                Produto[0]:=frmCliente.lbl_edtTotalPedido.Text;
                Produto[1]:=cboTipoPagto.Text;
                Produto[2]:=lbl_edtValor.Text;
                Produto[3]:=lbl_edtTotalVenda.Text;
                Produto[4]:=lbl_edtTroco.Text;
                Produto[5]:=lbl_edtDesconto.Text;
                Produto[6]:=lbl_edtValor.Text;
                Produto[7]:=lbl_edtAcrescimo.Text;

                if lbl_edtValor.Text > '0,00' Then begin

                Writeln(F,(DesenhodeDivisaoPed));
                Writeln(F,('TOTAL DO PEDIDO..:(R$)' + ' ' + '=' + ' ' +  Produto[0]));
                if lbl_edtAcrescimo.Text > '0,00' Then begin
                Writeln(F,('TAXA' + ' ' + '=' + ' ' +  Produto[7]));
                end;
                Writeln(F,('DESCONTO' + ' ' + '=' + ' ' +  Produto[5]));
                Writeln(F,('TOTAL A PAGAR COM DESCONTO' + ' ' + '=' + ' ' +  Produto[3]));
                Writeln(F,(Produto[1] + ' ' + '=' + ' ' + Produto[2]));
                Writeln(F,('TROCO' + ' ' + '=' + ' ' +Produto[4]));
                Writeln(F,(DesenhodeDivisaoPed));
                Writeln(F,(FrasePed));

                end else begin

                Writeln(F,(DesenhodeDivisaoPed));
                Writeln(F,('TOTAL DO PEDIDO..:(R$)' + ' ' + '=' + ' ' +  Produto[0]));
                Writeln(F,('DESCONTO' + ' ' + '=' + ' ' +  Produto[5]));
                Writeln(F,('TOTAL A PAGAR COM DESCONTO' + ' ' + '=' + ' ' +  Produto[3]));
                Writeln(F,(Produto[1] + ' ' + '=' + ' ' + Produto[3]));
                Writeln(F,('TROCO' + ' ' + '=' + ' ' +Produto[4]));
                Writeln(F,(DesenhodeDivisaoPed));
                Writeln(F,(FrasePed));

                end;

              end;//if campo desconto

              end;
  ////////////////////////////////////////////////////////////////////////////////

              if (lbl_edtAcrescimo.Text > '0,00')and(lbl_edtDesconto.Text = '0,00') Then begin

                Produto[0]:=frmCliente.lbl_edtTotalPedido.Text;
                Produto[1]:=cboTipoPagto.Text;
                Produto[2]:=lbl_edtValor.Text;
                Produto[3]:=lbl_edtTotalVenda.Text;
                Produto[4]:=lbl_edtTroco.Text;
                Produto[5]:=lbl_edtAcrescimo.Text;
                Produto[6]:=lbl_edtValor.Text;

                if lbl_edtValor.Text > '0,00' Then begin

                  Writeln(F,(DesenhodeDivisaoPed));
                  Writeln(F,('TOTAL DO PEDIDO..:(R$)' + ' ' + '=' + ' ' +  Produto[0]));
                  Writeln(F,('TAXA' + ' ' + '=' + ' ' +  Produto[5]));
                  Writeln(F,('TOTAL A PAGAR COM TAXA' + ' ' + '=' + ' ' +  Produto[3]));
                  Writeln(F,(Produto[1] + ' ' + '=' + ' ' + Produto[2]));
                  Writeln(F,('TROCO' + ' ' + '=' + ' ' +Produto[4]));
                  Writeln(F,(DesenhodeDivisaoPed));
                  Writeln(F,(FrasePed));


                end else begin

                  Writeln(F,(DesenhodeDivisaoPed));
                  Writeln(F,('TOTAL DO PEDIDO..:(R$)' + ' ' + '=' + ' ' +  Produto[0]));
                  Writeln(F,('TAXA' + ' ' + '=' + ' ' +  Produto[5]));
                  Writeln(F,('TOTAL A PAGAR COM TAXA' + ' ' + '=' + ' ' +  Produto[3]));
                  Writeln(F,(Produto[1] + ' ' + '=' + ' ' + Produto[3]));
                  Writeln(F,('TROCO' + ' ' + '=' + ' ' +Produto[4]));
                  Writeln(F,(DesenhodeDivisaoPed));
                  Writeln(F,(FrasePed));

                end;

              Writeln(F,(''));
              Writeln(F,(''));
              Writeln(F,(''));
              Writeln(F,(''));
              Writeln(F,(''));

             // CloseFile(F);

              end;//if campo acrescimo

            end;//if cbotipopagto<> pendente

          end;//if frase rodape = sim

              Writeln(F,(''));
              Writeln(F,(''));
              Writeln(F,(''));
              Writeln(F,(''));
              Writeln(F,(''));

              CloseFile(F);
            
            end;//if confirmacupom

     //     end;//if lpt1=sim

            //  Writeln(F,(''));
            //  Writeln(F,(''));
           //   Writeln(F,(''));
           //   Writeln(F,(''));
           //   Writeln(F,(''));
            //  CloseFile(F);



          end;//if imprimirdiretosim

        end;

////////////////////////////////////////////////////////////////////////////////

            if intImprimeSimplesConf.ImprimeSimplesConf = 1 Then begin

            ConfirmaImprCupomSimples := Application.MessageBox('Imprimir Cupom Simples Conferencia?','Cupom para Simples Conferencia', +MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1);

            if ConfirmaImprCupomSimples = 6 Then begin

              Commit(ibConfig);
              ibConfig.Close;
              ibConfig.SQL.Clear;
              ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
              ibConfig.Open;

              DesenhoDivisao   := ibConfig.FieldByName('DESENHODIVISAO').AsString;
              Frase        := ibConfig.FieldByName('FRASE').AsString;
              {QtdedeSaltos := IntToStr(ibConfig.FieldByName('QTDESALTOS').AsInteger);
              FraseRodape  := ibConfig.FieldByName('FRASERODAPE').AsString;}
              

              DataConvertida := FormatDateTime('DD/MM/YYYY',Now);
              Hora           := FormatDateTime('hh:mm:ss',Now);

              {Commit(ibTempVendaLoja);
              ibTempVendaLoja.Close;
              ibTempVendaLoja.SQL.Clear;
              ibTempVendaLoja.SQL.Add('SELECT TBLSERVICOSVENDAS.*,'
              + 'CADPRODUTOS.NOME As Produto,CADPRODUTOS.CODBARRAS FROM TBLSERVICOSVENDAS '
              + 'INNER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD WHERE IDSERVSVENDA=''' + (frmVendasLoja.lbl_CodVenda.Caption) + '''');
              ibTempVendaLoja.Open; }

              Commit(ibRestaurante);
              ibRestaurante.Close;
              ibRestaurante.SQL.Clear;
              ibRestaurante.SQL.Add('SELECT TBLRESTAURANTE.*,'
              + 'CADPRODUTOS.NOME As Produto,CADPRODUTOS.CODBARRAS FROM TBLRESTAURANTE '
              + 'INNER JOIN CADPRODUTOS ON TBLRESTAURANTE.IDPRODUTO=CADPRODUTOS.IDPROD WHERE TBLRESTAURANTE.IDDETALHER=''' + (frmRestaurante.lbl_edtIDDetalheMesa.Caption) + '''');
              ibRestaurante.Open;

              intIDCliCupom := ibRestaurante.FieldByName('IDCLIENTE').AsInteger;
              
             (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := ',0.00';
             (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := ',0.00';
             (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := '0';




               // CaminhodeRede := '';
              //  CaminhodeRede := ('\\CRISTIANO-PC\GenericT');

             //   AssignFile(F,'LPT1'); ///CaminhoRede
              //  AssignPrn(F);
              //  Rewrite(F);
             //   i := 0;
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

                  if ibDadosEmpresa.FieldByName('ENDERECO').AsString <> '' Then begin

                    Str_ParametroVenda:= Str_ParametroVenda+ strEnderecoEmpr+' , '+strNumeroEmpr+'<l></l>';
                  //(ibDadosEmpresa.FieldByName('ENDERECO').AsString)+'    ,'+(ibDadosEmpresa.FieldByName('NUMERO').AsString)+'<l></l>'+//,0);

                  end;

                  if ibDadosEmpresa.FieldByName('BAIRRO').AsString <> '' Then begin //begin

                     Str_ParametroVenda:= Str_ParametroVenda+ strBairroEmpr+'<l></l>';
                    //(ibDadosEmpresa.FieldByName('BAIRRO').AsString)+'<l></l>'+//,0);

                  end;

                  if ibDadosEmpresa.FieldByName('TELEFONE').AsString <> '' Then begin //begin

                    Str_ParametroVenda := Str_ParametroVenda+ strTelefoneEmpr+'<l></l>';
                   // ('Fone: '+ibDadosEmpresa.FieldByName('TELEFONE').AsString)+'<l></l>'+//,0);
                  end;

                //Writeln(F,(DesenhoDivisao));

              { if frmVendasLoja.lbl_Funcionario.Text <> '' Then begin
                Writeln(F,('Funcion�rio:<sp>1</sp>'+ frmVendasLoja.lbl_Funcionario.Text + ''));
                end;  }

                Str_ParametroVenda := Str_ParametroVenda+('Cupom: '+(frmRestaurante.lbl_edtIDDetalheMesa.Caption)+'<l></l>');//,0);
                Str_ParametroVenda := Str_ParametroVenda+('Data:'+DataConvertida+' '+'Hora:'+Hora)+'<l></l>';//,0);
                Str_ParametroVenda := Str_ParametroVenda+('**Cupom nao Fiscal para simples conferencia**')+'<l></l>';//,0);
                Str_ParametroVenda := Str_ParametroVenda+(DesenhoDivisao)+'<l></l>';//,0);

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

                  Str_ParametroVenda:= '<ce>'+strNomeCli+'</ce><l></l>';

                  if ibCadastro.FieldByName('ENDERECO').AsString <> '' Then begin

                    Str_ParametroVenda:= Str_ParametroVenda+ strEnderecoCli+' , '+strNumeroCli+'<l></l>';
                  //(ibDadosEmpresa.FieldByName('ENDERECO').AsString)+'    ,'+(ibDadosEmpresa.FieldByName('NUMERO').AsString)+'<l></l>'+//,0);

                  end;

                  if ibCadastro.FieldByName('BAIRRO').AsString <> '' Then begin //begin

                     Str_ParametroVenda:= Str_ParametroVenda+ strBairroCli+'<l></l>';
                    //(ibDadosEmpresa.FieldByName('BAIRRO').AsString)+'<l></l>'+//,0);

                  end;

                  if ibCadastro.FieldByName('TELEFONE').AsString <> '' Then begin //begin

                    Str_ParametroVenda := Str_ParametroVenda+ strTelefoneCli+'<l></l>';
                   // ('Fone: '+ibDadosEmpresa.FieldByName('TELEFONE').AsString)+'<l></l>'+//,0);
                  end;

                end;//idclicupom
////////////////////////////////////////////////////////////////////////////////
                intContadorItem := 1;
                while not ibRestaurante.Eof do begin

                  if intContadorItem = 1 Then begin

                    strContadorItem := '00'+ IntToStr(intContadorItem);

                  end else begin

                    strContadorItem := '00'+ IntToStr(intContadorItem);

                  end;

                  strNomeProdCupom := ibRestaurante.FieldByName('Produto').AsString;
                  strVlrUnitCupom  := FormatFloat(CasasDecimais('Produtos'),ibRestaurante.FieldByName('VLRUNIT').AsFloat);
                  strQtdeCupom     := FormatFloat(CasasDecimais('Produtos'),ibRestaurante.FieldByName('QTDE').AsFloat);
                  strVlrTotalCupom := FormatFloat(CasasDecimais('Produtos'),ibRestaurante.FieldByName('VLRTOTAL').AsFloat);


                 Str_ParametroVenda := Str_ParametroVenda+(strContadorItem+' '+strNomeProdCupom)+'<l></l>';//,0);
                 Str_ParametroVenda := Str_ParametroVenda+(strQtdeCupom+' X '+strVlrUnitCupom+' = '+strVlrTotalCupom)+'<l></l>';//,0);
                 //(FloatToStr(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('QTDE').AsFloat)))+' X '+(FloatToStr(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRUNIT').AsFloat)))+' = '+(FloatToStr(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat)))+'<l></l>';//,0);
                //  Writeln(F,(strContadorItem+' '+ibTempVendaLoja.FieldByName('NOMEPROD').AsString)+'...R$ '+(FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat)));
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

                      QtdedeItens := StrToFloat(StringReplace(FloatToStr(ibRestaurante.FieldByName('QTDE').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

                    end else begin

                      TotalQtdeItens := StringReplace(FloatToStr(ibRestaurante.FieldByName('QTDE').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

                      QtdedeItens := QtdedeItens + StrtoFloat(StringReplace(TotalQtdeItens,ThousandSeparator,'',[rfReplaceAll]));

                    end;//if

                    intContadorItem :=  intContadorItem+1;

                ibRestaurante.Next;

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

                Produto[0]:=frmRestaurante.lbl_ValorTotal.Caption;
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
              //  Writeln(F,('VLR.PAGO..:(R$)' + ' ' + '=' + ' ' +Produto[6]));
                Str_ParametroVenda := Str_ParametroVenda+('VLR.PAGO..:(R$)' + ' ' + '=' + ' ' +Produto[6])+'<l></l>';//,0);

                if lbl_edtValor.Text = '0,00'Then begin
               // Writeln(F,(Produto[1] + ' ' + '=' + ' ' + Produto[3]));
                Str_ParametroVenda := Str_ParametroVenda+(Produto[1] + ' ' + '=' + ' ' + Produto[3])+'<l></l>';//,0);
                end;

                if lbl_edtValor.Text > '0,00'Then begin
               // Writeln(F,(Produto[1] + ' ' + '=' + ' ' + Produto[4]));
                Str_ParametroVenda := Str_ParametroVenda+(Produto[1] + ' ' + '=' + ' ' + Produto[4])+'<l></l>';//,0);
                end;

                //Writeln(F,(DesenhoDivisao));
                Str_ParametroVenda := Str_ParametroVenda+(DesenhoDivisao)+'<l></l>';//,0);
               ///Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sl>'+QtdedeSaltos+'</sl>'), 0);
              end;

              if (cboTipoPagto.Text <> 'PENDENTE') Then begin

                if (lbl_edtDesconto.Text = '')or (lbl_edtDesconto.Text = '0,00')and(lbl_edtAcrescimo.Text = '0,00')then begin

                  Produto[0]:=frmRestaurante.lbl_ValorTotal.Caption;
                  Produto[1]:=cboTipoPagto.Text;
                  Produto[2]:=lbl_edtValor.Text;
                  Produto[3]:=lbl_edtTotalVenda.Text;
                  Produto[4]:=lbl_edtTroco.Text;
                  Produto[6]:=lbl_edtValor.Text;

                //  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
                  //Writeln(F,('TOTAL..:(R$)' + ' ' + '=' + ' ' +  Produto[3]));
                  Str_ParametroVenda := Str_ParametroVenda+('TOTAL..:(R$)' + ' ' + '=' + ' ' +  Produto[3])+'<l></l>';//,0);

                 // Writeln(F,('VLR.PAGO: '+Produto[1] + ' ' + '=' + ' ' + Produto[2]));
                  Str_ParametroVenda := Str_ParametroVenda+('VLR.PAGO..:(R$)'+Produto[1]+ ' ' + '=' + ' ' +Produto[6])+'<l></l>';//,0);

                //  Writeln(F,('TROCO' + ' ' + '=' + ' ' +Produto[4]));
                  Str_ParametroVenda := Str_ParametroVenda+('TROCO' + ' ' + '=' + ' ' +Produto[4])+'<l></l>';//,0);

                //  Writeln(F,(DesenhoDivisao));
                  Str_ParametroVenda := Str_ParametroVenda+(DesenhoDivisao)+'<l></l>';//,0);
                  ///Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sl>'+QtdedeSaltos+'</sl>'), 0);

                end;
              end;

              if (lbl_edtDesconto.Text > '0,00')and(lbl_edtAcrescimo.Text = '0,00')and(cboTipoPagto.Text <> 'PENDENTE') Then begin

                Produto[0]:=frmRestaurante.lbl_ValorTotal.Caption;
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
                //Writeln(F,('TOTAL..:(R$)' + ' ' + '=' + ' ' +  Produto[0]));
                Str_ParametroVenda := Str_ParametroVenda+('TOTAL..:(R$)' + ' ' + '=' + ' ' +  Produto[0])+'<l></l>';//,0);

               // Writeln(F,('DESCONTO' + ' ' + '=' + ' ' +  Produto[5]));
                Str_ParametroVenda := Str_ParametroVenda+('DESCONTO' + ' ' + '=' + ' ' +  Produto[5])+'<l></l>';//,0);

               // Writeln(F,('VLR.A PAGAR COM DESCONTO' + ' ' + '=' + ' ' +  Produto[3]));
                Str_ParametroVenda := Str_ParametroVenda+('VLR.A PAGAR COM DESCONTO' + ' ' + '=' + ' ' +  Produto[3])+'<l></l>';//,0);

                //Writeln(F,(Produto[1] + ' ' + '=' + ' ' + Produto[2]));
                Str_ParametroVenda := Str_ParametroVenda+(Produto[1] + ' ' + '=' + ' ' + Produto[2])+'<l></l>';//,0);

                //Writeln(F,('TROCO' + ' ' + '=' + ' ' +Produto[4]));
                Str_ParametroVenda := Str_ParametroVenda+('TROCO' + ' ' + '=' + ' ' +Produto[4])+'<l></l>';//,0);

                //Writeln(F,(DesenhoDivisao));
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
              end;

              intImprimeSimplesConf.Free;
              
            end; //if imprimir cupom simples conferencia

////////////////////////////////////////////////////////////////////////////////


    /// ExecSELECTSituacaoMesas;

      frmRestaurante.lbl_edtNMesa.Clear;
      frmRestaurante.lbl_Informacao.Caption := '';
     /// frmRestaurante.lbl_InformacaoABMesa.Caption := '';
      frmRestaurante.lbl_AbMesa.Caption := '';

      frmRestaurante.lbl_edtRef.Clear;
      frmRestaurante.lbl_edtCodBarras.Clear;
     /// frmRestaurante.cboProdutos.ClearSelection;
      frmRestaurante.lbl_edtQtde.Text := '1';
      frmRestaurante.lbl_edtVlrUnit.Clear;
      frmRestaurante.lbl_edtVlrTotal.Clear;
      frmRestaurante.lbl_IDCli.Caption := '';
      frmRestaurante.lbl_Cliente.Caption := '';
      frmRestaurante.lbl_ValorTotal.Caption := '0,00';

////////////////////////////////////////////////////////////////////////////////

    Commit(ibControleMesas);
    ibControleMesas.Close;
    ibControleMesas.SQL.Clear;
    ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheMR) + '''');
    ibControleMesas.Open;                                                                                                                                     ///  =''' + frmRestaurante.lbl_edtIDDetalheMesa.Text + '''

    if ibControleMesas.RecordCount > 0 Then begin

      while not ibControleMesas.Eof do begin

    Commit(ibControleMesas);
    ibControleMesas.Close;
    ibControleMesas.SQL.Clear;
    ibControleMesas.SQL.Add('SELECT * FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheMR) + '''');
    ibControleMesas.Open;      

        if ibControleMesas.FieldByName('M1').AsString = 'Sim' Then begin

          frmRestaurante.ckMesa1.Checked := False;
          frmRestaurante.ckMesa1.Font.Color := clBlack;
          frmRestaurante.ckMesa1.Caption := 'Livre';

      {  end else begin

          frmRestaurante.ckMesa1.Checked := False;
          frmRestaurante.ckMesa1.Font.Color := clBlack;
          frmRestaurante.ckMesa1.Caption := 'Livre';  }

        end;

        if ibControleMesas.FieldByName('M2').AsString = 'Sim' Then begin

          frmRestaurante.ckMesa2.Checked := False;
          frmRestaurante.ckMesa2.Font.Color := clBlack;
          frmRestaurante.ckMesa2.Caption := 'Livre';

       { end else begin

          frmRestaurante.ckMesa2.Checked := False;
          frmRestaurante.ckMesa2.Font.Color := clBlack;
          frmRestaurante.ckMesa2.Caption := 'Livre'; }

        end;

        if ibControleMesas.FieldByName('M3').AsString = 'Sim' Then begin

          frmRestaurante.ckMesa3.Checked := False;
          frmRestaurante.ckMesa3.Font.Color := clBlack;
          frmRestaurante.ckMesa3.Caption := 'Livre';

       { end else begin

          frmRestaurante.ckMesa3.Checked := False;
          frmRestaurante.ckMesa3.Font.Color := clBlack;
          frmRestaurante.ckMesa3.Caption := 'Livre'; }

        end;

        if ibControleMesas.FieldByName('M4').AsString = 'Sim' Then begin

          frmRestaurante.ckMesa4.Checked := False;
          frmRestaurante.ckMesa4.Font.Color := clBlack;
          frmRestaurante.ckMesa4.Caption := 'Livre';

      {  end else begin

          frmRestaurante.ckMesa4.Checked := False;
          frmRestaurante.ckMesa4.Font.Color := clBlack;
          frmRestaurante.ckMesa4.Caption := 'Livre';}

        end;

        if ibControleMesas.FieldByName('M5').AsString = 'Sim' Then begin

          frmRestaurante.ckMesa5.Checked := False;
          frmRestaurante.ckMesa5.Font.Color := clBlack;
          frmRestaurante.ckMesa5.Caption := 'Livre';

       { end else begin

          frmRestaurante.ckMesa5.Checked := False;
          frmRestaurante.ckMesa5.Font.Color := clBlack;
          frmRestaurante.ckMesa5.Caption := 'Livre';}

        end;

        if ibControleMesas.FieldByName('M6').AsString = 'Sim' Then begin

          frmRestaurante.ckMesa6.Checked := False;
          frmRestaurante.ckMesa6.Font.Color := clBlack;
          frmRestaurante.ckMesa6.Caption := 'Livre';

      {  end else begin

          frmRestaurante.ckMesa1.Checked := False;
          frmRestaurante.ckMesa1.Font.Color := clBlack;
          frmRestaurante.ckMesa1.Caption := 'Livre';  }

        end;

        if ibControleMesas.FieldByName('M7').AsString = 'Sim' Then begin

          frmRestaurante.ckMesa7.Checked := False;
          frmRestaurante.ckMesa7.Font.Color := clBlack;
          frmRestaurante.ckMesa7.Caption := 'Livre';

       { end else begin

          frmRestaurante.ckMesa2.Checked := False;
          frmRestaurante.ckMesa2.Font.Color := clBlack;
          frmRestaurante.ckMesa2.Caption := 'Livre'; }

        end;

        if ibControleMesas.FieldByName('M8').AsString = 'Sim' Then begin

          frmRestaurante.ckMesa8.Checked := False;
          frmRestaurante.ckMesa8.Font.Color := clBlack;
          frmRestaurante.ckMesa8.Caption := 'Livre';

       { end else begin

          frmRestaurante.ckMesa3.Checked := False;
          frmRestaurante.ckMesa3.Font.Color := clBlack;
          frmRestaurante.ckMesa3.Caption := 'Livre'; }

        end;

        if ibControleMesas.FieldByName('M9').AsString = 'Sim' Then begin

          frmRestaurante.ckMesa9.Checked := False;
          frmRestaurante.ckMesa9.Font.Color := clBlack;
          frmRestaurante.ckMesa9.Caption := 'Livre';

      {  end else begin

          frmRestaurante.ckMesa4.Checked := False;
          frmRestaurante.ckMesa4.Font.Color := clBlack;
          frmRestaurante.ckMesa4.Caption := 'Livre';}

        end;

        if ibControleMesas.FieldByName('M10').AsString = 'Sim' Then begin

          frmRestaurante.ckMesa10.Checked := False;
          frmRestaurante.ckMesa10.Font.Color := clBlack;
          frmRestaurante.ckMesa10.Caption := 'Livre';

       { end else begin

          frmRestaurante.ckMesa5.Checked := False;
          frmRestaurante.ckMesa5.Font.Color := clBlack;
          frmRestaurante.ckMesa5.Caption := 'Livre';}

        end;

        if ibControleMesas.FieldByName('M11').AsString = 'Sim' Then begin

          frmRestaurante.ckMesa11.Checked := False;
          frmRestaurante.ckMesa11.Font.Color := clBlack;
          frmRestaurante.ckMesa11.Caption := 'Livre';

      {  end else begin

          frmRestaurante.ckMesa1.Checked := False;
          frmRestaurante.ckMesa1.Font.Color := clBlack;
          frmRestaurante.ckMesa1.Caption := 'Livre';  }

        end;

        if ibControleMesas.FieldByName('M12').AsString = 'Sim' Then begin

          frmRestaurante.ckMesa12.Checked := False;
          frmRestaurante.ckMesa12.Font.Color := clBlack;
          frmRestaurante.ckMesa12.Caption := 'Livre';

       { end else begin

          frmRestaurante.ckMesa2.Checked := False;
          frmRestaurante.ckMesa2.Font.Color := clBlack;
          frmRestaurante.ckMesa2.Caption := 'Livre'; }

        end;

        if ibControleMesas.FieldByName('M13').AsString = 'Sim' Then begin

          frmRestaurante.ckMesa13.Checked := False;
          frmRestaurante.ckMesa13.Font.Color := clBlack;
          frmRestaurante.ckMesa13.Caption := 'Livre';

       { end else begin

          frmRestaurante.ckMesa3.Checked := False;
          frmRestaurante.ckMesa3.Font.Color := clBlack;
          frmRestaurante.ckMesa3.Caption := 'Livre'; }

        end;

        if ibControleMesas.FieldByName('M14').AsString = 'Sim' Then begin

          frmRestaurante.ckMesa14.Checked := False;
          frmRestaurante.ckMesa14.Font.Color := clBlack;
          frmRestaurante.ckMesa14.Caption := 'Livre';

      {  end else begin

          frmRestaurante.ckMesa4.Checked := False;
          frmRestaurante.ckMesa4.Font.Color := clBlack;
          frmRestaurante.ckMesa4.Caption := 'Livre';}

        end;

        if ibControleMesas.FieldByName('M15').AsString = 'Sim' Then begin

          frmRestaurante.ckMesa15.Checked := False;
          frmRestaurante.ckMesa15.Font.Color := clBlack;
          frmRestaurante.ckMesa15.Caption := 'Livre';

       { end else begin

          frmRestaurante.ckMesa5.Checked := False;
          frmRestaurante.ckMesa5.Font.Color := clBlack;
          frmRestaurante.ckMesa5.Caption := 'Livre';}

        end;

        if ibControleMesas.FieldByName('M16').AsString = 'Sim' Then begin

          frmRestaurante.ckMesa16.Checked := False;
          frmRestaurante.ckMesa16.Font.Color := clBlack;
          frmRestaurante.ckMesa16.Caption := 'Livre';

      {  end else begin

          frmRestaurante.ckMesa1.Checked := False;
          frmRestaurante.ckMesa1.Font.Color := clBlack;
          frmRestaurante.ckMesa1.Caption := 'Livre';  }

        end;

        if ibControleMesas.FieldByName('M17').AsString = 'Sim' Then begin

          frmRestaurante.ckMesa17.Checked := False;
          frmRestaurante.ckMesa17.Font.Color := clBlack;
          frmRestaurante.ckMesa17.Caption := 'Livre';

       { end else begin

          frmRestaurante.ckMesa2.Checked := False;
          frmRestaurante.ckMesa2.Font.Color := clBlack;
          frmRestaurante.ckMesa2.Caption := 'Livre'; }

        end;

        if ibControleMesas.FieldByName('M18').AsString = 'Sim' Then begin

          frmRestaurante.ckMesa18.Checked := False;
          frmRestaurante.ckMesa18.Font.Color := clBlack;
          frmRestaurante.ckMesa18.Caption := 'Livre';

       { end else begin

          frmRestaurante.ckMesa3.Checked := False;
          frmRestaurante.ckMesa3.Font.Color := clBlack;
          frmRestaurante.ckMesa3.Caption := 'Livre'; }

        end;

        if ibControleMesas.FieldByName('M19').AsString = 'Sim' Then begin

          frmRestaurante.ckMesa19.Checked := False;
          frmRestaurante.ckMesa19.Font.Color := clBlack;
          frmRestaurante.ckMesa19.Caption := 'Livre';

      {  end else begin

          frmRestaurante.ckMesa4.Checked := False;
          frmRestaurante.ckMesa4.Font.Color := clBlack;
          frmRestaurante.ckMesa4.Caption := 'Livre';}

        end;

        if ibControleMesas.FieldByName('M20').AsString = 'Sim' Then begin

          frmRestaurante.ckMesa20.Checked := False;
          frmRestaurante.ckMesa20.Font.Color := clBlack;
          frmRestaurante.ckMesa20.Caption := 'Livre';

       { end else begin

          frmRestaurante.ckMesa5.Checked := False;
          frmRestaurante.ckMesa5.Font.Color := clBlack;
          frmRestaurante.ckMesa5.Caption := 'Livre';}

        end;

        if ibControleMesas.FieldByName('M21').AsString = 'Sim' Then begin

          frmRestaurante.ckMesa21.Checked := False;
          frmRestaurante.ckMesa21.Font.Color := clBlack;
          frmRestaurante.ckMesa21.Caption := 'Livre';

      {  end else begin

          frmRestaurante.ckMesa1.Checked := False;
          frmRestaurante.ckMesa1.Font.Color := clBlack;
          frmRestaurante.ckMesa1.Caption := 'Livre';  }

        end;

        if ibControleMesas.FieldByName('M22').AsString = 'Sim' Then begin

          frmRestaurante.ckMesa22.Checked := False;
          frmRestaurante.ckMesa22.Font.Color := clBlack;
          frmRestaurante.ckMesa22.Caption := 'Livre';

       { end else begin

          frmRestaurante.ckMesa2.Checked := False;
          frmRestaurante.ckMesa2.Font.Color := clBlack;
          frmRestaurante.ckMesa2.Caption := 'Livre'; }

        end;

        if ibControleMesas.FieldByName('M23').AsString = 'Sim' Then begin

          frmRestaurante.ckMesa23.Checked := False;
          frmRestaurante.ckMesa23.Font.Color := clBlack;
          frmRestaurante.ckMesa23.Caption := 'Livre';

       { end else begin

          frmRestaurante.ckMesa3.Checked := False;
          frmRestaurante.ckMesa3.Font.Color := clBlack;
          frmRestaurante.ckMesa3.Caption := 'Livre'; }

        end;

        if ibControleMesas.FieldByName('M24').AsString = 'Sim' Then begin

          frmRestaurante.ckMesa24.Checked := False;
          frmRestaurante.ckMesa24.Font.Color := clBlack;
          frmRestaurante.ckMesa24.Caption := 'Livre';

      {  end else begin

          frmRestaurante.ckMesa4.Checked := False;
          frmRestaurante.ckMesa4.Font.Color := clBlack;
          frmRestaurante.ckMesa4.Caption := 'Livre';}

        end;

        if ibControleMesas.FieldByName('M25').AsString = 'Sim' Then begin

          frmRestaurante.ckMesa25.Checked := False;
          frmRestaurante.ckMesa25.Font.Color := clBlack;
          frmRestaurante.ckMesa25.Caption := 'Livre';

       { end else begin

          frmRestaurante.ckMesa5.Checked := False;
          frmRestaurante.ckMesa5.Font.Color := clBlack;
          frmRestaurante.ckMesa5.Caption := 'Livre';}

        end;

        if ibControleMesas.FieldByName('M26').AsString = 'Sim' Then begin

          frmRestaurante.ckMesa26.Checked := False;
          frmRestaurante.ckMesa26.Font.Color := clBlack;
          frmRestaurante.ckMesa26.Caption := 'Livre';

      {  end else begin

          frmRestaurante.ckMesa1.Checked := False;
          frmRestaurante.ckMesa1.Font.Color := clBlack;
          frmRestaurante.ckMesa1.Caption := 'Livre';  }

        end;

        if ibControleMesas.FieldByName('M27').AsString = 'Sim' Then begin

          frmRestaurante.ckMesa27.Checked := False;
          frmRestaurante.ckMesa27.Font.Color := clBlack;
          frmRestaurante.ckMesa27.Caption := 'Livre';

       { end else begin

          frmRestaurante.ckMesa2.Checked := False;
          frmRestaurante.ckMesa2.Font.Color := clBlack;
          frmRestaurante.ckMesa2.Caption := 'Livre'; }

        end;

        if ibControleMesas.FieldByName('M28').AsString = 'Sim' Then begin

          frmRestaurante.ckMesa28.Checked := False;
          frmRestaurante.ckMesa28.Font.Color := clBlack;
          frmRestaurante.ckMesa28.Caption := 'Livre';

       { end else begin

          frmRestaurante.ckMesa3.Checked := False;
          frmRestaurante.ckMesa3.Font.Color := clBlack;
          frmRestaurante.ckMesa3.Caption := 'Livre'; }

        end;

        if ibControleMesas.FieldByName('M29').AsString = 'Sim' Then begin

          frmRestaurante.ckMesa29.Checked := False;
          frmRestaurante.ckMesa29.Font.Color := clBlack;
          frmRestaurante.ckMesa29.Caption := 'Livre';

      {  end else begin

          frmRestaurante.ckMesa4.Checked := False;
          frmRestaurante.ckMesa4.Font.Color := clBlack;
          frmRestaurante.ckMesa4.Caption := 'Livre';}

        end;

        if ibControleMesas.FieldByName('M30').AsString = 'Sim' Then begin

          frmRestaurante.ckMesa30.Checked := False;
          frmRestaurante.ckMesa30.Font.Color := clBlack;
          frmRestaurante.ckMesa30.Caption := 'Livre';

       { end else begin

          frmRestaurante.ckMesa5.Checked := False;
          frmRestaurante.ckMesa5.Font.Color := clBlack;
          frmRestaurante.ckMesa5.Caption := 'Livre';}

        end;


        ibControleMesas.Next;

      end;//while

 {   end else begin

      frmRestaurante.ckMesa1.Checked := False;
      frmRestaurante.ckMesa1.Font.Color := clBlack;
      frmRestaurante.ckMesa1.Caption := 'Livre';

      frmRestaurante.ckMesa2.Checked := False;
      frmRestaurante.ckMesa2.Font.Color := clBlack;
      frmRestaurante.ckMesa2.Caption := 'Livre';

      frmRestaurante.ckMesa3.Checked := False;
      frmRestaurante.ckMesa3.Font.Color := clBlack;
      frmRestaurante.ckMesa3.Caption := 'Livre';

      frmRestaurante.ckMesa4.Checked := False;
      frmRestaurante.ckMesa4.Font.Color := clBlack;
      frmRestaurante.ckMesa4.Caption := 'Livre';

      frmRestaurante.ckMesa5.Checked := False;
      frmRestaurante.ckMesa5.Font.Color := clBlack;
      frmRestaurante.ckMesa5.Caption := 'Livre';}

    end;//recordcount


////////////////////////////////////////////////////////////////////////////////

    {  frmRestaurante.ckMesa1.Checked := False;
      frmRestaurante.ckMesa1.Font.Color := clBlack;
      frmRestaurante.ckMesa1.Caption := 'Livre';

      frmRestaurante.ckMesa2.Checked := False;
      frmRestaurante.ckMesa2.Font.Color := clBlack;
      frmRestaurante.ckMesa2.Caption := 'Livre';

      frmRestaurante.ckMesa3.Checked := False;
      frmRestaurante.ckMesa3.Font.Color := clBlack;
      frmRestaurante.ckMesa3.Caption := 'Livre';

      frmRestaurante.ckMesa4.Checked := False;
      frmRestaurante.ckMesa4.Font.Color := clBlack;
      frmRestaurante.ckMesa4.Caption := 'Livre';

      frmRestaurante.ckMesa5.Checked := False;
      frmRestaurante.ckMesa5.Font.Color := clBlack;
      frmRestaurante.ckMesa5.Caption := 'Livre'; }
        //INSTANCIANDO A CLASSE TVENDASCX
        intIDVendasCX2 := TVendasCX.Create();
        intIDVendasCX2.SituacaoVendaCx := 1;

        if cboTipoPagto.Text = 'PENDENTE' then begin

          intVendaP2.VendaP := 1;

        end else begin

           intVendaP2.VendaP := 0;

        end;

      try

        ibRestaurante.Close;
        ibRestaurante.SQL.Clear;
        ibRestaurante.SQL.Add('UPDATE TBLRESTAURANTE SET '
        + 'IDTIPOPAGTOR = ''' + IntToStr(IDTipoPagamento.ID) + ''','
        + 'VENDAPENDENTE = ''' + IntToStr(intVendaP2.VendaP) + ''','
        + 'SITUACAOVENDA = ''' + IntToStr(intIDVendasCX2.SituacaoVendaCx) + ''','
        + 'NOMETIPOPAGTOR = ''' + cboTipoPagto.Text + ''' WHERE IDDETALHER=''' + IntToStr(IDDetalheMR) + '''');
        ibRestaurante.ExecSQL;
        Commit(ibRestaurante);

      finally

        intIDVendasCX2.Free;
        intVendaP2.Free;
        
      end;

      ibControleMesas.Close;
      ibControleMesas.SQL.Clear;
      ibControleMesas.SQL.Add('DELETE FROM TBLCONTROLEMESAS WHERE IDDETALHECONTROLE=''' + IntToStr(IDDetalheMR) + '''');
      ibControleMesas.ExecSQL;

      frmRestaurante.lbl_edtIDDetalheMesa.Caption := '';
      ibRestaurante.Close;
      
  end;//if restaurante showing

////////////////////////////////////////////////////////////////////////////////

  if frmCliente.Showing Then begin

      ConfirmaMSG := Application.MessageBox('Confirma o Lan�amento?','Notifica��o:Confirma��o de Venda',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

     if ConfirmaMSG = 6 Then begin

       if (frmCliente.lbl_CodVenda.Caption > '0') Then begin

         IDVenda := StrToInt(frmCliente.lbl_CodVenda.Caption);

       end else if (frmCliente.lbl_CupomDetalhado.Caption > '0') Then begin

         IDVenda := StrToInt(frmCliente.lbl_CodVenda.Caption);

       end else begin

         Application.MessageBox('Aten��o voc� est� recebendo sem ter efetuado venda no caixa, favor verificar??','Recebimento sem Venda Realizada',+MB_OKCANCEL+MB_DEFBUTTON1+MB_ICONWARNING);

         IDVenda := 0;

       end;

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

        ValorVenda := StringReplace(lbl_edtTotalVenda.Text,ThousandSeparator,'',[rfReplaceAll]);
        ValorVenda := StringReplace(ValorVenda,DecimalSeparator,'.',[rfReplaceAll]);
        if ValorVenda  = '' Then
            ValorVenda := '0';

        ValorPago := StringReplace(lbl_edtValor.Text,ThousandSeparator,'',[rfReplaceAll]);
        ValorPago := StringReplace(ValorPago,DecimalSeparator,'.',[rfReplaceAll]);
        if ValorPago  = '' Then
           ValorPago := '0';

        ValorTroco := StringReplace(lbl_edtTroco.Text,ThousandSeparator,'',[rfReplaceAll]);
        ValorTroco := StringReplace(ValorTroco,DecimalSeparator,'.',[rfReplaceAll]);
        if ValorTroco  = '' Then
           ValorTroco := '0';

////////////////////////////////////////////////////////////////////////////////

          if frmCliente.lbl_edtCodCli.Text <> '' Then begin

          IDClienteCx := StrToInt(frmCliente.lbl_edtCodCli.Text);

          end else begin

          IDClienteCx := 0;

          end;

          if cboTipoPagto.Text = 'SODEX' Then begin

              Cartao := 'Cartao';

              SituacaoCliente := 'Pago';
              PosVenda := 'Pago';
                    
              ibServsVenda.Close;
              ibServsVenda.SQL.Clear;
              ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
              + 'IDTIPOPAGTO = ''' + IntToStr(IDTipoPagamento.ID) + ''','
              + 'TIPOVENDA = ''' + SituacaoCliente + ''','
              + 'POSVENDA = ''' + PosVenda + ''','
              + 'PENDENTEPAGO = ''' + SituacaoCliente + ''','
              + 'NOMEVENDA = ''' + Cartao + ''' WHERE IDSERVSVENDA = ''' + IntToStr(IDVenda) + '''');
              ibServsVenda.ExecSQL;
              Commit(ibServsVenda);

          end;

          if cboTipoPagto.Text = 'SOROCRED' Then begin

              Cartao := 'Cartao';

              SituacaoCliente := 'Pago';
              PosVenda := 'Pago';
                    
              ibServsVenda.Close;
              ibServsVenda.SQL.Clear;
              ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
              + 'IDTIPOPAGTO = ''' + IntToStr(IDTipoPagamento.ID) + ''','
              + 'TIPOVENDA = ''' + SituacaoCliente + ''','
              + 'POSVENDA = ''' + PosVenda + ''','
              + 'PENDENTEPAGO = ''' + SituacaoCliente + ''','
              + 'NOMEVENDA = ''' + Cartao + ''' WHERE IDSERVSVENDA = ''' + IntToStr(IDVenda) + '''');
              ibServsVenda.ExecSQL;
              Commit(ibServsVenda);

          end;

          if cboTipoPagto.Text = 'HIPERCARD' Then begin

              Cartao := 'Cartao';

              SituacaoCliente := 'Pago';
              PosVenda := 'Pago';
                    
              ibServsVenda.Close;
              ibServsVenda.SQL.Clear;
              ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
              + 'IDTIPOPAGTO = ''' + IntToStr(IDTipoPagamento.ID) + ''','
              + 'TIPOVENDA = ''' + SituacaoCliente + ''','
              + 'POSVENDA = ''' + PosVenda + ''','
              + 'PENDENTEPAGO = ''' + SituacaoCliente + ''','
              + 'NOMEVENDA = ''' + Cartao + ''' WHERE IDSERVSVENDA = ''' + IntToStr(IDVenda) + '''');
              ibServsVenda.ExecSQL;
              Commit(ibServsVenda);

          end;

          if cboTipoPagto.Text = 'VISA VALE' Then begin

              Cartao := 'Cartao';

              SituacaoCliente := 'Pago';
              PosVenda := 'Pago';
                    
              ibServsVenda.Close;
              ibServsVenda.SQL.Clear;
              ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
              + 'IDTIPOPAGTO = ''' + IntToStr(IDTipoPagamento.ID) + ''','
              + 'TIPOVENDA = ''' + SituacaoCliente + ''','
              + 'POSVENDA = ''' + PosVenda + ''','
              + 'PENDENTEPAGO = ''' + SituacaoCliente + ''','
              + 'NOMEVENDA = ''' + Cartao + ''' WHERE IDSERVSVENDA = ''' + IntToStr(IDVenda) + '''');
              ibServsVenda.ExecSQL;
              Commit(ibServsVenda);

          end;

          if cboTipoPagto.Text = 'TICKET RESTAURANTE' Then begin

              Cartao := 'Cartao';
              
              SituacaoCliente := 'Pago';
              PosVenda := 'Pago';
                    
              ibServsVenda.Close;
              ibServsVenda.SQL.Clear;
              ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
              + 'IDTIPOPAGTO = ''' + IntToStr(IDTipoPagamento.ID) + ''','
              + 'TIPOVENDA = ''' + SituacaoCliente + ''','
              + 'POSVENDA = ''' + PosVenda + ''','
              + 'PENDENTEPAGO = ''' + SituacaoCliente + ''','
              + 'NOMEVENDA = ''' + Cartao + ''' WHERE IDSERVSVENDA = ''' + IntToStr(IDVenda) + '''');
              ibServsVenda.ExecSQL;
              Commit(ibServsVenda);

          end;


          if cboTipoPagto.Text = 'VISA CREDITO' Then begin



              Cartao := 'Cartao';
              Baixado := '';

              SituacaoCliente := 'Pago';
              PosVenda := 'Pago';
                    
              ibServsVenda.Close;
              ibServsVenda.SQL.Clear;
              ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
              + 'IDTIPOPAGTO = ''' + IntToStr(IDTipoPagamento.ID) + ''','
              + 'TIPOVENDA = ''' + SituacaoCliente + ''','
              + 'POSVENDA = ''' + PosVenda + ''','
              + 'PENDENTEPAGO = ''' + SituacaoCliente + ''','
              + 'NOMEVENDA = ''' + Cartao + ''' WHERE IDSERVSVENDA = ''' + IntToStr(IDVenda) + '''');
              ibServsVenda.ExecSQL;
              Commit(ibServsVenda);

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

              TxVisaCredito := '2,0';

              Valor1 := StrToFloat(TxVisaCredito);//(StringReplace(TxVisaParc,ThousandSeparator,'',[rfReplaceAll]));
              Valor2 := StrToFloat(StringReplace(ValorVenda,ThousandSeparator,',',[rfReplaceAll]));
              Valor3 := (Valor2 * Valor1);
              Valor4 := Valor3/100;

              VlrConv := Valor2 - Valor4;

              Valor5 := StringReplace(FloattoStr(VlrConv),ThousandSeparator,'',[rfReplaceAll]);
              Valor5 := StringReplace(Valor5,DecimalSeparator,'.',[rfReplaceAll]);


              ibAReceber.Close;
              ibAReceber.SQL.Clear;
              ibAReceber.SQL.Add(' INSERT INTO TBLCONTASARECEBER '
              + ' (EMISSAOCONTA,IDSERVSVENDA,IDTIPOPAGTO,IDTIPODOC,EMISSAO,VCTO,IDCLI,'
              + 'BAIXADO,NUMCHEQUE,CARTAO,VLREMITIDO) values '
              + ' (''' + FormatDateTime('mm-dd-yyyy', now) + ''','
              + ' ''' + IntToStr(IDVenda) + ''','
              + StringTipoPagamento
              + StringTipoPagamento
              + ' ''' + FormatDateTime('mm-dd-yyyy', now) + ''','
              + ' ''' + FormatDateTime('mm-dd-yyyy', DataPagtoVC) + ''','
              + ' ''' + IntToStr(IDClienteCx) + ''','
              + ' ''' + Baixado + ''','
              + ' ''' + lbl_edtNumCheque.Text + ''','
              + ' ''' + Cartao + ''','
              + ' ''' + Valor5 + ''')');
              ibAReceber.ExecSQL;
              Commit(ibAReceber);  }

          end;//if

////////////////////////////////////////////////////////////////////////////////

          if cboTipoPagto.Text = 'VISA DEBITO' Then begin


              Cartao := 'Cartao';
              Baixado := '';

              SituacaoCliente := 'Pago';
              PosVenda := 'Pago';
                    
              ibServsVenda.Close;
              ibServsVenda.SQL.Clear;
              ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
              + 'IDTIPOPAGTO = ''' + IntToStr(IDTipoPagamento.ID) + ''','
              + 'TIPOVENDA = ''' + SituacaoCliente + ''','
              + 'POSVENDA = ''' + PosVenda + ''','
              + 'PENDENTEPAGO = ''' + SituacaoCliente + ''','
              + 'NOMEVENDA = ''' + Cartao + ''' WHERE IDSERVSVENDA = ''' + IntToStr(IDVenda) + '''');
              ibServsVenda.ExecSQL;
              Commit(ibServsVenda);

           {  decodedaTe(StrToDate(FormatDateTime('DD/MM/YYYY',Now)),AnoVD,MesVD,DiaVD);//decodifica a data do combo
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


              TxVisaDebito := '2,0';

              Valor1 := StrToFloat(TxVisaDebito);//(StringReplace(TxVisaParc,ThousandSeparator,'',[rfReplaceAll]));
              Valor2 := StrToFloat(StringReplace(ValorVenda,ThousandSeparator,',',[rfReplaceAll]));
              Valor3 := (Valor2 * Valor1);
              Valor4 := Valor3/100;

              VlrConv := Valor2 - Valor4;

              Valor5 := StringReplace(FloattoStr(VlrConv),ThousandSeparator,'',[rfReplaceAll]);
              Valor5 := StringReplace(Valor5,DecimalSeparator,'.',[rfReplaceAll]);

              ibAReceber.Close;
              ibAReceber.SQL.Clear;
              ibAReceber.SQL.Add(' INSERT INTO TBLCONTASARECEBER '
              + ' (EMISSAOCONTA,IDSERVSVENDA,IDTIPOPAGTO,IDTIPODOC,EMISSAO,VCTO,IDCLI,'
              + 'BAIXADO,NUMCHEQUE,CARTAO,VLREMITIDO) values '
              + ' (''' + FormatDateTime('mm-dd-yyyy', now) + ''','
              + ' ''' + IntToStr(IDVenda) + ''','
              + StringTipoPagamento
              + StringTipoPagamento
              + ' ''' + FormatDateTime('mm-dd-yyyy', now) + ''','
              + ' ''' + FormatDateTime('mm-dd-yyyy', DataPagtoVD) + ''','
              + ' ''' + IntToStr(IDClienteCx) + ''','
              + ' ''' + Baixado + ''','
              + ' ''' + lbl_edtNumCheque.Text + ''','
              + ' ''' + Cartao + ''','
              + ' ''' + Valor5 + ''')');
              ibAReceber.ExecSQL;
              Commit(ibAReceber); }


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


              TxMastercardCredito := '2,0';

              Valor1 := StrToFloat(TxMastercardCredito);//(StringReplace(TxVisaParc,ThousandSeparator,'',[rfReplaceAll]));
              Valor2 := StrToFloat(StringReplace(ValorVenda,ThousandSeparator,',',[rfReplaceAll]));
              Valor3 := (Valor2 * Valor1);
              Valor4 := Valor3/100;

              VlrConv := Valor2 - Valor4;

              Valor5 := StringReplace(FloattoStr(VlrConv),ThousandSeparator,'',[rfReplaceAll]);
              Valor5 := StringReplace(Valor5,DecimalSeparator,'.',[rfReplaceAll]);

              Cartao := 'Cartao';
              Baixado := '';


              SituacaoCliente := 'Pago';
              PosVenda := 'Pago';
                    
              ibServsVenda.Close;
              ibServsVenda.SQL.Clear;
              ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
              + 'IDTIPOPAGTO = ''' + IntToStr(IDTipoPagamento.ID) + ''','
              + 'TIPOVENDA = ''' + SituacaoCliente + ''','
              + 'POSVENDA = ''' + PosVenda + ''','
              + 'PENDENTEPAGO = ''' + SituacaoCliente + ''','
              + 'NOMEVENDA = ''' + Cartao + ''' WHERE IDSERVSVENDA = ''' + IntToStr(IDVenda) + '''');
              ibServsVenda.ExecSQL;
              Commit(ibServsVenda);
            {  ibAReceber.Close;
              ibAReceber.SQL.Clear;
              ibAReceber.SQL.Add(' INSERT INTO TBLCONTASARECEBER '
              + ' (EMISSAOCONTA,IDSERVSVENDA,IDTIPOPAGTO,IDTIPODOC,EMISSAO,VCTO,IDCLI,'
              + 'BAIXADO,NUMCHEQUE,CARTAO,VLREMITIDO) values '
              + ' (''' + FormatDateTime('mm-dd-yyyy', now) + ''','
              + ' ''' + IntToStr(IDVenda) + ''','
              + StringTipoPagamento
              + StringTipoPagamento
              + ' ''' + FormatDateTime('mm-dd-yyyy', now) + ''','
              + ' ''' + FormatDateTime('mm-dd-yyyy', DataPagtoMC) + ''','
              + ' ''' + IntToStr(IDClienteCx) + ''','
              + ' ''' + Baixado + ''','
              + ' ''' + lbl_edtNumCheque.Text + ''','
              + ' ''' + Cartao + ''','
              + ' ''' + Valor5 + ''')');
              ibAReceber.ExecSQL;
              Commit(ibAReceber); }


          end;//if

////////////////////////////////////////////////////////////////////////////////


          if cboTipoPagto.Text = 'MASTERCARD DEBITO' Then begin

        {  DecodeDate(StrToDate(FormatDateTime('DD/MM/YYYY',Now)),AnoMD,MesMD,DiaMD);

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


              TxMastercardDebito := '2,0';

              Valor1 := StrToFloat(TxMastercardDebito);//(StringReplace(TxVisaParc,ThousandSeparator,'',[rfReplaceAll]));
              Valor2 := StrToFloat(StringReplace(ValorVenda,ThousandSeparator,',',[rfReplaceAll]));
              Valor3 := (Valor2 * Valor1);
              Valor4 := Valor3/100;

              VlrConv := Valor2 - Valor4;

              Valor5 := StringReplace(FloattoStr(VlrConv),ThousandSeparator,'',[rfReplaceAll]);
              Valor5 := StringReplace(Valor5,DecimalSeparator,'.',[rfReplaceAll]);

              Cartao := 'Cartao';
              Baixado := '';
              SituacaoCliente := 'Pago';
              PosVenda := 'Pago';
                    
              ibServsVenda.Close;
              ibServsVenda.SQL.Clear;
              ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
              + 'IDTIPOPAGTO = ''' + IntToStr(IDTipoPagamento.ID) + ''','
              + 'TIPOVENDA = ''' + SituacaoCliente + ''','
              + 'POSVENDA = ''' + PosVenda + ''','
              + 'PENDENTEPAGO = ''' + SituacaoCliente + ''','
              + 'NOMEVENDA = ''' + Cartao + ''' WHERE IDSERVSVENDA = ''' + IntToStr(IDVenda) + '''');
              ibServsVenda.ExecSQL;
              Commit(ibServsVenda);


          end;//if

////////////////////////////////////////////////////////////////////////////////

          if cboCondpagto.ItemIndex <> - 1 Then begin

            str := cboCondpagto.Text;//atribui o conteudo na variavel
           /// CountIDUsuarios := Explode(A, '/', str); //a tribuia funcao na variavel pegando os dados separados pela /


            if cboTipoPagto.Text = 'VISA PARCELADO' Then begin

             { TxVisaParc := '3,6';

              Valor1 := StrToFloat(TxVisaParc);//(StringReplace(TxVisaParc,ThousandSeparator,'',[rfReplaceAll]));
              Valor2 := StrToFloat(StringReplace(ValorVenda,ThousandSeparator,',',[rfReplaceAll]));
              Valor3 := (Valor2 * Valor1);
              Valor4 := Valor3/100;

              VlrConv := Valor2 - Valor4;

              Valor5 := StringReplace(FloattoStr(VlrConv),ThousandSeparator,'',[rfReplaceAll]);
             // Valor5 := StringReplace(Valor5,DecimalSeparator,'.',[rfReplaceAll]);

            end else if cboTipoPagto.Text = 'MASTERCARD  PARCELADO' Then begin

              TxMastercardParc := '3,7';

              Valor1 := StrToFloat(StringReplace(TxMastercardParc,ThousandSeparator,'',[rfReplaceAll]));
              Valor2 := StrToFloat(StringReplace(ValorVenda,ThousandSeparator,',',[rfReplaceAll]));
              Valor3 := Valor2 * Valor1;
              Valor4 := Valor3 / 100;

              VlrConv := Valor2 - Valor4;

              Valor5 := StringReplace(FloattoStr(VlrConv),ThousandSeparator,'',[rfReplaceAll]);
           //   Valor5 := StringReplace(Valor5,DecimalSeparator,'.',[rfReplaceAll]);

            end;


            if Valor5 > '0' Then begin

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
             If cboCondpagto.ItemIndex = -1 Then begin

                //Erro := True;
              //  Application.MessageBox('Informe a Condi��o de Pagamento','Notifica��o: Produto n�o especificado', MB_OK + MB_ICONQUESTION);
               StringCondpagto     := ' ''0'',';

             end else begin

               IDCondPagtoCA       := TClasseCombo( cboCondpagto.Items.Objects[cboCondpagto.ItemIndex] );
               StringCondpagto     := ' ''' + InttoStr( IDCondPagtoCA.ID ) + ''',';

             end;//if condpagto

             if frmCliente.lbl_edtCodCli.Text <> '' Then begin

             IDVendaCliente := StrToInt(frmCliente.lbl_edtCodCli.Text);

             end else begin

             IDVendaCliente := 0;

             end;

              Cartao := 'Cartao';
              Baixado := '';

              SituacaoCliente := 'Pago';
              PosVenda := 'Pago';
                    
              ibServsVenda.Close;
              ibServsVenda.SQL.Clear;
              ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
              + 'IDTIPOPAGTO = ''' + IntToStr(IDTipoPagamento.ID) + ''','
              + 'TIPOVENDA = ''' + SituacaoCliente + ''','
              + 'POSVENDA = ''' + PosVenda + ''','
              + 'PENDENTEPAGO = ''' + SituacaoCliente + ''','
              + 'NOMEVENDA = ''' + Cartao + ''' WHERE IDSERVSVENDA = ''' + IntToStr(IDVenda) + '''');
              ibServsVenda.ExecSQL;
              Commit(ibServsVenda);
             
             ibAReceber.Close;
             ibAReceber.SQL.Clear;
             ibAReceber.SQL.Add(' INSERT INTO TBLCONTASARECEBER '
             + ' (EMISSAOCONTA,IDSERVSVENDA,IDTIPOPAGTO,IDTIPODOC,IDCONDPAGTO,EMISSAO,VCTO,'
             + 'IDCLI,BAIXADO,NUMCHEQUE,CARTAO,VLREMITIDO) values '
             + ' (''' + FormatDateTime('mm-dd-yyyy', now) + ''','
             + ' ''' + IntToStr(IDVenda) + ''','
             + StringTipoPagamento
             + StringTipoPagamento
             + StringCondpagto
             + ' ''' + FormatDateTime('mm-dd-yyyy', now) + ''','
             + ' ''' + FormatDateTime('mm-dd-yyyy', DataPagto) + ''','
             + ' ''' + IntToStr(IDClienteCx) + ''','
             + ' ''' + Baixado + ''','
             + ' ''' + lbl_edtNumCheque.Text + ''','
             + ' ''' + Cartao + ''','
             + ' ''' + ValorParcelado + ''')');
             ibAReceber.ExecSQL;
             Commit(ibAReceber);

           //  end;{if}

           end;{for}

         end;{if cond pagto}

////////////////////////////////////////////////////////////////////////////////

        if (cboTipoPagto.Text = 'CHEQUE PRE')Then begin

          NomeVenda := 'Cheque Pre';
          SituacaoCliente := 'Pago';
          PosVenda := 'Pago';
                    
          ibServsVenda.Close;
          ibServsVenda.SQL.Clear;
          ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
          + 'IDTIPOPAGTO = ''' + IntToStr(IDTipoPagamento.ID) + ''','
          + 'TIPOVENDA = ''' + SituacaoCliente + ''','
          + 'POSVENDA = ''' + PosVenda + ''','
          + 'PENDENTEPAGO = ''' + SituacaoCliente + ''','
          + 'NOMEVENDA = ''' + NomeVenda + ''' WHERE IDSERVSVENDA = ''' + IntToStr(IDVenda) + '''');
          ibServsVenda.ExecSQL;
          Commit(ibServsVenda);

        end;//if

       { if (cboTipoPagto.Text = 'DINHEIRO')or(cboTipoPagto.Text = 'CHEQUE') Then begin

          NomeVenda := '';

          ibServsVenda.Close;
          ibServsVenda.SQL.Clear;
          ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
          + 'NOMEVENDA = ''' + NomeVenda + ''' WHERE IDSERVSVENDA = ''' + IntToStr(IDVenda) + '''');
          ibServsVenda.ExecSQL;
          Commit(ibServsVenda);

        end;//if }

////////////////////////////////////////////////////////////////////////////////

        if (cboTipoPagto.Text = 'PENDENTE') Then begin

            SituacaoCliente := 'Pendente';
            IDVendaCliente := StrToInt(frmCliente.lbl_edtCodCli.Text);

           { ibRecVendas.Close;
            ibRecVendas.SQL.Clear;   //  VLRPAGO,  '' + ValorPago + ''','TOTALVENDA,
            ibRecVendas.SQL.Add('INSERT INTO TBLRECEBEVENDAS'
            + '(IDVENDA,IDVENDAINT,TROCO,IDTIPOPAGTO,IDTIPOPROD,'
            + 'IDPROD,IDFUNC,SITUACAOVENDA,VLRPENDENTE,IDFUNCCOMISSAO,DATA,HORA) values '
            + '(''' + IntToStr(IDVenda) + ''',''' + IntToStr(IDVendaInt) + ''','
           // + ' ''' + ValorVenda + ''','
            + ' ''' + ValorTroco + ''','
            + StringTipoPagamento
            + ' ''' + IntToStr(IDTipoProduto) + ''','
            + ' ''' + IntToStr(IDProd) + ''','
            + ' ''' + IntToStr(IDFuncCaixa) + ''','
            + ' ''' + SituacaoCliente + ''','
            + ' ''' + ValorVenda + ''','
            + ' ''' + IntToStr(IDFuncComiss) + ''','
            + ' ''' + FormatDateTime('mm-dd-yyyy',now) + ''','
            + ' ''' + FormatDateTime('hh:mm:ss',now) + ''')');
            ibRecVendas.ExecSQL;
            Commit(ibRecVendas); }

            PosVenda := 'Pago';

            ibServsVenda.Close;
            ibServsVenda.SQL.Clear;
            ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
            + 'IDCLIENTE = ''' + IntToStr(IDVendaCliente) + ''','
            + 'IDTIPOPAGTO = ''' + IntToStr(IDTipoPagamento.ID) + ''','
            + 'TIPOVENDA = ''' + SituacaoCliente + ''','
            + 'POSVENDA = ''' + PosVenda + ''','
            + 'PENDENTEPAGO = ''' + SituacaoCliente + ''' WHERE IDSERVSVENDA = ''' + IntToStr(IDVenda) + '''');
            ibServsVenda.ExecSQL;
            Commit(ibServsVenda);

            ibCadastro.Close;
            ibCadastro.SQL.Clear;
            ibCadastro.SQL.Add('UPDATE TBLCADASTRO SET '
            + 'PENDENTEPAGO = ''' + SituacaoCliente + ''' WHERE IDCAD=''' + IntToStr(IDVendaCliente) + '''');
            ibCadastro.ExecSQL;
            Commit(ibCadastro);

          {////  ibPagtoPendente.Close;
            ibPagtoPendente.SQL.Clear;
            ibPagtoPendente.SQL.Add('INSERT INTO TBLPAGTOPENDENTE'
            + '(VLRPAGO,IDCLI,DATAPAGTO) values '
            + '(''' + ValorPago + ''','
            + '  ''' + IntToStr(IDVendaCliente) + ''','
            + ' ''' + FormatDateTime('mm-dd-yyyy',Now) + ''')');
            ibPagtoPendente.ExecSQL;
            Commit(ibPagtoPendente); }


        end else begin

        SituacaoCliente := 'Pago';

        if frmCliente.lbl_edtCodCli.Text <> '' Then begin

        IDVendaCliente := StrToInt(frmCliente.lbl_edtCodCli.Text);

        end else begin

        IDVendaCliente := 0;

        end;

        if frmCliente.lbl_CodVenda.Caption <> '' Then begin

        IDVendaPedido := StrToInt(frmCliente.lbl_CodVenda.Caption);

        end;

            if (cboTipoPagto.Text <> '')and(cboTPagto.Text = '') Then begin

            { ibRecVendas.Close;
              ibRecVendas.SQL.Clear;
              ibRecVendas.SQL.Add('INSERT INTO TBLRECEBEVENDAS'
              + '(IDVENDA,IDVENDAINT,TOTALVENDA,VLRPAGO,TROCO,IDTIPOPAGTO,IDTIPOPROD,'
              + 'IDPROD,IDFUNC,SITUACAOVENDA,IDFUNCCOMISSAO,DATA,HORA) values '
              + '(''' + IntToStr(IDVendaPedido) + ''',''' + IntToStr(IDVendaInt) + ''','
              + ' ''' + ValorVenda + ''',''' + ValorPago + ''','
              + ' ''' + ValorTroco + ''','
              + StringTipoPagamento
              + ' ''' + IntToStr(IDTipoProduto) + ''','
              + ' ''' + IntToStr(IDProd) + ''','
              + ' ''' + IntToStr(IDFuncCaixa) + ''','
              + ' ''' + SituacaoCliente + ''','
              + ' ''' + IntToStr(IDFuncComiss) + ''','
              + ' ''' + FormatDateTime('mm-dd-yyyy',now) + ''','
              + ' ''' + FormatDateTime('hh:mm:ss',now) + ''')');
              ibRecVendas.ExecSQL;
              Commit(ibRecVendas); }

              PosVenda := 'Pago';

            {  ibServsVenda.Close;
              ibServsVenda.SQL.Clear;
              ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
              + 'IDTIPOPAGTO = ''' + IntToStr(IDTipoPagamento.ID) + ''','
              + 'POSVENDA = ''' + PosVenda + ''','
              + 'PENDENTEPAGO = ''' + SituacaoCliente + ''' WHERE IDSERVSVENDA = ''' + IntToStr(IDVendaPedido) + '''');
              ibServsVenda.ExecSQL;
              Commit(ibServsVenda); }


            end else if (cboTipoPagto.Text <> '')and(cboTPagto.Text <> '') Then begin

             { ibRecVendas.Close;
              ibRecVendas.SQL.Clear;
              ibRecVendas.SQL.Add('INSERT INTO TBLRECEBEVENDAS'
              + '(IDVENDA,IDVENDAINT,TOTALVENDA,VLRPAGO,TROCO,IDTIPOPAGTO,IDTIPOPROD,'
              + 'IDPROD,IDFUNC,SITUACAOVENDA,IDFUNCCOMISSAO,DATA,HORA) values '
              + '(''' + IntToStr(IDVendaPedido) + ''',''' + IntToStr(IDVendaInt) + ''','
              + ' ''' + ValorPago + ''',''' + ValorPago + ''','
              + ' ''' + ValorTroco + ''','
              + StringTipoPagamento
              + ' ''' + IntToStr(IDTipoProduto) + ''','
              + ' ''' + IntToStr(IDProd) + ''','
              + ' ''' + IntToStr(IDFuncCaixa) + ''','
              + ' ''' + SituacaoCliente + ''','
              + ' ''' + IntToStr(IDFuncComiss) + ''','
              + ' ''' + FormatDateTime('mm-dd-yyyy',now) + ''','
              + ' ''' + FormatDateTime('hh:mm:ss',now) + ''')');
              ibRecVendas.ExecSQL;
              Commit(ibRecVendas); }

            end;//if

       end;//if cbotipopagto


     { if cboTPagto.Text <> '' Then begin

        ValorVendaPago := StringReplace(lbl_edtValorPago.Text,ThousandSeparator,'',[rfReplaceAll]);
        ValorVendaPago := StringReplace(ValorVendaPago,DecimalSeparator,'.',[rfReplaceAll]);
        if ValorVendaPago  = '' Then
            ValorVendaPago := '0';


         ibRecVendas.Close;
         ibRecVendas.SQL.Clear;
         ibRecVendas.SQL.Add('INSERT INTO TBLRECEBEVENDAS'
         + '(IDVENDA,IDVENDAINT,VLRPAGO,TOTALVENDA,IDTIPOPAGTO,IDTIPOPROD,'
         + 'IDPROD,IDFUNC,SITUACAOVENDA,IDFUNCCOMISSAO,DATA,HORA) values '
         + '(''' + IntToStr(IDVendaPedido) + ''',''' + IntToStr(IDVendaInt) + ''','
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

       end;//if cbotpagto  }

            {  ibServsVenda.Close;
              ibServsVenda.SQL.Clear;
              ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
              + 'NOMEPAGTO = ''' + cboTipoPagto.Text + ''' WHERE IDSERVSVENDA = ''' + IntToStr(IDVenda) + '''');
              ibServsVenda.ExecSQL;
              Commit(ibServsVenda);}

////////////////////////////////////////////////////////////////////////////////
     {  if frmVendasLoja.Showing Then begin

          Commit(ibConfig);
          ibConfig.Close;
          ibConfig.SQL.Clear;
          ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
          ibConfig.Open;

          AvisaCupom       := ibConfig.FieldByName('IMPRIMIRCUPOM').AsString;
          ImprimirDireto   := ibConfig.FieldByName('IMPRIMIRDIRETO').AsString;
          QtdedeSaltos     := IntToStr(ibConfig.FieldByName('QTDESALTOS').AsInteger);
          DesenhodeDivisao := ibConfig.FieldByName('DESENHODIVISAO').AsString;

          if AvisaCupom = 'Sim' Then begin


            ConfirmaCupom := Application.MessageBox('Deseja imprimir a Venda','Notifica��o:Impress�o de Cupom',+MB_YESNO+MB_ICONQUESTION);


////////////////////////////////////////////////////////////////////////////////

              ibServsVenda.Close;
              ibServsVenda.SQL.Clear;
              ibServsVenda.SQL.Add('SELECT TBLSERVICOSVENDAS.*,'
              + 'CADPRODUTOS.NOME As Produto,CADPRODUTOS.CODBARRAS FROM TBLSERVICOSVENDAS '
              + 'INNER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD WHERE IDSERVSVENDA=''' + (frmVendasLoja.lbl_CodVenda.Caption) + '''');
              ibServsVenda.Open;

             (ibServsVenda.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := ',0.00';
             (ibServsVenda.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := ',0.00';
             (ibServsVenda.FieldByName('VALORB') as TFloatField).DisplayFormat := ',0.00';
             (ibServsVenda.FieldByName('VALORC') as TFloatField).DisplayFormat := ',0.00';
             (ibServsVenda.FieldByName('QTDE') as TFloatField).DisplayFormat := '0';

////////////////////////////////////////////////////////////////////////////////


            if (frmCliente.lbl_edtCodCli.Text <> '')and (frmCliente.lbl_edtNome.Text <> '')Then begin


              ibClassificacao.Close;
              ibClassificacao.SQL.Clear;
              ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
              ibClassificacao.Open;
              IDClassPedidoCupom := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICA��O DO FORNECEDOR NA VARIAVEL.


              Commit(ibTempCadastro);
              ibTempCadastro.Close;
              ibTempCadastro.SQL.Clear;
              ibTempCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLLOGRADOURO.BAIRRO,'
              + 'TBLLOGRADOURO.ENDERECO FROM TBLCADASTRO '
              + 'LEFT OUTER JOIN TBLLOGRADOURO ON TBLCADASTRO.IDCAD = TBLLOGRADOURO.IDCAD '
              + 'WHERE TBLCADASTRO.IDCLASS=''' + InttoStr(IDClassPedidoCupom) + '''and TBLCADASTRO.IDCAD=''' + frmCliente.lbl_edtCodCli.Text + '''');
              ibTempCadastro.Open;

           end;
////////////////////////////////////////////////////////////////////////////////

              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sp>1</sp>'+(frmCliente.ListBoxDadosEmpresa.Items).Text+ ''),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Cupom N�.:<sp>1</sp>'+frmCliente.lbl_CodVenda.Caption+ ''),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Data:<sp>1</sp>'+DataConvertida+ '<sp>1</sp>Hora:<sp>1</sp>'+Hora+''),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
              //Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sp>1</sp>'+(frmCliente.listboxCupom.Items).Text+ ''),0);
              if ibTempCadastro.recordcount > 0 Then begin

                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Cliente:<sp>1</sp>'+(ibTempCadastro.FieldByName('NOME').AsString)),0);

                if ibTempCadastro.FieldByName('TELEFONE').AsString <> '' then begin
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Telefone: '+ibTempCadastro.FieldByName('TELEFONE').AsString),0);
                end;

                if ibTempCadastro.FieldByName('CELULAR').AsString <> '' Then begin
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Celular: '+ibTempCadastro.FieldByName('CELULAR').AsString),0);
                end;

                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Endere�o: '+ibTempCadastro.FieldByName('ENDERECO').AsString)+'    ,'+(ibTempCadastro.FieldByName('NUMERO').AsString),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Bairro: '+ibTempCadastro.FieldByName('BAIRRO').AsString),0);
                if ibTempCadastro.FieldByName('PONTOREFERENCIA').AsString <> '' Then begin
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('** '+ibTempCadastro.FieldByName('PONTOREFERENCIA').AsString+' **'),0);
                end;

              end;

              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
              while not ibServsVenda.Eof do begin

              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(ibServsVenda.FieldByName('Produto').AsString),0);
              if ibServsVenda.FieldByName('OBS').AsString <> '' Then begin
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(ibServsVenda.FieldByName('OBS').AsString),0);
              end;
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(FormatFloat('0',ibServsVenda.FieldByName('QTDE').AsFloat))+' X '+(FormatFloat(CasasDecimais('Produtos'),ibServsVenda.FieldByName('VLRUNIT').AsFloat))+' = '+(FormatFloat(CasasDecimais('Produtos'),ibServsVenda.FieldByName('VLRTOTAL').AsFloat)),0);
              //+''+'X'+''+(FormatFloat(CasasDecimais('Produtos'),FloatToStr(ibServsVenda.FieldByName('VLRUNIT').AsFloat)))+''+'='+''+(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat))
              ibServsVenda.Next;

              end;//while
////////////////////////////////////////////////////////////////////////////////


          if FraseRodapePed = 'Sim'Then begin


              if (cboTipoPagto.Text = 'PENDENTE') Then begin

                Produto[0]:=frmCliente.lbl_edtTotalPedido.Text;
                Produto[1]:=cboTipoPagto.Text;
                Produto[2]:=lbl_edtValor.Text;
                Produto[3]:=lbl_edtTotalVenda.Text;
                Produto[4]:=lbl_edtTroco.Text;
                Produto[6]:=lbl_edtValor.Text;

                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('     **** VENDA PENDENTE ****'),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL DA VENDA..:(R$)' + ' ' + '=' + ' ' +  Produto[0]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('VLR.PAGO..:(R$)' + ' ' + '=' + ' ' +Produto[6]),0);

                if lbl_edtValor.Text = '0,00'Then begin
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(Produto[1] + ' ' + '=' + ' ' + Produto[3]),0);
                end;

                if lbl_edtValor.Text > '0,00'Then begin
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(Produto[1] + ' ' + '=' + ' ' + Produto[4]),0);
                end;

                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
                if ibConfig.FieldByName('FRASE').AsString <> '' Then begin
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(FrasePed),0);
                end;
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sl>'+QtdedeSaltos+'</sl>'), 0);
              end;

          if cboTipoPagto.Text <> 'PENDENTE' Then begin

            if (lbl_edtDesconto.Text = '')or (lbl_edtDesconto.Text = '0,00')and(lbl_edtAcrescimo.Text = '0,00') Then begin

              Produto[0]:=frmCliente.lbl_edtTotalPedido.Text;
              Produto[1]:=cboTipoPagto.Text;
              Produto[2]:=lbl_edtValor.Text;
              Produto[3]:=lbl_edtTotalVenda.Text;
              Produto[4]:=lbl_edtTroco.Text;
              Produto[6]:=lbl_edtValor.Text;

              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL DO PEDIDO..:(R$)' + ' ' + '=' + ' ' +  Produto[3]),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(Produto[1] + ' ' + '=' + ' ' + Produto[2]),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('VLR.PAGO..:(R$)' + ' ' + '=' + ' ' +Produto[6]),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TROCO' + ' ' + '=' + ' ' +Produto[4]),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(FrasePed),0);

            end else if lbl_edtDesconto.Text > '0,00' Then begin

              Produto[0]:=frmCliente.lbl_edtTotalPedido.Text;
              Produto[1]:=cboTipoPagto.Text;
              Produto[2]:=lbl_edtValor.Text;
              Produto[3]:=lbl_edtTotalVenda.Text;
              Produto[4]:=lbl_edtTroco.Text;
              Produto[5]:=lbl_edtDesconto.Text;
              Produto[6]:=lbl_edtValor.Text;

              if lbl_edtValor.Text > '0,00' Then begin

              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL DO PEDIDO..:(R$)' + ' ' + '=' + ' ' +  Produto[0]),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('DESCONTO' + ' ' + '=' + ' ' +  Produto[5]),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL A PAGAR COM DESCONTO' + ' ' + '=' + ' ' +  Produto[3]),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(Produto[1] + ' ' + '=' + ' ' + Produto[2]),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TROCO' + ' ' + '=' + ' ' +Produto[4]),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(FrasePed),0);

              end else begin

              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL DO PEDIDO..:(R$)' + ' ' + '=' + ' ' +  Produto[0]),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('DESCONTO' + ' ' + '=' + ' ' +  Produto[5]),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL A PAGAR COM DESCONTO' + ' ' + '=' + ' ' +  Produto[3]),0);
              //Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(Produto[1] + ' ' + '=' + ' ' + Produto[2]),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TROCO' + ' ' + '=' + ' ' +Produto[4]),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(FrasePed),0);

              end;

            end;//if campo desconto

////////////////////////////////////////////////////////////////////////////////

            if (lbl_edtAcrescimo.Text > '0,00')and(lbl_edtDesconto.Text = '0,00') Then begin

              Produto[0]:=frmCliente.lbl_edtTotalPedido.Text;
              Produto[1]:=cboTipoPagto.Text;
              Produto[2]:=lbl_edtValor.Text;
              Produto[3]:=lbl_edtTotalVenda.Text;
              Produto[4]:=lbl_edtTroco.Text;
              Produto[5]:=lbl_edtAcrescimo.Text;
              Produto[6]:=lbl_edtValor.Text;

              if lbl_edtValor.Text > '0,00' Then begin

                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL DO PEDIDO..:(R$)' + ' ' + '=' + ' ' +  Produto[0]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TAXA' + ' ' + '=' + ' ' +  Produto[5]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL A PAGAR COM TAXA' + ' ' + '=' + ' ' +  Produto[3]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(Produto[1] + ' ' + '=' + ' ' + Produto[2]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TROCO' + ' ' + '=' + ' ' +Produto[4]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(FrasePed),0);


              end else begin

                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL DO PEDIDO..:(R$)' + ' ' + '=' + ' ' +  Produto[0]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TAXA' + ' ' + '=' + ' ' +  Produto[5]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL A PAGAR COM TAXA' + ' ' + '=' + ' ' +  Produto[3]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TROCO' + ' ' + '=' + ' ' +Produto[4]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(FrasePed),0);

              end;

            end;//if campo acrescimo


////////////////////////////////////////////////////////////////////////////////
          end;
          end;//if cbo <> pendente

          if FraseRodapePed = 'Nao'Then begin

            if (lbl_edtDesconto.Text = '')or (lbl_edtDesconto.Text = '0,00')and(lbl_edtAcrescimo.Text = '0,00') Then begin

              Produto[0]:=frmCliente.lbl_edtTotalPedido.Text;
              Produto[1]:=cboTipoPagto.Text;
              Produto[2]:=lbl_edtValor.Text;
              Produto[3]:=lbl_edtTotalVenda.Text;
              Produto[4]:=lbl_edtTroco.Text;
              Produto[6]:=lbl_edtValor.Text;

              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL DO PEDIDO..:(R$)' + ' ' + '=' + ' ' +  Produto[3]),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(Produto[1] + ' ' + '=' + ' ' + Produto[2]),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('VLR.PAGO..:(R$)' + ' ' + '=' + ' ' +Produto[6]),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TROCO' + ' ' + '=' + ' ' +Produto[4]),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(FrasePed),0);

            end else if lbl_edtDesconto.Text > '0,00' Then begin

              Produto[0]:=frmCliente.lbl_edtTotalPedido.Text;
              Produto[1]:=cboTipoPagto.Text;
              Produto[2]:=lbl_edtValor.Text;
              Produto[3]:=lbl_edtTotalVenda.Text;
              Produto[4]:=lbl_edtTroco.Text;
              Produto[5]:=lbl_edtDesconto.Text;
              Produto[6]:=lbl_edtValor.Text;

              if lbl_edtValor.Text > '0,00' Then begin

              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL DO PEDIDO..:(R$)' + ' ' + '=' + ' ' +  Produto[0]),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('DESCONTO' + ' ' + '=' + ' ' +  Produto[5]),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL A PAGAR COM DESCONTO' + ' ' + '=' + ' ' +  Produto[3]),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(Produto[1] + ' ' + '=' + ' ' + Produto[2]),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TROCO' + ' ' + '=' + ' ' +Produto[4]),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(FrasePed),0);

              end else begin

              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL DO PEDIDO..:(R$)' + ' ' + '=' + ' ' +  Produto[0]),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('DESCONTO' + ' ' + '=' + ' ' +  Produto[5]),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL A PAGAR COM DESCONTO' + ' ' + '=' + ' ' +  Produto[3]),0);
              //Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(Produto[1] + ' ' + '=' + ' ' + Produto[2]),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TROCO' + ' ' + '=' + ' ' +Produto[4]),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(FrasePed),0);

              end;

            end;//if campo desconto

////////////////////////////////////////////////////////////////////////////////

            if (lbl_edtAcrescimo.Text > '0,00')and(lbl_edtDesconto.Text = '0,00') Then begin

              Produto[0]:=frmCliente.lbl_edtTotalPedido.Text;
              Produto[1]:=cboTipoPagto.Text;
              Produto[2]:=lbl_edtValor.Text;
              Produto[3]:=lbl_edtTotalVenda.Text;
              Produto[4]:=lbl_edtTroco.Text;
              Produto[5]:=lbl_edtAcrescimo.Text;
              Produto[6]:=lbl_edtValor.Text;

              if lbl_edtValor.Text > '0,00' Then begin

                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL DO PEDIDO..:(R$)' + ' ' + '=' + ' ' +  Produto[0]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TAXA' + ' ' + '=' + ' ' +  Produto[5]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL A PAGAR COM TAXA' + ' ' + '=' + ' ' +  Produto[3]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(Produto[1] + ' ' + '=' + ' ' + Produto[2]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TROCO' + ' ' + '=' + ' ' +Produto[4]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(FrasePed),0);


              end else begin

                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL DO PEDIDO..:(R$)' + ' ' + '=' + ' ' +  Produto[0]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TAXA' + ' ' + '=' + ' ' +  Produto[5]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL A PAGAR COM TAXA' + ' ' + '=' + ' ' +  Produto[3]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TROCO' + ' ' + '=' + ' ' +Produto[4]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisao),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(FrasePed),0);

              end;

            end;//if campo acrescimo


////////////////////////////////////////////////////////////////////////////////


          end;// if frase rodapeped

              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sl>'+QtdedeSaltosPed+'</sl>'), 0);

             // Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tc>*</tc>'),0);
              //IPRIMINDO A VIG�SIMA PRIMEIRA LINHA
              if Int_Retorno = 1 Then
              begin
                Application.MessageBox('Impressao Concluida!!!', 'CP SISTEMAS', mb_ok + 32);
              end
              else
              begin
                Application.MessageBox('Erro!', 'Daruma Framework', mb_ok + 16);
              end;

            end;//if confirmacupom

          end;//if imprimirdiretosim

////////////////////////////////////////////////////////////////////////////////

            if NomeFunc <> '' Then begin

              ibUser.Close;
              ibUser.SQL.Clear;
              ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE LOGIN=''' + NomeFunc + '''');
              ibUser.Open;

              IDFuncCaixa := ibUser.FieldByName('IDUSER').AsInteger;

            end;//if nomefunc

  ////////////////////////////////////////////////////////////////////////////////

            if lbl_edtNumCheque.Text <> '' Then begin

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

            end;//if label cheque

  ////////////////////////////////////////////////////////////////////////////////

            if lbl_edtDesconto.Text > '0,00' Then begin

              ibServsVenda.Close;
              ibServsVenda.SQL.Clear;
              ibServsVenda.SQL.Add('SELECT * FROM TBLSERVICOSVENDAS ORDER BY IDSERVS DESC');
              ibServsVenda.Open;

              IDServs := ibServsVenda.FieldByName('IDSERVS').AsInteger;

              ValorDesconto := StringReplace(lbl_edtDesconto.Text,ThousandSeparator,'',[rfReplaceAll]);
              ValorDesconto := StringReplace(ValorDesconto,DecimalSeparator,'.',[rfReplaceAll]);
              if ValorDesconto  = '' Then
                 ValorDesconto := '0';

              ibServsVenda.Close;
              ibServsVenda.SQL.Clear;
              ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
              + 'DESCONTO = ''' + ValorDesconto + ''' WHERE IDSERVS=''' + IntToStr(IDServs) + '''');
              ibServsVenda.ExecSQL;
              Commit(ibServsVenda);

            end;//if

  ////////////////////////////////////////////////////////////////////////////////


            if lbl_edtAcrescimo.Text > '0,00' Then begin

              ibServsVenda.Close;
              ibServsVenda.SQL.Clear;
              ibServsVenda.SQL.Add('SELECT * FROM TBLSERVICOSVENDAS ORDER BY IDSERVS DESC');
              ibServsVenda.Open;

              IDServsAcrescimo := ibServsVenda.FieldByName('IDSERVS').AsInteger;

              ValorAcrescimo := StringReplace(lbl_edtAcrescimo.Text,ThousandSeparator,'',[rfReplaceAll]);
              ValorAcrescimo := StringReplace(ValorAcrescimo,DecimalSeparator,'.',[rfReplaceAll]);
              if ValorAcrescimo  = '' Then
                 ValorAcrescimo := '0';

              ibServsVenda.Close;
              ibServsVenda.SQL.Clear;
              ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
              + 'ACRESCIMO = ''' + ValorAcrescimo + ''' WHERE IDSERVS=''' + IntToStr(IDServsAcrescimo) + '''');
              ibServsVenda.ExecSQL;
              Commit(ibServsVenda);

            end;//if

  ////////////////////////////////////////////////////////////////////////////////

            frmVendasLoja.listboxCupom.Clear;

            frmVendasLoja.lbl_edtVlrUnit.Text  := '0,00';
            frmVendasLoja.lbl_edtVlrTotal.Text := '0,00';


            if frmVendasLoja.lbl_TipoPreco.Caption = '' Then begin

              TipoPreco := 'A';

            end;

            frmVendasLoja.lbl_edtInformacao.Caption := 'Caixa Livre';
            frmVendasLoja.lbl_edtQtde.Text := '1';
            frmVendasLoja.lbl_edtSubTotal.Caption := '0,00';
          // frmVendasLoja.lbl_edtCodBarras.SetFocus;
            frmVendasLoja.lbl_NomeProd.Caption := '';
            frmVendasLoja.lbl_NomeFuncComissao.Caption := '';
            frmVendasLoja.lbl_edtFuncComissao.Text := '';


       end;// if frmvendas sowing   }

////////////////////////////////////////////////////////////////////////////////

          if frmCliente.Showing Then begin

            Commit(ibConfig);
            ibConfig.Close;
            ibConfig.SQL.Clear;
            ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
            ibConfig.Open;

            AvisaCupomPed       := ibConfig.FieldByName('IMPRIMIRCUPOM').AsString;
            ImprimirDiretoPed   := ibConfig.FieldByName('IMPRIMIRDIRETO').AsString;
            QtdedeSaltosPed     := IntToStr(ibConfig.FieldByName('QTDESALTOS').AsInteger);
            DesenhodeDivisaoPed := ibConfig.FieldByName('DESENHODIVISAO').AsString;
            FrasePed            := ibConfig.FieldByName('FRASE').AsString;
            FraseRodapePed      := ibConfig.FieldByName('FRASERODAPE').AsString;
            Lpt1                := ibConfig.FieldByName('LPT1').AsString;
            Com1                := ibConfig.FieldByName('COM1').AsString;


          if AvisaCupomPed = 'Sim' Then begin


            ConfirmaCupomPed := Application.MessageBox('Deseja imprimir a Venda','Notifica��o:Impress�o de Cupom',+MB_YESNO+MB_ICONQUESTION);


          if ImprimirDiretoPed= 'Sim' Then begin

            if ConfirmaCupomPed = 6 Then begin

              DataConvertida := FormatDateTime('DD/MM/YYYY',Now);
              Hora           := FormatDateTime('hh:mm:ss',Now);

////////////////////////////////////////////////////////////////////////////////

              ibServsVenda.Close;
              ibServsVenda.SQL.Clear;
              ibServsVenda.SQL.Add('SELECT TBLSERVICOSVENDAS.*,'
              + 'CADPRODUTOS.NOME As Produto,CADPRODUTOS.CODBARRAS FROM TBLSERVICOSVENDAS '
              + 'INNER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD WHERE IDSERVSVENDA=''' + (frmCliente.lbl_CodVenda.Caption) + '''');
              ibServsVenda.Open;

             (ibServsVenda.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := ',0.00';
             (ibServsVenda.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := ',0.00';
             (ibServsVenda.FieldByName('VALORB') as TFloatField).DisplayFormat := ',0.00';
             (ibServsVenda.FieldByName('VALORC') as TFloatField).DisplayFormat := ',0.00';
             (ibServsVenda.FieldByName('QTDE') as TFloatField).DisplayFormat := '0';

////////////////////////////////////////////////////////////////////////////////

            if (frmCliente.lbl_edtTelefone.Text <> '')and (frmCliente.lbl_edtNome.Text <> '')Then begin


              ibClassificacao.Close;
              ibClassificacao.SQL.Clear;
              ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
              ibClassificacao.Open;
              IDClassPedido := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICA��O DO FORNECEDOR NA VARIAVEL.


              Commit(ibTempCadastro);
              ibTempCadastro.Close;
              ibTempCadastro.SQL.Clear;
              ibTempCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLLOGRADOURO.BAIRRO,'
              + 'TBLLOGRADOURO.ENDERECO FROM TBLCADASTRO '
              + 'INNER JOIN TBLLOGRADOURO ON TBLCADASTRO.IDCAD = TBLLOGRADOURO.IDCAD '
              + 'WHERE TBLCADASTRO.IDCLASS=''' + InttoStr(IDClassPedido) + '''and TBLCADASTRO.IDCAD=''' + frmCliente.lbl_edtCodCli.Text + '''');
              ibTempCadastro.Open;

           end;
////////////////////////////////////////////////////////////////////////////////

          if Com1 = 'Sim' Then begin

              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sp>1</sp>'+(frmCliente.ListBoxDadosEmpresa.Items).Text+ ''),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisaoPed),0);
              if frmCliente.lbl_Func.Caption <> '' Then begin
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Caixa de:<sp>1</sp>'+frmCliente.lbl_Func.Caption+ ''),0);
              end;
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Cupom N�.:<sp>1</sp>'+frmCliente.lbl_CodVenda.Caption+ ''),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Data:<sp>1</sp>'+DataConvertida+ '<sp>1</sp>Hora:<sp>1</sp>'+Hora+''),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisaoPed),0);
              //Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sp>1</sp>'+(frmCliente.listboxCupom.Items).Text+ ''),0);
              if ibTempCadastro.recordcount > 0 Then begin

                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Cliente:<sp>1</sp>'+(ibTempCadastro.FieldByName('NOME').AsString)),0);
                if ibTempCadastro.FieldByName('TELEFONE').AsString <> '' then begin
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Telefone: '+ibTempCadastro.FieldByName('TELEFONE').AsString),0);
                end;
                if ibTempCadastro.FieldByName('CELULAR').AsString <> '' Then begin
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Celular : '+ibTempCadastro.FieldByName('CELULAR').AsString),0);
                end;
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Endere�o: '+ibTempCadastro.FieldByName('ENDERECO').AsString)+'  ,'+(ibTempCadastro.FieldByName('NUMERO').AsString),0);
                if ibTempCadastro.FieldByName('COMPL').AsString <> '' Then begin
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Compl.: '+ibTempCadastro.FieldByName('COMPL').AsString),0);
                end;
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Bairro: '+ibTempCadastro.FieldByName('BAIRRO').AsString),0);
                if ibTempCadastro.FieldByName('BAIRRO').AsString <> '' Then begin
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('** '+ibTempCadastro.FieldByName('BAIRRO').AsString+' **'),0);
                end;

              end;

              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisaoPed),0);
              while not ibServsVenda.Eof do begin

              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(ibServsVenda.FieldByName('Produto').AsString),0);
              if ibServsVenda.FieldByName('OBS').AsString <> '' Then begin
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(ibServsVenda.FieldByName('OBS').AsString),0);
              end;
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(FormatFloat('0',ibServsVenda.FieldByName('QTDE').AsFloat))+' X '+(FormatFloat(CasasDecimais('Produtos'),ibServsVenda.FieldByName('VLRUNIT').AsFloat))+' = '+(FormatFloat(CasasDecimais('Produtos'),ibServsVenda.FieldByName('VLRTOTAL').AsFloat)),0);
              //+''+'X'+''+(FormatFloat(CasasDecimais('Produtos'),FloatToStr(ibServsVenda.FieldByName('VLRUNIT').AsFloat)))+''+'='+''+(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat))
              ibServsVenda.Next;

              end;//while
////////////////////////////////////////////////////////////////////////////////


          if FraseRodapePed = 'Sim'Then begin

            if (cboTipoPagto.Text = 'PENDENTE') Then begin

              Produto[0]:=frmCliente.lbl_edtTotalPedido.Text;
              Produto[1]:=cboTipoPagto.Text;
              Produto[2]:=lbl_edtValor.Text;
              Produto[3]:=lbl_edtTotalVenda.Text;
              Produto[4]:=lbl_edtTroco.Text;
              Produto[6]:=lbl_edtValor.Text;
              Produto[7]:=lbl_Informacao.Caption;
              Produto[8]:=lbl_edtAcrescimo.Text;

              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisaoPed),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('     **** VENDA PENDENTE ****'),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL DA VENDA..:(R$)' + ' ' + '=' + ' ' +  Produto[0]),0);
              if lbl_edtAcrescimo.Text > '0,00' Then begin
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TAXA..:(R$)' + ' ' + '=' + ' ' +  Produto[8]),0);
              end;
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('VLR.PAGO..:(R$)' + ' ' + '=' + ' ' +Produto[6]),0);

              if lbl_edtValor.Text = '0,00'Then begin
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(Produto[1] + ' ' + '=' + ' ' + Produto[3]),0);
              end;

              if lbl_edtValor.Text > '0,00'Then begin
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(Produto[7]),0);
              end;                                         // Produto[1] + ' ' + '=' + ' ' +

              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisaoPed),0);
              if ibConfig.FieldByName('FRASE').AsString <> '' Then begin
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(FrasePed),0);
              end;
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sl>'+QtdedeSaltos+'</sl>'), 0);

            end;//cbo tipopagto = pendente


            if cboTipoPagto.Text <> 'PENDENTE' Then begin

              if (lbl_edtDesconto.Text = '')or (lbl_edtDesconto.Text = '0,00')and(lbl_edtAcrescimo.Text = '0,00') Then begin

                Produto[0]:=frmCliente.lbl_edtTotalPedido.Text;
                Produto[1]:=cboTipoPagto.Text;
                Produto[2]:=lbl_edtValor.Text;
                Produto[3]:=lbl_edtTotalVenda.Text;
                Produto[4]:=lbl_edtTroco.Text;
                Produto[6]:=lbl_edtValor.Text;

                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisaoPed),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL DO PEDIDO..:(R$)' + ' ' + '=' + ' ' +  Produto[3]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(Produto[1] + ' ' + '=' + ' ' + Produto[2]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('VLR.PAGO..:(R$)' + ' ' + '=' + ' ' +Produto[6]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TROCO' + ' ' + '=' + ' ' +Produto[4]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisaoPed),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(FrasePed),0);

              end else if lbl_edtDesconto.Text > '0,00' Then begin

                Produto[0]:=frmCliente.lbl_edtTotalPedido.Text;
                Produto[1]:=cboTipoPagto.Text;
                Produto[2]:=lbl_edtValor.Text;
                Produto[3]:=lbl_edtTotalVenda.Text;
                Produto[4]:=lbl_edtTroco.Text;
                Produto[5]:=lbl_edtDesconto.Text;
                Produto[6]:=lbl_edtValor.Text;

                if lbl_edtValor.Text > '0,00' Then begin

                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisaoPed),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL DO PEDIDO..:(R$)' + ' ' + '=' + ' ' +  Produto[0]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('DESCONTO' + ' ' + '=' + ' ' +  Produto[5]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL A PAGAR COM DESCONTO' + ' ' + '=' + ' ' +  Produto[3]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(Produto[1] + ' ' + '=' + ' ' + Produto[2]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TROCO' + ' ' + '=' + ' ' +Produto[4]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisaoPed),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(FrasePed),0);

                end else begin

                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisaoPed),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL DO PEDIDO..:(R$)' + ' ' + '=' + ' ' +  Produto[0]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('DESCONTO' + ' ' + '=' + ' ' +  Produto[5]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL A PAGAR COM DESCONTO' + ' ' + '=' + ' ' +  Produto[3]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(Produto[1] + ' ' + '=' + ' ' + Produto[3]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TROCO' + ' ' + '=' + ' ' +Produto[4]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisaoPed),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(FrasePed),0);

                end;

              end;//if campo desconto

  ////////////////////////////////////////////////////////////////////////////////

              if (lbl_edtAcrescimo.Text > '0,00')and(lbl_edtDesconto.Text = '0,00') Then begin

                Produto[0]:=frmCliente.lbl_edtTotalPedido.Text;
                Produto[1]:=cboTipoPagto.Text;
                Produto[2]:=lbl_edtValor.Text;
                Produto[3]:=lbl_edtTotalVenda.Text;
                Produto[4]:=lbl_edtTroco.Text;
                Produto[5]:=lbl_edtAcrescimo.Text;
                Produto[6]:=lbl_edtValor.Text;

                if lbl_edtValor.Text > '0,00' Then begin

                  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisaoPed),0);
                  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL DO PEDIDO..:(R$)' + ' ' + '=' + ' ' +  Produto[0]),0);
                  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TAXA' + ' ' + '=' + ' ' +  Produto[5]),0);
                  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL A PAGAR COM TAXA' + ' ' + '=' + ' ' +  Produto[3]),0);
                  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(Produto[1] + ' ' + '=' + ' ' + Produto[2]),0);
                  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TROCO' + ' ' + '=' + ' ' +Produto[4]),0);
                  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisaoPed),0);
                  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(FrasePed),0);


                end else begin

                  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisaoPed),0);
                  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL DO PEDIDO..:(R$)' + ' ' + '=' + ' ' +  Produto[0]),0);
                  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TAXA' + ' ' + '=' + ' ' +  Produto[5]),0);
                  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL A PAGAR COM TAXA' + ' ' + '=' + ' ' +  Produto[3]),0);
                  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(Produto[1] + ' ' + '=' + ' ' + Produto[3]),0);
                  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TROCO' + ' ' + '=' + ' ' +Produto[4]),0);
                  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisaoPed),0);
                  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(FrasePed),0);

                end;

              end;//if campo acrescimo

            end;//if cbotipopagto<> pendente

          end;//if frase rodape = sim
////////////////////////////////////////////////////////////////////////////////


          if FraseRodapePed = 'Nao'Then begin

            if (cboTipoPagto.Text = 'PENDENTE') Then begin

              Produto[0]:=frmCliente.lbl_edtTotalPedido.Text;
              Produto[1]:=cboTipoPagto.Text;
              Produto[2]:=lbl_edtValor.Text;
              Produto[3]:=lbl_edtTotalVenda.Text;
              Produto[4]:=lbl_edtTroco.Text;
              Produto[6]:=lbl_edtValor.Text;
              Produto[7]:=lbl_Informacao.Caption;
              Produto[8]:=lbl_edtAcrescimo.Text;

              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisaoPed),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('     **** VENDA PENDENTE ****'),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL DA VENDA..:(R$)' + ' ' + '=' + ' ' +  Produto[0]),0);
              if lbl_edtAcrescimo.Text > '0,00' Then begin
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TAXA..:(R$)' + ' ' + '=' + ' ' +  Produto[8]),0);
              end;
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('VLR.PAGO..:(R$)' + ' ' + '=' + ' ' +Produto[6]),0);

              if lbl_edtValor.Text = '0,00'Then begin
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(Produto[1] + ' ' + '=' + ' ' + Produto[3]),0);
              end;

              if lbl_edtValor.Text > '0,00'Then begin
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(Produto[7]),0);
              end;                                         // Produto[1] + ' ' + '=' + ' ' +

              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisaoPed),0);
            //  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sl>'+QtdedeSaltos+'</sl>'), 0);

            end;//cbo tipopagto = pendente


            if cboTipoPagto.Text <> 'PENDENTE' Then begin

              if (lbl_edtDesconto.Text = '')or (lbl_edtDesconto.Text = '0,00')and(lbl_edtAcrescimo.Text = '0,00') Then begin

                Produto[0]:=frmCliente.lbl_edtTotalPedido.Text;
                Produto[1]:=cboTipoPagto.Text;
                Produto[2]:=lbl_edtValor.Text;
                Produto[3]:=lbl_edtTotalVenda.Text;
                Produto[4]:=lbl_edtTroco.Text;
                Produto[6]:=lbl_edtValor.Text;

                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisaoPed),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL DO PEDIDO..:(R$)' + ' ' + '=' + ' ' +  Produto[3]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(Produto[1] + ' ' + '=' + ' ' + Produto[2]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('VLR.PAGO..:(R$)' + ' ' + '=' + ' ' +Produto[6]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TROCO' + ' ' + '=' + ' ' +Produto[4]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisaoPed),0);
              //  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(FrasePed),0);

              end else if lbl_edtDesconto.Text > '0,00' Then begin

                Produto[0]:=frmCliente.lbl_edtTotalPedido.Text;
                Produto[1]:=cboTipoPagto.Text;
                Produto[2]:=lbl_edtValor.Text;
                Produto[3]:=lbl_edtTotalVenda.Text;
                Produto[4]:=lbl_edtTroco.Text;
                Produto[5]:=lbl_edtDesconto.Text;
                Produto[6]:=lbl_edtValor.Text;
                Produto[7]:=lbl_edtAcrescimo.Text;

                if lbl_edtValor.Text > '0,00' Then begin

                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisaoPed),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL DO PEDIDO..:(R$)' + ' ' + '=' + ' ' +  Produto[0]),0);
                if lbl_edtAcrescimo.Text > '0,00' Then begin
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TAXA' + ' ' + '=' + ' ' +  Produto[7]),0);
                end;
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('DESCONTO' + ' ' + '=' + ' ' +  Produto[5]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL A PAGAR COM DESCONTO' + ' ' + '=' + ' ' +  Produto[3]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(Produto[1] + ' ' + '=' + ' ' + Produto[2]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TROCO' + ' ' + '=' + ' ' +Produto[4]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisaoPed),0);
                //Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(FrasePed),0);

                end else begin

                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisaoPed),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL DO PEDIDO..:(R$)' + ' ' + '=' + ' ' +  Produto[0]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('DESCONTO' + ' ' + '=' + ' ' +  Produto[5]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL A PAGAR COM DESCONTO' + ' ' + '=' + ' ' +  Produto[3]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(Produto[1] + ' ' + '=' + ' ' + Produto[3]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TROCO' + ' ' + '=' + ' ' +Produto[4]),0);
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisaoPed),0);
               // Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(FrasePed),0);

                end;

              end;//if campo desconto

  ////////////////////////////////////////////////////////////////////////////////

              if (lbl_edtAcrescimo.Text > '0,00')and(lbl_edtDesconto.Text = '0,00') Then begin

                Produto[0]:=frmCliente.lbl_edtTotalPedido.Text;
                Produto[1]:=cboTipoPagto.Text;
                Produto[2]:=lbl_edtValor.Text;
                Produto[3]:=lbl_edtTotalVenda.Text;
                Produto[4]:=lbl_edtTroco.Text;
                Produto[5]:=lbl_edtAcrescimo.Text;
                Produto[6]:=lbl_edtValor.Text;

                if lbl_edtValor.Text > '0,00' Then begin

                  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisaoPed),0);
                  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL DO PEDIDO..:(R$)' + ' ' + '=' + ' ' +  Produto[0]),0);
                  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TAXA' + ' ' + '=' + ' ' +  Produto[5]),0);
                  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL A PAGAR COM TAXA' + ' ' + '=' + ' ' +  Produto[3]),0);
                  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(Produto[1] + ' ' + '=' + ' ' + Produto[2]),0);
                  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TROCO' + ' ' + '=' + ' ' +Produto[4]),0);
                  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisaoPed),0);
                 // Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(FrasePed),0);


                end else begin

                  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisaoPed),0);
                  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL DO PEDIDO..:(R$)' + ' ' + '=' + ' ' +  Produto[0]),0);
                  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TAXA' + ' ' + '=' + ' ' +  Produto[5]),0);
                  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL A PAGAR COM TAXA' + ' ' + '=' + ' ' +  Produto[3]),0);
                  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(Produto[1] + ' ' + '=' + ' ' + Produto[3]),0);
                  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TROCO' + ' ' + '=' + ' ' +Produto[4]),0);
                  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisaoPed),0);
                  //Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(FrasePed),0);

                end;

              end;//if campo acrescimo

            end;//if cbotipopagto<> pendente


          end;// if frase rodapeped = nao

              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sl>'+QtdedeSaltosPed+'</sl>'), 0);

             // Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tc>*</tc>'),0);
              //IPRIMINDO A VIG�SIMA PRIMEIRA LINHA
              if Int_Retorno = 1 Then
              begin
                Application.MessageBox('Impressao Concluida!!!', 'CP SISTEMAS', mb_ok + 32);
              end
              else
              begin
                Application.MessageBox('Erro!', 'Daruma Framework', mb_ok + 16);
              end;

            end;//if confirmacupom

          end;//if lpt1=sim

          end;//if imprimirdiretosim



////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////

          if Lpt1 = 'Sim' Then begin

          Commit(ibDadosEmpresa);
          ibDadosEmpresa.Close;
          ibDadosEmpresa.SQL.Clear;
          ibDadosEmpresa.SQL.Add('SELECT * FROM TBLDADOSEMPRESA');
          ibDadosEmpresa.Open;

          Commit(ibConfig);
          ibConfig.Close;
          ibConfig.SQL.Clear;
          ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
          ibConfig.Open;

          if ibConfig.FieldByName('CAMINHOIMPRESSORA').AsString <> '' Then begin

            CaminhoImpressora := ibConfig.FieldByName('CAMINHOIMPRESSORA').AsString;

          end;

            // AssignFile(F,CaminhoImpressora);
             AssignPrn(F);
             Rewrite(F);
             i := 0;


            Writeln(F,(ibDadosEmpresa.FieldByName('NOME').AsString));

            if (ibDadosEmpresa.FieldByName('ENDERECO').AsString <> '')and(ibDadosEmpresa.FieldByName('NUMERO').AsString <> '') Then begin

            Writeln(F,(ibDadosEmpresa.FieldByName('ENDERECO').AsString)+','+(ibDadosEmpresa.FieldByName('NUMERO').AsString));

            end;

            if ibDadosEmpresa.FieldByName('BAIRRO').AsString <> '' Then begin
            Writeln(F,(ibDadosEmpresa.FieldByName('BAIRRO').AsString));
            end;

            if (ibDadosEmpresa.FieldByName('TELEFONE').AsString <> '')Then begin
            Writeln(F,('Fone:'+ibDadosEmpresa.FieldByName('TELEFONE').AsString));
            end;
            Writeln(F,(DesenhodeDivisaoPed));
            Writeln(F,('Cupom :'+frmCliente.lbl_CodVenda.Caption+ ''));
            Writeln(F,('Data: '+DataConvertida+ ' Hora:'+Hora+''));
            Writeln(F,(DesenhodeDivisaoPed));

            if (frmCliente.lbl_edtTelefone.Text <> '')and (frmCliente.lbl_edtNome.Text <> '')Then begin


              ibClassificacao.Close;
              ibClassificacao.SQL.Clear;
              ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
              ibClassificacao.Open;
              IDClassPedido := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICA��O DO FORNECEDOR NA VARIAVEL.


              Commit(ibTempCadastro);
              ibTempCadastro.Close;
              ibTempCadastro.SQL.Clear;
              ibTempCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLLOGRADOURO.BAIRRO,'
              + 'TBLLOGRADOURO.ENDERECO FROM TBLCADASTRO '
              + 'INNER JOIN TBLLOGRADOURO ON TBLCADASTRO.IDCAD = TBLLOGRADOURO.IDCAD '
              + 'WHERE TBLCADASTRO.IDCLASS=''' + InttoStr(IDClassPedido) + '''and TBLCADASTRO.IDCAD=''' + frmCliente.lbl_edtCodCli.Text + '''');
              ibTempCadastro.Open;

           end;


              if ibTempCadastro.recordcount > 0 Then begin

                Writeln(F,('Cliente:'+(ibTempCadastro.FieldByName('NOME').AsString)));
                if ibTempCadastro.FieldByName('TELEFONE').AsString <> '' then begin
                Writeln(F,('Telefone: '+ibTempCadastro.FieldByName('TELEFONE').AsString));
                end;
                if ibTempCadastro.FieldByName('CELULAR').AsString <> '' Then begin
                Writeln(F,('Celular : '+ibTempCadastro.FieldByName('CELULAR').AsString));
                end;
                Writeln(F,('Endere�o: '+ibTempCadastro.FieldByName('ENDERECO').AsString)+'  ,'+(ibTempCadastro.FieldByName('NUMERO').AsString));
                if ibTempCadastro.FieldByName('COMPL').AsString <> '' Then begin
                Writeln(F,('Compl.: '+ibTempCadastro.FieldByName('COMPL').AsString));
                end;
                Writeln(F,('Bairro: '+ibTempCadastro.FieldByName('BAIRRO').AsString));
                if ibTempCadastro.FieldByName('BAIRRO').AsString <> '' Then begin
                Writeln(F,('** '+ibTempCadastro.FieldByName('BAIRRO').AsString+' **'));
                end;

              end;

             Writeln(F,(DesenhodeDivisaoPed));

              while not ibServsVenda.Eof do begin

              Writeln(F,(ibServsVenda.FieldByName('Produto').AsString));
              if ibServsVenda.FieldByName('OBS').AsString <> '' Then begin
              Writeln(F,(ibServsVenda.FieldByName('OBS').AsString));
              end;
              Writeln(F,(FormatFloat(CasasDecimais('Produtos'),ibServsVenda.FieldByName('QTDE').AsFloat))+' X '+(FormatFloat(CasasDecimais('Produtos'),ibServsVenda.FieldByName('VLRUNIT').AsFloat))+' = '+(FormatFloat(CasasDecimais('Produtos'),ibServsVenda.FieldByName('VLRTOTAL').AsFloat)));

              ibServsVenda.Next;

              end;//while
////////////////////////////////////////////////////////////////////////////////


          if FraseRodapePed = 'Sim'Then begin

            if (cboTipoPagto.Text = 'PENDENTE') Then begin

              Produto[0]:=frmCliente.lbl_edtTotalPedido.Text;
              Produto[1]:=cboTipoPagto.Text;
              Produto[2]:=lbl_edtValor.Text;
              Produto[3]:=lbl_edtTotalVenda.Text;
              Produto[4]:=lbl_edtTroco.Text;
              Produto[6]:=lbl_edtValor.Text;
              Produto[7]:=lbl_Informacao.Caption;
              Produto[8]:=lbl_edtAcrescimo.Text;

              Writeln(F,(DesenhodeDivisaoPed));
              Writeln(F,('     **** VENDA PENDENTE ****'));
              Writeln(F,('TOTAL DA VENDA..:(R$)' + ' ' + '=' + ' ' +  frmCliente.lbl_edtTotalPedido.Text));
              if lbl_edtAcrescimo.Text > '0,00' Then begin
              Writeln(F,('TAXA..:(R$)' + ' ' + '=' + ' ' +  Produto[8]));
              end;
              Writeln(F,('VLR.PAGO..:(R$)' + ' ' + '=' + ' ' +Produto[6]));

              if lbl_edtValor.Text = '0,00'Then begin
              Writeln(F,(Produto[1] + ' ' + '=' + ' ' + Produto[3]));
              end;

              if lbl_edtValor.Text > '0,00'Then begin
              Writeln(F,(Produto[7]));
              end;                                        

              Writeln(F,(DesenhodeDivisaoPed));
              if ibConfig.FieldByName('FRASE').AsString <> '' Then begin
              Writeln(F,(FrasePed),0);
              end;
              Writeln(F,(''));
              Writeln(F,(''));
              Writeln(F,(''));
              Writeln(F,(''));
              Writeln(F,(''));

            end;//cbo tipopagto = pendente


            if cboTipoPagto.Text <> 'PENDENTE' Then begin

              if (lbl_edtDesconto.Text = '')or (lbl_edtDesconto.Text = '0,00')and(lbl_edtAcrescimo.Text = '0,00') Then begin

                Produto[0]:=frmCliente.lbl_edtTotalPedido.Text;
                Produto[1]:=cboTipoPagto.Text;
                Produto[2]:=lbl_edtValor.Text;
                Produto[3]:=lbl_edtTotalVenda.Text;
                Produto[4]:=lbl_edtTroco.Text;
                Produto[6]:=lbl_edtValor.Text;

                Writeln(F,(DesenhodeDivisaoPed));
                Writeln(F,('TOTAL DO PEDIDO..:(R$)' + ' ' + '=' + ' ' +  Produto[3]));
                Writeln(F,(Produto[1] + ' ' + '=' + ' ' + Produto[2]));
                Writeln(F,('VLR.PAGO..:(R$)' + ' ' + '=' + ' ' +Produto[6]));
                Writeln(F,('TROCO' + ' ' + '=' + ' ' +Produto[4]));
                Writeln(F,(DesenhodeDivisaoPed));
                Writeln(F,(FrasePed));

              end else if lbl_edtDesconto.Text > '0,00' Then begin

                Produto[0]:=frmCliente.lbl_edtTotalPedido.Text;
                Produto[1]:=cboTipoPagto.Text;
                Produto[2]:=lbl_edtValor.Text;
                Produto[3]:=lbl_edtTotalVenda.Text;
                Produto[4]:=lbl_edtTroco.Text;
                Produto[5]:=lbl_edtDesconto.Text;
                Produto[6]:=lbl_edtValor.Text;
                Produto[7]:=lbl_edtAcrescimo.Text;

                if lbl_edtValor.Text > '0,00' Then begin

                Writeln(F,(DesenhodeDivisaoPed));
                Writeln(F,('TOTAL DO PEDIDO..:(R$)' + ' ' + '=' + ' ' +  Produto[0]));
                if lbl_edtAcrescimo.Text > '0,00' Then begin
                Writeln(F,('TAXA' + ' ' + '=' + ' ' +  Produto[7]));
                end;
                Writeln(F,('DESCONTO' + ' ' + '=' + ' ' +  Produto[5]));
                Writeln(F,('TOTAL A PAGAR COM DESCONTO' + ' ' + '=' + ' ' +  Produto[3]));
                Writeln(F,(Produto[1] + ' ' + '=' + ' ' + Produto[2]));
                Writeln(F,('TROCO' + ' ' + '=' + ' ' +Produto[4]));
                Writeln(F,(DesenhodeDivisaoPed));
                Writeln(F,(FrasePed));

                end else begin

                Writeln(F,(DesenhodeDivisaoPed));
                Writeln(F,('TOTAL DO PEDIDO..:(R$)' + ' ' + '=' + ' ' +  Produto[0]));
                Writeln(F,('DESCONTO' + ' ' + '=' + ' ' +  Produto[5]));
                Writeln(F,('TOTAL A PAGAR COM DESCONTO' + ' ' + '=' + ' ' +  Produto[3]));
                Writeln(F,(Produto[1] + ' ' + '=' + ' ' + Produto[3]));
                Writeln(F,('TROCO' + ' ' + '=' + ' ' +Produto[4]));
                Writeln(F,(DesenhodeDivisaoPed));
                Writeln(F,(FrasePed));

                end;

              end;//if campo desconto

  ////////////////////////////////////////////////////////////////////////////////

              if (lbl_edtAcrescimo.Text > '0,00')and(lbl_edtDesconto.Text = '0,00') Then begin

                Produto[0]:=frmCliente.lbl_edtTotalPedido.Text;
                Produto[1]:=cboTipoPagto.Text;
                Produto[2]:=lbl_edtValor.Text;
                Produto[3]:=lbl_edtTotalVenda.Text;
                Produto[4]:=lbl_edtTroco.Text;
                Produto[5]:=lbl_edtAcrescimo.Text;
                Produto[6]:=lbl_edtValor.Text;

                if lbl_edtValor.Text > '0,00' Then begin

                  Writeln(F,(DesenhodeDivisaoPed));
                  Writeln(F,('TOTAL DO PEDIDO..:(R$)' + ' ' + '=' + ' ' +  Produto[0]));
                  Writeln(F,('TAXA' + ' ' + '=' + ' ' +  Produto[5]));
                  Writeln(F,('TOTAL A PAGAR COM TAXA' + ' ' + '=' + ' ' +  Produto[3]));
                  Writeln(F,(Produto[1] + ' ' + '=' + ' ' + Produto[2]));
                  Writeln(F,('TROCO' + ' ' + '=' + ' ' +Produto[4]));
                  Writeln(F,(DesenhodeDivisaoPed));
                  Writeln(F,(FrasePed));


                end else begin

                  Writeln(F,(DesenhodeDivisaoPed));
                  Writeln(F,('TOTAL DO PEDIDO..:(R$)' + ' ' + '=' + ' ' +  Produto[0]));
                  Writeln(F,('TAXA' + ' ' + '=' + ' ' +  Produto[5]));
                  Writeln(F,('TOTAL A PAGAR COM TAXA' + ' ' + '=' + ' ' +  Produto[3]));
                  Writeln(F,(Produto[1] + ' ' + '=' + ' ' + Produto[3]));
                  Writeln(F,('TROCO' + ' ' + '=' + ' ' +Produto[4]));
                  Writeln(F,(DesenhodeDivisaoPed));
                  Writeln(F,(FrasePed));

                end;

              Writeln(F,(''));
              Writeln(F,(''));
              Writeln(F,(''));
              Writeln(F,(''));
              Writeln(F,(''));


              end;//if campo acrescimo

            end;//if cbotipopagto<> pendente

          end;//if frase rodape = sim


      //      end;//if confirmacupom

     //     end;//if lpt1=sim

              Writeln(F,(''));
              Writeln(F,(''));
              Writeln(F,(''));
              Writeln(F,(''));
              Writeln(F,(''));


          CloseFile(F);

          end;//if imprimirdiretosim


////////////////////////////////////////////////////////////////////////////////

            if lbl_edtNumCheque.Text <> '' Then begin

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

            end;//if label cheque

////////////////////////////////////////////////////////////////////////////////

            if lbl_edtDesconto.Text > '0,00' Then begin

              ibServsVenda.Close;
              ibServsVenda.SQL.Clear;
              ibServsVenda.SQL.Add('SELECT * FROM TBLSERVICOSVENDAS ORDER BY IDSERVS DESC');
              ibServsVenda.Open;

              IDServs := ibServsVenda.FieldByName('IDSERVS').AsInteger;

              ValorDesconto := StringReplace(lbl_edtDesconto.Text,ThousandSeparator,'',[rfReplaceAll]);
              ValorDesconto := StringReplace(ValorDesconto,DecimalSeparator,'.',[rfReplaceAll]);
              if ValorDesconto  = '' Then
                 ValorDesconto := '0';

              ibServsVenda.Close;
              ibServsVenda.SQL.Clear;
              ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
              + 'DESCONTO = ''' + ValorDesconto + ''' WHERE IDSERVS=''' + IntToStr(IDServs) + '''');
              ibServsVenda.ExecSQL;
              Commit(ibServsVenda);

            end;//if

////////////////////////////////////////////////////////////////////////////////


            if lbl_edtAcrescimo.Text > '0,00' Then begin

              ibServsVenda.Close;
              ibServsVenda.SQL.Clear;
              ibServsVenda.SQL.Add('SELECT * FROM TBLSERVICOSVENDAS ORDER BY IDSERVS DESC');
              ibServsVenda.Open;

              IDServsAcrescimo := ibServsVenda.FieldByName('IDSERVS').AsInteger;

              ValorAcrescimo := StringReplace(lbl_edtAcrescimo.Text,ThousandSeparator,'',[rfReplaceAll]);
              ValorAcrescimo := StringReplace(ValorAcrescimo,DecimalSeparator,'.',[rfReplaceAll]);
              if ValorAcrescimo  = '' Then
                 ValorAcrescimo := '0';

              ibServsVenda.Close;
              ibServsVenda.SQL.Clear;
              ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
              + 'ACRESCIMO = ''' + ValorAcrescimo + ''' WHERE IDSERVS=''' + IntToStr(IDServsAcrescimo) + '''');
              ibServsVenda.ExecSQL;
              Commit(ibServsVenda);

            end;//if

////////////////////////////////////////////////////////////////////////////////

            frmCliente.listboxCupom.Clear;

            frmCliente.lbl_edtVlrUnit.Text  := '0,00';
            frmCliente.lbl_edtVlrTotal.Text := '0,00';
            frmCliente.lbl_edtTotalPedido.Text := '0,00';
            frmCliente.lbl_edtTelefone.Clear;
            frmCliente.lbl_edtCelular.Clear;
            frmCliente.lbl_edtNome.Clear;
            frmCliente.lbl_edtEndereco.Clear;
            frmCliente.lbl_edtNum.Clear;
            frmCliente.lbl_edtCompl.Clear;
            frmCliente.lbl_edtBairro.Clear;
            frmCliente.lbl_edtObs.Clear;
            frmCliente.lbl_edtTelefone.SetFocus;
            frmCliente.ckVlrUnitario.Checked := False;

          // IDVendasServs := (ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger + 1);

          end;//frmcliente showing;


////////////////////////////////////////////////////////////////////////////////
     end else begin

       lbl_edtValor.SetFocus;

     end;//if confirma msg

            frmCliente.listboxCupom.Clear;

            frmCliente.lbl_edtVlrUnit.Text  := '0,00';
            frmCliente.lbl_edtVlrTotal.Text := '0,00';
            frmCliente.lbl_edtTotalPedido.Text := '0,00';
            frmCliente.lbl_edtTelefone.Clear;
            frmCliente.lbl_edtCelular.Clear;
            frmCliente.lbl_edtNome.Clear;
            frmCliente.lbl_edtEndereco.Clear;
            frmCliente.lbl_edtNum.Clear;
            frmCliente.lbl_edtCompl.Clear;
            frmCliente.lbl_edtBairro.Clear;
            frmCliente.lbl_edtObs.Clear;
            frmCliente.lbl_edtTelefone.SetFocus;
            frmCliente.ckVlrUnitario.Checked := False;
     
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

            frmCliente.lbl_CodVenda.Caption := IntToStr(ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger);
     
           /// frmCliente.lbl_CodVenda.Caption := '';
         //   frmVendasLoja.lbl_CodVenda.Caption := IntToStr(ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger + 1);
           // IDVendasServs := (ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger + 1);

  end;//if frmcliente showing


  end;{with}


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

      {  if NPedido > '0' Then begin

          ibPedVenda.Close;
          ibPedVenda.SQL.Clear;
          ibPedVenda.SQL.Add('SELECT TBLPEDIDODEVENDA.*,CADPRODUTOS.NOME,CADPRODUTOS.VALORCUSTO FROM TBLPEDIDODEVENDA '
          + ' INNER JOIN CADPRODUTOS ON TBLPEDIDODEVENDA.IDPROD=CADPRODUTOS.IDPROD WHERE TBLPEDIDODEVENDA.IDNUMPEDIDO=''' + NPedido + ''' ORDER BY TBLPEDIDODEVENDA.IDPEDIDO');
          ibPedVenda.Open;

          if InsereVenda Then begin

           ibServsVendasCli.Close;
           ibServsVendasCli.SQL.Clear;
           ibServsVendasCli.SQL.Add('INSERT INTO TBLSERVICOSVENDASCLI '
           + '(DATA,IDCLI,NOMEFUNC,IDFUNC,HORA) values '
           + '(''' + FormatDateTime('mm-dd-yyyy',now) + ''','
           + StringCliVenda
           + ' ''' + NomeFunc + ''','
           + ' ''' + IntToStr(IDFuncCaixa) + ''','
           + ' ''' + FormatDateTime('hh:mm:ss',now) + ''')');
           ibServsVendasCli.ExecSQL;
           Commit(ibServsVendasCli);

           //select para trazer o ultimo id
           ibServsVendasCli.Close;
           ibServsVendasCli.SQL.Clear;
           ibServsVendasCli.SQL.Add('SELECT * FROM TBLSERVICOSVENDASCLI WHERE IDSERVSVENDA=''' + frmVendasLoja.lbl_CodVenda.Caption + '''');
           ibServsVendasCli.Open;

            InsereVenda := False;


          end;//if inserevenda

          //select para trazer o ultimo id
          ibServsVendasCli.Close;
          ibServsVendasCli.SQL.Clear;
          ibServsVendasCli.SQL.Add('SELECT * FROM TBLSERVICOSVENDASCLI WHERE IDSERVSVENDA=''' + frmVendasLoja.lbl_CodVenda.Caption + '''');
          ibServsVendasCli.Open;


           IDVendasServsReceb := StrToInt(frmVendasLoja.lbl_CodVenda.Caption);//ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger;


          while not ibPedVenda.Eof do begin

            ValordaVenda := StrToFloat(StringReplace(FloatToStr(ibPedVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));;

            TotaldaVenda := StringReplace(FloatToStr(ValordaVenda),ThousandSeparator,'',[rfReplaceAll]);
            TotaldaVenda := StringReplace(TotaldaVenda,DecimalSeparator,'.',[rfReplaceAll]);
////////////////////////////////////////////////////////////////////////////////

          // ROTINA PARA CALCULO DO CUSTO DO PRODUTO E GRAVAR O NOME

          NomeProduto  := ibPedVenda.FieldByName('NOME').AsString;


          Custo := StrtoFloat(StringReplace(FloattoStr(ibPedVenda.FieldByName('VALORCUSTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
          QtdeVendida := StrtoFloat(StringReplace(FloattoStr(ibPedVenda.FieldByName('QTDEPROD').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
          Custo := QtdeVendida * Custo;

          TotalCusto := StringReplace(FloattoStr(Custo),ThousandSeparator,'',[rfReplaceAll]);
          TotalCusto := StringReplace(TotalCusto,DecimalSeparator,'.',[rfReplaceAll]);

          TotalQtde := StringReplace(FloatToStr(QtdeVendida),ThousandSeparator,'',[rfReplaceAll]);
          TotalQtde := StringReplace(TotalQtde,DecimalSeparator,'.',[RFReplaceAll]);

            IDProdPedVenda := ibPedVenda.FieldByName('IDPROD').AsInteger;

////////////////////////////////////////////////////////////////////////////////
          SituacaoPed := 'Pago';
          Estoque := 'LOJA';
////////////////////////////////////////////////////////////////////////////////

          //ROTINA PARA CONTROLE DO ESTOQUE

          QtdeVendaEstoque := StrtoFloat(StringReplace(FloattoStr(ibPedVenda.FieldByName('QTDEPROD').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          ibEntrProdEstoque.Close;
          ibEntrProdEstoque.SQL.Clear;
          ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,'
          + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,TBLENTRADAESTOQUEPROD.ESTOQUEMIN,'
          + 'CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORCUSTO,CADPRODUTOS.TIPOPROD FROM TBLENTRADAESTOQUEPROD '
          + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
          + 'WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + IntToStr(IDProdPedVenda) + '''');
          ibEntrProdEstoque.Open;

          //ROTINA ABAIXO PARA SOMAR TOTAL DO ESTQUE E QUANTIDADE DO ESTOQUE

          //traz na variavel a qtde conf. prod da select identificado por id.
          QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
         // QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),DecimalSeparator,',',[rfReplaceAll]));

          QtdeEstoque  := QtdeEstoque - QtdeVendaEstoque;

          EstoqueFinal := StringReplace(FloattoStr(QtdeEstoque),ThousandSeparator,'',[rfReplaceAll]);
          EstoqueFinal := StringReplace(EstoqueFinal,DecimalSeparator,'.',[rfReplaceAll]);

          //AQUI VAI O CALCULO DO TOTAL CONFORME VENDE O PRODUTO
          VlrProduto  := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORVENDAA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          VlrProduto  := QtdeEstoque * VlrProduto;

          TotalProdEstoque := StringReplace(FloattoStr(VlrProduto),ThousandSeparator,'',[rfReplaceAll]);
          TotalProdEstoque := StringReplace(TotalProdEstoque,DecimalSeparator,'.',[rfReplaceAll]);



          if ibEntrProdEstoque.RecordCount > 0 Then begin

             ibEntrProdEstoque.Close;
             ibEntrProdEstoque.SQL.Clear;
             ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
             +'QUANTIDADE=''' + (EstoqueFinal) + ''','
          //   +'TOTALCUSTO=''' + TotalCusto + ''','
             +'VLRTOTAL=''' + (TotalProdEstoque) +  ''' WHERE IDPROD=''' + IntToStr(IDProdPedVenda) + '''');
             ibEntrProdEstoque.ExecSQL;
             Commit(ibEntrProdEstoque);

           end;//if recordcount

////////////////////////////////////////////////////////////////////////////////

          ibServsVenda.Close;
          ibServsVenda.SQL.Clear;
          ibServsVenda.SQL.Add('INSERT INTO TBLSERVICOSVENDAS '
          + ' (DATA,HORA,IDPROD,VLRTOTAL,VLRUNIT,IDSERVSVENDA,IDCLIENTE,PENDENTEPAGO,'
          + 'NOMEPROD,NPEDIDO,NPEDIDOFIXO,SITUACAOPEDIDO,QTDE,ESTOQUE) values '
          + ' (''' + FormatDateTime('mm-dd-yyyy',now) + ''','
          + ' ''' + FormatDateTime('hh:mm:ss',now) + ''','
          + ' ''' + IntToStr(IDProdPedVenda) + ''','
          + ' ''' + TotaldaVenda + ''','
          + ' ''' + TotalCusto + ''','
          + ' ''' + IntToStr(IDVendasServsReceb) + ''','
          + ' ''' + IntToStr(IDVendaCliente) + ''','
          + ' ''' + SituacaoCliente + ''','
          + ' ''' + NomeProduto + ''','
          + ' ''' + NPedido + ''','
          + ' ''' + NPedido + ''','
          + ' ''' + SituacaoPed + ''','
          + ' ''' + TotalQtde + ''','
          + ' ''' + Estoque + ''')');
          ibServsVenda.ExecSQL;
          Commit(ibServsVenda);

          ibPedVenda.Next;

         end;//WHILE
////////////////////////////////////////////////////////////////////////////////

          ibPedVenda.Close;
          ibPedVenda.SQL.Clear;
          ibPedVenda.SQL.Add('UPDATE TBLPEDIDODEVENDA SET '
          + 'SITUACAOPEDIDO = ''' + SituacaoPed + ''' WHERE IDNUMPEDIDO=''' + (NPedido) + '''');
          ibPedVenda.ExecSQL;
          Commit(ibPedVenda);

         end;  }

////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////

  end;

end;

procedure TfrmRecebeLoja.lbl_edtTrocoKeyPress(Sender: TObject;
  var Key: Char);

var

Produto : Array[0..10] of String;
FraseRodape,Frase,DesenhodaDivisao : String;
FraseRodapePed,FrasePed,DesenhodaDivisaoPed : String;

begin

  with dmModule do begin

    if Key = #13 Then begin

    {  if frmVendasLoja.Showing Then begin

      Commit(ibConfig);
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

          frmVendasLoja.listboxCupom.Items.Add(DesenhodaDivisao);
          frmVendasLoja.listboxCupom.Items.Add('TOTAL DA VENDA' + ' ' + '=' + ' ' +  Produto[3]);
          frmVendasLoja.listboxCupom.Items.Add(Produto[1] + ' ' + '=' + ' ' + Produto[3]);

          frmVendasLoja.listboxCupom.Items.Add('TROCO' + ' ' + '=' + ' ' +Produto[4]);
          frmVendasLoja.listboxCupom.Items.Add(DesenhodaDivisao);
          frmVendasLoja.listboxCupom.Items.Add(Frase);


        end else begin

          Produto[0]:=frmVendasLoja.lbl_edtVlrTotal.Text;
          Produto[1]:=cboTipoPagto.Text;
          Produto[2]:=lbl_edtValor.Text;
          Produto[3]:=lbl_edtTotalVenda.Text;
          Produto[4]:=lbl_edtTroco.Text;
          Produto[5]:=lbl_edtDesconto.Text;
          Produto[6]:=frmVendasLoja.lbl_edtSubTotal.Caption;

          if (lbl_edtDesconto.Text = '')or (lbl_edtDesconto.Text = '0,00') Then begin

            frmVendasLoja.listboxCupom.Items.Add(DesenhodaDivisao);
            frmVendasLoja.listboxCupom.Items.Add('TOTAL DA VENDA' + ' ' + '=' + ' ' +  Produto[3]);
            frmVendasLoja.listboxCupom.Items.Add(Produto[1] + ' ' + '=' + ' ' + Produto[2]);

            frmVendasLoja.listboxCupom.Items.Add('TROCO' + ' ' + '=' + ' ' +Produto[4]);
            frmVendasLoja.listboxCupom.Items.Add(DesenhodaDivisao);
            frmVendasLoja.listboxCupom.Items.Add(Frase);

          end else if lbl_edtDesconto.Text > '0,00' Then begin

            frmVendasLoja.listboxCupom.Items.Add(DesenhodaDivisao);
            frmVendasLoja.listboxCupom.Items.Add('TOTAL DA VENDA' + ' ' + '=' + ' ' +  Produto[6]);
            frmVendasLoja.listboxCupom.Items.Add('DESCONTO' + ' ' + '=' + ' ' +  Produto[5]);
            frmVendasLoja.listboxCupom.Items.Add('TOTAL A PAGAR COM DESCONTO' + ' ' + '=' + ' ' +  Produto[3]);
            frmVendasLoja.listboxCupom.Items.Add(Produto[1] + ' ' + '=' + ' ' + Produto[2]);

            frmVendasLoja.listboxCupom.Items.Add('TROCO' + ' ' + '=' + ' ' +Produto[4]);
            frmVendasLoja.listboxCupom.Items.Add(DesenhodaDivisao);
            frmVendasLoja.listboxCupom.Items.Add(Frase);

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

          frmVendasLoja.listboxCupom.Items.Add(DesenhodaDivisao);
          frmVendasLoja.listboxCupom.Items.Add('TOTAL DA VENDA' + ' ' + '=' + ' ' +  Produto[3]);
          frmVendasLoja.listboxCupom.Items.Add(Produto[1] + ' ' + '=' + ' ' + Produto[3]);

          frmVendasLoja.listboxCupom.Items.Add('TROCO' + ' ' + '=' + ' ' +Produto[4]);
          frmVendasLoja.listboxCupom.Items.Add(DesenhodaDivisao);
         // frmVendasLoja.listboxCupom.Items.Add('       Obrigado Pela Preferencia!');
        // frmVendasLoja.listboxCupom.Items.Add('              Volte Sempre!');
        //  frmVendasLoja.listboxCupom.Items.Add('        ** Sem Efeito Fiscal **');

        end else begin

          Produto[0]:=frmVendasLoja.lbl_edtVlrTotal.Text;
          Produto[1]:=cboTipoPagto.Text;
          Produto[2]:=lbl_edtValor.Text;
          Produto[3]:=lbl_edtTotalVenda.Text;
          Produto[4]:=lbl_edtTroco.Text;
          Produto[5]:=lbl_edtDesconto.Text;
          Produto[6]:=frmVendasLoja.lbl_edtSubTotal.Caption;

          if (lbl_edtDesconto.Text = '')or (lbl_edtDesconto.Text = '0,00') Then begin

            frmVendasLoja.listboxCupom.Items.Add(DesenhodaDivisao);
            frmVendasLoja.listboxCupom.Items.Add('TOTAL DA VENDA' + ' ' + '=' + ' ' +  Produto[3]);
            frmVendasLoja.listboxCupom.Items.Add(Produto[1] + ' ' + '=' + ' ' + Produto[2]);

            frmVendasLoja.listboxCupom.Items.Add('TROCO' + ' ' + '=' + ' ' +Produto[4]);
            frmVendasLoja.listboxCupom.Items.Add(DesenhodaDivisao);
         //   frmVendasLoja.listboxCupom.Items.Add('       Obrigado Pela Preferencia!');
         //   frmVendasLoja.listboxCupom.Items.Add('              Volte Sempre!');
          //  frmVendasLoja.listboxCupom.Items.Add('       ** Sem Efeito Fiscal **');

          end else if lbl_edtDesconto.Text > '0,00' Then begin

            frmVendasLoja.listboxCupom.Items.Add(DesenhodaDivisao);
            frmVendasLoja.listboxCupom.Items.Add('TOTAL DA VENDA' + ' ' + '=' + ' ' +  Produto[6]);
            frmVendasLoja.listboxCupom.Items.Add('DESCONTO' + ' ' + '=' + ' ' +  Produto[5]);
            frmVendasLoja.listboxCupom.Items.Add('TOTAL A PAGAR COM DESCONTO' + ' ' + '=' + ' ' +  Produto[3]);
            frmVendasLoja.listboxCupom.Items.Add(Produto[1] + ' ' + '=' + ' ' + Produto[2]);

            frmVendasLoja.listboxCupom.Items.Add('TROCO' + ' ' + '=' + ' ' +Produto[4]);
            frmVendasLoja.listboxCupom.Items.Add(DesenhodaDivisao);
           // frmVendasLoja.listboxCupom.Items.Add('       Obrigado Pela Preferencia!');
          //  frmVendasLoja.listboxCupom.Items.Add('              Volte Sempre!');
          //  frmVendasLoja.listboxCupom.Items.Add('       ** Sem Efeito Fiscal **');

          end;//if campo desconto

        end;//if

      end;//iffrase rodape

      end;//if frmvendaloja showing  }
////////////////////////////////////////////////////////////////////////////////

       { if frmCliente.Showing Then begin

          Produto[0]:=frmCliente.lbl_edtTotalPedido.Text;
          Produto[1]:=cboTipoPagto.Text;
          Produto[2]:=lbl_edtValor.Text;
          Produto[3]:=lbl_edtTotalVenda.Text;
          Produto[4]:=lbl_edtTroco.Text;
          Produto[5]:=lbl_edtDesconto.Text;
          //Produto[6]:=frmVendasLoja.lbl_edtSubTotal.Caption;

          Commit(ibConfig);
          ibConfig.Close;
          ibConfig.SQL.Clear;
          ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
          ibConfig.Open;}


        {  FrasePed            := ibConfig.FieldByName('FRASE').AsString;
          FraseRodapePed      := ibConfig.FieldByName('FRASERODAPE').AsString;
          DesenhodaDivisaoPed := ibConfig.FieldByName('DESENHODIVISAO').AsString;  }


         { if FraseRodapePed = 'Sim'Then begin

            if (lbl_edtDesconto.Text = '')or (lbl_edtDesconto.Text = '0,00') Then begin

              frmCliente.listboxCupom.Items.Add(DesenhodaDivisaoPed);
              frmCliente.listboxCupom.Items.Add('TOTAL..:(R$)' + ' ' + '=' + ' ' +  Produto[3]);
              frmCliente.listboxCupom.Items.Add(Produto[1] + ' ' + '=' + ' ' + Produto[2]);
              frmCliente.listboxCupom.Items.Add('TROCO' + ' ' + '=' + ' ' +Produto[4]);
              frmCliente.listboxCupom.Items.Add(DesenhodaDivisaoPed);
              frmCliente.listboxCupom.Items.Add(FrasePed);

            end else if lbl_edtDesconto.Text > '0,00' Then begin

              frmCliente.listboxCupom.Items.Add(DesenhodaDivisaoPed);
              frmCliente.listboxCupom.Items.Add('TOTAL..:(R$)' + ' ' + '=' + ' ' +  Produto[0]);
              frmCliente.listboxCupom.Items.Add('DESCONTO' + ' ' + '=' + ' ' +  Produto[5]);
              frmCliente.listboxCupom.Items.Add('TOTAL A PAGAR COM DESCONTO' + ' ' + '=' + ' ' +  Produto[3]);
              frmCliente.listboxCupom.Items.Add(Produto[1] + ' ' + '=' + ' ' + Produto[2]);
              frmCliente.listboxCupom.Items.Add('TROCO' + ' ' + '=' + ' ' +Produto[4]);
              frmCliente.listboxCupom.Items.Add(DesenhodaDivisaoPed);
              frmCliente.listboxCupom.Items.Add(FrasePed);

            end;//if campo desconto


          end;

          if FraseRodapePed = 'Nao'Then begin

            if (lbl_edtDesconto.Text = '')or (lbl_edtDesconto.Text = '0,00') Then begin

              frmCliente.listboxCupom.Items.Add(DesenhodaDivisaoPed);
              frmCliente.listboxCupom.Items.Add('TOTAL..:(R$)' + ' ' + '=' + ' ' +  Produto[3]);
              frmCliente.listboxCupom.Items.Add(Produto[1] + ' ' + '=' + ' ' + Produto[2]);

              frmCliente.listboxCupom.Items.Add('TROCO' + ' ' + '=' + ' ' +Produto[4]);
              frmCliente.listboxCupom.Items.Add(DesenhodaDivisaoPed);
           //   frmCliente.listboxCupom.Items.Add('       Obrigado Pela Preferencia!');
           //   frmCliente.listboxCupom.Items.Add('              Volte Sempre!');
           //   frmCliente.listboxCupom.Items.Add('        ** Sem Efeito Fiscal **');

            end else if lbl_edtDesconto.Text > '0,00' Then begin

              frmCliente.listboxCupom.Items.Add(DesenhodaDivisaoPed);
              frmCliente.listboxCupom.Items.Add('TOTAL..:(R$)' + ' ' + '=' + ' ' +  Produto[0]);
              frmCliente.listboxCupom.Items.Add('DESCONTO' + ' ' + '=' + ' ' +  Produto[5]);
              frmCliente.listboxCupom.Items.Add('TOTAL A PAGAR COM DESCONTO' + ' ' + '=' + ' ' +  Produto[3]);
              frmCliente.listboxCupom.Items.Add(Produto[1] + ' ' + '=' + ' ' + Produto[2]);
              frmCliente.listboxCupom.Items.Add('TROCO' + ' ' + '=' + ' ' +Produto[4]);
              frmCliente.listboxCupom.Items.Add(DesenhodaDivisaoPed);
            // frmCliente.listboxCupom.Items.Add('       Obrigado Pela Preferencia!');
           //   frmCliente.listboxCupom.Items.Add('              Volte Sempre!');
           //   frmCliente.listboxCupom.Items.Add('        ** Sem Efeito Fiscal **');

            end;//if campo desconto

          end;// if frase rodapeped }

     //   end;// if frmcliente showing

////////////////////////////////////////////////////////////////////////////////

        lbl_edtSair.SetFocus;

    end;//if key #13

  end;//with

end;

procedure TfrmRecebeLoja.lbl_edtSairKeyPress(Sender: TObject;
  var Key: Char);
begin

  with dmModule do begin

  frmRestaurante.lbl_CnpjCpfP.Caption := '';
  frmRestaurante.lbl_edtCnpjCpf.Caption := '';
  frmRestaurante.lbl_Cliente.Caption := '';
  frmRestaurante.lbl_CodCliente.Caption := '';
  frmRestaurante.lbl_TipoPreco.Caption := '';
  
    if Key = #13 Then begin

   {   StringTipoPagamento := '0';

    if frmVendasLoja.Showing Then begin

      frmVendasLoja.listboxCupom.Clear;
      frmRecebeLoja.Close;

    end;//if frmVendasLoja showing  }

    if frmCliente.Showing Then begin

      frmCliente.listboxCupom.Clear;
      ibServsVenda.Close;
      ibTempVendaLoja.Close;
      frmRecebeLoja.Close;

    end;//if frmCliente showing

    if frmRestaurante.Showing Then begin

      frmRecebeLoja.Close;

    end;//if

   end;

  end;//with

end;

procedure TfrmRecebeLoja.lbl_edtSairExit(Sender: TObject);
begin

  lbl_edtDesconto.Text   := '0,00';
  lbl_edtTotalVenda.Text := '0,00';
  lbl_edtValorPago.Text  := '0,00';
  lbl_Informacao.Caption := '';
  frmRestaurante.lbl_IDFunc.Caption := '';
  frmRestaurante.lbl_Funcionario.Caption := '';
  frmRestaurante.lbl_DetalheFunc.Caption := '';
   
 // frmVendasLoja.cboProduto.ClearSelection;


end;

procedure TfrmRecebeLoja.lbl_edtValorKeyPress(Sender: TObject;
  var Key: Char);
begin

  if Key = #13 then begin

    cboTPagto.SetFocus;

  end;

end;

procedure TfrmRecebeLoja.lbl_edtDescontoKeyPress(Sender: TObject;
  var Key: Char);
begin

  if Key = #13 then begin

    lbl_edtAcrescimo.SetFocus;

  end;

end;

procedure TfrmRecebeLoja.lbl_edtDescontoExit(Sender: TObject);

var

Valor1,Valor2 : Real;


begin

  with dmModule do begin

   if lbl_edtTotalVenda.Text <> '' Then begin //se for diferente de branco executa rotina abaixo.

      if (Pos(',',lbl_edtTotalVenda.Text)>0) and (lbl_edtTotalVenda.Text <> '') Then begin

        Valor1 := StrToFloat(StringReplace(lbl_edtTotalVenda.Text,ThousandSeparator,'',[rfReplaceAll]));
        Valor2 := StrToFloat(StringReplace(lbl_edtDesconto.Text,ThousandSeparator,'',[rfReplaceAll]));
        lbl_edtTotalVenda.Text := FormatFloat(',0.00',(Valor1 - Valor2));


      end else begin

        Valor1 := StrToFloat(StringReplace(lbl_edtTotalVenda.Text,ThousandSeparator,'',[rfReplaceAll]));
        Valor2 := StrToFloat(StringReplace(lbl_edtDesconto.Text,ThousandSeparator,'',[rfReplaceAll]));
        lbl_edtTotalVenda.Text := FormatFloat(',0.00',(Valor1 - Valor2));


      end;{if}

    end;{if}

    lbl_edtDesconto.Text := FormatFloat(CasasDecimais('Produtos'),StrToFloat(lbl_edtDesconto.Text)); //FormatFloat(casa',0.00',StrToFloat(lbl_edtValor.Text));

  end;{with}

end;

procedure TfrmRecebeLoja.lbl_edtTotalVendaExit(Sender: TObject);
var

Valor1,Valor2,Valor3 : Real;


begin
  with dmModule do begin

    if cboTipoPagto.Text = 'PENDENTE' Then begin

      if lbl_edtValor.Text <> '' Then begin //se for em branco executa rotina abaixo.

        if (Pos(',',lbl_edtValor.Text)>0) and (lbl_edtValor.Text > '0,00') Then begin

          Valor1 := StrToFloat(StringReplace(lbl_edtValor.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor2 := StrToFloat(StringReplace(lbl_edtTotalVenda.Text,ThousandSeparator,'',[rfReplaceAll]));

          if lbl_edtValorPago.Text >'0,00' Then begin

          Valor3 := StrToFloat(StringReplace(lbl_edtValorPago.Text,ThousandSeparator,'',[rfReplaceAll]));
          lbl_edtTroco.Text := FormatFloat(',0.00',(Valor1 + Valor3 - Valor2));

          end;

          if (lbl_edtValor.Text < lbl_edtTotalVenda.Text)then begin

          lbl_Informacao.Caption :='PENDENTE = ' + FormatFloat(',0.00',(Valor2 - Valor1));

          end;//if

          if (lbl_edtValor.Text = '0,00') Then begin

          lbl_Informacao.Caption :='PENDENTE = '+ FormatFloat(',0.00',(Valor2));

          end;

        end;{if}

      end;{if}

      //frmVendasLoja.lbl_edtInformacao.Caption :='Troco : ' + lbl_edtTroco.Text;

    end;//if cbo = pendente


    if cboTipoPagto.Text <> 'PENDENTE' Then begin

      if lbl_edtValor.Text <> '' Then begin //se for em branco executa rotina abaixo.

        if (Pos(',',lbl_edtValor.Text)>0) and (lbl_edtValor.Text > '0,00') Then begin

          Valor1 := StrToFloat(StringReplace(lbl_edtValor.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor2 := StrToFloat(StringReplace(lbl_edtTotalVenda.Text,ThousandSeparator,'',[rfReplaceAll]));

          if lbl_edtValorPago.Text >'0,00' Then begin

          Valor3 := StrToFloat(StringReplace(lbl_edtValorPago.Text,ThousandSeparator,'',[rfReplaceAll]));
          lbl_edtTroco.Text := FormatFloat(',0.00',(Valor1 + Valor3 - Valor2));

          end else begin

          lbl_edtTroco.Text := FormatFloat(',0.00',(Valor1 - Valor2));

          end;//if

          if (lbl_edtValor.Text = '0,00') Then begin

          lbl_edtTroco.Text := FormatFloat(',0.00',(Valor1));

          end;

        end;{if}

      end;{if}

 //     frmVendasLoja.lbl_edtInformacao.Caption :='Troco : ' + lbl_edtTroco.Text;

    end;//if cbo <> pendente

 {   if lbl_edtSubTotal.Text = '' Then begin

     lbl_edtSubTotal.Text := FormatFloat(',0.00',Valor3);

    end else begin

     Valor4 := StrToFloat(StringReplace(lbl_edtSubTotal.Text,ThousandSeparator,'',[rfReplaceAll]));
     lbl_edtSubTotal.Text := FormatFloat(',0.00',(Valor4 + Valor3));   }

   // end;{if}

   // lbl_edtValor.Text := FormatFloat(CasasDecimais('Produtos'),StrToFloat(lbl_edtValor.Text)); //FormatFloat(casa',0.00',StrToFloat(lbl_edtValor.Text));

  end;{with}


end;

procedure TfrmRecebeLoja.lbl_edtNumChequeKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key = #13 Then begin

    lbl_edtValor.SetFocus;

  end;

end;

procedure TfrmRecebeLoja.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

{case key of

VK_F2 :begin

frmBuscaClientes.ShowModal;

end;//begin

end;//case }
end;

procedure TfrmRecebeLoja.lbl_edtAcrescimoKeyPress(Sender: TObject;
  var Key: Char);
begin

  if Key = #13 then begin

    lbl_edtTotalVenda.SetFocus;

  end;

end;

procedure TfrmRecebeLoja.lbl_edtAcrescimoExit(Sender: TObject);

var

Valor1,Valor2 : Real;


begin

  with dmModule do begin

   if lbl_edtTotalVenda.Text <> '' Then begin //se for diferente de branco executa rotina abaixo.

      if (Pos(',',lbl_edtTotalVenda.Text)>0) and (lbl_edtTotalVenda.Text <> '') Then begin

        Valor1 := StrToFloat(StringReplace(lbl_edtTotalVenda.Text,ThousandSeparator,'',[rfReplaceAll]));
        Valor2 := StrToFloat(StringReplace(lbl_edtAcrescimo.Text,ThousandSeparator,'',[rfReplaceAll]));
        lbl_edtTotalVenda.Text := FormatFloat(',0.00',(Valor1 + Valor2));

      end else begin

        Valor1 := StrToFloat(StringReplace(lbl_edtTotalVenda.Text,ThousandSeparator,'',[rfReplaceAll]));
        Valor2 := StrToFloat(StringReplace(lbl_edtAcrescimo.Text,ThousandSeparator,'',[rfReplaceAll]));
        lbl_edtTotalVenda.Text := FormatFloat(',0.00',(Valor1 + Valor2));


      end;{if}

    end;{if}

    lbl_edtAcrescimo.Text := FormatFloat(CasasDecimais('Produtos'),StrToFloat(lbl_edtAcrescimo.Text)); //FormatFloat(casa',0.00',StrToFloat(lbl_edtValor.Text));

  end;{with}

end;

procedure TfrmRecebeLoja.lbl_edtValorPagoExit(Sender: TObject);

begin

  lbl_edtValorPago.Text := FormatFloat(CasasDecimais('Produtos'),StrToFloat(lbl_edtValorPago.Text));

end;

procedure TfrmRecebeLoja.lbl_edtValorPagoKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtAcrescimo.SetFocus;

  end;//if

end;

procedure TfrmRecebeLoja.cboTPagtoKeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtValorPago.SetFocus;

  end;
  
end;

end.
