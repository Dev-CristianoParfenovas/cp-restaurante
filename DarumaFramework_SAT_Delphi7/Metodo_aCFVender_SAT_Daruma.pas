unit Metodo_aCFVender_SAT_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DarumaFramework_SAT, StdCtrls;

type
  TFR_MetodoaCFVender_SAT_Daruma = class(TForm)
    BT_Fechar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    EDT_Aliquota: TEdit;
    EDT_Quantidade: TEdit;
    EDT_PUnitario: TEdit;
    EDT_TipoDescAcres: TEdit;
    EDT_ValorDescAcres: TEdit;
    EDT_CodigoItem: TEdit;
    EDT_UnidadeMedida: TEdit;
    EDT_DescricaoItem: TEdit;
    BT_Enviar: TButton;
    procedure BT_FecharClick(Sender: TObject);
    procedure BT_EnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_MetodoaCFVender_SAT_Daruma: TFR_MetodoaCFVender_SAT_Daruma;

implementation

{$R *.dfm}

procedure TFR_MetodoaCFVender_SAT_Daruma.BT_FecharClick(Sender: TObject);
begin
  Close();
end;

procedure TFR_MetodoaCFVender_SAT_Daruma.BT_EnviarClick(Sender: TObject);
var
  str_Aliquota: String;
  str_Quantidade: String;
  str_PrecoUnit: String;
  str_TipoDescAcres: String;
  str_ValorDescAcres: String;
  str_CodigoItem: String;
  str_UnidMedida: String;
  str_Descricao: String;
begin
  str_Aliquota:= EDT_Aliquota.Text;
  str_Quantidade:= EDT_Quantidade.Text;
  str_PrecoUnit:= EDT_PUnitario.Text;
  str_TipoDescAcres:= EDT_TipoDescAcres.Text;
  str_ValorDescAcres:= EDT_ValorDescAcres.Text;
  str_CodigoItem:= EDT_CodigoItem.Text;
  str_UnidMedida:= EDT_UnidadeMedida.Text;
  str_Descricao:= EDT_DescricaoItem.Text;
  iRetorno:= aCFVender_SAT_Daruma(str_Aliquota, str_Quantidade , str_PrecoUnit , str_TipoDescAcres , str_ValorDescAcres , str_CodigoItem, str_UnidMedida, str_Descricao);
  DarumaFramework_SAT.FR_DarumaFramework_SAT.Tratar_RetornoSAT(iRetorno);

end;

end.
