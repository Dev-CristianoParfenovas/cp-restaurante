unit Daruma_Framework_FISCAL_rGerarSINTEGRA_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls;

type
  TFR_FISCAL_rGerarSINTEGRA = class(TForm)
    GroupBox1: TGroupBox;
    Label3: TLabel;
    LBL_IntervaloInicial: TLabel;
    LBL_IntervaloFinal: TLabel;
    DTP_DataInicial: TDateTimePicker;
    DTP_DataFinal: TDateTimePicker;
    CBX_Tipo: TComboBox;
    EDT_Inicial: TEdit;
    EDT_Final: TEdit;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Edt_DestinoArq: TEdit;
    BT_Procura_DestinoArq: TButton;
    BT_FECHAR: TButton;
    BT_ENVIAR: TButton;
    DLG_SelecionaDiretorio: TOpenDialog;
    Timer1: TTimer;
    procedure BT_FECHARClick(Sender: TObject);
    procedure BT_Procura_DestinoArqClick(Sender: TObject);
    procedure BT_ENVIARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_rGerarSINTEGRA: TFR_FISCAL_rGerarSINTEGRA;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_rGerarSINTEGRA.BT_FECHARClick(Sender: TObject);
begin
close();
end;

procedure TFR_FISCAL_rGerarSINTEGRA.BT_Procura_DestinoArqClick(
  Sender: TObject);
var spathAto:String;
begin
  DLG_SelecionaDiretorio.Execute;
   spathAto:= ExtractFilePath(DLG_SelecionaDiretorio.FileName);
   Edt_DestinoArq.Text:= spathAto;

end;

procedure TFR_FISCAL_rGerarSINTEGRA.BT_ENVIARClick(Sender: TObject);
  var
sRelatorio, sTipo, sDataIni, sDataFim, sInicio, sFim, sLocalArquivo: string;
Int_Confirma:integer;
begin

 sLocalArquivo:= Edt_DestinoArq.Text;
 sTipo:= CBX_Tipo.Text;
      if sLocalArquivo <> '' then
         Begin
            Int_Retorno:= regAlterarValor_Daruma('START\LocalArquivosRelatorios',sLocalArquivo);
       end;

   If ((sTipo = 'COO') or (sTipo = 'CRZ')) then
     begin
     sRelatorio:='';
        sInicio:= EDT_Inicial.Text;
        sFim:= EDT_Final.Text;
        Int_Retorno:= rGerarSINTEGRA_ECF_Daruma(sTipo,sInicio,sFim);
        FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
      end
      else
      begin
        sDataIni:= DateTimeToStr(DTP_DataInicial.Date);
        sDataFim:= DateTimeToStr(DTP_DataFinal.Date);
        sDataIni:= StringReplace(sDataIni,'/','',[rfReplaceAll]);
        sDataFim:= StringReplace(sDataFim,'/','',[rfReplaceAll]);
        sDataIni:= copy(sDataIni,1,8);
        sDataFim:= copy(sDataFim,1,8);
        Int_Retorno:= rGerarSINTEGRA_ECF_Daruma(sTipo,sDataIni,sDataFim);
        FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
      end;
end;

end.
