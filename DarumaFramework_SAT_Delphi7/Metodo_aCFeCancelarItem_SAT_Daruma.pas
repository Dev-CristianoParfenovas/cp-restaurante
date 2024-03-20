unit Metodo_aCFeCancelarItem_SAT_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DarumaFramework_SAT;

type
  TFR_MetodoaCFeCancelarItem_SAT_Daruma = class(TForm)
    BT_Fechar: TButton;
    Label1: TLabel;
    EDT_NumItem: TEdit;
    BT_Enviar: TButton;
    procedure BT_FecharClick(Sender: TObject);
    procedure BT_EnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_MetodoaCFeCancelarItem_SAT_Daruma: TFR_MetodoaCFeCancelarItem_SAT_Daruma;

implementation

{$R *.dfm}

procedure TFR_MetodoaCFeCancelarItem_SAT_Daruma.BT_FecharClick(
  Sender: TObject);
begin
Close();
end;

procedure TFR_MetodoaCFeCancelarItem_SAT_Daruma.BT_EnviarClick(
  Sender: TObject);
  var
  Int_NumItem: Integer;
begin
	Int_NumItem:= StrToInt(EDT_NumItem.Text);
	iRetorno:= aCFeCancelarItem_SAT_Daruma(Int_NumItem);
        DarumaFramework_SAT.FR_DarumaFramework_SAT.Tratar_RetornoSAT(iRetorno);
        
end;

end.
