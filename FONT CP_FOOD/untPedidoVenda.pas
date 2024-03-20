unit untPedidoVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, IBEAntialiasButton, ComCtrls, Grids, DBGrids,
  mxFlatControls, classComboBox, DB, IBQuery, Psock, NMsmtp, QRExport,
  ComObj;

type
  TfrmPedidodeVenda = class(TForm)
    pcPedidoVenda: TPageControl;
    tbsPedido: TTabSheet;
    tbsContasaReceber: TTabSheet;
    Label1: TLabel;
    Image1: TImage;
    ibeaNovo: TIBEAntialiasButton;
    ibeaAlterar: TIBEAntialiasButton;
    ibeaExcluir: TIBEAntialiasButton;
    ibeaSair: TIBEAntialiasButton;
    lbl_edtNumPedido: TLabeledEdit;
    lbl_edtComissao: TLabeledEdit;
    cboTipoPagto: TComboBox;
    lbl_TipoPagto: TLabel;
    dtpDataPed: TmxFlatDateTimePicker;
    lbl_dataPed: TLabel;
    ibeaBuscaCli: TIBEAntialiasButton;
    ibeaBuscaProd: TIBEAntialiasButton;
    lbl_edtRg: TLabeledEdit;
    lbl_edtCpf: TLabeledEdit;
    lbl_edtTelefone: TLabeledEdit;
    cboCliente: TComboBox;
    lbl_Cliente: TLabel;
    lbl_edtDesc: TLabeledEdit;
    lbl_edtAcresc: TLabeledEdit;
    lbl_edtTotalPed: TLabeledEdit;
    dbgPedVendas: TDBGrid;
    cboProduto: TComboBox;
    lbl_Prod: TLabel;
    lbl_edtVlrProd: TLabeledEdit;
    lbl_edtQtde: TLabeledEdit;
    lbl_edtTotalProd: TLabeledEdit;
    mxFlatPanel1: TmxFlatPanel;
    lbl_CodBarras: TLabel;
    lbl_Traco: TLabel;
    lbl_NomeProd: TLabel;
    lbl_Valor: TLabel;
    ibeaIncluir: TIBEAntialiasButton;
    lbl_edtTotalGeral: TLabeledEdit;
    Label2: TLabel;
    Image2: TImage;
    lbl_DTInicio: TLabel;
    lbl_DtFinal: TLabel;
    dtpDataIniCR: TmxFlatDateTimePicker;
    dtpDataFinalCR: TmxFlatDateTimePicker;
    dbgContasReceber: TDBGrid;
    lbl_edtTotalCRPeriodo: TLabeledEdit;
    ibeaSairCR: TIBEAntialiasButton;
    Label3: TLabel;
    dtpVctoProd: TmxFlatDateTimePicker;
    Label4: TLabel;
    tbsConsulta: TTabSheet;
    lbl_edtCodConsultaCli: TLabeledEdit;
    cboCliConsulta: TComboBox;
    lbl_edtDDDCliConsulta: TLabeledEdit;
    lbl_edtTelefoneCliConsulta: TLabeledEdit;
    lbl_edtNumeroCliCons: TLabeledEdit;
    lbl_edtBairroCliCons: TLabeledEdit;
    Label5: TLabel;
    lbl_Consulta: TLabel;
    Image3: TImage;
    dtpDataPrazoIni: TmxFlatDateTimePicker;
    dtpDataPrazoVct: TmxFlatDateTimePicker;
    Label6: TLabel;
    Label7: TLabel;
    ibeaSairConsulta: TIBEAntialiasButton;
    dbgCliConsulta: TDBGrid;
    tbsManutPed: TTabSheet;
    Label8: TLabel;
    Image4: TImage;
    IBEAntialiasButton1: TIBEAntialiasButton;
    lbl_edtPedidoNumero: TLabeledEdit;
    lbl_edtDDDCliManutPed: TLabeledEdit;
    lbl_edtTelefoneCliManutPed: TLabeledEdit;
    lbl_edtCpfManutPed: TLabeledEdit;
    lbl_edtRgManutPed: TLabeledEdit;
    dbgManutPed: TDBGrid;
    lbl_edtCodManut: TLabeledEdit;
    Image19: TImage;
    Label24: TLabel;
    lbl_edtTotalP: TLabeledEdit;
    ibeaExcluirManut: TIBEAntialiasButton;
    ibeaAlterarManut: TIBEAntialiasButton;
    lbl_edtVlrProdM: TLabeledEdit;
    lbl_edtQtdeProdM: TLabeledEdit;
    lbl_edtTotalProdM: TLabeledEdit;
    lbl_edtCodProd: TLabeledEdit;
    cboProdM: TComboBox;
    Label9: TLabel;
    ibeaIncluirProdM: TIBEAntialiasButton;
    lbl_edtVendedorM: TLabeledEdit;
    lbl_edtComissaoM: TLabeledEdit;
    dtpDataPedManut: TmxFlatDateTimePicker;
    Label10: TLabel;
    IBEAntialiasButton2: TIBEAntialiasButton;
    ibeaVisualizarpedido: TIBEAntialiasButton;
    cboClienteM: TComboBox;
    lbl_ClienteM: TLabel;
    dtpVctoProdM: TmxFlatDateTimePicker;
    lbl_vctoProdM: TLabel;
    grbEstoque: TGroupBox;
    rbSim: TRadioButton;
    rbNao: TRadioButton;
    ibeaAbreRelatorio: TIBEAntialiasButton;
    ibeaHabilitarIncluir: TIBEAntialiasButton;
    lbl_TipoPreco: TLabel;
    lbl_PB: TLabel;
    lbl_PC: TLabel;
    ibeaPrecoA: TIBEAntialiasButton;
    Label11: TLabel;
    lbl_edtTotalGeralPedidos: TLabeledEdit;
    lbl_edtTotalPedCliente: TLabeledEdit;
    Image5: TImage;
    lbl_Info: TLabel;
    Image6: TImage;
    Label12: TLabel;
    Label13: TLabel;
    Image7: TImage;
    ibeaLimparCampos: TIBEAntialiasButton;
    lbl_edtEnderecoCliCons: TLabeledEdit;
    lbl_edtCelular: TLabeledEdit;
    cboFunc: TComboBox;
    lbl_Func: TLabel;
    lbl_edtEndereco: TLabeledEdit;
    lbl_edtCompl: TLabeledEdit;
    lbl_edtNumero: TLabeledEdit;
    lbl_edtBairro: TLabeledEdit;
    lbl_edtCidade: TLabeledEdit;
    lbl_edtEstado: TLabeledEdit;
    lbl_edtCodBarras: TLabeledEdit;
    memoObs: TMemo;
    lbl_Obs: TLabel;
    cboFornecedores: TmxFlatComboBox;
    lbl_Forn: TLabel;
    lbl_edtRef: TmxFlatEdit;
    lbl_Ref: TLabel;
    cboCondPagto: TmxFlatComboBox;
    lbl_CondPagto: TLabel;
    cboFornecedorManutP: TComboBox;
    lbl_FornecedorM: TLabel;
    procedure Commit(IBQueryExec : TIBQuery);
    procedure ExecSELECTCondPagto;
    procedure ExecSELECTFornecedor;
    procedure ExecSELECTFornecedorManutP;
    procedure ExecSELECTFuncionario;
    procedure ExecSELECTProdutos;
    procedure ExecSELECTProdM;
    procedure ExecSELECT;
    procedure ExecSELECTClientes;
    procedure ExecSELECTClientesM;
    procedure ExecClientesConsulta;
    procedure ExecSELECTTipoPagto;
    procedure ibeaSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ibeaBuscaCliClick(Sender: TObject);
    procedure ibeaNovoClick(Sender: TObject);
    procedure cboProdutoClick(Sender: TObject);
    procedure ibeaBuscaProdClick(Sender: TObject);
    procedure ibeaIncluirClick(Sender: TObject);
    procedure lbl_edtQtdeExit(Sender: TObject);
    procedure lbl_edtQtdeKeyPress(Sender: TObject; var Key: Char);
    procedure ibeaSairCRClick(Sender: TObject);
    procedure cboClienteClick(Sender: TObject);
    procedure dtpDataFinalCRChange(Sender: TObject);
    procedure pcPedidoVendaChange(Sender: TObject);
    procedure ibeaSairConsultaClick(Sender: TObject);
    procedure cboCliConsultaClick(Sender: TObject);
    procedure ibeaClienteConsultaClick(Sender: TObject);
    procedure dtpDataPrazoVctChange(Sender: TObject);
    procedure dbgPedVendasCellClick(Column: TColumn);
    procedure ibeaAlterarClick(Sender: TObject);
    procedure ibeaExcluirClick(Sender: TObject);
    procedure lbl_edtPedidoNumeroKeyPress(Sender: TObject; var Key: Char);
    procedure dbgManutPedCellClick(Column: TColumn);
    procedure lbl_edtQtdeProdMExit(Sender: TObject);
    procedure lbl_edtQtdeProdMKeyPress(Sender: TObject; var Key: Char);
    procedure ibeaAlterarManutClick(Sender: TObject);
    procedure ibeaExcluirManutClick(Sender: TObject);
    procedure ibeaIncluirProdMClick(Sender: TObject);
    procedure cboProdMClick(Sender: TObject);
    procedure ibeaVisualizarpedidoClick(Sender: TObject);
    procedure ibeaAbreRelatorioClick(Sender: TObject);
    procedure ibeaHabilitarIncluirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ibeaPrecoAClick(Sender: TObject);
    procedure lbl_edtPedidoNumeroExit(Sender: TObject);
    procedure lbl_edtCodExit(Sender: TObject);
    procedure lbl_edtCodKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtTelefoneExit(Sender: TObject);
    procedure ibeaLimparCamposClick(Sender: TObject);
    procedure lbl_edtTelefoneKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtCelularExit(Sender: TObject);
    procedure lbl_edtCelularKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtCodBarrasChange(Sender: TObject);
    procedure lbl_edtCodBarrasKeyPress(Sender: TObject; var Key: Char);
    procedure dbgCliConsultaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure lbl_edtTotalProdKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtTelefoneCliConsultaExit(Sender: TObject);
    procedure lbl_edtTelefoneCliConsultaKeyPress(Sender: TObject;
      var Key: Char);
    procedure cboFornecedoresChange(Sender: TObject);
    procedure lbl_edtRefExit(Sender: TObject);
    procedure lbl_edtRefKeyPress(Sender: TObject; var Key: Char);
    procedure IBEAntialiasButton2Click(Sender: TObject);
    procedure lbl_edtDescExit(Sender: TObject);
    procedure lbl_edtAcrescExit(Sender: TObject);
    procedure lbl_edtTotalPedKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtAcrescKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtDescKeyPress(Sender: TObject; var Key: Char);

        
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var

  frmPedidodeVenda: TfrmPedidodeVenda;
  MontaColunas : Boolean;
  IDSelectCliente : TClasseCombo;
  IDTipoPagto : TClasseCombo;
  ClassTipoPagto   : TClasseCombo;
  StringTipoPagto  : String;
  VlrDesconto  : String;
  TotalProd  : String;
  IDClassGravaCli : TClasseCombo;
  StringGravaCli : String;
  IDSelectProduto : TClasseCombo;
  QtdeGravaProd : String;
  VlrGravaProd : String;
  IDClassGravaProd : TClasseCombo;
  StringGravaProd : String;
  IDSelectClienteConsulta : TClasseCombo;

  IDDadosProd : TClasseCombo;
  StringDadosProd : String;
  ConfirmaMSG : Integer;

  IncluirProd : Boolean;

  MontaColCRP : Boolean;

  NumPedido  : Integer;
  NumPedidoM : Integer;
  TotalPedido : String;

  IDDadosCliente : TClasseCombo;
  StringDadosCliente : String;

  IDDadosClienteConsulta : TClasseCombo;
  StringDadosClienteConsulta : String;


  ValorCAReceber : Real;
  TotalCAReceber : String;

  MontaColConsultaCli : Boolean;
  MontaColManutPed : Boolean;

  IDProdutoPedido : Integer;
  IDClassNumPedido : TClasseCombo;
  IDProdManutencao : Integer;

  AlteraQtdeM : String;
  AlteraProdM : String;

  ClassProdEstoque : TClasseCombo; 


//variaveis para abater do estoque ao lancar o produto no pedido

  QtdeEstoque : Real;
  QtdeVenda   : Real;
  EstoqueFinal : String;
  VlrProduto  : Real;
  TotalProdEstoque : String;

  //para qtde do movestoque no lancto do produto no pedido
  TotalSaidaEstoque : String;


  ProdutoClicado : Real;

  ValorProdnoEstoque : Real;
  ValorClicado : Real;

  //variaveis para acertar o estoque na manuencao do pedido no botao alterar ou excluir

  QtdeEstoqueManutencao  : Real;
  QtdeVendaManutencao  : Real;
  EstoqueFinalManutencao : String;
  ProdutoClicadoManutencao : Real;
  VlrProdutoManutencao : Real;
  TotalProdEstoqueManutencao  : String;

  //select para o produto na manutencao
  IDClassProdM : TClasseCombo;

  IDSelecionaProdM : TClasseCombo;

//variaveis para acrescentar itens em um pedido já lançado E GRAVAR O CLIENTE.
  IDClassGravaProdM   : TClasseCombo;
  StringGravaProdM    : String;
  IDClassGravaCliM : TClasseCombo;
  StringGravaCliM  : String;
  GravaQtdeM : String;
  GravaProdM : String;
  GravaTotalProdM : String;
  
  IDSelectClienteM : TClasseCombo;

  //variaveis para trazer os dados do produto a cliar no combo do madulo de manutencao
  IDDadosProdM : TClasseCombo;
  StringDadosProdM : String;
  TotalSaidaEstoqueM : String;
  IDClienteRelatorio : TClasseCombo;

  TipoPreco : String;
  ValorB : String;
  ValorC : String;

  IDClassTelcom : Integer;

  IDFuncionario : TClasseCombo;

  ClassFuncionarioP : TClasseCombo;
  StringFuncionarioP : String;

  ClassForn : TClasseCombo;
  IDClassForn : Integer;
  IDFornCons,IDClassCondPagto,IDClassProdutos    : TClasseCombo;
  StringFornCons  : String;

  StringGravaForn,StringGravaCondPagto : String;
  IDClassGravaForn,IDClassGravaCondPagto : TClasseCombo;

  IDClassFornecedorManutP : TClasseCombo;
  IDClassFornManutP : Integer;
  StringGravaFornManutP : String;
  IDGravaFornManutP : TClasseCombo;

implementation

uses uBuscaProdutos, untdmModule, BuscaClientes,funcPosto,
  unrRelPedOrcamento;

{$R *.dfm}

procedure TfrmPedidodeVenda.Commit(IBQueryExec : TIBQuery);

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

procedure TfrmPedidodeVenda.ExecSELECTCondPagto;

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

procedure TfrmPedidodeVenda.ExecSELECTFornecedor;
begin
  with dmModule do begin

    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Fornecedores''');
    ibClassificacao.Open;
    IDClassForn := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO FORNECEDOR NA VARIAVEL.

    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + IntToStr(IDClassForn)+ ''' ORDER BY NOME');//('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + InttoStr(IDClass) + ''' ORDER BY NOME');
    ibCadastro.Open;

    cboFornecedores.Clear; //LIMPA O COMBOBOX
    while not ibCadastro.Eof do begin
      ClassForn    := TClasseCombo.Create;
      ClassForn.ID  := ibCadastro.FieldByName('IDCAD').AsInteger;
      cboFornecedores.Items.AddObject(ibCadastro.FieldByName('NOME').AsString,ClassForn);
      ibCadastro.Next;
    end;
  end;
end;

procedure TfrmPedidodeVenda.ExecSELECTFornecedorManutP;

begin

  with dmModule do begin

    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Fornecedores''');
    ibClassificacao.Open;
    IDClassFornManutP := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO FORNECEDOR NA VARIAVEL.

    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + IntToStr(IDClassFornManutP )+ ''' ORDER BY NOME');//('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + InttoStr(IDClass) + ''' ORDER BY NOME');
    ibCadastro.Open;

    cboFornecedorManutP.Clear; //LIMPA O COMBOBOX
    while not ibCadastro.Eof do begin
      IDClassFornecedorManutP    := TClasseCombo.Create;
      IDClassFornecedorManutP.ID  := ibCadastro.FieldByName('IDCAD').AsInteger;
      cboFornecedorManutP.Items.AddObject(ibCadastro.FieldByName('NOME').AsString,IDClassFornecedorManutP);
      ibCadastro.Next;
    end;

  end;//with

end;

procedure TfrmPedidodeVenda.ExecSELECTFuncionario;


begin

  with dmModule do begin

    ibUser.Close;
    ibUser.SQL.Clear;
    ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE TIPOUSUARIO=''Funcionario''');
    ibUser.Open;

    cboFunc.Clear;

    while not ibUser.Eof do begin

      IDFuncionario      := TClasseCombo.Create;
      IDFuncionario.ID   := ibUser.FieldByName('IDUSER').AsInteger;
      cboFunc.Items.AddObject(ibUser.FieldByName('NOME').AsString,IDFuncionario);
      ibUser.Next;

    end;//WHILE

  end;//with

end;

procedure TfrmPedidodeVenda.ExecSELECTProdutos;

begin

  with dmModule do begin

  ibProdutos.Close;
  ibProdutos.SQL.Clear;
  ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS ORDER BY NOME');
  ibProdutos.Open;

  cboProduto.Clear;

    while not ibProdutos.Eof do begin

    IDSelectProduto := TClasseCombo.Create;
    IDSelectProduto.ID := ibProdutos.FieldByName('IDPROD').AsInteger;
    cboProduto.Items.AddObject(ibProdutos.FieldByName('NOME').AsString,IDSelectProduto);
    ibProdutos.Next;

    end;{while}

  end;{with}

end;

procedure TfrmPedidodeVenda.ExecSELECTProdM;

begin

  with dmModule do begin

  ibProdutos.Close;
  ibProdutos.SQL.Clear;
  ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS ORDER BY NOME');
  ibProdutos.Open;

  cboProdM.Clear;

    while not ibProdutos.Eof do begin

    IDClassProdM := TClasseCombo.Create;
    IDClassProdM.ID := ibProdutos.FieldByName('IDPROD').AsInteger;
    cboProdM.Items.AddObject(ibProdutos.FieldByName('NOME').AsString,IDClassProdM);
    ibProdutos.Next;

    end;{while}


  end;{with}

end;

procedure TfrmPedidodeVenda.ExecSELECT;

begin

  with dmModule do begin

    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
    ibClassificacao.Open;
    IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO FORNECEDOR NA VARIAVEL.


    //SELECT PARA TRAZER OS DADOS PRO RELATORIO
    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE TBLCADASTRO.IDCLASS=''' + IntToStr(IDClass) + ''' ORDER BY NOME');
    ibCadastro.Open;

    cboCliente.Clear;

    while not ibCadastro.Eof do begin

    IDSelectCliente := TClasseCombo.Create;
    IDSelectCliente.ID := ibCadastro.FieldByName('IDCAD').AsInteger;
    cboCliente.Items.AddObject(ibCadastro.FieldByName('NOME').AsString,IDSelectCliente);
    ibCadastro.Next;

    end;{while}


  end;//with

end;

procedure TfrmPedidodeVenda.ExecSELECTClientes;

begin

  with dmModule do begin

    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
    ibClassificacao.Open;
    IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO FORNECEDOR NA VARIAVEL.


    //SELECT PARA TRAZER OS DADOS PRO RELATORIO
    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLCADDOCUMENTACAO.CODIGO,'
    + 'TBLCADDOCUMENTACAO.NOMEFANTASIA,TBLLOGRADOURO.ENDERECO,'
    + 'TBLLOGRADOURO.BAIRRO,TBLLOGRADOURO.ESTADO,TBLCONTATO.CONTATO,TBLCONTATO.TIPO FROM TBLCADASTRO '
    + 'LEFT OUTER JOIN TBLCADDOCUMENTACAO ON TBLCADASTRO.IDCAD=TBLCADDOCUMENTACAO.IDCAD '
    + 'LEFT OUTER JOIN TBLLOGRADOURO ON TBLCADASTRO.IDCAD=TBLLOGRADOURO.IDCAD '
    + 'LEFT OUTER JOIN TBLCONTATO ON TBLCADASTRO.IDCAD=TBLCONTATO.IDCAD '
    + 'WHERE TBLCADASTRO.IDCLASS=''' + IntToStr(IDClass) + ''' ORDER BY NOME');
    ibCadastro.Open;

  end;{with}

end;

procedure TfrmPedidodeVenda.ExecSELECTClientesM;

begin

  with dmModule do begin

    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
    ibClassificacao.Open;
    IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO FORNECEDOR NA VARIAVEL.


    //SELECT PARA TRAZER OS DADOS PRO RELATORIO
    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLCADDOCUMENTACAO.CODIGO,'
    + 'TBLCADDOCUMENTACAO.NOMEFANTASIA,TBLLOGRADOURO.ENDERECO,'
    + 'TBLLOGRADOURO.BAIRRO,TBLLOGRADOURO.ESTADO FROM TBLCADASTRO '
    + 'LEFT OUTER JOIN TBLCADDOCUMENTACAO ON TBLCADASTRO.IDCAD=TBLCADDOCUMENTACAO.IDCAD '
    + 'LEFT OUTER JOIN TBLLOGRADOURO ON TBLCADASTRO.IDCAD=TBLLOGRADOURO.IDCAD'
    + ' WHERE TBLCADASTRO.IDCLASS=''' + IntToStr(IDClass) + ''' ORDER BY NOME');
    ibCadastro.Open;

    cboClienteM.Clear;

    while not ibCadastro.Eof do begin

    IDSelectClienteM := TClasseCombo.Create;
    IDSelectClienteM.ID := ibCadastro.FieldByName('IDCAD').AsInteger;
    cboClienteM.Items.AddObject(ibCadastro.FieldByName('NOME').AsString,IDSelectClienteM);
    ibCadastro.Next;

    end;{while}

  end;{with}

end;


procedure TfrmPedidodeVenda.ExecClientesConsulta;

begin

  with dmModule do begin

    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
    ibClassificacao.Open;
    IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO FORNECEDOR NA VARIAVEL.


    //SELECT PARA TRAZER OS DADOS PRO RELATORIO
    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLCADDOCUMENTACAO.CODIGO,'
    + 'TBLCADDOCUMENTACAO.NOMEFANTASIA,TBLLOGRADOURO.ENDERECO,'
    + 'TBLLOGRADOURO.BAIRRO,TBLLOGRADOURO.ESTADO FROM TBLCADASTRO '
    + 'LEFT OUTER JOIN TBLCADDOCUMENTACAO ON TBLCADASTRO.IDCAD=TBLCADDOCUMENTACAO.IDCAD '
    + 'LEFT OUTER JOIN TBLLOGRADOURO ON TBLCADASTRO.IDCAD=TBLLOGRADOURO.IDCAD'
    + ' WHERE TBLCADASTRO.IDCLASS=''' + IntToStr(IDClass) + ''' ORDER BY NOME');
    ibCadastro.Open;

    cboCliConsulta.Clear;

    while not ibCadastro.Eof do begin

    IDSelectClienteConsulta := TClasseCombo.Create;
    IDSelectClienteConsulta.ID := ibCadastro.FieldByName('IDCAD').AsInteger;
    cboCliConsulta.Items.AddObject(ibCadastro.FieldByName('NOME').AsString,IDSelectClienteConsulta);
    ibCadastro.Next;

    end;{while}

  end;{with}

end;



procedure TfrmPedidodeVenda.ExecSELECTTipoPagto;

begin

  with dmModule do begin

    ibTipoPagtoF.Close;
    ibTipoPagtoF.SQL.Clear;
    ibTipoPagtoF.SQL.Add('SELECT * FROM TBLTIPOPAGTOAVULSO');
    ibTipoPagtoF.Open;

    cboTipoPagto.Clear;

    while not ibTipoPagtoF.Eof do begin

      IDTipoPagto    := TClasseCombo.Create;
      IDTipoPagto.ID := ibTipoPagtoF.FieldByName('IDTIPO').AsInteger;
      cboTipoPagto.Items.AddObject(ibTipoPagtoF.FieldByName('DESCRICAO').AsString,IDTipoPagto);
      ibTipoPagtoF.Next;

    end;{while}  

  end;{with}

end;

procedure TfrmPedidodeVenda.ibeaSairClick(Sender: TObject);
begin

 if ibeaNovo.Caption = '&Gravar' Then begin

  ConfirmaMSG  := Application.MessageBox('Atenção o pedido ainda não foi gravado favor clicar no botão acima!!','Notificação Pedido não gravado',+MB_OK+MB_ICONEXCLAMATION);

 end;

 if ibeaNovo.Caption = '&Novo' Then begin

    Close;

 end;

end;

procedure TfrmPedidodeVenda.FormShow(Sender: TObject);
begin

  rbSim.Checked := False;
  rbNao.Checked := False;
  cboProduto.ClearSelection;
  lbl_edtVlrProd.Clear;
  lbl_edtQtde.Clear;
  lbl_edtTotalProd.Clear;
  lbl_edtTotalPed.Clear;
  lbl_CodBarras.Caption := '';
  lbl_NomeProd.Caption := '';
  lbl_Valor.Caption := '';
  cboCliente.ClearSelection;
  lbl_edtTelefone.Clear;
  lbl_edtCpf.Clear;
  lbl_edtRg.Clear;


  ibeaNovo.Caption := '&Novo';
  pcPedidoVenda.ActivePageIndex := 0;

  dtpDataPed.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
  dtpDataIniCR.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
  dtpDataFinalCR.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
  dtpDataPrazoIni.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
  dtpDataPrazoVct.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
  dtpVctoProd.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
  dtpDataPedManut.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
  dtpVctoProdM.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));


  with dmModule do begin
  ibPedVenda.Close;
  ExecSELECT;
  ExecSELECTFornecedor;
  ExecSELECTClientes;
  ExecSELECTTipoPagto;
  ExecSELECTProdutos;
  ExecSELECTFuncionario;
  ExecSELECTCondPagto;

    with dbgPedVendas do begin

      // monta as colunas abaixo se for verdadeiro
      if MontaColunas Then begin

         DataSource := dtsPedVenda;

        //determina as colunas a serem montadas
        Columns.Insert(0);
        Columns.Insert(1);
        Columns.Insert(2);
        Columns.Insert(3);
        Columns.Insert(4);
        Columns.Insert(5);
        Columns.Insert(6);

        //Parametros da Coluna que exibe o Código da entrada no estoque
        Columns.Items[0].Title.Caption := 'Código de Barras';
        Columns.Items[0].FieldName     := 'CODBARRAS';
        Columns.Items[0].Width         := 100;
        Columns.Items[0].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o Nome do produto que esta entrando no estoque.
        Columns.Items[1].Title.Caption := 'Descrição do Produto';
        Columns.Items[1].FieldName     := 'Produto';
        Columns.Items[1].Width         := 280;
        Columns.Items[1].Alignment     := taLeftJustify;


        //Parametros da Coluna que exibe o vlr unitario do produto.
        Columns.Items[2].Title.Caption := 'Vlr.Unitário';
        Columns.Items[2].FieldName     := 'VLRPROD';
        Columns.Items[2].Width         := 80;
        Columns.Items[2].Alignment     := taLeftJustify;

        //parametros que exibe a qtde. de entrada no estoque
        Columns.Items[3].Title.Caption := 'Qtde.';
        Columns.Items[3].FieldName     := 'QTDEPROD';
        Columns.Items[3].Width         := 80;
        Columns.Items[3].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o vlr unitario do produto.
        Columns.Items[4].Title.Caption := 'Valor(A)';
        Columns.Items[4].FieldName     := 'VLRTOTAL';
        Columns.Items[4].Width         := 80;
        Columns.Items[4].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o vlr unitario do produto.
        Columns.Items[5].Title.Caption := 'Valor(B)';
        Columns.Items[5].FieldName     := 'VALORB';
        Columns.Items[5].Width         := 80;
        Columns.Items[5].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o vlr unitario do produto.
        Columns.Items[6].Title.Caption := 'Valor(C)';
        Columns.Items[6].FieldName     := 'VALORC';
        Columns.Items[6].Width         := 80;
        Columns.Items[6].Alignment     := taLeftJustify;

        MontaColunas := False;

      end;{if}

    end;{with}

////////////////////////////////////////////////////////////////////////////////

    with dbgContasReceber do begin

      // monta as colunas abaixo se for verdadeiro
      if MontaColCRP Then begin

         DataSource := dtsAReceber;

        //determina as colunas a serem montadas
        Columns.Insert(0);
        Columns.Insert(1);
        Columns.Insert(2);
        Columns.Insert(3);
        Columns.Insert(4);
        Columns.Insert(5);

        //Parametros da Coluna que exibe o Código da entrada no estoque
        Columns.Items[0].Title.Caption := 'Código';
        Columns.Items[0].FieldName     := 'CodCli';
        Columns.Items[0].Width         := 70;
        Columns.Items[0].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o Nome do produto que esta entrando no estoque.
        Columns.Items[1].Title.Caption := 'Cliente';
        Columns.Items[1].FieldName     := 'NOME';
        Columns.Items[1].Width         := 280;
        Columns.Items[1].Alignment     := taLeftJustify;

        //parametros que exibe a qtde. de entrada no estoque
        Columns.Items[2].Title.Caption := 'Vlr.do Pedido';
        Columns.Items[2].FieldName     := 'VLREMITIDO';
        Columns.Items[2].Width         := 70;
        Columns.Items[2].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o vlr unitario do produto.
        Columns.Items[3].Title.Caption := 'Data';
        Columns.Items[3].FieldName     := 'DTVENCTO';
        Columns.Items[3].Width         := 70;
        Columns.Items[3].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o vlr unitario do produto.
        Columns.Items[4].Title.Caption := 'Tipo de Pagto.';
        Columns.Items[4].FieldName     := 'DESCRICAO';
        Columns.Items[4].Width         := 170;
        Columns.Items[4].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o vlr unitario do produto.
        Columns.Items[5].Title.Caption := 'NºPedido';
        Columns.Items[5].FieldName     := 'IDNUMPEDIDO';
        Columns.Items[5].Width         := 70;
        Columns.Items[5].Alignment     := taLeftJustify;

        MontaColCRP := False;

      end;{if}

    end;{with}

////////////////////////////////////////////////////////////////////////////////

    with dbgCliConsulta do begin

      // monta as colunas abaixo se for verdadeiro
      if MontaColConsultaCli Then begin

         DataSource := dtsPedVendaConsulta;

        //determina as colunas a serem montadas
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

        //Parametros da Coluna que exibe o Código da entrada no estoque

        //parametros que exibe a qtde. de entrada no estoque
        Columns.Items[0].Title.Caption := 'Produto';
        Columns.Items[0].FieldName     := 'Produto';
        Columns.Items[0].Width         := 250;
        Columns.Items[0].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o vlr unitario do produto.
        Columns.Items[1].Title.Caption := 'Data da Compra';
        Columns.Items[1].FieldName     := 'DATA';
        Columns.Items[1].Width         := 70;
        Columns.Items[1].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o vlr unitario do produto.
        Columns.Items[2].Title.Caption := 'Data Vcto.';
        Columns.Items[2].FieldName     := 'VCTOPRODUTO';
        Columns.Items[2].Width         := 70;
        Columns.Items[2].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o vlr unitario do produto.
        Columns.Items[3].Title.Caption := 'NºPedido';
        Columns.Items[3].FieldName     := 'IDNUMPEDIDO';
        Columns.Items[3].Width         := 47;
        Columns.Items[3].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o vlr unitario do produto.
        Columns.Items[4].Title.Caption := 'VlrUnit.';
        Columns.Items[4].FieldName     := 'VLRUNIT';
        Columns.Items[4].Width         := 50;
        Columns.Items[4].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o vlr unitario do produto.
        Columns.Items[5].Title.Caption := 'Qtde';
        Columns.Items[5].FieldName     := 'QTDEPROD';
        Columns.Items[5].Width         := 48;
        Columns.Items[5].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o vlr unitario do produto.
        Columns.Items[6].Title.Caption := 'Valor(A)';
        Columns.Items[6].FieldName     := 'VLRTOTAL';
        Columns.Items[6].Width         := 50;
        Columns.Items[6].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o vlr unitario do produto.
        Columns.Items[7].Title.Caption := 'Valor(B)';
        Columns.Items[7].FieldName     := 'VALORB';
        Columns.Items[7].Width         := 50;
        Columns.Items[7].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o vlr unitario do produto.
        Columns.Items[8].Title.Caption := 'Valor(C)';
        Columns.Items[8].FieldName     := 'VALORC';
        Columns.Items[8].Width         := 50;
        Columns.Items[8].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o vlr unitario do produto.
        Columns.Items[9].Title.Caption := 'Histórico';
        Columns.Items[9].FieldName     := 'SITUACAOPEDIDO';
        Columns.Items[9].Width         := 70;
        Columns.Items[9].Alignment     := taLeftJustify;



        MontaColConsultaCli := False;

      end;{if}

    end;{with}

////////////////////////////////////////////////////////////////////////////////

    with dbgManutPed do begin

      // monta as colunas abaixo se for verdadeiro
      if MontaColManutPed Then begin

         DataSource := dtsManutPedVenda;

        //determina as colunas a serem montadas
        Columns.Insert(0);
        Columns.Insert(1);
        Columns.Insert(2);
        Columns.Insert(3);
        Columns.Insert(4);
        Columns.Insert(5);
        Columns.Insert(6);

        //Parametros da Coluna que exibe o Código da entrada no estoque
        Columns.Items[0].Title.Caption := 'Código de Barras';
        Columns.Items[0].FieldName     := 'CODBARRAS';
        Columns.Items[0].Width         := 100;
        Columns.Items[0].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o Nome do produto que esta entrando no estoque.
        Columns.Items[1].Title.Caption := 'Descrição do Produto';
        Columns.Items[1].FieldName     := 'Produto';
        Columns.Items[1].Width         := 280;
        Columns.Items[1].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o vlr unitario do produto.
        Columns.Items[2].Title.Caption := 'Vlr.Unitário';
        Columns.Items[2].FieldName     := 'VLRPROD';
        Columns.Items[2].Width         := 80;
        Columns.Items[2].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o vlr unitario do produto.
        Columns.Items[3].Title.Caption := 'Qtde.';
        Columns.Items[3].FieldName     := 'QTDEPROD';
        Columns.Items[3].Width         := 70;
        Columns.Items[3].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o vlr unitario do produto.
        Columns.Items[4].Title.Caption := 'Valor(A)';
        Columns.Items[4].FieldName     := 'VLRTOTAL';
        Columns.Items[4].Width         := 80;
        Columns.Items[4].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o vlr unitario do produto.
        Columns.Items[5].Title.Caption := 'Valor(B)';
        Columns.Items[5].FieldName     := 'VALORB';
        Columns.Items[5].Width         := 80;
        Columns.Items[5].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o vlr unitario do produto.
        Columns.Items[6].Title.Caption := 'Valor(C)';
        Columns.Items[6].FieldName     := 'VALORC';
        Columns.Items[6].Width         := 80;
        Columns.Items[6].Alignment     := taLeftJustify;



        MontaColManutPed := False;

      end;{if}

    end;{with}

////////////////////////////////////////////////////////////////////////////////

  end;{with}

end;

procedure TfrmPedidodeVenda.FormCreate(Sender: TObject);
begin

  MontaColunas := True;
  MontaColCRP  := True;
  MontaColConsultaCli := True;
  MontaColManutPed := True;
  
end;

procedure TfrmPedidodeVenda.ibeaBuscaCliClick(Sender: TObject);
begin
 frmBuscaClientes.ShowModal;
end;

procedure TfrmPedidodeVenda.ibeaNovoClick(Sender: TObject);
begin

  with dmModule do begin

  if ibeaNovo.Caption = '&Gravar' Then begin


   //traz a identificacao do produto do item do objeto selecionado.
    If cboTipoPagto.ItemIndex = -1 Then begin

   //  Application.MessageBox('Informe o Tipo de Pagamento','Notificação: Tipo Pagamento não especificado',MB_OK+MB_ICONERROR);

      StringTipoPagto := ' ''0'',';

    end else begin

      ClassTipoPagto   := TClasseCombo( cboTipoPagto.Items.Objects[cboTipoPagto.ItemIndex] );
      StringTipoPagto  := ' ''' + InttoStr( ClassTipoPagto.ID ) + ''',';

    end;//if

    if cboCliente.ItemIndex = -1 Then begin

   // Application.MessageBox('Informe o Cliente','Notificação: Cliente não especificado',MB_OK+MB_ICONERROR);

    StringGravaCli  := ' ''0'',';

    end else begin

    IDClassGravaCli := TClasseCombo(cboCliente.Items.Objects[cboCliente.ItemIndex]);
    StringGravaCli  := ' ''' + IntToStr(IDClassGravaCli.ID) + ''',';

    end;


 {   If cboProduto.ItemIndex = -1 Then begin

      Application.MessageBox('Informe o Produto','Notificação: Produto não especificado',MB_OK+MB_ICONERROR);

    end else begin

      IDClassGravaProd   := TClasseCombo( cboProduto.Items.Objects[cboProduto.ItemIndex] );
      StringGravaProd  := ' ''' + InttoStr( IDClassGravaProd.ID ) + ''',';

    end;}{ifcbotipopagto}


 {   TotalParcial := StringReplace(lbl_edtTotalParc.Text,ThousandSeparator,'',[rfReplaceAll]);
    TotalParcial := StringReplace(TotalParcial,DecimalSeparator,'.',[rfReplaceAll]);
    if TotalParcial = '' Then
       TotalParcial := '0';

    TotalPedido := StringReplace(lbl_edtTotalPed.Text,ThousandSeparator,'',[rfReplaceAll]);
    TotalPedido := StringReplace(TotalPedido,DecimalSeparator,'.',[rfReplaceAll]);
    if TotalPedido = '' Then
       TotalPedido := '0';

    QtdeGravaProd := StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]);
    QtdeGravaProd := StringReplace(QtdeGravaProd,DecimalSeparator,'.',[rfReplaceAll]);
    if QtdeGravaProd = '' Then
    QtdeGravaProd := '0';

    VlrGravaProd := StringReplace(lbl_edtVlrProd.Text,ThousandSeparator,'',[rfReplaceAll]);
    VlrGravaProd := StringReplace(VlrGravaProd,DecimalSeparator,'.',[rfReplaceAll]);
    if VlrGravaProd = '' Then
    VlrGravaProd := '0';  }

    ibDetalhePedVenda.Close;
    ibDetalhePedVenda.SQL.Clear;
    ibDetalhePedVenda.SQL.Add('INSERT INTO TBLDETALHEPEDVENDA'
    + '(COMISSAO,IDTIPOPAGTO,IDCLIENTE,DATA,HORA) values '
    + '(''' + lbl_edtComissao.Text + ''','
    + StringTipoPagto
    + StringGravaCli
    + ' ''' + FormatDateTime('mm-dd-yyyy',dtpDataPed.Date) + ''','
    + ' ''' + FormatDateTime('hh:mm:ss',Now) + ''')');
    ibDetalhePedVenda.ExecSQL;
    Commit(ibDetalhePedVenda);


    TotalPedido := StringReplace(lbl_edtTotalPed.Text,ThousandSeparator,'',[rfReplaceAll]);
    TotalPedido := StringReplace(TotalPedido,DecimalSeparator,'.',[rfReplaceAll]);
    if TotalPedido = '' Then
       TotalPedido := '0';


    if cboTipoPagto.Text <> 'DINHEIRO' Then begin

      ibAReceber.Close;
      ibAReceber.SQL.Clear;
      ibAReceber.SQL.Add('INSERT INTO TBLCONTASARECEBER'
      + '(IDNUMPEDIDO,IDCLI,VLREMITIDO,TIPOPAGTO,DTVENCTO) values '
      + '(''' + IntToStr(NumPedido) + ''','
      + StringGravaCli
      + ' ''' + TotalPedido + ''','
      + ' ''' + cboTipoPagto.Text + ''','
      + ' ''' + FormatDateTime('mm-dd-yyyy',dtpDataPed.Date) + ''')');
      ibAReceber.ExecSQL;
      Commit(ibAReceber);

    end;{if}


    ibeaNovo.Caption := '&Novo';
    lbl_edtNumPedido.Clear;
    cboTipoPagto.ClearSelection;
    cboCliente.ClearSelection;
    lbl_edtTotalPed.Clear;
    lbl_edtTotalGeral.Clear;
    lbl_edtTelefone.Clear;
    lbl_edtCpf.Clear;
    lbl_edtRg.Clear;
  //  cboProduto.Clear;
    lbl_edtVlrProd.Clear;
    lbl_edtQtde.Clear;
    lbl_edtTotalProd.Clear;
    lbl_edtDesc.Clear;
    lbl_edtAcresc.Clear;
    lbl_edtTotalPed.Clear;
    lbl_CodBarras.Caption := '';
    lbl_NomeProd.Caption := '';
    lbl_Valor.Caption := '';
    lbl_edtEndereco.Clear;
    lbl_edtNumero.Clear;
    lbl_edtCompl.Clear;
    lbl_edtBairro.Clear;
    lbl_edtCidade.Clear;

//   end;{ifcbotipopagto}
  //  end;{ifcbocliente}
    
    end else begin

    ibeaNovo.Caption := '&Gravar';
    cboTipoPagto.ClearSelection;
    cboCliente.ClearSelection;
    lbl_edtComissao.Clear;
    lbl_edtTelefone.Clear;
    lbl_edtCpf.Clear;
    lbl_edtRg.Clear;
    lbl_edtTotalPed.Clear;
    lbl_edtTelefone.SetFocus;

    ibDetalhePedVenda.Close;
    ibDetalhePedVenda.SQL.Clear;
    ibDetalhePedVenda.SQL.Add('SELECT * FROM TBLDETALHEPEDVENDA ORDER BY IDDETALHEPEDIDO DESC');
    ibDetalhePedVenda.Open;

    lbl_edtNumPedido.Text := IntToStr(ibDetalhePedVenda.FieldByName('IDDETALHEPEDIDO').AsInteger + 1);


    end;

  end;{with}

end;

procedure TfrmPedidodeVenda.cboProdutoClick(Sender: TObject);

var

i : Integer;

begin

  with dmModule do begin

    if cboProduto.ItemIndex <> - 1 Then begin

      IDDadosProd := TClasseCombo(cboProduto.Items.Objects[cboProduto.ItemIndex]);
      StringDadosProd := ' IDPROD=''' + IntToStr(IDDadosProd.ID) + '''';

    end;{if}

    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT CADPRODUTOS.*,TBLCADASTRO.NOME As NomeFornecedor,'
      + 'TBLCADASTRO.IDCAD,CONDICOESPAGAMENTO.IDCONDPAGTO,CONDICOESPAGAMENTO.DESCRICAO FROM CADPRODUTOS '
      + 'LEFT OUTER JOIN TBLCADASTRO ON CADPRODUTOS.FORNECEDOR=TBLCADASTRO.IDCAD '
      + 'LEFT OUTER JOIN CONDICOESPAGAMENTO ON TBLCADASTRO.IDCONDPAGTO=CONDICOESPAGAMENTO.IDCONDPAGTO WHERE CADPRODUTOS.IDPROD=''' + IntToStr(IDDadosProd.ID) + '''');
    ibProdutos.Open;

    (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutos.FieldByName('VALORVENDAB') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
    (ibProdutos.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat := CasasDecimais('Produtos');


    lbl_edtRef.Text := ibProdutos.FieldByName('REF').asString;

      for i:=0 to cboCondPagto.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
        if TClasseCombo( cboCondPagto.Items.Objects[i]).ID = ibProdutos.FieldByName('IDCONDPAGTO').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
          cboCondPagto.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
          Break;
        end else begin
          cboCondPagto.ClearSelection;//LIMPA A SELECAO.
        end;{if}
      end;{for}

      for i:=0 to cboFornecedores.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
        if TClasseCombo( cboFornecedores.Items.Objects[i]).ID = ibProdutos.FieldByName('FORNECEDOR').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
          cboFornecedores.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
          Break;
        end else begin
          cboFornecedores.ClearSelection;//LIMPA A SELECAO.
        end;{if}
      end;{for}

    if lbl_TipoPreco.Caption = '' Then begin

      TipoPreco := 'A'

    end;

    if TipoPreco = 'A' Then begin

      lbl_edtVlrProd.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);
      lbl_edtTotalProd.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);
      lbl_Valor.Caption := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);
      lbl_TipoPreco.Caption := 'Preço de Venda(A)';
      lbl_edtQtde.Text := '1';
      lbl_CodBarras.Caption := ibProdutos.FieldByName('CODBARRAS').AsString;
      lbl_NomeProd.Caption  := ibProdutos.FieldByName('NOME').AsString;

    end;

    if TipoPreco = 'B' Then begin

      lbl_edtVlrProd.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAB').AsFloat);
      lbl_edtTotalProd.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAB').AsFloat);
      lbl_Valor.Caption := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAB').AsFloat);
      lbl_edtQtde.Text := '1';
      lbl_CodBarras.Caption := ibProdutos.FieldByName('CODBARRAS').AsString;
      lbl_NomeProd.Caption  := ibProdutos.FieldByName('NOME').AsString;

    end;

    if TipoPreco = 'C' Then begin

      lbl_edtVlrProd.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAC').AsFloat);
      lbl_edtTotalProd.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAC').AsFloat);
      lbl_Valor.Caption := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAC').AsFloat);
      lbl_edtQtde.Text := '1';
      lbl_CodBarras.Caption := ibProdutos.FieldByName('CODBARRAS').AsString;
      lbl_NomeProd.Caption  := ibProdutos.FieldByName('NOME').AsString;

    end;

    lbl_edtQtde.SetFocus;

  end;{with}

end;

procedure TfrmPedidodeVenda.ibeaBuscaProdClick(Sender: TObject);
begin
frmBuscaProdutos.ShowModal;   
end;

procedure TfrmPedidodeVenda.ibeaIncluirClick(Sender: TObject);

var

Valor1,Valor2,Valor3,Custo,QtdeVendida : Real;
TotalCusto, NomeProduto, LocalEstoque,SituacaoPedido : String;
IDEstoque,IDFornecedor : Integer;
Desconto,Acrescimo : String;

begin

  with dmModule do begin

    if (rbSim.Checked) or (rbNao.Checked) = False Then begin

      ConfirmaMSG := Application.MessageBox('Para poder gravar um pedido é necessário escolher uma das opções sim ou não para o Estoque','Notifocação: Opção não Selecionada',+MB_OK+MB_ICONERROR);

    end;

    if (rbSim.Checked) or (rbNao.Checked) = True Then begin

     //traz a identificacao do produto do item do objeto selecionado.
      If cboTipoPagto.ItemIndex = -1 Then begin

    //    IncluirProd := False;
     //   Application.MessageBox('Informe o Tipo de Pagamento','Notificação: Tipo Pagamento não especificado',MB_OK+MB_ICONERROR);

        StringTipoPagto := ' ''0'',';

      end else begin

        ClassTipoPagto   := TClasseCombo( cboTipoPagto.Items.Objects[cboTipoPagto.ItemIndex] );
        StringTipoPagto  := ' ''' + InttoStr( ClassTipoPagto.ID ) + ''',';

      end;{ifcbotipopagto}

      if cboCliente.ItemIndex = -1 Then begin

      //  IncluirProd := False;
        StringGravaCli  := ' ''0'',';
     //   Application.MessageBox('Informe o Cliente','Notificação: Cliente não especificado',MB_OK+MB_ICONERROR);

      end else begin

        IDClassGravaCli := TClasseCombo(cboCliente.Items.Objects[cboCliente.ItemIndex]);
        StringGravaCli  := ' ''' + IntToStr(IDClassGravaCli.ID) + ''',';

      end;{ifcbocliente}


   {   If cboProduto.ItemIndex = -1 Then begin

        IncluirProd := False;
        Application.MessageBox('Informe o Produto','Notificação: Produto não especificado',MB_OK+MB_ICONERROR);

      end else begin

        IDClassGravaProd  := TClasseCombo( cboProduto.Items.Objects[cboProduto.ItemIndex] );
        StringGravaProd   := ' ''' + InttoStr( IDClassGravaProd.ID ) + ''','; }

    //  end;{ifcboproduto}


    If cboProduto.ItemIndex = -1 Then begin

   //   Application.MessageBox('Informe o Produto','Notificação: Produto não especificado',MB_OK+MB_ICONERROR);

      StringGravaProd := ' '' 0 '',';
      TotalCusto := '0';

    end else begin

      IDClassGravaProd   := TClasseCombo( cboProduto.Items.Objects[cboProduto.ItemIndex] );
      StringGravaProd          := ' ''' + InttoStr( IDClassGravaProd.ID ) + ''',';


      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT CADPRODUTOS.*,'
      + 'LOCALESTOCAGEM.NOME As Estoque FROM CADPRODUTOS '
      + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE '
      + 'WHERE IDPROD=''' + InttoStr( IDClassGravaProd.ID ) + '''');
      ibProdutos.Open;

      IDFornecedor := ibProdutos.FieldByName('FORNECEDOR').AsInteger;
      LocalEstoque := ibProdutos.FieldByName('Estoque').AsString;
      NomeProduto  := ibProdutos.FieldByName('NOME').AsString;
      IDEstoque    := ibProdutos.FieldByName('IDLOCAL').AsInteger;

      Custo := StrtoFloat(StringReplace(FloattoStr(ibProdutos.FieldByName('VALORCUSTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
      QtdeVendida := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));
      Custo := QtdeVendida * Custo;

      TotalCusto := StringReplace(FloattoStr(Custo),ThousandSeparator,'',[rfReplaceAll]);
      TotalCusto := StringReplace(TotalCusto,DecimalSeparator,'.',[rfReplaceAll]);


    end;


      {if (cboCliente.Text <> '') or (cboTipoPagto.Text <> '') Then begin

      IncluirProd := True;

      end;}

    //  if IncluirProd Then begin


      If cboFunc.ItemIndex = -1 Then begin

        StringFuncionarioP := ' ''0'',';

      end else begin

        ClassFuncionarioP   := TClasseCombo( cboFunc.Items.Objects[cboFunc.ItemIndex] );
        StringFuncionarioP  := ' ''' + InttoStr( ClassFuncionarioP.ID ) + ''',';

      end;{ifcbotipopagto}

     { If cboFornecedores.ItemIndex = -1 Then begin

        StringGravaForn := ' ''0'',';

      end else begin

        IDClassGravaForn   := TClasseCombo( cboFornecedores.Items.Objects[cboFornecedores.ItemIndex] );
        StringGravaForn  := ' ''' + InttoStr( IDClassGravaForn.ID ) + ''',';

      end;}{ifcbotipopagto}

      If cboCondPagto.ItemIndex = -1 Then begin

        StringGravaCondPagto := ' ''0'',';

      end else begin

        IDClassGravaCondPagto   := TClasseCombo( cboCondPagto.Items.Objects[cboCondPagto.ItemIndex] );
        StringGravaCondPagto  := ' ''' + InttoStr( IDClassGravaCondPagto.ID ) + ''',';

      end;{ifcbotipopagto}


      TotalProd := StringReplace(lbl_edtTotalPed.Text,ThousandSeparator,'',[rfReplaceAll]);
      TotalProd := StringReplace(TotalProd,DecimalSeparator,'.',[rfReplaceAll]);
      if TotalProd = '' Then
         TotalProd := '0';

      QtdeGravaProd := StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]);
      QtdeGravaProd := StringReplace(QtdeGravaProd,DecimalSeparator,'.',[rfReplaceAll]);
      if QtdeGravaProd = '' Then
      QtdeGravaProd := '0';

      VlrGravaProd := StringReplace(lbl_edtVlrProd.Text,ThousandSeparator,'',[rfReplaceAll]);
      VlrGravaProd := StringReplace(VlrGravaProd,DecimalSeparator,'.',[rfReplaceAll]);
      if VlrGravaProd = '' Then
      VlrGravaProd := '0';

      Desconto := StringReplace(lbl_edtDesc.Text,ThousandSeparator,'',[rfReplaceAll]);
      Desconto := StringReplace(Desconto,DecimalSeparator,'.',[rfReplaceAll]);
      if Desconto = '' Then
      Desconto := '0';

      Acrescimo := StringReplace(lbl_edtAcresc.Text,ThousandSeparator,'',[rfReplaceAll]);
      Acrescimo := StringReplace(Acrescimo,DecimalSeparator,'.',[rfReplaceAll]);
      if Acrescimo = '' Then
      Acrescimo := '0';


      if lbl_edtNumPedido.Text <> '' Then begin

        NumPedido := StrToInt(lbl_edtNumPedido.Text);

      end;

////////////////////////////////////////////////////////////////////////////////

          if TipoPreco = '' Then begin

          TipoPreco := 'A';

          end;

          if TipoPreco = 'A' Then begin

          TotalProd := StringReplace(lbl_edtTotalPed.Text,ThousandSeparator,'',[rfReplaceAll]);
          TotalProd := StringReplace(TotalProd,DecimalSeparator,'.',[rfReplaceAll]);

          end else begin

             TotalProd := '0';

          end;

          if TipoPreco = 'B' Then begin

          ValorB := StringReplace(lbl_edtTotalPed.Text,ThousandSeparator,'',[rfReplaceAll]);
          ValorB := StringReplace(ValorB,DecimalSeparator,'.',[rfReplaceAll]);
         // if ValorB  = '' Then
          end else begin
             ValorB := '0';
          end;

         if TipoPreco = 'C' Then begin

          ValorC := StringReplace(lbl_edtTotalPed.Text,ThousandSeparator,'',[rfReplaceAll]);
          ValorC := StringReplace(ValorC,DecimalSeparator,'.',[rfReplaceAll]);
        //  if ValorC  = '' Then
         end else begin
             ValorC := '0';

         end;

         SituacaoPedido := 'Pendente';

////////////////////////////////////////////////////////////////////////////////

      ibPedVenda.Close;
      ibPedVenda.SQL.Clear;
      ibPedVenda.SQL.Add('INSERT INTO TBLPEDIDODEVENDA'
      + '(COMISSAO,IDNUMPEDIDO,IDTIPOPAGTO,IDFUNC,DATA,HORA,IDCLIENTE,FONECLI,'
      + 'CPF_CNPJ,RG,DESCONTO,ACRESCIMO,IDPROD,QTDEPROD,VLRPROD,VCTOPRODUTO,'
      + 'SITUACAOPEDIDO,IDLOCALESTOQUE,VLRTOTAL,IDFORNECEDOR,IDCONDPAGTO,'
      + 'REF,VALORB,VALORC) values '
      + '(''' + lbl_edtComissao.Text + ''','
      + ' ''' + IntToStr(NumPedido) + ''','
      + StringTipoPagto
      + StringFuncionarioP
      + ' ''' + FormatDateTime('mm-dd-yyyy',dtpDataPed.Date) + ''','
      + ' ''' + FormatDateTime('hh:mm:ss',Now) + ''','
      + StringGravaCli
      + ' ''' + lbl_edtTelefone.Text + ''','
      + ' ''' + lbl_edtCpf.Text + ''',''' + lbl_edtRg.Text + ''','
      + ' ''' + Desconto + ''','
      + ' ''' + Acrescimo + ''','
      + StringGravaProd
      + ' ''' + QtdeGravaProd + ''',''' + VlrGravaProd + ''','
      + ' ''' + FormatDateTime('mm-dd-yyyy',dtpVctoProd.Date) + ''','
      + ' ''' + SituacaoPedido + ''','
      + ' ''' + IntToStr(IDEstoque) + ''','
      + ' ''' + TotalProd + ''','
      + ' ''' + IntToStr(IDFornecedor) + ''','
      + StringGravaCondPagto
      + ' ''' + lbl_edtRef.Text + ''','
      + ' ''' + ValorB + ''',''' + ValorC + ''')');
      ibPedVenda.ExecSQL;
      Commit(ibPedVenda);

////////////////////////////////////////////////////////////////////////////////

         { ibServsVenda.Close;
          ibServsVenda.SQL.Clear;
          ibServsVenda.SQL.Add('INSERT INTO TBLSERVICOSVENDAS '
          + ' (DATA,HORA,IDPROD,VLRTOTAL,VALORB,VALORC,VLRUNIT,'
          + 'TOTALCUSTO,IDCLIENTE,NOMEPROD,NPEDIDO,NPEDIDOFIXO,'
          + 'SITUACAOPEDIDO,ESTOQUE,QTDE) values '
          + ' (''' + FormatDateTime('mm-dd-yyyy',now) + ''','
          + ' ''' + FormatDateTime('hh:mm:ss',now) + ''','
          + StringGravaProd
          + ' ''' + TotalProd + ''','
          + ' ''' + ValorB + ''','
          + ' ''' + ValorC + ''','
          + ' ''' + VlrGravaProd + ''','
          + ' ''' + TotalCusto + ''','
          + StringGravaCli
          + ' ''' + NomeProduto + ''','
          + ' ''' + lbl_edtNumPedido.Text + ''','
          + ' ''' + lbl_edtNumPedido.Text + ''','
          + ' ''' + SituacaoPedido + ''','
          + ' ''' + LocalEstoque + ''','
          + ' ''' + QtdeGravaProd + ''')');
          ibServsVenda.ExecSQL;
          Commit(ibServsVenda); }


/////////////////////////////////////////////////////////////////////////////////
      if lbl_edtTotalPed.Text <> '' Then begin// se for em branco executa rotina abaixo.

        if (Pos(',',lbl_edtTotalPed.Text)>0) and (lbl_edtTotalPed.Text <> '') Then begin

          Valor1 := StrToFloat(StringReplace(lbl_edtTotalPed.Text,ThousandSeparator,'',[rfReplaceAll]));

          if lbl_edtTotalGeral.Text = '' Then begin

          lbl_edtTotalGeral.Text := FormatFloat(',0.00',(Valor1));

          end else begin

          //Valor1 := StrToFloat(StringReplace(lbl_edtTotalPed.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor2 := StrToFloat(StringReplace(lbl_edtTotalGeral.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor3 := (Valor2 + Valor1);

          lbl_edtTotalGeral.Text := FormatFloat(',0.00',(Valor3));

          end;

          end else begin

          Valor1 := StrToFloat(StringReplace(lbl_edtTotalPed.Text,ThousandSeparator,'',[rfReplaceAll]));

          if lbl_edtTotalGeral.Text = '' Then begin

          lbl_edtTotalGeral.Text := FormatFloat(',0.00',(Valor1));

          end else begin

          //Valor1 := StrToFloat(StringReplace(lbl_edtTotalPed.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor2 := StrToFloat(StringReplace(lbl_edtTotalGeral.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor3 := (Valor2 + Valor1);

          lbl_edtTotalGeral.Text := FormatFloat(',0.00',(Valor3));

          end;

        end;{if}

     // end;{if}
  ////////////////////////////////////////////////////////////////////////////////
    if rbSim.Checked Then begin

     if cboProduto.ItemIndex > -1 Then begin


      ClassProdEstoque    := TClasseCombo( cboProduto.Items.Objects[cboProduto.ItemIndex] );
     // StringProdEstoque   := ' ''' + InttoStr( ClassProdEstoque.ID ) + ''',';

      ibEntrProdEstoque.Close;
      ibEntrProdEstoque.SQL.Clear;
      ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,'
      + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,TBLENTRADAESTOQUEPROD.ESTOQUEMIN,'
      + 'CADPRODUTOS.VALORVENDAA,CADPRODUTOS.TIPOPROD FROM TBLENTRADAESTOQUEPROD '
      + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
      + 'WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + IntToStr(ClassProdEstoque.ID) + '''');
      ibEntrProdEstoque.Open;

      //ROTINA ABAIXO PARA SOMAR TOTAL DO ESTQUE E QUANTIDADE DO ESTOQUE

      //traz na variavel a qtde conf. prod da select identificado por id.
      QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
     // QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),DecimalSeparator,',',[rfReplaceAll]));

      QtdeVenda    := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));

      QtdeEstoque  := QtdeEstoque - QtdeVenda;

      EstoqueFinal := StringReplace(FloattoStr(QtdeEstoque),ThousandSeparator,'',[rfReplaceAll]);
      EstoqueFinal := StringReplace(EstoqueFinal,DecimalSeparator,'.',[rfReplaceAll]);

      //AQUI VAI O CALCULO DO TOTAL CONFORME VENDE O PRODUTO
      VlrProduto   := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORVENDAA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

      VlrProduto   := QtdeEstoque * VlrProduto;

      TotalProdEstoque := StringReplace(FloattoStr(VlrProduto),ThousandSeparator,'',[rfReplaceAll]);
      TotalProdEstoque := StringReplace(TotalProdEstoque,DecimalSeparator,'.',[rfReplaceAll]);

       //se houver registro ele atribui na alteracao o vlr da variavel
       if ibEntrProdEstoque.RecordCount > 0 Then begin


        if (ibEntrProdEstoque.FieldByName('QUANTIDADE').AsInteger < ibEntrProdEstoque.FieldByName('ESTOQUEMIN').AsInteger) then begin

        Application.MessageBox('Atenção o Estoque está em sua Quantidade Mínima!!!','Notificação: Estoque inferior ao mínimo.',+MB_OK+MB_ICONWARNING);

        end;

         ibEntrProdEstoque.Close;
         ibEntrProdEstoque.SQL.Clear;
         ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
         +'QUANTIDADE=''' + (EstoqueFinal) + ''','
         +'VLRTOTAL=''' + (TotalProdEstoque) +  ''' WHERE IDPROD=''' + IntToStr(ClassProdEstoque.ID) + '''');
         ibEntrProdEstoque.ExecSQL;
         Commit(ibEntrProdEstoque);

       end;{if}

  ////////////////////////////////////////////////////////////////////////////////

          TotalSaidaEstoque := StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]);
          TotalSaidaEstoque := StringReplace(TotalSaidaEstoque,DecimalSeparator,'.',[rfReplaceAll]);
          if TotalSaidaEstoque  = '' Then
           TotalSaidaEstoque := '0';

          ibMovEst.Close;
          ibMovEst.SQL.Clear;
          ibMovEst.SQL.Add('INSERT INTO TBLMOVESTOQUE '
          + '(IDPROD,DATA,HORA,SAIDA) values '
          + ' (''' + IntToStr(ClassProdEstoque.ID) + ''','
          + ' ''' + FormatDateTime('mm-dd-yyyy',now) + ''','
          + ' ''' + FormatDateTime('hh:mm:ss',now) + ''','
          + ' ''' + TotalSaidaEstoque + ''')');
          ibMovEst.ExecSQL;
          Commit(ibMovEst);

     end;{if cbo produto}

    end;{rb sim}

////////////////////////////////////////////////////////////////////////////////


    {  if lbl_edtTotalPed.Text <> '' Then begin// se for em branco executa rotina abaixo.

        if (Pos(',',lbl_edtTotalPed.Text)>0) and (lbl_edtTotalPed.Text <> '') Then begin

          Valor2 := StrToFloat(StringReplace(lbl_edtTotalPed.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor3 := StrToFloat(StringReplace(lbl_edtTotalProd.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor4 := (Valor2 + Valor3);
          lbl_edtTotalPed.Text := FormatFloat(',0.00',(Valor4));

        end else begin

          Valor2 := StrToFloat(StringReplace(lbl_edtTotalPed.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor3 := StrToFloat(StringReplace(lbl_edtTotalProd.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor4 := (Valor2 + Valor3);
          lbl_edtTotalPed.Text := FormatFloat(',0.00',(Valor4));}

      //  end;{if}

    //  end;{if}

////////////////////////////////////////////////////////////////////////////////

      if cboCliente.Text <> '' Then begin

        ibPedVenda.Close;
        ibPedVenda.SQL.Clear;
        ibPedVenda.SQL.Add('SELECT TBLPEDIDODEVENDA.*,CADPRODUTOS.NOME As Produto,'
        + 'CADPRODUTOS.CODBARRAS,TBLCADASTRO.NOME As Cliente FROM TBLPEDIDODEVENDA '
        + 'INNER JOIN CADPRODUTOS ON TBLPEDIDODEVENDA.IDPROD=CADPRODUTOS.IDPROD '
        + 'INNER JOIN TBLCADASTRO ON TBLPEDIDODEVENDA.IDCLIENTE=TBLCADASTRO.IDCAD '
        + 'WHERE TBLPEDIDODEVENDA.IDNUMPEDIDO =''' + lbl_edtNumPedido.Text + '''');
        ibPedVenda.Open;

       (ibPedVenda.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
       (ibPedVenda.FieldByName('VALORB') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
       (ibPedVenda.FieldByName('VALORC') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
       (ibPedVenda.FieldByName('VLRPROD') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
       FormatFloat('0',ibPedVenda.FieldByName('QTDEPROD').AsFloat); //CRIA UMA MASCARA PARA O CAMPO

      end;{if cbo cliente}

      if (cbocliente.Text = '') Then begin

        ibPedVenda.Close;
        ibPedVenda.SQL.Clear;
        ibPedVenda.SQL.Add('SELECT TBLPEDIDODEVENDA.*,CADPRODUTOS.NOME As Produto,'
        + 'CADPRODUTOS.CODBARRAS FROM TBLPEDIDODEVENDA '
        + 'INNER JOIN CADPRODUTOS ON TBLPEDIDODEVENDA.IDPROD=CADPRODUTOS.IDPROD '
      //  + 'INNER JOIN TBLCADASTRO ON TBLPEDIDODEVENDA.IDCLIENTE=TBLCADASTRO.IDCAD '
        + 'WHERE TBLPEDIDODEVENDA.IDNUMPEDIDO =''' + lbl_edtNumPedido.Text + '''');
        ibPedVenda.Open;

       (ibPedVenda.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
       (ibPedVenda.FieldByName('VALORB') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
       (ibPedVenda.FieldByName('VALORC') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
       (ibPedVenda.FieldByName('VLRPROD') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
       FormatFloat('0',ibPedVenda.FieldByName('QTDEPROD').AsFloat); //CRIA UMA MASCARA PARA O CAMPO


      end;{if cbociente e lblcliente}
      
     cboProduto.ClearSelection;
     lbl_edtVlrProd.Clear;
     lbl_edtQtde.Clear;
     lbl_edtTotalProd.Clear;
     lbl_CodBarras.Caption := '';
     lbl_NomeProd.Caption := '';
     lbl_Valor.Caption := '';
     lbl_TipoPreco.Caption := '';
     lbl_edtCodBarras.Text := '';

      end;// else begin


    //  if (cboCliente.Text <> '') and (lbl_edtClienteSemCadastro.Text = '') Then begin
   //   Application.MessageBox('Atenção Verifique se está selecionado o cliente e o tipo de pagamento','Notificação: WErro de gravação',+MB_OK+MB_ICONQUESTION);
    //  end;
    //  end;

    end;{if rb sim ou nao}

  end;{with}

end;

procedure TfrmPedidodeVenda.lbl_edtQtdeExit(Sender: TObject);

var

Valor1,Valor2,Valor3,Valor4 : Real;

begin
  if lbl_edtQtde.Text <> '' Then begin// se for em branco executa rotina abaixo.

    if (Pos(',',lbl_edtQtde.Text)>0) and (lbl_edtQtde.Text <> '') Then begin

      Valor1 := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));
      Valor2 := StrToFloat(StringReplace(lbl_edtVlrProd.Text,ThousandSeparator,'',[rfReplaceAll]));

      lbl_edtTotalProd.Text := FormatFloat(',0.00',(Valor2 * Valor1));

    end else begin

      Valor1 := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));
      Valor2 := StrToFloat(StringReplace(lbl_edtVlrProd.Text,ThousandSeparator,'',[rfReplaceAll]));
      lbl_edtTotalProd.Text := FormatFloat(',0.00',(Valor2 * Valor1));


    end;{if}

  end;{if}

end;

procedure TfrmPedidodeVenda.lbl_edtQtdeKeyPress(Sender: TObject;
  var Key: Char);
begin

  if Key = #13 Then begin

    lbl_edtTotalProd.SetFocus;

  end;{if}

end;

procedure TfrmPedidodeVenda.ibeaSairCRClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPedidodeVenda.cboClienteClick(Sender: TObject);

var

i : Integer;

begin

  with dmModule do begin

    if cboCliente.ItemIndex <> - 1 Then begin

      IDDadosCliente := TClasseCombo(cboCliente.Items.Objects[cboCliente.ItemIndex]);
      StringDadosCliente := ' IDCAD=''' + IntToStr(IDDadosCliente.ID) + '''';

    end;{if}

    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,CONDICOESPAGAMENTO.DESCRICAO FROM TBLCADASTRO '
    + 'INNER JOIN CONDICOESPAGAMENTO ON TBLCADASTRO.IDCONDPAGTO=CONDICOESPAGAMENTO.IDCONDPAGTO  WHERE ' + StringDadosCliente);
    ibCadastro.Open;

    ibDocumentacao.Close;
    ibDocumentacao.SQL.Clear;
    ibDocumentacao.SQL.Add('SELECT * FROM TBLCADDOCUMENTACAO WHERE ' + StringDadosCliente);
    ibDocumentacao.Open;

    ibContato.Close;
    ibContato.SQL.Clear;
    ibContato.SQL.Add('SELECT * FROM TBLCONTATO WHERE ' + StringDadosCliente);
    ibContato.Open;

//    lbl_edtCod.Text        := IntToStr(ibCadastro.FieldByName('IDCAD').AsInteger);
//    lbl_edtDDD.Text        := ibContato.FieldByName('DDD').AsString;
    lbl_edtTelefone.Text   := ibContato.FieldByName('CONTATO').AsString;
    lbl_edtCpf.Text        := ibDocumentacao.FieldByName('CNPJ_CPF').AsString;
    lbl_edtRg.Text         := ibDocumentacao.FieldByName('IE_RG').AsString;

    for i:=0 to cboCondPagto.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
      if TClasseCombo( cboCondPagto.Items.Objects[i]).ID = ibCadastro.FieldByName('IDCONDPAGTO').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
        cboCondPagto.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
        Break;
      end else begin
        cboCondPagto.ClearSelection;//LIMPA A SELECAO. }
      end;{if}
    end;{for}

  end;{with}

end;

procedure TfrmPedidodeVenda.dtpDataFinalCRChange(Sender: TObject);
begin

  with dmModule do begin

    Commit(ibAReceber);
    ibAReceber.Close;
    ibAReceber.SQL.Clear;
    ibAReceber.SQL.Add('SELECT TBLCONTASARECEBER.*,TBLTIPODOCUMENTO.TIPO,TBLCADASTRO.NOME,'
    + ' TBLCADDOCUMENTACAO.CODIGO As CodCli,TBLTIPOPAGTOAVULSO.DESCRICAO FROM TBLCONTASARECEBER '
    + ' LEFT OUTER JOIN TBLTIPOPAGTOAVULSO ON TBLCONTASARECEBER.TIPOPAGTO=TBLTIPOPAGTOAVULSO.DESCRICAO '
    + ' LEFT OUTER JOIN TBLCADDOCUMENTACAO ON TBLCONTASARECEBER.IDCLI=TBLCADDOCUMENTACAO.IDCAD '
    + ' LEFT OUTER JOIN TBLTIPODOCUMENTO ON TBLCONTASARECEBER.IDTIPODOC=TBLTIPODOCUMENTO.IDTIPODOC '
    + ' LEFT OUTER JOIN TBLCADASTRO ON TBLCONTASARECEBER.IDCLI=TBLCADASTRO.IDCAD '
    + ' WHERE (TBLCONTASARECEBER.DTVENCTO between :ParamDataInicial and :ParamDataFinal) ORDER BY TBLCONTASARECEBER.IDNUMPEDIDO');
    ibAReceber.Open;

    ibAReceber.Close;
    ibAReceber.ParamByName('ParamDataInicial').Value := dtpDataIniCR.DateTime;
    ibAReceber.ParamByName('ParamDataFinal').Value := dtpDataFinalCR.DateTime;
    ibAReceber.Open;

   (ibAReceber.FieldByName('VLREMITIDO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

     while not ibAReceber.Eof do begin

       if (ValorCAReceber = 0) Then begin

         ValorCAReceber := StrToFloat(StringReplace(FloatToStr(ibAReceber.FieldByName('VLREMITIDO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

       end else begin

         TotalCAReceber := StringReplace(FloatToStr(ibAReceber.FieldByName('VLREMITIDO').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

         ValorCAReceber := ValorCAReceber + StrToFloat(StringReplace(TotalCAReceber,ThousandSeparator,'',[rfReplaceAll]));

       end;

       ibAReceber.Next;

     end;{while}

     if lbl_edtTotalCRPeriodo.Text = '' Then begin

       lbl_edtTotalCRPeriodo.Text := FormatFloat(CasasDecimais('Produtos'),ValorCAReceber);

     end;

  end;{with}

end;

procedure TfrmPedidodeVenda.pcPedidoVendaChange(Sender: TObject);
begin

  with dmModule do begin

   if pcPedidoVenda.ActivePage.TabIndex = 0 Then begin

   lbl_edtNumPedido.Clear;
   lbl_edtComissao.Clear;
   cboTipoPagto.ClearSelection;
   cboCliente.ClearSelection;
   lbl_edtTelefone.Clear;
   lbl_edtCpf.Clear;
   lbl_edtRg.Clear;
//   cboProduto.Clear;
   lbl_edtVlrProd.Clear;
   lbl_edtQtde.Clear;
   lbl_edtTotalProd.Clear;
   lbl_edtDesc.Clear;
   lbl_edtAcresc.Clear;
   lbl_edtTotalPed.Clear;
   lbl_CodBarras.Caption := '';
   lbl_NomeProd.Caption := '';
   lbl_Valor.Caption := '';
   lbl_edtTotalP.Clear;
   ibPedVenda.Close;


   end else if pcPedidoVenda.ActivePage.TabIndex = 1 Then begin

    ExecSELECTProdM;
    ExecSELECTClientesM;
    ExecSELECTFornecedorManutP;
    lbl_edtPedidoNumero.Clear;
    lbl_edtCodManut.Clear;
    lbl_edtDDDCliManutPed.Clear;
    lbl_edtTelefoneCliManutPed.Clear;
    lbl_edtCpfManutPed.Clear;
    lbl_edtRgManutPed.Clear;
    lbl_edtCodProd.Clear;
    lbl_edtVlrProdM.Clear;
    lbl_edtQtdeProdM.Clear;
    lbl_edtTotalProdM.Clear;
    lbl_edtTotalP.Clear;
    ibManutPedVenda.Close;
    

    end else if pcPedidoVenda.ActivePage.TabIndex = 2 Then begin

      ExecClientesConsulta;

      lbl_edtCodConsultaCli.Clear;
      lbl_edtDDDCliConsulta.Clear;
      lbl_edtTelefoneCliConsulta.Clear;
      lbl_edtEnderecoCliCons.Clear;
      lbl_edtNumeroCliCons.Clear;
      ibPedVendaConsulta.Close;
      lbl_edtTotalGeralPedidos.Clear;

    end else if pcPedidoVenda.ActivePage.TabIndex = 3 Then begin

      lbl_edtTotalCRPeriodo.Text := '';
      ibAReceber.Close;


    end;{if}

  end;{with}

end;

procedure TfrmPedidodeVenda.ibeaSairConsultaClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPedidodeVenda.cboCliConsultaClick(Sender: TObject);

var

ValorPedidoM,ValorB,ValorC,TotalBC,ValorGeral   : Real;
ValorGeralPedidoM,TotalB,TotalC                 : String;

begin
  with dmModule do begin

    if cboCliConsulta.ItemIndex <> - 1 Then begin

      IDDadosClienteConsulta := TClasseCombo(cboCliConsulta.Items.Objects[cboCliConsulta.ItemIndex]);
      StringDadosClienteConsulta := ' IDCAD=''' + IntToStr(IDDadosClienteConsulta.ID) + '''';

    end;{if}

    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE ' + StringDadosClienteConsulta);
    ibCadastro.Open;

    ibDocumentacao.Close;
    ibDocumentacao.SQL.Clear;
    ibDocumentacao.SQL.Add('SELECT * FROM TBLCADDOCUMENTACAO WHERE ' + StringDadosClienteConsulta);
    ibDocumentacao.Open;

    ibContato.Close;
    ibContato.SQL.Clear;
    ibContato.SQL.Add('SELECT * FROM TBLCONTATO WHERE ' + StringDadosClienteConsulta);
    ibContato.Open;

    lbl_edtCodConsultaCli.Text        := IntToStr(ibCadastro.FieldByName('IDCAD').AsInteger);
    lbl_edtDDDCliConsulta.Text        := ibContato.FieldByName('DDD').AsString;
    lbl_edtTelefoneCliConsulta.Text   := ibContato.FieldByName('CONTATO').AsString;
 //   lbl_edtCPF_CNPJCliConsulta.Text   := ibDocumentacao.FieldByName('CNPJ_CPF').AsString;
 //   lbl_edtRGCliConsulta.Text         := ibDocumentacao.FieldByName('IE_RG').AsString;
/////////////////////////////////////////////////////////////////////////////////
      Commit(ibPedVendaConsulta);
      ibPedVendaConsulta.Close;
      ibPedVendaConsulta.SQL.Clear;
      ibPedVendaConsulta.SQL.Add('SELECT TBLPEDIDODEVENDA.*,CADPRODUTOS.NOME As Produto,'
      + 'TBLCADASTRO.NOME As Cliente,TBLCADDOCUMENTACAO.CODIGO FROM TBLPEDIDODEVENDA '
      + 'INNER JOIN TBLCADDOCUMENTACAO ON TBLPEDIDODEVENDA.IDCLIENTE=TBLCADDOCUMENTACAO.IDCAD '
      + 'INNER JOIN CADPRODUTOS ON TBLPEDIDODEVENDA.IDPROD=CADPRODUTOS.IDPROD '
      + 'INNER JOIN TBLCADASTRO ON TBLPEDIDODEVENDA.IDCLIENTE=TBLCADASTRO.IDCAD '
      + 'WHERE(TBLPEDIDODEVENDA.DATA between :ParamDataInicial and :ParamDataFinal) and TBLPEDIDODEVENDA.IDCLIENTE=''' + IntToStr(IDDadosClienteConsulta.ID) + '''  ORDER BY TBLPEDIDODEVENDA.IDNUMPEDIDO');
      ibPedVendaConsulta.Open;

      ibPedVendaConsulta.Close;
      ibPedVendaConsulta.ParamByName('ParamDataInicial').Value := dtpDataPrazoIni.DateTime;
      ibPedVendaConsulta.ParamByName('ParamDataFinal').Value := dtpDataPrazoVct.DateTime;
      ibPedVendaConsulta.Open;

     (ibPedVendaConsulta.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
     (ibPedVendaConsulta.FieldByName('VALORB') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
     (ibPedVendaConsulta.FieldByName('VALORC') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
     (ibPedVendaConsulta.FieldByName('VLRPROD') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO


////////////////////////////////////////////////////////////////////////////////

    while not ibPedVendaConsulta.Eof do begin//enquanto nao for fim de registro

          if (ValorPedidoM = 0) and (ValorB = 0) and (ValorC = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorPedidoM := StrtoFloat(StringReplace(FloattoStr(ibPedVendaConsulta.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

            ValorB := StrToFloat(StringReplace(FloatToStr(ibPedVendaConsulta.FieldByName('VALORB').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

            ValorC := StrToFloat(StringReplace(FloatToStr(ibPedVendaConsulta.FieldByName('VALORC').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorGeralPedidoM := StringReplace(FloattoStr(ibPedVendaConsulta.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            TotalB := StringReplace(FloatToStr(ibPedVendaConsulta.FieldByName('VALORB').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            TotalC := StringReplace(FloatToStr(ibPedVendaConsulta.FieldByName('VALORC').AsFloat),ThousandSeparator,'',[rfReplaceAll]);


            //atribui a variavel o valor separando por ponto
            ValorPedidoM := ValorPedidoM + StrtoFloat(StringReplace(ValorGeralPedidoM,ThousandSeparator,'',[rfReplaceAll]));

            ValorB := ValorB + StrToFloat(StringReplace(TotalB,ThousandSeparator,'',[rfReplaceAll]));

            ValorC := ValorC + StrToFloat(StringReplace(TotalC,ThousandSeparator,'',[rfReplaceAll]));

           end;{if}

           TotalBC := ValorB + ValorC;

            if (TotalBC = 0)  Then begin

              ValorGeral :=  ValorPedidoM;

            end else begin

              ValorGeral := TotalBC + ValorPedidoM;


            end;


          ibPedVendaConsulta.Next;//vai para o pproximo registro pro looping nao ficar infinito.

        end;{while}


       lbl_edtTotalPedCliente.Text := FormatFloat(CasasDecimais('Produtos'),ValorGeral);

/////////////////////////////////////////////////////////////////////////////////

  end;{with}

end;

procedure TfrmPedidodeVenda.ibeaClienteConsultaClick(Sender: TObject);
begin
  frmBuscaClientes.ShowModal;
end;

procedure TfrmPedidodeVenda.dtpDataPrazoVctChange(Sender: TObject);

var

ValorPedidoTbl,ValorB,ValorC,TotalBC,ValorGeral   : Real;
ValorGeralPedidoTbl,TotalB,TotalC                 : String;


begin

  with dmModule do begin

    if cboCliConsulta.Text = '' Then begin

      Commit(ibPedVendaConsulta);
      ibPedVendaConsulta.Close;
      ibPedVendaConsulta.SQL.Clear;
      ibPedVendaConsulta.SQL.Add('SELECT TBLPEDIDODEVENDA.*,CADPRODUTOS.NOME As Produto,'
      + 'TBLCADASTRO.NOME As Cliente,TBLCADDOCUMENTACAO.CODIGO FROM TBLPEDIDODEVENDA '
      + 'LEFT OUTER JOIN TBLCADDOCUMENTACAO ON TBLPEDIDODEVENDA.IDCLIENTE=TBLCADDOCUMENTACAO.IDCAD '
      + 'INNER JOIN CADPRODUTOS ON TBLPEDIDODEVENDA.IDPROD=CADPRODUTOS.IDPROD '
      + 'LEFT OUTER JOIN TBLCADASTRO ON TBLPEDIDODEVENDA.IDCLIENTE=TBLCADASTRO.IDCAD '
      + 'WHERE(TBLPEDIDODEVENDA.DATA between :ParamDataInicial and :ParamDataFinal) ORDER BY TBLPEDIDODEVENDA.IDNUMPEDIDO');
      ibPedVendaConsulta.Open;

     (ibPedVendaConsulta.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
     (ibPedVendaConsulta.FieldByName('VALORB') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
     (ibPedVendaConsulta.FieldByName('VALORC') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
     (ibPedVendaConsulta.FieldByName('VLRPROD') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
     FormatFloat('0',ibPedVendaConsulta.FieldByName('QTDEPROD').AsFloat); //CRIA UMA MASCARA PARA O CAMPO


      ibPedVendaConsulta.Close;
      ibPedVendaConsulta.ParamByName('ParamDataInicial').Value := dtpDataPrazoIni.DateTime;
      ibPedVendaConsulta.ParamByName('ParamDataFinal').Value := dtpDataPrazoVct.DateTime;
      ibPedVendaConsulta.Open;

/////////////////////////////////////////////////////////////////////////////////

    while not ibPedVendaConsulta.Eof do begin//enquanto nao for fim de registro

          if (ValorPedidoTbl = 0) and (ValorB = 0) and (ValorC = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorPedidoTbl := StrtoFloat(StringReplace(FloattoStr(ibPedVendaConsulta.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

            ValorB := StrToFloat(StringReplace(FloatToStr(ibPedVendaConsulta.FieldByName('VALORB').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

            ValorC := StrToFloat(StringReplace(FloatToStr(ibPedVendaConsulta.FieldByName('VALORC').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorGeralPedidoTbl := StringReplace(FloattoStr(ibPedVendaConsulta.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            TotalB := StringReplace(FloatToStr(ibPedVendaConsulta.FieldByName('VALORB').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            TotalC := StringReplace(FloatToStr(ibPedVendaConsulta.FieldByName('VALORC').AsFloat),ThousandSeparator,'',[rfReplaceAll]);


            //atribui a variavel o valor separando por ponto
            ValorPedidoTbl := ValorPedidoTbl + StrtoFloat(StringReplace(ValorGeralPedidoTbl,ThousandSeparator,'',[rfReplaceAll]));

            ValorB := ValorB + StrToFloat(StringReplace(TotalB,ThousandSeparator,'',[rfReplaceAll]));

            ValorC := ValorC + StrToFloat(StringReplace(TotalC,ThousandSeparator,'',[rfReplaceAll]));

           end;{if}

           TotalBC := ValorB + ValorC;

            if (TotalBC = 0)  Then begin

              ValorGeral :=  ValorPedidoTbl;

            end else begin

              ValorGeral := TotalBC + ValorPedidoTbl;


            end;


          ibPedVendaConsulta.Next;//vai para o pproximo registro pro looping nao ficar infinito.

        end;{while}

       if lbl_edtTotalGeralPedidos.Text = '' Then begin

       lbl_edtTotalGeralPedidos.Text := FormatFloat(CasasDecimais('Produtos'),ValorGeral);

      end;
/////////////////////////////////////////////////////////////////////////////////



    end;{if}


  end;{with}

end;

procedure TfrmPedidodeVenda.dbgPedVendasCellClick(Column: TColumn);

var

i : Integer;

begin

  with dmModule do begin

  IDProdutoPedido := ibPedVenda.FieldByName('IDPEDIDO').AsInteger;


  if ibPedVenda.RecordCount > 0 Then begin

   lbl_CodBarras.Caption := ibPedVenda.FieldByName('CODBARRAS').AsString;
   lbl_NomeProd.Caption  := ibPedVenda.FieldByName('Produto').AsString;
//   lbl_Valor.Caption     := FormatFloat(CasasDecimais('Produtos'),ibPedVenda.FieldByName('VLRPROD').AsFloat);
//   lbl_edtVlrProd.Text   := FormatFloat(CasasDecimais('Produtos'),ibPedVenda.FieldByName('VLRPROD').AsFloat);
   lbl_edtQtde.Text      := FormatFloat(CasasDecimais('Produtos'),ibPedVenda.FieldByName('QTDEPROD').AsFloat);

   lbl_edtDesc.Text   := FormatFloat(CasasDecimais('Produtos'),ibPedVenda.FieldByName('DESCONTO').AsFloat);
   lbl_edtAcresc.Text := FormatFloat(CasasDecimais('Produtos'),ibPedVenda.FieldByName('ACRESCIMO').AsFloat);

    if ibPedVenda.FieldByName('VLRTOTAL').AsFloat <> 0 Then begin

    lbl_edtVlrProd.Text := FormatFloat(CasasDecimais('Produtos'),ibPedVenda.FieldByName('VLRPROD').AsFloat);
    lbl_edtTotalProd.Text := FormatFloat(CasasDecimais('Produtos'),ibPedVenda.FieldByName('VLRTOTAL').AsFloat);
    lbl_TipoPreco.Caption := 'Preço de Venda(A)';
    TipoPreco := 'A';

    end else if ibPedVenda.FieldByName('VALORB').AsFloat <> 0 Then begin

    lbl_edtVlrProd.Text := FormatFloat(CasasDecimais('Produtos'),ibPedVenda.FieldByName('VLRPROD').AsFloat);
    lbl_edtTotalProd.Text := FormatFloat(CasasDecimais('Produtos'),ibPedVenda.FieldByName('VALORB').AsFloat);
    lbl_TipoPreco.Caption := 'Preço de Venda(B)';
    TipoPreco := 'B';

    end else if ibPedVenda.FieldByName('VALORC').AsFloat <> 0 Then begin

    lbl_edtVlrProd.Text := FormatFloat(CasasDecimais('Produtos'),ibPedVenda.FieldByName('VLRPROD').AsFloat);
    lbl_edtTotalProd.Text := FormatFloat(CasasDecimais('Produtos'),ibPedVenda.FieldByName('VALORC').AsFloat);
    lbl_TipoPreco.Caption := 'Preço de Venda(C)';
    TipoPreco := 'C';

    end;



  end;{if}

    for i:=0 to cboProduto.Items.Count -1 do begin
      if TClasseCombo( cboProduto.Items.Objects[i]).ID = ibPedVenda.FieldByName('IDPROD').AsInteger then begin
        cboProduto.ItemIndex:= i;
        Break;
      end else begin
        cboProduto.ClearSelection;
      end;
    end;

    ProdutoClicado := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));
    ibeaIncluir.Enabled := False;
    
  end;{with}

end;

procedure TfrmPedidodeVenda.ibeaAlterarClick(Sender: TObject);

var

ValorPedidoM,ValorB,ValorC,TotalBC,ValorGeral   : Real;
ValorGeralPedidoM,TotalB,TotalC                 : String;

begin

  with dmModule do begin

    ConfirmaMSG := Application.MessageBox('Confirma alteração?','Notificação:Alteração no Produto',+MB_YESNO+MB_ICONQUESTION);

    if ConfirmaMSG = 6 Then begin

      TotalProd := StringReplace(lbl_edtTotalProd.Text,ThousandSeparator,'',[rfReplaceAll]);
      TotalProd := StringReplace(TotalProd,DecimalSeparator,'.',[rfReplaceAll]);
      if TotalProd = '' Then
         TotalProd := '0';

      QtdeGravaProd := StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]);
      QtdeGravaProd := StringReplace(QtdeGravaProd,DecimalSeparator,'.',[rfReplaceAll]);
      if QtdeGravaProd = '' Then
      QtdeGravaProd := '0';


      ibPedVenda.Close;
      ibPedVenda.SQL.Clear;
      ibPedVenda.SQl.Add('UPDATE TBLPEDIDODEVENDA SET '
      + 'VLRTOTAL=''' + TotalProd + ''','
      + 'QTDEPROD=''' + QtdeGravaProd + ''' WHERE IDPEDIDO=''' + IntToStr(IDProdutoPedido) + '''');
      ibPedVenda.ExecSQL;
      Commit(ibPedVenda);

      ibPedVenda.Close;
      ibPedVenda.SQL.Clear;
      ibPedVenda.SQL.Add('SELECT TBLPEDIDODEVENDA.*,CADPRODUTOS.NOME As Produto,'
      + 'CADPRODUTOS.CODBARRAS,TBLCADASTRO.NOME As Cliente FROM TBLPEDIDODEVENDA '
      + 'INNER JOIN CADPRODUTOS ON TBLPEDIDODEVENDA.IDPROD=CADPRODUTOS.IDPROD '
      + 'INNER JOIN TBLCADASTRO ON TBLPEDIDODEVENDA.IDCLIENTE=TBLCADASTRO.IDCAD '
      + 'WHERE TBLPEDIDODEVENDA.IDNUMPEDIDO =''' + lbl_edtNumPedido.Text + '''');
      ibPedVenda.Open;

     (ibPedVenda.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
     (ibPedVenda.FieldByName('VLRPROD') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
     FormatFloat('0',ibPedVenda.FieldByName('QTDEPROD').AsFloat); //CRIA UMA MASCARA PARA O CAMPO

////////////////////////////////////////////////////////////////////////////////

   if cboProduto.ItemIndex > -1 Then begin


    ClassProdEstoque    := TClasseCombo( cboProduto.Items.Objects[cboProduto.ItemIndex] );
   // StringProdEstoque   := ' ''' + InttoStr( ClassProdEstoque.ID ) + ''',';

    ibEntrProdEstoque.Close;
    ibEntrProdEstoque.SQL.Clear;       // TBLPEDIDODEVENDA.IDNUMPEDIDO,
    ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,'
    + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,'
    + 'TBLENTRADAESTOQUEPROD.ESTOQUEMIN,'
    + 'CADPRODUTOS.VALORVENDAA,CADPRODUTOS.TIPOPROD FROM TBLENTRADAESTOQUEPROD '
    + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
    + 'WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + IntToStr(ClassProdEstoque.ID) + '''');
    ibEntrProdEstoque.Open;

    //ROTINA ABAIXO PARA SOMAR TOTAL DO ESTQUE E QUANTIDADE DO ESTOQUE

    QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
   // QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),DecimalSeparator,',',[rfReplaceAll]));

    QtdeEstoque := QtdeEstoque + ProdutoClicado;

    QtdeVenda   := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));

    QtdeEstoque := QtdeEstoque - QtdeVenda;


    EstoqueFinal := StringReplace(FloattoStr(QtdeEstoque),ThousandSeparator,'',[rfReplaceAll]);
    EstoqueFinal := StringReplace(EstoqueFinal,DecimalSeparator,'.',[rfReplaceAll]);

    //AQUI VAI O CALCULO DO TOTAL CONFORME VENDE O PRODUTO

    VlrProduto  := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORVENDAA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
   // VlrProduto  := StrtoFloat(StringReplace(lbl_edtTotalProd.Text,ThousandSeparator,'',[rfReplaceAll]));

    VlrProduto  := QtdeEstoque * VlrProduto;

    TotalProdEstoque := StringReplace(FloattoStr(VlrProduto),ThousandSeparator,'',[rfReplaceAll]);
    TotalProdEstoque := StringReplace(TotalProdEstoque,DecimalSeparator,'.',[rfReplaceAll]);

     //se houver registro ele atribui na alteracao o vlr da variavel
     if ibEntrProdEstoque.RecordCount > 0 Then begin


     { if (ibEntrProdEstoque.FieldByName('QUANTIDADE').AsInteger < ibEntrProdEstoque.FieldByName('ESTOQUEMIN').AsInteger) then begin

      Application.MessageBox('Atenção o Estoque está em sua Quantidade Mínima!!!','Notificação: Estoque inferior ao mínimo.',+MB_OK+MB_ICONWARNING);

      end;  }

       ibEntrProdEstoque.Close;
       ibEntrProdEstoque.SQL.Clear;
       ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
       +'QUANTIDADE=''' + (EstoqueFinal) + ''','
       +'VLRTOTAL=''' + (TotalProdEstoque) +  ''' WHERE IDPROD=''' + IntToStr(ClassProdEstoque.ID) + '''');
       ibEntrProdEstoque.ExecSQL;
       Commit(ibEntrProdEstoque);

     end;{if}

    end; 

////////////////////////////////////////////////////////////////////////////////

    while not ibPedVenda.Eof do begin//enquanto nao for fim de registro

          if (ValorPedidoM = 0) and (ValorB = 0) and (ValorC = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorPedidoM := StrtoFloat(StringReplace(FloattoStr(ibPedVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

            ValorB := StrToFloat(StringReplace(FloatToStr(ibPedVenda.FieldByName('VALORB').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

            ValorC := StrToFloat(StringReplace(FloatToStr(ibPedVenda.FieldByName('VALORC').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorGeralPedidoM := StringReplace(FloattoStr(ibPedVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            TotalB := StringReplace(FloatToStr(ibPedVenda.FieldByName('VALORB').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            TotalC := StringReplace(FloatToStr(ibPedVenda.FieldByName('VALORC').AsFloat),ThousandSeparator,'',[rfReplaceAll]);


            //atribui a variavel o valor separando por ponto
            ValorPedidoM := ValorPedidoM + StrtoFloat(StringReplace(ValorGeralPedidoM,ThousandSeparator,'',[rfReplaceAll]));

            ValorB := ValorB + StrToFloat(StringReplace(TotalB,ThousandSeparator,'',[rfReplaceAll]));

            ValorC := ValorC + StrToFloat(StringReplace(TotalC,ThousandSeparator,'',[rfReplaceAll]));

           end;{if}

           TotalBC := ValorB + ValorC;

            if (TotalBC = 0)  Then begin

              ValorGeral :=  ValorPedidoM;

            end else begin

              ValorGeral := TotalBC + ValorPedidoM;


            end;


          ibPedVenda.Next;//vai para o pproximo registro pro looping nao ficar infinito.

        end;{while}


     lbl_edtTotalPed.Text   := FormatFloat(CasasDecimais('Produtos'),ValorGeral);
     lbl_edtTotalGeral.Text := lbl_edtTotalPed.Text;
     
////////////////////////////////////////////////////////////////////////////////

    end;{if confirmamsg}

  end;{with}

end;

procedure TfrmPedidodeVenda.ibeaExcluirClick(Sender: TObject);

var

ValorPedidoM,ValorB,ValorC,TotalBC,ValorGeral   : Real;
ValorGeralPedidoM,TotalB,TotalC                 : String;



begin

  with dmModule do begin

    ConfirmaMSG := Application.MessageBox('Confirma a exclusão?','Notificação:Exclusão de Produto',+MB_YESNO+MB_ICONQUESTION);

    if ConfirmaMSG = 6 Then begin


      ibPedVenda.Close;
      ibPedVenda.SQL.Clear;
      ibPedVenda.SQl.Add('DELETE FROM TBLPEDIDODEVENDA  WHERE IDPEDIDO=''' + IntToStr(IDProdutoPedido) + '''');
      ibPedVenda.ExecSQL;
      Commit(ibPedVenda);

      ibPedVenda.Close;
      ibPedVenda.SQL.Clear;
      ibPedVenda.SQL.Add('SELECT TBLPEDIDODEVENDA.*,CADPRODUTOS.NOME As Produto,'
      + 'CADPRODUTOS.CODBARRAS,TBLCADASTRO.NOME As Cliente FROM TBLPEDIDODEVENDA '
      + 'INNER JOIN CADPRODUTOS ON TBLPEDIDODEVENDA.IDPROD=CADPRODUTOS.IDPROD '
      + 'INNER JOIN TBLCADASTRO ON TBLPEDIDODEVENDA.IDCLIENTE=TBLCADASTRO.IDCAD '
      + 'WHERE TBLPEDIDODEVENDA.IDNUMPEDIDO =''' + lbl_edtNumPedido.Text + '''');
      ibPedVenda.Open;

     (ibPedVenda.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
     (ibPedVenda.FieldByName('VALORB') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
     (ibPedVenda.FieldByName('VALORC') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO


     (ibPedVenda.FieldByName('VLRPROD') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
     FormatFloat('0',ibPedVenda.FieldByName('QTDEPROD').AsFloat); //CRIA UMA MASCARA PARA O CAMPO

////////////////////////////////////////////////////////////////////////////////

    while not ibPedVenda.Eof do begin//enquanto nao for fim de registro

          if (ValorPedidoM = 0) and (ValorB = 0) and (ValorC = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorPedidoM := StrtoFloat(StringReplace(FloattoStr(ibPedVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

            ValorB := StrToFloat(StringReplace(FloatToStr(ibPedVenda.FieldByName('VALORB').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

            ValorC := StrToFloat(StringReplace(FloatToStr(ibPedVenda.FieldByName('VALORC').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorGeralPedidoM := StringReplace(FloattoStr(ibPedVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            TotalB := StringReplace(FloatToStr(ibPedVenda.FieldByName('VALORB').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            TotalC := StringReplace(FloatToStr(ibPedVenda.FieldByName('VALORC').AsFloat),ThousandSeparator,'',[rfReplaceAll]);


            //atribui a variavel o valor separando por ponto
            ValorPedidoM := ValorPedidoM + StrtoFloat(StringReplace(ValorGeralPedidoM,ThousandSeparator,'',[rfReplaceAll]));

            ValorB := ValorB + StrToFloat(StringReplace(TotalB,ThousandSeparator,'',[rfReplaceAll]));

            ValorC := ValorC + StrToFloat(StringReplace(TotalC,ThousandSeparator,'',[rfReplaceAll]));

           end;{if}

           TotalBC := ValorB + ValorC;

            if (TotalBC = 0)  Then begin

              ValorGeral :=  ValorPedidoM;

            end else begin

              ValorGeral := TotalBC + ValorPedidoM;


            end;


          ibPedVenda.Next;//vai para o pproximo registro pro looping nao ficar infinito.

        end;{while}


     lbl_edtTotalPed.Text   := FormatFloat(CasasDecimais('Produtos'),ValorGeral);
     lbl_edtTotalGeral.Text := lbl_edtTotalPed.Text;
     
////////////////////////////////////////////////////////////////////////////////

   if cboProduto.ItemIndex > -1 Then begin


    ClassProdEstoque    := TClasseCombo( cboProduto.Items.Objects[cboProduto.ItemIndex] );
   // StringProdEstoque   := ' ''' + InttoStr( ClassProdEstoque.ID ) + ''',';

    ibEntrProdEstoque.Close;
    ibEntrProdEstoque.SQL.Clear;
    ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,'
    + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,TBLENTRADAESTOQUEPROD.ESTOQUEMIN,'
    + 'CADPRODUTOS.VALORVENDAA,CADPRODUTOS.TIPOPROD FROM TBLENTRADAESTOQUEPROD '
    + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
    + 'WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + IntToStr(ClassProdEstoque.ID) + '''');
    ibEntrProdEstoque.Open;

    //ROTINA ABAIXO PARA SOMAR TOTAL DO ESTQUE E QUANTIDADE DO ESTOQUE

    //traz na variavel a qtde conf. prod da select identificado por id.
    QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
   // QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),DecimalSeparator,',',[rfReplaceAll]));

    QtdeVenda   := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));

    QtdeEstoque := QtdeEstoque + QtdeVenda;

    EstoqueFinal := StringReplace(FloattoStr(QtdeEstoque),ThousandSeparator,'',[rfReplaceAll]);
    EstoqueFinal := StringReplace(EstoqueFinal,DecimalSeparator,'.',[rfReplaceAll]);

    //AQUI VAI O CALCULO DO TOTAL CONFORME VENDE O PRODUTO
    VlrProduto  := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORVENDAA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

    VlrProduto  := QtdeEstoque * VlrProduto;

    TotalProdEstoque := StringReplace(FloattoStr(VlrProduto),ThousandSeparator,'',[rfReplaceAll]);
    TotalProdEstoque := StringReplace(TotalProdEstoque,DecimalSeparator,'.',[rfReplaceAll]);

     //se houver registro ele atribui na alteracao o vlr da variavel
     if ibEntrProdEstoque.RecordCount > 0 Then begin

       ibEntrProdEstoque.Close;
       ibEntrProdEstoque.SQL.Clear;
       ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
       +'QUANTIDADE=''' + (EstoqueFinal) + ''','
       +'VLRTOTAL=''' + (TotalProdEstoque) +  ''' WHERE IDPROD=''' + IntToStr(ClassProdEstoque.ID) + '''');
       ibEntrProdEstoque.ExecSQL;
       Commit(ibEntrProdEstoque);

     end;{if}

   end;  
////////////////////////////////////////////////////////////////////////////////



    end;{if confirmamsg}

  end;{with}

end;

procedure TfrmPedidodeVenda.lbl_edtPedidoNumeroKeyPress(Sender: TObject;
  var Key: Char);

var

i,IDCliente : Integer;
ClienteAvulso : String;

begin

  with dmModule do begin

    if Key =#13 Then begin

        Commit(ibManutPedVenda);
        ibManutPedVenda.Close;
        ibManutPedVenda.SQL.Clear;
        ibManutPedVenda.SQL.Add('SELECT * FROM TBLPEDIDODEVENDA WHERE IDNUMPEDIDO =''' + lbl_edtPedidoNumero.Text + '''');
        ibManutPedVenda.Open;

       if ibManutPedVenda.FieldByName('IDNUMPEDIDO').AsInteger = 0 Then begin

       Application.MessageBox('Ainda não existe pedido com este número','Notificação: Pedido não emitido',+MB_OK+MB_ICONQUESTION);

       end;

        IDCliente     := ibManutPedVenda.FieldByName('IDCLIENTE').AsInteger;
      //  ClienteAvulso := ibManutPedVenda.FieldByName('CLIENTEAVULSO').AsString;

      if IDCliente > 0 Then begin

        Commit(ibManutPedVenda);
        ibManutPedVenda.Close;
        ibManutPedVenda.SQL.Clear;
        ibManutPedVenda.SQL.Add('SELECT TBLPEDIDODEVENDA.*,CADPRODUTOS.NOME As Produto,'
        + 'CADPRODUTOS.CODBARRAS,CADPRODUTOS.IDPROD,TBLCADASTRO.NOME As Cliente,'
        + 'TBLCADDOCUMENTACAO.CODIGO FROM TBLPEDIDODEVENDA '
        + 'INNER JOIN TBLCADDOCUMENTACAO ON TBLPEDIDODEVENDA.IDCLIENTE=TBLCADDOCUMENTACAO.IDCAD '
        + 'INNER JOIN CADPRODUTOS ON TBLPEDIDODEVENDA.IDPROD=CADPRODUTOS.IDPROD '
        + 'INNER JOIN TBLCADASTRO ON TBLPEDIDODEVENDA.IDCLIENTE=TBLCADASTRO.IDCAD '
        + 'WHERE TBLPEDIDODEVENDA.IDNUMPEDIDO =''' + lbl_edtPedidoNumero.Text + '''');
        ibManutPedVenda.Open;

       (ibManutPedVenda.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
       (ibManutPedVenda.FieldByName('VALORB') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
       (ibManutPedVenda.FieldByName('VALORC') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO


       (ibManutPedVenda.FieldByName('VLRPROD') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
       FormatFloat('0',ibManutPedVenda.FieldByName('QTDEPROD').AsFloat); //CRIA UMA MASCARA PARA O CAMPO

       if ibManutPedVenda.RecordCount > 0 Then begin

       lbl_edtCodManut.Text              := ibManutPedVenda.FieldByName('CODIGO').AsString;
   //    lbl_edtClienteAvulso.Text         := ibManutPedVenda.FieldByName('CLIENTEAVULSO').AsString;
       lbl_edtDDDCliManutPed.Text        := ibManutPedVenda.FieldByName('DDDCLI').AsString;
       lbl_edtTelefoneCliManutPed.Text   := ibManutPedVenda.FieldByName('FONECLI').AsString;
       lbl_edtCpfManutPed.Text           := ibManutPedVenda.FieldByName('CPF_CNPJ').AsString;
       lbl_edtRgManutPed.Text            := ibManutPedVenda.FieldByName('RG').AsString;
       dtpDataPedManut.Date              := ibManutPedVenda.FieldByName('DATA').AsDateTime;

       end;

      for i:=0 to cboClienteM.Items.Count -1 do begin
        if TClasseCombo( cboClienteM.Items.Objects[i]).ID = ibManutPedVenda.FieldByName('IDCLIENTE').AsInteger then begin
          cboClienteM.ItemIndex:= i;
          Break;
        end else begin
          cboClienteM.ClearSelection;
        end;
      end;


      end;{if idcliente}


      if ClienteAvulso <> '' Then begin

        Commit(ibManutPedVenda);
        ibManutPedVenda.Close;
        ibManutPedVenda.SQL.Clear;
        ibManutPedVenda.SQL.Add('SELECT TBLPEDIDODEVENDA.*,CADPRODUTOS.NOME As Produto,'
        + 'CADPRODUTOS.CODBARRAS,CADPRODUTOS.IDPROD FROM TBLPEDIDODEVENDA '
        + 'INNER JOIN CADPRODUTOS ON TBLPEDIDODEVENDA.IDPROD=CADPRODUTOS.IDPROD '
        + 'WHERE TBLPEDIDODEVENDA.IDNUMPEDIDO =''' + lbl_edtPedidoNumero.Text + '''');
        ibManutPedVenda.Open;

       (ibManutPedVenda.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
       (ibManutPedVenda.FieldByName('VALORB') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
       (ibManutPedVenda.FieldByName('VALORC') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO


       (ibManutPedVenda.FieldByName('VLRPROD') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
       FormatFloat('0',ibManutPedVenda.FieldByName('QTDEPROD').AsFloat); //CRIA UMA MASCARA PARA O CAMPO


       if ibManutPedVenda.RecordCount > 0 Then begin

    //   lbl_edtClienteAvulso.Text         := ibManutPedVenda.FieldByName('CLIENTEAVULSO').AsString;
       lbl_edtDDDCliManutPed.Text        := ibManutPedVenda.FieldByName('DDDCLI').AsString;
       lbl_edtTelefoneCliManutPed.Text   := ibManutPedVenda.FieldByName('FONECLI').AsString;
       lbl_edtCpfManutPed.Text           := ibManutPedVenda.FieldByName('CPF_CNPJ').AsString;
       lbl_edtRgManutPed.Text            := ibManutPedVenda.FieldByName('RG').AsString;
       dtpDataPedManut.Date              := ibManutPedVenda.FieldByName('DATA').AsDateTime;

       end;


      end;{if idcliente}




     lbl_edtPedidoNumeroExit(Sender);

    end;{if}

  end;{with}

end;

procedure TfrmPedidodeVenda.dbgManutPedCellClick(Column: TColumn);

var

i : Integer;

begin

  with dmModule do begin

  IDProdManutencao := ibManutPedVenda.FieldByName('IDPEDIDO').AsInteger;

    if ibManutPedVenda.RecordCount > 0 Then begin

      lbl_edtVlrProdM.Text              := FormatFloat(CasasDecimais('Produtos'),ibManutPedVenda.FieldByName('VLRPROD').AsFloat);
      lbl_edtTotalProdM.Text            := FormatFloat(CasasDecimais('Produtos'),ibManutPedVenda.FieldByName('VLRTOTAL').AsFloat);
      lbl_edtQtdeProdM.Text             := FormatFloat(CasasDecimais('Produtos'),ibManutPedVenda.FieldByName('QTDEPROD').AsFloat);
      lbl_edtCodProd.Text               := ibManutPedVenda.FieldByName('IDPROD').AsString;
    //  lbl_edtClienteAvulso.Text         := ibManutPedVenda.FieldByName('CLIENTEAVULSO').AsString;

    end;{if}

    for i:=0 to cboProdM.Items.Count -1 do begin
      if TClasseCombo( cboProdM.Items.Objects[i]).ID = ibManutPedVenda.FieldByName('IDPROD').AsInteger then begin
        cboProdM.ItemIndex:= i;
        Break;
      end else begin
        cboProdM.ClearSelection;
      end;
    end;

    ProdutoClicadoManutencao := StrToFloat(StringReplace(lbl_edtQtdeProdM.Text,ThousandSeparator,'',[rfReplaceAll]));

    lbl_edtQtdeProdM.SetFocus;

  end;{with}

end;



procedure TfrmPedidodeVenda.lbl_edtQtdeProdMExit(Sender: TObject);

var

Valor1,Valor2,Valor3,Valor4 : Real;

begin
  if lbl_edtQtdeProdM.Text <> '' Then begin// se for em branco executa rotina abaixo.

    if (Pos(',',lbl_edtQtdeProdM.Text)>0) and (lbl_edtQtdeProdM.Text <> '') Then begin

      Valor1 := StrToFloat(StringReplace(lbl_edtQtdeProdM.Text,ThousandSeparator,'',[rfReplaceAll]));
      Valor2 := StrToFloat(StringReplace(lbl_edtVlrProdM.Text,ThousandSeparator,'',[rfReplaceAll]));

      lbl_edtTotalProdM.Text := FormatFloat(',0.00',(Valor2 * Valor1));

    end else begin

      Valor1 := StrToFloat(StringReplace(lbl_edtQtdeProdM.Text,ThousandSeparator,'',[rfReplaceAll]));
      Valor2 := StrToFloat(StringReplace(lbl_edtVlrProdM.Text,ThousandSeparator,'',[rfReplaceAll]));
      lbl_edtTotalProdM.Text := FormatFloat(',0.00',(Valor2 * Valor1));


    end;{if}

  end;{if}

end;

procedure TfrmPedidodeVenda.lbl_edtQtdeProdMKeyPress(Sender: TObject;
  var Key: Char);
begin

  if Key = #13 Then begin

    lbl_edtTotalProdM.SetFocus;

  end;{if}

end;

procedure TfrmPedidodeVenda.ibeaAlterarManutClick(Sender: TObject);

var

ValorProdAtual : Real;
ValorProdAlterado : String;

begin

  with dmModule do begin

    ConfirmaMSG := Application.MessageBox('Confirma alteração?','Notificação:Alteração no Produto',+MB_YESNO+MB_ICONQUESTION);

    if ConfirmaMSG = 6 Then begin

      AlteraProdM := StringReplace(lbl_edtTotalProdM.Text,ThousandSeparator,'',[rfReplaceAll]);
      AlteraProdM := StringReplace(AlteraProdM,DecimalSeparator,'.',[rfReplaceAll]);
      if AlteraProdM = '' Then
         AlteraProdM := '0';

      AlteraQtdeM := StringReplace(lbl_edtQtdeProdM.Text,ThousandSeparator,'',[rfReplaceAll]);
      AlteraQtdeM := StringReplace(AlteraQtdeM,DecimalSeparator,'.',[rfReplaceAll]);
      if AlteraQtdeM = '' Then
      AlteraQtdeM := '0';


      ibManutPedVenda.Close;
      ibManutPedVenda.SQL.Clear;
      ibManutPedVenda.SQl.Add('UPDATE TBLPEDIDODEVENDA SET '
      + 'VLRTOTAL=''' + AlteraProdM + ''','
      + 'QTDEPROD=''' + AlteraQtdeM + ''' WHERE IDPEDIDO=''' + IntToStr(IDProdManutencao) + '''');
      ibManutPedVenda.ExecSQL;
      Commit(ibManutPedVenda);

        ibManutPedVenda.Close;
        ibManutPedVenda.SQL.Clear;
        ibManutPedVenda.SQL.Add('SELECT TBLPEDIDODEVENDA.*,CADPRODUTOS.NOME As Produto,'
        + 'CADPRODUTOS.CODBARRAS,TBLCADASTRO.NOME As Cliente,'
        + 'TBLCADDOCUMENTACAO.CODIGO FROM TBLPEDIDODEVENDA '
        + 'INNER JOIN TBLCADDOCUMENTACAO ON TBLPEDIDODEVENDA.IDCLIENTE=TBLCADDOCUMENTACAO.IDCAD '
        + 'INNER JOIN CADPRODUTOS ON TBLPEDIDODEVENDA.IDPROD=CADPRODUTOS.IDPROD '
        + 'INNER JOIN TBLCADASTRO ON TBLPEDIDODEVENDA.IDCLIENTE=TBLCADASTRO.IDCAD '
        + 'WHERE TBLPEDIDODEVENDA.IDNUMPEDIDO =''' + lbl_edtPedidoNumero.Text + '''');
        ibManutPedVenda.Open;

       (ibManutPedVenda.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
       (ibManutPedVenda.FieldByName('VLRPROD') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
       FormatFloat('0',ibManutPedVenda.FieldByName('QTDEPROD').AsFloat); //CRIA UMA MASCARA PARA O CAMPO


////////////////////////////////////////////////////////////////////////////////

   if cboProdM.ItemIndex > -1 Then begin

   IDSelecionaProdM := TClasseCombo( cboProdM.Items.Objects[cboProdM.ItemIndex] );

    ibEntrProdEstoque.Close;
    ibEntrProdEstoque.SQL.Clear;      
    ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,'
    + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,'
    + 'TBLENTRADAESTOQUEPROD.ESTOQUEMIN,CADPRODUTOS.NOME,'
    + 'CADPRODUTOS.VALORVENDAA,CADPRODUTOS.TIPOPROD FROM TBLENTRADAESTOQUEPROD '
    + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
    + 'WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + IntToStr(IDSelecionaProdM.ID) + '''');
    ibEntrProdEstoque.Open;

    //ROTINA ABAIXO PARA SOMAR TOTAL DO ESTQUE E QUANTIDADE DO ESTOQUE

    QtdeEstoqueManutencao := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
   // QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),DecimalSeparator,',',[rfReplaceAll]));

    QtdeEstoqueManutencao := QtdeEstoqueManutencao + ProdutoClicadoManutencao;

    QtdeVendaManutencao   := StrToFloat(StringReplace(lbl_edtQtdeProdM.Text,ThousandSeparator,'',[rfReplaceAll]));

    QtdeEstoqueManutencao := QtdeEstoqueManutencao - QtdeVendaManutencao;


    EstoqueFinalManutencao := StringReplace(FloattoStr(QtdeEstoqueManutencao),ThousandSeparator,'',[rfReplaceAll]);
    EstoqueFinalManutencao := StringReplace(EstoqueFinalManutencao,DecimalSeparator,'.',[rfReplaceAll]);

    //AQUI VAI O CALCULO DO TOTAL CONFORME VENDE O PRODUTO

    VlrProdutoManutencao  := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORVENDAA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
   // VlrProduto  := StrtoFloat(StringReplace(lbl_edtTotalProd.Text,ThousandSeparator,'',[rfReplaceAll]));

    VlrProdutoManutencao  := QtdeEstoqueManutencao * VlrProdutoManutencao;

    TotalProdEstoqueManutencao := StringReplace(FloattoStr(VlrProdutoManutencao),ThousandSeparator,'',[rfReplaceAll]);
    TotalProdEstoqueManutencao := StringReplace(TotalProdEstoqueManutencao,DecimalSeparator,'.',[rfReplaceAll]);

     //se houver registro ele atribui na alteracao o vlr da variavel
     if ibEntrProdEstoque.RecordCount > 0 Then begin


     { if (ibEntrProdEstoque.FieldByName('QUANTIDADE').AsInteger < ibEntrProdEstoque.FieldByName('ESTOQUEMIN').AsInteger) then begin

      Application.MessageBox('Atenção o Estoque está em sua Quantidade Mínima!!!','Notificação: Estoque inferior ao mínimo.',+MB_OK+MB_ICONWARNING);

      end;  }

       ibEntrProdEstoque.Close;
       ibEntrProdEstoque.SQL.Clear;
       ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
       +'QUANTIDADE=''' + (EstoqueFinalManutencao) + ''','
       +'VLRTOTAL=''' + (TotalProdEstoqueManutencao) +  ''' WHERE IDPROD=''' + IntToStr(IDSelecionaProdM.ID) + '''');
       ibEntrProdEstoque.ExecSQL;
       Commit(ibEntrProdEstoque);

     end;{if}

    end;


///////////////////////////////////////////////////////////////////////////////
     while not ibManutPedVenda.Eof do begin

       if ValorProdAtual = 0 Then begin

         ValorProdAtual := StrToFloat(StringReplace(FloatToStr(ibManutPedVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

       end else begin

         ValorProdAlterado := StringReplace(FloattoStr(ibManutPedVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

         ValorProdAtual := ValorProdAtual + StrtoFloat(StringReplace(ValorProdAlterado,ThousandSeparator,'',[rfReplaceAll]));

       end;{if}


       ibManutPedVenda.Next;

     end;{while}


     lbl_edtTotalP.Text   := FormatFloat(CasasDecimais('Produtos'),ValorProdAtual);

////////////////////////////////////////////////////////////////////////////////

    end;{if confirmamsg}

  end;{with}


end;

procedure TfrmPedidodeVenda.ibeaExcluirManutClick(Sender: TObject);

var

ValorProdAtual : Real;
ValorProdAlterado : String;

begin

  with dmModule do begin

    ConfirmaMSG := Application.MessageBox('Confirma a exclusão?','Notificação:Excluisão de Produto',+MB_YESNO+MB_ICONQUESTION);

    if ConfirmaMSG = 6 Then begin

      AlteraProdM := StringReplace(lbl_edtTotalProdM.Text,ThousandSeparator,'',[rfReplaceAll]);
      AlteraProdM := StringReplace(AlteraProdM,DecimalSeparator,'.',[rfReplaceAll]);
      if AlteraProdM = '' Then
         AlteraProdM := '0';

      AlteraQtdeM := StringReplace(lbl_edtQtdeProdM.Text,ThousandSeparator,'',[rfReplaceAll]);
      AlteraQtdeM := StringReplace(AlteraQtdeM,DecimalSeparator,'.',[rfReplaceAll]);
      if AlteraQtdeM = '' Then
      AlteraQtdeM := '0';

      if cboProdM.Text <> '' Then begin

      ibManutPedVenda.Close;
      ibManutPedVenda.SQL.Clear;
      ibManutPedVenda.SQl.Add('DELETE FROM TBLPEDIDODEVENDA WHERE IDPEDIDO=''' + IntToStr(IDProdManutencao) + '''');
      ibManutPedVenda.ExecSQL;
      Commit(ibManutPedVenda);

      end else begin

      ConfirmaMSG := Application.MessageBox('Sem selecionar um produto abaixo esta opção deleta o pedido inteiro, deseja continuar?','Notitficação:Exclusão do Pedido',+MB_YESNO+MB_ICONWARNING);

        if ConfirmaMSG = 6 Then begin

          ibManutPedVenda.Close;
          ibManutPedVenda.SQL.Clear;
          ibManutPedVenda.SQl.Add('DELETE FROM TBLPEDIDODEVENDA WHERE IDNUMPEDIDO=''' + lbl_edtPedidoNumero.Text + '''');
          ibManutPedVenda.ExecSQL;
          Commit(ibManutPedVenda);

        end;{if confirmamsg}

      end;

      ibManutPedVenda.Close;
      ibManutPedVenda.SQL.Clear;
      ibManutPedVenda.SQL.Add('SELECT TBLPEDIDODEVENDA.*,CADPRODUTOS.NOME As Produto,'
      + 'CADPRODUTOS.CODBARRAS,TBLCADASTRO.NOME As Cliente,'
      + 'TBLCADDOCUMENTACAO.CODIGO FROM TBLPEDIDODEVENDA '
      + 'INNER JOIN TBLCADDOCUMENTACAO ON TBLPEDIDODEVENDA.IDCLIENTE=TBLCADDOCUMENTACAO.IDCAD '
      + 'INNER JOIN CADPRODUTOS ON TBLPEDIDODEVENDA.IDPROD=CADPRODUTOS.IDPROD '
      + 'INNER JOIN TBLCADASTRO ON TBLPEDIDODEVENDA.IDCLIENTE=TBLCADASTRO.IDCAD '
      + 'WHERE TBLPEDIDODEVENDA.IDNUMPEDIDO =''' + lbl_edtPedidoNumero.Text + '''');
      ibManutPedVenda.Open;

      (ibManutPedVenda.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibManutPedVenda.FieldByName('VLRPROD') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      FormatFloat('0',ibManutPedVenda.FieldByName('QTDEPROD').AsFloat); //CRIA UMA MASCARA PARA O CAMPO

////////////////////////////////////////////////////////////////////////////////

   if cboProdM.ItemIndex > -1 Then begin

   IDSelecionaProdM := TClasseCombo( cboProdM.Items.Objects[cboProdM.ItemIndex] );

    ibEntrProdEstoque.Close;
    ibEntrProdEstoque.SQL.Clear;
    ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,'
    + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,'
    + 'TBLENTRADAESTOQUEPROD.ESTOQUEMIN,CADPRODUTOS.NOME,'
    + 'CADPRODUTOS.VALORVENDAA,CADPRODUTOS.TIPOPROD FROM TBLENTRADAESTOQUEPROD '
    + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
    + 'WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + IntToStr(IDSelecionaProdM.ID) + '''');
    ibEntrProdEstoque.Open;

    //ROTINA ABAIXO PARA SOMAR TOTAL DO ESTQUE E QUANTIDADE DO ESTOQUE

    QtdeEstoqueManutencao := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
   // QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),DecimalSeparator,',',[rfReplaceAll]));

    QtdeVendaManutencao   := StrToFloat(StringReplace(lbl_edtQtdeProdM.Text,ThousandSeparator,'',[rfReplaceAll]));

    QtdeEstoqueManutencao := QtdeEstoqueManutencao + QtdeVendaManutencao;


    EstoqueFinalManutencao := StringReplace(FloattoStr(QtdeEstoqueManutencao),ThousandSeparator,'',[rfReplaceAll]);
    EstoqueFinalManutencao := StringReplace(EstoqueFinalManutencao,DecimalSeparator,'.',[rfReplaceAll]);

    //AQUI VAI O CALCULO DO TOTAL CONFORME VENDE O PRODUTO

    VlrProdutoManutencao  := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORVENDAA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
   // VlrProduto  := StrtoFloat(StringReplace(lbl_edtTotalProd.Text,ThousandSeparator,'',[rfReplaceAll]));

    VlrProdutoManutencao  := QtdeEstoqueManutencao * VlrProdutoManutencao;

    TotalProdEstoqueManutencao := StringReplace(FloattoStr(VlrProdutoManutencao),ThousandSeparator,'',[rfReplaceAll]);
    TotalProdEstoqueManutencao := StringReplace(TotalProdEstoqueManutencao,DecimalSeparator,'.',[rfReplaceAll]);

     //se houver registro ele atribui na alteracao o vlr da variavel
     if ibEntrProdEstoque.RecordCount > 0 Then begin

       ibEntrProdEstoque.Close;
       ibEntrProdEstoque.SQL.Clear;
       ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
       +'QUANTIDADE=''' + (EstoqueFinalManutencao) + ''','
       +'VLRTOTAL=''' + (TotalProdEstoqueManutencao) +  ''' WHERE IDPROD=''' + IntToStr(IDSelecionaProdM.ID) + '''');
       ibEntrProdEstoque.ExecSQL;
       Commit(ibEntrProdEstoque);

     end;{if}

    end;

///////////////////////////////////////////////////////////////////////////////

     while not ibManutPedVenda.Eof do begin

       if ValorProdAtual = 0 Then begin

         ValorProdAtual := StrToFloat(StringReplace(FloatToStr(ibManutPedVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

       end else begin

         ValorProdAlterado := StringReplace(FloattoStr(ibManutPedVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

         ValorProdAtual := ValorProdAtual + StrtoFloat(StringReplace(ValorProdAlterado,ThousandSeparator,'',[rfReplaceAll]));

       end;{if}


       ibManutPedVenda.Next;

     end;{while}


     lbl_edtTotalP.Text   := FormatFloat(CasasDecimais('Produtos'),ValorProdAtual);

////////////////////////////////////////////////////////////////////////////////

    end;{if confirmamsg}

  end;{with}


end;

procedure TfrmPedidodeVenda.ibeaIncluirProdMClick(Sender: TObject);

var

Valor1,Valor2,Valor3 : Real;

begin

  with dmModule do begin

    ConfirmaMSG := Application.MessageBox('Este procedimento acrescenta mercadoria em um pedido já lançado?','Notificação:Incluir Produto em Pedido já lançado',+MB_YESNO+MB_ICONQUESTION);

    if ConfirmaMSG = 6 then begin

      If cboProdM.ItemIndex = -1 Then begin

       // IncluirProd := False;
        Application.MessageBox('Informe o Produto','Notificação: Produto não especificado',MB_OK+MB_ICONERROR);

      end else begin

        IDClassGravaProdM   := TClasseCombo( cboProdM.Items.Objects[cboProdM.ItemIndex] );
        StringGravaProdM  := ' ''' + InttoStr( IDClassGravaProdM.ID ) + ''',';

      end;{ifcboproduto}

      if cboClienteM.ItemIndex = -1 Then begin

        StringGravaCliM  := ' '' 0 '' ';

      end else begin

        IDClassGravaCliM := TClasseCombo(cboClienteM.Items.Objects[cboClienteM.ItemIndex]);
        StringGravaCliM  := ' ''' + IntToStr(IDClassGravaCliM.ID) + ''',';

      end;{ifcbocliente}

      if cboFornecedorManutP.ItemIndex = -1 Then begin

        StringGravaFornManutP := ' ''0'' ';

      end else begin

        IDGravaFornManutP     := TClasseCombo(cboFornecedorManutP.Items.Objects[cboFornecedorManutP.ItemIndex]);
        StringGravaFornManutP := ' ''' + IntToStr(IDGravaFornManutP.ID) + ''','

      end;//if

        GravaTotalProdM := StringReplace(lbl_edtTotalProdM.Text,ThousandSeparator,'',[rfReplaceAll]);
        GravaTotalProdM := StringReplace(GravaTotalProdM,DecimalSeparator,'.',[rfReplaceAll]);
        if GravaTotalProdM = '' Then
           GravaTotalProdM := '0';


        GravaProdM := StringReplace(lbl_edtVlrProdM.Text,ThousandSeparator,'',[rfReplaceAll]);
        GravaProdM := StringReplace(GravaProdM,DecimalSeparator,'.',[rfReplaceAll]);
        if GravaProdM = '' Then
           GravaProdM := '0';



        GravaQtdeM := StringReplace(lbl_edtQtdeProdM.Text,ThousandSeparator,'',[rfReplaceAll]);
        GravaQtdeM := StringReplace(GravaQtdeM,DecimalSeparator,'.',[rfReplaceAll]);
        if GravaQtdeM = '' Then
        GravaQtdeM := '0';

      if lbl_edtPedidoNumero.Text <> '' Then begin

      NumPedidoM := StrToInt(lbl_edtPedidoNumero.Text);

      end;

      ibManutPedVenda.Close;
      ibManutPedVenda.SQL.Clear;
      ibManutPedVenda.SQL.Add('INSERT INTO TBLPEDIDODEVENDA'
      + '(VENDEDOR,COMISSAO,IDNUMPEDIDO,DATA,HORA,CODCLI,IDCLIENTE,DDDCLI,FONECLI,'
      + 'CPF_CNPJ,RG,IDPROD,QTDEPROD,VLRPROD,VCTOPRODUTO,IDFORNECEDOR,VLRTOTAL) values '
      + '(''' + lbl_edtVendedorM.Text + ''',''' + lbl_edtComissaoM.Text + ''','
      + ' ''' + IntToStr(NumPedidoM) + ''','
      + ' ''' + FormatDateTime('mm-dd-yyyy',dtpDataPedManut.Date) + ''','
      + ' ''' + FormatDateTime('hh:mm:ss',Now) + ''','
      + ' ''' + lbl_edtCodManut.Text + ''','
      + StringGravaCliM
      + ' ''' + lbl_edtDDDCliManutPed.Text + ''',''' + lbl_edtTelefoneCliManutPed.Text + ''','
      + ' ''' + lbl_edtCpfManutPed.Text + ''',''' + lbl_edtRgManutPed.Text + ''','
      + StringGravaProdM
      + ' ''' + GravaQtdeM + ''',''' + GravaProdM + ''','
      + ' ''' + FormatDateTime('mm-dd-yyyy',dtpVctoProd.Date) + ''','
      + StringGravaFornManutP
      + ' ''' + GravaTotalProdM + ''')');
      ibManutPedVenda.ExecSQL;
      Commit(ibManutPedVenda);

  /////////////////////////////////////////////////////////////////////////////////
      if lbl_edtTotalProdM.Text <> '' Then begin// se for em branco executa rotina abaixo.

        if (Pos(',',lbl_edtTotalProdM.Text)>0) and (lbl_edtTotalProdM.Text <> '') Then begin

          Valor1 := StrToFloat(StringReplace(lbl_edtTotalProdM.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor2 := StrToFloat(StringReplace(lbl_edtTotalP.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor3 := (Valor1)+(Valor2);

          lbl_edtTotalP.Text := FormatFloat(',0.00',(Valor3));


        end else begin

          Valor1 := StrToFloat(StringReplace(lbl_edtTotalProdM.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor2 := StrToFloat(StringReplace(lbl_edtTotalP.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor3 := (Valor1)+(Valor2);

          lbl_edtTotalP.Text := FormatFloat(',0.00',(Valor3));

          end;

      end;{if}
  ////////////////////////////////////////////////////////////////////////////////

     if cboProdM.ItemIndex > -1 Then begin

      IDSelecionaProdM := TClasseCombo( cboProdM.Items.Objects[cboProdM.ItemIndex] );

      ibEntrProdEstoque.Close;
      ibEntrProdEstoque.SQL.Clear;
      ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,'
      + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,'
      + 'TBLENTRADAESTOQUEPROD.ESTOQUEMIN,CADPRODUTOS.NOME,'
      + 'CADPRODUTOS.VALORVENDAA,CADPRODUTOS.TIPOPROD FROM TBLENTRADAESTOQUEPROD '
      + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
      + 'WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + IntToStr(IDSelecionaProdM.ID) + '''');
      ibEntrProdEstoque.Open;

      //ROTINA ABAIXO PARA SOMAR TOTAL DO ESTQUE E QUANTIDADE DO ESTOQUE

      QtdeEstoqueManutencao := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
     // QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),DecimalSeparator,',',[rfReplaceAll]));

      QtdeVendaManutencao   := StrToFloat(StringReplace(lbl_edtQtdeProdM.Text,ThousandSeparator,'',[rfReplaceAll]));

      QtdeEstoqueManutencao := QtdeEstoqueManutencao - QtdeVendaManutencao;


      EstoqueFinalManutencao := StringReplace(FloattoStr(QtdeEstoqueManutencao),ThousandSeparator,'',[rfReplaceAll]);
      EstoqueFinalManutencao := StringReplace(EstoqueFinalManutencao,DecimalSeparator,'.',[rfReplaceAll]);

      //AQUI VAI O CALCULO DO TOTAL CONFORME VENDE O PRODUTO

      VlrProdutoManutencao  := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORVENDAA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
     // VlrProduto  := StrtoFloat(StringReplace(lbl_edtTotalProd.Text,ThousandSeparator,'',[rfReplaceAll]));

      VlrProdutoManutencao  := QtdeEstoqueManutencao * VlrProdutoManutencao;

      TotalProdEstoqueManutencao := StringReplace(FloattoStr(VlrProdutoManutencao),ThousandSeparator,'',[rfReplaceAll]);
      TotalProdEstoqueManutencao := StringReplace(TotalProdEstoqueManutencao,DecimalSeparator,'.',[rfReplaceAll]);

       //se houver registro ele atribui na alteracao o vlr da variavel
       if ibEntrProdEstoque.RecordCount > 0 Then begin

         ibEntrProdEstoque.Close;
         ibEntrProdEstoque.SQL.Clear;
         ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
         +'QUANTIDADE=''' + (EstoqueFinalManutencao) + ''','
         +'VLRTOTAL=''' + (TotalProdEstoqueManutencao) +  ''' WHERE IDPROD=''' + IntToStr(IDSelecionaProdM.ID) + '''');
         ibEntrProdEstoque.ExecSQL;
         Commit(ibEntrProdEstoque);

       end;{if}

      end;

  ///////////////////////////////////////////////////////////////////////////////

          TotalSaidaEstoqueM := StringReplace(lbl_edtQtdeProdM.Text,ThousandSeparator,'',[rfReplaceAll]);
          TotalSaidaEstoqueM := StringReplace(TotalSaidaEstoqueM,DecimalSeparator,'.',[rfReplaceAll]);
          if TotalSaidaEstoqueM  = '' Then
           TotalSaidaEstoqueM := '0';

          ibMovEst.Close;
          ibMovEst.SQL.Clear;
          ibMovEst.SQL.Add('INSERT INTO TBLMOVESTOQUE '
          + '(IDPROD,DATA,HORA,SAIDA) values '
          + ' (''' + IntToStr(IDSelecionaProdM.ID) + ''','
          + ' ''' + FormatDateTime('mm-dd-yyyy',now) + ''','
          + ' ''' + FormatDateTime('hh:mm:ss',now) + ''','
          + ' ''' + TotalSaidaEstoqueM + ''')');
          ibMovEst.ExecSQL;
          Commit(ibMovEst);




   //  end;{if cbo produto}

  ////////////////////////////////////////////////////////////////////////////////


    {  if lbl_edtTotalPed.Text <> '' Then begin// se for em branco executa rotina abaixo.

        if (Pos(',',lbl_edtTotalPed.Text)>0) and (lbl_edtTotalPed.Text <> '') Then begin

          Valor2 := StrToFloat(StringReplace(lbl_edtTotalPed.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor3 := StrToFloat(StringReplace(lbl_edtTotalProd.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor4 := (Valor2 + Valor3);
          lbl_edtTotalPed.Text := FormatFloat(',0.00',(Valor4));

        end else begin

          Valor2 := StrToFloat(StringReplace(lbl_edtTotalPed.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor3 := StrToFloat(StringReplace(lbl_edtTotalProd.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor4 := (Valor2 + Valor3);
          lbl_edtTotalPed.Text := FormatFloat(',0.00',(Valor4));}

      //  end;{if}

    //  end;{if}

  ////////////////////////////////////////////////////////////////////////////////

      ibManutPedVenda.Close;
      ibManutPedVenda.SQL.Clear;
      ibManutPedVenda.SQL.Add('SELECT TBLPEDIDODEVENDA.*,CADPRODUTOS.NOME As Produto,'
      + 'CADPRODUTOS.CODBARRAS,TBLCADASTRO.NOME As Cliente FROM TBLPEDIDODEVENDA '
      + 'INNER JOIN CADPRODUTOS ON TBLPEDIDODEVENDA.IDPROD=CADPRODUTOS.IDPROD '
      + 'INNER JOIN TBLCADASTRO ON TBLPEDIDODEVENDA.IDCLIENTE=TBLCADASTRO.IDCAD '
      + 'WHERE TBLPEDIDODEVENDA.IDNUMPEDIDO =''' + lbl_edtPedidoNumero.Text + '''');
      ibManutPedVenda.Open;

     (ibManutPedVenda.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
     (ibManutPedVenda.FieldByName('VLRPROD') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
     FormatFloat('0',ibManutPedVenda.FieldByName('QTDEPROD').AsFloat); //CRIA UMA MASCARA PARA O CAMPO


    { cboProduto.ClearSelection;
     lbl_edtVlrProd.Clear;
     lbl_edtQtde.Clear;
     lbl_edtTotalProd.Clear;
     lbl_CodBarras.Caption := '';
     lbl_NomeProd.Caption := '';
     lbl_Valor.Caption := ''; }

    end;{if confirma msg}
    
  end;{with}

end;

procedure TfrmPedidodeVenda.cboProdMClick(Sender: TObject);

var

i : Integer;

begin

  with dmModule do begin

    if cboProdM.ItemIndex > - 1 Then begin

      IDDadosProdM := TClasseCombo(cboProdM.Items.Objects[cboProdM.ItemIndex]);
      StringDadosProdM := ' IDPROD=''' + IntToStr(IDDadosProdM.ID) + '''';

    end;{if}

    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE ' + StringDadosProdM);
    ibProdutos.Open;

    (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO


    lbl_edtVlrProdM.Text   := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);
    lbl_edtQtdeProdM.Text  := '1';
    lbl_edtTotalProdM.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);
    lbl_edtCodManut.Text   := IntToSTr(ibProdutos.FieldByName('IDPROD').AsInteger);

      for i:=0 to cboFornecedorManutP.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
        if TClasseCombo( cboFornecedorManutP.Items.Objects[i]).ID = ibProdutos.FieldByName('FORNECEDOR').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
          cboFornecedorManutP.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
          Break;
        end else begin
          cboFornecedorManutP.ClearSelection;//LIMPA A SELECAO.
        end;{if}
      end;{for}


  end;{with}

end;

procedure TfrmPedidodeVenda.ibeaVisualizarpedidoClick(Sender: TObject);

var

NumPedidoRelatorio : Integer;

begin
  with dmModule do begin

    if lbl_edtPedidoNumero.Text <> '' Then begin

      NumPedidoRelatorio := StrToInt(lbl_edtPedidoNumero.Text);

    end;

   if cboClienteM.ItemIndex > -1 Then begin

     IDClienteRelatorio := TClasseCombo(cboClienteM.Items.Objects[cboClienteM.ItemIndex]);

   end;

                      // IntToStr(NumPedidoRelatorio)

    Commit(ibPedVenda);
    ibPedVenda.Close;
    ibPedVenda.SQL.Clear;
    ibPedVenda.SQL.Add('SELECT TBLPEDIDODEVENDA.*,'
    + 'CADPRODUTOS.NOME As Produto,CADPRODUTOS.NOMEUNIDVENDA,CADPRODUTOS.REF,TBLCADASTRO.NOME As Fornecedor FROM TBLPEDIDODEVENDA '
    + 'INNER JOIN CADPRODUTOS ON TBLPEDIDODEVENDA.IDPROD=CADPRODUTOS.IDPROD '
    + 'INNER JOIN TBLCADASTRO ON TBLPEDIDODEVENDA.IDCLIENTE=TBLCADASTRO.IDCAD '
    + 'LEFT OUTER JOIN TBLCADASTRO ON TBLPEDIDODEVENDA.IDFORNECEDOR=TBLCADASTRO.IDCAD '
    + 'WHERE TBLPEDIDODEVENDA.IDNUMPEDIDO =''' + lbl_edtPedidoNumero.Text + '''');
    ibPedVenda.Open;

    (ibPedVenda.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibPedVenda.FieldByName('VLRPROD') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    FormatFloat('0',ibPedVenda.FieldByName('QTDEPROD').AsFloat); //CRIA UMA MASCARA PARA O CAMPO   }
    (ibPedVenda.FieldByName('DESCONTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibPedVenda.FieldByName('ACRESCIMO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO



    Application.CreateForm(TfrmRelPedOrcamento, frmRelPedOrcamento);

    TRY

      with frmRelPedOrcamento do begin

        frmRelPedOrcamento.qrpPedOrcamento.dataset := ibPedVenda;

    //  frmRelPedOrcamento.qrpPedOrcamento.DataSet := ibPedVenda;

      qrdbNumPedido.DataSet          := ibPedVenda;
      qrdbNumPedido.DataField        := ibPedVenda.FieldByName('IDNUMPEDIDO').FieldName;

    //  qrdbNomeCliente.DataSet        := ibPedVenda;
    //  qrdbNomeCliente.DataField      := ibPedVenda.FieldByName('Fornecedor').FieldName;

      qrdbCnpj.DataSet               := ibPedVenda;
      qrdbCnpj.DataField             := ibPedVenda.FieldByName('CPF_CNPJ').FieldName;

      qrdbDDD.DataSet                := ibPedVenda;
      qrdbDDD.DataField              := ibPedVenda.FieldByName('DDDCLI').FieldName;

      qrdbFone.DataSet               := ibPedVenda;
      qrdbFone.DataField             := ibPedVenda.FieldByName('FONECLI').FieldName; 


      qrdbProduto.DataSet            := ibPedVenda;
      qrdbProduto.DataField          := ibPedVenda.FieldByName('Produto').FieldName;

      qrdbUnit.DataSet            := ibPedVenda;
      qrdbUnit.DataField          := ibPedVenda.FieldByName('VLRPROD').FieldName;


      qrdbQtde.DataSet               := ibPedVenda;
      qrdbQtde.DataField             := ibPedVenda.FieldByName('QTDEPROD').FieldName;

      qrdbTotal.DataSet           := ibPedVenda;
      qrdbTotal.DataField         := ibPedVenda.FieldByName('VLRTOTAL').FieldName;

      qrdbRef.DataSet           := ibPedVenda;
      qrdbRef.DataField         := ibPedVenda.FieldByName('REF').FieldName;

      qrdbForn.DataSet           := ibPedVenda;
      qrdbForn.DataField         := ibPedVenda.FieldByName('Fornecedor').FieldName;

      qrdbUnidV.DataSet           := ibPedVenda;
      qrdbUnidV.DataField         := ibPedVenda.FieldByName('NOMEUNIDVENDA').FieldName;

      qrdbData.DataSet           := ibPedVenda;
      qrdbData.DataField         := ibPedVenda.FieldByName('DATA').FieldName;

      qrdbDesc.DataSet           := ibPedVenda;
      qrdbDesc.DataField         := ibPedVenda.FieldByName('DESCONTO').FieldName;

      qrdbAcresc.DataSet           := ibPedVenda;
      qrdbAcresc.DataField         := ibPedVenda.FieldByName('ACRESCIMO').FieldName;


     // qrl_DatadeEmissao.Caption := FormatDateTime('dd/mm/yyyy',Now);

      qrlNomeCliente.Caption := cboCliente.Text;
      qrlNomeCliente.Caption := cboClienteM.Text;

      ibDadosEmpresa.Close;
      ibDadosEmpresa.SQL.Clear;
      ibDadosEmpresa.SQL.Add('SELECT * FROM TBLDADOSEMPRESA');
      ibDadosEmpresa.Open;

      qrlEmpresa.Caption := ibDadosEmpresa.FieldByName('NOME').AsString;
      qrlEndereco.Caption := ibDadosEmpresa.FieldByName('ENDERECO').AsString;
      qrlNum.Caption := ibDadosEmpresa.FieldByName('NUMERO').AsString;
      qrlBairro.Caption := ibDadosEmpresa.FieldByName('BAIRRO').AsString;
      qrlEstado.Caption := ibDadosEmpresa.FieldByName('ESTADO').AsString;
      qrlDDDEmpresa.Caption := ibDadosEmpresa.FieldByName('DDD').AsString;
      qrlTelefoneEmpresa.Caption := ibDadosEmpresa.FieldByName('TELEFONE').AsString;

////////////////////////////////////////////////////////////////////////////////

//ConfirmaRelatorio := Application.MessageBox('Deseja Emitir Relatório para e-mail?','relatório para email',+MB_YESNO+MB_ICONQUESTION);

//if ConfirmaRelatorio = 6 Then begin
{ Exemplo 1 }

{qrpPedOrcamento.ExportToFilter(TQRHTMLDocumentFilter.Create(

'C:\ORÇAMENTO.HTML'));}



{ Exemplo 2 }



{qrpPedOrcamento.ExportToFilter(TQRHTMLDocumentFilter.Create(

'C:\ORÇAMENTO.xls'));

qrpPedOrcamento.ExportFilter.Free;

end;//if  }

////////////////////////////////////////////////////////////////////////////////





      qrpPedOrcamento.Preview;
    //  qrpPedOrcamento.Preview;


      end; {if}


    EXCEPT
      on E : Exception do begin
        frmRelPedOrcamento.Release; //frmRelPedOrcamento.Release;
         MessageDlg('Ocorreu um erro ao tentar mostrar o Formulário: ' + E.Message,mtError,[mbOk],0);
      end;
    END;
  //////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////


 { MSWord:= CreateOleObject ('Word.Basic');
  MSWord.AppShow;//mostra o word
  MSWord.FileNew;//inicia um novo documento
  MSWord.insert('RELATÓRIO'); //Escreve algo
  MSWord.insert(#13+'');//Pula uma linha e escreve
  MSWord.FontSize(24);//muda o tamanho da fonte
  MSWord.italic;//coloca italico
  MSWord.bold;//coloca negrito
  MSWord.underline;//sublina
  MSWord.insert(#13+'');//pula a linha e escreve novamente
  MSWord.FontSize(12);//muda o tamanho da fonte
  MSWord.Font('Arial');//muda a fonte usada
  MSWord.underline(false);//retira o sublinhado
  MSWord.italic(false);//retira o italico
  MSWord.bold(false);//retira o bold
  MSWord.insert(ibeaVisualizarpedidoClick(Sender)).value;
 // MSWord.insert(#13+#9 +'teste');//nova linha e um TAB
 // MSWord.insert(#13+ibeaVisualizarpedidoClick(Sender));//insere algo de uma tabela
  MSWord.LineUp(2, 1); //seleciona uma parte do texto
  MSWord.TextToTable(ConvertFrom := 2, NumColumns := 1);// monta uma tabela com o texto selecionado
  MSWord.FileSaveAs('d:\test.txt', 3); //Salva o arquivo  }



////////////////////////////////////////////////////////////////////////////////

  end;{with}

end;

procedure TfrmPedidodeVenda.ibeaAbreRelatorioClick(Sender: TObject);
var

NumPedidoRelatorio : Integer;

begin
  with dmModule do begin

    if lbl_edtNumPedido.Text <> '' Then begin

      NumPedidoRelatorio := StrToInt(lbl_edtNumPedido.Text);

    end;

   if cboClienteM.ItemIndex > -1 Then begin

     IDClienteRelatorio := TClasseCombo(cboCliente.Items.Objects[cboCliente.ItemIndex]);

   end;

    ibPedVenda.Close;
    ibPedVenda.SQL.Clear;
    ibPedVenda.SQL.Add('SELECT TBLPEDIDODEVENDA.*,'
    + 'CADPRODUTOS.NOME As Produto,CADPRODUTOS.NOMEUNIDVENDA,CADPRODUTOS.REF,TBLCADASTRO.NOME As Fornecedor FROM TBLPEDIDODEVENDA '
    + 'INNER JOIN CADPRODUTOS ON TBLPEDIDODEVENDA.IDPROD=CADPRODUTOS.IDPROD '
    + 'INNER JOIN TBLCADASTRO ON TBLPEDIDODEVENDA.IDCLIENTE=TBLCADASTRO.IDCAD '
    + 'INNER JOIN TBLCADASTRO ON TBLPEDIDODEVENDA.IDFORNECEDOR=TBLCADASTRO.IDCAD '
    + 'WHERE TBLPEDIDODEVENDA.IDNUMPEDIDO =''' + IntToStr(NumPedidoRelatorio) + '''');
    ibPedVenda.Open;

    (ibPedVenda.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibPedVenda.FieldByName('VLRPROD') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    FormatFloat('0',ibPedVenda.FieldByName('QTDEPROD').AsFloat); //CRIA UMA MASCARA PARA O CAMPO   }

    Application.CreateForm(TfrmRelPedOrcamento, frmRelPedOrcamento);



    TRY



      with frmRelPedOrcamento do begin

      frmRelPedOrcamento.qrpPedOrcamento.dataset := ibPedVenda;

    {  qrdbNumPedido.DataSet          := ibPedVenda;
      qrdbNumPedido.DataField        := ibPedVenda.FieldByName('IDNUMPEDIDO').FieldName;

      qrdbNomeCliente.DataSet        := ibPedVenda;
      qrdbNomeCliente.DataField      := ibPedVenda.FieldByName('Cliente').FieldName;

      qrdbCnpj.DataSet               := ibPedVenda;
      qrdbCnpj.DataField             := ibPedVenda.FieldByName('CPF_CNPJ').FieldName;

      qrdbDDD.DataSet                := ibPedVenda;
      qrdbDDD.DataField              := ibPedVenda.FieldByName('DDDCLI').FieldName;

      qrdbFone.DataSet               := ibPedVenda;
      qrdbFone.DataField             := ibPedVenda.FieldByName('FONECLI').FieldName; }


      qrdbProduto.DataSet            := ibPedVenda;
      qrdbProduto.DataField          := ibPedVenda.FieldByName('Produto').FieldName;

      qrdbUnit.DataSet            := ibPedVenda;
      qrdbUnit.DataField          := ibPedVenda.FieldByName('VLRPROD').FieldName;


      qrdbQtde.DataSet               := ibPedVenda;
      qrdbQtde.DataField             := ibPedVenda.FieldByName('QTDEPROD').FieldName;

      qrdbTotal.DataSet           := ibPedVenda;
      qrdbTotal.DataField         := ibPedVenda.FieldByName('VLRTOTAL').FieldName;

      qrdbForn.DataSet           := ibPedVenda;
      qrdbForn.DataField         := ibPedVenda.FieldByName('Fornecedor').FieldName;

      qrdbData.DataSet           := ibPedVenda;
      qrdbData.DataField         := ibPedVenda.FieldByName('DATA').FieldName;

      ibDadosEmpresa.Close;
      ibDadosEmpresa.SQL.Clear;
      ibDadosEmpresa.SQL.Add('SELECT * FROM TBLDADOSEMPRESA');
      ibDadosEmpresa.Open;

      qrlEmpresa.Caption := ibDadosEmpresa.FieldByName('NOME').AsString;
      qrlEndereco.Caption := ibDadosEmpresa.FieldByName('ENDERECO').AsString;
      qrlNum.Caption := ibDadosEmpresa.FieldByName('NUMERO').AsString;
      qrlBairro.Caption := ibDadosEmpresa.FieldByName('BAIRRO').AsString;
      qrlEstado.Caption := ibDadosEmpresa.FieldByName('ESTADO').AsString;
      qrlDDDEmpresa.Caption := ibDadosEmpresa.FieldByName('DDD').AsString;
      qrlTelefoneEmpresa.Caption := ibDadosEmpresa.FieldByName('TELEFONE').AsString;
      

{ConfirmaRelatorio := Application.MessageBox('Deseja Emitir Relatório para e-mail?','relatório para email',+MB_YESNO+MB_ICONQUESTION);

if ConfirmaRelatorio = 6 Then begin
{ Exemplo 1 }

{qrpPedOrcamento.ExportToFilter(TQRAsciiExportFilter.Create(

'C:\ORÇAMENTO.TXT'));  }



{ Exemplo 2 }



{qrpPedOrcamento.ExportToFilter(TQRHTMLDocumentFilter.Create(

'C:\ORÇAMENTO.xls'));

qrpPedOrcamento.ExportFilter.Free;

end;//if }





      qrpPedOrcamento.Preview;

      end; {if}


    EXCEPT
      on E : Exception do begin
        frmRelPedOrcamento.Release; //frmRelPedOrcamento.Release;
         MessageDlg('Ocorreu um erro ao tentar mostrar o Formulário: ' + E.Message,mtError,[mbOk],0);
      end;
    END;
  //////////////////////////////////////////////////////////////

  end;{with}


end;

procedure TfrmPedidodeVenda.ibeaHabilitarIncluirClick(Sender: TObject);
begin
  ibeaIncluir.Enabled := True;
end;

procedure TfrmPedidodeVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  with dmModule do begin

    case key of

      VK_f5 :begin

        frmBuscaProdutos.ShowModal;

      end;//begin


      VK_f7 :begin

      cboProduto.ClearSelection;
      lbl_edtVlrProd.Clear;
      lbl_edtQtde.Clear;
      lbl_edtTotalProd.Clear;
      lbl_CodBarras.Caption := '';
      lbl_NomeProd.Caption := '';
      lbl_Valor.Caption := '';
      lbl_TipoPreco.Caption := '';

       end;{begin}




      VK_f8 :begin

     { if lbl_edtCodBarras.Enabled = True Then begin

       lbl_TipoPreco.Caption := 'Preço de Venda B';

      end; }

       lbl_TipoPreco.Caption := 'Preço de Venda(B)';

       if lbl_TipoPreco.Caption = 'Preço de Venda(B)' Then begin

       TipoPreco := 'B';

       end else begin

       TipoPreco := 'A';

       end;

       end;{begin}


      VK_f9 :begin


    {  if lbl_edtCodBarras.Enabled = True Then begin

       lbl_TipoPreco.Caption := 'Preço de Venda C';

      end;  }

      lbl_TipoPreco.Caption := 'Preço de Venda(C)';

       if lbl_TipoPreco.Caption = 'Preço de Venda(C)' Then begin

       TipoPreco := 'C';

       end else begin

       TipoPreco := 'A';

       end;

       end;{begin}


    end;{begin}

  end;{with}


end;

procedure TfrmPedidodeVenda.ibeaPrecoAClick(Sender: TObject);
begin

  lbl_TipoPreco.Caption := 'Preço de Venda(A)';

  if lbl_TipoPreco.Caption = 'Preço de Venda(A)' Then begin

    TipoPreco := 'A';

  end;

end;

procedure TfrmPedidodeVenda.lbl_edtPedidoNumeroExit(Sender: TObject);

var

ValorPedidoM,ValorB,ValorC,TotalBC,ValorGeral   : Real;
ValorGeralPedidoM,TotalB,TotalC                 : String;

begin

  with dmModule do begin

////////////////////////////////////////////////////////////////////////////////

    while not ibManutPedVenda.Eof do begin//enquanto nao for fim de registro

          if (ValorPedidoM = 0) and (ValorB = 0) and (ValorC = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorPedidoM := StrtoFloat(StringReplace(FloattoStr(ibManutPedVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

            ValorB := StrToFloat(StringReplace(FloatToStr(ibManutPedVenda.FieldByName('VALORB').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

            ValorC := StrToFloat(StringReplace(FloatToStr(ibManutPedVenda.FieldByName('VALORC').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorGeralPedidoM := StringReplace(FloattoStr(ibManutPedVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            TotalB := StringReplace(FloatToStr(ibManutPedVenda.FieldByName('VALORB').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            TotalC := StringReplace(FloatToStr(ibManutPedVenda.FieldByName('VALORC').AsFloat),ThousandSeparator,'',[rfReplaceAll]);


            //atribui a variavel o valor separando por ponto
            ValorPedidoM := ValorPedidoM + StrtoFloat(StringReplace(ValorGeralPedidoM,ThousandSeparator,'',[rfReplaceAll]));

            ValorB := ValorB + StrToFloat(StringReplace(TotalB,ThousandSeparator,'',[rfReplaceAll]));

            ValorC := ValorC + StrToFloat(StringReplace(TotalC,ThousandSeparator,'',[rfReplaceAll]));

           end;{if}

           TotalBC := ValorB + ValorC;

            if (TotalBC = 0)  Then begin

              ValorGeral :=  ValorPedidoM;

            end else begin

              ValorGeral := TotalBC + ValorPedidoM;


            end;


          ibManutPedVenda.Next;//vai para o pproximo registro pro looping nao ficar infinito.

        end;{while}

     //  if lbl_edtTotalP.Text = '' Then begin

       lbl_edtTotalP.Text := FormatFloat(CasasDecimais('Produtos'),ValorGeral);

   //   end;
/////////////////////////////////////////////////////////////////////////////////


  end;{with}

end;

procedure TfrmPedidodeVenda.lbl_edtCodExit(Sender: TObject);
var

i : Integer;

begin

  with dmModule do begin

  {  if lbl_edtCod.Text <> '' Then begin

      //LOCALIZA O TELEFONE COMERCIAl
      ibClassificacao.Close;
      ibClassificacao.SQL.Clear;
      ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Com''');
      ibClassificacao.Open;
      IDClassTelcom := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identiicacao do contato de telefone coml. na variavel.

      Commit(ibCadastro);
      ibCadastro.Close;
      ibCadastro.SQL.Clear;
      ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,'
      + 'TBLCONTATO.TIPO,TBLCONTATO.CONTATO,TBLCADDOCUMENTACAO.CODIGO,'
      + 'TBLCADDOCUMENTACAO.CNPJ_CPF,TBLCADDOCUMENTACAO.IE_RG FROM TBLCADASTRO '
      + 'INNER JOIN TBLCONTATO ON TBLCADASTRO.IDCAD=TBLCONTATO.IDCAD '
      + 'INNER JOIN TBLCADDOCUMENTACAO ON TBLCADASTRO.IDCAD=TBLCADDOCUMENTACAO.IDCAD '
      + 'WHERE TBLCADDOCUMENTACAO.CODIGO=''' + lbl_edtCod.Text + ''' and TBLCONTATO.TIPO=''' + IntToStr(IDClassTelcom) + '''');
      ibCadastro.Open;

      if ibCadastro.RecordCount > 0 Then begin

        lbl_edtTelefone.Text   := ibCadastro.FieldByName('CONTATO').AsString;
        lbl_edtCpf.Text        := ibCadastro.FieldByName('CNPJ_CPF').AsString;
        lbl_edtRg.Text         := ibCadastro.FieldByName('IE_RG').AsString;  }

     // end;{if record count}

    {   for i:=0 to cboCliente.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
          if TClasseCombo( cboCliente.Items.Objects[i]).ID = ibCadastro.FieldByName('IDCAD').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
            cboCliente.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
            Break;
          end else begin
            cboCliente.ClearSelection;}//LIMPA A SELECAO.
   //       end;{if}
  //      end;{for}

 //   end;{if}

  end;{with}


end;

procedure TfrmPedidodeVenda.lbl_edtCodKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtTelefone.SetFocus;

  end;{if}

end;

procedure TfrmPedidodeVenda.lbl_edtTelefoneExit(Sender: TObject);
var

i : Integer;
//IDClassTelCom : Integer;

begin

  with dmModule do begin


    if lbl_edtTelefone.Text <> '' Then begin

      lbl_edtTelefone.Text := StringReplace(lbl_edtTelefone.Text,'-','',[rfReplaceAll]);
      lbl_edtTelefone.Text := FormatFloat('0000-0000',StrToFloat(lbl_edtTelefone.Text));

    end;{if}

     { ibClassificacao.Close;
      ibClassificacao.SQL.Clear;
      ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Com''');
      ibClassificacao.Open;
      IDClassTelCom := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO FORNECEDOR NA VARIAVEL.

      ibCadastro.Close;
      ibCadastro.SQL.Clear;
      ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLCADDOCUMENTACAO.CODIGO,'
      + 'TBLCONTATO.CONTATO FROM TBLCADASTRO '
      + 'LEFT OUTER JOIN TBLCADDOCUMENTACAO ON TBLCADASTRO.IDCAD=TBLCADDOCUMENTACAO.IDCAD '
      + 'LEFT OUTER JOIN TBLCONTATO ON TBLCADASTRO.IDCAD=TBLCONTATO.IDCAD '
      + 'WHERE IDCLASS=''' + InttoStr(IDClassTelCom) + ''' and TBLCONTATO.CONTATO=''' + lbl_edtTelefone.Text + '''');
      ibCadastro.Open; }


    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
    ibClassificacao.Open;
    IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO FORNECEDOR NA VARIAVEL.

    ibCadastro.Close;                                                                                    //  and TBLCADASTRO.NOME LIKE '+''''+'%'+lbl_edtNome.text+'%'+'''
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLCONTATO.CONTATO,TBLLOGRADOURO.ENDERECO,'
    +'TBLLOGRADOURO.BAIRRO,TBLLOGRADOURO.CIDADE,TBLLOGRADOURO.ESTADO FROM TBLCADASTRO '
    +'LEFT OUTER JOIN TBLCONTATO ON TBLCADASTRO.IDCAD=TBLCONTATO.IDCAD '
    +'LEFT OUTER JOIN TBLLOGRADOURO ON TBLCADASTRO.IDCAD=TBLLOGRADOURO.IDCAD '
    +'WHERE IDCLASS=''' + InttoStr(IDClass) + ''' and TBLCONTATO.CONTATO=''' + lbl_edtTelefone.Text + '''');
    ibCadastro.Open;  //  + '''

   //   lbl_edtCod.Text := ibCadastro.FieldByName('CODIGO').AsString;

      for i:=0 to cboCliente.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
        if TClasseCombo( cboCliente.Items.Objects[i]).ID = ibCadastro.FieldByName('IDCAD').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
          cboCliente.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
          Break;
        end else begin
          cboCliente.ClearSelection;//LIMPA A SELECAO.
        end;{if}
      end;{for}

     if ibCadastro.RecordCount > 0 Then begin

       lbl_edtEndereco.Text      := ibCadastro.FieldByName('ENDERECO').AsString;
       lbl_edtNumero.Text        := ibCadastro.FieldByName('NUMERO').AsString;
       lbl_edtCompl.Text         := ibCadastro.FieldByName('COMPL').AsString;
       lbl_edtBairro.Text        := ibCadastro.FieldByName('BAIRRO').AsString;
       lbl_edtCidade.Text        := ibCadastro.FieldByName('CIDADE').AsString;
       lbl_edtEstado.Text        := ibCadastro.FieldByName('ESTADO').AsString;

     end;//if record count


    end;{with}


end;

procedure TfrmPedidodeVenda.ibeaLimparCamposClick(Sender: TObject);
begin

//  with dmModule do begin

    rbSim.Checked := False;
    rbNao.Checked := False;
    cboProduto.ClearSelection;
    lbl_edtVlrProd.Clear;
    lbl_edtQtde.Clear;
    lbl_edtTotalProd.Clear;
    lbl_edtTotalPed.Clear;
    lbl_CodBarras.Caption := '';
    lbl_NomeProd.Caption := '';
    lbl_Valor.Caption := '';
    cboCliente.ClearSelection;
    lbl_edtTelefone.Clear;
    lbl_edtCpf.Clear;
    lbl_edtRg.Clear;
    lbl_edtCodBarras.Clear;
    cboFornecedores.ClearSelection;
    cboCondPagto.ClearSelection;

 //   ibProdutos.Close;
 //   ibTempProdNome.Close;

 // end;//with

end;

procedure TfrmPedidodeVenda.lbl_edtTelefoneKeyPress(Sender: TObject;
  var Key: Char);
begin

if key = #13 Then begin

lbl_edtCelular.SetFocus;

end;

end;

procedure TfrmPedidodeVenda.lbl_edtCelularExit(Sender: TObject);

var

i : Integer;

begin

  with dmModule do begin


    if lbl_edtCelular.Text <> '' Then begin

      lbl_edtCelular.Text := StringReplace(lbl_edtCelular.Text,'-','',[rfReplaceAll]);
      lbl_edtCelular.Text := FormatFloat('0000-0000',StrToFloat(lbl_edtCelular.Text));

     { ibClassificacao.Close;
      ibClassificacao.SQL.Clear;
      ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Com''');
      ibClassificacao.Open;
      IDClassTelCom := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO FORNECEDOR NA VARIAVEL.

      ibCadastro.Close;
      ibCadastro.SQL.Clear;
      ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLCADDOCUMENTACAO.CODIGO,'
      + 'TBLCONTATO.CONTATO FROM TBLCADASTRO '
      + 'LEFT OUTER JOIN TBLCADDOCUMENTACAO ON TBLCADASTRO.IDCAD=TBLCADDOCUMENTACAO.IDCAD '
      + 'LEFT OUTER JOIN TBLCONTATO ON TBLCADASTRO.IDCAD=TBLCONTATO.IDCAD '
      + 'WHERE IDCLASS=''' + InttoStr(IDClassTelCom) + ''' and TBLCONTATO.CONTATO=''' + lbl_edtTelefone.Text + '''');
      ibCadastro.Open; }


      ibClassificacao.Close;
      ibClassificacao.SQL.Clear;
      ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
      ibClassificacao.Open;
      IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO FORNECEDOR NA VARIAVEL.

      ibCadastro.Close;                                                                                    //  and TBLCADASTRO.NOME LIKE '+''''+'%'+lbl_edtNome.text+'%'+'''
      ibCadastro.SQL.Clear;
      ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLCONTATO.CONTATO,TBLLOGRADOURO.ENDERECO,'
      +'TBLLOGRADOURO.BAIRRO,TBLLOGRADOURO.CIDADE,TBLLOGRADOURO.ESTADO FROM TBLCADASTRO '
      +'LEFT OUTER JOIN TBLCONTATO ON TBLCADASTRO.IDCAD=TBLCONTATO.IDCAD '
      +'LEFT OUTER JOIN TBLLOGRADOURO ON TBLCADASTRO.IDCAD=TBLLOGRADOURO.IDCAD '
      +'WHERE IDCLASS=''' + InttoStr(IDClass) + ''' and TBLCONTATO.CONTATO=''' + lbl_edtCelular.Text + '''');
      ibCadastro.Open;  //  + '''

     //   lbl_edtCod.Text := ibCadastro.FieldByName('CODIGO').AsString;

        for i:=0 to cboCliente.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
          if TClasseCombo( cboCliente.Items.Objects[i]).ID = ibCadastro.FieldByName('IDCAD').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
            cboCliente.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
            Break;
          end else begin
            cboCliente.ClearSelection;//LIMPA A SELECAO.
          end;{if}
        end;{for}

       if ibCadastro.RecordCount > 0 Then begin

         lbl_edtEndereco.Text      := ibCadastro.FieldByName('ENDERECO').AsString;
         lbl_edtNumero.Text        := ibCadastro.FieldByName('NUMERO').AsString;
         lbl_edtCompl.Text         := ibCadastro.FieldByName('COMPL').AsString;
         lbl_edtBairro.Text        := ibCadastro.FieldByName('BAIRRO').AsString;
         lbl_edtCidade.Text        := ibCadastro.FieldByName('CIDADE').AsString;
         lbl_edtEstado.Text        := ibCadastro.FieldByName('ESTADO').AsString;

       end;//if record count
    end;//if
  end;{with}

end;

procedure TfrmPedidodeVenda.lbl_edtCelularKeyPress(Sender: TObject;
  var Key: Char);
begin

if key = #13 Then begin

lbl_edtTelefone.SetFocus;

end;


end;

procedure TfrmPedidodeVenda.lbl_edtCodBarrasChange(Sender: TObject);
var

i : Integer;

//OleGraphic: TOleGraphic;
//fs: TFileStream;

begin

  with dmModule do begin

    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT CADPRODUTOS.*,LOCALESTOCAGEM.NOME As Estoque FROM CADPRODUTOS '
    + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE '
    + 'WHERE CADPRODUTOS.CODBARRAS=''' + lbl_edtCodBarras.Text + '''');
    ibProdutos.Open;


   { if lbl_TipoPreco.Caption = '' Then begin

      TipoPreco := 'A';

    end; }


 //  lbl_edtCodProd.Text := ibProdutos.FieldByName('IDPROD').AsString;
  //  lbl_edtEstoque.Text := ibProdutos.FieldByName('Estoque').AsString;


       if (lbl_TipoPreco.Caption = '') or (lbl_TipoPreco.Caption = 'Preço de Venda(A)') Then begin

     //  TipoPreco := 'A';

       lbl_edtVlrProd.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);

       end;


       if lbl_TipoPreco.Caption = 'Preço de Venda(B)' Then begin

     //  TipoPreco := 'B';
       lbl_edtVlrProd.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAB').AsFloat);

       end;

       if lbl_TipoPreco.Caption = 'Preço de Venda(C)' Then begin

       //TipoPreco := 'C';
       lbl_edtVlrProd.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAC').AsFloat);

       end;

  {  if  (TipoPreco = 'A') Then begin

    lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);

    end else if  (TipoPreco = 'B') Then begin

    lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAB').AsFloat);

    end else if  (TipoPreco = 'C') Then begin

    lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAC').AsFloat);

    end;  }

    for i:=0 to cboProduto.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
      if TClasseCombo( cboProduto.Items.Objects[i]).ID = ibProdutos.FieldByName('IDPROD').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
        cboProduto.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
        Break;
      end else begin
        cboProduto.ClearSelection;//LIMPA A SELECAO. }
      end;{if}
    end;{for}

    for i:=0 to cboFornecedores.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
      if TClasseCombo( cboFornecedores.Items.Objects[i]).ID = ibProdutos.FieldByName('FORNECEDOR').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
        cboFornecedores.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
        Break;
      end else begin
        cboFornecedores.ClearSelection;//LIMPA A SELECAO. }
      end;{if}
    end;{for}



   { if lbl_edtQtde.Text = '0' then begin

     lbl_edtQtde.Text := '1';

    end; }

  //   lbl_edtQtdeExit(Sender);

  end;{with}

end;

procedure TfrmPedidodeVenda.lbl_edtCodBarrasKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtQtde.SetFocus;

  end;//if

end;

procedure TfrmPedidodeVenda.dbgCliConsultaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

with dmModule do begin
  //SEGUNDA FORMA DE FAZER UMA DBGRID FICAR COLOCRIDA


  if ibPedVendaConsulta.FieldByName('SITUACAOPEDIDO').value = 'Pago' Then begin
  dbgCliConsulta.Canvas.Brush.Color:= clBlue; // coloque aqui a cor desejada
  dbgCliConsulta.Canvas.Font.Color := clWhite; 
  dbgCliConsulta.DefaultDrawDataCell(Rect, dbgCliConsulta.columns[datacol].field, State);
  end else begin
  dbgCliConsulta.Canvas.Brush.Color:= clred; // coloque aqui a cor desejada
  dbgCliConsulta.Canvas.Font.Color:= clWhite;
  dbgCliConsulta.DefaultDrawDataCell(Rect, dbgCliConsulta.columns[datacol].field, State);
  end;
{  If (dbgProdutos.DataSource.DataSet.RecNo div 2) =  (dbgProdutos.DataSource.DataSet.RecNo/2) Then begin

    dbgProdutos.Canvas.Font.Color:= clBlack;
    dbgProdutos.Canvas.Brush.Color:= clskyBlue;

  end else begin

    dbgProdutos.Canvas.Font.Color:= clBlack;
    dbgProdutos.Canvas.Brush.Color:= clWhite;

  end;

      dbgProdutos.Canvas.FillRect(Rect);

    if Column.Field.DataType = ftFloat  Then begin

      dbgProdutos.Canvas.TextOut(Rect.Left+2,Rect.Top,FormatFloat(CasasDecimais('Produtos'), Column.Field.AsFloat));

    end else begin

      dbgProdutos.Canvas.TextOut(Rect.Left+2,Rect.Top,Column.Field.AsString); }

//   end;{if}
end;

//with dmModule do begin

    {  Commit(ibPedVendaConsulta);
      ibPedVendaConsulta.Close;
      ibPedVendaConsulta.SQL.Clear;
      ibPedVendaConsulta.SQL.Add('SELECT * FROM TBLPEDIDODEVENDA');
      ibPedVendaConsulta.Open; }

{if ibPedVendaConsulta.FieldByName('situacaopedido').asstring = 'Pendente' then begin
dbgCliConsulta.Canvas.Font.Color:= clFuchsia; // coloque aqui a cor desejadadbgCliConsulta.DefaultDrawDataCell(Rect, dbgCliConsulta.columns[datacol].field, State);
end; }



{if ibPedVendaConsulta.FieldByName ('SITUACAOPEDIDO').Value = 'Pendente' then

begin

dbgCliConsulta.Canvas.Font.Color := clRed;

dbgCliConsulta.Canvas.Font.Style := [fsBold];

end;   }

//dbgCliConsulta.DefaultDrawDataCell(Rect, Field, State);

//end;//with

end;

procedure TfrmPedidodeVenda.lbl_edtTotalProdKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key =#13 Then begin

   lbl_edtDesc.SetFocus;
   
  end;//if

end;

procedure TfrmPedidodeVenda.lbl_edtTelefoneCliConsultaExit(
  Sender: TObject);

var

i, IDClicons : Integer;
ValorPedidoM,ValorB,ValorC,TotalBC,ValorGeral   : Real;
ValorGeralPedidoM,TotalB,TotalC                 : String;

begin

  with dmModule do begin


    if lbl_edtTelefoneCliConsulta.Text <> '' Then begin

      lbl_edtTelefoneCliConsulta.Text := StringReplace(lbl_edtTelefoneCliConsulta.Text,'-','',[rfReplaceAll]);
      lbl_edtTelefoneCliConsulta.Text := FormatFloat('0000-0000',StrToFloat(lbl_edtTelefoneCliConsulta.Text));

    end;{if}

     { ibClassificacao.Close;
      ibClassificacao.SQL.Clear;
      ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Com''');
      ibClassificacao.Open;
      IDClassTelCom := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO FORNECEDOR NA VARIAVEL.

      ibCadastro.Close;
      ibCadastro.SQL.Clear;
      ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLCADDOCUMENTACAO.CODIGO,'
      + 'TBLCONTATO.CONTATO FROM TBLCADASTRO '
      + 'LEFT OUTER JOIN TBLCADDOCUMENTACAO ON TBLCADASTRO.IDCAD=TBLCADDOCUMENTACAO.IDCAD '
      + 'LEFT OUTER JOIN TBLCONTATO ON TBLCADASTRO.IDCAD=TBLCONTATO.IDCAD '
      + 'WHERE IDCLASS=''' + InttoStr(IDClassTelCom) + ''' and TBLCONTATO.CONTATO=''' + lbl_edtTelefone.Text + '''');
      ibCadastro.Open; }


    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
    ibClassificacao.Open;
    IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO FORNECEDOR NA VARIAVEL.

    ibCadastro.Close;                                                                                    //  and TBLCADASTRO.NOME LIKE '+''''+'%'+lbl_edtNome.text+'%'+'''
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLCONTATO.CONTATO,TBLLOGRADOURO.ENDERECO,'
    +'TBLLOGRADOURO.BAIRRO,TBLLOGRADOURO.CIDADE,TBLLOGRADOURO.ESTADO FROM TBLCADASTRO '
    +'LEFT OUTER JOIN TBLCONTATO ON TBLCADASTRO.IDCAD=TBLCONTATO.IDCAD '
    +'LEFT OUTER JOIN TBLLOGRADOURO ON TBLCADASTRO.IDCAD=TBLLOGRADOURO.IDCAD '
    +'WHERE IDCLASS=''' + InttoStr(IDClass) + ''' and TBLCONTATO.CONTATO=''' + lbl_edtTelefoneCliConsulta.Text + '''');
    ibCadastro.Open;  //  + '''

    IDClicons  := ibCadastro.FieldByName('IDCAD').AsInteger;


   //   lbl_edtCod.Text := ibCadastro.FieldByName('CODIGO').AsString;

      for i:=0 to cboCliConsulta.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
        if TClasseCombo( cboCliConsulta.Items.Objects[i]).ID = ibCadastro.FieldByName('IDCAD').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
          cboCliConsulta.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
          Break;
        end else begin
          cboCliConsulta.ClearSelection;//LIMPA A SELECAO.
        end;{if}
      end;{for}

     if ibCadastro.RecordCount > 0 Then begin

       lbl_edtEnderecoCliCons.Text      := ibCadastro.FieldByName('ENDERECO').AsString;
       lbl_edtNumeroCliCons.Text        := ibCadastro.FieldByName('NUMERO').AsString;
       lbl_edtBairroCliCons.Text        := ibCadastro.FieldByName('BAIRRO').AsString;

     end;//if record count

/////////////////////////////////////////////////////////////////////////////////
      Commit(ibPedVendaConsulta);
      ibPedVendaConsulta.Close;
      ibPedVendaConsulta.SQL.Clear;
      ibPedVendaConsulta.SQL.Add('SELECT TBLPEDIDODEVENDA.*,CADPRODUTOS.NOME As Produto,'
      + 'TBLCADASTRO.NOME As Cliente,TBLCADDOCUMENTACAO.CODIGO FROM TBLPEDIDODEVENDA '
      + 'INNER JOIN TBLCADDOCUMENTACAO ON TBLPEDIDODEVENDA.IDCLIENTE=TBLCADDOCUMENTACAO.IDCAD '
      + 'INNER JOIN CADPRODUTOS ON TBLPEDIDODEVENDA.IDPROD=CADPRODUTOS.IDPROD '
      + 'INNER JOIN TBLCADASTRO ON TBLPEDIDODEVENDA.IDCLIENTE=TBLCADASTRO.IDCAD '
      + 'WHERE(TBLPEDIDODEVENDA.DATA between :ParamDataInicial and :ParamDataFinal) and TBLPEDIDODEVENDA.IDCLIENTE=''' + IntToStr(IDClicons) + ''' and TBLPEDIDODEVENDA.IDCLIENTE=''' + IntToStr(IDClicons) + '''  ORDER BY TBLPEDIDODEVENDA.IDNUMPEDIDO');
      ibPedVendaConsulta.Open;



      ibPedVendaConsulta.Close;
      ibPedVendaConsulta.ParamByName('ParamDataInicial').Value := dtpDataPrazoIni.DateTime;
      ibPedVendaConsulta.ParamByName('ParamDataFinal').Value := dtpDataPrazoVct.DateTime;
      ibPedVendaConsulta.Open;

     (ibPedVendaConsulta.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
     (ibPedVendaConsulta.FieldByName('VALORB') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
     (ibPedVendaConsulta.FieldByName('VALORC') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
     (ibPedVendaConsulta.FieldByName('VLRPROD') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

////////////////////////////////////////////////////////////////////////////////

    while not ibPedVendaConsulta.Eof do begin//enquanto nao for fim de registro

          if (ValorPedidoM = 0) and (ValorB = 0) and (ValorC = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorPedidoM := StrtoFloat(StringReplace(FloattoStr(ibPedVendaConsulta.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

            ValorB := StrToFloat(StringReplace(FloatToStr(ibPedVendaConsulta.FieldByName('VALORB').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

            ValorC := StrToFloat(StringReplace(FloatToStr(ibPedVendaConsulta.FieldByName('VALORC').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorGeralPedidoM := StringReplace(FloattoStr(ibPedVendaConsulta.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            TotalB := StringReplace(FloatToStr(ibPedVendaConsulta.FieldByName('VALORB').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            TotalC := StringReplace(FloatToStr(ibPedVendaConsulta.FieldByName('VALORC').AsFloat),ThousandSeparator,'',[rfReplaceAll]);


            //atribui a variavel o valor separando por ponto
            ValorPedidoM := ValorPedidoM + StrtoFloat(StringReplace(ValorGeralPedidoM,ThousandSeparator,'',[rfReplaceAll]));

            ValorB := ValorB + StrToFloat(StringReplace(TotalB,ThousandSeparator,'',[rfReplaceAll]));

            ValorC := ValorC + StrToFloat(StringReplace(TotalC,ThousandSeparator,'',[rfReplaceAll]));

           end;{if}

           TotalBC := ValorB + ValorC;

            if (TotalBC = 0)  Then begin

              ValorGeral :=  ValorPedidoM;

            end else begin

              ValorGeral := TotalBC + ValorPedidoM;


            end;


          ibPedVendaConsulta.Next;//vai para o pproximo registro pro looping nao ficar infinito.

        end;{while}


       lbl_edtTotalPedCliente.Text := FormatFloat(CasasDecimais('Produtos'),ValorGeral);

/////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////



    end;{with}

end;

procedure TfrmPedidodeVenda.lbl_edtTelefoneCliConsultaKeyPress(
  Sender: TObject; var Key: Char);
begin

  if key =#13 Then begin

    lbl_edtCodConsultaCli.SetFocus;

  end;//if

end;

procedure TfrmPedidodeVenda.cboFornecedoresChange(Sender: TObject);

var

i : Integer;

begin

  with dmModule do begin

    if cboFornecedores.ItemIndex <> -1 Then begin//SE HOUVER REGISTRO NO COMBO
      IDFornCons         := TClasseCombo( cboFornecedores.Items.Objects[cboFornecedores.ItemIndex] );//ATRIBUI A CLASSE COMBO NA VARIAVEL
      StringFornCons     := ' IDCAD=''' + InttoStr( IDFornCons.ID ) + '''';//ATRIBUI O ID DO FIELD NA VARIAVEL STRING.
   end;

      Commit(ibCadastro);
      ibCadastro.Close;
      ibCadastro.SQL.Clear;
      ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,CONDICOESPAGAMENTO.IDCONDPAGTO,CONDICOESPAGAMENTO.DESCRICAO FROM TBLCADASTRO '
      + 'LEFT OUTER JOIN CONDICOESPAGAMENTO ON TBLCADASTRO.IDCONDPAGTO=CONDICOESPAGAMENTO.IDCONDPAGTO '
      + 'WHERE TBLCADASTRO.IDCAD=''' + IntToStr(IDFornCons.ID) + '''');
      ibCadastro.Open;

      for i:=0 to cboCondPagto.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
        if TClasseCombo( cboCondPagto.Items.Objects[i]).ID = ibCadastro.FieldByName('IDCONDPAGTO').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
          cboCondPagto.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
          Break;
        end else begin
          cboCondPagto.ClearSelection;//LIMPA A SELECAO.
        end;{if}
      end;{for}


      Commit(ibTempProdNome);
      ibTempProdNome.Close;
      ibTempProdNome.SQL.Clear;
      ibTempProdNome.SQL.Add('SELECT * FROM CADPRODUTOS WHERE CADPRODUTOS.FORNECEDOR=''' + IntToStr(IDFornCons.ID) + ''' ORDER BY CADPRODUTOS.NOME');
      ibTempProdNome.Open;

      cboProduto.Clear;

      while not ibTempProdNome.Eof do begin//TRAZ A IDENTIFICACAO NO COMBO ATRAVES DO IDENQUANTO NAO FOR FIM DOS REGISTROS

        IDClassProdutos := TClasseCombo.Create;// ATRIBUI A CLASSE CRIADA NA VARIAVEL.
        IDClassProdutos.ID := ibTempProdNome.FieldByName('IDPROD').AsInteger;//ATRIBUI A IDENTIFICACAO DO CAMPO DA TABELA NA VARIAVEL
        cboProduto.Items.AddObject(ibTempProdNome.FieldByName('NOME').AsString,IDClassProdutos);//ADICIONA O OBJETO OU ITEM CONTENTO TEXTO VINDOS DE UMA TABELA.
        ibTempProdNome.Next;

      end;
     { Commit(ibTempProdNome);
      ibTempProdNome.Close;
      ibTempProdNome.SQL.Clear;
      ibTempProdNome.SQL.Add('SELECT CADPRODUTOS.*,TBLCADASTRO.NOME As NomeFornecedor,'
      + 'TBLCADASTRO.IDCAD,CONDICOESPAGAMENTO.IDCONDPAGTO,CONDICOESPAGAMENTO.DESCRICAO FROM CADPRODUTOS '
      + 'LEFT OUTER JOIN TBLCADASTRO ON CADPRODUTOS.FORNECEDOR=TBLCADASTRO.IDCAD '
      + 'LEFT OUTER JOIN CONDICOESPAGAMENTO ON TBLCADASTRO.IDCONDPAGTO=CONDICOESPAGAMENTO.IDCONDPAGTO '
      + 'WHERE CADPRODUTOS.FORNECEDOR=''' + IntToStr(IDFornCons.ID) + ''' ORDER BY CADPRODUTOS.NOME');
      ibTempProdNome.Open;}

    { (ibTempProdNome.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := ',0.00';
     (ibTempProdNome.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := ',0.00';
     (ibTempProdNome.FieldByName('VALORVENDAB') as TFloatField).DisplayFormat := ',0.00';
     (ibTempProdNome.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat := ',0.00'; }


    {  for i:=0 to cboProduto.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
        if TClasseCombo( cboProduto.Items.Objects[i]).ID = ibCadastro.FieldByName('IDPROD').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
          cboProduto.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
          Break;
        end else begin
          cboProduto.ClearSelection;}//LIMPA A SELECAO.
      // end;{if}
    //  end;{for}


     // lbl_edtRef.Text := ibTempProdNome.FieldByName('REF').asString;

  end;//with

end;

procedure TfrmPedidodeVenda.lbl_edtRefExit(Sender: TObject);

var

i : Integer;

begin

  with dmModule do begin

    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT CADPRODUTOS.*,LOCALESTOCAGEM.NOME As Estoque FROM CADPRODUTOS '
    + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE '
    + 'WHERE CADPRODUTOS.REF=''' + lbl_edtRef.Text + '''');
    ibProdutos.Open;

    if lbl_TipoPreco.Caption = '' Then begin

      TipoPreco := 'A'

    end;

    if TipoPreco = 'A' Then begin

      lbl_edtVlrProd.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);
      lbl_edtTotalProd.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);
      lbl_Valor.Caption := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);
      lbl_TipoPreco.Caption := 'Preço de Venda(A)';
      lbl_edtQtde.Text := '1';
      lbl_CodBarras.Caption := ibProdutos.FieldByName('CODBARRAS').AsString;
      lbl_NomeProd.Caption  := ibProdutos.FieldByName('NOME').AsString;

    end;

    if TipoPreco = 'B' Then begin

      lbl_edtVlrProd.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAB').AsFloat);
      lbl_edtTotalProd.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAB').AsFloat);
      lbl_Valor.Caption := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAB').AsFloat);
      lbl_edtQtde.Text := '1';
      lbl_CodBarras.Caption := ibProdutos.FieldByName('CODBARRAS').AsString;
      lbl_NomeProd.Caption  := ibProdutos.FieldByName('NOME').AsString;

    end;

    if TipoPreco = 'C' Then begin

      lbl_edtVlrProd.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAC').AsFloat);
      lbl_edtTotalProd.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAC').AsFloat);
      lbl_Valor.Caption := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAC').AsFloat);
      lbl_edtQtde.Text := '1';
      lbl_CodBarras.Caption := ibProdutos.FieldByName('CODBARRAS').AsString;
      lbl_NomeProd.Caption  := ibProdutos.FieldByName('NOME').AsString;

    end;

    lbl_edtQtde.SetFocus;

    for i:=0 to cboProduto.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
      if TClasseCombo( cboProduto.Items.Objects[i]).ID = ibProdutos.FieldByName('IDPROD').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
        cboProduto.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
        Break;
      end else begin
        cboProduto.ClearSelection;//LIMPA A SELECAO. }
      end;{if}
    end;{for}


    for i:=0 to cboFornecedores.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
      if TClasseCombo( cboFornecedores.Items.Objects[i]).ID = ibProdutos.FieldByName('FORNECEDOR').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
        cboFornecedores.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
        Break;
      end else begin
        cboFornecedores.ClearSelection;//LIMPA A SELECAO. }
      end;{if}
    end;{for}


  end;//with

end;

procedure TfrmPedidodeVenda.lbl_edtRefKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    cboProduto.SetFocus;

  end;//if

end;

procedure TfrmPedidodeVenda.IBEAntialiasButton2Click(Sender: TObject);
begin
frmBuscaProdutos.ShowModal;
end;

procedure TfrmPedidodeVenda.lbl_edtDescExit(Sender: TObject);

var

Valor1,Valor2 : Real;


begin

  with dmModule do begin

     if lbl_edtDesc.Text <> '' Then begin

       if lbl_edtTotalProd.Text <> '' Then begin //se for diferente de branco executa rotina abaixo.

          if (Pos(',',lbl_edtTotalProd.Text)>0) and (lbl_edtTotalProd.Text <> '') Then begin

            Valor1 := StrToFloat(StringReplace(lbl_edtTotalProd.Text,ThousandSeparator,'',[rfReplaceAll]));
            Valor2 := StrToFloat(StringReplace(lbl_edtDesc.Text,ThousandSeparator,'',[rfReplaceAll]));
            lbl_edtTotalPed.Text := FormatFloat(',0.00',(Valor1 - Valor2));


          end else begin

            Valor1 := StrToFloat(StringReplace(lbl_edtTotalProd.Text,ThousandSeparator,'',[rfReplaceAll]));
            Valor2 := StrToFloat(StringReplace(lbl_edtDesc.Text,ThousandSeparator,'',[rfReplaceAll]));
            lbl_edtTotalPed.Text := FormatFloat(',0.00',(Valor1 - Valor2));


          end;{if}

        end;{if}

       lbl_edtDesc.Text := FormatFloat(CasasDecimais('Produtos'),StrToFloat(lbl_edtDesc.Text)); //FormatFloat(casa',0.00',StrToFloat(lbl_edtValor.Text));

     end;//if label desc

  end;{with}


end;

procedure TfrmPedidodeVenda.lbl_edtAcrescExit(Sender: TObject);

var

Valor1,Valor2 : Real;


begin

  with dmModule do begin

    if lbl_edtAcresc.Text <> '' Then begin

       if lbl_edtTotalProd.Text <> '' Then begin //se for diferente de branco executa rotina abaixo.

          if (Pos(',',lbl_edtTotalProd.Text)>0) and (lbl_edtTotalProd.Text <> '') Then begin

            Valor1 := StrToFloat(StringReplace(lbl_edtTotalProd.Text,ThousandSeparator,'',[rfReplaceAll]));
            Valor2 := StrToFloat(StringReplace(lbl_edtAcresc.Text,ThousandSeparator,'',[rfReplaceAll]));
            lbl_edtTotalPed.Text := FormatFloat(',0.00',(Valor1 + Valor2));


          end else begin

            Valor1 := StrToFloat(StringReplace(lbl_edtTotalProd.Text,ThousandSeparator,'',[rfReplaceAll]));
            Valor2 := StrToFloat(StringReplace(lbl_edtAcresc.Text,ThousandSeparator,'',[rfReplaceAll]));
            lbl_edtTotalPed.Text := FormatFloat(',0.00',(Valor1 + Valor2));


          end;{if}

        end;{if}

      lbl_edtAcresc.Text := FormatFloat(CasasDecimais('Produtos'),StrToFloat(lbl_edtAcresc.Text)); //FormatFloat(casa',0.00',StrToFloat(lbl_edtValor.Text));

    end;//if label acrescimo

    if (lbl_edtTotalPed.Text = '')and(lbl_edtDesc.Text = '') Then begin

      lbl_edtTotalPed.Text := lbl_edtTotalProd.Text;

    end;

  end;{with}


end;

procedure TfrmPedidodeVenda.lbl_edtTotalPedKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key =#13 Then begin

   ibeaIncluirClick(Sender);
   lbl_edtTotalPed.Text := '';

  end;//if

end;

procedure TfrmPedidodeVenda.lbl_edtAcrescKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key =#13 Then begin

   lbl_edtTotalPed.SetFocus;

  end;//if

end;

procedure TfrmPedidodeVenda.lbl_edtDescKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key =#13 Then begin

   lbl_edtAcresc.SetFocus;

  end;//if

end;

end.
