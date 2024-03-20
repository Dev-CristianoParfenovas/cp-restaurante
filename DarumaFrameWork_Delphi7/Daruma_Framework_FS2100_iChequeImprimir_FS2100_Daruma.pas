unit Daruma_Framework_FS2100_iChequeImprimir_FS2100_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FS2100_iChequeImprimir = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    EDT_NUMERO_BANCO: TEdit;
    EDT_CIDADE: TEdit;
    EDT_DATA: TEdit;
    EDT_NOME_FAVORECIDO: TEdit;
    EDT_TEXTO: TEdit;
    EDT_VALOR: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FS2100_iChequeImprimir: TFR_FS2100_iChequeImprimir;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FS2100_iChequeImprimir.Button2Click(Sender: TObject);
begin
Close();
end;

procedure TFR_FS2100_iChequeImprimir.Button1Click(Sender: TObject);
var Str_NumeroBanco, Str_Cidade, Str_Data, Str_NomeFavorecido, Str_TextoLivre, Str_Valor: String;
begin
  Str_NumeroBanco:=EDT_NUMERO_BANCO.Text;
  Str_Cidade:=EDT_CIDADE.Text;
  Str_Data:=EDT_DATA.Text;
  Str_NomeFavorecido:=EDT_NOME_FAVORECIDO.Text;
  Str_TextoLivre:=EDT_TEXTO.Text;
  Str_Valor:=EDT_VALOR.Text;

   Int_Retorno :=  iImprimir_CHEQUE_Daruma(Str_NumeroBanco, Str_Cidade, Str_Data, Str_NomeFavorecido, Str_TextoLivre, Str_Valor);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

end;

end.
