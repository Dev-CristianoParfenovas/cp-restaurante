unit Metodo_tCFeAssociarAssinatura_SAT_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DarumaFramework_SAT;

type
  TFR_MetodotCFeAssociarAssinatura_SAT_Daruma = class(TForm)
    Label1: TLabel;
    BT_Enviar: TButton;
    BT_Fechar: TButton;
    MM_Associar: TMemo;
    procedure BT_FecharClick(Sender: TObject);
    procedure BT_EnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_MetodotCFeAssociarAssinatura_SAT_Daruma: TFR_MetodotCFeAssociarAssinatura_SAT_Daruma;

implementation

{$R *.dfm}

procedure TFR_MetodotCFeAssociarAssinatura_SAT_Daruma.BT_FecharClick(
  Sender: TObject);
begin
	Close();
end;

procedure TFR_MetodotCFeAssociarAssinatura_SAT_Daruma.BT_EnviarClick(
  Sender: TObject);
var
	Str_Associar: String;
begin
	Str_Associar:= MM_Associar.Lines.Text;
        iRetorno:= tCFeAssociarAssinatura_SAT_Daruma(Str_Associar);
        DarumaFramework_SAT.FR_DarumaFramework_SAT.Tratar_RetornoSAT(iRetorno);
end;

end.
