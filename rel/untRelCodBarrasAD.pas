unit untRelCodBarrasAD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls;

type
  TfrmRelCodBarrasAD = class(TForm)
    qrpCodBarrasAD: TQuickRep;
    DetailBand1: TQRBand;
    qriCod1: TQRImage;
    qriCod2: TQRImage;
    qriCod3: TQRImage;
    qriCod4: TQRImage;
    qriCod5: TQRImage;
    qriCod6: TQRImage;
    qriCod8: TQRImage;
    qriCod9: TQRImage;
    qriCod10: TQRImage;
    qriCod12: TQRImage;
    qriCod13: TQRImage;
    qriCod14: TQRImage;
    qriCod15: TQRImage;
    qriCod16: TQRImage;
    qriCod17: TQRImage;
    qriCod18: TQRImage;
    qriCod19: TQRImage;
    qriCod20: TQRImage;
    qriCod7: TQRImage;
    qriCod11: TQRImage;
    qriCod21: TQRImage;
    qriCod22: TQRImage;
    qriCod23: TQRImage;
    qriCod24: TQRImage;
    qriCod25: TQRImage;
    qrl_Cod7: TQRLabel;
    qrl_Cod11: TQRLabel;
    qrl_Empr3: TQRLabel;
    qrl_C3: TQRLabel;
    qrl_Codigo3: TQRLabel;
    qrl_Nome3: TQRLabel;
    qrl_Cod3: TQRLabel;
    qrl_NomeProd3: TQRLabel;
    qrl_Preco3: TQRLabel;
    qrl_Vlr3: TQRLabel;
    qrl_Frase3: TQRLabel;
    qrl_Empr4: TQRLabel;
    qrl_C4: TQRLabel;
    qrl_Codigo4: TQRLabel;
    qrl_Nome4: TQRLabel;
    qrl_Frase4: TQRLabel;
    qrl_Cod4: TQRLabel;
    qrl_NomeProd4: TQRLabel;
    qrl_Preco4: TQRLabel;
    qrl_Vlr4: TQRLabel;
    qrl_Empr2: TQRLabel;
    qrl_C2: TQRLabel;
    qrl_Codigo2: TQRLabel;
    qrl_Nome2: TQRLabel;
    qrl_Frase2: TQRLabel;
    qrl_Cod2: TQRLabel;
    qrl_NomeProd2: TQRLabel;
    qrl_Preco2: TQRLabel;
    qrl_Vlr2: TQRLabel;
    qrl_Empr1: TQRLabel;
    qrl_C1: TQRLabel;
    qrl_Codigo1: TQRLabel;
    qrl_Nome1: TQRLabel;
    qrl_Frase1: TQRLabel;
    qrl_Cod1: TQRLabel;
    qrl_NomeProd1: TQRLabel;
    qrl_Preco1: TQRLabel;
    qrl_Vlr1: TQRLabel;
    qrl_Cod12: TQRLabel;
    qrl_Empr5: TQRLabel;
    qrl_C5: TQRLabel;
    qrl_Codigo5: TQRLabel;
    qrl_Nome5: TQRLabel;
    qrl_Frase5: TQRLabel;
    qrl_Cod5: TQRLabel;
    qrl_NomeProd5: TQRLabel;
    qrl_Preco5: TQRLabel;
    qrl_Vlr5: TQRLabel;
    qrl_Frase6: TQRLabel;
    qrl_Nome6: TQRLabel;
    qrl_C6: TQRLabel;
    qrl_Codigo6: TQRLabel;
    qrl_Empr6: TQRLabel;
    qrl_Cod6: TQRLabel;
    qrl_NomeProd6: TQRLabel;
    qrl_Preco6: TQRLabel;
    qrl_Vlr6: TQRLabel;
    qrl_NomeProd7: TQRLabel;
    qrl_Preco7: TQRLabel;
    qrl_Vlr7: TQRLabel;
    qrl_Frase7: TQRLabel;
    qrl_Nome7: TQRLabel;
    qrl_C7: TQRLabel;
    qrl_Codigo7: TQRLabel;
    qrl_Empr7: TQRLabel;
    qrl_Cod8: TQRLabel;
    qrl_NomeProd8: TQRLabel;
    qrl_Preco8: TQRLabel;
    qrl_Vlr8: TQRLabel;
    qrl_Frase8: TQRLabel;
    qrl_Nome8: TQRLabel;
    qrl_C8: TQRLabel;
    qrl_Codigo8: TQRLabel;
    qrl_Empr8: TQRLabel;
    qrl_Cod9: TQRLabel;
    qrl_NomeProd9: TQRLabel;
    qrl_Preco9: TQRLabel;
    qrl_Vlr9: TQRLabel;
    qrl_Frase9: TQRLabel;
    qrl_Nome9: TQRLabel;
    qrl_C9: TQRLabel;
    qrl_Codigo9: TQRLabel;
    qrl_Empr9: TQRLabel;
    qrl_Cod10: TQRLabel;
    qrl_NomeProd10: TQRLabel;
    qrl_Preco10: TQRLabel;
    qrl_Vlr10: TQRLabel;
    qrl_Frase10: TQRLabel;
    qrl_Nome10: TQRLabel;
    qrl_C10: TQRLabel;
    qrl_Codigo10: TQRLabel;
    qrl_Empr10: TQRLabel;
    qrl_Frase11: TQRLabel;
    qrl_Nome11: TQRLabel;
    qrl_C11: TQRLabel;
    qrl_Codigo11: TQRLabel;
    qrl_Empr11: TQRLabel;
    qrl_NomeProd11: TQRLabel;
    qrl_Preco11: TQRLabel;
    qrl_Vlr11: TQRLabel;
    qrl_NomeProd12: TQRLabel;
    qrl_Preco12: TQRLabel;
    qrl_Vlr12: TQRLabel;
    qrl_Frase12: TQRLabel;
    qrl_Nome12: TQRLabel;
    qrl_C12: TQRLabel;
    qrl_Codigo12: TQRLabel;
    qrl_Empr12: TQRLabel;
    qrl_Cod13: TQRLabel;
    qrl_Preco13: TQRLabel;
    qrl_Vlr13: TQRLabel;
    qrl_NomeProd13: TQRLabel;
    qrl_Frase13: TQRLabel;
    qrl_Nome13: TQRLabel;
    qrl_C13: TQRLabel;
    qrl_Codigo13: TQRLabel;
    qrl_Empr13: TQRLabel;
    qrl_Empr14: TQRLabel;
    qrl_C14: TQRLabel;
    qrl_Codigo14: TQRLabel;
    qrl_Nome14: TQRLabel;
    qrl_Frase14: TQRLabel;
    qrl_Cod14: TQRLabel;
    qrl_NomeProd14: TQRLabel;
    qrl_Preco14: TQRLabel;
    qrl_Vlr14: TQRLabel;
    qrl_Empr15: TQRLabel;
    qrl_C15: TQRLabel;
    qrl_Codigo15: TQRLabel;
    qrl_Nome15: TQRLabel;
    qrl_Frase15: TQRLabel;
    qrl_Cod15: TQRLabel;
    qrl_NomeProd15: TQRLabel;
    qrl_Preco15: TQRLabel;
    qrl_Vlr15: TQRLabel;
    qrl_Cod16: TQRLabel;
    qrl_NomeProd16: TQRLabel;
    qrl_Preco16: TQRLabel;
    qrl_Vlr16: TQRLabel;
    qrl_Frase16: TQRLabel;
    qrl_Nome16: TQRLabel;
    qrl_C16: TQRLabel;
    qrl_Codigo16: TQRLabel;
    qrl_Empr16: TQRLabel;
    qrl_Empr17: TQRLabel;
    qrl_C17: TQRLabel;
    qrl_Codigo17: TQRLabel;
    qrl_Nome17: TQRLabel;
    qrl_Frase17: TQRLabel;
    qrl_Cod17: TQRLabel;
    qrl_NomeProd17: TQRLabel;
    qrl_Preco17: TQRLabel;
    qrl_Vlr17: TQRLabel;
    qrl_Empr18: TQRLabel;
    qrl_C18: TQRLabel;
    qrl_Codigo18: TQRLabel;
    qrl_Nome18: TQRLabel;
    qrl_Frase18: TQRLabel;
    qrl_Cod18: TQRLabel;
    qrl_NomeProd18: TQRLabel;
    qrl_Preco18: TQRLabel;
    qrl_Vlr18: TQRLabel;
    qrl_Empr19: TQRLabel;
    qrl_C19: TQRLabel;
    qrl_Codigo19: TQRLabel;
    qrl_Nome19: TQRLabel;
    qrl_Frase19: TQRLabel;
    qrl_Cod19: TQRLabel;
    qrl_NomeProd19: TQRLabel;
    qrl_Preco19: TQRLabel;
    qrl_Vlr19: TQRLabel;
    qrl_Empr20: TQRLabel;
    qrl_C20: TQRLabel;
    qrl_Codigo20: TQRLabel;
    qrl_Nome20: TQRLabel;
    qrl_Frase20: TQRLabel;
    qrl_Cod20: TQRLabel;
    qrl_NomeProd20: TQRLabel;
    qrl_Preco20: TQRLabel;
    qrl_Vlr20: TQRLabel;
    qrl_Empr21: TQRLabel;
    qrl_Cod21: TQRLabel;
    qrl_Frase21: TQRLabel;
    qrl_C21: TQRLabel;
    qrl_Nome21: TQRLabel;
    qrl_Codigo21: TQRLabel;
    qrl_NomeProd21: TQRLabel;
    qrl_Preco21: TQRLabel;
    qrl_Vlr21: TQRLabel;
    qrl_Empr22: TQRLabel;
    qrl_C22: TQRLabel;
    qrl_Codigo22: TQRLabel;
    qrl_Nome22: TQRLabel;
    qrl_Frase22: TQRLabel;
    qrl_Cod22: TQRLabel;
    qrl_NomeProd22: TQRLabel;
    qrl_Preco22: TQRLabel;
    qrl_Vlr22: TQRLabel;
    qrl_Empr23: TQRLabel;
    qrl_C23: TQRLabel;
    qrl_Codigo23: TQRLabel;
    qrl_Nome23: TQRLabel;
    qrl_Frase23: TQRLabel;
    qrl_Cod23: TQRLabel;
    qrl_NomeProd23: TQRLabel;
    qrl_Preco23: TQRLabel;
    qrl_Vlr23: TQRLabel;
    qrl_Empr24: TQRLabel;
    qrl_C24: TQRLabel;
    qrl_Codigo24: TQRLabel;
    qrl_Nome24: TQRLabel;
    qrl_Frase24: TQRLabel;
    qrl_Cod24: TQRLabel;
    qrl_NomeProd24: TQRLabel;
    qrl_Preco24: TQRLabel;
    qrl_Vlr24: TQRLabel;
    qrl_Empr25: TQRLabel;
    qrl_C25: TQRLabel;
    qrl_Codigo25: TQRLabel;
    qrl_Nome25: TQRLabel;
    qrl_Frase25: TQRLabel;
    qrl_Cod25: TQRLabel;
    qrl_NomeProd25: TQRLabel;
    qrl_Preco25: TQRLabel;
    qrl_Vlr25: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCodBarrasAD: TfrmRelCodBarrasAD;

implementation

{$R *.dfm}

end.

