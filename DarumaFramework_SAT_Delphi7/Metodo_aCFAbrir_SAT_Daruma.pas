unit Metodo_aCFAbrir_SAT_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DarumaFramework_SAT;

type
  TFR_MetodoaCFAbrir_SAT_Daruma = class(TForm)
    BT_Fechar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EDT_CPF: TEdit;
    Label4: TLabel;
    EDT_Nome: TEdit;
    EDT_Endereco: TEdit;
    BT_Enviar: TButton;
    BT_Limpar: TButton;
    procedure BT_FecharClick(Sender: TObject);
    procedure BT_EnviarClick(Sender: TObject);
    procedure BT_LimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_MetodoaCFAbrir_SAT_Daruma: TFR_MetodoaCFAbrir_SAT_Daruma;

implementation

{$R *.dfm}

procedure TFR_MetodoaCFAbrir_SAT_Daruma.BT_FecharClick(Sender: TObject);
begin
  Close();
end;

procedure TFR_MetodoaCFAbrir_SAT_Daruma.BT_EnviarClick(Sender: TObject);
var
  Str_CPF: String;
  Str_Nome: String;
  Str_Endereco: String;
  iRetorno: integer;
begin
  Str_CPF := EDT_CPF.Text;
  Str_Nome := EDT_Nome.Text;
  Str_Endereco := EDT_Endereco.Text;
  iRetorno:=  aCFAbrir_SAT_Daruma(Str_CPF, Str_Nome, Str_Endereco);
  DarumaFramework_SAT.FR_DarumaFramework_SAT.Tratar_RetornoSAT(iRetorno);
end;

procedure TFR_MetodoaCFAbrir_SAT_Daruma.BT_LimparClick(Sender: TObject);
begin
  EDT_CPF.Text:= ' ';
  EDT_Nome.Text:= ' ';
  EDT_Endereco.Text:= ' ';

end;

end.
