unit Daruma_Framework_Generico_Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFR_Generico_MenuPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    AberturaPorta: TMenuItem;
    eAbrirSerialDaruma1: TMenuItem;
    EnviarDados1: TMenuItem;
    tEnviarDadosDaruma1: TMenuItem;
    ReceberDados1: TMenuItem;
    rReceberDadosDaruma1: TMenuItem;
    Fecharportadecomunicao1: TMenuItem;
    eFecharSerialDaruma1: TMenuItem;
    procedure DarumaFramework_Mostrar_RetornoGenerico(iRetorno:integer);
    procedure eAbrirSerialDaruma1Click(Sender: TObject);
    procedure eFecharSerialDaruma1Click(Sender: TObject);
    procedure tEnviarDadosDaruma1Click(Sender: TObject);
    procedure rReceberDadosDaruma1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_Generico_MenuPrincipal: TFR_Generico_MenuPrincipal;

implementation

uses Daruma_Framework_FISCAL_Principal,
  Daruma_Framework_Generico_tEnviarDados,
  Daruma_Framework_Generico_rReceberDados;

{$R *.dfm}


procedure TFR_Generico_MenuPrincipal.DarumaFramework_Mostrar_RetornoGenerico(iRetorno:integer);
begin

// Poss�veis Retornos dos M�todos
				case iRetorno of
				0: Str_Msg_Retorno_Metodo:= '[0] - Erro durante a execu��o';
				1: Str_Msg_Retorno_Metodo:= '[1] - Opera��o realizada com sucesso';
        3: Str_Msg_Retorno_Metodo:= '[3] - lebin.dll retornou per�odo sem movimento';
				-1: Str_Msg_Retorno_Metodo:= '[-1] - Erro do M�todo';
				 2: Str_Msg_Retorno_Metodo:= '[-2] - Par�metro incorreto';
				-3: Str_Msg_Retorno_Metodo:= '[-3] - Al�quota (Situa��o tribut�ria) n�o programada';
				-4: Str_Msg_Retorno_Metodo:= '[-4] - Chave do Registry n�o encontrada';
				-5: Str_Msg_Retorno_Metodo:= '[-5] - Erro ao Abrir a porta de Comunica��o';
				-6: Str_Msg_Retorno_Metodo:= '[-6] - Impressora Desligada';
				-7: Str_Msg_Retorno_Metodo:= '[-7] - Erro no N�mero do Banco';
				-8: Str_Msg_Retorno_Metodo:= '[-8] - Erro ao Gravar as informa��es no arquivo de Status ou de Retorno de Info';
				-9: Str_Msg_Retorno_Metodo:= '[-9] - Erro ao Fechar a porta de Comunica��o';
				-10: Str_Msg_Retorno_Metodo:= '[-10] - Se o ECF n�o tem forma de pagamento e n�o permite cadastrar esta forma';
				-12: Str_Msg_Retorno_Metodo:= '[-12] - A fun��o executou o comando por�m o ECF sinalizou Erro, chame a rStatusUltimoCmdInt_ECF_Daruma para identificar o Erro.' + #13#10;
  		  -24: Str_Msg_Retorno_Metodo:= '[-24] - Forma de Pagamento n�o Programada';
				-25: Str_Msg_Retorno_Metodo:= '[-25] - Totalizador nao ECF N�o Vinculado nao Programado';
				-27: Str_Msg_Retorno_Metodo:= '[-27] - Foi Detectado Erro ou Warning na Impressora';
				-28: Str_Msg_Retorno_Metodo:= '[-28] - Time-Out';
				-40: Str_Msg_Retorno_Metodo:= '[-40] - Tag XML Inv�lida';
				-50: Str_Msg_Retorno_Metodo:= '[-50] - Problemas ao Criar Chave no Registry';
				-51: Str_Msg_Retorno_Metodo:= '[-51] - Erro ao Gravar LOG';
				-52: Str_Msg_Retorno_Metodo:= '[-52] - Erro ao abrir arquivo';
				-53: Str_Msg_Retorno_Metodo:= '[-53] - Fim de arquivo';
				-60: Str_Msg_Retorno_Metodo:= '[-60] - Erro na tag de formatacao DHTML';
				-90: Str_Msg_Retorno_Metodo:= '[-90] - Erro Configurar a Porta de Comunica��o';
				-99: Str_Msg_Retorno_Metodo:= '[-99] - Par�metro inv�lido ou ponteiro nulo de par�metro';
        -101: Str_Msg_Retorno_Metodo:= '[-101] - Erro ao LER ou ESCREVER arquivo';
        -102: Str_Msg_Retorno_Metodo:= '[-102] - Erro ao LER ou ESCREVER arquivo';
        -103: Str_Msg_Retorno_Metodo:= '[-103] - N�o foram encontradas as DDLs auxiliares (lebin.dll e LeituraMFDBin.dll';
        -104: Str_Msg_Retorno_Metodo:= '[-104] - Data informada � inferior ao primeiro documento emitido';
        -105: Str_Msg_Retorno_Metodo:= '[-105] - Data informada � maior que a �ltima redu��o Z impressa';
        -107: Str_Msg_Retorno_Metodo:= '[-107] - Deve-se fechar a porta atual (para abrir outra ou ao tent�-la abrir novamente)';
        end;
      

   Application.MessageBox( Pchar('Retorno do M�todo = ' + Str_Msg_Retorno_Metodo + #13), 'DarumaFramework Retorno do M�todo', mb_ok);

end;


procedure TFR_Generico_MenuPrincipal.eAbrirSerialDaruma1Click(
  Sender: TObject);
var
    Str_Porta: String;
    Str_Velocidade: String;

begin
   Str_Porta := InputBox('DarumaFramework', 'Entre com o Nome da porta:',  'COM1');
   Str_Velocidade := InputBox('Entre com a velocidade da porta:', 'Daruma Framework', '9600');
   if (Str_Porta = '')or(Str_Velocidade = '') Then
   begin
      Exit;
      end
   else
   begin
   Int_Retorno := eAbrirSerial_Daruma(Str_Porta, Str_Velocidade);
   FR_Generico_MenuPrincipal.DarumaFramework_Mostrar_RetornoGenerico(Int_Retorno);
   end

end;

procedure TFR_Generico_MenuPrincipal.eFecharSerialDaruma1Click(
  Sender: TObject);
begin
   Int_Retorno := eFecharSerial_Daruma();
   FR_Generico_MenuPrincipal.DarumaFramework_Mostrar_RetornoGenerico(Int_Retorno);
end;

procedure TFR_Generico_MenuPrincipal.tEnviarDadosDaruma1Click(
  Sender: TObject);
begin
 FR_tEnviarDados_Daruma.show();
end;

procedure TFR_Generico_MenuPrincipal.rReceberDadosDaruma1Click(
  Sender: TObject);
begin
FR_rReceberDados_Daruma.show();
end;

end.
