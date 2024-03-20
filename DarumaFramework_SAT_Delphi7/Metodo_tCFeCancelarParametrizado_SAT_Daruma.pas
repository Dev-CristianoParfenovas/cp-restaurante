unit Metodo_tCFeCancelarParametrizado_SAT_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DarumaFramework_SAT;

type
  TFR_tCFeCancelarParametrizado_SAT_Daruma = class(TForm)
    BT_Enviar: TButton;
    BT_Fechar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    EDT_CpfCnpj: TEdit;
    EDT_Chave: TEdit;
    procedure BT_FecharClick(Sender: TObject);
    procedure BT_EnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_tCFeCancelarParametrizado_SAT_Daruma: TFR_tCFeCancelarParametrizado_SAT_Daruma;

implementation

{$R *.dfm}

procedure TFR_tCFeCancelarParametrizado_SAT_Daruma.BT_FecharClick(
  Sender: TObject);
begin
   Close();
end;

procedure TFR_tCFeCancelarParametrizado_SAT_Daruma.BT_EnviarClick(
  Sender: TObject);
var
 str_CpfCnpj: string;
 str_ChaveAcesso: string;
begin
	str_CpfCnpj:= EDT_CpfCnpj.Text;
        str_ChaveAcesso:= EDT_Chave.Text;
	iRetorno:= tCFeCancelarParametrizado_SAT_Daruma(str_CpfCnpj, str_ChaveAcesso);
        DarumaFramework_SAT.FR_DarumaFramework_SAT.Tratar_RetornoSAT(iRetorno);


end;

end.
