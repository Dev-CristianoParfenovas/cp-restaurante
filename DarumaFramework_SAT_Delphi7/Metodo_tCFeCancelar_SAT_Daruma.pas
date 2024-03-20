unit Metodo_tCFeCancelar_SAT_Daruma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DarumaFramework_SAT;

type
  TFR_tCFeCancelar_SAT_Daruma = class(TForm)
    BT_Enviar: TButton;
    BT_Fechar: TButton;
    BT_Limpar: TButton;
    Label1: TLabel;
    EDT_Parametro: TEdit;
    Label2: TLabel;
    MM_Sugestoes: TMemo;
    procedure BT_FecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FR_tCFeCancelar_SAT_Daruma: TFR_tCFeCancelar_SAT_Daruma;

implementation

{$R *.dfm}

procedure TFR_tCFeCancelar_SAT_Daruma.BT_FecharClick(Sender: TObject);
begin
Close();
end;

end.
