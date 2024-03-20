unit untRelPendentes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRelatorioPendentes = class(TForm)
    qrpPendentes: TQuickRep;
    DetailBand1: TQRBand;
    qrdbProd: TQRDBText;
    qrdbQtde: TQRDBText;
    qrdbData: TQRDBText;
    qrdbVlrUnit: TQRDBText;
    qrdbTotal: TQRDBText;
    qrdbNCupom: TQRDBText;
    qrdbTaxa: TQRDBText;
    PageHeaderBand1: TQRBand;
    qrl_Titulo: TQRLabel;
    qrl_TotalPendente: TQRLabel;
    qrl_VlrTotalP: TQRLabel;
    qrl_PagtoParcial: TQRLabel;
    qrl_PParcial: TQRLabel;
    qrl_SaldoDevedor: TQRLabel;
    qrl_SDevedor: TQRLabel;
    TitleBand1: TQRBand;
    qrlProd: TQRLabel;
    qrl_Data: TQRLabel;
    qrl_Vendedor: TQRLabel;
    qrl_Total: TQRLabel;
    qrl_Qtde: TQRLabel;
    QRLabel1: TQRLabel;
    qrl_Taxa: TQRLabel;
    qrl_Cli: TQRLabel;
    qrdb_NomeCliente: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorioPendentes: TfrmRelatorioPendentes;

implementation

{$R *.dfm}

end.
