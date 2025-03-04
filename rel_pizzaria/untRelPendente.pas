unit untRelPendente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRelPendente = class(TForm)
    qrpPendentes: TQuickRep;
    DetailBand1: TQRBand;
    qrdbProd: TQRDBText;
    qrdbQtde: TQRDBText;
    qrdbData: TQRDBText;
    qrdbVlrUnit: TQRDBText;
    qrdbTotal: TQRDBText;
    PageHeaderBand1: TQRBand;
    qrl_Titulo: TQRLabel;
    qrl_NumeroTelefone: TQRLabel;
    qrl_TelefoneCli: TQRLabel;
    qrl_NomeCliente: TQRLabel;
    qrl_Cliente: TQRLabel;
    TitleBand1: TQRBand;
    qrlProd: TQRLabel;
    qrl_Data: TQRLabel;
    qrl_Vendedor: TQRLabel;
    qrl_Total: TQRLabel;
    qrl_Qtde: TQRLabel;
    qrl_TotalPendente: TQRLabel;
    qrl_VlrTotalP: TQRLabel;
    qrl_PagtoParcial: TQRLabel;
    qrl_PParcial: TQRLabel;
    qrl_SaldoDevedor: TQRLabel;
    qrl_SDevedor: TQRLabel;
    QRLabel1: TQRLabel;
    qrdbNCupom: TQRDBText;
    qrl_Taxa: TQRLabel;
    qrdbTaxa: TQRDBText;
    qrdbObs: TQRDBText;
    qrl_Obs: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelPendente: TfrmRelPendente;

implementation

{$R *.dfm}

end.
