unit Daruma_Framework_Impressora_Dual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls,Daruma_Framework_Variaveis_Globais;

type
  TFramework_Impressora_Dual = class(TForm)
    MainMenu1: TMainMenu;
    MN_Registry: TMenuItem;
    MetodosparaStatus1: TMenuItem;
    MetodosparaAutenticaoeImpresso1: TMenuItem;
    MetodosparaTestes1: TMenuItem;
    ExemplosdeCupons1: TMenuItem;
    ExemploDual_01: TMenuItem;
    ExemploDual_02: TMenuItem;
    ExemploDual_03: TMenuItem;
    ExemploDual_04: TMenuItem;
    ExemploDual_05: TMenuItem;
    ExemploDual_06: TMenuItem;
    ExemploDual_07: TMenuItem;
    ExemploDual_08: TMenuItem;
    ExemploDual_09: TMenuItem;
    ExemploDual_10: TMenuItem;
    BT_Fechar: TButton;
    ImprimirTextocomTagsdeFormatao1: TMenuItem;
    LoopingdeVerificaodeStatus1: TMenuItem;
    LoopingdeVerificaodeStatusDoc1: TMenuItem;
    esteCompletocomFormatacao1: TMenuItem;
    MN_Daruma_DUAL_ImprimirTexto: TMenuItem;
    MN_Daruma_DUAL_Autenticar: TMenuItem;
    MN_Daruma_DUAL_AcionaGaveta: TMenuItem;
    MNDarumaDUALVerificaStatus1: TMenuItem;
    MetodoDarumaDUALVerificaDocumento1: TMenuItem;
    MN_Daruma_Registry_DUAL_Enter: TMenuItem;
    MN_Daruma_Registry_DUAL_Modo_Espera: TMenuItem;
    MN_Daruma_Registry_DUAL_Modo_Escrita: TMenuItem;
    MN_Daruma_Registry_DUAL_Porta: TMenuItem;
    MN_Daruma_Registry_DUAL_Modo_Tabulacao: TMenuItem;
    MN_Habilitar_Daruma_Registry_Dual_Enter: TMenuItem;
    MN_Habilitar_Daruma_Registry_Dual_Espera: TMenuItem;
    MN_Habilitar_Daruma_Registry_Dual_Modo_Escrita: TMenuItem;
    MN_Desabilitar_Daruma_Registry_Dual_Enter: TMenuItem;
    MN_Desabilitar_Daruma_Registry_Dual_Espera: TMenuItem;
    MN_Desabilitar_Daruma_Registry_Dual_Modo_Escrita: TMenuItem;
    DarumaDUALImprimirArquivo1: TMenuItem;
    procedure BT_FecharClick(Sender: TObject);
    procedure ExemploDual_01Click(Sender: TObject);
    procedure ExemploDual_02Click(Sender: TObject);
    procedure ExemploDual_03Click(Sender: TObject);
    procedure ExemploDual_04Click(Sender: TObject);
    procedure ExemploDual_05Click(Sender: TObject);
    procedure ExemploDual_06Click(Sender: TObject);
    procedure ExemploDual_07Click(Sender: TObject);
    procedure ExemploDual_08Click(Sender: TObject);
    procedure ExemploDual_09Click(Sender: TObject);
    procedure ExemploDual_10Click(Sender: TObject);
    procedure ImprimirTextocomTagsdeFormatao1Click(Sender: TObject);
    procedure esteCompletocomFormatacao1Click(Sender: TObject);
    procedure LoopingdeVerificaodeStatus1Click(Sender: TObject);
    procedure LoopingdeVerificaodeStatusDoc1Click(Sender: TObject);
    procedure MN_Daruma_DUAL_ImprimirTextoClick(Sender: TObject);
    procedure MN_Daruma_DUAL_AutenticarClick(Sender: TObject);
    procedure MN_Daruma_DUAL_AcionaGavetaClick(Sender: TObject);
    procedure MNDarumaDUALVerificaStatus1Click(Sender: TObject);
    procedure MetodoDarumaDUALVerificaDocumento1Click(Sender: TObject);
    procedure MN_Habilitar_Daruma_Registry_Dual_EnterClick(
      Sender: TObject);
    procedure MN_Desabilitar_Daruma_Registry_Dual_EnterClick(
      Sender: TObject);
    procedure MN_Habilitar_Daruma_Registry_Dual_EsperaClick(
      Sender: TObject);
    procedure MN_Desabilitar_Daruma_Registry_Dual_EsperaClick(
      Sender: TObject);
    procedure MN_Habilitar_Daruma_Registry_Dual_Modo_EscritaClick(
      Sender: TObject);
    procedure MN_Desabilitar_Daruma_Registry_Dual_Modo_EscritaClick(
      Sender: TObject);
    procedure MN_Daruma_Registry_DUAL_PortaClick(Sender: TObject);
    procedure MN_Daruma_Registry_DUAL_Modo_TabulacaoClick(Sender: TObject);
    procedure DarumaDUALImprimirArquivo1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
   Framework_Impressora_Dual: TFramework_Impressora_Dual;
   
implementation

uses Daruma_Framework_Exemplo_Dual_01, Daruma_Framework_Exemplo_DUAL_02,
  Daruma_Framework_Looping_Verificacao_Status,
  Daruma_Framework_Looping_Verificacao_Status_Doc,
  Daruma_Framework_DUAL_ImprimirTexto, Daruma_Framework_Autenticar;
       Function Daruma_DUAL_ImprimirTexto( TextoLivre: String; TamanhoTexto: Integer ): Integer; StdCall; External 'Daruma32.dll'
       Function Daruma_DUAL_AcionaGaveta() : Integer; StdCall; External 'Daruma32.dll'
       Function Daruma_DUAL_VerificaDocumento() : Integer; StdCall; External 'Daruma32.dll'
       Function Daruma_Registry_DUAL_Enter(Enter: String) : Integer; StdCall; External 'Daruma32.dll'
       Function Daruma_Registry_DUAL_Espera(Espera: String) : Integer; StdCall; External 'Daruma32.dll'
       Function Daruma_Registry_DUAL_ModoEscrita(Modo_Escrita: String) : Integer; StdCall; External 'Daruma32.dll'
       Function Daruma_Registry_DUAL_Porta(Porta : String)  : Integer; StdCall; External 'Daruma32.dll'
       Function Daruma_Registry_DUAL_Tabulacao(Tabulacao : String)  : Integer; StdCall; External 'Daruma32.dll'
       Function Daruma_DUAL_ImprimirArquivo(Str_Path : String)  : Integer; StdCall; External 'Daruma32.dll'
       {$R *.dfm}

procedure TFramework_Impressora_Dual.BT_FecharClick(Sender: TObject);
begin
close;
end;

procedure TFramework_Impressora_Dual.ExemploDual_01Click(Sender: TObject);
begin
Framework_Exemplo_DUAL_01.Show;
end;

procedure TFramework_Impressora_Dual.ExemploDual_02Click(Sender: TObject);
begin
Framework_Exemplo_DUAL_02.show;
end;

procedure TFramework_Impressora_Dual.ExemploDual_03Click(Sender: TObject);
begin
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb><b>FRAB<tb>Ano<tb>Modelo<tb>Valor<tb>Cor</b>'),0);
//IPRIMINDO A PRIMEIRA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb>GM<tb>2000<tb>Corsa<tb>12.000<tb>Azul'),0);
//IPRIMINDO A SEGUNDA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb>Ford<tb>2005<tb>Fiesta<tb>14.000<tb>Verde'),0);
//IPRIMINDO A TERCEIRA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb>Fiat<tb>1998<tb>Uno Mille<tb>9.000<tb>Branco'),0);
//IPRIMINDO A QUARTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb>GM<tb>1997<tb>Vectra<tb>18.000<tb>Prata'),0);
//IPRIMINDO A QUINTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb>GM<tb>1999<tb>Tigra<tb>17.000<tb>Verde'),0);
//IPRIMINDO A SEXTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb>Ford<tb>2001<tb>Versalhes<tb>5.000<tb>Vinho'),0);
//IPRIMINDO A SÉTIMA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb>GM<tb>1998<tb>Corsa<tb>10.000<tb>Preto'),0);
//IPRIMINDO A OITAVA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb>Fiat<tb>1996<tb>Fiurino<tb>6.000<tb>Branca'),0);
//IPRIMINDO A NONA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb>WV<tb>1979<tb>Fusca<tb>3.000<tb>Bordo'),0);
//IPRIMINDO A DECIMA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb>GM<tb>1996<tb>Vectra<tb>16.000<tb>Grafite'),0);
//IPRIMINDO A DECIMA PRIMEIRA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb>Fiat<tb>1985<tb>Fiat147<tb>3.000<tb>Azul'),0);
//IPRIMINDO A DECIMA SEGUNDALINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb>Hond<tb>2003<tb>Civic<tb>28.000<tb>Preto'),0);
//IPRIMINDO A DECIMA TERCEIRA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb>Fiat<tb>1999<tb>Palio<tb>12.000<tb>Cinza'),0);
//IPRIMINDO A DECIMA QUARTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb>GM<tb>2003<tb>Celta<tb>17.000<tb>Branco<sl>7</sl>'),0);
//IPRIMINDO A DECIMA QUINTA LINHA
if Int_Retorno = 1 Then
begin
Application.MessageBox('Impressao Concluida!!!', 'Daruma Framework', mb_ok + 32);
end
else
begin
Application.MessageBox('Erro!', 'Daruma Framework', mb_ok + 16);
end;
end;

procedure TFramework_Impressora_Dual.ExemploDual_04Click(Sender: TObject);
begin
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tc>~</tc><l></l>'),0);
//IPRIMINDO A PRIMEIRA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce><e><b>CENTRO DE DANÇA FLASH</b></e></ce>'),0);
//IPRIMINDO A SEGUNDA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<l></l><tc>~</tc>'),0);
//IPRIMINDO A TERCEIRA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb>Rua: <c>XV de Novembro N 785 Centro CTBA  PR</c>'),0);
//IPRIMINDO A QUARTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb><i>Fone: 234-5678 <tb>Fax:324-5678</i>'),0);
//IPRIMINDO A QUINTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb>Data: <dt></dt><tb><tb>Hora: <hr></hr>'),0);
//IPRIMINDO A SEXTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb>Pedido:00069<tb><tb>Cliente:00013'),0);
//IPRIMINDO A SÉTIMA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce><b>Atividades Escolhidas:</b></ce>'),0);
//IPRIMINDO A OITAVA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb>SAMBA<tb>+<tb>BOLERO<tb>+<tb>FORRÓ'),0);
//IPRIMINDO A NONA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<l></l><tb><i><e><b>Valor: 55,00</b></e></i><l></l>'),0);
//IPRIMINDO A DECIMA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb><c>Vencimento: 10-03-05</c>'),0);
//IPRIMINDO A DECIMA PRIMEIRA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb><c>o não pagamento implica no cancelamento da vaga </c>'),0);
//IPRIMINDO A DECIMA SEGUNDA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb>Início dia 01 de Fevereiro as 17:30hr'),0);
//IPRIMINDO A DECIMA TERCEIRA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<l></l><tb>Venha Dançar!!!<l></l>'),0);
//IPRIMINDO A DECIMA QUARTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce><s><c>Samba,Bolero,Soltinho,Forró,Zouk</c></s></ce>'),0);
//IPRIMINDO A DECIMA QUINTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ad>Obrigado.</ad>'),0);
//IPRIMINDO A DECIMA SEXTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sl>7</sl><sn></sn>'),0);
//IPRIMINDO A DECIMA SÉTIMA LINHA
if Int_Retorno = 1 Then
begin
Application.MessageBox('Impressao Concluida!!!', 'Daruma Framework', mb_ok + 32);
end
else
begin
Application.MessageBox('Erro!', 'Daruma Framework', mb_ok + 16);
end;
end;

procedure TFramework_Impressora_Dual.ExemploDual_05Click(Sender: TObject);
begin
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<e><ce><s>ESTACIONAMENTO LAC_PARK<s></ce></e>'),0);
//IPRIMINDO A PEIMEIRA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<n>Endereço:</n><c> A Dr. Teobaldo Freitas Silva Ribas - Nº1912</c>'),0);
//IPRIMINDO A SEGUNDA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<c>Santo André - São Paulo - SP - Brasil</c><l></l>'),0);
//IPRIMINDO A TERCEIRA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<n>TICKET NÚMERO:<tb> 0005423</n><l></l>'),0);
//IPRIMINDO A QUARTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb><b>Entrada:<tb><dt></dt><tb><hr></hr></b>'),0);
//IPRIMINDO A QUINTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tc>_</tc><l></l>'),0);
//IPRIMINDO A SEXTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb><i>MARCA: Fiat<tb><tb>MODELO: Stilo</i><l></l>'),0);
//IPRIMINDO A SÉTIMA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb><i>PLACA: ANA-1069<tb>COR: Vermelho</i><l></l>'),0);
//IPRIMINDO A OITAVA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tc>_</tc><l></l>'),0);
//IPRIMINDO A NONA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ad><n>R$ 2,00 à Hora</n></ad>'),0);
//IPRIMINDO A DECIMA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ad><n>R$ 0,50 à Cada 15 Minutos</n></ad>'),0);
//IPRIMINDO A DECIMA PRIMEIRA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb><c><s><b>Não nos Responsabilizamos Por Objetos de Valor</b></s></c>'),0);
//IPRIMINDO A DECIMA SEGUNDA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb><c><s><b>Deixados no  Interior do Veículo</b></s></c><l></l>'),0);
//IPRIMINDO A DECIMA TERCEIRA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce><e><b>OBRIGADO</b></e></ce>'),0);
//IPRIMINDO A DECIMA QUARTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sl>7</sl>'),0);
//IPRIMINDO A DECIMA QUINTA LINHA
if Int_Retorno = 1 Then
begin
Application.MessageBox('Impressao Concluida!!!', 'Daruma Framework', mb_ok + 32);
end
else
begin
Application.MessageBox('Erro!', 'Daruma Framework', mb_ok + 16);
end;

end;

procedure TFramework_Impressora_Dual.ExemploDual_06Click(Sender: TObject);
begin
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tc>_</tc>'),0);
//IPRIMINDO A PRIMEIRA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce><e>VENDA  -  A VISTA</e></ce>'),0);
//IPRIMINDO A SEGUNDA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tc>_</tc>'),0);
//IPRIMINDO A TERCEIRA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb><n>Cliente...:  000001 - CONSUMIDOR</n>'),0);
//IPRIMINDO A QUARTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb><n>Vendedor...:</n>  <e>00069 - ANDREA </e>'),0);
//IPRIMINDO A QUINTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb><n>Contrato...:</n>  <e>02195 -</e><n>  Data:<dt></dt></n>'),0);
//IPRIMINDO A SEXTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tc>_</tc>'),0);
//IPRIMINDO A SÉTIMA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('CÓDIGO<sp>3</sp>DESCRIÇÃO<sp>3</sp>QT<sp>6</sp>UNIT<sp>8</sp>TOTAL'),0);
//IPRIMINDO A OITAVA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tc>_</tc>'),0);
//IPRIMINDO A NONA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('06540<tb>TENIS REEF<sp>2</sp>1<tb>149,90<sp>6</sp>149,90'),0);
//IPRIMINDO A DECIMA PRIMEIRA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('05874<tb>MEIA ESTAM<sp>2</sp>6<tb>  2,90<sp>7</sp>17,40'),0);
//IPRIMINDO A DECIMA SEGUNDA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('05874<tb>BLUSAO ADU<sp>2</sp>1<tb> 49,00<sp>7</sp>49,00'),0);
//IPRIMINDO A DECIMA TERCEIRA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('05874<tb>CUECA SORT<sp>2</sp>2<tb>  4,90<sp>8</sp>9,80'),0);
//IPRIMINDO A DECIMA QUARTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('05874<tb>TOALHA MES<sp>2</sp>3<tb>  9,90<sp>7</sp>29,70 '),0);
//IPRIMINDO A DECIMA QUINTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tc>_</tc>'),0);
//IPRIMINDO A DECIMA SEXTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ad>DESCONTOS: - 12,80</ad>'),0);
//IPRIMINDO A DECIMA SÉTIMA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tc>_</tc>'),0);
//IPRIMINDO A DECIMA OITAVA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<e>TOTAL VENDA...:<sp>2</sp>243,00</e>'),0);
//IPRIMINDO A DECIMA NONA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tc>_</tc>'),0);
//IPRIMINDO A VIGÉSIMA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sl>7</sl>'),0);
//IPRIMINDO A VIGÉSIMA PRIMEIRA LINHA
if Int_Retorno = 1 Then
begin
Application.MessageBox('Impressao Concluida!!!', 'Daruma Framework', mb_ok + 32);
end
else
begin
Application.MessageBox('Erro!', 'Daruma Framework', mb_ok + 16);
end;
end;

procedure TFramework_Impressora_Dual.ExemploDual_07Click(Sender: TObject);
begin
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tc>#</tc>'),0);
//IPRIMINDO A PRIMEIRA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<e><ce>ACADEMIA NEW SPORTS</ce></e>'),0);
//IPRIMINDO A SEGUNDA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb><i>Rua Nossa Senhora da Luz</i>, 350'),0);
//IPRIMINDO A TERCEIRA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb><i>Jardim Social   -   Curitiba   -  PR</i>'),0);
//IPRIMINDO A QUARTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb>CNPJ 04.888.968/0001-79<tb><e>234-5678<l></l></e>'),0);
//IPRIMINDO A QUINTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tc>#</tc><l></l>'),0);
//IPRIMINDO A SEXTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<i><dt></dt><i>'),0);
//IPRIMINDO A SÉTIMA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ad>Recibo nr.258963</ad><l></l>'),0);
//IPRIMINDO A OITAVA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<c>Nome : </c><b>ELAINE MARIA</b><sp>5</sp>(545)<l></l> '),0);
//IPRIMINDO A NONA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<c>Plano : </c><b>MUSCULAÇÃO NOTURNO</b><sp>5</sp>(5)<l></l>'),0);
//IPRIMINDO A DECIMA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce><e>VALOR PAGO : 45,00</e></ce>'),0);
//IPRIMINDO A DECIMA PRIMEIRA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<c>Ref. ao período de 03/04/2005 até 03/05/2005</c><l></l>'),0);
//IPRIMINDO A DECIMA SEGUNDA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<c>Obs: MENSALIDADE</c><l></l>'),0);
//IPRIMINDO A DECIMA TERCEIRA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tc>_</tc><l></l>'),0);
//IPRIMINDO A DECIMA QUARTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce><e>WWW.ACADEMIANEW.COM.BR</e></ce>'),0);
//IPRIMINDO A DECIMA QUINTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tc>_</tc><l></l>'),0);
//IPRIMINDO A DECIMA SEXTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce><e>SAUDE BELEZA E BEM ESTAR</e></ce>'),0);
//IPRIMINDO A DECIMA SÉTIMA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sl>7</sl>'),0);
//IPRIMINDO A DECIMA OITAVA LINHA
if Int_Retorno = 1 Then
begin
Application.MessageBox('Impressao Concluida!!!', 'Daruma Framework', mb_ok + 32);
end
else
begin
Application.MessageBox('Erro!', 'Daruma Framework', mb_ok + 16);
end;

end;

procedure TFramework_Impressora_Dual.ExemploDual_08Click(Sender: TObject);
begin
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('________________________________________________'),0);
//IPRIMINDO A PRIMEIRA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('|<sp>5</sp><e><s>CASA ASHFAQ AHMED</s></e><sp>6</sp>|'),0);
//IPRIMINDO A SEGUNDA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('|<c>Nota de : </c> <e>VENDAS</e><sp>24</sp>|'),0);
//IPRIMINDO A TERCEIRA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('|<c>Número  : </c> <e>032165</e><sp>24</sp>|'),0);
//IPRIMINDO A QUARTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('|<c>Vendedor: </c> <e>ZORAIDE</e><sp>22</sp>|'),0);
//IPRIMINDO A QUINTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('------------------------------------------------'),0);
//IPRIMINDO A SEXTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('|<sp>2</sp><b>CÓDIGO<sp>4</sp>|<sp>2</sp>DESCRIÇÃO<sp>8</sp>|  VALOR</b>     |'),0);
//IPRIMINDO A SÉTIMA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('------------------------------------------------'),0);
//IPRIMINDO A OITAVA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('|<sp>2</sp><b>00074185<sp>2</sp>|<sp>2</sp>DVD PANA-LS345<sp>3</sp>|<sp>2</sp>499,00</b><sp>4</sp>|'),0);
//IPRIMINDO A NONA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('------------------------------------------------'),0);
//IPRIMINDO A DECIMA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('|<sp>2</sp><b>000963256<sp>1</sp>|<sp>2</sp>CALCUL<sp>3</sp>HP49GX<sp>2</sp>|<sp>2</sp>859,00</b><sp>4</sp>|'),0);
//IPRIMINDO A DECIMA PRIMEIRA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('------------------------------------------------'),0);
//IPRIMINDO A DECIMA SEGUNDA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('|<sp>2</sp><b>00258852<sp>2</sp>|<sp>2</sp>TV TOSHI0<sp>2</sp>48P<sp>3</sp>|4,480,00</b><sp>4</sp>|'),0);
//IPRIMINDO A DECIMA TERCEIRA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('------------------------------------------------'),0);
//IPRIMINDO A DECIMA QUARTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('|<sp>2</sp><b>000789654<sp>1</sp>|<sp>2</sp>SONY T68i<sp>8</sp>|<sp>2</sp>659,00</b><sp>4</sp>|'),0);
//IPRIMINDO A DECIMA QUINTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('------------------------------------------------'),0);
//IPRIMINDO A DECIMA SEXTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('|<sp>45</sp>|'),0);
//IPRIMINDO A DECIMA SÉTIMA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('|<e><sp>3</sp>TOTAL<sp>3</sp>5,727,00</e><sp>7</sp>|'),0);
//IPRIMINDO A DECIMA OITAVA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('|<sp>45</sp>|'),0);
//IPRIMINDO A DECIMA NONA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('------------------------------------------------'),0);
//IPRIMINDO A VIGÉSIMA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('|<sp>18</sp>CONFIRA SUAS MERCADORIAS<sp>3</sp>|'),0);
//IPRIMINDO A VIGÉSIMA PRIMEIRA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('|<sp>5</sp>NÃO ACEITAMOS RECLAMAÇÕES POSTERIORES<sp>3</sp>|'),0);
//IPRIMINDO A VIGÉSIMA SEGUNDA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('------------------------------------------------'),0);
//IPRIMINDO A VIGÉSIMA TERCEIRA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sl>7</sl>'),0);
//IPRIMINDO A VIGÉSIMA QUARTA LINHA
if Int_Retorno = 1 Then
begin
Application.MessageBox('Impressao Concluida!!!', 'Daruma Framework', mb_ok + 32);
end
else
begin
Application.MessageBox('Erro!', 'Daruma Framework', mb_ok + 16);
end;
end;

procedure TFramework_Impressora_Dual.ExemploDual_09Click(Sender: TObject);
begin
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce><e><s>R E C I B O</s></e></ce>'),0);
//IPRIMINDO A PRIMEIRA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sp>32</sp><c>1º VIA</c>'),0);
//IPRIMINDO A SEGUNDA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<e><sp>1</sp>INFO<sp>2</sp>XV</e><sp>14</sp><c>VENCIMENTO:<c><dt></dt>'),0);
//IPRIMINDO A TERCEIRA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sp>32</sp><c>NÚMERO: 00654</c>'),0);
//IPRIMINDO A QUARTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<i><b>C o n t r o l e  d e  A l u g u e l</b></i>'),0);
//IPRIMINDO A QUINTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('------------------------------------------------'),0);
//IPRIMINDO A SEXTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<b>INQUILINO<sp>4</sp>..:</b> José Maria '),0);
//IPRIMINDO A SÉTIMA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<b>FIADOR<sp>7</sp>..:</b> Roberto Carlos'),0);
//IPRIMINDO A OITAVA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<b>IMÓVEL LOCADO..:</b> AV. Almirante Sab Nº 258 '),0);
//IPRIMINDO A NONA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<b>VALOR<sp>8</sp>..:</b> 455,00'),0);
//IPRIMINDO A DECIMA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('------------------------------------------------<l></l><l></l>'),0);
//IPRIMINDO A DECIMA PRIMEIRA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ad>Ass:-----------------------------</ad>'),0);
//IPRIMINDO A DECIMA SEGUNDA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb><c>NOTA PARA SIMPLES CONFERÊNCIA</c>'),0);
//IPRIMINDO A DECIMA TERCEIRA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb><c>SEM VALOR FISCAL</c>'),0);
//IPRIMINDO A DECIMA QUARTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb><i>FECHA..:<sp>2</sp><dt></dt><hr></hr> </i>'),0);
//IPRIMINDO A DECIMA QUINTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('------------------------------------------------'),0);
//IPRIMINDO A DECIMA SEXTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sl>7</sl>'),0);
//IPRIMINDO A DECIMA SÉTIMA LINHA
if Int_Retorno = 1 Then
begin
Application.MessageBox('Impressao Concluida!!!', 'Daruma Framework', mb_ok + 32);
end
else
begin
Application.MessageBox('Erro!', 'Daruma Framework', mb_ok + 16);
end;
end;

procedure TFramework_Impressora_Dual.ExemploDual_10Click(Sender: TObject);
begin
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce><e><s>Consultório Médico </s></e></ce><l></l>'),0);
//IPRIMINDO A PRIMEIRA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<c>MÉDICO<sp>3</sp>__:</c><sp>2</sp>DR. Avô França'),0);
//IPRIMINDO A SEGUNDA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<c>REGISTRO __:</c><sp>2</sp>321654'),0);
//IPRIMINDO A TERCEIRA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<c>END. CONS__:</c><sp>2</sp>Rua Hugo Boos Nº 98, Centro CTBA PR'),0);
//IPRIMINDO A QUARTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('------------------------------------------------'),0);
//IPRIMINDO A QUINTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<b><i>REGISTRO DE CONSULTAS</i></b>'),0);
//IPRIMINDO A SEXTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb><c>PACIENTE<sp>5</sp>__:</c><sp>2</sp>Maria de Lurdes'),0);
//IPRIMINDO A SÉTIMA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb><c>DATA CONSULTA__:<sp>1</sp>02/02/08</c><sp>7</sp>(orto)'),0);
//IPRIMINDO A OITAVA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb><c>HORA CONSULTA__:<sp>1</sp>16:20:00</c>'),0);
//IPRIMINDO A NONA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<b><i>TOLERÂNCIA DE ATRASO</i></b><l></l>'),0);
//IPRIMINDO A DECIMA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ad>15 Minutos </ad>'),0);
//IPRIMINDO A DECIMA PRIMEIRA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<b><i>DESISTÊNCIA</i></b>'),0);
//IPRIMINDO A DECIMA SEGUNDA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ad>Avisar com 24 Horas de Antesedência</ad>'),0);
//IPRIMINDO A DECIMA TERCEIRA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<b><i>OBSERVAÇÃO</i></b>'),0);
//IPRIMINDO A DECIMA QUARTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ad>Raio X e Outros Exames não Estão Inclusos</ad>'),0);
//IPRIMINDO A DECIMA QUINTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<b><i>DATA HOJE</i></b>'),0);
//IPRIMINDO A DECIMA SEXTA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce><dt></dt><sp>3</sp><hr></hr></ce>'),0);
//IPRIMINDO A DECIMA SÉTIMA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('------------------------------------------------'),0);
//IPRIMINDO A DECIMA OITAVA LINHA
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sl>7</sl><sn></sn>'),0);
//IPRIMINDO A DECIMA NONA LINHA
if Int_Retorno = 1 Then
begin
Application.MessageBox('Impressao Concluida!!!', 'Daruma Framework', mb_ok + 32);
end
else
begin
Application.MessageBox('Erro!', 'Daruma Framework', mb_ok + 16);
end;
end;

procedure TFramework_Impressora_Dual.ImprimirTextocomTagsdeFormatao1Click(
  Sender: TObject);
begin
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sn><l><ce><s>Teste com Formatação DHTM</s></ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<n>Estes são os carácteres que você poderá utilizar<n><l>Você poderá a qualquer monento combinar as formatações!!'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<b>><</b>> Para sinalizar Negrito'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<i>><</i>> Para sinalizar Itálico'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<s>><</s>> Para sinalizar Sublinhado'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<e>><</e>> Para sinalizar Expandido'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<c>><</c>> Para sinalizar Condensado'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<n>><</n>> Para sinalizar Normal'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<l>><</l>> Para Saltar Uma Linha'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<ad>><</ad>> Para alinhar a direita'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<ft>>n1,n2,...,n6<</ft>> Para habilitar tabulação'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<tb>><</tb>> Para saltar até a proxima tabulação'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<sl>>NN<</sl>> Para Saltar Várias Linhas'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<tc>>C<</tc>>Riscar Linha com Carácter Específico'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<ce>><</ce>> Para Centralizar'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<dt>><</dt>> Para Imprimir Data Atual'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<hr>><</hr>> Para Imprimir Hora Atual'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<sp>>NN<</sp>> Inserir NN Espaços em Branco'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<sn>><</sn>> Sinal Sonoro, Apitar'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<g>><</g>> Abre a Gaveta'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<a>><</a>> Aguardar até o Término da Impressão'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<l><tc>_</tc><tc>_</tc>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<e><ce>TABULAÇÃO</ce><e><tc>_</tc>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ft>05,10,15,20,30,40</ft>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb>5</tb><tb>10</tb><tb>15</tb><tb>20</tb><tb>30</tb><tb>40</tb>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb>5</tb><tb>10</tb><tb>15</tb><tb>20</tb><tb>30</tb><tb>40</tb>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb>5</tb><tb>10</tb><tb>15</tb><tb>20</tb><tb>30</tb><tb>40</tb>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb>5</tb><tb>10</tb><tb>15</tb><tb>20</tb><tb>30</tb><tb>40</tb>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Data<tb></tb>Veiculo<tb></tb>Cor<tb></tb>Placa<tb></tb>Hora'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<dt></dt><tb></tb>Golf<tb></tb><tb></tb>Branca<tb></tb>AJY5231<tb></tb>10:15'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<dt></dt><tb></tb>Focus<tb></tb>Vermelha<tb></tb>APG2013<tb></tb>13:45'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<dt></dt><tb></tb>Megane<tb></tb>Cinza<tb></tb>AAR5414<tb></tb>14:30'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<dt></dt><tb></tb>Corsa<tb></tb>Preto<tb></tb>AWK0189<tb></tb>20:40'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<l><tc>_</tc>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<l></l><e>DATA:<dt></dt></e><l></l><e>Hora:<hr></hr></e><l></l>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>Anvançando 3 Linhas</ce><sl>3</sl>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>Anvançando 1 Linha</ce><sl>1</sl>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<l>Inserindo<sp>10</sp>10 espaços em Branco'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>Formatação Normal</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<n>DARUMA AUTOMAÇÃO!!</n><l>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>NEGR+ITAL+SUBL+EXPAND</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<b><i><s><e>DARUMA AUTOMAÇÃO!!</b></i></s></e>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>NEGR+ITAL+SUBL+CONDENSADO</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<b><i><s><c>DARUMA AUTOMAÇÃO!!</b></i></s></c>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>NEGR+ITAL+SUBL+NORMAL</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<b><i><s><n>DARUMA AUTOMAÇÃO!!</b></i></s></n>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>EXPANDIDO</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<e>DARUMA AUTOMAÇÃO!!<e>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>CONDENSADO</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<c>DARUMA AUTOMAÇÃO!!</c>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>NEGRITO+EXPANDIDO</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<b><e>DARUMA AUTOMAÇÃO!!</b></e>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>ITÁLICO+EXPANDIDO</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<i><e>DARUMA AUTOMAÇÃO!!</i></e>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce><dt></dt>SUBLINHADO+EXPANDIDO</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<s><e>DARUMA AUTOMAÇÃO!!</s></e>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>NEGRITO+CONDENSADO</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<b><c>DARUMA AUTOMAÇÃO!!</b></c>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>ITÁLICO+CONDENSADO</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<i><c>DARUMA AUTOMAÇÃO!!</i></c>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>SUBLINHADO+CONDENSADO</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<s><c>DARUMA AUTOMAÇÃO!!</s></c>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>NEGRITO+NORMAL</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<b><n>DARUMA AUTOMAÇÃO!!</b></n>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>ITÁLICO+NORMAL</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<l><i><n>DARUMA AUTOMAÇÃO!!</i></n>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>SUBLINHADO+NORMAL</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<s><n>DARUMA AUTOMAÇÃO!!</s></n><l>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>ALINHADO A DIREITA</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ad>DARUMA AUTOMAÇÃO!!</ad><l>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>ALINHADO A DIREITA + EXPANDIDO</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<e><ad>DARUMA AUTOMAÇÃO!!</ad></e><l>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>ALINHADO A DIREITA + SUBLINHADO</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ad><s>DARUMA AUTOMAÇÃO!!</s></ad><l>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>CENTRALIZADO + EXPANDIDO</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<e><ce>DARUMA AUTOMAÇÃO!!</ce></e><l>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb>05,10,15,20,30,40</tb>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>TABULADO NA COLUNA 10</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb></tb><tb></tb>DARUMA<l>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>TABULADO NA COLUNA 30</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb></tb><tb></tb><tb></tb><tb></tb><tb></tb>DARUMA'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sl>7</sl>'), 0);
    if Int_Retorno = 1 Then
    begin
    Application.MessageBox('Impressao Concluida!!!', 'Daruma Framework', mb_ok + 32);
    end
    else
    begin
    Application.MessageBox('Erro!', 'Daruma Framework', mb_ok + 16);
    end;
end;

procedure TFramework_Impressora_Dual.esteCompletocomFormatacao1Click(
  Sender: TObject);
begin
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sn><l><ce><s>Teste com Formatação DHTM</s></ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<n>Estes são os carácteres que você poderá utilizar<n><l>Você poderá a qualquer monento combinar as formatações!!'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<b>><</b>> Para sinalizar Negrito'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<i>><</i>> Para sinalizar Itálico'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<s>><</s>> Para sinalizar Sublinhado'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<e>><</e>> Para sinalizar Expandido'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<c>><</c>> Para sinalizar Condensado'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<n>><</n>> Para sinalizar Normal'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<l>><</l>> Para Saltar Uma Linha'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<ad>><</ad>> Para alinhar a direita'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<ft>>n1,n2,...,n6<</ft>> Para habilitar tabulação'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<tb>><</tb>> Para saltar até a proxima tabulação'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<sl>>NN<</sl>> Para Saltar Várias Linhas'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<tc>>C<</tc>>Riscar Linha com Carácter Específico'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<ce>><</ce>> Para Centralizar'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<dt>><</dt>> Para Imprimir Data Atual'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<hr>><</hr>> Para Imprimir Hora Atual'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<sp>>NN<</sp>> Inserir NN Espaços em Branco'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<sn>><</sn>> Sinal Sonoro, Apitar'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<g>><</g>> Abre a Gaveta'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<<a>><</a>> Aguardar até o Término da Impressão'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<l><tc>_</tc><tc>_</tc>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<e><ce>TABULAÇÃO</ce><e><tc>_</tc>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ft>05,10,15,20,30,40</ft>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb>5</tb><tb>10</tb><tb>15</tb><tb>20</tb><tb>30</tb><tb>40</tb>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb>5</tb><tb>10</tb><tb>15</tb><tb>20</tb><tb>30</tb><tb>40</tb>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb>5</tb><tb>10</tb><tb>15</tb><tb>20</tb><tb>30</tb><tb>40</tb>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb>5</tb><tb>10</tb><tb>15</tb><tb>20</tb><tb>30</tb><tb>40</tb>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Data<tb></tb>Veiculo<tb></tb>Cor<tb></tb>Placa<tb></tb>Hora'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<dt></dt><tb></tb>Golf<tb></tb><tb></tb>Branca<tb></tb>AJY5231<tb></tb>10:15'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<dt></dt><tb></tb>Focus<tb></tb>Vermelha<tb></tb>APG2013<tb></tb>13:45'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<dt></dt><tb></tb>Megane<tb></tb>Cinza<tb></tb>AAR5414<tb></tb>14:30'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<dt></dt><tb></tb>Corsa<tb></tb>Preto<tb></tb>AWK0189<tb></tb>20:40'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<l><tc>_</tc>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<l></l><e>DATA:<dt></dt></e><l></l><e>Hora:<hr></hr></e><l></l>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>Anvançando 3 Linhas</ce><sl>3</sl>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>Anvançando 1 Linha</ce><sl>1</sl>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<l>Inserindo<sp>10</sp>10 espaços em Branco'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>Formatação Normal</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<n>DARUMA AUTOMAÇÃO!!</n><l>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>NEGR+ITAL+SUBL+EXPAND</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<b><i><s><e>DARUMA AUTOMAÇÃO!!</b></i></s></e>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>NEGR+ITAL+SUBL+CONDENSADO</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<b><i><s><c>DARUMA AUTOMAÇÃO!!</b></i></s></c>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>NEGR+ITAL+SUBL+NORMAL</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<b><i><s><n>DARUMA AUTOMAÇÃO!!</b></i></s></n>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>EXPANDIDO</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<e>DARUMA AUTOMAÇÃO!!<e>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>CONDENSADO</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<c>DARUMA AUTOMAÇÃO!!</c>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>NEGRITO+EXPANDIDO</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<b><e>DARUMA AUTOMAÇÃO!!</b></e>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>ITÁLICO+EXPANDIDO</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<i><e>DARUMA AUTOMAÇÃO!!</i></e>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce><dt></dt>SUBLINHADO+EXPANDIDO</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<s><e>DARUMA AUTOMAÇÃO!!</s></e>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>NEGRITO+CONDENSADO</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<b><c>DARUMA AUTOMAÇÃO!!</b></c>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>ITÁLICO+CONDENSADO</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<i><c>DARUMA AUTOMAÇÃO!!</i></c>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>SUBLINHADO+CONDENSADO</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<s><c>DARUMA AUTOMAÇÃO!!</s></c>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>NEGRITO+NORMAL</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<b><n>DARUMA AUTOMAÇÃO!!</b></n>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>ITÁLICO+NORMAL</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<l><i><n>DARUMA AUTOMAÇÃO!!</i></n>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>SUBLINHADO+NORMAL</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<s><n>DARUMA AUTOMAÇÃO!!</s></n><l>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>ALINHADO A DIREITA</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ad>DARUMA AUTOMAÇÃO!!</ad><l>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>ALINHADO A DIREITA + EXPANDIDO</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<e><ad>DARUMA AUTOMAÇÃO!!</ad></e><l>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>ALINHADO A DIREITA + SUBLINHADO</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ad><s>DARUMA AUTOMAÇÃO!!</s></ad><l>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>CENTRALIZADO + EXPANDIDO</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<e><ce>DARUMA AUTOMAÇÃO!!</ce></e><l>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ft>05,10,15,20,30,40</ft>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>TABULADO NA COLUNA 10</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb></tb><tb></tb>DARUMA<l>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<ce>TABULADO NA COLUNA 30</ce>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tb></tb><tb></tb><tb></tb><tb></tb><tb></tb>DARUMA'), 0);

//Enviando todos Juntos

Int_Retorno:= Daruma_DUAL_ImprimirTexto(Pchar('<l><e><b>BUFFER COMPLETO</e></b>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(Pchar('<<e>>DATA:<<dt>><</dt>><</e>><<l>><<l/>><<e>>Hora:<<hr>><</hr>><</e>><<l>><<l/>><<ce>>' +
'Anvançando 5 Linhas<</ce>><<sl>>5<</sl>>Inserindo<<sp>>10<</sp>>10 espaços em Branco<<l>>' +
'<<ce>>Formatação Normal<</ce>><<n>>DARUMA AUTOMAÇÃO!!<</n>><<l>><<ce>>NEGR+ITAL+SUBL+EXPAND<</ce>>' +
'<<b>><<i>><<s>><<e>>DARUMA AUTOMAÇÃO!!<</b>><</i>><</s>><</e>><<l>><<ce>>NEGR+ITAL+SUBL+CONDENSADO<</ce>>' +
'<<b>><<i>><<s>><<c>>DARUMA AUTOMAÇÃO!!<</b>><</i>><</s>><</c>><<l>><<ce>>NEGR+ITAL+SUBL+NORMAL<</ce>><<b>>' +
'<<i>><<s>><<n>>DARUMA AUTOMAÇÃO!!<</b>><</i>><</s>><</n>><<l>><<ce>>EXPANDIDO<</ce>><<e>>DARUMA AUTOMAÇÃO!!' +
'<<e>><<l>><<ce>>CONDENSADO<</ce>><<c>>DARUMA AUTOMAÇÃO!!<</c>><<l>><<ce>>NEGRITO+EXPANDIDO<</ce>><<b>><<e>>DARUMA AUTOMAÇÃO!!' +
'<</b>><</e>><<l>><<ce>>Itálico+EXPANDIDO<</ce>><<i>><<e>>DARUMA AUTOMAÇÃO!!<</i>><</e>><<l>><<ce>>SUBLINHADO+EXPANDIDO<</ce>>' +
'<<s>><<e>>DARUMA AUTOMAÇÃO!!<</s>><</e>><<l>><<ce>>NEGRITO+CONDENSADO<</ce>><<b>><<c>>DARUMA AUTOMAÇÃO!!<</b>><</c>><<l>>' +
'<<ce>>Itálico+CONDENSADO<</ce>><<i>><<c>>DARUMA AUTOMAÇÃO!!<</i>><</c>><<l>><<ce>>SUBLINHADO+CONDENSADO<</ce>><<s>><<c>>' +
'DARUMA AUTOMAÇÃO!!<</s>><</c>><<l>><<ce>>NEGRITO+NORMAL<</ce>><<b>><<n>>DARUMA AUTOMAÇÃO!!<</b>><</n>><<l>><<ce>>Itálico+NORMAL' +
'<</ce>><<l>><<i>><<n>>DARUMA AUTOMAÇÃO!!<</i>><</n>><<l>><<ce>>SUBLINHADO+NORMAL<</ce>><<s>><<n>>DARUMA AUTOMAÇÃO!!<</s>><</n>>' +
'<<l>><<ce>>ALINHADO A DIREITA<</ce>><<ad>>DARUMA AUTOMAÇÃO!!<</ad>><<l>><<ce>>ALINHADO A DIREITA + EXPANDIDO<</ce>>' +
'<<e>><<ad>>DARUMA AUTOMAÇÃO!!<</ad>><</e>><<l>><<ce>>ALINHADO A DIREITA + SUBLINHADO<</ce>><<ad>><<s>>DARUMA AUTOMAÇÃO!!<</s>><</ad>>' +
'<<l>><<ce>>CENTRALIZADO + EXPANDIDO<</ce>><<e>><<ce>>DARUMA AUTOMAÇÃO!!<</ce>><</e>><<l>><<ce>>TABULADO NA COLUNA 10<</ce>> <<tb>><</tb>>' +
' <<tb>><</tb>>DARUMA<<l>><<ce>>TABULADO NA COLUNA 30<</ce>> <<tb>><</tb>> <<tb>><</tb>> <<tb>><</tb>> <<tb>><</tb>> <<tb>><</tb>>DARUMA<<sl>>10<</sl>>'), 0);
Int_Retorno:= Daruma_DUAL_ImprimirTexto(Pchar('<l></l><e>DATA:<dt></dt></e><l></l><e>Hora:<hr></hr></e><l></l><ce>Anvançando 5 Linhas</ce><sl>5</sl>' +
'Inserindo<sp>10</sp>10 espaços em Branco<l><ce>Formatação Normal</ce><n>DARUMA AUTOMAÇÃO!!</n><l><ce>NEGR+ITAL+SUBL+EXPAND</ce><b><i><s><e>DARUMA AUTOMAÇÃO!!</b></i></s></e><l>' +
'<n><ce>NEGR+ITAL+SUBL+CONDENSADO</ce></n><b><i><s><c>DARUMA AUTOMAÇÃO!!</b></i></s></c><l><ce>NEGR+ITAL+SUBL+NORMAL</ce><b><i><s><n>DARUMA AUTOMAÇÃO!!</b></i></s></n><l>' +
'<ce>EXPANDIDO</ce><e>DARUMA AUTOMAÇÃO!!</e><l><ce>CONDENSADO</ce><c>DARUMA AUTOMAÇÃO!!</c><l><ce>NEGRITO+EXPANDIDO</ce><b><e>DARUMA AUTOMAÇÃO!!</b></e><l>' +
'<ce>Itálico+EXPANDIDO</ce><i><e>DARUMA AUTOMAÇÃO!!</i></e><l><ce>SUBLINHADO+EXPANDIDO</ce><s><e>DARUMA AUTOMAÇÃO!!</s></e><l><ce>NEGRITO+CONDENSADO</ce><b><c>DARUMA AUTOMAÇÃO!!</b></c><l>' +
' <ce>Itálico+CONDENSADO</ce><i><c>DARUMA AUTOMAÇÃO!!</i></c><l><ce>SUBLINHADO+CONDENSADO</ce><s><c>DARUMA AUTOMAÇÃO!!</s></c><l><ce>NEGRITO+NORMAL</ce><b><n>DARUMA AUTOMAÇÃO!!</b></n><l>' +
'<ce>Itálico+NORMAL</ce><l><i><n>DARUMA AUTOMAÇÃO!!</i></n><l><ce>SUBLINHADO+NORMAL</ce><s><n>DARUMA AUTOMAÇÃO!!</s></n><l><ce>ALINHADO A DIREITA</ce><ad>DARUMA AUTOMAÇÃO!!</ad><l>' +
'<ce>ALINHADO A DIREITA + EXPANDIDO</ce><e><ad>DARUMA AUTOMAÇÃO!!</ad></e><l><ce>ALINHADO A DIREITA + SUBLINHADO</ce><ad><s>DARUMA AUTOMAÇÃO!!</s></ad><l>' +
'<ce>CENTRALIZADO + EXPANDIDO</ce><e><ce>DARUMA AUTOMAÇÃO!!</ce></e><l><ce>TABULADO NA COLUNA 10</ce> <tb></tb> <tb></tb>DARUMA<l>' +
'<ce>TABULADO NA COLUNA 30</ce> <tb></tb> <tb></tb> <tb></tb> <tb></tb> <tb></tb>DARUMA<sl>10</sl>'), 0);
   if Int_Retorno = 1 Then
    begin
    Application.MessageBox('Impressao Concluida!!!', 'Daruma Framework', mb_ok + 32);
    end
    else
    begin
    Application.MessageBox('Erro!', 'Daruma Framework', mb_ok + 16);
    end;

end;

procedure TFramework_Impressora_Dual.LoopingdeVerificaodeStatus1Click(
  Sender: TObject);
begin
Framework_LoopingVerificacaoStatus.show;
end;

procedure TFramework_Impressora_Dual.LoopingdeVerificaodeStatusDoc1Click(
  Sender: TObject);
begin
Framework_LoopingVerificacaoStatusDoc.show;
end;

procedure TFramework_Impressora_Dual.MN_Daruma_DUAL_ImprimirTextoClick(
  Sender: TObject);
begin
Framework_DUAL_ImprimirTexto.show;
end;

procedure TFramework_Impressora_Dual.MN_Daruma_DUAL_AutenticarClick(
  Sender: TObject);
begin
Framework_Autenticar.Show;
end;

procedure TFramework_Impressora_Dual.MN_Daruma_DUAL_AcionaGavetaClick(
  Sender: TObject);
begin
Int_Retorno:= Daruma_DUAL_AcionaGaveta()
end;

procedure TFramework_Impressora_Dual.MNDarumaDUALVerificaStatus1Click(
  Sender: TObject);
begin
Int_Retorno:= Daruma_Dual_VerificaStatus();
     if Int_Retorno = 1 then
        Application.MessageBox(' 1 -Impressora OK!', 'Daruma Framework', mb_ok + 32);
     if  Int_Retorno = (-50) then
        Application.MessageBox('- -50 -Impressora OFF-LINE!', 'Daruma Framework', mb_ok + 16);
     if Int_Retorno = (-51) then
        Application.MessageBox('- -51 -Impressora Sem papel!', 'Daruma Framework', mb_ok + 16);
     if Int_Retorno = (-27) then
        Application.MessageBox('- -27 -Erro Generico!', 'Daruma Framework', mb_ok + 16);
     if Int_Retorno = (0) then
        Application.MessageBox('- 0 -Impressora Desligada!', 'Daruma Framework', mb_ok + 16);
end;

procedure TFramework_Impressora_Dual.MetodoDarumaDUALVerificaDocumento1Click(
  Sender: TObject);
begin
     Int_Retorno:= Daruma_DUAL_VerificaDocumento();
     if Int_Retorno = 1 then
        begin
        Application.MessageBox('1 (um) Documento Posicionado!', 'Daruma Framework', mb_ok + 32);
        end
       else
       begin
       Application.MessageBox('Documento Nao Posicionado!', 'Daruma Framework', mb_ok + 16);
    end;


end;

procedure TFramework_Impressora_Dual.MN_Habilitar_Daruma_Registry_Dual_EnterClick(
  Sender: TObject);
begin
  Int_Retorno:= Daruma_Registry_DUAL_Enter('1');
  if Int_Retorno = 1 Then
     begin
      Application.MessageBox('Configuração Feita com Sucesso!', 'Daruma Framework', mb_ok + 32);
      end
      else
      begin
      Application.MessageBox('Erro!', 'Daruma Framework', mb_ok + 16);
      end;
Framework_Impressora_Dual.MN_Habilitar_Daruma_Registry_Dual_Enter.Checked:=true;
Framework_Impressora_Dual.MN_Desabilitar_Daruma_Registry_Dual_Enter.Checked:=false;
end;

procedure TFramework_Impressora_Dual.MN_Desabilitar_Daruma_Registry_Dual_EnterClick(
  Sender: TObject);
begin
   Int_Retorno:= Daruma_Registry_DUAL_Enter('0');
   if Int_Retorno = 1 then
      begin
      Application.MessageBox('Configuração Feita com Sucesso!', 'Daruma Framework', mb_ok + 32);
      end
      else
      begin
      Application.MessageBox('Erro!', 'Daruma Framework', mb_ok + 16);
      end;
Framework_Impressora_Dual.MN_Habilitar_Daruma_Registry_Dual_Enter.Checked:=false;
Framework_Impressora_Dual.MN_Desabilitar_Daruma_Registry_Dual_Enter.Checked:=true;

end;

procedure TFramework_Impressora_Dual.MN_Habilitar_Daruma_Registry_Dual_EsperaClick(
  Sender: TObject);
begin
     Int_Retorno:= Daruma_Registry_DUAL_Espera('1');
      if Int_Retorno = 1 then
      begin
      Application.MessageBox('Configuração Feita com Sucesso!', 'Daruma Framework', mb_ok + 32);
      end
      else
      begin
      Application.MessageBox('Erro!', 'Daruma Framework', mb_ok + 16);
      end;
    Framework_Impressora_Dual.MN_Habilitar_Daruma_Registry_Dual_Espera.Checked:=true;
    Framework_Impressora_Dual.MN_Desabilitar_Daruma_Registry_Dual_Espera.Checked:=false;
end;

procedure TFramework_Impressora_Dual.MN_Desabilitar_Daruma_Registry_Dual_EsperaClick(
  Sender: TObject);
begin
     Int_Retorno:= Daruma_Registry_DUAL_Espera('0');
      if Int_Retorno = 1 then
      begin
      Application.MessageBox('Configuração Feita com Sucesso!', 'Daruma Framework', mb_ok + 32);
      end
      else
      begin
      Application.MessageBox('Erro!', 'Daruma Framework', mb_ok + 16);
      end;
    Framework_Impressora_Dual.MN_Habilitar_Daruma_Registry_Dual_Espera.Checked:=false;
    Framework_Impressora_Dual.MN_Desabilitar_Daruma_Registry_Dual_Espera.Checked:=true;
end;

procedure TFramework_Impressora_Dual.MN_Habilitar_Daruma_Registry_Dual_Modo_EscritaClick(
  Sender: TObject);
begin
    Int_Retorno:= Daruma_Registry_DUAL_ModoEscrita('1');
      if Int_Retorno = 1 then
      begin
      Application.MessageBox('Configuração Feita com Sucesso!', 'Daruma Framework', mb_ok + 32);
      end
      else
      begin
      Application.MessageBox('Erro!', 'Daruma Framework', mb_ok + 16);
      end;
Framework_Impressora_Dual.MN_Habilitar_Daruma_Registry_Dual_Modo_Escrita.Checked:= true;
Framework_Impressora_Dual.MN_Desabilitar_Daruma_Registry_Dual_Modo_Escrita.Checked:=false;


end;



procedure TFramework_Impressora_Dual.MN_Desabilitar_Daruma_Registry_Dual_Modo_EscritaClick(
  Sender: TObject);
begin
     Int_Retorno:= Daruma_Registry_DUAL_ModoEscrita ('0');
      if Int_Retorno = 1 then
      begin
      Application.MessageBox('Configuração Feita com Sucesso!', 'Daruma Framework', mb_ok + 32);
      end
      else
      begin
      Application.MessageBox(' Erro!', 'Daruma Framework', mb_ok + 16);
      end;
Framework_Impressora_Dual.MN_Habilitar_Daruma_Registry_Dual_Modo_Escrita.Checked:= false;
Framework_Impressora_Dual.MN_Desabilitar_Daruma_Registry_Dual_Modo_Escrita.Checked:=true;
end;

procedure TFramework_Impressora_Dual.MN_Daruma_Registry_DUAL_PortaClick(
  Sender: TObject);
  var
  Str_Porta: string;
  begin


Str_Porta:= InputBox('Entre com a Porta onde esta a Impressora:', 'Daruma Framework', 'LPT1');
     if Str_Porta = '' then
        begin
        exit
        end;
      Int_Retorno:= Daruma_Registry_DUAL_Porta(Str_Porta);
      if Int_Retorno = 1 then
      begin
      Application.MessageBox('Configuração Feita com Sucesso!', 'Daruma Framework', mb_ok + 32);
      end
      else
      begin
      Application.MessageBox(' Erro!', 'Daruma Framework', mb_ok + 16);
      end;
end;

procedure TFramework_Impressora_Dual.MN_Daruma_Registry_DUAL_Modo_TabulacaoClick(
  Sender: TObject);
  var
  Str_Tabulacao: String;
  begin
Str_Tabulacao:= InputBox('Entre com o Desejada:', 'Daruma Framework', '05,10,15,20,25,35');
   if Str_Tabulacao = '' then
      begin
       exit
       end;
Int_Retorno:= Daruma_Registry_DUAL_Tabulacao(Str_Tabulacao);
      if Int_Retorno = 1 then
      begin
      Application.MessageBox('Configuração Feita com Sucesso!', 'Daruma Framework', mb_ok + 32);
      end
      else
      begin
      Application.MessageBox(' Erro!', 'Daruma Framework', mb_ok + 16);
      end;
end;

procedure TFramework_Impressora_Dual.DarumaDUALImprimirArquivo1Click(
  Sender: TObject);
  var
    Str_Path: String;
begin
Str_Path:= InputBox('Daruma Framework','Entre com o Nome do Arquivo a ser Impresso','C:\DarumaFramework.txt');
    If (Str_Path = '') Then
  Exit;
Int_Retorno:= Daruma_DUAL_ImprimirArquivo(Str_Path);
      if Int_Retorno = 1 then
      begin
      Application.MessageBox('Configuração Feita com Sucesso!', 'Daruma Framework', mb_ok + 32);
      end
      else
      begin
      Application.MessageBox(' Erro!', 'Daruma Framework', mb_ok + 16);
      end;
end;

end.
