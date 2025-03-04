unit Metodo_rConsultarStatusEspecifico_SAT_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DarumaFramework_SAT;

type
  TFR_MetodorConsultarStatusEspecifico_SAT_Daruma = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    MM_Retorno: TMemo;
    EDT_Status: TEdit;
    BT_Fechar: TButton;
    BT_Enviar: TButton;
    BT_Limpar: TButton;
    procedure BT_FecharClick(Sender: TObject);
    procedure BT_LimparClick(Sender: TObject);
    procedure BT_EnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_MetodorConsultarStatusEspecifico_SAT_Daruma: TFR_MetodorConsultarStatusEspecifico_SAT_Daruma;

implementation

{$R *.dfm}

procedure TFR_MetodorConsultarStatusEspecifico_SAT_Daruma.BT_FecharClick(
  Sender: TObject);
begin
	Close();
end;

procedure TFR_MetodorConsultarStatusEspecifico_SAT_Daruma.BT_LimparClick(
  Sender: TObject);
begin
	EDT_Status.Text:= '';
        MM_Retorno.Lines.Clear();
end;

procedure TFR_MetodorConsultarStatusEspecifico_SAT_Daruma.BT_EnviarClick(
  Sender: TObject);
var
	Str_StatusIndice: String;
begin
	MM_Retorno.Lines.Clear();
	Str_Parametro:= StringOfChar(#0,500);
        Str_StatusIndice:= EDT_Status.Text;
        iRetorno:= rConsultarStatusEspecifico_SAT_Daruma(Str_StatusIndice, Str_Parametro);
        DarumaFramework_SAT.FR_DarumaFramework_SAT.Tratar_RetornoSAT(iRetorno);
        MM_Retorno.Lines.Add('Status: '+ Str_Parametro);

end;

end.
