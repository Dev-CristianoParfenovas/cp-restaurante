unit Daruma_Framework_DUAL_ImprimirTexto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,Daruma_Framework_Variaveis_Globais;

type
  TFramework_DUAL_ImprimirTexto = class(TForm)
    GroupBox1: TGroupBox;
    BT_Enviar: TButton;
    BT_Fechar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    TX_Texto_Livre: TMemo;
    Button1: TButton;
    procedure BT_FecharClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BT_EnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Framework_DUAL_ImprimirTexto: TFramework_DUAL_ImprimirTexto;
  
implementation
   Function Daruma_DUAL_ImprimirTexto( TextoLivre: String; TamanhoTexto: Integer ): Integer; StdCall; External 'Daruma32.dll'
{$R *.dfm}

procedure TFramework_DUAL_ImprimirTexto.BT_FecharClick(
  Sender: TObject);
begin
close;
end;

procedure TFramework_DUAL_ImprimirTexto.Button1Click(
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

procedure TFramework_DUAL_ImprimirTexto.BT_EnviarClick(
  Sender: TObject);
  var
     Str_Texto_Livre: String	;
     Str_Tamanho_Texto: String	;
     Memo: String ;
  begin
     Memo:= TX_Texto_Livre.Text;
        if Memo = '' then    //Verifica Existência de Texto no (Memo)
        begin
        Application.MessageBox('Digite um Texto...!', 'Daruma Framework', mb_ok + 16);
        exit
        end;

Str_Texto_Livre:= TX_Texto_Livre.Lines.Text;
Int_Retorno:= Daruma_Dual_ImprimirTexto(Str_Texto_Livre, 0); // 0 Segundo parametro ficou =0, dessa forma a dll calcula o tamanho do texto




     if Int_Retorno = 1 then
        begin
             Application.MessageBox('Impressao Concluida!!!', 'Daruma Framework', mb_ok + 32);
        end
        else
         begin
             Application.MessageBox('Erro!', 'Daruma Framework', mb_ok + 16);
     end;
end;

end.
