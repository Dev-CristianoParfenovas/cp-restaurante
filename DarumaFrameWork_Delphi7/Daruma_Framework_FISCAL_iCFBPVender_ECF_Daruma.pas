unit Daruma_Framework_FISCAL_iCFBPVender_ECF_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFR_FISCAL_iCFBPVender_ECF_Daruma = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    BT_Enviar: TButton;
    BT_Fechar: TButton;
    Edt_Descricao: TEdit;
    Edt_Situacao_Tributaria: TEdit;
    Edt_Valor: TEdit;
    Edt_Valor_Acrescimo_Desconto: TEdit;
    CMB_TipoAcrescDesc: TComboBox;
    procedure BT_FecharClick(Sender: TObject);
    procedure BT_EnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_FISCAL_iCFBPVender_ECF_Daruma: TFR_FISCAL_iCFBPVender_ECF_Daruma;

implementation

uses Daruma_Framework_FISCAL_Principal;

{$R *.dfm}

procedure TFR_FISCAL_iCFBPVender_ECF_Daruma.BT_FecharClick(
  Sender: TObject);
begin
   close;
end;

procedure TFR_FISCAL_iCFBPVender_ECF_Daruma.BT_EnviarClick(
  Sender: TObject);
Var
Str_Descricao: String;
Str_Situacao_Tributaria: String;
Str_Valor:String;
Str_Tipo_Acrescimo_Desconto: String;
Str_Valor_Acrescimo_Desconto: String;

begin
  Str_Descricao:= Edt_Descricao.Text;
  Str_Situacao_Tributaria:= Edt_Situacao_Tributaria.Text;
  Str_Valor:= Edt_Valor.Text;
  Str_Tipo_Acrescimo_Desconto:= CMB_TipoAcrescDesc.Text;
  Str_Valor_Acrescimo_Desconto:= Edt_Valor_Acrescimo_Desconto.Text;
  Int_Retorno:=  iCFBPVender_ECF_Daruma(Str_Situacao_Tributaria,Str_Valor,Str_Tipo_Acrescimo_Desconto, Str_Valor_Acrescimo_Desconto,Str_Descricao);
  FR_MenuImpressoraFiscal_Principal.DarumaFramework_Mostrar_Retorno(Int_Retorno);
end;

end.
