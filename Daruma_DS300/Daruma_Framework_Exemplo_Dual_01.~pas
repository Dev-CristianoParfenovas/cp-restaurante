unit Daruma_Framework_Exemplo_Dual_01;

interface

uses



  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Grids, Menus,Daruma_Framework_Variaveis_Globais;







type
    TFramework_Exemplo_DUAL_01 = class(TForm)
    BT_Fechar: TButton;
    BT_Enviar: TButton;
    Label1: TLabel;
    LB_Endereco_Empresa: TLabel;
    LB_Fone_Empresa: TLabel;
    LB_Pedido_N: TLabel;
    LB_Data: TLabel;
    LB_Tema_Mensagem: TLabel;
    LB_Titulo_Mensagem: TLabel;
    LB_Valor_Mensagem: TLabel;
    LB_Forma_Cobranca: TLabel;
    LB_Cliente: TLabel;
    LB_Fone_Res: TLabel;
    LB_Celular: TLabel;
    LB_Fone_Com: TLabel;
    Label14: TLabel;
    LB_Hora: TLabel;
    TX_Nome_Empresa: TEdit;
    TX_Endereco_Empresa: TEdit;
    TX_Fone_Empresa: TEdit;
    TX_Numero_Pedido: TEdit;
    TX_Data_Pedido: TEdit;
    TX_Tema_Mensagem: TEdit;
    TX_Titulo_Mensagem: TEdit;
    TX_Valor_Mensagem: TEdit;
    TX_Forma_Cobranca: TEdit;
    TX_Cliente: TEdit;
    TX_Fone_Res: TEdit;
    TX_Celular: TEdit;
    TX_Fone_Com: TEdit;
    Tx_Mensagem_Promo: TEdit;
    Tx_Hora: TEdit;
    Timer1: TTimer;
    procedure BT_FecharClick(Sender: TObject);
    procedure BT_EnviarClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Framework_Exemplo_DUAL_01: TFramework_Exemplo_DUAL_01;
  
implementation
           Function Daruma_DUAL_ImprimirTexto( TextoLivre: String; TamanhoTexto: Integer ): Integer; StdCall; External 'Daruma32.dll'
{$R *.dfm}

procedure TFramework_Exemplo_DUAL_01.BT_FecharClick(
  Sender: TObject);
begin
close;
end;

procedure TFramework_Exemplo_DUAL_01.BT_EnviarClick(
  Sender: TObject);

  var
    Str_Nome_Empresa: String;
    Str_Endereco_Empresa: String;
    Str_Fone_Empresa: String;
    Str_Numero_Pedido: String;
    Str_Tema_Mensagem: String;
    Str_Titulo_Mensagem: String;
    Str_Valor_Mensagem: String;
    Str_Forma_Cobranca: String;
    Str_Cliente: String;
    Str_Fone_Res: String;
    Str_Fone_Celular: String;
    Str_Fone_Com: String;
    Str_Mensagem_Promo: String;
    Str_Hora: String;

begin


     Str_Nome_Empresa:= TX_Nome_Empresa.Text;
     Str_Endereco_Empresa:= TX_Endereco_Empresa.Text;
     Str_Fone_Empresa:= TX_Fone_Empresa.Text;
     Str_Numero_Pedido:= TX_Numero_Pedido.Text;
     Str_Tema_Mensagem:= TX_Tema_Mensagem.Text;
     Str_Titulo_Mensagem:= TX_Titulo_Mensagem.Text;
     Str_Valor_Mensagem:= TX_Valor_Mensagem.Text;
     Str_Forma_Cobranca:= TX_Forma_Cobranca.Text;
     Str_Cliente:= TX_Cliente.Text;
     Str_Fone_Res:= TX_Fone_Res.Text;
     Str_Fone_Celular:= TX_Celular.Text;
     Str_Fone_Com:= TX_Fone_Com.Text;
     Str_Mensagem_Promo:= Tx_Mensagem_Promo.Text;
     Str_Hora:= Tx_Hora.Text;

      //Imprimindo Lucas Vidio
     Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<e><ce><b>' + Str_Nome_Empresa + '</b></ce></e>'),0);
     //IPRIMINDO A PRIMEIRA LINHA
     Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce><tc>-</tc></ce>'),0);
     //IPRIMINDO A SEGUNDA LINHA
     Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sp>4</sp>' + LB_Endereco_Empresa.Caption + '<i>' + Str_Endereco_Empresa + ''),0);
     //IPRIMINDO A  TERCEIRA LINHA
     Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sp>4</sp>' + LB_Fone_Empresa.Caption + '<i>' + Str_Fone_Empresa + '</i>'),0);
     //IPRIMINDO A  QUARTA LINHA
     Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sp>4</sp>' + LB_Pedido_N.Caption + '<i>' + TX_Numero_Pedido.Text + '</i>'),0);
     //IPRIMINDO A  QUINTA LINHA
     Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sp>4</sp>' + LB_Data.Caption + '<i><dt></dt></i>'),0);
     //IPRIMINDO A  SEXTA LINHA
     Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce><tc>-</tc></ce>'),0);
     //IPRIMINDO A  SÉTIMA LINHA
     Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sp>4</sp>' + LB_Tema_Mensagem.Caption + '<i>' + TX_Tema_Mensagem.Text + '</i>'),0);
     //IPRIMINDO A  OITAVA LINHA
     Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sp>4</sp>' + LB_Titulo_Mensagem.Caption + '<i>' + TX_Titulo_Mensagem.Text + '</i>'),0);
     //IPRIMINDO A  NONA LINHA
     Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sp>4</sp>' + LB_Valor_Mensagem.Caption + '<i>' + TX_Valor_Mensagem.Text + '</i>'),0);
     //IPRIMINDO A  DECIMA LINHA
     Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sp>4</sp>' + LB_Forma_Cobranca.Caption + '<i>' + TX_Forma_Cobranca.Text + '</i>'),0);
     //IPRIMINDO A  DECIMA PRIMEIRA LINHA
     Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sp>4</sp>' + LB_Cliente.Caption + '<i>' + TX_Cliente.Text + '</i>'),0);
     //IPRIMINDO A  DECIMA SEGUNDA LINHA
     Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sp>4</sp>' + LB_Fone_Res.Caption + '<i>' + TX_Fone_Res.Text + '</i>'),0);
     //IPRIMINDO A  DECIMA TERCEIRA LINHA
     Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sp>4</sp>' + LB_Celular.Caption + '<i>' + TX_Celular.Text + '</i>'),0);
     //IPRIMINDO A  DECIMA QUARTA LINHA
     Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sp>4</sp>' + LB_Fone_Com.Caption + '<i>' + TX_Fone_Com.Text + '</i><sl>1</sl>'),0);
     //IPRIMINDO A  DECIMA QUINTA LINHA
     Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce><b>' + Tx_Mensagem_Promo.Text + '</b></ce><sl>2</sl>'),0);
     //IPRIMINDO A  DECIMA SEXTA LINHA
     Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sp>35</sp>' + LB_Hora.Caption + '<hr></hr>'),0);
     //IPRIMINDO A  DECIMA SÉTIMA LINHA
     Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce><tc>-</tc></ce><sl>7</sl>'),0);
     //IPRIMINDO A  DECIMA OITAVA LINHA
      if Int_Retorno = 1 Then
      begin
      Application.MessageBox('Impressao Concluida!!!', 'Daruma Framework', mb_ok + 32);
      end
      else
      begin
      Application.MessageBox('Erro!', 'Daruma Framework', mb_ok + 16);
      end;
end;

procedure TFramework_Exemplo_DUAL_01.Timer1Timer(
  Sender: TObject);
begin
TX_hora.Text:= TimeToStr (Time);
end;

end.
