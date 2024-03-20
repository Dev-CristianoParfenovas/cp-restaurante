unit Daruma_Framework_MODEM_tEnviarSMSOperadora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_MODEM_tEnviarSMSOperadora = class(TForm)
    LB_NumeroTelefone: TLabel;
    LB_Mensagem: TLabel;
    LB_RespostaModem: TLabel;
    EB_NumeroTelefone: TEdit;
    BT_Enviar: TButton;
    BT_Fechar: TButton;
    MN_Mensagem: TMemo;
    BT_Limpar: TButton;
    ED_Retorno: TEdit;
    Label1: TLabel;
    EB_Chip: TEdit;
    procedure BT_EnviarClick(Sender: TObject);
    procedure BT_FecharClick(Sender: TObject);
    procedure BT_LimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_MODEM_tEnviarSMSOperadora: TFR_MODEM_tEnviarSMSOperadora;

implementation
function tEnviarSmsOperadora_MODEM_DarumaFramework(sNumeroTelefone: String; sMensagem: String; sChip:String ): Integer; StdCall; External 'DarumaFrameWork.dll'


{$R *.dfm}

procedure TFR_MODEM_tEnviarSMSOperadora.BT_EnviarClick(Sender: TObject);

var
iRetorno : Integer;
sNumeroTelefone : String;
sMensagem : String;
sChip:String;

begin

sNumeroTelefone := EB_NumeroTelefone.Text;
sMensagem := MN_Mensagem.Lines.Text;
sChip:=EB_Chip.Text;

if ( EB_NumeroTelefone.Text= '')  then
     ShowMessage('É preciso digitar o numero do telefone para envio do SMS diferente de 0')
     else begin
 iRetorno := tEnviarSmsOperadora_MODEM_DarumaFramework( sNumeroTelefone, sMensagem, sChip);
if (iRetorno = 1) then begin
    Application.MessageBox('Mensagem Enviada com Sucesso', 'Daruma DLL Framework', MB_OK + 32);
    ED_retorno.Text := IntToStr(iRetorno);
    end
  else
    begin
    Application.MessageBox('Erro ao enviar a mensagem','Daruma DLL Framework', MB_OK + MB_ICONERROR);
    case iRetorno of
    -3:  ED_Retorno.text:=('[-3] - Modem retornou caractere(s) inválido(s)');
    -2:  ED_Retorno.Text:=('[-2] - Modem retornou erro');
    -1:  ED_Retorno.Text:=('[-1] - Erro de comunicação serial');
    end;
    end;
  end;

end;

procedure TFR_MODEM_tEnviarSMSOperadora.BT_FecharClick(Sender: TObject);
begin
close;
end;

procedure TFR_MODEM_tEnviarSMSOperadora.BT_LimparClick(Sender: TObject);
begin
 EB_NumeroTelefone.Clear;
   MN_Mensagem.Lines.Clear;
   ED_retorno.Clear;
end;

end.
