unit Metodo_tCFEncerrar_SAT_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DarumaFramework_SAT, StdCtrls;

type
  TFR_MetodotCFEncerrar_SAT_Daruma = class(TForm)
    BT_Enviar: TButton;
    BT_Fechar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    EDT_CupomAdic: TEdit;
    EDT_InfoAdic: TEdit;
    Label3: TLabel;
    procedure BT_FecharClick(Sender: TObject);
    procedure BT_EnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_MetodotCFEncerrar_SAT_Daruma: TFR_MetodotCFEncerrar_SAT_Daruma;

implementation

{$R *.dfm}

procedure TFR_MetodotCFEncerrar_SAT_Daruma.BT_FecharClick(Sender: TObject);
begin
  Close();
end;

procedure TFR_MetodotCFEncerrar_SAT_Daruma.BT_EnviarClick(Sender: TObject);
var
  str_CupomAdic: String;
  str_InfoAdic: String;
begin
  str_CupomAdic:= EDT_InfoAdic.Text;
  str_InfoAdic:= EDT_InfoAdic.Text;
  iRetorno := tCFEncerrar_SAT_Daruma(str_CupomAdic,str_InfoAdic);
  DarumaFramework_SAT.FR_DarumaFramework_SAT.Tratar_RetornoSAT(iRetorno);
end;

end.
