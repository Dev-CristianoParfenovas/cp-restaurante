unit untRelHistorico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRelHistorico = class(TForm)
    qrpHistorico: TQuickRep;
    DetailBand1: TQRBand;
    qrdbProd: TQRDBText;
    qrdbVlrUnit: TQRDBText;
    qrdbQtde: TQRDBText;
    qrdbVlrTotal: TQRDBText;
    PageHeaderBand1: TQRBand;
    qrl_Titulo: TQRLabel;
    TitleBand1: TQRBand;
    qrlProd: TQRLabel;
    qrl_Qtde: TQRLabel;
    qrl_VlrUnit: TQRLabel;
    qrl_VltTotal: TQRLabel;
    SummaryBand1: TQRBand;
    qrlTotalRecebido: TQRLabel;
    QRExpr2: TQRExpr;
    qrl_Obs: TQRLabel;
    qrdbObs: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelHistorico: TfrmRelHistorico;

implementation

{$R *.dfm}

end.
