unit Daruma_Framework_MODEM_Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls, StdCtrls;

type
  TFR_MenuMODEM_Principal = class(TForm)
    MN_Modem: TMainMenu;
    MN_MetodoDarumaFramework: TMenuItem;
    MN_eDefinirProduto_Daruma: TMenuItem;
    MN_regRetornaValorChave_DarumaFramework: TMenuItem;
    MN_MRegistro: TMenuItem;
    MN_regTempoAlertar_MODEM_DarumaFramework: TMenuItem;
    MN_regLerApagar_MODEM_DarumaFramework: TMenuItem;
    MN_regLerApagar_TRUE: TMenuItem;
    MN_regLerApagar_FALSE: TMenuItem;
    MN_regPorta_MODEM_DarumaFramework: TMenuItem;
    MN_regThread_MODEM_DarumaFramework: TMenuItem;
    MN_regThread_TRUE: TMenuItem;
    MN_regThread_FALSE: TMenuItem;
    MN_regVelocidade_MODEM_DarumaFramework: TMenuItem;
    MN_regVelocidade_9600: TMenuItem;
    MN_regVelocidade_38400: TMenuItem;
    MN_regVelocidade_115200: TMenuItem;
    regCaptionWinAPP1: TMenuItem;
    Mtodoreg1: TMenuItem;
    MN_Metodos_Funcao_MODEM: TMenuItem;
    MN_fnApagarSMS_MODEM_DarumaFramework: TMenuItem;
    MN_fnInicializar_MODEM_DarumaFramework: TMenuItem;
    NivelSinalRecebido: TMenuItem;
    MtodoeTrocarBandejaMODEMDarumaFramework1: TMenuItem;
    MN_Metodos_Transmissao_MODEM: TMenuItem;
    MN_tEnviarSMS_MODEM_DarumaFramework: TMenuItem;
    MN_Metodos_Recepcao_MODEM: TMenuItem;
    MN_rLerSMS_MODEM_DarumaFramework: TMenuItem;
    AlertarSMSUNREAD: TMenuItem;
    ListarSMS1: TMenuItem;
    MtodoRetornarIMEIMODEMDarumaFramework1: TMenuItem;
    MtodorRetornarOperadoraMODEMDarumaFramework1: TMenuItem;
    BT_FecharJanela: TMenuItem;
    LB_MensagemThread: TLabel;
    BT_Fechar: TButton;
    EB_NovaMensagem: TEdit;
    BT_Limpar: TButton;
    LB_Duvidas: TLabel;
    PN_Dual: TPanel;
    I_DDC: TImage;
    LB_Dual: TLabel;
    LB_DLL: TLabel;
    ServioCSD1: TMenuItem;
    ServioCSDDarumaFramework1: TMenuItem;
    MtodoeReiniciarMODEMDarumaFramework1: TMenuItem;
    MtodotEnviarSMSOperadoraMODEMDarumaFramework1: TMenuItem;
    MtodoeBuscarPortaVelocidadeMODEMDarumaFramework1: TMenuItem;
    MtodorReceberSmsIndiceECFDarumaFramework1: TMenuItem;
    MtodorInfoEstendidaMODEMDarumaFramework1: TMenuItem;
    MtodorTotalSmsMODEMDarumaFramework1: TMenuItem;
    MtodorLerSmsConfirmacaoMODEMDarumaFramework1: TMenuItem;
    MtodorReceberNotificacaoMODEMDarumaFramework1: TMenuItem;
    procedure BT_FecharClick(Sender: TObject);
    procedure BT_FecharJanelaClick(Sender: TObject);
    procedure MN_eDefinirProduto_DarumaClick(Sender: TObject);
    procedure MN_regRetornaValorChave_DarumaFrameworkClick(
      Sender: TObject);
    procedure MN_regTempoAlertar_MODEM_DarumaFrameworkClick(
      Sender: TObject);
    procedure MN_regLerApagar_TRUEClick(Sender: TObject);
    procedure MN_regLerApagar_FALSEClick(Sender: TObject);
    procedure MN_regPorta_MODEM_DarumaFrameworkClick(Sender: TObject);
    procedure MN_regThread_TRUEClick(Sender: TObject);
    procedure MN_regThread_FALSEClick(Sender: TObject);
    procedure MN_regVelocidade_9600Click(Sender: TObject);
    procedure MN_regVelocidade_38400Click(Sender: TObject);
    procedure MN_regVelocidade_115200Click(Sender: TObject);
    procedure regCaptionWinAPP1Click(Sender: TObject);
    procedure Mtodoreg1Click(Sender: TObject);
    procedure MN_fnApagarSMS_MODEM_DarumaFrameworkClick(Sender: TObject);
    procedure MN_fnInicializar_MODEM_DarumaFrameworkClick(Sender: TObject);
    procedure NivelSinalRecebidoClick(Sender: TObject);
    procedure MtodoeTrocarBandejaMODEMDarumaFramework1Click(
      Sender: TObject);
    procedure MN_tEnviarSMS_MODEM_DarumaFrameworkClick(Sender: TObject);
    procedure MN_rLerSMS_MODEM_DarumaFrameworkClick(Sender: TObject);
    procedure AlertarSMSUNREADClick(Sender: TObject);
    procedure ListarSMS1Click(Sender: TObject);
    procedure MtodoRetornarIMEIMODEMDarumaFramework1Click(Sender: TObject);
    procedure MtodorRetornarOperadoraMODEMDarumaFramework1Click(
      Sender: TObject);
    procedure BT_LimparClick(Sender: TObject);
    procedure ServioCSDDarumaFramework1Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MtodoeReiniciarMODEMDarumaFramework1Click(Sender: TObject);
    procedure MtodotEnviarSMSOperadoraMODEMDarumaFramework1Click(
      Sender: TObject);
    procedure MtodoeBuscarPortaVelocidadeMODEMDarumaFramework1Click(
      Sender: TObject);
    procedure MtodorReceberSmsIndiceECFDarumaFramework1Click(
      Sender: TObject);
    procedure MtodorInfoEstendidaMODEMDarumaFramework1Click(
      Sender: TObject);
    procedure MtodorTotalSmsMODEMDarumaFramework1Click(Sender: TObject);
    procedure MtodorLerSmsConfirmacaoMODEMDarumaFramework1Click(
      Sender: TObject);
    procedure MtodorReceberNotificacaoMODEMDarumaFramework1Click(
      Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_MenuMODEM_Principal: TFR_MenuMODEM_Principal;
  FlagAlertarSmsUNREAD: Integer;

implementation

uses Daruma_Framework_DARUMAFRAMEWORK_regRetornaValorChave_DarumaFramework,
  Daruma_Framework_MODEM_eApagarSms_MODEM_DarumaFramework,
  Daruma_Framework_Modem_rNivelSinalRecebido_MODEM_DarumaFramework,
  Daruma_Framework_MODEM_tEnviarSms_MODEM_DarumaFramework, Daruma_Framework_MODEM_rReceberSms_MODEM_DarumaFramework,
  Daruma_Framework_MODEM_rListarSms_MODEM_DarumaFramework,
  Daruma_Framework_MODEM_rRetornarImei_MODEM_DarumaFramework,
  Daruma_Framework_MODEM_rRetornarOperadora_MODEM_DarumaFramework,
  Daruma_Framework_MODEM_ServicoCSD,
  Daruma_Framework_MODEM_tEnviarSMSOperadora,
  Daruma_Framework_MODEM_rReceberSmsIndice_MODEM_DarumaFramework,
  Daruma_Framework_MODEM_rTotalSms_MODEM_DarumaFramework,
  Daruma_Framework_MODEM_rLerSmsConfirmacao,
  Daruma_Framework_MODEM_rReceberNotificacao;

function regLerApagar_MODEM_DarumaFramework(sParametro: String): Integer; StdCall; External 'DarumaFrameWork.dll'
function regPorta_MODEM_DarumaFramework(sParametro: String): Integer; StdCall; External 'DarumaFrameWork.dll'
function regThread_MODEM_DarumaFramework(sParametro: String): Integer; StdCall; External 'DarumaFrameWork.dll'
function regVelocidade_MODEM_DarumaFramework(sParametro: String): Integer; StdCall; External 'DarumaFrameWork.dll'
function eDefinirProduto_Daruma(szProduto: String): Integer; StdCall; External 'DarumaFrameWork.dll'
function eInicializar_MODEM_DarumaFramework(): Integer; StdCall; External 'DarumaFrameWork.dll'
function regTempoAlertar_MODEM_DarumaFramework(sParametro: String): Integer; StdCall; External 'DarumaFrameWork.dll'
function regCaptionWinAPP_MODEM_DarumaFramework(sParametro: String): Integer; StdCall; External 'DarumaFrameWork.dll'
function eTrocarBandeja_MODEM_DarumaFramework(): Integer; StdCall; External 'DarumaFrameWork.dll'
function regBandejaInicio_MODEM_DarumaFramework(sParametro: String): Integer; StdCall; External 'DarumaFrameWork.dll'
function eReiniciar_MODEM_DarumaFramework(): Integer; StdCall; External 'DarumaFrameWork.dll'
function tEnviarSmsOperadora_MODEM_DarumaFramework(Str_Numero:string; Str_Msg:string; Str_SIM:string): Integer; StdCall; External 'DarumaFrameWork.dll'
function eBuscarPortaVelocidade_MODEM_DarumaFramework(): Integer; StdCall; External 'DarumaFramework.dll'
function rInfoEstendida_MODEM_DarumaFramework(Str_InfoEstendida:string): Integer; StdCall; External 'DarumaFramework.dll'


{$R *.dfm}

procedure TFR_MenuMODEM_Principal.BT_FecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFR_MenuMODEM_Principal.BT_FecharJanelaClick(Sender: TObject);
begin
  Close;
end;

procedure TFR_MenuMODEM_Principal.MN_eDefinirProduto_DarumaClick(
  Sender: TObject);
var
  sProduto: string;
  iRetorno: Integer;
begin
  sProduto := 'MODEM';
      iRetorno := eDefinirProduto_Daruma(sProduto);
      if (iRetorno = 1) then
        begin
          Application.MessageBox('Configura��o realizada com sucesso, produto MODEM.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
        end
      else
        begin
          Application.MessageBox('Erro ao incluir dados no Registro(Registry)!','Daruma DLL Framework', MB_OK + MB_ICONERROR);
        end;

end;

procedure TFR_MenuMODEM_Principal.MN_regRetornaValorChave_DarumaFrameworkClick(
  Sender: TObject);
begin
  FR_DARUMAFRAMEWORK_regRetornaValorChave_DarumaFramework.show;
end;

procedure TFR_MenuMODEM_Principal.MN_regTempoAlertar_MODEM_DarumaFrameworkClick(
  Sender: TObject);
var
  stTempo: string;
  boRetorno: Boolean;
  iRetorno: Integer;
begin
  stTempo := '';
  boRetorno := InputQuery('Daruma DLL Framework', 'Digita o intervalo de tempo para a thread verificar por SMS unread', stTempo);
  if ((boRetorno = True) and (stTempo <> '')) then
    begin
      iRetorno := regTempoAlertar_MODEM_DarumaFramework(stTempo);
      if (iRetorno = 1) then
        begin
          Application.MessageBox('Configura��o realizada com sucesso.' , 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
        end
      else
        begin
          Application.MessageBox('Erro ao Configurar o intervalo de tempo de verifica��o da thread','Daruma DLL Framework', MB_OK + MB_ICONERROR);
        end;
    end;

end;

procedure TFR_MenuMODEM_Principal.MN_regLerApagar_TRUEClick(
  Sender: TObject);
var iRetorno: Integer;
begin
  MN_regLerApagar_TRUE.Checked := false;
  MN_regLerApagar_FALSE.Checked := false;
  iRetorno := regLerApagar_MODEM_DarumaFramework('TRUE');
  if (iRetorno = 1) Then
    begin
      Application.MessageBox('Configura��o realizada com sucesso.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
      MN_regLerApagar_TRUE.Checked := true;
    end
  else
    begin
      Application.MessageBox('Erro ao incluir dados no Registro(Registry)!', 'Daruma DLL Framework', MB_OK + MB_ICONERROR);
    end;
end;

procedure TFR_MenuMODEM_Principal.MN_regLerApagar_FALSEClick(
  Sender: TObject);
var iRetorno: Integer;
begin
  MN_regLerApagar_TRUE.Checked := false;
  MN_regLerApagar_FALSE.Checked := false;
  iRetorno := regLerApagar_MODEM_DarumaFramework('FALSE');
  if (iRetorno = 1) Then
    begin
      Application.MessageBox('Configura��o realizada com sucesso.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
      MN_regLerApagar_FALSE.Checked := true;
    end
  else
    begin
      Application.MessageBox('Erro ao incluir dados no Registro(Registry)!', 'Daruma DLL Framework', MB_OK + MB_ICONERROR);
    end;

end;

procedure TFR_MenuMODEM_Principal.MN_regPorta_MODEM_DarumaFrameworkClick(
  Sender: TObject);
var
  stPorta: string;
  boRetorno: Boolean;
  iRetorno: Integer;
begin
  stPorta := '';
  boRetorno := InputQuery('Daruma DLL Framework', 'Digita a Porta de Comunica��o:', stPorta);
  if ((boRetorno = True) and (stPorta <> '')) then
    begin
      iRetorno := regPorta_MODEM_DarumaFramework(stPorta);
      if (iRetorno = 1) then
        begin
          Application.MessageBox('Configura��o realizada com sucesso.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
        end
      else
        begin
          Application.MessageBox('Erro ao Configurar a Porta de Comunica��o, verifique-se a mesma encontra disponivel ou em conflito com outra aplica��o','Daruma DLL Framework', MB_OK + MB_ICONERROR);
        end;
    end;

end;

procedure TFR_MenuMODEM_Principal.MN_regThread_TRUEClick(Sender: TObject);
var iRetorno: Integer;
begin
  MN_regThread_TRUE.Checked := false;
  MN_regThread_FALSE.Checked := false;
  iRetorno := regThread_MODEM_DarumaFramework('TRUE');
  if (iRetorno = 1) Then
    begin
      Application.MessageBox('Opcao de Thread Ativada, Quando o M�dulo Modem for carregado a Thread de Verifica��o de SMS UnREAD ser� inicializada.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
      MN_regThread_TRUE.Checked := true;
      end
  else
    begin
      Application.MessageBox('Erro ao incluir dados no Registro(Registry)!', 'Daruma DLL Framework', MB_OK + MB_ICONERROR);
    end;

end;

procedure TFR_MenuMODEM_Principal.MN_regThread_FALSEClick(Sender: TObject);
var iRetorno: Integer;
begin
  MN_regThread_TRUE.Checked := false;
  MN_regThread_FALSE.Checked := false;
  iRetorno := regThread_MODEM_DarumaFramework('FALSE');
  if (iRetorno = 1) Then
    begin
      Application.MessageBox('Opcao de Thread Desativada, voce nao ira mais receber avisos de novas mensagens', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
      MN_regThread_FALSE.Checked := true;
    end
  else
    begin
      Application.MessageBox('Erro ao incluir dados no Registro(Registry)!', 'Daruma DLL Framework', MB_OK + MB_ICONERROR);
    end;
end;

procedure TFR_MenuMODEM_Principal.MN_regVelocidade_9600Click(
  Sender: TObject);
var iRetorno: Integer;
begin
  MN_regVelocidade_9600.Checked := false;
  MN_regVelocidade_38400.Checked := false;
  MN_regVelocidade_115200.Checked := false;
  iRetorno := regVelocidade_MODEM_DarumaFramework('9600');
  if (iRetorno = 1) Then
    begin
      Application.MessageBox('Configura��o realizada com sucesso.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
      MN_regVelocidade_9600.Checked := true;
    end
  else
    begin
      Application.MessageBox('Erro ao incluir dados no Registro(Registry)!', 'Daruma DLL Framework', MB_OK + MB_ICONERROR);
    end;
end;

procedure TFR_MenuMODEM_Principal.MN_regVelocidade_38400Click(
  Sender: TObject);
var iRetorno: Integer;
begin
  MN_regVelocidade_9600.Checked := false;
  MN_regVelocidade_38400.Checked := false;
  MN_regVelocidade_115200.Checked := false;
  iRetorno := regVelocidade_MODEM_DarumaFramework('38400');
  if (iRetorno = 1) Then
    begin
      Application.MessageBox('Configura��o realizada com sucesso.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
      MN_regVelocidade_38400.Checked := true;
    end
  else
    begin
      Application.MessageBox('Erro ao incluir dados no Registro(Registry)!', 'Daruma DLL Framework', MB_OK + MB_ICONERROR);
    end;
end;

procedure TFR_MenuMODEM_Principal.MN_regVelocidade_115200Click(
  Sender: TObject);
var iRetorno: Integer;
begin
  MN_regVelocidade_9600.Checked := false;
  MN_regVelocidade_38400.Checked := false;
  MN_regVelocidade_115200.Checked := false;
  iRetorno := regVelocidade_MODEM_DarumaFramework('115200');
  if (iRetorno = 1) Then
    begin
      Application.MessageBox('Configura��o realizada com sucesso.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
      MN_regVelocidade_115200.Checked := true;
    end
  else
    begin
      Application.MessageBox('Erro ao incluir dados no Registro(Registry)!', 'Daruma DLL Framework', MB_OK + MB_ICONERROR);
    end;

end;

procedure TFR_MenuMODEM_Principal.regCaptionWinAPP1Click(Sender: TObject);
var
  stCaption: string;
  boRetorno: Boolean;
  iRetorno: Integer;
begin
  stCaption := '';
  boRetorno := InputQuery('Daruma DLL Framework', 'Digite o nome da Janela(Caption) que receber� o alerta de SMS UNREAD!', stCaption);
  if ((boRetorno = True) and (stCaption <> '')) then
    begin
      iRetorno := regCaptionWinAPP_MODEM_DarumaFramework(stCaption);
      if (iRetorno = 1) then
        begin
          Application.MessageBox('Configura��o realizada com sucesso.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
        end
      else
        begin
          Application.MessageBox('Erro ao Configurar a chave do Registro','Daruma DLL Framework', MB_OK + MB_ICONERROR);
        end;
    end;

end;

procedure TFR_MenuMODEM_Principal.Mtodoreg1Click(Sender: TObject);
var
  stCaption: string;
  boRetorno: Boolean;
  iRetorno: Integer;
begin
  stCaption := '';
  boRetorno := InputQuery('Daruma DLL Framework', 'Digite SIM1 ou SIM2, para definir qual Bandeja o modem deve iniciar', stCaption);
  if ((boRetorno = True) and (stCaption <> '')) then
    begin
      iRetorno := regBandejaInicio_MODEM_DarumaFramework(stCaption);
      if (iRetorno = 1) then
        begin
          Application.MessageBox('Configura��o realizada com sucesso.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
        end
      else
        begin
          Application.MessageBox('Erro ao Configurar a chave do Registro','Daruma DLL Framework', MB_OK + MB_ICONERROR);
        end;
    end;
end;

procedure TFR_MenuMODEM_Principal.MN_fnApagarSMS_MODEM_DarumaFrameworkClick(
  Sender: TObject);
begin
FR_MODEM_eApagarSMS.show;

end;

procedure TFR_MenuMODEM_Principal.MN_fnInicializar_MODEM_DarumaFrameworkClick(
  Sender: TObject);
var
iRetorno : Integer;

begin

iRetorno := eInicializar_MODEM_DarumaFramework();
if (iRetorno = 1) then begin
    Application.MessageBox('Modem Inicializado com sucesso', 'Daruma DLL Framework', MB_OK + 32);
    end
  else
    begin
    Application.MessageBox('Erro ao Inicializar o Modem','Daruma DLL Framework', MB_OK + MB_ICONERROR);
    
    end;
end;

procedure TFR_MenuMODEM_Principal.NivelSinalRecebidoClick(Sender: TObject);
begin
FR_MODEM_rNivelSinalRecebido.show;
end;

procedure TFR_MenuMODEM_Principal.MtodoeTrocarBandejaMODEMDarumaFramework1Click(
  Sender: TObject);
var iRetorno: Integer;
begin
  iRetorno := eTrocarBandeja_MODEM_DarumaFramework();
  if (iRetorno = 1) Then
    begin
      Application.MessageBox('Bandeja trocada com sucesso.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
    end
  else
    begin
      Application.MessageBox('Erro ao tentar trocar a bandeja!', 'Daruma DLL Framework', MB_OK + MB_ICONERROR);
    end;
end;

procedure TFR_MenuMODEM_Principal.MN_tEnviarSMS_MODEM_DarumaFrameworkClick(
  Sender: TObject);
begin
FR_MODEM_tEnviarSMS.show;
end;

procedure TFR_MenuMODEM_Principal.MN_rLerSMS_MODEM_DarumaFrameworkClick(
  Sender: TObject);
begin
FR_MODEM_rReceberSMS.show;
end;

procedure TFR_MenuMODEM_Principal.AlertarSMSUNREADClick(Sender: TObject);
var
MSG: tagMSG;
MyHandleWnd: HWND;
begin
  if ( FlagAlertarSmsUNREAD = 0 ) then
   FlagAlertarSmsUNREAD := 1
  else
   FlagAlertarSmsUNREAD := 0;

  {FUNCAO: FindWindow -> API WIN32
   >> Encontra o Handle pelo Caption passado. }
  MyHandleWnd := FindWindow(NIL,'Modem - Daruma Telecom');

  {FUNCAO: GetMessage -> API WIN32
   >> Recupera uma mensagem da pilha de mensagens da thread  }
  while ( ( GetMessage( MSG, 0, 0, 0 ) = TRUE) And
          ( FlagAlertarSmsUNREAD = 1 ) ) do
    begin
      {FUNCAO: TranslateMessage -> API WIN32
       >> Traduz mensagens virtualkey para mensagens character.  }
       TranslateMessage(msg);
       { Verifica se a mensagem � uma WM_APP e se � destinada para a
         janela da aplicativo do usu�rio }
       if ( ( msg.message = WM_APP ) And
            ( msg.hwnd = MyHandleWnd ) ) then
             begin
                EB_NovaMensagem.Text := 'Voc� tem Novas Mensagens!!!'; // Aviso de novos SMS
             end;
      {FUNCAO: DispatchMessage -> API WIN32
       >> despacha a mensagem para a window procedure. }
      DispatchMessage(msg);
   end;
end;

procedure TFR_MenuMODEM_Principal.ListarSMS1Click(Sender: TObject);
begin
  FR_MODEM_rListarSms.show;
end;

procedure TFR_MenuMODEM_Principal.MtodoRetornarIMEIMODEMDarumaFramework1Click(
  Sender: TObject);
begin
FR_MODEM_rRetornarImei.show;
end;

procedure TFR_MenuMODEM_Principal.MtodorRetornarOperadoraMODEMDarumaFramework1Click(
  Sender: TObject);
begin
FR_MODEM_rRetornarOperadora.show;
end;

procedure TFR_MenuMODEM_Principal.BT_LimparClick(Sender: TObject);
begin
   EB_NovaMensagem.Clear;
end;

procedure TFR_MenuMODEM_Principal.ServioCSDDarumaFramework1Click(
  Sender: TObject);
begin
  FR_MODEM_ServicoCSD.show;
end;

procedure TFR_MenuMODEM_Principal.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

     if (key = VK_F3) then
     begin
      ShowMessage('Nova Mensagem');
      FR_MODEM_rReceberSms.show;
     end
  else  if ( chr(key) = 'A') then
   ShowMessage('Letra/Tecla A');

end;

procedure TFR_MenuMODEM_Principal.MtodoeReiniciarMODEMDarumaFramework1Click(
  Sender: TObject);
var iRetorno: Integer;
begin
  iRetorno := eReiniciar_MODEM_DarumaFramework();
  if (iRetorno = 1) Then
    begin
      Application.MessageBox('Modem reiniciado.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
  end
  else
    begin
      Application.MessageBox('Erro ao reiniciar modem!', 'Daruma DLL Framework', MB_OK + MB_ICONERROR);
    end;
end;
procedure TFR_MenuMODEM_Principal.MtodotEnviarSMSOperadoraMODEMDarumaFramework1Click(
  Sender: TObject);
begin
       FR_MODEM_tEnviarSMSOperadora.show();
end;

procedure TFR_MenuMODEM_Principal.MtodoeBuscarPortaVelocidadeMODEMDarumaFramework1Click(
  Sender: TObject);
  var   iRetorno:Integer;
begin
       iRetorno:= eBuscarPortaVelocidade_MODEM_DarumaFramework();

        if (iRetorno = 1) Then
    begin
      Application.MessageBox('M�todo executado com sucesso.', 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
  end
  else
    begin
      Application.MessageBox(Pchar('Retorno do m�todo= ' + IntToStr(iRetorno)), 'Daruma DLL Framework', MB_OK + MB_ICONERROR);
    end;
end;

procedure TFR_MenuMODEM_Principal.MtodorReceberSmsIndiceECFDarumaFramework1Click(
  Sender: TObject);
begin
        FR_MODEM_rReceberSmsIndice.show;
end;

procedure TFR_MenuMODEM_Principal.MtodorInfoEstendidaMODEMDarumaFramework1Click(
  Sender: TObject);
var iRetorno: Integer;
Var Str_InfoEstendida:String;
begin

  SetLength(Str_InfoEstendida,10);
  iRetorno := rInfoEstendida_MODEM_DarumaFramework(Str_InfoEstendida);
  if (iRetorno = 1) Then
    begin
      Application.MessageBox(pchar('Informa��o retornada = ' + Str_InfoEstendida), 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);    end
  else
    begin
      Application.MessageBox('Erro ao retornar informa��o estendida!', 'Daruma DLL Framework', MB_OK + MB_ICONERROR);
    end;
end;

procedure TFR_MenuMODEM_Principal.MtodorTotalSmsMODEMDarumaFramework1Click(
  Sender: TObject);
begin
     FR_MODEM_rTotalSms.show;
end;

procedure TFR_MenuMODEM_Principal.MtodorLerSmsConfirmacaoMODEMDarumaFramework1Click(
  Sender: TObject);
begin
      FR_rLerSmsConfirmacao_MODEM_DarumaFramework.Show;
end;

procedure TFR_MenuMODEM_Principal.MtodorReceberNotificacaoMODEMDarumaFramework1Click(
  Sender: TObject);
begin
      FR_MODEM_rReceberNotificacao.Show;
end;

end.
