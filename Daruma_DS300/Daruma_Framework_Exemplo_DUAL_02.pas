unit Daruma_Framework_Exemplo_DUAL_02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,Daruma_Framework_Variaveis_Globais;

type
  TFramework_Exemplo_DUAL_02 = class(TForm)
    LB_Endereco_Empresa: TLabel;
    LB_Fone_Empresa: TLabel;
    LB_Nome_Cliente: TLabel;
    LB_Cadastro: TLabel;
    LB_Data_Devolucao: TLabel;
    LB_Filme: TLabel;
    LB_Categoria: TLabel;
    LB_Valor: TLabel;
    LB_Mensagem_Promocional: TLabel;
    TX_Empresa: TEdit;
    TX_Endereco_Empresa: TEdit;
    TX_Fone_Empresa: TEdit;
    TX_Cliente: TEdit;
    TX_Cadastro: TEdit;
    TX_Data_Devolucao: TEdit;
    TX_Filme: TEdit;
    TX_Categoria: TEdit;
    TX_Valor: TEdit;
    TX_Mensagem_Promocional: TEdit;
    BT_Fechar: TButton;
    BT_Enviar: TButton;
    procedure BT_FecharClick(Sender: TObject);
    procedure BT_EnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Framework_Exemplo_DUAL_02: TFramework_Exemplo_DUAL_02;
  
implementation
    Function Daruma_DUAL_ImprimirTexto( TextoLivre: String; TamanhoTexto: Integer ): Integer; StdCall; External 'Daruma32.dll'
{$R *.dfm}

procedure TFramework_Exemplo_DUAL_02.BT_FecharClick(
  Sender: TObject);
begin
close;
end;

procedure TFramework_Exemplo_DUAL_02.BT_EnviarClick(
  Sender: TObject);
  var
  Str_Empresa:String;
  Str_Endereco_Empresa:String;
  Str_Fone_Empresa: String;
  Str_Cliente: String;
  Str_Cadastro: String;
  Str_Data_Devolucao: String;
  Str_Filme: String;
  Str_Categoria: String;
  Str_Valor: String;
  Str_Mensagem_Promocional: String;
begin
   Str_Empresa:= TX_Empresa.Text;
  Str_Endereco_Empresa:= TX_Endereco_Empresa.Text;
  Str_Fone_Empresa:= TX_Fone_Empresa.Text;
  Str_Cliente:= TX_Cliente.Text;
  Str_Cadastro:= TX_Cadastro.Text;
  Str_Data_Devolucao:= TX_Data_Devolucao.Text;
  Str_Filme:= TX_Filme.Text;
  Str_Categoria:= TX_Categoria.Text;
  Str_Valor:= TX_Valor.Text;
  Str_Mensagem_Promocional:= TX_Mensagem_Promocional.Text;
  //Imprimindo Lucas Vidio
     Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<e><ce><b>' + Str_Empresa + '</ce></e></b>'),0);
     //IPRIMINDO A PRIMEIRA LINHA
     Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(LB_Endereco_Empresa.Caption + '<i><sp>1</sp>' + Str_Endereco_Empresa + '</i>'),0);
     //IPRIMINDO A SEGUNDA LINHA
     Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(LB_Fone_Empresa.Caption + '<i><sp>1</sp>' + Str_Fone_Empresa + '</i>'),0);
     //IPRIMINDO A TERCEIRA LINHA
     Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(LB_Nome_Cliente.Caption + '<i><sp>1</sp>' + Str_Cliente + '</i>'),0);
     //IPRIMINDO A QUARTA LINHA
     Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(LB_Cadastro.Caption + '<i><sp>1</sp>' + Str_Cadastro + '</i>'),0);
     //IPRIMINDO A QUINTA LINHA
     Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(LB_Data_Devolucao.Caption + '<i><sp>1</sp>' + Str_Data_Devolucao + '</i>'),0);
     //IPRIMINDO A SEXTA LINHA
     Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(LB_Filme.Caption + '<i><sp>1</sp>' + Str_Filme + '</i>'),0);
     //IPRIMINDO A SÉTIMA LINHA
     Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(LB_Categoria.Caption + '<i><sp>1</sp>' + Str_Categoria + '</i>'),0);
     //IPRIMINDO A OITAVA LINHA
     Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(LB_Valor.Caption + '<i><sp>1</sp>' + Str_Valor + '</i><sl>2</sl>'),0);
     //IPRIMINDO A NONA LINHA
     Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<i><ce><b>' + Str_Mensagem_Promocional + '</i></ce></b><sl>10</sl>'),0);
     //IPRIMINDO A DECIMA LINHA
      if Int_Retorno = 1 Then
      begin
      Application.MessageBox('Impressao Concluida!!!', 'Daruma Framework', mb_ok + 32);
      end
      else
      begin
      Application.MessageBox('Erro!', 'Daruma Framework', mb_ok + 16);
      end;
end;

end.
