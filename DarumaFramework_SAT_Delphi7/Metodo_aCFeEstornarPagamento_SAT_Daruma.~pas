unit Metodo_aCFeEstornarPagamento_SAT_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DarumaFramework_SAT;

type
  TFR_MetodoaCFeEstornarPagamento_SAT_Daruma = class(TForm)
    BT_Fechar: TButton;
    BT_Enviar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    EDT_Parametro: TEdit;
    MM_Exemplos: TMemo;
    procedure BT_FecharClick(Sender: TObject);
    procedure BT_EnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_MetodoaCFeEstornarPagamento_SAT_Daruma: TFR_MetodoaCFeEstornarPagamento_SAT_Daruma;

implementation

{$R *.dfm}

procedure TFR_MetodoaCFeEstornarPagamento_SAT_Daruma.BT_FecharClick(
  Sender: TObject);
begin
	Close();
end;

procedure TFR_MetodoaCFeEstornarPagamento_SAT_Daruma.BT_EnviarClick(
  Sender: TObject);
begin
        Str_Parametro:= StringOFChar(#0,500);
	Str_Parametro:= EDT_Parametro.Text;
	iRetorno:=aCFeEstornarPagamento_SAT_Daruma(Str_Parametro);
        DarumaFramework_SAT.FR_DarumaFramework_SAT.Tratar_RetornoSAT(iRetorno);
end;

end.
