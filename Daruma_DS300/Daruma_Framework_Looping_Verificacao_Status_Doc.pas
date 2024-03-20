unit Daruma_Framework_Looping_Verificacao_Status_Doc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls,Daruma_Framework_Variaveis_Globais;

type
  TFramework_LoopingVerificacaoStatusDoc = class(TForm)
    Label1: TLabel;
    TX_Status: TEdit;
    BT_Enviar: TButton;
    BT_Stop: TButton;
    BT_Fechar: TButton;
    Timer1: TTimer;
    procedure BT_FecharClick(Sender: TObject);
    procedure BT_StopClick(Sender: TObject);
    procedure BT_EnviarClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Framework_LoopingVerificacaoStatusDoc: TFramework_LoopingVerificacaoStatusDoc;
   
implementation
     function Daruma_DUAL_VerificaDocumento: Integer; StdCall; External 'Daruma32.dll'
{$R *.dfm}

procedure TFramework_LoopingVerificacaoStatusDoc.BT_FecharClick(
  Sender: TObject);
begin
close;
end;

procedure TFramework_LoopingVerificacaoStatusDoc.BT_StopClick(
  Sender: TObject);
begin
timer1.Enabled:= False;
end;

procedure TFramework_LoopingVerificacaoStatusDoc.BT_EnviarClick(
  Sender: TObject);
begin
timer1.Enabled:= true;
end;

procedure TFramework_LoopingVerificacaoStatusDoc.Timer1Timer(
  Sender: TObject);
begin
    Int_Retorno:= Daruma_DUAL_VerificaDocumento();
    if Int_Retorno = 1 then
    begin
       TX_Status.Text:= '1(um) - Documento Posicionado!!';
       end
       else
         TX_status.Text:= '0 (Zero)  -  Documento Não Posicionado';
end;


end.
