unit Daruma_Framework_DUAL_metodo_iImprimirTexto_DUAL_DarumaFramework;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls;

type
  TFR_DUAL_iImprimirTexto_DUAL_DarumaFramework = class(TForm)
    GB_Texto: TGroupBox;
    MB_Texto: TMemo;
    BT_Enviar: TButton;
    BT_Fechar: TButton;
    BT_CompletoSeparado: TButton;
    BT_Completo: TButton;
    GB_Tags: TGroupBox;
    LB_ce: TLabel;
    LB_b: TLabel;
    LB_i: TLabel;
    LB_s: TLabel;
    LB_e: TLabel;
    LB_c: TLabel;
    LB_n: TLabel;
    LB_l: TLabel;
    LB_sl: TLabel;
    LB_tc: TLabel;
    LB_dt: TLabel;
    LB_hr: TLabel;
    LB_sp: TLabel;
    LB_sn: TLabel;
    LB_g: TLabel;
    LB_a: TLabel;
    LB_tb: TLabel;
    LB_CodigodeBarras: TLabel;
    LB_ean13: TLabel;
    LB_ean8: TLabel;
    LB_upc: TLabel;
    LB_code39: TLabel;
    LB_code93: TLabel;
    LB_codabar: TLabel;
    LB_msi: TLabel;
    LB_code11: TLabel;
    LB_ad: TLabel;
    LB_bmp: TLabel;
    LB_gui: TLabel;
    LB_da: TLabel;
    LB_pdf: TLabel;
    LB_Comandos: TLabel;
    LB_fe: TLabel;
    LB_Code128: TLabel;
    LB_i2of5: TLabel;
    LB_s2of5: TLabel;
    procedure BT_EnviarClick(Sender: TObject);
    procedure BT_CompletoSeparadoClick(Sender: TObject);
    procedure BT_CompletoClick(Sender: TObject);
    procedure BT_FecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_DUAL_iImprimirTexto_DUAL_DarumaFramework: TFR_DUAL_iImprimirTexto_DUAL_DarumaFramework;

implementation

function iImprimirTexto_DUAL_DarumaFramework(stTexto: String; iTam: Integer ): Integer; StdCall; External 'DarumaFramework.dll'

{$R *.dfm}

procedure TFR_DUAL_iImprimirTexto_DUAL_DarumaFramework.BT_EnviarClick(
  Sender: TObject);

var
  iRetorno: Integer;
begin
  if (MB_Texto.Text = '') then
    begin
      Application.MessageBox('Digite um Texto.', 'Daruma DLL Framework', mb_ok + 16);
    end
  else
    begin
      iRetorno := iImprimirTexto_DUAL_DarumaFramework(MB_Texto.Text, 0);
      if (iRetorno = 1) then
        begin
          Application.MessageBox('Impress�o realizada com sucesso.', 'Daruma DLL Framework', mb_ok + 32)
        end
      else
        begin
          Application.MessageBox('Erro ao Imprimir o texto, verifique a impressora', 'Daruma DLL Framework', mb_ok + 16);
        end;
    end;
end;

procedure TFR_DUAL_iImprimirTexto_DUAL_DarumaFramework.BT_CompletoSeparadoClick(
  Sender: TObject);

var
  iRetorno: Integer;

begin
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<sn><l><ce><s>Teste com Formata��o DHTM</s></ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<n>Estes s�o os car�cteres que voc� poder� utilizar<n><l>Voc� poder� a qualquer monento combinar as formata��es!!', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<b>><</b>> Para sinalizar Negrito', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<i>><</i>> Para sinalizar It�lico', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<s>><</s>> Para sinalizar Sublinhado', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<e>><</e>> Para sinalizar Expandido', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<c>><</c>> Para sinalizar Condensado', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<n>><</n>> Para sinalizar Normal', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<l>><</l>> Para Saltar Uma Linha', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<fe>><</fe>> Ativa o Modo fonte Elite', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<ad>><</ad>> Para alinhar a direita', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<ft>>n1,n2,...,n6<</ft>> Para habilitar tabula��o', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<tb>><</tb>> Para saltar at� a proxima tabula��o', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<sl>>NN<</sl>> Para Saltar V�rias Linhas', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<tc>>C<</tc>>Riscar Linha com Car�cter Espec�fico', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<ce>><</ce>> Para Centralizar', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<dt>><</dt>> Para Imprimir Data Atual', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<hr>><</hr>> Para Imprimir Hora Atual', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<sp>>NN<</sp>> Inserir NN Espa�os em Branco', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<sn>><</sn>> Sinal Sonoro, Apitar', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<g>><</g>> Abre a Gaveta', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<<a>><</a>> Aguardar at� o T�rmino da Impress�o', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<l><tc>_</tc><tc>_</tc>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<e><ce>TABULA��O</ce><e><tc>_</tc>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ft>05,10,15,20,30,40</ft>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<tb>5</tb><tb>10</tb><tb>15</tb><tb>20</tb><tb>30</tb><tb>40</tb>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<tb>5</tb><tb>10</tb><tb>15</tb><tb>20</tb><tb>30</tb><tb>40</tb>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<tb>5</tb><tb>10</tb><tb>15</tb><tb>20</tb><tb>30</tb><tb>40</tb>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<tb>5</tb><tb>10</tb><tb>15</tb><tb>20</tb><tb>30</tb><tb>40</tb>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('Data<tb></tb>Veiculo<tb></tb>Cor<tb></tb>Placa<tb></tb>Hora', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<dt></dt><tb></tb>Golf<tb></tb><tb></tb>Branca<tb></tb>AJY5231<tb></tb>10:15', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<dt></dt><tb></tb>Focus<tb></tb>Vermelha<tb></tb>APG2013<tb></tb>13:45', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<dt></dt><tb></tb>Megane<tb></tb>Cinza<tb></tb>AAR5414<tb></tb>14:30', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<dt></dt><tb></tb>Corsa<tb></tb>Preto<tb></tb>AWK0189<tb></tb>20:40', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<l><tc>_</tc>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<l></l><e>DATA:<dt></dt></e><l></l><e>Hora:<hr></hr></e><l></l>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>Anvan�ando 3 Linhas</ce><sl>3</sl>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>Anvan�ando 1 Linha</ce><sl>1</sl>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<l>Inserindo<sp>10</sp>10 espa�os em Branco', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>Formata��o Normal</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<n>DARUMA AUTOMA��O!!</n><l>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>NEGR+ITAL+SUBL+EXPAND</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<b><i><s><e>DARUMA AUTOMA��O!!</b></i></s></e>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>NEGR+ITAL+SUBL+CONDENSADO</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<b><i><s><c>DARUMA AUTOMA��O!!</b></i></s></c>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>NEGR+ITAL+SUBL+NORMAL</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<b><i><s><n>DARUMA AUTOMA��O!!</b></i></s></n>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>EXPANDIDO</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<e>DARUMA AUTOMA��O!!<e>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>CONDENSADO</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<c>DARUMA AUTOMA��O!!</c>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>NEGRITO+EXPANDIDO</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<b><e>DARUMA AUTOMA��O!!</b></e>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>IT�LICO+EXPANDIDO</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<i><e>DARUMA AUTOMA��O!!</i></e>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce><dt></dt>SUBLINHADO+EXPANDIDO</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<s><e>DARUMA AUTOMA��O!!</s></e>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>NEGRITO+CONDENSADO</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<b><c>DARUMA AUTOMA��O!!</b></c>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>IT�LICO+CONDENSADO</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<i><c>DARUMA AUTOMA��O!!</i></c>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>SUBLINHADO+CONDENSADO</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<s><c>DARUMA AUTOMA��O!!</s></c>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>NEGRITO+NORMAL</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<b><n>DARUMA AUTOMA��O!!</b></n>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>IT�LICO+NORMAL</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<l><i><n>DARUMA AUTOMA��O!!</i></n>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>SUBLINHADO+NORMAL</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<s><n>DARUMA AUTOMA��O!!</s></n><l>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>ALINHADO A DIREITA</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ad>DARUMA AUTOMA��O!!</ad><l>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>ALINHADO A DIREITA + EXPANDIDO</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<e><ad>DARUMA AUTOMA��O!!</ad></e><l>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>ALINHADO A DIREITA + SUBLINHADO</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ad><s>DARUMA AUTOMA��O!!</s></ad><l>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>CENTRALIZADO + EXPANDIDO</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<e><ce>DARUMA AUTOMA��O!!</ce></e><l>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ft>05,10,15,20,30,40</ft>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>TABULADO NA COLUNA 10</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<tb></tb><tb></tb>DARUMA<l>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<ce>TABULADO NA COLUNA 30</ce>', 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework('<tb></tb><tb></tb><tb></tb><tb></tb><tb></tb>DARUMA', 0);

  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(Pchar('<l><e><b>FIM TAGS COMPLETO</e></b>'), 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(Pchar('<sl>03</sl>'), 0);

        if (iRetorno = 1) Then
            Application.MessageBox('Impressao Concluida!', 'Daruma DLL Framework', mb_ok + 32)
            else
            Application.MessageBox('Erro ao realizar a impress�o das TAGS!', 'Daruma DLL Framework', mb_ok + 16);
            end;

procedure TFR_DUAL_iImprimirTexto_DUAL_DarumaFramework.BT_CompletoClick(
  Sender: TObject);

var
  iRetorno: Integer;

begin
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('<e><b>BUFFER COMPLETO</e></b><l></l>'), 0);
  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('<e>DATA:<dt></dt></e><l></l><e>Hora:<hr></hr></e><l></l>' +
'<ce>Avan�ando 5 Linhas</ce><sl>5</sl>Inserindo<sp>10</sp>10 espa�os em Branco<sl>2</sl>' +
'<ce>Formata��o Normal</ce><l></l>DARUMA AUTOMA��O!!<sl>2</sl><ce>Negr+Ital+Subl+Expand</ce><l></l>' +
'<b><i><s><e>DARUMA AUTOMA��O!!</b></i></s></e><sl>2</sl><ce>Negr+Ital+Subl+Condensado</ce><l></l>' +
'<b><i><s><c>DARUMA AUTOMA��O!!</b></i></s></c><sl>2</sl><ce>Negr+Ital+Subl+Normal</ce><l></l>' +
'<b><i><s><n>DARUMA AUTOMA��O!!</b></i></s></n><sl>2</sl><ce>Expandido</ce><l></l>' +
'<e>DARUMA AUTOMA��O!!</e><sl>2</sl><ce>Condensado</ce><l></l>' +
'<c>DARUMA AUTOMA��O!!</c><sl>2</sl><ce>Negrito+Expandido</ce><l></l>' +
'<b><e>DARUMA AUTOMA��O!!</b></e><sl>2</sl><ce>It�lico+Expandido</ce><l></l>' +
'<i><e>DARUMA AUTOMA��O!!</i></e><sl>2</sl><ce>Sublinhado+Expandido</ce><l></l>' +
'<s><e>DARUMA AUTOMA��O!!</s></e><sl>2</sl><ce>Negrito+Condensado</ce><l></l>' +
'<b><c>DARUMA AUTOMA��O!!</b></c><sl>2</sl><ce>It�lico+Condensado</ce><l></l>' +
'<i><c>DARUMA AUTOMA��O!!</i></c><sl>2</sl><ce>Sublinhado+Condensado</ce><l></l>' +
'<s><c>DARUMA AUTOMA��O!!</s></c><sl>2</sl><ce>Negrito+Normal</ce><l></l>' +
'<b><n>DARUMA AUTOMA��O!!</n></b><l></l>'),0);
        //iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('<fe>Ativa o Modo fonte Elite</fe>'), 0);
       iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('<e><b>FIM BUFFER COMPLETO</b></e><sl>03</sl>'), 0);
       iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('<sl>03</sl>'), 0);
       iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('<gui></gui>'), 0);

     if (iRetorno = 1) Then
            Application.MessageBox('Impressao Concluida!', 'Daruma DLL Framework', mb_ok + 32)
            else
            Application.MessageBox('Erro ao realizar a impress�o do BUFFER!', 'Daruma DLL Framework', mb_ok + 16);
            end;



procedure TFR_DUAL_iImprimirTexto_DUAL_DarumaFramework.BT_FecharClick(
  Sender: TObject);
begin

Close;

end;

end.
