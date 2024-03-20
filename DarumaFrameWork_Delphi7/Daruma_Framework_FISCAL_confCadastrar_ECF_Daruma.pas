unit Daruma_Framework_FISCAL_confCadastrar_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_confCadastrar_ECF_Daruma = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    CMB_ProgramarConfig: TComboBox;
    Edt_Valor: TEdit;
    BT_ENVIAR: TButton;
    BT_FECHAR: TButton;
    Label3: TLabel;
    Edt_Separador: TEdit;
    procedure BT_FECHARClick(Sender: TObject);
    procedure BT_ENVIARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_confCadastrar_ECF_Daruma: TFR_FISCAL_confCadastrar_ECF_Daruma;
implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_confCadastrar_ECF_Daruma.BT_FECHARClick(
  Sender: TObject);
begin
   close;
end;

procedure TFR_FISCAL_confCadastrar_ECF_Daruma.BT_ENVIARClick(
  Sender: TObject);
Var Str_TipoCadastrar, Str_Valor, Str_Separador: string;
begin
        Str_TipoCadastrar:= CMB_ProgramarConfig.Text;
        Str_Valor := Trim(Edt_Valor.Text);
        Str_Separador := Trim(Edt_Separador.Text);
        Int_Retorno:= confCadastrar_ECF_Daruma(Str_TipoCadastrar, Str_Valor, Str_Separador);
        FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

end.
