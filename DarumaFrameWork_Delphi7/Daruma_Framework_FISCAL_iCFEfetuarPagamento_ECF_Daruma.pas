unit Daruma_Framework_FISCAL_iCFEfetuarPagamento_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_iCFEfetuarPagamento_ECF_Daruma = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edt_Forma_Pagamento: TEdit;
    Edt_Valor: TEdit;
    BT_ENVIAR: TButton;
    BT_FECHAR: TButton;
    Edt_Info_Adicional: TEdit;
    Label3: TLabel;
    procedure BT_FECHARClick(Sender: TObject);
    procedure BT_ENVIARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_iCFEfetuarPagamento_ECF_Daruma: TFR_FISCAL_iCFEfetuarPagamento_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_iCFEfetuarPagamento_ECF_Daruma.BT_FECHARClick(
  Sender: TObject);
begin
   Close;
end;

procedure TFR_FISCAL_iCFEfetuarPagamento_ECF_Daruma.BT_ENVIARClick(
  Sender: TObject);
Var Str_Forma_Pagamento, Str_Valor, Str_Informacao_Adicional: String;
Begin
   Str_Forma_Pagamento := Edt_Forma_Pagamento.Text;
   Str_Valor := Edt_Valor.Text;
   Str_Informacao_Adicional := Edt_Info_Adicional.Text;
   Int_Retorno:= iCFEfetuarPagamento_ECF_Daruma(Str_Forma_Pagamento, Str_Valor, Str_Informacao_Adicional);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

end.
