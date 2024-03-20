unit Daruma_Framework_MODEM_rTotalSms_MODEM_DarumaFramework;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_MODEM_rTotalSms = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    TB_Tipo: TEdit;
    GroupBox1: TGroupBox;
    TB_Total: TEdit;
    BT_Enviar: TButton;
    BT_Fechar: TButton;
    BT_Limpar: TButton;
    Label3: TLabel;
    TB_Retorno: TEdit;
    procedure BT_FecharClick(Sender: TObject);
    procedure BT_LimparClick(Sender: TObject);
    procedure BT_EnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_MODEM_rTotalSms: TFR_MODEM_rTotalSms;

implementation
function rTotalSms_MODEM_DarumaFramework (Int_TipoSMS:Integer; var Int_Total:Integer): Integer; StdCall; External 'DarumaFramework.dll'


{$R *.dfm}

procedure TFR_MODEM_rTotalSms.BT_FecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFR_MODEM_rTotalSms.BT_LimparClick(Sender: TObject);
begin

TB_Tipo.Text:= ' ';
TB_Total.Text:= ' ';
TB_Retorno.Text:= ' ';
TB_Tipo.SetFocus();
end;

procedure TFR_MODEM_rTotalSms.BT_EnviarClick(Sender: TObject);
var
iRetorno: Integer;
Int_TipoSMS: Integer;
var Int_Total: Integer;
begin
Int_Total:=0;
Int_TipoSMS:= StrToInt(TB_Tipo.Text);
iRetorno:=  rTotalSms_MODEM_DarumaFramework(Int_TipoSMS, Int_Total);

if (iRetorno = 1) then begin
    Application.MessageBox('Total de SMS lido com sucesso', 'Daruma DLL Framework', MB_OK + 32);
    TB_Retorno.Text:=('['+ IntToStr(iRetorno) + ']' + '- Sucesso' );
    TB_Total.Text:= IntToStr(Int_Total);
  end
  else
    begin
       Application.MessageBox('Erro ao listar os SMS ','Daruma DLL Framework', MB_OK + MB_ICONERROR);
       case iRetorno of
       -3:  TB_Retorno.text:=('[-3] - Modem retornou caractere(s) inválido(s)');
       -2:  TB_Retorno.Text:=('[-2] - Modem retornou erro');
       -1:  TB_Retorno.Text:=('[-1] - Erro de comunicação serial');
    else
       TB_Retorno.Text:=('Retorno não esperado');
    end;
end;


end;

end.
