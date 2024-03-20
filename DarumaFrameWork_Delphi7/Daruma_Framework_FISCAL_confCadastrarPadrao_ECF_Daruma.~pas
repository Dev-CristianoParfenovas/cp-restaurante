unit Daruma_Framework_FISCAL_confCadastrarPadrao_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_confCadastrarPadrao_ECF_Daruma = class(TForm)
    CMB_ProgramarConfig: TComboBox;
    Edt_Valor: TEdit;
    BT_ENVIAR: TButton;
    BT_FECHAR: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure BT_FECHARClick(Sender: TObject);
    procedure BT_ENVIARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_confCadastrarPadrao_ECF_Daruma: TFR_FISCAL_confCadastrarPadrao_ECF_Daruma;
  Var Str_TipoCadastrar, Str_Valor: string;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_confCadastrarPadrao_ECF_Daruma.BT_FECHARClick(
  Sender: TObject);
begin
   close;
end;

procedure TFR_FISCAL_confCadastrarPadrao_ECF_Daruma.BT_ENVIARClick(
  Sender: TObject);
begin

        Str_TipoCadastrar:= CMB_ProgramarConfig.Text;
        Str_Valor := Edt_Valor.Text;
        Int_Retorno:= confCadastrarPadrao_ECF_Daruma(Str_TipoCadastrar, Str_Valor);
        FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

end.
