unit EmissaoCupomTeste;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DarumaFramework_SAT;

type
  TFR_EmissaoCupomTeste = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    EDT_Cupom: TEdit;
    EDT_Item: TEdit;
    BT_Enviar: TButton;
    BT_Fechar: TButton;
    Label3: TLabel;
    Button1: TButton;
    procedure BT_EnviarClick(Sender: TObject);
    procedure BT_FecharClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_EmissaoCupomTeste: TFR_EmissaoCupomTeste;

implementation 
{$R *.dfm}

procedure TFR_EmissaoCupomTeste.BT_EnviarClick(Sender: TObject);
var
int_qtdeCFe: Integer;
int_qtdeItens: Integer;

begin
  int_qtdeCFe:=StrToInt(EDT_Cupom.Text);
  Str_Parametro:= StringOFChar(#0,700);

  Str_Parametro:= '<prod><cProd>001</cProd><xProd>Pao de forma</xProd><uCom>kg</uCom><qCom>1.0000</qCom><vUnCom>1.000</vUnCom>';
  Str_Parametro:= Str_Parametro + '</prod><imposto><ICMS><ICMS00><pICMS>1.00</pICMS></ICMS00></ICMS><PIS><PISAliq><CST>01</CST><vBC>1.00</vBC><pPIS>1.0000</pPIS></PISAliq></PIS>';
  Str_Parametro:= Str_Parametro + '<PISST><vBC>1.00</vBC><pPIS>1.0000</pPIS></PISST><COFINS><COFINSAliq><CST>01</CST><vBC>1.00</vBC><pCOFINS>1.0000</pCOFINS></COFINSAliq></COFINS></imposto>';

While int_qtdeCFe <> 0 do
begin
  iRetorno:=aCFeAbrir_SAT_Daruma('<dest><CNPJ>45170289000125</CNPJ><xNome>Daruma Telecomunicações e Informatica SA</xNome></dest>');
  if (iRetorno=1)then
  begin
    int_qtdeItens:= StrToInt(EDT_Item.Text);
    While int_qtdeItens <> 0 do
    begin
      iRetorno:= aCFeVender_SAT_Daruma(Str_Parametro);
      if (iRetorno<>1) then
      begin
          Application.MessageBox('Ocorreu erro no registro de item!', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
          break;
      end
      else
       begin
         int_qtdeItens:=int_qtdeItens-1;
       end;
    end;
    iRetorno:=aCFeTotalizar_SAT_Daruma('<total><DescAcrEntr><vDescSubtot>0.00</vDescSubtot></DescAcrEntr><vCFeLei12741>12.00</vCFeLei12741></total>');
    iRetorno:=aCFeEfetuarPagamento_SAT_Daruma('<MP><cMP>01</cMP><vMP>'+EDT_Item.Text +'.00</vMP></MP>');
    iRetorno:=tCFeEncerrar_SAT_Daruma('<infAdic><infCpl>Obrigada e volte sempre!</infCpl></infAdic>');
    if (iRetorno<>1) then
      begin
       Application.MessageBox('Ocorreu erro no cupom!', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
       break;
      end
    else
      begin
        int_qtdeCFe:=int_qtdeCFe-1;
      end;
  end
  else
  begin
    Application.MessageBox(pchar('Erro ao Iniciar venda '+ IntToStr(iRetorno)), 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
    int_qtdeCFe:=0;
  end;
end;
 DarumaFramework_SAT.FR_DarumaFramework_SAT.Tratar_RetornoSAT(iRetorno);

end;

procedure TFR_EmissaoCupomTeste.BT_FecharClick(Sender: TObject);
begin
Close();
end;

procedure TFR_EmissaoCupomTeste.Button1Click(Sender: TObject);
begin
	iRetorno:= tCFeCancelar_SAT_Daruma();
      DarumaFramework_SAT.FR_DarumaFramework_SAT.Tratar_RetornoSAT(iRetorno);

end;

end.
