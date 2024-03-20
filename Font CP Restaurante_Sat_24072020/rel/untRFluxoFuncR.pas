unit untRFluxoFuncR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRFluxoFuncR = class(TForm)
    qrpFluxoCxRestaurante: TQuickRep;
    DetailBand1: TQRBand;
    qrdbProd: TQRDBText;
    qrdbVlrUnit: TQRDBText;
    qrdbQtde: TQRDBText;
    qrdbVlrTotal: TQRDBText;
    qrdbData: TQRDBText;
    qrdbDesc: TQRDBText;
    qrdbAcrescimo: TQRDBText;
    qrdbNMesa: TQRDBText;
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
    qrlDesc: TQRLabel;
    qrlAcresc: TQRLabel;
    qrl_NCupom: TQRLabel;
    qrl_Cupom: TQRLabel;
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
    qrl_Igual: TQRLabel;
    QRShape1: TQRShape;
    QRLabel4: TQRLabel;
    qrl_VendaCartoes: TQRLabel;
    qrl_VendaChPre: TQRLabel;
    qrl_TotalVendas: TQRLabel;
    qrl_TotalCartoes: TQRLabel;
    qrl_TotalChequePre: TQRLabel;
    qrl_Entrada: TQRLabel;
    qrl_TotalEntrada: TQRLabel;
    qrl_Liquido: TQRLabel;
    qrl_TotalLiquido: TQRLabel;
    QRShape3: TQRShape;
    qrl_Sangria: TQRLabel;
    qrl_TotalSangria: TQRLabel;
    qrl_VCredito: TQRLabel;
    qrl_VDebito: TQRLabel;
    qrl_VParcelado: TQRLabel;
    qrl_MCredito: TQRLabel;
    qrl_MDebito: TQRLabel;
    qrl_TotalVisaCredito: TQRLabel;
    qrl_TotalVisaDebito: TQRLabel;
    qrl_TotalVisaParc: TQRLabel;
    qrl_TotalMastercardCredito: TQRLabel;
    qrl_TotalMastercardDebito: TQRLabel;
    qrl_TotalMastercardParcelado: TQRLabel;
    qrl_TotalHipercard: TQRLabel;
    qrl_TotalSorocred: TQRLabel;
    qrl_TotalAmericanExpress: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    qrl_MastercardParc: TQRLabel;
    qrl_Hipercard: TQRLabel;
    qrl_Sorocred: TQRLabel;
    qrl_AmericanExpress: TQRLabel;
    QRShape12: TQRShape;
    qrl_Sodex: TQRLabel;
    qrl_TotalSodex: TQRLabel;
    QRShape13: TQRShape;
    qrl_VisaVale: TQRLabel;
    qrl_TotalVisaVale: TQRLabel;
    QRShape14: TQRShape;
    qrl_TR: TQRLabel;
    qrl_TotalTR: TQRLabel;
    QRLabel2: TQRLabel;
    qrl_Func: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRFluxoFuncR: TfrmRFluxoFuncR;

implementation

{$R *.dfm}

end.
