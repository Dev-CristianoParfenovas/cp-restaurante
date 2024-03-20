unit untRVendasCliBar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRVendasClientesBar = class(TForm)
    qrpVendasCliBar: TQuickRep;
    DetailBand1: TQRBand;
    qrdbProd: TQRDBText;
    qrdbVlrUnit: TQRDBText;
    qrdbQtde: TQRDBText;
    qrdbVlrA: TQRDBText;
    qrdbData: TQRDBText;
    qrdbCliente: TQRDBText;
    qrdbNCupom: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    qrl_DataInicio: TQRLabel;
    qrl_DataIni: TQRLabel;
    qrl_DataFinal: TQRLabel;
    qrl_DataF: TQRLabel;
    TitleBand1: TQRBand;
    qrlProd: TQRLabel;
    qrl_Qtde: TQRLabel;
    qrl_VlrUnit: TQRLabel;
    qrl_VltTotal: TQRLabel;
    qrl_Data: TQRLabel;
    qrlCliBar: TQRLabel;
    qrl_NCupom: TQRLabel;
    SummaryBand1: TQRBand;
    qrlTotalRecebido: TQRLabel;
    qrexpVlrTotal: TQRExpr;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRVendasClientesBar: TfrmRVendasClientesBar;

implementation

{$R *.dfm}

end.
