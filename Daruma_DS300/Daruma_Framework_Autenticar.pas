unit Daruma_Framework_Autenticar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,Daruma_Framework_Variaveis_Globais;

type
  TFramework_Autenticar = class(TForm)
    BT_Enviar: TButton;
    BT_Fechar: TButton;
    Label1: TLabel;
    TX_Vias: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    TX_Texto_Autenticacao: TEdit;
    Label4: TLabel;
    TX_Tempo_Espera: TEdit;
    Label5: TLabel;
    procedure BT_FecharClick(Sender: TObject);
    procedure BT_EnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Framework_Autenticar: TFramework_Autenticar;
   
implementation
    Function Daruma_DUAL_Autenticar(NumVias: String; Texto: String; TempoAguardar: String ): Integer; StdCall; External 'Daruma32.dll'
{$R *.dfm}

procedure TFramework_Autenticar.BT_FecharClick(
  Sender: TObject);
begin
close;
end;

procedure TFramework_Autenticar.BT_EnviarClick(
  Sender: TObject);
var
   Str_Vias: String;
   Str_Texto_Autenticacao: String;
   Str_Tempo_espera: String;
begin
  Str_Vias:= TX_Vias.Text;
  Str_Texto_Autenticacao:= TX_Texto_Autenticacao.Text;
  Str_Tempo_Espera:= TX_Tempo_Espera.Text;
  Int_Retorno:= Daruma_DUAL_Autenticar(pchar(Str_Vias), pchar(Str_Texto_Autenticacao), pchar(Str_Tempo_Espera));
  
end;

end.
