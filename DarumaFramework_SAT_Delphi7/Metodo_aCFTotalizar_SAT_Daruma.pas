unit Metodo_aCFTotalizar_SAT_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DarumaFramework_SAT;

type
  TFR_MetodoaCFTotalizar_SAT_Daruma = class(TForm)
    BT_Fechar: TButton;
    BT_Enviar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    CB_Tipo: TComboBox;
    EDT_Valor: TEdit;
    procedure BT_FecharClick(Sender: TObject);
    procedure BT_EnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_MetodoaCFTotalizar_SAT_Daruma: TFR_MetodoaCFTotalizar_SAT_Daruma;

implementation

{$R *.dfm}

procedure TFR_MetodoaCFTotalizar_SAT_Daruma.BT_FecharClick(
  Sender: TObject);
begin
  Close();
end;

procedure TFR_MetodoaCFTotalizar_SAT_Daruma.BT_EnviarClick(
  Sender: TObject);
var
  str_TipoDescAcres: String;
  str_Valor: String;
begin
  str_TipoDescAcres:= CB_Tipo.Text;
  str_Valor:= EDT_Valor.Text;
  iRetorno:= aCFTotalizar_SAT_Daruma(str_TipoDescAcres, str_Valor);
  DarumaFramework_SAT.FR_DarumaFramework_SAT.Tratar_RetornoSAT(iRetorno);
end;

end.
