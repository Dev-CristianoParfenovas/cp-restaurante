unit untRelatPendenteDetalhado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmPendentesDetalhado = class(TForm)
    qrpPendentes: TQuickRep;
    DetailBand1: TQRBand;
    qrdbCliente: TQRDBText;
    qrdbTotal: TQRDBText;
    PageHeaderBand1: TQRBand;
    qrl_Titulo: TQRLabel;
    TitleBand1: TQRBand;
    qrlCli: TQRLabel;
    qrl_Total: TQRLabel;
    qrdbTelefone: TQRDBText;
    qrl_Telefone: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPendentesDetalhado: TfrmPendentesDetalhado;

implementation

{$R *.dfm}

end.
