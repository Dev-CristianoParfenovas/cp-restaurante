unit Metodo_aCFeVender_SAT_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DarumaFramework_SAT;

type
  TFR_aCFeVender_SAT_Daruma = class(TForm)
    BT_Enviar: TButton;
    BT_Fechar: TButton;
    BT_Limpar: TButton;
    Label1: TLabel;
    EDT_Parametro: TEdit;
    Label2: TLabel;
    MM_Exemplos: TMemo;
    procedure BT_FecharClick(Sender: TObject);
    procedure BT_LimparClick(Sender: TObject);
    procedure BT_EnviarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_aCFeVender_SAT_Daruma: TFR_aCFeVender_SAT_Daruma;

implementation

{$R *.dfm}

procedure TFR_aCFeVender_SAT_Daruma.BT_FecharClick(Sender: TObject);
begin
Close();
end;

procedure TFR_aCFeVender_SAT_Daruma.BT_LimparClick(Sender: TObject);
begin
EDT_Parametro.Text:= '';
end;

procedure TFR_aCFeVender_SAT_Daruma.BT_EnviarClick(Sender: TObject);
begin
   Str_Parametro:= StringOFChar(#0,700);
   Str_Parametro:= EDT_Parametro.Text;
   iRetorno:= aCFeVender_SAT_Daruma(Str_Parametro);
   DarumaFramework_SAT.FR_DarumaFramework_SAT.Tratar_RetornoSAT(iRetorno);
end;

procedure TFR_aCFeVender_SAT_Daruma.FormCreate(Sender: TObject);
begin
  Str_Parametro:= StringOFChar(#0,700);
  Str_Parametro:= '- <prod><cProd>001</cProd><xProd>Pao de forma</xProd><uCom>kg</uCom><qCom>1.0000</qCom><vUnCom>1.000</vUnCom>';
  Str_Parametro:= Str_Parametro + '</prod><imposto><ICMS><ICMS00><pICMS>1.00</pICMS></ICMS00></ICMS><PIS><PISAliq><CST>01</CST><vBC>1.00</vBC><pPIS>1.0000</pPIS></PISAliq></PIS>';
  Str_Parametro:= Str_Parametro + '<PISST><vBC>1.00</vBC><pPIS>1.0000</pPIS></PISST><COFINS><COFINSAliq><CST>01</CST><vBC>1.00</vBC><pCOFINS>1.0000</pCOFINS></COFINSAliq></COFINS></imposto>';
  MM_Exemplos.Lines.Add(Str_Parametro);
  
end;

end.
