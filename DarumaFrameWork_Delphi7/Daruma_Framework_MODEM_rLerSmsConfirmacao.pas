unit Daruma_Framework_MODEM_rLerSmsConfirmacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_rLerSmsConfirmacao_MODEM_DarumaFramework = class(TForm)
    BT_Enviar: TButton;
    BT_Fechar: TButton;
    Label1: TLabel;
    EDT_IndiceMsg: TEdit;
    Label2: TLabel;
    MM_Msg: TMemo;
    BT_Limpar: TButton;
    procedure BT_FecharClick(Sender: TObject);
    procedure BT_LimparClick(Sender: TObject);
    procedure BT_EnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_rLerSmsConfirmacao_MODEM_DarumaFramework: TFR_rLerSmsConfirmacao_MODEM_DarumaFramework;

implementation
  function rLerSmsConfirmacao_MODEM_DarumaFramework(Int_IndiceMsg:Integer; Str_Msg:string): Integer; StdCall; External 'DarumaFramework.dll'

{$R *.dfm}

procedure TFR_rLerSmsConfirmacao_MODEM_DarumaFramework.BT_FecharClick(
  Sender: TObject);
begin
Close;
end;

procedure TFR_rLerSmsConfirmacao_MODEM_DarumaFramework.BT_LimparClick(
  Sender: TObject);
begin
EDT_IndiceMsg.Text:= '';
MM_Msg.Lines.Clear();
EDT_IndiceMsg.SetFocus();

end;

procedure TFR_rLerSmsConfirmacao_MODEM_DarumaFramework.BT_EnviarClick(
  Sender: TObject);
var
Str_Msg: String;
Int_IndiceMsg: Integer;
iRetorno: Integer;
begin

Str_Msg:= StringOfChar(#0, 250);
If (EDT_IndiceMsg.Text <> '') then
begin
  Int_IndiceMsg:= StrToInt(EDT_IndiceMsg.Text);
  iRetorno:= rLerSmsConfirmacao_MODEM_DarumaFramework(Int_IndiceMsg, Str_Msg);
  If (iRetorno = 1) then
  begin
    MM_Msg.Lines.Clear();
    Application.MessageBox(pchar('Retorno do método: '+ IntToStr(iRetorno)), 'Daruma DLL Framework', MB_OK);
    MM_Msg.Lines.Add(Str_Msg);
  end
  Else
  begin
    MM_Msg.Lines.Clear();
    MM_Msg.Lines.Add('Erro ao ler mensagem, retorno do método: '+ IntToStr(iRetorno));
  end;
end
Else
 Application.MessageBox('Informe o índice da mensagem para confirmação!', 'Daruma DLL Framework', MB_OK + MB_ICONERROR);

end;

end.
