unit untRelFluxoFunc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRelFluxoFunc = class(TForm)
    qrpFluxoCxFunc: TQuickRep;
    DetailBand1: TQRBand;
    qrdbProd: TQRDBText;
    qrdbVlrUnit: TQRDBText;
    qrdbQtde: TQRDBText;
    qrdbVlrA: TQRDBText;
    qrdbDesc: TQRDBText;
    qrdbAcrescimo: TQRDBText;
    qrdbData: TQRDBText;
    PageHeaderBand1: TQRBand;
    qrl_Titulo: TQRLabel;
    TitleBand1: TQRBand;
    qrlProd: TQRLabel;
    qrl_Qtde: TQRLabel;
    qrl_VlrUnit: TQRLabel;
    qrl_VltTotal: TQRLabel;
    qrl_Data: TQRLabel;
    qrlDesc: TQRLabel;
    qrlAcresc: TQRLabel;
    SummaryBand1: TQRBand;
    qrlDescVendas: TQRLabel;
    qrpDesc: TQRExpr;
    qrlTotalVendido: TQRLabel;
    qrpValor: TQRExpr;
    qrlTotalAcresc: TQRLabel;
    QRExpr1: TQRExpr;
    qrlTotalRecebido: TQRLabel;
    QRExpr2: TQRExpr;
    qrl_Mais: TQRLabel;
    qrl_Sub: TQRLabel;
    qrl_SubtraiSangria: TQRLabel;
    qrl_TrocoIni: TQRLabel;
    qrl_TotalTrocoini: TQRLabel;
    qrl_Cxde: TQRLabel;
    qrl_NomeFunc: TQRLabel;
    qrl_Sangria: TQRLabel;
    qrexpSangria: TQRExpr;
    QRLabel1: TQRLabel;
    qrdbNCupom: TQRDBText;
    qrl_HA: TQRLabel;
    qrl_HoraAbert: TQRLabel;
    qrl_HoraFech: TQRLabel;
    qrl_HF: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelFluxoFunc: TfrmRelFluxoFunc;

implementation

{$R *.dfm}

end.
