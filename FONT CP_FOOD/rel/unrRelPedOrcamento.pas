unit unrRelPedOrcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, StdCtrls, QRExport, BmsXPButton,
  Buttons;

type
  TfrmRelPedOrcamento = class(TForm)
    qrpPedOrcamento: TQuickRep;
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    qrlTitulo: TQRLabel;
    TitleBand1: TQRBand;
    qrdbProduto: TQRDBText;
    qrlNumPed: TQRLabel;
    qrlCli: TQRLabel;
    qrdbNumPedido: TQRDBText;
    qrlVendedor: TQRLabel;
    qrdbVendedor: TQRDBText;
    QRLabel2: TQRLabel;
    qrdbCnpj: TQRDBText;
    qrlDDD: TQRLabel;
    qrdbDDD: TQRDBText;
    qrlFone: TQRLabel;
    qrdbFone: TQRDBText;
    QRLabel1: TQRLabel;
    qrlVlrUnit: TQRLabel;
    qrlQtde: TQRLabel;
    qrlVlrTotal: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    qrdbUnit: TQRDBText;
    qrdbQtde: TQRDBText;
    qrdbTotal: TQRDBText;
    qrlRef: TQRLabel;
    qrlForn: TQRLabel;
    qrdbRef: TQRDBText;
    qrdbForn: TQRDBText;
    qrlEmpresa: TQRLabel;
    qrlEndereco: TQRLabel;
    qrlNum: TQRLabel;
    QRLabel3: TQRLabel;
    qrlBairro: TQRLabel;
    QRLabel5: TQRLabel;
    qrlDDDEmpresa: TQRLabel;
    qrlTelefoneEmpresa: TQRLabel;
    qrlEstado: TQRLabel;
    QRLabel4: TQRLabel;
    SummaryBand1: TQRBand;
    QRExprtotalPedido: TQRExpr;
    qrlTotalPed: TQRLabel;
    qrdbUnidV: TQRDBText;
    qrlTipo: TQRLabel;
    qrlNomeCliente: TQRLabel;
    qrl_DTEmissao: TQRLabel;
    qrdbData: TQRDBText;
    qrlDesc: TQRLabel;
    qrlAcres: TQRLabel;
    qrdbDesc: TQRDBText;
    qrdbAcresc: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelPedOrcamento: TfrmRelPedOrcamento;

implementation

uses untdmModule;

{$R *.dfm}

end.
