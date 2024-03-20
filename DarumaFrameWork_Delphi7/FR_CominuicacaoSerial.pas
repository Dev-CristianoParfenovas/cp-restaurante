unit FR_CominuicacaoSerial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_ComunicacaoSerial = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit4: TEdit;
    Button4: TButton;
    Edit5: TEdit;
    EDT_Dados: TMemo;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_ComunicacaoSerial: TFR_ComunicacaoSerial;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_ComunicacaoSerial.Button1Click(Sender: TObject);
var
teste:Integer;
begin

 Int_Retorno:= eDefinirProduto_Daruma('GENERICO');
// FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

teste:= eAbrirSerial_Daruma('COM1', '9600');
 ShowMessage(IntToStr(teste));
 //       FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(teste);
end;

procedure TFR_ComunicacaoSerial.Button2Click(Sender: TObject);
begin
Int_Retorno:= eFecharSerial_Daruma();
        FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_ComunicacaoSerial.Button3Click(Sender: TObject);
var tamBytes:Integer; Bytes:string;
begin
tamBytes:= StrToInt(Edit5.Text);
tamBytes:=tamBytes+1;
//Bytes:= Memo1.Text;

  Int_Retorno:= tEnviarDados_Daruma(Bytes, tamBytes);
  FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_ComunicacaoSerial.Button4Click(Sender: TObject);
var RetornoSerial:string;
begin
SetLength (RetornoSerial,100);
 // RetornoSerial:= StringOFChar(#0,100);
     Int_Retorno:= rReceberDados_Daruma(RetornoSerial);
     Edit4.Text:=(RetornoSerial);
        FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

end.
