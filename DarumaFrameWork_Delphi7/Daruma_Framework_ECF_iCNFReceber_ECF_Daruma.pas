unit Daruma_Framework_ECF_iCNFReceber_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_iCNFReceber_ECF_Daruma = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    CMB_IndiceTotalizador: TComboBox;
    EDT_Valor: TEdit;
    CMB_TipoAcrescDesc: TComboBox;
    EDT_ValorDescAcresc: TEdit;
    BT_ENVIAR: TButton;
    BT_FECHAR: TButton;
    procedure BT_FECHARClick(Sender: TObject);
    procedure BT_ENVIARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_iCNFReceber_ECF_Daruma: TFR_iCNFReceber_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_iCNFReceber_ECF_Daruma.BT_FECHARClick(Sender: TObject);
begin
  Close;
end;

procedure TFR_iCNFReceber_ECF_Daruma.BT_ENVIARClick(Sender: TObject);
Var Str_Tipo_Desc_Acresc, Str_Valor_Desc_Acrec, Str_Indice, Str_Valor: String;

begin
   Str_Tipo_Desc_Acresc:=CMB_TipoAcrescDesc.Text;
   Str_Valor_Desc_Acrec:=EDT_ValorDescAcresc.Text;
   Str_Indice:=CMB_IndiceTotalizador.Text;
   Str_Valor:=EDT_Valor.Text;


   Int_Retorno := iCNFReceber_ECF_Daruma(Str_Indice, Str_Valor, Str_Tipo_Desc_Acresc, Str_Valor_Desc_Acrec);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

   end;
end.
