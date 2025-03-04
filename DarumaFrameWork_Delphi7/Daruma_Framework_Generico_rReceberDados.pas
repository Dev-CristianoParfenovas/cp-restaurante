unit Daruma_Framework_Generico_rReceberDados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_rReceberDados_Daruma = class(TForm)
    Memo_BytesRecebidos: TMemo;
    Label1: TLabel;
    BTN_Enviar: TButton;
    BTN_Fechar: TButton;
    procedure BTN_FecharClick(Sender: TObject);
    procedure BTN_EnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_rReceberDados_Daruma: TFR_rReceberDados_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal,
  Daruma_Framework_Generico_Principal;

{$R *.dfm}

procedure TFR_rReceberDados_Daruma.BTN_FecharClick(
  Sender: TObject);
begin
close();
end;

procedure TFR_rReceberDados_Daruma.BTN_EnviarClick(
  Sender: TObject);
var
    Str_Bytes: String;
begin
	 SetLength (Str_Bytes,100);
   Int_Retorno := rReceberDados_Daruma(Str_Bytes);
   Memo_BytesRecebidos.Lines.Text := (Str_Bytes);
   FR_Generico_MenuPrincipal.DarumaFramework_Mostrar_RetornoGenerico(Int_Retorno);
end;
end.
