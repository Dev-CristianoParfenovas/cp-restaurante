unit untContasaReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls,
  Grids, DBGrids, classComboBox, DB, IBQuery,
  BmsXPButton, BmsXPCheckBox;

type
  TfrmContasaReceber = class(TForm)
    lbl_Clientes: TLabel;
    lbl_TipoDoc: TLabel;
    Label3: TLabel;
    lbl_Obs: TLabel;
    dbgContasaReceber: TDBGrid;
    lbl_edtBco: TLabel;
    Label2: TLabel;
    ibeaNovoCR: TBmsXPButton;
    BmsXPButton1: TBmsXPButton;
    ibeaAlterarCR: TBmsXPButton;
    ibeaExcluirCR: TBmsXPButton;
    ibeaClientes: TBmsXPButton;
    ibeaLimpar: TBmsXPButton;
    ibeaBxCR: TBmsXPButton;
    lbl_ConsultaIni: TLabel;
    Label6: TLabel;
    lbl_TotalGeral: TLabel;
    Image3: TImage;
    lbl_Inf: TLabel;
    ckAberto: TBmsXPCheckBox;
    ckBaixado: TBmsXPCheckBox;
    ibeaRetorno: TBmsXPButton;
    ibeaRelatorio: TBmsXPButton;
    ibeaBxIndividual: TBmsXPButton;
    Image1: TImage;
    lbl_BxIndividual: TLabel;
    ibeaRetornoInd: TBmsXPButton;
    Image2: TImage;
    Image4: TImage;
    lbl_RetornoP: TLabel;
    lbl_RetornoInd: TLabel;
    dtpEmissao: TDateTimePicker;
    cboCliente: TComboBox;
    lbl_edtTelefone: TLabeledEdit;
    lbl_edtNomeAvulso: TLabeledEdit;
    lbl_edtCpfRg: TLabeledEdit;
    lbl_edtEndereco: TLabeledEdit;
    lbl_edtNumero: TLabeledEdit;
    lbl_edtBairro: TLabeledEdit;
    lbl_edtEstado: TLabeledEdit;
    cboTipoDocCR: TComboBox;
    lbl_edtNumCheque: TLabeledEdit;
    cboBancoCR: TComboBox;
    lbl_edtVlrEmitidoCli: TLabeledEdit;
    dtpVcto: TDateTimePicker;
    dtpConsultaIni: TDateTimePicker;
    dtpConsultaF: TDateTimePicker;
    memoObs: TMemo;
    grpDadosEnviados: TGroupBox;
    lbl_NomeEnvio: TLabeledEdit;
    lbl_edtEndEnvio: TLabeledEdit;
    lbl_edtNumeroEnvio: TLabeledEdit;
    lbl_edtBairroEnvio: TLabeledEdit;
    lbl_edtDDDEnvio: TLabeledEdit;
    lbl_edtTelEnvio: TLabeledEdit;
    dtpDtEnvio: TDateTimePicker;
    Label5: TLabel;
    lbl_BuscaNumeroCH: TLabeledEdit;
    lbl_edtTotalGeral: TLabeledEdit;
    procedure Commit(IBQueryExec : TIBQuery);
    procedure CalculoTotalCR;
    procedure LimpaCampos;
    procedure ExecSELECTCR;
    procedure ExecSELECTBancosCR;
    procedure ExecSELECTTipoDocCR;
    procedure ExecSELECTClientes;
    procedure AlteraCR;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgContasaReceberCellClick(Column: TColumn);
    procedure lbl_edtTelefoneKeyPress(Sender: TObject; var Key: Char);
    procedure ibeaNovoCRClick(Sender: TObject);
    procedure BmsXPButton1Click(Sender: TObject);
    procedure ibeaAlterarCRClick(Sender: TObject);
    procedure ibeaExcluirCRClick(Sender: TObject);
    procedure ibeaClientesClick(Sender: TObject);
    procedure ibeaLimparClick(Sender: TObject);
    procedure lbl_edtNomeAvulsoKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtEnderecoKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtNumeroKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtNumChequeKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtVlrEmitidoCliKeyPress(Sender: TObject; var Key: Char);
    procedure ibeaBxCRClick(Sender: TObject);
    procedure cboClienteChange(Sender: TObject);
    procedure dtpConsultaFChange(Sender: TObject);
    procedure ckAbertoCheck(Sender: TObject);
    procedure ckBaixadoCheck(Sender: TObject);
    procedure ibeaRetornoClick(Sender: TObject);
    procedure ibeaRelatorioClick(Sender: TObject);
    procedure ibeaBxIndividualClick(Sender: TObject);
    procedure ibeaRetornoIndClick(Sender: TObject);
    procedure lbl_BuscaNumeroCHExit(Sender: TObject);
    procedure lbl_BuscaNumeroCHKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContasaReceber: TfrmContasaReceber;
  IDTipoBancosCR : TClasseCombo;
  IDTipoDocCR : TClasseCombo;
  ClassCli : TClasseCombo;
  IDClassCli : integer;
  StringGravaClienteCR : String;
  IDGravaClienteCR : TClasseCombo;
  IDGravaTipoDocCR     : TClasseCombo;
  StringGravaTipoDocCR : String;
  IDGravaBcoCR     : TClasseCombo;
  StringGravaBcoCR : String;
  VlrEmitidoCR : String;
  MontaColunas : Boolean;
  IDCRGrava,IDBxReceber    : Integer;
  IDCRGravacao : Integer;

implementation

uses untdmModule, funcPosto, BuscaClientes, untCRPeriodo;

{$R *.dfm}

procedure TfrmContasaReceber.Commit(IBQueryExec : TIBQuery);

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

procedure TfrmContasaReceber.CalculoTotalCR;

var

TotalTbl : Real;
TotalCR : String;

begin

  with dmModule do begin

////////////////////////////////////////////////////////////////////////////////

      if TotalTbl > 0 then begin

        TotalTbl := 0;

      end;

      if TotalCR > '0' Then begin

        TotalCR := '0';

      end;

      Commit(ibTempAReceber);
      ibTempAReceber.Close;
      ibTempAReceber.SQL.Clear;
      ibTempAReceber.SQL.Add('SELECT * FROM TBLCONTASARECEBER WHERE(TBLCONTASARECEBER.BAIXADO ='''')');
      ibTempAReceber.Open;

      (ibTempAReceber.FieldByName('VLREMITIDO')as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      while not ibTempAReceber.Eof do begin

        if TotalTbl = 0 Then begin

          TotalTbl := StrToFloat(StringReplace(FloatToStr(ibTempAReceber.FieldByName('VLREMITIDO').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalCR := StringReplace(FloatToStr(ibTempAReceber.FieldByName('VLREMITIDO').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          TotalTbl := TotalTbl + StrtoFloat(StringReplace(TotalCR,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibTempAReceber.Next;

      end;//while

      lbl_edtTotalGeral.Text := FormatFloat(CasasDecimais('Produtos'),TotalTbl);
////////////////////////////////////////////////////////////////////////////////

  end;//with

end;

procedure TfrmContasaReceber.LimpaCampos;

begin

  lbl_edtTelefone.Clear;
  cboCliente.ClearSelection;
  lbl_edtNomeAvulso.Clear;
  lbl_edtEndereco.Clear;
  lbl_edtNumero.Clear;
  lbl_edtBairro.Clear;
  cboTipoDocCR.ClearSelection;
  lbl_edtNumCheque.Clear;
  cboBancoCR.ClearSelection;
  lbl_edtVlrEmitidoCli.Clear;
  memoObs.Clear;
  lbl_edtCpfRg.Clear;
  lbl_edtEstado.Text := 'SP';

end;

procedure TfrmContasaReceber.ExecSELECTCR;

var

IDClassCli : Integer;
begin

  with dmModule do begin

   { ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
    ibClassificacao.Open;
    IDClassCli := ibClassificacao.FieldByName('IDCLASS').AsInteger;} // ATRIBUI A IDENTIFICA��O DO FORNECEDOR NA VARIAVEL.

    ibAReceber.Close;
    ibAReceber.SQL.Clear;
    ibAReceber.SQL.Add('SELECT TBLCONTASARECEBER.*,TBLCADASTRO.NOME As Cliente,'
    +'TBLCADASTRO.NUMERO,TBLTIPODOCUMENTO.TIPO,BANCOS.DESCRICAO As NomeBanco FROM TBLCONTASARECEBER '
    +'LEFT OUTER JOIN TBLCADASTRO ON TBLCONTASARECEBER.IDCLI=TBLCADASTRO.IDCAD '
    +'INNER JOIN TBLTIPODOCUMENTO ON TBLCONTASARECEBER.IDTIPODOC=TBLTIPODOCUMENTO.IDTIPODOC '
    +'INNER JOIN BANCOS ON TBLCONTASARECEBER.IDBANCO=BANCOS.IDBCO WHERE TBLCONTASARECEBER.IDCLI > ''0'' or TBLCONTASARECEBER.NOMEAVULSO <> ''null''');
    ibAReceber.Open;

    (ibAReceber.FieldByName('VLREMITIDO')as TFloatField).DisplayFormat := CasasDecimais('Produtos');

  end;//with

end;

procedure TfrmContasaReceber.ExecSELECTBancosCR;

begin

with dmModule do begin

    ibBancos.Close;
    ibBancos.SQL.Clear;
    ibBancos.SQL.Add('SELECT * FROM BANCOS ORDER BY DESCRICAO');
    ibBancos.Open;

    cboBancoCR.Clear;// LIMPA O COMBO

    while not ibBancos.Eof do begin//enquanto nao for fim do registro

      IDTipoBancosCR := TClasseCombo.Create;//ATRIBUI A CLASSE COMBO NA VARIAVEL
      IDTipoBancosCR.ID := ibBancos.FieldByName('IDBCO').AsInteger;//O FIELD ATRIBUI NA VARIAVEL
      cboBancoCR.Items.AddObject(ibBancos.FieldByName('DESCRICAO').AsString,IDTipoBancosCR);//TRAZ NO COMBO OS DADOS ARMAZENADOS NA VARIAVEL
      ibBancos.Next;//VAI PRO PROXIMO REGISTRO PARA O LOOPING NAO FICAR INFINITO.

    end;{while}

  end;{with}

end;

procedure TfrmContasaReceber.ExecSELECTTipoDocCR;

begin

with dmModule do begin

    ibTipoPagtoF.Close;
    ibTipoPagtoF.SQL.Clear;
    ibTipoPagtoF.SQL.Add('SELECT * FROM TBLTIPOPAGTOAVULSO');
    ibTipoPagtoF.Open;

    cboTipoDocCR.Clear;// LIMPA O COMBO

    while not ibTipoPagtoF.Eof do begin//enquanto nao for fim do registro

      IDTipoDocCR := TClasseCombo.Create;//ATRIBUI A CLASSE COMBO NA VARIAVEL
      IDTipoDocCR.ID := ibTipoPagtoF.FieldByName('IDTIPO').AsInteger;//O FIELD ATRIBUI NA VARIAVEL
      cboTipodocCR.Items.AddObject(ibTipoPagtoF.FieldByName('DESCRICAO').AsString,IDTipoDocCR);//TRAZ NO COMBO OS DADOS ARMAZENADOS NA VARIAVEL
      ibTipoPagtoF.Next;//VAI PRO PROXIMO REGISTRO PARA O LOOPING NAO FICAR INFINITO.

    end;{while}

  end;{with}

end;

procedure TfrmContasaReceber.ExecSELECTClientes;

begin
  with dmModule do begin

    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
    ibClassificacao.Open;
    IDClassCli := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICA��O DO FORNECEDOR NA VARIAVEL.

    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE IDCLASS=' + IntToStr(IDClassCli));//('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + InttoStr(IDClass) + ''' ORDER BY NOME');
    ibCadastro.Open;

    cboCliente.Clear; //LIMPA O COMBOBOX

    while not ibCadastro.Eof do begin

      ClassCli     := TClasseCombo.Create;
      ClassCli.ID  := ibCadastro.FieldByName('IDCAD').AsInteger;
      cboCliente.Items.AddObject(ibCadastro.FieldByName('NOME').AsString,ClassCli);
      ibCadastro.Next;

    end;{WHILE}

  end;{WITH}

end;

procedure TfrmContasaReceber.AlteraCR;

var

i : Integer;
StringAltCliente, StringAltTipoDoc, StringAltBco, VlrEmitidoCR : String;
ClassAltCliente, ClassAltTipoDoc, ClassAltBco : TClasseCombo;


begin

  with dmModule do begin



    If cboCliente.ItemIndex = -1 Then begin

      StringAltCliente     := ' IDCLI= ''0'',';

    end else begin

      ClassAltCliente      := TClasseCombo( cboCliente.Items.Objects[cboCliente.ItemIndex] );
      StringAltCliente        := ' IDCLI=''' + InttoStr( ClassAltCliente.ID ) + ''',';

    end;//if

    if cboTipoDocCR.ItemIndex = -1 Then begin

      StringAltTipoDoc := ' IDTIPODOC= ''0'',';

    end else begin

      ClassAltTipoDoc   := TClasseCombo(cboTipoDocCR.Items.Objects[cboTipoDocCR.ItemIndex]);
      StringAltTipoDoc  := ' IDTIPODOC=''' + IntToStr(ClassAltTipoDoc.ID) + ''',';

    end;//if

    if cboBancoCR.ItemIndex = -1 Then begin

      StringAltBco := ' IDBANCO= ''0'',';

    end else begin

      ClassAltBco   := TClasseCombo(cboBancoCR.Items.Objects[cboBancoCR.ItemIndex]);
      StringAltBco  := ' IDBANCO=''' + IntToStr(ClassAltBco.ID) + ''','

    end;//if

    VlrEmitidoCR := StringReplace(lbl_edtVlrEmitidoCli.Text,ThousandSeparator,'',[rfreplaceAll]);
    VlrEmitidoCR := StringReplace(VlrEmitidoCR,DecimalSeparator,'.',[rfReplaceAll]);
    if VlrEmitidoCR = '' Then
    VlrEmitidoCR := '0';
////////////////////////////////////////////////////////////////////////////////
    if IDCRGrava <> 0 Then begin

      if ibAReceber.RecordCount > 0 Then begin

      ibAReceber.Close;
      ibAReceber.SQL.Clear;
      ibAReceber.SQL.Add(' UPDATE TBLCONTASARECEBER SET '
      + 'NUMCHEQUE = ''' + lbl_edtNumCheque.Text + ''','
      + 'NOMEAVULSO = ''' + lbl_edtNomeAvulso.Text + ''','
      + StringAltCliente
      + StringAltTipoDoc
      + StringAltBco
      + 'VLREMITIDO = ''' + VlrEmitidoCR + ''','
      + 'OBS = ''' + memoObs.Text + ''','
      + 'NOMEENVIO = ''' + lbl_NomeEnvio.Text + ''','
      + 'ENDENVIO = ''' + lbl_edtEndEnvio.Text + ''','
      + 'NUMEROENVIO = ''' + lbl_edtNumeroEnvio.Text + ''','
      + 'BAIRROENVIO = ''' + lbl_edtBairroEnvio.Text + ''','
      + 'DDDENVIO = ''' + lbl_edtDDDEnvio.Text + ''','
      + 'TELENVIO = ''' + lbl_edtTelEnvio.Text + ''','
      + 'DTENVIO = ''' + FormatDateTime('mm-dd-yyyy',dtpDtEnvio.Date) + ''','
      + 'EMISSAO = ''' + FormatDateTime('mm-dd-yyyy',dtpEmissao.Date) + ''','
      + 'DTVENCTO = ''' + FormatDateTime('mm-dd-yyyy',dtpVcto.Date) + ''','
      + 'VCTO = ''' + FormatDateTime('mm-dd-yyyy',dtpVcto.Date) + ''' WHERE IDCRECEBER=''' + IntToStr(IDCRGrava) + '''');
      ibAReceber.ExecSQL;
      Commit(ibAReceber);

        if cboCliente.Text <> '' Then begin

        Commit(ibAReceber);
        ibAReceber.Close;
        ibAReceber.SQL.Clear;
        ibAReceber.SQL.Add('SELECT TBLCONTASARECEBER.*,TBLCADASTRO.NOME As Cliente,TBLCADASTRO.NUMERO,'
        +'TBLCADASTRO.NUMERO,TBLTIPOPAGTOAVULSO.DESCRICAO As TipoDocumento,BANCOS.DESCRICAO As NomeBanco FROM TBLCONTASARECEBER '
        +'LEFT OUTER JOIN TBLCADASTRO ON TBLCONTASARECEBER.IDCLI=TBLCADASTRO.IDCAD '
        +'LEFT OUTER JOIN TBLTIPOPAGTOAVULSO ON TBLCONTASARECEBER.IDTIPODOC=TBLTIPOPAGTOAVULSO.IDTIPO '
        +'LEFT OUTER JOIN BANCOS ON TBLCONTASARECEBER.IDBANCO=BANCOS.IDBCO WHERE  TBLCONTASARECEBER.IDCRECEBER='''+ IntToStr(IDCRGrava) + ''' and TBLCONTASARECEBER.EMISSAO=''' + FormatDateTime('mm/dd/yyyy',Now) + '''and (TBLCONTASARECEBER.BAIXADO is null)or(TBLCONTASARECEBER.BAIXADO ='''')');
        ibAReceber.Open;

        (ibAReceber.FieldByName('VLREMITIDO')as TFloatField).DisplayFormat := CasasDecimais('Produtos');

        CalculoTotalCR;

        end;

        if lbl_edtNomeAvulso.Text <> '' Then begin

        Commit(ibAReceber);
        ibAReceber.Close;
        ibAReceber.SQL.Clear;
        ibAReceber.SQL.Add('SELECT TBLCONTASARECEBER.*,TBLCADASTRO.NOME As Cliente,TBLCADASTRO.NUMERO,'
        +'TBLCADASTRO.NUMERO,TBLTIPOPAGTOAVULSO.DESCRICAO As TipoDocumento,BANCOS.DESCRICAO As NomeBanco FROM TBLCONTASARECEBER '
        +'LEFT OUTER JOIN TBLCADASTRO ON TBLCONTASARECEBER.IDCLI=TBLCADASTRO.IDCAD '
        +'LEFT OUTER JOIN TBLTIPOPAGTOAVULSO ON TBLCONTASARECEBER.IDTIPODOC=TBLTIPOPAGTOAVULSO.IDTIPO '
        +'LEFT OUTER JOIN BANCOS ON TBLCONTASARECEBER.IDBANCO=BANCOS.IDBCO WHERE  TBLCONTASARECEBER.IDCRECEBER='''+ IntToStr(IDCRGrava) + '''and TBLCONTASARECEBER.EMISSAO=''' + FormatDateTime('mm/dd/yyyy',Now) + '''and (TBLCONTASARECEBER.BAIXADO is null)or(TBLCONTASARECEBER.BAIXADO ='''')');
        ibAReceber.Open;

        (ibAReceber.FieldByName('VLREMITIDO')as TFloatField).DisplayFormat := CasasDecimais('Produtos');

        CalculoTotalCR;

        end;//if



      end;//if recordcount

    end;//if idcr
////////////////////////////////////////////////////////////////////////////////

  {  if IDCRConsulta <> 0 Then begin

      if ibTempAReceber.RecordCount > 0 Then begin

      ibTempAReceber.Close;
      ibTempAReceber.SQL.Clear;
      ibTempAReceber.SQL.Add(' UPDATE TBLCONTASARECEBER SET '
      + 'NUMCHEQUE = ''' + lbl_edtNumCheque.Text + ''','
      + 'NOMEAVULSO = ''' + lbl_edtNomeAvulso.Text + ''','
      + StringAltCliente
      + StringAltTipoDoc
      + StringAltBco
      + 'VLREMITIDO = ''' + VlrEmitidoCR + ''','
      + 'OBS = ''' + memoObs.Text + ''','
      + 'NOMEENVIO = ''' + lbl_NomeEnvio.Text + ''','
      + 'ENDENVIO = ''' + lbl_edtEndEnvio.Text + ''','
      + 'NUMEROENVIO = ''' + lbl_edtNumeroEnvio.Text + ''','
      + 'BAIRROENVIO = ''' + lbl_edtBairroEnvio.Text + ''','
      + 'DDDENVIO = ''' + lbl_edtDDDEnvio.Text + ''','
      + 'TELENVIO = ''' + lbl_edtTelEnvio.Text + ''','
      + 'DTENVIO = ''' + FormatDateTime('mm-dd-yyyy',dtpDtEnvio.Date) + ''','
      + 'EMISSAO = ''' + FormatDateTime('mm-dd-yyyy',dtpEmissao.Date) + ''','
      + 'VCTO = ''' + FormatDateTime('mm-dd-yyyy',dtpVcto.Date) + ''' WHERE IDCRECEBER=''' + IntToStr(IDCRConsulta) + '''');
      ibTempAReceber.ExecSQL;
      Commit(ibTempAReceber);

      end;//if recordcount

    end;//if idcr }

////////////////////////////////////////////////////////////////////////////////
  end;//with

end;

procedure TfrmContasaReceber.FormShow(Sender: TObject);

begin

    dtpEmissao.DateTime     := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
    dtpVcto.DateTime        := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
    dtpDtEnvio.DateTime     := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
    dtpConsultaIni.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
    dtpConsultaF.DateTime   := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
    ckAberto.Checked  := False;
    ckBaixado.Checked := False;
    LimpaCampos;
    
  with dmModule do begin

     { Commit(ibAReceber);
      ibAReceber.Close;
      ibAReceber.SQL.Clear;
      ibAReceber.SQL.Add('SELECT TBLCONTASARECEBER.*,TBLCADASTRO.NOME As Cliente,'
      +'TBLCADASTRO.NUMERO,TBLTIPODOCUMENTO.TIPO,BANCOS.DESCRICAO As NomeBanco FROM TBLCONTASARECEBER '
      +'LEFT OUTER JOIN TBLCADASTRO ON TBLCONTASARECEBER.IDCLI=TBLCADASTRO.IDCAD '
      +'INNER JOIN TBLTIPODOCUMENTO ON TBLCONTASARECEBER.IDTIPODOC=TBLTIPODOCUMENTO.IDTIPODOC '
      +'INNER JOIN BANCOS ON TBLCONTASARECEBER.IDBANCO=BANCOS.IDBCO WHERE TBLCONTASARECEBER.BAIXADO is null');
      ibAReceber.Open;}


    dtpConsultaFChange(Sender);

    CalculoTotalCR;
   // ExecSELECTCR;
    ExecSELECTBancosCR;
    ExecSELECTTipoDocCR;
    ExecSELECTClientes;
    
    with dbgContasaReceber do begin


      if MontaColunas Then begin

        DataSource := dmModule.dtsAReceber;

        Columns.Insert(0);
        Columns.Insert(1);
        Columns.Insert(2);
        Columns.Insert(3);
        Columns.Insert(4);
        Columns.Insert(5);
        Columns.Insert(6);
        Columns.Insert(7);
        Columns.Insert(8);
        Columns.Insert(9);

        //Parametros da Coluna que exibe o C�digo do Produto
        // Parametros que exibe o nome do produto
        Columns.Items[0].Title.Caption := 'Cliente';
        Columns.Items[0].FieldName     := 'Cliente';
        Columns.Items[0].Width         := 110;
        Columns.Items[0].Alignment     := taLeftJustify;

        Columns.Items[1].Title.Caption := 'Nome Avulso';
        Columns.Items[1].FieldName     := 'NOMEAVULSO';
        Columns.Items[1].Width         := 110;
        Columns.Items[1].Alignment     := taLeftJustify;

        // Parametros que exibe o Bico da Bomba
        Columns.Items[2].Title.Caption := 'Tipo de Doc.';
        Columns.Items[2].FieldName     := 'TipoDocumento';
        Columns.Items[2].Width         := 80;
        Columns.Items[2].Alignment     := taLeftJustify;

        Columns.Items[3].Title.Caption := 'Bco.';
        Columns.Items[3].FieldName     := 'NomeBanco';
        Columns.Items[3].Width         := 80;
        Columns.Items[3].Alignment     := taLeftJustify;


        // Parametros que exibe o Bico da Bomba
        Columns.Items[4].Title.Caption := 'Valor';
        Columns.Items[4].FieldName     := 'VLREMITIDO';
        Columns.Items[4].Width         := 80;
        Columns.Items[4].Alignment     := taLeftJustify;

        // Parametros que exibe o Bico da Bomba
        Columns.Items[5].Title.Caption := 'Emiss�o';
        Columns.Items[5].FieldName     := 'EMISSAO';
        Columns.Items[5].Width         := 80;
        Columns.Items[5].Alignment     := taLeftJustify;

        // Parametros que exibe o Bico da Bomba
        Columns.Items[6].Title.Caption := 'Vcto.';
        Columns.Items[6].FieldName     := 'VCTO';
        Columns.Items[6].Width         := 80;
        Columns.Items[6].Alignment     := taLeftJustify;

                // Parametros que exibe o Bico da Bomba
        Columns.Items[7].Title.Caption := 'N� Doc.';
        Columns.Items[7].FieldName     := 'NUMCHEQUE';
        Columns.Items[7].Width         := 80;
        Columns.Items[7].Alignment     := taLeftJustify;

        // Parametros que exibe o Bico da Bomba
        Columns.Items[8].Title.Caption := 'Cupom';
        Columns.Items[8].FieldName     := 'IDSERVSVENDA';
        Columns.Items[8].Width         := 70;
        Columns.Items[8].Alignment     := taLeftJustify;

        Columns.Items[9].Title.Caption := 'N� NF';
        Columns.Items[9].FieldName     := 'NUMERONF';
        Columns.Items[9].Width         := 70;
        Columns.Items[9].Alignment     := taLeftJustify;

        MontaColunas := False;

      end;{if}

    end;{with dbgrid}

  end;//with

end;

procedure TfrmContasaReceber.FormCreate(Sender: TObject);

begin
MontaColunas := True;


{//lbl_edtTelefone.BorderColor := clGradientActiveCaption;
cboCliente.BorderColor := clGradientActiveCaption;
lbl_edtNomeAvulso.BorderColor := clGradientActiveCaption;
lbl_edtEndereco.BorderColor := clGradientActiveCaption;
lbl_edtNumero.BorderColor := clGradientActiveCaption;
lbl_edtBairro.BorderColor := clGradientActiveCaption;
cboTipoDocCR.BorderColor := clGradientActiveCaption;
lbl_edtNumCheque.BorderColor := clGradientActiveCaption;
cboBancoCR.BorderColor := clGradientActiveCaption;
lbl_edtVlrEmitidoCli.BorderColor := clGradientActiveCaption;
memoObs.BorderColor := clGradientActiveCaption;
dtpVcto.BorderColor := clGradientActiveCaption;
dtpEmissao.BorderColor := clGradientActiveCaption;
grpDadosEnviados.BorderColor := clGradientActiveCaption; }

end;

procedure TfrmContasaReceber.dbgContasaReceberCellClick(Column: TColumn);

var

i, IDClassTelCom, IDCadCR : Integer;


begin

  with dmModule do begin

    {ibAReceber.Close;
    ibAReceber.SQL.Clear;
    ibAReceber.SQL.Add('SELECT TBLCONTASARECEBER.*,TBLCADASTRO.NOME As Cliente,TBLCADASTRO.NUMERO,'
    +'TBLCADASTRO.IDCLASS,TBLTIPODOCUMENTO.TIPO,BANCOS.DESCRICAO FROM TBLCONTASARECEBER '
    +'LEFT OUTER JOIN TBLCADASTRO ON TBLCONTASARECEBER.IDCLI=TBLCADASTRO.IDCAD '
    +'LEFT OUTER JOIN TBLTIPODOCUMENTO ON TBLCONTASARECEBER.IDTIPODOC=TBLTIPODOCUMENTO.IDTIPODOC '
    +'LEFT OUTER JOIN BANCOS ON TBLCONTASARECEBER.IDBANCO=BANCOS.IDBCO WHERE TBLCONTASARECEBER.IDCRECEBER=''' + IntToStr(IDCRGravacao) + '''');// WHERE TBLCADASTRO.IDCLASS=''' + IntToStr(IDClassCli) + '''');
    ibAReceber.Open;}

    //(ibAReceber.FieldByName('VLREMITIDO')as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      IDCRGrava    := ibAReceber.FieldByName('IDCRECEBER').AsInteger;
      IDBxReceber  := ibAReceber.FieldByName('IDCRECEBER').AsInteger;
      IDCadCR := ibAReceber.FieldByName('IDCLI').AsInteger;


    if ibAReceber.RecordCount > 0 Then begin

////////////////////////////////////////////////////////////////////////////////


    for i:=0 to cboCliente.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
      if TClasseCombo( cboCliente.Items.Objects[i]).ID = ibAReceber.FieldByName('IDCLI').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
        cboCliente.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
        Break;
      end else begin
        cboCliente.ClearSelection;//LIMPA A SELECAO.
      end;{if}
    end;{for}

////////////////////////////////////////////////////////////////////////////////

    for i:=0 to cboTipoDocCR.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
      if TClasseCombo( cboTipoDocCR.Items.Objects[i]).ID = ibAReceber.FieldByName('IDTIPODOC').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
        cboTipoDocCR.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
        Break;
      end else begin
        cboTipoDocCR.ClearSelection;//LIMPA A SELECAO.
      end;{if}
    end;{for}

////////////////////////////////////////////////////////////////////////////////


    for i:=0 to cboBancoCR.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
      if TClasseCombo( cboBancoCR.Items.Objects[i]).ID = ibAReceber.FieldByName('IDBANCO').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
        cboBancoCR.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
        Break;
      end else begin
        cboBancoCR.ClearSelection;//LIMPA A SELECAO.
      end;{if}
    end;{for}

////////////////////////////////////////////////////////////////////////////////
      lbl_edtVlrEmitidoCli.Text  := FormatFloat(CasasDecimais('Produtos'),ibAReceber.FieldByName('VLREMITIDO').AsFloat);
      dtpEmissao.Date            := ibAReceber.FieldByName('EMISSAO').AsDateTime;
      dtpVcto.Date               := ibAReceber.FieldByName('VCTO').AsDateTime;
      memoObs.Text               := ibAReceber.FieldByName('OBS').AsString;
      lbl_edtNumCheque.Text      := ibAReceber.FieldByName('NUMCHEQUE').AsString;

      if ibAReceber.FieldByName('IDCLI').AsInteger > 0 Then begin

        lbl_edtNumero.Text         := ibAReceber.FieldByName('NUMERO').AsString;
        lbl_NomeEnvio.Text         := ibAReceber.FieldByName('NOMEENVIO').AsString;
        lbl_edtEndEnvio.Text       := ibAReceber.FieldByName('ENDENVIO').AsString;
        lbl_edtNumeroEnvio.Text    := ibAReceber.FieldByName('NUMEROENVIO').AsString;
        lbl_edtBairroEnvio.Text    := ibAReceber.FieldByName('BAIRROENVIO').AsString;
        lbl_edtDDDEnvio.Text       := ibAReceber.FieldByName('DDDENVIO').AsString;
        lbl_edtTelEnvio.Text       := ibAReceber.FieldByName('TELENVIO').AsString;

      end;  
////////////////////////////////////////////////////////////////////////////////

      if ibAReceber.FieldByName('TELEFONEAVULSO').AsString <> '' Then begin
      lbl_edtTelefone.Text       := ibAReceber.FieldByName('TELEFONEAVULSO').AsString;
      end else begin

      lbl_edtTelefone.Text       := '';

      end;

     if (ibAReceber.FieldByName('ENDAVULSO').AsString <> '') Then begin
      lbl_edtEndereco.Text       := ibAReceber.FieldByName('ENDAVULSO').AsString;
      end else begin

      lbl_edtEndereco.Text       := '';

      end;

      if (ibAReceber.FieldByName('BAIRROAVULSO').AsString <> '') Then begin
      lbl_edtBairro.Text         := ibAReceber.FieldByName('BAIRROAVULSO').AsString;
      end else begin

      lbl_edtBairro.Text         := '';

      end;


      if (ibAReceber.FieldByName('IDCLI').AsInteger > 0) Then begin
      //ROTINA PARA TRAZER O TELEFONE COMERCIAL OU RESIDENCIAL
      ibClassificacao.Close;
      ibClassificacao.SQL.Clear;
      ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Com''');
      ibClassificacao.Open;
      IDClassTelCom := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICA��O DO FORNECEDOR NA VARIAVEL.

      ibContato.Close;
      ibContato.SQL.Clear;
      ibContato.SQL.Add('SELECT CONTATO FROM TBLCONTATO WHERE TIPO=''' + IntToStr(IDClassTelCom) + ''' and IDCAD=''' + IntToStr(IDCadCR) + '''');
      ibContato.Open;

      lbl_edtTelefone.Text  := ibContato.FieldByName('CONTATO').AsString;

////////////////////////////////////////////////////////////////////////////////


     //ROTINA PARA TRAZER O ENDERECO E O BAIRRO
     ibLogradouro.Close;
     ibLogradouro.SQL.Clear;
     ibLogradouro.SQL.Add('SELECT * FROM TBLLOGRADOURO WHERE IDCAD=''' + IntToStr(IDCadCR) + '''');
     ibLogradouro.Open;

     lbl_edtEndereco.Text  := ibLogradouro.FieldByName('ENDERECO').AsString;
     lbl_edtBairro.Text    := ibLogradouro.FieldByName('BAIRRO').AsString;
     end;//if
////////////////////////////////////////////////////////////////////////////////

      if ibAReceber.FieldByName('NOMEAVULSO').AsString <> '' Then begin
      lbl_edtNomeAvulso.Text       := ibAReceber.FieldByName('NOMEAVULSO').AsString;
      end else begin

      lbl_edtNomeAvulso.Text       := '';

      end;

    if ibAReceber.FieldByName('DTENVIO').AsDateTime = null Then begin

      dtpDtEnvio.DateTime := StrToDate(FormatDateTime('dd-mm-yyyy',now));

     end else begin

      dtpDtEnvio.DateTime       := ibAReceber.FieldByName('DTENVIO').AsDateTime;

     end;//if

    end;//if recordcount

  end;//with

end;


procedure TfrmContasaReceber.lbl_edtTelefoneKeyPress(Sender: TObject;
  var Key: Char);


var
i,IDClass,IDCliConsulta : Integer;
ClassCliConsulta : TClasseCombo;

begin

  if key = #13 Then begin


  with dmModule do begin


    if lbl_edtTelefone.Text <> '' Then begin

      lbl_edtTelefone.Text := StringReplace(lbl_edtTelefone.Text,'-','',[rfReplaceAll]);
      lbl_edtTelefone.Text := FormatFloat('0000-0000',StrToFloat(lbl_edtTelefone.Text));




//    if ckCliente.Checked Then begin

      ibClassificacao.Close;
      ibClassificacao.SQL.Clear;
      ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
      ibClassificacao.Open;
      IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICA��O DO FORNECEDOR NA VARIAVEL.

      Commit(ibCadastro);
      ibCadastro.Close;                                                                                    //  and TBLCADASTRO.NOME LIKE '+''''+'%'+lbl_edtNome.text+'%'+'''
      ibCadastro.SQL.Clear;
      ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLCONTATO.CONTATO,TBLLOGRADOURO.ENDERECO,'
      +'TBLLOGRADOURO.BAIRRO,TBLLOGRADOURO.CIDADE,TBLLOGRADOURO.ESTADO FROM TBLCADASTRO '
      +'LEFT OUTER JOIN TBLCONTATO ON TBLCADASTRO.IDCAD=TBLCONTATO.IDCAD '
      +'LEFT OUTER JOIN TBLLOGRADOURO ON TBLCADASTRO.IDCAD=TBLLOGRADOURO.IDCAD '
      +'WHERE IDCLASS=''' + InttoStr(IDClass) + ''' and TBLCONTATO.CONTATO=''' + lbl_edtTelefone.Text + '''');
      ibCadastro.Open;

      IDCliConsulta := ibCadastro.FieldByName('IDCAD').AsInteger;

       if ibCadastro.RecordCount > 0 Then begin

          for i:=0 to cboCliente.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
            if TClasseCombo( cboCliente.Items.Objects[i]).ID = ibCadastro.FieldByName('IDCAD').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
              cboCliente.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
              Break;
            end else begin
              cboCliente.ClearSelection;//LIMPA A SELECAO.
            end;{if}
          end;{for}

         lbl_edtEndereco.Text      := ibCadastro.FieldByName('ENDERECO').AsString;
         lbl_edtNumero.Text        := ibCadastro.FieldByName('NUMERO').AsString;
         lbl_edtBairro.Text        := ibCadastro.FieldByName('BAIRRO').AsString;

       end;//if record count

//     end;//if ckcliente

   { if cboCliente.ItemIndex > -1 Then begin

      ClassCliConsulta := TClasseCombo(cboCliente.Items.Objects[cboCliente.ItemIndex]);

    end; }

   { ibAReceber.Close;
    ibAReceber.SQL.Clear;
    ibAReceber.SQL.Add('SELECT * FROM TBLCONTASARECEBER');// WHERE IDCLI=''' + IntToStr(ClassCliConsulta.ID) + '''');
    ibAReceber.Close; }

  //    if ibAReceber.RecordCount >0 Then begin

       { ibAReceber.Close;
        ibAReceber.SQL.Clear;
        ibAReceber.SQL.Add('SELECT TBLCONTASARECEBER.*,TBLCADASTRO.NOME As Cliente,TBLCADASTRO.NUMERO,'
        +'TBLTIPODOCUMENTO.TIPO,BANCOS.DESCRICAO FROM TBLCONTASARECEBER '
        +'INNER JOIN TBLCADASTRO ON TBLCONTASARECEBER.IDCLI=TBLCADASTRO.IDCAD '
        +'INNER JOIN TBLTIPODOCUMENTO ON TBLCONTASARECEBER.IDTIPODOC=TBLTIPODOCUMENTO.IDTIPODOC '
        +'INNER JOIN BANCOS ON TBLCONTASARECEBER.IDBANCO=BANCOS.IDBCO WHERE TBLCONTASARECEBER.IDCLI=''' + IntToStr(IDCliConsulta) + '''');//  TBLCADASTRO.IDCLASS=''' + IntToStr(IDClassCli) + '''');
        ibAReceber.Open;  }

       // (ibAReceber.FieldByName('VLREMITIDO')as TFloatField).DisplayFormat := CasasDecimais('Produtos');


    //  end;

    end;{if LABEL TELEFONE}

    end;{with}

//    lbl_edtNomeAvulso.SetFocus;

  end;//if

end;

procedure TfrmContasaReceber.ibeaNovoCRClick(Sender: TObject);

var

ConfirmaGravacao : Integer;
SituacaoCR,Baixado : String;

begin

  with dmModule do begin

    if (lbl_edtNomeAvulso.Text = '') and (cboCliente.Text= '') Then begin

    Application.MessageBox('Aten��o os campos cliente ou nome avulso est�o em branco,� necess�rio o preenchimento de um destes campos','Campo em branco',+MB_OK+MB_DEFBUTTON1+MB_ICONWARNING);

    end else begin

      ConfirmaGravacao := Application.MessageBox('Confirma o lan�amento?','Notifica��o: Confirma��o de Registro',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

      if ConfirmaGravacao = 6 Then begin

       //traz a identificacao do item do objeto selecionado
        if cboCliente.ItemIndex = - 1 Then begin

          StringGravaClienteCR   := ' ''0'',';

        end else begin

          IDGravaClienteCR       := TClasseCombo(cboCliente.Items.Objects[cboCliente.ItemIndex]);
          StringGravaClienteCR   := ' ''' + IntToStr(IDGravaClienteCR.ID) + ''',';

        end;

        //////////////////////////////////////////////////////////////////////////////

        if cboTipoDocCR.ItemIndex =  - 1 Then begin

          StringGravaTipoDocCR := ' ''0'',';

        end else begin

          IDGravaTipoDocCR     := TClasseCombo(cboTipoDocCR.Items.Objects[cboTipoDocCR.ItemIndex]);
          StringGravaTipoDocCR := ' ''' + IntToStr(IDGravaTipoDocCR.ID) + ''',';

        end;

        //////////////////////////////////////////////////////////////////////////////

        if cboBancoCR.ItemIndex = - 1 Then begin

          StringGravaBcoCR    := ' ''0'',';

        end else begin

          IDGravaBcoCR     := TClasseCombo(cboBancoCR.Items.Objects[cboBancoCR.ItemIndex]);
          StringGravaBcoCR := ' ''' + IntToStr(IDGravaBcoCR.ID) + ''',';

        end;


        //////////////////////////////////////////////////////////////////////////

          VlrEmitidoCR := StringReplace(lbl_edtVlrEmitidoCli.Text,ThousandSeparator,'',[rfReplaceAll]);
          VlrEmitidoCR := StringReplace(VlrEmitidoCR,DecimalSeparator,'.',[rfReplaceAll]);
          if VlrEmitidoCR = '' Then
             VlrEmitidoCR := '0';

        {  VlrPagoCR := StringReplace(lbl_edtVlrPagtoCli.Text,ThousandSeparator,'',[rfReplaceAll]);
          VlrPagoCR := StringReplace(VlrPagoCR,DecimalSeparator,'.',[rfReplaceAll]);
          if VlrPagoCR = '' Then
             VlrPagoCR := '0'; }

        //////////////////////////////////////////////////////////////////////////

        SituacaoCR := 'Pendente';
        Baixado := '';

        ibAReceber.Close;
        ibAReceber.SQL.Clear;
        ibAReceber.SQL.Add('INSERT INTO TBLCONTASARECEBER '
        + ' (EMISSAOCONTA,IDCLI,IDTIPODOC,VLREMITIDO,DTVENCTO,IDBANCO,'
        + ' EMISSAO,VCTO,OBS,SITUACAO,NOMEAVULSO,ENDAVULSO,NUMEROAVULSO,'
        + ' NOMEENVIO,ENDENVIO,NUMEROENVIO,BAIRROENVIO,DDDENVIO,TELENVIO,DTENVIO,'
        + ' BAIRROAVULSO,TELEFONEAVULSO,BAIXADO,NUMCHEQUE) values '
        + ' (''' + FormatDateTime('mm-dd-yyyy',dtpEmissao.Date) + ''','
        + StringGravaClienteCR
        + StringGravaTipoDocCR
        + ' ''' + VlrEmitidoCR + ''','
        + ' ''' + FormatDateTime('mm-dd-yyyy',dtpVcto.Date) + ''','
        + StringGravaBcoCR
        + ' ''' + FormatDateTime('mm-dd-yyyy',dtpEmissao.Date) + ''','
        + ' ''' + FormatDateTime('mm-dd-yyyy',dtpVcto.Date) + ''','
        + ' ''' + memoObs.Text + ''','
        + ' ''' + SituacaoCR + ''','
        + ' ''' + lbl_edtNomeAvulso.Text + ''','
        + ' ''' + lbl_edtEndereco.Text + ''','
        + ' ''' + lbl_edtNumero.Text + ''','
        + ' ''' + lbl_NomeEnvio.Text + ''','
        + ' ''' + lbl_edtEndEnvio.Text + ''','
        + ' ''' + lbl_edtNumeroEnvio.Text + ''','
        + ' ''' + lbl_edtBairroEnvio.Text + ''','
        + ' ''' + lbl_edtDDDEnvio.Text + ''','
        + ' ''' + lbl_edtTelEnvio.Text + ''','
        + ' ''' + FormatDateTime('mm-dd-yyyy',dtpDtEnvio.Date) + ''','
        + ' ''' + lbl_edtBairro.Text + ''','
        + ' ''' + lbl_edtTelefone.Text + ''','
        + ' ''' + Baixado + ''','
        + ' ''' + lbl_edtNumCheque.Text + ''')');
        ibAReceber.ExecSQL;


        if cboCliente.Text <> '' Then begin

        Commit(ibAReceber);
        ibAReceber.Close;
        ibAReceber.SQL.Clear;
        ibAReceber.SQL.Add('SELECT TBLCONTASARECEBER.*,TBLCADASTRO.NOME As Cliente,'
        +'TBLCADASTRO.NUMERO,TBLTIPOPAGTOAVULSO.DESCRICAO As TipoDocumento,BANCOS.DESCRICAO As NomeBanco FROM TBLCONTASARECEBER '
        +'LEFT OUTER JOIN TBLCADASTRO ON TBLCONTASARECEBER.IDCLI=TBLCADASTRO.IDCAD '
        +'INNER JOIN TBLTIPOPAGTOAVULSO ON TBLCONTASARECEBER.IDTIPODOC=TBLTIPOPAGTOAVULSO.IDTIPO '
        +'INNER JOIN BANCOS ON TBLCONTASARECEBER.IDBANCO=BANCOS.IDBCO WHERE  TBLCONTASARECEBER.IDCLI='''+ IntToStr(IDGravaClienteCR.ID) + ''' and TBLCONTASARECEBER.EMISSAO=''' + FormatDateTime('mm/dd/yyyy',Now) + '''');
        ibAReceber.Open;

        (ibAReceber.FieldByName('VLREMITIDO')as TFloatField).DisplayFormat := CasasDecimais('Produtos');

        IDCRGravacao := ibAReceber.FieldByName('IDCRECEBER').AsInteger;

        CalculoTotalCR;

        end;

        if lbl_edtNomeAvulso.Text <> '' Then begin

        Commit(ibAReceber);
        ibAReceber.Close;
        ibAReceber.SQL.Clear;
        ibAReceber.SQL.Add('SELECT TBLCONTASARECEBER.*,TBLCADASTRO.NOME As Cliente,'
        +'TBLCADASTRO.NUMERO,TBLTIPOPAGTOAVULSO.DESCRICAO As TipoDocumento,BANCOS.DESCRICAO As NomeBanco FROM TBLCONTASARECEBER '
        +'LEFT OUTER JOIN TBLCADASTRO ON TBLCONTASARECEBER.IDCLI=TBLCADASTRO.IDCAD '
        +'INNER JOIN TBLTIPOPAGTOAVULSO ON TBLCONTASARECEBER.IDTIPODOC=TBLTIPOPAGTOAVULSO.IDTIPO '
        +'INNER JOIN BANCOS ON TBLCONTASARECEBER.IDBANCO=BANCOS.IDBCO WHERE  TBLCONTASARECEBER.NOMEAVULSO=''' + lbl_edtNomeAvulso.Text + '''and TBLCONTASARECEBER.EMISSAO=''' + FormatDateTime('mm/dd/yyyy',Now) + '''');
        ibAReceber.Open;

        (ibAReceber.FieldByName('VLREMITIDO')as TFloatField).DisplayFormat := CasasDecimais('Produtos');

        IDCRGravacao := ibAReceber.FieldByName('IDCRECEBER').AsInteger;

        CalculoTotalCR;

        end;//if


      end;{if primeira condicao}

        

    end;//if campos em branco
       LimpaCampos;
      lbl_NomeEnvio.Text := '';
      lbl_edtEndEnvio.Text := '';
      lbl_edtNumeroEnvio.Text := '';
      lbl_edtBairroEnvio.Text := '';
      lbl_edtDDDEnvio.Text := '';
      lbl_edtTelEnvio.Text := '';

  end;{with}

end;

procedure TfrmContasaReceber.BmsXPButton1Click(Sender: TObject);
begin
Close;
end;

procedure TfrmContasaReceber.ibeaAlterarCRClick(Sender: TObject);

var

ConfirmaAlteracao : Integer;

begin

  with dmModule do begin

    ConfirmaAlteracao := Application.MessageBox('Confirma a altera��o','Altera��o de registro',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

    if ConfirmaAlteracao = 6 Then begin

      AlteraCR;
      LimpaCampos;
      lbl_NomeEnvio.Text := '';
      lbl_edtEndEnvio.Text := '';
      lbl_edtNumeroEnvio.Text := '';
      lbl_edtBairroEnvio.Text := '';
      lbl_edtDDDEnvio.Text := '';
      lbl_edtTelEnvio.Text := '';
    //  ExecSELECTCR;

    end;//if


  end;//with


end;

procedure TfrmContasaReceber.ibeaExcluirCRClick(Sender: TObject);

var

ConfirmaExclusao : Integer;
TotalTbl : Real;
TotalCR : String;



begin

  with dmModule do begin

    ConfirmaExclusao := Application.MessageBox('Confirma Exclus�o','Exclus�o de registro',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

    if ConfirmaExclusao = 6 Then begin

      ibAReceber.Close;
      ibAReceber.SQL.Clear;
      ibAReceber.SQL.Add('DELETE FROM TBLCONTASARECEBER WHERE IDCRECEBER=''' + IntToStr(IDCRGrava) + '''');
      ibAReceber.Open;


////////////////////////////////////////////////////////////////////////////////

      if TotalTbl > 0 then begin

        TotalTbl := 0;

      end;

      if TotalCR > '0' Then begin

        TotalCR := '0';

      end;

      dtpConsultaFChange(Sender);
     { Commit(ibAReceber);
      ibAReceber.Close;
      ibAReceber.SQL.Clear;
      ibAReceber.SQL.Add('SELECT * FROM TBLCONTASARECEBER WHERE (TBLCONTASARECEBER.BAIXADO is null)or(TBLCONTASARECEBER.BAIXADO ='''')and (TBLCONTASARECEBER.VCTO between :ParamDataInicial and :ParamDataF)');
      ibAReceber.Open;

      ibAReceber.Close;
      ibAReceber.ParamByName('ParamDataInicial').Value := dtpConsultaIni.DateTime;
      ibAReceber.ParamByName('ParamDataF').Value := dtpConsultaF.DateTime;
      ibAReceber.Open; }

     // (ibAReceber.FieldByName('VLREMITIDO')as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      while not ibAReceber.Eof do begin

        if TotalTbl = 0 Then begin

          TotalTbl := StrToFloat(StringReplace(FloatToStr(ibAReceber.FieldByName('VLREMITIDO').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalCR := StringReplace(FloatToStr(ibAReceber.FieldByName('VLREMITIDO').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          TotalTbl := TotalTbl + StrtoFloat(StringReplace(TotalCR,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibAReceber.Next;

      end;//while

      lbl_edtTotalGeral.Text := FormatFloat(CasasDecimais('Produtos'),TotalTbl);
////////////////////////////////////////////////////////////////////////////////


     // LimpaCampos;
      lbl_NomeEnvio.Text := '';
      lbl_edtEndEnvio.Text := '';
      lbl_edtNumeroEnvio.Text := '';
      lbl_edtBairroEnvio.Text := '';
      lbl_edtDDDEnvio.Text := '';
      lbl_edtTelEnvio.Text := '';
      cboTipoDocCR.ClearSelection;
      cboBancoCR.ClearSelection;
      lbl_edtVlrEmitidoCli.Clear;

      dtpConsultaFChange(Sender);

    end;//if

  end;//with


end;

procedure TfrmContasaReceber.ibeaClientesClick(Sender: TObject);
begin
frmBuscaClientes.ShowModal;
end;

procedure TfrmContasaReceber.ibeaLimparClick(Sender: TObject);
begin

  with dmModule do begin

    LimpaCampos;
    lbl_NomeEnvio.Text := '';
    lbl_edtEndEnvio.Text := '';
    lbl_edtNumeroEnvio.Text := '';
    lbl_edtBairroEnvio.Text := '';
    lbl_edtDDDEnvio.Text := '';
    lbl_edtTelEnvio.Text := '';
    lbl_BuscaNumeroCH.Clear;
   // ExecSELECTCR;

  end;//with

end;

procedure TfrmContasaReceber.lbl_edtNomeAvulsoKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key =#13 Then begin

    lbl_edtEndereco.SetFocus;

  end;

end;

procedure TfrmContasaReceber.lbl_edtEnderecoKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key =#13 Then begin

    lbl_edtNumero.SetFocus;

  end;

end;

procedure TfrmContasaReceber.lbl_edtNumeroKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key =#13 Then begin

    lbl_edtBairro.SetFocus;

  end;

end;

procedure TfrmContasaReceber.lbl_edtNumChequeKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key =#13 Then begin

    lbl_edtNumCheque.SetFocus;

  end;

end;

procedure TfrmContasaReceber.lbl_edtVlrEmitidoCliKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key =#13 Then begin

    memoObs.SetFocus;

  end;

end;

procedure TfrmContasaReceber.ibeaBxCRClick(Sender: TObject);
var

ConfirmaExclusao : Integer;

TotalTbl : Real;
TotalCR,Baixado : String;

begin

  with dmModule do begin

  ConfirmaExclusao := Application.MessageBox('Aten��o este procedimento baixa o contas a receber do per�odo determinado, deseja continuar??','Baixa do Contas a receber',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

    if ConfirmaExclusao = 6 Then begin

      Baixado := 'Sim';

      while not ibAReceber.Eof do begin

        ibAReceber.Close;
        ibAReceber.SQL.Clear;
        ibAReceber.SQL.Add('UPDATE TBLCONTASARECEBER SET '
        + 'BAIXADO = ''' + Baixado + ''','
        + 'DATADABAIXA = ''' + FormatDateTime('mm-dd-yyyy',Now) + ''' WHERE(TBLCONTASARECEBER.BAIXADO ='''')and (TBLCONTASARECEBER.VCTO between :ParamDataInicial and :ParamDataF)');
        ibAReceber.ParamByName('ParamDataInicial').Value := dtpConsultaIni.DateTime;
        ibAReceber.ParamByName('ParamDataF').Value := dtpConsultaF.DateTime;
        ibAReceber.ExecSQL;

        Commit(ibAReceber);
        ibAReceber.Close;
        ibAReceber.SQL.Clear;                                              //  and
        ibAReceber.SQL.Add('SELECT * FROM TBLCONTASARECEBER WHERE (TBLCONTASARECEBER.VCTO between :ParamDataInicial and :ParamDataF)and(TBLCONTASARECEBER.BAIXADO ='''')');
        ibAReceber.Open;

        ibAReceber.Close;
        ibAReceber.ParamByName('ParamDataInicial').Value := dtpConsultaIni.DateTime;
        ibAReceber.ParamByName('ParamDataF').Value := dtpConsultaF.DateTime;
        ibAReceber.Open;

        ibAReceber.Next;

      end;//while

////////////////////////////////////////////////////////////////////////////////

        dtpConsultaFChange(Sender);
        CalculoTotalCR;

    {  if TotalTbl > 0 then begin

        TotalTbl := 0;

      end;

      if TotalCR > '0' Then begin

        TotalCR := '0';

      end; }

        {Commit(ibAReceber);
        ibAReceber.Close;
        ibAReceber.SQL.Clear;                                              //  and
        ibAReceber.SQL.Add('SELECT * FROM TBLCONTASARECEBER WHERE (TBLCONTASARECEBER.VCTO between :ParamDataInicial and :ParamDataF)');
        ibAReceber.Open;

        ibAReceber.Close;
        ibAReceber.ParamByName('ParamDataInicial').Value := dtpConsultaIni.DateTime;
        ibAReceber.ParamByName('ParamDataF').Value := dtpConsultaF.DateTime;
        ibAReceber.Open;}

     { while not ibAReceber.Eof do begin

        if TotalTbl = 0 Then begin

          TotalTbl := StrToFloat(StringReplace(FloatToStr(ibAReceber.FieldByName('VLREMITIDO').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalCR := StringReplace(FloatToStr(ibAReceber.FieldByName('VLREMITIDO').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          TotalTbl := TotalTbl + StrtoFloat(StringReplace(TotalCR,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibAReceber.Next;

      end;//while

      lbl_edtTotalGeral.Text := FormatFloat(CasasDecimais('Produtos'),TotalTbl); }
////////////////////////////////////////////////////////////////////////////////



    end;//if

     // ibAReceber.Close;

  end;//with


end;



procedure TfrmContasaReceber.cboClienteChange(Sender: TObject);
var

ClassCliConsultaCR : TClasseCombo;
IDClassTelCom, IDClassClientes : Integer;

begin

  with dmModule do begin

    if cboCliente.ItemIndex > -1 Then begin

      ClassCliConsultaCR := TClasseCombo(cboCliente.Items.Objects[cboCliente.ItemIndex]);

    end;

      ibClassificacao.Close;
      ibClassificacao.SQL.Clear;
      ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
      ibClassificacao.Open;
      IDClassClientes := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICA��O DO FORNECEDOR NA VARIAVEL.


      ibCadastro.Close;
      ibCadastro.SQL.Clear;
      ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + IntToStr(IDClassClientes) + ''' and IDCAD=''' + IntToStr(ClassCliConsultaCR.ID) + '''');
      ibCadastro.Open;

      lbl_edtNumero.Text := ibCadastro.FieldByName('NUMERO').AsString;

////////////////////////////////////////////////////////////////////////////////

//ROTINA PARA LOCALIZAR O TELEFONE COMERCIAL

        //LOCALIZA O TELEFONE COMERCIAl
        ibClassificacao.Close;
        ibClassificacao.SQL.Clear;
        ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Com''');
        ibClassificacao.Open;
        IDClassTelcom := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identiicacao do contato de telefone coml. na variavel.

        ibContato.Close;
        ibContato.SQL.Clear;
        ibContato.SQL.Add('SELECT DDD,CONTATO FROM TBLCONTATO WHERE'
        + ' (IDCAD='''+ IntToStr(ClassCliConsultaCR.ID) + ''') And (TIPO=''' + InttoStr(IDClassTelcom) + ''')');
        ibContato.Open;

        //se tiver registro traz no campo
        if ibContato.RecordCount > 0 Then begin
           lbl_edtTelefone.Text       := ibContato.FieldByName('CONTATO').AsString; //TRAZ O CONTATO (TELEFONE) COMERCIAL
        // limpa os campos se nao houver registro.
        end else begin
          lbl_edtTelefone.Clear;
        end;
////////////////////////////////////////////////////////////////////////////////

        //LOCALIZA OS DADOS DA TBLLOGRADOURO DO CLIENTE.
        ibLogradouro.Close;
        ibLogradouro.SQL.Clear;
        ibLogradouro.SQL.Add('SELECT ENDERECO,BAIRRO FROM TBLLOGRADOURO WHERE'
        + ' IDCAD=''' + IntToStr(ClassCliConsultaCR.ID) + '''');
        ibLogradouro.Open;

         //se tiver registro traz no campo
        if ibLogradouro.RecordCount > 0 Then begin
          lbl_edtEndereco.Text        := ibLogradouro.FieldByName('ENDERECO').AsString;//TRAZ O ENDERECO.
          lbl_edtBairro.Text          := ibLogradouro.FieldByName('BAIRRO').AsString;//TRAZ O BAIRRO.
        //limpa os campos se nao houver registro.
        end else begin
          lbl_edtEndereco.Clear;
          lbl_edtBairro.Clear;
        end;

////////////////////////////////////////////////////////////////////////////////

     cboTipoDocCR.ClearSelection;
     lbl_edtNumCheque.Clear;
     cboBancoCR.ClearSelection;
     lbl_edtVlrEmitidoCli.Clear;
     memoObs.Clear;
////////////////////////////////////////////////////////////////////////////////

  end;//with

end;


procedure TfrmContasaReceber.dtpConsultaFChange(Sender: TObject);
var

ClassCliConsultaCR : TClasseCombo;
IDClassTelCom, IDClassClientes : Integer;
TotalTbl : Real;
TotalCR : String;

begin

  with dmModule do begin

    if ckAberto.Checked Then begin

      if cboCliente.ItemIndex > -1 Then begin

        ClassCliConsultaCR := TClasseCombo(cboCliente.Items.Objects[cboCliente.ItemIndex]);

        ibClassificacao.Close;
        ibClassificacao.SQL.Clear;
        ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
        ibClassificacao.Open;
        IDClassClientes := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICA��O DO FORNECEDOR NA VARIAVEL.

        ibCadastro.Close;
        ibCadastro.SQL.Clear;
        ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + IntToStr(IDClassClientes) + ''' and IDCAD=''' + IntToStr(ClassCliConsultaCR.ID) + '''');
        ibCadastro.Open;

        ibAReceber.Close;
        ibAReceber.SQL.Clear;
        ibAReceber.SQL.Add('SELECT TBLCONTASARECEBER.*,TBLCADASTRO.NOME As Cliente,TBLCADASTRO.NUMERO,'
        +'TBLCADASTRO.IDCLASS,TBLTIPOPAGTOAVULSO.DESCRICAO As TipoDocumento,BANCOS.DESCRICAO As NomeBanco FROM TBLCONTASARECEBER '
        +'INNER JOIN TBLCADASTRO ON TBLCONTASARECEBER.IDCLI=TBLCADASTRO.IDCAD '
        +'INNER JOIN TBLTIPOPAGTOAVULSO ON TBLCONTASARECEBER.IDTIPODOC=TBLTIPOPAGTOAVULSO.IDTIPO '
        +'INNER JOIN BANCOS ON TBLCONTASARECEBER.IDBANCO=BANCOS.IDBCO WHERE(TBLCONTASARECEBER.VCTO between :ParamDataInicial and :ParamDataF)and(TBLCONTASARECEBER.BAIXADO ='''')and TBLCONTASARECEBER.IDCLI=''' + IntToStr(ClassCliConsultaCR.ID) + '''ORDER BY TBLCONTASARECEBER.VCTO ASC');
        ibAReceber.Open;

        ibAReceber.Close;
        ibAReceber.ParamByName('ParamDataInicial').Value := dtpConsultaIni.DateTime;
        ibAReceber.ParamByName('ParamDataF').Value := dtpConsultaF.DateTime;
        ibAReceber.Open;

        (ibAReceber.FieldByName('VLREMITIDO')as TFloatField).DisplayFormat := CasasDecimais('Produtos');

        CalculoTotalCR;

       end;

        if cboCliente.Text = '' Then begin

        Commit(ibAReceber);
        ibAReceber.Close;
        ibAReceber.SQL.Clear;
        ibAReceber.SQL.Add('SELECT TBLCONTASARECEBER.*,TBLCADASTRO.NOME As Cliente,TBLCADASTRO.NUMERO,'
        +'TBLCADASTRO.NUMERO,TBLTIPOPAGTOAVULSO.DESCRICAO As TipoDocumento,BANCOS.DESCRICAO As NomeBanco FROM TBLCONTASARECEBER '
        +'LEFT OUTER JOIN TBLCADASTRO ON TBLCONTASARECEBER.IDCLI=TBLCADASTRO.IDCAD '
        +'LEFT OUTER JOIN TBLTIPOPAGTOAVULSO ON TBLCONTASARECEBER.IDTIPODOC=TBLTIPOPAGTOAVULSO.IDTIPO '
        +'LEFT OUTER JOIN BANCOS ON TBLCONTASARECEBER.IDBANCO=BANCOS.IDBCO WHERE(TBLCONTASARECEBER.VCTO between :ParamDataInicial and :ParamDataF)and(TBLCONTASARECEBER.BAIXADO ='''')ORDER BY TBLCONTASARECEBER.VCTO ASC');
        ibAReceber.Open;

        ibAReceber.Close;
        ibAReceber.ParamByName('ParamDataInicial').Value := dtpConsultaIni.DateTime;
        ibAReceber.ParamByName('ParamDataF').Value := dtpConsultaF.DateTime;
        ibAReceber.Open;

        (ibAReceber.FieldByName('VLREMITIDO')as TFloatField).DisplayFormat := CasasDecimais('Produtos');

         CalculoTotalCR;

       end;//if cbocliente em branco

////////////////////////////////////////////////////////////////////////////////

     { while not ibAReceber.Eof do begin

        if TotalTbl = 0 Then begin

          TotalTbl := StrToFloat(StringReplace(FloatToStr(ibAReceber.FieldByName('VLREMITIDO').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalCR := StringReplace(FloatToStr(ibAReceber.FieldByName('VLREMITIDO').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          TotalTbl := TotalTbl + StrtoFloat(StringReplace(TotalCR,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibAReceber.Next;

      end;//while

      lbl_edtTotalP.Text := FormatFloat(CasasDecimais('Produtos'),TotalTbl); }

    //  CalculoTotalCR;

    end;//if aberto

////////////////////////////////////////////////////////////////////////////////

    if ckBaixado.Checked Then begin

      if cboCliente.ItemIndex > -1 Then begin

        ClassCliConsultaCR := TClasseCombo(cboCliente.Items.Objects[cboCliente.ItemIndex]);

        ibClassificacao.Close;
        ibClassificacao.SQL.Clear;
        ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
        ibClassificacao.Open;
        IDClassClientes := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICA��O DO FORNECEDOR NA VARIAVEL.

        ibCadastro.Close;
        ibCadastro.SQL.Clear;
        ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + IntToStr(IDClassClientes) + ''' and IDCAD=''' + IntToStr(ClassCliConsultaCR.ID) + '''');
        ibCadastro.Open;

        ibAReceber.Close;
        ibAReceber.SQL.Clear;
        ibAReceber.SQL.Add('SELECT TBLCONTASARECEBER.*,TBLCADASTRO.NOME As Cliente,TBLCADASTRO.NUMERO,'
        +'TBLCADASTRO.IDCLASS,TBLTIPODOCUMENTO.TIPO,BANCOS.DESCRICAO As NomeBanco FROM TBLCONTASARECEBER '
        +'LEFT OUTER JOIN TBLCADASTRO ON TBLCONTASARECEBER.IDCLI=TBLCADASTRO.IDCAD '
        +'LEFT OUTER JOIN TBLTIPODOCUMENTO ON TBLCONTASARECEBER.IDTIPODOC=TBLTIPODOCUMENTO.IDTIPODOC '
        +'LEFT OUTER JOIN BANCOS ON TBLCONTASARECEBER.IDBANCO=BANCOS.IDBCO WHERE(TBLCONTASARECEBER.VCTO between :ParamDataInicial and :ParamDataF) and TBLCONTASARECEBER.BAIXADO = ''Sim''  and TBLCONTASARECEBER.IDCLI=''' + IntToStr(ClassCliConsultaCR.ID) + '''ORDER BY TBLCONTASARECEBER.VCTO ASC');
        ibAReceber.Open;

        ibAReceber.Close;
        ibAReceber.ParamByName('ParamDataInicial').Value := dtpConsultaIni.DateTime;
        ibAReceber.ParamByName('ParamDataF').Value := dtpConsultaF.DateTime;
        ibAReceber.Open;

        (ibAReceber.FieldByName('VLREMITIDO')as TFloatField).DisplayFormat := CasasDecimais('Produtos');

       CalculoTotalCR;
       
       end;

        if cboCliente.Text = '' Then begin

        Commit(ibAReceber);
        ibAReceber.Close;
        ibAReceber.SQL.Clear;
        ibAReceber.SQL.Add('SELECT TBLCONTASARECEBER.*,TBLCADASTRO.NOME As Cliente,TBLCADASTRO.NUMERO,'
        +'TBLCADASTRO.NUMERO,TBLTIPODOCUMENTO.TIPO,BANCOS.DESCRICAO As NomeBanco FROM TBLCONTASARECEBER '
        +'LEFT OUTER JOIN TBLCADASTRO ON TBLCONTASARECEBER.IDCLI=TBLCADASTRO.IDCAD '
        +'LEFT OUTER JOIN TBLTIPODOCUMENTO ON TBLCONTASARECEBER.IDTIPODOC=TBLTIPODOCUMENTO.IDTIPODOC '
        +'LEFT OUTER JOIN BANCOS ON TBLCONTASARECEBER.IDBANCO=BANCOS.IDBCO WHERE TBLCONTASARECEBER.BAIXADO = ''Sim'' and(TBLCONTASARECEBER.VCTO between :ParamDataInicial and :ParamDataF)ORDER BY TBLCONTASARECEBER.VCTO ASC');
        ibAReceber.Open;

        ibAReceber.Close;
        ibAReceber.ParamByName('ParamDataInicial').Value := dtpConsultaIni.DateTime;
        ibAReceber.ParamByName('ParamDataF').Value := dtpConsultaF.DateTime;
        ibAReceber.Open;

        (ibAReceber.FieldByName('VLREMITIDO')as TFloatField).DisplayFormat := CasasDecimais('Produtos');

       CalculoTotalCR;

       end;//if cbocliente em branco

    end;//if aberto  


////////////////////////////////////////////////////////////////////////////////


  end;//with

end;

procedure TfrmContasaReceber.ckAbertoCheck(Sender: TObject);
begin

  if ckAberto.Checked Then begin

    ckBaixado.Checked := False;

  end;

  with dmModule do begin

    dtpConsultaFChange(Sender);

  end;//with

end;

procedure TfrmContasaReceber.ckBaixadoCheck(Sender: TObject);
begin

  if ckBaixado.Checked Then begin

    ckAberto.Checked := False;

  end;

  with dmModule do begin

    dtpConsultaFChange(Sender);

  end;//with

end;

procedure TfrmContasaReceber.ibeaRetornoClick(Sender: TObject);

var

ConfirmaExclusao : Integer;

TotalTbl : Real;
TotalCR,Baixado : String;

begin

  with dmModule do begin

  ConfirmaExclusao := Application.MessageBox('Aten��o este procedimento retorna o contas a receber do per�odo determinado, deseja continuar??','Retorno do Contas a receber',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

    if ConfirmaExclusao = 6 Then begin

      Baixado := '';



      while not ibAReceber.Eof do begin

        ibAReceber.Close;
        ibAReceber.SQL.Clear;
        ibAReceber.SQL.Add('UPDATE TBLCONTASARECEBER SET '
        + 'BAIXADO = ''' + Baixado + ''','
        + 'DATADABAIXA = ''' + FormatDateTime('mm-dd-yyyy',Now) + ''' WHERE (TBLCONTASARECEBER.VCTO between :ParamDataInicial and :ParamDataF)and TBLCONTASARECEBER.BAIXADO =''Sim''');
        ibAReceber.ParamByName('ParamDataInicial').Value := dtpConsultaIni.DateTime;
        ibAReceber.ParamByName('ParamDataF').Value := dtpConsultaF.DateTime;
        ibAReceber.ExecSQL;

        Commit(ibAReceber);
        ibAReceber.Close;
        ibAReceber.SQL.Clear;
        ibAReceber.SQL.Add('SELECT * FROM TBLCONTASARECEBER WHERE(TBLCONTASARECEBER.VCTO between :ParamDataInicial and :ParamDataF)and TBLCONTASARECEBER.BAIXADO =''Sim''');
        ibAReceber.Open;

        ibAReceber.Close;                                                                                                      //   
        ibAReceber.ParamByName('ParamDataInicial').Value := dtpConsultaIni.DateTime;
        ibAReceber.ParamByName('ParamDataF').Value := dtpConsultaF.DateTime;
        ibAReceber.Open;


        ibAReceber.Next;

      end;//while

      dtpConsultaFChange(Sender);
      CalculoTotalCR;
      
    //  (ibAReceber.FieldByName('VLREMITIDO')as TFloatField).DisplayFormat := CasasDecimais('Produtos');

    //  dtpConsultaFChange(Sender);

////////////////////////////////////////////////////////////////////////////////

   {  if TotalTbl > 0 then begin

        TotalTbl := 0;

      end;

      if TotalCR > '0' Then begin

        TotalCR := '0';

      end;

      Commit(ibAReceber);
      ibAReceber.Close;
      ibAReceber.SQL.Clear;
      ibAReceber.SQL.Add('SELECT * FROM TBLCONTASARECEBER WHERE BAIXADO <> ''Sim''');
      ibAReceber.Open;

      (ibAReceber.FieldByName('VLREMITIDO')as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      while not ibAReceber.Eof do begin

        if TotalTbl = 0 Then begin

          TotalTbl := StrToFloat(StringReplace(FloatToStr(ibAReceber.FieldByName('VLREMITIDO').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalCR := StringReplace(FloatToStr(ibAReceber.FieldByName('VLREMITIDO').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          TotalTbl := TotalTbl + StrtoFloat(StringReplace(TotalCR,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibAReceber.Next;

      end;//while

      lbl_edtTotalGeral.Text := FormatFloat(CasasDecimais('Produtos'),TotalTbl);  }
////////////////////////////////////////////////////////////////////////////////



    end;//if

      ibAReceber.Close;

  end;//with


end;

procedure TfrmContasaReceber.ibeaRelatorioClick(Sender: TObject);
begin
frmCRPeriodo.ShowModal;
end;

procedure TfrmContasaReceber.ibeaBxIndividualClick(Sender: TObject);

var

ConfirmaExclusao : Integer;

TotalTbl : Real;
TotalCR,Baixado : String;

begin

  with dmModule do begin

  ConfirmaExclusao := Application.MessageBox('Aten��o este procedimento baixa o contas a receber selecionado, deseja continuar??','Baixa do Contas a receber',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

    if ConfirmaExclusao = 6 Then begin

      Baixado := 'Sim';

    //  while not ibAReceber.Eof do begin

        ibAReceber.Close;
        ibAReceber.SQL.Clear;
        ibAReceber.SQL.Add('UPDATE TBLCONTASARECEBER SET '
        + 'BAIXADO = ''' + Baixado + ''','
        + 'DATADABAIXA = ''' + FormatDateTime('mm-dd-yyyy',Now) + ''' WHERE IDCRECEBER=''' + IntToStr(IDBxReceber) + '''');
        ibAReceber.ExecSQL;

       { Commit(ibAReceber);
        ibAReceber.Close;
        ibAReceber.SQL.Clear;                                              //  and
        ibAReceber.SQL.Add('SELECT * FROM TBLCONTASARECEBER WHERE (TBLCONTASARECEBER.VCTO between :ParamDataInicial and :ParamDataF)and (TBLCONTASARECEBER.BAIXADO is null)or(TBLCONTASARECEBER.BAIXADO ='''')');
        ibAReceber.Open;

        ibAReceber.Close;
        ibAReceber.ParamByName('ParamDataInicial').Value := dtpConsultaIni.DateTime;
        ibAReceber.ParamByName('ParamDataF').Value := dtpConsultaF.DateTime;
        ibAReceber.Open;}

       // ibAReceber.Next;

     // end;//while

////////////////////////////////////////////////////////////////////////////////
    LimpaCampos;
    lbl_NomeEnvio.Text := '';
    lbl_edtEndEnvio.Text := '';
    lbl_edtNumeroEnvio.Text := '';
    lbl_edtBairroEnvio.Text := '';
    lbl_edtDDDEnvio.Text := '';
    lbl_edtTelEnvio.Text := '';
        dtpConsultaFChange(Sender);
        CalculoTotalCR;

    {  if TotalTbl > 0 then begin

        TotalTbl := 0;

      end;

      if TotalCR > '0' Then begin

        TotalCR := '0';

      end; }

        {Commit(ibAReceber);
        ibAReceber.Close;
        ibAReceber.SQL.Clear;                                              //  and
        ibAReceber.SQL.Add('SELECT * FROM TBLCONTASARECEBER WHERE (TBLCONTASARECEBER.VCTO between :ParamDataInicial and :ParamDataF)');
        ibAReceber.Open;

        ibAReceber.Close;
        ibAReceber.ParamByName('ParamDataInicial').Value := dtpConsultaIni.DateTime;
        ibAReceber.ParamByName('ParamDataF').Value := dtpConsultaF.DateTime;
        ibAReceber.Open;}

     { while not ibAReceber.Eof do begin

        if TotalTbl = 0 Then begin

          TotalTbl := StrToFloat(StringReplace(FloatToStr(ibAReceber.FieldByName('VLREMITIDO').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalCR := StringReplace(FloatToStr(ibAReceber.FieldByName('VLREMITIDO').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          TotalTbl := TotalTbl + StrtoFloat(StringReplace(TotalCR,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibAReceber.Next;

      end;//while

      lbl_edtTotalGeral.Text := FormatFloat(CasasDecimais('Produtos'),TotalTbl); }
////////////////////////////////////////////////////////////////////////////////



    end;//if

     // ibAReceber.Close;

  end;//with


end;

procedure TfrmContasaReceber.ibeaRetornoIndClick(Sender: TObject);

var

ConfirmaExclusao : Integer;

TotalTbl : Real;
TotalCR,Baixado : String;

begin

  with dmModule do begin

  ConfirmaExclusao := Application.MessageBox('Aten��o este procedimento retorna o contas a receber selecionado, deseja continuar??','Retorno do Contas a Receber',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

    if ConfirmaExclusao = 6 Then begin

      Baixado := '';

        ibAReceber.Close;
        ibAReceber.SQL.Clear;
        ibAReceber.SQL.Add('UPDATE TBLCONTASARECEBER SET '
        + 'BAIXADO = ''' + Baixado + ''','
        + 'DATADABAIXA = ''' + FormatDateTime('mm-dd-yyyy',Now) + ''' WHERE IDCRECEBER=''' + IntToStr(IDBxReceber) + '''');
        ibAReceber.ExecSQL;

       { Commit(ibAReceber);
        ibAReceber.Close;
        ibAReceber.SQL.Clear;                                              //  and
        ibAReceber.SQL.Add('SELECT * FROM TBLCONTASARECEBER WHERE (TBLCONTASARECEBER.VCTO between :ParamDataInicial and :ParamDataF)and (TBLCONTASARECEBER.BAIXADO is null)or(TBLCONTASARECEBER.BAIXADO ='''')');
        ibAReceber.Open;

        ibAReceber.Close;
        ibAReceber.ParamByName('ParamDataInicial').Value := dtpConsultaIni.DateTime;
        ibAReceber.ParamByName('ParamDataF').Value := dtpConsultaF.DateTime;
        ibAReceber.Open;}

       // ibAReceber.Next;

     // end;//while

////////////////////////////////////////////////////////////////////////////////
    LimpaCampos;
    lbl_NomeEnvio.Text := '';
    lbl_edtEndEnvio.Text := '';
    lbl_edtNumeroEnvio.Text := '';
    lbl_edtBairroEnvio.Text := '';
    lbl_edtDDDEnvio.Text := '';
    lbl_edtTelEnvio.Text := '';
        dtpConsultaFChange(Sender);
        CalculoTotalCR;

    {  if TotalTbl > 0 then begin

        TotalTbl := 0;

      end;

      if TotalCR > '0' Then begin

        TotalCR := '0';

      end; }

        {Commit(ibAReceber);
        ibAReceber.Close;
        ibAReceber.SQL.Clear;                                              //  and
        ibAReceber.SQL.Add('SELECT * FROM TBLCONTASARECEBER WHERE (TBLCONTASARECEBER.VCTO between :ParamDataInicial and :ParamDataF)');
        ibAReceber.Open;

        ibAReceber.Close;
        ibAReceber.ParamByName('ParamDataInicial').Value := dtpConsultaIni.DateTime;
        ibAReceber.ParamByName('ParamDataF').Value := dtpConsultaF.DateTime;
        ibAReceber.Open;}

     { while not ibAReceber.Eof do begin

        if TotalTbl = 0 Then begin

          TotalTbl := StrToFloat(StringReplace(FloatToStr(ibAReceber.FieldByName('VLREMITIDO').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalCR := StringReplace(FloatToStr(ibAReceber.FieldByName('VLREMITIDO').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          TotalTbl := TotalTbl + StrtoFloat(StringReplace(TotalCR,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibAReceber.Next;

      end;//while

      lbl_edtTotalGeral.Text := FormatFloat(CasasDecimais('Produtos'),TotalTbl); }
////////////////////////////////////////////////////////////////////////////////



    end;//if

     // ibAReceber.Close;

  end;//with


end;

procedure TfrmContasaReceber.lbl_BuscaNumeroCHExit(Sender: TObject);
begin

  with dmModule do begin

    Commit(ibAReceber);
    ibAReceber.Close;
    ibAReceber.SQL.Clear;
    ibAReceber.SQL.Add('SELECT TBLCONTASARECEBER.*,TBLCADASTRO.NOME As Cliente,'
    +'TBLCADASTRO.NUMERO,TBLTIPOPAGTOAVULSO.DESCRICAO As TipoDocumento,BANCOS.DESCRICAO As NomeBanco FROM TBLCONTASARECEBER '
    +'LEFT OUTER JOIN TBLCADASTRO ON TBLCONTASARECEBER.IDCLI=TBLCADASTRO.IDCAD '
    +'INNER JOIN TBLTIPOPAGTOAVULSO ON TBLCONTASARECEBER.IDTIPODOC=TBLTIPOPAGTOAVULSO.IDTIPO '
    +'INNER JOIN BANCOS ON TBLCONTASARECEBER.IDBANCO=BANCOS.IDBCO WHERE(TBLCONTASARECEBER.NUMCHEQUE = ''' + lbl_BuscaNumeroCH.Text + ''')');
    ibAReceber.Open;

    (ibAReceber.FieldByName('VLREMITIDO')as TFloatField).DisplayFormat := CasasDecimais('Produtos');

    CalculoTotalCR;

  end;//with

end;

procedure TfrmContasaReceber.lbl_BuscaNumeroCHKeyPress(Sender: TObject;
  var Key: Char);
begin


  if key = #13 Then begin

    lbl_edtNumCheque.SetFocus;

  end;
  
end;

end.

