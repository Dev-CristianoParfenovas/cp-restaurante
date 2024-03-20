unit untRelRecibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls;

type
  TfrmRelRecibo = class(TForm)
    qrpRelatRecibo: TQuickRep;
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    qrlHistRecibo: TQRLabel;
    qrlNomeCli: TQRLabel;
    qrdbCliente: TQRDBText;
    QRLabel3: TQRLabel;
    qrlValor: TQRLabel;
    qrlRec: TQRLabel;
    qrlSP: TQRLabel;
    QRLabel5: TQRLabel;
    qrlDataRecibo: TQRLabel;
    QRLabel6: TQRLabel;
    QRMemo1: TQRMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelRecibo: TfrmRelRecibo;

implementation

{$R *.dfm}

end.
