unit Metodo_regAlterarValor_SAT_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DarumaFramework_SAT, StdCtrls;

type
  TFR_MetodoregAlterarValor_SAT_Daruma = class(TForm)
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
  FR_MetodoregAlterarValor_SAT_Daruma: TFR_MetodoregAlterarValor_SAT_Daruma;

implementation

{$R *.dfm}

procedure TFR_MetodoregAlterarValor_SAT_Daruma.BT_FecharClick(
  Sender: TObject);
begin
	Close();
end;

procedure TFR_MetodoregAlterarValor_SAT_Daruma.BT_EnviarClick(
  Sender: TObject);
var
	Str_Chave: String;
        Str_ValorChave: String;
begin
	Str_Chave:= EDT_Chave.Text;
        Str_ValorChave:= EDT_ValorChave.Text;
	iRetorno:= regAlterarValor_SAT_Daruma(Str_Chave, Str_ValorChave);
        DarumaFramework_SAT.FR_DarumaFramework_SAT.Tratar_RetornoSAT(iRetorno);
end;

end.
