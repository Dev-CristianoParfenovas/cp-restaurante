unit unClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, untClasse.Cadastro,
  StdCtrls, ComCtrls, IBQuery, classComboBox, Buttons, DB;

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
    dbgHistorico: TDBGrid;
    lbl_edtTotal: TLabeledEdit;
    lbl_edtTotalPendente: TLabeledEdit;
    lbl_edtDesconto: TLabeledEdit;
    lbl_edtEmail: TLabeledEdit;
    lbl_edtTotalPago: TLabeledEdit;
    cboVendedor: TComboBox;
    lbl_Vendedor: TLabel;
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
    lbl_edtTotalDesconto: TLabeledEdit;
    lbl_edtTotalAcrescimo: TLabeledEdit;
    lbl_edtTotalDevedor: TLabeledEdit;
    lbl_edtValor: TLabeledEdit;
    ibeaHistorico: TSpeedButton;
    ibeaSairHistorico: TSpeedButton;
    ibeaPagtoPendente: TSpeedButton;
    ibeaRelatorioP: TSpeedButton;
    ibeaExcluirPagto: TSpeedButton;
    ibeaPagtosEfetuados: TSpeedButton;
    lbl_edtNumeroCupom: TLabeledEdit;
    lbl_edtDevedor: TLabeledEdit;
    dtpDataCli: TDateTimePicker;
    cboCondPagto: TComboBox;
    dtpDataIni: TDateTimePicker;
    dtpDataFinal: TDateTimePicker;
    lbl_CondPgto: TLabel;
    pnGravar: TPanel;
    sbGravar: TSpeedButton;
    pnAlterar: TPanel;
    sbAlterar: TSpeedButton;
    pnExcluir: TPanel;
    sbExcluir: TSpeedButton;
    pnSair: TPanel;
    sbSair: TSpeedButton;

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
    procedure sbSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lbl_edtCepExit(Sender: TObject);
    procedure dbgClientesCellClick(Column: TColumn);
    procedure pcCadastrodeclientesChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtEstadoExit(Sender: TObject);
    procedure lbl_edtTelComExit(Sender: TObject);
    procedure lbl_edtTelFaxExit(Sender: TObject);
    procedure lbl_edtCelularExit(Sender: TObject);
    procedure ibeaExcluirClick(Sender: TObject);
    procedure lbl_edtNomeChange(Sender: TObject);
    procedure sb_ord_nomeClick(Sender: TObject);
    //procedure sb_ord_codClick(Sender: TObject);
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
    procedure sbGravarClick(Sender: TObject);
    procedure sbGravarMouseEnter(Sender: TObject);
    procedure sbGravarMouseLeave(Sender: TObject);
    procedure sbAlterarMouseEnter(Sender: TObject);
    procedure sbAlterarMouseLeave(Sender: TObject);
    procedure sbExcluirMouseEnter(Sender: TObject);
    procedure sbExcluirMouseLeave(Sender: TObject);
    procedure sbAlterarClick(Sender: TObject);
    procedure sbExcluirClick(Sender: TObject);
    procedure sbSairMouseEnter(Sender: TObject);
    procedure sbSairMouseLeave(Sender: TObject);
    procedure lbl_edtNomerazaoEnter(Sender: TObject);
    procedure lbl_edtNomerazaoExit(Sender: TObject);
    procedure lbl_edtCnpj_cpfEnter(Sender: TObject);
    procedure lbl_edtCnpj_cpfExit(Sender: TObject);
    procedure lbl_edtIE_rgEnter(Sender: TObject);
    procedure lbl_edtIE_rgExit(Sender: TObject);
    procedure cboVendedorEnter(Sender: TObject);
    procedure cboVendedorExit(Sender: TObject);
    procedure lbl_edtEnderecoEnter(Sender: TObject);
    procedure lbl_edtEnderecoExit(Sender: TObject);
    procedure lbl_edtNumeroEnter(Sender: TObject);
    procedure lbl_edtNumeroExit(Sender: TObject);
    procedure lbl_edtComplementoEnter(Sender: TObject);
    procedure lbl_edtComplementoExit(Sender: TObject);
    procedure lbl_edtBairroEnter(Sender: TObject);
    procedure lbl_edtBairroExit(Sender: TObject);
    procedure lbl_edtCepEnter(Sender: TObject);
    procedure lbl_edtCidadeEnter(Sender: TObject);
    procedure lbl_edtCidadeExit(Sender: TObject);
    procedure lbl_edtEstadoEnter(Sender: TObject);
    procedure lbl_edtDDDEnter(Sender: TObject);
    procedure lbl_edtDDDExit(Sender: TObject);
    procedure lbl_edtTelComEnter(Sender: TObject);
    procedure lbl_edtDDDFaxEnter(Sender: TObject);
    procedure lbl_edtDDDFaxExit(Sender: TObject);
    procedure lbl_edtTelFaxEnter(Sender: TObject);
    procedure lbl_edtCelularEnter(Sender: TObject);
    procedure lbl_edtEmailEnter(Sender: TObject);
    procedure lbl_edtEmailExit(Sender: TObject);
    procedure lbl_edtPontoreferenciaEnter(Sender: TObject);
    procedure lbl_edtPontoreferenciaExit(Sender: TObject);
    procedure lbl_edtObsEnter(Sender: TObject);
    procedure lbl_edtObsExit(Sender: TObject);
    procedure lbl_edtValorEnter(Sender: TObject);
    procedure cboCondPagtoEnter(Sender: TObject);
    procedure cboCondPagtoExit(Sender: TObject);
    procedure lbl_edtNomeEnter(Sender: TObject);
    procedure lbl_edtNomeExit(Sender: TObject);
    //procedure sbGravarMouseEnter(Sender: TObject);

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
  IDClassTelcom : Integer;//variavel para armazenar a classifica��o do campo telcoml
  IDClassTelfax: Integer; //variavel para armazenar a classifica��o do campo telfax
  IDClassTelCel: Integer;//vari�vel para armazenar a classificacao do campo celular.
  IDClassEmail: Integer;//variavel para armazenar a classifica��o do campo email
  IDClassSite: Integer;//variavel para armazenar a classifica��o do campo site
  IDClassContato: Integer;// variavel para armazenar a classifica��o do campo contato
  IDClassCnpj: Integer;//variavel para atribuir o cnpj_cpf.
  MontaColunas : Boolean;//variavel para montar o grid no on show do formulario
  MontaColHist : Boolean;
  MontaColPagtoEfetuado : Boolean;
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

  SexoAnimal : Integer;
  EspecieAnimal : Integer;

  ClassTipoVenda : TClasseCombo;//variaveis para select tipovenda

  //variaveis para gravacao de tipo venda
  IDClassTipoVenda : TClasseCombo;
  StringTipoVenda : String;

  IDClassCondPagto : TClasseCombo;

  IDClassGravaCondPagto,IDClassAltCondPagto : TClasseCombo;
  StringGravaCondPagto,StringAltCondPagto : String;

  IDPagtoEfetuado : Integer;

implementation

uses untdmModule, BuscaClientes, funcPosto, untRelPendente;

{$R *.dfm}

procedure ArredondarComponente(Componente: TWinControl; const Radius: SmallInt);
var
  R : TRect;
  Rgn : HRGN;
begin
  with Componente do
  begin
    R := ClientRect;
    Rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, Radius, Radius);
    Perform(EM_GETRECT, 0, lParam(@R));
    InflateRect(R, -5, -5);
    Perform(EM_SETRECTNP, 0, lParam(@R));
    SetWindowRgn(Handle, Rgn, True);
    Invalidate;
  end;
end;

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
  cboVendedor.Enabled := opcao;
  
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
StringAltVendedor, Valor : String;
ClassAltVendedor  : TClasseCombo;
strNome, StrEndereco : TCadastro;
begin
  with dmModule do begin

    //instanciciando a classe TCadastro
    strNome := TCadastro.Create();
    StrEndereco := TCadastro.Create();

    If cboCondPagto.ItemIndex = -1 Then begin

      StringAltCondPagto     := ' IDCONDPAGTO= ''0'',';

    end else begin

      IDClassAltCondPagto      := TClasseCombo( cboCondPagto.Items.Objects[cboCondPagto.ItemIndex] );
      StringAltCondPagto        := ' IDCONDPAGTO=''' + InttoStr( IDClassAltCondPagto.ID ) + ''',';

    end;//if

    If cboVendedor.ItemIndex = -1 Then begin

      StringAltVendedor     := ' IDVENDEDOR= ''0'',';

    end else begin

      ClassAltVendedor      := TClasseCombo( cboVendedor.Items.Objects[cboVendedor.ItemIndex] );
      StringAltVendedor        := ' IDVENDEDOR=''' + InttoStr( ClassAltVendedor.ID ) + ''',';

    end;//if

      Valor := StringReplace(lbl_edtValor.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
      Valor := StringReplace(Valor,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);
      if Valor = '' Then
         Valor := '0';

      try

        strNome.Nome := lbl_edtNomerazao.Text;
        StrEndereco.Endereco := lbl_edtEndereco.Text;

      //GRAVA AS ALTERACOES NA TBL DE CADASTRO
       ibCadastro.Close;
       ibCadastro.SQL.Clear;
       ibCadastro.SQL.Add('UPDATE TBLCADASTRO SET '
       + StringAltCondPagto
       + StringAltVendedor
       + 'NOME = ''' + strNome.Nome + ''''
       + ',NUMERO = ''' + lbl_edtNumero.Text + ''''
       + ',COMPL = ''' + lbl_edtComplemento.Text + ''''
       + ',CEP = ''' + InttoStr(Cep) + ''''
       + ',DESCONTO = ''' + lbl_edtDesconto.Text + ''''
       + ',PONTOREFERENCIA = ''' + lbl_edtPontoreferencia.Text + ''''
       + ',TELEFONE = ''' + lbl_edtTelCom.Text + ''''
       + ',CELULAR = ''' + lbl_edtCelular.Text + ''''
       + ',VALOR = ''' + Valor + ''''
       + ',ENDERECO = ''' + StrEndereco.Endereco + ''''
       + ',BAIRRO = ''' + lbl_edtBairro.Text + ''''
       + ',CIDADE = ''' + lbl_edtCidade.Text + ''''
       + ',ESTADO = ''' + lbl_edtEstado.Text + ''''
       + ',OBS = ''' + lbl_edtObs.Text + ''' WHERE IDCad=''' + InttoStr(IDCad) + '''');
       ibCadastro.ExecSQL;
       Commit(ibCadastro);

      finally

        strNome.Free;
        StrEndereco.Free;

      end;

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

procedure TfrmClientes.cboCondPagtoEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmClientes.cboCondPagtoExit(Sender: TObject);
begin
tedit(sender).color := clWindow;
end;

procedure TfrmClientes.cboVendedorEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmClientes.cboVendedorExit(Sender: TObject);
begin
tedit(sender).color := clWindow;
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

        //localiza e abre somente o cadastro de contato pela identifica��o do telefone coml.
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

        //inicio de rotina para grava��o de contato
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

      //localiza e abre somente o cadastro de contato pela identifica��o do telefone fax.
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

        //inicio de rotina para grava��o de contato
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

      //localiza e abre somente o cadastro de contato pela identifica��o do telefone fax.
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

        //inicio de rotina para grava��o de contato
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

      //localiza e abre somente o cadastro de contato pela identifica��o do site.
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

        //inicio de rotina para grava��o de contato
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

        //inicio de rotina para grava��o de contato
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

     //localiza e abre somente o cadastro de contato pela identifica��o do contato.
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

        //inicio de rotina para grava��o de contato
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
     lbl_edtCodCliente.Text      := IntToStr(ibCadastro.FieldByName('IDCAD').AsInteger);
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


    for i:=0 to cboVendedor.Items.Count -1 do begin
    if TClasseCombo( cboVendedor.Items.Objects[i]).ID = ibCadastro.FieldByName('IDVENDEDOR').AsInteger then begin
      cboVendedor.ItemIndex:= i;
      Break;
    end else begin
      cboVendedor.ClearSelection;
    end;
    end;

////////////////////////////////////////////////////////////////////////////////

    // ROTINA PARA TRAZER OS DADOS DE CONTATO DO CLIENTE
    lbl_edtCep.Text             := FormatFloat('00000-000',ibCadastro.FieldByName('CEP').AsInteger);
    lbl_edtPontoreferencia.Text := ibCadastro.FieldByName('PONTOREFERENCIA').AsString;
    lbl_edtObs.Text             := ibCadastro.FieldByName('OBS').AsString;
    lbl_edtNumero.Text          := ibCadastro.FieldByName('NUMERO').AsString;
    lbl_edtComplemento.Text     := ibCadastro.FieldByName('COMPL').AsString;
    lbl_edtDesconto.Text        := ibCadastro.FieldByName('DESCONTO').AsString;
    lbl_edtValor.Text           := FormatFloat(CasasDecimais('Produtos'),ibCadastro.FieldByName('VALOR').AsFloat); 
  //  dtpDataCli.Date             := ibCadastro.FieldByName('DATA').AsDateTime;

    //LOCALIZA O TELEFONE COMERCIAl
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
        end;


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
        ibClassificacao.Close;
        ibClassificacao.SQL.Clear;
        ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Contato''');
        ibClassificacao.Open;
        IDClassContato := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identiicacao do site na variavel.

        ibContato.Close;
        ibContato.SQL.Clear;
        ibContato.SQL.Add('SELECT DDD,CONTATO FROM TBLCONTATO WHERE'
        + ' (IDCAD=''' + IntToStr(IDCad) + ''') And (Tipo=''' + IntToStr(IDClassContato) + ''')');
        ibContato.Open;

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
     // lbl_edtCodCliente.Text       := ibDocumentacao.FieldByName('CODIGO').AsString;

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
        IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICA��O DO CLIENTE NA VARIAVEL.

        //LOCALIZA O TELEFONE COMERCIAl
        ibClassificacao.Close;
        ibClassificacao.SQL.Clear;
        ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Com''');
        ibClassificacao.Open;
        IDClassTelcom := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identiicacao do contato de telefone coml. na variavel.

        //BUSCA TODOS OS CLIENTES QUE ESTEJAM NA CLASSIFICA��O DE CLIENTES
        ibCadastro.Close;
        ibCadastro.SQL.Clear;
        ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLCADDOCUMENTACAO.CODIGO,'
        + 'TBLCADDOCUMENTACAO.IE_RG FROM TBLCADASTRO '
        + ' LEFT OUTER JOIN TBLCADDOCUMENTACAO ON TBLCADASTRO.IDCAD = TBLCADDOCUMENTACAO.IDCAD '
        + ' WHERE TBLCADASTRO.idclass=''' + InttoStr(IDClass) + '''ORDER BY TBLCADASTRO.IDCAD DESC');
        ibCadastro.Open;

     //   IDCadnovo := (ibCadastro.FieldByName('IDCAD').AsInteger + 1);

     //  WHERE TBLCADASTRO.idclass=''' + InttoStr(IDClass) + ''' and TBLCONTATO.TIPO=''' + IntToStr(IDClassTelcom) + '''

       { ibClassificacao.Close;
        ibClassificacao.SQL.Clear;
        ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
        ibClassificacao.Open;
        IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICA��O DO CLIENTE NA VARIAVEL.

        //LOCALIZA O TELEFONE COMERCIAl
        ibClassificacao.Close;
        ibClassificacao.SQL.Clear;
        ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Com''');
        ibClassificacao.Open;
        IDClassTelcom := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identiicacao do contato de telefone coml. na variavel.

        //BUSCA TODOS OS CLIENTES QUE ESTEJAM NA CLASSIFICA��O DE CLIENTES
        ibCadastro.Close;
        ibCadastro.SQL.Clear;
        ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLCADDOCUMENTACAO.CODIGO,TBLCADDOCUMENTACAO.IE_RG,TBLCADDOCUMENTACAO.CNPJ_CPF,'
        + ' TBLCONTATO.CONTATO As Telefone,TBLCONTATO.TIPO FROM TBLCADASTRO '
        + ' LEFT OUTER JOIN TBLCONTATO ON TBLCADASTRO.IDCAD = TBLCONTATO.IDCAD '
        + ' LEFT OUTER JOIN TBLCADDOCUMENTACAO ON TBLCADASTRO.IDCAD = TBLCADDOCUMENTACAO.IDCAD '
        + ' WHERE TBLCADASTRO.idclass=''' + InttoStr(IDClass) + ''' and TBLCONTATO.TIPO=''' + IntToStr(IDClassTelcom) + ''' ORDER BY TBLCADASTRO.IDCAD DESC');
        ibCadastro.Open; }

  end; {with}

end;

procedure TfrmClientes.ExecSELECTVendedor;

var

IDClassVendedor : TClasseCombo;

begin

  with dmModule do begin

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

  end;//with

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

procedure TfrmClientes.sbSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmClientes.sbSairMouseEnter(Sender: TObject);
begin
sbSair.Font.Color := clBlack;
end;

procedure TfrmClientes.sbSairMouseLeave(Sender: TObject);
begin
sbSair.Font.Color := clWhite;
end;

procedure TfrmClientes.FormShow(Sender: TObject);
begin

    lbl_edtTotal.Text        := '0,00';
    lbl_edtTotalPendente.Text := '0,00';
    lbl_edtTotalDevedor.Text := '0,00';
    lbl_edtTotalPago.Text := '0,00';
  //acerta a data
  dtpDataCli.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
  dtpDataIni.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
  dtpDataFinal.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));

  sbGravar.Caption := '&Novo';

  
  //abre sempre na pagina principal
  pcCadastrodeclientes.ActivePageIndex := 0;
  DesabilitaCamposCli(False);
  LimpaCampo;

  with dmModule do begin


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

        //determina as colunas a serem montadas 0 codigo cliente, 1 razao Social, 2 endere�o numero...
        Columns.Insert(0);
        Columns.Insert(1);
        Columns.Insert(2);
        Columns.Insert(3);
        Columns.Insert(4);
        Columns.Insert(5);

        //Parametros da Coluna que exibe o C�digo do Cadastro
        Columns.Items[0].Title.Caption := 'C�digo';
        Columns.Items[0].FieldName     := 'IDCAD';
        Columns.Items[0].Width         := 73;
        Columns.Items[0].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o Nome do cliente.
        Columns.Items[1].Title.Caption := 'Nome';
        Columns.Items[1].FieldName     := 'NOME';
        Columns.Items[1].Width         := 270;
        Columns.Items[1].Alignment     := taLeftJustify;

        // Parametros que exibe o nome fantasia do cliente
      {  Columns.Items[2].Title.Caption := 'Nome Fantasia';
        Columns.Items[2].FieldName     := 'NomeFantasia';
        Columns.Items[2].Width         := 220; }

        // Parametros que exibe o numero do cliente
        Columns.Items[2].Title.Caption := 'Endere�o';
        Columns.Items[2].FieldName     := 'ENDERECO';
        Columns.Items[2].Width         := 177;
        Columns.Items[2].Alignment     := taLeftJustify;

       // Parametros que exibe o compl. do cliente
        Columns.Items[3].Title.Caption := 'N�mero';
        Columns.Items[3].FieldName     := 'NUMERO';
        Columns.Items[3].Width         := 46;
        Columns.Items[3].Alignment     := taLeftJustify;

       // Parametros que exibe o compl. do cliente
        Columns.Items[4].Title.Caption := 'Bairro';
        Columns.Items[4].FieldName     := 'BAIRRO';
        Columns.Items[4].Width         := 117;
        Columns.Items[4].Alignment     := taLeftJustify;


       // Parametros que exibe o compl. do cliente
        Columns.Items[5].Title.Caption := 'Data Cadastro';
        Columns.Items[5].FieldName     := 'DATA';
        Columns.Items[5].Width         := 83;
        Columns.Items[5].Alignment     := taLeftJustify;

        MontaColunas := False;

      end; {if}

    end; {with do db grid}

////////////////////////////////////////////////////////////////////////////////

    with dbgHistorico do begin

      // monta as colunas abaixo se for verdadeiro
      if MontaColHist Then begin

         DataSource := dmModule.dtsServsVenda;

        //determina as colunas a serem montadas 0 codigo cliente, 1 razao Social, 2 endere�o numero...
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
        Columns.Items[0].Title.Caption := 'N�Cupom';
        Columns.Items[0].FieldName     := 'IDSERVSVENDA';
        Columns.Items[0].Width         := 75;
        Columns.Items[0].Alignment     := taLeftJustify;

        Columns.Items[1].Title.Caption := 'Produto';
        Columns.Items[1].FieldName     := 'Produto';
        Columns.Items[1].Width         := 255;
        Columns.Items[1].Alignment     := taLeftJustify;


        // Parametros que exibe o numero do cliente
        Columns.Items[2].Title.Caption := 'Valor Venda';
        Columns.Items[2].FieldName     := 'VLRUNIT';
        Columns.Items[2].Width         := 83;
        Columns.Items[2].Alignment     := taLeftJustify;



        //Parametros da Coluna que exibe o Nome do cliente.
        Columns.Items[3].Title.Caption := 'Qtde';
        Columns.Items[3].FieldName     := 'QTDE';
        Columns.Items[3].Width         := 32;
        Columns.Items[3].Alignment     := taLeftJustify;


        //Parametros da Coluna que exibe o Nome do cliente.
        Columns.Items[4].Title.Caption := 'Total';
        Columns.Items[4].FieldName     := 'VLRTOTAL';
        Columns.Items[4].Width         := 83;
        Columns.Items[4].Alignment     := taLeftJustify;



        //Parametros da Coluna que exibe o Nome do cliente.
        Columns.Items[5].Title.Caption := 'Total B';
        Columns.Items[5].FieldName     := 'VALORB';
        Columns.Items[5].Width         := 83;
        Columns.Items[5].Alignment     := taLeftJustify;


        //Parametros da Coluna que exibe o Nome do cliente.
        Columns.Items[6].Title.Caption := 'Total C';
        Columns.Items[6].FieldName     := 'VALORC';
        Columns.Items[6].Width         := 83;
        Columns.Items[6].Alignment     := taLeftJustify;


       // Parametros que exibe o compl. do cliente
        Columns.Items[7].Title.Caption := 'Data da Compra';
        Columns.Items[7].FieldName     := 'DATA';
        Columns.Items[7].Width         := 82;
        Columns.Items[7].Alignment     := taLeftJustify;


       // Parametros que exibe o compl. do cliente
        Columns.Items[8].Title.Caption := 'Situa��o';
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
        Columns.Items[7].Title.Caption := 'Ocorr�ncia';
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

        //determina as colunas a serem montadas 0 codigo cliente, 1 razao Social, 2 endere�o numero...
        Columns.Insert(0);
        Columns.Insert(1);

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

        MontaColPagtoEfetuado := False;

      end; {if}

    end; {with do db grid}

////////////////////////////////////////////////////////////////////////////////


  end;{with}

end;


procedure TfrmClientes.FormCreate(Sender: TObject);
begin

  MontaColunas := True;
  MontaColHist := True;
  MontaColPagtoEfetuado := True;
  MontaColPagtoEfetuado := True;
  ArredondarComponente(pnGravar,10);
  ArredondarComponente(pnAlterar,10);
  ArredondarComponente(pnExcluir,10);
  ArredondarComponente(pnSair,10);

end;

procedure TfrmClientes.lbl_edtCepEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmClientes.lbl_edtCepExit(Sender: TObject);
begin
  with dmModule do begin

   tedit(sender).color := clWindow;

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


            ConfirmaMSG := Application.MessageBox('Voc� est� alterando o CEP e o Endere�o informado ser� excluido. Deseja continuar?','Notifica��o: Altera��o de Registro', MB_YESNO + mb_DefButton1+MB_ICONQUESTION);
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
      lbl_edtCep.Text := StringReplace(lbl_edtCep.Text,'-','',[rfReplaceAll]);
      lbl_edtCep.Text := FormatFloat('00000-000',StrToFloat(lbl_edtCep.Text));

    //  AlteraEnd := False;//variavel para atribuir vlr boleano no cep

  //  end; {if}

  end;{with}

end;

procedure TfrmClientes.lbl_edtCidadeEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmClientes.lbl_edtCidadeExit(Sender: TObject);
begin
tedit(sender).color := clWindow;
end;

procedure TfrmClientes.lbl_edtCnpj_cpfEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmClientes.lbl_edtCnpj_cpfExit(Sender: TObject);
begin
tedit(sender).color := clWindow;
end;

procedure TfrmClientes.lbl_edtComplementoEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmClientes.lbl_edtComplementoExit(Sender: TObject);
begin
tedit(sender).color := clWindow;
end;

procedure TfrmClientes.lbl_edtDDDEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmClientes.lbl_edtDDDExit(Sender: TObject);
begin
tedit(sender).color := clWindow;
end;

procedure TfrmClientes.lbl_edtDDDFaxEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmClientes.lbl_edtDDDFaxExit(Sender: TObject);
begin
tedit(sender).color := clWindow;
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

    sbGravar.Caption := '&Novo';
    LimpaCampo;
    lbl_edtCodCliente.Clear;
    lbl_edtSaldoDevedor.Text := '0,00';
    lbl_edtTotalDevedor.Text := '0,00';
    ibServsVenda.Close;
    lbl_CodCliPagto.Caption := '';
    lbl_NomeCliPagto.Caption := '';
    lbl_edtVlrPago.Clear;
    lbl_edtTotalemAver.Clear;
    ibPagtoPendente.Close;

  end else if pcCadastrodeclientes.ActivePage.TabIndex = 1 Then begin

    lbl_edtTotal.Text := '0,00';
    lbl_edtTotalPendente.Text := '0,00';

    ibPagtoPendente.Close;

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
      lbl_edtTotalDevedor.Text := '0,00';
      lbl_edtTotalPago.Text := '0,00';
      lbl_edtVlrTotalP.Text := '0,00';
      lbl_edtPagtoParcial.Text := '0,00';
      lbl_edtTotalDesconto.Text := '0,00';
      lbl_edtTotalAcrescimo.Text := '0,00';
      lbl_edtSaldoDevedor.Text := '0,00';
      lbl_edtVlrPago.Text := '0,00';
      lbl_edtTotalemAver.Text := '0,00';



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

    if lbl_edtCodCliH.Text <> '' Then begin

    ibeaHistoricoClick(Sender);

    end;

  end else if pcCadastrodeclientes.ActivePage.TabIndex = 2 Then begin

    if lbl_edtCodCliH.Text <> '' Then begin

      lbl_CodCliPagto.Caption := lbl_edtCodCliH.Text;

    end;

    if lbl_edtNomeCliH.Text <> '' Then begin

      lbl_NomeCliPagto.Caption := lbl_edtNomeCliH.Text;

    end;

      Commit(ibHistPendente);
      ibHistPendente.Close;
      ibHistPendente.SQL.Clear;
      ibHistPendente.SQL.Add('SELECT * FROM TBLHISTORICOPENDENTE WHERE IDCLIENTE=''' + (lbl_CodCliPagto.Caption) + '''');
      ibHistPendente.Open;

      if ibHistPendente.FieldByName('PAGTO').AsString = 'Sim' Then begin

        lbl_edtDevedor.Text := '0,00';

      end else begin

        lbl_edtDevedor.Text := lbl_edtSaldoDevedor.Text;

      end;

      lbl_edtValorPagtoEfetuado.Text := '0,00';

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

procedure TfrmClientes.lbl_edtEmailEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmClientes.lbl_edtEmailExit(Sender: TObject);
begin
tedit(sender).color := clWindow;
end;

procedure TfrmClientes.lbl_edtEnderecoEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmClientes.lbl_edtEnderecoExit(Sender: TObject);
begin
tedit(sender).color := clWindow;
end;

procedure TfrmClientes.lbl_edtEstadoEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmClientes.lbl_edtEstadoExit(Sender: TObject);
//var

//ibTempEndereco : TIBQuery;

//BairroCli,EstadoCli,EnderecoCli : String;

begin  

  with dmModule do begin

  tedit(sender).color := clWindow;


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

            Application.MessageBox('O Endere�o ou o Bairro est�o incorretos, favor confirmar','Notifica��o:Endere�o Incorreto', MB_OK+MB_ICONQUESTION);

            end;   }

      {   if ibeaAlterar.Caption = '&Atualizar' Then begin


            ConfirmaMSG := Application.MessageBox('Confirma a altera��o de Endere�o?','Notifica��o: Altera��o de Endere�o', MB_YESNO + mb_DefButton1+MB_ICONQUESTION);
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

procedure TfrmClientes.lbl_edtIE_rgEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmClientes.lbl_edtIE_rgExit(Sender: TObject);
begin
tedit(sender).color := clWindow;
end;

procedure TfrmClientes.lbl_edtTelComEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmClientes.lbl_edtTelComExit(Sender: TObject);
begin

  tedit(sender).color := clWindow;

  if lbl_edtTelCom.Text <> '' Then begin

    lbl_edtTelCom.Text := StringReplace(lbl_edtTelCom.Text,'-','',[rfReplaceAll]);
    lbl_edtTelCom.Text := FormatFloat('0000-0000',StrToFloat(lbl_edtTelCom.Text));

  end;

end;

procedure TfrmClientes.lbl_edtTelFaxEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmClientes.lbl_edtTelFaxExit(Sender: TObject);
begin

  tedit(sender).color := clWindow;

  if lbl_edtTelFax.Text <> '' Then begin

    lbl_edtTelFax.Text := StringReplace(lbl_edtTelFax.Text,'-','',[rfReplaceAll]);
    lbl_edtTelFax.Text := FormatFloat('0000-0000',StrToFloat(lbl_edtTelFax.Text));

  end;

end;

procedure TfrmClientes.lbl_edtBairroEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmClientes.lbl_edtBairroExit(Sender: TObject);
begin
tedit(sender).color := clWindow;
end;

procedure TfrmClientes.lbl_edtCelularEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmClientes.lbl_edtCelularExit(Sender: TObject);
begin

  tedit(sender).color := clWindow;

  if lbl_edtCelular.Text <> '' Then begin

    lbl_edtCelular.Text := StringReplace(lbl_edtCelular.Text,'-','',[rfReplaceAll]);
    lbl_edtCelular.Text := FormatFloat('0000-0000',StrToFloat(lbl_edtCelular.Text));

  end;

end;

procedure TfrmClientes.ibeaExcluirClick(Sender: TObject);
begin

  with dmModule do begin

    ConfirmaMSG := Application.MessageBox('Deseja Excluir o registro?','Notifica��o:Exclus�o de Registro.',+ MB_YESNO + MB_ICONQUESTION);

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
    IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICA��O DO CLIENTE NA VARIAVEL.

    //BUSCA TODOS OS CLIENTES QUE ESTEJAM NA CLASSIFICA��O DE CLIENTES
    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLCADDOCUMENTACAO.CODIGO,'
    + ' TBLCADDOCUMENTACAO.IE_RG FROM TBLCADASTRO '
    + ' LEFT OUTER JOIN TBLCADDOCUMENTACAO ON TBLCADASTRO.IDCAD = TBLCADDOCUMENTACAO.IDCAD '
    + ' WHERE (TBLCADASTRO.idclass=''' + InttoStr(IDClass) + ''')and TBLCADASTRO.NOME LIKE '+''''+'%'+lbl_edtNome.text+'%'+'''');
    ibCadastro.Open;

  end;{with}

end;

procedure TfrmClientes.lbl_edtNomeEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmClientes.lbl_edtNomeExit(Sender: TObject);
begin
tedit(sender).color := clWindow;
end;

procedure TfrmClientes.lbl_edtNomerazaoEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmClientes.lbl_edtNomerazaoExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
end;

procedure TfrmClientes.lbl_edtNumeroEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmClientes.lbl_edtNumeroExit(Sender: TObject);
begin
tedit(sender).color := clWindow;
end;

procedure TfrmClientes.lbl_edtObsEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmClientes.lbl_edtObsExit(Sender: TObject);
begin
tedit(sender).color := clWindow;
end;

procedure TfrmClientes.lbl_edtPontoreferenciaEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmClientes.lbl_edtPontoreferenciaExit(Sender: TObject);
begin
tedit(sender).color := clWindow;
end;

procedure TfrmClientes.sb_ord_nomeClick(Sender: TObject);
begin

  with dmModule do begin

    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
    ibClassificacao.Open;
    IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICA��O DO CLIENTE NA VARIAVEL.


    //BUSCA TODOS OS CLIENTES QUE ESTEJAM NA CLASSIFICA��O DE CLIENTES
    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLCADDOCUMENTACAO.CODIGO,'
    + ' TBLCADDOCUMENTACAO.IE_RG FROM TBLCADASTRO '
    + ' LEFT OUTER JOIN TBLCADDOCUMENTACAO ON TBLCADASTRO.IDCAD = TBLCADDOCUMENTACAO.IDCAD '
    + ' WHERE (TBLCADASTRO.idclass=''' + InttoStr(IDClass) + ''')ORDER BY TBLCADASTRO.NOME');
    ibCadastro.Open;

    lbl_edtNome.Text := '';

  end;{with}

end;

procedure TfrmClientes.sbAlterarClick(Sender: TObject);
begin
with dmModule do begin

  if sbGravar.Caption = '&Gravar' Then begin

    ConfirmaMSG := Application.MessageBox('Deseja cancelar esta opera��o?'
              + #13 + 'Clique em Sim para cancelar e N�o para continuar.','Notifica��o: Cancelar Opera��o', MB_YESNO + MB_ICONQUESTION);

    if ConfirmaMSG = 6 Then begin

      sbGravar.Caption := '&Novo';
      DesabilitaCamposCli(False);

    end;{if}

    end else begin





        if (ibCadastro.RecordCount < 1)  And (ibContato.RecordCount < 1) And
          (ibLogradouro.RecordCount < 1) And (ibDocumentacao.RecordCount < 1) Then begin

          ConfirmaMSG := Application.MessageBox('N�o existe registro para ser alterado!!'
                  + #13 + 'Clique em Ok para Retornar a opera��o normal.','Notifica��o: Cancelar Opera��o', MB_OK + MB_ICONWARNING);

          sbGravar.Caption := '&Novo';
          DesabilitaCamposCli(False);
          lbl_edtCep.Text := '';
      //    lbl_edtCodigo.Text := '';

        end else begin

//////////////////////////////////////////////////////////////////////////////

     if lbl_edtNomerazao.Text = '' Then begin
         ConfirmaMSG := Application.MessageBox('� necess�rio selecionar um registro abaixo para ser alterado!!'
                    + #13 + 'Clique em Ok para Retornar a opera��o normal.','Notifica��o: Cancelar Opera��o', MB_OK + MB_ICONWARNING);
        sbAlterar.Caption := '&Alterar';

      end else begin

////////////////////////////////////////////////////////////////////////////////

        if sbAlterar.Caption = '&Atualizar' Then begin

        if lbl_edtCep.Text = '' Then begin  {atribui  vlr 0 a variavel cep}
          Cep := 0;
        end else begin // caso esteja em branco atribui o vlr do campo na variavel cep
          Cep := strtoint( StringReplace(lbl_edtCep.Text,'-','',[rfReplaceAll]) ); //SUBSTITUI REMOVENDO O -
        end;


            ConfirmaMSG := Application.MessageBox('Alterar esse Registro?','Notifica��o: Exclus�o de Registro', MB_YESNO + mb_DefButton1+MB_ICONQUESTION);
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

            sbAlterar.Caption := '&Alterar';
            DesabilitaCamposCli(False);
           // ibeaNovo.Enabled := True;
           // ibeaExcluir.Enabled := True;
          //  ibeaConsultar.Enabled := True;

          end else begin

        //    AlteraEnd := True;
       //     AlteraCep := True;

            sbAlterar.Caption := '&Atualizar';
            DesabilitaCamposCli(True);

          end;
        end;{if}
      end;{if}
    end;
  end;
end;

procedure TfrmClientes.sbAlterarMouseEnter(Sender: TObject);
begin
sbAlterar.Font.Color := clBlack;

end;

procedure TfrmClientes.sbAlterarMouseLeave(Sender: TObject);
begin
sbAlterar.Font.Color := clWhite;
end;

procedure TfrmClientes.sbExcluirClick(Sender: TObject);
begin
with dmModule do begin

    ConfirmaMSG := Application.MessageBox('Deseja Excluir o registro?','Notifica��o:Exclus�o de Registro.',+ MB_YESNO + MB_ICONQUESTION);

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

procedure TfrmClientes.sbExcluirMouseEnter(Sender: TObject);
begin
sbExcluir.Font.Color := clBlack;
end;

procedure TfrmClientes.sbExcluirMouseLeave(Sender: TObject);
begin
sbExcluir.Font.Color := clWhite;
end;

procedure TfrmClientes.sbGravarClick(Sender: TObject);

var

StringGravaVendedor, Valor : String;
ClassGravaVendedor : TClasseCombo;
strNome, strEndereco : TCadastro;
begin
  with dmModule do begin

  //instanciando a classe cadastro(TCadastro)
    strNome := TCadastro.Create();
    strEndereco := TCadastro.Create();

    //rotina para cancelar ou nao a operacao

    if sbAlterar.Caption = '&Atualizar' Then begin

    ConfirmaMSG := Application.MessageBox('Deseja cancelar esta opera��o?'
              + #13 + 'Clique em Sim para cancelar e N�o para continuar.','Notifica��o: Cancelar Opera��o', MB_YESNO + MB_ICONQUESTION);

      if ConfirmaMSG = 6 Then begin

        //RESTAURAR OS CAMPOS
        sbAlterar.Caption := '&Alterar';
       // ibeaNovo.Enabled := True;
        sbGravar.Caption := '&Novo';
       // ibeaExcluir.Enabled := True;
        DesabilitaCamposCli(False);
    //    lbl_edtCodCliente.Clear;
        LimpaCampo;


      end;{if}

    end else begin


////////////////////////////////////////////////////////////////////////////////


    if sbGravar.Caption = '&Gravar' Then begin


      lbl_edtNomerazao.SetFocus;

      if lbl_edtCep.Text = '' Then begin  //atribui  vlr 0 a variavel cep
        Cep := 0;
      end else begin // caso esteja em branco atribui o vlr do campo na variavel cep
        Cep := strtoint( StringReplace(lbl_edtCep.Text,'-','',[rfReplaceAll]) );
      end;

    {  If cboRamoativ.ItemIndex = -1 Then begin
        StringRamoAtiv     := ' ''0'',';
        //    Application.MessageBox('Informe o Ramo de Atividade','Notifica��o: Ramo de Atividade n�o especificado',MB_OK+MB_ICONERROR);
      end else begin
        ClassRamoAtiv      := TClasseCombo( cboRamoativ.Items.Objects[cboRamoativ.ItemIndex] );
        StringRamoAtiv     := ' ''' + InttoStr( ClassRamoAtiv.ID ) + ''',';
      end; }

       if lbl_edtCodCliente.Text = '' Then begin
         Application.MessageBox('Por Favor Digite o c�gido do Cliente','Notifica��o: C�digo n�o especificado', MB_YESNO + MB_ICONERROR);
       end else begin

      If cboCondPagto.ItemIndex = -1 Then begin

        StringGravaCondPagto          := ' '' 0 '',';

      end else begin

        IDClassGravaCondPagto   := TClasseCombo( cboCondPagto.Items.Objects[cboCondPagto.ItemIndex] );
        StringGravaCondPagto          := ' ''' + InttoStr( IDClassGravaCondPagto.ID ) + ''',';

      end;

      If cboVendedor.ItemIndex = -1 Then begin

        StringGravaVendedor          := ' '' 0 '',';

      end else begin

        ClassGravaVendedor   := TClasseCombo( cboVendedor.Items.Objects[cboVendedor.ItemIndex] );
        StringGravaVendedor          := ' ''' + InttoStr( ClassGravaVendedor.ID ) + ''',';

      end;

      //insere na tabela os dados digitados nos campos determinados abaixo.
      Valor := StringReplace(lbl_edtValor.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
      Valor := StringReplace(Valor,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);
      if Valor = '' Then
         Valor := '0';

      //trabalhando com a classe TCadastro
      try

        strNome.Nome := lbl_edtNomerazao.Text;
        strEndereco.Endereco := lbl_edtEndereco.Text;

        ibCadastro.Close;
        ibCadastro.SQL.Clear;
        ibCadastro.SQL.Add('INSERT INTO TBLCADASTRO '
        + ' (IDCLASS,NOME,NUMERO,COMPL,PONTOREFERENCIA,OBS,DATA,IDCONDPAGTO,'
        + 'IDVENDEDOR,DESCONTO,TELEFONE,CELULAR,VALOR,ENDERECO,BAIRRO,CIDADE,ESTADO,CEP) values '
        + ' (''' + IntToStr(IDClass) + ''',''' + strNome.Nome + ''','
        + ' ''' + lbl_edtNumero.Text + ''',''' + lbl_edtComplemento.Text + ''','
        + ' ''' + lbl_edtPontoreferencia.Text + ''',''' + lbl_edtObs.Text + ''','
        + ' ''' + FormatDateTime('mm-dd-yyyy', dtpDataCli.Date) + ''','
        + StringGravaCondPagto
        + StringGravaVendedor
        + ' ''' + lbl_edtDesconto.Text + ''','
        + ' ''' + lbl_edtTelCom.Text + ''','
        + ' ''' + lbl_edtCelular.Text + ''','
        + ' ''' + Valor + ''','
        + ' ''' + strEndereco.Endereco + ''','
        + ' ''' + lbl_edtBairro.Text + ''','
        + ' ''' + lbl_edtCidade.Text + ''','
        + ' ''' + lbl_edtEstado.Text + ''','
        + ' ''' + IntToStr(Cep) + ''')');
        ibCadastro.ExecSQL;

      finally

        strNome.Free;
        strEndereco.Free;

      end;



        //select para trazer o nome do cliente no campo abaixo atraves do id
        ibCadastro.Close;                                    //WHERE NOME=''' + lbl_edtNomerazao.Text + '''');
        ibCadastro.SQL.Clear;
        ibCadastro.SQL.Add('SELECT IDCAD FROM TBLCADASTRO ORDER BY TBLCADASTRO.IDCAD DESC');
        ibCadastro.Open;

        IDCadnovo := ibCadastro.FieldByName('IDCAD').AsInteger;//atribui o id do nome a variavel.


        if lbl_edtEndereco.Text <> '' Then begin

          ibLogradouro.Close;
          ibLogradouro.SQL.Clear;
          ibLogradouro.SQL.Add('INSERT INTO TBLLOGRADOURO '
          + ' (IDCAD,ENDERECO,BAIRRO,ESTADO,CIDADE) values '
          + ' (''' + IntToStr(IDCadnovo) + ''',''' + lbl_edtEndereco.Text + ''',''' + lbl_edtBairro.Text + ''','
          + ' ''' + lbl_edtEstado.Text + ''','
          + ' ''' + lbl_edtCidade.Text + ''')');
          ibLogradouro.ExecSQL;

        end;

        if lbl_edtTelcom.Text <> '' Then begin
          //inicio de rotina para grava��o de contato
          //localiza e abre somente o cadastro de contato pela identifica��o do telefone coml.
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

       end;

       if lbl_edtTelFax.Text <> '' Then begin
         //inicio de rotina para grava��o de contato
         //localiza e abre somente o cadastro de contato pela identifica��o do fax.
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

       end;

       if lbl_edtCelular.Text <> '' Then begin
        //inicio de rotina para grava��o de contato
        //localiza e abre somente o cadastro de contato pela identifica��o do celular.
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

       end;

       if lbl_edtEmail.Text <> '' Then begin

        //insere dados na tbl contato
         ibContato.Close;
         ibContato.SQL.Clear;
         ibContato.SQL.Add('INSERT INTO TBLCONTATO '
         + '(IDCAD,EMAIL) values '
         + '(''' + IntToStr(IDCadnovo) + ''','
         + ' ''' + lbl_edtEmail.Text + ''')');
         ibContato.ExecSQL;

       end;

        //insere dados na tblcaddocumentacao
        ibDocumentacao.Close;
        ibDocumentacao.SQL.Clear;
        ibDocumentacao.SQL.Add('INSERT INTO TBLCADDOCUMENTACAO '
        + ' (IDCAD,CODIGO,CNPJ_CPF,IE_RG) values '
        + ' (''' + IntToStr(IDCadnovo) + ''','
        + ' ''' + IntToStr(IDCadnovo) + ''','
        + ' ''' + lbl_edtCnpj_cpf.Text + ''',''' + lbl_edtIE_rg.Text + ''')');
        ibDocumentacao.ExecSQL;

        Commit(ibDocumentacao);
        Commit(ibContato);
        Commit(ibCadastro);

        ExecSELECT;












   {   if lbl_edtContato.Text <> '' Then begin

        ibClassificacao.Close;
        ibClassificacao.SQL.Clear;
        ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Contato''');
        ibClassificacao.Open;
        IDClassContato := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identiicacao do contato de telefone coml. na variavel.

        //insere dados na tbl contato
        ibContato.Close;
        ibContato.SQL.Clear;
        ibContato.SQL.Add('INSERT INTO TBLCONTATO '
        + '(IDCAD,TIPO,DDD,CONTATO) values '
        + '(''' + IntToStr(IDCadnovo) + ''',''' + IntToStr(IDClassContato) + ''',''0'','
        + ' ''' + lbl_edtContato.Text + ''')');
        ibContato.ExecSQL;
      end; }



     {   ibClassificacao.Close;
        ibClassificacao.SQL.Clear;
        ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
        ibClassificacao.Open;
        IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICA��O DO CLIENTE NA VARIAVEL.

        //BUSCA TODOS OS CLIENTES QUE ESTEJAM NA CLASSIFICA��O DE CLIENTES
        ibCadastro.Close;
        ibCadastro.SQL.Clear;
        ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLCADDOCUMENTACAO.CODIGO,TBLCADDOCUMENTACAO.IE_RG,'
        + 'TBLCONTATO.CONTATO As Telefone, FROM TBLCADASTRO '
        + ' INNER JOIN TBLCADDOCUMENTACAO ON TBLCADASTRO.IDCAD = TBLCADDOCUMENTACAO.IDCAD '
        + ' WHERE (TBLCADASTRO.idclass=''' + InttoStr(IDClass) + ''') ORDER BY TBLCADASTRO.NOME');
        ibCadastro.Open;  }

        // apos gravar na tabela os campos acima volta o titulo novo pro botao e limpa os campos
        sbGravar.Caption := '&Novo';
        //ibeaAlterar.Enabled := True;
       // ibeaExcluir.Enabled := True;
        DesabilitaCamposCli(False);

       end;{if condicao do codigo cliente}

      end else begin

        sbGravar.Caption := '&Gravar';

        DesabilitaCamposCli(True);
        LimpaCampo;

       // lbl_edtCodCliente.SetFocus;
        lbl_edtCep.Text := '0';
        lbl_edtCep.Text := FormatFloat('00000-000',StrToFloat(lbl_edtCep.Text));


      //select para trazer o nome do cliente no campo abaixo atraves do id
    {  ibCadastro.Close;
      ibCadastro.SQL.Clear;
      ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO ORDER BY IDCAD DESC');// and TBLCADDOCUMENTACAO.CODIGO=''' + lbl_edtCodCliente.Text + '''');
      ibCadastro.Open;
      IDCadnovo := (ibCadastro.FieldByName('IDCAD').AsInteger + 1);}//atribui o id do nome a variavel.


        lbl_edtCodCliente.SetFocus;
        ibClassificacao.Close;
        ibClassificacao.SQL.Clear;
        ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
        ibClassificacao.Open;
        IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICA��O DO CLIENTE NA VARIAVEL.

        //select para trazer o nome do cliente no campo abaixo atraves do id
        ibCadastro.Close;
        ibCadastro.SQL.Clear;
        ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + IntToStr(IDClass) + ''' ORDER BY IDCAD DESC');// and TBLCADDOCUMENTACAO.CODIGO=''' + lbl_edtCodCliente.Text + '''');
        ibCadastro.Open;
        IDCadnovo := (ibCadastro.FieldByName('IDCAD').AsInteger + 1);//atribui o id do nome a variavel.

        lbl_edtCodCliente.Text := IntToStr(ibCadastro.FieldByName('IDCAD').AsInteger + 1);

      end;

    end;{if}

  end;{with}

end;


procedure TfrmClientes.sbGravarMouseEnter(Sender: TObject);
begin
sbGravar.Font.Color := clBlack;

end;

procedure TfrmClientes.sbGravarMouseLeave(Sender: TObject);
begin
sbGravar.Font.Color := clWhite;
end;

//end;

procedure sb_ord_cod(Sender: TObject);
begin

  with dmModule do begin

    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
    ibClassificacao.Open;
    IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICA��O DO CLIENTE NA VARIAVEL.


    //BUSCA TODOS OS CLIENTES QUE ESTEJAM NA CLASSIFICA��O DE CLIENTES
    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLCADDOCUMENTACAO.CODIGO,'
    + ' TBLCADDOCUMENTACAO.IE_RG FROM TBLCADASTRO '
    + ' LEFT OUTER JOIN TBLCADDOCUMENTACAO ON TBLCADASTRO.IDCAD = TBLCADDOCUMENTACAO.IDCAD '
    + ' WHERE (TBLCADASTRO.idclass=''' + InttoStr(IDClass) + ''')ORDER BY TBLCADDOCUMENTACAO.CODIGO DESC');
    ibCadastro.Open;

   //lbl_edtNome.Text := '';
    
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
ValorParcial, TotaldoPendente, ValorDescontos, ValorAcrescimos : Real;
ValorParcialPago, TotalDescontos, TotalAcrescimos : String;
  ValorGeralCX, ValorGeralB, ValorGeralC : Real;
  ValorTotalCX, ValorTotalB, ValorTotalC : String;
  ValorPendente, ValorPendenteB, ValorPendenteC : Real;
  ValorTotalPen, ValorTotalPenB, ValorTotalPenC : String;
  VlrPago : Real;
  TotalPago : String;
  SaldoDevedor : Real;

begin

  with dmModule do begin

    if ValorGeralCX > 0 Then begin

      ValorGeralCX := 0;

    end;

    if ValorTotalCX > '0' Then begin

      ValorTotalCX := '0';

    end;

    if ValorGeralB > 0 Then begin

      ValorGeralB := 0;

    end;

    if ValorTotalB > '0' Then begin

      ValorTotalB := '0';

    end;

    if ValorGeralC > 0 Then begin

      ValorGeralC := 0;

    end;

    if ValorTotalC > '0' Then begin

      ValorTotalC := '0';

    end;

    if ValorPendente > 0 Then begin

      ValorPendente := 0;

    end;

    if ValorTotalPen > '0' Then begin

      ValorTotalPen := '0';

    end;

    if ValorPendenteB > 0 Then begin

      ValorPendenteB := 0;

    end;

    if ValorTotalPenB > '0' Then begin

      ValorTotalPenB := '0';

    end;

    if ValorPendenteC > 0 Then begin

      ValorPendenteC := 0;

    end;

    if ValorTotalPenC > '0' Then begin

      ValorTotalPenC := '0';

    end;

    if VlrPago > 0 Then begin

      VlrPago := 0;

    end;

    if TotalPago > '0' Then begin

      TotalPago := '0';

    end;

    if ValorDescontos > 0 Then begin

      ValorDescontos := 0;

    end;

    if TotalDescontos > '0' Then begin

      TotalDescontos := '0';

    end;

    if ValorAcrescimos > 0 Then begin

      ValorAcrescimos := 0;

    end;

    if TotalAcrescimos > '0' Then begin

      TotalAcrescimos := '0';

    end;

////////////////////////////////////////////////////////////////////////////////

    if (lbl_edtNomeCliH.Text <> '') Then begin

    {ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
    ibClassificacao.Open;
    IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICA��O DO CLIENTE NA VARIAVEL.


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
    ibServsVenda.SQL.Add('SELECT TBLSERVICOSVENDAS.*,'
    + 'CADPRODUTOS.NOME As Produto,TBLCADASTRO.NOME As Cliente FROM TBLSERVICOSVENDAS '
    + 'LEFT OUTER JOIN TBLCADASTRO ON TBLSERVICOSVENDAS.IDCLIENTE=TBLCADASTRO.IDCAD '
    + 'LEFT OUTER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD '
    + 'WHERE TBLSERVICOSVENDAS.IDCLIENTE=''' + lbl_edtCodCliH.Text + ''' and TBLSERVICOSVENDAS.POSVENDA=''Pago'' ORDER BY TBLSERVICOSVENDAS.IDSERVSVENDA ASC');
    ibServsVenda.Open;                        //  IntToStr(IDCad)

    (ibServsVenda.FieldByName('VALORB') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibServsVenda.FieldByName('VALORC') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibServsVenda.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibServsVenda.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibServsVenda.FieldByName('PAGTOPARCIAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibServsVenda.FieldByName('VLRPENDENTE') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

    Commit(ibPagtoPendente);
    ibPagtoPendente.Close;
    ibPagtoPendente.SQL.Clear;
    ibPagtoPendente.SQL.Add('SELECT * FROM TBLPAGTOPENDENTE WHERE IDCLI=''' + lbl_edtCodCliH.Text + ''' and SITUACAO=''Pendente''');
    ibPagtoPendente.Open;

    while not ibPagtoPendente.Eof do begin

    if (VlrPago = 0)Then begin

      VlrPago := StrToFloat(StringReplace(FloatToStr(ibPagtoPendente.FieldByName('VLRPAGO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

    end else begin

      TotalPago := StringReplace(FloatToStr(ibPagtoPendente.FieldByName('VLRPAGO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
      VlrPago := VlrPago + StrToFloat(StringReplace(TotalPago,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

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


    while not ibServsVenda.Eof do begin//enquanto nao for fim de registro


          if (ValorGeralCX = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorGeralCX := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorTotalCX := StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorGeralCX := ValorGeralCX + StrtoFloat(StringReplace(ValorTotalCX,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

           end;{if}

////////////////////////////////////////////////////////////////////////////////

          if (ValorGeralB = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorGeralB := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VALORB').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorTotalB := StringReplace(FloattoStr(ibServsVenda.FieldByName('VALORB').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorGeralB := ValorGeralB + StrtoFloat(StringReplace(ValorTotalB,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

           end;{if}

////////////////////////////////////////////////////////////////////////////////

          if (ValorGeralC = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorGeralC := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VALORC').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorTotalC := StringReplace(FloattoStr(ibServsVenda.FieldByName('VALORC').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorGeralC := ValorGeralC + StrtoFloat(StringReplace(ValorTotalC,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

           end;{if}

////////////////////////////////////////////////////////////////////////////////

           if ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pendente' Then begin

             if (ValorPendente = 0) Then begin//se variavel for igual a zero

              //atribui o vlr do campo abaixo na variavel
              ValorPendente := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

             end else begin

              //atribui na variavel substituindo o ponto para vlr em branco
              ValorTotalPen := StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);

              //atribui a variavel o valor separando por ponto
              ValorPendente := ValorPendente + StrtoFloat(StringReplace(ValorTotalPen,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

             end;{if}

////////////////////////////////////////////////////////////////////////////////

             if (ValorPendenteB = 0) Then begin//se variavel for igual a zero

              //atribui o vlr do campo abaixo na variavel
              ValorPendenteB := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VALORB').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

             end else begin

              //atribui na variavel substituindo o ponto para vlr em branco
              ValorTotalPenB := StringReplace(FloattoStr(ibServsVenda.FieldByName('VALORB').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);

              //atribui a variavel o valor separando por ponto
              ValorPendenteB := ValorPendenteB + StrtoFloat(StringReplace(ValorTotalPenB,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

             end;{if}

////////////////////////////////////////////////////////////////////////////////

             if (ValorPendenteC = 0) Then begin//se variavel for igual a zero

              //atribui o vlr do campo abaixo na variavel
              ValorPendenteC := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VALORC').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

             end else begin

              //atribui na variavel substituindo o ponto para vlr em branco
              ValorTotalPenC := StringReplace(FloattoStr(ibServsVenda.FieldByName('VALORC').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);

              //atribui a variavel o valor separando por ponto
              ValorPendenteC := ValorPendenteC + StrtoFloat(StringReplace(ValorTotalPenC,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

             end;{if}

////////////////////////////////////////////////////////////////////////////////

             if (ValorDescontos = 0) Then begin//se variavel for igual a zero

               //atribui o vlr do campo abaixo na variavel
               ValorDescontos := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('DESCONTO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

             end else begin

               //atribui na variavel substituindo o ponto para vlr em branco
               TotalDescontos := StringReplace(FloattoStr(ibServsVenda.FieldByName('DESCONTO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);

               //atribui a variavel o valor separando por ponto
               ValorDescontos := ValorDescontos + StrtoFloat(StringReplace(TotalDescontos,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

              end;{if}

              if (ValorAcrescimos = 0) Then begin//se variavel for igual a zero

                //atribui o vlr do campo abaixo na variavel
                ValorAcrescimos := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('ACRESCIMO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

              end else begin

                //atribui na variavel substituindo o ponto para vlr em branco
                TotalAcrescimos := StringReplace(FloattoStr(ibServsVenda.FieldByName('ACRESCIMO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);

                //atribui a variavel o valor separando por ponto
                ValorAcrescimos := ValorAcrescimos + StrtoFloat(StringReplace(TotalAcrescimos,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

               end;{if}

           end;//if
////////////////////////////////////////////////////////////////////////////////

           if (ValorParcial = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorParcial := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('PAGTOPARCIAL').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorParcialPago := StringReplace(FloattoStr(ibServsVenda.FieldByName('PAGTOPARCIAL').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorParcial := ValorParcial + StrtoFloat(StringReplace(ValorParcialPago,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

           end;{if}


          if ValorParcial > 0 Then begin

          TotaldoPendente := ValorPendente + ValorPendenteB + ValorPendenteC - ValorParcial;

          end else begin

          TotaldoPendente := ValorPendente + ValorPendenteB + ValorPendenteC;

          end;//if



////////////////////////////////////////////////////////////////////////////////


          ibServsVenda.Next;//vai para o pproximo registro pro looping nao ficar infinito.

        end;{while}

     //  if lbl_edtTotal.Text = '0,00' Then begin

        lbl_edtTotal.Text := FormatFloat(CasasDecimais('Produtos'),ValorGeralCX + ValorGeralB + ValorGeralC);
        lbl_edtTotalPendente.Text := FormatFloat(CasasDecimais('Produtos'),TotaldoPendente);
        lbl_edtTotalPago.Text :=  lbl_edtPagtoParcial.Text;
        lbl_edtVlrTotalP.Text :=  FormatFloat(CasasDecimais('Produtos'),TotaldoPendente);


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

        if (SaldoDevedor > 0)and(lbl_edtVlrTotalP.Text > '0,00') Then begin

          lbl_edtSaldoDevedor.Text := FormatFloat(CasasDecimais('Produtos'),SaldoDevedor + ValorAcrescimos - ValorDescontos);
          lbl_edtTotalDevedor.Text := lbl_edtSaldoDevedor.Text;
          lbl_edtTotalDesconto.Text  := FormatFloat(CasasDecimais('Produtos'),ValorDescontos);
          lbl_edtTotalAcrescimo.Text := FormatFloat(CasasDecimais('Produtos'),ValorAcrescimos);

       end;

       if (SaldoDevedor = 0)and(lbl_edtVlrTotalP.Text > '0,00')Then begin

          lbl_edtSaldoDevedor.Text := lbl_edtVlrTotalP.Text;
          lbl_edtTotalDevedor.Text := lbl_edtSaldoDevedor.Text;

       end;
////////////////////////////////////////////////////////////////////////////////

    {  lbl_edtTotal.Text        := '0,00';
      lbl_edtTotalPendente.Text := '0,00';
      lbl_edtTotalDevedor.Text := '0,00';
      lbl_edtTotalPago.Text := '0,00';
      lbl_edtVlrTotalP.Text := '0,00';
      lbl_edtPagtoParcial.Text := '0,00';
      lbl_edtTotalDesconto.Text := '0,00';
      lbl_edtTotalAcrescimo.Text := '0,00';
      lbl_edtSaldoDevedor.Text := '0,00';
      lbl_edtVlrPago.Text := '0,00';
      lbl_edtTotalemAver.Text := '0,00'; }

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


    if (ibServsVenda.FieldByName('PENDENTEPAGO').value = 'Pago') Then begin
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
ValorParcial, TotaldoPendente, ValorDescontos, ValorAcrescimos : Real;
ValorParcialPago, TotalDescontos, TotalAcrescimos : String;
  ValorGeralCX, ValorGeralB, ValorGeralC : Real;
  ValorTotalCX, ValorTotalB, ValorTotalC : String;
  ValorPendente, ValorPendenteB, ValorPendenteC : Real;
  ValorTotalPen, ValorTotalPenB, ValorTotalPenC : String;

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

    if ValorGeralB > 0 Then begin

      ValorGeralB := 0;

    end;

    if ValorTotalB > '0' Then begin

      ValorTotalB := '0';

    end;

    if ValorGeralC > 0 Then begin

      ValorGeralC := 0;

    end;

    if ValorTotalC > '0' Then begin

      ValorTotalC := '0';

    end;

    if ValorPendente > 0 Then begin

      ValorPendente := 0;

    end;

    if ValorTotalPen > '0' Then begin

      ValorTotalPen := '0';

    end;

    if ValorPendenteB > 0 Then begin

      ValorPendenteB := 0;

    end;

    if ValorTotalPenB > '0' Then begin

      ValorTotalPenB := '0';

    end;

    if ValorPendenteC > 0 Then begin

      ValorPendenteC := 0;

    end;

    if ValorTotalPenC > '0' Then begin

      ValorTotalPenC := '0';

    end;

    if VlrDevedor > 0 Then begin

      VlrDevedor := 0;

    end;

    if TotalDevedor > '0' Then begin

      TotalDevedor := '0';

    end;

    if ValorDescontos > 0 Then begin

      ValorDescontos := 0;

    end;

    if TotalDescontos > '0' Then begin

      TotalDescontos := '0';

    end;

    if ValorAcrescimos > 0 Then begin

      ValorAcrescimos := 0;

    end;

    if TotalAcrescimos > '0' Then begin

      TotalAcrescimos := '0';

    end;

////////////////////////////////////////////////////////////////////////////////

    if (lbl_edtNomeCliH.Text <> '') Then begin

    {ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
    ibClassificacao.Open;
    IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICA��O DO CLIENTE NA VARIAVEL.


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
    + 'WHERE TBLSERVICOSVENDAS.IDCLIENTE=''' + lbl_edtCodCliH.Text + ''' and TBLSERVICOSVENDAS.POSVENDA=''Pago''and(TBLRECEBEVENDAS.DATA between :ParamDataIni and :ParamDataF) ORDER BY TBLSERVICOSVENDAS.DATA DESC');
    ibServsVenda.Open;                        //  IntToStr(IDCad)

    ibServsVenda.Close;
    ibServsVenda.ParamByName('ParamDataIni').Value := dtpDataIni.DateTime;
    ibServsVenda.ParamByName('ParamDataF').Value := dtpDataFinal.DateTime;
    ibServsVenda.Open;


    (ibServsVenda.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibServsVenda.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibServsVenda.FieldByName('PAGTOPARCIAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibServsVenda.FieldByName('VLRPENDENTE') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
////////////////////////////////////////////////////////////////////////////////
    Commit(ibRecVendas);
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

          VlrDevedor := StrToFloat(StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVLRPENDENTE').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

        end else begin

          TotalDevedor := StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVLRPENDENTE').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          VlrDevedor := VlrDevedor + StrToFloat(StringReplace(TotalDevedor,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

        end;

    ibRecVendas.Next;

    end;//while

   end;//if label cod cli  TBLCADASTRO.NOME=''' + lbl_edtNomeCliH.Text + ''' and

////////////////////////////////////////////////////////////////////////////////


    while not ibServsVenda.Eof do begin//enquanto nao for fim de registro

          if (ValorGeralCX = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorGeralCX := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorTotalCX := StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorGeralCX := ValorGeralCX + StrtoFloat(StringReplace(ValorTotalCX,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

           end;{if}
           
////////////////////////////////////////////////////////////////////////////////

          if (ValorGeralB = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorGeralB := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VALORB').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorTotalB := StringReplace(FloattoStr(ibServsVenda.FieldByName('VALORB').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorGeralB := ValorGeralB + StrtoFloat(StringReplace(ValorTotalB,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

           end;{if}

////////////////////////////////////////////////////////////////////////////////

          if (ValorGeralC = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorGeralC := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VALORC').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorTotalC := StringReplace(FloattoStr(ibServsVenda.FieldByName('VALORC').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorGeralC := ValorGeralC + StrtoFloat(StringReplace(ValorTotalC,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

           end;{if}

////////////////////////////////////////////////////////////////////////////////

          if (ValorDescontos = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorDescontos := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('DESCONTO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            TotalDescontos := StringReplace(FloattoStr(ibServsVenda.FieldByName('DESCONTO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorDescontos := ValorDescontos + StrtoFloat(StringReplace(TotalDescontos,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

           end;{if}

////////////////////////////////////////////////////////////////////////////////

          if (ValorAcrescimos = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorAcrescimos := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('ACRESCIMO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            TotalAcrescimos := StringReplace(FloattoStr(ibServsVenda.FieldByName('ACRESCIMO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorAcrescimos := ValorAcrescimos + StrtoFloat(StringReplace(TotalAcrescimos,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

           end;{if}

////////////////////////////////////////////////////////////////////////////////

           if ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pendente' Then begin

             if (ValorPendente = 0) Then begin//se variavel for igual a zero

              //atribui o vlr do campo abaixo na variavel
              ValorPendente := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

             end else begin

              //atribui na variavel substituindo o ponto para vlr em branco
              ValorTotalPen := StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);

              //atribui a variavel o valor separando por ponto
              ValorPendente := ValorPendente + StrtoFloat(StringReplace(ValorTotalPen,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

             end;{if}
             
           end;//if
           
////////////////////////////////////////////////////////////////////////////////

             if (ValorPendenteB = 0) Then begin//se variavel for igual a zero

              //atribui o vlr do campo abaixo na variavel
              ValorPendenteB := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VALORB').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

             end else begin

              //atribui na variavel substituindo o ponto para vlr em branco
              ValorTotalPenB := StringReplace(FloattoStr(ibServsVenda.FieldByName('VALORB').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);

              //atribui a variavel o valor separando por ponto
              ValorPendenteB := ValorPendenteB + StrtoFloat(StringReplace(ValorTotalPenB,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

             end;{if}

////////////////////////////////////////////////////////////////////////////////

             if (ValorPendenteC = 0) Then begin//se variavel for igual a zero

              //atribui o vlr do campo abaixo na variavel
              ValorPendenteC := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VALORC').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

             end else begin

              //atribui na variavel substituindo o ponto para vlr em branco
              ValorTotalPenC := StringReplace(FloattoStr(ibServsVenda.FieldByName('VALORC').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);

              //atribui a variavel o valor separando por ponto
              ValorPendenteC := ValorPendenteC + StrtoFloat(StringReplace(ValorTotalPenC,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

             end;{if}

////////////////////////////////////////////////////////////////////////////////


           if (ValorParcial = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorParcial := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('PAGTOPARCIAL').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorParcialPago := StringReplace(FloattoStr(ibServsVenda.FieldByName('PAGTOPARCIAL').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorParcial := ValorParcial + StrtoFloat(StringReplace(ValorParcialPago,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

           end;{if}


          if ValorParcial > 0 Then begin

          TotaldoPendente := ValorPendente + ValorPendenteB + ValorPendenteC - ValorParcial;

          end else begin

          TotaldoPendente := ValorPendente + ValorPendenteB + ValorPendenteC;

          end;//if



////////////////////////////////////////////////////////////////////////////////


          ibServsVenda.Next;//vai para o pproximo registro pro looping nao ficar infinito.

        end;{while}

     //  if lbl_edtTotal.Text = '0,00' Then begin

        lbl_edtTotal.Text := FormatFloat(CasasDecimais('Produtos'),ValorGeralCX + ValorGeralB + ValorGeralC);
        lbl_edtTotalPendente.Text := FormatFloat(CasasDecimais('Produtos'),TotaldoPendente);
        lbl_edtTotalPago.Text :=  lbl_edtPagtoParcial.Text;
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

////////////////////////////////////////////////////////////////////////////////

  end;{with}


end;

procedure TfrmClientes.lbl_edtValorEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmClientes.lbl_edtVlrPagoExit(Sender: TObject);

var

Valor1,Valor2 : Real;

begin

  if (lbl_edtVlrPago.Text <> '')and(lbl_edtVlrPago.Text > '0,00')and(lbl_edtVlrTotalP.Text >'0,00') Then begin

    if lbl_edtVlrPago.Text <> '' Then begin// se for em branco executa rotina abaixo.

      if (Pos(',',lbl_edtVlrPago.Text)>0) and (lbl_edtVlrPago.Text <> '') Then begin

        if (lbl_edtSaldoDevedor.Text > '0')or(lbl_edtSaldoDevedor.Text > '0,00') Then begin

          Valor1 := StrToFloat(StringReplace(lbl_edtVlrPago.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
          Valor2 := StrToFloat(StringReplace(lbl_edtSaldoDevedor.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          lbl_edtTotalemAver.Text := FormatFloat(',0.00',(Valor2 - Valor1));

        end;

        if (lbl_edtSaldoDevedor.Text = '0')or(lbl_edtSaldoDevedor.Text = '')or(lbl_edtSaldoDevedor.Text = '0,00') Then begin

          Valor1 := StrToFloat(StringReplace(lbl_edtVlrPago.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
          Valor2 := StrToFloat(StringReplace(lbl_edtVlrTotalP.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          lbl_edtTotalemAver.Text := FormatFloat(',0.00',(Valor2 - Valor1));

        end;

      end else begin

        if (lbl_edtSaldoDevedor.Text > '0')or(lbl_edtSaldoDevedor.Text > '0,00') Then begin

          Valor1 := StrToFloat(StringReplace(lbl_edtVlrPago.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
          Valor2 := StrToFloat(StringReplace(lbl_edtSaldoDevedor.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          lbl_edtTotalemAver.Text := FormatFloat(',0.00',(Valor2 - Valor1));

        end;

        if (lbl_edtSaldoDevedor.Text = '0')or(lbl_edtSaldoDevedor.Text = '')or(lbl_edtSaldoDevedor.Text = '0,00') Then begin

          Valor1 := StrToFloat(StringReplace(lbl_edtVlrPago.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
          Valor2 := StrToFloat(StringReplace(lbl_edtVlrTotalP.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          lbl_edtTotalemAver.Text := FormatFloat(',0.00',(Valor2 - Valor1));

        end;

      end;{if}

    end;{if}

     lbl_edtVlrPago.Text := FormatFloat(CasasDecimais('Produtos'),StrToFloat(lbl_edtVlrPago.Text));

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
ConfirmaPagto,IDCliente : Integer;
VlrPago,Situacao, Historico, Pagto : String;
begin

  with dmModule do begin

  ConfirmaPagto := Application.MessageBox('Confirma o Pagto. de Pendente?','Pagto. Pendente',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

  if ConfirmaPagto = 6 Then begin

    if lbl_edtCodCliH.Text <> '' Then begin

      IDCliente := StrToInt(lbl_edtCodCliH.Text);

    end else begin

      IDCliente := 0;

    end;

    VlrPago := StringReplace(lbl_edtVlrPago.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
    VlrPago := StringReplace(VlrPago,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);
    if VlrPago = '' Then
    VlrPago := '0';


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

    if (lbl_edtTotalemAver.Text = '0,00')or(lbl_edtTotalemAver.Text = '0')or(lbl_edtTotalemAver.Text = '')Then begin

      Situacao := 'Pago';

      ibServsVenda.Close;
      ibServsVenda.SQL.Clear;
      ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
      + 'PENDENTEPAGO = ''' + Situacao + ''' WHERE IDCLIENTE=''' + IntToStr(IDCliente) + '''');
      ibServsVenda.ExecSQL;
      Commit(ibServsVenda);

      Pagto := 'Sim';

      Commit(ibHistPendente);
      ibHistPendente.Close;
      ibHistPendente.SQL.Clear;
      ibHistPendente.SQL.Add('SELECT * FROM TBLHISTORICOPENDENTE WHERE IDCLIENTE=''' + IntToStr(IDCliente) + '''');
      ibHistPendente.Open;

      if ibHistPendente.RecordCount > 0 Then begin

        ibHistPendente.Close;
        ibHistPendente.SQL.Clear;
        ibHistPendente.SQL.Add('UPDATE TBLHISTORICOPENDENTE SET '
        + 'PAGTO=''' + Pagto + '''WHERE IDCLIENTE=''' + IntToStr(IDCliente) + '''');
        ibHistPendente.ExecSQL;
        Commit(ibHistPendente);

      end else begin

        ibHistPendente.Close;
        ibHistPendente.SQL.Clear;
        ibHistPendente.SQL.Add('INSERT INTO TBLHISTORICOPENDENTE'
        +'(IDCLIENTE,PAGTO) values '
        + '(''' + IntToStr(IDCliente) + ''','
        + ' ''' + Pagto + ''')');
        ibHistPendente.ExecSQL;
        Commit(ibHistPendente);

      end;

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
        ibPagtoPendente.ExecSQL;
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

      lbl_edtSaldoDevedor.Text := '0,00';
      lbl_edtTotalDevedor.Text := '0,00';

    end;//if totalemaver

  end;//if confirmapagto.

    ibeaHistoricoClick(Sender);
    lbl_edtVlrPago.Clear;
    lbl_edtTotalemAver.Clear;

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

ConfirmaExclusao, IDClientePagto, IDCupom : Integer;
Situacao : String;

begin

  with dmModule do begin

    Commit(ibHistPendente);
    ibHistPendente.Close;
    ibHistPendente.SQL.Clear;
    ibHistPendente.SQL.Add('SELECT * FROM TBLHISTORICOPENDENTE WHERE IDCLIENTE=''' + (lbl_CodCliPagto.Caption) + '''');
    ibHistPendente.Open;

    if ibHistPendente.FieldByName('PAGTO').AsString = 'Sim' Then begin

      if (lbl_edtNumeroCupom.Text <> '')and(lbl_CodCliPagto.Caption <> '') Then begin

       ConfirmaExclusao := Application.MessageBox('Confirma a Exclusao do lan�amento?','Exclus�o de Lan�amento',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

        if ConfirmaExclusao = 6 Then begin

          ibPagtoPendente.Close;
          ibPagtoPendente.SQL.Clear;
          ibPagtoPendente.SQL.Add('DELETE FROM TBLPAGTOPENDENTE WHERE IDPAGTOPENDENTE=''' + IntToStr(IDPagtoEfetuado) + '''');
          ibPagtoPendente.ExecSQL;
          Commit(ibPagtoPendente);

          Commit(ibPagtoPendente);
          ibPagtoPendente.Close;
          ibPagtoPendente.SQL.Clear;
          ibPagtoPendente.SQL.Add('SELECT * FROM TBLPAGTOPENDENTE WHERE IDCLI=''' + lbl_CodCliPagto.Caption + '''');
          ibPagtoPendente.Open;

          (ibPagtoPendente.FieldByName('VLRPAGO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

          IDClientePagto := StrToInt(lbl_CodCliPagto.Caption);
          IDCupom := StrToInt(lbl_edtNumeroCupom.Text);

          Situacao := 'Pendente';

          ibServsVenda.Close;
          ibServsVenda.SQL.Clear;
          ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
          + 'PENDENTEPAGO = ''' + Situacao + ''' WHERE IDCLIENTE=''' + IntToStr(IDClientePagto) + '''and TIPOVENDA=''Pendente'' and IDSERVSVENDA=''' + IntToStr(IDCupom)+ '''');
          ibServsVenda.ExecSQL;
          Commit(ibServsVenda);

        end;//if

      end;//if

    end else begin

      if (lbl_CodCliPagto.Caption <> '')and(lbl_edtNumeroCupom.Text = '')and(lbl_edtDevedor.Text > '0,00')and(lbl_edtValorPagtoEfetuado.Text > '0,00') Then begin

       ConfirmaExclusao := Application.MessageBox('Confirma a Exclusao do lan�amento?','Exclus�o de Lan�amento',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

        if ConfirmaExclusao = 6 Then begin

          ibPagtoPendente.Close;
          ibPagtoPendente.SQL.Clear;
          ibPagtoPendente.SQL.Add('DELETE FROM TBLPAGTOPENDENTE WHERE IDPAGTOPENDENTE=''' + IntToStr(IDPagtoEfetuado) + '''');
          ibPagtoPendente.ExecSQL;
          Commit(ibPagtoPendente);

          Commit(ibPagtoPendente);
          ibPagtoPendente.Close;
          ibPagtoPendente.SQL.Clear;
          ibPagtoPendente.SQL.Add('SELECT * FROM TBLPAGTOPENDENTE WHERE IDCLI=''' + lbl_CodCliPagto.Caption + '''');
          ibPagtoPendente.Open;

          (ibPagtoPendente.FieldByName('VLRPAGO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

          IDClientePagto := StrToInt(lbl_CodCliPagto.Caption);

          Situacao := 'Pendente';

          ibServsVenda.Close;
          ibServsVenda.SQL.Clear;
          ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
          + 'PENDENTEPAGO = ''' + Situacao + ''' WHERE IDCLIENTE=''' + IntToStr(IDClientePagto) + '''and IDTIPOPAGTO=''12''');
          ibServsVenda.ExecSQL;
          Commit(ibServsVenda);

          ibPagtoPendente.Close;
          ibPagtoPendente.SQL.Clear;
          ibPagtoPendente.SQL.Add(' UPDATE TBLPAGTOPENDENTE SET '
          + 'SITUACAO= ''' + Situacao + ''' WHERE IDCLI=''' + IntToStr(IDClientePagto) + '''');
          ibPagtoPendente.ExecSQL;
          Commit(ibPagtoPendente);

        end;//if

      end;

    end;//
    
      lbl_edtData.Clear;
      lbl_edtValorPagtoEfetuado.Clear;
      lbl_edtNumeroCupom.Clear;

  end;//with

end;

procedure TfrmClientes.ibeaRelatorioPClick(Sender: TObject);

var

IDClienteHistorico, IDClass : Integer;
ValorParcial, TotaldoPendente, ValorDescontos, ValorAcrescimos  : Real;
ValorParcialPago, TotalDescontos, TotalAcrescimos : String;
  ValorGeralCX, ValorGeralB, ValorGeralC : Real; 
  ValorTotalCX, ValorTotalB, ValorTotalC : String; 
  ValorPendente, ValorPendenteB, ValorPendenteC : Real;
  ValorTotalPen, ValorTotalPenB, ValorTotalPenC : String;
  VlrPago : Real;
  TotalPago : String;
  SaldoDevedor : Real;

begin

  with dmModule do begin

    if ValorGeralCX > 0 Then begin

      ValorGeralCX := 0;

    end;

    if ValorTotalCX > '0' Then begin

      ValorTotalCX := '0';

    end;

    if ValorGeralB > 0 Then begin

      ValorGeralB := 0;

    end;

    if ValorTotalB > '0' Then begin

      ValorTotalB := '0';

    end;

    if ValorGeralC > 0 Then begin

      ValorGeralC := 0;

    end;

    if ValorTotalC > '0' Then begin

      ValorTotalC := '0';

    end;


    if ValorPendente > 0 Then begin

      ValorPendente := 0;

    end;

    if ValorTotalPen > '0' Then begin

      ValorTotalPen := '0';

    end;

    if ValorPendenteB > 0 Then begin

      ValorPendenteB := 0;

    end;

    if ValorTotalPenB > '0' Then begin

      ValorTotalPenB := '0';

    end;

    if ValorPendenteC > 0 Then begin

      ValorPendenteC := 0;

    end;

    if ValorTotalPenC > '0' Then begin

      ValorTotalPenC := '0';

    end;

    if VlrPago > 0 Then begin

      VlrPago := 0;

    end;

    if TotalPago > '0' Then begin

      TotalPago := '0';

    end;

    if ValorDescontos > 0 Then begin

      ValorDescontos := 0;

    end;

    if TotalDescontos > '0' Then begin

      TotalDescontos := '0';

    end;

    if ValorAcrescimos > 0 Then begin

      ValorAcrescimos := 0;

    end;

    if TotalAcrescimos > '0' Then begin

      TotalAcrescimos := '0';

    end;
    
////////////////////////////////////////////////////////////////////////////////

    if (frmClientes.lbl_edtNomeCliH.Text <> '') Then begin

    {ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
    ibClassificacao.Open;
    IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICA��O DO CLIENTE NA VARIAVEL.


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
    (ibTempVendaLoja.FieldByName('VALORB') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibTempVendaLoja.FieldByName('VALORC') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibTempVendaLoja.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibTempVendaLoja.FieldByName('PAGTOPARCIAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibTempVendaLoja.FieldByName('VLRPENDENTE') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO


    Commit(ibPagtoPendente);
    ibPagtoPendente.Close;
    ibPagtoPendente.SQL.Clear;
    ibPagtoPendente.SQL.Add('SELECT * FROM TBLPAGTOPENDENTE WHERE IDCLI=''' + frmClientes.lbl_edtCodCliH.Text + ''' and SITUACAO=''Pendente''');
    ibPagtoPendente.Open;

    while not ibPagtoPendente.Eof do begin

    if (VlrPago = 0)Then begin

      VlrPago := StrToFloat(StringReplace(FloatToStr(ibPagtoPendente.FieldByName('VLRPAGO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

    end else begin

      TotalPago := StringReplace(FloatToStr(ibPagtoPendente.FieldByName('VLRPAGO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
      VlrPago := VlrPago + StrToFloat(StringReplace(TotalPago,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

    end;

      ibPagtoPendente.Next

    end;//while


   end;//if label cod cli  TBLCADASTRO.NOME=''' + lbl_edtNomeCliH.Text + ''' and

////////////////////////////////////////////////////////////////////////////////


    while not ibTempVendaLoja.Eof do begin//enquanto nao for fim de registro


       {   if (ValorGeralCX = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorGeralCX := StrtoFloat(StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorTotalCX := StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorGeralCX := ValorGeralCX + StrtoFloat(StringReplace(ValorTotalCX,ThousandSeparator,'',[rfReplaceAll]));

           end;{if}

////////////////////////////////////////////////////////////////////////////////

         { if (ValorGeralB = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorGeralB := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VALORB').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorTotalB := StringReplace(FloattoStr(ibServsVenda.FieldByName('VALORB').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorGeralB := ValorGeralB + StrtoFloat(StringReplace(ValorTotalB,ThousandSeparator,'',[rfReplaceAll]));

           end;{if}

////////////////////////////////////////////////////////////////////////////////

        {  if (ValorGeralC = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorGeralC := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VALORC').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorTotalC := StringReplace(FloattoStr(ibServsVenda.FieldByName('VALORC').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorGeralC := ValorGeralC + StrtoFloat(StringReplace(ValorTotalC,ThousandSeparator,'',[rfReplaceAll]));

           end;}{if}

////////////////////////////////////////////////////////////////////////////////

          if (ValorDescontos = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorDescontos := StrtoFloat(StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('DESCONTO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            TotalDescontos := StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('DESCONTO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorDescontos := ValorDescontos + StrtoFloat(StringReplace(TotalDescontos,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

           end;{if}

////////////////////////////////////////////////////////////////////////////////

          if (ValorAcrescimos = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorAcrescimos := StrtoFloat(StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('ACRESCIMO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            TotalAcrescimos := StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('ACRESCIMO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorAcrescimos := ValorAcrescimos + StrtoFloat(StringReplace(TotalAcrescimos,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

           end;{if}

////////////////////////////////////////////////////////////////////////////////

           if ibTempVendaLoja.FieldByName('PENDENTEPAGO').AsString = 'Pendente' Then begin

             if (ValorPendente = 0) Then begin//se variavel for igual a zero

              //atribui o vlr do campo abaixo na variavel
              ValorPendente := StrtoFloat(StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

             end else begin

              //atribui na variavel substituindo o ponto para vlr em branco
              ValorTotalPen := StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);

              //atribui a variavel o valor separando por ponto
              ValorPendente := ValorPendente + StrtoFloat(StringReplace(ValorTotalPen,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

             end;{if}

////////////////////////////////////////////////////////////////////////////////

             if (ValorPendenteB = 0) Then begin//se variavel for igual a zero

              //atribui o vlr do campo abaixo na variavel
              ValorPendenteB := StrtoFloat(StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('VALORB').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

             end else begin

              //atribui na variavel substituindo o ponto para vlr em branco
              ValorTotalPenB := StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('VALORB').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);

              //atribui a variavel o valor separando por ponto
              ValorPendenteB := ValorPendenteB + StrtoFloat(StringReplace(ValorTotalPenB,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

             end;{if}

////////////////////////////////////////////////////////////////////////////////

             if (ValorPendenteC = 0) Then begin//se variavel for igual a zero

              //atribui o vlr do campo abaixo na variavel
              ValorPendenteC := StrtoFloat(StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('VALORC').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

             end else begin

              //atribui na variavel substituindo o ponto para vlr em branco
              ValorTotalPenC := StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('VALORC').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);

              //atribui a variavel o valor separando por ponto
              ValorPendenteC := ValorPendenteC + StrtoFloat(StringReplace(ValorTotalPenC,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

             end;{if}

           end;//if PENDENTEPAGO = PENDENTE

////////////////////////////////////////////////////////////////////////////////

           if (ValorParcial = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorParcial := StrtoFloat(StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('PAGTOPARCIAL').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorParcialPago := StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('PAGTOPARCIAL').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorParcial := ValorParcial + StrtoFloat(StringReplace(ValorParcialPago,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

           end;{if}


          if ValorParcial > 0 Then begin

          TotaldoPendente := ValorPendente + ValorPendenteB + ValorPendenteC - ValorParcial;

          end else begin

          TotaldoPendente := ValorPendente + ValorPendenteB + ValorPendenteC;

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

        qrdbQtde.DataSet     := ibTempVendaLoja;
        qrdbQtde.DataField   := ibTempVendaLoja.FieldByName('QTDE').FieldName;


        qrdbVlrUnit.DataSet   := ibTempVendaLoja;
        qrdbVlrUnit.DataField := ibTempVendaLoja.FieldByName('VLRUNIT').FieldName;
        (ibServsVenda.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

        qrdb_VlrB.DataSet   := ibTempVendaLoja;
        qrdb_VlrB.DataField := ibTempVendaLoja.FieldByName('VALORB').FieldName;
        (ibServsVenda.FieldByName('VALORB') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

        qrdb_VlrC.DataSet   := ibTempVendaLoja;
        qrdb_VlrC.DataField := ibTempVendaLoja.FieldByName('VALORC').FieldName;
        (ibServsVenda.FieldByName('VALORC') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO


        qrdbTotal.DataSet   := ibTempVendaLoja;
        qrdbTotal.DataField := ibTempVendaLoja.FieldByName('VLRTOTAL').FieldName;
        (ibServsVenda.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

        qrdbData.DataSet        := ibTempVendaLoja;
        qrdbData.DataField      := ibTempVendaLoja.FieldByName('DATA').FieldName;

////////////////////////////////////////////////////////////////////////////////

        if TotaldoPendente > 0 Then begin

          qrl_VlrTotalP.Caption :=  FormatFloat(CasasDecimais('Produtos'),TotaldoPendente);

////////////////////////////////////////////////////////////////////////////////

          if SaldoDevedor > 0 Then begin

            qrl_SaldoDevedor.Caption := FormatFloat(CasasDecimais('Produtos'),SaldoDevedor + ValorAcrescimos - ValorDescontos);

          end;

          if SaldoDevedor = 0 Then begin

            qrl_SaldoDevedor.Caption := qrl_VlrTotalP.Caption;

          end;

          if ValorDescontos > 0 Then begin

            qrl_TotalDescontos.Caption := FormatFloat(CasasDecimais('Produtos'),ValorDescontos);

          end else begin

            qrl_TotalDescontos.Caption := '0,00';

          end;

          if ValorAcrescimos > 0 Then begin

            qrl_TotalAcrescimos.Caption := FormatFloat(CasasDecimais('Produtos'),ValorAcrescimos);

          end else begin

            qrl_TotalAcrescimos.Caption := '0,00';

          end;

////////////////////////////////////////////////////////////////////////////////


        end else begin

          qrl_VlrTotalP.Caption := '0,00';
          qrl_TotalDescontos.Caption := '0,00';
          qrl_TotalAcrescimos.Caption := '0,00';
          qrl_SaldoDevedor.Caption := '0,00';
          
        end;

////////////////////////////////////////////////////////////////////////////////

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
         MessageDlg('Ocorreu um erro ao tentar mostrar o Formul�rio: ' + E.Message,mtError,[mbOk],0);
      end;
    END;
  //////////////////////////////////////////////////////////////

  end;{with}

  
end;

end.
