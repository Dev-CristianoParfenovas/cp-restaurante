unit Daruma_Framework_MODEM_rReceberNotificacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_MODEM_rReceberNotificacao = class(TForm)
    BT_Enviar: TButton;
    BT_Limpar: TButton;
    BT_Fechar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    EDT_NumeroOperadora: TEdit;
    MM_Notificacao: TMemo;
    procedure BT_FecharClick(Sender: TObject);
    procedure BT_LimparClick(Sender: TObject);
    procedure BT_EnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_MODEM_rReceberNotificacao: TFR_MODEM_rReceberNotificacao;

implementation
function rReceberNotificacao_MODEM_DarumaFramework(sNumeroOperadora: String;
                                           sRetorno: String): Integer; StdCall; External 'DarumaFrameWork.dll'

{$R *.dfm}

procedure TFR_MODEM_rReceberNotificacao.BT_FecharClick(Sender: TObject);
begin
    Close;
end;

procedure TFR_MODEM_rReceberNotificacao.BT_LimparClick(Sender: TObject);
begin

EDT_NumeroOperadora.Text:= '';
MM_Notificacao.Lines.Clear();
EDT_NumeroOperadora.SetFocus();

end;

procedure TFR_MODEM_rReceberNotificacao.BT_EnviarClick(Sender: TObject);
var
Str_NumOperadora: String;
Str_Notificacao: String;
iRetorno: Integer;
begin
Str_Notificacao:=StringOFChar(#0,250);
Str_NumOperadora:= EDT_NumeroOperadora.Text;
if (Str_NumOperadora <> '') then
begin
iRetorno:= rReceberNotificacao_MODEM_DarumaFramework(Str_NumOperadora, Str_Notificacao);
MM_Notificacao.Lines.Clear();
MM_Notificacao.Lines.Add(Str_Notificacao);
end;

end;

end.
