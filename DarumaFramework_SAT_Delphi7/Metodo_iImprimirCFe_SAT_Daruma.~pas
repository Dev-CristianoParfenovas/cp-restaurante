unit Metodo_iImprimirCFe_SAT_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DarumaFramework_SAT;

type
  TFR_MetodoiImprimirCFe_SAT_Daruma = class(TForm)
    Label1: TLabel;
    EDT_Path: TEdit;
    BT_Enviar: TButton;
    BT_Fechar: TButton;
    Label2: TLabel;
    CB_Tipo: TComboBox;
    procedure BT_FecharClick(Sender: TObject);
    procedure BT_EnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_MetodoiImprimirCFe_SAT_Daruma: TFR_MetodoiImprimirCFe_SAT_Daruma;

implementation

{$R *.dfm}

procedure TFR_MetodoiImprimirCFe_SAT_Daruma.BT_FecharClick(
  Sender: TObject);
begin
	Close();
end;

procedure TFR_MetodoiImprimirCFe_SAT_Daruma.BT_EnviarClick(
  Sender: TObject);
var
  str_Path: String;
  str_Tipo: String;

begin
  str_Path:= StringOfChar(#0,900);
  str_Tipo:= StringOfChar(#0,2);

  str_Path:= EDT_Path.text;
  str_Tipo:= IntToStr(CB_Tipo.ItemIndex+1);
  iRetorno:= iImprimirCFe_SAT_Daruma(str_Path, str_Tipo);
  DarumaFramework_SAT.FR_DarumaFramework_SAT.Tratar_RetornoSAT(iRetorno);

end;

end.
