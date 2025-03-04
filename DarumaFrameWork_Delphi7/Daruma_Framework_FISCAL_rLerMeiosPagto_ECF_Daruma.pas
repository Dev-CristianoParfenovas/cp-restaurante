unit Daruma_Framework_FISCAL_rLerMeiosPagto_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_rLerMeiosPagto_ECF_Daruma = class(TForm)
    MM_MeiosPagto: TMemo;
    BT_ENVIAR: TButton;
    BT_FECHAR: TButton;
    Label1: TLabel;
    procedure BT_FECHARClick(Sender: TObject);
    procedure BT_ENVIARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_rLerMeiosPagto_ECF_Daruma: TFR_FISCAL_rLerMeiosPagto_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_rLerMeiosPagto_ECF_Daruma.BT_FECHARClick(
  Sender: TObject);
begin
  close();
end;

procedure TFR_FISCAL_rLerMeiosPagto_ECF_Daruma.BT_ENVIARClick(
  Sender: TObject);
Var Str_MeiosPagto: String;
begin
	 SetLength (Str_MeiosPagto,330);
	 Int_Retorno := rLerMeiosPagto_ECF_Daruma(Str_MeiosPagto);
	 FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
	 MM_MeiosPagto.Lines.Text := (Str_MeiosPagto);
end;

end.
