unit Daruma_Framework_Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, ShellApi, Registry;

type
  TFR_DarumaFramework_Principal = class(TForm)
    PN_TelaPrincipal: TPanel;
    I_DDC: TImage;
    LB_DFramework: TLabel;
    LB_Delphi7: TLabel;
    LB_DLLFrame: TLabel;
    GB_Simuladores: TGroupBox;
    GB_IFiscal: TGroupBox;
    GB_NFiscal: TGroupBox;
    BT_MenuTA2000: TButton;
    BT_Fechar: TButton;
    GB_Modem: TGroupBox;
    BT_NFiscal: TButton;
    BT_HelpOnline: TButton;
    BT_Min200: TButton;                                             
    BT_Fiscal: TButton;
    GroupBox1: TGroupBox;
    Button1: TButton;
    GroupBox2: TGroupBox;
    btn_Display: TButton;
    procedure BT_MenuTA2000Click(Sender: TObject);
    procedure BT_FecharClick(Sender: TObject);
    procedure BT_NFiscalClick(Sender: TObject);
    procedure BT_HelpOnlineClick(Sender: TObject);
    procedure BT_Min200Click(Sender: TObject);
    procedure BT_FiscalClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure btn_DisplayClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_DarumaFramework_Principal: TFR_DarumaFramework_Principal;

implementation

uses Daruma_Framework_TA2000_Principal, Daruma_Framework_DUAL_Principal,
  Daruma_Framework_MODEM_Principal, Daruma_Framework_FISCAL_Principal,
  FR_CominuicacaoSerial, Daruma_Framework_Generico_Principal, Daruma_Framework_DSP_Principal;
  //Daruma_Framework_MODEM_MIN200;

function iEnviarDadosFormatados_TA2000_Daruma(szTexto: String; szRetorno: String): Integer; StdCall; External 'DarumaFrameWork.dll'
function eDefinirProduto_Daruma(szProduto: String): Integer; StdCall; External 'DarumaFrameWork.dll'

{$R *.dfm}

procedure TFR_DarumaFramework_Principal.BT_MenuTA2000Click(
  Sender: TObject);

var
iRetorno : Integer;

begin

// Exibe a Tela do Menu Principal do TA2000;

iRetorno := eDefinirProduto_Daruma('TA2000');
FR_MenuTA2000_Principal.show;

end;

procedure TFR_DarumaFramework_Principal.BT_FecharClick(Sender: TObject);
begin

Close; //Comando para encerrar o Formulario;

end;

procedure TFR_DarumaFramework_Principal.BT_NFiscalClick(Sender: TObject);
var
iRetorno : Integer;

begin
 iRetorno :=0;
// Exibe a Tela do Menu Principal da DUAL;

iRetorno := eDefinirProduto_Daruma('DUAL');

FR_MenuImpressoraDual_Principal.Show;

end;

function BrowseURL(const URL: string) : boolean;
var
   Browser: string;
begin
   Result := True;
   Browser := '';
   with TRegistry.Create do
   try
     RootKey := HKEY_CLASSES_ROOT;
Access := KEY_QUERY_VALUE;
     if OpenKey('\htmlfile\shell\open\command', False) then
       Browser := ReadString('') ;
     CloseKey;
   finally
     Free;
   end;

      if Browser = '' then
   begin
     Result := False;
     Exit;
   end;
   Browser := Copy(Browser, Pos('"', Browser) + 1, Length(Browser)) ;
   Browser := Copy(Browser, 1, Pos('"', Browser) - 1) ;
   ShellExecute(0, 'open', PChar(Browser), PChar(URL), nil, SW_SHOW) ;
end;




procedure TFR_DarumaFramework_Principal.BT_HelpOnlineClick(
  Sender: TObject);
  Var
  Int_Confirma: Integer;
  begin
    Int_Confirma:= Application.MessageBox ('Help Online, para acessa-lo é necessário conexão na Internet, caso não tenha e necessite do Help entrar em contato com nossa Equipe de Suporte ao Desenvolvedor - 0800 77 0 33 20' , 'Daruma DLL Framework', mb_YesNo+mb_DefButton2+mb_IconQuestion);
 
 if (int_Confirma = 6) then 

  BrowseURL('http://www.desenvolvedoresdaruma.com.br/home/downloads/Site_2009/HelpOnline/Daruma_Framework.htm')
  else
  Exit;

end;

procedure TFR_DarumaFramework_Principal.BT_Min200Click(Sender: TObject);
var
iRetorno : Integer;
begin
// Exibe a Tela do Menu Principal do MODEM;
iRetorno := eDefinirProduto_Daruma('MODEM');
FR_MenuMODEM_Principal.show;
end;

procedure TFR_DarumaFramework_Principal.BT_FiscalClick(Sender: TObject);
var
iRetorno : Integer;
begin
// Exibe a Tela do Menu Principal Impressora FISCAL;

iRetorno := eDefinirProduto_Daruma('ECF');
//iRetorno:=regAlterarValor_Daruma('ECF\RetornarAvisoErro','1');
FR_MenuImpressoraFiscal_Principal.show;
end;

procedure TFR_DarumaFramework_Principal.FormKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if ( key = VK_F1) then
   ShowMessage('Tecla F1')
  else  if ( chr(key) = 'A') then
   ShowMessage('Letra/Tecla A');

end;

procedure TFR_DarumaFramework_Principal.Button1Click(Sender: TObject);
var iRetorno:Integer;
begin
// Exibe a Tela do Menu Principal do GENERICO;
iRetorno := eDefinirProduto_Daruma('GENERICO');
FR_Generico_MenuPrincipal.show();

end;

procedure TFR_DarumaFramework_Principal.btn_DisplayClick(Sender: TObject);
var iRetorno:Integer;
StrTeste:String;
begin
// Exibe a Tela do Menu Principal do Display;
StrTeste:='DSP';
iRetorno := eDefinirProduto_Daruma('DSP');
FR_MenuDisplay_Principal.Show();

end;

End.
