unit untRelatAnalitico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmRelatAnalitico = class(TForm)
    qrpRelatorioAnalitico: TQuickRep;
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    qrl_DataInicio: TQRLabel;
    qrl_DataIni: TQRLabel;
    qrl_DataFinal: TQRLabel;
    qrl_DataF: TQRLabel;
    SummaryBand1: TQRBand;
    TitleBand1: TQRBand;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatAnalitico: TfrmRelatAnalitico;

implementation

{$R *.dfm}

end.
