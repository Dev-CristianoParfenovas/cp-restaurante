unit Daruma_Framework_FISCAL_iSangria_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_iSangria_ECF_Daruma = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edt_Valor: TEdit;
    Edt_Mensagem: TEdit;
    BT_ENVIAR: TButton;
    BT_FECHAR: TButton;
    procedure BT_ENVIARClick(Sender: TObject);
    procedure BT_FECHARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_iSangria_ECF_Daruma: TFR_FISCAL_iSangria_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_iSangria_ECF_Daruma.BT_ENVIARClick(Sender: TObject);
var Str_Valor, Str_Mensagem:String;
Begin
   Str_Valor := Edt_Valor.Text;
   Str_Mensagem := Edt_Mensagem.Text;
   Int_Retorno:= iSangria_ECF_Daruma(pchar(Str_Valor), pchar(Str_Mensagem));
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_iSangria_ECF_Daruma.BT_FECHARClick(Sender: TObject);
begin
   close;
end;

end.
