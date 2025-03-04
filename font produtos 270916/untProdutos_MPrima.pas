unit untProdutos_MPrima;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, CheckLst, Grids, DBGrids,
  ComCtrls, ExtCtrls, BmsXPPageControl, Barcode,AdvFontCombo, IBQuery, classComboBox,
  IniFiles, jpeg, DB,axCtrls, Menus, AdvDateTimePicker, AdvSmoothEdit,
  AdvSmoothEditButton, AdvSmoothDatePicker, AdvGlowButton, AdvGlassButton,
  PageView, Collection;

type
  TfrmProd_MPrima = class(TForm)
    pcProdutos: TBmsXPPageControl;
    tbsProduto: TTabSheet;
    dbgProdutos: TDBGrid;
    opDialogImagem: TOpenDialog;
    popMnuImagem: TPopupMenu;
    Scanner1: TMenuItem;
    mnuAdquirirIMG: TMenuItem;
    N1: TMenuItem;
    mnuSelecionarOrigem: TMenuItem;
    N2: TMenuItem;
    popmnuProcurar: TMenuItem;
    GeraCodigoBarra: TBarcode;
    GeraCBMP: TBarcode;
    popupEtiquetas: TPopupMenu;
    Pimaco60871: TMenuItem;
    Pimaco60891: TMenuItem;
    Sair1: TMenuItem;
    pcCadProdutos: TBmsXPPageControl;
    tbsProd: TTabSheet;
    tbsFornecedores: TTabSheet;
    lbl_Modalidade: TLabel;
    lbl_VctoLote: TLabel;
    lbl_Grupo: TLabel;
    lbl_Subgrupo: TLabel;
    lbl_Fornecedores: TLabel;
    lbl_F2: TLabel;
    lbl_Fornecedores3: TLabel;
    lbl_Fornecedores4: TLabel;
    lbl_Fornecedores5: TLabel;
    lbl_Fornecedores6: TLabel;
    lbl_Fornecedores7: TLabel;
    lbl_Fornecedores8: TLabel;
    tbsFornecedoresProdutos: TTabSheet;
    lbl_edtFornProd: TLabel;
    btnRProdEstoque: TBitBtn;
    pcFornecedores: TBmsXPPageControl;
    tbs1Forn: TTabSheet;
    dbgFornecedorProd: TDBGrid;
    tbsProdEquivalente: TTabSheet;
    dbgProdutosEquivalentes: TDBGrid;
    Label35: TLabel;
    tbsConfig: TTabSheet;
    lbl_Lote2: TLabel;
    lbl_edtCodigo: TLabeledEdit;
    lbl_edtRef: TLabeledEdit;
    lbl_edtCodBarra: TLabeledEdit;
    lbl_edtNomeProduto: TLabeledEdit;
    lbl_edtMarca: TLabeledEdit;
    lbl_edtQtde: TLabeledEdit;
    dtpVctoLote: TDateTimePicker;
    dtpVctoLote2: TDateTimePicker;
    lbl_edtVlrPacoteFardo: TLabeledEdit;
    ibeaNovo: TAdvGlowButton;
    ibeaAlterar: TAdvGlowButton;
    ibeaExcluir: TAdvGlowButton;
    ibeaSair: TAdvGlowButton;
    lbl_edtQtdePacoteFardo: TLabeledEdit;
    lbl_edtCusto: TLabeledEdit;
    lbl_edtLucro: TLabeledEdit;
    lbl_edtVendaa: TLabeledEdit;
    lbl_edtVendab: TLabeledEdit;
    lbl_edtQtdeB: TLabeledEdit;
    lbl_edtVendac: TLabeledEdit;
    lbl_edtQtdeC: TLabeledEdit;
    lbl_edtVendad: TLabeledEdit;
    lbl_edtLucroVenda: TLabeledEdit;
    lbl_edtVlrCompra: TLabeledEdit;
    lbl_edtVlrCompraF1: TLabeledEdit;
    lbl_edtVlrCompraF2: TLabeledEdit;
    lbl_edtVlrCompraF3: TLabeledEdit;
    lbl_edtVlrCompraF4: TLabeledEdit;
    lbl_edtVlrCompraF5: TLabeledEdit;
    lbl_edtVlrCompraF6: TLabeledEdit;
    lbl_edtVlrCompraF7: TLabeledEdit;
    lbl_edtVlrCompraF8: TLabeledEdit;
    lbl_edtIDProdEquivalente: TLabeledEdit;
    lbl_edtNomeProdEquivalente: TLabeledEdit;
    btIncluirEquivalente: TAdvGlowButton;
    btExcluirEquivalente: TAdvGlowButton;
    ckProdTrib: TCheckBox;
    ckVctoLote: TCheckBox;
    ckVctoLote2: TCheckBox;
    lbl_edtCodP: TLabeledEdit;
    lbl_edtNumRef: TLabeledEdit;
    lbl_edtNome: TLabeledEdit;
    sb_ord_nome: TAdvGlowButton;
    pcProdET: TBmsXPPageControl;
    tbsEstoque: TTabSheet;
    tbsTrib: TTabSheet;
    Label3: TLabel;
    lbl_edtEstoqgeral: TLabeledEdit;
    lbl_edtEstMin: TLabeledEdit;
    lbl_edtVlrestoq: TLabeledEdit;
    ckDiminuirEstoque: TCheckBox;
    ckAcrescentarEstoq: TCheckBox;
    lbl_edtQtdeEstoque: TLabeledEdit;
    lbl_edtEstoqueM: TLabeledEdit;
    lbl_edtVlrEstoque: TLabeledEdit;
    lbl_InfoPrat: TLabel;
    lbl_edtInfoQP: TLabeledEdit;
    lbl_edtInfoMP: TLabeledEdit;
    ckAcrescPrateleira: TCheckBox;
    lbl_edtQtdePrat: TLabeledEdit;
    lbl_edtMinimoPrat: TLabeledEdit;
    lbl_edtClassFiscal: TLabeledEdit;
    rbNacional: TRadioButton;
    rbImportado: TRadioButton;
    lbl_edtCOFINS: TLabeledEdit;
    lbl_edtPIS: TLabeledEdit;
    lbl_CSOSN: TLabel;
    lbl_ST: TLabel;
    lbl_CST: TLabel;
    lbl_edtAliquota: TLabeledEdit;
    lbl_edtICMS: TLabeledEdit;
    lbl_edtIPI: TLabeledEdit;
    lbl_edtNumLote: TLabeledEdit;
    TabSheet2: TTabSheet;
    lbl_edtCustoFormula: TLabeledEdit;
    lbl_edtResultado: TLabeledEdit;
    lbl_edtQtdeFormula: TLabeledEdit;
    lbl_edtVendaFormula: TLabeledEdit;
    btFormula: TButton;
    btLimparFormula: TButton;
    FlipView1: TFlipView;
    imgCodigoBarras: TImage;
    shapeCodBarras: TShape;
    ListLocalEstocagem: TCheckListBox;
    lbl_LocalEstoq: TLabel;
    Label1: TLabel;
    lbl_edtDataEntrada: TLabeledEdit;
    lbl_edtQtdeEntrada: TLabeledEdit;
    Label2: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    grbTipoOleo: TGroupBox;
    rbMineral: TRadioButton;
    rbSintetico: TRadioButton;
    Label4: TLabel;
    cboCST: TAdvOfficeComboBox;
    cboCSOSN: TAdvOfficeComboBox;
    cboST: TAdvOfficeComboBox;
    cboCFOP: TAdvOfficeComboBox;
    cboGrupo: TAdvOfficeComboBox;
    cboSubGrupo: TAdvOfficeComboBox;
    cboModalidade: TAdvOfficeComboBox;
    cboFornecedoresProdutos: TAdvOfficeComboBox;
    cboFornecedores: TAdvOfficeComboBox;
    cboFornecedores2: TAdvOfficeComboBox;
    cboFornecedores3: TAdvOfficeComboBox;
    cboFornecedores4: TAdvOfficeComboBox;
    cboFornecedores5: TAdvOfficeComboBox;
    cboFornecedores6: TAdvOfficeComboBox;
    cboFornecedores7: TAdvOfficeComboBox;
    cboFornecedores8: TAdvOfficeComboBox;
    ckProdAtivo: TCheckBox;

    procedure Commit(IBQueryExec : TIBQuery);
    procedure DesabilitaCampos(opcao:Boolean);
    procedure ExecSELECTProdutoForn;
    procedure ExecSELECTMP;
    procedure ExecSELECTTipoUnidade;
    procedure ExecSELECTST;
    procedure ExecSELECTCST;
    procedure ExecSELECTCFOP;
    procedure ExecSELECTCSOSN;
    procedure AlteraProduto;
    procedure AlteraEstoque;
    procedure AlteraPrateleira;
    procedure LimpaCampo;
    procedure ExibeDados;
    procedure ExecEstoque;
    procedure ExecSELECTGrupo;
    procedure ExecSELECTSubgrupo;
    procedure ExecSELECTFornecedor;
    procedure ExecSELECTFornecedor2;
    procedure ExecSELECTFornecedor3;
    procedure ExecSELECTFornecedor4;
    procedure ExecSELECTFornecedor5;
    procedure ExecSELECTFornecedor6;
    procedure ExecSELECTFornecedor7;
    procedure ExecSELECTFornecedor8;
    procedure ExecSELECT;
    procedure ibeaNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ibeaAlterarClick(Sender: TObject);
    procedure ibeaExcluirClick(Sender: TObject);
    procedure lbl_edtCustoExit(Sender: TObject);
    procedure lbl_edtLucroExit(Sender: TObject);
    procedure lbl_edtVendaaExit(Sender: TObject);
    procedure lbl_edtVendabExit(Sender: TObject);
    procedure lbl_edtVendacExit(Sender: TObject);
    procedure lbl_edtLucroVendaExit(Sender: TObject);
    procedure lbl_edtQtdeEstoqueExit(Sender: TObject);
    procedure lbl_edtCodPExit(Sender: TObject);
    procedure lbl_edtCodPKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtNumRefChange(Sender: TObject);
    procedure lbl_edtNumRefKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtNomeChange(Sender: TObject);
    procedure sb_ord_nomeClick(Sender: TObject);
    procedure ibeaSairClick(Sender: TObject);
    procedure lblProcurarImagemClick(Sender: TObject);
    procedure lblAmpliarImagemClick(Sender: TObject);
    procedure dbgProdutosCellClick(Column: TColumn);
    procedure dbgProdutosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ibeaSairMPClick(Sender: TObject);
    procedure lbl_edtCodBarraChange(Sender: TObject);
    procedure lbl_edtCodBarraKeyPress(Sender: TObject; var Key: Char);
    procedure pcProdutosChange(Sender: TObject);
    procedure lbl_edtRefKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtNomeProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure cboModalidadeKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtIndicacaoKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtFabricanteKeyPress(Sender: TObject; var Key: Char);
    procedure cboFornecedoresKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtCustoKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtLucroKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtVendaaKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtVendabKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtVendacKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtMtsKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtQtdeEstoqueKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtEstoqueMKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtRefExit(Sender: TObject);
    procedure lbl_edtQtdeKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtCodBarraExit(Sender: TObject);
    procedure lbl_edtNomeProdutoExit(Sender: TObject);
    procedure lbl_edtCustoChange(Sender: TObject);
    procedure lbl_edtVendaaChange(Sender: TObject);
    procedure lbl_edtVendabChange(Sender: TObject);
    procedure lbl_edtVendacChange(Sender: TObject);
    procedure lbl_edtQtdeEstoqueChange(Sender: TObject);
    procedure lbl_edtEstoqueMChange(Sender: TObject);
    procedure lbl_edtVlrEstoqueChange(Sender: TObject);
    procedure btnImprimirCodigoClick(Sender: TObject);
    Procedure CriaCodigo(Cod : String; Imagem : TCanvas);
    procedure dtpVctoLoteChange(Sender: TObject);
    procedure ckAcrescentarEstoqCheck(Sender: TObject);
    procedure ckDiminuirEstoqueCheck(Sender: TObject);
    procedure Pimaco60871Click(Sender: TObject);
    procedure Pimaco60891Click(Sender: TObject);
    procedure lbl_edtVendadExit(Sender: TObject);
    procedure lbl_edtVendadKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtMarcaKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtAliquotaKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtTributarioKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtQtdePratKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtQtdePratExit(Sender: TObject);
    procedure btnRProdEstoqueClick(Sender: TObject);
    procedure lbl_edtVlrPacoteFardoExit(Sender: TObject);
    procedure lbl_edtVlrPacoteFardoKeyPress(Sender: TObject;
      var Key: Char);
    procedure lbl_edtLucroVendaKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pcCadProdutosChange(Sender: TObject);
    procedure btIncluirEquivalenteClick(Sender: TObject);
    procedure dbgProdutosEquivalentesCellClick(Column: TColumn);
    procedure btExcluirEquivalenteClick(Sender: TObject);
    procedure lbl_edtQtdeBKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtQtdeCKeyPress(Sender: TObject; var Key: Char);
    procedure btFormulaClick(Sender: TObject);
    procedure lbl_edtCustoFormulaKeyPress(Sender: TObject; var Key: Char);
    procedure btLimparFormulaClick(Sender: TObject);
    procedure lbl_edtCustoFormulaExit(Sender: TObject);
    procedure lbl_edtQtdeFormulaExit(Sender: TObject);
    procedure lbl_edtQtdeFormulaKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtResultadoExit(Sender: TObject);
    procedure lbl_edtResultadoKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtVendaFormulaKeyPress(Sender: TObject; var Key: Char);
    procedure cboFornecedoresProdutosChange(Sender: TObject);
    procedure lbl_edtRefEnter(Sender: TObject);
    procedure lbl_edtCodBarraEnter(Sender: TObject);
    procedure lbl_edtNomeProdutoEnter(Sender: TObject);
    procedure lbl_edtCustoEnter(Sender: TObject);
    procedure lbl_edtLucroEnter(Sender: TObject);
    procedure lbl_edtVendaaEnter(Sender: TObject);
    procedure lbl_edtVendacEnter(Sender: TObject);
    procedure lbl_edtQtdeCEnter(Sender: TObject);
    procedure lbl_edtVendadEnter(Sender: TObject);
    procedure lbl_edtLucroVendaEnter(Sender: TObject);
    procedure lbl_edtVlrPacoteFardoEnter(Sender: TObject);
    procedure lbl_edtQtdePacoteFardoEnter(Sender: TObject);
    procedure cboGrupoEnter(Sender: TObject);
    procedure cboSubgrupoEnter(Sender: TObject);
    procedure cboModalidadeEnter(Sender: TObject);
    procedure lbl_edtQtdeEnter(Sender: TObject);
    procedure lbl_edtMarcaEnter(Sender: TObject);
    procedure lbl_edtQtdeEstoqueEnter(Sender: TObject);
    procedure lbl_edtEstoqueMEnter(Sender: TObject);
    procedure lbl_edtVlrEstoqueEnter(Sender: TObject);
    procedure lbl_edtQtdePratEnter(Sender: TObject);
    procedure lbl_edtMinimoPratEnter(Sender: TObject);
    procedure lbl_edtCodPEnter(Sender: TObject);
    procedure lbl_edtNumRefEnter(Sender: TObject);
    procedure lbl_edtNomeEnter(Sender: TObject);
    procedure cboCSTEnter(Sender: TObject);
    procedure cboCSOSNEnter(Sender: TObject);
    procedure cboSTEnter(Sender: TObject);
    procedure lbl_edtClassFiscalEnter(Sender: TObject);
    procedure lbl_edtAliquotaEnter(Sender: TObject);
    procedure lbl_edtNumLoteEnter(Sender: TObject);
    procedure lbl_edtICMSEnter(Sender: TObject);
    procedure lbl_edtIPIEnter(Sender: TObject);
    procedure lbl_edtPISEnter(Sender: TObject);
    procedure lbl_edtCOFINSEnter(Sender: TObject);
    procedure cboFornecedoresEnter(Sender: TObject);
    procedure lbl_edtVlrCompraF1Enter(Sender: TObject);
    procedure cboFornecedores2Enter(Sender: TObject);
    procedure lbl_edtVlrCompraF2Enter(Sender: TObject);
    procedure cboFornecedores3Enter(Sender: TObject);
    procedure lbl_edtVlrCompraF3Enter(Sender: TObject);
    procedure cboFornecedores4Enter(Sender: TObject);
    procedure lbl_edtVlrCompraF4Enter(Sender: TObject);
    procedure cboFornecedores5Enter(Sender: TObject);
    procedure lbl_edtVlrCompraF5Enter(Sender: TObject);
    procedure cboFornecedores6Enter(Sender: TObject);
    procedure lbl_edtVlrCompraF6Enter(Sender: TObject);
    procedure cboFornecedores7Enter(Sender: TObject);
    procedure lbl_edtVlrCompraF7Enter(Sender: TObject);
    procedure cboFornecedores8Enter(Sender: TObject);
    procedure lbl_edtVlrCompraF8Enter(Sender: TObject);
    procedure lbl_edtNomeProdEquivalenteEnter(Sender: TObject);
    procedure cboFornecedoresProdutosEnter(Sender: TObject);
    procedure lbl_edtVlrCompraEnter(Sender: TObject);
    procedure lbl_edtQtdeBExit(Sender: TObject);
    procedure lbl_edtQtdeCExit(Sender: TObject);
    procedure cboGrupoExit(Sender: TObject);
    procedure cboSubgrupoExit(Sender: TObject);
    procedure cboModalidadeExit(Sender: TObject);
    procedure lbl_edtQtdeExit(Sender: TObject);
    procedure lbl_edtMarcaExit(Sender: TObject);
    procedure lbl_edtEstoqueMExit(Sender: TObject);
    procedure lbl_edtVlrEstoqueExit(Sender: TObject);
    procedure lbl_edtInfoQPExit(Sender: TObject);
    procedure lbl_edtInfoMPExit(Sender: TObject);
    procedure lbl_edtNumRefExit(Sender: TObject);
    procedure lbl_edtNomeExit(Sender: TObject);
    procedure cboFornecedoresExit(Sender: TObject);
    procedure cboFornecedores2Exit(Sender: TObject);
    procedure cboFornecedores3Exit(Sender: TObject);
    procedure cboFornecedores4Exit(Sender: TObject);
    procedure cboFornecedores5Exit(Sender: TObject);
    procedure cboFornecedores6Exit(Sender: TObject);
    procedure cboFornecedores7Exit(Sender: TObject);
    procedure cboFornecedores8Exit(Sender: TObject);
    procedure lbl_edtVlrCompraF1Exit(Sender: TObject);
    procedure lbl_edtVlrCompraF2Exit(Sender: TObject);
    procedure lbl_edtVlrCompraF3Exit(Sender: TObject);
    procedure lbl_edtVlrCompraF4Exit(Sender: TObject);
    procedure lbl_edtVlrCompraF5Exit(Sender: TObject);
    procedure lbl_edtVlrCompraF6Exit(Sender: TObject);
    procedure lbl_edtVlrCompraF7Exit(Sender: TObject);
    procedure lbl_edtVlrCompraF8Exit(Sender: TObject);
    procedure lbl_edtNomeProdEquivalenteExit(Sender: TObject);
    procedure cboFornecedoresProdutosExit(Sender: TObject);
    procedure lbl_edtVlrCompraExit(Sender: TObject);
    procedure lbl_edtVendabEnter(Sender: TObject);
    procedure lbl_edtQtdeBEnter(Sender: TObject);
    procedure cboCSTExit(Sender: TObject);
    procedure cboCSOSNExit(Sender: TObject);
    procedure cboSTExit(Sender: TObject);
    procedure lbl_edtClassFiscalExit(Sender: TObject);
    procedure lbl_edtAliquotaExit(Sender: TObject);
    procedure lbl_edtNumLoteExit(Sender: TObject);
    procedure lbl_edtICMSExit(Sender: TObject);
    procedure lbl_edtIPIExit(Sender: TObject);
    procedure lbl_edtPISExit(Sender: TObject);
    procedure lbl_edtCOFINSExit(Sender: TObject);
    procedure cboGrupoChange(Sender: TObject);
    procedure cboCFOPEnter(Sender: TObject);
    procedure cboCFOPExit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

//  procedure CarregarScanImage(Handle: THandle; AppName: ShortString; Param: String; imgProduto : TImage);
  
var
  frmProd_MPrima: TfrmProd_MPrima;
  Codsub: Integer;
  ClassTipoProd: TClasseCombo;
  ClassGrupo : TClasseCombo;
  ClassGrupoConsulta : TClasseCombo;
  ClassSubgrupo : TClasseCombo;
  ClassForn : TClasseCombo;
  ClassNomeEst : TClasseCombo;
  ClassLocal : TClasseCombo;
  ConfirmaMSG: Integer;
  IDProd : Integer;
  IDGrupo : Integer;
  IDClass : Integer;
  IDClassGrupo : Integer;
  IDClassSubgrupo : Integer;
  IDClassForn : Integer;
  IDClassNomeEst : Integer;
  MontaColunas : Boolean; //VARIAVEL USADA PARA DETERMINAR SE A COLUNA J� FOI CRIADA OU N�O
  MontaColunasLocalEst : Boolean;
  MontaColunasMovEst : Boolean;
  MontaColProdForn1 : Boolean;
  StringTProd : String;
  StringGrupo : String;
  StringSubGrupo : String;
  StringForn : String;
  StringLocalEstoque : String;

  i,LocalSelecionado : Integer;


  //VARIAVEIS PARA AS CASAS DECIMAIS
  ConfigSiS : TIniFile;
  FormatoMoeda : String;
  Casas : Longint;
  ValorCusto : String;
  ValorVendaa : String;
  ValorVendab : String;
  ValorVendac : String;
  ValorVendad : String;
 // ValorProm : String;
//  TotalML : String;
  Erro : Boolean;
  
  ImagemProduto : String;

  IDProdEstoque : Integer;
  IDEntrProdEstoque : Integer;

  EstoqueMinimo : Real;
  QtdeProd : Real;
  TotalEstoque : Real;
  AlteraQtde : String;
  AlteraEstoqueMin : String;
  AlteraTotal : String;
  ValorTotal : String;
  QtdeProdEstoque : String;
  EstoqueMin : String;

  IDProdMP : TClasseCombo;

  MontaColKit : Boolean;

  //variaveis para gravar produto de materia prima
  IDGravaProdMP : TClasseCombo;
  StringGravaProdMP : String;

  //grava os valores do produto em kit composicao
  VlrCustoKitComp : String;
  VlrVendaKitComp : String;

  IDLocalProdMP : Integer;

  IDProdutoMatPrima : Integer;

  IDVlrProdutoMP : TClasseCombo;

  IDExibeProdMP : Integer;

  IDExibeProduto : Integer;

  IDClassProdMP : TClasseCombo;

  ValorCustoGravado : Real;
  ValorCusto1 : Real;
  ValorVendaGravado : Real;
  Valorvenda1 : Real;

  TotalCustoAlterado : String;
  TotalVendaAlterado : String;

  LocalSelecionadoMP : Integer;
  ClassNomeEstMP : TClasseCombo;
  MontaColunasMP : Boolean;
  IDProdutoMP : Integer;
  IDClassSELECTFornMP : TClasseCombo;
  IDClassFornMP : Integer;
  ClassProdMPKit : TClasseCombo;
  GravaProdutoKit : String;
  IDProdutoKit : Integer;
  MontaColunasKit : Boolean;
  MontaColProdEquivalente : Boolean;
  ClassTipodeUnidade : TClasseCombo;

  IDClassTipoUnid : TClasseCombo;
  StringTipoUnid : String;

  StringAltUnidVenda : String;
  ClassAltUnidVenda : TClasseCombo;

  CodIDUsuario : String;
  intCodUsuario : Integer;  
  IDProdutoEquivalente : Integer;
//function ConverteCasas(Param : String): String; stdcall ; external 'ConverteMoeda.dll';
//function ConversaoMoeda(Param : String):String;stdcall;external 'ConverteMoeda.dll';

implementation

uses  uBuscaProdutos, funcPosto, untdmModule, 
  untRelCodBarrasAD, untSenhaAlteracaoProd, 
  untPrincipal, Types, untRProdFornecedor;


//procedure CarregarScanImage; external 'Data\RunTime\ICETwain.dll' index 1;
//function ExtrairDirArquivoSalvo : String ;external 'Data\RunTime\ICETwain.dll' index 2;

{$R *.dfm}

procedure TfrmProd_MPrima.Commit(IBQueryExec : TIBQuery);

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

Procedure TfrmProd_MPrima.CriaCodigo(Cod : String; Imagem : TCanvas);
 
Const
  digitos : array['0'..'9'] of string[5]= ('00110',
  '10001',
  '01001',
  '11000',
  '00101',
  '10100',
  '01100',
  '00011',
  '10010',
  '01010');
Var
  Numero : String;
  Cod1 : Array[1..1000] Of Char;
  Cod2 : Array[1..1000] Of Char;
  Codigo : Array[1..1000] Of Char;
  Digito : String;
  c1,c2 : Integer;
  x,y,z,h : LongInt;
  a,b,c,d : TPoint;
  I : Boolean;
Begin
  Numero := Cod;
  For x := 1 to 1000 Do
  Begin
    Cod1 [x] := #0;
    Cod2 [x] := #0;
    Codigo[x] := #0;
  End;
  c1 := 1;
  c2 := 1;
  x := 1;
  For y := 1 to Length(Numero) div 2 do
  Begin
    Digito := Digitos[Numero[x ]]; 
    For z := 1 to 5 do 
    Begin 
      Cod1[c1] := Digito[z]; 
      Inc(c1); 
    End;
    Digito := Digitos[Numero[x+1]]; 
    For z := 1 to 5 do 
    Begin 
      Cod2[c2] := Digito[z]; 
      Inc(c2); 
    End;
    Inc(x,2);
  End;
  y := 5;
  Codigo[1] := '0'; 
  Codigo[2] := '0'; 
  Codigo[3] := '0'; 
  Codigo[4] := '0'; { Inicio do Codigo }
  For x := 1 to c1-1 do
  begin
    Codigo[y] := Cod1[x]; Inc(y);
    Codigo[y] := Cod2[x]; Inc(y);
  end;
  Codigo[y] := '1'; Inc(y); { Final do Codigo }
  Codigo[y] := '0'; Inc(y);
  Codigo[y] := '0';
  Imagem.Pen .Width := 1;
  Imagem.Brush.Color := ClWhite;
  Imagem.Pen .Color := ClWhite;
  a.x := 1; a.y := 0;
  b.x := 1; b.y := 79;
  c.x := 2000; c.y := 79;
  d.x := 2000; d.y := 0;
  Imagem.Polygon([a,b,c,d]);
  Imagem.Brush.Color := ClBlack;
  Imagem.Pen .Color := ClBlack;
  x := 0;
  i := True;
  for y:=1 to 1000 do
  begin
    If Codigo[y] <> #0 Then
    Begin
      If Codigo[y] = '0' then 
        h := 1 
      Else 
        h := 3;
      a.x := x; a.y := 0;
      b.x := x; b.y := 79;
      c.x := x+h-1; c.y := 79;
      d.x := x+h-1; d.y := 0;
      If i Then 
        Imagem.Polygon([a,b,c,d]);
      i := Not(i);
      x := x + h;
    End;
  end;
end;



procedure TfrmProd_MPrima.DesabilitaCampos(opcao:Boolean);
begin
  lbl_edtNomeProduto.Enabled := opcao;
  cboFornecedores.Enabled := opcao;
  cboFornecedores2.Enabled := opcao;
  cboFornecedores3.Enabled := opcao;
  cboFornecedores4.Enabled := opcao;
  cboFornecedores5.Enabled := opcao;
  cboFornecedores6.Enabled := opcao;
  cboFornecedores7.Enabled := opcao;
  cboFornecedores8.Enabled := opcao;
  lbl_edtCodigo.Enabled := opcao;
  cboGrupo.Enabled := opcao;;
  cboSubgrupo.Enabled := opcao;
  //  lbl_edtEmb.Enabled := opcao;
//  lbl_edtUn.Enabled := opcao;
//  lbl_edtUncompra.Enabled := opcao;
  lbl_edtCusto.Enabled := opcao;
  lbl_edtCodBarra.Enabled := opcao;
  lbl_edtVendaa.Enabled := opcao;
  lbl_edtVendab.Enabled := opcao;
  lbl_edtQtdeB.Enabled  := opcao;
  lbl_edtVendac.Enabled := opcao;
  lbl_edtQtdeC.Enabled  := opcao;
  lbl_edtVendad.Enabled := opcao;
  lbl_edtVlrPacoteFardo.Enabled := opcao;
  lbl_edtQtdePacoteFardo.Enabled := opcao;
  lbl_edtLucro.Enabled := opcao;
  lbl_edtEstoqgeral.Enabled := opcao;
  lbl_edtEstMin.Enabled := opcao;
  lbl_edtVlrestoq.Enabled := opcao;
  lbl_edtInfoQP.Enabled := opcao;
  lbl_edtInfoMP.Enabled := opcao;
  lbl_edtQtdePrat.Enabled := opcao;
  lbl_edtMinimoPrat.Enabled := opcao;
  
//  lbl_edtLocPrateleira.Enabled := opcao;
 // lbl_edtQtde.Enabled := opcao;
//  lbl_edtVlr.Enabled := opcao;
  ListLocalEstocagem.Enabled := opcao;
//  lbl_edtMls.Enabled := opcao;
  lbl_edtLucroVenda.Enabled := opcao;
  lbl_edtRef.Enabled := opcao;
 // cboModalidade.Enabled := opcao;
  lbl_edtQtde.Enabled := opcao;
  lbl_edtMarca.Enabled := opcao;
  lbl_edtAliquota.Enabled := opcao;
  ckProdTrib.Enabled := opcao;
  lbl_edtVlrCompraF1.Enabled := opcao;
  lbl_edtVlrCompraF2.Enabled := opcao;
  lbl_edtVlrCompraF3.Enabled := opcao;
  lbl_edtVlrCompraF4.Enabled := opcao;
  lbl_edtVlrCompraF5.Enabled := opcao;
  lbl_edtVlrCompraF6.Enabled := opcao;
  lbl_edtVlrCompraF7.Enabled := opcao;
  lbl_edtVlrCompraF8.Enabled := opcao;  
  lbl_edtClassFiscal.Enabled := opcao;
  
end;

procedure TfrmProd_MPrima.ExecSELECTProdutoForn;


var

ClassFornProd    : TClasseCombo;
IDClassFornProd : Integer;

begin
  with dmModule do begin

    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Fornecedores''');
    ibClassificacao.Open;
    IDClassFornProd := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICA��O DO FORNECEDOR NA VARIAVEL.

    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + IntToStr(IDClassFornProd) + ''' ORDER BY NOME');//('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + InttoStr(IDClass) + ''' ORDER BY NOME');
    ibCadastro.Open;

    cboFornecedoresProdutos.Clear; //LIMPA O COMBOBOX
    while not ibCadastro.Eof do begin
      ClassFornProd    := TClasseCombo.Create;
      ClassFornProd.ID  := ibCadastro.FieldByName('IDCAD').AsInteger;
      cboFornecedoresProdutos.Items.AddObject(ibCadastro.FieldByName('NOME').AsString,ClassFornProd);
      ibCadastro.Next;
    end;
    
  end;//with

end;

procedure TfrmProd_MPrima.ExecSELECTCFOP;


var

ClassCFOP    : TClasseCombo;
IDClassCFOP : Integer;

begin
  with dmModule do begin

    ibCFOP.Close;
    ibCFOP.SQL.Clear;
    ibCFOP.SQL.Add('SELECT * FROM TBL_CFOP ORDER BY IDCFOP');
    ibCFOP.Open;

    cboCFOP.Clear; //LIMPA O COMBOBOX
    while not ibCFOP.Eof do begin
      ClassCFOP    := TClasseCombo.Create;
      ClassCFOP.ID  := ibCFOP.FieldByName('IDCFOP').AsInteger;
      cboCFOP.Items.AddObject(ibCFOP.FieldByName('CODIGO_CFOP').AsString+'..'+ibCFOP.FieldByName('DESCRICAOCFOP').AsString,ClassCFOP);
      ibCFOP.Next;
    end;

  end;//with

end;

procedure TfrmProd_MPrima.ExecSELECTCST;


var

ClassCST    : TClasseCombo;
IDClassCST : Integer;

begin
  with dmModule do begin

    ibCST.Close;
    ibCST.SQL.Clear;
    ibCST.SQL.Add('SELECT * FROM TBL_CST ORDER BY IDCST');//('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + InttoStr(IDClass) + ''' ORDER BY NOME');
    ibCST.Open;

    cboCST.Clear; //LIMPA O COMBOBOX
    while not ibCST.Eof do begin
      ClassCST    := TClasseCombo.Create;
      ClassCST.ID  := ibCST.FieldByName('IDCST').AsInteger;
      cboCST.Items.AddObject(ibCST.FieldByName('CODIGO_CST').AsString+'..'+ibCST.FieldByName('DESCRICAOCST').AsString,ClassCST);
      ibCST.Next;
    end;

  end;//with

end;

procedure TfrmProd_MPrima.ExecSELECTST;


var

ClassST    : TClasseCombo;
IDClassST : Integer;

begin
  with dmModule do begin

    ibST.Close;
    ibST.SQL.Clear;
    ibST.SQL.Add('SELECT * FROM TBL_ST ORDER BY ID_ST');
    ibST.Open;

    cboST.Clear; //LIMPA O COMBOBOX
    while not ibST.Eof do begin
      ClassST    := TClasseCombo.Create;
      ClassST.ID  := ibST.FieldByName('ID_ST').AsInteger;
      cboST.Items.AddObject(ibST.FieldByName('DESCRICAOST').AsString,ClassST);
      ibST.Next;
    end;

  end;//with

end;


procedure TfrmProd_MPrima.ExecSELECTCSOSN;


var

ClassCSOSN    : TClasseCombo;
IDClassCSOSN : Integer;

begin
  with dmModule do begin

    ibCSOSN.Close;
    ibCSOSN.SQL.Clear;
    ibCSOSN.SQL.Add('SELECT * FROM TBL_CSOSN ORDER BY ID_CSOSN');//('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + InttoStr(IDClass) + ''' ORDER BY NOME');
    ibCSOSN.Open;

    cboCSOSN.ClearSelection; //LIMPA O COMBOBOX  +'..'+ibCSOSN.FieldByName('DESCRICAOCSOSN').AsString,ClassCSOSN
    while not ibCSOSN.Eof do begin
      ClassCSOSN    := TClasseCombo.Create;
      ClassCSOSN.ID  := ibCSOSN.FieldByName('ID_CSOSN').AsInteger;
      cboCSOSN.Items.AddObject(ibCSOSN.FieldByName('CODIGO_CSOSN').AsString+'..'+ibCSOSN.FieldByName('DESCRICAOCSOSN').AsString,ClassCSOSN);
      ibCSOSN.Next;
    end;
    
  end;//with

end;

procedure TfrmProd_MPrima.ExecSELECTTipoUnidade;

begin

  with dmModule do begin

    ibUnidVenda.Close;
    ibUnidVenda.SQL.Clear;
    ibUnidVenda.SQL.Add('SELECT * FROM TBLUNIDADEDEVENDA');
    ibUnidVenda.Open;

    cboModalidade.Clear;

    while not ibUnidVenda.Eof do begin

      ClassTipodeUnidade     := TClasseCombo.Create;
      ClassTipodeUnidade.ID  := ibUnidVenda.FieldByName('IDTIPOUNID').AsInteger;
      cboModalidade.Items.AddObject(ibUnidVenda.fIELDbYnAME('TIPODEUNIDADE').AsString,ClassTipodeUnidade);
      ibUnidVenda.Next;

    end;//while

  end;//with

end;

procedure TfrmProd_MPrima.ExecSELECTMP;

begin

  with dmModule do begin

    ibMatPrima.Close;
    ibMatPrima.SQL.Clear;
    ibMatPrima.SQL.Add('SELECT TBLMATERIAPRIMA.NOME,TBLMATERIAPRIMA.FABRFORN,'
    + 'TBLMATERIAPRIMA.CODBARRASMP,TBLMATERIAPRIMA.VLRCUSTO,TBLMATERIAPRIMA.VLRVENDA,'
    + 'TBLMATERIAPRIMA.VLRVENDAB,TBLMATERIAPRIMA.VLRVENDAC,TBLMATERIAPRIMA.ECF,'
    + 'TBLMATERIAPRIMA.COMISSAO,TBLMATERIAPRIMA.IDLOCAL,TBLMATERIAPRIMA.IDPRODMP,'
    + 'TBLMATERIAPRIMA.LUCRO,TBLMATERIAPRIMA.IDFORNECEDOR,LOCALESTOCAGEM.NOME As Estoque FROM TBLMATERIAPRIMA '
    + 'INNER JOIN LOCALESTOCAGEM ON TBLMATERIAPRIMA.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE ORDER BY TBLMATERIAPRIMA.NOME');
    ibMatPrima.Open;

    (ibMatPrima.FieldByName('VLRCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibMatPrima.FieldByName('VLRVENDA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO


  end;{with}

end;

procedure TfrmProd_MPrima.LimpaCampo;//procedimento para limpar os campos ao abrir o formulario.
begin

  lbl_edtNomeProduto.Clear;
  lbl_edtCodigo.Clear;
  lbl_edtClassFiscal.Clear;
//  lbl_edtEmb.Clear;
//  lbl_edtUn.Clear;
//  lbl_edtUncompra.Clear;
  lbl_edtCusto.Text := '0,00';
  lbl_edtCodBarra.Clear;
  lbl_edtVendaa.Text := '0,00';
  lbl_edtVendab.Text := '0,00';
  lbl_edtQtdeB.Text  := '0,00';
  lbl_edtVendac.Text := '0,00';
  lbl_edtQtdeC.Text  := '0,00';
  lbl_edtVendad.Text := '0,00';
  lbl_edtVlrPacoteFardo.Text := '0,00';
  lbl_edtQtdePacoteFardo.Text := '0,00';
  lbl_edtEstoqgeral.Clear;
  lbl_edtEstMin.Clear;
  lbl_edtVlrestoq.Clear;
  lbl_edtInfoQP.Clear;
  lbl_edtInfoMP.Clear;
  lbl_edtQtdePrat.Clear;
  lbl_edtMinimoPrat.Clear;
//  lbl_edtMls.Text := '0';
  lbl_edtQtdeEstoque.Clear;
  lbl_edtEstoqueM.Clear;
  lbl_edtVlrEstoque.Clear;
  lbl_edtLucroVenda.Clear;
  lbl_edtRef.Clear;
  lbl_edtMarca.Clear;
  cboModalidade.ClearSelection;
  lbl_edtQtde.Text := '0';
  cboFornecedores.ClearSelection;
  cboFornecedores2.ClearSelection;
  cboFornecedores3.ClearSelection;
  cboFornecedores4.ClearSelection;
  cboFornecedores5.ClearSelection;
  cboFornecedores6.ClearSelection;
  cboFornecedores7.ClearSelection;
  cboFornecedores8.ClearSelection;
  lbl_edtVlrCompraF1.Text := '0,00';
  lbl_edtVlrCompraF2.Text := '0,00';
  lbl_edtVlrCompraF3.Text := '0,00';
  lbl_edtVlrCompraF4.Text := '0,00';
  lbl_edtVlrCompraF5.Text := '0,00';
  lbl_edtVlrCompraF6.Text := '0,00';
  lbl_edtVlrCompraF7.Text := '0,00';
  lbl_edtVlrCompraF8.Text := '0,00';  
  cboGrupo.ClearSelection;
  cboSubgrupo.ClearSelection;
  ckAcrescentarEstoq.Checked := False;
  ckDiminuirEstoque.Checked := False;
  lbl_edtAliquota.Clear;
  ckProdTrib.Checked := False;
  lbl_edtDataEntrada.Clear;
  lbl_edtQtdeEntrada.Clear;
  lbl_edtIPI.Text := '0,00';
  lbl_edtPIS.Text := '0,00';
  lbl_edtICMS.Text := '0,00';
  lbl_edtCOFINS.Text := '0,00';
 { cboCST.ClearSelection;
  cboCSOSN.ClearSelection;
  cboST.ClearSelection;
  cboCFOP.ClearSelection; }
  
end;

procedure TfrmProd_MPrima.ExibeDados;//PROCEDIMENTO PARA EXIBIR OS DADOS DO PRODUTO.
var
  i : Integer;

  OleGraphic: TOleGraphic;
  fs: TFileStream;
  DataLote : TDate;
  VctoLote : String;
  intNacProd,idCST,idCSOSN,idCFOP, intAtivo : Integer;

begin

  with dmModule do begin

//    (ibProdutos.FieldByName('IDPROD') as TIntegerField).DisplayFormat := '0000000000';
    IDProd := ibProdutos.FieldByName('IDPROD').AsInteger;
    lbl_edtCodigo.Text     := FormatFloat('0',ibProdutos.FieldByName('IDPROD').AsInteger);

    Commit(ibConfig);
    ibConfig.Close;
    ibConfig.SQL.Clear;
    ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
    ibConfig.Open;

      for idCFOP:=0 to cboCFOP.Items.Count -1 do begin
        if TClasseCombo( cboCFOP.Items.Objects[idCFOP]).ID = ibProdutos.FieldByName('IDCFOP').AsInteger then begin
          cboCFOP.ItemIndex:= idCFOP;
          Break;
        end else begin
          cboCFOP.Clear;
        end;
      end;

      cboCSOSN.ClearSelection;

      for idCSOSN:=0 to cboCSOSN.Items.Count -1 do begin
        if TClasseCombo( cboCSOSN.Items.Objects[idCSOSN]).ID = ibProdutos.FieldByName('IDCSOSN').AsInteger then begin
          cboCSOSN.ItemIndex:= idCSOSN;
          Break;
        end else begin
          cboCSOSN.Clear;
        end;
      end;

    //TRAZ O GRUPO DO PRODUTO
    for i:=0 to cboGrupo.Items.Count -1 do begin
      if TClasseCombo( cboGrupo.Items.Objects[i]).ID = ibProdutos.FieldByName('IDGRUPO').AsInteger then begin
        cboGrupo.ItemIndex:= i;
        Break;
      end else begin
        cboGrupo.Clear;
      end;
    end;

    cboSubgrupo.ClearSelection;
    //TRAZ O SUBGRUPO DO PRODUTO
    for i:=0 to cboSubgrupo.Items.Count -1 do begin
      if TClasseCombo( cboSubgrupo.Items.Objects[i]).ID = ibProdutos.FieldByName('IDSUBGRUPO').AsInteger then begin
        cboSubgrupo.ItemIndex:= i;
        Break;
      end else begin
        cboSubgrupo.Clear;
      end;
    end;


      cboCST.ClearSelection;
      for idCST:=0 to cboCST.Items.Count -1 do begin
        if TClasseCombo( cboCST.Items.Objects[idCST]).ID = ibProdutos.FieldByName('IDCST').AsInteger then begin
          cboCST.ItemIndex:= idCST;
          Break;
        end else begin
          cboCST.Clear;
        end;
      end;


      for i:=0 to cboST.Items.Count -1 do begin
        if TClasseCombo( cboST.Items.Objects[i]).ID = ibProdutos.FieldByName('IDST').AsInteger then begin
          cboST.ItemIndex:= i;
          Break;
        end else begin
          cboST.Clear;
        end;
      end;
        
    cboFornecedores.ClearSelection;
    //TRAZ O FORNECEDOR DO PRODUTO
    for i:=0 to cboFornecedores.Items.Count -1 do begin
      if TClasseCombo( cboFornecedores.Items.Objects[i]).ID = ibProdutos.FieldByName('FORNECEDOR').AsInteger then begin
        cboFornecedores.ItemIndex:= i;
        Break;
      end else begin
        cboFornecedores.Clear;
      end;
    end;

    cboFornecedores2.ClearSelection;
    //TRAZ O FORNECEDOR DO PRODUTO
    for i:=0 to cboFornecedores2.Items.Count -1 do begin
      if TClasseCombo( cboFornecedores2.Items.Objects[i]).ID = ibProdutos.FieldByName('FORNECEDOR2').AsInteger then begin
        cboFornecedores2.ItemIndex:= i;
        Break;
      end else begin
        cboFornecedores2.Clear;
      end;
    end;

    cboFornecedores3.ClearSelection;
    //TRAZ O FORNECEDOR DO PRODUTO
    for i:=0 to cboFornecedores3.Items.Count -1 do begin
      if TClasseCombo( cboFornecedores3.Items.Objects[i]).ID = ibProdutos.FieldByName('FORNECEDOR3').AsInteger then begin
        cboFornecedores3.ItemIndex:= i;
        Break;
      end else begin
        cboFornecedores3.Clear;
      end;
    end;

    cboFornecedores4.ClearSelection;
    //TRAZ O FORNECEDOR DO PRODUTO
    for i:=0 to cboFornecedores4.Items.Count -1 do begin
      if TClasseCombo( cboFornecedores4.Items.Objects[i]).ID = ibProdutos.FieldByName('FORNECEDOR4').AsInteger then begin
        cboFornecedores4.ItemIndex:= i;
        Break;
      end else begin
        cboFornecedores4.Clear;
      end;
    end;

    cboFornecedores6.ClearSelection;
    //TRAZ O FORNECEDOR DO PRODUTO
    for i:=0 to cboFornecedores6.Items.Count -1 do begin
      if TClasseCombo( cboFornecedores6.Items.Objects[i]).ID = ibProdutos.FieldByName('FORNECEDOR6').AsInteger then begin
        cboFornecedores6.ItemIndex:= i;
        Break;
      end else begin
        cboFornecedores6.Clear;
      end;
    end;

    cboFornecedores7.ClearSelection;
    //TRAZ O FORNECEDOR DO PRODUTO
    for i:=0 to cboFornecedores7.Items.Count -1 do begin
      if TClasseCombo( cboFornecedores7.Items.Objects[i]).ID = ibProdutos.FieldByName('FORNECEDOR7').AsInteger then begin
        cboFornecedores7.ItemIndex:= i;
        Break;
      end else begin
        cboFornecedores7.Clear;
      end;
    end;

    cboFornecedores8.ClearSelection;
    //TRAZ O FORNECEDOR DO PRODUTO
    for i:=0 to cboFornecedores8.Items.Count -1 do begin
      if TClasseCombo( cboFornecedores8.Items.Objects[i]).ID = ibProdutos.FieldByName('FORNECEDOR8').AsInteger then begin
        cboFornecedores8.ItemIndex:= i;
        Break;
      end else begin
        cboFornecedores8.Clear;
      end;
    end;

    cboFornecedores5.ClearSelection;
    //TRAZ O FORNECEDOR DO PRODUTO
    for i:=0 to cboFornecedores5.Items.Count -1 do begin
      if TClasseCombo( cboFornecedores5.Items.Objects[i]).ID = ibProdutos.FieldByName('FORNECEDOR5').AsInteger then begin
        cboFornecedores5.ItemIndex:= i;
        Break;
      end else begin
        cboFornecedores5.Clear;
      end;
    end;
    
    if ibProdutos.FieldByName('IDUNIDVENDA').AsInteger > 0 Then begin

      for i:=0 to cboModalidade.Items.Count -1 do begin
        if TClasseCombo( cboModalidade.Items.Objects[i]).ID = ibProdutos.FieldByName('IDUNIDVENDA').AsInteger then begin
          cboModalidade.ItemIndex:= i;
          Break;
        end else begin
          cboModalidade.Clear;
        end;
      end;

    end;  

    //LIMPA O CAMPO
    for i:=0 to ListLocalEstocagem.Items.Count -1 do begin
        ListLocalEstocagem.Checked[i]:= False;
    end;
      //TRAZ O ESTOQUE DO PRODUTO
    if ibProdutos.FieldByName('IDLOCAL').AsInteger > 0 Then begin

      for i:=0 to ListLocalEstocagem.Items.Count -1 do begin
        if TClasseCombo( ListLocalEstocagem.Items.Objects[i]).ID = ibProdutos.FieldByName('IDLOCAL').AsInteger then begin
          ListLocalEstocagem.Checked[i]:= True;
          Break;
        end else begin
          ListLocalEstocagem.Clear;
        end;
      end;

    end;

    lbl_edtNomeProduto.Text         := ibProdutos.FieldByName('NOME').AsString;
    lbl_edtRef.Text                 := ibProdutos.FieldByName('REF').AsString;
    lbl_edtCodBarra.Text            := ibProdutos.FieldByName('CODBARRAS').AsString;
    lbl_edtCodigo.Text              := IntToStr(ibProdutos.FieldByName('IDPROD').AsInteger);
    lbl_edtVendaa.Text              := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);

    if ibConfig.FieldByName('TRESCASASDECIMAIS').AsString = 'Sim' Then begin

      lbl_edtCusto.Text               := FormatFloat(CasasDecimais('Combustiveis'),ibProdutos.FieldByName('VALORCUSTO').AsFloat);
      lbl_edtVendab.Text              := FormatFloat(CasasDecimais('Combustiveis'),ibProdutos.FieldByName('VALORVENDAB').AsFloat);
      lbl_edtQtdeB.Text               := FormatFloat(CasasDecimais('Combustiveis'),ibProdutos.FieldByName('QTDEB').AsFloat);
      lbl_edtVendac.Text              := FormatFloat(CasasDecimais('Combustiveis'),ibProdutos.FieldByName('VALORVENDAC').AsFloat);
      lbl_edtQtdeC.Text               := FormatFloat(CasasDecimais('Combustiveis'),ibProdutos.FieldByName('QTDEC').AsFloat);

    end else begin

      lbl_edtCusto.Text               := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORCUSTO').AsFloat);
      lbl_edtVendab.Text              := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAB').AsFloat);
      lbl_edtQtdeB.Text               := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('QTDEB').AsFloat);
      lbl_edtVendac.Text              := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAC').AsFloat);
      lbl_edtQtdeC.Text               := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('QTDEC').AsFloat);

    end;

    lbl_edtVendad.Text              := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAD').AsFloat);
    lbl_edtVlrPacoteFardo.Text      := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VLRPACOTEFARDO').AsFloat);
    lbl_edtQtdePacoteFardo.Text     := FormatFloat(('0'),ibProdutos.FieldByName('QTDEPACOTEFARDO').AsFloat);
    lbl_edtVlrCompraF1.Text         := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VLRCUSTOF1').AsFloat);
    lbl_edtVlrCompraF2.Text         := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VLRCUSTOF2').AsFloat);
    lbl_edtVlrCompraF3.Text         := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VLRCUSTOF3').AsFloat);
    lbl_edtVlrCompraF4.Text         := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VLRCUSTOF4').AsFloat);
    lbl_edtVlrCompraF5.Text         := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VLRCUSTOF5').AsFloat);
    lbl_edtVlrCompraF6.Text         := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VLRCUSTOF6').AsFloat);
    lbl_edtVlrCompraF7.Text         := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VLRCUSTOF7').AsFloat);
    lbl_edtVlrCompraF8.Text         := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VLRCUSTOF8').AsFloat);
    lbl_edtLucro.Text               := ibProdutos.FieldByName('LUCRO').AsString;
   //lbl_edtNumLote.Text             := ibProdutos.FieldByName('LOTE').AsString;
    lbl_edtMarca.Text               := ibProdutos.FieldByName('MARCA').AsString;
    lbl_edtAliquota.Text            := ibProdutos.FieldByName('ALIQUOTA').AsString;
    lbl_edtClassFiscal.Text         := ibProdutos.FieldByName('NCM').AsString;
    lbl_edtIPI.Text                 := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('IPI').AsFloat);
    lbl_edtPIS.Text                 := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('PIS').AsFloat);
    lbl_edtICMS.Text                := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('ICMS').AsFloat);
    lbl_edtCOFINS.Text              := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('COFINS').AsFloat);

    if ibProdutos.FieldByName('NACIONALIDADEPROD').AsInteger = 1 Then begin

      rbNacional.Checked := True;

    end else begin

      rbNacional.Checked := False;

    end;

    if ibProdutos.FieldByName('NACIONALIDADEPROD').AsInteger = 2 Then begin

      rbImportado.Checked := True;

    end else begin

      rbImportado.Checked := False;

    end;

    if ibProdutos.FieldByName('IDTIPODEOLEO').AsInteger = 1 Then begin

      rbMineral.Checked := True;

    end;

    if ibProdutos.FieldByName('IDTIPODEOLEO').AsInteger = 2 Then begin

      rbSintetico.Checked := True;

    end;

    if (ibProdutos.FieldByName('IDTIPODEOLEO').AsInteger <> 1)and(ibProdutos.FieldByName('IDTIPODEOLEO').AsInteger <> 2) Then begin

      rbMineral.Checked := False;
      rbSintetico.Checked := False;

    end;

    if ibProdutos.FieldByName('ATIVO').AsInteger = 1 Then begin

      ckProdAtivo.Checked := True;

      end else begin

      ckProdAtivo.Checked := False;

    end;//if


   /// lbl_edtTributario.Text          := ibProdutos.FieldByName('PRODUTOTRIBUTADO').AsString;

  {  if pcCadProdutos.ActivePage.TabIndex = 3 Then begin

      lbl_edtIDProdEquivalente.Text   := IntToStr(ibProdutos.FieldByName('IDPROD').AsInteger);
      lbl_edtNomeProdEquivalente.Text := ibProdutos.FieldByName('NOME').AsString;

    end;//if  }

    Commit(ibProdEquivalente);
    ibProdEquivalente.Close;
    ibProdEquivalente.SQL.Clear;
    ibProdEquivalente.SQL.Add('SELECT TBLPRODEQUIVALENTE.*,CADPRODUTOS.VALORVENDAA,'
    + 'TBLENTRADAESTOQUEPROD.QUANTIDADE FROM TBLPRODEQUIVALENTE '
    + 'INNER JOIN CADPRODUTOS ON TBLPRODEQUIVALENTE.IDPROD=CADPRODUTOS.IDPROD '
    + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON TBLPRODEQUIVALENTE.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD WHERE IDPRODDETALHEE=''' + lbl_edtCodigo.Text + '''');
    ibProdEquivalente.Open;

    (ibProdEquivalente.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO


     if ibProdutos.FieldByName('VCTOLOTE').AsDateTime > 0 Then begin
       dtpVctoLote.Font.Color  := clBlue;
       dtpVctoLote.Date        := ibProdutos.FieldByName('VCTOLOTE').AsDateTime;
       ckVctoLote.Checked := True;
       lbl_VctoLote.Font.Color := clBlue;

     end else begin
       dtpVctoLote.Font.Color  := clRed;
       dtpVctoLote.Date        := StrToDate(FormatDateTime('dd/mm/yyyy',Now));
       ckVctoLote.Checked := False;
       lbl_VctoLote.Font.Color := clRed;

     end;

    //    lbl_edtLocPrateleira.Text       := ibProdutos.FieldByName('LOCALIZACAO').AsString;
  //  lbl_edtVlr.Text                 := FormatFloat(CasasDecimais('Combustiveis'),ibProdutos.FieldByName('VLRPROM').AsFloat);
 //   lbl_edtQtde.Text                := ibProdutos.FieldByName('QTDEPROM').AsString;
    lbl_edtLucroVenda.Text          := ibProdutos.FieldByName('LUCROVENDA').AsString;
    lbl_edtQtde.Text                := FormatFloat(('0'),ibProdutos.FieldByName('QTDE').AsFloat);
   // lbl_edtEstoqgeral.Text          := IntToStr( ibProdutos.FieldByName('ESTGERAL').AsInteger );
  //  lbl_edtEstMin.Text              := IntToStr( ibProdutos.FieldByName('ESTMIN').AsInteger );
  //  lbl_edtVlrestoq.Text            := ibProdutos.FieldByName('TOTALEST').AsString;
    //lbl_edtEstoqgeral.Text          :=  FormatFloat('###00,0',ibProdutos.FieldByName('QtdeEstoque').AsFloat);
    //lbl_edtEstMin.Text              :=  FormatFloat('0',ibProdutos.FieldByName('ESTOQUEMIN').AsFloat);


    ///////////////////////////////////////////////////////////////////////////////////////

    //ROTINA DE EXIBI��O DA IMAGEM DO PRODUTO
   { if lbl_edtNomeProduto.Text <> '' Then begin
      imgAmpliar.Enabled        := True;
      lblAmpliarImagem.Enabled  := True;
      //HABILITA O BOTAO PROCURAR IMAGEM
      imgProcurarImagem.Enabled := True;
      lblProcurarImagem.Enabled := True;
    end else begin //CASO N�O TENHA UM C�DIGO DE BARRAS DO PRODUTO
      imgAmpliar.Enabled        := False;
      lblAmpliarImagem.Enabled  := False;
      //DESABILITE O BOTAO PROCURAR IMAGEM
      imgProcurarImagem.Enabled := False;
      lblProcurarImagem.Enabled := False;
    end;  }

    //ROTINA PARA EXIBIR A IMAGEM DO PRODUTO    
   {if Not FileExists(ExtractFilePath(Application.ExeName) + 'Data\RunTime\ProdImagens\' + lbl_edtNomeProduto.Text + '.jpg') Then begin

      imgProduto.Picture := Nil; //LIMPA A IMAGEM
      ImagemProduto := '';

    end else begin

      try
        OleGraphic := TOleGraphic.Create;
        fs         := TFileStream.Create(ExtractFilePath(Application.ExeName) //EXIBE A IMAGEM DO PRODUTO
                                        + 'Data\RunTime\ProdImagens\' + lbl_edtNomeProduto.Text + '.jpg', fmOpenRead or fmSharedenyNone);
        OleGraphic.LoadFromStream(fs);
        imgProduto.Picture.Assign(OleGraphic);

       // imgProduto.Picture.LoadFromFile();

        ImagemProduto := ExtractFilePath(Application.ExeName) //EXIBE A IMAGEM DO PRODUTO
                                        + 'Data\RunTime\ProdImagens\' + lbl_edtNomeProduto.Text + '.jpg';

      finally
        fs.Free;
        OleGraphic.Free
      end;


    end; }
        
    //MOSTRA OUTRAS OP��ES NO CADASTRO
//    lblEstoqueCodBarrasProd.Caption    := ibProdutos.FieldByName('CODBARRAS').AsString;
//    lblTracoEstoque.Caption            := ' - ';
//    lblEstoqueNomeProd.Caption         := ibProdutos.FieldByName('NOME').AsString;

    Commit(ibEntrProdEstoque);
    ibEntrProdEstoque.Close;
    ibEntrProdEstoque.SQL.Clear;
    ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.*, CADPRODUTOS.NOME, LOCALESTOCAGEM.NOME As LocalEstoque'
    + ' FROM TBLENTRADAESTOQUEPROD LEFT OUTER JOIN CADPRODUTOS '
    + ' ON TBLENTRADAESTOQUEPROD.IDPROD = CADPRODUTOS.IDPROD LEFT OUTER JOIN LOCALESTOCAGEM '
    + ' ON CADPRODUTOS.IDLOCAL = LOCALESTOCAGEM.IDESTOQUE '
    + ' WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + IntToStr(IDProd) + '''');
    ibEntrProdEstoque.Open;

    FormatFloat(CasasDecimais('Produtos'),ibEntrProdEstoque.FieldByName('QUANTIDADE').AsInteger);

    lbl_edtEstoqgeral.Text  := FormatFloat(CasasDecimais('Produtos'),ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat);
    lbl_edtVlrestoq.Text    := FormatFloat(CasasDecimais('Produtos'),ibEntrProdEstoque.FieldByName('VLRTOTAL').AsFloat);
    lbl_edtEstMin.Text      := ibEntrProdEstoque.FieldByName('ESTOQUEMIN').AsString;
    lbl_edtQtdeEntrada.Text := FloatToStr(ibEntrProdEstoque.FieldByName('QTDEENTRADA').AsFloat);
    if ibEntrProdEstoque.FieldByName('DATAENTRADA').AsDateTime > 0 Then Begin

      lbl_edtDataEntrada.Text := DateToStr(ibEntrProdEstoque.FieldByName('DATAENTRADA').AsDateTime);

    end else begin

      lbl_edtDataEntrada.Clear;  

    end;  


    //if (ibEntrProdEstoque.FieldByName('QTDEPRATELEIRA').AsFloat > 0)Then begin
    lbl_edtInfoQP.Text      := FormatFloat(CasasDecimais('Produtos'),ibEntrProdEstoque.FieldByName('QTDEPRATELEIRA').AsFloat);
  //  end;
    lbl_edtInfoMP.Text      := FormatFloat(CasasDecimais('Produtos'),ibEntrProdEstoque.FieldByName('MINIMOPRATELEIRA').AsFloat);


    //VERIFICA SE O ESTADO ESTIVER EM BAIXA MUDA O TEXTO E A COR DO LABEL
{    if ibEntrProdEstoque.RecordCount > 0 then begin

      if (ibEntrProdEstoque.FieldByName('QUANTIDADE').AsInteger < ibEntrProdEstoque.FieldByName('ESTOQUEMIN').AsInteger) then begin

        lblEstadoEstoque.Caption          := 'EM BAIXA';
        lblEstadoEstoque.Font.Color       := clRed;

      end else begin

        lblEstadoEstoque.Caption          := 'NORMAL';
        lblEstadoEstoque.Font.Color       := clBlue;

      end;

    end else begin

      lblEstadoEstoque.Caption          := 'INDISPON�VEL';
      lblEstadoEstoque.Font.Color       := clBlue;

    end;

    ibMovEst.Close;
    ibMovEst.SQL.Clear;
    ibMovEst.SQL.Add('SELECT TBLMOVESTOQUE.DATA,TBLMOVESTOQUE.HORA,TBLMOVESTOQUE.SAIDA,'
    + ' TBLMOVESTOQUE.ENTRADA FROM TBLMOVESTOQUE '
    + ' LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON TBLMOVESTOQUE.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD '
    + ' WHERE TBLMOVESTOQUE.IDPROD=''' + IntToStr(IDProd) + ''' ORDER BY TBLMOVESTOQUE.DATA DESC');
    ibMovEst.Open; }


 //  (ibMovEst.FieldByName('SAIDA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

  end; {with}

end;

procedure TfrmProd_MPrima.ExecEstoque;
begin

  with dmModule do begin

    ibEstoque.Close;
    ibEstoque.SQL.Clear;
    ibEstoque.SQL.Add('SELECT * FROM LOCALESTOCAGEM');
    ibEstoque.Open;

    ListLocalEstocagem.Clear;
    while not ibEstoque.Eof do begin
      ClassNomeEst    := TClasseCombo.Create;
      ClassNomeEst.ID  := ibEstoque.FieldByName('IDESTOQUE').AsInteger;
      ListLocalEstocagem.Items.AddObject(ibEstoque.FieldByName('NOME').AsString,ClassNomeEst);
      ibEstoque.Next;
    end; {while}

  end; {with}

end;

procedure TfrmProd_MPrima.ExecSELECTGrupo;
begin
  with dmModule do begin

    ibGrupo.Close;
    ibGrupo.SQL.Clear;
    ibGrupo.SQL.Add('SELECT * FROM TBLGRUPO');
    ibGrupo.Open;

    cboGrupo.Clear; //LIMPA O COMBOBOX
    while not ibGrupo.Eof do begin
      ClassGrupo     := TClasseCombo.Create;
      ClassGrupo.ID  := ibGrupo.FieldByName('IDGRUPO').AsInteger;
      cboGrupo.Items.AddObject(ibGrupo.FieldByName('NOME').AsString,ClassGrupo);
      ibGrupo.Next;
    end;{while}
  end;{with}
end;

procedure TfrmProd_MPrima.ExecSELECTSubgrupo;
begin
  with dmModule do begin

    ibSubgrupo.Close;
    ibSubgrupo.SQL.Clear;
    ibSubgrupo.SQL.Add('SELECT * FROM TBLSUBGRUPO');
    ibSubgrupo.Open;

    cboSubgrupo.Clear; //LIMPA O COMBOBOX
    while not ibSubgrupo.Eof do begin
      ClassSubgrupo     := TClasseCombo.Create;
      ClassSubgrupo.ID  := ibSubgrupo.FieldByName('IDSUB').AsInteger;
      cboSubgrupo.Items.AddObject(ibSubgrupo.FieldByName('NOMESUBGRUPO').AsString,ClassSubgrupo);
      ibSubgrupo.Next;
    end;
  end;
end;

procedure TfrmProd_MPrima.ExecSELECTFornecedor;
begin
  with dmModule do begin

    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Fornecedores''');
    ibClassificacao.Open;
    IDClassForn := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICA��O DO FORNECEDOR NA VARIAVEL.

    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + IntToStr(IDClassForn)+'''ORDER BY NOME');//('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + InttoStr(IDClass) + ''' ORDER BY NOME');
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

procedure TfrmProd_MPrima.ExecSELECTFornecedor2;

var

ClassForn2    : TClasseCombo;
IDClassForn2 : Integer;

begin
  with dmModule do begin

    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Fornecedores''');
    ibClassificacao.Open;
    IDClassForn2 := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICA��O DO FORNECEDOR NA VARIAVEL.

    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + IntToStr(IDClassForn2) + ''' ORDER BY NOME');//('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + InttoStr(IDClass) + ''' ORDER BY NOME');
    ibCadastro.Open;

    cboFornecedores2.Clear; //LIMPA O COMBOBOX
    while not ibCadastro.Eof do begin
      ClassForn2    := TClasseCombo.Create;
      ClassForn2.ID  := ibCadastro.FieldByName('IDCAD').AsInteger;
      cboFornecedores2.Items.AddObject(ibCadastro.FieldByName('NOME').AsString,ClassForn2);
      ibCadastro.Next;
    end;
  end;
end;

procedure TfrmProd_MPrima.ExecSELECTFornecedor3;

var

ClassForn3    : TClasseCombo;
IDClassForn3 : Integer;

begin
  with dmModule do begin

    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Fornecedores''');
    ibClassificacao.Open;
    IDClassForn3 := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICA��O DO FORNECEDOR NA VARIAVEL.

    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + IntToStr(IDClassForn3) + ''' ORDER BY NOME');//('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + InttoStr(IDClass) + ''' ORDER BY NOME');
    ibCadastro.Open;

    cboFornecedores3.Clear; //LIMPA O COMBOBOX
    while not ibCadastro.Eof do begin
      ClassForn3    := TClasseCombo.Create;
      ClassForn3.ID  := ibCadastro.FieldByName('IDCAD').AsInteger;
      cboFornecedores3.Items.AddObject(ibCadastro.FieldByName('NOME').AsString,ClassForn3);
      ibCadastro.Next;
    end;
  end;
end;

procedure TfrmProd_MPrima.ExecSELECTFornecedor4;

var

ClassForn4    : TClasseCombo;
IDClassForn4 : Integer;

begin
  with dmModule do begin

    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Fornecedores''');
    ibClassificacao.Open;
    IDClassForn4 := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICA��O DO FORNECEDOR NA VARIAVEL.

    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + IntToStr(IDClassForn4) + ''' ORDER BY NOME');//('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + InttoStr(IDClass) + ''' ORDER BY NOME');
    ibCadastro.Open;

    cboFornecedores4.Clear; //LIMPA O COMBOBOX
    while not ibCadastro.Eof do begin
      ClassForn4    := TClasseCombo.Create;
      ClassForn4.ID  := ibCadastro.FieldByName('IDCAD').AsInteger;
      cboFornecedores4.Items.AddObject(ibCadastro.FieldByName('NOME').AsString,ClassForn4);
      ibCadastro.Next;
    end;
  end;
end;

procedure TfrmProd_MPrima.ExecSELECTFornecedor5;

var

ClassForn5    : TClasseCombo;
IDClassForn5 : Integer;

begin
  with dmModule do begin

    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Fornecedores''');
    ibClassificacao.Open;
    IDClassForn5 := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICA��O DO FORNECEDOR NA VARIAVEL.

    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + IntToStr(IDClassForn5) + ''' ORDER BY NOME');//('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + InttoStr(IDClass) + ''' ORDER BY NOME');
    ibCadastro.Open;

    cboFornecedores5.Clear; //LIMPA O COMBOBOX
    while not ibCadastro.Eof do begin
      ClassForn5    := TClasseCombo.Create;
      ClassForn5.ID  := ibCadastro.FieldByName('IDCAD').AsInteger;
      cboFornecedores5.Items.AddObject(ibCadastro.FieldByName('NOME').AsString,ClassForn5);
      ibCadastro.Next;
    end;
  end;
end;

procedure TfrmProd_MPrima.ExecSELECTFornecedor6;

var

ClassForn6    : TClasseCombo;
IDClassForn6 : Integer;

begin
  with dmModule do begin

    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Fornecedores''');
    ibClassificacao.Open;
    IDClassForn6 := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICA��O DO FORNECEDOR NA VARIAVEL.

    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + IntToStr(IDClassForn6) + ''' ORDER BY NOME');//('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + InttoStr(IDClass) + ''' ORDER BY NOME');
    ibCadastro.Open;

    cboFornecedores6.Clear; //LIMPA O COMBOBOX
    while not ibCadastro.Eof do begin
      ClassForn6    := TClasseCombo.Create;
      ClassForn6.ID  := ibCadastro.FieldByName('IDCAD').AsInteger;
      cboFornecedores6.Items.AddObject(ibCadastro.FieldByName('NOME').AsString,ClassForn6);
      ibCadastro.Next;
    end;
  end;
end;

procedure TfrmProd_MPrima.ExecSELECTFornecedor7;

var

ClassForn7    : TClasseCombo;
IDClassForn7 : Integer;

begin
  with dmModule do begin

    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Fornecedores''');
    ibClassificacao.Open;
    IDClassForn7 := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICA��O DO FORNECEDOR NA VARIAVEL.

    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + IntToStr(IDClassForn7) + ''' ORDER BY NOME');//('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + InttoStr(IDClass) + ''' ORDER BY NOME');
    ibCadastro.Open;

    cboFornecedores7.Clear; //LIMPA O COMBOBOX
    while not ibCadastro.Eof do begin
      ClassForn7    := TClasseCombo.Create;
      ClassForn7.ID  := ibCadastro.FieldByName('IDCAD').AsInteger;
      cboFornecedores7.Items.AddObject(ibCadastro.FieldByName('NOME').AsString,ClassForn7);
      ibCadastro.Next;
    end;
  end;
end;

procedure TfrmProd_MPrima.ExecSELECTFornecedor8;

var

ClassForn8    : TClasseCombo;
IDClassForn8 : Integer;

begin
  with dmModule do begin

    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Fornecedores''');
    ibClassificacao.Open;
    IDClassForn8 := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICA��O DO FORNECEDOR NA VARIAVEL.

    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + IntToStr(IDClassForn8) + ''' ORDER BY NOME');//('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + InttoStr(IDClass) + ''' ORDER BY NOME');
    ibCadastro.Open;

    cboFornecedores8.Clear; //LIMPA O COMBOBOX
    while not ibCadastro.Eof do begin
      ClassForn8    := TClasseCombo.Create;
      ClassForn8.ID  := ibCadastro.FieldByName('IDCAD').AsInteger;
      cboFornecedores8.Items.AddObject(ibCadastro.FieldByName('NOME').AsString,ClassForn8);
      ibCadastro.Next;
    end;
  end;
end;

procedure TfrmProd_MPrima.ExecSELECT;
begin
  with dmModule do begin

   { ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Produtos''');
    ibClassificacao.Open;
    IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger;} // ATRIBUI A IDENTIFICA��O DO FORNECEDOR NA VARIAVEL.

    Commit(ibProdutos);
    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS ORDER BY NOME');
    ibProdutos.Open;


   //BUSCA TODOS OS PRODUTOS QUE ESTEJAM NA CLASSIFICA��O DE PRODUTOS
   { Commit(ibProdutos);
    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT CADPRODUTOS.IDPROD,CADPRODUTOS.IDGRUPO,CADPRODUTOS.IDSUBGRUPO,CADPRODUTOS.IDLOCAL,'
    + 'CADPRODUTOS.NOME,CADPRODUTOS.FORNECEDOR,CADPRODUTOS.VALORCUSTO,CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORVENDAB,'
    + 'CADPRODUTOS.VALORVENDAC,CADPRODUTOS.VALORVENDAD,CADPRODUTOS.LUCRO,'
    + 'CADPRODUTOS.VLRPROM,CADPRODUTOS.FABRICANTE,CADPRODUTOS.CODBARRASAD,CADPRODUTOS.LUCROVENDA,CADPRODUTOS.IDCLASS,'
    + 'CADPRODUTOS.IDUNIDVENDA,CADPRODUTOS.QTDE,CADPRODUTOS.NOMEUNIDVENDA,CADPRODUTOS.LOTE,'
    + 'CADPRODUTOS.VCTOLOTE,CADPRODUTOS.DATACADASTRO,CADPRODUTOS.DATAAVISOLOTE,'
    + 'CADPRODUTOS.CONFIRMAVCTOLOTE,CADPRODUTOS.DATAALTERACAO,CADPRODUTOS.REF,CADPRODUTOS.IDTIPODEOLEO,'
    + 'CADPRODUTOS.CODBARRAS,CADPRODUTOS.CODIGOFABRICANTE,CADPRODUTOS.MARCA,'
    + 'CADPRODUTOS.ALIQUOTA,CADPRODUTOS.VALORCUSTOMEDIO,CADPRODUTOS.VLRPACOTEFARDO,CADPRODUTOS.QTDEPACOTEFARDO,'
    + 'CADPRODUTOS.QTDEB,CADPRODUTOS.QTDEC,CADPRODUTOS.QTDED,CADPRODUTOS.FORNECEDOR2,CADPRODUTOS.FORNECEDOR3,'
    + 'CADPRODUTOS.FORNECEDOR4,CADPRODUTOS.FORNECEDOR5,CADPRODUTOS.FORNECEDOR6,CADPRODUTOS.FORNECEDOR7,CADPRODUTOS.FORNECEDOR8,'
    + 'CADPRODUTOS.LUCROB,CADPRODUTOS.LUCROC,CADPRODUTOS.LUCROD,CADPRODUTOS.NCM,CADPRODUTOS.NACIONALIDADEPROD,CADPRODUTOS.ATIVO,'
    + 'CADPRODUTOS.VALIDADEPROD,CADPRODUTOS.IDCST,CADPRODUTOS.IDCSOSN,CADPRODUTOS.QTDEENTRADA,CADPRODUTOS.IDST,'
    + 'CADPRODUTOS.NCMSH,CADPRODUTOS.PRODUTOTRIBUTADO,CADPRODUTOS.IDCFOP,CADPRODUTOS.VLRCUSTOF1,CADPRODUTOS.VLRCUSTOF2,'
    + 'CADPRODUTOS.VLRCUSTOF3,CADPRODUTOS.VLRCUSTOF4,CADPRODUTOS.VLRCUSTOF5,CADPRODUTOS.VLRCUSTOF6,CADPRODUTOS.VLRCUSTOF7,CADPRODUTOS.VLRCUSTOF8,'
    + 'TBLENTRADAESTOQUEPROD.ESTOQUEMIN,TBLENTRADAESTOQUEPROD.QUANTIDADE As QtdeEstoque,'
    + 'LOCALESTOCAGEM.NOME As Estoque,TBL_CST.IDCST,TBL_CST.CODIGO_CST,TBL_CFOP.IDCFOP,TBL_CFOP.CODIGO_CFOP,TBL_CSOSN.ID_CSOSN,TBL_CSOSN.CODIGO_CSOSN FROM CADPRODUTOS '
    + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE '
    + 'LEFT OUTER JOIN TBL_CST ON CADPRODUTOS.IDCST=TBL_CST.IDCST '
    + 'LEFT OUTER JOIN TBL_CFOP ON CADPRODUTOS.IDCFOP=TBL_CFOP.IDCFOP '
    + 'LEFT OUTER JOIN TBL_CSOSN ON CADPRODUTOS.IDCSOSN=TBL_CSOSN.ID_CSOSN '
    + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD ORDER BY CADPRODUTOS.NOME');
    ibProdutos.Open; }

    Commit(ibConfig);
    ibConfig.Close;
    ibConfig.SQL.Clear;
    ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
    ibConfig.Open;

    if ibConfig.FieldByName('TRESCASASDECIMAIS').AsString = 'Sim' Then begin

      (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat   := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('VALORVENDAB') as TFloatField).DisplayFormat  := CasasDecimais('Combustiveis');
      (ibProdutos.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat  := CasasDecimais('Combustiveis');
      (ibProdutos.FieldByName('QTDEB') as TFloatField).DisplayFormat        := CasasDecimais('Combustiveis');
      (ibProdutos.FieldByName('QTDEC') as TFloatField).DisplayFormat        := CasasDecimais('Combustiveis');

    end else begin

      (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat   := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('VALORVENDAB') as TFloatField).DisplayFormat  := CasasDecimais('Produtos');
      (ibProdutos.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat  := CasasDecimais('Produtos');
      (ibProdutos.FieldByName('QTDEB') as TFloatField).DisplayFormat        := CasasDecimais('Produtos');
      (ibProdutos.FieldByName('QTDEC') as TFloatField).DisplayFormat        := CasasDecimais('Produtos');

    end;
    (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
//    (ibProdutos.FieldByName('VLRPROM') as TFloatField).DisplayFormat            := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutos.FieldByName('VLRPACOTEFARDO') as TFloatField).DisplayFormat         := CasasDecimais('Produtos');
    (ibProdutos.FieldByName('QTDE') as TFloatField).DisplayFormat               := '0'; //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutos.FieldByName('QTDEPACOTEFARDO') as TFloatField).DisplayFormat               := '0';

  end;
end;

procedure TfrmProd_MPrima.AlteraEstoque;

var
QtdeGeral,TotalQtdeGeralAlt,Minimo,TotalMinimoAlt,VlrGeral,VlrGeralAlt, NovoValor : Real;
TotalGeralQtde, TotalMinimo, TotalVlrEstoque, VlrTotalCusto : String;
VlrCusto,TotalCusto,VlrCustoFormula,RCustoFormula,QtdeFormula, VlrCustoNovoProduto : Real;
QtdeProdEstoqueE,ValorTotalE, VlrCustoProd,TotalCustoFormula : String;
VlrEstoque,QtdeEstoque,EstoqueMin,TotalQtdeFormula,VlrCustoNovo,QtdeEntrada : String;
ConfirmaAltEstoque : Integer;

begin

  with dmModule do begin

    if (lbl_edtNomeProduto.Text <> '')and(lbl_edtCustoFormula.Text = '0,00')and(lbl_edtQtdeFormula.Text = '0,00') Then begin

      if ckAcrescentarEstoq.Checked Then begin

        ibEntrProdEstoque.Close;
        ibEntrProdEstoque.SQL.Clear;
        ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.*, CADPRODUTOS.NOME, LOCALESTOCAGEM.NOME As LocalEstoque'
        + ' FROM TBLENTRADAESTOQUEPROD LEFT OUTER JOIN CADPRODUTOS '
        + ' ON TBLENTRADAESTOQUEPROD.IDPROD = CADPRODUTOS.IDPROD LEFT OUTER JOIN LOCALESTOCAGEM '
        + ' ON CADPRODUTOS.IDLOCAL = LOCALESTOCAGEM.IDESTOQUE '
        + ' WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + IntToStr(IDProd) + '''');
        ibEntrProdEstoque.Open;

        FormatFloat(CasasDecimais('Produtos'),ibEntrProdEstoque.FieldByName('QUANTIDADE').AsInteger);

        //rotina para somar a qtde de entrada no estoque

        if (lbl_edtQtdeEstoque.Text <> '') or (lbl_edtVendaa.Text <> '') Then begin

          QtdeGeral := StrToFloat(StringReplace(FloatToStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          if lbl_edtQtdeEstoque.Text = '' Then begin

          TotalQtdeGeralAlt := 0;

          end else begin

          TotalQtdeGeralAlt := StrToFloat(StringReplace(lbl_edtQtdeEstoque.Text,ThousandSeparator,'',[rfReplaceAll]));

          end;

          QtdeGeral := QtdeGeral + TotalQtdeGeralAlt;

          TotalGeralQtde := StringReplace(FloatToStr(QtdeGeral),ThousandSeparator,'',[rfReplaceAll]);
          TotalGeralQtde := StringReplace(TotalGeralQtde,DecimalSeparator,'.',[rfReplaceAll]);

        /////////////////////////////////////////////////////////////////////////

          //rotina para calculo do vlr total do estoque
          NovoValor   := StrToFloat(StringReplace(lbl_edtVendaa.Text,ThousandSeparator,'',[rfReplaceAll]));
          VlrGeral    := NovoValor * QtdeGeral;

          TotalVlrEstoque := StringReplace(FloatToStr(VlrGeral),ThousandSeparator,'',[rfReplaceAll]);
          TotalVlrEstoque := StringReplace(TotalVlrEstoque,DecimalSeparator,'.',[rfReplaceAll]);



        //////////////////////////////////////////////////////////////////////////

          // rotina para somar o custo do produto no estoque

          if (lbl_edtCustoFormula.Text > '0,00')and(lbl_edtQtdeFormula.Text > '0,00')and(lbl_edtResultado.Text > '0,00') Then begin

            VlrCustoFormula := StrToFloat(StringReplace(lbl_edtResultado.Text,ThousandSeparator,'',[rfReplaceAll]));
            QtdeFormula     := StrToFloat(StringReplace(lbl_edtQtdeFormula.Text,ThousandSeparator,'',[rfReplaceAll]));
            RCustoFormula   := VlrCustoFormula * QtdeGeral;

            VlrTotalCusto := StringReplace(FloatToStr(RCustoFormula),ThousandSeparator,'',[rfReplaceAll]);
            VlrTotalCusto := StringReplace(VlrTotalCusto,DecimalSeparator,'.',[rfReplaceAll]);

           /// VlrCustoNovoProduto := StrToFloat(StringReplace(lbl_Resultado.Text,ThousandSeparator,'',[rfReplaceAll]));
            VlrCustoNovo  := StringReplace(lbl_edtResultado.Text,ThousandSeparator,'',[rfReplaceAll]);
            VlrCustoNovo  := StringReplace(VlrCustoNovo,DecimalSeparator,'.',[rfReplaceAll]);

            ibProdutos.Close;
            ibProdutos.SQL.Clear;
            ibProdutos.SQL.Add('UPDATE CADPRODUTOS SET '
            +'VALORCUSTO=''' + VlrCustoNovo + ''' WHERE IDPROD=''' + IntToStr(IDProd) + '''');
            ibProdutos.ExecSQL;
            Commit(ibProdutos);

          end else begin

            TotalCusto := StrToFloat(StringReplace(lbl_edtCusto.Text,ThousandSeparator,'',[rfReplaceAll]));
            VlrCusto   := TotalCusto * QtdeGeral;

            VlrTotalCusto := StringReplace(FloatToStr(VlrCusto),ThousandSeparator,'',[rfReplaceAll]);
            VlrTotalCusto := StringReplace(VlrTotalCusto,DecimalSeparator,'.',[rfReplaceAll]);

         end;//if
        //////////////////////////////////////////////////////////////////////////

          //rotina para substituir o estoque minimo
       //  if lbl_edtEstoqueM.Text <> '' Then begin

            TotalMinimo := StringReplace(lbl_edtEstoqueM.Text,ThousandSeparator,'',[rfReplaceAll]);
            TotalMinimo := StringReplace(TotalMinimo,DecimalSeparator,'.',[rfReplaceAll]);
            if TotalMinimo = '' Then
            TotalMinimo := '0';

            QtdeEntrada := StringReplace(lbl_edtQtdeEstoque.Text,ThousandSeparator,'',[rfReplaceAll]);
            QtdeEntrada := StringReplace(lbl_edtQtdeEstoque.Text,DecimalSeparator,'.',[rfReplaceAll]);
            if QtdeEntrada = '' Then
            QtdeEntrada := '0';

       //   end;//if

         /////////////////////////////////////////////////////////////////////////

          if ibEntrProdEstoque.RecordCount > 0 Then begin

            ibEntrProdEstoque.Close;
            ibEntrProdEstoque.SQL.Clear;
            ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
            + 'QUANTIDADE = ''' + TotalGeralQtde + ''','
            + 'QTDEENTRADA = ''' + QtdeEntrada + ''','
            + 'ESTOQUEMIN = ''' + TotalMinimo + ''','
            + 'TOTALCUSTO =  ''' + VlrTotalCusto + ''','
            + 'DATAENTRADA = ''' + FormatDateTime('mm/dd/yyyy',Now) + ''','
            + 'DATAULTIMAENTR = ''' + FormatDateTime('mm/dd/yyyy',Now) + ''','
            + 'VLRTOTAL = ''' + TotalVlrEstoque + ''' WHERE IDPROD = ''' + IntToStr(IDProd) + '''');
            ibEntrProdEstoque.ExecSQL;
            Commit(ibEntrProdEstoque);

          end else begin

            ValorTotalE := StringReplace(lbl_edtVlrEstoque.Text,ThousandSeparator,'',[rfReplaceAll]);
            ValorTotalE := StringReplace(ValorTotalE,DecimalSeparator,'.',[rfReplaceAll]);
            if ValorTotalE = '' Then
            ValorTotalE := '0';

            QtdeProdEstoqueE := StringReplace(lbl_edtQtdeEstoque.Text,ThousandSeparator,'',[rfReplaceAll]);
            QtdeProdEstoqueE := StringReplace(QtdeProdEstoqueE,DecimalSeparator,'.',[rfReplaceAll]);
            if QtdeProdEstoqueE = '' Then
            QtdeProdEstoqueE := '0';

            TotalMinimo := StringReplace(lbl_edtEstoqueM.Text,ThousandSeparator,'',[rfReplaceAll]);
            TotalMinimo := StringReplace(TotalMinimo,DecimalSeparator,'.',[rfReplaceAll]);
            if TotalMinimo = '' Then
            TotalMinimo := '0';

            VlrCustoProd := StringReplace(lbl_edtCusto.Text,ThousandSeparator,'',[rfReplaceAll]);
            VlrCustoProd := StringReplace(VlrCustoProd,DecimalSeparator,'.',[rfReplaceAll]);
            if VlrCustoProd = '' Then
            VlrCustoProd := '0';


            //////////////////////////////////////////////////////////////////////////////////////////////////

            LocalSelecionado := -1; //atribui -1 para a variavel

            for i:=0 to ListLocalEstocagem.Items.Count -1 do begin//para variavel i iniciar do zero os itens comecam no -1
              if ListLocalEstocagem.Checked[i] = True Then begin //se o checked for verdadeiro
                LocalSelecionado := i; //atribui o vlr da variavel i checada na variavel local selecionado
              end;{if}
            end;{for}

            If (LocalSelecionado = -1) Then begin

               Application.MessageBox('Desculpe mas � necess�rio selecionar um Local de Estocagem.','Notifica��o: Dados Incompletos', MB_OK + MB_ICONWARNING);

            end else begin

              if (LocalSelecionado < 0) Then begin
                  StringLocalEstoque      := ' '''','
              end else begin
                ClassLocal              := TClasseCombo( ListLocalEstocagem.Items.Objects[LocalSelecionado] );
                StringLocalEstoque      := ' ''' + InttoStr( ClassLocal.ID ) + ''','
              end;
            end;//if
              ///////////////////////////////////////////////////////////////////////////////////

            //grava os dados na tbl entrada de estoque de produtos.
            ibEntrProdEstoque.Close;
            ibEntrProdEstoque.SQL.Clear;
            ibEntrProdEstoque.SQL.Add('INSERT INTO TBLENTRADAESTOQUEPROD '
            + '(QUANTIDADE,ESTOQUEMIN,IDPROD,VLRTOTAL,IDLOCAL,'
            + 'TOTALCUSTO,DATAENTRADA,DATAULTIMAENTR,QTDEENTRADA,CODBARRAS) values '
            + '(''' + QtdeProdEstoqueE + ''','
            + ' ''' + TotalMinimo + ''','
            + ' ''' + IntToStr(IDProd) + ''','
            + ' ''' + ValorTotalE + ''','
            + StringLocalEstoque
            + ' ''' + VlrCustoProd + ''','
            + ' ''' + FormatDateTime('mm/dd/yyyy',Now) + ''','
            + ' ''' + FormatDateTime('mm/dd/yyyy',Now) + ''','
            + ' ''' + QtdeEntrada + ''','
            + ' ''' + lbl_edtCodbarra.Text + ''')');
            ibEntrProdEstoque.ExecSQL;

        ///    Commit(ibEntrProdEstoque);

          end;//if record count

         /////////////////////////////////////////////////////////////////////////

        end;//if

        lbl_edtCustoFormula.Text := '0,00';
        lbl_edtQtdeFormula.Text  := '0,00';
        lbl_edtResultado.Text       := '0,00';
        lbl_edtVendaFormula.Text := '0,00';

      end;//if ckacrescentar estoque

      if ckDiminuirEstoque.Checked Then begin

        ibEntrProdEstoque.Close;
        ibEntrProdEstoque.SQL.Clear;
        ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.*, CADPRODUTOS.NOME, LOCALESTOCAGEM.NOME As LocalEstoque'
        + ' FROM TBLENTRADAESTOQUEPROD LEFT OUTER JOIN CADPRODUTOS '
        + ' ON TBLENTRADAESTOQUEPROD.IDPROD = CADPRODUTOS.IDPROD LEFT OUTER JOIN LOCALESTOCAGEM '
        + ' ON CADPRODUTOS.IDLOCAL = LOCALESTOCAGEM.IDESTOQUE '
        + ' WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + IntToStr(IDProd) + '''');
        ibEntrProdEstoque.Open;

        FormatFloat(CasasDecimais('Produtos'),ibEntrProdEstoque.FieldByName('QUANTIDADE').AsInteger);

        QtdeEstoque := StringReplace(lbl_edtQtdeEstoque.Text,ThousandSeparator,'',[rfReplaceAll]);
        QtdeEstoque := StringReplace(QtdeEstoque,DecimalSeparator,'.',[rfReplaceAll]);
        if QtdeEstoque = '' Then
          QtdeEstoque := '0';

        EstoqueMin := StringReplace(lbl_edtEstoqueM.Text,ThousandSeparator,'',[rfReplaceAll]);
        EstoqueMin := StringReplace(EstoqueMin,DecimalSeparator,'.',[rfReplaceAll]);
        if EstoqueMin = '' Then
          EstoqueMin := '0';

        VlrEstoque := StringReplace(lbl_edtVlrEstoque.Text,ThousandSeparator,'',[rfReplaceAll]);
        VlrEstoque := StringReplace(VlrEstoque,DecimalSeparator,'.',[rfReplaceAll]);
        if VlrEstoque = '' Then
          VlrEstoque := '0';

//////////////////////////////////////////////////////////////////////////

      // rotina para somar o custo do produto no estoque
       TotalCusto := StrToFloat(StringReplace(lbl_edtCusto.Text,ThousandSeparator,'',[rfReplaceAll]));
       QtdeGeral  := StrToFloat(StringReplace(lbl_edtQtdeEstoque.Text,ThousandSeparator,'',[rfReplaceAll]));

       VlrCusto   := TotalCusto * QtdeGeral;

       VlrTotalCusto := StringReplace(FloatToStr(VlrCusto),ThousandSeparator,'',[rfReplaceAll]);
       VlrTotalCusto := StringReplace(VlrTotalCusto,DecimalSeparator,'.',[rfReplaceAll]);

//////////////////////////////////////////////////////////////////////////

            QtdeEntrada := StringReplace(lbl_edtQtdeEstoque.Text,ThousandSeparator,'',[rfReplaceAll]);
            QtdeEntrada := StringReplace(lbl_edtQtdeEstoque.Text,DecimalSeparator,'.',[rfReplaceAll]);
            if QtdeEntrada = '' Then
            QtdeEntrada := '0';

        ibEntrProdEstoque.Close;
        ibEntrProdEstoque.SQL.Clear;
        ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
        + 'QUANTIDADE = ''' + QtdeEstoque + ''','
        + 'QTDEENTRADA = ''' + QtdeEntrada + ''','
        + 'ESTOQUEMIN = ''' + EstoqueMin + ''','
        + 'TOTALCUSTO =  ''' + VlrTotalCusto + ''','
        + 'VLRTOTAL = ''' + VlrEstoque + ''' WHERE IDPROD = ''' + IntToStr(IDProd) + '''');
        ibEntrProdEstoque.ExecSQL;
        Commit(ibEntrProdEstoque);



      end;//if ckdiminuir estoque

////////////////////////////////////////////////////////////////////////////////

      if (ckAcrescentarEstoq.Checked = False)and(ckDiminuirEstoque.Checked = False)Then begin


        ibEntrProdEstoque.Close;
        ibEntrProdEstoque.SQL.Clear;
        ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.*, CADPRODUTOS.NOME, LOCALESTOCAGEM.NOME As LocalEstoque'
        + ' FROM TBLENTRADAESTOQUEPROD LEFT OUTER JOIN CADPRODUTOS '
        + ' ON TBLENTRADAESTOQUEPROD.IDPROD = CADPRODUTOS.IDPROD LEFT OUTER JOIN LOCALESTOCAGEM '
        + ' ON CADPRODUTOS.IDLOCAL = LOCALESTOCAGEM.IDESTOQUE '
        + ' WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + IntToStr(IDProd) + '''');
        ibEntrProdEstoque.Open;

        FormatFloat(CasasDecimais('Produtos'),ibEntrProdEstoque.FieldByName('QUANTIDADE').AsInteger);

        ConfirmaAltEstoque := Application.MessageBox('Deseja atualizar o estoque com o novo valor de venda?','Atualiza��o do Estoque',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

          if ConfirmaAltEstoque = 6 Then begin

            //rotina para somar a qtde de entrada no estoque

            if (lbl_edtVendaa.Text <> '') Then begin

              QtdeGeral := StrToFloat(StringReplace(FloatToStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

              TotalGeralQtde := StringReplace(FloatToStr(QtdeGeral),ThousandSeparator,'',[rfReplaceAll]);
              TotalGeralQtde := StringReplace(TotalGeralQtde,DecimalSeparator,'.',[rfReplaceAll]);

            /////////////////////////////////////////////////////////////////////////

              //rotina para calculo do vlr total do estoque
              NovoValor   := StrToFloat(StringReplace(lbl_edtVendaa.Text,ThousandSeparator,'',[rfReplaceAll]));
              VlrGeral    := NovoValor * QtdeGeral;

              TotalVlrEstoque := StringReplace(FloatToStr(VlrGeral),ThousandSeparator,'',[rfReplaceAll]);
              TotalVlrEstoque := StringReplace(TotalVlrEstoque,DecimalSeparator,'.',[rfReplaceAll]);



            //////////////////////////////////////////////////////////////////////////

              // rotina para somar o custo do produto no estoque
              TotalCusto := StrToFloat(StringReplace(lbl_edtCusto.Text,ThousandSeparator,'',[rfReplaceAll]));
              VlrCusto   := TotalCusto * QtdeGeral;

              VlrTotalCusto := StringReplace(FloatToStr(VlrCusto),ThousandSeparator,'',[rfReplaceAll]);
              VlrTotalCusto := StringReplace(VlrTotalCusto,DecimalSeparator,'.',[rfReplaceAll]);

             /////////////////////////////////////////////////////////////////////////

              if ibEntrProdEstoque.RecordCount > 0 Then begin

                ibEntrProdEstoque.Close;
                ibEntrProdEstoque.SQL.Clear;
                ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
                + 'TOTALCUSTO =  ''' + VlrTotalCusto + ''','
                + 'VLRTOTAL = ''' + TotalVlrEstoque + ''' WHERE IDPROD = ''' + IntToStr(IDProd) + '''');
                ibEntrProdEstoque.ExecSQL;
                Commit(ibEntrProdEstoque);

              end;//if record count

          end;//if confirmaaltestoque
////////////////////////////////////////////////////////////////////////////////
        end;//if

      end;//if ckfalse

    end;//if lbl nomeprod

//****************************************************************************//

    if (lbl_edtNomeProduto.Text <> '')and(lbl_edtCustoFormula.Text > '0,00')and(lbl_edtQtdeFormula.Text > '0,00') Then begin

        ibEntrProdEstoque.Close;
        ibEntrProdEstoque.SQL.Clear;
        ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.*, CADPRODUTOS.NOME, LOCALESTOCAGEM.NOME As LocalEstoque'
        + ' FROM TBLENTRADAESTOQUEPROD LEFT OUTER JOIN CADPRODUTOS '
        + ' ON TBLENTRADAESTOQUEPROD.IDPROD = CADPRODUTOS.IDPROD LEFT OUTER JOIN LOCALESTOCAGEM '
        + ' ON CADPRODUTOS.IDLOCAL = LOCALESTOCAGEM.IDESTOQUE '
        + ' WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + IntToStr(IDProd) + '''');
        ibEntrProdEstoque.Open;

        FormatFloat(CasasDecimais('Produtos'),ibEntrProdEstoque.FieldByName('QUANTIDADE').AsInteger);

        //rotina para somar a qtde de entrada no estoque

        if (lbl_edtQtdeFormula.Text <> '') or (lbl_edtVendaa.Text <> '') Then begin

          QtdeGeral := StrToFloat(StringReplace(FloatToStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          if lbl_edtQtdeFormula.Text = '' Then begin

          TotalQtdeGeralAlt := 0;

          end else begin

          TotalQtdeGeralAlt := StrToFloat(StringReplace(lbl_edtQtdeFormula.Text,ThousandSeparator,'',[rfReplaceAll]));

          end;

          QtdeGeral := QtdeGeral + TotalQtdeGeralAlt;

          TotalGeralQtde := StringReplace(FloatToStr(QtdeGeral),ThousandSeparator,'',[rfReplaceAll]);
          TotalGeralQtde := StringReplace(TotalGeralQtde,DecimalSeparator,'.',[rfReplaceAll]);

        /////////////////////////////////////////////////////////////////////////

          //rotina para calculo do vlr total do estoque
          NovoValor   := StrToFloat(StringReplace(lbl_edtVendaa.Text,ThousandSeparator,'',[rfReplaceAll]));
          VlrGeral    := NovoValor * QtdeGeral;

          TotalVlrEstoque := StringReplace(FloatToStr(VlrGeral),ThousandSeparator,'',[rfReplaceAll]);
          TotalVlrEstoque := StringReplace(TotalVlrEstoque,DecimalSeparator,'.',[rfReplaceAll]);



        //////////////////////////////////////////////////////////////////////////

          // rotina para somar o custo do produto no estoque

          if (lbl_edtCustoFormula.Text > '0,00')and(lbl_edtQtdeFormula.Text > '0,00')and(lbl_edtResultado.Text > '0,00') Then begin

            VlrCustoFormula := StrToFloat(StringReplace(lbl_edtResultado.Text,ThousandSeparator,'',[rfReplaceAll]));
            QtdeFormula     := StrToFloat(StringReplace(lbl_edtQtdeFormula.Text,ThousandSeparator,'',[rfReplaceAll]));
            RCustoFormula   := VlrCustoFormula * QtdeGeral;

            VlrTotalCusto := StringReplace(FloatToStr(RCustoFormula),ThousandSeparator,'',[rfReplaceAll]);
            VlrTotalCusto := StringReplace(VlrTotalCusto,DecimalSeparator,'.',[rfReplaceAll]);

           /// VlrCustoNovoProduto := StrToFloat(StringReplace(lbl_Resultado.Text,ThousandSeparator,'',[rfReplaceAll]));
            VlrCustoNovo  := StringReplace(lbl_edtResultado.Text,ThousandSeparator,'',[rfReplaceAll]);
            VlrCustoNovo  := StringReplace(VlrCustoNovo,DecimalSeparator,'.',[rfReplaceAll]);

            ibProdutos.Close;
            ibProdutos.SQL.Clear;
            ibProdutos.SQL.Add('UPDATE CADPRODUTOS SET '
            +'VALORCUSTO=''' + VlrCustoNovo + ''' WHERE IDPROD=''' + IntToStr(IDProd) + '''');
            ibProdutos.ExecSQL;
            Commit(ibProdutos);

          end else begin

            TotalCusto := StrToFloat(StringReplace(lbl_edtCusto.Text,ThousandSeparator,'',[rfReplaceAll]));
            VlrCusto   := TotalCusto * QtdeGeral;

            VlrTotalCusto := StringReplace(FloatToStr(VlrCusto),ThousandSeparator,'',[rfReplaceAll]);
            VlrTotalCusto := StringReplace(VlrTotalCusto,DecimalSeparator,'.',[rfReplaceAll]);

         end;//if
        //////////////////////////////////////////////////////////////////////////

          //rotina para substituir o estoque minimo
       //  if lbl_edtEstoqueM.Text <> '' Then begin

            TotalMinimo := StringReplace(lbl_edtEstoqueM.Text,ThousandSeparator,'',[rfReplaceAll]);
            TotalMinimo := StringReplace(TotalMinimo,DecimalSeparator,'.',[rfReplaceAll]);
            if TotalMinimo = '' Then
            TotalMinimo := '0';

       //   end;//if

         /////////////////////////////////////////////////////////////////////////

          if ibEntrProdEstoque.RecordCount > 0 Then begin

            ibEntrProdEstoque.Close;
            ibEntrProdEstoque.SQL.Clear;
            ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
            + 'QUANTIDADE = ''' + TotalGeralQtde + ''','
            + 'ESTOQUEMIN = ''' + TotalMinimo + ''','
            + 'TOTALCUSTO =  ''' + VlrTotalCusto + ''','
            + 'VLRTOTAL = ''' + TotalVlrEstoque + ''' WHERE IDPROD = ''' + IntToStr(IDProd) + '''');
            ibEntrProdEstoque.ExecSQL;
            Commit(ibEntrProdEstoque);

          end else begin

            ValorTotalE := StringReplace(lbl_edtVlrEstoque.Text,ThousandSeparator,'',[rfReplaceAll]);
            ValorTotalE := StringReplace(ValorTotalE,DecimalSeparator,'.',[rfReplaceAll]);
            if ValorTotalE = '' Then
            ValorTotalE := '0';

            QtdeProdEstoqueE := StringReplace(lbl_edtQtdeEstoque.Text,ThousandSeparator,'',[rfReplaceAll]);
            QtdeProdEstoqueE := StringReplace(QtdeProdEstoqueE,DecimalSeparator,'.',[rfReplaceAll]);
            if QtdeProdEstoqueE = '' Then
            QtdeProdEstoqueE := '0';

            TotalMinimo := StringReplace(lbl_edtEstoqueM.Text,ThousandSeparator,'',[rfReplaceAll]);
            TotalMinimo := StringReplace(TotalMinimo,DecimalSeparator,'.',[rfReplaceAll]);
            if TotalMinimo = '' Then
            TotalMinimo := '0';

            VlrCustoProd := StringReplace(lbl_edtCusto.Text,ThousandSeparator,'',[rfReplaceAll]);
            VlrCustoProd := StringReplace(VlrCustoProd,DecimalSeparator,'.',[rfReplaceAll]);
            if VlrCustoProd = '' Then
            VlrCustoProd := '0';


            //////////////////////////////////////////////////////////////////////////////////////////////////

            LocalSelecionado := -1; //atribui -1 para a variavel

            for i:=0 to ListLocalEstocagem.Items.Count -1 do begin//para variavel i iniciar do zero os itens comecam no -1
              if ListLocalEstocagem.Checked[i] = True Then begin //se o checked for verdadeiro
                LocalSelecionado := i; //atribui o vlr da variavel i checada na variavel local selecionado
              end;{if}
            end;{for}

            If (LocalSelecionado = -1) Then begin

               Application.MessageBox('Desculpe mas � necess�rio selecionar um Local de Estocagem.','Notifica��o: Dados Incompletos', MB_OK + MB_ICONWARNING);

            end else begin

              if (LocalSelecionado < 0) Then begin
                  StringLocalEstoque      := ' '''','
              end else begin
                ClassLocal              := TClasseCombo( ListLocalEstocagem.Items.Objects[LocalSelecionado] );
                StringLocalEstoque      := ' ''' + InttoStr( ClassLocal.ID ) + ''','
              end;
            end;//if
              ///////////////////////////////////////////////////////////////////////////////////

            //grava os dados na tbl entrada de estoque de produtos.
            ibEntrProdEstoque.Close;
            ibEntrProdEstoque.SQL.Clear;
            ibEntrProdEstoque.SQL.Add('INSERT INTO TBLENTRADAESTOQUEPROD '
            + '(QUANTIDADE,ESTOQUEMIN,IDPROD,VLRTOTAL,IDLOCAL,'
            + 'TOTALCUSTO,CODBARRAS) values '
            + '(''' + QtdeProdEstoqueE + ''','
            + ' ''' + TotalMinimo + ''','
            + ' ''' + IntToStr(IDProd) + ''','
            + ' ''' + ValorTotalE + ''','
            + StringLocalEstoque
            + ' ''' + VlrCustoProd + ''','
            + ' ''' + lbl_edtCodbarra.Text + ''')');
            ibEntrProdEstoque.ExecSQL;

        ///    Commit(ibEntrProdEstoque);

          end;//if record count

         /////////////////////////////////////////////////////////////////////////

       /// end;//if

        lbl_edtCustoFormula.Text := '0,00';
        lbl_edtQtdeFormula.Text  := '0,00';
        lbl_edtResultado.Text       := '0,00';
        lbl_edtVendaFormula.Text := '0,00';
        
      end;//if ckacrescentar estoque

    end;

//****************************************************************************//
  lbl_edtQtdeEstoque.Clear;
  lbl_edtEstoqueM.Clear;
  lbl_edtVlrEstoque.Clear;
  ckDiminuirEstoque.Checked := False;
  ckAcrescentarEstoq.Checked := False;

  end;//with

end;

procedure TfrmProd_MPrima.AlteraPrateleira;

var

TotalQtdeGeralPrateleira,QtdeGeralPrateleira,QtdePrateleira,MinimoPrateleira : Real;
TotalQtdePrat,TotalMinimoPrat,TotalPratAlterado,TotalMinimoPratAlt : String;
QtdeEstoque,PrateleiraAtual : Real;
TotalQtdeGeralEstoque,ValorTotalEstoque : String;
VerifEstoque,VerifPrateleira, ValordoEstoque, ValorProduto : Real;

begin

  with dmModule do begin


    if lbl_edtNomeProduto.Text <> '' Then begin

    {  if ckAlterarPrateleira.Checked Then begin

        ibEstoquePrateleira.Close;
        ibEstoquePrateleira.SQL.Clear;
        ibEstoquePrateleira.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.*, CADPRODUTOS.NOME, LOCALESTOCAGEM.NOME As LocalEstoque'
        + ' FROM TBLENTRADAESTOQUEPROD LEFT OUTER JOIN CADPRODUTOS '
        + ' ON TBLENTRADAESTOQUEPROD.IDPROD = CADPRODUTOS.IDPROD LEFT OUTER JOIN LOCALESTOCAGEM '
        + ' ON CADPRODUTOS.IDLOCAL = LOCALESTOCAGEM.IDESTOQUE '
        + ' WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + IntToStr(IDProd) + '''');
        ibEstoquePrateleira.Open;

        FormatFloat(CasasDecimais('Produtos'),ibEstoquePrateleira.FieldByName('QTDEPRATELEIRA').AsFloat);
        FormatFloat(CasasDecimais('Produtos'),ibEstoquePrateleira.FieldByName('MINIMOPRATELEIRA').AsFloat);
        //rotina para somar a qtde de entrada no estoque

          if ibEstoquePrateleira.RecordCount > 0 Then begin

            TotalPratAlterado := StringReplace(lbl_edtQtdePrat.Text,ThousandSeparator,'',[rfReplaceAll]);
            TotalPratAlterado := StringReplace(TotalPratAlterado,DecimalSeparator,'.',[rfReplaceAll]);
            if TotalPratAlterado = '' Then
            TotalPratAlterado := '0';


            TotalMinimoPratAlt := StringReplace(lbl_edtMinimoPrat.Text,ThousandSeparator,'',[rfReplaceAll]);
            TotalMinimoPratAlt := StringReplace(TotalMinimoPratAlt,DecimalSeparator,'.',[rfReplaceAll]);
            if TotalMinimoPratAlt = '' Then
            TotalMinimoPratAlt := '0';


            ibEstoquePrateleira.Close;
            ibEstoquePrateleira.SQL.Clear;
            ibEstoquePrateleira.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
            + 'QTDEPRATELEIRA = ''' + TotalPratAlterado + ''','
            + 'MINIMOPRATELEIRA = ''' + TotalMinimoPratAlt + ''' WHERE IDPROD = ''' + IntToStr(IDProd) + '''');
            ibEstoquePrateleira.ExecSQL;
            Commit(ibEstoquePrateleira);

          end else begin

            TotalPratAlterado := StringReplace(lbl_edtQtdePrat.Text,ThousandSeparator,'',[rfReplaceAll]);
            TotalPratAlterado := StringReplace(TotalPratAlterado,DecimalSeparator,'.',[rfReplaceAll]);
            if TotalPratAlterado = '' Then
            TotalPratAlterado := '0';


            TotalMinimoPratAlt := StringReplace(lbl_edtMinimoPrat.Text,ThousandSeparator,'',[rfReplaceAll]);
            TotalMinimoPratAlt := StringReplace(TotalMinimoPratAlt,DecimalSeparator,'.',[rfReplaceAll]);
            if TotalMinimoPratAlt = '' Then
            TotalMinimoPratAlt := '0';

           //grava os dados na tbl entrada de estoque de produtos.
            ibEstoquePrateleira.Close;
            ibEstoquePrateleira.SQL.Clear;
            ibEstoquePrateleira.SQL.Add('INSERT INTO TBLENTRADAESTOQUEPROD '
            + '(QTDEPRATELEIRA,MINIMOPRATELEIRA) values '
            + '(''' + TotalPratAlterado + ''','
            + ' ''' + TotalMinimoPratAlt + ''')');
            ibEstoquePrateleira.ExecSQL;

            Commit(ibEstoquePrateleira);

          end;//if record count

       /////////////////////////////////////////////////////////////////////////

      end;//if }

      if (ckAcrescPrateleira.Checked)and(lbl_edtEstoqgeral.Text > '0') Then begin

        VerifEstoque    := StrToFloat(lbl_edtEstoqgeral.Text);
        VerifPrateleira := StrToFloat(lbl_edtQtdePrat.Text);

        if (VerifPrateleira > VerifEstoque) Then begin

          Application.MessageBox('Aten��o a qtde acrescentada na prateleira est� maior que a qtde do estoque?? ','Erro',+MB_OK+MB_DEFBUTTON1+MB_ICONERROR);

        end;

        if (VerifPrateleira < VerifEstoque)or(VerifPrateleira = VerifEstoque) Then begin

          ibEstoquePrateleira.Close;
          ibEstoquePrateleira.SQL.Clear;
          ibEstoquePrateleira.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.*, CADPRODUTOS.NOME,CADPRODUTOS.VALORVENDAA, LOCALESTOCAGEM.NOME As LocalEstoque'
          + ' FROM TBLENTRADAESTOQUEPROD LEFT OUTER JOIN CADPRODUTOS '
          + ' ON TBLENTRADAESTOQUEPROD.IDPROD = CADPRODUTOS.IDPROD LEFT OUTER JOIN LOCALESTOCAGEM '
          + ' ON CADPRODUTOS.IDLOCAL = LOCALESTOCAGEM.IDESTOQUE '
          + ' WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + IntToStr(IDProd) + '''');
          ibEstoquePrateleira.Open;

          FormatFloat(CasasDecimais('Produtos'),ibEstoquePrateleira.FieldByName('QTDEPRATELEIRA').AsFloat);
          FormatFloat(CasasDecimais('Produtos'),ibEstoquePrateleira.FieldByName('MINIMOPRATELEIRA').AsFloat);
          //rotina para somar a qtde de entrada no estoque

            //subtracao do estoque
            PrateleiraAtual     := StrToFloat(StringReplace(lbl_edtQtdePrat.Text,ThousandSeparator,'',[rfReplaceAll]));

            if lbl_edtEstoqgeral.Text > '0' Then begin

              QtdeEstoque := StrToFloat(StringReplace(lbl_edtEstoqgeral.Text,ThousandSeparator,'',[rfReplaceAll]));


            end else begin

              QtdeEstoque := 0;

            end;

              QtdeEstoque := QtdeEstoque - PrateleiraAtual;

            //termino da subtracao do estoque

            if lbl_edtInfoQP.Text = '' Then begin

              TotalQtdeGeralPrateleira := 0;

            end else begin

              TotalQtdeGeralPrateleira := StrToFloat(StringReplace(lbl_edtInfoQP.Text,ThousandSeparator,'',[rfReplaceAll]));

            end;

            QtdeGeralPrateleira := StrToFloat(StringReplace(lbl_edtQtdePrat.Text,ThousandSeparator,'',[rfReplaceAll]));

            QtdeGeralPrateleira := QtdeGeralPrateleira + TotalQtdeGeralPrateleira;

            TotalPratAlterado := StringReplace(FloatToStr(QtdeGeralPrateleira),ThousandSeparator,'',[rfReplaceAll]);
            TotalPratAlterado := StringReplace(TotalPratAlterado,DecimalSeparator,'.',[rfReplaceAll]);


        //////////////////////////////////////////////////////////////////////////

          if ibEstoquePrateleira.RecordCount > 0 Then begin

            TotalMinimoPratAlt := StringReplace(lbl_edtMinimoPrat.Text,ThousandSeparator,'',[rfReplaceAll]);
            TotalMinimoPratAlt := StringReplace(TotalMinimoPratAlt,DecimalSeparator,'.',[rfReplaceAll]);
            if TotalMinimoPratAlt = '' Then
            TotalMinimoPratAlt := '0';

            ValorProduto := StrToFloat(StringReplace(FloatToStr(ibEstoquePrateleira.FieldByName('VALORVENDAA').AsFloat),ThousandSeparator,'',[rfreplaceAll]));
            ValordoEstoque := QtdeEstoque * ValorProduto;
            ValorTotalEstoque := StringReplace(FloatToStr(ValordoEstoque),ThousandSeparator,'',[rfReplaceAll]);
            ValorTotalEstoque := StringReplace(ValorTotalEstoque,DecimalSeparator,'.',[rfReplaceAll]);

            ibEstoquePrateleira.Close;
            ibEstoquePrateleira.SQL.Clear;
            ibEstoquePrateleira.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
            + 'QUANTIDADE = ''' + FloatToStr(QtdeEstoque) + ''','
            + 'VLRTOTAL = ''' + ValorTotalEstoque + ''','
            + 'QTDEPRATELEIRA = ''' + TotalPratAlterado + ''','
            + 'MINIMOPRATELEIRA = ''' + TotalMinimoPratAlt + ''' WHERE IDPROD = ''' + IntToStr(IDProd) + '''');
            ibEstoquePrateleira.ExecSQL;
            Commit(ibEstoquePrateleira);

          end else begin

            TotalPratAlterado := StringReplace(lbl_edtQtdePrat.Text,ThousandSeparator,'',[rfReplaceAll]);
            TotalPratAlterado := StringReplace(TotalPratAlterado,DecimalSeparator,'.',[rfReplaceAll]);
            if TotalPratAlterado = '' Then
            TotalPratAlterado := '0';


            TotalMinimoPratAlt := StringReplace(lbl_edtMinimoPrat.Text,ThousandSeparator,'',[rfReplaceAll]);
            TotalMinimoPratAlt := StringReplace(TotalMinimoPratAlt,DecimalSeparator,'.',[rfReplaceAll]);
            if TotalMinimoPratAlt = '' Then
            TotalMinimoPratAlt := '0';

           //grava os dados na tbl entrada de estoque de produtos.
            ibEstoquePrateleira.Close;
            ibEstoquePrateleira.SQL.Clear;
            ibEstoquePrateleira.SQL.Add('INSERT INTO TBLENTRADAESTOQUEPROD '
            + '(QTDEPRATELEIRA,MINIMOPRATELEIRA) values '
            + '(''' + TotalPratAlterado + ''','
            + ' ''' + TotalMinimoPratAlt + ''')');
            ibEstoquePrateleira.ExecSQL;

            Commit(ibEstoquePrateleira);

          end;//if record count

        end;//if aviso qtde de estoque

      end;//if ckAcrescPrat

    end;//if nomeprod <> ''

      ckAcrescPrateleira.Checked  := False;
      lbl_edtQtdePrat.Clear;
      lbl_edtMinimoPrat.Clear;

  end;//with

end;

procedure TfrmProd_MPrima.AlteraProduto;

var

  AltValorMetro,AltMetroProd,Qtde : String;
  AnoVC,MesVC,DiaVC : Word;
  DataPagtoVC,DataInicialVC, DataFinalVC : TDate;
  DataEmissaoVC, TxVisaCredito : String;
  ConfirmaVctoLote : String;
  VlrPacoteFardo,QtdePacoteFardo : String;
  QtdeB,QtdeC,AltProdTrib : String;
  intTipodeOleo, intAtivo : Integer;

  //TRIBUTOS

  ClassCST,ClassCSOSN,ClassST,ClassCFOP : TClasseCombo;
  StringCST,StringCSOSN,StringST,StringCFOP : String;
  NacProd : Integer;
  strICMS,strCOFINS,strIPI,strPIS :String;
begin

// Erro := False;

  with dmModule do begin


////////////////////////////////////////////////////////////////////////////////
   If cboGrupo.ItemIndex = -1 Then begin

      StringGrupo       := ' IDGRUPO = ''0'',';

    end else begin

      ClassGrupo         := TClasseCombo( cboGrupo.Items.Objects[cboGrupo.ItemIndex] );
      StringGrupo        := ' IDGRUPO = ''' + InttoStr( ClassGrupo.ID ) + ''',';

    end;
////////////////////////////////////////////////////////////////////////////////

    If cboSubgrupo.ItemIndex = -1 Then begin

      StringSubGrupo     := ' IDSUBGRUPO = ''0'',';

    end else begin

      ClassSubgrupo      := TClasseCombo( cboSubgrupo.Items.Objects[cboSubgrupo.ItemIndex] );
      StringSubGrupo     := ' IDSUBGRUPO = ''' + InttoStr( ClassSubgrupo.ID ) + ''',';

    end;
////////////////////////////////////////////////////////////////////////////////

   If cboCFOP.ItemIndex = -1 Then begin

      StringCFOP         := ' IDCFOP = ''0'',';

    end else begin

      ClassCFOP          := TClasseCombo( cboCFOP.Items.Objects[cboCFOP.ItemIndex] );
      StringCFOP         := ' IDCFOP = ''' + InttoStr( ClassCFOP.ID ) + ''',';

    end;
////////////////////////////////////////////////////////////////////////////////

    If cboCST.ItemIndex = -1 Then begin

      StringCST    := ' IDCST = ''0'',';

    end else begin

      ClassCST     := TClasseCombo( cboCST.Items.Objects[cboCST.ItemIndex] );
      StringCST    := ' IDCST = ''' + InttoStr( ClassCST.ID ) + ''',';

    end;
////////////////////////////////////////////////////////////////////////////////

    If cboCSOSN.ItemIndex = -1 Then begin

      StringCSOSN    := ' IDCSOSN = ''0'',';

    end else begin

      ClassCSOSN     := TClasseCombo( cboCSOSN.Items.Objects[cboCSOSN.ItemIndex] );
      StringCSOSN    := ' IDCSOSN = ''' + InttoStr( ClassCSOSN.ID ) + ''',';

    end;
////////////////////////////////////////////////////////////////////////////////

    If cboST.ItemIndex = -1 Then begin

      StringST    := ' IDST = ''0'',';

    end else begin

      ClassST     := TClasseCombo( cboST.Items.Objects[cboST.ItemIndex] );
      StringST    := ' IDST = ''' + InttoStr( ClassST.ID ) + ''',';

    end;
////////////////////////////////////////////////////////////////////////////////

    //sem a variavel ''erro'' gra va as alteracoes permitindo o campo estar em branco.

    If cboFornecedores.ItemIndex = -1 Then begin

      StringForn    := ' FORNECEDOR=''0'',';

    end else begin

      ClassForn      := TClasseCombo( cboFornecedores.Items.Objects[cboFornecedores.ItemIndex] );
      StringForn     := ' FORNECEDOR=''' + InttoStr( ClassForn.ID ) + ''',';

    end;

      Commit(ibEntrProdEstoque);
      ibEntrProdEstoque.Close;
      ibEntrProdEstoque.SQL.Clear;
      ibEntrProdEstoque.SQL.Add('SELECT * FROM TBLENTRADAESTOQUEPROD WHERE IDPROD=''' + lbl_edtCodigo.Text + '''');
      ibEntrProdEstoque.Open;

      if ibEntrProdEstoque.RecordCount > 0 Then begin

        If cboFornecedores.Text <> '' Then begin

          ibEntrProdEstoque.Close;
          ibEntrProdEstoque.SQL.Clear;
          ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
          + 'FORNECEDOR=''' + IntToStr(ClassForn.ID) + ''' WHERE IDPROD=''' + lbl_edtCodigo.Text + '''');
          ibEntrProdEstoque.ExecSQL;
          Commit(ibEntrProdEstoque);

        end;

      end;//if recordcount

    ////////////////////////////////////////////////////////////////////////////////////////////////

    //sem a variavel ''erro'' gra va as alteracoes permitindo o campo estar em branco.
    If cboModalidade.ItemIndex = -1 Then begin

      StringAltUnidVenda    := ' IDUNIDVENDA=''0'',';

    end else begin

      ClassAltUnidVenda      := TClasseCombo( cboModalidade.Items.Objects[cboModalidade.ItemIndex] );
      StringAltUnidVenda     := ' IDUNIDVENDA=''' + InttoStr( ClassAltUnidVenda.ID ) + ''',';

    end;



    LocalSelecionado := -1; //atribui -1 para a variavel

    for i:=0 to ListLocalEstocagem.Items.Count -1 do begin//para variavel i iniciar do zero os itens comecam no -1
      if ListLocalEstocagem.Checked[i] = True Then begin //se o checked for verdadeiro
        LocalSelecionado := i; //atribui o vlr da variavel i checada na variavel local selecionado
      end;{if}
    end;{for}

    If (LocalSelecionado = -1) Then begin
      Application.MessageBox('Desculpe mas � necess�rio selecionar um Local de Estocagem.','Notifica��o: Dados Incompletos', MB_OK + MB_ICONWARNING);
    end else begin

      if (LocalSelecionado < 0) Then begin
          StringLocalEstoque      := ' IDLOCAL = '''','
      end else begin
        ClassLocal       := TClasseCombo( ListLocalEstocagem.Items.Objects[LocalSelecionado] );
        StringLocalEstoque      := ' IDLOCAL=''' + InttoStr( ClassLocal.ID ) + ''','
      end;

      ////////////////////////////////////////////////////////////////////////////////////////////////


      //atribui na variavel substituindo o ponto para vlr em branco
      ValorCusto := StringReplace(lbl_edtCusto.Text,ThousandSeparator,'',[rfReplaceAll]);
      //atribui a variavel o valor separando por ponto
      ValorCusto := StringReplace(ValorCusto,DecimalSeparator,'.',[rfReplaceAll]);
      if ValorCusto = '' Then
        ValorCusto := '0';

      ValorVendaa := StringReplace(lbl_edtVendaa.Text,ThousandSeparator,'',[rfReplaceAll]);
      ValorVendaa := StringReplace(ValorVendaa,DecimalSeparator,'.',[rfReplaceAll]);
      if ValorVendaa = '' Then
        ValorVendaa := '0';

      ValorVendab := StringReplace(lbl_edtVendab.Text,ThousandSeparator,'',[rfReplaceAll]);
      ValorVendab := StringReplace(ValorVendab,DecimalSeparator,'.',[rfReplaceAll]);
      if ValorVendab = '' Then
        ValorVendab := '0';

      QtdeB := StringReplace(lbl_edtQtdeB.Text,ThousandSeparator,'',[rfReplaceAll]);
      QtdeB := StringReplace(QtdeB,DecimalSeparator,'.',[rfReplaceAll]);
      if QtdeB = '' Then
         QtdeB := '0';

      ValorVendac := StringReplace(lbl_edtVendac.Text,ThousandSeparator,'',[rfReplaceAll]);
      ValorVendac := StringReplace(ValorVendac,DecimalSeparator,'.',[rfReplaceAll]);
      if ValorVendac = '' Then
        ValorVendac := '0';

      QtdeC := StringReplace(lbl_edtQtdeC.Text,ThousandSeparator,'',[rfReplaceAll]);
      QtdeC := StringReplace(QtdeC,DecimalSeparator,'.',[rfReplaceAll]);
      if QtdeC = '' Then
         QtdeC := '0';

      ValorVendad := StringReplace(lbl_edtVendad.Text,ThousandSeparator,'',[rfReplaceAll]);
      ValorVendad := StringReplace(ValorVendad,DecimalSeparator,'.',[rfReplaceAll]);
      if ValorVendad = '' Then
        ValorVendad := '0';


      Qtde := StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]);
      Qtde := StringReplace(Qtde,DecimalSeparator,'.',[rfReplaceAll]);
      if Qtde = '' Then
         Qtde := '0';

      VlrPacoteFardo := StringReplace(lbl_edtVlrPacoteFardo.Text,ThousandSeparator,'',[rfReplaceAll]);
      VlrPacoteFardo := StringReplace(VlrPacoteFardo,DecimalSeparator,'.',[rfReplaceAll]);
      if VlrPacoteFardo  = '' Then
         VlrPacoteFardo := '0';

      QtdePacoteFardo := StringReplace(lbl_edtQtdePacoteFardo.Text,ThousandSeparator,'',[rfReplaceAll]);
      QtdePacoteFardo := StringReplace(QtdePacoteFardo,DecimalSeparator,'.',[rfReplaceAll]);
      if QtdePacoteFardo  = '' Then
         QtdePacoteFardo := '0';

      strIPI := StringReplace(lbl_edtIPI.Text,ThousandSeparator,'',[rfReplaceAll]);
      strIPI := StringReplace(strIPI,DecimalSeparator,'.',[rfReplaceAll]);
      if strIPI = '' Then
         strIPI := '0';

      strPIS := StringReplace(lbl_edtPIS.Text,ThousandSeparator,'',[rfReplaceAll]);
      strPIS := StringReplace(strPIS,DecimalSeparator,'.',[rfReplaceAll]);
      if strPIS = '' Then
         strPIS := '0';

      strICMS := StringReplace(lbl_edtICMS.Text,ThousandSeparator,'',[rfReplaceAll]);
      strICMS := StringReplace(strICMS,DecimalSeparator,'.',[rfReplaceAll]);
      if strICMS = '' Then
         strICMS := '0';

      strCOFINS := StringReplace(lbl_edtCOFINS.Text,ThousandSeparator,'',[rfReplaceAll]);
      strCOFINS := StringReplace(strCOFINS,DecimalSeparator,'.',[rfReplaceAll]);
      if strCOFINS = '' Then
         strCOFINS := '0';
 
      if ckProdTrib.Checked Then begin

        AltProdTrib := 'Sim';

      end else begin

        AltProdTrib := 'NAO';

      end;

            if rbMineral.Checked Then begin

              intTipodeOleo := 1;

            end;

            if rbSintetico.Checked Then begin

              intTipodeOleo := 2;

            end;

            if rbNacional.Checked Then begin

              NacProd := 1;

           end;

           if rbImportado.Checked Then begin

             NacProd := 2;

           end;

            if ckProdAtivo.Checked Then begin

              intAtivo := 1;

           end;

           if ckProdAtivo.Checked = False Then begin

             intAtivo := 2;

           end;

    //  if Not Erro Then begin
      if ibProdutos.RecordCount > 0 Then begin


////////////////////////////////////////////////////////////////////////////////
       if ckVctoLote.Checked Then begin

       {  decodedaTe(StrToDate(FormatDateTime('DD/MM/YYYY',Now)),AnoVC,MesVC,DiaVC);//decodifica a data do combo
         DataInicialVC := StrToInt('7');//atribui na variavel os valores sem a barra da condicao de pagto
         DataEmissaoVC := FormatDateTime('DD/MM/YYYY',dtpVctoLote.date);//atribui na variavel a data formatada
         DataPagtoVC   := StrToDate(DataEmissaoVC)-(DataInicialVC)  ;//atribui na variavel a soma da data com a condicao de pagto.

          if MesVC=12 Then //se mes for igual a 12
            begin
              MesVC:=+1;//no mes atribui 1
              AnoVC:=AnoVC+1;//no ano atribui 1
            end
          else

          MesVC:=MesVC+1;//senao soma mais um no mes
          DataFinalVC:=encodeDate(AnoVC,MesVC,DiaVC);//atribui na varival a data codificada
          DataInicialVC:=DataFinalVC;}//atribui na varivel a data ja codificada
////////////////////////////////////////////////////////////////////////////////

        //GRAVA AS ALTERACOES NA TABELA DE PRODUTOS.

          ConfirmaVctoLote := 'Sim';

          ibProdutos.Close;
          ibProdutos.SQL.Clear;
          ibProdutos.SQL.Add('UPDATE CADPRODUTOS SET '
          + ' NOME = ''' + lbl_edtNomeProduto.Text + ''','
          + ' CODBARRAS = ''' + lbl_edtCodBarra.Text + ''','
          + ' VALORCUSTO = ''' + ValorCusto + ''','
          + ' VALORVENDAA = ''' + ValorVendaa + ''','
          + ' VALORVENDAB = ''' + ValorVendab + ''','
          + ' VALORVENDAC = ''' + ValorVendac + ''','
          + ' VALORVENDAD = ''' + ValorVendad + ''','
          + ' LUCROVENDA = ''' + lbl_edtLucroVenda.Text + ''','
          + StringGrupo
          + StringSubGrupo
          + ' REF = ''' + lbl_edtRef.Text + ''','
          + StringLocalEstoque
          + StringForn
          + StringTProd
          + StringAltUnidVenda
          +StringCST
          +StringCSOSN
          +StringST
          +StringCFOP
          + ' NOMEUNIDVENDA = ''' + cboModalidade.Text + ''','
          + ' LOTE = ''' + lbl_edtNumLote.Text + ''','
          + ' VCTOLOTE = ''' + FormatDateTime('mm-dd-yyyy',dtpVctoLote.Date) + ''','
          + ' CONFIRMAVCTOLOTE = ''' + ConfirmaVctoLote + ''','
          + ' DATAALTERACAO = ''' + FormatDateTime('mm-dd-yyyy',Now) + ''','
          + ' LUCRO = ''' + lbl_edtLucro.Text + ''','
          + ' ALIQUOTA = ''' + lbl_edtAliquota.Text + ''','
          + ' MARCA = ''' + lbl_edtMarca.Text + ''','
          + ' PRODUTOTRIBUTADO = ''' + AltProdTrib + ''','
          + ' VLRPACOTEFARDO = ''' + VlrPacoteFardo + ''','
          + ' NCM   = ''' + lbl_edtClassFiscal.Text + ''','
          + ' NCMSH = ''' + lbl_edtClassFiscal.Text + ''','
          + ' QTDEPACOTEFARDO = ''' + QtdePacoteFardo + ''','
          + ' QTDEB = ''' + QtdeB + ''','
          + ' QTDEC = ''' + QtdeC + ''','
          + ' IDTIPODEOLEO = ''' + IntToStr(intTipodeOleo) + ''','
          + ' NACIONALIDADEPROD = '''+ IntToStr(NacProd)+''','
          + ' ATIVO = '''+ IntToStr(intAtivo)+''','
          + ' IPI = '''+ (strIPI)+''','
          + ' PIS = '''+ (strPIS)+''','
          + ' ICMS = '''+ (strICMS)+''','
          + ' COFINS = '''+ (strCOFINS)+''','
          + ' QTDE = ''' + lbl_edtQtde.Text + ''' WHERE IDPROD=''' + InttoStr(IDProd) + '''');
          ibProdutos.ExecSQL;
          Commit(ibProdutos);

       end else begin

          ConfirmaVctoLote := 'Nao';

          ibProdutos.Close;
          ibProdutos.SQL.Clear;
          ibProdutos.SQL.Add('UPDATE CADPRODUTOS SET '
          + ' NOME = ''' + lbl_edtNomeProduto.Text + ''','
          + ' CODBARRAS = ''' + lbl_edtCodBarra.Text + ''','
          + ' VALORCUSTO = ''' + ValorCusto + ''','
          + ' VALORVENDAA = ''' + ValorVendaa + ''','
          + ' VALORVENDAB = ''' + ValorVendab + ''','
          + ' VALORVENDAC = ''' + ValorVendac + ''','
          + ' LUCROVENDA = ''' + lbl_edtLucroVenda.Text + ''','
          + StringGrupo
          + StringSubGrupo
          + ' REF = ''' + lbl_edtRef.Text + ''','
          + StringLocalEstoque
          + StringForn
          + StringTProd
          + StringAltUnidVenda
          +StringCST
          +StringCSOSN
          +StringST
          +StringCFOP
          + ' NOMEUNIDVENDA = ''' + cboModalidade.Text + ''','
          + ' LOTE = ''' + lbl_edtNumLote.Text + ''','
          + ' CONFIRMAVCTOLOTE = ''' + ConfirmaVctoLote + ''','
          + ' LUCRO = ''' + lbl_edtLucro.Text + ''','
          + ' DATAALTERACAO = ''' + FormatDateTime('mm-dd-yyyy',Now) + ''','
          + ' ALIQUOTA = ''' + lbl_edtAliquota.Text + ''','
          + ' MARCA = ''' + lbl_edtMarca.Text + ''','
          + ' PRODUTOTRIBUTADO = ''' + AltProdTrib + ''','
          + ' VLRPACOTEFARDO = ''' + VlrPacoteFardo + ''','
          + ' NCM   = ''' + lbl_edtClassFiscal.Text + ''','
          + ' NCMSH = ''' + lbl_edtClassFiscal.Text + ''','
          + ' QTDEPACOTEFARDO = ''' + QtdePacoteFardo + ''','
          + ' QTDEB = ''' + QtdeB + ''','
          + ' QTDEC = ''' + QtdeC + ''','
          + ' IDTIPODEOLEO = ''' + IntToStr(intTipodeOleo) + ''','
          + ' NACIONALIDADEPROD = '''+ IntToStr(NacProd)+''','
          + ' ATIVO = '''+ IntToStr(intAtivo)+''','
          + ' IPI = '''+ (strIPI)+''','
          + ' PIS = '''+ (strPIS)+''','
          + ' ICMS = '''+ (strICMS)+''','
          + ' COFINS = '''+ (strCOFINS)+''','
          + ' QTDE = ''' + lbl_edtQtde.Text + ''' WHERE IDPROD=''' + InttoStr(IDProd) + '''');
          ibProdutos.ExecSQL;
          Commit(ibProdutos);

       end;//if ckvctolote

      end; {if recordcount}

    end;{if}

        rbMineral.Checked := False;
        rbSintetico.Checked := False;


  end;{with}

end;

procedure TfrmProd_MPrima.ibeaNovoClick(Sender: TObject);

var

  NovaImagem: String;
  ImagemSalva : String;
  QtdeUnidVenda : String;
  GravaVctoLote : String;

  AnoVC,MesVC,DiaVC : Word;
  DataPagtoVC,DataInicialVC, DataFinalVC : TDate;
  DataEmissaoVC : String;

  //ENTRADA DA PRATELEIRA
  QtdePrateleira, MinimoPrateleira : String;
  StringForn2,StringForn3,StringForn4,StringForn5,StringForn6,StringForn7,StringForn8 : String;
  ClassForn2,ClassForn3,ClassForn4,ClassForn5,ClassForn6,ClassForn7,ClassForn8 : TClasseCombo;

  VlrPacoteFardo,QtdePacoteFardo,QtdeB,QtdeC,ProdTributado : String;
  QtdeEntrEstoque : String;
  intTipoOleo, intNacProd, intAtivo : Integer;

  //tributos

  idClassCST,idClassST,idClassCSOSN,idClassCFOP : TClasseCombo;
  strCST,strST,strCSOSN,strCFOP,strNCMSH : String;
  strICMS,strCOFINS,strIPI,strPIS :String;
begin

 // Erro := False;

  with dmModule do begin

    ListLocalEstocagem.Checked[0] := True;
    Commit(ibProdutos);
    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS ORDER BY IDPROD DESC');
    ibProdutos.Open;

   { Commit(ibProdutos);
    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT CADPRODUTOS.CODBARRAS,CADPRODUTOS.NOME,CADPRODUTOS.MLS,'
    + 'CADPRODUTOS.VALORCUSTO, CADPRODUTOS.VALORVENDAA,CADPRODUTOS.IDPROD,CADPRODUTOS.TIPOPROD,'
    + 'CADPRODUTOS.FORNECEDOR,CADPRODUTOS.VALORVENDAB,CADPRODUTOS.VALORVENDAC,'
    + 'CADPRODUTOS.IDLOCAL,CADPRODUTOS.LUCRO,CADPRODUTOS.IDUNIDVENDA,CADPRODUTOS.QTDE,'
    + 'CADPRODUTOS.COMISSAO,CADPRODUTOS.ECF,CADPRODUTOS.LOCALIZACAO,CADPRODUTOS.LUCROVENDA,'
    + 'CADPRODUTOS.QTDEEMBALAGEM,CADPRODUTOS.UNIDADE,CADPRODUTOS.UNCOMPRA,'
    + 'CADPRODUTOS.QUANTIDADE,CADPRODUTOS.ESTGERAL,CADPRODUTOS.MLS,CADPRODUTOS.REF,'
    + 'CADPRODUTOS.QTDEPROM,CADPRODUTOS.VLRPROM,'
    + 'CADPRODUTOS.VALORMETRO,CADPRODUTOS.MTS,CADPRODUTOS.IDGRUPO,CADPRODUTOS.IDSUBGRUPO,'
    + 'TBLENTRADAESTOQUEPROD.ESTOQUEMIN,TBLENTRADAESTOQUEPROD.QUANTIDADE As QtdeEstoque,'
    + 'LOCALESTOCAGEM.NOME As Estoque FROM CADPRODUTOS '
    + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE '
    + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD ORDER BY CADPRODUTOS.IDPROD DESC');
    ibProdutos.Open;}


    while not ibProdutos.Eof do begin

      lbl_edtCodigo.Text := IntToStr(ibProdutos.FieldByName('IDPROD').AsInteger + 1);
      IDProdEstoque :=  StrToInt(lbl_edtCodigo.Text);
      ibProdutos.Last;

    end;{while}


    if ListLocalEstocagem.Items.Count = 0 Then begin

      Application.MessageBox('Para cadastar um produto � necess�rio ter o local de estoque, por favor crie o local de estoque na tabela local de estocagem!','Notifica��o:Produto n�o especificado',MB_OK+MB_ICONINFORMATION);

    end else begin

      //rotina para cancelar ou nao a operacao
      if ibeaAlterar.Caption = '&Atualizar' Then begin

        ConfirmaMSG := Application.MessageBox('Deseja cancelar esta opera��o?'
                  + #13 + 'Clique em Sim para cancelar e N�o para continuar.','Notifica��o: Cancelar Opera��o', MB_YESNO + MB_ICONQUESTION);

        if ConfirmaMSG = 6 Then begin

          //RESTAURAR OS CAMPOS
          ibeaAlterar.Caption := '&Alterar';
          ibeaNovo.Enabled := True;
          ibeaNovo.Caption := '&Novo';
          ibeaExcluir.Enabled := True;
         // DesabilitaCampos(False);
          lbl_edtQtdeEstoque.Enabled := False;
          lbl_edtEstoqueM.Enabled := False;
          lbl_edtVlrEstoque.Enabled := False;

          LimpaCampo;

        end;{if}

      end else begin

        ////////////////////////////////////////////////////////////////////////////////

                               //   and (ibProdutos.FieldByName('CODBARRAS').AsString <> lbl_edtCodBarra.Text)

        if (ibeaNovo.Caption = '&Gravar') Then begin

////////////////////////////////////////////////////////////////////////////////


    ConfirmaMSG := Application.MessageBox('Confirma o registro','Notifica��o:Inclus�o de registro',+MB_YESNO+MB_ICONINFORMATION);

    ibeaNovo.Caption := '&Novo';

    if ConfirmaMSG = 6 Then begin

          If cboGrupo.ItemIndex = -1 Then begin

          //  Erro := True;

            StringGrupo       := ' ''0'',';

          end else begin
            ClassGrupo         := TClasseCombo(cboGrupo.Items.Objects[cboGrupo.ItemIndex] );            StringGrupo        := ' ''' + InttoStr( ClassGrupo.ID ) + ''',';

          end;

////////////////////////////////////////////////////////////////////////////////

         If cboSubGrupo.ItemIndex = -1 Then begin

          //  Erro := True;

            StringSubGrupo       := ' ''0'',';

          end else begin
            ClassSubGrupo         := TClasseCombo(cboSubGrupo.Items.Objects[cboSubGrupo.ItemIndex] );            StringSubGrupo        := ' ''' + InttoStr( ClassSubGrupo.ID ) + ''',';

          end;

////////////////////////////////////////////////////////////////////////////////


          If cboModalidade.ItemIndex = -1 Then begin

          //  Erro := True;
            StringTipoUnid     := ' ''0'',';

          end else begin
            IDClassTipoUnid     := TClasseCombo(cboModalidade.Items.Objects[cboModalidade.ItemIndex] );            StringTipoUnid      := ' ''' + InttoStr( IDClassTipoUnid .ID ) + ''',';

          end;

////////////////////////////////////////////////////////////////////////////////

          If cboCFOP.ItemIndex = -1 Then begin

          //  Erro := True;
            strCFOP     := ' ''0'',';

          end else begin
            idClassCFOP  := TClasseCombo(cboCFOP.Items.Objects[cboCFOP.ItemIndex] );            strCFOP      := ' ''' + InttoStr( idClassCFOP .ID ) + ''',';

          end;

////////////////////////////////////////////////////////////////////////////////

          If cboCST.ItemIndex = -1 Then begin

          //  Erro := True;
            strCST     := ' ''0'',';

          end else begin
            idClassCST  := TClasseCombo(cboCST.Items.Objects[cboCST.ItemIndex] );            strCST      := ' ''' + InttoStr( idClassCST .ID ) + ''',';

          end;

////////////////////////////////////////////////////////////////////////////////

          If cboCSOSN.ItemIndex = -1 Then begin

          //  Erro := True;
            strCSOSN     := ' ''0'',';

          end else begin
            idClassCSOSN  := TClasseCombo(cboCSOSN.Items.Objects[cboCSOSN.ItemIndex] );            strCSOSN      := ' ''' + InttoStr( idClassCSOSN .ID ) + ''',';

          end;

////////////////////////////////////////////////////////////////////////////////

          If cboST.ItemIndex = -1 Then begin

          //  Erro := True;
            strST     := ' ''0'',';

          end else begin
            idClassST  := TClasseCombo(cboST.Items.Objects[cboST.ItemIndex] );            strST      := ' ''' + InttoStr( idClassST .ID ) + ''',';

          end;

////////////////////////////////////////////////////////////////////////////////

          If cboFornecedores.ItemIndex = -1 Then begin

          //  Erro := True;
            StringForn    := ' ''0'',';

          end else begin
            ClassForn      := TClasseCombo(cboFornecedores.Items.Objects[cboFornecedores.ItemIndex] );            StringForn     := ' ''' + InttoStr( ClassForn.ID ) + ''',';

          end;

////////////////////////////////////////////////////////////////////////////////

              If cboFornecedores2.ItemIndex = -1 Then begin

                StringForn2    := ' ''0'',';

              end else begin
                ClassForn2      := TClasseCombo(cboFornecedores2.Items.Objects[cboFornecedores2.ItemIndex] );                StringForn2     := ' ''' + InttoStr( ClassForn2.ID ) + ''',';

              end;

////////////////////////////////////////////////////////////////////////////////

              If cboFornecedores3.ItemIndex = -1 Then begin

                StringForn3    := ' ''0'',';

              end else begin
                ClassForn3      := TClasseCombo(cboFornecedores3.Items.Objects[cboFornecedores3.ItemIndex] );                StringForn3     := ' ''' + InttoStr( ClassForn3.ID ) + ''',';

              end;

////////////////////////////////////////////////////////////////////////////////

              If cboFornecedores4.ItemIndex = -1 Then begin

                StringForn4    := ' ''0'',';

              end else begin
                ClassForn4      := TClasseCombo(cboFornecedores4.Items.Objects[cboFornecedores4.ItemIndex] );                StringForn4     := ' ''' + InttoStr( ClassForn4.ID ) + ''',';

              end;

////////////////////////////////////////////////////////////////////////////////

              If cboFornecedores5.ItemIndex = -1 Then begin

                StringForn5    := ' ''0'',';

              end else begin
                ClassForn5      := TClasseCombo(cboFornecedores5.Items.Objects[cboFornecedores5.ItemIndex] );                StringForn5     := ' ''' + InttoStr( ClassForn5.ID ) + ''',';

              end;

////////////////////////////////////////////////////////////////////////////////

              If cboFornecedores6.ItemIndex = -1 Then begin

                StringForn6    := ' ''0'',';

              end else begin
                ClassForn6      := TClasseCombo(cboFornecedores6.Items.Objects[cboFornecedores6.ItemIndex] );                StringForn6     := ' ''' + InttoStr( ClassForn6.ID ) + ''',';

              end;

////////////////////////////////////////////////////////////////////////////////

              If cboFornecedores7.ItemIndex = -1 Then begin

                StringForn7    := ' ''0'',';

              end else begin
                ClassForn7      := TClasseCombo(cboFornecedores7.Items.Objects[cboFornecedores7.ItemIndex] );                StringForn7     := ' ''' + InttoStr( ClassForn7.ID ) + ''',';

              end;

////////////////////////////////////////////////////////////////////////////////

              If cboFornecedores8.ItemIndex = -1 Then begin

                StringForn8    := ' ''0'',';

              end else begin
                ClassForn8      := TClasseCombo(cboFornecedores8.Items.Objects[cboFornecedores8.ItemIndex] );                StringForn8     := ' ''' + InttoStr( ClassForn8.ID ) + ''',';

              end;

////////////////////////////////////////////////////////////////////////////////

          LocalSelecionado := -1; //atribui -1 para a variavel

          for i:=0 to ListLocalEstocagem.Items.Count -1 do begin//para variavel i iniciar do zero os itens comecam no -1
            if ListLocalEstocagem.Checked[i] = True Then begin //se o checked for verdadeiro
              LocalSelecionado := i; //atribui o vlr da variavel i checada na variavel local selecionado
            end;{if}
          end;{for}

          If (LocalSelecionado = -1) Then begin

             Application.MessageBox('Desculpe mas � necess�rio selecionar um Local de Estocagem.','Notifica��o: Dados Incompletos', MB_OK + MB_ICONWARNING);

          end else begin

            if (LocalSelecionado < 0) Then begin
                StringLocalEstoque      := ' '''','
            end else begin
              ClassLocal              := TClasseCombo( ListLocalEstocagem.Items.Objects[LocalSelecionado] );
              StringLocalEstoque      := ' ''' + InttoStr( ClassLocal.ID ) + ''','
            end;

            ///////////////////////////////////////////////////////////////////////////////////
            //atribui na variavel substituindo o ponto para vlr em branco
            ValorCusto := StringReplace(lbl_edtCusto.Text,ThousandSeparator,'',[rfReplaceAll]);
            //atribui a variavel o valor separando por ponto
            ValorCusto := StringReplace(ValorCusto,DecimalSeparator,'.',[rfReplaceAll]);
            if ValorCusto = '' Then
              ValorCusto := '0';


            ValorVendaa := StringReplace(lbl_edtVendaa.Text,ThousandSeparator,'',[rfReplaceAll]);
            ValorVendaa := StringReplace(ValorVendaa,DecimalSeparator,'.',[rfReplaceAll]);
            if ValorVendaa = '' Then
              ValorVendaa := '0';

            ValorVendab := StringReplace(lbl_edtVendab.Text,ThousandSeparator,'',[rfReplaceAll]);
            ValorVendab := StringReplace(ValorVendab,DecimalSeparator,'.',[rfReplaceAll]);
            if ValorVendab = '' Then
              ValorVendab := '0';

            QtdeB := StringReplace(lbl_edtQtdeB.Text,ThousandSeparator,'',[rfReplaceAll]);
            QtdeB := StringReplace(QtdeB,DecimalSeparator,'.',[rfReplaceAll]);
            if QtdeB  = '' Then
               QtdeB := '0';

            ValorVendac := StringReplace(lbl_edtVendac.Text,ThousandSeparator,'',[rfReplaceAll]);
            ValorVendac := StringReplace(ValorVendac,DecimalSeparator,'.',[rfReplaceAll]);
            if ValorVendac = '' Then
              ValorVendac := '0';

            QtdeC := StringReplace(lbl_edtQtdeC.Text,ThousandSeparator,'',[rfReplaceAll]);
            QtdeC := StringReplace(QtdeC,DecimalSeparator,'.',[rfReplaceAll]);
            if QtdeC  = '' Then
               QtdeC := '0';

            ValorVendad := StringReplace(lbl_edtVendad.Text,ThousandSeparator,'',[rfReplaceAll]);
            ValorVendad := StringReplace(ValorVendad,DecimalSeparator,'.',[rfReplaceAll]);
            if ValorVendad = '' Then
              ValorVendad := '0';


            QtdeUnidVenda := StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]);
            QtdeUnidVenda := StringReplace(QtdeUnidVenda,DecimalSeparator,'.',[rfReplaceAll]);
            if QtdeUnidVenda  = '' Then
               QtdeUnidVenda := '0';

            VlrPacoteFardo := StringReplace(lbl_edtVlrPacoteFardo.Text,ThousandSeparator,'',[rfReplaceAll]);
            VlrPacoteFardo := StringReplace(VlrPacoteFardo,DecimalSeparator,'.',[rfReplaceAll]);
            if VlrPacoteFardo  = '' Then
               VlrPacoteFardo := '0';

            QtdePacoteFardo := StringReplace(lbl_edtQtdePacoteFardo.Text,ThousandSeparator,'',[rfReplaceAll]);
            QtdePacoteFardo := StringReplace(QtdePacoteFardo,DecimalSeparator,'.',[rfReplaceAll]);
            if QtdePacoteFardo  = '' Then
               QtdePacoteFardo := '0';

            strIPI := StringReplace(lbl_edtIPI.Text,ThousandSeparator,'',[rfReplaceAll]);
            strIPI := StringReplace(strIPI,DecimalSeparator,'.',[rfReplaceAll]);
            if strIPI = '' Then
               strIPI := '0';

            strPIS := StringReplace(lbl_edtPIS.Text,ThousandSeparator,'',[rfReplaceAll]);
            strPIS := StringReplace(strPIS,DecimalSeparator,'.',[rfReplaceAll]);
            if strPIS = '' Then
               strPIS := '0';

            strICMS := StringReplace(lbl_edtICMS.Text,ThousandSeparator,'',[rfReplaceAll]);
            strICMS := StringReplace(strICMS,DecimalSeparator,'.',[rfReplaceAll]);
            if strICMS = '' Then
               strICMS := '0';

            strCOFINS := StringReplace(lbl_edtCOFINS.Text,ThousandSeparator,'',[rfReplaceAll]);
            strCOFINS := StringReplace(strCOFINS,DecimalSeparator,'.',[rfReplaceAll]);
            if strCOFINS = '' Then
               strCOFINS := '0';


            if ckProdTrib.Checked Then begin

              ProdTributado := 'Sim';

            end else if ckProdTrib.Checked = False Then begin

              ProdTributado := 'NAO';

            end;

            if rbMineral.Checked Then begin

              intTipoOleo := 1;

            end;

            if rbSintetico.Checked Then begin

              intTipoOleo := 2;

            end;

            if rbNacional.Checked Then begin

              intNacProd := 1;

            end;

            if rbImportado.Checked Then begin

              intNacProd := 2;

            end;

            if (rbNacional.Checked = False)and(rbImportado.Checked = False) Then begin

              intNacProd := 1;

            end;  

            if lbl_edtClassFiscal.Text = '' Then begin

              strNCMSH := '123456';

            end else begin

              strNCMSH := lbl_edtClassFiscal.Text;

            end;  


              intAtivo := 1;



            if ckVctoLote.checked Then begin

              ibProdutos.Close;
              ibProdutos.SQL.Clear;
              ibProdutos.SQL.Add('INSERT INTO CADPRODUTOS '
              + '(NOME,FORNECEDOR,FORNECEDOR2,FORNECEDOR3,FORNECEDOR4,FORNECEDOR5,'              + 'FORNECEDOR6,FORNECEDOR7,FORNECEDOR8,IDLOCAL,CODBARRAS,VALORCUSTO,VALORVENDAA,'              + 'VALORVENDAB,VALORVENDAC,VALORVENDAD,REF,LUCRO,LUCROVENDA,IDUNIDVENDA,'              + 'IDGRUPO,IDSUBGRUPO,LOTE,VCTOLOTE,DATACADASTRO,QTDE,NACIONALIDADEPROD,'              + 'ALIQUOTA,MARCA,PRODUTOTRIBUTADO,VLRPACOTEFARDO,QTDEPACOTEFARDO,'              + 'QTDEB,QTDEC,NCMSH,NCM,IDTIPODEOLEO,IDCST,IDCSOSN,IDST,IDCFOP,IPI,PIS,'              + 'ICMS,COFINS,ATIVO,NOMEUNIDVENDA) values '              + '(''' + lbl_edtNomeProduto.Text + ''','
              + StringForn
              + StringForn2
              + StringForn3
              + StringForn4
              + StringForn5
              + StringForn6
              + StringForn7
              + StringForn8
              + StringLocalEstoque
              + ' ''' + lbl_edtCodBarra.Text + ''','
              + ' ''' + ValorCusto + ''',''' + ValorVendaa + ''','
              + ' ''' + ValorVendab + ''',''' + ValorVendac + ''','
              + ' ''' + ValorVendad + ''','
              + ' ''' + lbl_edtRef.Text + ''','
              + ' ''' + lbl_edtLucro.Text + ''','
              + ' ''' + lbl_edtLucroVenda.Text + ''','
              + StringTipoUnid
              + StringGrupo
              + StringSubgrupo
              + ' ''' + lbl_edtNumLote.Text + ''','
              + ' ''' + FormatDateTime('mm-dd-yyyy',dtpVctoLote.Date) + ''','
              + ' ''' + FormatDateTime('mm-dd-yyyy',Now) + ''','
              + ' ''' + lbl_edtQtde.Text + ''','
              + ' ''' + IntToStr(intNacProd) + ''','
              + ' ''' + lbl_edtAliquota.Text + ''','
              + ' ''' + lbl_edtMarca.Text + ''','
              + ' ''' + ProdTributado + ''','
              + ' ''' + VlrPacoteFardo + ''','
              + ' ''' + QtdePacoteFardo + ''','
              + ' ''' + QtdeB + ''','
              + ' ''' + QtdeC + ''','
              + ' ''' + strNCMSH + ''','
              + ' ''' + strNCMSH + ''','
              + ' ''' + IntToStr(intTipoOleo) + ''','
              +strCST
              +strCSOSN
              +strST
              +strCFOP
              + ' '''+ (strIPI)+''','
              + ' '''+ (strPIS)+''','
              + ' '''+ (strICMS)+''','
              + ' '''+ (strCOFINS)+''','
              + ' ''' + IntToStr(intAtivo) + ''','
              + ' ''' + cboModalidade.Text +''')');
              ibProdutos.ExecSQL;
              Commit(ibProdutos);

            end;

            if ckVctoLote.checked = False Then begin

              ibProdutos.Close;
              ibProdutos.SQL.Clear;
              ibProdutos.SQL.Add('INSERT INTO CADPRODUTOS '
              + '(NOME,FORNECEDOR,FORNECEDOR2,FORNECEDOR3,FORNECEDOR4,FORNECEDOR5,'              + 'FORNECEDOR6,FORNECEDOR7,FORNECEDOR8,IDLOCAL,CODBARRAS,VALORCUSTO,VALORVENDAA,'              + 'VALORVENDAB,VALORVENDAC,VALORVENDAD,REF,LUCRO,LUCROVENDA,IDUNIDVENDA,'              + 'IDGRUPO,IDSUBGRUPO,DATACADASTRO,QTDE,NACIONALIDADEPROD,'              + 'ALIQUOTA,MARCA,PRODUTOTRIBUTADO,VLRPACOTEFARDO,QTDEPACOTEFARDO,'              + 'QTDEB,QTDEC,NCMSH,NCM,IDTIPODEOLEO,IDCST,IDCSOSN,IDST,IDCFOP,IPI,PIS,'              + 'ICMS,COFINS,ATIVO,NOMEUNIDVENDA) values '              + '(''' + lbl_edtNomeProduto.Text + ''','
              + StringForn
              + StringForn2
              + StringForn3
              + StringForn4
              + StringForn5
              + StringForn6
              + StringForn7
              + StringForn8
              + StringLocalEstoque
              + ' ''' + lbl_edtCodBarra.Text + ''','
              + ' ''' + ValorCusto + ''',''' + ValorVendaa + ''','
              + ' ''' + ValorVendab + ''',''' + ValorVendac + ''','
              + ' ''' + ValorVendad + ''','
              + ' ''' + lbl_edtRef.Text + ''','
              + ' ''' + lbl_edtLucro.Text + ''','
              + ' ''' + lbl_edtLucroVenda.Text + ''','
              + StringTipoUnid
              + StringGrupo
              + StringSubgrupo
              + ' ''' + FormatDateTime('mm-dd-yyyy',Now) + ''','
              + ' ''' + lbl_edtQtde.Text + ''','
              + ' ''' + IntToStr(intNacProd) + ''','
              + ' ''' + lbl_edtAliquota.Text + ''','
              + ' ''' + lbl_edtMarca.Text + ''','
              + ' ''' + ProdTributado + ''','
              + ' ''' + VlrPacoteFardo + ''','
              + ' ''' + QtdePacoteFardo + ''','
              + ' ''' + QtdeB + ''','
              + ' ''' + QtdeC + ''','
              + ' ''' + strNCMSH + ''','
              + ' ''' + strNCMSH + ''','
              + ' ''' + IntToStr(intTipoOleo) + ''','
              +strCST
              +strCSOSN
              +strST
              +strCFOP
              + ' '''+ (strIPI)+''','
              + ' '''+ (strPIS)+''','
              + ' '''+ (strICMS)+''','
              + ' '''+ (strCOFINS)+''','
              + ' ''' + IntToStr(intAtivo) + ''','
              + ' ''' + cboModalidade.Text +''')');
              ibProdutos.ExecSQL;
              Commit(ibProdutos);

            end;//if ckvctolote
////////////////////////////////////////////////////////////////////////////////

          { // Commit(ibEntrProdEstoque);
            ibEntrProdEstoque.Close;
            ibEntrProdEstoque.SQL.Clear;
            ibEntrProdEstoque.SQL.Add('SELECT IDENTRADAPROD,IDPROD,ESTOQUEMIN,VLRTOTAL,QUANTIDADE FROM TBLENTRADAESTOQUEPROD WHERE IDPROD=''' + lbl_edtCodigo.Text + '''');
            ibEntrProdEstoque.Open;



          //faz alteracao se houver registro
          if ibEntrProdEstoque.RecordCount > 0 Then begin

            QtdeProd := StrToFloat(StringReplace(lbl_edtQtdeEstoque.Text,ThousandSeparator,'',[rfReplaceAll]));

            EstoqueMinimo  := StrToFloat(StringReplace(lbl_edtEstoqueM.Text,ThousandSeparator,'',[rfReplaceAll]));

            TotalEstoque    := StrToFloat(StringReplace(lbl_edtVlrEstoque.Text,ThousandSeparator,'',[rfReplaceAll]));

          //  IncluiProd := False;

            AlteraQtde := StringReplace(FloatToStr(QtdeProd),ThousandSeparator,'',[rfReplaceAll]);
            AlteraQtde := StringReplace(AlteraQtde,DecimalSeparator,'.',[rfReplaceAll]);
            if AlteraQtde = '' Then
            AlteraQtde := '0';

            AlteraEstoqueMin := StringReplace(FloatToStr(EstoqueMinimo),ThousandSeparator,'',[rfReplaceAll]);
            AlteraEstoqueMin := StringReplace(AlteraEstoqueMin,DecimalSeparator,'.',[rfReplaceAll]);
            if AlteraEstoqueMin = '' Then
            AlteraEstoqueMin := '0';

            AlteraTotal := StringReplace(FloatToStr(TotalEstoque),ThousandSeparator,'',[rfReplaceAll]);
            AlteraTotal := StringReplace(AlteraTotal,DecimalSeparator,'.',[rfReplaceAll]);
            if AlteraTotal = '' Then
            AlteraTotal := '0';


            ibEntrProdEstoque.Close;
            ibEntrProdEstoque.SQL.Clear;
            ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET'
            +' ESTOQUEMIN=''' + AlteraEstoqueMin + ''''
            +',VLRTOTAL=''' + AlteraTotal + ''''
            +',DATAENTRADA = ''' + FormatDateTime('mm/dd/yyyy',Now) + ''''
            +',DATAULTIMAENTR = ''' + FormatDateTime('mm/dd/yyyy',Now) + ''''
            +',QUANTIDADE=''' + AlteraQtde + ''' WHERE IDPROD=''' + IntTostr(IDProdEstoque) + ''''); //IDENTRADAPROD=''' +  lbl_edtEntrada.Text  + ''''
            ibEntrProdEstoque.ExecSQL;
            Commit(ibEntrProdEstoque);

          end else begin }

          //  IncluiProd := True;

            ValorTotal := StringReplace(lbl_edtVlrEstoque.Text,ThousandSeparator,'',[rfReplaceAll]);
            ValorTotal := StringReplace(ValorTotal,DecimalSeparator,'.',[rfReplaceAll]);
            if ValorTotal = '' Then
              ValorTotal := '0';

            QtdeProdEstoque := StringReplace(lbl_edtQtdeEstoque.Text,ThousandSeparator,'',[rfReplaceAll]);
            QtdeProdEstoque := StringReplace(QtdeProdEstoque,DecimalSeparator,'.',[rfReplaceAll]);
            if QtdeProdEstoque = '' Then
              QtdeProdEstoque := '0';


            EstoqueMin := StringReplace(lbl_edtEstoqueM.Text,ThousandSeparator,'',[rfReplaceAll]);
            EstoqueMin := StringReplace(EstoqueMin,DecimalSeparator,'.',[rfReplaceAll]);
            if EstoqueMin = '' Then
              EstoqueMin := '0';

            ibEntrProdEstoque.Close;
            ibEntrProdEstoque.SQL.Clear;
            ibEntrProdEstoque.SQL.Add('INSERT INTO TBLENTRADAESTOQUEPROD '
            + '(IDENTRADAPROD,QUANTIDADE,ESTOQUEMIN,IDPROD,VLRTOTAL,DATAENTRADA,'
            + 'QTDEENTRADA,DATAULTIMAENTR,CODBARRAS) values '
            + '(''' + IntToStr(IDProdEstoque) + ''',''' + QtdeProdEstoque + ''','
            + ' ''' + EstoqueMin + ''','
            + ' ''' + IntToStr(IDProdEstoque) + ''','
            + ' ''' + ValorTotal + ''','
            + ' ''' + FormatDateTime('mm/dd/yyyy',Now) + ''','
            + ' ''' + QtdeProdEstoque + ''','
            + ' ''' + FormatDateTime('mm/dd/yyyy',Now) + ''','
            + ' ''' + lbl_edtCodbarra.Text + ''')');
            ibEntrProdEstoque.ExecSQL;


          end;//if recordcount


////////////////////////////////////////////////////////////////////////////////

           if (lbl_edtQtdeEstoque.Text > '0')Then begin

              ValorTotal := StringReplace(lbl_edtVlrEstoque.Text,ThousandSeparator,'',[rfReplaceAll]);
              ValorTotal := StringReplace(ValorTotal,DecimalSeparator,'.',[rfReplaceAll]);
              if ValorTotal = '' Then
                ValorTotal := '0';

              QtdeProdEstoque := StringReplace(lbl_edtQtdeEstoque.Text,ThousandSeparator,'',[rfReplaceAll]);
              QtdeProdEstoque := StringReplace(QtdeProdEstoque,DecimalSeparator,'.',[rfReplaceAll]);
              if QtdeProdEstoque = '' Then
                QtdeProdEstoque := '0';


              EstoqueMin := StringReplace(lbl_edtEstoqueM.Text,ThousandSeparator,'',[rfReplaceAll]);
              EstoqueMin := StringReplace(EstoqueMin,DecimalSeparator,'.',[rfReplaceAll]);
              if EstoqueMin = '' Then
                EstoqueMin := '0';

              QtdePrateleira := StringReplace(lbl_edtQtdePrat.Text,ThousandSeparator,'',[rfReplaceAll]);
              QtdePrateleira := StringReplace(QtdePrateleira,DecimalSeparator,'.',[rfReplaceAll]);
              if QtdePrateleira = '' Then
                QtdePrateleira := '0';

              MinimoPrateleira := StringReplace(lbl_edtMinimoPrat.Text,ThousandSeparator,'',[rfReplaceAll]);
              MinimoPrateleira := StringReplace(MinimoPrateleira,DecimalSeparator,'.',[rfReplaceAll]);
              if MinimoPrateleira = '' Then
                MinimoPrateleira := '0';

              //grava os dados na tbl entrada de estoque de produtos. + IntToStr(IDProdEstoque) + ''',
              ibEntrProdEstoque.Close;
              ibEntrProdEstoque.SQL.Clear;
              ibEntrProdEstoque.SQL.Add('INSERT INTO TBLENTRADAESTOQUEPROD '
              + '(QUANTIDADE,ESTOQUEMIN,IDPROD,QTDEPRATELEIRA,MINIMOPRATELEIRA,'
              + 'QTDEENTRADA,VLRTOTAL,FORNECEDOR,CODBARRAS) values '
              + '(''' + QtdeProdEstoque + ''','
              + ' ''' + EstoqueMin + ''','
              + ' ''' + IntToStr(IDProdEstoque) + ''','
              + ' ''' + QtdePrateleira + ''','
              + ' ''' + MinimoPrateleira + ''','
              + ' ''' + QtdeProdEstoque + ''','
              + ' ''' + ValorTotal + ''','
              + StringForn
            ///  + StringLocalEstoque  IDLOCAL,
              + ' ''' + lbl_edtCodbarra.Text + ''')');
              ibEntrProdEstoque.ExecSQL;

              Commit(ibEntrProdEstoque);

              lbl_edtVlrEstoque.Clear;
              lbl_edtQtdeEstoque.Clear;
              lbl_edtEstoqueM.Clear;
              lbl_edtQtdePrat.Clear;
              lbl_edtMinimoPrat.Clear;

        //    end;
 ////////////////////////////////////////////////////////////////////////////////


          //(ibProdutos.FieldByName('IDPROD').AsInteger + 1);


    {    ibEntrProdEstoque.Close;
        ibEntrProdEstoque.SQL.Clear;
        ibEntrProdEstoque.SQL.Add('SELECT IDENTRADAPROD,IDPROD,ESTOQUEMIN,VLRTOTAL,QUANTIDADE FROM TBLENTRADAESTOQUEPROD WHERE IDPROD=''' + IntToStr(IDProdEstoque) + '''');
      //  +'and IDENTRADAPROD=''' + lbl_edtEntrada.Text + '''');
        ibEntrProdEstoque.Open;

        QtdeProd := StrToFloat(StringReplace(lbl_edtQtdeEstoque.Text,ThousandSeparator,'',[rfReplaceAll]));

        EstoqueMinimo  := StrToFloat(StringReplace(lbl_edtEstoqueM.Text,ThousandSeparator,'',[rfReplaceAll]));

        TotalEstoque    := StrToFloat(StringReplace(lbl_edtVlrEstoque.Text,ThousandSeparator,'',[rfReplaceAll]));

      //  IncluiProd := False;

        AlteraQtde := StringReplace(FloatToStr(QtdeProd),ThousandSeparator,'',[rfReplaceAll]);
        AlteraQtde := StringReplace(AlteraQtde,DecimalSeparator,'.',[rfReplaceAll]);
        if AlteraQtde = '' Then
        AlteraQtde := '0';

        AlteraEstoqueMin := StringReplace(FloatToStr(EstoqueMinimo),ThousandSeparator,'',[rfReplaceAll]);
        AlteraEstoqueMin := StringReplace(AlteraEstoqueMin,DecimalSeparator,'.',[rfReplaceAll]);
        if AlteraEstoqueMin = '' Then
        AlteraEstoqueMin := '0';

        AlteraTotal := StringReplace(FloatToStr(TotalEstoque),ThousandSeparator,'',[rfReplaceAll]);
        AlteraTotal := StringReplace(AlteraTotal,DecimalSeparator,'.',[rfReplaceAll]);
        if AlteraTotal = '' Then
        AlteraTotal := '0';


      //faz alteracao se houver registro
      if ibEntrProdEstoque.RecordCount > 0 Then begin

        ibEntrProdEstoque.Close;
        ibEntrProdEstoque.SQL.Clear;
        ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET'
        +' ESTOQUEMIN=''' + AlteraEstoqueMin + ''''
        +',VLRTOTAL=''' + AlteraTotal + ''''
        +',QUANTIDADE=''' + AlteraQtde + ''' WHERE IDPROD=''' + IntTostr(IDProdEstoque) + ''''); //IDENTRADAPROD=''' +  lbl_edtEntrada.Text  + ''''
        ibEntrProdEstoque.ExecSQL;
        Commit(ibEntrProdEstoque);

      end else begin }

      //  IncluiProd := True;


      //  IncluiProd := True;

    //  end;{if record count}



////////////////////////////////////////////////////////////////////////////////


            //COPIA A IMAGEM DO PRODUTO PARA A PASTA DE IMAGENS
          {  if opDialogImagem.FileName <> '' Then begin

              NovaImagem       := opDialogImagem.FileName;
              ImagemSalva      := ExtractFilePath(Application.ExeName) + 'Data\RunTime\ProdImagens\' + lbl_edtNomeProduto.Text + '.jpg' ;

              if FileExists(ImagemSalva) Then begin //CASO J� EXISTA A IMAGEM
                DeleteFile(ImagemSalva); //APAGA A MESMA PARA QUE SEJA COLOCADA UMA NOVA
              end;

              if Not CopyFile(PChar(NovaImagem), PChar(ImagemSalva),true) then
                Application.MessageBox('Erro ao Copiar a Imagem do produto','Notifica��o: Erro ao copiar',MB_OK + MB_ICONERROR);

              NovaImagem  := ''; //LIMPA A VARIAVEL NOVAIMAGEM
              ImagemSalva := ''; //LIMPA A VARIAVEL IMAGEMSALVA

            end else begin

              if ExtrairDirArquivoSalvo <> '' Then begin

                NovaImagem       := ExtractFilePath(Application.ExeName) + 'Data\RunTime\ProdImagens\Scaneada.jpg';
                ImagemSalva      := ExtractFilePath(Application.ExeName) + 'Data\RunTime\ProdImagens\' + lbl_edtNomeProduto.Text + '.jpg';

                if FileExists(ImagemSalva) Then begin //CASO J� EXISTA A IMAGEM
                  DeleteFile(ImagemSalva); //APAGA A MESMA PARA QUE SEJA COLOCADA UMA NOVA
                end;

                if Not CopyFile(PChar(NovaImagem), PChar(ImagemSalva),true) then
                  Application.MessageBox('Erro ao Copiar a Imagem do produto','Notifica��o: Erro ao copiar',MB_OK + MB_ICONERROR);

                //DEPOIS QUE A IMAGEM � COPIADA IR� EXCLUI-L�
                if FileExists(NovaImagem) Then begin
                  DeleteFile(NovaImagem);
                end;

                //DEPOIS QUE A IMAGEM � COPIADA IR� EXCLUI-L�
                if FileExists(ExtrairDirArquivoSalvo) Then begin
                  DeleteFile(ExtrairDirArquivoSalvo);
                end;

              end;

              NovaImagem  := ''; //LIMPA A VARIAVEL NOVAIMAGEM
              ImagemSalva := ''; //LIMPA A VARIAVEL IMAGEMSALVA

            end; }


            //Commit(ibProdutos);

            ExecSELECT;

       //   end;{if tambem do tipo de produto}

          ibeaNovo.Caption := '&Novo';
          ibeaAlterar.Enabled := True;
          ibeaExcluir.Enabled := True;
        //  DesabilitaCampos(False);
          ListLocalEstocagem.Enabled := False;
          lbl_edtQtdeEstoque.Enabled := False;
          lbl_edtEstoqueM.Enabled := False;
          lbl_edtVlrEstoque.Enabled := False;

       end;{if tipo prod}

  end;//if confirma msg

      end else begin

        ibeaNovo.Caption := '&Gravar';
       //DesabilitaCampos(True);
        lbl_edtQtdeEstoque.Enabled := True;
        lbl_edtEstoqueM.Enabled := True;
        lbl_edtVlrEstoque.Enabled := True;

        ListLocalEstocagem.Enabled := True;
        lbl_edtRef.SetFocus;
        LimpaCampo;
        rbMineral.Checked := False;
        rbSintetico.Checked := False;
        ExecSELECTFornecedor;

      end;{if bot�o novo}

    end;{if local de estoque}

  end; {if do Atualizar}

    //SELECT PARA TRAZER O CODIGO EM ORDEM CRESCENTE.
      Commit(ibProdutos);
      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS ORDER BY IDPROD DESC');
      ibProdutos.Open;

   { Commit(ibProdutos);
    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT CADPRODUTOS.CODBARRAS,CADPRODUTOS.NOME,CADPRODUTOS.MLS,'
    + 'CADPRODUTOS.VALORCUSTO, CADPRODUTOS.VALORVENDAA,CADPRODUTOS.IDPROD,CADPRODUTOS.TIPOPROD,'
    + 'CADPRODUTOS.FORNECEDOR,CADPRODUTOS.VALORVENDAB,CADPRODUTOS.VALORVENDAC,'
    + 'CADPRODUTOS.IDLOCAL,CADPRODUTOS.LUCRO,CADPRODUTOS.IDUNIDVENDA,CADPRODUTOS.QTDE,'
    + 'CADPRODUTOS.COMISSAO,CADPRODUTOS.ECF,CADPRODUTOS.LOCALIZACAO,CADPRODUTOS.LUCROVENDA,'
    + 'CADPRODUTOS.QTDEEMBALAGEM,CADPRODUTOS.UNIDADE,CADPRODUTOS.UNCOMPRA,'
    + 'CADPRODUTOS.QUANTIDADE,CADPRODUTOS.ESTGERAL,CADPRODUTOS.MLS,CADPRODUTOS.REF,'
    + 'CADPRODUTOS.QTDEPROM,CADPRODUTOS.VLRPROM,'
    + 'CADPRODUTOS.VALORMETRO,CADPRODUTOS.MTS,CADPRODUTOS.IDGRUPO,CADPRODUTOS.IDSUBGRUPO,'
    + 'TBLENTRADAESTOQUEPROD.ESTOQUEMIN,TBLENTRADAESTOQUEPROD.QUANTIDADE As QtdeEstoque,'
    + 'LOCALESTOCAGEM.NOME As Estoque FROM CADPRODUTOS '
    + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE '
    + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD ORDER BY CADPRODUTOS.IDPROD DESC');
    ibProdutos.Open; }

    lbl_edtCodigo.Text := IntToStr(ibProdutos.FieldByName('IDPROD').AsInteger + 1);

    (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

    Commit(ibConfig);
    ibConfig.Close;
    ibConfig.SQL.Clear;
    ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
    ibConfig.Open;

    if ibConfig.FieldByName('TRESCASASDECIMAIS').AsString = 'Sim' Then begin

      (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat  := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('VALORVENDAB') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis');
      (ibProdutos.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis');
      (ibProdutos.FieldByName('VALORVENDAD') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis');
      (ibProdutos.FieldByName('QTDEB') as TFloatField).DisplayFormat       := CasasDecimais('Combustiveis');
      (ibProdutos.FieldByName('QTDEC') as TFloatField).DisplayFormat       := CasasDecimais('Combustiveis');

    end else begin

      (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat  := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('VALORVENDAB') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibProdutos.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibProdutos.FieldByName('VALORVENDAD') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
      (ibProdutos.FieldByName('QTDEB') as TFloatField).DisplayFormat       := CasasDecimais('Produtos');
      (ibProdutos.FieldByName('QTDEC') as TFloatField).DisplayFormat       := CasasDecimais('Produtos');

    end;

    //(ibProdutos.FieldByName('VLRPROM') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutos.FieldByName('QTDE') as TFloatField).DisplayFormat := '0'; //CRIA UMA MASCARA PARA O CAMPO

  end;{with}

end;

procedure TfrmProd_MPrima.FormShow(Sender: TObject);

begin

 dtpVctoLote.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
 dtpVctoLote2.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
 ListLocalEstocagem.Enabled := False;
 LimpaCampo;

 lbl_edtCodP.Text := '';
 lbl_edtNome.Text := '';

        rbMineral.Checked := False;
        rbSintetico.Checked := False;


 //DEFINE COM QUE A PAGEINDEX FIQUE COMO 0
  pcProdET.ActivePageIndex := 0;
  pcProdutos.ActivePageIndex := 0;
  pcCadProdutos.ActivePageIndex := 0;
  ibeaNovo.Caption := '&Novo';
  ibeaAlterar.Caption := '&Alterar';

  //habilita os botes ao abrir o form
  ibeaNovo.Enabled := True;
  ibeaAlterar.Enabled := True;
  ibeaExcluir.Enabled := True;


  //DesabilitaCampos(False);
  lbl_edtQtdeEstoque.Enabled := False;
  lbl_edtEstoqueM.Enabled := False;
  lbl_edtVlrEstoque.Enabled := False;

  with dmModule do begin

   Commit(ibEntrProdEstoque);
   ibEntrProdEstoque.Close;
   ibEntrProdEstoque.SQL.Clear;
   ibEntrProdEstoque.SQL.Add('SELECT QUANTIDADE FROM TBLENTRADAESTOQUEPROD');
   ibEntrProdEstoque.Open; 

   //intCodUsuario := StrToInt(frmPrincipal.lbl_CodUsuario.Text);
 // LimpaCampo;//procedimento para limpar os campos ao abrir o formulario.
    ExecEstoque;
    ExecSELECT;
    ExecSELECTST;
    ExecSELECTCST;
    EXECSELECTCFOP;
    ExecSELECTCSOSN;
    ExecSELECTGrupo;
    ExecSELECTSubgrupo;
    ExecSELECTTipoUnidade;
    ExecSELECTFornecedor;
    ExecSELECTFornecedor2;
    ExecSELECTFornecedor3;
    ExecSELECTFornecedor4;
    ExecSELECTFornecedor5;
    ExecSELECTFornecedor6;
    ExecSELECTFornecedor7;
    ExecSELECTFornecedor8;
   { ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS ORDER BY IDPROD DESC');
    ibProdutos.Open;
    (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis');} //CRIA UMA MASCARA PARA O CAMPO


    //Adiciona as Colunas com os dados do Clientes
    with dbgProdutos do begin
      // monta as colunas abaixo se for verdadeiro
      if MontaColunas Then begin

         DataSource := dmModule.dtsProdutos;

        //determina as colunas a serem montadas 0 codigo cliente, 1 razao Social, 2 endere�o numero...
        Columns.Insert(0);
        Columns.Insert(1);
        Columns.Insert(2);
        Columns.Insert(3);
        Columns.Insert(4);
        Columns.Insert(5);
        Columns.Insert(6);
        Columns.Insert(7);

        //Parametros da Coluna que exibe o C�digo do Produto
        Columns.Items[0].Title.Caption := 'C�d.Interno';
        Columns.Items[0].FieldName     := 'IDPROD';
        Columns.Items[0].Width         := 61;
        Columns.Items[0].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o c�digo de barras do produto
        Columns.Items[1].Title.Caption := 'C�digo de Barras';
        Columns.Items[1].FieldName     := 'CODBARRAS';
        Columns.Items[1].Width         := 97;
        Columns.Items[1].Alignment     := taLeftJustify;

        // Parametros que exibe o nome do produto
        Columns.Items[2].Title.Caption := 'Descri��o do Produto';
        Columns.Items[2].FieldName     := 'NOME';
        Columns.Items[2].Width         := 277;
        Columns.Items[2].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o C�digo do Produto
        Columns.Items[3].Title.Caption := 'Ref.';
        Columns.Items[3].FieldName     := 'REF';
        Columns.Items[3].Width         := 156;
        Columns.Items[3].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o c�digo de barras do produto
        Columns.Items[4].Title.Caption := 'Data Cadastro';
        Columns.Items[4].FieldName     := 'DATACADASTRO';
        Columns.Items[4].Width         := 78;
        Columns.Items[4].Alignment     := taLeftJustify;

                                           //taRightJustify;
       // Parametros que exibe o valor de venda (b)
        Columns.Items[5].Title.Caption := 'Valor de Venda (A)';
        Columns.Items[5].FieldName     := 'VALORVENDAA';
        Columns.Items[5].Width         := 95;
        Columns.Items[5].Alignment     := taLeftJustify;

        // Parametros que exibe o valor de venda (a)
        Columns.Items[6].Title.Caption := 'Valor de Custo';
        Columns.Items[6].FieldName     := 'VALORCUSTO';
        Columns.Items[6].Width         := 77;
        Columns.Items[6].Alignment     := taLeftJustify;

        // Parametros que exibe o valor de venda (c)
        Columns.Items[7].Title.Caption := 'Data Altera��o';
        Columns.Items[7].FieldName     := 'DATAALTERACAO';
        Columns.Items[7].Width         := 77;
        Columns.Items[7].Alignment     := taLeftJustify;


        MontaColunas := False;

      end;
    end;
////////////////////////////////////////////////////////////////////////////////
  end;


end;

procedure TfrmProd_MPrima.FormCreate(Sender: TObject);
begin
  MontaColunas := True;
  MontaColunasMP := True;
//  MontaColunasLocalEst := True;
//  MontaColunasMovEst := True;
  MontaColunasKit := True;
  MontaColProdForn1 := True;
  MontaColProdEquivalente := True;
  
end;

procedure TfrmProd_MPrima.ibeaAlterarClick(Sender: TObject);

var
 NovaImagem: String;
 ImagemSalva : String;

IDFornProd1,IDFornProd2,IDFornProd3,IDFornProd4,IDFornProd5,IDFornProd6,IDFornProd7,IDFornProd8 : TClasseCombo;
ValorCustoForn1,ValorCustoForn2,ValorCustoForn3,ValorCustoForn4 : String;
ValorCustoForn5,ValorCustoForn6,ValorCustoForn7,ValorCustoForn8 : String;

begin

//  lbl_edtQtdeEstoque.Enabled := False;
//  lbl_edtEstoqueM.Enabled := False;
//  lbl_edtVlrEstoque.Enabled := False;

  with dmModule do begin


    if ibeaNovo.Caption = '&Gravar' Then begin

      ConfirmaMSG := Application.MessageBox('Deseja cancelar esta opera��o?'
                + #13 + 'Clique em Sim para cancelar e N�o para continuar.','Notifica��o: Cancelar Opera��o', MB_YESNO + MB_ICONQUESTION);

      if ConfirmaMSG = 6 Then begin

        ibeaNovo.Caption := '&Novo';
      //  DesabilitaCampos(False);
        lbl_edtQtdeEstoque.Enabled := False;
        lbl_edtEstoqueM.Enabled := False;
        lbl_edtVlrEstoque.Enabled := False;

      end;{if}

      end else begin

      //////////////////////////////////////////////////////////////////////////


    if ibProdutos.RecordCount < 1 Then begin

      ConfirmaMSG := Application.MessageBox('N�o existe registro para ser alterado!!'
              + #13 + 'Clique em Ok para Retornar a opera��o normal.','Notifica��o: Cancelar Opera��o', MB_OK + MB_ICONWARNING);

      ibeaNovo.Caption := '&Novo';
      //DesabilitaCampos(False);
      lbl_edtQtdeEstoque.Enabled := False;
      lbl_edtEstoqueM.Enabled := False;
      lbl_edtVlrEstoque.Enabled := False;

    end else begin

      if lbl_edtNomeProduto.Text = '' Then begin
         ConfirmaMSG := Application.MessageBox('� necess�rio selecionar um registro abaixo para ser alterado!!'
                    + #13 + 'Clique em Ok para Retornar a opera��o normal.','Notifica��o: Cancelar Opera��o', MB_OK + MB_ICONWARNING);
        ibeaAlterar.Caption := '&Alterar';

      end else begin

////////////////////////////////////////////////////////////////////////////////

          if pcProdutos.ActivePage.TabIndex = 0 Then begin

           { Commit(ibUser);
            ibUser.Close;
            ibUser.SQL.Clear;
            ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + IntToStr(intCodUsuario) + '''');
            ibUser.Open;

            if ibUser.FieldByName('ALTERACAODEPRODUTOS').AsString = 'Bloqueado' Then begin

              frmSenhaAlteracaoProd.ShowModal;

            end else if ibUser.FieldByName('ALTERACAODEPRODUTOS').AsString = 'Liberado' Then begin  }


            if ibeaAlterar.Caption = '&Atualizar' Then begin


              ConfirmaMSG := Application.MessageBox('Alterar esse Registro?','Notifica��o: Exclus�o de Registro', MB_YESNO + mb_Defbutton1+MB_ICONQUESTION);
              if ConfirmaMSG = 6 Then begin

                AlteraProduto;
                AlteraEstoque;
                AlteraPrateleira;
                //COPIA A IMAGEM DO PRODUTO PARA A PASTA DE IMAGENS
               { if opDialogImagem.FileName <> '' Then begin

                  NovaImagem       := opDialogImagem.FileName;
                  ImagemSalva      := ExtractFilePath(Application.ExeName) + 'Data\RunTime\ProdImagens\' + lbl_edtNomeProduto.Text + '.jpg' ;

                  if FileExists(ImagemSalva) Then begin //CASO J� EXISTA A IMAGEM
                    DeleteFile(ImagemSalva); //APAGA A MESMA PARA QUE SEJA COLOCADA UMA NOVA
                  end;

                  if Not CopyFile(PChar(NovaImagem), PChar(ImagemSalva),true) then
                    Application.MessageBox('Erro ao Copiar a Imagem do produto','Notifica��o: Erro ao copiar',MB_OK + MB_ICONERROR);

                  NovaImagem  := ''; //LIMPA A VARIAVEL NOVAIMAGEM
                  ImagemSalva := ''; //LIMPA A VARIAVEL IMAGEMSALVA

                end else begin

                  if ExtrairDirArquivoSalvo <> '' Then begin

                    NovaImagem       := ExtractFilePath(Application.ExeName) + 'Data\RunTime\ProdImagens\Scaneada.jpg';
                    ImagemSalva      := ExtractFilePath(Application.ExeName) + 'Data\RunTime\ProdImagens\' + lbl_edtNomeProduto.Text + '.jpg';

                    if FileExists(ImagemSalva) Then begin //CASO J� EXISTA A IMAGEM
                      DeleteFile(ImagemSalva); //APAGA A MESMA PARA QUE SEJA COLOCADA UMA NOVA
                    end;

                    if Not CopyFile(PChar(NovaImagem), PChar(ImagemSalva),true) then
                      Application.MessageBox('Erro ao Copiar a Imagem do produto','Notifica��o: Erro ao copiar',MB_OK + MB_ICONERROR);

                    //DEPOIS QUE A IMAGEM � COPIADA IR� EXCLUI-L�
                    if FileExists(NovaImagem) Then begin
                      DeleteFile(NovaImagem);
                    end;

                    //DEPOIS QUE A IMAGEM � COPIADA IR� EXCLUI-L�
                    if FileExists(ExtrairDirArquivoSalvo) Then begin
                      DeleteFile(ExtrairDirArquivoSalvo);
                    end;

                  end;

                  NovaImagem  := ''; //LIMPA A VARIAVEL NOVAIMAGEM
                  ImagemSalva := ''; //LIMPA A VARIAVEL IMAGEMSALVA

                end; }

////////////////////////////////////////////////////////////////////////////////

    if (cboFornecedores.Text <> '')and(lbl_edtVlrCompraF1.Text > '0,00') Then begin

      if (cboFornecedores.ItemIndex <> - 1)Then begin

        IDFornProd1  := TClasseCombo( cboFornecedores.Items.Objects[cboFornecedores.ItemIndex] );

        ValorCustoForn1 := StringReplace(lbl_edtVlrCompraF1.Text,ThousandSeparator,'',[rfReplaceAll]);
        ValorCustoForn1 := StringReplace(ValorCustoForn1,DecimalSeparator,'.',[rfReplaceAll]);
        if ValorCustoForn1 = '' Then
          ValorCustoForn1 := '0';


        Commit(ibProdutoFornecedor);
        ibProdutoFornecedor.Close;
        ibProdutoFornecedor.SQL.Clear;
        ibProdutoFornecedor.SQL.Add('SELECT * FROM TBLPRODFORN WHERE(IDFORNECEDOR=''' + IntToStr(IDFornProd1.ID) + ''')and(IDPROD=''' + lbl_edtCodigo.Text + ''')');
        ibProdutoFornecedor.Open;

        if ibProdutoFornecedor.RecordCount > 0 Then begin

          ibProdutoFornecedor.Close;
          ibProdutoFornecedor.SQL.Clear;
          ibProdutoFornecedor.SQL.Add('UPDATE TBLPRODFORN SET '
          + 'IDFORNECEDOR = ''' + IntToStr(IDFornProd1.ID) + ''','
          + 'IDPROD = ''' + lbl_edtCodigo.Text + ''','
          + 'VLRCUSTO = ''' + ValorCustoForn1 + ''','
          + 'NOMEPROD = ''' + lbl_edtNomeProduto.Text + ''','
          + 'NOMEFORNECEDOR = ''' + cboFornecedores.Text + ''' WHERE(IDFORNECEDOR=''' + IntToStr(IDFornProd1.ID) + ''')and(IDPROD=''' + lbl_edtCodigo.Text + ''')');
          ibProdutoFornecedor.ExecSQL;
          Commit(ibProdutoFornecedor);

        end else begin

          Commit(ibProdutoFornecedor);
          ibProdutoFornecedor.Close;
          ibProdutoFornecedor.SQL.Clear;
          ibProdutoFornecedor.SQL.Add('INSERT INTO TBLPRODFORN'
          +'(IDFORNECEDOR,IDPROD,VLRCUSTO,NOMEPROD,NOMEFORNECEDOR) values '
          + '(''' + IntToStr(IDFornProd1.ID) + ''','
          + ' ''' + lbl_edtCodigo.Text + ''','
          + ' ''' + ValorCustoForn1 + ''','
          + ' ''' + lbl_edtNomeProduto.Text + ''','
          + ' ''' + cboFornecedores.Text + ''')');
          ibProdutoFornecedor.ExecSQL;

        end;

////////////////////////////////////////////////////////////////////////////////

        Commit(ibProdutos);
        ibProdutos.Close;
        ibProdutos.SQL.Clear;
        ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE(IDPROD=''' + lbl_edtCodigo.Text + ''')');
        ibProdutos.Open;

          if (ibProdutos.Recordcount > 0) Then begin

            ibProdutos.Close;
            ibProdutos.SQL.Clear;
            ibProdutos.SQL.Add('UPDATE CADPRODUTOS SET '
            + 'FORNECEDOR = ''' + IntToStr(IDFornProd1.ID) + ''','
            + 'VLRCUSTOF1 = ''' + ValorCustoForn1 + ''' WHERE(IDPROD=''' + lbl_edtCodigo.Text + ''')');
            ibProdutos.ExecSQL;
            Commit(ibProdutos);

          end;

        end;//if confirmaalteracao

    end;//if  cbo fornecedores

////////////////////////////////////////////////////////////////////////////////

    if (cboFornecedores2.Text <> '')and(lbl_edtVlrCompraF2.Text > '0,00') Then begin

      if (cboFornecedores2.ItemIndex <> - 1)Then begin

        IDFornProd2  := TClasseCombo( cboFornecedores2.Items.Objects[cboFornecedores2.ItemIndex] );

        ValorCustoForn2 := StringReplace(lbl_edtVlrCompraF2.Text,ThousandSeparator,'',[rfReplaceAll]);
        ValorCustoForn2 := StringReplace(ValorCustoForn2,DecimalSeparator,'.',[rfReplaceAll]);
        if ValorCustoForn2 = '' Then
          ValorCustoForn2 := '0';

        Commit(ibProdutoFornecedor);
        ibProdutoFornecedor.Close;
        ibProdutoFornecedor.SQL.Clear;
        ibProdutoFornecedor.SQL.Add('SELECT * FROM TBLPRODFORN WHERE(IDFORNECEDOR=''' + IntToStr(IDFornProd2.ID) + ''')and(IDPROD=''' + lbl_edtCodigo.Text + ''')');
        ibProdutoFornecedor.Open;

        if ibProdutoFornecedor.RecordCount > 0 Then begin

          ibProdutoFornecedor.Close;
          ibProdutoFornecedor.SQL.Clear;
          ibProdutoFornecedor.SQL.Add('UPDATE TBLPRODFORN SET '
          + 'IDFORNECEDOR = ''' + IntToStr(IDFornProd2.ID) + ''','
          + 'IDPROD = ''' + lbl_edtCodigo.Text + ''','
          + 'VLRCUSTO = ''' + ValorCustoForn2 + ''','
          + 'NOMEPROD = ''' + lbl_edtNomeProduto.Text + ''','
          + 'NOMEFORNECEDOR = ''' + cboFornecedores2.Text + ''' WHERE(IDFORNECEDOR=''' + IntToStr(IDFornProd2.ID) + ''')and(IDPROD=''' + lbl_edtCodigo.Text + ''')');
          ibProdutoFornecedor.ExecSQL;
          Commit(ibProdutoFornecedor);

        end else begin

          Commit(ibProdutoFornecedor);
          ibProdutoFornecedor.Close;
          ibProdutoFornecedor.SQL.Clear;
          ibProdutoFornecedor.SQL.Add('INSERT INTO TBLPRODFORN'
          +'(IDFORNECEDOR,IDPROD,VLRCUSTO,NOMEPROD,NOMEFORNECEDOR) values '
          + '(''' + IntToStr(IDFornProd2.ID) + ''','
          + ' ''' + lbl_edtCodigo.Text + ''','
          + ' ''' + ValorCustoForn2 + ''','
          + ' ''' + lbl_edtNomeProduto.Text + ''','
          + ' ''' + cboFornecedores2.Text + ''')');
          ibProdutoFornecedor.ExecSQL;

        end;

////////////////////////////////////////////////////////////////////////////////

        Commit(ibProdutos);
        ibProdutos.Close;
        ibProdutos.SQL.Clear;
        ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE(IDPROD=''' + lbl_edtCodigo.Text + ''')');
        ibProdutos.Open;

          if (ibProdutos.Recordcount > 0)Then begin

            ibProdutos.Close;
            ibProdutos.SQL.Clear;
            ibProdutos.SQL.Add('UPDATE CADPRODUTOS SET '
            + 'FORNECEDOR2 = ''' + IntToStr(IDFornProd2.ID) + ''','
            + 'VLRCUSTOF2 = ''' + ValorCustoForn2 + ''' WHERE(IDPROD=''' + lbl_edtCodigo.Text + ''')');
            ibProdutos.ExecSQL;
            Commit(ibProdutos);

          end;

      end;//if cbofornecedor 2

    end;//if cbofornecedres 2

////////////////////////////////////////////////////////////////////////////////

    if (cboFornecedores3.Text <> '')and(lbl_edtVlrCompraF3.Text > '0,00') Then begin

      if (cboFornecedores3.ItemIndex <> - 1)Then begin

        IDFornProd3  := TClasseCombo( cboFornecedores3.Items.Objects[cboFornecedores3.ItemIndex] );

        ValorCustoForn3 := StringReplace(lbl_edtVlrCompraF3.Text,ThousandSeparator,'',[rfReplaceAll]);
        ValorCustoForn3 := StringReplace(ValorCustoForn3,DecimalSeparator,'.',[rfReplaceAll]);
        if ValorCustoForn3 = '' Then
          ValorCustoForn3 := '0';

        Commit(ibProdutoFornecedor);
        ibProdutoFornecedor.Close;
        ibProdutoFornecedor.SQL.Clear;
        ibProdutoFornecedor.SQL.Add('SELECT * FROM TBLPRODFORN WHERE(IDFORNECEDOR=''' + IntToStr(IDFornProd3.ID) + ''')and(IDPROD=''' + lbl_edtCodigo.Text + ''')');
        ibProdutoFornecedor.Open;

        if ibProdutoFornecedor.RecordCount > 0 Then begin

          ibProdutoFornecedor.Close;
          ibProdutoFornecedor.SQL.Clear;
          ibProdutoFornecedor.SQL.Add('UPDATE TBLPRODFORN SET '
          + 'IDFORNECEDOR = ''' + IntToStr(IDFornProd3.ID) + ''','
          + 'IDPROD = ''' + lbl_edtCodigo.Text + ''','
          + 'VLRCUSTO = ''' + ValorCustoForn3 + ''','
          + 'NOMEPROD = ''' + lbl_edtNomeProduto.Text + ''','
          + 'NOMEFORNECEDOR = ''' + cboFornecedores3.Text + ''' WHERE(IDFORNECEDOR=''' + IntToStr(IDFornProd3.ID) + ''')and(IDPROD=''' + lbl_edtCodigo.Text + ''')');
          ibProdutoFornecedor.ExecSQL;
          Commit(ibProdutoFornecedor);

        end else begin

          Commit(ibProdutoFornecedor);
          ibProdutoFornecedor.Close;
          ibProdutoFornecedor.SQL.Clear;
          ibProdutoFornecedor.SQL.Add('INSERT INTO TBLPRODFORN'
          +'(IDFORNECEDOR,IDPROD,VLRCUSTO,NOMEPROD,NOMEFORNECEDOR) values '
          + '(''' + IntToStr(IDFornProd3.ID) + ''','
          + ' ''' + lbl_edtCodigo.Text + ''','
          + ' ''' + ValorCustoForn3 + ''','
          + ' ''' + lbl_edtNomeProduto.Text + ''','
          + ' ''' + cboFornecedores3.Text + ''')');
          ibProdutoFornecedor.ExecSQL;

        end;

////////////////////////////////////////////////////////////////////////////////

        Commit(ibProdutos);
        ibProdutos.Close;
        ibProdutos.SQL.Clear;
        ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE(IDPROD=''' + lbl_edtCodigo.Text + ''')');
        ibProdutos.Open;

          if (ibProdutos.Recordcount > 0)Then begin

            ibProdutos.Close;
            ibProdutos.SQL.Clear;
            ibProdutos.SQL.Add('UPDATE CADPRODUTOS SET '
            + 'FORNECEDOR3 = ''' + IntToStr(IDFornProd3.ID) + ''','
            + 'VLRCUSTOF3 = ''' + ValorCustoForn3 + ''' WHERE(IDPROD=''' + lbl_edtCodigo.Text + ''')');
            ibProdutos.ExecSQL;
            Commit(ibProdutos);

          end;

      end;//if cbofornecedor 2

    end;//if cbofornecedres 2

////////////////////////////////////////////////////////////////////////////////

    if (cboFornecedores4.Text <> '')and(lbl_edtVlrCompraF4.Text > '0,00') Then begin

      if (cboFornecedores4.ItemIndex <> - 1)Then begin

        IDFornProd4  := TClasseCombo( cboFornecedores4.Items.Objects[cboFornecedores4.ItemIndex] );

        ValorCustoForn4 := StringReplace(lbl_edtVlrCompraF4.Text,ThousandSeparator,'',[rfReplaceAll]);
        ValorCustoForn4 := StringReplace(ValorCustoForn4,DecimalSeparator,'.',[rfReplaceAll]);
        if ValorCustoForn4 = '' Then
          ValorCustoForn4 := '0';

        Commit(ibProdutoFornecedor);
        ibProdutoFornecedor.Close;
        ibProdutoFornecedor.SQL.Clear;
        ibProdutoFornecedor.SQL.Add('SELECT * FROM TBLPRODFORN WHERE(IDFORNECEDOR=''' + IntToStr(IDFornProd4.ID) + ''')and(IDPROD=''' + lbl_edtCodigo.Text + ''')');
        ibProdutoFornecedor.Open;

        if ibProdutoFornecedor.RecordCount > 0 Then begin

          ibProdutoFornecedor.Close;
          ibProdutoFornecedor.SQL.Clear;
          ibProdutoFornecedor.SQL.Add('UPDATE TBLPRODFORN SET '
          + 'IDFORNECEDOR = ''' + IntToStr(IDFornProd4.ID) + ''','
          + 'IDPROD = ''' + lbl_edtCodigo.Text + ''','
          + 'VLRCUSTO = ''' + ValorCustoForn4 + ''','
          + 'NOMEPROD = ''' + lbl_edtNomeProduto.Text + ''','
          + 'NOMEFORNECEDOR = ''' + cboFornecedores4.Text + ''' WHERE(IDFORNECEDOR=''' + IntToStr(IDFornProd4.ID) + ''')and(IDPROD=''' + lbl_edtCodigo.Text + ''')');
          ibProdutoFornecedor.ExecSQL;
          Commit(ibProdutoFornecedor);

        end else begin

          Commit(ibProdutoFornecedor);
          ibProdutoFornecedor.Close;
          ibProdutoFornecedor.SQL.Clear;
          ibProdutoFornecedor.SQL.Add('INSERT INTO TBLPRODFORN'
          +'(IDFORNECEDOR,IDPROD,VLRCUSTO,NOMEPROD,NOMEFORNECEDOR) values '
          + '(''' + IntToStr(IDFornProd4.ID) + ''','
          + ' ''' + lbl_edtCodigo.Text + ''','
          + ' ''' + ValorCustoForn4 + ''','
          + ' ''' + lbl_edtNomeProduto.Text + ''','
          + ' ''' + cboFornecedores4.Text + ''')');
          ibProdutoFornecedor.ExecSQL;

        end;

////////////////////////////////////////////////////////////////////////////////

        Commit(ibProdutos);
        ibProdutos.Close;
        ibProdutos.SQL.Clear;
        ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE(IDPROD=''' + lbl_edtCodigo.Text + ''')');
        ibProdutos.Open;

          if (ibProdutos.Recordcount > 0)Then begin

            ibProdutos.Close;
            ibProdutos.SQL.Clear;
            ibProdutos.SQL.Add('UPDATE CADPRODUTOS SET '
            + 'FORNECEDOR4 = ''' + IntToStr(IDFornProd4.ID) + ''','
            + 'VLRCUSTOF4 = ''' + ValorCustoForn4 + ''' WHERE(IDPROD=''' + lbl_edtCodigo.Text + ''')');
            ibProdutos.ExecSQL;
            Commit(ibProdutos);

          end;

      end;//if cbofornecedor 2

    end;//if cbofornecedres 2

////////////////////////////////////////////////////////////////////////////////

    if (cboFornecedores5.Text <> '')and(lbl_edtVlrCompraF5.Text > '0,00') Then begin

      if (cboFornecedores5.ItemIndex <> - 1)Then begin

        IDFornProd5  := TClasseCombo( cboFornecedores5.Items.Objects[cboFornecedores5.ItemIndex] );

        ValorCustoForn5 := StringReplace(lbl_edtVlrCompraF5.Text,ThousandSeparator,'',[rfReplaceAll]);
        ValorCustoForn5 := StringReplace(ValorCustoForn5,DecimalSeparator,'.',[rfReplaceAll]);
        if ValorCustoForn5 = '' Then
          ValorCustoForn5 := '0';
        
        Commit(ibProdutoFornecedor);
        ibProdutoFornecedor.Close;
        ibProdutoFornecedor.SQL.Clear;
        ibProdutoFornecedor.SQL.Add('SELECT * FROM TBLPRODFORN WHERE(IDFORNECEDOR=''' + IntToStr(IDFornProd5.ID) + ''')and(IDPROD=''' + lbl_edtCodigo.Text + ''')');
        ibProdutoFornecedor.Open;

        if ibProdutoFornecedor.RecordCount > 0 Then begin

          ibProdutoFornecedor.Close;
          ibProdutoFornecedor.SQL.Clear;
          ibProdutoFornecedor.SQL.Add('UPDATE TBLPRODFORN SET '
          + 'IDFORNECEDOR = ''' + IntToStr(IDFornProd5.ID) + ''','
          + 'IDPROD = ''' + lbl_edtCodigo.Text + ''','
          + 'VLRCUSTO = ''' + ValorCustoForn5 + ''','
          + 'NOMEPROD = ''' + lbl_edtNomeProduto.Text + ''','
          + 'NOMEFORNECEDOR = ''' + cboFornecedores5.Text + ''' WHERE(IDFORNECEDOR=''' + IntToStr(IDFornProd5.ID) + ''')and(IDPROD=''' + lbl_edtCodigo.Text + ''')');
          ibProdutoFornecedor.ExecSQL;
          Commit(ibProdutoFornecedor);

        end else begin

          Commit(ibProdutoFornecedor);
          ibProdutoFornecedor.Close;
          ibProdutoFornecedor.SQL.Clear;
          ibProdutoFornecedor.SQL.Add('INSERT INTO TBLPRODFORN'
          +'(IDFORNECEDOR,IDPROD,VLRCUSTO,NOMEPROD,NOMEFORNECEDOR) values '
          + '(''' + IntToStr(IDFornProd5.ID) + ''','
          + ' ''' + lbl_edtCodigo.Text + ''','
          + ' ''' + ValorCustoForn5 + ''','
          + ' ''' + lbl_edtNomeProduto.Text + ''','
          + ' ''' + cboFornecedores5.Text + ''')');
          ibProdutoFornecedor.ExecSQL;

        end;

////////////////////////////////////////////////////////////////////////////////

        Commit(ibProdutos);
        ibProdutos.Close;
        ibProdutos.SQL.Clear;
        ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE(IDPROD=''' + lbl_edtCodigo.Text + ''')');
        ibProdutos.Open;

          if (ibProdutos.Recordcount > 0)Then begin

            ibProdutos.Close;
            ibProdutos.SQL.Clear;
            ibProdutos.SQL.Add('UPDATE CADPRODUTOS SET '
            + 'FORNECEDOR5 = ''' + IntToStr(IDFornProd5.ID) + ''','
            + 'VLRCUSTOF5 = ''' + ValorCustoForn5 + ''' WHERE(IDPROD=''' + lbl_edtCodigo.Text + ''')');
            ibProdutos.ExecSQL;
            Commit(ibProdutos);

          end;

      end;//if cbofornecedor 2

    end;//if cbofornecedres 2

////////////////////////////////////////////////////////////////////////////////

    if (cboFornecedores6.Text <> '')and(lbl_edtVlrCompraF6.Text > '0,00') Then begin

      if (cboFornecedores6.ItemIndex <> - 1)Then begin

        IDFornProd6  := TClasseCombo( cboFornecedores6.Items.Objects[cboFornecedores6.ItemIndex] );

        ValorCustoForn6 := StringReplace(lbl_edtVlrCompraF6.Text,ThousandSeparator,'',[rfReplaceAll]);
        ValorCustoForn6 := StringReplace(ValorCustoForn6,DecimalSeparator,'.',[rfReplaceAll]);
        if ValorCustoForn6 = '' Then
          ValorCustoForn6 := '0';

       
        Commit(ibProdutoFornecedor);
        ibProdutoFornecedor.Close;
        ibProdutoFornecedor.SQL.Clear;
        ibProdutoFornecedor.SQL.Add('SELECT * FROM TBLPRODFORN WHERE(IDFORNECEDOR=''' + IntToStr(IDFornProd6.ID) + ''')and(IDPROD=''' + lbl_edtCodigo.Text + ''')');
        ibProdutoFornecedor.Open;

        if ibProdutoFornecedor.RecordCount > 0 Then begin

          ibProdutoFornecedor.Close;
          ibProdutoFornecedor.SQL.Clear;
          ibProdutoFornecedor.SQL.Add('UPDATE TBLPRODFORN SET '
          + 'IDFORNECEDOR = ''' + IntToStr(IDFornProd6.ID) + ''','
          + 'IDPROD = ''' + lbl_edtCodigo.Text + ''','
          + 'VLRCUSTO = ''' + ValorCustoForn6 + ''','
          + 'NOMEPROD = ''' + lbl_edtNomeProduto.Text + ''','
          + 'NOMEFORNECEDOR = ''' + cboFornecedores6.Text + ''' WHERE(IDFORNECEDOR=''' + IntToStr(IDFornProd6.ID) + ''')and(IDPROD=''' + lbl_edtCodigo.Text + ''')');
          ibProdutoFornecedor.ExecSQL;
          Commit(ibProdutoFornecedor);

        end else begin

          Commit(ibProdutoFornecedor);
          ibProdutoFornecedor.Close;
          ibProdutoFornecedor.SQL.Clear;
          ibProdutoFornecedor.SQL.Add('INSERT INTO TBLPRODFORN'
          +'(IDFORNECEDOR,IDPROD,VLRCUSTO,NOMEPROD,NOMEFORNECEDOR) values '
          + '(''' + IntToStr(IDFornProd6.ID) + ''','
          + ' ''' + lbl_edtCodigo.Text + ''','
          + ' ''' + ValorCustoForn6 + ''','
          + ' ''' + lbl_edtNomeProduto.Text + ''','
          + ' ''' + cboFornecedores6.Text + ''')');
          ibProdutoFornecedor.ExecSQL;

        end;

////////////////////////////////////////////////////////////////////////////////

        Commit(ibProdutos);
        ibProdutos.Close;
        ibProdutos.SQL.Clear;
        ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE(IDPROD=''' + lbl_edtCodigo.Text + ''')');
        ibProdutos.Open;

          if (ibProdutos.Recordcount > 0)Then begin

            ibProdutos.Close;
            ibProdutos.SQL.Clear;
            ibProdutos.SQL.Add('UPDATE CADPRODUTOS SET '
            + 'FORNECEDOR6 = ''' + IntToStr(IDFornProd6.ID) + ''','
            + 'VLRCUSTOF6 = ''' + ValorCustoForn6 + ''' WHERE(IDPROD=''' + lbl_edtCodigo.Text + ''')');
            ibProdutos.ExecSQL;
            Commit(ibProdutos);

          end;

      end;//if cbofornecedor 2

    end;//if cbofornecedres 2

////////////////////////////////////////////////////////////////////////////////

    if (cboFornecedores7.Text <> '')and(lbl_edtVlrCompraF7.Text > '0,00') Then begin

      if (cboFornecedores7.ItemIndex <> - 1)Then begin

        IDFornProd7  := TClasseCombo( cboFornecedores7.Items.Objects[cboFornecedores7.ItemIndex] );

        ValorCustoForn7 := StringReplace(lbl_edtVlrCompraF7.Text,ThousandSeparator,'',[rfReplaceAll]);
        ValorCustoForn7 := StringReplace(ValorCustoForn7,DecimalSeparator,'.',[rfReplaceAll]);
        if ValorCustoForn7 = '' Then
          ValorCustoForn7 := '0';
        
        Commit(ibProdutoFornecedor);
        ibProdutoFornecedor.Close;
        ibProdutoFornecedor.SQL.Clear;
        ibProdutoFornecedor.SQL.Add('SELECT * FROM TBLPRODFORN WHERE(IDFORNECEDOR=''' + IntToStr(IDFornProd7.ID) + ''')and(IDPROD=''' + lbl_edtCodigo.Text + ''')');
        ibProdutoFornecedor.Open;

        if ibProdutoFornecedor.RecordCount > 0 Then begin

          ibProdutoFornecedor.Close;
          ibProdutoFornecedor.SQL.Clear;
          ibProdutoFornecedor.SQL.Add('UPDATE TBLPRODFORN SET '
          + 'IDFORNECEDOR = ''' + IntToStr(IDFornProd7.ID) + ''','
          + 'IDPROD = ''' + lbl_edtCodigo.Text + ''','
          + 'VLRCUSTO = ''' + ValorCustoForn7 + ''','
          + 'NOMEPROD = ''' + lbl_edtNomeProduto.Text + ''','
          + 'NOMEFORNECEDOR = ''' + cboFornecedores7.Text + ''' WHERE(IDFORNECEDOR=''' + IntToStr(IDFornProd7.ID) + ''')and(IDPROD=''' + lbl_edtCodigo.Text + ''')');
          ibProdutoFornecedor.ExecSQL;
          Commit(ibProdutoFornecedor);

        end else begin

          Commit(ibProdutoFornecedor);
          ibProdutoFornecedor.Close;
          ibProdutoFornecedor.SQL.Clear;
          ibProdutoFornecedor.SQL.Add('INSERT INTO TBLPRODFORN'
          +'(IDFORNECEDOR,IDPROD,VLRCUSTO,NOMEPROD,NOMEFORNECEDOR) values '
          + '(''' + IntToStr(IDFornProd7.ID) + ''','
          + ' ''' + lbl_edtCodigo.Text + ''','
          + ' ''' + ValorCustoForn7 + ''','
          + ' ''' + lbl_edtNomeProduto.Text + ''','
          + ' ''' + cboFornecedores7.Text + ''')');
          ibProdutoFornecedor.ExecSQL;

        end;

////////////////////////////////////////////////////////////////////////////////
        
        Commit(ibProdutos);
        ibProdutos.Close;
        ibProdutos.SQL.Clear;
        ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE(IDPROD=''' + lbl_edtCodigo.Text + ''')');
        ibProdutos.Open;

          if (ibProdutos.Recordcount > 0)Then begin

            ibProdutos.Close;
            ibProdutos.SQL.Clear;
            ibProdutos.SQL.Add('UPDATE CADPRODUTOS SET '
            + 'FORNECEDOR7 = ''' + IntToStr(IDFornProd7.ID) + ''','
            + 'VLRCUSTOF7 = ''' + ValorCustoForn7 + ''' WHERE(IDPROD=''' + lbl_edtCodigo.Text + ''')');
            ibProdutos.ExecSQL;
            Commit(ibProdutos);

          end;

      end;//if cbofornecedor 2

    end;//if cbofornecedres 2

////////////////////////////////////////////////////////////////////////////////

    if (cboFornecedores8.Text <> '')and(lbl_edtVlrCompraF8.Text > '0,00') Then begin

      if (cboFornecedores8.ItemIndex <> - 1)Then begin

        IDFornProd8  := TClasseCombo( cboFornecedores8.Items.Objects[cboFornecedores8.ItemIndex] );

        ValorCustoForn8 := StringReplace(lbl_edtVlrCompraF8.Text,ThousandSeparator,'',[rfReplaceAll]);
        ValorCustoForn8 := StringReplace(ValorCustoForn8,DecimalSeparator,'.',[rfReplaceAll]);
        if ValorCustoForn8 = '' Then
          ValorCustoForn8 := '0';
        
        Commit(ibProdutoFornecedor);
        ibProdutoFornecedor.Close;
        ibProdutoFornecedor.SQL.Clear;
        ibProdutoFornecedor.SQL.Add('SELECT * FROM TBLPRODFORN WHERE(IDFORNECEDOR=''' + IntToStr(IDFornProd8.ID) + ''')and(IDPROD=''' + lbl_edtCodigo.Text + ''')');
        ibProdutoFornecedor.Open;

        if ibProdutoFornecedor.RecordCount > 0 Then begin

          ibProdutoFornecedor.Close;
          ibProdutoFornecedor.SQL.Clear;
          ibProdutoFornecedor.SQL.Add('UPDATE TBLPRODFORN SET '
          + 'IDFORNECEDOR = ''' + IntToStr(IDFornProd8.ID) + ''','
          + 'IDPROD = ''' + lbl_edtCodigo.Text + ''','
          + 'VLRCUSTO = ''' + ValorCustoForn8 + ''','
          + 'NOMEPROD = ''' + lbl_edtNomeProduto.Text + ''','
          + 'NOMEFORNECEDOR = ''' + cboFornecedores8.Text + ''' WHERE(IDFORNECEDOR=''' + IntToStr(IDFornProd8.ID) + ''')and(IDPROD=''' + lbl_edtCodigo.Text + ''')');
          ibProdutoFornecedor.ExecSQL;
          Commit(ibProdutoFornecedor);

        end else begin

          Commit(ibProdutoFornecedor);
          ibProdutoFornecedor.Close;
          ibProdutoFornecedor.SQL.Clear;
          ibProdutoFornecedor.SQL.Add('INSERT INTO TBLPRODFORN'
          +'(IDFORNECEDOR,IDPROD,VLRCUSTO,NOMEPROD,NOMEFORNECEDOR) values '
          + '(''' + IntToStr(IDFornProd8.ID) + ''','
          + ' ''' + lbl_edtCodigo.Text + ''','
          + ' ''' + ValorCustoForn8 + ''','
          + ' ''' + lbl_edtNomeProduto.Text + ''','
          + ' ''' + cboFornecedores8.Text + ''')');
          ibProdutoFornecedor.ExecSQL;

        end;

////////////////////////////////////////////////////////////////////////////////

        Commit(ibProdutos);
        ibProdutos.Close;
        ibProdutos.SQL.Clear;
        ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE(IDPROD=''' + lbl_edtCodigo.Text + ''')');
        ibProdutos.Open;

          if (ibProdutos.Recordcount > 0)Then begin

            ibProdutos.Close;
            ibProdutos.SQL.Clear;
            ibProdutos.SQL.Add('UPDATE CADPRODUTOS SET '
            + 'FORNECEDOR8 = ''' + IntToStr(IDFornProd8.ID) + ''','
            + 'VLRCUSTOF8 = ''' + ValorCustoForn8 + ''' WHERE(IDPROD=''' + lbl_edtCodigo.Text + ''')');
            ibProdutos.ExecSQL;
            Commit(ibProdutos);

          end;

      end;//if cbofornecedor 2

    end;//if cbofornecedres 2

////////////////////////////////////////////////////////////////////////////////
                
                //Commit(ibProdutos);

                ibProdutos.Close;
                ibProdutos.SQL.Clear;
                ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE IDPROD=''' + (lbl_edtCodigo.Text) + '''');
                ibProdutos.Open;

                (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

                Commit(ibConfig);
                ibConfig.Close;
                ibConfig.SQL.Clear;
                ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
                ibConfig.Open;

                if ibConfig.FieldByName('TRESCASASDECIMAIS').AsString = 'Sim' Then begin

                  (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat   := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
                  (ibProdutos.FieldByName('VALORVENDAB') as TFloatField).DisplayFormat  := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
                  (ibProdutos.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat  := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
                  (ibProdutos.FieldByName('QTDEB') as TFloatField).DisplayFormat        := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
                  (ibProdutos.FieldByName('QTDEC') as TFloatField).DisplayFormat        := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO

                end else begin

                  (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat   := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
                  (ibProdutos.FieldByName('VALORVENDAB') as TFloatField).DisplayFormat  := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
                  (ibProdutos.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat  := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
                  (ibProdutos.FieldByName('QTDEB') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
                  (ibProdutos.FieldByName('QTDEC') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

                end;

     // ExecSELECT;

              end;

              ibeaAlterar.Caption := '&Alterar';
              ibeaNovo.Enabled := True;
              ibeaExcluir.Enabled := True;
            //  DesabilitaCampos(False);
              lbl_edtQtdeEstoque.Enabled := False;
              lbl_edtEstoqueM.Enabled := False;
              lbl_edtVlrEstoque.Enabled := False;

            end else begin

              ibeaAlterar.Caption := '&Atualizar';
              //DesabilitaCampos(True);
              lbl_edtQtdeEstoque.Enabled := True;
              lbl_edtEstoqueM.Enabled := True;
              lbl_edtVlrEstoque.Enabled := True;

            end; {if}
          end;//if alteracao de produtos
          end; {if}

      // end;{if}  060416
      

     end;{if}

    end;{if}

  end; {with}


end;

procedure TfrmProd_MPrima.ibeaExcluirClick(Sender: TObject);

var

ExclusaodeProduto : String;
intAtivo : Integer;
begin

  with dmModule do begin

    {Commit(ibUser);
    ibUser.Close;
    ibUser.SQL.Clear;
    ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + IntToStr(intCodUsuario) + '''');
    ibUser.Open;

    if ibUser.FieldByName('EXCLUSAODEPRODUTOS').AsString = 'Bloqueado' Then begin

      Application.MessageBox('Aten��o: Para Exclus�o do item contate o administrador?','Notifica��o: Exclus�o de Registro', MB_OK + mb_DefButton1+MB_ICONWARNING);


    end else if ibUser.FieldByName('EXCLUSAODEPRODUTOS').AsString = 'Liberado' Then begin }

      ConfirmaMSG := Application.MessageBox('Voc� deseja Excluir esse Registro?','Notifica��o: Exclus�o de Registro', MB_YESNO + mb_DefButton1+MB_ICONQUESTION);

      if ConfirmaMSG = 6 Then begin

          intAtivo := 2;

          ibProdutos.Close;
          ibProdutos.SQL.Clear;
          ibProdutos.SQL.Add('UPDATE CADPRODUTOS SET '
          + ' ATIVO = ''' + IntToStr(intAtivo) + ''' WHERE IDPROD=''' + InttoStr(IDProd) + '''');
          ibProdutos.ExecSQL;
        {ibProdutos.Close;
        ibProdutos.SQL.Clear;
        ibProdutos.SQL.Add('DELETE FROM CADPRODUTOS WHERE IDPROD=''' + InttoStr(IDProd) + '''');
        ibProdutos.Open;

        ibEntrProdEstoque.Close;
        ibEntrProdEstoque.SQL.Clear;
        ibEntrProdEstoque.SQL.Add('DELETE FROM TBLENTRADAESTOQUEPROD WHERE IDPROD=''' + InttoStr(IDProd) + '''');
        ibEntrProdEstoque.Open;}

        ExecSELECT;

      end;{IF}

   //end;//if 

  end;{WITH}

end;

procedure TfrmProd_MPrima.lbl_edtCustoExit(Sender: TObject);

begin

  with dmModule do begin
  
    lbl_edtCusto.color := clwindow;

    Commit(ibConfig);
    ibConfig.Close;
    ibConfig.SQL.Clear;
    ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
    ibConfig.Open;

    if ibConfig.FieldByName('TRESCASASDECIMAIS').AsString = 'Sim' Then begin

      if (lbl_edtCusto.Text <> '') Then begin

        lbl_edtCusto.Text := FormatFloat(Casasdecimais('Combustiveis'),StrToFloat(lbl_edtCusto.Text));

      end else begin

        lbl_edtCusto.Text := '0,00';

      end;//if

    end else begin

      if (lbl_edtCusto.Text <> '') Then begin

        lbl_edtCusto.Text := FormatFloat(Casasdecimais('Produtos'),StrToFloat(lbl_edtCusto.Text));

      end else begin

        lbl_edtCusto.Text := '0,00';

      end;//if

    end;//if

  end;//with

end;

procedure TfrmProd_MPrima.lbl_edtLucroExit(Sender: TObject);

   var
    Valor1,PorcentagemCusto,TotalCusto,CustoCalculado,TotalCustoCalculado :Real;
    Valor2 :Real;
    Valor3 :Real;
    Valor4 :Real;
begin

  with dmModule do begin

     lbl_edtLucro.color := clwindow;

    if lbl_edtCusto.Text <> '' Then begin

      if lbl_edtLucro.Text <> '' Then begin// se for em branco executa rotina abaixo.

        if (Pos(',',lbl_edtLucro.Text)>0) and (lbl_edtLucro.Text <> '') Then begin

          Valor1 := StrToFloat(StringReplace(lbl_edtLucro.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor2 := StrToFloat(StringReplace(lbl_edtCusto.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor3 := Valor2 * Valor1;

          Valor4 := Valor3 /100;

          lbl_edtVendaa.Text := FormatFloat(',0.00',(Valor4 + Valor2));

        end else begin

          Valor1 := StrToFloat(StringReplace(lbl_edtLucro.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor2 := StrToFloat(StringReplace(lbl_edtCusto.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor3 := Valor2 * Valor1;

          Valor4 := Valor3 /100;

          lbl_edtVendaa.Text := FormatFloat(',0.00',(Valor4 + Valor2));

        end;{if}

      end;{if}

      Commit(ibConfig);
      ibConfig.Close;
      ibConfig.SQL.Clear;
      ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
      ibConfig.Open;

      if ibConfig.FieldByName('PORCENTAGEMCUSTO').AsFloat > 0 Then begin

        if lbl_edtLucro.Text <> '' Then begin// se for em branco executa rotina abaixo.

          if (Pos(',',lbl_edtLucro.Text)>0) and (lbl_edtLucro.Text <> '') Then begin

            PorcentagemCusto := (ibConfig.FieldByName('PORCENTAGEMCUSTO').AsFloat);
            TotalCusto := StrToFloat(StringReplace(lbl_edtCusto.Text,ThousandSeparator,'',[rfReplaceAll]));
            CustoCalculado := TotalCusto * PorcentagemCusto;

            TotalCustoCalculado := CustoCalculado /100;

            lbl_edtCusto.Text := FormatFloat(',0.00',(TotalCustoCalculado + TotalCusto));

          end else begin

            PorcentagemCusto := (ibConfig.FieldByName('PORCENTAGEMCUSTO').AsFloat);
            TotalCusto := StrToFloat(StringReplace(lbl_edtCusto.Text,ThousandSeparator,'',[rfReplaceAll]));
            CustoCalculado := TotalCusto * PorcentagemCusto;

            TotalCustoCalculado := CustoCalculado /100;

            lbl_edtCusto.Text := FormatFloat(',0.00',(TotalCustoCalculado + TotalCusto));

          end;{if}

        end;{if}

      end;//if

    end;//label custo

  end;//with
  
end;

procedure TfrmProd_MPrima.lbl_edtVendaaExit(Sender: TObject);

//var
//ConfigSiS : TIniFile;
//FormatoMoeda : String;
//Casas : Longint;
begin

 { if (lbl_edtVendaa.Text <> '') or (lbl_edtVendaa.Text = '') Then begin

    with ConfigSiS do begin

    ConfigSiS := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Data\RunTime\sis.ini'); //Cria o vinculo com o Arquivo ini
    Casas := ReadInteger('Formatacoes','FormatoMoedaCasas',2);//atribui as chaves do arquivo ini na variavel

      if Casas = 2 Then begin
        FormatoMoeda := ',0.00';
      end else begin
        FormatoMoeda := ',0.000';
      end; }

       lbl_edtVendaa.color := clwindow;
       
       if (lbl_edtVendaa.Text <> '') Then begin

         lbl_edtVendaa.Text := StringReplace(lbl_edtVendaa.Text,ThousandSeparator,'',[rfReplaceAll]);
         lbl_edtVendaa.Text := FormatFloat(Casasdecimais('Produtos'),StrToFloat(lbl_edtVendaa.Text));

       end else begin

         lbl_edtVendaa.Text := '0,00';

       end;//if

 //   end;{with}
 // end;{if}

end;

procedure TfrmProd_MPrima.lbl_edtVendabExit(Sender: TObject);

//var
//ConfigSiS : TIniFile;
//FormatoMoeda : String;
//Casas : Longint;
begin

 { if lbl_edtVendab.Text <> '' Then begin

    with ConfigSiS do begin

    ConfigSiS := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Data\RunTime\sis.ini'); //Cria o vinculo com o Arquivo ini
    Casas := ReadInteger('Formatacoes','FormatoMoedaCasas',2);//atribui as chaves do arquivo ini na variavel

      if Casas = 2 Then begin
        FormatoMoeda := ',0.00';
      end else begin
        FormatoMoeda := ',0.000';
      end;}

  with dmModule do begin

    tedit(sender).color := clwindow;
   // lbl_edtVendab.color := clwindow;

    Commit(ibConfig);
    ibConfig.Close;
    ibConfig.SQL.Clear;
    ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
    ibConfig.Open;

    if ibConfig.FieldByName('TRESCASASDECIMAIS').AsString = 'Sim' Then begin

      if (lbl_edtVendab.Text <> '') Then begin

        lbl_edtVendab.Text := FormatFloat(Casasdecimais('Combustiveis'),StrToFloat(lbl_edtVendab.Text));

      end else begin

        lbl_edtVendab.Text := '0,00';

      end;//if

    end else begin

      if (lbl_edtVendab.Text <> '') Then begin

        lbl_edtVendab.Text := FormatFloat(Casasdecimais('Produtos'),StrToFloat(lbl_edtVendab.Text));

      end else begin

        lbl_edtVendab.Text := '0,00';

      end;//if

    end;//if

  end;//with


  //  end;{with}
//  end;{if}

end;

procedure TfrmProd_MPrima.lbl_edtVendacExit(Sender: TObject);
begin


  {if lbl_edtVendac.Text <> '' Then begin

    with ConfigSiS do begin

    ConfigSiS := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Data\RunTime\sis.ini'); //Cria o vinculo com o Arquivo ini
    Casas := ReadInteger('Formatacoes','FormatoMoedaCasas',2);//atribui as chaves do arquivo ini na variavel

      if Casas = 2 Then begin
        FormatoMoeda := ',0.00';
      end else begin
        FormatoMoeda := ',0.000';
      end; }

  with dmModule do begin

    lbl_edtVendac.color := clwindow;

    Commit(ibConfig);
    ibConfig.Close;
    ibConfig.SQL.Clear;
    ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
    ibConfig.Open;

    if ibConfig.FieldByName('TRESCASASDECIMAIS').AsString = 'Sim' Then begin

      if (lbl_edtVendac.Text <> '') Then begin

        lbl_edtVendac.Text := FormatFloat(Casasdecimais('Combustiveis'),StrToFloat(lbl_edtVendac.Text));

      end else begin

        lbl_edtVendac.Text := '0,00';

      end;//if

    end else begin

      if (lbl_edtVendac.Text <> '') Then begin

        lbl_edtVendac.Text := FormatFloat(Casasdecimais('Produtos'),StrToFloat(lbl_edtVendac.Text));

      end else begin

        lbl_edtVendac.Text := '0,00';

      end;//if

    end;//if

  end;//with


  //  end;{with}
  //end;{if}
  
end;

procedure TfrmProd_MPrima.lbl_edtLucroVendaExit(Sender: TObject);

   var
    Valor1 :Real;
    Valor2 :Real;
    Valor3 :Real;
    Valor4 :Real;
    Valor5 :Real;

begin

  lbl_edtLucroVenda.color := clwindow;
                            //       or (lbl_edtCusto.Text <> '') and
  if (lbl_edtCusto.Text > '0,00') and (lbl_edtVendaa.Text <> '') Then begin

    if lbl_edtCusto.Text <> '' Then begin// se for em branco executa rotina abaixo.

      if (Pos(',',lbl_edtCusto.Text)>0) and (lbl_edtCusto.Text <> '') Then begin

        Valor1 := StrToFloat(StringReplace(lbl_edtCusto.Text,ThousandSeparator,'',[rfReplaceAll]));
        Valor2 := StrToFloat(StringReplace(lbl_edtVendaa.Text,ThousandSeparator,'',[rfReplaceAll]));
        Valor3 := Valor2 - Valor1;
        Valor4 := Valor3 * 100;

        Valor5 := Valor4 / Valor1;

        lbl_edtLucroVenda.Text := FormatFloat(',0.00',(Valor5));

      end else begin

        Valor1 := StrToFloat(StringReplace(lbl_edtCusto.Text,ThousandSeparator,'',[rfReplaceAll]));
        Valor2 := StrToFloat(StringReplace(lbl_edtVendaa.Text,ThousandSeparator,'',[rfReplaceAll]));
        Valor3 := Valor2 - Valor1;
        Valor4 := Valor3 * 100;

        Valor5 := Valor4 / Valor1;

        lbl_edtLucroVenda.Text := FormatFloat(',0.00',(Valor5));

      end;{if}

    end;{if}

  end;//label custo


end;

procedure TfrmProd_MPrima.lbl_edtQtdeEstoqueExit(Sender: TObject);

var
Valor1 : Real;
Valor2 : Real;
//Valor3 : Real;
//Valor4 : Real;
//TotalEst : Real;
begin

  lbl_edtQtdeEstoque.color := clwindow;
  
  if (lbl_edtQtdeEstoque.Text <> '') Then begin// se for em branco executa rotina abaixo.

    if (Pos(',',lbl_edtQtdeEstoque.Text)>0) and (lbl_edtQtdeEstoque.Text <> '') Then begin
      
      Valor1 := StrToFloat(StringReplace(lbl_edtQtdeEstoque.Text,ThousandSeparator,'',[rfReplaceAll]));

      Valor2 := StrToFloat(StringReplace(lbl_edtVendaa.Text,ThousandSeparator,'',[rfReplaceAll]));
      lbl_edtVlrEstoque.Text := FormatFloat(',0.00',(Valor2 * Valor1));

    end else begin

      Valor1 := StrToFloat(StringReplace(lbl_edtQtdeEstoque.Text,ThousandSeparator,'',[rfReplaceAll]));

      Valor2 := StrToFloat(StringReplace(lbl_edtVendaa.Text,ThousandSeparator,'',[rfReplaceAll]));
      lbl_edtVlrEstoque.Text := FormatFloat(',0.00',(Valor2 * Valor1));


   {   if (lbl_edtQuantidade.Text <> '') and (lbl_edtQtdeProd.Text <> '') Then begin// se for diferente de branco executa rotina abaixo.

       Valor1 := StrToFloat(StringReplace(lbl_edtQuantidade.Text,ThousandSeparator,'',[rfReplaceAll]));
       Valor2 := StrToFloat(StringReplace(lbl_edtVlrunit.Text,ThousandSeparator,'',[rfReplaceAll]));
       Valor3 := StrToFloat(StringReplace(lbl_edtQtdeProd.Text,ThousandSeparator,'',[rfReplaceAll]));

       Valor4 := (Valor1 + Valor3);

       lbl_edtQtdeProd.Text := FormatFloat(',0.00',(Valor4));

       lbl_edtTotalEstoque.Text := FormatFloat(',0.00',(Valor4 * Valor2));  

      end;}

    end;{if}

  end;{if}

  if lbl_edtEstMin.Text <> '' Then begin

  lbl_edtEstoqueM.Text := lbl_edtEstMin.Text;

  end;


end;

procedure TfrmProd_MPrima.lbl_edtCodPExit(Sender: TObject);
begin

  with dmModule do begin

    lbl_edtCodP.color := clwindow;
    
    Commit(ibProdutos);
    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE CODBARRAS=''' + lbl_edtCodP.Text + '''');
    ibProdutos.Open;

   { Commit(ibProdutos);
    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS.*,'
  ///  + 'TBLENTRADAESTOQUEPROD.ESTOQUEMIN,TBLENTRADAESTOQUEPROD.QUANTIDADE As QtdeEstoque,'
    + 'LOCALESTOCAGEM.NOME As Estoque FROM CADPRODUTOS '
    + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE  WHERE CADPRODUTOS.CODBARRAS=''' + lbl_edtCodP.Text + '''');
   /// + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD WHERE CADPRODUTOS.CODBARRAS=''' + lbl_edtCodP.Text + '''');
    ibProdutos.Open; }

    (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutos.FieldByName('QTDE')as TFloatField).DisplayFormat :='0';

    Commit(ibConfig);
    ibConfig.Close;
    ibConfig.SQL.Clear;
    ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
    ibConfig.Open;

    if ibConfig.FieldByName('TRESCASASDECIMAIS').AsString = 'Sim' Then begin

      (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat   := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('VALORVENDAB') as TFloatField).DisplayFormat  := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat  := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('QTDEB') as TFloatField).DisplayFormat        := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('QTDEC') as TFloatField).DisplayFormat        := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO

    end else begin

      (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat   := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('VALORVENDAB') as TFloatField).DisplayFormat  := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat  := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('QTDEB') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('QTDEC') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

    end;


  end;{with}

end;

procedure TfrmProd_MPrima.lbl_edtCodPKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key =#13 Then begin

    lbl_edtNome.SetFocus;

  end;//if//

end;

procedure TfrmProd_MPrima.lbl_edtNumRefChange(Sender: TObject);
begin

  with dmModule do begin

    Commit(ibProdutos);
    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT CADPRODUTOS.*,'
  ///  + 'TBLENTRADAESTOQUEPROD.ESTOQUEMIN,TBLENTRADAESTOQUEPROD.QUANTIDADE As QtdeEstoque,'
    + 'LOCALESTOCAGEM.NOME As Estoque FROM CADPRODUTOS '
    + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE WHERE CADPRODUTOS.REF=''' + lbl_edtNumRef.Text + '''');
   /// + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD WHERE CADPRODUTOS.REF=''' + lbl_edtNumRef.Text + '''');
    ibProdutos.Open;

    (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutos.FieldByName('QTDE')as TFloatField).DisplayFormat :='0';

    Commit(ibConfig);
    ibConfig.Close;
    ibConfig.SQL.Clear;
    ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
    ibConfig.Open;

    if ibConfig.FieldByName('TRESCASASDECIMAIS').AsString = 'Sim' Then begin

      (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat   := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('VALORVENDAB') as TFloatField).DisplayFormat  := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat  := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('QTDEB') as TFloatField).DisplayFormat        := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('QTDEC') as TFloatField).DisplayFormat        := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO

    end else begin

      (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat   := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('VALORVENDAB') as TFloatField).DisplayFormat  := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat  := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('QTDEB') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('QTDEC') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

    end;

  end;{with}

end;

procedure TfrmProd_MPrima.lbl_edtNumRefKeyPress(Sender: TObject;
  var Key: Char);
begin

 if key = #13 Then begin

    lbl_edtNome.SetFocus;

  end;
  
end;

procedure TfrmProd_MPrima.lbl_edtNomeChange(Sender: TObject);
begin

  with dmModule do begin

  {  ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE NOME LIKE '+''''+'%'+lbl_edtNome.text+'%'+'''');
    ibProdutos.Open; }


    Commit(ibProdutos);
    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT CADPRODUTOS.*,'
   /// + 'TBLENTRADAESTOQUEPROD.ESTOQUEMIN,TBLENTRADAESTOQUEPROD.QUANTIDADE As QtdeEstoque,'
    + 'LOCALESTOCAGEM.NOME As Estoque FROM CADPRODUTOS '
    + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE WHERE CADPRODUTOS.NOME LIKE '+''''+'%'+lbl_edtNome.text+'%'+'''');
 ///   + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD WHERE CADPRODUTOS.NOME LIKE '+''''+'%'+lbl_edtNome.text+'%'+'''');
    ibProdutos.Open;


    (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutos.FieldByName('QTDE')as TFloatField).DisplayFormat :='0';

    Commit(ibConfig);
    ibConfig.Close;
    ibConfig.SQL.Clear;
    ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
    ibConfig.Open;

    if ibConfig.FieldByName('TRESCASASDECIMAIS').AsString = 'Sim' Then begin

      (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat   := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('VALORVENDAB') as TFloatField).DisplayFormat  := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat  := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('QTDEB') as TFloatField).DisplayFormat        := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('QTDEC') as TFloatField).DisplayFormat        := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO

    end else begin

      (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat   := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('VALORVENDAB') as TFloatField).DisplayFormat  := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat  := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('QTDEB') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('QTDEC') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

    end;
    
  end;{with}
  
end;

procedure TfrmProd_MPrima.sb_ord_nomeClick(Sender: TObject);
begin

  with dmModule do begin

  cboCST.Clear;
  cboCSOSN.Clear;
  cboST.Clear;
  cboCFOP.Clear;

    ExecSELECT;
    LimpaCampo;
    rbMineral.Checked := False;
    rbSintetico.Checked := False;
    ibProdEquivalente.Close;
    lbl_edtNomeProdEquivalente.Clear;
    lbl_edtIDProdEquivalente.Clear;

  {  ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS ORDER BY NOME');
    ibProdutos.Open; }


  {  Commit(ibProdutos);
    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT CADPRODUTOS.CODBARRAS,CADPRODUTOS.NOME,CADPRODUTOS.MLS,'
    + 'CADPRODUTOS.VALORCUSTO, CADPRODUTOS.VALORVENDAA,CADPRODUTOS.IDPROD,CADPRODUTOS.TIPOPROD,'
    + 'CADPRODUTOS.FORNECEDOR,CADPRODUTOS.VALORVENDAB,CADPRODUTOS.VALORVENDAC,'
    + 'CADPRODUTOS.IDGRUPO,CADPRODUTOS.IDSUBGRUPO,CADPRODUTOS.IDLOCAL,CADPRODUTOS.LUCRO,'
    + 'CADPRODUTOS.COMISSAO,CADPRODUTOS.ECF,CADPRODUTOS.LOCALIZACAO,CADPRODUTOS.LUCROVENDA,'
    + 'CADPRODUTOS.QTDEEMBALAGEM,CADPRODUTOS.UNIDADE,CADPRODUTOS.UNCOMPRA,'
    + 'CADPRODUTOS.QUANTIDADE,CADPRODUTOS.ESTGERAL,CADPRODUTOS.MLS,CADPRODUTOS.REF,'
    + 'CADPRODUTOS.QTDEPROM,CADPRODUTOS.VLRPROM,CADPRODUTOS.INDICACAO,CADPRODUTOS.FABRICANTE,'
    + 'TBLENTRADAESTOQUEPROD.ESTOQUEMIN,TBLENTRADAESTOQUEPROD.QUANTIDADE As QtdeEstoque,'
    + 'LOCALESTOCAGEM.NOME As Estoque FROM CADPRODUTOS '
    + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE '
    + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD ORDER BY CADPRODUTOS.NOME');
    ibProdutos.Open;


    (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat         := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat        := CasasDecimais('Produtos');} //CRIA UMA MASCARA PARA O CAMPO


  end;{with}

  lbl_edtNome.Text := '';
  lbl_edtCodP.Text := '';
  lbl_edtNumRef.Text := '';

end;

procedure TfrmProd_MPrima.ibeaSairClick(Sender: TObject);
begin
close;
end;

procedure TfrmProd_MPrima.lblProcurarImagemClick(Sender: TObject);
begin
popmnuImagem.Popup(Self.Left + 154, Self.Top + 385);
end;

procedure TfrmProd_MPrima.lblAmpliarImagemClick(Sender: TObject);

var
  fVisualizaImagem: TForm;
  fImagemZoom : TImage;
  ComImagem   : Boolean;

  OleGraphic: TOleGraphic;
  fs: TFileStream;

begin

  if lbl_edtCodigo.Text <> '' Then begin

    ComImagem        := True; //SETA COMO TRUE PARA EXIBIR O FORM
    fVisualizaImagem := TForm.Create(Self);
    with fVisualizaImagem do begin
      Position    := poScreenCenter;
      BorderStyle := bsSizeToolWin;
      BorderIcons := [biSystemMenu];
      Color       := clWhite;
      Width       := 300;
      Height      := 300;
      Caption     := 'Imagem: ' + lbl_edtNomeProduto.Text;
      fImagemZoom := TImage.Create(fVisualizaImagem);
      with fImagemZoom do begin
        Parent    := fVisualizaImagem;
        Align     := alClient;
        AutoSize  := False;
        Center    := True;

        if Not FileExists(ExtractFilePath(Application.ExeName) + 'Data\RunTime\ProdImagens\' + lbl_edtNomeProduto.Text + '.jpg') Then begin

          Application.MessageBox('Este produto n�o possui nenhuma imagem','Notifica��o: Produto sem Imagem', MB_OK + MB_ICONINFORMATION);
          ComImagem := False; //CASO N�O TENHA A IMAGEM SETA A VARIAVEL COMO FALSE PARA N�O EXIBIR O FORM

        end else begin

          try

            OleGraphic := TOleGraphic.Create;
            fs         := TFileStream.Create(ExtractFilePath(Application.ExeName) //EXIBE A IMAGEM DO PRODUTO
                                            + 'Data\RunTime\ProdImagens\' + lbl_edtNomeProduto.Text + '.jpg', fmOpenRead or fmSharedenyNone);
            OleGraphic.LoadFromStream(fs);
            Picture.Assign(OleGraphic);

          finally
            fs.Free;
            OleGraphic.Free
          end;

        end;

        Stretch   := True;
      end;

      //CASO TENHA IMAGEM EXIBE O FORM
      if ComImagem Then begin
        ShowModal;
      end;

    end;

  end;


end;

procedure TfrmProd_MPrima.dbgProdutosCellClick(Column: TColumn);
begin

  with dmModule do begin

  {  Commit(ibProdutos);
    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS ORDER BY NOME');
    ibProdutos.Open;}

    Commit(ibEntrProdEstoque);
    ibEntrProdEstoque.Close;
    ibEntrProdEstoque.SQL.Clear;
    ibEntrProdEstoque.SQL.Add('SELECT * FROM TBLENTRADAESTOQUEPROD WHERE IDPROD=''' + IntToStr(IDProd) + '''');
    ibEntrProdEstoque.Open;

  {  Commit(ibProdutos);
    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT CADPRODUTOS.CODBARRAS,CADPRODUTOS.NOME,CADPRODUTOS.MLS,'
    + 'CADPRODUTOS.VALORCUSTO, CADPRODUTOS.VALORVENDAA,CADPRODUTOS.IDPROD,CADPRODUTOS.TIPOPROD,'
    + 'CADPRODUTOS.FORNECEDOR,CADPRODUTOS.VALORVENDAB,CADPRODUTOS.VALORVENDAC,'
    + 'CADPRODUTOS.IDLOCAL,CADPRODUTOS.LUCRO,CADPRODUTOS.IDUNIDVENDA,CADPRODUTOS.QTDE,'
    + 'CADPRODUTOS.COMISSAO,CADPRODUTOS.ECF,CADPRODUTOS.LOCALIZACAO,CADPRODUTOS.LUCROVENDA,'
    + 'CADPRODUTOS.QTDEEMBALAGEM,CADPRODUTOS.UNIDADE,CADPRODUTOS.UNCOMPRA,'
    + 'CADPRODUTOS.QUANTIDADE,CADPRODUTOS.ESTGERAL,CADPRODUTOS.MLS,CADPRODUTOS.REF,'
    + 'CADPRODUTOS.QTDEPROM,CADPRODUTOS.VLRPROM,'
    + 'CADPRODUTOS.VALORMETRO,CADPRODUTOS.MTS,CADPRODUTOS.IDGRUPO,CADPRODUTOS.IDSUBGRUPO,'
    + 'TBLENTRADAESTOQUEPROD.ESTOQUEMIN,TBLENTRADAESTOQUEPROD.QUANTIDADE As QtdeEstoque,'
    + 'LOCALESTOCAGEM.NOME As Estoque FROM CADPRODUTOS '
    + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE '
    + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD ORDER BY CADPRODUTOS.NOME');
    ibProdutos.Open; }

    (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutos.FieldByName('VLRPROM') as TFloatField).DisplayFormat            := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutos.FieldByName('QTDE') as TFloatField).DisplayFormat               := '0'; //CRIA UMA MASCARA PARA O CAMPO

    Commit(ibConfig);
    ibConfig.Close;
    ibConfig.SQL.Clear;
    ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
    ibConfig.Open;

    if ibConfig.FieldByName('TRESCASASDECIMAIS').AsString = 'Sim' Then begin

      (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat   := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('VALORVENDAB') as TFloatField).DisplayFormat  := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat  := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('QTDEB') as TFloatField).DisplayFormat        := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('QTDEC') as TFloatField).DisplayFormat        := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO

    end else begin

      (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat   := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('VALORVENDAB') as TFloatField).DisplayFormat  := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat  := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('QTDEB') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('QTDEC') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

    end;
    

      ExibeDados;

  end;{with}
  
end;

procedure TfrmProd_MPrima.dbgProdutosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

with dmModule do begin
  //SEGUNDA FORMA DE FAZER UMA DBGRID FICAR COLOCRIDA


  if ibProdutos.FieldByName('ATIVO').AsInteger = 1 Then begin
  dbgProdutos.Canvas.Brush.Color:= clBlue; // coloque aqui a cor desejada
  dbgProdutos.Canvas.Font.Color:= clWhite;
  dbgProdutos.DefaultDrawDataCell(Rect, dbgProdutos.columns[datacol].field, State);
  end else begin
  dbgProdutos.Canvas.Brush.Color:= clred; // coloque aqui a cor desejada
  dbgProdutos.Canvas.Font.Color:= clWhite;
  dbgProdutos.DefaultDrawDataCell(Rect, dbgProdutos.columns[datacol].field, State);
  end;




 {   If (dbgProdutos.DataSource.DataSet.RecNo div 2) =  (dbgProdutos.DataSource.DataSet.RecNo/2) Then begin

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

      dbgProdutos.Canvas.TextOut(Rect.Left+2,Rect.Top,Column.Field.AsString);  }

  /// end;{if}

end;


end;

procedure TfrmProd_MPrima.ibeaSairMPClick(Sender: TObject);
begin
Close;
end;

procedure TfrmProd_MPrima.lbl_edtCodBarraChange(Sender: TObject);
begin
  GeraCodigoBarra.Text        := lbl_edtCodBarra.Text;
  GeraCodigoBarra.Top         := 0;
  GeraCodigoBarra.Left        := 7;
  imgCodigoBarras.Picture     := nil;
  GeraCodigoBarra.DrawBarcode(imgCodigoBarras.Canvas);
end;

procedure TfrmProd_MPrima.lbl_edtCodBarraKeyPress(Sender: TObject;
  var Key: Char);
begin
//         if not ( Key In ['0'..'9','.'] ) then
//           Abort;

  if key=#13 Then  perform(wm_nextdlgctl,0,0);

    //lbl_edtNomeProduto.SetFocus;

//  end;

end;

procedure TfrmProd_MPrima.pcProdutosChange(Sender: TObject);
begin

  with dmModule do begin

    if pcProdutos.ActivePageIndex = 1 Then begin

        ExecSELECTProdutoForn;
        ibTempProd.Close;
        ibProdutoFornecedor.Close;

    end;//if

  end;//with

end;

procedure TfrmProd_MPrima.lbl_edtRefKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then perform(wm_nextdlgctl,0,0);

   // lbl_edtCodBarra.SetFocus;

 // end;

end;

procedure TfrmProd_MPrima.lbl_edtNomeProdutoKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin//perform(wm_nextdlgctl,0,0);

    lbl_edtCusto.SetFocus;

  end;

end;

procedure TfrmProd_MPrima.cboModalidadeKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtQtde.SetFocus;

  end;

end;

procedure TfrmProd_MPrima.lbl_edtIndicacaoKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtNumLote.SetFocus;

  end;

end;

procedure TfrmProd_MPrima.lbl_edtFabricanteKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    cboFornecedores.SetFocus;

  end;

end;

procedure TfrmProd_MPrima.cboFornecedoresKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtCusto.SetFocus;

  end;

end;

procedure TfrmProd_MPrima.lbl_edtCustoKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtLucro.SetFocus;

  end;

end;

procedure TfrmProd_MPrima.lbl_edtLucroKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtVendaa.SetFocus;

  end;

end;

procedure TfrmProd_MPrima.lbl_edtVendaaKeyPress(Sender: TObject;
  var Key: Char);

  var

  ConfirmaAlteracao : Integer;

begin

  with dmModule do begin

    if key=#13 Then begin

      if (lbl_edtResultado.Text > '0,00')and(lbl_edtVendaFormula.Text > '0,00') Then begin

        ConfirmaAlteracao := Application.MessageBox('Este procedimento altera o registro e acerta o estoque,clique em sim para continuar e nao pra cancelar?','Notifica��o: Exclus�o de Registro', MB_YESNO + mb_Defbutton1+MB_ICONQUESTION);

        if ConfirmaAlteracao = 6 Then begin


          ibeaAlterarClick(Sender);


        end;//if

      end;//if

         if (lbl_edtResultado.Text = '0,00')and(lbl_edtVendaFormula.Text = '0,00') Then begin

          lbl_edtVendab.SetFocus;

         end;
               
    end;



  end;//with

end;

procedure TfrmProd_MPrima.lbl_edtVendabKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtQtdeB.SetFocus;

  end;

end;

procedure TfrmProd_MPrima.lbl_edtVendacKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtQtdeC.SetFocus;

  end;

end;

procedure TfrmProd_MPrima.lbl_edtMtsKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtQtdeEstoque.SetFocus;

  end;

end;

procedure TfrmProd_MPrima.lbl_edtQtdeEstoqueKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtEstoqueM.SetFocus;

  end;

end;

procedure TfrmProd_MPrima.lbl_edtEstoqueMKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtVlrEstoque.SetFocus;

  end;

end;

procedure TfrmProd_MPrima.lbl_edtRefExit(Sender: TObject);

var

Ref : String;
ConfirmaMSG : Integer;

begin

  with dmModule do begin

    tedit(sender).color := clwindow;

    if lbl_edtRef.Text <> '' Then begin

      Commit(ibProdutos);
      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE REF=''' + lbl_edtRef.Text + '''');
      ibProdutos.Open;
      (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

    Commit(ibConfig);
    ibConfig.Close;
    ibConfig.SQL.Clear;
    ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
    ibConfig.Open;

    if ibConfig.FieldByName('TRESCASASDECIMAIS').AsString = 'Sim' Then begin

      (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat   := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('VALORVENDAB') as TFloatField).DisplayFormat  := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat  := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('QTDEB') as TFloatField).DisplayFormat        := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('QTDEC') as TFloatField).DisplayFormat        := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO

    end else begin

      (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat   := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('VALORVENDAB') as TFloatField).DisplayFormat  := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat  := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('QTDEB') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('QTDEC') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

    end;


      Ref := ibProdutos.FieldByName('REF').AsString;


      if lbl_edtRef.Text = Ref Then begin


        ConfirmaMSG := Application.MessageBox('Aten��o esta refer�ncia j� existe?'
                  + #13 + 'Clique em Sim para cancelar e N�o para continuar.','Notifica��o: Cancelar Opera��o', MB_YESNO + MB_ICONQUESTION);

       if ConfirmaMSG = 6 Then begin

         ibeaNovo.Caption := '&Novo';
         ibeaAlterar.Caption := '&Alterar';
         lbl_edtRef.Clear;
         ExecSELECT;
         LimpaCampo;
         DesabilitaCampos(False);

       end else begin

         lbl_edtRef.SetFocus;

       end;//if confirma msg

      end;//if

    end;//if label

      if lbl_edtRef.Text <> Ref Then begin

      ExecSELECT;

      end;

  end;//with

end;

procedure TfrmProd_MPrima.lbl_edtQtdeKeyPress(Sender: TObject;
  var Key: Char);
begin

if Key=#13 Then begin

lbl_edtVlrPacoteFardo.SetFocus;

end;

end;

procedure TfrmProd_MPrima.lbl_edtCodBarraExit(Sender: TObject);

var

CodBarras : String;
ConfirmaMSG : Integer;

begin

  with dmModule do begin

    tedit(sender).color := clwindow;

    if lbl_edtCodBarra.Text <> '' Then begin

      Commit(ibProdutos);
      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE CODBARRAS=''' + lbl_edtCodBarra.Text + '''');
      ibProdutos.Open;

      (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

    Commit(ibConfig);
    ibConfig.Close;
    ibConfig.SQL.Clear;
    ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
    ibConfig.Open;

    if ibConfig.FieldByName('TRESCASASDECIMAIS').AsString = 'Sim' Then begin

      (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat   := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('VALORVENDAB') as TFloatField).DisplayFormat  := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat  := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('QTDEB') as TFloatField).DisplayFormat        := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('QTDEC') as TFloatField).DisplayFormat        := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO

    end else begin

      (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat   := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('VALORVENDAB') as TFloatField).DisplayFormat  := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat  := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('QTDEB') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('QTDEC') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

    end;
      
      CodBarras := ibProdutos.FieldByName('CODBARRAS').AsString;

      if (lbl_edtCodBarra.Text = CodBarras)and(ibeaNovo.Caption='&Gravar') Then begin


        ConfirmaMSG := Application.MessageBox('Aten��o o c�digo de barras j� existe?'
                  + #13 + 'Clique em Sim para cancelar e N�o para continuar.','Notifica��o: Cancelar Opera��o', MB_YESNO + MB_ICONQUESTION);

       if ConfirmaMSG = 6 Then begin

         ibeaNovo.Caption := '&Novo';
         ibeaAlterar.Caption := '&Alterar';
         lbl_edtCodBarra.Clear;
         ExecSELECT;
         LimpaCampo;
        // DesabilitaCampos(False);

       end else begin

         lbl_edtCodBarra.SetFocus;

       end;//if confirma msg

      end;//if

    end;// if label <> ''

      if lbl_edtCodBarra.Text <> CodBarras Then begin

      ExecSELECT;

      end;

  end;//with

end;

procedure TfrmProd_MPrima.lbl_edtNomeProdutoExit(Sender: TObject);

var

NomeProd : String;
ConfirmaMSG : Integer;

begin

  with dmModule do begin

    tedit(sender).color := clwindow;
    //lbl_edtNomeProduto.color := clwindow;
    
    if lbl_edtNomeProduto.Text <> '' Then begin

      Commit(ibProdutos);
      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE NOME=''' + lbl_edtNomeProduto.Text + '''');
      ibProdutos.Open;

      (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

    Commit(ibConfig);
    ibConfig.Close;
    ibConfig.SQL.Clear;
    ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
    ibConfig.Open;

    if ibConfig.FieldByName('TRESCASASDECIMAIS').AsString = 'Sim' Then begin

      (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat   := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('VALORVENDAB') as TFloatField).DisplayFormat  := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat  := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('QTDEB') as TFloatField).DisplayFormat        := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('QTDEC') as TFloatField).DisplayFormat        := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO

    end else begin

      (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat   := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('VALORVENDAB') as TFloatField).DisplayFormat  := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat  := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('QTDEB') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('QTDEC') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

    end;

      NomeProd := ibProdutos.FieldByName('NOME').AsString;

      if (lbl_edtNomeProduto.Text = NomeProd)and(ibeaNovo.Caption='&Gravar') Then begin

     //Application.MessageBox('Aten��o o nome j� existe ','Aten��o:Nome Existente no registro',MB_OK+MB_ICONWARNING);

        ConfirmaMSG := Application.MessageBox('Aten��o o nome j� existe?'
                  + #13 + 'Clique em Sim para cancelar e N�o para continuar.','Notifica��o: Cancelar Opera��o', MB_YESNO + MB_ICONQUESTION);

       if ConfirmaMSG = 6 Then begin

         ibeaNovo.Caption := '&Novo';
         ibeaAlterar.Caption := '&Alterar';
         lbl_edtNomeProduto.Clear;
         ExecSELECT;
         LimpaCampo;
       //  DesabilitaCampos(False);

       end else begin

         lbl_edtNomeProduto.SetFocus;

       end;//if confirma msg

      end;//if

    end;//if label <> ''

      if lbl_edtNomeProduto.Text <> NomeProd Then begin

      ExecSELECT;

      end;

  end;//with

end;

procedure TfrmProd_MPrima.lbl_edtCustoChange(Sender: TObject);
begin
  //       if not ( Key In ['0'..'9','.'] ) then
 //          Abort;
end;

procedure TfrmProd_MPrima.lbl_edtVendaaChange(Sender: TObject);
begin
  //       if not ( Key In ['0'..'9','.'] ) then
  //         Abort;
end;

procedure TfrmProd_MPrima.lbl_edtVendabChange(Sender: TObject);
begin
  //       if not ( Key In ['0'..'9','.'] ) then
  //         Abort;
end;

procedure TfrmProd_MPrima.lbl_edtVendacChange(Sender: TObject);
begin
    //     if not ( Key In ['0'..'9','.'] ) then
   //       Abort;
end;

procedure TfrmProd_MPrima.lbl_edtQtdeEstoqueChange(Sender: TObject);
begin
     //    if not ( Key In ['0'..'9','.'] ) then
    //       Abort;
end;

procedure TfrmProd_MPrima.lbl_edtEstoqueMChange(Sender: TObject);
begin
    //    if not ( Key In ['0'..'9','.'] ) then
   //        Abort;
end;

procedure TfrmProd_MPrima.lbl_edtVlrEstoqueChange(Sender: TObject);
begin
     //    if not ( Key In ['0'..'9','.'] ) then
     //      Abort;
end;

procedure TfrmProd_MPrima.btnImprimirCodigoClick(Sender: TObject);
{var

CodBarras, NomeProd, ValorProd : String; }

begin

//popupEtiquetas.PopUp(Self.Left + 37, Self.Top + 273);
{  with dmModule do begin

  if frmProd_MPrima.lbl_edtNomeProduto.Text = '' Then begin

    Application.MessageBox('Por Favor selecione um Produto','Notifica��o:Produto n�o Selecionado', + MB_OK+MB_ICONQUESTION);

  end else begin


    Commit(ibTempProdNome);
    ibTempProdNome.Close;
    ibTempProdNome.SQL.Clear;
    ibTempProdNome.SQL.Add('SELECT * FROM CADPRODUTOS WHERE IDPROD=''' + lbl_edtCodigo.Text + '''');
    ibTempProdNome.Open;

  //  (ibTempProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat         := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibTempProdNome.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
 //   (ibTempProdutos.FieldByName('VLRPROM') as TFloatField).DisplayFormat            := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO


    Application.CreateForm(TfrmRelCodBarrasAD,frmRelCodBarrasAD);

    TRY

      with frmRelCodBarrasAD do begin

        frmRelCodBarrasAD.qrpCodBarrasAD.DataSet := ibTempProdNome;

        if ibTempProdNome.FieldByName('CODBARRASAD').AsString <> '' Then begin



        //  frmRelCodBarrasAD.GeraCodigoBarraAD.Text        := ibTempProdutos.FieldByName('CODBARRASAD').AsString;
          CodBarras := ibTempProdNome.FieldByName('CODBARRASAD').AsString;
          NomeProd  := (ibTempProdNome.FieldByName('NOME').AsString);
          ValorProd := FormatFloat(CasasDecimais('Produtos'),ibTempProdNome.FieldByName('VALORVENDAA').AsFloat);
        //  frmRelCodBarrasAD.GeraCodigoBarraAD.Top         := 0;
        //  frmRelCodBarrasAD.GeraCodigoBarraAD.Left        := 7;

       //  frmRelCodBarrasAD.qriCod12.Picture     := nil;

         CriaCodigo(CodBarras,qriCod1.Canvas);
         qrl_Codigo1.Caption  := CodBarras;
         qrl_Cod1.Caption      := CodBarras;
         qrl_Nome1.Caption     := NomeProd;
         qrl_NomeProd1.Caption := NomeProd;
         qrl_Vlr1.Caption      := ValorProd;
        ////////////////////////////////////////////
         CriaCodigo(CodBarras,qriCod2.Canvas);
         qrl_Codigo2.Caption  := CodBarras;
         qrl_Cod2.Caption      := CodBarras;
         qrl_Nome2.Caption     := NomeProd;
         qrl_NomeProd2.Caption := NomeProd;
         qrl_Vlr2.Caption      := ValorProd;
        ////////////////////////////////////////////
         CriaCodigo(CodBarras,qriCod3.Canvas);
         qrl_Codigo3.Caption  := CodBarras;
         qrl_Cod3.Caption      := CodBarras;
         qrl_Nome3.Caption     := NomeProd;
         qrl_NomeProd3.Caption := NomeProd;
         qrl_Vlr3.Caption      := ValorProd;
        ////////////////////////////////////////////
         CriaCodigo(CodBarras,qriCod4.Canvas);
         qrl_Codigo4.Caption  := CodBarras;
         qrl_Cod4.Caption      := CodBarras;
         qrl_Nome4.Caption     := NomeProd;
         qrl_NomeProd4.Caption := NomeProd;
         qrl_Vlr4.Caption      := ValorProd;
        ////////////////////////////////////////////
         CriaCodigo(CodBarras,qriCod5.Canvas);
         qrl_Codigo5.Caption  := CodBarras;
         qrl_Cod5.Caption      := CodBarras;
         qrl_Nome5.Caption     := NomeProd;
         qrl_NomeProd5.Caption := NomeProd;
         qrl_Vlr5.Caption      := ValorProd;
         ///////////////////////////////////////////
         CriaCodigo(CodBarras,qriCod6.Canvas);
         qrl_Codigo6.Caption  := CodBarras;
         qrl_Cod6.Caption      := CodBarras;
         qrl_Nome6.Caption     := NomeProd;
         qrl_NomeProd6.Caption := NomeProd;
         qrl_Vlr6.Caption      := ValorProd;
        ////////////////////////////////////////////
         CriaCodigo(CodBarras,qriCod7.Canvas);
         qrl_Codigo7.Caption  := CodBarras;
         qrl_Cod7.Caption      := CodBarras;
         qrl_Nome7.Caption     := NomeProd;
         qrl_NomeProd7.Caption := NomeProd;
         qrl_Vlr7.Caption      := ValorProd;
        ////////////////////////////////////////////
         CriaCodigo(CodBarras,qriCod8.Canvas);
         qrl_Codigo8.Caption  := CodBarras;
         qrl_Cod8.Caption      := CodBarras;
         qrl_Nome8.Caption     := NomeProd;
         qrl_NomeProd8.Caption := NomeProd;
         qrl_Vlr8.Caption      := ValorProd;
        ////////////////////////////////////////////
         CriaCodigo(CodBarras,qriCod9.Canvas);
         qrl_Codigo9.Caption  := CodBarras;
         qrl_Cod9.Caption      := CodBarras;
         qrl_Nome9.Caption     := NomeProd;
         qrl_NomeProd9.Caption := NomeProd;
         qrl_Vlr9.Caption      := ValorProd;
        ////////////////////////////////////////////
         CriaCodigo(CodBarras,qriCod10.Canvas);
         qrl_Codigo10.Caption  := CodBarras;
         qrl_Cod10.Caption      := CodBarras;
         qrl_Nome10.Caption     := NomeProd;
         qrl_NomeProd10.Caption := NomeProd;
         qrl_Vlr10.Caption      := ValorProd;
        ////////////////////////////////////////////
         CriaCodigo(CodBarras,qriCod11.Canvas);
         qrl_Codigo11.Caption  := CodBarras;
         qrl_Cod11.Caption      := CodBarras;
         qrl_Nome11.Caption     := NomeProd;
         qrl_NomeProd11.Caption := NomeProd;
         qrl_Vlr11.Caption      := ValorProd;
        ////////////////////////////////////////////
         CriaCodigo(CodBarras,qriCod12.Canvas);
         qrl_Codigo12.Caption  := CodBarras;
         qrl_Cod12.Caption      := CodBarras;
         qrl_Nome12.Caption     := NomeProd;
         qrl_NomeProd12.Caption := NomeProd;
         qrl_Vlr12.Caption      := ValorProd;
        ////////////////////////////////////////////
         CriaCodigo(CodBarras,qriCod13.Canvas);
         qrl_Codigo13.Caption  := CodBarras;
         qrl_Cod13.Caption      := CodBarras;
         qrl_Nome13.Caption     := NomeProd;
         qrl_NomeProd13.Caption := NomeProd;
         qrl_Vlr13.Caption      := ValorProd;
        ////////////////////////////////////////////
         CriaCodigo(CodBarras,qriCod14.Canvas);
         qrl_Codigo14.Caption  := CodBarras;
         qrl_Cod14.Caption      := CodBarras;
         qrl_Nome14.Caption     := NomeProd;
         qrl_NomeProd14.Caption := NomeProd;
         qrl_Vlr14.Caption      := ValorProd;
        ////////////////////////////////////////////
         CriaCodigo(CodBarras,qriCod15.Canvas);
         qrl_Codigo15.Caption  := CodBarras;
         qrl_Cod15.Caption      := CodBarras;
         qrl_Nome15.Caption     := NomeProd;
         qrl_NomeProd15.Caption := NomeProd;
         qrl_Vlr15.Caption      := ValorProd;
         ///////////////////////////////////////////
         CriaCodigo(CodBarras,qriCod16.Canvas);
         qrl_Codigo16.Caption  := CodBarras;
         qrl_Cod16.Caption      := CodBarras;
         qrl_Nome16.Caption     := NomeProd;
         qrl_NomeProd16.Caption := NomeProd;
         qrl_Vlr16.Caption      := ValorProd;
        ////////////////////////////////////////////
         CriaCodigo(CodBarras,qriCod17.Canvas);
         qrl_Codigo17.Caption  := CodBarras;
         qrl_Cod17.Caption      := CodBarras;
         qrl_Nome17.Caption     := NomeProd;
         qrl_NomeProd17.Caption := NomeProd;
         qrl_Vlr17.Caption      := ValorProd;
        ////////////////////////////////////////////
         CriaCodigo(CodBarras,qriCod18.Canvas);
         qrl_Codigo18.Caption  := CodBarras;
         qrl_Cod18.Caption      := CodBarras;
         qrl_Nome18.Caption     := NomeProd;
         qrl_NomeProd18.Caption := NomeProd;
         qrl_Vlr18.Caption      := ValorProd;
        ////////////////////////////////////////////
         CriaCodigo(CodBarras,qriCod19.Canvas);
         qrl_Codigo19.Caption  := CodBarras;
         qrl_Cod19.Caption      := CodBarras;
         qrl_Nome19.Caption     := NomeProd;
         qrl_NomeProd19.Caption := NomeProd;
         qrl_Vlr19.Caption      := ValorProd;
        ////////////////////////////////////////////
         CriaCodigo(CodBarras,qriCod20.Canvas);
         qrl_Codigo20.Caption  := CodBarras;
         qrl_Cod20.Caption      := CodBarras;
         qrl_Nome20.Caption     := NomeProd;
         qrl_NomeProd20.Caption := NomeProd;
         qrl_Vlr20.Caption      := ValorProd;
         ///////////////////////////////////////////
         CriaCodigo(CodBarras,qriCod21.Canvas);
         qrl_Codigo21.Caption  := CodBarras;
         qrl_Cod21.Caption      := CodBarras;
         qrl_Nome21.Caption     := NomeProd;
         qrl_NomeProd21.Caption := NomeProd;
         qrl_Vlr21.Caption      := ValorProd;
        ////////////////////////////////////////////
         CriaCodigo(CodBarras,qriCod22.Canvas);
         qrl_Codigo22.Caption  := CodBarras;
         qrl_Cod22.Caption      := CodBarras;
         qrl_Nome22.Caption     := NomeProd;
         qrl_NomeProd22.Caption := NomeProd;
         qrl_Vlr22.Caption      := ValorProd;
        ////////////////////////////////////////////
         CriaCodigo(CodBarras,qriCod23.Canvas);
         qrl_Codigo23.Caption  := CodBarras;
         qrl_Cod23.Caption      := CodBarras;
         qrl_Nome23.Caption     := NomeProd;
         qrl_NomeProd23.Caption := NomeProd;
         qrl_Vlr23.Caption      := ValorProd;
        ////////////////////////////////////////////
         CriaCodigo(CodBarras,qriCod24.Canvas);
         qrl_Codigo24.Caption  := CodBarras;
         qrl_Cod24.Caption      := CodBarras;
         qrl_Nome24.Caption     := NomeProd;
         qrl_NomeProd24.Caption := NomeProd;
         qrl_Vlr24.Caption      := ValorProd;
        ////////////////////////////////////////////
         CriaCodigo(CodBarras,qriCod25.Canvas);
         qrl_Codigo25.Caption  := CodBarras;
         qrl_Cod25.Caption      := CodBarras;
         qrl_Nome25.Caption     := NomeProd;
         qrl_NomeProd25.Caption := NomeProd;
         qrl_Vlr25.Caption      := ValorProd;
         ///////////////////////////////////////////

         ibDadosEmpresa.Close;
         ibDadosEmpresa.SQL.Clear;
         ibDadosEmpresa.SQL.Add('SELECT * FROM TBLDADOSEMPRESA');
         ibDadosEmpresa.Open;

         qrl_Empr1.Caption  := ibDadosEmpresa.FieldByName('NOMEFANTASIA').AsString;
         qrl_Empr2.Caption  := ibDadosEmpresa.FieldByName('NOMEFANTASIA').AsString;
         qrl_Empr3.Caption  := ibDadosEmpresa.FieldByName('NOMEFANTASIA').AsString;
         qrl_Empr4.Caption  := ibDadosEmpresa.FieldByName('NOMEFANTASIA').AsString;
         qrl_Empr5.Caption  := ibDadosEmpresa.FieldByName('NOMEFANTASIA').AsString;
         qrl_Empr6.Caption  := ibDadosEmpresa.FieldByName('NOMEFANTASIA').AsString;
         qrl_Empr7.Caption  := ibDadosEmpresa.FieldByName('NOMEFANTASIA').AsString;
         qrl_Empr8.Caption  := ibDadosEmpresa.FieldByName('NOMEFANTASIA').AsString;
         qrl_Empr9.Caption  := ibDadosEmpresa.FieldByName('NOMEFANTASIA').AsString;
         qrl_Empr10.Caption := ibDadosEmpresa.FieldByName('NOMEFANTASIA').AsString;
         qrl_Empr11.Caption := ibDadosEmpresa.FieldByName('NOMEFANTASIA').AsString;
         qrl_Empr12.Caption := ibDadosEmpresa.FieldByName('NOMEFANTASIA').AsString;
         qrl_Empr13.Caption := ibDadosEmpresa.FieldByName('NOMEFANTASIA').AsString;
         qrl_Empr14.Caption := ibDadosEmpresa.FieldByName('NOMEFANTASIA').AsString;
         qrl_Empr15.Caption := ibDadosEmpresa.FieldByName('NOMEFANTASIA').AsString;
         qrl_Empr16.Caption := ibDadosEmpresa.FieldByName('NOMEFANTASIA').AsString;
         qrl_Empr17.Caption := ibDadosEmpresa.FieldByName('NOMEFANTASIA').AsString;
         qrl_Empr18.Caption := ibDadosEmpresa.FieldByName('NOMEFANTASIA').AsString;
         qrl_Empr19.Caption := ibDadosEmpresa.FieldByName('NOMEFANTASIA').AsString;
         qrl_Empr20.Caption := ibDadosEmpresa.FieldByName('NOMEFANTASIA').AsString;
         qrl_Empr21.Caption := ibDadosEmpresa.FieldByName('NOMEFANTASIA').AsString;
         qrl_Empr22.Caption := ibDadosEmpresa.FieldByName('NOMEFANTASIA').AsString;
         qrl_Empr23.Caption := ibDadosEmpresa.FieldByName('NOMEFANTASIA').AsString;
         qrl_Empr24.Caption := ibDadosEmpresa.FieldByName('NOMEFANTASIA').AsString;
         qrl_Empr25.Caption := ibDadosEmpresa.FieldByName('NOMEFANTASIA').AsString;  }

    //    end;{if}

   //       qrpCodBarrasAD.Preview;

    //  end; {if}


   { EXCEPT
      on E : Exception do begin
         frmRelCodBarrasAD.Release;
         MessageDlg('Ocorreu um erro ao tentar mostrar o Formul�rio: ' + E.Message,mtError,[mbOk],0);
      end;
    END; }
  //////////////////////////////////////////////////////////////

 // end;{if}

//  end;{with}

end;

procedure TfrmProd_MPrima.dtpVctoLoteChange(Sender: TObject);
begin
ckVctoLote.Checked := True;
end;

procedure TfrmProd_MPrima.ckAcrescentarEstoqCheck(Sender: TObject);
begin

  if ckAcrescentarEstoq.Checked Then begin

    ckDiminuirEstoque.Checked := False;
    lbl_edtQtdeEstoque.SetFocus;
    
  end;//if

end;

procedure TfrmProd_MPrima.ckDiminuirEstoqueCheck(Sender: TObject);
begin

  if ckDiminuirEstoque.Checked Then begin

    ckAcrescentarEstoq.Checked := False;
    lbl_edtQtdeEstoque.SetFocus;
    
  end;//if

end;

procedure TfrmProd_MPrima.Pimaco60871Click(Sender: TObject);
begin
//frmPimaco6087.ShowModal;
end;

procedure TfrmProd_MPrima.Pimaco60891Click(Sender: TObject);
begin
//frmPimaco6089.ShowModal;
end;

procedure TfrmProd_MPrima.lbl_edtVendadExit(Sender: TObject);
begin

  lbl_edtVendad.color := clwindow;
  
  if lbl_edtVendad.Text <> '' Then begin

    lbl_edtVendad.Text := StringReplace(lbl_edtVendad.Text,ThousandSeparator,'',[rfReplaceAll]);
    lbl_edtVendad.Text := FormatFloat(Casasdecimais('Produtos'),StrToFloat(lbl_edtVendad.Text));

  end else begin

    lbl_edtVendad.Text := '0,00';

  end;

end;

procedure TfrmProd_MPrima.lbl_edtVendadKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtLucroVenda.SetFocus;

  end;

end;

procedure TfrmProd_MPrima.lbl_edtMarcaKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtCodP.SetFocus;  

  end;

end;

procedure TfrmProd_MPrima.lbl_edtAliquotaKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    cboModalidade.SetFocus;

  end;

end;

procedure TfrmProd_MPrima.lbl_edtTributarioKeyPress(Sender: TObject;
  var Key: Char);
begin

if Key=#13 Then begin

lbl_edtCusto.SetFocus;

end;

end;

procedure TfrmProd_MPrima.lbl_edtQtdePratKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtMinimoPrat.SetFocus;

  end;//if

end;

procedure TfrmProd_MPrima.lbl_edtQtdePratExit(Sender: TObject);
begin

  lbl_edtQtdePrat.color := clwindow;
  
  if lbl_edtInfoMP.Text <> '' Then begin

    lbl_edtMinimoPrat.Text := lbl_edtInfoMP.Text;

  end else begin

    lbl_edtMinimoPrat.Text := '0';

  end;
  
end;

procedure TfrmProd_MPrima.btnRProdEstoqueClick(Sender: TObject);

var

IDFornProd         : TClasseCombo;

begin

  with dmModule do begin

    if cboFornecedoresProdutos.ItemIndex <> -1 Then begin//SE HOUVER REGISTRO NO COMBO
      IDFornProd         := TClasseCombo( cboFornecedoresProdutos.Items.Objects[cboFornecedoresProdutos.ItemIndex] );//ATRIBUI A CLASSE COMBO NA VARIAVEL


      Commit(ibProdutoFornecedor);
      ibProdutoFornecedor.Close;
      ibProdutoFornecedor.SQL.Clear;
      ibProdutoFornecedor.SQL.Add('SELECT TBLPRODFORN.*,TBLENTRADAESTOQUEPROD.QUANTIDADE As QtdeEstoque,'
      + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.TOTALCUSTO,'
      + 'CADPRODUTOS.CODBARRASAD,CADPRODUTOS.VALORVENDAA FROM TBLPRODFORN '
      + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON TBLPRODFORN.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD '
      + 'INNER JOIN CADPRODUTOS ON TBLPRODFORN.IDPROD=CADPRODUTOS.IDPROD WHERE(TBLPRODFORN.IDFORNECEDOR=''' + IntToStr(IDFornProd.ID) + ''')ORDER BY TBLPRODFORN.NOMEPROD');
      ibProdutoFornecedor.Open;

        Application.CreateForm(TfrmRProdFornecedor, frmRProdFornecedor);

        TRY

          with frmRProdFornecedor do begin

            frmRProdFornecedor.qrpProdutosFornecedor.DataSet := ibProdutoFornecedor;


            //ATRIBUI OS NOMES DOS CAMPOS AOS QRDBTEXT DO QUICKREPORT
            qrdbCodigoAd.DataSet    := ibProdutoFornecedor;
            qrdbCodigoAd.DataField  := ibProdutoFornecedor.FieldByName('CODBARRASAD').FieldName;

            qrdbDescricao.DataSet       := ibProdutoFornecedor;
            qrdbDescricao.DataField     := ibProdutoFornecedor.FieldByName('NOMEPROD').FieldName;

           // qrdbFornecedor.DataSet       := ibProdutos;
         //  qrdbFornecedor.DataField     := ibProdutos.FieldByName('NomeFornecedor').FieldName;

            qrdbValorVenda.DataSet    := ibProdutoFornecedor;
            qrdbValorVenda.DataField  := ibProdutoFornecedor.FieldByName('VALORVENDAA').FieldName;
            (ibProdutoFornecedor.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO }

            qrdbVlrCusto.DataSet    := ibProdutoFornecedor;
            qrdbVlrCusto.DataField  := ibProdutoFornecedor.FieldByName('VLRCUSTO').FieldName;
            (ibProdutoFornecedor.FieldByName('VLRCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO }

            qrdbQtdeEstoque.DataSet    := ibProdutoFornecedor;
            qrdbQtdeEstoque.DataField  := ibProdutoFornecedor.FieldByName('QtdeEstoque').FieldName;
            (ibProdutoFornecedor.FieldByName('QtdeEstoque') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO }

            qrl_NomeFornecedor.Caption := 'Fornecedor: '+ cboFornecedoresProdutos.Text;

            qrpProdutosFornecedor.Preview;

          end; {if}


        EXCEPT
          on E : Exception do begin
             frmRProdFornecedor.Release;
             MessageDlg('Ocorreu um erro ao tentar mostrar o Formul�rio: ' + E.Message,mtError,[mbOk],0);
          end;
        END;

      end;//ifcbofornecedor

////////////////////////////////////////////////////////////////////////////////



  end;


end;

procedure TfrmProd_MPrima.lbl_edtVlrPacoteFardoExit(Sender: TObject);
begin

       tedit(sender).color := clwindow;
       
       if (lbl_edtVlrPacoteFardo.Text <> '') Then begin

         lbl_edtVlrPacoteFardo.Text := FormatFloat(Casasdecimais('Produtos'),StrToFloat(lbl_edtVlrPacoteFardo.Text));

       end else begin

         lbl_edtVlrPacoteFardo.Text := '0,00';

       end;//if
       
end;

procedure TfrmProd_MPrima.lbl_edtVlrPacoteFardoKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtQtdePacoteFardo.SetFocus;

  end;
  
end;

procedure TfrmProd_MPrima.lbl_edtLucroVendaKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key= #13 Then begin

    lbl_edtVlrPacoteFardo.SetFocus;

  end;
    
end;

procedure TfrmProd_MPrima.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  with dmModule do begin

    case Key of

        VK_F7 :begin

          try
             if frmBuscaProdutos = Nil then
                frmBuscaProdutos := TfrmBuscaProdutos.Create(self);
          except
              ShowMessage('Erro na cria��o do formul�rio !!');
              exit;
          end;

          frmBuscaProdutos.ShowModal;
          FreeAndNil(frmBuscaProdutos);

       end;//begin

     end;//case

  end;//with

end;

procedure TfrmProd_MPrima.pcCadProdutosChange(Sender: TObject);
begin

  with dmModule do begin

    if pcCadProdutos.ActivePageIndex = 2 Then begin

    with dbgProdutosEquivalentes do begin
      // monta as colunas abaixo se for verdadeiro
      if MontaColProdEquivalente Then begin

         DataSource := dmModule.dtsProdEquivalente;

        //determina as colunas a serem montadas 0 codigo cliente, 1 razao Social, 2 endere�o numero...
        Columns.Insert(0);
        Columns.Insert(1);
        Columns.Insert(2);
        {Columns.Insert(3);
        Columns.Insert(4);
        Columns.Insert(5);
        Columns.Insert(6);
        Columns.Insert(7); }

        //Parametros da Coluna que exibe o C�digo do Produto
        Columns.Items[0].Title.Caption := 'Nome';
        Columns.Items[0].FieldName     := 'NOMEPROD';
        Columns.Items[0].Width         := 250;
        Columns.Items[0].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o c�digo de barras do produto
        Columns.Items[1].Title.Caption := 'Vlr.Venda';
        Columns.Items[1].FieldName     := 'VALORVENDAA';
        Columns.Items[1].Width         := 77;
        Columns.Items[1].Alignment     := taLeftJustify;

        // Parametros que exibe o nome do produto
        Columns.Items[2].Title.Caption := 'Qtde.Estoque';
        Columns.Items[2].FieldName     := 'QUANTIDADE';
        Columns.Items[2].Width         := 77;
        Columns.Items[2].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o C�digo do Produto
       { Columns.Items[3].Title.Caption := 'Ref.';
        Columns.Items[3].FieldName     := 'REF';
        Columns.Items[3].Width         := 156;
        Columns.Items[3].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o c�digo de barras do produto
        Columns.Items[4].Title.Caption := 'Data Cadastro';
        Columns.Items[4].FieldName     := 'DATACADASTRO';
        Columns.Items[4].Width         := 78;
        Columns.Items[4].Alignment     := taLeftJustify;

                                           //taRightJustify;
       // Parametros que exibe o valor de venda (b)
        Columns.Items[5].Title.Caption := 'Valor de Venda (A)';
        Columns.Items[5].FieldName     := 'VALORVENDAA';
        Columns.Items[5].Width         := 95;
        Columns.Items[5].Alignment     := taLeftJustify;

        // Parametros que exibe o valor de venda (a)
        Columns.Items[6].Title.Caption := 'Valor de Custo';
        Columns.Items[6].FieldName     := 'VALORCUSTO';
        Columns.Items[6].Width         := 77;
        Columns.Items[6].Alignment     := taLeftJustify;

        // Parametros que exibe o valor de venda (c)
        Columns.Items[7].Title.Caption := 'Data Altera��o';
        Columns.Items[7].FieldName     := 'DATAALTERACAO';
        Columns.Items[7].Width         := 77;
        Columns.Items[7].Alignment     := taLeftJustify; }


        MontaColProdEquivalente := False;

      end;

    end;
////////////////////////////////////////////////////////////////////////////////


    end;//if
    
  end;//with

end;

procedure TfrmProd_MPrima.btIncluirEquivalenteClick(Sender: TObject);

var

ConfirmaProd,IDDetalheProd : Integer;

begin

  with dmModule do begin

    ConfirmaProd := Application.MessageBox('Confirma Inclus�o?','Incluir Produto Equivalente',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

    if ConfirmaProd = 6 Then begin

      Commit(ibDetalheEquivalente);
      ibDetalheEquivalente.Close;
      ibDetalheEquivalente.SQL.Clear;
      ibDetalheEquivalente.SQL.Add('SELECT * FROM TBLPRODDETALHEEQUIVALENTE WHERE IDPRODDETALHE=''' + lbl_edtCodigo.Text + '''');
      ibDetalheEquivalente.Open;

      IDDetalheProd :=  ibDetalheEquivalente.FieldByName('IDDETALHEEQUIVALENTE').AsInteger;

      if ibDetalheEquivalente.RecordCount > 0 Then begin

          ibProdEquivalente.Close;
          ibProdEquivalente.SQL.Clear;
          ibProdEquivalente.SQL.Add('INSERT INTO TBLPRODEQUIVALENTE '
          +'(IDPROD,IDDETALHE,IDPRODDETALHEE,NOMEPROD) values '
          + '(''' + lbl_edtIDProdEquivalente.Text + ''','
          + ' ''' + IntToStr(IDDetalheProd) + ''','
          + ' ''' + lbl_edtCodigo.Text + ''','
          + ' ''' + lbl_edtNomeProdEquivalente.Text + ''')');
          ibProdEquivalente.ExecSQL;

      end else begin

        ibDetalheEquivalente.Close;
        ibDetalheEquivalente.SQL.Clear;
        ibDetalheEquivalente.SQL.Add('INSERT INTO TBLPRODDETALHEEQUIVALENTE '
        +'(IDPRODDETALHE,NOMEPROD) values '
        + '(''' + lbl_edtCodigo.Text + ''','
        + ' ''' + lbl_edtNomeProduto.Text + ''')');
        ibDetalheEquivalente.ExecSQL;

        if lbl_edtNomeProdEquivalente.Text <> '' then begin

          Commit(ibDetalheEquivalente);
          ibDetalheEquivalente.Close;
          ibDetalheEquivalente.SQL.Clear;
          ibDetalheEquivalente.SQL.Add('SELECT * FROM TBLPRODDETALHEEQUIVALENTE WHERE IDPRODDETALHE=''' + lbl_edtCodigo.Text + '''');
          ibDetalheEquivalente.Open;

          IDDetalheProd :=  ibDetalheEquivalente.FieldByName('IDDETALHEEQUIVALENTE').AsInteger;

          ibProdEquivalente.Close;
          ibProdEquivalente.SQL.Clear;
          ibProdEquivalente.SQL.Add('INSERT INTO TBLPRODEQUIVALENTE '
          +'(IDPROD,IDDETALHE,IDPRODDETALHEE,NOMEPROD) values '
          + '(''' + lbl_edtIDProdEquivalente.Text + ''','
          + ' ''' + IntToStr(IDDetalheProd) + ''','
          + ' ''' + lbl_edtCodigo.Text + ''','
          + ' ''' + lbl_edtNomeProdEquivalente.Text + ''')');
          ibProdEquivalente.ExecSQL;

        end;

      end;//if recordcount

      lbl_edtNomeProdEquivalente.Clear;

    end;//if

          Commit(ibProdEquivalente);
          ibProdEquivalente.Close;
          ibProdEquivalente.SQL.Clear;
          ibProdEquivalente.SQL.Add('SELECT * FROM TBLPRODEQUIVALENTE WHERE IDDETALHE=''' + IntToStr(IDDetalheProd) + '''');
          ibProdEquivalente.Open;

  end;//with

end;

procedure TfrmProd_MPrima.dbgProdutosEquivalentesCellClick(
  Column: TColumn);
begin

  with dmModule do begin

    IDProdutoEquivalente := ibProdEquivalente.FieldByName('IDDETALHE').AsInteger;

    if ibProdEquivalente.RecordCount > 0 Then begin

      lbl_edtNomeProdEquivalente.Text := ibProdEquivalente.FieldByName('NOMEPROD').AsString;
      lbl_edtIDProdEquivalente.Text   := IntToStr(ibProdEquivalente.FieldByName('IDPROD').AsInteger);

    end;//if

  end;//with
  
end;

procedure TfrmProd_MPrima.btExcluirEquivalenteClick(Sender: TObject);

var

ConfirmaExclusao : Integer;

begin

  with dmModule do begin

    ConfirmaExclusao := Application.MessageBox('Confirma Exclus�o?','Excluir Produto Equivalente',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

    if ConfirmaExclusao = 6 Then begin

      Commit(ibProdEquivalente);
      ibProdEquivalente.Close;
      ibProdEquivalente.SQL.Clear;
      ibProdEquivalente.SQL.Add('DELETE FROM TBLPRODEQUIVALENTE WHERE IDPROD = ''' + lbl_edtIDProdEquivalente.Text + '''');
      ibProdEquivalente.ExecSQL;

      Commit(ibProdEquivalente);
      ibProdEquivalente.Close;
      ibProdEquivalente.SQL.Clear;
      ibProdEquivalente.SQL.Add('SELECT TBLPRODEQUIVALENTE.*,CADPRODUTOS.VALORVENDAA,'
      + 'TBLENTRADAESTOQUEPROD.QUANTIDADE FROM TBLPRODEQUIVALENTE '
      + 'INNER JOIN CADPRODUTOS ON TBLPRODEQUIVALENTE.IDPROD=CADPRODUTOS.IDPROD '
      + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON TBLPRODEQUIVALENTE.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD WHERE IDPRODDETALHEE=''' + lbl_edtCodigo.Text + '''');
      ibProdEquivalente.Open;

      (ibProdEquivalente.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO


    end;//if

      lbl_edtNomeProdEquivalente.Clear;
      lbl_edtIDProdEquivalente.Clear;

  end;//with
  
end;

procedure TfrmProd_MPrima.lbl_edtQtdeBKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtVendac.SetFocus;

  end;

end;

procedure TfrmProd_MPrima.lbl_edtQtdeCKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtVendad.SetFocus;

  end;

end;

procedure TfrmProd_MPrima.btFormulaClick(Sender: TObject);

var
CustoNovo,QtdeNova,CustoAntigo,QtdeAntiga,ResultadoFormula : Real;
RCustoNovo,RCustoAntigo,TotalQtdes,ResultadoCustos : Real;
ConfirmaR : String;
begin

  if (lbl_edtCustoFormula.Text > '0,00') and (lbl_edtQtdeFormula.Text <> '') Then begin

    if lbl_edtCustoFormula.Text <> '' Then begin// se for em branco executa rotina abaixo.

      if (Pos(',',lbl_edtCustoFormula.Text)>0) and (lbl_edtCustoFormula.Text <> '') Then begin

        CustoNovo := StrToFloat(StringReplace(lbl_edtCustoFormula.Text,ThousandSeparator,'',[rfReplaceAll]));
        QtdeNova := StrToFloat(StringReplace(lbl_edtQtdeFormula.Text,ThousandSeparator,'',[rfReplaceAll]));
        RCustoNovo := CustoNovo * QtdeNova;

      end else begin

        CustoNovo := StrToFloat(StringReplace(lbl_edtCustoFormula.Text,ThousandSeparator,'',[rfReplaceAll]));
        QtdeNova := StrToFloat(StringReplace(lbl_edtQtdeFormula.Text,ThousandSeparator,'',[rfReplaceAll]));
        RCustoNovo := CustoNovo * QtdeNova;

      end;{if}

    end;{if}

  end;//label custo

  if (lbl_edtCusto.Text > '0,00') and (lbl_edtEstoqgeral.Text <> '') Then begin

    if lbl_edtCusto.Text <> '' Then begin// se for em branco executa rotina abaixo.

      if (Pos(',',lbl_edtCusto.Text)>0) and (lbl_edtCusto.Text <> '') Then begin

        CustoAntigo := StrToFloat(StringReplace(lbl_edtCusto.Text,ThousandSeparator,'',[rfReplaceAll]));
        QtdeAntiga := StrToFloat(StringReplace(lbl_edtEstoqgeral.Text,ThousandSeparator,'',[rfReplaceAll]));
        RCustoAntigo := CustoAntigo * QtdeAntiga;

      end else begin

        CustoAntigo := StrToFloat(StringReplace(lbl_edtCusto.Text,ThousandSeparator,'',[rfReplaceAll]));
        QtdeAntiga := StrToFloat(StringReplace(lbl_edtEstoqgeral.Text,ThousandSeparator,'',[rfReplaceAll]));
        RCustoAntigo := CustoAntigo * QtdeAntiga;

      end;{if}

    end;{if}

  end;//label custo

  if (RCustoNovo > 0)and(RCustoAntigo > 0) Then begin


    TotalQtdes := QtdeNova + QtdeAntiga;
    ResultadoCustos :=  RCustoNovo + RCustoAntigo;
    ResultadoFormula := ResultadoCustos / TotalQtdes;

  end;

  lbl_edtResultado.text := formatfloat(CasasDecimais('Combustiveis'),ResultadoFormula);



end;

procedure TfrmProd_MPrima.lbl_edtCustoFormulaKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtQtdeFormula.SetFocus;

  end;//if

end;

procedure TfrmProd_MPrima.btLimparFormulaClick(Sender: TObject);
begin

  lbl_edtCustoFormula.Text := '0,00';
  lbl_edtQtdeFormula.Text  := '0,00';
  lbl_edtResultado.Text       := '0,00';
  lbl_edtVendaformula.Text := '0,00';
  lbl_edtCustoFormula.SetFocus;

end;

procedure TfrmProd_MPrima.lbl_edtCustoFormulaExit(Sender: TObject);
begin

       if (lbl_edtCustoFormula.Text <> '') Then begin

         lbl_edtCustoFormula.Text := StringReplace(lbl_edtCustoFormula.Text,ThousandSeparator,'',[rfReplaceAll]);
         lbl_edtCustoFormula.Text := FormatFloat(Casasdecimais('Produtos'),StrToFloat(lbl_edtCustoFormula.Text));

       end else begin

         lbl_edtCustoFormula.Text := '0,00';

       end;//if

end;

procedure TfrmProd_MPrima.lbl_edtQtdeFormulaExit(Sender: TObject);
begin

       if (lbl_edtQtdeFormula.Text <> '') Then begin

         lbl_edtQtdeFormula.Text := StringReplace(lbl_edtQtdeFormula.Text,ThousandSeparator,'',[rfReplaceAll]);
         lbl_edtQtdeFormula.Text := FormatFloat(Casasdecimais('Produtos'),StrToFloat(lbl_edtQtdeFormula.Text));

       end else begin

         lbl_edtQtdeFormula.Text := '0,00';

       end;//if

end;

procedure TfrmProd_MPrima.lbl_edtQtdeFormulaKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key =#13 Then begin

    btFormulaClick(Sender);

    lbl_edtResultado.SetFocus;

  end;

end;


procedure TfrmProd_MPrima.lbl_edtResultadoExit(Sender: TObject);

   var
    Valor1,PorcentagemCusto,TotalCusto,CustoCalculado,TotalCustoCalculado :Real;
    Valor2 :Real;
    Valor3 :Real;
    Valor4 :Real;
begin

  with dmModule do begin

    if lbl_edtCustoFormula.Text <> '' Then begin

      if lbl_edtLucro.Text <> '' Then begin// se for em branco executa rotina abaixo.

        if (Pos(',',lbl_edtLucro.Text)>0) and (lbl_edtLucro.Text <> '') Then begin

          Valor1 := StrToFloat(StringReplace(lbl_edtLucro.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor2 := StrToFloat(StringReplace(lbl_edtCustoFormula.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor3 := Valor2 * Valor1;

          Valor4 := Valor3 /100;

          lbl_edtVendaa.Text := FormatFloat(',0.00',(Valor4 + Valor2));
          lbl_edtVendaFormula.Text  := FormatFloat(',0.00',(Valor4 + Valor2));

        end else begin

          Valor1 := StrToFloat(StringReplace(lbl_edtLucro.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor2 := StrToFloat(StringReplace(lbl_edtCustoFormula.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor3 := Valor2 * Valor1;

          Valor4 := Valor3 /100;

          lbl_edtVendaa.Text := FormatFloat(',0.00',(Valor4 + Valor2));
          lbl_edtVendaFormula.Text  := FormatFloat(',0.00',(Valor4 + Valor2));

        end;{if}

      end;{if}

    end;

  end;

end;

procedure TfrmProd_MPrima.lbl_edtResultadoKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin


    lbl_edtVendaFormula.SetFocus;

  end;  

end;

procedure TfrmProd_MPrima.lbl_edtVendaFormulaKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtVendaa.SetFocus;

  end;

end;

procedure TfrmProd_MPrima.cboFornecedoresProdutosChange(Sender: TObject);

var

IDFornProd1,IDFornProd2,IDFornProd3,IDFornProd4,IDFornProd5 : TClasseCombo;
IDFornProd6,IDFornProd7,IDFornProd8 : TClasseCombo;
StringForn1,StringForn2,StringForn3,StringForn4,StringForn5,StringForn6 : String;
StringForn7,StringForn8 : String;

begin

  StringForn1 := '0';
  StringForn2 := '0';
  StringForn3 := '0';
  StringForn4 := '0';
  StringForn5 := '0';
  StringForn6 := '0';
  StringForn7 := '0';
  StringForn8 := '0';

  with dmModule do begin

    if cboFornecedoresProdutos.ItemIndex <> -1 Then begin//SE HOUVER REGISTRO NO COMBO
      IDFornProd1         := TClasseCombo( cboFornecedoresProdutos.Items.Objects[cboFornecedoresProdutos.ItemIndex] );//ATRIBUI A CLASSE COMBO NA VARIAVEL
      IDFornProd2         := TClasseCombo( cboFornecedoresProdutos.Items.Objects[cboFornecedoresProdutos.ItemIndex] );
      IDFornProd3         := TClasseCombo( cboFornecedoresProdutos.Items.Objects[cboFornecedoresProdutos.ItemIndex] );
      IDFornProd4         := TClasseCombo( cboFornecedoresProdutos.Items.Objects[cboFornecedoresProdutos.ItemIndex] );
      IDFornProd5         := TClasseCombo( cboFornecedoresProdutos.Items.Objects[cboFornecedoresProdutos.ItemIndex] );
      IDFornProd6         := TClasseCombo( cboFornecedoresProdutos.Items.Objects[cboFornecedoresProdutos.ItemIndex] );
      IDFornProd7         := TClasseCombo( cboFornecedoresProdutos.Items.Objects[cboFornecedoresProdutos.ItemIndex] );
      IDFornProd8         := TClasseCombo( cboFornecedoresProdutos.Items.Objects[cboFornecedoresProdutos.ItemIndex] );

        Commit(ibProdutoFornecedor);
        ibProdutoFornecedor.Close;
        ibProdutoFornecedor.SQL.Clear;
        ibProdutoFornecedor.SQL.Add('SELECT TBLPRODFORN.*,CADPRODUTOS.VALORVENDAA,'
        + 'CADPRODUTOS.CODBARRAS FROM TBLPRODFORN '
        + 'INNER JOIN CADPRODUTOS ON TBLPRODFORN.IDPROD=CADPRODUTOS.IDPROD WHERE(TBLPRODFORN.IDFORNECEDOR=''' + IntToStr(IDFornProd1.ID) + ''')ORDER BY TBLPRODFORN.NOMEPROD');
        ibProdutoFornecedor.Open;

        (ibProdutoFornecedor.FieldByName('VLRCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
        (ibProdutoFornecedor.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos');


          with dbgFornecedorProd do begin

            if MontaColProdForn1 Then begin

              DataSource := dmModule.dtsProdutoFornecedor;
              //determina as colunas a serem montadas 0 codigo fornecedor, 1 razao Social, 2 endere�o numero...
              Columns.Insert(0);
              Columns.Insert(1);
              Columns.Insert(2);
              Columns.Insert(3);

              //Parametros da Coluna que exibe o C�digo do Cadastro
              Columns.Items[0].Title.Caption := 'C�digo de Barras';
              Columns.Items[0].FieldName     := 'CODBARRAS';
              Columns.Items[0].Width         := 97;
              Columns.Items[0].Alignment     := taCenter;

              //Parametros da Coluna que exibe o Nome do cliente.
              Columns.Items[1].Title.Caption := 'Descri��o';
              Columns.Items[1].FieldName     := 'NOMEPROD';
              Columns.Items[1].Width         := 250;

              // Parametros que exibe o nome fantasia do cliente
              Columns.Items[2].Title.Caption := 'Vlr. Custo';
              Columns.Items[2].FieldName     := 'VLRCUSTO';
              Columns.Items[2].Width         := 80;

              // Parametros que exibe o nome fantasia do cliente
              Columns.Items[3].Title.Caption := 'Vlr.Venda';
              Columns.Items[3].FieldName     := 'VALORVENDAA';
              Columns.Items[3].Width         := 80;

              MontaColProdForn1 := False;

            end;//if monta colunas

          end;// with

////////////////////////////////////////////////////////////////////////////////

        {  with dbgFornecedorProd2 do begin

            Commit(ibProdForn);
            ibProdForn.Close;                                                                             ///OR(FORNECEDOR3=''' + IntToStr(IDFornProd3.ID) + ''')OR(FORNECEDOR4=''' + IntToStr(IDFornProd4.ID) + ''')OR(FORNECEDOR5=''' + IntToStr(IDFornProd5.ID) + ''')OR(FORNECEDOR6=''' + IntToStr(IDFornProd6.ID) + ''')OR(FORNECEDOR7=''' + IntToStr(IDFornProd7.ID) + ''')OR(FORNECEDOR8=''' + IntToStr(IDFornProd8.ID) + '''
            ibProdForn.SQL.Clear;
            ibProdForn.SQL.Add('SELECT * FROM CADPRODUTOS WHERE(FORNECEDOR2=''' + IntToStr(IDFornProd2.ID) + ''')ORDER BY NOME');
            ibProdForn.Open;                                                                ///   OR(FORNECEDOR2=''' + IntToStr(IDFornProd2.ID) + ''')

            StringForn2 := IntToStr(ibProdForn.FieldByName('FORNECEDOR2').AsInteger);

            (ibProdForn.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
            (ibProdForn.FieldByName('VLRCUSTOF1') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn.FieldByName('VLRCUSTOF2') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn.FieldByName('VLRCUSTOF3') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn.FieldByName('VLRCUSTOF4') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn.FieldByName('VLRCUSTOF5') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn.FieldByName('VLRCUSTOF6') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn.FieldByName('VLRCUSTOF7') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn.FieldByName('VLRCUSTOF8') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

            if StringForn2 > '0' Then begin
            pcFornecedores.ActivePageIndex := 1;
            end;

            if MontaColProdForn2 Then begin

              DataSource := dmModule.dtsProdForn;
              //determina as colunas a serem montadas 0 codigo fornecedor, 1 razao Social, 2 endere�o numero...
              Columns.Insert(0);
              Columns.Insert(1);
              Columns.Insert(2);
              Columns.Insert(3);

              //Parametros da Coluna que exibe o C�digo do Cadastro
              Columns.Items[0].Title.Caption := 'C�digo de Barras';
              Columns.Items[0].FieldName     := 'CODBARRAS';
              Columns.Items[0].Width         := 97;
              Columns.Items[0].Alignment     := taCenter;

              //Parametros da Coluna que exibe o Nome do cliente.
              Columns.Items[1].Title.Caption := 'Descri��o';
              Columns.Items[1].FieldName     := 'NOME';
              Columns.Items[1].Width         := 250;

              // Parametros que exibe o nome fantasia do cliente
              Columns.Items[2].Title.Caption := 'Vlr. Custo';
              Columns.Items[2].FieldName     := 'VLRCUSTOF2';
              Columns.Items[2].Width         := 80;

              // Parametros que exibe o nome fantasia do cliente
              Columns.Items[3].Title.Caption := 'Vlr.Venda';
              Columns.Items[3].FieldName     := 'VALORVENDAA';
              Columns.Items[3].Width         := 80;

              MontaColProdForn2 := False;

            end;//if monta colunas

          end;// with

////////////////////////////////////////////////////////////////////////////////

          with dbgFornecedorProd3 do begin

            Commit(ibProdForn3);
            ibProdForn3.Close;                                                                             ///OR(FORNECEDOR3=''' + IntToStr(IDFornProd3.ID) + ''')OR(FORNECEDOR4=''' + IntToStr(IDFornProd4.ID) + ''')OR(FORNECEDOR5=''' + IntToStr(IDFornProd5.ID) + ''')OR(FORNECEDOR6=''' + IntToStr(IDFornProd6.ID) + ''')OR(FORNECEDOR7=''' + IntToStr(IDFornProd7.ID) + ''')OR(FORNECEDOR8=''' + IntToStr(IDFornProd8.ID) + '''
            ibProdForn3.SQL.Clear;
            ibProdForn3.SQL.Add('SELECT * FROM CADPRODUTOS WHERE(FORNECEDOR3=''' + IntToStr(IDFornProd3.ID) + ''')ORDER BY NOME');
            ibProdForn3.Open;                                                                ///   OR(FORNECEDOR2=''' + IntToStr(IDFornProd2.ID) + ''')

            StringForn3 := IntToStr(ibProdForn3.FieldByName('FORNECEDOR3').AsInteger);

            (ibProdForn3.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
            (ibProdForn3.FieldByName('VLRCUSTOF1') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn3.FieldByName('VLRCUSTOF2') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn3.FieldByName('VLRCUSTOF3') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn3.FieldByName('VLRCUSTOF4') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn3.FieldByName('VLRCUSTOF5') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn3.FieldByName('VLRCUSTOF6') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn3.FieldByName('VLRCUSTOF7') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn3.FieldByName('VLRCUSTOF8') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn3.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

            if StringForn3 > '0' Then begin
            pcFornecedores.ActivePageIndex := 2;
            end;

            if MontaColProdForn3 Then begin

              DataSource := dmModule.dtsProdForn3;
              //determina as colunas a serem montadas 0 codigo fornecedor, 1 razao Social, 2 endere�o numero...
              Columns.Insert(0);
              Columns.Insert(1);
              Columns.Insert(2);
              Columns.Insert(3);

              //Parametros da Coluna que exibe o C�digo do Cadastro
              Columns.Items[0].Title.Caption := 'C�digo de Barras';
              Columns.Items[0].FieldName     := 'CODBARRAS';
              Columns.Items[0].Width         := 97;
              Columns.Items[0].Alignment     := taCenter;

              //Parametros da Coluna que exibe o Nome do cliente.
              Columns.Items[1].Title.Caption := 'Descri��o';
              Columns.Items[1].FieldName     := 'NOME';
              Columns.Items[1].Width         := 250;

              // Parametros que exibe o nome fantasia do cliente
              Columns.Items[2].Title.Caption := 'Vlr. Custo';
              Columns.Items[2].FieldName     := 'VLRCUSTOF3';
              Columns.Items[2].Width         := 80;

              // Parametros que exibe o nome fantasia do cliente
              Columns.Items[3].Title.Caption := 'Vlr.Venda';
              Columns.Items[3].FieldName     := 'VALORVENDAA';
              Columns.Items[3].Width         := 80;

              MontaColProdForn3 := False;

            end;//if monta colunas

          end;// with

////////////////////////////////////////////////////////////////////////////////

          with dbgFornecedorProd4 do begin

            Commit(ibProdForn4);
            ibProdForn4.Close;                                                                             ///OR(FORNECEDOR3=''' + IntToStr(IDFornProd3.ID) + ''')OR(FORNECEDOR4=''' + IntToStr(IDFornProd4.ID) + ''')OR(FORNECEDOR5=''' + IntToStr(IDFornProd5.ID) + ''')OR(FORNECEDOR6=''' + IntToStr(IDFornProd6.ID) + ''')OR(FORNECEDOR7=''' + IntToStr(IDFornProd7.ID) + ''')OR(FORNECEDOR8=''' + IntToStr(IDFornProd8.ID) + '''
            ibProdForn4.SQL.Clear;
            ibProdForn4.SQL.Add('SELECT * FROM CADPRODUTOS WHERE(FORNECEDOR4=''' + IntToStr(IDFornProd4.ID) + ''')ORDER BY NOME');
            ibProdForn4.Open;                                                                ///   OR(FORNECEDOR2=''' + IntToStr(IDFornProd2.ID) + ''')

            StringForn4 := IntToStr(ibProdForn4.FieldByName('FORNECEDOR4').AsInteger);

            (ibProdForn4.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
            (ibProdForn4.FieldByName('VLRCUSTOF1') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn4.FieldByName('VLRCUSTOF2') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn4.FieldByName('VLRCUSTOF3') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn4.FieldByName('VLRCUSTOF4') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn4.FieldByName('VLRCUSTOF5') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn4.FieldByName('VLRCUSTOF6') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn4.FieldByName('VLRCUSTOF7') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn4.FieldByName('VLRCUSTOF8') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn4.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

            if StringForn4 > '0' Then begin
            pcFornecedores.ActivePageIndex := 3;
            end;

            if MontaColProdForn4 Then begin

              DataSource := dmModule.dtsProdForn4;
              //determina as colunas a serem montadas 0 codigo fornecedor, 1 razao Social, 2 endere�o numero...
              Columns.Insert(0);
              Columns.Insert(1);
              Columns.Insert(2);
              Columns.Insert(3);

              //Parametros da Coluna que exibe o C�digo do Cadastro
              Columns.Items[0].Title.Caption := 'C�digo de Barras';
              Columns.Items[0].FieldName     := 'CODBARRAS';
              Columns.Items[0].Width         := 97;
              Columns.Items[0].Alignment     := taCenter;

              //Parametros da Coluna que exibe o Nome do cliente.
              Columns.Items[1].Title.Caption := 'Descri��o';
              Columns.Items[1].FieldName     := 'NOME';
              Columns.Items[1].Width         := 250;

              // Parametros que exibe o nome fantasia do cliente
              Columns.Items[2].Title.Caption := 'Vlr. Custo';
              Columns.Items[2].FieldName     := 'VLRCUSTOF4';
              Columns.Items[2].Width         := 80;

              // Parametros que exibe o nome fantasia do cliente
              Columns.Items[3].Title.Caption := 'Vlr.Venda';
              Columns.Items[3].FieldName     := 'VALORVENDAA';
              Columns.Items[3].Width         := 80;

              MontaColProdForn4 := False;

            end;//if monta colunas

          end;// with

////////////////////////////////////////////////////////////////////////////////

          with dbgFornecedorProd5 do begin

            Commit(ibProdForn5);
            ibProdForn5.Close;                                                                             ///OR(FORNECEDOR3=''' + IntToStr(IDFornProd3.ID) + ''')OR(FORNECEDOR4=''' + IntToStr(IDFornProd4.ID) + ''')OR(FORNECEDOR5=''' + IntToStr(IDFornProd5.ID) + ''')OR(FORNECEDOR6=''' + IntToStr(IDFornProd6.ID) + ''')OR(FORNECEDOR7=''' + IntToStr(IDFornProd7.ID) + ''')OR(FORNECEDOR8=''' + IntToStr(IDFornProd8.ID) + '''
            ibProdForn5.SQL.Clear;
            ibProdForn5.SQL.Add('SELECT * FROM CADPRODUTOS WHERE(FORNECEDOR5=''' + IntToStr(IDFornProd5.ID) + ''')ORDER BY NOME');
            ibProdForn5.Open;                                                                ///   OR(FORNECEDOR2=''' + IntToStr(IDFornProd2.ID) + ''')

            StringForn5 := IntToStr(ibProdForn5.FieldByName('FORNECEDOR5').AsInteger);

            (ibProdForn5.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
            (ibProdForn5.FieldByName('VLRCUSTOF1') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn5.FieldByName('VLRCUSTOF2') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn5.FieldByName('VLRCUSTOF3') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn5.FieldByName('VLRCUSTOF4') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn5.FieldByName('VLRCUSTOF5') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn5.FieldByName('VLRCUSTOF6') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn5.FieldByName('VLRCUSTOF7') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn5.FieldByName('VLRCUSTOF8') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn5.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

            if StringForn5 > '0' Then begin
            pcFornecedores.ActivePageIndex := 4;
            end;

            if MontaColProdForn5 Then begin

              DataSource := dmModule.dtsProdForn5;
              //determina as colunas a serem montadas 0 codigo fornecedor, 1 razao Social, 2 endere�o numero...
              Columns.Insert(0);
              Columns.Insert(1);
              Columns.Insert(2);
              Columns.Insert(3);

              //Parametros da Coluna que exibe o C�digo do Cadastro
              Columns.Items[0].Title.Caption := 'C�digo de Barras';
              Columns.Items[0].FieldName     := 'CODBARRAS';
              Columns.Items[0].Width         := 97;
              Columns.Items[0].Alignment     := taCenter;

              //Parametros da Coluna que exibe o Nome do cliente.
              Columns.Items[1].Title.Caption := 'Descri��o';
              Columns.Items[1].FieldName     := 'NOME';
              Columns.Items[1].Width         := 250;

              // Parametros que exibe o nome fantasia do cliente
              Columns.Items[2].Title.Caption := 'Vlr. Custo';
              Columns.Items[2].FieldName     := 'VLRCUSTOF5';
              Columns.Items[2].Width         := 80;

              // Parametros que exibe o nome fantasia do cliente
              Columns.Items[3].Title.Caption := 'Vlr.Venda';
              Columns.Items[3].FieldName     := 'VALORVENDAA';
              Columns.Items[3].Width         := 80;

              MontaColProdForn5 := False;

            end;//if monta colunas

          end;// with

////////////////////////////////////////////////////////////////////////////////

          with dbgFornecedorProd6 do begin

            Commit(ibProdForn6);
            ibProdForn6.Close;                                                                             ///OR(FORNECEDOR3=''' + IntToStr(IDFornProd3.ID) + ''')OR(FORNECEDOR4=''' + IntToStr(IDFornProd4.ID) + ''')OR(FORNECEDOR5=''' + IntToStr(IDFornProd5.ID) + ''')OR(FORNECEDOR6=''' + IntToStr(IDFornProd6.ID) + ''')OR(FORNECEDOR7=''' + IntToStr(IDFornProd7.ID) + ''')OR(FORNECEDOR8=''' + IntToStr(IDFornProd8.ID) + '''
            ibProdForn6.SQL.Clear;
            ibProdForn6.SQL.Add('SELECT * FROM CADPRODUTOS WHERE(FORNECEDOR6=''' + IntToStr(IDFornProd6.ID) + ''')ORDER BY NOME');
            ibProdForn6.Open;                                                                ///   OR(FORNECEDOR2=''' + IntToStr(IDFornProd2.ID) + ''')

            StringForn6 := IntToStr(ibProdForn6.FieldByName('FORNECEDOR6').AsInteger);

            (ibProdForn6.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
            (ibProdForn6.FieldByName('VLRCUSTOF1') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn6.FieldByName('VLRCUSTOF2') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn6.FieldByName('VLRCUSTOF3') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn6.FieldByName('VLRCUSTOF4') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn6.FieldByName('VLRCUSTOF5') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn6.FieldByName('VLRCUSTOF6') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn6.FieldByName('VLRCUSTOF7') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn6.FieldByName('VLRCUSTOF8') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn6.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

            if StringForn6 > '0' Then begin
            pcFornecedores.ActivePageIndex := 5;
            end;

            if MontaColProdForn6 Then begin

              DataSource := dmModule.dtsProdForn6;
              //determina as colunas a serem montadas 0 codigo fornecedor, 1 razao Social, 2 endere�o numero...
              Columns.Insert(0);
              Columns.Insert(1);
              Columns.Insert(2);
              Columns.Insert(3);

              //Parametros da Coluna que exibe o C�digo do Cadastro
              Columns.Items[0].Title.Caption := 'C�digo de Barras';
              Columns.Items[0].FieldName     := 'CODBARRAS';
              Columns.Items[0].Width         := 97;
              Columns.Items[0].Alignment     := taCenter;

              //Parametros da Coluna que exibe o Nome do cliente.
              Columns.Items[1].Title.Caption := 'Descri��o';
              Columns.Items[1].FieldName     := 'NOME';
              Columns.Items[1].Width         := 250;

              // Parametros que exibe o nome fantasia do cliente
              Columns.Items[2].Title.Caption := 'Vlr. Custo';
              Columns.Items[2].FieldName     := 'VLRCUSTOF6';
              Columns.Items[2].Width         := 80;

              // Parametros que exibe o nome fantasia do cliente
              Columns.Items[3].Title.Caption := 'Vlr.Venda';
              Columns.Items[3].FieldName     := 'VALORVENDAA';
              Columns.Items[3].Width         := 80;

              MontaColProdForn6 := False;

            end;//if monta colunas

          end;// with

////////////////////////////////////////////////////////////////////////////////

          with dbgFornecedorProd7 do begin

            Commit(ibProdForn7);
            ibProdForn7.Close;                                                                             ///OR(FORNECEDOR3=''' + IntToStr(IDFornProd3.ID) + ''')OR(FORNECEDOR4=''' + IntToStr(IDFornProd4.ID) + ''')OR(FORNECEDOR5=''' + IntToStr(IDFornProd5.ID) + ''')OR(FORNECEDOR6=''' + IntToStr(IDFornProd6.ID) + ''')OR(FORNECEDOR7=''' + IntToStr(IDFornProd7.ID) + ''')OR(FORNECEDOR8=''' + IntToStr(IDFornProd8.ID) + '''
            ibProdForn7.SQL.Clear;
            ibProdForn7.SQL.Add('SELECT * FROM CADPRODUTOS WHERE(FORNECEDOR7=''' + IntToStr(IDFornProd7.ID) + ''')ORDER BY NOME');
            ibProdForn7.Open;                                                                ///   OR(FORNECEDOR2=''' + IntToStr(IDFornProd2.ID) + ''')

            StringForn7 := IntToStr(ibProdForn7.FieldByName('FORNECEDOR7').AsInteger);

            (ibProdForn7.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
            (ibProdForn7.FieldByName('VLRCUSTOF1') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn7.FieldByName('VLRCUSTOF2') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn7.FieldByName('VLRCUSTOF3') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn7.FieldByName('VLRCUSTOF4') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn7.FieldByName('VLRCUSTOF5') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn7.FieldByName('VLRCUSTOF6') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn7.FieldByName('VLRCUSTOF7') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn7.FieldByName('VLRCUSTOF8') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn7.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

            if StringForn7 > '0' Then begin
            pcFornecedores.ActivePageIndex := 6;
            end;

            if MontaColProdForn7 Then begin

              DataSource := dmModule.dtsProdForn7;
              //determina as colunas a serem montadas 0 codigo fornecedor, 1 razao Social, 2 endere�o numero...
              Columns.Insert(0);
              Columns.Insert(1);
              Columns.Insert(2);
              Columns.Insert(3);

              //Parametros da Coluna que exibe o C�digo do Cadastro
              Columns.Items[0].Title.Caption := 'C�digo de Barras';
              Columns.Items[0].FieldName     := 'CODBARRAS';
              Columns.Items[0].Width         := 97;
              Columns.Items[0].Alignment     := taCenter;

              //Parametros da Coluna que exibe o Nome do cliente.
              Columns.Items[1].Title.Caption := 'Descri��o';
              Columns.Items[1].FieldName     := 'NOME';
              Columns.Items[1].Width         := 250;

              // Parametros que exibe o nome fantasia do cliente
              Columns.Items[2].Title.Caption := 'Vlr. Custo';
              Columns.Items[2].FieldName     := 'VLRCUSTOF7';
              Columns.Items[2].Width         := 80;

              // Parametros que exibe o nome fantasia do cliente
              Columns.Items[3].Title.Caption := 'Vlr.Venda';
              Columns.Items[3].FieldName     := 'VALORVENDAA';
              Columns.Items[3].Width         := 80;

              MontaColProdForn7 := False;

            end;//if monta colunas

          end;// with

////////////////////////////////////////////////////////////////////////////////

          with dbgFornecedorProd8 do begin

            Commit(ibProdForn8);
            ibProdForn8.Close;                                                                             ///OR(FORNECEDOR3=''' + IntToStr(IDFornProd3.ID) + ''')OR(FORNECEDOR4=''' + IntToStr(IDFornProd4.ID) + ''')OR(FORNECEDOR5=''' + IntToStr(IDFornProd5.ID) + ''')OR(FORNECEDOR6=''' + IntToStr(IDFornProd6.ID) + ''')OR(FORNECEDOR7=''' + IntToStr(IDFornProd7.ID) + ''')OR(FORNECEDOR8=''' + IntToStr(IDFornProd8.ID) + '''
            ibProdForn8.SQL.Clear;
            ibProdForn8.SQL.Add('SELECT * FROM CADPRODUTOS WHERE(FORNECEDOR8=''' + IntToStr(IDFornProd8.ID) + ''')ORDER BY NOME');
            ibProdForn8.Open;                                                                ///   OR(FORNECEDOR2=''' + IntToStr(IDFornProd2.ID) + ''')

            StringForn8 := IntToStr(ibProdForn8.FieldByName('FORNECEDOR8').AsInteger);

            (ibProdForn8.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
            (ibProdForn8.FieldByName('VLRCUSTOF1') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn8.FieldByName('VLRCUSTOF2') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn8.FieldByName('VLRCUSTOF3') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn8.FieldByName('VLRCUSTOF4') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn8.FieldByName('VLRCUSTOF5') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn8.FieldByName('VLRCUSTOF6') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn8.FieldByName('VLRCUSTOF7') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn8.FieldByName('VLRCUSTOF8') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
            (ibProdForn8.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

            if StringForn8 > '0' Then begin
            pcFornecedores.ActivePageIndex := 7;
            end;

            if MontaColProdForn8 Then begin

              DataSource := dmModule.dtsProdForn8;
              //determina as colunas a serem montadas 0 codigo fornecedor, 1 razao Social, 2 endere�o numero...
              Columns.Insert(0);
              Columns.Insert(1);
              Columns.Insert(2);
              Columns.Insert(3);

              //Parametros da Coluna que exibe o C�digo do Cadastro
              Columns.Items[0].Title.Caption := 'C�digo de Barras';
              Columns.Items[0].FieldName     := 'CODBARRAS';
              Columns.Items[0].Width         := 97;
              Columns.Items[0].Alignment     := taCenter;

              //Parametros da Coluna que exibe o Nome do cliente.
              Columns.Items[1].Title.Caption := 'Descri��o';
              Columns.Items[1].FieldName     := 'NOME';
              Columns.Items[1].Width         := 250;

              // Parametros que exibe o nome fantasia do cliente
              Columns.Items[2].Title.Caption := 'Vlr. Custo';
              Columns.Items[2].FieldName     := 'VLRCUSTOF8';
              Columns.Items[2].Width         := 80;

              // Parametros que exibe o nome fantasia do cliente
              Columns.Items[3].Title.Caption := 'Vlr.Venda';
              Columns.Items[3].FieldName     := 'VALORVENDAA';
              Columns.Items[3].Width         := 80;

              MontaColProdForn8 := False;

            end;//if monta colunas

          end;// with   }

////////////////////////////////////////////////////////////////////////////////

    end;

  end;//with


end;

procedure TfrmProd_MPrima.lbl_edtRefEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtRef.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtCodBarraEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtCodBarra.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtNomeProdutoEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtNomeProduto.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtCustoEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtCusto.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtLucroEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtLucro.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtVendaaEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtVendaa.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtVendacEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtVendac.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtQtdeCEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtQtdeC.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtVendadEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtVendad.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtLucroVendaEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtLucroVenda.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtVlrPacoteFardoEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtVlrPacoteFardo.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtQtdePacoteFardoEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtQtdePacoteFardo.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.cboGrupoEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//cboGrupo.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.cboSubgrupoEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//cboSubgrupo.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.cboModalidadeEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//cboModalidade.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtQtdeEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtQtde.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtMarcaEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtMarca.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtQtdeEstoqueEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtQtdeEstoque.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtEstoqueMEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtEstoqueM.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtVlrEstoqueEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtVlrEstoque.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtQtdePratEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtQtdePrat.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtMinimoPratEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtMinimoPrat.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtCodPEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtCodP.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtNumRefEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtNumRef.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtNomeEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtNome.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.cboCSTEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//cboCST.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.cboCSOSNEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//cboCSOSN.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.cboSTEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//cboST.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtClassFiscalEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtClassFiscal.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtAliquotaEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtAliquota.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtNumLoteEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtNumLote.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtICMSEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtICMS.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtIPIEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtIPI.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtPISEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtPIS.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtCOFINSEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtCOFINS.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.cboFornecedoresEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//cboFornecedores.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtVlrCompraF1Enter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtVlrCompraF1.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.cboFornecedores2Enter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//cboFornecedores2.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtVlrCompraF2Enter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtVlrCompraF2.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.cboFornecedores3Enter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//cboFornecedores3.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtVlrCompraF3Enter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtVlrCompraF3.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.cboFornecedores4Enter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//cboFornecedores4.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtVlrCompraF4Enter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtVlrCompraF4.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.cboFornecedores5Enter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//cboFornecedores5.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtVlrCompraF5Enter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtVlrCompraF5.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.cboFornecedores6Enter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//cboFornecedores6.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtVlrCompraF6Enter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtVlrCompraF6.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.cboFornecedores7Enter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//cboFornecedores7.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtVlrCompraF7Enter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtVlrCompraF7.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.cboFornecedores8Enter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//cboFornecedores8.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtVlrCompraF8Enter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtVlrCompraF8.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtNomeProdEquivalenteEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtNomeProdEquivalente.color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.cboFornecedoresProdutosEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;

end;

procedure TfrmProd_MPrima.lbl_edtVlrCompraEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
//lbl_edtVlrCompra.color := $00A0FAF8;
end;  

procedure TfrmProd_MPrima.lbl_edtQtdeBExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
//lbl_edtQtdeB.color := clwindow;
end;

procedure TfrmProd_MPrima.lbl_edtQtdeCExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
//lbl_edtQtdeC.color := clwindow;
end;

procedure TfrmProd_MPrima.cboGrupoExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
//cboGrupo.color := clwindow;
end;

procedure TfrmProd_MPrima.cboSubgrupoExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
//cboSubgrupo.color := clwindow;
end;

procedure TfrmProd_MPrima.cboModalidadeExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
//cboModalidade.color := clwindow;
end;

procedure TfrmProd_MPrima.lbl_edtQtdeExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
//lbl_edtQtde.color := clwindow;
end;

procedure TfrmProd_MPrima.lbl_edtMarcaExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
//lbl_edtMarca.color := clwindow;
end;

procedure TfrmProd_MPrima.lbl_edtEstoqueMExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
//lbl_edtEstoqueM.color := clwindow;
end;

procedure TfrmProd_MPrima.lbl_edtVlrEstoqueExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
//lbl_edtVlrEstoque.color := clwindow;
end;

procedure TfrmProd_MPrima.lbl_edtInfoQPExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
//lbl_edtInfoQP.color := clwindow;
end;

procedure TfrmProd_MPrima.lbl_edtInfoMPExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
//lbl_edtInfoMP.color := clwindow;
end;

procedure TfrmProd_MPrima.lbl_edtNumRefExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
//lbl_edtNumRef.color := clwindow;
end;

procedure TfrmProd_MPrima.lbl_edtNomeExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
//lbl_edtNome.color := clwindow;
end;

procedure TfrmProd_MPrima.cboFornecedoresExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
//cboFornecedores.color := clwindow;
end;

procedure TfrmProd_MPrima.cboFornecedores2Exit(Sender: TObject);
begin
tedit(sender).color := clwindow;
//cboFornecedores2.color := clwindow;
end;

procedure TfrmProd_MPrima.cboFornecedores3Exit(Sender: TObject);
begin
tedit(sender).color := clwindow;
//cboFornecedores3.color := clwindow;
end;

procedure TfrmProd_MPrima.cboFornecedores4Exit(Sender: TObject);
begin
tedit(sender).color := clwindow;
//cboFornecedores4.color := clwindow;
end;

procedure TfrmProd_MPrima.cboFornecedores5Exit(Sender: TObject);
begin
tedit(sender).color := clwindow;
//cboFornecedores5.color := clwindow;
end;

procedure TfrmProd_MPrima.cboFornecedores6Exit(Sender: TObject);
begin
tedit(sender).color := clwindow;
//cboFornecedores6.color := clwindow;
end;

procedure TfrmProd_MPrima.cboFornecedores7Exit(Sender: TObject);
begin
tedit(sender).color := clwindow;
//cboFornecedores7.color := clwindow;
end;

procedure TfrmProd_MPrima.cboFornecedores8Exit(Sender: TObject);
begin
tedit(sender).color := clwindow;
//cboFornecedores8.color := clwindow;
end;

procedure TfrmProd_MPrima.lbl_edtVlrCompraF1Exit(Sender: TObject);
begin
tedit(sender).color := clwindow;
//lbl_edtVlrCompraF1.color := clwindow;
end;

procedure TfrmProd_MPrima.lbl_edtVlrCompraF2Exit(Sender: TObject);
begin
tedit(sender).color := clwindow;
//lbl_edtVlrCompraF2.color := clwindow;
end;

procedure TfrmProd_MPrima.lbl_edtVlrCompraF3Exit(Sender: TObject);
begin
tedit(sender).color := clwindow;
//lbl_edtVlrCompraF3.color := clwindow;
end;

procedure TfrmProd_MPrima.lbl_edtVlrCompraF4Exit(Sender: TObject);
begin
tedit(sender).color := clwindow;
//lbl_edtVlrCompraF4.color := clwindow;
end;

procedure TfrmProd_MPrima.lbl_edtVlrCompraF5Exit(Sender: TObject);
begin
tedit(sender).color := clwindow;
//lbl_edtVlrCompraF5.color := clwindow;
end;

procedure TfrmProd_MPrima.lbl_edtVlrCompraF6Exit(Sender: TObject);
begin
tedit(sender).color := clwindow;
//lbl_edtVlrCompraF6.color := clwindow;
end;

procedure TfrmProd_MPrima.lbl_edtVlrCompraF7Exit(Sender: TObject);
begin
tedit(sender).color := clwindow;
//lbl_edtVlrCompraF7.color := clwindow;
end;

procedure TfrmProd_MPrima.lbl_edtVlrCompraF8Exit(Sender: TObject);
begin
tedit(sender).color := clwindow;
//lbl_edtVlrCompraF8.color := clwindow;
end;

procedure TfrmProd_MPrima.lbl_edtNomeProdEquivalenteExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
//lbl_edtNomeProdEquivalente.color := clwindow;
end;

procedure TfrmProd_MPrima.cboFornecedoresProdutosExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
//cboFornecedoresProdutos.color := clwindow;
end;

procedure TfrmProd_MPrima.lbl_edtVlrCompraExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
//lbl_edtVlrCompra.color := clwindow;
end;

procedure TfrmProd_MPrima.lbl_edtVendabEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.lbl_edtQtdeBEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.cboCSTExit(Sender: TObject);
begin
tedit(sender).color :=clwindow;
//cboCST.color :=clwindow;
end;

procedure TfrmProd_MPrima.cboCSOSNExit(Sender: TObject);
begin
tedit(sender).color :=clwindow;
end;

procedure TfrmProd_MPrima.cboSTExit(Sender: TObject);
begin
tedit(sender).color :=clwindow;
end;

procedure TfrmProd_MPrima.lbl_edtClassFiscalExit(Sender: TObject);
begin
tedit(sender).color :=clwindow;
end;

procedure TfrmProd_MPrima.lbl_edtAliquotaExit(Sender: TObject);
begin
tedit(sender).color :=clwindow;
end;

procedure TfrmProd_MPrima.lbl_edtNumLoteExit(Sender: TObject);
begin
tedit(sender).color :=clwindow;
end;

procedure TfrmProd_MPrima.lbl_edtICMSExit(Sender: TObject);
begin
tedit(sender).color :=clwindow;
end;

procedure TfrmProd_MPrima.lbl_edtIPIExit(Sender: TObject);
begin
tedit(sender).color :=clwindow;
end;

procedure TfrmProd_MPrima.lbl_edtPISExit(Sender: TObject);
begin
tedit(sender).color :=clwindow;
end;

procedure TfrmProd_MPrima.lbl_edtCOFINSExit(Sender: TObject);
begin
tedit(sender).color :=clwindow;
end;

procedure TfrmProd_MPrima.cboGrupoChange(Sender: TObject);
begin

  cboSubgrupo.Enabled := True;

  with dmModule do begin

    if cboGrupo.ItemIndex <> -1 Then begin//SE HOUVER REGISTRO NO COMBO
      ClassGrupoConsulta   := TClasseCombo( cboGrupo.Items.Objects[cboGrupo.ItemIndex] );//ATRIBUI A CLASSE COMBO NA VARIAVEL
      StringGrupo          := ' IDGRUPO=''' + InttoStr( ClassGrupoConsulta.ID ) + '''';//ATRIBUI O ID DO FIELD NA VARIAVEL STRING.

      //TRAZ NO COMBO SOMENTE OS COMBUSTIVEIS DO CADASTRO DE PRODUTOS REFERENTE AO ESTOQUE SELECIONADO.
      ibSubgrupo.Close;
      ibSubgrupo.SQL.Clear;
      ibSubgrupo.SQL.Add('SELECT * FROM TBLSUBGRUPO WHERE ' + StringGrupo);
      ibSubgrupo.Open;

      cboSubgrupo.Clear;// LIMPA O COMBO
      while not ibSubgrupo.Eof do begin
        ClassSubgrupo    := TClasseCombo.Create;
        ClassSubgrupo.ID := ibSubgrupo.FieldByName('IDSUB').AsInteger;
        cboSubgrupo.Items.AddObject(ibSubgrupo.FieldByName('NOMESUBGRUPO').AsString,ClassSubgrupo);
        ibSubgrupo.Next;

      end;{while}

    end;{if}

  end;{with}

end;

procedure TfrmProd_MPrima.cboCFOPEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmProd_MPrima.cboCFOPExit(Sender: TObject);
begin
tedit(sender).color :=clwindow;
end;

end.
