unit Daruma_Framework_FISCAL_iImprimirCodigoBarras_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ExtCtrls;

type
  TFR_FISCAL_iImprimirCodigoBarras_ECF_Daruma = class(TForm)
    Rdg_CodigoBarras: TRadioGroup;
    Edt_CodigoBarras: TEdit;
    Label1: TLabel;
    MM_TextoLivre: TMemo;
    Label2: TLabel;
    CBX_CodVertical: TCheckBox;
    CBX_TextoAbaixoBarras: TCheckBox;
    Label3: TLabel;
    Label4: TLabel;
    BT_ENVIAR: TButton;
    BT_FECHAR: TButton;
    Btn_Limpar: TButton;
    CBX_Largura: TComboBox;
    CBX_Altura: TComboBox;
    procedure BT_FECHARClick(Sender: TObject);
    procedure BT_ENVIARClick(Sender: TObject);
    procedure Btn_LimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_iImprimirCodigoBarras_ECF_Daruma: TFR_FISCAL_iImprimirCodigoBarras_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal, Math;

{$R *.dfm}

procedure TFR_FISCAL_iImprimirCodigoBarras_ECF_Daruma.BT_FECHARClick(
  Sender: TObject);
begin
  close;
end;

procedure TFR_FISCAL_iImprimirCodigoBarras_ECF_Daruma.BT_ENVIARClick(
  Sender: TObject);
Var
 Str_Tipo, Str_Largura, Str_Altura, Str_ImprTexto, Str_Codigo,  Str_Orientacao, Str_TextoLivre : String;

begin
   case  Rdg_CodigoBarras.ItemIndex of
   0: Str_Tipo:= '1';
   1: Str_Tipo:= '2';
   2: Str_Tipo:= '3';
   3: Str_Tipo:= '4';
   4: Str_Tipo:= '5';
   5: Str_Tipo:= '6';
   6: Str_Tipo:= '7';
   7: Str_Tipo:= '8';
   8: Str_Tipo:= '9';
   9: Str_Tipo:= '10';
  10: Str_Tipo:= '11';
end;

  Str_Codigo:= Edt_CodigoBarras.Text;
  Str_Largura:=CBX_Largura.Text;
  Str_Altura:=CBX_Altura.Text;
  Str_TextoLivre := MM_TextoLivre.Text;

 If(CBX_TextoAbaixoBarras.Checked=true)then
   begin
      Str_ImprTexto:='1';
      end
      else
      begin
      Str_ImprTexto:='0';
   end;


 If(CBX_CodVertical.Checked=true)then
   begin
      Str_Orientacao:='v';
      end
      else
      begin
      Str_Orientacao:='h';
   end;

   Int_Retorno:= iImprimirCodigoBarras_ECF_Daruma(Str_Tipo, Str_Largura, Str_Altura, Str_ImprTexto , Str_Codigo, Str_Orientacao, Str_TextoLivre);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

procedure TFR_FISCAL_iImprimirCodigoBarras_ECF_Daruma.Btn_LimparClick(
  Sender: TObject);
begin
   MM_TextoLivre.Text:= '';
end;

end.
