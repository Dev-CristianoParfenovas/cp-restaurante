unit untRCupomModR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmVendaCupomModR = class(TForm)
    qrpRModR: TQuickRep;
    DetailBand1: TQRBand;
    qrdbProd: TQRDBText;
    qrdbVlrUnit: TQRDBText;
    qrdbQtde: TQRDBText;
    qrdbTotal: TQRDBText;
    TitleBand1: TQRBand;
    qrlProd: TQRLabel;
    qrl_Qtde: TQRLabel;
    qrl_Total: TQRLabel;
    qrl_PrecoA: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel1: TQRLabel;
    qrexpValor: TQRExpr;
    qrlEmpresa: TQRLabel;
    qrlEndereco: TQRLabel;
    QRLabel3: TQRLabel;
    qrlNum: TQRLabel;
    qrlBairro: TQRLabel;
    QRLabel4: TQRLabel;
    qrlDDDEmpresa: TQRLabel;
    qrlTelefoneEmpresa: TQRLabel;
    QRLabel5: TQRLabel;
    qrlEstado: TQRLabel;
    qrl_Site: TQRLabel;
    qrl_NomeSite: TQRLabel;
    qrl_Cupom: TQRLabel;
    qrl_NCupom: TQRLabel;
    qrl_Data: TQRLabel;
    qrl_DataVenda: TQRLabel;
    qrl_Pagtoem: TQRLabel;
    qrl_NomePagto: TQRLabel;
    qrl_VlrPago: TQRLabel;
    qrl_ValorPago: TQRLabel;
    qrl_Troco: TQRLabel;
    qrl_VlrTroco: TQRLabel;
    QRShape1: TQRShape;
    qrl_Desc: TQRLabel;
    qrl_VlrDesc: TQRLabel;
    qr_memoFrase: TQRMemo;
    QRLabel2: TQRLabel;
    qrl_NomeCli: TQRLabel;
    QRLabel6: TQRLabel;
    qrl_FoneCli: TQRLabel;
    QRLabel7: TQRLabel;
    qrl_Endereco: TQRLabel;
    QRLabel8: TQRLabel;
    qrl_NumeroCli: TQRLabel;
    QRLabel9: TQRLabel;
    qrl_Bairro: TQRLabel;
    qrImgLogo: TQRImage;
    qrl_Titulo: TQRLabel;
    QRShape3: TQRShape;
    QRLabel10: TQRLabel;
    qrl_HorarioVenda: TQRLabel;
    QRLabel11: TQRLabel;
    qrl_CepCli: TQRLabel;
    QRLabel21: TQRLabel;
    qrl_CidadeCli: TQRLabel;
    qr_memoObs: TQRMemo;
    qrl_Obs: TQRLabel;
    QRLabel12: TQRLabel;
    qrl_Vendedor: TQRLabel;
    QRLabel13: TQRLabel;
    qrl_UFCli: TQRLabel;
    QRLabel14: TQRLabel;
    qrl_CNPJCPF: TQRLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendaCupomModR: TfrmVendaCupomModR;
  PathSistema  : String;
  IMGCupom : Integer;

implementation

uses untdmModule, DB;

{$R *.dfm}

procedure TfrmVendaCupomModR.FormShow(Sender: TObject);
begin

  with dmModule do begin

{//    Commit(ibConfig);
    ibConfig.Close;
    ibConfig.SQL.Clear;
    ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
    ibConfig.Open;

    IMGCupom := ibConfig.FieldByName('LOGONOCUPOMR').AsInteger }

  end;//with
  
end;

procedure TfrmVendaCupomModR.FormCreate(Sender: TObject);
begin

// with dmModule do begin

 //   IMGCupom := ibConfig.FieldByName('LOGONOCUPOMR').AsInteger

 // end;//with

        PathSistema := ExtractFilePath(ParamStr(0));

        if FileExists(PathSistema + 'Data\RunTime\Imagens_Sistema\LogoR.gif') Then
          qrImgLogo.Picture.LoadFromFile(PathSistema + 'Data\RunTime\Imagens_Sistema\LogoR.gif');

      
end;

end.
