unit Daruma_Framework_Generico_tEnviarDados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_tEnviarDados_Daruma = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Memo_Bytes: TMemo;
    EDT_TamBytes: TEdit;
    Btn_Enviar: TButton;
    Btn_Fechar: TButton;
    procedure Btn_FecharClick(Sender: TObject);
    procedure Btn_EnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_tEnviarDados_Daruma: TFR_tEnviarDados_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal,
  Daruma_Framework_Generico_Principal;

{$R *.dfm}

procedure TFR_tEnviarDados_Daruma.Btn_FecharClick(Sender: TObject);
begin
close();
end;

procedure TFR_tEnviarDados_Daruma.Btn_EnviarClick(Sender: TObject);
Var Str_Bytes: String;
    Int_Tamanho: Integer;

begin

    if (EDT_TamBytes.Text = '')or(Memo_Bytes.Lines.Text ='') Then
   begin
      Exit;
      end
   else
   begin
   Str_Bytes:= Memo_Bytes.Lines.Text;
   Int_Tamanho:=StrToInt(EDT_TamBytes.Text);
	 Int_Retorno := tEnviarDados_Daruma(Str_Bytes, Int_Tamanho);
	 FR_Generico_MenuPrincipal.DarumaFramework_Mostrar_RetornoGenerico(Int_Retorno);
   end
end;

end.
