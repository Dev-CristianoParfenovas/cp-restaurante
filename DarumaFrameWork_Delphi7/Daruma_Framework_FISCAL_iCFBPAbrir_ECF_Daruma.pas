unit Daruma_Framework_FISCAL_iCFBPAbrir_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_iCFBPAbrir_ECF_Daruma = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    BT_Enviar: TButton;
    BT_Fechar: TButton;
    Edt_Percurso: TEdit;
    Edt_Origem: TEdit;
    Edt_ECF_UF_Origem: TEdit;
    Edt_UF: TEdit;
    Edt_Poltrona: TEdit;
    Edt_DataHoraEmbarque: TEdit;
    Edt_Prestadora: TEdit;
    Edt_RGPassageiro: TEdit;
    Edt_NomePassageiro: TEdit;
    Edt_Destino: TEdit;
    Edt_Plataforma: TEdit;
    Edt_EnderecoPassageiro: TEdit;
    CMB_Modalidade: TComboBox;
    CMB_Categoria: TComboBox;
    procedure BT_FecharClick(Sender: TObject);
    procedure BT_EnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_iCFBPAbrir_ECF_Daruma: TFR_FISCAL_iCFBPAbrir_ECF_Daruma;

implementation
uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_iCFBPAbrir_ECF_Daruma.BT_FecharClick(Sender: TObject);
begin
close;
end;

procedure TFR_FISCAL_iCFBPAbrir_ECF_Daruma.BT_EnviarClick(Sender: TObject);
Var
Str_Percurso: String;
Str_Origem: String;
Str_Destino: String;
Str_UF:String;
Str_Categoria: String;
Str_Modalidade: String;
Str_Plataforma: String;
Str_Poltrona: String;
Str_DataHora: String;
Str_Prestadora: String;
Str_RG_Passageiro: String;
Str_Nome_Passageiro: String;
Str_Endereco_Passageiro: String;
begin
Str_Percurso:= Edt_Percurso.Text;
Str_Origem:= Edt_Origem.Text;
Str_Destino:= Edt_Destino.Text;
Str_UF:= Edt_UF.Text;
Str_Categoria:= copy(CMB_Categoria.Text,1,1);
Str_Modalidade:= copy(CMB_Modalidade.Text,1,1);
Str_Plataforma:= Edt_Plataforma.Text;
Str_Poltrona:= Edt_Poltrona.Text;
Str_DataHora:= Edt_DataHoraEmbarque.Text;
Str_Prestadora:= Edt_Prestadora.Text;
Str_RG_Passageiro:= Edt_RGPassageiro.Text;
Str_Nome_Passageiro:= Edt_NomePassageiro.Text;
Str_Endereco_Passageiro:= Edt_EnderecoPassageiro.Text;
Int_Retorno:= iCFBPAbrir_ECF_Daruma(Str_Origem, Str_Destino, Str_UF,Str_Percurso, Str_Prestadora, Str_Plataforma, str_Poltrona, Str_Modalidade, Str_Categoria, Str_DataHora, Str_RG_Passageiro, Str_Nome_Passageiro, Str_Endereco_Passageiro);
FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

end.
