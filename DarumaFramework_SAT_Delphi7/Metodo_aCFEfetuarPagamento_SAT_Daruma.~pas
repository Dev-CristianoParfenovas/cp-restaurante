unit Metodo_aCFEfetuarPagamento_SAT_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DarumaFramework_SAT;

type
  TFR_MetodoaCFEfetuarPagamento_SAT_Daruma = class(TForm)
    BT_Fechar: TButton;
    BT_Enviar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    CB_FormaPgto: TComboBox;
    Label4: TLabel;
    EDT_Valor: TEdit;
    EDT_CodCred: TEdit;
    procedure BT_FecharClick(Sender: TObject);
    procedure BT_EnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_MetodoaCFEfetuarPagamento_SAT_Daruma: TFR_MetodoaCFEfetuarPagamento_SAT_Daruma;

implementation

{$R *.dfm}

procedure TFR_MetodoaCFEfetuarPagamento_SAT_Daruma.BT_FecharClick(
  Sender: TObject);
begin
  Close();
end;

procedure TFR_MetodoaCFEfetuarPagamento_SAT_Daruma.BT_EnviarClick(
  Sender: TObject);
var
  str_FormaPgto: String;
  str_Valor: String;
  str_CodCred: String;
begin
  str_FormaPgto:= CB_FormaPgto.Text;
  str_Valor:= EDT_Valor.Text;
  str_CodCred:= EDT_CodCred.Text;
  iRetorno:= aCFEfetuarPagamento_SAT_Daruma(str_FormaPgto, str_Valor, str_CodCred);
  DarumaFramework_SAT.FR_DarumaFramework_SAT.Tratar_RetornoSAT(iRetorno);
end;

end.
