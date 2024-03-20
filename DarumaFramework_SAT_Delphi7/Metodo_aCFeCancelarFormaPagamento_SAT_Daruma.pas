unit Metodo_aCFeCancelarFormaPagamento_SAT_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DarumaFramework_SAT;

type
  TFR_MetodoaCFeCancelarFormaPagamento_SAT_Daruma = class(TForm)
    BT_Fechar: TButton;
    BT_Enviar: TButton;
    Label1: TLabel;
    EDT_IndicePgto: TEdit;
    procedure BT_FecharClick(Sender: TObject);
    procedure BT_EnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_MetodoaCFeCancelarFormaPagamento_SAT_Daruma: TFR_MetodoaCFeCancelarFormaPagamento_SAT_Daruma;

implementation

{$R *.dfm}

procedure TFR_MetodoaCFeCancelarFormaPagamento_SAT_Daruma.BT_FecharClick(
  Sender: TObject);
begin
	Close();
end;

procedure TFR_MetodoaCFeCancelarFormaPagamento_SAT_Daruma.BT_EnviarClick(
  Sender: TObject);
var
	i_IndicePagamento: Integer;
begin
        i_IndicePagamento:= StrToInt(EDT_IndicePgto.Text);
	iRetorno:= aCFeCancelarFormaPagamento_SAT_Daruma(i_IndicePagamento);
        DarumaFramework_SAT.FR_DarumaFramework_SAT.Tratar_RetornoSAT(iRetorno);
end;

end.
