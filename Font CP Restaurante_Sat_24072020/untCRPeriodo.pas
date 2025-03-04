unit untCRPeriodo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, BmsXPButton, IBQuery,
  BmsXPCheckBox;

type
  TfrmCRPeriodo = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    ibeaVisualizar: TBmsXPButton;
    ibeaSair: TBmsXPButton;
    ckAberto: TBmsXPCheckBox;
    ckBaixado: TBmsXPCheckBox;
    dtpDataIni: TDateTimePicker;
    dtpDataF: TDateTimePicker;
    procedure Commit(IBQueryExec : TIBQuery);
    procedure FormShow(Sender: TObject);
    procedure ibeaSairClick(Sender: TObject);
    procedure ibeaVisualizarClick(Sender: TObject);
    procedure ckAbertoCheck(Sender: TObject);
    procedure ckBaixadoCheck(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCRPeriodo: TfrmCRPeriodo;

implementation

uses untdmModule, untRelContasaReceber, funcPosto, DB, untRelCRBaixado;

{$R *.dfm}

procedure TfrmCRPeriodo.Commit(IBQueryExec : TIBQuery);

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

procedure TfrmCRPeriodo.FormShow(Sender: TObject);
begin
dtpDataIni.DateTime  := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
dtpDataF.DateTime    := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
ckAberto.Checked  := False;
ckBaixado.Checked := False;

end;

procedure TfrmCRPeriodo.ibeaSairClick(Sender: TObject);
begin
Close;
end;

procedure TfrmCRPeriodo.ibeaVisualizarClick(Sender: TObject);
begin

  with dmModule do begin

    if ckAberto.Checked Then begin

      Commit(ibTempAReceber);
      ibTempAReceber.Close;
      ibTempAReceber.SQL.Clear;
      ibTempAReceber.SQL.Add('SELECT TBLCONTASARECEBER.*,TBLTIPODOCUMENTO.TIPO,TBLCADASTRO.NOME,TBLCADASTRO.NUMERO,'
      + ' TBLCADDOCUMENTACAO.CODIGO FROM TBLCONTASARECEBER '
      + ' LEFT OUTER JOIN TBLCADDOCUMENTACAO ON TBLCONTASARECEBER.IDCLI=TBLCADDOCUMENTACAO.IDCAD '
      + ' LEFT OUTER JOIN TBLTIPODOCUMENTO ON TBLCONTASARECEBER.IDTIPODOC=TBLTIPODOCUMENTO.IDTIPODOC '
      + ' LEFT OUTER JOIN TBLCADASTRO ON TBLCONTASARECEBER.IDCLI=TBLCADASTRO.IDCAD WHERE(TBLCONTASARECEBER.BAIXADO = '''')and(TBLCONTASARECEBER.VCTO between :ParamDataInicial and :ParamDataF)');
      ibTempAReceber.Open;

      ibTempAReceber.Close;
      ibTempAReceber.ParamByName('ParamDataInicial').Value := dtpDataIni.DateTime;
      ibTempAReceber.ParamByName('ParamDataF').Value := dtpDataF.DateTime;
      ibTempAReceber.Open;

      Application.CreateForm(TfrmRelContasaReceber, frmRelContasaReceber);

      TRY

        with frmRelContasaReceber do begin

          frmRelContasaReceber.qrpContasaReceber.DataSet := ibTempAReceber;

          //ATRIBUI OS NOMES DOS CAMPOS AOS QRDBTEXT DO QUICKREPORT

          qrdbNumCheque.DataSet     := ibTempAReceber;
          qrdbNumCheque.DataField   := ibTempAReceber.FieldByName('NUMCHEQUE').FieldName;

          qrdbDescricao.DataSet     := ibTempAReceber;
          qrdbDescricao.DataField   := ibTempAReceber.FieldByName('NOME').FieldName;

          qrdbNomeAvulso.DataSet     := ibTempAReceber;
          qrdbNomeAvulso.DataField   := ibTempAReceber.FieldByName('NOMEAVULSO').FieldName;


          qrdbTipoDoc.DataSet       := ibTempAReceber;
          qrdbTipoDoc.DataField     := ibTempAReceber.FieldByName('TIPO').FieldName;

          qrdbVcto.DataSet          := ibTempAReceber;
          qrdbVcto.DataField        := ibTempAReceber.FieldByName('VCTO').FieldName;

          qrdbValor.DataSet         := ibTempAReceber;
          qrdbValor.DataField       := ibTempAReceber.FieldByName('VLREMITIDO').FieldName;
          (ibTempAReceber.FieldByName('VLREMITIDO') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO

          qrpContasaReceber.Preview;

        end; {if}


      EXCEPT
        on E : Exception do begin
           frmRelContasaReceber.Release;
           MessageDlg('Ocorreu um erro ao tentar mostrar o Formulário: ' + E.Message,mtError,[mbOk],0);
        end;
      END;
    //////////////////////////////////////////////////////////////

    end;//if ck aberto

    if ckBaixado.Checked Then begin

      Commit(ibTempAReceber);
      ibTempAReceber.Close;
      ibTempAReceber.SQL.Clear;
      ibTempAReceber.SQL.Add('SELECT TBLCONTASARECEBER.*,TBLTIPODOCUMENTO.TIPO,TBLCADASTRO.NOME,TBLCADASTRO.NUMERO,'
      + ' TBLCADDOCUMENTACAO.CODIGO FROM TBLCONTASARECEBER '
      + ' LEFT OUTER JOIN TBLCADDOCUMENTACAO ON TBLCONTASARECEBER.IDCLI=TBLCADDOCUMENTACAO.IDCAD '
      + ' LEFT OUTER JOIN TBLTIPODOCUMENTO ON TBLCONTASARECEBER.IDTIPODOC=TBLTIPODOCUMENTO.IDTIPODOC '
      + ' LEFT OUTER JOIN TBLCADASTRO ON TBLCONTASARECEBER.IDCLI=TBLCADASTRO.IDCAD WHERE(TBLCONTASARECEBER.BAIXADO = ''Sim'')and(TBLCONTASARECEBER.VCTO between :ParamDataInicial and :ParamDataF)');
      ibTempAReceber.Open;

      ibTempAReceber.Close;
      ibTempAReceber.ParamByName('ParamDataInicial').Value := dtpDataIni.DateTime;
      ibTempAReceber.ParamByName('ParamDataF').Value := dtpDataF.DateTime;
      ibTempAReceber.Open;

      Application.CreateForm(TfrmRelCRBaixado, frmRelCRBaixado);

      TRY

        with frmRelCRBaixado do begin

          frmRelCRBaixado.qrpCRBaixado.DataSet := ibTempAReceber;

          //ATRIBUI OS NOMES DOS CAMPOS AOS QRDBTEXT DO QUICKREPORT

          qrdbNumCheque.DataSet     := ibTempAReceber;
          qrdbNumCheque.DataField   := ibTempAReceber.FieldByName('NUMCHEQUE').FieldName;

          qrdbDescricao.DataSet     := ibTempAReceber;
          qrdbDescricao.DataField   := ibTempAReceber.FieldByName('NOME').FieldName;

          qrdbNomeAvulso.DataSet     := ibTempAReceber;
          qrdbNomeAvulso.DataField   := ibTempAReceber.FieldByName('NOMEAVULSO').FieldName;


          qrdbTipoDoc.DataSet       := ibTempAReceber;
          qrdbTipoDoc.DataField     := ibTempAReceber.FieldByName('TIPO').FieldName;

          qrdbVcto.DataSet          := ibTempAReceber;
          qrdbVcto.DataField        := ibTempAReceber.FieldByName('DTVENCTO').FieldName;

          qrdbDataBX.DataSet        := ibTempAReceber;
          qrdbDataBX.DataField        := ibTempAReceber.FieldByName('DATADABAIXA').FieldName;

          qrdbValor.DataSet         := ibTempAReceber;
          qrdbValor.DataField       := ibTempAReceber.FieldByName('VLREMITIDO').FieldName;
          (ibTempAReceber.FieldByName('VLREMITIDO') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO

          qrpCRBaixado.Preview;

        end; {if}


      EXCEPT
        on E : Exception do begin
           frmRelCRBaixado.Release;
           MessageDlg('Ocorreu um erro ao tentar mostrar o Formulário: ' + E.Message,mtError,[mbOk],0);
        end;
      END; 
    //////////////////////////////////////////////////////////////

    end;//if ck baixado


  end;{with}

end;

procedure TfrmCRPeriodo.ckAbertoCheck(Sender: TObject);
begin

  if ckAberto.Checked Then begin

    ckBaixado.Checked := False;

  end;//if

end;

procedure TfrmCRPeriodo.ckBaixadoCheck(Sender: TObject);
begin

  if ckBaixado.Checked Then begin

    ckAberto.Checked := False;

  end;//if

end;

end.
