unit Metodo_regRetornarValor_SAT_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DarumaFramework_SAT;

type
  TFR_MetodoregRetornarValor_SAT_Daruma = class(TForm)
    BT_Fechar: TButton;
    BT_Enviar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    EDT_Chave: TEdit;
    EDT_ValorChave: TEdit;
    procedure BT_FecharClick(Sender: TObject);
    procedure BT_EnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_MetodoregRetornarValor_SAT_Daruma: TFR_MetodoregRetornarValor_SAT_Daruma;

implementation

{$R *.dfm}

procedure TFR_MetodoregRetornarValor_SAT_Daruma.BT_FecharClick(
  Sender: TObject);
begin
	Close();
end;

procedure TFR_MetodoregRetornarValor_SAT_Daruma.BT_EnviarClick(
  Sender: TObject);
var
 Str_Chave: String;
 Str_ValorChave: String;
begin
	Str_ValorChave:= StringOfChar(#0, 400);
        Str_Chave:= EDT_Chave.Text;
        iRetorno:= regRetornarValor_SAT_Daruma(Str_Chave, Str_ValorChave);
        DarumaFramework_SAT.FR_DarumaFramework_SAT.Tratar_RetornoSAT(iRetorno);
        EDT_ValorChave.Text:= Str_ValorChave;
end;

end.
