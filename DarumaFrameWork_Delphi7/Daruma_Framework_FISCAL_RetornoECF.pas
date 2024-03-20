unit Daruma_Framework_FISCAL_RetornoECF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TFR_FISCAL_RetornoECF = class(TForm)
    GroupBox1: TGroupBox;
    Edt_Retorno: TMemo;
    MainMenu1: TMainMenu;
    MtodosRetornosECF1: TMenuItem;
    Fechar: TButton;
    MtodorLerAliquotasECFDaruma1: TMenuItem;
    MtodorLerMeiosPagtoECFDaruma1: TMenuItem;
    MtodorLerRGECFDaruma1: TMenuItem;
    MtodorRetornarInformacaoECFDaruma1: TMenuItem;
    MtodosStatus1: TMenuItem;
    Mtodo1: TMenuItem;
    MtodorStatusUltimoCmdECFDaruma1: TMenuItem;
    MtodorStatusUltimoCmdIntECFDaruma1: TMenuItem;
    MtodorStatusUltimoCmdStrECFDaruma1: TMenuItem;
    MtodosrLerDecimaisECFDaruma1: TMenuItem;
    MtodosrLerDecimaisIntECFDaruma1: TMenuItem;
    MtodosrLerDecimaisStrECFDaruma1: TMenuItem;
    MtodosrDataHoraImpressoraECFDaruma1: TMenuItem;
    MtodorVerificarReducaoZECFDaruma1: TMenuItem;
    MtodorRetornarDadosReducaoZECFDaruma1: TMenuItem;
    Mt1: TMenuItem;
    MtodorInfoEstentida2ECFDaruma1: TMenuItem;
    MtodorInfoEstentida3ECFDaruma1: TMenuItem;
    MtodorInfoEstentida4ECFDaruma1: TMenuItem;
    MtodorInfoEstentida5ECFDaruma1: TMenuItem;
    Btn_Limpar: TButton;
    MtodosEspeciais1: TMenuItem;
    Mtodo2: TMenuItem;
    RetornoCupomFiscal1: TMenuItem;
    MtodosrCFSaldoAPagarECFDaruma1: TMenuItem;
    MtodorCFSubTotalECFDaruma1: TMenuItem;
    N1: TMenuItem;
    MtodorVerificaImpressoraLigadaECFDaruma1: TMenuItem;
    MtodorInfoEstendidaECFDaruma1: TMenuItem;
    MtodorCFVerificarStatusECFDaruma1: TMenuItem;
    MtodoseVerificarVersaoDLLDaruma1: TMenuItem;
    MtodorLerCNFECFDaruma1: TMenuItem;
    MtodorRetornarInformacaoSeparadorECFDaruma1: TMenuItem;
    RelatriodeConfigurao1: TMenuItem;
    iRelatorioConfiguracaoECFDaruma1: TMenuItem;
    MtodorStatusImpressoraBinarioECFDaruma1: TMenuItem;
    MtodorConsultaStatusImpressoraStrECFDaruma1: TMenuItem;
    MtodorConsultaStatusImpressoraIntECFDaruma1: TMenuItem;
    MtodorTipoUltimoDocumentoIntECFDaruma1: TMenuItem;
    MtodorTipoUltimoDocumentoStrECFDaruma1: TMenuItem;
    MtodorUltimoCMDEnviadoECFDaruma1: TMenuItem;
    MtodoeRetornarPortasCOMECFDaruma1: TMenuItem;
    MtodorMinasLegalECFDaruma1: TMenuItem;
    Mtodor1: TMenuItem;
    MtodoeRetornarAvisoErroUltimoCMDECFDaruma1: TMenuItem;
    MtodoeInterpretarRetornoECFDaruma1: TMenuItem;
    MtodoeInterpretarAvisoECFDaruma1: TMenuItem;
    MtodoeInterpretarErroECFDaruma1: TMenuItem;
    MtodoeRetornarVendaLiquidaECFDaruma1: TMenuItem;
    MtodorCompararDataHoraECFDaruma1: TMenuItem;
    Mtodo3: TMenuItem;
    procedure FecharClick(Sender: TObject);
    procedure MtodorLerAliquotasECFDaruma1Click(Sender: TObject);
    procedure MtodorLerMeiosPagtoECFDaruma1Click(Sender: TObject);
    procedure MtodorLerRGECFDaruma1Click(Sender: TObject);
    procedure MtodorRetornarInformacaoECFDaruma1Click(Sender: TObject);
    procedure MtodosrLerDecimaisECFDaruma1Click(Sender: TObject);
    procedure MtodosrLerDecimaisIntECFDaruma1Click(Sender: TObject);
    procedure MtodosrLerDecimaisStrECFDaruma1Click(Sender: TObject);
    procedure MtodosrDataHoraImpressoraECFDaruma1Click(Sender: TObject);
    procedure MtodorVerificarReducaoZECFDaruma1Click(Sender: TObject);
    procedure MtodorRetornarDadosReducaoZECFDaruma1Click(Sender: TObject);
    procedure MtodorStatusUltimoCmdECFDaruma1Click(Sender: TObject);
    procedure Btn_LimparClick(Sender: TObject);
    procedure Mtodo2Click(Sender: TObject);
    procedure Mt1Click(Sender: TObject);
    procedure MtodorInfoEstentida2ECFDaruma1Click(Sender: TObject);
    procedure MtodorInfoEstentida3ECFDaruma1Click(Sender: TObject);
    procedure MtodorInfoEstentida4ECFDaruma1Click(Sender: TObject);
    procedure MtodorInfoEstentida5ECFDaruma1Click(Sender: TObject);
    procedure MtodosrCFSaldoAPagarECFDaruma1Click(Sender: TObject);
    procedure MtodorCFSubTotalECFDaruma1Click(Sender: TObject);
    procedure MtodorVerificaImpressoraLigadaECFDaruma1Click(
      Sender: TObject);
    procedure MtodorInfoEstendidaECFDaruma1Click(Sender: TObject);
    procedure MtodorCFVerificarStatusECFDaruma1Click(Sender: TObject);
    procedure MtodoseVerificarVersaoDLLDaruma1Click(Sender: TObject);
    procedure Mtodo1Click(Sender: TObject);
    procedure MtodorLerCNFECFDaruma1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure MtodorRetornarInformacaoSeparadorECFDaruma1Click(
      Sender: TObject);
    procedure iRelatorioConfiguracaoECFDaruma1Click(Sender: TObject);
    procedure MtodorStatusImpressoraBinarioECFDaruma1Click(
      Sender: TObject);
    procedure MtodorConsultaStatusImpressoraStrECFDaruma1Click(
      Sender: TObject);
    procedure MtodorConsultaStatusImpressoraIntECFDaruma1Click(
      Sender: TObject);
    procedure MtodorTipoUltimoDocumentoIntECFDaruma1Click(Sender: TObject);
    procedure MtodorTipoUltimoDocumentoStrECFDaruma1Click(Sender: TObject);
    procedure MtodorUltimoCMDEnviadoECFDaruma1Click(Sender: TObject);
    procedure MtodoeRetornarPortasCOMECFDaruma1Click(Sender: TObject);
    procedure MtodorMinasLegalECFDaruma1Click(Sender: TObject);
    procedure Mtodor1Click(Sender: TObject);
    procedure MtodoeRetornarAvisoErroUltimoCMDECFDaruma1Click(
      Sender: TObject);
    procedure MtodoeInterpretarRetornoECFDaruma1Click(Sender: TObject);
    procedure MtodoeInterpretarAvisoECFDaruma1Click(Sender: TObject);
    procedure MtodoeInterpretarErroECFDaruma1Click(Sender: TObject);
    procedure MtodoeRetornarVendaLiquidaECFDaruma1Click(Sender: TObject);
    procedure MtodorCompararDataHoraECFDaruma1Click(Sender: TObject);
    procedure Mtodo3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_RetornoECF: TFR_FISCAL_RetornoECF;

implementation

uses Daruma_Framework_FISCAL_Principal,
  Daruma_Framework_FISCAL_rRetornarInformacao_ECF_Daruma,
  Daruma_Framework_FISCAL_rRetornarInformacaoSeparador_ECF_Daruma;

{$R *.dfm}

procedure TFR_FISCAL_RetornoECF.FecharClick(Sender: TObject);
begin
   close;
end;

procedure TFR_FISCAL_RetornoECF.MtodorLerAliquotasECFDaruma1Click(
  Sender: TObject);
var
    Str_Informacao: String;
begin
   Str_Informacao:= StringOFChar(#0,330);
   Int_Retorno := rLerAliquotas_ECF_Daruma(Str_Informacao);
   Edt_Retorno.Lines.Text := Trim(Str_Informacao);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_RetornoECF.MtodorLerMeiosPagtoECFDaruma1Click(
  Sender: TObject);
var
    Str_Informacao: String;
begin
	 Str_Informacao:= StringOFChar(#0,330);
   Int_Retorno := rLerMeiosPagto_ECF_Daruma(Str_Informacao);
	 Edt_Retorno.Lines.Text := Trim(Str_Informacao);
	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

end;

procedure TFR_FISCAL_RetornoECF.MtodorLerRGECFDaruma1Click(
  Sender: TObject);
var
    Str_Informacao: String;
begin
	 Str_Informacao:= StringOFChar(#0,330);
	 Int_Retorno := rLerRG_ECF_Daruma(Str_Informacao);
	 Edt_Retorno.Lines.Text := Trim(Str_Informacao);
	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

end;

procedure TFR_FISCAL_RetornoECF.MtodorRetornarInformacaoECFDaruma1Click(
  Sender: TObject);
begin
	 FR_FISCAL_rRetornarInformacao_ECF_Daruma.show;
end;

procedure TFR_FISCAL_RetornoECF.MtodosrLerDecimaisECFDaruma1Click(
	Sender: TObject);
Var Str_DecimalQtde, Str_DecimalValor: String;
		Int_DecimalQtde, Int_DecimalValor: integer;
begin
	 SetLength (Str_DecimalQtde,2);
	 SetLength (Str_DecimalValor,2);
	 Int_Retorno := rLerDecimais_ECF_Daruma(Str_DecimalQtde, Str_DecimalValor, Int_DecimalQtde, Int_DecimalValor);
	 Edt_Retorno.Lines.Text := ('Decimais Valor Unitário: ' + pchar(Str_DecimalValor) + #13#10+ 'Decimais Quantidade: ' + pchar(Str_DecimalQtde));
 	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

end;

procedure TFR_FISCAL_RetornoECF.MtodosrLerDecimaisIntECFDaruma1Click(
  Sender: TObject);
Var Int_DecimalQtdeInt, Int_DecimalValorInt: integer;
begin
   Int_DecimalQtdeInt:= 0;
   Int_DecimalValorInt:= 0;
	 Int_Retorno := rLerDecimaisInt_ECF_Daruma(Int_DecimalQtdeInt, Int_DecimalValorInt);
	 Edt_Retorno.Lines.Text := ('Decimais para Valor Unitário: ' + IntToStr(Int_DecimalValorInt) +  #13#10+ ' Decimais para Quantidade: ' + IntToStr(Int_DecimalQtdeInt));
	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_RetornoECF.MtodosrLerDecimaisStrECFDaruma1Click(
	Sender: TObject);
Var Str_DecimalQtdeStr, Str_DecimalValorStr: String;
begin
	 SetLength (Str_DecimalQtdeStr,2);
	 SetLength (Str_DecimalValorStr,2);
	 Edt_Retorno.Lines.Text := ('Decimais para Valor Unitário: ' + Str_DecimalValorStr +  #13#10+ ' Decimais para Quantidade: ' + Str_DecimalQtdeStr);
	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_RetornoECF.MtodosrDataHoraImpressoraECFDaruma1Click(
  Sender: TObject);
Var Str_Data, Str_Hora: String;
begin
	 SetLength (Str_Data,10);
	 SetLength (Str_Hora,10);
	 Int_Retorno := rDataHoraImpressora_ECF_Daruma(Str_Data, Str_Hora);
	 Edt_Retorno.Lines.Text := ('Data: ' + pchar(Str_Data) +  #13#10+ 'Hora: ' + pchar(Str_Hora));
	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_RetornoECF.MtodorVerificarReducaoZECFDaruma1Click(
  Sender: TObject);
Var Str_VerificarRZ: String;
begin
	 SetLength (Str_VerificarRZ,1);
	 Int_Retorno := rVerificarReducaoZ_ECF_Daruma(Str_VerificarRZ);
   if str_VerificarRZ = '1' then
     begin
      	 Edt_Retorno.Lines.Text := (' 1 - Redução Z Pendente!!');
      end
      else
      begin
         Edt_Retorno.Lines.Text:= (' 0 - Não existe Redução Z pendente!!');
      end;
	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_RetornoECF.MtodorRetornarDadosReducaoZECFDaruma1Click(
  Sender: TObject);
Var Str_DadosUltimaRZ: String;
begin
	 SetLength (Str_DadosUltimaRZ,1500);
	 Int_Retorno := rRetornarDadosReducaoZ_ECF_Daruma(Str_DadosUltimaRZ);
	 Edt_Retorno.Lines.Text := (Str_DadosUltimaRZ);
	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_RetornoECF.MtodorStatusUltimoCmdECFDaruma1Click(
  Sender: TObject);
  Var Str_ErroCMD, Str_AvisoCMD: String;
begin
 SetLength (Str_ErroCMD,3);
 SetLength (Str_AvisoCMD,3);

   Int_Retorno := rStatusUltimoCmd_ECF_Daruma(Str_ErroCMD, Str_AvisoCMD, Int_NumErro, Int_NumAviso);
    Edt_Retorno.Lines.Text := ('Num.Erro: ' + IntToStr(Int_NumErro) + ' Num.Aviso: ' + IntToStr(Int_NumAviso) + ' Str.Erro: ' + pchar(Str_ErroCMD) + ' Str.Aviso: ' + pchar(Str_AvisoCMD));
	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno)
end;

procedure TFR_FISCAL_RetornoECF.Btn_LimparClick(Sender: TObject);
begin
   Edt_Retorno.Lines.Text:= '';
end;

procedure TFR_FISCAL_RetornoECF.Mtodo2Click(Sender: TObject);
begin
    Int_Retorno := eBuscarPortaVelocidade_ECF_Daruma();
  	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_RetornoECF.Mt1Click(Sender: TObject);
Var Str_InfoEstendida1:String;
begin
  	 SetLength (Str_InfoEstendida1,30);
    Int_Retorno := regAlterarValor_Daruma('ReceberInfoEstendida', '1');
    Int_Retorno := rInfoEstentida1_ECF_Daruma(Str_InfoEstendida1);
    Edt_Retorno.Lines.Text := ('Info Estendida 1 : ' + Str_InfoEstendida1);
  	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_RetornoECF.MtodorInfoEstentida2ECFDaruma1Click(
  Sender: TObject);
Var Str_InfoEstendida2:String;
begin
  	 SetLength (Str_InfoEstendida2,30);
    Int_Retorno := regAlterarValor_Daruma('ReceberInfoEstendida', '1');
    Int_Retorno := rInfoEstentida2_ECF_Daruma(Str_InfoEstendida2);
    Edt_Retorno.Lines.Text := ('Info Estendida 2 : ' + Str_InfoEstendida2);
 	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

end;

procedure TFR_FISCAL_RetornoECF.MtodorInfoEstentida3ECFDaruma1Click(
  Sender: TObject);
Var Str_InfoEstendida3:String;
begin
  	 SetLength (Str_InfoEstendida3,30);
    Int_Retorno := regAlterarValor_Daruma('ReceberInfoEstendida', '1');
    Int_Retorno := rInfoEstentida3_ECF_Daruma(Str_InfoEstendida3);
    Edt_Retorno.Lines.Text := ('Info Estendida 3 : ' + Str_InfoEstendida3);
 	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_RetornoECF.MtodorInfoEstentida4ECFDaruma1Click(
  Sender: TObject);
Var Str_InfoEstendida4:String;
begin
    SetLength (Str_InfoEstendida4,30);
    Int_Retorno := regAlterarValor_Daruma('ReceberInfoEstendida', '1');
    Int_Retorno := rInfoEstentida4_ECF_Daruma(Str_InfoEstendida4);
    Edt_Retorno.Lines.Text := ('Info Estendida 4 : ' + Str_InfoEstendida4);
    FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_RetornoECF.MtodorInfoEstentida5ECFDaruma1Click(
  Sender: TObject);
Var Str_InfoEstendida5:String;
begin
 	 SetLength (Str_InfoEstendida5,30);
   Int_Retorno := regAlterarValor_Daruma('ReceberInfoEstendida', '1');
   Int_Retorno := rInfoEstentida5_ECF_Daruma(Str_InfoEstendida5);
   Edt_Retorno.Lines.Text := ('Info Estendida 5 : ' + Str_InfoEstendida5);
 	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

end;

procedure TFR_FISCAL_RetornoECF.MtodosrCFSaldoAPagarECFDaruma1Click(
  Sender: TObject);
Var Str_SaldoAPagar:String;
begin
    SetLength (Str_SaldoAPagar,13);
    Int_Retorno := rCFSaldoAPagar_ECF_Daruma(Str_SaldoAPagar);
     Edt_Retorno.Lines.Text := ('Saldo a pagar: ' + Str_SaldoAPagar);
 	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_RetornoECF.MtodorCFSubTotalECFDaruma1Click(
  Sender: TObject);
Var Str_Subtotal:String;
begin
    SetLength (Str_Subtotal,13);
    Int_Retorno := rCFSubtotal_ECF_Daruma(Str_Subtotal);
     Edt_Retorno.Lines.Text := ('Subtotal: ' + Str_Subtotal);
 	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

end;

procedure TFR_FISCAL_RetornoECF.MtodorVerificaImpressoraLigadaECFDaruma1Click(
  Sender: TObject);
  Var Str_Retorno:String;
begin
    SetLength (Str_Retorno,300);
    Int_Retorno:= rVerificarImpressoraLigada_ECF_Daruma();
    if(Int_Retorno=1) then
    begin
        Edt_Retorno.Lines.Text:='[1] Impressora Ligada';
        end
    else
    begin
       eInterpretarRetorno_ECF_Daruma(Int_Retorno,Str_Retorno);
       Edt_Retorno.Lines.Text:='[' + IntToStr(Int_Retorno) + '] - ' + Trim(Str_Retorno);
    end;
end;

procedure TFR_FISCAL_RetornoECF.MtodorInfoEstendidaECFDaruma1Click(
  Sender: TObject);
Var Str_InfoEstendida:String;
     Int_InfoEstendida:Integer;
     Str_IInfo:String;
begin
 	 SetLength (Str_InfoEstendida,40);

   Str_IInfo := InputBox('DarumaFramework', 'Entre com o índice da resposta estendida desejada:',  '1');
   Int_InfoEstendida:=StrtoInt(Str_IInfo);
   Int_Retorno := regAlterarValor_Daruma('ECF\ReceberInfoEstendida', '1');
   Int_Retorno := rInfoEstendida_ECF_Daruma(Int_InfoEstendida ,Str_InfoEstendida);
   Edt_Retorno.Lines.Text := ('Info Estendida Int :' + IntToStr(Int_InfoEstendida) + #13#10+ 'Info Estendida STR: ' +pchar(Str_InfoEstendida));
 	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_RetornoECF.MtodorCFVerificarStatusECFDaruma1Click(
  Sender: TObject);
Var Str_StatusCupomFiscal:String;
     Int_StatusCupomFiscal:Integer;
begin
 	 SetLength (Str_StatusCupomFiscal,1);
   Int_Retorno := rCFVerificarStatus_ECF_Daruma(Str_StatusCupomFiscal, Int_StatusCupomFiscal);
   If Int_StatusCupomFiscal = 1 then
   begin
   Edt_Retorno.Lines.Text := ('Status Cupom Fiscal STR: ' +pchar(STR_StatusCupomFiscal) + ' Aberto' + #13#10+'Status Cupom Fiscal Int :' + IntToStr(Int_StatusCupomFiscal) + ' Aberto');
   end
   else
    Edt_Retorno.Lines.Text := ('Status Cupom Fiscal STR: ' +pchar(STR_StatusCupomFiscal) + ' Fechado ' + #13#10+'Status Cupom Fiscal Int :' + IntToStr(Int_StatusCupomFiscal) + ' Fechado');
 	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_RetornoECF.MtodoseVerificarVersaoDLLDaruma1Click(
  Sender: TObject);
Var Str_VersaoDLL:String;
begin
 	 SetLength (Str_VersaoDLL,10);
   Int_Retorno := eVerificarVersaoDLL_Daruma(Str_VersaoDLL);
   Edt_Retorno.Lines.Text := ('Versão DLL :' + pchar(STR_VersaoDLL));
 	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

end;

procedure TFR_FISCAL_RetornoECF.Mtodo1Click(Sender: TObject);
Var Str_StatusEcf_Str :string;
Int_StatusEcf_Int:integer;
begin
   SetLength (Str_StatusEcf_Str,14);
   Int_Retorno :=  rStatusImpressora_ECF_Daruma(Str_StatusEcf_Str);
   ShowMessage(Str_StatusEcf_Str);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

end;

procedure TFR_FISCAL_RetornoECF.MtodorLerCNFECFDaruma1Click(
  Sender: TObject);
var
    Str_Informacao: String;
begin
	 //SetLength (Str_Informacao,330);
   Str_Informacao:= StringOFChar(#0,330);
	 Int_Retorno := rLerCNF_ECF_Daruma(Str_Informacao);
   Edt_Retorno.Lines.Text:='';
	 Edt_Retorno.Lines.Text := Trim(Str_Informacao);
	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

end;

procedure TFR_FISCAL_RetornoECF.Button1Click(Sender: TObject);
var
Str_Info: String;
begin
    SetLength (Str_Info,10);
     Int_Retorno := rCFVerificarStatusStr_ECF_Daruma(Str_Info);
     Edt_Retorno.Lines.Text := (Str_Info);
 	   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_RetornoECF.MtodorRetornarInformacaoSeparadorECFDaruma1Click(
  Sender: TObject);
begin
	 FR_FISCAL_rRetornarInformacaoSeparador_ECF_Daruma.show;
end;

procedure TFR_FISCAL_RetornoECF.iRelatorioConfiguracaoECFDaruma1Click(
  Sender: TObject);
begin

   Int_Retorno:=  iRelatorioConfiguracao_ECF_Daruma();
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

end;

procedure TFR_FISCAL_RetornoECF.MtodorStatusImpressoraBinarioECFDaruma1Click(
  Sender: TObject);
  var Str_Valor:String;
begin
   SetLength (Str_Valor,100);
   Int_Retorno := rStatusImpressoraBinario_ECF_Daruma(Str_Valor);
   Application.MessageBox(pchar(Str_Valor), 'Daruma Framework', mb_ok + 32);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
   end;

procedure TFR_FISCAL_RetornoECF.MtodorConsultaStatusImpressoraStrECFDaruma1Click(
  Sender: TObject);
  var Iindice:Integer;
      Str_Indice:String;
      Str_Valor:String;
begin
   SetLength (Str_Valor,200);
   Str_Indice := InputBox('DarumaFramework', 'Entre com o índice desejado:',  '1');
   Iindice:=StrtoInt(Str_Indice);
   if (Str_Indice = '') Then
   begin
      Exit;
      end
   else
   begin
   Int_Retorno := rConsultaStatusImpressoraStr_ECF_Daruma(Iindice, Str_Valor);
   Application.MessageBox(pchar(Str_Valor), 'Daruma Framework', mb_ok + 32);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
   end

end;

procedure TFR_FISCAL_RetornoECF.MtodorConsultaStatusImpressoraIntECFDaruma1Click(
  Sender: TObject);
 var Iindice:Integer;
      Str_Indice:String;
      Int_Valor:Integer;
begin
 
   Str_Indice := InputBox('DarumaFramework', 'Entre com o índice desejado:',  '1');
   Iindice:=StrtoInt(Str_Indice);
   if (Str_Indice = '') Then
   begin
      Exit;
      end
   else
   begin
   Int_Retorno := rConsultaStatusImpressoraInt_ECF_Daruma(Iindice, Int_Valor);
   Application.MessageBox(pchar(IntToStr(Int_Valor)), 'Daruma Framework', mb_ok + 32);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
   end
end;

procedure TFR_FISCAL_RetornoECF.MtodorTipoUltimoDocumentoIntECFDaruma1Click(
  Sender: TObject);
Var Str_TipoDoc: String;
begin
	 SetLength (Str_TipoDoc,2);
	 Int_Retorno := rTipoUltimoDocumentoInt_ECF_Daruma(Str_TipoDoc);
	 Edt_Retorno.Lines.Text := (Str_TipoDoc);
	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_RetornoECF.MtodorTipoUltimoDocumentoStrECFDaruma1Click(
  Sender: TObject);
Var Str_TipoDoc: String;
begin
	 SetLength (Str_TipoDoc,4);
	 Int_Retorno := rTipoUltimoDocumentoStr_ECF_Daruma(Str_TipoDoc);
	 Edt_Retorno.Lines.Text := (Str_TipoDoc);
	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;


procedure TFR_FISCAL_RetornoECF.MtodorUltimoCMDEnviadoECFDaruma1Click(
  Sender: TObject);
Var Str_UltimoCMD: String;
begin
	 SetLength (Str_UltimoCMD,100);
	 Int_Retorno := rUltimoCMDEnviado_ECF_Daruma(Str_UltimoCMD);
	 Edt_Retorno.Lines.Text := (Str_UltimoCMD);
	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;


procedure TFR_FISCAL_RetornoECF.MtodoeRetornarPortasCOMECFDaruma1Click(
  Sender: TObject);
Var Str_COM: String;
begin
   Str_COM:=StringOFChar(#0,50);
   Int_Retorno := eRetornarPortasCOM_ECF_Daruma(Str_COM);
   Edt_Retorno.Lines.Clear();
	 Edt_Retorno.Lines.Text := (Trim(Str_COM));
	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
    end;
procedure TFR_FISCAL_RetornoECF.MtodorMinasLegalECFDaruma1Click(
  Sender: TObject);
Var Str_MinasLegal: String;
begin
   Str_MinasLegal:=StringOFChar(#0,50);
   Int_Retorno := rMinasLegal_ECF_Daruma(Str_MinasLegal);
   Edt_Retorno.Lines.Clear();
	 Edt_Retorno.Lines.Text := (Trim(Str_MinasLegal));
	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
    end;

procedure TFR_FISCAL_RetornoECF.Mtodor1Click(Sender: TObject);
Var Str_VendaBruta: String;
begin
  Str_VendaBruta:=StringOFChar(#0,19);
   Int_Retorno := rRetornarVendaBruta_ECF_Daruma(Str_VendaBruta);
   Edt_Retorno.Lines.Clear();
	 Edt_Retorno.Lines.Text := (Trim(Str_VendaBruta));
	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_RetornoECF.MtodoeRetornarAvisoErroUltimoCMDECFDaruma1Click(
  Sender: TObject);
  var
      Str_Msg_NumErro, Str_Msg_NumAviso : String;
begin
   Str_Msg_NumErro:=StringOFChar(' ',300);
   Str_Msg_NumAviso:=StringOFChar(' ',300);

// Retorna a mensagem referente ao erro e aviso do ultimo comando enviado
   Int_Retorno:=eRetornarAvisoErroUltimoCMD_ECF_Daruma(Str_Msg_NumAviso, Str_Msg_NumErro);

   Edt_Retorno.Lines.Clear();
	 Edt_Retorno.Lines.Text := (Pchar('Mensagem Erro = ' + pchar(Trim(Str_Msg_NumErro)) +  #13 +
                              'Mensagem Aviso = ' + pchar(Trim(Str_Msg_NumAviso))));

end;

procedure TFR_FISCAL_RetornoECF.MtodoeInterpretarRetornoECFDaruma1Click(
  Sender: TObject);
  var Iindice:Integer;
      Str_Indice:String;
      Str_Valor:String;
begin
   SetLength (Str_Valor,300);
   Str_Indice := InputBox('DarumaFramework', 'Entre com o número do retorno:',  '-12');
   Iindice:=StrtoInt(Str_Indice);
   if (Str_Indice = '') Then
   begin
      Exit;
      end
   else
   begin
   Int_Retorno := eInterpretarRetorno_ECF_Daruma(Iindice, Str_Valor);
   Application.MessageBox(pchar(Str_Valor), 'Daruma Framework', mb_ok + 32);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
   end

end;

procedure TFR_FISCAL_RetornoECF.MtodoeInterpretarAvisoECFDaruma1Click(
  Sender: TObject);
var Iindice:Integer;
      Str_Indice:String;
      Str_Valor:String;
begin
   SetLength (Str_Valor,300);
   Str_Indice := InputBox('DarumaFramework', 'Entre com o número do Aviso:',  '1');
   Iindice:=StrtoInt(Str_Indice);
   if (Str_Indice = '') Then
   begin
      Exit;
      end
   else
   begin
   Int_Retorno := eInterpretarAviso_ECF_Daruma(Iindice, Str_Valor);
   Application.MessageBox(pchar(Str_Valor), 'Daruma Framework', mb_ok + 32);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
   end

end;

procedure TFR_FISCAL_RetornoECF.MtodoeInterpretarErroECFDaruma1Click(
  Sender: TObject);
var Iindice:Integer;
      Str_Indice:String;
      Str_Valor:String;
begin
   SetLength (Str_Valor,300);
   Str_Indice := InputBox('DarumaFramework', 'Entre com o número do Erro:',  '78');
   Iindice:=StrtoInt(Str_Indice);
   if (Str_Indice = '') Then
   begin
      Exit;
      end
   else
   begin
   Int_Retorno := eInterpretarErro_ECF_Daruma(Iindice, Str_Valor);
   Application.MessageBox(pchar(Str_Valor), 'Daruma Framework', mb_ok + 32);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
   end

end;

procedure TFR_FISCAL_RetornoECF.MtodoeRetornarVendaLiquidaECFDaruma1Click(
  Sender: TObject);
Var Str_VendaLiquida: String;
begin
   Str_VendaLiquida:=StringOFChar(#0,19);
   Int_Retorno := rRetornarVendaLiquida_ECF_Daruma(Str_VendaLiquida);
   Edt_Retorno.Lines.Clear();
	 Edt_Retorno.Lines.Text := (Trim(Str_VendaLiquida));
	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_RetornoECF.MtodorCompararDataHoraECFDaruma1Click(
  Sender: TObject);
Var Int_Diferenca: integer;
begin

	 Int_Retorno := rCompararDataHora_ECF_Daruma(Int_Diferenca);
	 Edt_Retorno.Lines.Text := ('Diferença entre Data/Hora do PC em relação ao ECF, em minutos: ' + IntToStr(Int_Diferenca));
 	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

end;

procedure TFR_FISCAL_RetornoECF.Mtodo3Click(Sender: TObject);
Var Str_Info: string;
begin
   Str_Info:=StringOFChar(#0,660);
   Int_Retorno := rInfoCNF_ECF_Daruma(Str_Info);
	 Edt_Retorno.Lines.Text := Str_Info;
 	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

end;

end.
