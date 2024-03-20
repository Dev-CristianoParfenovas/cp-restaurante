unit Metodo_rInfoEstendida_SAT_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DarumaFramework_SAT;


type
  TFR_MetodorInfoEstendida_SAT_Daruma = class(TForm)
    Label1: TLabel;
    EDT_Indice: TEdit;
    Label2: TLabel;
    BT_Enviar: TButton;
    BT_Fechar: TButton;
    BT_Limpar: TButton;
    MM_Info: TMemo;
    procedure BT_FecharClick(Sender: TObject);
    procedure BT_LimparClick(Sender: TObject);
    procedure BT_EnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_MetodorInfoEstendida_SAT_Daruma: TFR_MetodorInfoEstendida_SAT_Daruma;

implementation

{$R *.dfm}

procedure TFR_MetodorInfoEstendida_SAT_Daruma.BT_FecharClick(
  Sender: TObject);
begin
	Close();
end;

procedure TFR_MetodorInfoEstendida_SAT_Daruma.BT_LimparClick(
  Sender: TObject);
begin
	EDT_Indice.Text:='';
        MM_Info.Clear();
        EDT_Indice.SetFocus();
end;

procedure TFR_MetodorInfoEstendida_SAT_Daruma.BT_EnviarClick(
  Sender: TObject);
var
 str_Indice: String;
 str_Info: String;
begin
 str_Info:= StringOfChar(#0,700);
 str_Indice:= EDT_Indice.Text;
 iRetorno:= rInfoEstendida_SAT_Daruma(str_Indice, str_Info);
 DarumaFramework_SAT.FR_DarumaFramework_SAT.Tratar_RetornoSAT(iRetorno);
 if (iRetorno=1) then
	MM_Info.Lines.Add(str_Info);

end;

end.
