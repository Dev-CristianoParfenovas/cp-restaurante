unit unClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, 
  StdCtrls, ComCtrls, IBQuery, classComboBox, Buttons, DB, BmsXPCheckBox,
  BmsXPButton, IniFiles;

type
  TfrmClientes = class(TForm)
    pcCadastrodeclientes: TPageControl;
    tbsDadoscadastrais: TTabSheet;
    lblData: TLabel;
    Image1: TImage;
    lblDadoscliente: TLabel;
    lbl_edtCodCliente: TLabeledEdit;
    lbl_edtNomerazao: TLabeledEdit;
    lbl_edtCnpj_cpf: TLabeledEdit;
    lbl_edtIE_rg: TLabeledEdit;
    lbl_edtEndereco: TLabeledEdit;
    lbl_edtBairro: TLabeledEdit;
    lbl_edtCep: TLabeledEdit;
    lbl_edtCidade: TLabeledEdit;
    lbl_edtEstado: TLabeledEdit;
    lbl_edtTelCom: TLabeledEdit;
    lbl_edtTelFax: TLabeledEdit;
    lbl_edtCelular: TLabeledEdit;
    lbl_edtNumero: TLabeledEdit;
    lbl_edtComplemento: TLabeledEdit;
    lbl_edtPontoreferencia: TLabeledEdit;
    lbl_edtObs: TLabeledEdit;
    lbl_edtDDD: TLabeledEdit;
    lbl_edtDDDFax: TLabeledEdit;
    dbgClientes: TDBGrid;
    GroupBox1: TGroupBox;
    lbl_edtNome: TLabeledEdit;
    sb_ord_nome: TSpeedButton;
    sb_ord_cod: TSpeedButton;
    tbsHistorico: TTabSheet;
    lbl_edtCodCliH: TLabeledEdit;
    lbl_edtNomeCliH: TLabeledEdit;
    lbl_edtTelefoneH: TLabeledEdit;
    lbl_edtCelularH: TLabeledEdit;
    Image2: TImage;
    Label1: TLabel;
    lbl_edtTotal: TLabeledEdit;
    lbl_edtTotalPendente: TLabeledEdit;
    lbl_edtDesconto: TLabeledEdit;
    lbl_edtEmail: TLabeledEdit;
    lbl_edtTotalPago: TLabeledEdit;
    lbl_edtPagtoParcial: TLabeledEdit;
    lbl_edtVlrTotalP: TLabeledEdit;
    lbl_edtVlrPago: TLabeledEdit;
    lbl_edtTotalemAver: TLabeledEdit;
    lbl_DTInicio: TLabel;
    lbl_DtFinal: TLabel;
    lbl_edtSaldoDevedor: TLabeledEdit;
    tbsPagtoEfetuado: TTabSheet;
    lbl_CodCliPagto: TLabel;
    lbl_NomeCliPagto: TLabel;
    dbgPagamentoEfetuado: TDBGrid;
    lbl_edtData: TLabeledEdit;
    lbl_edtValorPagtoEfetuado: TLabeledEdit;
    lbl_edtPesqEndereco: TLabeledEdit;
    lbl_edtIdCad: TLabeledEdit;
    lbl_edtTotalDevedor: TLabeledEdit;
    ckPendente: TBmsXPCheckBox;
    ibeaNovo: TBmsXPButton;
    ibeaAlterar: TBmsXPButton;
    ibeaExcluir: TBmsXPButton;
    ibeaSair: TBmsXPButton;
    ibeaHistorico: TSpeedButton;
    ibeaPagtoPendente: TSpeedButton;
    ibeaRelatorioP: TSpeedButton;
    ibeaSairHistorico: TSpeedButton;
    ibeaImprimir: TSpeedButton;
    ibeaExcluirPagto: TSpeedButton;
    ibeaPagtosEfetuados: TSpeedButton;
    lbl_edtTelefonePesquisa: TLabeledEdit;
    ckClienteBar: TBmsXPCheckBox;
    lbl_edtPesqNumero: TLabeledEdit;
    dtpDataCli: TDateTimePicker;
    dtpDataFinal: TDateTimePicker;
    dtpDataIni: TDateTimePicker;
    cboCondPagto: TComboBox;
    Label2: TLabel;
    pcHistoricoVendas: TPageControl;
    tbsVendasCaixa: TTabSheet;
    dbgHistorico: TDBGrid;
    ckVendasRestaurante: TBmsXPCheckBox;
    tbsVendasRestaurante: TTabSheet;
    dbgVendasRestaurante: TDBGrid;

    procedure Commit(IBQueryExec : TIBQuery);
    procedure DesabilitaCamposCli(opcao : Boolean);
    procedure LimpaCampo;
    procedure ExecSELECTCondPagto;
    procedure AlteraCadastro;
    procedure AlteraDocumentacao;
    procedure AlteraContato;
    procedure AlteraLogradouro;
    procedure ExibeDados;
    procedure ExecSELECTTipoVenda;
    procedure ExecSELECT;
    procedure ExecSELECTVendedor;
    procedure ibeaSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ibeaNovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lbl_edtCepExit(Sender: TObject);
    procedure dbgClientesCellClick(Column: TColumn);
    procedure pcCadastrodeclientesChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ibeaAlterarClick(Sender: TObject);
    procedure lbl_edtEstadoExit(Sender: TObject);
    procedure lbl_edtTelComExit(Sender: TObject);
    procedure lbl_edtTelFaxExit(Sender: TObject);
    procedure lbl_edtCelularExit(Sender: TObject);
    procedure ibeaExcluirClick(Sender: TObject);
    procedure lbl_edtNomeChange(Sender: TObject);
    procedure sb_ord_nomeClick(Sender: TObject);
    procedure sb_ord_codClick(Sender: TObject);
    procedure ibeaSairHistoricoClick(Sender: TObject);
    procedure ibeaBuscaCliClick(Sender: TObject);
    procedure ibeaHistoricoClick(Sender: TObject);
    procedure dbgHistoricoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure dtpDataFinalChange(Sender: TObject);
    procedure lbl_edtVlrPagoExit(Sender: TObject);
    procedure lbl_edtVlrPagoKeyPress(Sender: TObject; var Key: Char);
    procedure ibeaPagtoPendenteClick(Sender: TObject);
    procedure ibeaPagtosEfetuadosClick(Sender: TObject);
    procedure dbgPagamentoEfetuadoCellClick(Column: TColumn);
    procedure ibeaExcluirPagtoClick(Sender: TObject);
    procedure ibeaRelatorioPClick(Sender: TObject);
    procedure lbl_edtPesqEnderecoChange(Sender: TObject);
    procedure ibeaImprimirClick(Sender: TObject);
    procedure ckPendenteCheck(Sender: TObject);
    procedure lbl_edtTelefonePesquisaExit(Sender: TObject);
    procedure lbl_edtTelefonePesquisaKeyPress(Sender: TObject;
      var Key: Char);
    procedure lbl_edtPesqNumeroChange(Sender: TObject);
    procedure lbl_edtPesqEnderecoKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtPesqNumeroKeyPress(Sender: TObject; var Key: Char);
    procedure dbgClientesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ckVendasRestauranteCheck(Sender: TObject);
    procedure dbgVendasRestauranteDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientes: TfrmClientes;
  ConfirmaMSG : Integer;
  Cep,IDCadNovo : Integer;
  IDCad : Integer;
  IDClass : Integer; // variavel para trazer dados da tbl de classificacao
  IDClassTelcom : Integer;//variavel para armazenar a classificação do campo telcoml
  IDClassTelfax: Integer; //variavel para armazenar a classificação do campo telfax
  IDClassTelCel: Integer;//variável para armazenar a classificacao do campo celular.
  IDClassEmail: Integer;//variavel para armazenar a classificação do campo email
  IDClassSite: Integer;//variavel para armazenar a classificação do campo site
  IDClassContato: Integer;// variavel para armazenar a classificação do campo contato
  IDClassCnpj: Integer;//variavel para atribuir o cnpj_cpf.
  MontaColunas : Boolean;//variavel para montar o grid no on show do formulario
  MontaColHist : Boolean;
  MontaColPagtoEfetuado, MontaColHistRestaurante : Boolean;
  CEPTemp : String;
  ibTempCep  : TIBQuery;//atribui valor a componente criado

  AlteraCep : Boolean;
  AlteraEnd : Boolean;

  ClassRaca : TClasseCombo;

  //variaveis para gravar o id da raca do animal
  IDClassRaca : TClasseCombo;
  StringRaca : String;

  IDCadCli : Integer;//variavel para gravar o id do cliente na tabela animal cli

  ClassPelagem : TClasseCombo;//variavel para select de pelagem

  //variaveis para gravacao do tipo de pelagem
  IDClassPelagem : TClasseCombo;
  StringPelagem : String;

  ClassTipoVenda : TClasseCombo;//variaveis para select tipovenda

  //variaveis para gravacao de tipo venda
  IDClassTipoVenda : TClasseCombo;
  StringTipoVenda : String;

  IDClassCondPagto : TClasseCombo;

  IDClassGravaCondPagto,IDClassAltCondPagto : TClasseCombo;
  StringGravaCondPagto,StringAltCondPagto : String;

  IDPagtoEfetuado : Integer;

  ConfigSiS : TIniFile;
  //VARIAVEL PARA EXCLUIR PAGTO PENDENTE REF CUPOM

  Cupom : Integer;

implementation

uses untdmModule, BuscaClientes, funcPosto, untRelPendente,
  Daruma_Framework_Autenticar,
  Daruma_Framework_Exemplo_Dual_01, Daruma_Framework_Exemplo_DUAL_02,
  Daruma_Framework_Impressora_Dual,
  Daruma_Framework_Looping_Verificacao_Status,
  Daruma_Framework_Looping_Verificacao_Status_Doc,
  Daruma_Framework_Variaveis_Globais, Daruma_Framework_DUAL_ImprimirTexto,
  untBuscaCep;

Function Daruma_DUAL_ImprimirTexto( TextoLivre: String; TamanhoTexto: Integer ): Integer; StdCall; External 'Daruma32.dll'
{$R *.dfm}

procedure TfrmClientes.Commit(IBQueryExec : TIBQuery);
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

procedure TfrmClientes.DesabilitaCamposCli(opcao:Boolean);
begin
  lbl_edtCodCliente.Enabled := opcao;
 // rdgrTipodecliente.Enabled := opcao;
  dtpDataCli.Enabled := opcao;
//  lbl_edtIcm.Enabled := opcao;
  lbl_edtNomerazao.Enabled := opcao;
 // lbl_edtNomeusual.Enabled := opcao;
// cboRamoativ.Enabled := opcao;
  lbl_edtEndereco.Enabled := opcao;
  lbl_edtBairro.Enabled := opcao;
//  lbl_edtCidade.Enabled := opcao;
  lbl_edtCep.Enabled := opcao;
  lbl_edtTelCom.Enabled := opcao;
  lbl_edtTelFax.Enabled := opcao;
  lbl_edtCelular.Enabled := opcao;
  lbl_edtCnpj_cpf.Enabled := opcao;
//  lbl_edtContato.Enabled := opcao;
//  lbl_edtSite.Enabled := opcao;
  lbl_edtIE_rg.Enabled := opcao;
  lbl_edtEmail.Enabled := opcao;
  lbl_edtEstado.Enabled := opcao;
  lbl_edtDDD.Enabled := opcao;
  lbl_edtDDDFax.Enabled := opcao;
  lbl_edtNumero.Enabled := opcao;
  lbl_edtComplemento.Enabled := opcao;
  lbl_edtPontoreferencia.Enabled := opcao;
  lbl_edtObs.Enabled := opcao;
  lbl_edtDesconto.Enabled := opcao;
  cboCondPagto.Enabled := opcao;

end;


procedure TfrmClientes.LimpaCampo;  // limpa os campos determinados abaixo
begin
  IDCad := 0;

  lbl_edtCodCliente.Clear;
//  lbl_edtIcm.Clear;
  lbl_edtNomerazao.Clear;
  //cboRamoativ.Clear;
//  lbl_edtNomeusual.Clear;
  lbl_edtEndereco.Clear;
  lbl_edtBairro.Clear;
//  lbl_edtCidade.Clear;
  lbl_edtCep.Clear;
  lbl_edtTelCom.Clear;
  lbl_edtTelFax.Clear;
  lbl_edtCelular.Clear;
  lbl_edtCnpj_cpf.Clear;
//  lbl_edtContato.Clear;
//  lbl_edtSite.Clear;
  lbl_edtIE_rg.Clear;
  lbl_edtEmail.Clear;
//  lbl_edtEstado.Clear;
//  lbl_edtDDD.Clear;
//  lbl_edtDDDFax.Clear;
  lbl_edtNumero.Clear;
  lbl_edtComplemento.Clear;
  lbl_edtPontoreferencia.Clear;
  lbl_edtObs.Clear;
  lbl_edtDesconto.Clear;
  cboCondPagto.ClearSelection;
  lbl_edtTotal.Text := '0,00';
  lbl_edtTotalPago.Text := '0,00';
  lbl_edtTotalPendente.Text := '0,00';
  lbl_edtCodCliH.Clear;
  lbl_edtNomeCliH.Clear;
  lbl_edtTelefoneH.Clear;
  lbl_edtCelularH.Clear;
  ckClienteBar.Checked := False;

end;

procedure TfrmClientes.ExecSELECTCondPagto;

begin

  with dmModule do begin

    //TRAZ NO COMBO SOMENTE OS COMBUSTIVEIS DO CADASTRO DE PRODUTOS.
    ibCondicoesPagto.Close;
    ibCondicoesPagto.SQL.Clear;
    ibCondicoesPagto.SQL.Add('SELECT * FROM CONDICOESPAGAMENTO');
    ibCondicoesPagto.Open;

    cboCondPagto.Clear;

    while not ibCondicoesPagto.Eof do begin//TRAZ A IDENTIFICACAO NO COMBO ATRAVES DO IDENQUANTO NAO FOR FIM DOS REGISTROS

      IDClassCondPagto := TClasseCombo.Create;// ATRIBUI A CLASSE CRIADA NA VARIAVEL.
      IDClassCondPagto.ID := ibCondicoesPagto.FieldByName('IDCONDPAGTO').AsInteger;//ATRIBUI A IDENTIFICACAO DO CAMPO DA TABELA NA VARIAVEL
      cboCondPagto.Items.AddObject(ibCondicoesPagto.FieldByName('DESCRICAO').AsString,IDClassCondPagto);//ADICIONA O OBJETO OU ITEM CONTENTO TEXTO VINDOS DE UMA TABELA.
      ibCondicoesPagto.Next;

    end;

  end;{with}

end;

procedure TfrmClientes.AlteraCadastro;

var
StringAltVendedor, ClienteBar : String;
ClassAltVendedor  : TClasseCombo;

begin
  with dmModule do begin


    If cboCondPagto.ItemIndex = -1 Then begin

      StringAltCondPagto     := ' IDCONDPAGTO= ''0'',';

    end else begin

      IDClassAltCondPagto      := TClasseCombo( cboCondPagto.Items.Objects[cboCondPagto.ItemIndex] );
      StringAltCondPagto        := ' IDCONDPAGTO=''' + InttoStr( IDClassAltCondPagto.ID ) + ''',';

    end;//if

   { If cboVendedor.ItemIndex = -1 Then begin

      StringAltVendedor     := ' IDVENDEDOR= ''0'',';

    end else begin

      ClassAltVendedor      := TClasseCombo( cboVendedor.Items.Objects[cboVendedor.ItemIndex] );
      StringAltVendedor        := ' IDVENDEDOR=''' + InttoStr( ClassAltVendedor.ID ) + ''',';

    end;//if  }

    //GRAVA AS ALTERACOES NA TBL DE CADASTRO

    if ckClienteBar.Checked Then begin

      ClienteBar := 'Sim';

    end else begin

      ClienteBar := 'Nao';

    end;

    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('UPDATE TBLCADASTRO SET '
    + StringAltCondPagto
    + StringAltVendedor
    + 'NOME = ''' + lbl_edtNomerazao.Text + ''''
    + ',NUMERO = ''' + lbl_edtNumero.Text + ''''
    + ',COMPL = ''' + lbl_edtComplemento.Text + ''''
    + ',CEP = ''' + InttoStr(Cep) + ''''
    + ',DESCONTO = ''' + lbl_edtDesconto.Text + ''''
    + ',PONTOREFERENCIA = ''' + lbl_edtPontoreferencia.Text + ''''
    + ',TELEFONE = ''' + lbl_edtTelCom.Text + ''''
    + ',CELULAR = ''' + lbl_edtCelular.Text + ''''
    + ',CLIENTEBAR = ''' + ClienteBar + ''''
    + ',ENDERECO = ''' + lbl_edtEndereco.Text + ''''
    + ',BAIRRO = ''' + lbl_edtBairro.Text + ''''
    + ',CIDADE = ''' + lbl_edtCidade.Text + ''''
    + ',ESTADO = ''' + lbl_edtEstado.Text + ''''
    + ',OBS = ''' + lbl_edtObs.Text + ''' WHERE IDCad=''' + InttoStr(IDCad) + '''');
    ibCadastro.ExecSQL;
    Commit(ibCadastro);

  end;
end;

procedure TfrmClientes.AlteraDocumentacao;
begin
  with dmModule do begin

   //select para trazer registro dos campos
    ibDocumentacao.Close;
    ibDocumentacao.SQL.Clear;
    ibDocumentacao.SQL.Add('SELECT * FROM TBLCADDOCUMENTACAO WHERE IDCAD=''' + IntToStr(IDCad) + '''');
    ibDocumentacao.Open;

    //faz alteracao se houver registro
    if ibDocumentacao.RecordCount > 0 Then begin

      //GRAVA AS ALTERACOES NA TBL DE DOCUMENTACAO
      ibDocumentacao.Close;
      ibDocumentacao.SQL.Clear;
      ibDocumentacao.SQL.Add('UPDATE TBLCADDOCUMENTACAO SET '
      + 'CNPJ_CPF = ''' + lbl_edtCnpj_cpf.Text + ''','
      + 'CODIGO =  ''' + lbl_edtCodCliente.Text + ''','
      + 'IE_RG = ''' + lbl_edtIE_rg.Text + ''' WHERE IDCad=''' + InttoStr(IDCad) + '''');
      ibDocumentacao.ExecSQL;
      Commit(ibDocumentacao);

    end else begin//senao grava os registros

        //insere dados na tblcaddocumentacao
        ibDocumentacao.Close;
        ibDocumentacao.SQL.Clear;
        ibDocumentacao.SQL.Add('INSERT INTO TBLCADDOCUMENTACAO '
        + ' (IDCAD,CODIGO,IE_RG,CNPJ_CPF) values '
        + ' (''' + IntToStr(IDCad) + ''','
        + ' ''' + lbl_edtCodCliente.Text + ''','
        + ' ''' + lbl_edtIE_rg.Text + ''','
        + ' ''' + lbl_edtCnpj_cpf.Text + ''')');
        ibDocumentacao.ExecSQL;
        Commit(ibDocumentacao);

    end;{if}

  end;{with}

end;

procedure TfrmClientes.AlteraLogradouro;
begin
      { ((lbl_edtCep.Text = '') and (lbl_edtEndereco.Text <> '')) Or
     ((lbl_edtCep.Text = '00000-000') and (lbl_edtEndereco.Text <> ''))  }

  if lbl_edtEndereco.Text <> '' Then begin

    with dmModule do begin

      //select para trazer registro dos campos
      ibLogradouro.Close;
      ibLogradouro.SQL.Clear;
      ibLogradouro.SQL.Add('SELECT * FROM TBLLOGRADOURO WHERE IDCAD=''' + IntToStr(IDCad) + '''');
      ibLogradouro.Open;

      //faz alteracao se houver registro
      if ibLogradouro.RecordCount > 0 Then begin

        //GRAVA AS ALTERACOES NA TBL DE LOGRADOURO
        ibLogradouro.Close;
        ibLogradouro.SQL.Clear;
        ibLogradouro.SQL.Add('UPDATE TBLLOGRADOURO SET '
        + 'ENDERECO = ''' + lbl_edtEndereco.Text + ''''
        + ',BAIRRO = ''' + lbl_edtBairro.Text + ''''
        + ',CIDADE = ''' + lbl_edtCidade.Text + ''''
        + ',ESTADO = ''' + lbl_edtEstado.Text + ''' WHERE IDCad=''' + InttoStr(IDCad) + '''');
        ibLogradouro.ExecSQL;
        Commit(ibLogradouro);

      end else begin// senao houver registro grava na tabela

        ibLogradouro.Close;
        ibLogradouro.SQL.Clear;
        ibLogradouro.SQL.Add('INSERT INTO TBLLOGRADOURO '
        + ' (IDCAD,ENDERECO,BAIRRO,ESTADO,CIDADE) values '
        + ' (''' + IntToStr(IDCad) + ''',''' + lbl_edtEndereco.Text + ''',''' + lbl_edtBairro.Text + ''','
        + ' ''' + lbl_edtEstado.Text + ''','
        + ' ''' + lbl_edtCidade.Text + ''')');
        ibLogradouro.ExecSQL;
        Commit(ibLogradouro);

      end; {if}

    end; {with}

  end; {if}

end;

procedure TfrmClientes.AlteraContato;
var
DDDCom : Integer;
DDDFax : Integer;
begin
 with dmModule do begin
    //ROTINA PARA ALTERAR O TELEFONE COMERCIAL E O DDD
    if lbl_edtTelCom.Text <> '' Then begin

      if lbl_edtDDD.Text = '' Then begin
        DDDCom := 11;
      end else begin
        DDDCom := StrtoInt(lbl_edtDDD.Text);
      end;{if}

        //localiza e abre somente o cadastro de contato pela identificação do telefone coml.
        ibClassificacao.Close;
        ibClassificacao.SQL.Clear;
        ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Com''');
        ibClassificacao.Open;
        IDClassTelcom := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identiicacao do contato de telefone coml. na variavel.

        //localiza o ddd e o contato atraves da classe
        ibContato.Close;
        ibContato.SQL.Clear;
        ibContato.SQL.Add('SELECT DDD,CONTATO FROM TBLCONTATO WHERE'
        + ' (IDCAD='''+ InttoStr(IDCad) + ''') And (TIPO=''' + InttoStr(IDClassTelcom) + ''')');
        ibContato.Open;

      if ibContato.RecordCount > 0 Then begin

        //GRAVA AS ALTERACOES NA TBL DE CONTATO
        ibContato.Close;
        ibContato.SQL.Clear;
        ibContato.SQL.Add('UPDATE TBLCONTATO SET '
        + 'CONTATO =''' + lbl_edtTelCom.Text +  ''''
        + ',DDD = ''' + IntToStr(DDDCom) + ''' WHERE IDCad=''' + InttoStr(IDCad) + ''' and TIPO=''' + IntToStr(IDClassTelcom) + '''');
        ibContato.ExecSQL;
        Commit(ibContato);

      end else begin

        //inicio de rotina para gravação de contato
        //insere dados na tbl contato
        ibContato.Close;
        ibContato.SQL.Clear;
        ibContato.SQL.Add('INSERT INTO TBLCONTATO '
        + ' (IDCAD,TIPO,DDD,CONTATO) values '
        + ' (''' + IntToStr(IDCad) + ''',''' + inttostr(IDClassTelcom) + ''',''' + IntToStr(DDDCom) + ''','
        + ' ''' + lbl_edtTelcom.Text + ''')');
        ibContato.ExecSQL;
        Commit(ibContato);

      end;{if}

    end;{if}

////////////////////////////////////////////////////////////////////////////////////////////////////////////

    //ROTINA PARA ALTERAR O TELEFONE DE FAX E O DDD
    if lbl_edtTelFax.Text <> '' Then begin

      if lbl_edtDDDFax.Text = '' Then begin
        DDDFax := 11;
      end else begin
        DDDFax := StrtoInt(lbl_edtDDDFax.Text);
      end;{if}

      //localiza e abre somente o cadastro de contato pela identificação do telefone fax.
      ibClassificacao.Close;
      ibClassificacao.SQL.Clear;
      ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Fax''');
      ibClassificacao.Open;
      IDClassTelfax := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identiicacao do contato de telefone fax. na variavel.

      //localiza o ddd e o contato atraves da classe
      ibContato.Close;
      ibContato.SQL.Clear;
      ibContato.SQL.Add('SELECT DDD,CONTATO FROM TBLCONTATO WHERE'
      + ' (IDCAD='''+ InttoStr(IDCad) + ''') And (TIPO=''' + InttoStr(IDClassTelfax) + ''')');
      ibContato.Open;

      if ibContato.RecordCount > 0 Then begin

        //GRAVA AS ALTERACOES NA TBL DE CONTATO
        ibContato.Close;
        ibContato.SQL.Clear;
        ibContato.SQL.Add('UPDATE TBLCONTATO SET '
        + 'CONTATO =''' + lbl_edtTelFax.Text +  ''''
        + ',DDD = ''' + IntToStr(DDDFax) + ''' WHERE IDCad=''' + InttoStr(IDCad) + ''' and TIPO=''' + IntToStr(IDClassTelfax) + '''');
        ibContato.ExecSQL;
        Commit(ibContato);

      end else begin

        //inicio de rotina para gravação de contato
        //insere dados na tbl contato
        ibContato.Close;
        ibContato.SQL.Clear;
        ibContato.SQL.Add('INSERT INTO TBLCONTATO '
        + ' (IDCAD,TIPO,DDD,CONTATO) values '
        + ' (''' + IntToStr(IDCad) + ''',''' + inttostr(IDClassTelfax) + ''',''' + IntToStr(DDDFax) + ''','
        + ' ''' + lbl_edtTelFax.Text + ''')');
        ibContato.ExecSQL;
        Commit(ibContato);

      end;{if}

    end;{if}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////

  //ROTINA PARA ALTERAR O TELEFONE CELULAR
    if lbl_edtCelular.Text <> '' Then begin

      //localiza e abre somente o cadastro de contato pela identificação do telefone fax.
      ibClassificacao.Close;
      ibClassificacao.SQL.Clear;
      ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Cel''');
      ibClassificacao.Open;
      IDClassTelCel := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identiicacao do contato de telefone fax. na variavel.

      //localiza o ddd e o contato atraves da classe
      ibContato.Close;
      ibContato.SQL.Clear;
      ibContato.SQL.Add('SELECT DDD,CONTATO FROM TBLCONTATO WHERE'
      + ' (IDCAD='''+ InttoStr(IDCad) + ''') And (TIPO=''' + InttoStr(IDClassTelCel) + ''')');
      ibContato.Open;

      if ibContato.RecordCount > 0 Then begin

        //GRAVA AS ALTERACOES NA TBL DE CONTATO
        ibContato.Close;
        ibContato.SQL.Clear;
        ibContato.SQL.Add('UPDATE TBLCONTATO SET '
        + 'CONTATO =''' + lbl_edtCelular.Text +  ''''
        + ',DDD = ''' + IntToStr(IDClassTelCel) + ''' WHERE IDCad=''' + InttoStr(IDCad) + ''' and TIPO=''' + IntToStr(IDClassTelCel) + '''');
        ibContato.ExecSQL;
        Commit(ibContato);

      end else begin

        //inicio de rotina para gravação de contato
        //insere dados na tbl contato
        ibContato.Close;
        ibContato.SQL.Clear;
        ibContato.SQL.Add('INSERT INTO TBLCONTATO '
        + ' (IDCAD,TIPO,DDD,CONTATO) values '
        + ' (''' + IntToStr(IDCad) + ''',''' + inttostr(IDClassTelCel) + ''',''' + IntToStr(IDClassTelCel) + ''','
        + ' ''' + lbl_edtCelular.Text + ''')');
        ibContato.ExecSQL;
        Commit(ibContato);

      end;{if}

    end;{if}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////

  //ROTINA PARA ALTERAR O SITE
   { if lbl_edtSite.Text <> '' Then begin

      //localiza e abre somente o cadastro de contato pela identificação do site.
      ibClassificacao.Close;
      ibClassificacao.SQL.Clear;
      ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''WebSite''');
      ibClassificacao.Open;
      IDClassSite := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identiicacao do contato de telefone fax. na variavel.

      //localiza o ddd e o contato atraves da classe
      ibContato.Close;
      ibContato.SQL.Clear;
      ibContato.SQL.Add('SELECT DDD,CONTATO FROM TBLCONTATO WHERE'
      + ' (IDCAD='''+ InttoStr(IDCad) + ''') And (TIPO=''' + InttoStr(IDClassSite) + ''')');
      ibContato.Open;

      if ibContato.RecordCount > 0 Then begin

        //GRAVA AS ALTERACOES NA TBL DE CONTATO
        ibContato.Close;
        ibContato.SQL.Clear;
        ibContato.SQL.Add('UPDATE TBLCONTATO SET '
        + 'CONTATO =''' + lbl_edtSite.Text +  ''''
        + ',DDD = ''' + IntToStr(IDClassSite) + ''' WHERE IDCad=''' + InttoStr(IDCad) + ''' and TIPO=''' + IntToStr(IDClassSite) + '''');
        ibContato.ExecSQL;
        TRContato.Commit;
      end else begin

        //inicio de rotina para gravação de contato
        //insere dados na tbl contato
        ibContato.Close;
        ibContato.SQL.Clear;
        ibContato.SQL.Add('INSERT INTO TBLCONTATO '
        + ' (IDCAD,TIPO,DDD,CONTATO) values '
        + ' (''' + IntToStr(IDCad) + ''',''' + inttostr(IDClassSite) + ''',''' + IntToStr(IDClassSite) + ''','
        + ' ''' + lbl_edtSite.Text + ''')');
        ibContato.ExecSQL;  }

  //    end;{if}

  //  end;{if}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////

  //ROTINA PARA ALTERAR O EMAIL
    if lbl_edtEmail.Text <> '' Then begin


      //localiza o ddd e o contato atraves da classe
      ibContato.Close;
      ibContato.SQL.Clear;
      ibContato.SQL.Add('SELECT * FROM TBLCONTATO WHERE IDCAD='''+ InttoStr(IDCad) + '''');
      ibContato.Open;

      if ibContato.RecordCount > 0 Then begin

        //GRAVA AS ALTERACOES NA TBL DE CONTATO
        ibContato.Close;
        ibContato.SQL.Clear;
        ibContato.SQL.Add('UPDATE TBLCONTATO SET '
        + 'EMAIL =''' + lbl_edtEmail.Text +  ''' WHERE IDCad=''' + InttoStr(IDCad) + '''');
        ibContato.ExecSQL;
        Commit(ibContato);

      end else begin

        //inicio de rotina para gravação de contato
        //insere dados na tbl contato
        ibContato.Close;
        ibContato.SQL.Clear;
        ibContato.SQL.Add('INSERT INTO TBLCONTATO '
        + ' (IDCAD,EMAIL) values '
        + ' (''' + IntToStr(IDCad) + ''','
        + ' ''' + lbl_edtEmail.Text + ''')');
        ibContato.ExecSQL; 
        Commit(ibContato);
        
      end;{if}

    end;{if}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////

  //ROTINA PARA ALTERAR O CONTATO
  {  if lbl_edtContato.Text <> '' Then begin

     //localiza e abre somente o cadastro de contato pela identificação do contato.
      ibClassificacao.Close;
      ibClassificacao.SQL.Clear;
      ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Contato''');
      ibClassificacao.Open;
      IDClassContato := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identiicacao do contato de email. na variavel.


      //localiza o ddd e o contato atraves da classe
      ibContato.Close;
      ibContato.SQL.Clear;
      ibContato.SQL.Add('SELECT DDD,CONTATO FROM TBLCONTATO WHERE'
      + ' (IDCAD='''+ InttoStr(IDCad) + ''') And (TIPO=''' + InttoStr(IDClassContato) + ''')');
      ibContato.Open;

      if ibContato.RecordCount > 0 Then begin

        //GRAVA AS ALTERACOES NA TBL DE CONTATO
        ibContato.Close;
        ibContato.SQL.Clear;
        ibContato.SQL.Add('UPDATE TBLCONTATO SET '
        + 'CONTATO =''' + lbl_edtContato.Text +  ''''
        + ',DDD = ''' + IntToStr(IDClassContato) + ''' WHERE IDCad=''' + InttoStr(IDCad) + ''' and TIPO=''' + IntToStr(IDClassContato) + '''');
        ibContato.ExecSQL;
        TRContato.Commit;
      end else begin

        //inicio de rotina para gravação de contato
        //insere dados na tbl contato
        ibContato.Close;
        ibContato.SQL.Clear;
        ibContato.SQL.Add('INSERT INTO TBLCONTATO '
        + ' (IDCAD,TIPO,DDD,CONTATO) values '
        + ' (''' + IntToStr(IDCad) + ''',''' + inttostr(IDClassContato) + ''',''' + IntToStr(IDClassContato) + ''','
        + ' ''' + lbl_edtContato.Text + ''')');
        ibContato.ExecSQL;   }

  //    end;{if}

    end;{if}

  end;{with}


procedure TfrmClientes.ExibeDados;

var
i : Integer;
begin
  with dmModule do begin

    IDCad := ibCadastro.FieldByName('IDCAD').AsInteger; //ATRIBUI O IDCAD DO CADASTRO A VARIAVEL
  //  IDadpista := 0;//limpa a variavel

    //se tiver registro traz no campo
    if ibCadastro.RecordCount > 0  Then begin
     lbl_edtNomeRazao.Text       := ibCadastro.FieldByName('NOME').AsString;
    end else begin  //senao limpa o campo
      lbl_edtNomerazao.Clear;
    end;


////////////////////////////////////////////////////////////////////////////////


    for i:=0 to cboCondPagto.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
      if TClasseCombo( cboCondPagto.Items.Objects[i]).ID = ibCadastro.FieldByName('IDCONDPAGTO').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
        cboCondPagto.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
        Break;
      end else begin
        cboCondPagto.ClearSelection;//LIMPA A SELECAO.
      end;{if}
    end;{for}

////////////////////////////////////////////////////////////////////////////////


   { for i:=0 to cboVendedor.Items.Count -1 do begin
    if TClasseCombo( cboVendedor.Items.Objects[i]).ID = ibCadastro.FieldByName('IDVENDEDOR').AsInteger then begin
      cboVendedor.ItemIndex:= i;
      Break;
    end else begin
      cboVendedor.ClearSelection;
    end;
    end; }

////////////////////////////////////////////////////////////////////////////////

    // ROTINA PARA TRAZER OS DADOS DE CONTATO DO CLIENTE
    lbl_edtCep.Text             := FormatFloat('00000-000',ibCadastro.FieldByName('CEP').AsInteger);
    lbl_edtPontoreferencia.Text := ibCadastro.FieldByName('PONTOREFERENCIA').AsString;
    lbl_edtObs.Text             := ibCadastro.FieldByName('OBS').AsString;
    lbl_edtNumero.Text          := ibCadastro.FieldByName('NUMERO').AsString;
    lbl_edtComplemento.Text     := ibCadastro.FieldByName('COMPL').AsString;
    lbl_edtDesconto.Text        := ibCadastro.FieldByName('DESCONTO').AsString;
    lbl_edtCodCliente.Text      := IntToStr(ibCadastro.FieldByName('IDCAD').AsInteger);
    lbl_edtTelCom.Text          := ibCadastro.FieldByName('TELEFONE').AsString;
    lbl_edtCelular.Text         := ibCadastro.FieldByName('CELULAR').AsString;

    if ibCadastro.FieldByName('CLIENTEBAR').AsString = 'Sim' Then begin

      ckClienteBar.Checked := True;

    end;

    if ibCadastro.FieldByName('CLIENTEBAR').AsString = 'Nao' Then begin

      ckClienteBar.Checked := False;

    end;
  //  dtpDataCli.Date             := ibCadastro.FieldByName('DATA').AsDateTime;

   { //LOCALIZA O TELEFONE COMERCIAl
    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Com''');
    ibClassificacao.Open;
    IDClassTelcom := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identiicacao do contato de telefone coml. na variavel.

    ibContato.Close;
    ibContato.SQL.Clear;
    ibContato.SQL.Add('SELECT DDD,CONTATO FROM TBLCONTATO WHERE'
    + ' (IDCAD='''+ InttoStr(IDCad) + ''') And (TIPO=''' + InttoStr(IDClassTelcom) + ''')');
    ibContato.Open;

      //se tiver registro traz no campo
      if ibContato.RecordCount > 0 Then begin
         lbl_edtDDD.Text          := ibContato.FieldByName('DDD').AsString; //TRAZ O DDD DO TELEFONE COMERCIAL
         lbl_edtTelCom.Text       := ibContato.FieldByName('CONTATO').AsString; //TRAZ O CONTATO (TELEFONE) COMERCIAL
      // limpa os campos se nao houver registro.
      end else begin
        lbl_edtDDD.Clear;
        lbl_edtTelcom.Clear;
      end;

      //LOCALIZA O TELEFONE FAX
      ibClassificacao.Close;
      ibClassificacao.SQL.Clear;
      ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Fax''');
      ibClassificacao.Open;
      IDClassTelfax := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identiicacao do contato de telefone coml. na variavel.

      ibContato.Close;
      ibContato.SQL.Clear;
      ibContato.SQL.Add('SELECT DDD,CONTATO FROM TBLCONTATO WHERE'
      + ' (IDCAD='''+ InttoStr(IDCad) + ''') And (TIPO=''' + InttoStr(IDClassTelfax) + ''')');
      ibContato.Open;

      //se tiver registro traz no campo
      if ibContato.RecordCount > 0 Then begin
         lbl_edtDDDFax.Text       := ibContato.FieldByName('DDD').AsString; //TRAZ O DDD DO TELEFONE FAX
         lbl_edtTelFax.Text       := ibContato.FieldByName('CONTATO').AsString; //TRAZ O CONTATO (TELEFONE) FAX
       // limpa os campos se nao houver registro.
     end else begin
       lbl_edtDDDFax.Clear;
       lbl_edtTelFax.Clear;
      end;

      //LOCALIZA O TELEFONE CELULAR
      ibClassificacao.Close;
      ibClassificacao.SQL.Clear;
      ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Cel''');
      ibClassificacao.Open;
      IDClassTelCel := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identiicacao do contato de telefone celular na variavel.

      ibContato.Close;
      ibContato.SQL.Clear;
      ibContato.SQL.Add('SELECT DDD,CONTATO FROM TBLCONTATO WHERE'
      + ' (IDCAD='''+ InttoStr(IDCad) + ''') And (TIPO=''' + InttoStr(IDClassTelCel) + ''')');
      ibContato.Open;

      //se tiver registro traz no campo
      if ibContato.RecordCount > 0 Then begin
         lbl_edtCelular.Text       := ibContato.FieldByName('CONTATO').AsString; //TRAZ O CONTATO (TELEFONE) CELULAR
       // limpa os campos se nao houver registro.
      end else begin
        lbl_edtCelular.Clear;
      end;


          ibContato.Close;
          ibContato.SQL.Clear;
          ibContato.SQL.Add('SELECT * FROM TBLCONTATO WHERE IDCAD='''+ InttoStr(IDCad) + '''');
          ibContato.Open;

        //se tiver registro traz no campo
        if ibContato.RecordCount > 0 Then begin
         // lbl_edtSite.Text       := ibContato.FieldByName('SITE').AsString; //TRAZ O SITE.
           lbl_edtEmail.Text         := ibContato.FieldByName('EMAIL').AsString;
       //   lbl_edtContato.Text        := ibContato.FieldByName('NOMECONTATO').AsString;
         // limpa os campos se nao houver registro.
        end else begin
        //  lbl_edtSite.Clear;
          lbl_edtEmail.Clear;
       //   lbl_edtContato.Clear;
        end;}


          //LOCALIZA O SITE DO CLIENTE
       {   ibClassificacao.Close;
          ibClassificacao.SQL.Clear;
          ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''WebSite''');
          ibClassificacao.Open;
          IDClassSite := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identiicacao do site na variavel.

          ibContato.Close;
          ibContato.SQL.Clear;
          ibContato.SQL.Add('SELECT DDD,CONTATO FROM TBLCONTATO WHERE'
          + ' (IDCAD='''+ InttoStr(IDCad) + ''') And (TIPO=''' + InttoStr(IDClassSite) + ''')');
          ibContato.Open;  }

        //se tiver registro traz no campo
      {  if ibContato.RecordCount > 0 Then begin
           lbl_edtSite.Text       := ibContato.FieldByName('CONTATO').AsString; //TRAZ O SITE.
         // limpa os campos se nao houver registro.
        end else begin
          lbl_edtSite.Clear;
        end; }

        //LOCALIZA O EMAIL DO CLIENTE
      {  ibClassificacao.Close;
        ibClassificacao.SQL.Clear;
        ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Email''');
        ibClassificacao.Open;
        IDClassEmail := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identificacao do email na variavel.

        ibContato.Close;
        ibContato.SQL.Clear;
        ibContato.SQL.Add('SELECT DDD,CONTATO FROM TBLCONTATO WHERE'
        + ' (IDCAD='''+ IntToStr(IDCad) + ''') And (Tipo=''' + IntToStr(IDClassEmail) + ''')');
        ibContato.Open;}

      //se tiver registro traz no campo
  {    if ibContato.RecordCount > 0 Then begin
        lbl_edtEmail.Text         := ibContato.FieldByName('CONTATO').AsString;//TRAZ O EMAIL.
      // limpa os campos se nao houver registro.
      end else begin
        lbl_edtEmail.Clear;
      end;  }


       // LOCALIZA O CONTATO DO CLIENTE.
        {ibClassificacao.Close;
        ibClassificacao.SQL.Clear;
        ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Contato''');
        ibClassificacao.Open;
        IDClassContato := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identiicacao do site na variavel.

        ibContato.Close;
        ibContato.SQL.Clear;
        ibContato.SQL.Add('SELECT DDD,CONTATO FROM TBLCONTATO WHERE'
        + ' (IDCAD=''' + IntToStr(IDCad) + ''') And (Tipo=''' + IntToStr(IDClassContato) + ''')');
        ibContato.Open; }

      //se tiver registro traz no campo
    {  if ibContato.RecordCount > 0 Then begin
        lbl_edtContato.Text        := ibContato.FieldByName('CONTATO').AsString;//TRAZ O CONTATO.
      // limpa os campos se nao houver registro.
      end else begin
        lbl_edtContato.Clear;
     end; }

       //LOCALIZA OS DADOS DA TBLCADDOCUMENTACAO DO CLIENTE.
        ibDocumentacao.Close;
        ibDocumentacao.SQL.Clear;
        ibDocumentacao.SQL.Add('SELECT IE_RG,CODIGO,CNPJ_CPF FROM TBLCADDOCUMENTACAO WHERE'
        + ' IDCAD=''' + IntToStr(IDCad) + '''');
        ibDocumentacao.Open;


      //se tiver registro traz no campo
      if ibDocumentacao.RecordCount > 0 Then begin

      lbl_edtIE_rg.Text            := ibDocumentacao.FieldByName('IE_RG').AsString;//TRAZ A IE OU  O RG DO CLIENTE.
      lbl_edtCnpj_cpf.Text         := ibDocumentacao.FieldByName('CNPJ_CPF').AsString;//TRAZ O CNPJ DO CLIENTE.
    ///  lbl_edtCodCliente.Text       := ibDocumentacao.FieldByName('CODIGO').AsString;

      //  lbl_edtNomeusual.Text        := ibDocumentacao.FieldByName('NOMEFANTASIA').AsString;//TRAZ O NOME FANTASIA.

       //SE FOR PESSOA FISICA ELE EXIBE E OS DADOS NOS CAMPOS
    {    if ibDocumentacao.FieldByName('TIPOPESSOA').AsInteger = 1  Then begin
         rdgrTipodecliente.ItemIndex := 0;
         lbl_edtCnpj_cpf.Text := '&CPF';
         lbl_edtIE_rg.Text := '&RG';

         lbl_edtIE_rg.Text            := ibDocumentacao.FieldByName('IE_RG').AsString;//TRAZ A IE OU  O RG DO CLIENTE.

       //SE FOR PESSOA JURIDICA ELE EXIBE E OS DADOS NOS CAMPOS
       end else if ibDocumentacao.FieldByName('TIPOPESSOA').AsInteger = 2 Then begin
         rdgrTipodecliente.ItemIndex := 1;
         lbl_edtCnpj_cpf.Text := '&CNPJ';
         lbl_edtIE_rg.Text := '&IE';
         lbl_edtCnpj_cpf.Text         := ibDocumentacao.FieldByName('CNPJ_CPF').AsString;//TRAZ O CNPJ DO CLIENTE.
         lbl_edtIE_rg.Text            := ibDocumentacao.FieldByName('IE_RG').AsString;//TRAZ A IE OU  O RG DO CLIENTE.
         lbl_edtCodCliente.Text       := ibDocumentacao.FieldByName('CODIGO').AsString;
       end;  }


      // limpa os campos se nao houver registro.
      end else begin
      //  lbl_edtNomeusual.Clear;
        lbl_edtCnpj_cpf.Clear;
        lbl_edtIE_rg.Clear;
      end;

        // se o cep da tbl cadastro for diferente de branco
      {  if ibCadastro.FieldByName('CEP').AsInteger <> 0 Then begin

          CEPTemp := StringReplace(lbl_edtCep.Text,'-','',[rfReplaceAll]);//atribui o traco na variavel cep

          ibTempCep := TIBQuery.Create(Self); //CRIA O COMPONENTE NO FORMULARIO ATUAL

        with ibTempCep do begin

          //faz select da tbl cep atraves do componente criado
          ibTempCep.Database := IBDCep;
          ibTempCep.SQL.Clear;
          ibTempCep.SQL.Add('SELECT LOCAL,BAIRRO,CIDADE,UF,CEP FROM TBLCEP WHERE CEP=''' + CEPTemp + '''');
          ibTempCep.Open;   }

      //  end;{with}
          //traz os dados da tbl no campo.
        {  lbl_edtEndereco.Text := ibTempCep.FieldByName('LOCAL').AsString;
          lbl_edtBairro.Text   := ibTempCep.FieldByName('BAIRRO').AsString;
          lbl_edtCidade.Text   := ibTempCep.FieldByName('CIDADE').AsString;
          lbl_edtEstado.Text   := ibTempCep.FieldByName('UF').AsString;
          lbl_edtCep.Text      := FormatFloat('00000-000',ibTempCep.FieldByName('CEP').AsInteger);

        end else begin  }

        //LOCALIZA OS DADOS DA TBLLOGRADOURO DO CLIENTE.
        ibLogradouro.Close;
        ibLogradouro.SQL.Clear;
        ibLogradouro.SQL.Add('SELECT ENDERECO,BAIRRO,CIDADE,ESTADO FROM TBLLOGRADOURO WHERE'
        + ' IDCAD=''' + IntToStr(IDCad) + '''');
        ibLogradouro.Open;

         //se tiver registro traz no campo
        if ibLogradouro.RecordCount > 0 Then begin
          lbl_edtEndereco.Text        := ibLogradouro.FieldByName('ENDERECO').AsString;//TRAZ O ENDERECO.
          lbl_edtBairro.Text          := ibLogradouro.FieldByName('BAIRRO').AsString;//TRAZ O BAIRRO.
          lbl_edtCidade.Text          := ibLogradouro.FieldByName('CIDADE').AsString;//TRAZ A CIDADE.
          lbl_edtEstado.Text          := ibLogradouro.FieldByName('ESTADO').AsString;//TRAZ O ESTADO.
        //limpa os campos se nao houver registro.
        end else begin
          lbl_edtEndereco.Clear;
          lbl_edtBairro.Clear;
          lbl_edtCidade.Text := 'SAO PAULO';
          lbl_edtEstado.Text := 'SP';
        end;

    // end;


  end;

end;


procedure TfrmClientes.ExecSELECT;


begin

  with dmModule do begin

    //SE FOR VERDADEIRO OU SEJA SE ESTIVER NA PRIMEIRA PAGINA ABRE O CADASTRO DE CLIENTE.
    //  if pcCadastrodeclientes.ActivePage.TabIndex = 0 Then begin

        ibClassificacao.Close;
        ibClassificacao.SQL.Clear;
        ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
        ibClassificacao.Open;
        IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO CLIENTE NA VARIAVEL.

        //LOCALIZA O TELEFONE COMERCIAl
       {  ibClassificacao.Close;
        ibClassificacao.SQL.Clear;
        ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Com''');
        ibClassificacao.Open;
        IDClassTelcom := ibClassificacao.FieldByName('IDCLASS').AsInteger;}//atribui a identiicacao do contato de telefone coml. na variavel.


        //BUSCA TODOS OS CLIENTES QUE ESTEJAM NA CLASSIFICAÇÃO DE CLIENTES
        Commit(ibCadastro);
        ibCadastro.Close;
        ibCadastro.SQL.Clear;
        ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,'
        + ' TBLLOGRADOURO.ENDERECO,TBLLOGRADOURO.BAIRRO FROM TBLCADASTRO '
      //  + ' INNER JOIN TBLCONTATO ON TBLCADASTRO.IDCAD = TBLCONTATO.IDCAD 'TBLCONTATO.CONTATO,
        + ' LEFT OUTER JOIN TBLLOGRADOURO ON TBLCADASTRO.IDCAD=TBLLOGRADOURO.IDCAD '
       /// + ' INNER JOIN TBLCADDOCUMENTACAO ON TBLCADASTRO.IDCAD = TBLCADDOCUMENTACAO.IDCAD '
        + ' WHERE TBLCADASTRO.idclass=''' + InttoStr(IDClass) + '''ORDER BY TBLCADASTRO.IDCAD DESC');
        ibCadastro.Open;      //and (TBLCONTATO.TIPO=''' + IntToStr(IDClassTelcom) + '''or TBLCONTATO.TIPO is null)


  end; {with}

end;

procedure TfrmClientes.ExecSELECTVendedor;

//var

//IDClassVendedor : TClasseCombo;

begin

 { with dmModule do begin

  Commit(ibUser);
  ibUser.Close;
  ibUser.SQL.Clear;
  ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE TIPOUSUARIO=''Vendedor''');
  ibUser.Open;

  cboVendedor.Clear;

    while not ibUser.Eof do begin

      IDClassVendedor := TClasseCombo.Create;
      IDClassVendedor.ID := ibUser.FieldByName('IDUSER').AsInteger;
      cboVendedor.Items.AddObject(ibUser.FieldByName('NOME').AsString,IDClassVendedor);
      ibUser.Next;

    end;//while

  end;//with }

end;

procedure TfrmClientes.ExecSELECTTipoVenda;

begin

{  with dmModule do begin

    ibTipoVenda.Close;
    ibTipoVenda.SQL.Clear;
    ibTipoVenda.SQL.Add('SELECT * FROM TBLTIPOVENDA');
    ibTipoVenda.Open;

    cboTipoVenda.Clear;

    while not ibTipoVenda.Eof do begin

      ClassTipoVenda := TClasseCombo.Create;
      ClassTipoVenda.ID := ibTipoVenda.FieldByName('IDTIPOVENDA').AsInteger;
      cboTipoVenda.Items.AddObject(ibTipoVenda.FieldByName('TIPOVENDA').AsString,ClassTipoVenda);
      ibTipoVenda.Next;  }
      
 //   end;{while}

//  end;{with}

end;

procedure TfrmClientes.ibeaSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmClientes.FormShow(Sender: TObject);
begin

    lbl_edtTotal.Text        := '0,00';
    lbl_edtTotalPendente.Text := '0,00';

  //acerta a data
  dtpDataCli.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
  dtpDataIni.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
  dtpDataFinal.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));

  ibeaNovo.Caption := '&Novo';

  ckVendasRestaurante.Checked := false;
  //abre sempre na pagina principal
  pcCadastrodeclientes.ActivePageIndex := 0;
  pcHistoricoVendas.ActivePageIndex := 0;
  DesabilitaCamposCli(False);
  LimpaCampo;
  lbl_edtPesqNumero.Clear;
  
  with dmModule do begin

    with ConfigSiS do begin

      ConfigSiS := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Data\RunTime\sis.ini'); //Cria o vinculo com o Arquivo ini

        with dmModule do begin

          frmBuscaCep.Caption := ReadString('ConfigSiS','Titulo','');
          dmModule.IBDCep.DatabaseName := ReadString('ConfigSiS','BcoCep','') + '\TBLCEP.fdb'; //Faz a leitura de uma String na seção do arquivo ini
          dmModule.IBDCep.Connected := True; //Manda Conectar o Banco de Dados

        end;

      end;

 //   AlteraCep := False;//variavel para atribuir vlr boleano no cep
//    AlteraEnd := False;//variavel para atribuir vlr boleano no cep

     ExecSELECT;
     ExecSELECTVendedor;
     ExecSELECTCondPagto;
     
    //Adiciona as Colunas com os dados do Clientes
    with dbgClientes do begin

      // monta as colunas abaixo se for verdadeiro
      if MontaColunas Then begin

         DataSource := dmModule.dtsCadastro;

        //determina as colunas a serem montadas 0 codigo cliente, 1 razao Social, 2 endereço numero...
        Columns.Insert(0);
        Columns.Insert(1);
        Columns.Insert(2);
        Columns.Insert(3);
        Columns.Insert(4);
        Columns.Insert(5);
        Columns.Insert(6);

        //Parametros da Coluna que exibe o Código do Cadastro
        Columns.Items[0].Title.Caption := 'Código';
        Columns.Items[0].FieldName     := 'IDCAD';
        Columns.Items[0].Width         := 77;
        Columns.Items[0].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o Nome do cliente.
        Columns.Items[1].Title.Caption := 'Nome';
        Columns.Items[1].FieldName     := 'NOME';
        Columns.Items[1].Width         := 200;
        Columns.Items[1].Alignment     := taLeftJustify;

        // Parametros que exibe o nome fantasia do cliente
      {  Columns.Items[2].Title.Caption := 'Nome Fantasia';
        Columns.Items[2].FieldName     := 'NomeFantasia';
        Columns.Items[2].Width         := 220; }

        // Parametros que exibe o numero do cliente
        Columns.Items[2].Title.Caption := 'Endereço';
        Columns.Items[2].FieldName     := 'ENDERECO';
        Columns.Items[2].Width         := 230;
        Columns.Items[2].Alignment     := taLeftJustify;

        // Parametros que exibe o numero do cliente
        Columns.Items[3].Title.Caption := 'Número';
        Columns.Items[3].FieldName     := 'NUMERO';
        Columns.Items[3].Width         := 50;
        Columns.Items[3].Alignment     := taLeftJustify;

       // Parametros que exibe o compl. do cliente
        Columns.Items[4].Title.Caption := 'Telefone';
        Columns.Items[4].FieldName     := 'TELEFONE';
        Columns.Items[4].Width         := 83;
        Columns.Items[4].Alignment     := taLeftJustify;

       // Parametros que exibe o compl. do cliente
        Columns.Items[5].Title.Caption := 'Celular';
        Columns.Items[5].FieldName     := 'CELULAR';
        Columns.Items[5].Width         := 83;
        Columns.Items[5].Alignment     := taLeftJustify;


       // Parametros que exibe o compl. do cliente
        Columns.Items[6].Title.Caption := 'Data Cadastro';
        Columns.Items[6].FieldName     := 'DATA';
        Columns.Items[6].Width         := 83;
        Columns.Items[6].Alignment     := taLeftJustify;

        MontaColunas := False;

      end; {if}

    end; {with do db grid}

////////////////////////////////////////////////////////////////////////////////

    with dbgHistorico do begin

      // monta as colunas abaixo se for verdadeiro
      if MontaColHist Then begin

         DataSource := dmModule.dtsConsultaVendas;

        //determina as colunas a serem montadas 0 codigo cliente, 1 razao Social, 2 endereço numero...
        Columns.Insert(0);
        Columns.Insert(1);
        Columns.Insert(2);
        Columns.Insert(3);
        Columns.Insert(4);
        Columns.Insert(5);
        Columns.Insert(6);
        Columns.Insert(7);
        Columns.Insert(8);

        //Parametros da Coluna que exibe o Nome do cliente.
        Columns.Items[0].Title.Caption := 'NºCupom';
        Columns.Items[0].FieldName     := 'IDSERVSVENDA';
        Columns.Items[0].Width         := 70;
        Columns.Items[0].Alignment     := taLeftJustify;

        Columns.Items[1].Title.Caption := 'Produto';
        Columns.Items[1].FieldName     := 'Produto';
        Columns.Items[1].Width         := 250;
        Columns.Items[1].Alignment     := taLeftJustify;

        Columns.Items[2].Title.Caption := 'Obs.:';
        Columns.Items[2].FieldName     := 'OBS';
        Columns.Items[2].Width         := 150;
        Columns.Items[2].Alignment     := taLeftJustify;

        // Parametros que exibe o numero do cliente
        Columns.Items[3].Title.Caption := 'Valor Venda';
        Columns.Items[3].FieldName     := 'VLRUNIT';
        Columns.Items[3].Width         := 83;
        Columns.Items[3].Alignment     := taLeftJustify;



        //Parametros da Coluna que exibe o Nome do cliente.
        Columns.Items[4].Title.Caption := 'Qtde';
        Columns.Items[4].FieldName     := 'QTDE';
        Columns.Items[4].Width         := 28;
        Columns.Items[4].Alignment     := taLeftJustify;


        //Parametros da Coluna que exibe o Nome do cliente.
        Columns.Items[5].Title.Caption := 'Total';
        Columns.Items[5].FieldName     := 'VLRTOTAL';
        Columns.Items[5].Width         := 77;
        Columns.Items[5].Alignment     := taLeftJustify;



        //Parametros da Coluna que exibe o Nome do cliente.
        Columns.Items[6].Title.Caption := 'Taxa';
        Columns.Items[6].FieldName     := 'ACRESCIMO';
        Columns.Items[6].Width         := 78;
        Columns.Items[6].Alignment     := taLeftJustify;


        //Parametros da Coluna que exibe o Nome do cliente.
       { Columns.Items[5].Title.Caption := 'Vlr.Pendente';
        Columns.Items[5].FieldName     := 'VLRPENDENTE';
        Columns.Items[5].Width         := 78;
        Columns.Items[5].Alignment     := taLeftJustify; }


       // Parametros que exibe o compl. do cliente
        Columns.Items[7].Title.Caption := 'Data da Compra';
        Columns.Items[7].FieldName     := 'DATA';
        Columns.Items[7].Width         := 82;
        Columns.Items[7].Alignment     := taLeftJustify;


       // Parametros que exibe o compl. do cliente
        Columns.Items[8].Title.Caption := 'Situação';
        Columns.Items[8].FieldName     := 'PENDENTEPAGO';
        Columns.Items[8].Width         := 80;
        Columns.Items[8].Alignment     := taLeftJustify;



       // Parametros que exibe o compl. do cliente
    {    Columns.Items[5].Title.Caption := 'Vlr.Pagto';
        Columns.Items[5].FieldName     := 'PAGTOPARCIAL';
        Columns.Items[5].Width         := 58;
        Columns.Items[5].Alignment     := taLeftJustify;

       // Parametros que exibe o compl. do cliente
        Columns.Items[6].Title.Caption := 'Data Pagto';
        Columns.Items[6].FieldName     := 'DATAPAGTOPENDENTE';
        Columns.Items[6].Width         := 58;
        Columns.Items[6].Alignment     := taLeftJustify;

       // Parametros que exibe o compl. do cliente
        Columns.Items[7].Title.Caption := 'Ocorrência';
        Columns.Items[7].FieldName     := 'TIPOVENDA';
        Columns.Items[7].Width         := 70;
        Columns.Items[7].Alignment     := taLeftJustify; }


        MontaColHist := False;

      end; {if}

    end; {with do db grid}

////////////////////////////////////////////////////////////////////////////////

    with dbgPagamentoEfetuado do begin

      // monta as colunas abaixo se for verdadeiro
      if MontaColPagtoEfetuado Then begin

         DataSource := dmModule.dtsPagtoPendente;

        //determina as colunas a serem montadas 0 codigo cliente, 1 razao Social, 2 endereço numero...
        Columns.Insert(0);
        Columns.Insert(1);
        Columns.Insert(2);

        //Parametros da Coluna que exibe o Nome do cliente.
        Columns.Items[0].Title.Caption := 'Data';
        Columns.Items[0].FieldName     := 'DATAPAGTO';
        Columns.Items[0].Width         := 75;
        Columns.Items[0].Alignment     := taLeftJustify;


        // Parametros que exibe o numero do cliente
        Columns.Items[1].Title.Caption := 'Valor Pago';
        Columns.Items[1].FieldName     := 'VLRPAGO';
        Columns.Items[1].Width         := 83;
        Columns.Items[1].Alignment     := taLeftJustify;

        // Parametros que exibe o numero do cliente
        Columns.Items[2].Title.Caption := 'Cupom';
        Columns.Items[2].FieldName     := 'NCUPOM';
        Columns.Items[2].Width         := 83;
        Columns.Items[2].Alignment     := taLeftJustify;

        MontaColPagtoEfetuado := False;

      end; {if}

    end; {with do db grid}

////////////////////////////////////////////////////////////////////////////////

    with dbgVendasRestaurante do begin

      // monta as colunas abaixo se for verdadeiro
      if MontaColHistRestaurante Then begin

         DataSource := dmModule.dtsRestaurante;

        //determina as colunas a serem montadas 0 codigo cliente, 1 razao Social, 2 endereço numero...
        Columns.Insert(0);
        Columns.Insert(1);
        Columns.Insert(2);
        Columns.Insert(3);

        //Parametros da Coluna que exibe o Nome do cliente.
        Columns.Items[0].Title.Caption := 'Data';
        Columns.Items[0].FieldName     := 'DATA';
        Columns.Items[0].Width         := 75;
        Columns.Items[0].Alignment     := taLeftJustify;


        // Parametros que exibe o numero do cliente
        Columns.Items[1].Title.Caption := 'Valor Unitário';
        Columns.Items[1].FieldName     := 'VLRUNIT';
        Columns.Items[1].Width         := 83;
        Columns.Items[1].Alignment     := taLeftJustify;

        // Parametros que exibe o numero do cliente
        Columns.Items[2].Title.Caption := 'Qtde';
        Columns.Items[2].FieldName     := 'QTDE';
        Columns.Items[2].Width         := 83;
        Columns.Items[2].Alignment     := taLeftJustify;

        // Parametros que exibe o numero do cliente
        Columns.Items[3].Title.Caption := 'Total';
        Columns.Items[3].FieldName     := 'VLRTOTAL';
        Columns.Items[3].Width         := 83;
        Columns.Items[3].Alignment     := taLeftJustify;

        MontaColHistRestaurante := False;

      end; {if}

    end; {with do db grid}
////////////////////////////////////////////////////////////////////////////////    
  end;{with}

end;

procedure TfrmClientes.ibeaNovoClick(Sender: TObject);

var

StringGravaVendedor, ClienteBar : String;
ClassGravaVendedor : TClasseCombo;

begin
  with dmModule do begin

    //rotina para cancelar ou nao a operacao

    if ibeaAlterar.Caption = '&Atualizar' Then begin

    ConfirmaMSG := Application.MessageBox('Deseja cancelar esta operação?'
              + #13 + 'Clique em Sim para cancelar e Não para continuar.','Notificação: Cancelar Operação', MB_YESNO + MB_ICONQUESTION);

      if ConfirmaMSG = 6 Then begin

        //RESTAURAR OS CAMPOS
        ibeaAlterar.Caption := '&Alterar';
        ibeaNovo.Enabled := True;
        ibeaNovo.Caption := '&Novo';
        ibeaExcluir.Enabled := True;
        DesabilitaCamposCli(False);
    //    lbl_edtCodCliente.Clear;
        LimpaCampo;


      end;{if}

    end else begin


////////////////////////////////////////////////////////////////////////////////


    if ibeaNovo.Caption = '&Gravar' Then begin




      if lbl_edtCep.Text = '' Then begin  //atribui  vlr 0 a variavel cep
        Cep := 0;
      end else begin // caso esteja em branco atribui o vlr do campo na variavel cep
        Cep := strtoint( StringReplace(lbl_edtCep.Text,'-','',[rfReplaceAll]) );
      end;

       if lbl_edtCodCliente.Text = '' Then begin
         Application.MessageBox('Por Favor Digite o cógido do Cliente','Notificação: Código não especificado', MB_YESNO + MB_ICONERROR);
       end else begin

      If cboCondPagto.ItemIndex = -1 Then begin

        StringGravaCondPagto          := ' '' 0 '',';

      end else begin

        IDClassGravaCondPagto   := TClasseCombo( cboCondPagto.Items.Objects[cboCondPagto.ItemIndex] );
        StringGravaCondPagto          := ' ''' + InttoStr( IDClassGravaCondPagto.ID ) + ''',';

      end;


      if ckClienteBar.Checked Then begin

        ClienteBar := 'Sim';

      end else begin

        ClienteBar := 'Nao';

      end;

      //insere na tabela os dados digitados nos campos determinados abaixo.
      ibCadastro.Close;
      ibCadastro.SQL.Clear;
      ibCadastro.SQL.Add('INSERT INTO TBLCADASTRO '
      + ' (IDCLASS,NOME,NUMERO,COMPL,PONTOREFERENCIA,OBS,DATA,IDCONDPAGTO,'
      + 'TELEFONE,CELULAR,DESCONTO,CLIENTEBAR,ENDERECO,BAIRRO,CIDADE,ESTADO,CEP) values '
      + ' (''' + IntToStr(IDClass) + ''',''' + lbl_edtNomerazao.Text + ''','
      + ' ''' + lbl_edtNumero.Text + ''',''' + lbl_edtComplemento.Text + ''','
      + ' ''' + lbl_edtPontoreferencia.Text + ''',''' + lbl_edtObs.Text + ''','
      + ' ''' + FormatDateTime('mm-dd-yyyy', dtpDataCli.Date) + ''','
      + StringGravaCondPagto
      + ' ''' + lbl_edtTelCom.Text + ''','
      + ' ''' + lbl_edtCelular.Text + ''','
      + ' ''' + lbl_edtDesconto.Text + ''','
      + ' ''' + ClienteBar + ''','
      + ' ''' + lbl_edtEndereco.Text + ''','
      + ' ''' + lbl_edtBairro.Text + ''','
      + ' ''' + lbl_edtCidade.Text + ''','
      + ' ''' + lbl_edtEstado.Text + ''','
      + ' ''' + IntToStr(Cep) + ''')');
      ibCadastro.ExecSQL;
      Commit(ibCadastro);


      //select para trazer o nome do cliente no campo abaixo atraves do id
     { ibCadastro.Close;
      ibCadastro.SQL.Clear;
      ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO '
     { TBLCADASTRO.IDCAD,TBLCADDOCUMENTACAO.CODIGO '
      + 'FROM TBLCADASTRO '
      + 'INNER JOIN TBLCADDOCUMENTACAO ON TBLCADASTRO.IDCAD=TBLCADDOCUMENTACAO.IDCAD '}
    //  + 'WHERE TBLCADASTRO.NOME=''' + lbl_edtNomerazao.Text + '''ORDER BY IDCAD DESC');// and TBLCADDOCUMENTACAO.CODIGO=''' + lbl_edtCodCliente.Text + '''');
     { ibCadastro.Open;
      IDCadnovo := (ibCadastro.FieldByName('IDCAD').AsInteger);}//atribui o id do nome a variavel.


      //grava dados na tbllogradouro se cep nao for preenchido
    {  if ((lbl_edtCep.Text = '') and (lbl_edtEndereco.Text <> '')) Or
         ((lbl_edtCep.Text = '00000-000') and (lbl_edtEndereco.Text <> ''))  Then begin   }

        if lbl_edtEndereco.Text <> '' Then begin

          //select para trazer o nome do cliente no campo abaixo atraves do id
          ibCadastro.Close;                                    //WHERE NOME=''' + lbl_edtNomerazao.Text + '''');
          ibCadastro.SQL.Clear;
          ibCadastro.SQL.Add('SELECT IDCAD FROM TBLCADASTRO ORDER BY TBLCADASTRO.IDCAD DESC');
          ibCadastro.Open;

          IDCadnovo := ibCadastro.FieldByName('IDCAD').AsInteger;//atribui o id do nome a variavel.

          ibLogradouro.Close;
          ibLogradouro.SQL.Clear;
          ibLogradouro.SQL.Add('INSERT INTO TBLLOGRADOURO '
          + ' (IDCAD,ENDERECO,BAIRRO,ESTADO,CIDADE) values '
          + ' (''' + IntToStr(IDCadnovo) + ''',''' + lbl_edtEndereco.Text + ''',''' + lbl_edtBairro.Text + ''','
          + ' ''' + lbl_edtEstado.Text + ''','
          + ' ''' + lbl_edtCidade.Text + ''')');
          ibLogradouro.ExecSQL;
          Commit(ibLogradouro);

        end;

        if lbl_edtTelcom.Text <> '' Then begin

        //select para trazer o nome do cliente no campo abaixo atraves do id
        ibCadastro.Close;                                    //WHERE NOME=''' + lbl_edtNomerazao.Text + '''');
        ibCadastro.SQL.Clear;
        ibCadastro.SQL.Add('SELECT IDCAD FROM TBLCADASTRO ORDER BY TBLCADASTRO.IDCAD DESC');
        ibCadastro.Open;


        IDCadnovo := ibCadastro.FieldByName('IDCAD').AsInteger;//atribui o id do nome a variavel.

          //inicio de rotina para gravação de contato
          //localiza e abre somente o cadastro de contato pela identificação do telefone coml.
         ibClassificacao.Close;
         ibClassificacao.SQL.Clear;
         ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Com''');
         ibClassificacao.Open;
         IDClassTelcom := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identiicacao do contato de telefone coml. na variavel.

          //insere dados na tbl contato
         ibContato.Close;
         ibContato.SQL.Clear;
         ibContato.SQL.Add('INSERT INTO TBLCONTATO '
         + ' (IDCAD,TIPO,DDD,CONTATO) values '
         + ' (''' + IntToStr(IDCadnovo) + ''',''' + inttostr(IDClassTelcom) + ''',''' + lbl_edtDDD.Text + ''','
         + ' ''' + lbl_edtTelcom.Text + ''')');
         ibContato.ExecSQL;
         Commit(ibContato);

       end;


       if lbl_edtTelFax.Text <> '' Then begin

          //select para trazer o nome do cliente no campo abaixo atraves do id
          ibCadastro.Close;                                    //WHERE NOME=''' + lbl_edtNomerazao.Text + '''');
          ibCadastro.SQL.Clear;
          ibCadastro.SQL.Add('SELECT IDCAD FROM TBLCADASTRO ORDER BY TBLCADASTRO.IDCAD DESC');
          ibCadastro.Open;


          IDCadnovo := ibCadastro.FieldByName('IDCAD').AsInteger;//atribui o id do nome a variavel.

          //inicio de rotina para gravação de contato
          //localiza e abre somente o cadastro de contato pela identificação do fax.
         ibClassificacao.Close;
         ibClassificacao.SQL.Clear;
         ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Fax''');
         ibClassificacao.Open;
         IDClassTelfax := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identificacao do contato de fax na variavel.
                 //insere dados na tbl contato
         ibContato.Close;
         ibContato.SQL.Clear;
         ibContato.SQL.Add('INSERT INTO TBLCONTATO '
         + ' (IDCAD,TIPO,DDD,CONTATO) values '
         + ' (''' + IntToStr(IDCadnovo) + ''',''' + inttostr(IDClassTelfax) + ''',''' + lbl_edtDDDFax.Text + ''','
         + ' ''' + lbl_edtTelFax.Text + ''')');
         ibContato.ExecSQL;
         Commit(ibContato);

       end;

       if lbl_edtCelular.Text <> '' Then begin

        //select para trazer o nome do cliente no campo abaixo atraves do id
        ibCadastro.Close;                                    //WHERE NOME=''' + lbl_edtNomerazao.Text + '''');
        ibCadastro.SQL.Clear;
        ibCadastro.SQL.Add('SELECT IDCAD FROM TBLCADASTRO ORDER BY TBLCADASTRO.IDCAD DESC');
        ibCadastro.Open;


        IDCadnovo := ibCadastro.FieldByName('IDCAD').AsInteger;//atribui o id do nome a variavel.

        //inicio de rotina para gravação de contato
        //localiza e abre somente o cadastro de contato pela identificação do celular.
         ibClassificacao.Close;
         ibClassificacao.SQL.Clear;
         ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Cel''');
         ibClassificacao.Open;
         IDClassTelCel := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identificacao do contato de celular na variavel.

        //insere dados na tbl contato
         ibContato.Close;
         ibContato.SQL.Clear;
         ibContato.SQL.Add('INSERT INTO TBLCONTATO '
         + ' (IDCAD,TIPO,CONTATO) values '
         + ' (''' + IntToStr(IDCadnovo) + ''',''' + inttostr(IDClassTelCel) + ''','
         + ' ''' + lbl_edtCelular.Text + ''')');
         ibContato.ExecSQL;
         Commit(ibContato);

       end;


       if lbl_edtEmail.Text <> '' Then begin

        //select para trazer o nome do cliente no campo abaixo atraves do id
        ibCadastro.Close;                                    //WHERE NOME=''' + lbl_edtNomerazao.Text + '''');
        ibCadastro.SQL.Clear;
        ibCadastro.SQL.Add('SELECT IDCAD FROM TBLCADASTRO ORDER BY TBLCADASTRO.IDCAD DESC');
        ibCadastro.Open;

        IDCadnovo := ibCadastro.FieldByName('IDCAD').AsInteger;//atribui o id do nome a variavel.

        //insere dados na tbl contato
        ibContato.Close;
        ibContato.SQL.Clear;
        ibContato.SQL.Add('INSERT INTO TBLCONTATO '
        + '(IDCAD,EMAIL) values '
        + '(''' + IntToStr(IDCadnovo) + ''','
        + ' ''' + lbl_edtEmail.Text + ''')');
        ibContato.ExecSQL;
        Commit(ibContato);

      end;


        //insere dados na tblcaddocumentacao

        if lbl_edtCodCliente.Text > '0' Then begin

          ibCadastro.Close;                                    //WHERE NOME=''' + lbl_edtNomerazao.Text + '''');
          ibCadastro.SQL.Clear;
          ibCadastro.SQL.Add('SELECT IDCAD FROM TBLCADASTRO ORDER BY TBLCADASTRO.IDCAD DESC');
          ibCadastro.Open;

          IDCadnovo := ibCadastro.FieldByName('IDCAD').AsInteger;//atribui o id do nome a variavel.

          ibDocumentacao.Close;
          ibDocumentacao.SQL.Clear;
          ibDocumentacao.SQL.Add('INSERT INTO TBLCADDOCUMENTACAO '
          + ' (IDCAD,CODIGO,CNPJ_CPF,IE_RG) values '
          + ' (''' + IntToStr(IDCadnovo) + ''','
          + ' ''' + lbl_edtCodCliente.Text + ''','
          + ' ''' + lbl_edtCnpj_cpf.Text + ''',''' + lbl_edtIE_rg.Text + ''')');
          ibDocumentacao.ExecSQL;
          Commit(ibDocumentacao);

        end;

         ExecSELECT;
        // apos gravar na tabela os campos acima volta o titulo novo pro botao e limpa os campos
        ibeaNovo.Caption := '&Novo';
        ibeaAlterar.Enabled := True;
        ibeaExcluir.Enabled := True;
        DesabilitaCamposCli(False);

       end;{if condicao do codigo cliente}

      end else begin

        ibeaNovo.Caption := '&Gravar';

        DesabilitaCamposCli(True);
        LimpaCampo;

        lbl_edtCodCliente.SetFocus;
        lbl_edtCep.Text := '0';
        lbl_edtCep.Text := FormatFloat('00000-000',StrToFloat(lbl_edtCep.Text));

      //select para trazer o nome do cliente no campo abaixo atraves do id
        ibCadastro.Close;                                    //WHERE NOME=''' + lbl_edtNomerazao.Text + '''');
        ibCadastro.SQL.Clear;
        ibCadastro.SQL.Add('SELECT IDCAD FROM TBLCADASTRO ORDER BY TBLCADASTRO.IDCAD DESC');
        ibCadastro.Open;

        lbl_edtCodCliente.Text := IntToStr(ibCadastro.FieldByName('IDCAD').AsInteger + 1);

        ExecSELECT;

        lbl_edtNomerazao.SetFocus;

      end;

    end;{if}

  end;{with}

end;

procedure TfrmClientes.FormCreate(Sender: TObject);
begin
  MontaColunas := True;
  MontaColHist := True;
  MontaColPagtoEfetuado := True;
  MontaColHistRestaurante := True;
end;

procedure TfrmClientes.lbl_edtCepExit(Sender: TObject);
begin
  with dmModule do begin

    if lbl_edtCep.Text <> '' Then begin

      ibCep.Close;
      ibCep.SQL.Clear;
      ibCep.SQL.Add('SELECT * FROM FRANCA WHERE CEP=''' + lbl_edtCep.Text + '''');
      ibCep.Open;

      if ibCep.RecordCount > 0 Then begin

        lbl_edtEndereco.Text := ibCep.FieldByName('LOGRADOURO').AsString;
        lbl_edtBairro.Text   := ibCep.FieldByName('BAIRRO').AsString;
        lbl_edtCidade.Text   := ibCep.FieldByName('CIDADE').AsString;
        lbl_edtEstado.Text   := ibCep.FieldByName('UF').AsString;

      end;//if

    end;
    
  {  if (lbl_edtCep.Text <> '00000-000') Then begin //se for diferente de branco

      if (lbl_edtCep.Text = '00000-000') and (lbl_edtEndereco.Text <> '') and (AlteraCep) Then begin

        AlteraCep := False;

      end else begin

        if (lbl_edtCep.Text <> '00000-000') Then begin

          CEPTemp := StringReplace(lbl_edtCep.Text,'-','',[rfReplaceAll]);

          ibTempCep := TIBQuery.Create(Self); //CRIA O COMPONENTE NO FORMULARIO ATUAL

          with ibTempCep do begin

            ibTempCep.Database := IBDCep;
            ibTempCep.SQL.Clear;
            ibTempCep.SQL.Add('SELECT LOCAL,BAIRRO,CIDADE,UF,CEP FROM TBLCEP WHERE CEP=''' + CEPTemp + '''');
            ibTempCep.Open;

            lbl_edtEndereco.Text := FieldByName('LOCAL').AsString;
            lbl_edtBairro.Text   := FieldByName('BAIRRO').AsString;
            lbl_edtCidade.Text   := FieldByName('CIDADE').AsString;
            lbl_edtEstado.Text   := FieldByName('UF').AsString;
            lbl_edtCep.Text      := FieldByName('CEP').AsString;


         if ibeaAlterar.Caption = '&Atualizar' Then begin


            ConfirmaMSG := Application.MessageBox('Você está alterando o CEP e o Endereço informado será excluido. Deseja continuar?','Notificação: Alteração de Registro', MB_YESNO + mb_DefButton1+MB_ICONQUESTION);
            if ConfirmaMSG = 6 Then begin

              lbl_edtEndereco.Text := FieldByName('LOCAL').AsString;
              lbl_edtBairro.Text   := FieldByName('BAIRRO').AsString;
              lbl_edtCidade.Text   := FieldByName('CIDADE').AsString;
              lbl_edtEstado.Text   := FieldByName('UF').AsString;
              lbl_edtCep.Text      := FieldByName('CEP').AsString;  }

      //      end; {if}
     //    end;{if}
     //     end;{with}

     //    end;{if}

    //   end;{if}

      //DEFINE O FORMATO PARA O CAMPO DO CEP
      ///lbl_edtCep.Text := StringReplace(lbl_edtCep.Text,'-','',[rfReplaceAll]);
      ///lbl_edtCep.Text := FormatFloat('00000-000',StrToFloat(lbl_edtCep.Text));

    //  AlteraEnd := False;//variavel para atribuir vlr boleano no cep

  //  end; {if}

  end;{with}

end;

procedure TfrmClientes.dbgClientesCellClick(Column: TColumn);
begin

  with dmModule do begin

    ExibeDados;

  end;

end;

procedure TfrmClientes.pcCadastrodeclientesChange(Sender: TObject);
begin
with dmModule do begin

  if pcCadastrodeclientes.ActivePage.TabIndex = 0 Then begin

    ibeaNovo.Caption := '&Novo';
    LimpaCampo;
    lbl_edtCodCliente.Clear;
    ibServsVenda.Close;
    lbl_CodCliPagto.Caption := '';
    lbl_NomeCliPagto.Caption := '';
    lbl_edtVlrPago.Clear;
    lbl_edtTotalemAver.Clear;
    lbl_edtVlrTotalP.Clear;
    lbl_edtPagtoParcial.Clear;
    lbl_edtSaldoDevedor.Clear;
    lbl_edtTotalPendente.Clear;
    lbl_edtTotalPago.Clear;
    lbl_edtTotalDevedor.Clear;
    lbl_edtTotal.Clear;
    ibPagtoPendente.Close;
    ibServsVenda.Close;
    ibConsultaVendas.Close;
    ckPendente.Checked := False;

  end else if pcCadastrodeclientes.ActivePage.TabIndex = 1 Then begin

    pcHistoricoVendas.ActivePageIndex := 0;
    ckVendasRestaurante.Checked := false;
    lbl_edtTotal.Text := '0,00';
    lbl_edtTotalPendente.Text := '0,00';

    ibPagtoPendente.Close;
    ibRestaurante.Close;
  //  ibServsVenda.Close;

  //  if lbl_edtCodCliente.Text <> '' Then begin

      lbl_edtCodCliH.Text := IntToStr(IDCad);

  //  end else begin

    //  lbl_edtCodCliH.Text := '';

   // end;

    if lbl_edtNomerazao.Text <> '' Then begin

      lbl_edtNomeCliH.Text := lbl_edtNomerazao.Text;

    end else begin

      lbl_edtNomeCliH.Text := '';

      lbl_edtTotal.Text        := '0,00';
      lbl_edtTotalPendente.Text := '0,00';

    end;

    if lbl_edtTelCom.Text <> '' Then begin

      lbl_edtTelefoneH.Text := lbl_edtTelCom.Text;

    end else begin

      lbl_edtTelefoneH.Text := '';

    end;

    if lbl_edtCelular.Text <> '' Then begin

      lbl_edtCelularH.Text := lbl_edtCelular.Text;

    end else begin

      lbl_CodCliPagto.Caption := '';
      lbl_edtCelularH.Text := '';

    end;

    lbl_NomeCliPagto.Caption := '';
    lbl_CodCliPagto.Caption := '';
 //  ibeaHistoricoClick(Sender);

   { if lbl_edtCodCliH.Text <> '' Then begin

    ibeaHistoricoClick(Sender);

    end; }

  end else if pcCadastrodeclientes.ActivePage.TabIndex = 2 Then begin

    pcHistoricoVendas.ActivePageIndex := 0;
    ckVendasRestaurante.Checked := false;

    if lbl_edtCodCliH.Text <> '' Then begin

      lbl_CodCliPagto.Caption := lbl_edtCodCliH.Text;

    end;

    if lbl_edtNomeCliH.Text <> '' Then begin

      lbl_NomeCliPagto.Caption := lbl_edtNomeCliH.Text;

    end;

    ibeaPagtosEfetuadosClick(Sender);

  end;{if pc cadastro}

end;{with}

end;

procedure TfrmClientes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  Key := UpCase(Key); //Deixa todos os textos em maiusculo

  if Key = #13 Then begin //Desabilita o processamento posterior da tecla
    key := #0;
    Perform(WM_NEXTDLGCTL,0,0); //Simula o envio da tab
  end;

end;

procedure TfrmClientes.ibeaAlterarClick(Sender: TObject);
begin

  with dmModule do begin

  if ibeaNovo.Caption = '&Gravar' Then begin

    ConfirmaMSG := Application.MessageBox('Deseja cancelar esta operação?'
              + #13 + 'Clique em Sim para cancelar e Não para continuar.','Notificação: Cancelar Operação', MB_YESNO + MB_ICONQUESTION);

    if ConfirmaMSG = 6 Then begin

      ibeaNovo.Caption := '&Novo';
      DesabilitaCamposCli(False);

    end;{if}

    end else begin





        if (ibCadastro.RecordCount < 1)  And (ibContato.RecordCount < 1) And
          (ibLogradouro.RecordCount < 1) And (ibDocumentacao.RecordCount < 1) Then begin

          ConfirmaMSG := Application.MessageBox('Não existe registro para ser alterado!!'
                  + #13 + 'Clique em Ok para Retornar a operação normal.','Notificação: Cancelar Operação', MB_OK + MB_ICONWARNING);

          ibeaNovo.Caption := '&Novo';
          DesabilitaCamposCli(False);
          lbl_edtCep.Text := '';
      //    lbl_edtCodigo.Text := '';

        end else begin

//////////////////////////////////////////////////////////////////////////////

    { if lbl_edtNomerazao.Text = '' Then begin
         ConfirmaMSG := Application.MessageBox('É necessário selecionar um registro abaixo para ser alterado!!'
                    + #13 + 'Clique em Ok para Retornar a operação normal.','Notificação: Cancelar Operação', MB_OK + MB_ICONWARNING);
        ibeaAlterar.Caption := '&Alterar';

      end else begin  }

////////////////////////////////////////////////////////////////////////////////

        if ibeaAlterar.Caption = '&Atualizar' Then begin

        if lbl_edtCep.Text = '' Then begin  {atribui  vlr 0 a variavel cep}
          Cep := 0;
        end else begin // caso esteja em branco atribui o vlr do campo na variavel cep
          Cep := strtoint( StringReplace(lbl_edtCep.Text,'-','',[rfReplaceAll]) ); //SUBSTITUI REMOVENDO O -
        end;


            ConfirmaMSG := Application.MessageBox('Alterar esse Registro?','Notificação: Exclusão de Registro', MB_YESNO + mb_DefButton1+MB_ICONQUESTION);
          if ConfirmaMSG = 6 Then begin

            AlteraCadastro;//procedimento para alteracao dos campos na tblcadastro
            AlteraDocumentacao;//procedimento para alteracao dos campos na tblcaddocumentacao
            AlteraLogradouro;//procedimento para alteracao dos campos na tbllogradouro
            AlteraContato;//procedimento para alteracao dos campos na tblcontato.

            Commit(ibDocumentacao);
            Commit(ibContato);
            Commit(ibCadastro);

            ExecSELECT;

          end;

            ibeaAlterar.Caption := '&Alterar';
            DesabilitaCamposCli(False);
            ibeaNovo.Enabled := True;
            ibeaExcluir.Enabled := True;
          //  ibeaConsultar.Enabled := True;

          end else begin

        //    AlteraEnd := True;
       //     AlteraCep := True;

            ibeaAlterar.Caption := '&Atualizar';
            DesabilitaCamposCli(True);

          //end;
        end;{if}
      end;{if}
    end;
  end;

end;

procedure TfrmClientes.lbl_edtEstadoExit(Sender: TObject);
//var

//ibTempEndereco : TIBQuery;

//BairroCli,EstadoCli,EnderecoCli : String;

begin  

  with dmModule do begin


 {   if (lbl_edtEstado.Text <> '') and (lbl_edtBairro.Text <> '') and (lbl_edtEndereco.Text <> '') Then begin //se for diferente de branco

      BairroCli := lbl_edtBairro.Text;

      EstadoCli := lbl_edtEstado.Text;

      EnderecoCli := lbl_edtEndereco.Text;

      CEPTemp := StringReplace(lbl_edtCep.Text,'-','',[rfReplaceAll]);  }

    //  if (lbl_edtCep.Text = '00000-000') and (lbl_edtEndereco.Text <> '') and (AlteraCep) Then begin

    //    AlteraCep := False;

   {   end else begin }

          

     {     ibTempEndereco := TIBQuery.Create(Self); //CRIA O COMPONENTE NO FORMULARIO ATUAL

          with ibTempEndereco do begin

            ibTempEndereco.Database := IBDCep;
            ibTempEndereco.SQL.Clear;
            ibTempEndereco.SQL.Add('SELECT LOCAL,BAIRRO,CIDADE,UF,CEP FROM TBLCEP WHERE UF=''' + EstadoCli + ''' and BAIRRO=''' + BairroCli + ''' and LOCAL=''' + EnderecoCli + ''''); // and CEP=''' + CEPTemp + '''
            ibTempEndereco.Open;

            if (ibTempEndereco.FieldByName('BAIRRO').AsString = BairroCli) and (ibTempEndereco.FieldByName('LOCAL').AsString = EnderecoCli) Then begin

            lbl_edtEndereco.Text := ibTempEndereco.FieldByName('LOCAL').AsString;
            lbl_edtBairro.Text   := ibTempEndereco.FieldByName('BAIRRO').AsString;
            lbl_edtCidade.Text   := ibTempEndereco.FieldByName('CIDADE').AsString;
            lbl_edtEstado.Text   := ibTempEndereco.FieldByName('UF').AsString;
            lbl_edtCep.Text      := ibTempEndereco.FieldByName('CEP').AsString;

            end else begin

            Application.MessageBox('O Endereço ou o Bairro estão incorretos, favor confirmar','Notificação:Endereço Incorreto', MB_OK+MB_ICONQUESTION);

            end;   }

      {   if ibeaAlterar.Caption = '&Atualizar' Then begin


            ConfirmaMSG := Application.MessageBox('Confirma a alteração de Endereço?','Notificação: Alteração de Endereço', MB_YESNO + mb_DefButton1+MB_ICONQUESTION);
            if ConfirmaMSG = 6 Then begin

              lbl_edtEndereco.Text := FieldByName('LOCAL').AsString;
              lbl_edtBairro.Text   := FieldByName('BAIRRO').AsString;
              lbl_edtCidade.Text   := FieldByName('CIDADE').AsString;
              lbl_edtEstado.Text   := FieldByName('UF').AsString;
              lbl_edtCep.Text      := FieldByName('CEP').AsString;   }

           // end; {if}
       //  end;{if}
      //    end;{with}

        // end;{if}

     //  end;{if}

      //DEFINE O FORMATO PARA O CAMPO DO CEP
     { lbl_edtCep.Text := StringReplace(lbl_edtCep.Text,'-','',[rfReplaceAll]);
      lbl_edtCep.Text := FormatFloat('00000-000',StrToFloat(lbl_edtCep.Text)); }

  //    AlteraEnd := False;//variavel para atribuir vlr boleano no cep

  //  end; {if}

  end;{with}


end;

procedure TfrmClientes.lbl_edtTelComExit(Sender: TObject);
begin

  if lbl_edtTelCom.Text <> '' Then begin

  ///  lbl_edtTelCom.Text := StringReplace(lbl_edtTelCom.Text,'-','',[rfReplaceAll]);
  ///  lbl_edtTelCom.Text := FormatFloat('0000-0000',StrToFloat(lbl_edtTelCom.Text));

  end;

end;

procedure TfrmClientes.lbl_edtTelFaxExit(Sender: TObject);
begin

  if lbl_edtTelFax.Text <> '' Then begin

    lbl_edtTelFax.Text := StringReplace(lbl_edtTelFax.Text,'-','',[rfReplaceAll]);
    lbl_edtTelFax.Text := FormatFloat('0000-0000',StrToFloat(lbl_edtTelFax.Text));

  end;

end;

procedure TfrmClientes.lbl_edtCelularExit(Sender: TObject);
begin

  if lbl_edtCelular.Text <> '' Then begin

  ///  lbl_edtCelular.Text := StringReplace(lbl_edtCelular.Text,'-','',[rfReplaceAll]);
  ///  lbl_edtCelular.Text := FormatFloat('0000-0000',StrToFloat(lbl_edtCelular.Text));

  end;

end;

procedure TfrmClientes.ibeaExcluirClick(Sender: TObject);
begin

  with dmModule do begin

    ConfirmaMSG := Application.MessageBox('Deseja Excluir o registro?','Notificação:Exclusão de Registro.',+ MB_YESNO + MB_ICONQUESTION);

    if ConfirmaMSG = 6 Then begin

      ibCadastro.Close;
      ibCadastro.SQL.Clear;
      ibCadastro.SQL.Add('DELETE FROM TBLCADASTRO WHERE IDCAD=''' + IntToStr(IDCad) + '''');
      ibCadastro.Open;

      ibContato.Close;
      ibContato.SQL.Clear;
      ibContato.SQL.Add('DELETE FROM TBLCONTATO WHERE IDCAD=''' + IntToStr(IDCad) + '''');
      ibContato.Open;

      ibDocumentacao.Close;
      ibDocumentacao.SQL.Clear;
      ibDocumentacao.SQL.Add('DELETE FROM TBLCADDOCUMENTACAO WHERE IDCAD=''' + IntToStr(IDCad) + '''');
      ibDocumentacao.Open;

      ibLogradouro.Close;
      ibLogradouro.SQL.Clear;
      ibLogradouro.SQL.Add('DELETE FROM TBLLOGRADOURO WHERE IDCAD=''' + IntToStr(IDCad) + '''');
      ibLogradouro.Open;


      ExecSELECT;

      LimpaCampo;

    end;{confirmamsg}

  end;{with}

end;

procedure TfrmClientes.lbl_edtNomeChange(Sender: TObject);
begin

  with dmModule do begin

    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
    ibClassificacao.Open;
    IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO CLIENTE NA VARIAVEL.

    //BUSCA TODOS OS CLIENTES QUE ESTEJAM NA CLASSIFICAÇÃO DE CLIENTES
    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,'
    + ' TBLLOGRADOURO.ENDERECO,TBLLOGRADOURO.BAIRRO FROM TBLCADASTRO '
    + ' LEFT OUTER JOIN TBLLOGRADOURO ON TBLCADASTRO.IDCAD=TBLLOGRADOURO.IDCAD '
    + ' WHERE (TBLCADASTRO.idclass=''' + InttoStr(IDClass) + ''')and TBLCADASTRO.NOME LIKE '+''''+'%'+lbl_edtNome.text+'%'+'''');
    ibCadastro.Open;

  end;{with}

end;

procedure TfrmClientes.sb_ord_nomeClick(Sender: TObject);
begin

  with dmModule do begin

    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
    ibClassificacao.Open;
    IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO CLIENTE NA VARIAVEL.


    //BUSCA TODOS OS CLIENTES QUE ESTEJAM NA CLASSIFICAÇÃO DE CLIENTES
    Commit(ibCadastro);
    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,'
    + ' TBLLOGRADOURO.ENDERECO,TBLLOGRADOURO.BAIRRO FROM TBLCADASTRO '
  //  + ' INNER JOIN TBLCONTATO ON TBLCADASTRO.IDCAD = TBLCONTATO.IDCAD 'TBLCONTATO.CONTATO,
    + ' INNER JOIN TBLLOGRADOURO ON TBLCADASTRO.IDCAD=TBLLOGRADOURO.IDCAD '
   /// + ' INNER JOIN TBLCADDOCUMENTACAO ON TBLCADASTRO.IDCAD = TBLCADDOCUMENTACAO.IDCAD '
    + ' WHERE TBLCADASTRO.idclass=''' + InttoStr(IDClass) + '''ORDER BY TBLCADASTRO.NOME');
    ibCadastro.Open;

    lbl_edtNome.Text := '';
    lbl_edtPesqEndereco.Text := '';
    lbl_edtTelefonePesquisa.Clear;
    lbl_edtPesqNumero.Clear;
    
  end;{with}

end;

procedure TfrmClientes.sb_ord_codClick(Sender: TObject);
begin

  with dmModule do begin

    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
    ibClassificacao.Open;
    IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO CLIENTE NA VARIAVEL.


    //BUSCA TODOS OS CLIENTES QUE ESTEJAM NA CLASSIFICAÇÃO DE CLIENTES
    Commit(ibCadastro);
    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,'
    + ' TBLLOGRADOURO.ENDERECO,TBLLOGRADOURO.BAIRRO FROM TBLCADASTRO '
  //  + ' INNER JOIN TBLCONTATO ON TBLCADASTRO.IDCAD = TBLCONTATO.IDCAD 'TBLCONTATO.CONTATO,
    + ' INNER JOIN TBLLOGRADOURO ON TBLCADASTRO.IDCAD=TBLLOGRADOURO.IDCAD '
   /// + ' INNER JOIN TBLCADDOCUMENTACAO ON TBLCADASTRO.IDCAD = TBLCADDOCUMENTACAO.IDCAD '
    + ' WHERE TBLCADASTRO.idclass=''' + InttoStr(IDClass) + '''ORDER BY TBLCADASTRO.IDCAD DESC');
    ibCadastro.Open;

    lbl_edtNome.Text := '';
    lbl_edtPesqEndereco.Text := '';    
    lbl_edtTelefonePesquisa.Clear;
    lbl_edtPesqNumero.Clear;
    
  end;{with}

end;

procedure TfrmClientes.ibeaSairHistoricoClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmClientes.ibeaBuscaCliClick(Sender: TObject);
begin
frmBuscaClientes.ShowModal;
end;

procedure TfrmClientes.ibeaHistoricoClick(Sender: TObject);

var

IDClienteHistorico, IDClass : Integer;
ValorParcial, TotaldoPendente  : Real;
ValorParcialPago : String;
  ValorGeralCX : Real;
  ValorTotalCX : String;
  ValorPendente : Real;
  ValorTotalPen : String;
  VlrPago : Real;
  TotalPago : String;
  SaldoDevedor : Real;
  VlrAcrescimo : Real;
  TotalAcrescimo : String;

begin

  with dmModule do begin

    if ValorGeralCX > 0 Then begin

      ValorGeralCX := 0;

    end;

    if ValorTotalCX > '0' Then begin

      ValorTotalCX := '0';

    end;

    if ValorPendente > 0 Then begin

      ValorPendente := 0;

    end;

    if ValorTotalPen > '0' Then begin

      ValorTotalPen := '0';

    end;

    if VlrPago > 0 Then begin

      VlrPago := 0;

    end;

    if TotalPago > '0' Then begin

      TotalPago := '0';

    end;

    if VlrAcrescimo > 0 Then begin

      VlrAcrescimo := 0;

    end;

    if TotalAcrescimo > '0' Then begin

      TotalAcrescimo := '0';

    end;



////////////////////////////////////////////////////////////////////////////////

    if (lbl_edtNomeCliH.Text <> '')and(ckPendente.Checked = False) Then begin

    {ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
    ibClassificacao.Open;
    IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO CLIENTE NA VARIAVEL.


    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLCADDOCUMENTACAO.CODIGO FROM TBLCADASTRO '
    + 'LEFT OUTER JOIN TBLCADDOCUMENTACAO ON TBLCADASTRO.IDCAD=TBLCADDOCUMENTACAO.IDCAD WHERE TBLCADASTRO.IDCLASS=''' + IntToStr(IDClass) + ''' and TBLCADDOCUMENTACAO.IDCAD=''' + IntToStr(IDCad) + '''');
    ibCadastro.Open; }

  ////  IDClienteHistorico := ibCadastro.FieldByName('IDCAD').AsInteger;

  //   TBLCADASTRO.NOME=''' + lbl_edtNomeCliH.Text + ''' and



    Commit(ibConsultaVendas);
    ibConsultaVendas.Close;
    ibConsultaVendas.SQL.Clear;
    ibConsultaVendas.SQL.Add('SELECT TBLSERVICOSVENDAS.*,'
    + 'CADPRODUTOS.NOME As Produto,TBLCADASTRO.NOME As Cliente FROM TBLSERVICOSVENDAS '
    + 'LEFT OUTER JOIN TBLCADASTRO ON TBLSERVICOSVENDAS.IDCLIENTE=TBLCADASTRO.IDCAD '
    + 'LEFT OUTER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD '
    + 'WHERE TBLSERVICOSVENDAS.IDCLIENTE=''' + lbl_edtCodCliH.Text + ''' and TBLSERVICOSVENDAS.POSVENDA=''Pago'' ORDER BY TBLSERVICOSVENDAS.IDSERVSVENDA ASC');
    ibConsultaVendas.Open;                        //  IntToStr(IDCad)


   {if ckPendente.Checked = True Then begin

    Commit(ibServsVenda);
    ibServsVenda.Close;
    ibServsVenda.SQL.Clear;
    ibServsVenda.SQL.Add('SELECT TBLSERVICOSVENDAS.*,'
    + 'CADPRODUTOS.NOME As Produto,TBLCADASTRO.NOME As Cliente FROM TBLSERVICOSVENDAS '
    + 'LEFT OUTER JOIN TBLCADASTRO ON TBLSERVICOSVENDAS.IDCLIENTE=TBLCADASTRO.IDCAD '
    + 'LEFT OUTER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD '
    + 'WHERE TBLSERVICOSVENDAS.IDCLIENTE=''' + lbl_edtCodCliH.Text + ''' and TBLSERVICOSVENDAS.PENDENTEPAGO=''Pendente'' ORDER BY TBLSERVICOSVENDAS.IDSERVSVENDA ASC');
    ibServsVenda.Open;                        //  IntToStr(IDCad)

    end;  }


    (ibConsultaVendas.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibConsultaVendas.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibConsultaVendas.FieldByName('PAGTOPARCIAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibConsultaVendas.FieldByName('VLRPENDENTE') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibConsultaVendas.FieldByName('ACRESCIMO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

    Commit(ibPagtoPendente);
    ibPagtoPendente.Close;
    ibPagtoPendente.SQL.Clear;
    ibPagtoPendente.SQL.Add('SELECT * FROM TBLPAGTOPENDENTE WHERE IDCLI=''' + lbl_edtCodCliH.Text + '''');
    ibPagtoPendente.Open;
                                                                                                    //   and SITUACAO <>''Pago''
    while not ibPagtoPendente.Eof do begin

      if ibPagtoPendente.FieldByName('SITUACAO').AsString <> 'Pago' Then begin

        if (VlrPago = 0)Then begin

          VlrPago := StrToFloat(StringReplace(FloatToStr(ibPagtoPendente.FieldByName('VLRPAGO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

        end else begin

          TotalPago := StringReplace(FloatToStr(ibPagtoPendente.FieldByName('VLRPAGO').AsFloat),ThousandSeparator,'',[rfReplaceAll]);
          VlrPago := VlrPago + StrToFloat(StringReplace(TotalPago,ThousandSeparator,'',[rfReplaceAll]));

        end;

      end;

      ibPagtoPendente.Next

    end;//while

    lbl_edtPagtoParcial.Text := FormatFloat(CasasDecimais('Produtos'),VlrPago);

////////////////////////////////////////////////////////////////////////////////
  {  Commit(ibRecVendas);
    ibRecVendas.Close;
    ibRecVendas.SQL.Clear;
    ibRecVendas.SQL.Add('SELECT * FROM TBLRECEBEVENDAS WHERE IDCLI=''' + lbl_edtCodCliH.Text + '''ORDER BY DATA DESC');
    ibRecVendas.Open;

    if ibRecVendas.RecordCount > 0 Then begin


      while not ibRecVendas.Eof do begin

        if (VlrDevedor = 0)Then begin

          VlrDevedor := StrToFloat(StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVLRPENDENTE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

        end else begin

          TotalDevedor := StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVLRPENDENTE').AsFloat),ThousandSeparator,'',[rfReplaceAll]);
          VlrDevedor := VlrDevedor + StrToFloat(StringReplace(TotalDevedor,ThousandSeparator,'',[rfReplaceAll]));

        end;

        ibRecVendas.Next;

      end;//while

    end;//if ibrecvendas recordcount   }

   end;//if label cod cli  TBLCADASTRO.NOME=''' + lbl_edtNomeCliH.Text + ''' and

////////////////////////////////////////////////////////////////////////////////


    while not ibConsultaVendas.Eof do begin//enquanto nao for fim de registro


          if (ValorGeralCX = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorGeralCX := StrtoFloat(StringReplace(FloattoStr(ibConsultaVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorTotalCX := StringReplace(FloattoStr(ibConsultaVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorGeralCX := ValorGeralCX + StrtoFloat(StringReplace(ValorTotalCX,ThousandSeparator,'',[rfReplaceAll]));

           end;{if}

////////////////////////////////////////////////////////////////////////////////

           if ibConsultaVendas.FieldByName('PENDENTEPAGO').AsString = 'Pendente' Then begin

             if (ValorPendente = 0) Then begin//se variavel for igual a zero

              //atribui o vlr do campo abaixo na variavel
              ValorPendente := StrtoFloat(StringReplace(FloattoStr(ibConsultaVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             end else begin

              //atribui na variavel substituindo o ponto para vlr em branco
              ValorTotalPen := StringReplace(FloattoStr(ibConsultaVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

              //atribui a variavel o valor separando por ponto
              ValorPendente := ValorPendente + StrtoFloat(StringReplace(ValorTotalPen,ThousandSeparator,'',[rfReplaceAll]));

             end;{if}

            if (VlrAcrescimo = 0) Then begin//se variavel for igual a zero

              //atribui o vlr do campo abaixo na variavel
              VlrAcrescimo := StrtoFloat(StringReplace(FloattoStr(ibConsultaVendas.FieldByName('ACRESCIMO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

            end else begin

              //atribui na variavel substituindo o ponto para vlr em branco
              TotalAcrescimo := StringReplace(FloattoStr(ibConsultaVendas.FieldByName('ACRESCIMO').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

              //atribui a variavel o valor separando por ponto
              VlrAcrescimo := VlrAcrescimo + StrtoFloat(StringReplace(TotalAcrescimo,ThousandSeparator,'',[rfReplaceAll]));

             end;{if}

           end;//if

////////////////////////////////////////////////////////////////////////////////

           if (ValorParcial = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorParcial := StrtoFloat(StringReplace(FloattoStr(ibConsultaVendas.FieldByName('PAGTOPARCIAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorParcialPago := StringReplace(FloattoStr(ibConsultaVendas.FieldByName('PAGTOPARCIAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorParcial := ValorParcial + StrtoFloat(StringReplace(ValorParcialPago,ThousandSeparator,'',[rfReplaceAll]));

           end;{if}


          if ValorParcial > 0 Then begin

          TotaldoPendente := ValorPendente - ValorParcial;

          end else begin

          TotaldoPendente := ValorPendente;

          end;//if



////////////////////////////////////////////////////////////////////////////////


          ibConsultaVendas.Next;//vai para o pproximo registro pro looping nao ficar infinito.

        end;{while}

     //  if lbl_edtTotal.Text = '0,00' Then begin

        lbl_edtTotal.Text := FormatFloat(CasasDecimais('Produtos'),ValorGeralCX + VlrAcrescimo);
        lbl_edtTotalPendente.Text := FormatFloat(CasasDecimais('Produtos'),TotaldoPendente + VlrAcrescimo);
        lbl_edtTotalPago.Text :=  lbl_edtPagtoParcial.Text;//FormatFloat(CasasDecimais('Produtos'),ValorParcial);
        lbl_edtVlrTotalP.Text :=  FormatFloat(CasasDecimais('Produtos'),TotaldoPendente + VlrAcrescimo);

        if VlrPago > 0 Then begin

          if TotaldoPendente > VlrPago Then begin

            SaldoDevedor := TotaldoPendente - VlrPago;

          end;

          if TotaldoPendente < VlrPago Then begin

            SaldoDevedor := VlrPago - TotaldoPendente;

          end;

          if TotaldoPendente = 0 Then begin

            SaldoDevedor := 0

          end;

        end;

        if (lbl_edtPagtoParcial.Text = '0,00')and(lbl_edtVlrTotalP.Text > '0,00') Then begin

        lbl_edtSaldoDevedor.Text := lbl_edtVlrTotalP.Text;

        end;

        if lbl_edtPagtoParcial.Text > '0,00' Then begin

        lbl_edtSaldoDevedor.Text := FormatFloat(CasasDecimais('Produtos'),SaldoDevedor + VlrAcrescimo);

        end;

        lbl_edtTotalDevedor.Text := lbl_edtSaldoDevedor.Text;

////////////////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////////////////

 {   while not ibServsVenda.Eof do begin//enquanto nao for fim de registro


          if (ValorGeralCX = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorGeralCX := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorTotalCX := StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorGeralCX := ValorGeralCX + StrtoFloat(StringReplace(ValorTotalCX,ThousandSeparator,'',[rfReplaceAll])); }

       //    end;{if}

////////////////////////////////////////////////////////////////////////////////

         {  if (ValorPendente = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorPendente := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRPENDENTE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorTotalPen := StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRPENDENTE').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorPendente := ValorPendente + StrtoFloat(StringReplace(ValorTotalPen,ThousandSeparator,'',[rfReplaceAll]));  }

         //  end;{if}

      //    ibServsVenda.Next;//vai para o pproximo registro pro looping nao ficar infinito.

     //   end;{while}

     {  if lbl_edtTotal.Text = '0,00' Then begin

        lbl_edtTotal.Text := FormatFloat(CasasDecimais('Produtos'),ValorGeralCX);
        lbl_edtTotalPendente.Text := FormatFloat(CasasDecimais('Produtos'),ValorPendente);

       end; }

////////////////////////////////////////////////////////////////////////////////

  end;{with}

end;

procedure TfrmClientes.dbgHistoricoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

  with dmModule do begin

    if (ibConsultaVendas.FieldByName('PENDENTEPAGO').value = 'Pago') Then begin
    dbgHistorico.Canvas.Brush.Color:= clBlue; // coloque aqui a cor desejada
    dbgHistorico.Canvas.Font.Color:= clWhite;
    dbgHistorico.DefaultDrawDataCell(Rect, dbgHistorico.columns[datacol].field, State);
    end else begin
    dbgHistorico.Canvas.Brush.Color:= clred; // coloque aqui a cor desejada
    dbgHistorico.Canvas.Font.Color:= clWhite;
    dbgHistorico.DefaultDrawDataCell(Rect, dbgHistorico.columns[datacol].field, State);
    end;

  end;//with

end;

procedure TfrmClientes.dtpDataFinalChange(Sender: TObject);

var

IDClienteHistorico, IDClass : Integer;
ValorParcial, TotaldoPendente  : Real;
ValorParcialPago : String;
  ValorGeralCX : Real;
  ValorTotalCX : String;
  ValorPendente : Real;
  ValorTotalPen : String;
  VlrDevedor : Real;
  TotalDevedor : String;
begin

  with dmModule do begin

    if ValorGeralCX > 0 Then begin

      ValorGeralCX := 0;

    end;

    if ValorTotalCX > '0' Then begin

      ValorTotalCX := '0';

    end;

    if ValorPendente > 0 Then begin

      ValorPendente := 0;

    end;

    if ValorTotalPen > '0' Then begin

      ValorTotalPen := '0';

    end;

    if VlrDevedor > 0 Then begin

      VlrDevedor := 0;

    end;

    if TotalDevedor > '0' Then begin

      TotalDevedor := '0';

    end;



////////////////////////////////////////////////////////////////////////////////

    if ckPendente.Checked = True Then begin

    if (lbl_edtNomeCliH.Text <> '') Then begin

    {ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
    ibClassificacao.Open;
    IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO CLIENTE NA VARIAVEL.


    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLCADDOCUMENTACAO.CODIGO FROM TBLCADASTRO '
    + 'LEFT OUTER JOIN TBLCADDOCUMENTACAO ON TBLCADASTRO.IDCAD=TBLCADDOCUMENTACAO.IDCAD WHERE TBLCADASTRO.IDCLASS=''' + IntToStr(IDClass) + ''' and TBLCADDOCUMENTACAO.IDCAD=''' + IntToStr(IDCad) + '''');
    ibCadastro.Open; }

  ////  IDClienteHistorico := ibCadastro.FieldByName('IDCAD').AsInteger;

  //   TBLCADASTRO.NOME=''' + lbl_edtNomeCliH.Text + ''' and
    Commit(ibServsVenda);
    ibServsVenda.Close;
    ibServsVenda.SQL.Clear;
    ibServsVenda.SQL.Add('SELECT TBLSERVICOSVENDAS.*,CADPRODUTOS.NOME As Produto,'
    + 'TBLCADASTRO.NOME As Cliente,TBLRECEBEVENDAS.TOTALVLRPENDENTE,TBLRECEBEVENDAS.DATA As DataCompra FROM TBLSERVICOSVENDAS '
    + 'LEFT OUTER JOIN TBLCADASTRO ON TBLSERVICOSVENDAS.IDCLIENTE=TBLCADASTRO.IDCAD '
    + 'LEFT OUTER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD '
    + 'LEFT OUTER JOIN TBLRECEBEVENDAS ON TBLSERVICOSVENDAS.IDSERVSVENDA=TBLRECEBEVENDAS.IDVENDA '
    + 'WHERE(TBLSERVICOSVENDAS.PENDENTEPAGO=''Pendente'')and TBLSERVICOSVENDAS.IDCLIENTE=''' + lbl_edtCodCliH.Text + ''' and TBLSERVICOSVENDAS.POSVENDA=''Pago''and(TBLRECEBEVENDAS.DATA between :ParamDataIni and :ParamDataF) ORDER BY TBLSERVICOSVENDAS.DATA DESC');
    ibServsVenda.Open;                        //  IntToStr(IDCad)

    ibServsVenda.Close;
    ibServsVenda.ParamByName('ParamDataIni').Value := dtpDataIni.DateTime;
    ibServsVenda.ParamByName('ParamDataF').Value := dtpDataFinal.DateTime;
    ibServsVenda.Open;

    (ibServsVenda.FieldByName('ACRESCIMO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibServsVenda.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibServsVenda.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibServsVenda.FieldByName('PAGTOPARCIAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibServsVenda.FieldByName('VLRPENDENTE') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
////////////////////////////////////////////////////////////////////////////////
  {  Commit(ibRecVendas);
    ibRecVendas.Close;
    ibRecVendas.SQL.Clear;
    ibRecVendas.SQL.Add('SELECT * FROM TBLRECEBEVENDAS WHERE(DATA between :ParamDataIni and :ParamDataF)and IDCLI=''' + lbl_edtCodCliH.Text + '''ORDER BY DATA DESC');
    ibRecVendas.Open;

    ibRecVendas.Close;
    ibRecVendas.ParamByName('ParamDataIni').Value := dtpDataIni.DateTime;
    ibRecVendas.ParamByName('ParamDataF').Value := dtpDataFinal.DateTime;
    ibRecVendas.Open;

    while not ibRecVendas.Eof do begin


       if (VlrDevedor = 0)Then begin

          VlrDevedor := StrToFloat(StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVLRPENDENTE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

        end else begin

          TotalDevedor := StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVLRPENDENTE').AsFloat),ThousandSeparator,'',[rfReplaceAll]);
          VlrDevedor := VlrDevedor + StrToFloat(StringReplace(TotalDevedor,ThousandSeparator,'',[rfReplaceAll]));

        end;

    ibRecVendas.Next;

    end;//while  }

   end;//if label cod cli  TBLCADASTRO.NOME=''' + lbl_edtNomeCliH.Text + ''' and

////////////////////////////////////////////////////////////////////////////////


    while not ibServsVenda.Eof do begin//enquanto nao for fim de registro

          if (ValorGeralCX = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorGeralCX := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorTotalCX := StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorGeralCX := ValorGeralCX + StrtoFloat(StringReplace(ValorTotalCX,ThousandSeparator,'',[rfReplaceAll]));

           end;{if}

////////////////////////////////////////////////////////////////////////////////

           if ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pendente' Then begin

             if (ValorPendente = 0) Then begin//se variavel for igual a zero

              //atribui o vlr do campo abaixo na variavel
              ValorPendente := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             end else begin

              //atribui na variavel substituindo o ponto para vlr em branco
              ValorTotalPen := StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

              //atribui a variavel o valor separando por ponto
              ValorPendente := ValorPendente + StrtoFloat(StringReplace(ValorTotalPen,ThousandSeparator,'',[rfReplaceAll]));

             end;{if}

           end;//if
////////////////////////////////////////////////////////////////////////////////


           if (ValorParcial = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorParcial := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('PAGTOPARCIAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorParcialPago := StringReplace(FloattoStr(ibServsVenda.FieldByName('PAGTOPARCIAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorParcial := ValorParcial + StrtoFloat(StringReplace(ValorParcialPago,ThousandSeparator,'',[rfReplaceAll]));

           end;{if}


          if ValorParcial > 0 Then begin

          TotaldoPendente := ValorPendente - ValorParcial;

          end else begin

          TotaldoPendente := ValorPendente;

          end;//if



////////////////////////////////////////////////////////////////////////////////


          ibServsVenda.Next;//vai para o pproximo registro pro looping nao ficar infinito.

        end;{while}

     //  if lbl_edtTotal.Text = '0,00' Then begin

        lbl_edtTotal.Text := FormatFloat(CasasDecimais('Produtos'),ValorGeralCX);
        lbl_edtTotalPendente.Text := FormatFloat(CasasDecimais('Produtos'),TotaldoPendente);
        lbl_edtTotalPago.Text :=  FormatFloat(CasasDecimais('Produtos'),ValorParcial);
        lbl_edtVlrTotalP.Text :=  FormatFloat(CasasDecimais('Produtos'),TotaldoPendente);
   //    end;

////////////////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////////////////

 {   while not ibServsVenda.Eof do begin//enquanto nao for fim de registro


          if (ValorGeralCX = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorGeralCX := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorTotalCX := StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorGeralCX := ValorGeralCX + StrtoFloat(StringReplace(ValorTotalCX,ThousandSeparator,'',[rfReplaceAll])); }

       //    end;{if}

////////////////////////////////////////////////////////////////////////////////

         {  if (ValorPendente = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorPendente := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRPENDENTE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorTotalPen := StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRPENDENTE').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorPendente := ValorPendente + StrtoFloat(StringReplace(ValorTotalPen,ThousandSeparator,'',[rfReplaceAll]));  }

         //  end;{if}

      //    ibServsVenda.Next;//vai para o pproximo registro pro looping nao ficar infinito.

     //   end;{while}

     {  if lbl_edtTotal.Text = '0,00' Then begin

        lbl_edtTotal.Text := FormatFloat(CasasDecimais('Produtos'),ValorGeralCX);
        lbl_edtTotalPendente.Text := FormatFloat(CasasDecimais('Produtos'),ValorPendente);

       end; }
   end;//if ckpendente
////////////////////////////////////////////////////////////////////////////////

    if ckPendente.Checked = False Then begin

    if (lbl_edtNomeCliH.Text <> '') Then begin

    {ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
    ibClassificacao.Open;
    IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO CLIENTE NA VARIAVEL.


    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLCADDOCUMENTACAO.CODIGO FROM TBLCADASTRO '
    + 'LEFT OUTER JOIN TBLCADDOCUMENTACAO ON TBLCADASTRO.IDCAD=TBLCADDOCUMENTACAO.IDCAD WHERE TBLCADASTRO.IDCLASS=''' + IntToStr(IDClass) + ''' and TBLCADDOCUMENTACAO.IDCAD=''' + IntToStr(IDCad) + '''');
    ibCadastro.Open; }

  ////  IDClienteHistorico := ibCadastro.FieldByName('IDCAD').AsInteger;

  //   TBLCADASTRO.NOME=''' + lbl_edtNomeCliH.Text + ''' and
    Commit(ibServsVenda);
    ibServsVenda.Close;
    ibServsVenda.SQL.Clear;
    ibServsVenda.SQL.Add('SELECT TBLSERVICOSVENDAS.*,CADPRODUTOS.NOME As Produto,'
    + 'TBLCADASTRO.NOME As Cliente,TBLRECEBEVENDAS.TOTALVLRPENDENTE,TBLRECEBEVENDAS.DATA As DataCompra FROM TBLSERVICOSVENDAS '
    + 'LEFT OUTER JOIN TBLCADASTRO ON TBLSERVICOSVENDAS.IDCLIENTE=TBLCADASTRO.IDCAD '
    + 'LEFT OUTER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD '
    + 'LEFT OUTER JOIN TBLRECEBEVENDAS ON TBLSERVICOSVENDAS.IDSERVSVENDA=TBLRECEBEVENDAS.IDVENDA '
    + 'WHERE(TBLSERVICOSVENDAS.PENDENTEPAGO=''Pago'')and TBLSERVICOSVENDAS.IDCLIENTE=''' + lbl_edtCodCliH.Text + ''' and TBLSERVICOSVENDAS.POSVENDA=''Pago''and(TBLRECEBEVENDAS.DATA between :ParamDataIni and :ParamDataF) ORDER BY TBLSERVICOSVENDAS.DATA DESC');
    ibServsVenda.Open;                        //  IntToStr(IDCad)

    ibServsVenda.Close;
    ibServsVenda.ParamByName('ParamDataIni').Value := dtpDataIni.DateTime;
    ibServsVenda.ParamByName('ParamDataF').Value := dtpDataFinal.DateTime;
    ibServsVenda.Open;

    (ibServsVenda.FieldByName('ACRESCIMO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibServsVenda.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibServsVenda.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibServsVenda.FieldByName('PAGTOPARCIAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibServsVenda.FieldByName('VLRPENDENTE') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
////////////////////////////////////////////////////////////////////////////////
  {  Commit(ibRecVendas);
    ibRecVendas.Close;
    ibRecVendas.SQL.Clear;
    ibRecVendas.SQL.Add('SELECT * FROM TBLRECEBEVENDAS WHERE(DATA between :ParamDataIni and :ParamDataF)and IDCLI=''' + lbl_edtCodCliH.Text + '''ORDER BY DATA DESC');
    ibRecVendas.Open;

    ibRecVendas.Close;
    ibRecVendas.ParamByName('ParamDataIni').Value := dtpDataIni.DateTime;
    ibRecVendas.ParamByName('ParamDataF').Value := dtpDataFinal.DateTime;
    ibRecVendas.Open;

    while not ibRecVendas.Eof do begin


       if (VlrDevedor = 0)Then begin

          VlrDevedor := StrToFloat(StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVLRPENDENTE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

        end else begin

          TotalDevedor := StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVLRPENDENTE').AsFloat),ThousandSeparator,'',[rfReplaceAll]);
          VlrDevedor := VlrDevedor + StrToFloat(StringReplace(TotalDevedor,ThousandSeparator,'',[rfReplaceAll]));

        end;

    ibRecVendas.Next;

    end;//while  }

   end;//if label cod cli  TBLCADASTRO.NOME=''' + lbl_edtNomeCliH.Text + ''' and

////////////////////////////////////////////////////////////////////////////////


    while not ibServsVenda.Eof do begin//enquanto nao for fim de registro

          if (ValorGeralCX = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorGeralCX := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorTotalCX := StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorGeralCX := ValorGeralCX + StrtoFloat(StringReplace(ValorTotalCX,ThousandSeparator,'',[rfReplaceAll]));

           end;{if}

////////////////////////////////////////////////////////////////////////////////

           if ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pendente' Then begin

             if (ValorPendente = 0) Then begin//se variavel for igual a zero

              //atribui o vlr do campo abaixo na variavel
              ValorPendente := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             end else begin

              //atribui na variavel substituindo o ponto para vlr em branco
              ValorTotalPen := StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

              //atribui a variavel o valor separando por ponto
              ValorPendente := ValorPendente + StrtoFloat(StringReplace(ValorTotalPen,ThousandSeparator,'',[rfReplaceAll]));

             end;{if}

           end;//if
////////////////////////////////////////////////////////////////////////////////


           if (ValorParcial = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorParcial := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('PAGTOPARCIAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorParcialPago := StringReplace(FloattoStr(ibServsVenda.FieldByName('PAGTOPARCIAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorParcial := ValorParcial + StrtoFloat(StringReplace(ValorParcialPago,ThousandSeparator,'',[rfReplaceAll]));

           end;{if}


          if ValorParcial > 0 Then begin

          TotaldoPendente := ValorPendente - ValorParcial;

          end else begin

          TotaldoPendente := ValorPendente;

          end;//if



////////////////////////////////////////////////////////////////////////////////


          ibServsVenda.Next;//vai para o pproximo registro pro looping nao ficar infinito.

        end;{while}

     //  if lbl_edtTotal.Text = '0,00' Then begin

        lbl_edtTotal.Text := FormatFloat(CasasDecimais('Produtos'),ValorGeralCX);
     //   lbl_edtTotalPendente.Text := FormatFloat(CasasDecimais('Produtos'),TotaldoPendente);
    //    lbl_edtTotalPago.Text :=  FormatFloat(CasasDecimais('Produtos'),ValorParcial);
   //     lbl_edtVlrTotalP.Text :=  FormatFloat(CasasDecimais('Produtos'),TotaldoPendente);
   //    end;
         lbl_edtTotalPendente.Text := '0,00';
////////////////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////////////////

 {   while not ibServsVenda.Eof do begin//enquanto nao for fim de registro


          if (ValorGeralCX = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorGeralCX := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorTotalCX := StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorGeralCX := ValorGeralCX + StrtoFloat(StringReplace(ValorTotalCX,ThousandSeparator,'',[rfReplaceAll])); }

       //    end;{if}

////////////////////////////////////////////////////////////////////////////////

         {  if (ValorPendente = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorPendente := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRPENDENTE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorTotalPen := StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRPENDENTE').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorPendente := ValorPendente + StrtoFloat(StringReplace(ValorTotalPen,ThousandSeparator,'',[rfReplaceAll]));  }

         //  end;{if}

      //    ibServsVenda.Next;//vai para o pproximo registro pro looping nao ficar infinito.

     //   end;{while}

     {  if lbl_edtTotal.Text = '0,00' Then begin

        lbl_edtTotal.Text := FormatFloat(CasasDecimais('Produtos'),ValorGeralCX);
        lbl_edtTotalPendente.Text := FormatFloat(CasasDecimais('Produtos'),ValorPendente);

       end; }

////////////////////////////////////////////////////////////////////////////////
  end;//if ckpendente
  end;{with}


end;

procedure TfrmClientes.lbl_edtVlrPagoExit(Sender: TObject);

var

Valor1,Valor2 : Real;

begin

       if (lbl_edtVlrPago.Text <> '') Then begin

         lbl_edtVlrPago.Text := FormatFloat(',0.00',StrToFloat(lbl_edtVlrPago.Text));

       end else begin

         lbl_edtVlrPago.Text := '0,00';

       end;//if

  if (lbl_edtVlrPago.Text <> '')and(lbl_edtVlrPago.Text > '0,01') Then begin

    if lbl_edtVlrPago.Text <> '' Then begin// se for em branco executa rotina abaixo.

      if (Pos(',',lbl_edtVlrPago.Text)>0) and (lbl_edtVlrPago.Text <> '') Then begin

        if (lbl_edtSaldoDevedor.Text > '0')or(lbl_edtSaldoDevedor.Text > '0,00') Then begin

      ///    Valor1 := StrToFloat(FormatFloat(',0.00',StrToFloat(lbl_edtVlrPago.Text)));
         // Valor1 :=
          Valor1 := StrToFloat(StringReplace(lbl_edtVlrPago.Text,ThousandSeparator,'',[rfReplaceAll]));
        ///  Valor1 := StrToFloat(StringReplace(lbl_edtVlrPago.Text,DecimalSeparator,'.',[rfReplaceAll]));
          Valor2 := StrToFloat(StringReplace(lbl_edtSaldoDevedor.Text,ThousandSeparator,'',[rfReplaceAll]));

          lbl_edtTotalemAver.Text := FormatFloat(',0.00',(Valor2 - Valor1));

        end;

        if (lbl_edtSaldoDevedor.Text = '0')or(lbl_edtSaldoDevedor.Text = '')or(lbl_edtSaldoDevedor.Text = '0,00') Then begin

          Valor1 := StrToFloat(lbl_edtVlrPago.Text);
       ///   Valor1 := StrToFloat(StringReplace(lbl_edtVlrPago.Text,ThousandSeparator,'',[rfReplaceAll]));
       ///   Valor1 := StrToFloat(StringReplace(lbl_edtVlrPago.Text,DecimalSeparator,'.',[rfReplaceAll]));
          Valor2 := StrToFloat(StringReplace(lbl_edtVlrTotalP.Text,ThousandSeparator,'',[rfReplaceAll]));

          lbl_edtTotalemAver.Text := FormatFloat(',0.00',(Valor2 - Valor1));

        end;

      end else begin

        if (lbl_edtSaldoDevedor.Text > '0')or(lbl_edtSaldoDevedor.Text > '0,00') Then begin

          Valor1 := StrToFloat(lbl_edtVlrPago.Text);
       ///   Valor1 := StrToFloat(StringReplace(lbl_edtVlrPago.Text,ThousandSeparator,'',[rfReplaceAll]));
      ///    Valor1 := StrToFloat(StringReplace(lbl_edtVlrPago.Text,DecimalSeparator,'.',[rfReplaceAll]));
          Valor2 := StrToFloat(StringReplace(lbl_edtSaldoDevedor.Text,ThousandSeparator,'',[rfReplaceAll]));

          lbl_edtTotalemAver.Text := FormatFloat(',0.00',(Valor2 - Valor1));

        end;

        if (lbl_edtSaldoDevedor.Text = '0')or(lbl_edtSaldoDevedor.Text = '')or(lbl_edtSaldoDevedor.Text = '0,00') Then begin

          Valor1 := StrToFloat(lbl_edtVlrPago.Text);
       ///   Valor1 := StrToFloat(StringReplace(lbl_edtVlrPago.Text,ThousandSeparator,'',[rfReplaceAll]));
       ///   Valor1 := StrToFloat(StringReplace(lbl_edtVlrPago.Text,DecimalSeparator,'.',[rfReplaceAll]));
          Valor2 := StrToFloat(StringReplace(lbl_edtVlrTotalP.Text,ThousandSeparator,'',[rfReplaceAll]));

          lbl_edtTotalemAver.Text := FormatFloat(',0.00',(Valor2 - Valor1));

        end;

      end;{if}

    end;{if}

     lbl_edtVlrPago.Text := (lbl_edtVlrPago.Text);

  // end;{if lbl vlrparcial}
  end;//if vlrpago>0,00

end;

procedure TfrmClientes.lbl_edtVlrPagoKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key = #13 Then begin

    lbl_edtTotalemAver.SetFocus;

  end;
  
end;

procedure TfrmClientes.ibeaPagtoPendenteClick(Sender: TObject);

var
ConfirmaPagto,IDCliente,AvisoCupom : Integer;
VlrPago,Situacao, Historico : String;
TotalPago : Real;

begin

  with dmModule do begin

 // if lbl_edtNCupom.Text = '' Then begin

  //  Application.MessageBox('Para lançar o pendente é necessário digitar o número do cupom?','Recebimento de Pendente',+MB_OK+MB_DEFBUTTON1+MB_ICONINFORMATION);

  //  end else if lbl_edtNCupom.Text <> '' Then begin

      ConfirmaPagto := Application.MessageBox('Confirma o Pagto. de Pendente?','Pagto. Pendente',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

      if ConfirmaPagto = 6 Then begin

        if lbl_edtCodCliH.Text <> '' Then begin

          IDCliente := StrToInt(lbl_edtCodCliH.Text);

        end else begin

          IDCliente := 0;

        end;

        //NumeroCupom := lbl_edtNCupom.Text;

        VlrPago := StringReplace(lbl_edtVlrPago.Text,ThousandSeparator,'',[rfReplaceAll]);
        VlrPago := StringReplace(VlrPago,DecimalSeparator,'.',[rfReplaceAll]);
        if VlrPago = '' Then
        VlrPago := '0';

      ///  TotalPago := StrToFloat(StringReplace(lbl_edtVlrPago.Text,ThousandSeparator,'',[rfReplaceAll]));

      ///  VlrPago := FormatFloat(',0.00',(TotalPago));

      { if VlrPago > '0' Then begin
        VlrPago := FormatFloat(',0.00'),ThousandSeparator,'',[rfReplaceAll];
        end; }

        if (lbl_edtTotalemAver.Text > '0,00')Then begin

          Historico := 'Pendente';

          ibPagtoPendente.Close;
          ibPagtoPendente.SQL.Clear;
          ibPagtoPendente.SQL.Add('INSERT INTO TBLPAGTOPENDENTE'
          + '(IDCLI,VLRPAGO,SITUACAO,DATAPAGTO) values '
          + '(''' + IntToStr(IDCliente) + ''','
          + ' ''' + VlrPago + ''','
          + ' ''' + Historico + ''','
          + ' ''' + FormatDateTime('mm-dd-yyyy',Now) + ''')');
          ibPagtoPendente.ExecSQL;
          Commit(ibPagtoPendente);

        end;

        if (lbl_edtTotalemAver.Text = '0,00')or(lbl_edtTotalemAver.Text = '0')Then begin

          Situacao := 'Pago';

          ibConsultaVendas.Close;
          ibConsultaVendas.SQL.Clear;
          ibConsultaVendas.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
          + 'PENDENTEPAGO = ''' + Situacao + ''' WHERE IDCLIENTE=''' + IntToStr(IDCliente) + '''');
          ibConsultaVendas.ExecSQL;                                                              // and IDSERVSVENDA=''' + lbl_edtNCupom.Text + '''
          Commit(ibConsultaVendas);

          ibCadastro.Close;
          ibCadastro.SQL.Clear;
          ibCadastro.SQL.Add('UPDATE TBLCADASTRO SET '
          + 'PENDENTEPAGO = ''' + Situacao + ''' WHERE IDCAD=''' + IntToStr(IDCliente) + '''');
          ibCadastro.ExecSQL;
          Commit(ibCadastro);

          if ibPagtoPendente.RecordCount > 0 Then begin

            ibPagtoPendente.Close;
            ibPagtoPendente.SQL.Clear;
            ibPagtoPendente.SQL.Add('INSERT INTO TBLPAGTOPENDENTE'
            + '(IDCLI,VLRPAGO,SITUACAO,DATAPAGTO) values '
            + '(''' + IntToStr(IDCliente) + ''','
            + ' ''' + VlrPago + ''','
            + ' ''' + Situacao + ''','
            + ' ''' + FormatDateTime('mm-dd-yyyy',Now) + ''')');
            ibPagtoPendente.ExecSQL;
            Commit(ibPagtoPendente);

            ibPagtoPendente.Close;
            ibPagtoPendente.SQL.Clear;
            ibPagtoPendente.SQL.Add('UPDATE TBLPAGTOPENDENTE SET '
            + 'SITUACAO =  ''' + Situacao + ''' WHERE IDCLI=''' + IntToStr(IDCliente) + '''');
            ibPagtoPendente.ExecSQL;                                                  //   and NCUPOM=''' + lbl_edtNCupom.Text + '''
            Commit(ibPagtoPendente);

          end else begin

            ibPagtoPendente.Close;
            ibPagtoPendente.SQL.Clear;
            ibPagtoPendente.SQL.Add('INSERT INTO TBLPAGTOPENDENTE'
            + '(IDCLI,VLRPAGO,SITUACAO,DATAPAGTO) values '
            + '(''' + IntToStr(IDCliente) + ''','
            + ' ''' + VlrPago + ''','
            + ' ''' + Situacao + ''','
            + ' ''' + FormatDateTime('mm-dd-yyyy',Now) + ''')');
            ibPagtoPendente.ExecSQL;
            Commit(ibPagtoPendente);

          end;//ibpagtopendente recordcount

        end;//if totalemaver

      end;//if confirmapagto.

      ibeaHistoricoClick(Sender);
      lbl_edtVlrPago.Clear;
      lbl_edtTotalemAver.Clear;
  //  end;//if n cupom

  end;//with

end;

procedure TfrmClientes.ibeaPagtosEfetuadosClick(Sender: TObject);
begin

  with dmModule do begin

    if lbl_CodCliPagto.Caption <> '' Then begin

      Commit(ibPagtoPendente);
      ibPagtoPendente.Close;
      ibPagtoPendente.SQL.Clear;
      ibPagtoPendente.SQL.Add('SELECT * FROM TBLPAGTOPENDENTE WHERE IDCLI=''' + lbl_CodCliPagto.Caption + '''');
      ibPagtoPendente.Open;

      (ibPagtoPendente.FieldByName('VLRPAGO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

    end;//if

  end;//with
  
end;

procedure TfrmClientes.dbgPagamentoEfetuadoCellClick(Column: TColumn);
begin

  with dmModule do begin

    IDPagtoEfetuado := ibPagtoPendente.FieldByName('IDPAGTOPENDENTE').AsInteger;

    if ibPagtoPendente.RecordCount > 0 Then begin

      lbl_edtData.Text := FormatDateTime('dd/mm/yyyy',ibPagtoPendente.FieldByName('DATAPAGTO').AsDateTime);
      lbl_edtValorPagtoEfetuado.Text := FormatFloat(CasasDecimais('Produtos'),ibPagtoPendente.FieldByName('VLRPAGO').AsFloat);

    end;//if recordcount


  end;//with


end;

procedure TfrmClientes.ibeaExcluirPagtoClick(Sender: TObject);

var

ConfirmaExclusao, IDClientePagto : Integer;
Situacao : String;

begin

  with dmModule do begin

  ConfirmaExclusao := Application.MessageBox('Confirma a Exclusao do lançamento?','Exclusão de Lançamento',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

    if ConfirmaExclusao = 6 Then begin

      ibPagtoPendente.Close;
      ibPagtoPendente.SQL.Clear;
      ibPagtoPendente.SQL.Add('DELETE FROM TBLPAGTOPENDENTE WHERE IDPAGTOPENDENTE=''' + IntToStr(IDPagtoEfetuado) + '''');
      ibPagtoPendente.ExecSQL;
      Commit(ibPagtoPendente);

      if lbl_CodCliPagto.Caption <> '' Then begin

        Commit(ibPagtoPendente);
        ibPagtoPendente.Close;
        ibPagtoPendente.SQL.Clear;
        ibPagtoPendente.SQL.Add('SELECT * FROM TBLPAGTOPENDENTE WHERE IDCLI=''' + lbl_CodCliPagto.Caption + '''');
        ibPagtoPendente.Open;

        (ibPagtoPendente.FieldByName('VLRPAGO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

        IDClientePagto := StrToInt(lbl_CodCliPagto.Caption);

        Situacao := 'Pendente';

        if ibPagtoPendente.RecordCount > 0 Then begin

          ibPagtoPendente.Close;
          ibPagtoPendente.SQL.Clear;
          ibPagtoPendente.SQL.Add('UPDATE TBLPAGTOPENDENTE SET '
          + 'SITUACAO =  ''' + Situacao + ''' WHERE IDCLI=''' + IntToStr(IDClientePagto) + '''');
          ibPagtoPendente.ExecSQL;
          Commit(ibPagtoPendente);                                                          //    and IDPAGTOPENDENTE=''' + IntToStr(IDPagtoEfetuado) + '''

        end;//if

        ibServsVenda.Close;
        ibServsVenda.SQL.Clear;
        ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
        + 'PENDENTEPAGO = ''' + Situacao + ''' WHERE IDCLIENTE=''' + IntToStr(IDClientePagto) + '''and TIPOVENDA=''Pendente''');
        ibServsVenda.ExecSQL;
        Commit(ibServsVenda);

      end;//if

    end;//if

    lbl_edtData.Clear;
    lbl_edtValorPagtoEfetuado.Clear;

  end;//with

end;

procedure TfrmClientes.ibeaRelatorioPClick(Sender: TObject);

var

IDClienteHistorico, IDClass : Integer;
ValorParcial, TotaldoPendente  : Real;
ValorParcialPago : String;
  ValorGeralCX : Real;
  ValorTotalCX : String;
  ValorPendente : Real;
  ValorTotalPen : String;
  VlrPago : Real;
  TotalPago : String;
  SaldoDevedor : Real;
  VlrAcrescimo : Real;
  TotalAcrescimo : String;
  
begin

  with dmModule do begin

    if ValorGeralCX > 0 Then begin

      ValorGeralCX := 0;

    end;

    if ValorTotalCX > '0' Then begin

      ValorTotalCX := '0';

    end;

    if ValorPendente > 0 Then begin

      ValorPendente := 0;

    end;

    if ValorTotalPen > '0' Then begin

      ValorTotalPen := '0';

    end;

    if VlrPago > 0 Then begin

      VlrPago := 0;

    end;

    if TotalPago > '0' Then begin

      TotalPago := '0';

    end;

    if VlrAcrescimo > 0 Then begin

      VlrAcrescimo := 0;

    end;

    if TotalAcrescimo > '0' Then begin

      TotalAcrescimo := '0';

    end;
    
////////////////////////////////////////////////////////////////////////////////

    if (frmClientes.lbl_edtNomeCliH.Text <> '') Then begin

    {ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
    ibClassificacao.Open;
    IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO CLIENTE NA VARIAVEL.


    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLCADDOCUMENTACAO.CODIGO FROM TBLCADASTRO '
    + 'LEFT OUTER JOIN TBLCADDOCUMENTACAO ON TBLCADASTRO.IDCAD=TBLCADDOCUMENTACAO.IDCAD WHERE TBLCADASTRO.IDCLASS=''' + IntToStr(IDClass) + ''' and TBLCADDOCUMENTACAO.IDCAD=''' + IntToStr(IDCad) + '''');
    ibCadastro.Open; }

  ////  IDClienteHistorico := ibCadastro.FieldByName('IDCAD').AsInteger;

  //   TBLCADASTRO.NOME=''' + lbl_edtNomeCliH.Text + ''' and
    Commit(ibTempVendaLoja);
    ibTempVendaLoja.Close;
    ibTempVendaLoja.SQL.Clear;
    ibTempVendaLoja.SQL.Add('SELECT TBLSERVICOSVENDAS.*,'
    + 'CADPRODUTOS.NOME As Produto,TBLCADASTRO.NOME As Cliente FROM TBLSERVICOSVENDAS '
    + 'LEFT OUTER JOIN TBLCADASTRO ON TBLSERVICOSVENDAS.IDCLIENTE=TBLCADASTRO.IDCAD '
    + 'LEFT OUTER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD '
    + 'WHERE TBLSERVICOSVENDAS.IDCLIENTE=''' + frmClientes.lbl_edtCodCliH.Text + ''' and TBLSERVICOSVENDAS.POSVENDA=''Pago''and TBLSERVICOSVENDAS.PENDENTEPAGO=''Pendente'' ORDER BY TBLSERVICOSVENDAS.IDSERVSVENDA ASC');
    ibTempVendaLoja.Open;                        //  IntToStr(IDCad)

    (ibTempVendaLoja.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibTempVendaLoja.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibTempVendaLoja.FieldByName('PAGTOPARCIAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibTempVendaLoja.FieldByName('VLRPENDENTE') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO


    Commit(ibPagtoPendente);
    ibPagtoPendente.Close;
    ibPagtoPendente.SQL.Clear;
    ibPagtoPendente.SQL.Add('SELECT * FROM TBLPAGTOPENDENTE WHERE IDCLI=''' + frmClientes.lbl_edtCodCliH.Text + '''');
    ibPagtoPendente.Open;

    while not ibPagtoPendente.Eof do begin

      if ibPagtoPendente.FieldByName('SITUACAO').AsString <> 'Pago' Then begin

        if (VlrPago = 0)Then begin

          VlrPago := StrToFloat(StringReplace(FloatToStr(ibPagtoPendente.FieldByName('VLRPAGO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

        end else begin

          TotalPago := StringReplace(FloatToStr(ibPagtoPendente.FieldByName('VLRPAGO').AsFloat),ThousandSeparator,'',[rfReplaceAll]);
          VlrPago := VlrPago + StrToFloat(StringReplace(TotalPago,ThousandSeparator,'',[rfReplaceAll]));

        end;

      end;

      ibPagtoPendente.Next

    end;//while


   end;//if label cod cli  TBLCADASTRO.NOME=''' + lbl_edtNomeCliH.Text + ''' and

////////////////////////////////////////////////////////////////////////////////


    while not ibTempVendaLoja.Eof do begin//enquanto nao for fim de registro


          if (ValorGeralCX = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorGeralCX := StrtoFloat(StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorTotalCX := StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorGeralCX := ValorGeralCX + StrtoFloat(StringReplace(ValorTotalCX,ThousandSeparator,'',[rfReplaceAll]));

           end;{if}

////////////////////////////////////////////////////////////////////////////////
           if ibTempVendaLoja.FieldByName('PENDENTEPAGO').AsString = 'Pendente' Then begin

             if (ValorPendente = 0) Then begin//se variavel for igual a zero

              //atribui o vlr do campo abaixo na variavel
              ValorPendente := StrtoFloat(StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             end else begin

              //atribui na variavel substituindo o ponto para vlr em branco
              ValorTotalPen := StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

              //atribui a variavel o valor separando por ponto
              ValorPendente := ValorPendente + StrtoFloat(StringReplace(ValorTotalPen,ThousandSeparator,'',[rfReplaceAll]));

             end;{if}

            if (VlrAcrescimo = 0) Then begin//se variavel for igual a zero

              //atribui o vlr do campo abaixo na variavel
              VlrAcrescimo := StrtoFloat(StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('ACRESCIMO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

            end else begin

              //atribui na variavel substituindo o ponto para vlr em branco
              TotalAcrescimo := StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('ACRESCIMO').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

              //atribui a variavel o valor separando por ponto
              VlrAcrescimo := VlrAcrescimo + StrtoFloat(StringReplace(TotalAcrescimo,ThousandSeparator,'',[rfReplaceAll]));

             end;{if}

           end;//if
////////////////////////////////////////////////////////////////////////////////

           if (ValorParcial = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorParcial := StrtoFloat(StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('PAGTOPARCIAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorParcialPago := StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('PAGTOPARCIAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorParcial := ValorParcial + StrtoFloat(StringReplace(ValorParcialPago,ThousandSeparator,'',[rfReplaceAll]));

           end;{if}


          if ValorParcial > 0 Then begin

          TotaldoPendente := ValorPendente - ValorParcial;

          end else begin

          TotaldoPendente := ValorPendente;

          end;//if



////////////////////////////////////////////////////////////////////////////////


          ibTempVendaLoja.Next;//vai para o pproximo registro pro looping nao ficar infinito.

        end;{while}

     //  if lbl_edtTotal.Text = '0,00' Then begin

        //lbl_edtTotal.Text := FormatFloat(CasasDecimais('Produtos'),ValorGeralCX);
       // lbl_edtTotalPendente.Text := FormatFloat(CasasDecimais('Produtos'),TotaldoPendente);
       // lbl_edtTotalPago.Text :=  FormatFloat(CasasDecimais('Produtos'),ValorParcial);


        if VlrPago > 0 Then begin

          if TotaldoPendente > VlrPago Then begin

            SaldoDevedor := TotaldoPendente - VlrPago;

          end;

          if TotaldoPendente < VlrPago Then begin

            SaldoDevedor := VlrPago - TotaldoPendente;

          end;

          if TotaldoPendente = 0 Then begin

            SaldoDevedor := 0

          end;

        end;


////////////////////////////////////////////////////////////////////////////////


   Application.CreateForm(TfrmRelPendente, frmRelPendente);

    TRY

      with frmRelPendente do begin

        frmRelPendente.qrpPendentes.DataSet := ibTempVendaLoja;


        //ATRIBUI OS NOMES DOS CAMPOS AOS QRDBTEXT DO QUICKREPORT
        qrdbNCupom.DataSet    := ibTempVendaLoja;
        qrdbNCupom.DataField  := ibTempVendaLoja.FieldByName('IDSERVSVENDA').FieldName;


        qrdbProd.DataSet    := ibTempVendaLoja;
        qrdbProd.DataField  := ibTempVendaLoja.FieldByName('NOMEPROD').FieldName;

        qrdbObs.DataSet    := ibTempVendaLoja;
        qrdbObs.DataField  := ibTempVendaLoja.FieldByName('OBS').FieldName;

        qrdbQtde.DataSet     := ibTempVendaLoja;
        qrdbQtde.DataField   := ibTempVendaLoja.FieldByName('QTDE').FieldName;


        qrdbVlrUnit.DataSet   := ibTempVendaLoja;
        qrdbVlrUnit.DataField := ibTempVendaLoja.FieldByName('VLRUNIT').FieldName;
        (ibTempVendaLoja.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

        qrdbTotal.DataSet   := ibTempVendaLoja;
        qrdbTotal.DataField := ibTempVendaLoja.FieldByName('VLRTOTAL').FieldName;
        (ibTempVendaLoja.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

        qrdbTaxa.DataSet   := ibTempVendaLoja;
        qrdbTaxa.DataField := ibTempVendaLoja.FieldByName('ACRESCIMO').FieldName;
        (ibTempVendaLoja.FieldByName('ACRESCIMO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO


        qrdbData.DataSet        := ibTempVendaLoja;
        qrdbData.DataField      := ibTempVendaLoja.FieldByName('DATA').FieldName;

        if TotaldoPendente > 0 Then begin

          qrl_VlrTotalP.Caption :=  FormatFloat(CasasDecimais('Produtos'),TotaldoPendente + VlrAcrescimo);

        end else begin

          qrl_VlrTotalP.Caption := '0,00';

        end;

        if SaldoDevedor > 0 Then begin

          if ValorParcial = 0 Then begin

          qrl_SaldoDevedor.Caption := FormatFloat(CasasDecimais('Produtos'),SaldoDevedor + VlrAcrescimo);

          end;

          if ValorParcial > 0 Then begin

          qrl_SaldoDevedor.Caption := FormatFloat(CasasDecimais('Produtos'),SaldoDevedor);

          end;

        end else begin

          qrl_SaldoDevedor.Caption := '0,00';

        end;

        if VlrPago > 0 Then begin

          qrl_PagtoParcial.Caption := FormatFloat(CasasDecimais('Produtos'),VlrPago);

        end else begin

          qrl_PagtoParcial.Caption := '0,00';

        end;

        if frmClientes.lbl_edtNomeCliH.Text <> '' Then begin

          qrl_NomeCliente.Caption := frmClientes.lbl_edtNomeCliH.Text;

        end else begin

          qrl_NomeCliente.Caption := '';

        end;

        if frmClientes.lbl_edtTelefoneH.Text <> '' Then begin

          qrl_NumeroTelefone.Caption := frmClientes.lbl_edtTelefoneH.Text;

        end else begin

          qrl_NumeroTelefone.Caption := '';

        end;

        qrpPendentes.Preview;

      end; {if}


    EXCEPT
      on E : Exception do begin
         frmRelPendente.Release;
         MessageDlg('Ocorreu um erro ao tentar mostrar o Formulário: ' + E.Message,mtError,[mbOk],0);
      end;
    END;
  //////////////////////////////////////////////////////////////

  end;{with}

  
end;

procedure TfrmClientes.lbl_edtPesqEnderecoChange(Sender: TObject);
begin

  with dmModule do begin

   { ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
    ibClassificacao.Open;
    IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger;} // ATRIBUI A IDENTIFICAÇÃO DO CLIENTE NA VARIAVEL.

    //BUSCA TODOS OS CLIENTES QUE ESTEJAM NA CLASSIFICAÇÃO DE CLIENTES
    Commit(ibCadastro);
    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,'
    + ' TBLLOGRADOURO.ENDERECO,TBLLOGRADOURO.BAIRRO FROM TBLCADASTRO '
    + ' INNER JOIN TBLLOGRADOURO ON TBLCADASTRO.IDCAD=TBLLOGRADOURO.IDCAD '
    + ' WHERE TBLLOGRADOURO.ENDERECO LIKE '+''''+'%'+lbl_edtPesqEndereco.Text+'%'+'''');
    ibCadastro.Open;
    // (TBLCADASTRO.idclass=''' + InttoStr(IDClass) + ''')and and (TBLCONTATO.TIPO=''' + IntToStr(IDClassTelcom) + ''' or TBLCONTATO.TIPO IS NULL) and
  end;//with

end;

procedure TfrmClientes.ibeaImprimirClick(Sender: TObject);

var

{IDClienteHistorico : Integer;
ValorParcial, TotaldoPendente  : Real;
ValorParcialPago : String;
  ValorGeralCX : Real;
  ValorTotalCX : String;
  ValorPendente : Real;
  ValorTotalPen : String;
  
  TotalPago : String;
  SaldoDevedor : Real;}
  VlrAcrescimo : Real;
  TotalAcrescimo : String;
  DesenhodeDivisaoPed, QtdedeSaltosPed, DataConvertida, Hora : String;
  VlrPago : Real;
begin

  with dmModule do begin


    if (lbl_edtNomeCliH.Text <> '') Then begin

   { while not ibPagtoPendente.Eof do begin

      if (VlrPago = 0)Then begin

        VlrPago := StrToFloat(StringReplace(FloatToStr(ibPagtoPendente.FieldByName('VLRPAGO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

      end else begin

        TotalPago := StringReplace(FloatToStr(ibPagtoPendente.FieldByName('VLRPAGO').AsFloat),ThousandSeparator,'',[rfReplaceAll]);
        VlrPago := VlrPago + StrToFloat(StringReplace(TotalPago,ThousandSeparator,'',[rfReplaceAll]));

      end;

      ibPagtoPendente.Next

    end;//while }

////////////////////////////////////////////////////////////////////////////////


  {  while not ibServsVenda.Eof do begin//enquanto nao for fim de registro


          if (ValorGeralCX = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorGeralCX := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorTotalCX := StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorGeralCX := ValorGeralCX + StrtoFloat(StringReplace(ValorTotalCX,ThousandSeparator,'',[rfReplaceAll]));

           end;}//{if}

////////////////////////////////////////////////////////////////////////////////

          { if ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pendente' Then begin

             if (ValorPendente = 0) Then begin//se variavel for igual a zero

              //atribui o vlr do campo abaixo na variavel
              ValorPendente := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             end else begin

              //atribui na variavel substituindo o ponto para vlr em branco
              ValorTotalPen := StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

              //atribui a variavel o valor separando por ponto
              ValorPendente := ValorPendente + StrtoFloat(StringReplace(ValorTotalPen,ThousandSeparator,'',[rfReplaceAll]));

             end;}//{if}

           { if (VlrAcrescimo = 0) Then begin//se variavel for igual a zero

              //atribui o vlr do campo abaixo na variavel
              VlrAcrescimo := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('ACRESCIMO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

            end else begin

              //atribui na variavel substituindo o ponto para vlr em branco
              TotalAcrescimo := StringReplace(FloattoStr(ibServsVenda.FieldByName('ACRESCIMO').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

              //atribui a variavel o valor separando por ponto
              VlrAcrescimo := VlrAcrescimo + StrtoFloat(StringReplace(TotalAcrescimo,ThousandSeparator,'',[rfReplaceAll]));

             end;}//{if}

          // end;//if

////////////////////////////////////////////////////////////////////////////////

        {   if (ValorParcial = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorParcial := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('PAGTOPARCIAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorParcialPago := StringReplace(FloattoStr(ibServsVenda.FieldByName('PAGTOPARCIAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorParcial := ValorParcial + StrtoFloat(StringReplace(ValorParcialPago,ThousandSeparator,'',[rfReplaceAll]));

           end;}//{if}


        {  if ValorParcial > 0 Then begin

          TotaldoPendente := ValorPendente - ValorParcial;

          end else begin

          TotaldoPendente := ValorPendente;

          end;}//if



////////////////////////////////////////////////////////////////////////////////


        ////  ibServsVenda.Next;//vai para o pproximo registro pro looping nao ficar infinito.

       //// end;{while}


    {    if VlrPago > 0 Then begin

          if TotaldoPendente > VlrPago Then begin

            SaldoDevedor := TotaldoPendente - VlrPago;

          end;

          if TotaldoPendente < VlrPago Then begin

            SaldoDevedor := VlrPago - TotaldoPendente;

          end;

          if TotaldoPendente = 0 Then begin

            SaldoDevedor := 0

          end;

        end;

        if lbl_edtPagtoParcial.Text = '0,00' Then begin

        lbl_edtSaldoDevedor.Text := FormatFloat(CasasDecimais('Produtos'),SaldoDevedor);

        end;

        if lbl_edtPagtoParcial.Text > '0,00' Then begin

        lbl_edtSaldoDevedor.Text := FormatFloat(CasasDecimais('Produtos'),SaldoDevedor + VlrAcrescimo);

        end; }


////////////////////////////////////////////////////////////////////////////////

            Commit(ibConfig);
            ibConfig.Close;
            ibConfig.SQL.Clear;
            ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
            ibConfig.Open;

            QtdedeSaltosPed     := IntToStr(ibConfig.FieldByName('QTDESALTOS').AsInteger);
            DesenhodeDivisaoPed := ibConfig.FieldByName('DESENHODIVISAO').AsString;

            Commit(ibDadosEmpresa);
            ibDadosEmpresa.Close;
            ibDadosEmpresa.SQL.Clear;
            ibDadosEmpresa.SQL.Add('SELECT * FROM TBLDADOSEMPRESA');
            ibDadosEmpresa.Open;

            DataConvertida := FormatDateTime('DD/MM/YYYY',Now);
            Hora           := FormatDateTime('hh:mm:ss',Now);

                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(''+ibDadosEmpresa.FieldByName('NOME').AsString),0);

                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisaoPed),0);

                if lbl_edtNomeCliH.Text <> '' Then begin
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Cliente: '+lbl_edtNomeCliH.Text),0);
                end;

                if lbl_edtTelefoneH.Text <> '' then begin
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Telefone: '+lbl_edtTelefoneH.Text),0);
                end;
                if lbl_edtCelularH.Text <> '' Then begin
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Celular : '+lbl_edtCelularH.Text),0);
                end;

                if lbl_edtEndereco.Text <> '' Then begin
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Endereço: '+lbl_edtEndereco.Text+'  ,'+lbl_edtNumero.Text),0);
                end;

                if lbl_edtComplemento.Text <> '' Then begin
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Compl.: '+lbl_edtComplemento.Text),0);
                end;

                if lbl_edtBairro.Text <> ''Then begin
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Bairro: '+lbl_edtBairro.Text),0);
                end;

                if lbl_edtPontoreferencia.Text <> '' Then begin
                Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('** '+lbl_edtPontoreferencia.Text+' **'),0);
                end;

             //end;

              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisaoPed),0);

              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('     HISTORICO DE VENDAS PENDENTES'),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Data:<sp>1</sp>'+DataConvertida+ '<sp>1</sp>Hora:<sp>1</sp>'+Hora+''),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisaoPed),0);

              if ckPendente.Checked Then begin

                Commit(ibImprimeVendasLoja);
                ibImprimeVendasLoja.Close;
                ibImprimeVendasLoja.SQL.Clear;
                ibImprimeVendasLoja.SQL.Add('SELECT TBLSERVICOSVENDAS.*,'
                + 'CADPRODUTOS.NOME As Produto,TBLCADASTRO.NOME As Cliente FROM TBLSERVICOSVENDAS '
                + 'LEFT OUTER JOIN TBLCADASTRO ON TBLSERVICOSVENDAS.IDCLIENTE=TBLCADASTRO.IDCAD '
                + 'LEFT OUTER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD '
                + 'WHERE(TBLSERVICOSVENDAS.IDCLIENTE=''' + lbl_edtCodCliH.Text + ''')and TBLSERVICOSVENDAS.PENDENTEPAGO=''Pendente'' ORDER BY TBLSERVICOSVENDAS.IDSERVSVENDA ASC');
                ibImprimeVendasLoja.Open;                        //  IntToStr(IDCad)

              {  ibImprimeVendasLoja.Close;   and(TBLSERVICOSVENDAS.DATA between :ParamDataIni and :ParamDataF)
                ibImprimeVendasLoja.ParamByName('ParamDataIni').Value := dtpDataIni.DateTime;
                ibImprimeVendasLoja.ParamByName('ParamDataF').Value := dtpDataFinal.DateTime;
                ibImprimeVendasLoja.Open; }


                (ibImprimeVendasLoja.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
                (ibImprimeVendasLoja.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
                (ibImprimeVendasLoja.FieldByName('PAGTOPARCIAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
                (ibImprimeVendasLoja.FieldByName('VLRPENDENTE') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
                (ibImprimeVendasLoja.FieldByName('ACRESCIMO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO


                while not ibImprimeVendasLoja.Eof do begin

                  if (VlrAcrescimo = 0) Then begin//se variavel for igual a zero

                    //atribui o vlr do campo abaixo na variavel
                    VlrAcrescimo := StrtoFloat(StringReplace(FloattoStr(ibImprimeVendasLoja.FieldByName('ACRESCIMO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

                  end else begin

                    //atribui na variavel substituindo o ponto para vlr em branco
                    TotalAcrescimo := StringReplace(FloattoStr(ibImprimeVendasLoja.FieldByName('ACRESCIMO').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

                    //atribui a variavel o valor separando por ponto
                    VlrAcrescimo := VlrAcrescimo + StrtoFloat(StringReplace(TotalAcrescimo,ThousandSeparator,'',[rfReplaceAll]));

                   end;//{if}

                  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(ibImprimeVendasLoja.FieldByName('NOMEPROD').AsString)+' -> '+ DateToStr(ibImprimeVendasLoja.FieldByName('DATA').AsDateTime),0);
                  if ibImprimeVendasLoja.FieldByName('OBS').AsString <> '' Then begin
                  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Obs.: '+ ibImprimeVendasLoja.FieldByName('OBS').AsString),0);
                  end;
                  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(ibImprimeVendasLoja.FieldByName('QTDE').AsString)+' X '+FormatFloat(CasasDecimais('Produtos'),ibImprimeVendasLoja.FieldByName('VLRUNIT').AsFloat)+' = '+FormatFloat(CasasDecimais('Produtos'),ibImprimeVendasLoja.FieldByName('VLRTOTAL').AsFloat),0);

                  ibImprimeVendasLoja.Next;

                end;//whgile

              end;//if ckpendente

              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Total em Taxa de Entrega: '+FormatFloat(CasasDecimais('Produtos'),VlrAcrescimo)),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisaoPed),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Total de Venda Pendente:'+lbl_edtVlrTotalP.Text),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Pagto Parcial:'+lbl_edtPagtoParcial.Text),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Saldo Devedor:'+lbl_edtSaldoDevedor.Text),0);
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(DesenhodeDivisaoPed),0);

              Commit(ibPagtoPendente);
              ibPagtoPendente.Close;
              ibPagtoPendente.SQL.Clear;
              ibPagtoPendente.SQL.Add('SELECT * FROM TBLPAGTOPENDENTE WHERE IDCLI=''' + lbl_edtCodCliH.Text + ''' ORDER BY IDPAGTOPENDENTE ASC');
              ibPagtoPendente.Open;

              while not ibPagtoPendente.Eof do begin

                if ibPagtoPendente.FieldByName('SITUACAO').AsString <> 'Pago' Then begin

                  VlrPago := StrToFloat(StringReplace(FloatToStr(ibPagtoPendente.FieldByName('VLRPAGO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

                  if (VlrPago > 0)  Then begin

                  Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Pagto: R$ '+FormatFloat(CasasDecimais('Produtos'),ibPagtoPendente.FieldByName('VLRPAGO').AsFloat)+'  Data:'+FormatDateTime('DD/MM/YYYY',ibPagtoPendente.FieldByName('DATAPAGTO').AsDateTime)),0);

                  end;//if

                end;
                
                ibPagtoPendente.Next;

              end;//while

              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sl>'+QtdedeSaltosPed+'</sl>'), 0);

             // Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tc>*</tc>'),0);
              //IPRIMINDO A VIGÉSIMA PRIMEIRA LINHA
              if Int_Retorno = 1 Then
              begin
                Application.MessageBox('Impressao Concluida!!!', 'CP SISTEMAS', mb_ok + 32);
              end
              else
              begin
                Application.MessageBox('Erro!', 'Daruma Framework', mb_ok + 16);
              end;

     end;//if label nomecli
              
  end;//with

////////////////////////////////////////////////////////////////////////////////

end;

procedure TfrmClientes.ckPendenteCheck(Sender: TObject);

var

IDClienteHistorico, IDClass : Integer;
ValorParcial, TotaldoPendente  : Real;
ValorParcialPago : String;
  ValorGeralCX : Real;
  ValorTotalCX : String;
  ValorPendente : Real;
  ValorTotalPen : String;
  VlrPago : Real;
  TotalPago : String;
  SaldoDevedor : Real;
  VlrAcrescimo : Real;
  TotalAcrescimo : String;

begin

  with dmModule do begin

    if ValorGeralCX > 0 Then begin

      ValorGeralCX := 0;

    end;

    if ValorTotalCX > '0' Then begin

      ValorTotalCX := '0';

    end;

    if ValorPendente > 0 Then begin

      ValorPendente := 0;

    end;

    if ValorTotalPen > '0' Then begin

      ValorTotalPen := '0';

    end;

    if VlrPago > 0 Then begin

      VlrPago := 0;

    end;

    if TotalPago > '0' Then begin

      TotalPago := '0';

    end;

    if VlrAcrescimo > 0 Then begin

      VlrAcrescimo := 0;

    end;

    if TotalAcrescimo > '0' Then begin

      TotalAcrescimo := '0';

    end;

////////////////////////////////////////////////////////////////////////////////

    if (lbl_edtNomeCliH.Text <> '')and(ckPendente.Checked = True) Then begin

    Commit(ibConsultaVendas);
    ibConsultaVendas.Close;
    ibConsultaVendas.SQL.Clear;
    ibConsultaVendas.SQL.Add('SELECT TBLSERVICOSVENDAS.*,'
    + 'CADPRODUTOS.NOME As Produto,TBLCADASTRO.NOME As Cliente FROM TBLSERVICOSVENDAS '
    + 'LEFT OUTER JOIN TBLCADASTRO ON TBLSERVICOSVENDAS.IDCLIENTE=TBLCADASTRO.IDCAD '
    + 'LEFT OUTER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD '
    + 'WHERE TBLSERVICOSVENDAS.IDCLIENTE=''' + lbl_edtCodCliH.Text + ''' and TBLSERVICOSVENDAS.PENDENTEPAGO=''Pendente'' ORDER BY TBLSERVICOSVENDAS.IDSERVSVENDA ASC');
    ibConsultaVendas.Open;                        //  IntToStr(IDCad)

    (ibConsultaVendas.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibConsultaVendas.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibConsultaVendas.FieldByName('PAGTOPARCIAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibConsultaVendas.FieldByName('VLRPENDENTE') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibConsultaVendas.FieldByName('ACRESCIMO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

    Commit(ibPagtoPendente);
    ibPagtoPendente.Close;
    ibPagtoPendente.SQL.Clear;
    ibPagtoPendente.SQL.Add('SELECT * FROM TBLPAGTOPENDENTE WHERE IDCLI=''' + lbl_edtCodCliH.Text + ''' and SITUACAO=''Pendente''');
    ibPagtoPendente.Open;

    while not ibPagtoPendente.Eof do begin

     // if ibPagtoPendente.FieldByName('SITUACAO').AsString <> 'Pago' Then begin

        if (VlrPago = 0)Then begin

          VlrPago := StrToFloat(StringReplace(FloatToStr(ibPagtoPendente.FieldByName('VLRPAGO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

        end else begin

          TotalPago := StringReplace(FloatToStr(ibPagtoPendente.FieldByName('VLRPAGO').AsFloat),ThousandSeparator,'',[rfReplaceAll]);
          VlrPago := VlrPago + StrToFloat(StringReplace(TotalPago,ThousandSeparator,'',[rfReplaceAll]));

        end;

     // end;

      ibPagtoPendente.Next

    end;//while

    lbl_edtPagtoParcial.Text := FormatFloat(CasasDecimais('Produtos'),VlrPago);

////////////////////////////////////////////////////////////////////////////////

   end;//if label cod cli  TBLCADASTRO.NOME=''' + lbl_edtNomeCliH.Text + ''' and

////////////////////////////////////////////////////////////////////////////////


    while not ibConsultaVendas.Eof do begin//enquanto nao for fim de registro


          if (ValorGeralCX = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorGeralCX := StrtoFloat(StringReplace(FloattoStr(ibConsultaVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorTotalCX := StringReplace(FloattoStr(ibConsultaVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorGeralCX := ValorGeralCX + StrtoFloat(StringReplace(ValorTotalCX,ThousandSeparator,'',[rfReplaceAll]));

           end;{if}

////////////////////////////////////////////////////////////////////////////////

          if ibConsultaVendas.FieldByName('PENDENTEPAGO').AsString = 'Pendente' Then begin

             if (ValorPendente = 0) Then begin//se variavel for igual a zero

              //atribui o vlr do campo abaixo na variavel
              ValorPendente := StrtoFloat(StringReplace(FloattoStr(ibConsultaVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             end else begin

              //atribui na variavel substituindo o ponto para vlr em branco
              ValorTotalPen := StringReplace(FloattoStr(ibConsultaVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

              //atribui a variavel o valor separando por ponto
              ValorPendente := ValorPendente + StrtoFloat(StringReplace(ValorTotalPen,ThousandSeparator,'',[rfReplaceAll]));

             end;{if}

            if (VlrAcrescimo = 0) Then begin//se variavel for igual a zero

              //atribui o vlr do campo abaixo na variavel
              VlrAcrescimo := StrtoFloat(StringReplace(FloattoStr(ibConsultaVendas.FieldByName('ACRESCIMO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

            end else begin

              //atribui na variavel substituindo o ponto para vlr em branco
              TotalAcrescimo := StringReplace(FloattoStr(ibConsultaVendas.FieldByName('ACRESCIMO').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

              //atribui a variavel o valor separando por ponto
              VlrAcrescimo := VlrAcrescimo + StrtoFloat(StringReplace(TotalAcrescimo,ThousandSeparator,'',[rfReplaceAll]));

             end;{if}

           end;//if

////////////////////////////////////////////////////////////////////////////////

        {   if (ValorParcial = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorParcial := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('PAGTOPARCIAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorParcialPago := StringReplace(FloattoStr(ibServsVenda.FieldByName('PAGTOPARCIAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorParcial := ValorParcial + StrtoFloat(StringReplace(ValorParcialPago,ThousandSeparator,'',[rfReplaceAll])); }

         ////  end;{if}


       {  if ValorParcial > 0 Then begin

          TotaldoPendente := ValorPendente - ValorParcial;

          end else begin

          TotaldoPendente := ValorPendente;

          end;//if  }



////////////////////////////////////////////////////////////////////////////////


          ibConsultaVendas.Next;//vai para o pproximo registro pro looping nao ficar infinito.

       end;{while}

        lbl_edtTotal.Text := FormatFloat(CasasDecimais('Produtos'),ValorGeralCX + VlrAcrescimo);
        lbl_edtTotalPendente.Text := FormatFloat(CasasDecimais('Produtos'),ValorPendente + VlrAcrescimo);
        lbl_edtTotalPago.Text :=  lbl_edtPagtoParcial.Text;//FormatFloat(CasasDecimais('Produtos'),ValorParcial);
        lbl_edtVlrTotalP.Text :=  FormatFloat(CasasDecimais('Produtos'),ValorPendente + VlrAcrescimo);

        if VlrPago > 0 Then begin

          TotaldoPendente := ValorPendente + VlrAcrescimo;

          if TotaldoPendente > VlrPago Then begin

            SaldoDevedor := TotaldoPendente - VlrPago;

          end;

          if TotaldoPendente < VlrPago Then begin

            SaldoDevedor := VlrPago - TotaldoPendente;

          end;

          if TotaldoPendente = 0 Then begin

            SaldoDevedor := 0

          end;

        end;

        {if lbl_edtPagtoParcial.Text = '0,00' Then begin

        lbl_edtSaldoDevedor.Text := FormatFloat(CasasDecimais('Produtos'),SaldoDevedor);

        end; }
        if (lbl_edtPagtoParcial.Text = '0,00')and(lbl_edtVlrTotalP.Text > '0,00') Then begin

        lbl_edtSaldoDevedor.Text := lbl_edtVlrTotalP.Text;

        end;
        
        if lbl_edtPagtoParcial.Text > '0,00' Then begin

        lbl_edtSaldoDevedor.Text := FormatFloat(CasasDecimais('Produtos'),SaldoDevedor);

        end;

        lbl_edtTotalDevedor.Text := lbl_edtSaldoDevedor.Text;

////////////////////////////////////////////////////////////////////////////////


  end;{with}

end;

procedure TfrmClientes.lbl_edtTelefonePesquisaExit(Sender: TObject);
begin

  with dmModule do begin

    if (lbl_edtTelefonePesquisa.Text <> '') Then begin

      lbl_edtTelefonePesquisa.Text := StringReplace(lbl_edtTelefonePesquisa.Text,'-','',[rfReplaceAll]);
      lbl_edtTelefonePesquisa.Text := FormatFloat('0000-0000',StrToFloat(lbl_edtTelefonePesquisa.Text));

      Commit(ibCadastro);
      ibCadastro.Close;
      ibCadastro.SQL.Clear;
      ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,'
      + ' TBLLOGRADOURO.ENDERECO,TBLLOGRADOURO.BAIRRO FROM TBLCADASTRO '
      + ' LEFT OUTER JOIN TBLLOGRADOURO ON TBLCADASTRO.IDCAD=TBLLOGRADOURO.IDCAD '
      + ' WHERE TBLCADASTRO.TELEFONE= ''' + lbl_edtTelefonePesquisa.Text + '''');
      ibCadastro.Open;
      
    end;

  end;//with
        
end;

procedure TfrmClientes.lbl_edtTelefonePesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin

if key=#13 Then begin

lbl_edtPesqNumero.SetFocus;

end;//if

end;

procedure TfrmClientes.lbl_edtPesqNumeroChange(Sender: TObject);
begin

  with dmModule do begin

    if (lbl_edtPesqEndereco.Text <> '')and(lbl_edtPesqNumero.Text <> '')Then begin

      Commit(ibCadastro);
      ibCadastro.Close;
      ibCadastro.SQL.Clear;
      ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,'
      + ' TBLLOGRADOURO.ENDERECO,TBLLOGRADOURO.BAIRRO FROM TBLCADASTRO '
      + ' INNER JOIN TBLLOGRADOURO ON TBLCADASTRO.IDCAD=TBLLOGRADOURO.IDCAD '
      + ' WHERE TBLLOGRADOURO.ENDERECO LIKE '+''''+'%'+lbl_edtPesqEndereco.Text+'%'+''' and TBLCADASTRO.NUMERO LIKE '+''''+'%'+lbl_edtPesqNumero.Text+'%'+'''');
      ibCadastro.Open;

    end;

  end;//with

end;

procedure TfrmClientes.lbl_edtPesqEnderecoKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key = #13 Then begin

    lbl_edtPesqNumero.SetFocus;

  end;//if

end;

procedure TfrmClientes.lbl_edtPesqNumeroKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key = #13 Then begin

    lbl_edtTelefonePesquisa.SetFocus;


  end;

end;

procedure TfrmClientes.dbgClientesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

   { If (dbgClientes.DataSource.DataSet.RecNo div 2) =  (dbgClientes.DataSource.DataSet.RecNo/2) Then begin

    dbgClientes.Canvas.Font.Color:= clBlack;
    dbgClientes.Canvas.Brush.Color:= clskyBlue;

  end else begin

    dbgClientes.Canvas.Font.Color:= clBlack;
    dbgClientes.Canvas.Brush.Color:= clWhite;

  end;

      dbgClientes.Canvas.FillRect(Rect);

    if Column.Field.DataType = ftFloat  Then begin

      dbgClientes.Canvas.TextOut(Rect.Left+2,Rect.Top,FormatFloat(CasasDecimais('Produtos'), Column.Field.AsFloat));

    end else begin

      dbgClientes.Canvas.TextOut(Rect.Left+2,Rect.Top,Column.Field.AsString); }

 ///  end;{if}

end;

procedure TfrmClientes.ckVendasRestauranteCheck(Sender: TObject);

var
ValorGeralCX : Real;
ValorTotalCX : String;
begin

    if ValorGeralCX > 0 Then begin

      ValorGeralCX := 0;

    end;

    if ValorTotalCX > '0' Then begin

      ValorTotalCX := '0';

    end;


  with dmModule do begin

    pcHistoricoVendas.ActivePageIndex := 1;

    Commit(ibRestaurante);
    ibRestaurante.Close;
    ibRestaurante.SQL.Clear;
    ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE(TBLRESTAURANTE.IDCLIENTE=''' + lbl_edtCodCliH.Text + ''')and(TBLRESTAURANTE.DATA Between :ParamDataIni and :ParamDataF) ORDER BY TBLRESTAURANTE.IDDETALHER ASC');
    ibRestaurante.Open;

    ibRestaurante.Close;
    ibRestaurante.ParamByName('ParamDataIni').Value := dtpDataIni.DateTime;
    ibRestaurante.ParamByName('ParamDataF').Value := dtpDataFinal.DateTime;
    ibRestaurante.Open;

    (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
    (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
    (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

    while not ibRestaurante.Eof do begin

          if (ValorGeralCX = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorGeralCX := StrtoFloat(StringReplace(FloattoStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorTotalCX := StringReplace(FloattoStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorGeralCX := ValorGeralCX + StrtoFloat(StringReplace(ValorTotalCX,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

           ibRestaurante.Next;

           lbl_edtTotal.Text := FormatFloat(CasasDecimais('Produtos'),ValorGeralCX);

    end;//while

  end;//with

end;

procedure TfrmClientes.dbgVendasRestauranteDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

 {   If (dbgVendasRestaurante.DataSource.DataSet.RecNo div 2) =  (dbgVendasRestaurante.DataSource.DataSet.RecNo/2) Then begin

    dbgVendasRestaurante.Canvas.Font.Color:= clBlack;
    dbgVendasRestaurante.Canvas.Brush.Color:= clskyBlue;

  end else begin

    dbgVendasRestaurante.Canvas.Font.Color:= clBlack;
    dbgVendasRestaurante.Canvas.Brush.Color:= clWhite;

  end;

      dbgVendasRestaurante.Canvas.FillRect(Rect);

    if Column.Field.DataType = ftFloat  Then begin

      dbgVendasRestaurante.Canvas.TextOut(Rect.Left+2,Rect.Top,FormatFloat(CasasDecimais('Produtos'), Column.Field.AsFloat));

    end else begin

      dbgVendasRestaurante.Canvas.TextOut(Rect.Left+2,Rect.Top,Column.Field.AsString);

   end;//if}

//end;

  with dmModule do begin

    if (ibRestaurante.FieldByName('VENDAPENDENTE').value = 0) Then begin
    dbgVendasRestaurante.Canvas.Brush.Color:= clBlue; // coloque aqui a cor desejada
    dbgVendasRestaurante.Canvas.Font.Color:= clWhite;
    dbgVendasRestaurante.DefaultDrawDataCell(Rect, dbgVendasRestaurante.columns[datacol].field, State);
    end else begin
    dbgVendasRestaurante.Canvas.Brush.Color:= clred; // coloque aqui a cor desejada
    dbgVendasRestaurante.Canvas.Font.Color:= clWhite;
    dbgVendasRestaurante.DefaultDrawDataCell(Rect, dbgVendasRestaurante.columns[datacol].field, State);
    end;

  end;//with

end;  

end.




