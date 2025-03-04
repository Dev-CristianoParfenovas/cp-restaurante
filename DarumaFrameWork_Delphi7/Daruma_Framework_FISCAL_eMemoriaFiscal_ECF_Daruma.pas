unit Daruma_Framework_FISCAL_eMemoriaFiscal_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls;

type
  TFR_FISCAL_eMemoriaFiscal_ECF_Daruma = class(TForm)
    GroupBox1: TGroupBox;
    Label3: TLabel;
    LBL_IntervaloInicial: TLabel;
    LBL_IntervaloFinal: TLabel;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Edt_DestinoArq_Atocotepe: TEdit;
    BT_Procura_DestinoArqAtocotepe: TButton;
    DLG_SelecionaDiretorio: TOpenDialog;
    BTN_GerarRelatorio: TButton;
    BT_FECHAR: TButton;
    EDT_Inicial: TEdit;
    EDT_Final: TEdit;
    CBX_Tipo: TComboBox;
    DTP_DataFinal: TDateTimePicker;
    DTP_DataInicial: TDateTimePicker;
    GBX_Relatorio: TGroupBox;
    CHK_ARQ: TCheckBox;
    CHK_ATO: TCheckBox;
    CHK_IMP: TCheckBox;
    GBX_Tipo: TGroupBox;
    RB_COMP: TRadioButton;
    RB_SIMP: TRadioButton;
    procedure FormShow(Sender: TObject);
    procedure CBX_TipoClick(Sender: TObject);
    procedure BTN_GerarRelatorioClick(Sender: TObject);
    procedure BT_FECHARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_eMemoriaFiscal_ECF_Daruma: TFR_FISCAL_eMemoriaFiscal_ECF_Daruma;
  sDia,sMes,sAno: string;
  dDatai,dDataf: Tdatetime;
  spathAto, spathSintegra, spathNFP: string;


implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_eMemoriaFiscal_ECF_Daruma.FormShow(Sender: TObject);
begin
begin
   sDia:= formatdatetime('dd',date);
   sMes:= formatdatetime('mm',date);
   sAno:= formatdatetime('yyyy',date);
   dDatai:= strtodate(sDia+'/'+sMes+'/'+sAno);
   dDataf:= strtodate(sDia+'/'+sMes+'/'+sAno);
   DTP_DataInicial.Date:= dDatai;
   DTP_DataFinal.Date:= dDataf;

end;
end;

procedure TFR_FISCAL_eMemoriaFiscal_ECF_Daruma.CBX_TipoClick(
  Sender: TObject);
begin
 If ((CBX_Tipo.ItemIndex = 0) or (CBX_Tipo.ItemIndex = 1)) then
        begin
           EDT_Inicial.Visible:= true;
           EDT_Final.Visible:= true;
           EDT_Inicial.SetFocus;
           LBL_IntervaloInicial.Caption:= CBX_Tipo.Text + ' Inicial:';
           LBL_IntervaloFinal.Caption:= CBX_Tipo.Text + ' Final:';
        end
        else
        begin
           EDT_Inicial.Visible:= false;
           EDT_Final.Visible:= false;
           DTP_DataInicial.Visible:= true;
           DTP_DataFinal.Visible:= true;
           LBL_IntervaloInicial.Caption:= CBX_Tipo.Text + ' Inicial:';
           LBL_IntervaloFinal.Caption:= CBX_Tipo.Text + ' Final:';
           DTP_DataInicial.SetFocus;
        end;
end;

procedure TFR_FISCAL_eMemoriaFiscal_ECF_Daruma.BTN_GerarRelatorioClick(
  Sender: TObject);
var
sRelatorio, sTipo, sDataIni, sDataFim, sInicio, sFim, sArquivoAtocotepe: string;
iTam, Int_Confirma:integer;
bTipoLMF: Boolean;
begin

   If CHK_ARQ.Checked then sRelatorio:= sRelatorio +'ARQ+';
   If CHK_ATO.Checked then sRelatorio:= sRelatorio +'ATO+';
   If CHK_IMP.Checked then sRelatorio:= sRelatorio +'IMP+';
   iTam:= length(sRelatorio);
   Delete( sRelatorio,iTam, 1 );

   sArquivoAtocotepe:= Edt_DestinoArq_Atocotepe.Text;
   if sArquivoAtocotepe <> '' then
     Begin
       Int_Retorno:= regAlterarValor_Daruma('START\LocalArquivosRelatorios',sArquivoAtocotepe);
    end;

   sTipo:= CBX_Tipo.Text;
   if RB_COMP.Checked=true then
   Begin
      bTipoLMF:= true;
   end
   else
   Begin
      bTipoLMF:=false;
   end;

   If ((sTipo = 'COO') or (sTipo = 'CRZ')) then
     begin
     sRelatorio:='';
     If CHK_ARQ.Checked then      sRelatorio:= sRelatorio +'ARQ+';
     If CHK_ATO.Checked then   sRelatorio:= sRelatorio +'ATO+';
     If CHK_IMP.Checked then       sRelatorio:= sRelatorio +'IMP+';
     iTam:= length(sRelatorio);
     Delete( sRelatorio,iTam, 1 );
        sInicio:= EDT_Inicial.Text;
        sFim:= EDT_Final.Text;
        Int_Retorno:= eMemoriaFiscal_ECF_Daruma(sInicio, sFim,bTipoLMF,sRelatorio);
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
       Int_Retorno:= eMemoriaFiscal_ECF_Daruma(sDataIni, sDataFim,bTipoLMF,sRelatorio);
               FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
      end;

end;
//end;

procedure TFR_FISCAL_eMemoriaFiscal_ECF_Daruma.BT_FECHARClick(
  Sender: TObject);
begin
Close();
end;

end.
