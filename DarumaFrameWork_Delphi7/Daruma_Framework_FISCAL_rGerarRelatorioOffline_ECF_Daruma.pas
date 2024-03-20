unit Daruma_Framework_FISCAL_rGerarRelatorioOffline_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TFR_FISCAL_rGerarRelatorioOffline = class(TForm)
    GroupBox1: TGroupBox;
    Label3: TLabel;
    LBL_IntervaloInicial: TLabel;
    LBL_IntervaloFinal: TLabel;
    CBX_Tipo: TComboBox;
    DTP_DataInicial: TDateTimePicker;
    DTP_DataFinal: TDateTimePicker;
    BTN_GerarRelatorio: TButton;
    BT_FECHAR: TButton;
    EDT_Inicial: TEdit;
    EDT_Final: TEdit;
    GBX_Relatorio: TGroupBox;
    CHK_NFP: TCheckBox;
    CHK_NFPTDM: TCheckBox;
    CHK_MF: TCheckBox;
    CHK_MFD: TCheckBox;
    CHK_TDM: TCheckBox;
    CHK_Sintegra: TCheckBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    EDT_ArqMF: TEdit;
    Label2: TLabel;
    EDT_ArqMFD: TEdit;
    Label4: TLabel;
    EDT_ArqInf: TEdit;
    DLG_LocalizaArq: TOpenDialog;
    BT_Procura_ArqMF: TButton;
    BT_Procura_ARQMfd: TButton;
    BT_Procura_ArqInf: TButton;
    CHK_SPED: TCheckBox;
    CHK_VIVANOTA: TCheckBox;
    CHK_LMFC: TCheckBox;
    CHK_LMFS: TCheckBox;
    CHK_EAD: TCheckBox;
    GBox_Sped: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edt_AlqPis: TEdit;
    Edt_AlqCofins: TEdit;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    Edt_LocalChavePrivada: TEdit;
    Button1: TButton;
    procedure BT_Procura_ArqMFClick(Sender: TObject);
    procedure BT_Procura_ARQMfdClick(Sender: TObject);
    procedure BT_Procura_ArqInfClick(Sender: TObject);
    procedure BT_FECHARClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CBX_TipoClick(Sender: TObject);
    procedure BTN_GerarRelatorioClick(Sender: TObject);
    procedure CHK_SintegraClick(Sender: TObject);
    procedure CHK_SPEDClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_rGerarRelatorioOffline: TFR_FISCAL_rGerarRelatorioOffline;
  sDia,sMes,sAno: string;
  dDatai,dDataf: Tdatetime;

implementation

uses Daruma_Framework_FISCAL_Principal,
  Daruma_Framework_FISCAL_ParametrizacaoSintegra;
{$R *.dfm}

procedure TFR_FISCAL_rGerarRelatorioOffline.BT_Procura_ArqMFClick(
  Sender: TObject);
begin
   DLG_LocalizaArq.Execute;
   EDT_ArqMF.Text:= DLG_LocalizaArq.FileName;
end;

procedure TFR_FISCAL_rGerarRelatorioOffline.BT_Procura_ARQMfdClick(
  Sender: TObject);
begin
   DLG_LocalizaArq.Execute;
   EDT_ArqMFD.Text:= DLG_LocalizaArq.FileName;
end;

procedure TFR_FISCAL_rGerarRelatorioOffline.BT_Procura_ArqInfClick(
  Sender: TObject);
begin
   DLG_LocalizaArq.Execute;
   EDT_ArqInf.Text:= DLG_LocalizaArq.FileName;
end;

procedure TFR_FISCAL_rGerarRelatorioOffline.BT_FECHARClick(
  Sender: TObject);
begin
   Close;
end;

procedure TFR_FISCAL_rGerarRelatorioOffline.FormShow(Sender: TObject);
begin
   sDia:= formatdatetime('dd',date);
   sMes:= formatdatetime('mm',date);
   sAno:= formatdatetime('yyyy',date);
   dDatai:= strtodate(sDia+'/'+sMes+'/'+sAno);
   dDataf:= strtodate(sDia+'/'+sMes+'/'+sAno);
   DTP_DataInicial.Date:= dDatai;
   DTP_DataFinal.Date:= dDataf;
end;

procedure TFR_FISCAL_rGerarRelatorioOffline.CBX_TipoClick(Sender: TObject);
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

procedure TFR_FISCAL_rGerarRelatorioOffline.BTN_GerarRelatorioClick(
  Sender: TObject);
var
sRelatorio, sTipo,sDataIni,sDataFim,sInicio,sFim,sArquivo_MF,sArquivo_MFD,sArquivo_INF, sLocalChavePrivada: string;
iTam, Int_Confirma:integer;
Str_Valor_PIS: String;
Str_Valor_COFINS: String;

begin
   sLocalChavePrivada:= Edt_LocalChavePrivada.Text;
   sRelatorio:='';
   If CHK_NFP.Checked then      sRelatorio:= sRelatorio +'NFP+';
   If CHK_NFPTDM.Checked then   sRelatorio:= sRelatorio +'NFPTDM+';
   If CHK_MF.Checked then       sRelatorio:= sRelatorio +'MF+';
   If CHK_MFD.Checked then      sRelatorio:= sRelatorio +'MFD+';
   If CHK_TDM.Checked then      sRelatorio:= sRelatorio +'TDM+';
   If CHK_Sintegra.Checked then sRelatorio:= sRelatorio +'SINTEGRA+';
   If CHK_LMFC.Checked then sRelatorio:= sRelatorio +'LMFC+';
   If CHK_LMFS.Checked then sRelatorio:= sRelatorio +'LMFS+';
   If CHK_SPED.Checked then //sRelatorio:= sRelatorio +'SPED+';
   begin
     Str_Valor_PIS:= Trim(Edt_AlqPis.Text);
     Str_Valor_COFINS:= Trim(Edt_AlqCofins.Text);
     if ((Str_Valor_PIS = '') or  (Str_Valor_COFINS ='' )) Then
     begin
       sRelatorio:= sRelatorio +'SPED+';
     end
     else
       sRelatorio:= sRelatorio +'SPED[' + Str_Valor_PIS + ';' + Str_Valor_COFINS +']+';
     end;
  // end;

   If CHK_VIVANOTA.Checked then sRelatorio:= sRelatorio +'VIVANOTA+';
   If CHK_EAD.Checked then sRelatorio:= sRelatorio +'[EAD]'+trim(sLocalChavePrivada) + '+';
   iTam:= length(sRelatorio);
   Delete( sRelatorio,iTam, 1 );

   sArquivo_MF:= EDT_ArqMF.Text;
   sArquivo_MFD:= EDT_ArqMFD.Text;
   sArquivo_INF:= EDT_ArqInf.Text;

   if (sArquivo_MF ='')then
   begin
       sArquivo_MF := ' ';
   end;


  sTipo:= CBX_Tipo.Text;
   Int_Confirma:=6;
      //Verifica se o relatório é SINTEGRA ou SPED e tambem o tipo de intervalo
   if (((CHK_Sintegra.Checked=True) or (CHK_SPED.Checked=True)) and ((sTipo = 'COO') or (sTipo = 'CRZ'))) then
    Begin
      Int_Confirma:=Application.MessageBox ('Os relatórios SINTEGRA e SPED só podem ser gerados por periodo de Data, como foi selecionado o intervalo por COO ou CRZ esses dois relatórios não serão gerados. Deseja continuar ? ' , 'Daruma DLL Framework', mb_YesNo+mb_DefButton2+mb_IconQuestion);

  end;
  if(Int_Confirma<>6) then
  Begin
   Exit;
   end;


      If ((sTipo = 'COO') or (sTipo = 'CRZ')) then
     begin
        sInicio:= EDT_Inicial.Text;
        sFim:= EDT_Final.Text;
        Int_Retorno:= rGerarRelatorioOffline_ECF_Daruma(sRelatorio,sTipo,sInicio,sFim, sArquivo_MF, sArquivo_MFD, sArquivo_INF);
        FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
      end
      else
      begin
        Int_Retorno:= rGerarRelatorioOffline_ECF_Daruma(sRelatorio,sTipo,FormatDateTime('ddMMyyyy',DTP_DataInicial.Date),FormatDateTime('ddMMyyyy',DTP_DataFinal.Date), sArquivo_MF, sArquivo_MFD, sArquivo_INF);
        FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
      end;

end;

procedure TFR_FISCAL_rGerarRelatorioOffline.CHK_SintegraClick(
  Sender: TObject);
begin
   if CHK_Sintegra.State = cbChecked then
      begin
         FR_FISCAL_ParametrizacaoSintegra.show();
      end;
end;

procedure TFR_FISCAL_rGerarRelatorioOffline.CHK_SPEDClick(Sender: TObject);
begin
  if CHK_SPED.State = cbChecked then
  begin
     GBox_Sped.Visible := True;
  end
  else
  begin
     GBox_Sped.Visible:=False;
  end;
end;

end.
