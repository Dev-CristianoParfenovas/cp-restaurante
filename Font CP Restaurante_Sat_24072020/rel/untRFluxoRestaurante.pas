unit untRFluxoRestaurante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRFluxoRestaurante = class(TForm)
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
    SummaryBand1: TQRBand;
    qrl_Igual: TQRLabel;
    QRShape1: TQRShape;
    qrl_VendaChPre: TQRLabel;
    qrl_TotalVendas: TQRLabel;
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
    qrl_TR: TQRLabel;
    qrl_TotalTR: TQRLabel;
    qrl_Cupom: TQRLabel;
    qrdbNCupom: TQRDBText;
    qrl_NomeFunc: TQRLabel;
    qrl_Funcionario: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape14: TQRShape;
    QRShape2: TQRShape;
    qrl_TotalCartaoCredito: TQRLabel;
    QRShape15: TQRShape;
    QRLabel3: TQRLabel;
    qrl_TotalCartaoDebito: TQRLabel;
    QRLabel5: TQRLabel;
    qrlVendaP: TQRLabel;
    qrl_TotalPendente: TQRLabel;
    QRLabel4: TQRLabel;
    qrl_Pendentes: TQRLabel;
    QRLabel7: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRFluxoRestaurante: TfrmRFluxoRestaurante;

implementation

{$R *.dfm}

end.
