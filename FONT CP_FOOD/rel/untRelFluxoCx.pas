unit untRelFluxoCx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, TeeProcs, TeEngine, Chart, DbChart,
  Series, TeeFunci, DB, IBDatabase, IBCustomDataSet, IBQuery, IniFiles;

type
  TfrmRelFluxoCx = class(TForm)
    qrpFluxoCx: TQuickRep;
    DetailBand1: TQRBand;
    qrdbProd: TQRDBText;
    qrdbVlrUnit: TQRDBText;
    qrdbQtde: TQRDBText;
    qrdbVlrA: TQRDBText;
    qrdbData: TQRDBText;
    qrdbVlrB: TQRDBText;
    qrdbVlrC: TQRDBText;
    qrdbDesc: TQRDBText;
    qrdbAcrescimo: TQRDBText;
    qrdbVlrD: TQRDBText;
    qrdbNCupom: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    qrlFuncionarioComissao: TQRLabel;
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
    qrl_PrecoB: TQRLabel;
    qrl_PrecoC: TQRLabel;
    qrlDesc: TQRLabel;
    qrlAcresc: TQRLabel;
    qrl_PrecoD: TQRLabel;
    qrl_NCupom: TQRLabel;
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
    qrl_APagar: TQRLabel;
    qrl_TotalaPagar: TQRLabel;
    qrl_Saida: TQRLabel;
    qrl_TotalSaida: TQRLabel;
    QRShape2: TQRShape;
    qrl_AReceber: TQRLabel;
    qrl_PagtoPendente: TQRLabel;
    QRLabel4: TQRLabel;
    qrl_VendaCartoes: TQRLabel;
    qrl_VendaChPre: TQRLabel;
    qrl_TotalPen: TQRLabel;
    qrl_TotalaReceber: TQRLabel;
    qrl_TotalPagtoPendente: TQRLabel;
    qrl_TotalVendas: TQRLabel;
    qrl_TotalCartoes: TQRLabel;
    qrl_TotalChequePre: TQRLabel;
    qrl_TotalPendente: TQRLabel;
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
    qrl_TotalCheque: TQRLabel;
    qrl_VendaCheque: TQRLabel;
    QRShape10: TQRShape;
    qrl_TotSangria: TQRLabel;
    qrl_Total_Sangria: TQRLabel;
    QRLabel2: TQRLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelFluxoCx: TfrmRelFluxoCx;
  ConfigSiS : TIniFile;
  PathSistema : String;
  
implementation

uses untdmModule, untFluxoCxP;

{$R *.dfm}

procedure TfrmRelFluxoCx.FormShow(Sender: TObject);
begin

  with dmModule do begin

    with ConfigSiS do begin

      ConfigSiS := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Data\RunTime\sis.ini'); //Cria o vinculo com o Arquivo ini

        with dmModule do begin

          frmRelFluxoCx.Caption := ReadString('ConfigSiS','Titulo','');
          dmModule.IBDGERAL.DatabaseName := ReadString('ConfigSiS','Banco','') + '\LOJA.fdb'; //Faz a leitura de uma String na se��o do arquivo ini
          dmModule.IBDGERAL.Params.Add('user_name=SYSDBA');
          dmModule.IBDGERAL.Params.Add('password=masterkey');
          dmModule.IBDGERAL.Connected := True; //Manda Conectar o Banco de Dados

        end;

    end;

    if frmFluxoCxP.Showing Then begin

    frmFluxoCxP.ibeaOkClick(Sender)

    {if frmFluxoCxP.rbGeral.Checked Then begin

    //  Commit(ibServsVenda);
      ibVendas.Close;
      ibVendas.SQL.Clear;
      ibVendas.SQL.Add('SELECT TBLSERVICOSVENDAS.IDPROD,TBLSERVICOSVENDAS.IDSERVSVENDA,TBLSERVICOSVENDAS.ESTOQUE,'
      + 'TBLSERVICOSVENDAS.QTDE,TBLSERVICOSVENDAS.HORA,TBLSERVICOSVENDAS.VLRUNIT,TBLSERVICOSVENDAS.VLRTOTAL,TBLSERVICOSVENDAS.DATA,'
      + 'TBLSERVICOSVENDAS.TIPOCOMPR,TBLSERVICOSVENDAS.TIPOVENDA,TBLSERVICOSVENDAS.VALORB,TBLSERVICOSVENDAS.TOTALCUSTO,'
      + 'TBLSERVICOSVENDAS.VALORC,TBLSERVICOSVENDAS.DESCONTO,TBLSERVICOSVENDAS.ACRESCIMO,TBLTIPOCOMPROMISSO.NOME As Compromisso,'
      + 'CADPRODUTOS.NOME As Produto FROM TBLSERVICOSVENDAS '
      + 'LEFT OUTER JOIN TBLTIPOCOMPROMISSO ON TBLSERVICOSVENDAS.TIPOCOMPR=TBLTIPOCOMPROMISSO.IDTIPO '
   //   + 'LEFT OUTER JOIN TBLTIPOPRODUTO ON TBLSERVICOSVENDAS.IDTIPOPROD=TBLTIPOPRODUTO.IDTIPOPROD '
      + 'LEFT OUTER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD '
      + 'WHERE (DATA between :ParamDataInicial and :ParamDataFinal)');
      ibVendas.Open;

      ibVendas.Close;
      ibVendas.ParamByName('ParamDataInicial').Value := frmFluxoCxP.dtpDataIniGeral.DateTime;
      ibVendas.ParamByName('ParamDataFinal').Value := frmFluxoCxP.dtpDataFimGeral.DateTime;
      ibVendas.Open;}

    end;//if 

  end;//with

end;

procedure TfrmRelFluxoCx.FormCreate(Sender: TObject);
begin
  PathSistema := ExtractFilePath(ParamStr(0));

end;

end.
