unit Daruma_Framework_FISCAL_eRSAAssinarArquivo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_eRSAAssinarArquivo_ECF_Daruma = class(TForm)
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edt_CaminhoArqAssinado: TEdit;
    BT_Procura_ArqAssinado: TButton;
    Edt_CaminhoChavePrivada: TEdit;
    Btn_chaveprivada: TButton;
    BT_ENVIAR: TButton;
    BT_FECHAR: TButton;
    DLG_SelecionaDiretorio: TOpenDialog;
    procedure BT_ENVIARClick(Sender: TObject);
    procedure BT_Procura_ArqAssinadoClick(Sender: TObject);
    procedure Btn_chaveprivadaClick(Sender: TObject);
    procedure BT_FECHARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_eRSAAssinarArquivo_ECF_Daruma: TFR_FISCAL_eRSAAssinarArquivo_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_eRSAAssinarArquivo_ECF_Daruma.BT_ENVIARClick(
  Sender: TObject);
  var
   Str_CaminhoArqAssinar, Str_CaminhoChavePublica: string;
begin
   Str_CaminhoArqAssinar:= Edt_CaminhoArqAssinado.text;
   Str_CaminhoChavePublica:= Edt_CaminhoChavePrivada.text;
   Int_Retorno := eRSAAssinarArquivo_ECF_Daruma(Str_CaminhoArqAssinar,Str_CaminhoChavePublica);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
   
end;

procedure TFR_FISCAL_eRSAAssinarArquivo_ECF_Daruma.BT_Procura_ArqAssinadoClick(
  Sender: TObject);
   var
   Str_pathDestinoArq: string;
begin
   DLG_SelecionaDiretorio.Execute;
   Str_pathDestinoArq:= DLG_SelecionaDiretorio.FileName;
   Edt_CaminhoArqAssinado.Text:= Str_pathDestinoArq ;
end;

procedure TFR_FISCAL_eRSAAssinarArquivo_ECF_Daruma.Btn_chaveprivadaClick(
  Sender: TObject);
   var
    Str_pathChavePrivada: string;
begin
   DLG_SelecionaDiretorio.Execute;
   Str_pathChavePrivada:= DLG_SelecionaDiretorio.FileName;
   Edt_CaminhoChavePrivada.Text:= Str_pathChavePrivada;

end;

procedure TFR_FISCAL_eRSAAssinarArquivo_ECF_Daruma.BT_FECHARClick(
  Sender: TObject);
begin
Close();
end;

end.
