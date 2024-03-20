unit Metodo_aCFEstornarPagamento_SAT_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DarumaFramework_SAT, StdCtrls;

type
  TFR_MetodoaCFEstornarPagamento_SAT_Daruma = class(TForm)
    BT_Fechar: TButton;
    BT_Enviar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EDT_Valor: TEdit;
    CB_FPgto: TComboBox;
    CB_NovoPgto: TComboBox;
    procedure BT_FecharClick(Sender: TObject);
    procedure BT_EnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_MetodoaCFEstornarPagamento_SAT_Daruma: TFR_MetodoaCFEstornarPagamento_SAT_Daruma;

implementation

{$R *.dfm}

procedure TFR_MetodoaCFEstornarPagamento_SAT_Daruma.BT_FecharClick(
  Sender: TObject);
begin
	Close();
end;

procedure TFR_MetodoaCFEstornarPagamento_SAT_Daruma.BT_EnviarClick(
  Sender: TObject);
var
	Str_NovaFormaPgto: String;
	Str_FormaPgtoEstorno: String;
	Str_ValorPgto: String;
begin
	Str_NovaFormaPgto:= CB_NovoPgto.Text;
	Str_FormaPgtoEstorno:= CB_FPgto.Text;
	Str_ValorPgto:= EDT_Valor.Text;
	iRetorno:= aCFEstornarPagamento_SAT_Daruma(Str_NovaFormaPgto, Str_FormaPgtoEstorno, Str_ValorPgto);
        DarumaFramework_SAT.FR_DarumaFramework_SAT.Tratar_RetornoSAT(iRetorno);
end;

end.
