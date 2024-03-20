unit Daruma_Framework_FISCAL_TestedeVendadeItensSemPararBuferizando;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_TestedeVendadeItensSemPararBuferizan = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BT_Enviar: TButton;
    BT_Fechar: TButton;
    TX_Cupons: TEdit;
    TX_Itens: TEdit;
    TX_Linhas: TEdit;
    procedure BT_FecharClick(Sender: TObject);
    procedure BT_EnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_TestedeVendadeItensSemPararBuferizan: TFR_FISCAL_TestedeVendadeItensSemPararBuferizan;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_TestedeVendadeItensSemPararBuferizan.BT_FecharClick(
  Sender: TObject);
begin
   close
end;

procedure TFR_FISCAL_TestedeVendadeItensSemPararBuferizan.BT_EnviarClick(
  Sender: TObject);
var
   Int_Qtd_Cupom: Integer;    //Guarda a Quantidade de Cupom desejado
   Int_Qtd_Itens: Integer;    //Guarda a Quantidade de Item desejado
   Str_Qtd_Cupom: String;     //Recebe do InputBox a Qtd desejada
   Str_Qtd_Itens: String;     //Recebe do InputBox a Qtd desejada
   Str_NumeroLinhas: String;
   Str_TimeInicial: string;
   Str_TimeFinal: String;
   Int_Contador:double;
   Int_ContadorItem:Integer;
   iRetorno:integer;
   Int_NumErro: integer;
	 Int_NumAviso:integer;
    i: Integer;
    item :Integer;
begin
   Int_ContadorItem:=1;
   Int_Contador:= 1234567890;
   Str_Qtd_Cupom:= TX_Cupons.text;
   Str_Qtd_Itens:= TX_Itens.Text;

   Int_Qtd_Itens:= StrToInt(Str_Qtd_Itens);

   Str_NumeroLinhas:= TX_linhas.Text;
   If (Str_Qtd_Cupom= '') or (Str_Qtd_Itens= '') or (Str_NumeroLinhas='') then
    exit;
   Int_Qtd_Cupom:= StrToInt(Str_Qtd_Cupom);
   Str_TimeInicial:= TimeToStr (Time);

 for i:=1 to Int_Qtd_Cupom do
  begin

      Int_Retorno := iCFAbrirPadrao_ECF_Daruma();
         item:=0;
         for item:=1 to Int_Qtd_Itens do
         begin
             Int_Retorno := iCFVenderResumido_ECF_Daruma(pchar('II'), pchar( '1,100') , floattostr(item), 'Teste de venda de item id ' + inttostr(Item*5));
             If (Int_Retorno <> 1) Then
                 begin
                 ShowMessage (IntToStr(Int_Retorno) + 'Foi Detectado Erro na Venda de Item!! Vamos Cancelar o Cupom... Daruma Framework');
                 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
                 Int_Retorno:= iCFCancelar_ECF_Daruma();
                 Exit;
              End;
         end;
        Int_Retorno:= iCFTotalizarCupomPadrao_ECF_Daruma();
        Int_Retorno:= iCFEfetuarPagamentoPadrao_ECF_Daruma();
        Int_Retorno:= iCFEncerrarPadrao_ECF_Daruma();
               
  end;
      Str_TimeFinal:= TimeToStr (Time);


  { While Int_Qtd_Cupom <> 0 do
   begin
        Int_Qtd_Itens:= StrToInt(Str_Qtd_Itens);
         Sleep(500);
        Int_Retorno := iCFAbrirPadrao_ECF_Daruma();
        While Int_Qtd_Itens <> 0  do
        begin
              If (StrToInt(Str_NumeroLinhas) = 1) Then
                 begin
                   Int_Retorno := iCFVenderResumido_ECF_Daruma(pchar('II'), pchar( '0,100') , floattostr(Int_Contador), inttostr(Int_ContadorItem));
                   Int_ContadorItem:=Int_ContadorItem + 1;
                  Int_Contador:= Int_Contador + 1;
                 end
              Else
                 begin
                 Int_Retorno := iCFVenderResumido_ECF_Daruma('II', pchar( '0,100') , floattostr(Int_Contador), inttostr(Int_ContadorItem));
                 Int_Contador:=Int_Contador + 1;
                 Int_ContadorItem:= Int_ContadorItem + 1;
              End;
              If (Int_Retorno <> 1) Then
                 begin
                 ShowMessage (IntToStr(Int_Retorno) + 'Foi Detectado Erro na Venda de Item!! Vamos Cancelar o Cupom... Daruma Framework');
                 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
                 Int_Retorno:= iCFCancelar_ECF_Daruma();
                 Exit;
              End;
              Int_Qtd_Itens:= (Int_Qtd_Itens - 1);
         end; //fim do While do Item
        Int_Retorno:= iCFTotalizarCupomPadrao_ECF_Daruma();
        Int_Retorno:= iCFEfetuarPagamentoPadrao_ECF_Daruma();
        Int_Retorno:= iCFEncerrarPadrao_ECF_Daruma();
        Int_Qtd_Cupom:= (Int_Qtd_Cupom - 1);
   end;    //Fim do While do Cupom
   Str_TimeFinal:= TimeToStr (Time);
   }
   ShowMessage ( 'TimeInicial = ' + Str_TimeInicial + Chr(13) + Chr(10) + 'TimeFinal = ' + Str_TimeFinal );
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

end.
