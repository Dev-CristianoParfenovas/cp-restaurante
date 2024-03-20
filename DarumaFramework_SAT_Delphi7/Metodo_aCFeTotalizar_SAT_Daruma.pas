unit Metodo_aCFeTotalizar_SAT_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DarumaFramework_SAT;

type
  TFR_aCFeTotalizar_SAT_Daruma = class(TForm)
    BT_Enviar: TButton;
    BT_Fechar: TButton;
    BT_Limpar: TButton;
    Label1: TLabel;
    EDT_Parametro: TEdit;
    Label2: TLabel;
    MM_Exemplos: TMemo;
    procedure BT_FecharClick(Sender: TObject);
    procedure BT_LimparClick(Sender: TObject);
    procedure BT_EnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_aCFeTotalizar_SAT_Daruma: TFR_aCFeTotalizar_SAT_Daruma;

implementation

{$R *.dfm}

procedure TFR_aCFeTotalizar_SAT_Daruma.BT_FecharClick(Sender: TObject);
begin
Close();
end;

procedure TFR_aCFeTotalizar_SAT_Daruma.BT_LimparClick(Sender: TObject);
begin
EDT_Parametro.Text:= '';
end;

procedure TFR_aCFeTotalizar_SAT_Daruma.BT_EnviarClick(Sender: TObject);
begin
  Str_Parametro:=  StringOFChar(#0,700);
  Str_Parametro:=EDT_Parametro.Text;
  iRetorno:=aCFeTotalizar_SAT_Daruma(Str_Parametro);
  DarumaFramework_SAT.FR_DarumaFramework_SAT.Tratar_RetornoSAT(iRetorno);
end;

end.
