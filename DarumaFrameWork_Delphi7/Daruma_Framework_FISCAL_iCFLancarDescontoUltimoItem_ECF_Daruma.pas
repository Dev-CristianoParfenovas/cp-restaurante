unit Daruma_Framework_FISCAL_iCFLancarDescontoUltimoItem_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_iCFLancarDescontoUltimoItem_ECF_Daruma = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edt_Valor_Desconto: TEdit;
    BT_ENVIAR: TButton;
    BT_FECHAR: TButton;
    CMB_TipoAcrescDesc: TComboBox;
    procedure BT_FECHARClick(Sender: TObject);
    procedure BT_ENVIARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_iCFLancarDescontoUltimoItem_ECF_Daruma: TFR_FISCAL_iCFLancarDescontoUltimoItem_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_iCFLancarDescontoUltimoItem_ECF_Daruma.BT_FECHARClick(
  Sender: TObject);
begin
   close;
end;

procedure TFR_FISCAL_iCFLancarDescontoUltimoItem_ECF_Daruma.BT_ENVIARClick(
  Sender: TObject);
Var
   Str_Tipo_Desconto, Str_Valor_Desconto: String;
begin
   Str_Tipo_Desconto := cmb_TipoAcrescDesc.Text;
   Str_Valor_Desconto := Edt_Valor_Desconto.Text;

   Int_Retorno := iCFLancarDescontoUltimoItem_ECF_Daruma(Str_Tipo_Desconto, Str_Valor_Desconto);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);

end;

end.
