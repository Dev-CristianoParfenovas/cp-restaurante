unit Daruma_Framework_Looping_Verificacao_Status;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,Daruma_Framework_Variaveis_Globais;

type
  TFramework_LoopingVerificacaoStatus = class(TForm)
    Label1: TLabel;
    TX_Status: TEdit;
    BT_Enviar: TButton;
    BT_Stop: TButton;
    BT_Fechar: TButton;
    Timer1: TTimer;
    procedure BT_FecharClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BT_EnviarClick(Sender: TObject);
    procedure BT_StopClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Function Daruma_DUAL_VerificaStatus: Integer; StdCall; External 'Daruma32.dll'

var
  Framework_LoopingVerificacaoStatus: TFramework_LoopingVerificacaoStatus;
   
implementation

{$R *.dfm}

procedure TFramework_LoopingVerificacaoStatus.BT_FecharClick(Sender: TObject);
begin
close;
end;

procedure TFramework_LoopingVerificacaoStatus.Timer1Timer(Sender: TObject);
begin
Int_Retorno:= Daruma_DUAL_VerificaStatus();

   if Int_Retorno = 1 then
      TX_Status.Text:= '1(um) - Impressora OK!';
      if Int_Retorno = (-50) then
         TX_Status.Text:= '(-50) - Impressora OFF Line!';
         if Int_Retorno = (-51) then
           TX_Status.Text:= '(-51) - Impressora Sem Papel!';
            if Int_Retorno = (-27) then
               TX_Status.Text:= '(-27) - Erro Generico!!';
               if Int_Retorno = (0) then
                  TX_Status.Text:= '(0) - Impressora Desligada!!';
end;

procedure TFramework_LoopingVerificacaoStatus.BT_EnviarClick(Sender: TObject);
begin
timer1.Enabled:= true; 
end;

procedure TFramework_LoopingVerificacaoStatus.BT_StopClick(Sender: TObject);
begin
timer1.Enabled:= false;
TX_status.Text:= '';
end;

end.
