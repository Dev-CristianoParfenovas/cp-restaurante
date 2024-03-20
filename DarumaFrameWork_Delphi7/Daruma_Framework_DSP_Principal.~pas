unit Daruma_Framework_DSP_Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Menus;

type
  TFR_MenuDisplay_Principal = class(TForm)
    MainMenu1: TMainMenu;
    MtodosparaCursor1: TMenuItem;
    MtodoiCursorLigarDSPDarumaFramework1: TMenuItem;
    MtodoiCursorMoverDSPDarumaFramework1: TMenuItem;
    MtodoiCursorMoverAbaixoDSPDarumaFramework1: TMenuItem;
    MtodoiCursorMoverAcimaDSPDarumaFramework1: TMenuItem;
    MtodoiCursorPosicionarDSPDarumaFramework1: TMenuItem;
    MensagemPromocional1: TMenuItem;
    GeralDisplay1: TMenuItem;
    iIniciarMsgPromoDSPDarumaFramework1: TMenuItem;
    iEncerrarMsgPromoDSPDarumaFramework1: TMenuItem;
    iEnviarTextoDSPDarumaFramework1: TMenuItem;
    MtodoiLimparDSPDarumaFramework1: TMenuItem;
    MtodoiResetarDSPDarumaFramework1: TMenuItem;
    estescomECF1: TMenuItem;
    estedeCFeDisplay1: TMenuItem;
    btnFechar: TButton;
    DarumaFramework1: TMenuItem;
    MtodoeDefinirProdutoDaruma1: TMenuItem;
    LB_Duvidas: TLabel;
    PN_Dual: TPanel;
    I_DDC: TImage;
    LB_Dual: TLabel;
    LB_DLL: TLabel;
    Registry1: TMenuItem;
    Mtodo1: TMenuItem;
    procedure MtodoiResetarDSPDarumaFramework1Click(Sender: TObject);
    procedure MtodoiLimparDSPDarumaFramework1Click(Sender: TObject);
    procedure iIniciarMsgPromoDSPDarumaFramework1Click(Sender: TObject);
    procedure iEncerrarMsgPromoDSPDarumaFramework1Click(Sender: TObject);
    procedure MtodoiCursorMoverAbaixoDSPDarumaFramework1Click(
      Sender: TObject);
    procedure MtodoiCursorMoverAcimaDSPDarumaFramework1Click(
      Sender: TObject);
    procedure MtodoiCursorLigarDSPDarumaFramework1Click(Sender: TObject);
    procedure MtodoiCursorMoverDSPDarumaFramework1Click(Sender: TObject);
    procedure iEnviarTextoDSPDarumaFramework1Click(Sender: TObject);
    procedure estedeCFeDisplay1Click(Sender: TObject);
    procedure MtodoiCursorPosicionarDSPDarumaFramework1Click(
      Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure MtodoeDefinirProdutoDaruma1Click(Sender: TObject);
    procedure Mtodo1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  //Declaracao da Dll Integradora DarumaFramework.dll - Módulo DSP

//CUPOM FISCAL
		//Métodos para cursor
		function iCursorLigar_DSP_DarumaFramework(iHabilitar:Integer): Integer; StdCall; External 'DarumaFramework.dll';
		function iCursorMover_DSP_DarumaFramework(iPosicao:Integer): Integer; StdCall; External 'DarumaFramework.dll';
    function iCursorMoverAbaixo_DSP_DarumaFramework(): Integer; StdCall; External 'DarumaFramework.dll';
    function iCursorMoverAcima_DSP_DarumaFramework(): Integer; StdCall; External 'DarumaFramework.dll';
    function iCursorPosicionar_DSP_DarumaFramework(iPosicaoX:Integer; iPosicaoY:Integer): Integer; StdCall; External 'DarumaFramework.dll';

    //Métodos para Mensagem Promocional
    function iIniciarMsgPromo_DSP_DarumaFramework(): Integer; StdCall; External 'DarumaFramework.dll';
    function iEncerrarMsgPromo_DSP_DarumaFramework(): Integer; StdCall; External 'DarumaFramework.dll';

    //Métodos gerais
    function iResetar_DSP_DarumaFramework(): Integer; StdCall; External 'DarumaFramework.dll';
    function iLimpar_DSP_DarumaFramework(iLimpar:Integer): Integer; StdCall; External 'DarumaFramework.dll';
    function iEnviarTexto_DSP_DarumaFramework(strTexto:String): Integer; StdCall; External 'DarumaFramework.dll';

    function eDefinirProduto_Daruma(szProduto: String): Integer; StdCall; External 'DarumaFrameWork.dll'
    function regAlterarValor_Daruma(pszPathChave:string;pszValor:string):Integer; StdCall; External 'DarumaFramework.dll';
		function regRetornaValorChave_DarumaFramework(pszProduto:string;pszChave:string;pszValor:string):Integer; StdCall; External 'DarumaFramework.dll';


var
  FR_MenuDisplay_Principal: TFR_MenuDisplay_Principal;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_MenuDisplay_Principal.MtodoiResetarDSPDarumaFramework1Click(
  Sender: TObject);
var
  iRetorno: Integer;
begin
iRetorno:=iResetar_DSP_DarumaFramework();
if (iRetorno = 1) then
        begin
          Application.MessageBox('Método executado com sucesso.', 'DarumaFramework', MB_OK + MB_ICONINFORMATION);
        end
      else
        begin
          Application.MessageBox('Erro ao executar método!','DarumaFramework', MB_OK + MB_ICONERROR);
        end;

end;

procedure TFR_MenuDisplay_Principal.MtodoiLimparDSPDarumaFramework1Click(
  Sender: TObject);
var
  strLinha: string;
  boRetorno: Boolean;
  iRetorno: Integer;
begin
  strLinha := '';
  boRetorno := InputQuery('DarumaFramework', 'Digite 0 para limpar as 2 linhas, 1 para limpar a primeira linha e 2 para limpar a segunda linha', strLinha);
  if ((boRetorno = True) and (strLinha <> '')) then
    begin
      iRetorno := iLimpar_DSP_DarumaFramework(StrToInt(strLinha));
      if (iRetorno = 1) then
        begin
          Application.MessageBox('Método executado com sucesso.', 'DarumaFramework', MB_OK + MB_ICONINFORMATION);
        end
      else
        begin
          Application.MessageBox('Erro ao executar método!','DarumaFramework', MB_OK + MB_ICONERROR);
        end;
    end;
end;

procedure TFR_MenuDisplay_Principal.iIniciarMsgPromoDSPDarumaFramework1Click(
  Sender: TObject);
var
  iRetorno: Integer;
begin
iRetorno:=iIniciarMsgPromo_DSP_DarumaFramework();
if (iRetorno = 1) then
        begin
          Application.MessageBox('Método executado com sucesso.', 'DarumaFramework', MB_OK + MB_ICONINFORMATION);
        end
      else
        begin
          Application.MessageBox('Erro ao executar método!','DarumaFramework', MB_OK + MB_ICONERROR);
        end;

end;

procedure TFR_MenuDisplay_Principal.iEncerrarMsgPromoDSPDarumaFramework1Click(
  Sender: TObject);
var
  iRetorno: Integer;
begin
iRetorno:=iEncerrarMsgPromo_DSP_DarumaFramework();
if (iRetorno = 1) then
        begin
          Application.MessageBox('Método executado com sucesso.', 'DarumaFramework', MB_OK + MB_ICONINFORMATION);
        end
      else
        begin
          Application.MessageBox('Erro ao executar método!','DarumaFramework', MB_OK + MB_ICONERROR);
        end;

end;

procedure TFR_MenuDisplay_Principal.MtodoiCursorMoverAbaixoDSPDarumaFramework1Click(
  Sender: TObject);
var
  iRetorno: Integer;
begin
iRetorno:=iCursorMoverAbaixo_DSP_DarumaFramework();
if (iRetorno = 1) then
        begin
          Application.MessageBox('Método executado com sucesso.', 'DarumaFramework', MB_OK + MB_ICONINFORMATION);
        end
      else
        begin
          Application.MessageBox('Erro ao executar método!','DarumaFramework', MB_OK + MB_ICONERROR);
        end;

end;

procedure TFR_MenuDisplay_Principal.MtodoiCursorMoverAcimaDSPDarumaFramework1Click(
  Sender: TObject);
var
  iRetorno: Integer;
begin
iRetorno:=iCursorMoverAcima_DSP_DarumaFramework();
if (iRetorno = 1) then
        begin
          Application.MessageBox('Método executado com sucesso.', 'DarumaFramework', MB_OK + MB_ICONINFORMATION);
        end
      else
        begin
          Application.MessageBox('Erro ao executar método!','DarumaFramework', MB_OK + MB_ICONERROR);
        end;

end;
procedure TFR_MenuDisplay_Principal.MtodoiCursorLigarDSPDarumaFramework1Click(
  Sender: TObject);
var
  stStatus: string;
  boRetorno: Boolean;
  iRetorno: Integer;
begin
  stStatus := '';
  boRetorno := InputQuery('DarumaFramework', 'Digite 1 para ligar e 0 para desligar:', stStatus);
  if ((boRetorno = True) and (stStatus <> '')) then
    begin
      iRetorno := iCursorLigar_DSP_DarumaFramework(StrToInt(stStatus));
      if (iRetorno = 1) then
        begin
          Application.MessageBox('Método executado com sucesso.', 'DarumaFramework', MB_OK + MB_ICONINFORMATION);
        end
      else
        begin
          Application.MessageBox('Erro ao executar método!','DarumaFramework', MB_OK + MB_ICONERROR);
        end;
    end;
end;
procedure TFR_MenuDisplay_Principal.MtodoiCursorMoverDSPDarumaFramework1Click(
  Sender: TObject);
var
  stStatus: string;
  boRetorno: Boolean;
  iRetorno: Integer;
begin
  stStatus := '';
  boRetorno := InputQuery('DarumaFramework', 'Digite 1 para mover para frente e -1 para trás:', stStatus);
  if ((boRetorno = True) and (stStatus <> '')) then
    begin
      iRetorno := iCursorMover_DSP_DarumaFramework(StrToInt(stStatus));
      if (iRetorno = 1) then
        begin
          Application.MessageBox('Método executado com sucesso.', 'DarumaFramework', MB_OK + MB_ICONINFORMATION);
        end
      else
        begin
          Application.MessageBox('Erro ao executar método!','DarumaFramework', MB_OK + MB_ICONERROR);
        end;
    end;
end;
procedure TFR_MenuDisplay_Principal.iEnviarTextoDSPDarumaFramework1Click(
  Sender: TObject);
var
  stTexto: string;
  boRetorno: Boolean;
  iRetorno: Integer;
begin
  stTexto := '';
  boRetorno := InputQuery('DarumaFramework', 'Digite o texto que deseja enviar para o Display:', stTexto);
  if ((boRetorno = True) and (stTexto <> '')) then
    begin
      iRetorno := iEnviarTexto_DSP_DarumaFramework(stTexto);
      if (iRetorno = 1) then
        begin
          Application.MessageBox('Método executado com sucesso.', 'DarumaFramework', MB_OK + MB_ICONINFORMATION);
        end
      else
        begin
          Application.MessageBox('Erro ao executar método!','DarumaFramework', MB_OK + MB_ICONERROR);
        end;
    end;
end;
procedure TFR_MenuDisplay_Principal.estedeCFeDisplay1Click(
  Sender: TObject);
  var
  iRetorno: Integer;
begin

end;

procedure TFR_MenuDisplay_Principal.MtodoiCursorPosicionarDSPDarumaFramework1Click(
  Sender: TObject);
var
  StPosX: string;
  StPosY: string;
  boRetorno: Boolean;
  boRetorno2: Boolean;
  iRetorno: Integer;
begin
  StPosX := '';
  StPosY := '';
  boRetorno := InputQuery('DarumaFramework', 'Entre com o valor para X:', StPosX);
  boRetorno2 := InputQuery('DarumaFramework', 'Entre com o valor para Y:', StPosY);
  if ((boRetorno = True) and (boRetorno2 = True)and(StPosX <> '')and(StPosY <> '')) then
    begin
      iRetorno := iCursorPosicionar_DSP_DarumaFramework(StrToInt(StPosX),StrToInt(StPosY));
      if (iRetorno = 1) then
        begin
          Application.MessageBox('Método executado com sucesso.', 'DarumaFramework', MB_OK + MB_ICONINFORMATION);
        end
      else
        begin
          Application.MessageBox('Erro ao executar método!','DarumaFramework', MB_OK + MB_ICONERROR);
        end;
    end;
end;
procedure TFR_MenuDisplay_Principal.btnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TFR_MenuDisplay_Principal.MtodoeDefinirProdutoDaruma1Click(
  Sender: TObject);
var
  stProduto: string;
  iRetorno: Integer;
begin
  stProduto := 'DSP';

      iRetorno := eDefinirProduto_Daruma(stProduto);
      if (iRetorno = 1) then
        begin
          Application.MessageBox('Configuração realizada com sucesso, produto DSP.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
        end
      else
        begin
          Application.MessageBox('Erro ao incluir dados no Registro(Registry)!','Daruma DLL Framework', MB_OK + MB_ICONERROR);
        end;
    end;
procedure TFR_MenuDisplay_Principal.Mtodo1Click(Sender: TObject);
var
    Str_Nome_do_Produto_Chave: String;
    Str_Chave_Valor: String;
begin
   Str_Nome_do_Produto_Chave := InputBox('Daruma Framework', 'Entre com o Path e a chave:',  'DSP\Auditoria');
   Str_Chave_Valor := InputBox('Entre com o Valor da Chave:', 'Daruma Framework', '1');
   if (Str_Nome_do_Produto_Chave = '') Then
      Exit;

   Int_Retorno := regAlterarValor_Daruma(Str_Nome_do_Produto_Chave, Str_Chave_Valor);
   Application.MessageBox(pchar(Str_Nome_do_Produto_Chave + ' = '+Str_Chave_Valor), 'DarumaFramework', mb_ok + 32);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

end;

end.
