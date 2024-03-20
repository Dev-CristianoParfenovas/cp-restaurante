unit Metodo_tCFeEnviar_SAT_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DarumaFramework_SAT;

type
  TFR_MetodotCFeEnviar_SAT_Daruma = class(TForm)
    Label1: TLabel;
    BT_Enviar: TButton;
    BT_Fechar: TButton;
    MM_XMLVenda: TMemo;
    procedure BT_EnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_MetodotCFeEnviar_SAT_Daruma: TFR_MetodotCFeEnviar_SAT_Daruma;

implementation

{$R *.dfm}

procedure TFR_MetodotCFeEnviar_SAT_Daruma.BT_EnviarClick(Sender: TObject);
var
	str_XMLVenda: String;
begin
	str_XMLVenda:= MM_XMLVenda.Lines.Text;
        iRetorno:= tCFeEnviar_SAT_Daruma(str_XMLVenda);
        DarumaFramework_SAT.FR_DarumaFramework_SAT.Tratar_RetornoSAT(iRetorno);
end;

end.
