unit Daruma_Framework_FISCAL_rRSARetornaChavePublica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_rRSARetornaChavePublica_ECF_Daruma = class(TForm)
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edt_CaminhoArqMD5: TEdit;
    BT_ArqMD5: TButton;
    MM_ChavePublica: TMemo;
    BT_ENVIAR: TButton;
    BT_FECHAR: TButton;
    DLG_SelecionaDiretorio: TOpenDialog;
    MM_EspoentePublico: TMemo;
    Label3: TLabel;
    procedure BT_FECHARClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BT_ENVIARClick(Sender: TObject);
    procedure BT_ArqMD5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_rRSARetornaChavePublica_ECF_Daruma: TFR_FISCAL_rRSARetornaChavePublica_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_rRSARetornaChavePublica_ECF_Daruma.BT_FECHARClick(
  Sender: TObject);
begin
close();

end;

procedure TFR_FISCAL_rRSARetornaChavePublica_ECF_Daruma.FormCreate(
  Sender: TObject);
begin
MM_ChavePublica.Text:=' ';
MM_EspoentePublico.Text:=' ';
end;

procedure TFR_FISCAL_rRSARetornaChavePublica_ECF_Daruma.BT_ENVIARClick(
  Sender: TObject);
Var Str_ChavePublica, Str_EspoentePublico,Str_CaminhoArq: String;
begin
   SetLength (Str_ChavePublica,257);
   SetLength (Str_EspoentePublico,3);
	 Str_CaminhoArq:= Edt_CaminhoArqMD5.text;
  Int_Retorno:=rRSAChavePublica_ECF_Daruma(Str_CaminhoArq,Str_ChavePublica, Str_EspoentePublico);

   MM_ChavePublica.Lines.Text := (Str_ChavePublica);
   MM_EspoentePublico.Lines.Text := (Str_EspoentePublico);
   FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;
procedure TFR_FISCAL_rRSARetornaChavePublica_ECF_Daruma.BT_ArqMD5Click(
  Sender: TObject);
Var Str_pathArqMD5 :string;
begin
   DLG_SelecionaDiretorio.Execute;
   Str_pathArqMD5:= DLG_SelecionaDiretorio.FileName;
   Edt_CaminhoArqMD5.Text:= Str_pathArqMD5;
end;

end.
