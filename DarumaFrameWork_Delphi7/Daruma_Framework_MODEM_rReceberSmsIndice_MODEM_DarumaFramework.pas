unit Daruma_Framework_MODEM_rReceberSmsIndice_MODEM_DarumaFramework;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_MODEM_rReceberSmsIndice = class(TForm)
    LB_TelefoneOrigem: TLabel;
    LB_Mensagem: TLabel;
    LB_Data: TLabel;
    LB_Hora: TLabel;
    LB_QtidadeMsgModem: TLabel;
    LB_IndiceSMS: TLabel;
    EB_TelefoneOrigem: TEdit;
    BT_Enviar: TButton;
    BT_Fechar: TButton;
    MN_Mensagem: TMemo;
    EB_Data: TEdit;
    EB_Hora: TEdit;
    EB_QtidadeMsgModem: TEdit;
    BT_Limpar: TButton;
    EB_IndiceSMS: TEdit;
    procedure BT_LimparClick(Sender: TObject);
    procedure BT_FecharClick(Sender: TObject);
    procedure BT_EnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_MODEM_rReceberSmsIndice: TFR_MODEM_rReceberSmsIndice;

implementation

function rReceberSmsIndice_MODEM_DarumaFramework(sIndiceSMS: String;
                                                 sNumFone: String;
                                                 sData: String;
                                                 sHora: String;
                                                 sMsg: String): Integer; StdCall; External 'DarumaFrameWork.dll'



{$R *.dfm}

procedure TFR_MODEM_rReceberSmsIndice.BT_LimparClick(Sender: TObject);
begin
EB_IndiceSMS.Clear;
EB_TelefoneOrigem.Clear;
EB_Data.Clear;
EB_Hora.Clear;
MN_Mensagem.Lines.Clear;
EB_QtidadeMsgModem.Clear;
end;

procedure TFR_MODEM_rReceberSmsIndice.BT_FecharClick(Sender: TObject);
begin
close;
end;

procedure TFR_MODEM_rReceberSmsIndice.BT_EnviarClick(Sender: TObject);
var
iRetorno : Integer;
sIndiceSMS: String;
sNumFone: String;
sData: String;
sHora: String;
sMsg: String;

begin
SetLength(sNumFone,15);
SetLength(sData,10);
SetLength(sHora,10);
SetLength(sMsg,500);

sIndiceSMS:= EB_IndiceSMS.Text;

iRetorno := rReceberSmsIndice_MODEM_DarumaFramework(sIndiceSMS,sNumFone,sData,sHora,sMsg);

if ( iRetorno > 0 ) then begin

    Application.MessageBox('Mensagens Listadas com sucesso!', 'Daruma DLL Framework', MB_OK + 32);
    EB_TelefoneOrigem.Text := sNumFone;
    EB_Data.Text := sData;
    EB_Hora.Text := sHora;
    MN_Mensagem.Clear;
    MN_Mensagem.Lines.Add(sMsg);
    EB_QtidadeMsgModem.Text :=  IntToStr(iRetorno);
    end
  else
    begin
    Application.MessageBox('Nao foi possivel Receber a mensagem.','Daruma DLL Framework', MB_OK + MB_ICONEXCLAMATION);
    case iRetorno of
    -3:  EB_QtidadeMsgModem.Text:=('[-3] - Modem retornou caractere(s) inv�lido(s)');
    -2:  EB_QtidadeMsgModem.Text:=('[-2] - Modem retornou erro');
    -1: EB_QtidadeMsgModem.Text:=('[-1] - Erro de comunica��o serial');
     0: EB_QtidadeMsgModem.Text:=('[0] - N�o tem mensagem para ser lida');
end;
  //  EB_QtidadeMsgModem.Text := IntToStr(iRetorno);
    end;

      end;
end.
