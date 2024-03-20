unit Daruma_Framework_FISCAL_eCarregarBitmapPromocional;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_eCarregarBitmapPromocional_ECF_Daruma = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edt_LocalLogo: TEdit;
    Edt_Indice: TEdit;
    BT_Procura_ArqAssinado: TButton;
    BT_ENVIAR: TButton;
    BT_FECHAR: TButton;
    DLG_SelecionaDiretorio: TOpenDialog;
    procedure BT_Procura_ArqAssinadoClick(Sender: TObject);
    procedure BT_FECHARClick(Sender: TObject);
    procedure BT_ENVIARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_eCarregarBitmapPromocional_ECF_Daruma: TFR_FISCAL_eCarregarBitmapPromocional_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_eCarregarBitmapPromocional_ECF_Daruma.BT_Procura_ArqAssinadoClick(Sender: TObject);
 var
   Str_pathArqBMP: string;
begin
   DLG_SelecionaDiretorio.Execute;
   Str_pathArqBMP:= DLG_SelecionaDiretorio.FileName;
   Edt_LocalLogo.Text:= Str_pathArqBMP;

end;


procedure TFR_FISCAL_eCarregarBitmapPromocional_ECF_Daruma.BT_FECHARClick(Sender: TObject);
begin
Close();
end;

procedure TFR_FISCAL_eCarregarBitmapPromocional_ECF_Daruma.BT_ENVIARClick(Sender: TObject);
var
    Str_Indice, Str_pathArqBMP: string;
begin
    Str_pathArqBMP:=Edt_LocalLogo.Text;
   Str_Indice:= Edt_Indice.text;
   Int_Retorno := eCarregarBitmapPromocional_ECF_Daruma(Str_PathArqBMP, Str_Indice, '000');
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
   
end;

end.
