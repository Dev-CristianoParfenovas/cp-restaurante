unit untCRGeralP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, BmsXPButton, IBQuery;

type
  TfrmCRGeralP = class(TForm)
    lbl_De: TLabel;
    lbl_Ate: TLabel;
    ibeaAbrirRelatorio: TBmsXPButton;
    ibeaSair: TBmsXPButton;
    dtpDataIni: TDateTimePicker;
    dtpDataF: TDateTimePicker;
    procedure Commit(IBQueryExec : TIBQuery);
    procedure FormShow(Sender: TObject);
    procedure ibeaAbrirRelatorioClick(Sender: TObject);
    procedure ibeaSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCRGeralP: TfrmCRGeralP;

implementation

uses untdmModule, untRelContasaReceber, funcPosto, DB;

{$R *.dfm}

procedure TfrmCRGeralP.Commit(IBQueryExec : TIBQuery);
begin

  with dmModule do begin

    with IBQueryExec do begin
      SQL.Clear;
      SQL.Add('Commit');
      Open;
      Close;
    end;

  end;

end;

procedure TfrmCRGeralP.FormShow(Sender: TObject);
begin

  dtpDataIni.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
  dtpDataF.DateTime   := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));


end;


procedure TfrmCRGeralP.ibeaAbrirRelatorioClick(Sender: TObject);
var

IDClassTelCom : Integer;

begin
  with dmModule do begin


  {  Commit(ibAReceber);
    ibAReceber.Close;
    ibAReceber.SQL.Clear;
    ibAReceber.SQL.Add('SELECT * FROM TBLCONTASARECEBER');
    ibAReceber.Open; }

    //LOCALIZA O TELEFONE COMERCIAl
    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Com''');
    ibClassificacao.Open;
    IDClassTelcom := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identiicacao do contato de telefone coml. na variavel.

    Commit(ibAReceber);
    ibAReceber.Close;                         //
    ibAReceber.SQL.Clear;
    ibAReceber.SQL.Add('SELECT TBLCONTASARECEBER.*,TBLCADASTRO.NOME,'
    + ' TBLCONTATO.CONTATO As Fone,TBLCONTATO.TIPO,TBLTIPODOCUMENTO.TIPO As TipoDoc,'
    + ' TBLTIPOPAGTOAVULSO.DESCRICAO As NomePagto FROM TBLCONTASARECEBER '
    + ' LEFT OUTER JOIN TBLCONTATO ON TBLCONTASARECEBER.IDCLI=TBLCONTATO.IDCAD '
    + ' LEFT OUTER JOIN TBLTIPODOCUMENTO ON TBLCONTASARECEBER.IDTIPODOC=TBLTIPODOCUMENTO.IDTIPODOC '
    + ' LEFT OUTER JOIN TBLCADASTRO ON TBLCONTASARECEBER.IDCLI=TBLCADASTRO.IDCAD '
    + ' LEFT OUTER JOIN TBLTIPOPAGTOAVULSO ON TBLCONTASARECEBER.IDTIPOPAGTO=TBLTIPOPAGTOAVULSO.IDTIPO '
    + ' WHERE (TBLCONTASARECEBER.VCTO between :ParamDataInicial and :ParamDataF) and (TBLCONTATO.TIPO=''' + IntToStr(IDClassTelcom) + '''or TBLCONTATO.TIPO is null) and TBLCONTASARECEBER.IDCLI>0 or TBLCONTASARECEBER.IDCLI=0');
    ibAReceber.Open;

    ibAReceber.Close;
    ibAReceber.ParamByName('ParamDataInicial').Value  := dtpDataIni.DateTime;
    ibAReceber.ParamByName('ParamDataF').Value        := dtpDataF.DateTime;
    ibAReceber.Open;

    Application.CreateForm(TfrmRelContasaReceber, frmRelContasaReceber);

    TRY

      with frmRelContasaReceber do begin

        frmRelContasaReceber.qrpContasaReceber.DataSet := ibAReceber;

        //ATRIBUI OS NOMES DOS CAMPOS AOS QRDBTEXT DO QUICKREPORT
        qrdbNumCheque.DataSet     := ibAReceber;
        qrdbNumCheque.DataField   := ibAReceber.FieldByName('NUMCHEQUE').FieldName;

        qrdbDescricao.DataSet     := ibAReceber;
        qrdbDescricao.DataField   := ibAReceber.FieldByName('NOME').FieldName;

    //   qrdbTel.DataSet     := ibAReceber;
     //  qrdbTel.DataField   := ibAReceber.FieldByName('Fone').FieldName;

       qrdbTipoPagto.DataSet     := ibAReceber;
       qrdbTipoPagto.DataField   := ibAReceber.FieldByName('NomePagto').FieldName;


        qrdbTipoDoc.DataSet       := ibAReceber;
        qrdbTipoDoc.DataField     := ibAReceber.FieldByName('TipoDoc').FieldName;

        qrdbVcto.DataSet          := ibAReceber;
        qrdbVcto.DataField        := ibAReceber.FieldByName('VCTO').FieldName;

    //    qrdbNBoleto.DataSet       := ibAReceber;
    //    qrdbNBoleto.DataField     := ibAReceber.FieldByName('NUMBOLETO').FieldName;

        qrdbValor.DataSet         := ibAReceber;
        qrdbValor.DataField       := ibAReceber.FieldByName('VLREMITIDO').FieldName;
        (ibAReceber.FieldByName('VLREMITIDO') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO

        qrpContasaReceber.Preview;

      end; {if}


    EXCEPT
      on E : Exception do begin
         frmRelContasaReceber.Release;
         MessageDlg('Ocorreu um erro ao tentar mostrar o Formulário: ' + E.Message,mtError,[mbOk],0);
      end;
    END;
  //////////////////////////////////////////////////////////////

  end;{with}

end;


procedure TfrmCRGeralP.ibeaSairClick(Sender: TObject);
begin
Close;
end;

end.
