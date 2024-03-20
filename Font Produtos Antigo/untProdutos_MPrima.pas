unit untProdutos_MPrima;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, mxFlatControls, StdCtrls, CheckLst, Grids, DBGrids,
  ComCtrls, ExtCtrls, BmsXPPageControl, BmsXPButton,IBQuery, classComboBox,
  IniFiles, jpeg, DB,axCtrls, Menus, Barcode, 
  BmsXPCheckBox;

type
  TfrmProd_MPrima = class(TForm)
    pcProdutos: TBmsXPPageControl;
    tbsProduto: TTabSheet;
    tbsMatPrima: TTabSheet;
    tbsKitComp: TTabSheet;
    lbl_edtCodigo: TmxFlatEdit;
    Label1: TLabel;
    lbl_edtRef: TmxFlatEdit;
    lbl_Ref: TLabel;
    lbl_edtCodBarra: TmxFlatEdit;
    lbl_CodBarras: TLabel;
    lbl_edtNomeProduto: TmxFlatEdit;
    lbl_DescrProd: TLabel;
    shapeCodBarras: TShape;
    imgCodigoBarras: TImage;
    lbl_edtNumLote: TmxFlatEdit;
    lbl_Lote: TLabel;
    dtpVctoLote: TmxFlatDateTimePicker;
    lbl_VctoLote: TLabel;
    cboFornecedores: TmxFlatComboBox;
    lbl_Fornecedores: TLabel;
    dbgProdutos: TDBGrid;
    ListLocalEstocagem: TmxFlatCheckListBox;
    lbl_LocalEstoq: TLabel;
    shapeFoto: TShape;
    imgProduto: TImage;
    lbl_FotoProd: TLabel;
    Shape7: TShape;
    Shape6: TShape;
    lblAmpliarImagem: TLabel;
    imgAmpliar: TImage;
    lblProcurarImagem: TLabel;
    imgProcurarImagem: TImage;
    lbl_edtCusto: TmxFlatEdit;
    Label2: TLabel;
    lbl_edtVendaa: TmxFlatEdit;
    lbl_Vendaa: TLabel;
    lbl_edtVendab: TmxFlatEdit;
    lbl_Vendab: TLabel;
    lbl_edtVendac: TmxFlatEdit;
    lbl_Vendac: TLabel;
    lbl_edtLucro: TmxFlatEdit;
    lbl_Lucro: TLabel;
    lbl_edtLucroVenda: TmxFlatEdit;
    lbl_LucroVenda: TLabel;
    lbl_edtEstoqgeral: TmxFlatEdit;
    Label3: TLabel;
    lbl_edtEstMin: TmxFlatEdit;
    lbl_edtVlrestoq: TmxFlatEdit;
    lbl_QtdeGeralEstoq: TLabel;
    lbl_QtdeMinima: TLabel;
    lbl_VlrEstoq: TLabel;
    lbl_EntradaEstoq: TLabel;
    lbl_edtQtdeEstoque: TmxFlatEdit;
    lbl_edtEstoqueM: TmxFlatEdit;
    lbl_edtVlrEstoque: TmxFlatEdit;
    lbl_QtdeEntrEstoq: TLabel;
    lbl_MinimoEntrEstoq: TLabel;
    lbl_VlrEntrEstoq: TLabel;
    grpBoxPesquisa: TmxFlatGroupBox;
    lbl_edtCodP: TmxFlatEdit;
    lbl_edtNumRef: TmxFlatEdit;
    lbl_edtNome: TmxFlatEdit;
    lbl_CodPesquisa: TLabel;
    lbl_edtRefPesquisa: TLabel;
    Label4: TLabel;
    sb_ord_nome: TmxFlatSpeedButton;
    cboModalidade: TmxFlatComboBox;
    lbl_Modalidade: TLabel;
    ibeaNovo: TBmsXPButton;
    ibeaAlterar: TBmsXPButton;
    ibeaExcluir: TBmsXPButton;
    ibeaSair: TBmsXPButton;
    opDialogImagem: TOpenDialog;
    popMnuImagem: TPopupMenu;
    Scanner1: TMenuItem;
    mnuAdquirirIMG: TMenuItem;
    N1: TMenuItem;
    mnuSelecionarOrigem: TMenuItem;
    N2: TMenuItem;
    popmnuProcurar: TMenuItem;
    lbl_edtCodigoMP: TmxFlatEdit;
    Label5: TLabel;
    lbl_edtRefMP: TmxFlatEdit;
    Label6: TLabel;
    lbl_edtCodBarrasMP: TmxFlatEdit;
    Label7: TLabel;
    lbl_edtNomeProdMP: TmxFlatEdit;
    Label8: TLabel;
    cboFornecedorMP: TmxFlatComboBox;
    Label9: TLabel;
    Shape1: TShape;
    imgCodBarrasMP: TImage;
    lbl_edtLoteMP: TmxFlatEdit;
    Label10: TLabel;
    dtpVctoLoteMP: TmxFlatDateTimePicker;
    Label11: TLabel;
    lbl_edtFabrMP: TmxFlatEdit;
    Label12: TLabel;
    lbl_edtCustoMP: TmxFlatEdit;
    Label13: TLabel;
    lbl_edtLucroMP: TmxFlatEdit;
    Label14: TLabel;
    lbl_edtVendaaMP: TmxFlatEdit;
    Label15: TLabel;
    lbl_edtVendabMP: TmxFlatEdit;
    Label16: TLabel;
    lbl_edtVendacMP: TmxFlatEdit;
    Label17: TLabel;
    lbl_edtLucroVendaMP: TmxFlatEdit;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    lbl_edtQtdeGeralMP: TmxFlatEdit;
    Label21: TLabel;
    lbl_edtQtdeMinimaMP: TmxFlatEdit;
    Label22: TLabel;
    lbl_edtVlrEstoqueMP: TmxFlatEdit;
    Label23: TLabel;
    lbl_edtQtdeEntrEstMP: TmxFlatEdit;
    Label24: TLabel;
    lbl_edtMinimoEstMP: TmxFlatEdit;
    Label25: TLabel;
    lbl_edtVlrEntrEstMP: TmxFlatEdit;
    Label26: TLabel;
    dbgProdutosMP: TDBGrid;
    ibeaNovoMP: TBmsXPButton;
    ibeaAlterarMP: TBmsXPButton;
    ibeaExcluirMP: TBmsXPButton;
    ibeaSairMP: TBmsXPButton;
    GeraCodigoBarra: TBarcode;
    GeraCBMP: TBarcode;
    ListLocalEstoqMP: TmxFlatCheckListBox;
    Label27: TLabel;
    Label28: TLabel;
    mxFlatGroupBox1: TmxFlatGroupBox;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    mxFlatSpeedButton1: TmxFlatSpeedButton;
    mxFlatEdit1: TmxFlatEdit;
    mxFlatEdit2: TmxFlatEdit;
    mxFlatEdit3: TmxFlatEdit;
    mxFlatBevel1: TmxFlatBevel;
    lbl_edtRefKit: TmxFlatEdit;
    Label32: TLabel;
    lbl_edtNomeKit: TmxFlatEdit;
    lbl_NomeKit: TLabel;
    cboProdKit: TmxFlatComboBox;
    lbl_ProdComp: TLabel;
    ibaSairKit: TBmsXPButton;
    shapeNomeProdKit: TShape;
    shapeCodBarrasKit: TShape;
    imgCodBarrasKit: TImage;
    lbl_ProdutoMP: TLabel;
    dbgKit: TDBGrid;
    ibeaIncluirKit: TBmsXPButton;
    BmsXPButton2: TBmsXPButton;
    BmsXPButton3: TBmsXPButton;
    lbl_edtCustoKit: TmxFlatEdit;
    lbl_edtVendaKit: TmxFlatEdit;
    Label33: TLabel;
    Label34: TLabel;
    lbl_Descricao: TLabel;
    lbl_edtVlrCustoTotal: TmxFlatEdit;
    lbl_TotalCustoKit: TLabel;
    lbl_edtVlrKitTotal: TmxFlatEdit;
    Label36: TLabel;
    lbl_edtCodBarrasKit: TmxFlatEdit;
    lbl_CodBarrasKita: TLabel;
    lbl_CodBKit: TLabel;
    ibeaFinalizar: TBmsXPButton;
    lbl_edtQtde: TmxFlatEdit;
    lbl_Qtde: TLabel;
    cboGrupo: TmxFlatComboBox;
    lbl_Grupo: TLabel;
    cboSubgrupo: TmxFlatComboBox;
    lbl_Subgrupo: TLabel;
    ckVctoLote: TBmsXPCheckBox;
    ckAcrescentarEstoq: TBmsXPCheckBox;
    ckDiminuirEstoque: TBmsXPCheckBox;
    popupEtiquetas: TPopupMenu;
    Pimaco60871: TMenuItem;
    Pimaco60891: TMenuItem;
    Sair1: TMenuItem;
    lbl_edtVendad: TmxFlatEdit;
    lbl_Vendad: TLabel;

    procedure Commit(IBQueryExec : TIBQuery);
    procedure DesabilitaCampos(opcao:Boolean);
  //  procedure TfrmProd_MPrima;
    procedure LimpaCamposKit;
    procedure LimpaCamposMP;
    procedure ExecSELECTKitMP;
    procedure ExecSELECTMP;
    procedure ExecSELECTFornecedorMP;
    procedure ExecSELECTTipoUnidade;
    procedure AlterarEstoqueMP;
    procedure AlteraProdutoMP;
    procedure ExibeDadosMP;
    procedure AlteraProduto;
    procedure AlteraEstoque;
    procedure LimpaCampo;
    procedure ExibeDados;
    procedure ExecSELECTEstoqueMP;
    procedure ExecEstoque;
    procedure ExecSELECTGrupo;
    procedure ExecSELECTSubgrupo;
    procedure ExecSELECTFornecedor;
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
    procedure lbl_edtCodBarrasMPChange(Sender: TObject);
    procedure lbl_edtCodBarrasMPKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtCustoMPExit(Sender: TObject);
    procedure lbl_edtLucroMPExit(Sender: TObject);
    procedure lbl_edtVendaaMPExit(Sender: TObject);
    procedure lbl_edtVendabMPExit(Sender: TObject);
    procedure lbl_edtVendacMPExit(Sender: TObject);
    procedure lbl_edtLucroVendaMPExit(Sender: TObject);
    procedure ibeaNovoMPClick(Sender: TObject);
    procedure pcProdutosChange(Sender: TObject);
    procedure dbgProdutosMPCellClick(Column: TColumn);
    procedure ibeaAlterarMPClick(Sender: TObject);
    procedure ibeaExcluirMPClick(Sender: TObject);
    procedure ibaSairKitClick(Sender: TObject);
    procedure cboProdKitChange(Sender: TObject);
    procedure ibeaIncluirKitClick(Sender: TObject);
    procedure ibeaFinalizarClick(Sender: TObject);
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
    procedure cboGrupoChange(Sender: TObject);
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
  MontaColunas : Boolean; //VARIAVEL USADA PARA DETERMINAR SE A COLUNA JÀ FOI CRIADA OU NÃO
  MontaColunasLocalEst : Boolean;
  MontaColunasMovEst : Boolean;
  
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

  ClassTipodeUnidade : TClasseCombo;

  IDClassTipoUnid : TClasseCombo;
  StringTipoUnid : String;

  StringAltUnidVenda : String;
  ClassAltUnidVenda : TClasseCombo;

//function ConverteCasas(Param : String): String; stdcall ; external 'ConverteMoeda.dll';
//function ConversaoMoeda(Param : String):String;stdcall;external 'ConverteMoeda.dll';

implementation

uses  uBuscaProdutos, funcPosto, untdmModule,
  untRelCodBarrasAD, untPimaco6087, untPimaco6089;


//procedure CarregarScanImage; external 'Data\RunTime\ICETwain.dll' index 1;
function ExtrairDirArquivoSalvo : String ;external 'Data\RunTime\ICETwain.dll' index 2;

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
  lbl_edtVendac.Enabled := opcao;
  lbl_edtVendad.Enabled := opcao;
  lbl_edtLucro.Enabled := opcao;
  lbl_edtEstoqgeral.Enabled := opcao;
  lbl_edtEstMin.Enabled := opcao;
  lbl_edtVlrestoq.Enabled := opcao;
//  lbl_edtLocPrateleira.Enabled := opcao;
 // lbl_edtQtde.Enabled := opcao;
//  lbl_edtVlr.Enabled := opcao;
  ListLocalEstocagem.Enabled := opcao;
//  lbl_edtMls.Enabled := opcao;
  lbl_edtLucroVenda.Enabled := opcao;
  lbl_edtRef.Enabled := opcao;
  cboModalidade.Enabled := opcao;
  lbl_edtQtde.Enabled := opcao;
  

end;

procedure TfrmProd_MPrima.LimpaCamposKit;

begin

cboProdKit.ClearSelection;
lbl_ProdutoMP.Caption := '';
lbl_edtCustoKit.Text := '0,00';
lbl_edtVendaKit.Text := '0,00';

end;

procedure TfrmProd_MPrima.LimpaCamposMP;

begin

lbl_edtCodigoMP.Clear;
lbl_edtRefMP.Clear;
lbl_edtCodBarrasMP.Clear;
lbl_edtNomeProdMP.Clear;
lbl_edtLoteMP.Clear;
lbl_edtFabrMP.Clear;
lbl_edtCustoMP.Text := '0,00';
lbl_edtLucroMP.Clear;
lbl_edtVendaaMP.Text := '0,00';
lbl_edtVendabMP.Text := '0,00';
lbl_edtVendacMP.Text := '0,00';
lbl_edtLucroVendaMP.Clear;
lbl_edtQtdeGeralMP.Clear;
lbl_edtQtdeMinimaMP.Clear;
lbl_edtVlrEstoqueMP.Clear;
lbl_edtQtdeEntrEstMP.Clear;
lbl_edtMinimoEstMP.Clear;
lbl_edtVlrEntrEstMP.Clear;

end;

procedure TfrmProd_MPrima.ExecSELECTKitMP;

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

    cboProdKit.Clear;

    while not ibMatPrima.Eof do begin

      ClassProdMPKit     := TClasseCombo.Create;
      ClassProdMPKit.ID  := ibMatPrima.FieldByName('IDPRODMP').AsInteger;
      cboProdKit.Items.AddObject(ibMatPrima.fIELDbYnAME('NOME').AsString,ClassProdMPKit);
      ibMatPrima.Next;

    end;//while

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
//  lbl_edtEmb.Clear;
//  lbl_edtUn.Clear;
//  lbl_edtUncompra.Clear;
  lbl_edtCusto.Text := '0,00';
  lbl_edtCodBarra.Clear;
  lbl_edtCodBarrasMP.Clear;
  lbl_edtVendaa.Text := '0,00';
  lbl_edtVendab.Text := '0,00';
  lbl_edtVendac.Text := '0,00';
  lbl_edtVendad.Text := '0,00';
  lbl_edtEstoqgeral.Clear;
  lbl_edtEstMin.Clear;
  lbl_edtVlrestoq.Clear;
//  lbl_edtMls.Text := '0';
  lbl_edtQtdeEstoque.Clear;
  lbl_edtEstoqueM.Clear;
  lbl_edtVlrEstoque.Clear;
  lbl_edtLucroVenda.Clear;
  lbl_edtRef.Clear;
  cboModalidade.ClearSelection;
  lbl_edtQtde.Text := '0';
  cboFornecedores.ClearSelection;
  cboGrupo.ClearSelection;
  cboSubgrupo.ClearSelection;
  ckAcrescentarEstoq.Checked := False;
  ckDiminuirEstoque.Checked := False;
  
end;

procedure TfrmProd_MPrima.AlteraProdutoMP;

var

StringLocalEstoque,ValorCusto,ValorVendaa,ValorVendab,ValorVendac : String;
ClassLocal : TClasseCombo;

begin

  with dmModule do begin


    LocalSelecionadoMP := -1; //atribui -1 para a variavel

    for i:=0 to ListLocalEstoqMP.Items.Count -1 do begin//para variavel i iniciar do zero os itens comecam no -1
      if ListLocalEstoqMP.Checked[i] = True Then begin //se o checked for verdadeiro
        LocalSelecionadoMP := i; //atribui o vlr da variavel i checada na variavel local selecionado
      end;{if}
    end;{for}

    If (LocalSelecionadoMP = -1) Then begin
      Application.MessageBox('Desculpe mas é necessário selecionar um Local de Estocagem.','Notificação: Dados Incompletos', MB_OK + MB_ICONWARNING);
    end else begin

      if (LocalSelecionadoMP < 0) Then begin
          StringLocalEstoque      := ' IDLOCAL = '''','
      end else begin
        ClassLocal       := TClasseCombo( ListLocalEstoqMP.Items.Objects[LocalSelecionadoMP] );
        StringLocalEstoque      := ' IDLOCAL=''' + InttoStr( ClassLocal.ID ) + ''','
      end;

      ////////////////////////////////////////////////////////////////////////////////////////////////


      //atribui na variavel substituindo o ponto para vlr em branco
      ValorCusto := StringReplace(lbl_edtCustoMP.Text,ThousandSeparator,'',[rfReplaceAll]);
      //atribui a variavel o valor separando por ponto
      ValorCusto := StringReplace(ValorCusto,DecimalSeparator,'.',[rfReplaceAll]);
      if ValorCusto = '' Then
        ValorCusto := '0';

      ValorVendaa := StringReplace(lbl_edtVendaaMP.Text,ThousandSeparator,'',[rfReplaceAll]);
      ValorVendaa := StringReplace(ValorVendaa,DecimalSeparator,'.',[rfReplaceAll]);
      if ValorVendaa = '' Then
        ValorVendaa := '0';

      ValorVendab := StringReplace(lbl_edtVendabMP.Text,ThousandSeparator,'',[rfReplaceAll]);
      ValorVendab := StringReplace(ValorVendab,DecimalSeparator,'.',[rfReplaceAll]);
      if ValorVendab = '' Then
        ValorVendab := '0';

      ValorVendac := StringReplace(lbl_edtVendacMP.Text,ThousandSeparator,'',[rfReplaceAll]);
      ValorVendac := StringReplace(ValorVendac,DecimalSeparator,'.',[rfReplaceAll]);
      if ValorVendac = '' Then
        ValorVendac := '0';



        //GRAVA AS ALTERACOES NA TABELA DE MATERIA PRIMA.
        ibMatPrima.Close;
        ibMatPrima.SQL.Clear;
        ibMatPrima.SQL.Add('UPDATE TBLMATERIAPRIMA SET '
        + ' NOME = ''' + lbl_edtNomeProdMP.Text + ''','
        + ' CODBARRASMP = ''' + lbl_edtCodBarrasMP.Text + ''','
        + ' VLRCUSTO = ''' + ValorCusto + ''','
        + ' VLRVENDA = ''' + ValorVendaa + ''','
        + ' VLRVENDAB = ''' + ValorVendab + ''','
        + ' VLRVENDAC = ''' + ValorVendac + ''' WHERE IDPRODMP=''' + InttoStr(IDProdutoMP) + '''');
        ibMatPrima.ExecSQL;

        Commit(ibMatPrima);

       end; {if}

//    end;{if}

  end;{with}

end;

procedure TfrmProd_MPrima.AlterarEstoqueMP;

var
QtdeGeral,TotalQtdeGeralAlt,Minimo,TotalMinimoAlt,VlrGeral,VlrGeralAlt, NovoValor : Real;
TotalGeralQtde, TotalMinimo, TotalVlrEstoque, VlrTotalCusto : String;
VlrCusto,TotalCusto : Real;
QtdeProdEstoqueE,ValorTotalE, VlrCustoProd : String;

begin

  with dmModule do begin

    if lbl_edtNomeProdMP.Text <> '' Then begin

      ibEntrProdEstoque.Close;
      ibEntrProdEstoque.SQL.Clear;
      ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.*, CADPRODUTOS.NOME, LOCALESTOCAGEM.NOME As LocalEstoque'
      + ' FROM TBLENTRADAESTOQUEPROD LEFT OUTER JOIN CADPRODUTOS '
      + ' ON TBLENTRADAESTOQUEPROD.IDPROD = CADPRODUTOS.IDPROD LEFT OUTER JOIN LOCALESTOCAGEM '
      + ' ON CADPRODUTOS.IDLOCAL = LOCALESTOCAGEM.IDESTOQUE '
      + ' WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + IntToStr(IDProdutoMP) + '''');
      ibEntrProdEstoque.Open;

      FormatFloat(CasasDecimais('Produtos'),ibEntrProdEstoque.FieldByName('QUANTIDADE').AsInteger);

      //rotina para somar a qtde de entrada no estoque

      if (lbl_edtQtdeEntrEstMP.Text <> '') or (lbl_edtVendaaMP.Text <> '') Then begin

        QtdeGeral := StrToFloat(StringReplace(FloatToStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

        if lbl_edtQtdeEntrEstMP.Text = '' Then begin

        TotalQtdeGeralAlt := 0;

        end else begin

        TotalQtdeGeralAlt := StrToFloat(StringReplace(lbl_edtQtdeEntrEstMP.Text,ThousandSeparator,'',[rfReplaceAll]));

        end;

        QtdeGeral := QtdeGeral + TotalQtdeGeralAlt;

        TotalGeralQtde := StringReplace(FloatToStr(QtdeGeral),ThousandSeparator,'',[rfReplaceAll]);
        TotalGeralQtde := StringReplace(TotalGeralQtde,DecimalSeparator,'.',[rfReplaceAll]);

      /////////////////////////////////////////////////////////////////////////

        //rotina para calculo do vlr total do estoque
        NovoValor   := StrToFloat(StringReplace(lbl_edtVendaaMP.Text,ThousandSeparator,'',[rfReplaceAll]));
        VlrGeral    := NovoValor * QtdeGeral;

        TotalVlrEstoque := StringReplace(FloatToStr(VlrGeral),ThousandSeparator,'',[rfReplaceAll]);
        TotalVlrEstoque := StringReplace(TotalVlrEstoque,DecimalSeparator,'.',[rfReplaceAll]);



      //////////////////////////////////////////////////////////////////////////

        // rotina para somar o custo do produto no estoque
        TotalCusto := StrToFloat(StringReplace(lbl_edtCustoMP.Text,ThousandSeparator,'',[rfReplaceAll]));
        VlrCusto   := TotalCusto * QtdeGeral;

        VlrTotalCusto := StringReplace(FloatToStr(VlrCusto),ThousandSeparator,'',[rfReplaceAll]);
        VlrTotalCusto := StringReplace(VlrTotalCusto,DecimalSeparator,'.',[rfReplaceAll]);

      //////////////////////////////////////////////////////////////////////////

        //rotina para substituir o estoque minimo
     //  if lbl_edtEstoqueM.Text <> '' Then begin

          TotalMinimo := StringReplace(lbl_edtMinimoEstMP.Text,ThousandSeparator,'',[rfReplaceAll]);
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
          + 'VLRTOTAL = ''' + TotalVlrEstoque + ''' WHERE IDPROD = ''' + IntToStr(IDProdutoMP) + '''');
          ibEntrProdEstoque.ExecSQL;
          Commit(ibEntrProdEstoque);

        end else begin

          ValorTotalE := StringReplace(lbl_edtVlrEntrEstMP.Text,ThousandSeparator,'',[rfReplaceAll]);
          ValorTotalE := StringReplace(ValorTotalE,DecimalSeparator,'.',[rfReplaceAll]);
          if ValorTotalE = '' Then
          ValorTotalE := '0';

          QtdeProdEstoqueE := StringReplace(lbl_edtQtdeEntrEstMP.Text,ThousandSeparator,'',[rfReplaceAll]);
          QtdeProdEstoqueE := StringReplace(QtdeProdEstoqueE,DecimalSeparator,'.',[rfReplaceAll]);
          if QtdeProdEstoqueE = '' Then
          QtdeProdEstoqueE := '0';

          TotalMinimo := StringReplace(lbl_edtMinimoEstMP.Text,ThousandSeparator,'',[rfReplaceAll]);
          TotalMinimo := StringReplace(TotalMinimo,DecimalSeparator,'.',[rfReplaceAll]);
          if TotalMinimo = '' Then
          TotalMinimo := '0';

          VlrCustoProd := StringReplace(lbl_edtCustoMP.Text,ThousandSeparator,'',[rfReplaceAll]);
          VlrCustoProd := StringReplace(VlrCustoProd,DecimalSeparator,'.',[rfReplaceAll]);
          if VlrCustoProd = '' Then
          VlrCustoProd := '0';


          //////////////////////////////////////////////////////////////////////////////////////////////////

          LocalSelecionadoMP := -1; //atribui -1 para a variavel

          for i:=0 to ListLocalEstoqMP.Items.Count -1 do begin//para variavel i iniciar do zero os itens comecam no -1
            if ListLocalEstoqMP.Checked[i] = True Then begin //se o checked for verdadeiro
              LocalSelecionadoMP := i; //atribui o vlr da variavel i checada na variavel local selecionado
            end;{if}
          end;{for}

          If (LocalSelecionadoMP = -1) Then begin

             Application.MessageBox('Desculpe mas é necessário selecionar um Local de Estocagem.','Notificação: Dados Incompletos', MB_OK + MB_ICONWARNING);

          end else begin

            if (LocalSelecionadoMP < 0) Then begin
                StringLocalEstoque      := ' '''','
            end else begin
              ClassLocal              := TClasseCombo( ListLocalEstoqMP.Items.Objects[LocalSelecionadoMP] );
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
          + ' ''' + IntToStr(IDProdutoMP) + ''','
          + ' ''' + ValorTotalE + ''','
          + StringLocalEstoque
          + ' ''' + VlrCustoProd + ''','
          + ' ''' + lbl_edtCodbarra.Text + ''')');
          ibEntrProdEstoque.ExecSQL;

          Commit(ibEntrProdEstoque);

        end;//if record count

       /////////////////////////////////////////////////////////////////////////

      end;//if

    end;//if lbl nomeprod

  lbl_edtQtdeEntrEstMP.Clear;
  lbl_edtMinimoEstMP.Clear;
  lbl_edtVlrEntrEstMP.Clear;

  end;//with

end;


procedure TfrmProd_MPrima.ExibeDados;//PROCEDIMENTO PARA EXIBIR OS DADOS DO PRODUTO.
var
  i : Integer;

  OleGraphic: TOleGraphic;
  fs: TFileStream;
  DataLote : TDate;
  VctoLote : String;
begin

  with dmModule do begin

//    (ibProdutos.FieldByName('IDPROD') as TIntegerField).DisplayFormat := '0000000000';
    IDProd := ibProdutos.FieldByName('IDPROD').AsInteger;
    lbl_edtCodigo.Text     := FormatFloat('0',ibProdutos.FieldByName('IDPROD').AsInteger);


    //TRAZ O GRUPO DO PRODUTO
    for i:=0 to cboGrupo.Items.Count -1 do begin
      if TClasseCombo( cboGrupo.Items.Objects[i]).ID = ibProdutos.FieldByName('IDGRUPO').AsInteger then begin
        cboGrupo.ItemIndex:= i;
        Break;
      end else begin
        cboGrupo.ClearSelection;
      end;
    end;

    cboSubgrupo.ClearSelection;
    //TRAZ O SUBGRUPO DO PRODUTO
    for i:=0 to cboSubgrupo.Items.Count -1 do begin
      if TClasseCombo( cboSubgrupo.Items.Objects[i]).ID = ibProdutos.FieldByName('IDSUBGRUPO').AsInteger then begin
        cboSubgrupo.ItemIndex:= i;
        Break;
      end else begin
        cboSubgrupo.ClearSelection;
      end;
    end;


    cboFornecedores.ClearSelection;
    //TRAZ O FORNECEDOR DO PRODUTO
    for i:=0 to cboFornecedores.Items.Count -1 do begin
      if TClasseCombo( cboFornecedores.Items.Objects[i]).ID = ibProdutos.FieldByName('FORNECEDOR').AsInteger then begin
        cboFornecedores.ItemIndex:= i;
        Break;
      end else begin
        cboFornecedores.ClearSelection;
      end;
    end;

    for i:=0 to cboModalidade.Items.Count -1 do begin
      if TClasseCombo( cboModalidade.Items.Objects[i]).ID = ibProdutos.FieldByName('IDUNIDVENDA').AsInteger then begin
        cboModalidade.ItemIndex:= i;
        Break;
      end else begin
        cboModalidade.ClearSelection;
      end;
    end;


    //LIMPA O CAMPO
    for i:=0 to ListLocalEstocagem.Items.Count -1 do begin
        ListLocalEstocagem.Checked[i]:= False;
    end;
      //TRAZ O ESTOQUE DO PRODUTO
    for i:=0 to ListLocalEstocagem.Items.Count -1 do begin
      if TClasseCombo( ListLocalEstocagem.Items.Objects[i]).ID = ibProdutos.FieldByName('IDLOCAL').AsInteger then begin
        ListLocalEstocagem.Checked[i]:= True;
        Break;
      end else begin
        ListLocalEstocagem.ClearSelection;
      end;
    end;

    lbl_edtNomeProduto.Text         := ibProdutos.FieldByName('NOME').AsString;
    lbl_edtRef.Text                 := ibProdutos.FieldByName('REF').AsString;
    lbl_edtCusto.Text               := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORCUSTO').AsFloat);
    lbl_edtCodBarra.Text            := ibProdutos.FieldByName('CODBARRAS').AsString;
    lbl_edtCodigo.Text              := IntToStr(ibProdutos.FieldByName('IDPROD').AsInteger);
    lbl_edtVendaa.Text              := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);
    lbl_edtVendab.Text              := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAB').AsFloat);
    lbl_edtVendac.Text              := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAC').AsFloat);
    lbl_edtVendad.Text              := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAD').AsFloat);
    lbl_edtLucro.Text               := ibProdutos.FieldByName('LUCRO').AsString;
    lbl_edtNumLote.Text             := ibProdutos.FieldByName('LOTE').AsString;

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

    //ROTINA DE EXIBIÇÃO DA IMAGEM DO PRODUTO
    if lbl_edtNomeProduto.Text <> '' Then begin
      imgAmpliar.Enabled        := True;
      lblAmpliarImagem.Enabled  := True;
      //HABILITA O BOTAO PROCURAR IMAGEM
      imgProcurarImagem.Enabled := True;
      lblProcurarImagem.Enabled := True;
    end else begin //CASO NÃO TENHA UM CÓDIGO DE BARRAS DO PRODUTO
      imgAmpliar.Enabled        := False;
      lblAmpliarImagem.Enabled  := False;
      //DESABILITE O BOTAO PROCURAR IMAGEM
      imgProcurarImagem.Enabled := False;
      lblProcurarImagem.Enabled := False;
    end;

    //ROTINA PARA EXIBIR A IMAGEM DO PRODUTO    
    if Not FileExists(ExtractFilePath(Application.ExeName) + 'Data\RunTime\ProdImagens\' + lbl_edtNomeProduto.Text + '.jpg') Then begin

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


    end;
        
    //MOSTRA OUTRAS OPÇÔES NO CADASTRO
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
    lbl_edtVlrestoq.Text    := FormatFloat(CasasDecimais('Combustiveis'),ibEntrProdEstoque.FieldByName('VLRTOTAL').AsFloat);
    lbl_edtEstMin.Text      := ibEntrProdEstoque.FieldByName('ESTOQUEMIN').AsString; 



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

      lblEstadoEstoque.Caption          := 'INDISPONÍVEL';
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

procedure TfrmProd_MPrima.ExibeDadosMP;

var

i : Integer;

begin

  with dmModule do begin

//    (ibMatPrima.FieldByName('IDPRODMP') as TIntegerField).DisplayFormat := '0000000000';
    IDProdutoMP := ibMatPrima.FieldByName('IDPRODMP').AsInteger;
//    lbl_edtCodigo.Text     := FormatFloat('0000000000',ibMatPrima.FieldByName('IDPRODMP').AsInteger);

    //LIMPA O CAMPO
    for i:=0 to ListLocalEstoqMP.Items.Count -1 do begin
        ListLocalEstoqMP.Checked[i]:= False;
    end;
      //TRAZ O ESTOQUE DO PRODUTO
    for i:=0 to ListLocalEstoqMP.Items.Count -1 do begin
      if TClasseCombo( ListLocalEstoqMP.Items.Objects[i]).ID = ibMatPrima.FieldByName('IDLOCAL').AsInteger then begin
        ListLocalEstoqMP.Checked[i]:= True;
        Break;
      end else begin
        ListLocalEstoqMP.ClearSelection;
      end;
    end;

    //TRAZ O FORNECEDOR DO PRODUTO
    for i:=0 to cboFornecedorMP.Items.Count -1 do begin
      if TClasseCombo( cboFornecedorMP.Items.Objects[i]).ID = ibMatPrima.FieldByName('IDFORNECEDOR').AsInteger then begin
        cboFornecedorMP.ItemIndex:= i;
        Break;
      end else begin
        cboFornecedorMP.ClearSelection;
      end;
    end;

    lbl_edtNomeProdMP.Text            := ibMatPrima.FieldByName('NOME').AsString;
    lbl_edtCustoMP.Text               := FormatFloat(CasasDecimais('Produtos'),ibMatPrima.FieldByName('VLRCUSTO').AsFloat);
    lbl_edtCodBarrasMP.Text           := ibMatPrima.FieldByName('CODBARRASMP').AsString;
    lbl_edtCodigoMP.Text              := IntToStr(ibMatPrima.FieldByName('IDPRODMP').AsInteger);
    lbl_edtVendaaMP.Text              := FormatFloat(CasasDecimais('Produtos'),ibMatPrima.FieldByName('VLRVENDA').AsFloat);
    lbl_edtVendabMP.Text              := FormatFloat(CasasDecimais('Produtos'),ibMatPrima.FieldByName('VLRVENDAB').AsFloat);
    lbl_edtVendacMP.Text              := FormatFloat(CasasDecimais('Produtos'),ibMatPrima.FieldByName('VLRVENDAC').AsFloat);
    lbl_edtLucroVendaMP.Text               := ibMatPrima.FieldByName('LUCRO').AsString;
    lbl_edtFabrMP.Text                := ibMatPrima.FieldByName('FABRFORN').AsString;
   // lbl_edtEstoqgeral.Text          := IntToStr( ibProdutos.FieldByName('ESTGERAL').AsInteger );
    //lbl_edtEstMin.Text              := IntToStr( ibProdutos.FieldByName('ESTMIN').AsInteger );
    //lbl_edtVlrestoq.Text            := ibProdutos.FieldByName('TOTALEST').AsString;
    //lbl_edtEstoqgeral.Text          :=  FormatFloat('###00,0',ibProdutos.FieldByName('QtdeEstoque').AsFloat);
    //lbl_edtEstMin.Text              :=  FormatFloat('0',ibProdutos.FieldByName('ESTOQUEMIN').AsFloat);

    ///////////////////////////////////////////////////////////////////////////////////////

    //ROTINA DE EXIBIÇÃO DA IMAGEM DO PRODUTO
  {  if lbl_edtCodBarra.Text <> '' Then begin
      imgAmpliar.Enabled        := True;
      lblAmpliarImagem.Enabled  := True;
      //HABILITA O BOTAO PROCURAR IMAGEM
      imgProcurarImagem.Enabled := True;
      lblProcurarImagem.Enabled := True;
    end else begin //CASO NÃO TENHA UM CÓDIGO DE BARRAS DO PRODUTO
      imgAmpliar.Enabled        := False;
      lblAmpliarImagem.Enabled  := False;
      //DESABILITE O BOTAO PROCURAR IMAGEM
      imgProcurarImagem.Enabled := False;
      lblProcurarImagem.Enabled := False;
    end;

    //ROTINA PARA EXIBIR A IMAGEM DO PRODUTO    
    if Not FileExists(ExtractFilePath(Application.ExeName) + 'Data\RunTime\ProdImagens\' + lbl_edtCodBarra.Text + '.jpg') Then begin

      imgProduto.Picture := Nil; //LIMPA A IMAGEM
      ImagemProduto := '';

    end else begin

      try
        OleGraphic := TOleGraphic.Create;
        fs         := TFileStream.Create(ExtractFilePath(Application.ExeName) //EXIBE A IMAGEM DO PRODUTO
                                        + 'Data\RunTime\ProdImagens\' + lbl_edtCodBarra.Text + '.jpg', fmOpenRead or fmSharedenyNone);
        OleGraphic.LoadFromStream(fs);
        imgProduto.Picture.Assign(OleGraphic);

        //imgProduto.Picture.LoadFromFile();

        ImagemProduto := ExtractFilePath(Application.ExeName) //EXIBE A IMAGEM DO PRODUTO
                                        + 'Data\RunTime\ProdImagens\' + lbl_edtCodBarra.Text + '.jpg';

      finally
        fs.Free;
        OleGraphic.Free
      end;


    end;  }
/////////////////////////////////////////////////////////////////////////////////////////////


  {  ibEntrProdEstoque.Close;
    ibEntrProdEstoque.SQL.Clear;
    ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.*, TBLMATERIAPRIMA.NOME, LOCALESTOCAGEM.NOME As LocalEstoque'
    + ' FROM TBLENTRADAESTOQUEPROD LEFT OUTER JOIN TBLMATERIAPRIMA '
    + ' ON TBLENTRADAESTOQUEPROD.IDPRODMP = TBLMATERIAPRIMA.IDPRODMP LEFT OUTER JOIN LOCALESTOCAGEM '
    + ' ON TBLMATERIAPRIMA.IDLOCAL = LOCALESTOCAGEM.IDESTOQUE '
    + ' WHERE TBLENTRADAESTOQUEPROD.IDPRODMP=''' + IntToStr(IDProd) + '''');
    ibEntrProdEstoque.Open;

    FormatFloat(CasasDecimais('Produtos'),ibEntrProdEstoque.FieldByName('QUANTIDADE').AsInteger);

    lbl_edtEstoqgeral.Text  := FormatFloat(CasasDecimais('Produtos'),ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat);
    lbl_edtVlrestoq.Text    := FormatFloat(CasasDecimais('Combustiveis'),ibEntrProdEstoque.FieldByName('VLRTOTAL').AsFloat);
    lbl_edtEstMin.Text      := ibEntrProdEstoque.FieldByName('ESTOQUEMIN').AsString;   }

  end; {with}


end;

procedure TfrmProd_MPrima.ExecSELECTFornecedorMP;

begin

  with dmModule do begin


    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Fornecedores''');
    ibClassificacao.Open;
    IDClassFornMP := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO FORNECEDOR NA VARIAVEL.

    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE IDCLASS=' + IntToStr(IDClassFornMP));//('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + InttoStr(IDClass) + ''' ORDER BY NOME');
    ibCadastro.Open;

    cboFornecedorMP.Clear; //LIMPA O COMBOBOX
    while not ibCadastro.Eof do begin
      IDClassSELECTFornMP    := TClasseCombo.Create;
      IDClassSELECTFornMP.ID  := ibCadastro.FieldByName('IDCAD').AsInteger;
      cboFornecedorMP.Items.AddObject(ibCadastro.FieldByName('NOME').AsString,IDClassSELECTFornMP);
      ibCadastro.Next;
    end;

  end;//with

end;

procedure TfrmProd_MPrima.ExecSELECTEstoqueMP;

begin

  with dmModule do begin

    ibEstoque.Close;
    ibEstoque.SQL.Clear;
    ibEstoque.SQL.Add('SELECT * FROM LOCALESTOCAGEM');
    ibEstoque.Open;

    ListLocalEstoqMP.Clear;
    while not ibEstoque.Eof do begin
      ClassNomeEstMP    := TClasseCombo.Create;
      ClassNomeEstMP.ID  := ibEstoque.FieldByName('IDESTOQUE').AsInteger;
      ListLocalEstoqMP.Items.AddObject(ibEstoque.FieldByName('NOME').AsString,ClassNomeEstMP);
      ibEstoque.Next;
    end; {while}

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
    IDClassForn := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO FORNECEDOR NA VARIAVEL.

    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE IDCLASS=' + IntToStr(IDClassForn));//('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + InttoStr(IDClass) + ''' ORDER BY NOME');
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

procedure TfrmProd_MPrima.ExecSELECT;
begin
  with dmModule do begin

   { ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Produtos''');
    ibClassificacao.Open;
    IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger;} // ATRIBUI A IDENTIFICAÇÃO DO FORNECEDOR NA VARIAVEL.

    Commit(ibProdutos);
    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS ORDER BY NOME');
    ibProdutos.Open;  


   //BUSCA TODOS OS PRODUTOS QUE ESTEJAM NA CLASSIFICAÇÃO DE PRODUTOS
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
    + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD ORDER BY CADPRODUTOS.NOME');
    ibProdutos.Open; }

  //  (ibProdutos.FieldByName('IDPROD') as TIntegerField).DisplayFormat           := '0000000000';
    (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat         := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutos.FieldByName('VLRPROM') as TFloatField).DisplayFormat            := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutos.FieldByName('QTDE') as TFloatField).DisplayFormat               := '0'; //CRIA UMA MASCARA PARA O CAMPO

  end;
end;

procedure TfrmProd_MPrima.AlteraEstoque;

var
QtdeGeral,TotalQtdeGeralAlt,Minimo,TotalMinimoAlt,VlrGeral,VlrGeralAlt, NovoValor : Real;
TotalGeralQtde, TotalMinimo, TotalVlrEstoque, VlrTotalCusto : String;
VlrCusto,TotalCusto : Real;
QtdeProdEstoqueE,ValorTotalE, VlrCustoProd : String;
VlrEstoque,QtdeEstoque,EstoqueMin : String;
ConfirmaAltEstoque : Integer;

begin

  with dmModule do begin

    if lbl_edtNomeProduto.Text <> '' Then begin

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
          TotalCusto := StrToFloat(StringReplace(lbl_edtCusto.Text,ThousandSeparator,'',[rfReplaceAll]));
          VlrCusto   := TotalCusto * QtdeGeral;

          VlrTotalCusto := StringReplace(FloatToStr(VlrCusto),ThousandSeparator,'',[rfReplaceAll]);
          VlrTotalCusto := StringReplace(VlrTotalCusto,DecimalSeparator,'.',[rfReplaceAll]);

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

               Application.MessageBox('Desculpe mas é necessário selecionar um Local de Estocagem.','Notificação: Dados Incompletos', MB_OK + MB_ICONWARNING);

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

            Commit(ibEntrProdEstoque);

          end;//if record count

         /////////////////////////////////////////////////////////////////////////

        end;//if

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

        ibEntrProdEstoque.Close;
        ibEntrProdEstoque.SQL.Clear;
        ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
        + 'QUANTIDADE = ''' + QtdeEstoque + ''','
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

        ConfirmaAltEstoque := Application.MessageBox('Deseja atualizar o estoque com o novo valor de venda?','Atualização do Estoque',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

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

  lbl_edtQtdeEstoque.Clear;
  lbl_edtEstoqueM.Clear;
  lbl_edtVlrEstoque.Clear;
  ckDiminuirEstoque.Checked := False;
  ckAcrescentarEstoq.Checked := False;

  end;//with

end;

procedure TfrmProd_MPrima.AlteraProduto;

var

  AltValorMetro,AltMetroProd,Qtde : String;
  AnoVC,MesVC,DiaVC : Word;
  DataPagtoVC,DataInicialVC, DataFinalVC : TDate;
  DataEmissaoVC, TxVisaCredito : String;
  ConfirmaVctoLote : String;
begin

// Erro := False;

  with dmModule do begin


    ///////////////////////////////////////////////////////////////////////////////
   If cboGrupo.ItemIndex = -1 Then begin

      StringGrupo       := ' IDGRUPO = ''0'',';

    end else begin

      ClassGrupo         := TClasseCombo( cboGrupo.Items.Objects[cboGrupo.ItemIndex] );
      StringGrupo        := ' IDGRUPO = ''' + InttoStr( ClassGrupo.ID ) + ''',';

    end;
    //////////////////////////////////////////////////////////////////////////////

    If cboSubgrupo.ItemIndex = -1 Then begin

      StringSubGrupo    := ' IDSUBGRUPO = ''0'',';

    end else begin

      ClassSubgrupo      := TClasseCombo( cboSubgrupo.Items.Objects[cboSubgrupo.ItemIndex] );
      StringSubGrupo     := ' IDSUBGRUPO = ''' + InttoStr( ClassSubgrupo.ID ) + ''',';

    end;
    ////////////////////////////////////////////////////////////////////////////////////////////////

    //sem a variavel ''erro'' gra va as alteracoes permitindo o campo estar em branco.
    If cboFornecedores.ItemIndex = -1 Then begin

      StringForn    := ' FORNECEDOR=''0'',';

    end else begin

      ClassForn      := TClasseCombo( cboFornecedores.Items.Objects[cboFornecedores.ItemIndex] );
      StringForn     := ' FORNECEDOR=''' + InttoStr( ClassForn.ID ) + ''',';

    end;

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
      Application.MessageBox('Desculpe mas é necessário selecionar um Local de Estocagem.','Notificação: Dados Incompletos', MB_OK + MB_ICONWARNING);
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

      ValorVendac := StringReplace(lbl_edtVendac.Text,ThousandSeparator,'',[rfReplaceAll]);
      ValorVendac := StringReplace(ValorVendac,DecimalSeparator,'.',[rfReplaceAll]);
      if ValorVendac = '' Then
        ValorVendac := '0';

      ValorVendad := StringReplace(lbl_edtVendad.Text,ThousandSeparator,'',[rfReplaceAll]);
      ValorVendad := StringReplace(ValorVendad,DecimalSeparator,'.',[rfReplaceAll]);
      if ValorVendad = '' Then
        ValorVendad := '0';


      Qtde := StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]);
      Qtde := StringReplace(Qtde,DecimalSeparator,'.',[rfReplaceAll]);
      if Qtde = '' Then
         Qtde := '0';


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
          + ' NOMEUNIDVENDA = ''' + cboModalidade.Text + ''','
          + ' LOTE = ''' + lbl_edtNumLote.Text + ''','
          + ' VCTOLOTE = ''' + FormatDateTime('mm-dd-yyyy',dtpVctoLote.Date) + ''','
          + ' CONFIRMAVCTOLOTE = ''' + ConfirmaVctoLote + ''','
          + ' DATAAVISOLOTE = ''' + FormatDateTime('mm-dd-yyyy',DataPagtoVC) + ''','
          + ' DATAALTERACAO = ''' + FormatDateTime('mm-dd-yyyy',Now) + ''','
          + ' LUCRO = ''' + lbl_edtLucro.Text + ''','
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
          + ' NOMEUNIDVENDA = ''' + cboModalidade.Text + ''','
          + ' LOTE = ''' + lbl_edtNumLote.Text + ''','
          + ' CONFIRMAVCTOLOTE = ''' + ConfirmaVctoLote + ''','
          + ' LUCRO = ''' + lbl_edtLucro.Text + ''','
          + ' DATAALTERACAO = ''' + FormatDateTime('mm-dd-yyyy',Now) + ''','
          + ' QTDE = ''' + lbl_edtQtde.Text + ''' WHERE IDPROD=''' + InttoStr(IDProd) + '''');
          ibProdutos.ExecSQL;
          Commit(ibProdutos);

       end;//if ckvctolote

      end; {if recordcount}

    end;{if}

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

      Application.MessageBox('Para cadastar um produto é necessário ter o local de estoque, por favor crie o local de estoque na tabela local de estocagem!','Notificação:Produto não especificado',MB_OK+MB_ICONINFORMATION);

    end else begin

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
          DesabilitaCampos(False);
          lbl_edtQtdeEstoque.Enabled := False;
          lbl_edtEstoqueM.Enabled := False;
          lbl_edtVlrEstoque.Enabled := False;

          LimpaCampo;

        end;{if}

      end else begin

        ////////////////////////////////////////////////////////////////////////////////

                               //   and (ibProdutos.FieldByName('CODBARRAS').AsString <> lbl_edtCodBarra.Text)

        if (ibeaNovo.Caption = '&Gravar') Then begin


      // if lbl_edtNomeProduto.Text <> '' Then begin

         { ibProdutos.Close;
          ibProdutos.SQL.Clear;
          ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE NOME=''' + lbl_edtNomeProduto.Text + '''');// and CODBARRAS=''' + lbl_edtCodBarra.Text + '''');
          ibProdutos.Open; }

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
          + 'CADPRODUTOS.QTDEPROM,CADPRODUTOS.VLRPROM,CADPRODUTOS.IDGRUPO,CADPRODUTOS.IDSUBGRUPO,'
          + 'TBLENTRADAESTOQUEPROD.ESTOQUEMIN,TBLENTRADAESTOQUEPROD.QUANTIDADE As QtdeEstoque,'
          + 'CADPRODUTOS.VALORMETRO,CADPRODUTOS.MTS,CADPRODUTOS.IDGRUPO,CADPRODUTOS.IDSUBGRUPO,'
          + 'LOCALESTOCAGEM.NOME As Estoque FROM CADPRODUTOS '
          + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE '
          + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD ORDER BY CADPRODUTOS.NOME');
          ibProdutos.Open;


          if (lbl_edtNomeProduto.Text = ibProdutos.FieldByName('NOME').AsString) Then begin }

         //   Application.MessageBox('Atenção o nome já existe!!','Notificacao:Registro existente',+ MB_OK+MB_ICONWARNING);



      {  if (lbl_edtCodBarra.Text = ibProdutos.FieldByName('CODBARRAS').AsString) Then begin

            Application.MessageBox('Atenção o código já existe!!','Notificacao:Registro existente',+ MB_OK+MB_ICONWARNING);
          end; }

            //SELECT PARA TRAZER O CODIGO EM ORDEM CRESCENTE.
         {   ibProdutos.Close;
            ibProdutos.SQL.Clear;
            ibProdutos.SQL.Add('SELECT CADPRODUTOS.CODBARRAS,CADPRODUTOS.NOME,CADPRODUTOS.MLS,'
            + 'CADPRODUTOS.VALORCUSTO, CADPRODUTOS.VALORVENDAA,CADPRODUTOS.IDPROD,CADPRODUTOS.TIPOPROD,'
            + 'CADPRODUTOS.FORNECEDOR,CADPRODUTOS.VALORVENDAB,CADPRODUTOS.VALORVENDAC,'
            + 'CADPRODUTOS.IDGRUPO,CADPRODUTOS.IDSUBGRUPO,CADPRODUTOS.IDLOCAL,CADPRODUTOS.LUCRO,'
            + 'CADPRODUTOS.COMISSAO,CADPRODUTOS.ECF,CADPRODUTOS.LOCALIZACAO,CADPRODUTOS.LUCROVENDA,'
            + 'CADPRODUTOS.QTDEEMBALAGEM,CADPRODUTOS.UNIDADE,CADPRODUTOS.UNCOMPRA,CADPRODUTOS.REF,'
            + 'CADPRODUTOS.QUANTIDADE,CADPRODUTOS.ESTGERAL,CADPRODUTOS.INDICACAO,CADPRODUTOS.FABRICANTE,'
            + 'CADPRODUTOS.QTDEPROM,CADPRODUTOS.VLRPROM,LOCALESTOCAGEM.NOME As Estoque FROM CADPRODUTOS '
            + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE ');
           // + 'ORDER BY CADPRODUTOS.IDPROD DESC');
            ibProdutos.Open; }

           {Commit(ibProdutos);
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
            ibProdutos.Open;

           // lbl_edtCodigo.Text := IntToStr(ibProdutos.FieldByName('IDPROD').AsInteger + 1);

            (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
            (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
            (ibProdutos.FieldByName('VLRPROM') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
            (ibProdutos.FieldByName('MTS') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
            (ibProdutos.FieldByName('QTDE')as TFloatField).DisplayFormat :='0';}


       //   end;//if lbl_nomeprod

       // end;//if lblnomeprod <> ''

       // if lbl_edtCodBarra.Text <> '' Then begin

         { ibProdutos.Close;
          ibProdutos.SQL.Clear;
          ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE CODBARRAS=''' + lbl_edtCodBarra.Text + '''');
          ibProdutos.Open; }

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
          + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD WHERE CADPRODUTOS.CODBARRAS=''' + lbl_edtCodBarra.Text + '''');
          ibProdutos.Open;

        if (lbl_edtCodBarra.Text = ibProdutos.FieldByName('CODBARRAS').AsString) Then begin }

      //      Application.MessageBox('Atenção o código já existe!!','Notificacao:Registro existente',+ MB_OK+MB_ICONWARNING);


            //SELECT PARA TRAZER O CODIGO EM ORDEM CRESCENTE.
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
            + 'CADPRODUTOS.QTDEPROM,CADPRODUTOS.VLRPROM,CADPRODUTOS.IDGRUPO,CADPRODUTOS.IDSUBGRUPO,'
            + 'TBLENTRADAESTOQUEPROD.ESTOQUEMIN,TBLENTRADAESTOQUEPROD.QUANTIDADE As QtdeEstoque,'
            + 'CADPRODUTOS.VALORMETRO,CADPRODUTOS.MTS,'
            + 'LOCALESTOCAGEM.NOME As Estoque FROM CADPRODUTOS '
            + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE '
            + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD ORDER BY CADPRODUTOS.NOME');// =''' + lbl_edtNomeProduto.Text + '''');
            ibProdutos.Open;

           // lbl_edtCodigo.Text := IntToStr(ibProdutos.FieldByName('IDPROD').AsInteger + 1);

            (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
            (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
            (ibProdutos.FieldByName('VLRPROM') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
            (ibProdutos.FieldByName('MTS') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
            (ibProdutos.FieldByName('QTDE')as TFloatField).DisplayFormat :='0';}

       //   end;//if lbl_codbarras

       // end;//if lblcodbarras <> ''


////////////////////////////////////////////////////////////////////////////////


    ConfirmaMSG := Application.MessageBox('Confirma o registro','Notificação:Inclusão de registro',+MB_YESNO+MB_ICONINFORMATION);

    ibeaNovo.Caption := '&Novo';

    if ConfirmaMSG = 6 Then begin


        //traz a identificacao do produto do item do objeto selecionado.
     {   If cboTipoProd.ItemIndex = -1 Then begin

         //   Erro := True;
         StringTProd     := ' ''0'',';
         Application.MessageBox('Informe o Tipo de Produto','Notificação:Produto não especificado',MB_OK+MB_ICONERROR);         DesabilitaCampos(True);
         lbl_edtQtdeEstoque.Enabled := True;
         lbl_edtEstoqueM.Enabled := True;
         lbl_edtVlrEstoque.Enabled := True;

        end else begin
          ClassTipoProd      := TClasseCombo(cboTipoProd.Items.Objects[cboTipoProd.ItemIndex] );          StringTProd        := ' ''' + InttoStr( ClassTipoProd.ID ) + ''','; }

        //end;

          ////////////////////////////////////////////////////////////////////////////////////////////////

         If cboGrupo.ItemIndex = -1 Then begin

          //  Erro := True;

            StringGrupo       := ' ''0'',';

          end else begin
            ClassGrupo         := TClasseCombo(cboGrupo.Items.Objects[cboGrupo.ItemIndex] );            StringGrupo        := ' ''' + InttoStr( ClassGrupo.ID ) + ''',';

          end;

          ////////////////////////////////////////////////////////////////////////////////////////////////////

         If cboSubGrupo.ItemIndex = -1 Then begin

          //  Erro := True;

            StringSubGrupo       := ' ''0'',';

          end else begin
            ClassSubGrupo         := TClasseCombo(cboSubGrupo.Items.Objects[cboSubGrupo.ItemIndex] );            StringSubGrupo        := ' ''' + InttoStr( ClassSubGrupo.ID ) + ''',';

          end;

          ////////////////////////////////////////////////////////////////////////////////////////////////////


          If cboModalidade.ItemIndex = -1 Then begin

          //  Erro := True;
            StringTipoUnid     := ' ''0'',';

          end else begin
            IDClassTipoUnid     := TClasseCombo(cboModalidade.Items.Objects[cboModalidade.ItemIndex] );            StringTipoUnid      := ' ''' + InttoStr( IDClassTipoUnid .ID ) + ''',';

          end;  

          /////////////////////////////////////////////////////////////////////////////////////////////////

          If cboFornecedores.ItemIndex = -1 Then begin

          //  Erro := True;
            StringForn    := ' ''0'',';

          end else begin
            ClassForn      := TClasseCombo(cboFornecedores.Items.Objects[cboFornecedores.ItemIndex] );            StringForn     := ' ''' + InttoStr( ClassForn.ID ) + ''',';

          end;

          //////////////////////////////////////////////////////////////////////////////////////////////////

          LocalSelecionado := -1; //atribui -1 para a variavel

          for i:=0 to ListLocalEstocagem.Items.Count -1 do begin//para variavel i iniciar do zero os itens comecam no -1
            if ListLocalEstocagem.Checked[i] = True Then begin //se o checked for verdadeiro
              LocalSelecionado := i; //atribui o vlr da variavel i checada na variavel local selecionado
            end;{if}
          end;{for}

          If (LocalSelecionado = -1) Then begin

             Application.MessageBox('Desculpe mas é necessário selecionar um Local de Estocagem.','Notificação: Dados Incompletos', MB_OK + MB_ICONWARNING);

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

            ValorVendac := StringReplace(lbl_edtVendac.Text,ThousandSeparator,'',[rfReplaceAll]);
            ValorVendac := StringReplace(ValorVendac,DecimalSeparator,'.',[rfReplaceAll]);
            if ValorVendac = '' Then
              ValorVendac := '0';

            ValorVendad := StringReplace(lbl_edtVendad.Text,ThousandSeparator,'',[rfReplaceAll]);
            ValorVendad := StringReplace(ValorVendad,DecimalSeparator,'.',[rfReplaceAll]);
            if ValorVendad = '' Then
              ValorVendad := '0';


            QtdeUnidVenda := StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]);
            QtdeUnidVenda := StringReplace(QtdeUnidVenda,DecimalSeparator,'.',[rfReplaceAll]);
            if QtdeUnidVenda  = '' Then
               QtdeUnidVenda := '0';

            if ckVctoLote.checked Then begin

              GravaVctoLote := 'Sim';
////////////////////////////////////////////////////////////////////////////////
             decodedaTe(StrToDate(FormatDateTime('DD/MM/YYYY',Now)),AnoVC,MesVC,DiaVC);//decodifica a data do combo
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
                DataInicialVC:=DataFinalVC;//atribui na varivel a data ja codificada
////////////////////////////////////////////////////////////////////////////////

              ibProdutos.Close;
              ibProdutos.SQL.Clear;
              ibProdutos.SQL.Add('INSERT INTO CADPRODUTOS '
              + '(NOME,FORNECEDOR,IDLOCAL,CODBARRAS,VALORCUSTO,VALORVENDAA,'              + 'VALORVENDAB,VALORVENDAC,VALORVENDAD,REF,LUCRO,LUCROVENDA,IDUNIDVENDA,'              + 'IDGRUPO,IDSUBGRUPO,LOTE,VCTOLOTE,CONFIRMAVCTOLOTE,DATAAVISOLOTE,'              + 'DATACADASTRO,QTDE,NOMEUNIDVENDA) values '              + '(''' + lbl_edtNomeProduto.Text + ''','
              + StringForn
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
              + ' ''' + GravaVctoLote + ''','
              + ' ''' + FormatDateTime('mm-dd-yyyy', DataPagtoVC) + ''','
              + ' ''' + FormatDateTime('mm-dd-yyyy',Now) + ''','
              + ' ''' + lbl_edtQtde.Text + ''',''' + cboModalidade.Text +''')');
              ibProdutos.ExecSQL;
              Commit(ibProdutos);

            end else begin

              GravaVctoLote := 'Nao';

              ibProdutos.Close;
              ibProdutos.SQL.Clear;
              ibProdutos.SQL.Add('INSERT INTO CADPRODUTOS '
              + '(NOME,FORNECEDOR,IDLOCAL,CODBARRAS,VALORCUSTO,VALORVENDAA,'              + 'VALORVENDAB,VALORVENDAC,VALORVENDAD,REF,LUCRO,LUCROVENDA,IDUNIDVENDA,'              + 'IDGRUPO,IDSUBGRUPO,CONFIRMAVCTOLOTE,DATACADASTRO,QTDE,NOMEUNIDVENDA) values '              + '(''' + lbl_edtNomeProduto.Text + ''','
              + StringForn
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
              + ' ''' + GravaVctoLote + ''','
              + ' ''' + FormatDateTime('mm-dd-yyyy',Now) + ''','
              + ' ''' + lbl_edtQtde.Text + ''',''' + cboModalidade.Text +''')');
              ibProdutos.ExecSQL;
              Commit(ibProdutos);

            end;//if ckvctolote
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

       {  ibEntrProdEstoque.Close;
        ibEntrProdEstoque.SQL.Clear;
        ibEntrProdEstoque.SQL.Add('SELECT * FROM TBLENTRADAESTOQUEPROD ORDER BY IDENTRADAPROD DESC');
        ibEntrProdEstoque.Open;  }

      //  IDEntrProdEstoque := (ibEntrProdEstoque.FieldByName('IDENTRADAPROD').AsInteger + 1);

        //grava os dados na tbl entrada de estoque de produtos.
        ibEntrProdEstoque.Close;
        ibEntrProdEstoque.SQL.Clear;
        ibEntrProdEstoque.SQL.Add('INSERT INTO TBLENTRADAESTOQUEPROD '
        + '(IDENTRADAPROD,QUANTIDADE,ESTOQUEMIN,IDPROD,VLRTOTAL,CODBARRAS) values '
        + '(''' + IntToStr(IDProdEstoque) + ''',''' + QtdeProdEstoque + ''','
        + ' ''' + EstoqueMin + ''','
        + ' ''' + IntToStr(IDProdEstoque) + ''','
        + ' ''' + ValorTotal + ''','
        + ' ''' + lbl_edtCodbarra.Text + ''')');
        ibEntrProdEstoque.ExecSQL;

        Commit(ibEntrProdEstoque);

      //  IncluiProd := True;

    //  end;{if record count}



////////////////////////////////////////////////////////////////////////////////


            //COPIA A IMAGEM DO PRODUTO PARA A PASTA DE IMAGENS
            if opDialogImagem.FileName <> '' Then begin

              NovaImagem       := opDialogImagem.FileName;
              ImagemSalva      := ExtractFilePath(Application.ExeName) + 'Data\RunTime\ProdImagens\' + lbl_edtNomeProduto.Text + '.jpg' ;

              if FileExists(ImagemSalva) Then begin //CASO JÁ EXISTA A IMAGEM
                DeleteFile(ImagemSalva); //APAGA A MESMA PARA QUE SEJA COLOCADA UMA NOVA
              end;

              if Not CopyFile(PChar(NovaImagem), PChar(ImagemSalva),true) then
                Application.MessageBox('Erro ao Copiar a Imagem do produto','Notificação: Erro ao copiar',MB_OK + MB_ICONERROR);

              NovaImagem  := ''; //LIMPA A VARIAVEL NOVAIMAGEM
              ImagemSalva := ''; //LIMPA A VARIAVEL IMAGEMSALVA

            end else begin

              if ExtrairDirArquivoSalvo <> '' Then begin

                NovaImagem       := ExtractFilePath(Application.ExeName) + 'Data\RunTime\ProdImagens\Scaneada.jpg';
                ImagemSalva      := ExtractFilePath(Application.ExeName) + 'Data\RunTime\ProdImagens\' + lbl_edtNomeProduto.Text + '.jpg';

                if FileExists(ImagemSalva) Then begin //CASO JÁ EXISTA A IMAGEM
                  DeleteFile(ImagemSalva); //APAGA A MESMA PARA QUE SEJA COLOCADA UMA NOVA
                end;

                if Not CopyFile(PChar(NovaImagem), PChar(ImagemSalva),true) then
                  Application.MessageBox('Erro ao Copiar a Imagem do produto','Notificação: Erro ao copiar',MB_OK + MB_ICONERROR);

                //DEPOIS QUE A IMAGEM É COPIADA IRÁ EXCLUI-LÁ
                if FileExists(NovaImagem) Then begin
                  DeleteFile(NovaImagem);
                end;

                //DEPOIS QUE A IMAGEM É COPIADA IRÁ EXCLUI-LÁ
                if FileExists(ExtrairDirArquivoSalvo) Then begin
                  DeleteFile(ExtrairDirArquivoSalvo);
                end;

              end;

              NovaImagem  := ''; //LIMPA A VARIAVEL NOVAIMAGEM
              ImagemSalva := ''; //LIMPA A VARIAVEL IMAGEMSALVA

            end;


            //Commit(ibProdutos);

            ExecSELECT;

       //   end;{if tambem do tipo de produto}

          ibeaNovo.Caption := '&Novo';
          ibeaAlterar.Enabled := True;
          ibeaExcluir.Enabled := True;
          DesabilitaCampos(False);
          ListLocalEstocagem.Enabled := False;
          lbl_edtQtdeEstoque.Enabled := False;
          lbl_edtEstoqueM.Enabled := False;
          lbl_edtVlrEstoque.Enabled := False;

       end;{if tipo prod}

  end;//if confirma msg

      end else begin

        ibeaNovo.Caption := '&Gravar';
        DesabilitaCampos(True);
        lbl_edtQtdeEstoque.Enabled := True;
        lbl_edtEstoqueM.Enabled := True;
        lbl_edtVlrEstoque.Enabled := True;

        ListLocalEstocagem.Enabled := True;
        lbl_edtRef.SetFocus;
        LimpaCampo;
        ExecSELECTFornecedor;

      end;{if botão novo}

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

    (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutos.FieldByName('VALORVENDAB') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
    (ibProdutos.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
    (ibProdutos.FieldByName('VALORVENDAD') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
    //(ibProdutos.FieldByName('VLRPROM') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutos.FieldByName('QTDE') as TFloatField).DisplayFormat := '0'; //CRIA UMA MASCARA PARA O CAMPO

  end;{with}

end;

procedure TfrmProd_MPrima.FormShow(Sender: TObject);

begin

 dtpVctoLote.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
 ListLocalEstocagem.Enabled := False;
 LimpaCampo;

 lbl_edtCodP.Text := '';
 lbl_edtNome.Text := '';



 //DEFINE COM QUE A PAGEINDEX FIQUE COMO 0
  pcProdutos.ActivePageIndex := 0;

  ibeaNovo.Caption := '&Novo';
  ibeaAlterar.Caption := '&Alterar';

  //habilita os botes ao abrir o form
  ibeaNovo.Enabled := True;
  ibeaAlterar.Enabled := True;
  ibeaExcluir.Enabled := True;


  DesabilitaCampos(False);
  lbl_edtQtdeEstoque.Enabled := False;
  lbl_edtEstoqueM.Enabled := False;
  lbl_edtVlrEstoque.Enabled := False;

  with dmModule do begin

   Commit(ibEntrProdEstoque);
   ibEntrProdEstoque.Close;
   ibEntrProdEstoque.SQL.Clear;
   ibEntrProdEstoque.SQL.Add('SELECT QUANTIDADE FROM TBLENTRADAESTOQUEPROD');
   ibEntrProdEstoque.Open;


 // LimpaCampo;//procedimento para limpar os campos ao abrir o formulario.
    ExecEstoque;
    ExecSELECT;
    ExecSELECTGrupo;
    ExecSELECTSubgrupo;
    ExecSELECTTipoUnidade;
    ExecSELECTFornecedor;

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
         
        //determina as colunas a serem montadas 0 codigo cliente, 1 razao Social, 2 endereço numero...
        Columns.Insert(0);
        Columns.Insert(1);
        Columns.Insert(2);
        Columns.Insert(3);
        Columns.Insert(4);
        Columns.Insert(5);
        Columns.Insert(6);
        Columns.Insert(7);

        //Parametros da Coluna que exibe o Código do Produto
        Columns.Items[0].Title.Caption := 'Cód.Interno';
        Columns.Items[0].FieldName     := 'IDPROD';
        Columns.Items[0].Width         := 61;
        Columns.Items[0].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o código de barras do produto
        Columns.Items[1].Title.Caption := 'Código de Barras';
        Columns.Items[1].FieldName     := 'CODBARRAS';
        Columns.Items[1].Width         := 97;
        Columns.Items[1].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o código de barras do produto
        Columns.Items[2].Title.Caption := 'Data Cadastro';
        Columns.Items[2].FieldName     := 'DATACADASTRO';
        Columns.Items[2].Width         := 77;
        Columns.Items[2].Alignment     := taLeftJustify;


        //Parametros da Coluna que exibe o Código do Produto
        Columns.Items[3].Title.Caption := 'Ref.';
        Columns.Items[3].FieldName     := 'REF';
        Columns.Items[3].Width         := 78;
        Columns.Items[3].Alignment     := taLeftJustify;


        // Parametros que exibe o nome do produto
        Columns.Items[4].Title.Caption := 'Descrição do Produto';
        Columns.Items[4].FieldName     := 'NOME';
        Columns.Items[4].Width         := 277;
        Columns.Items[4].Alignment     := taLeftJustify;


        // Parametros que exibe o valor de venda (a)
        Columns.Items[5].Title.Caption := 'Valor de Custo';
        Columns.Items[5].FieldName     := 'VALORCUSTO';
        Columns.Items[5].Width         := 77;
        Columns.Items[5].Alignment     := taLeftJustify;

       // Parametros que exibe o valor de venda (b)
        Columns.Items[6].Title.Caption := 'Valor de Venda (A)';
        Columns.Items[6].FieldName     := 'VALORVENDAA';
        Columns.Items[6].Width         := 95;
        Columns.Items[6].Alignment     := taLeftJustify;

        // Parametros que exibe o valor de venda (c)
        Columns.Items[7].Title.Caption := 'Data Alteração';
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
end;

procedure TfrmProd_MPrima.ibeaAlterarClick(Sender: TObject);

var
 NovaImagem: String;
 ImagemSalva : String;
begin

//  lbl_edtQtdeEstoque.Enabled := False;
//  lbl_edtEstoqueM.Enabled := False;
//  lbl_edtVlrEstoque.Enabled := False;

  with dmModule do begin


    if ibeaNovo.Caption = '&Gravar' Then begin

      ConfirmaMSG := Application.MessageBox('Deseja cancelar esta operação?'
                + #13 + 'Clique em Sim para cancelar e Não para continuar.','Notificação: Cancelar Operação', MB_YESNO + MB_ICONQUESTION);

      if ConfirmaMSG = 6 Then begin

        ibeaNovo.Caption := '&Novo';
        DesabilitaCampos(False);
        lbl_edtQtdeEstoque.Enabled := False;
        lbl_edtEstoqueM.Enabled := False;
        lbl_edtVlrEstoque.Enabled := False;

      end;{if}

      end else begin

      //////////////////////////////////////////////////////////////////////////


    if ibProdutos.RecordCount < 1 Then begin

      ConfirmaMSG := Application.MessageBox('Não existe registro para ser alterado!!'
              + #13 + 'Clique em Ok para Retornar a operação normal.','Notificação: Cancelar Operação', MB_OK + MB_ICONWARNING);

      ibeaNovo.Caption := '&Novo';
      DesabilitaCampos(False);
      lbl_edtQtdeEstoque.Enabled := False;
      lbl_edtEstoqueM.Enabled := False;
      lbl_edtVlrEstoque.Enabled := False;

    end else begin

      if lbl_edtNomeProduto.Text = '' Then begin
         ConfirmaMSG := Application.MessageBox('É necessário selecionar um registro abaixo para ser alterado!!'
                    + #13 + 'Clique em Ok para Retornar a operação normal.','Notificação: Cancelar Operação', MB_OK + MB_ICONWARNING);
        ibeaAlterar.Caption := '&Alterar';

      end else begin

////////////////////////////////////////////////////////////////////////////////  

          if pcProdutos.ActivePage.TabIndex = 0 Then begin

            if ibeaAlterar.Caption = '&Atualizar' Then begin


              ConfirmaMSG := Application.MessageBox('Alterar esse Registro?','Notificação: Exclusão de Registro', MB_YESNO + mb_Defbutton1+MB_ICONQUESTION);
              if ConfirmaMSG = 6 Then begin

                AlteraProduto;
                AlteraEstoque;

                //COPIA A IMAGEM DO PRODUTO PARA A PASTA DE IMAGENS
                if opDialogImagem.FileName <> '' Then begin

                  NovaImagem       := opDialogImagem.FileName;
                  ImagemSalva      := ExtractFilePath(Application.ExeName) + 'Data\RunTime\ProdImagens\' + lbl_edtNomeProduto.Text + '.jpg' ;

                  if FileExists(ImagemSalva) Then begin //CASO JÁ EXISTA A IMAGEM
                    DeleteFile(ImagemSalva); //APAGA A MESMA PARA QUE SEJA COLOCADA UMA NOVA
                  end;

                  if Not CopyFile(PChar(NovaImagem), PChar(ImagemSalva),true) then
                    Application.MessageBox('Erro ao Copiar a Imagem do produto','Notificação: Erro ao copiar',MB_OK + MB_ICONERROR);

                  NovaImagem  := ''; //LIMPA A VARIAVEL NOVAIMAGEM
                  ImagemSalva := ''; //LIMPA A VARIAVEL IMAGEMSALVA

                end else begin

                  if ExtrairDirArquivoSalvo <> '' Then begin

                    NovaImagem       := ExtractFilePath(Application.ExeName) + 'Data\RunTime\ProdImagens\Scaneada.jpg';
                    ImagemSalva      := ExtractFilePath(Application.ExeName) + 'Data\RunTime\ProdImagens\' + lbl_edtNomeProduto.Text + '.jpg';

                    if FileExists(ImagemSalva) Then begin //CASO JÁ EXISTA A IMAGEM
                      DeleteFile(ImagemSalva); //APAGA A MESMA PARA QUE SEJA COLOCADA UMA NOVA
                    end;
                                        
                    if Not CopyFile(PChar(NovaImagem), PChar(ImagemSalva),true) then
                      Application.MessageBox('Erro ao Copiar a Imagem do produto','Notificação: Erro ao copiar',MB_OK + MB_ICONERROR);

                    //DEPOIS QUE A IMAGEM É COPIADA IRÁ EXCLUI-LÁ
                    if FileExists(NovaImagem) Then begin
                      DeleteFile(NovaImagem);
                    end;

                    //DEPOIS QUE A IMAGEM É COPIADA IRÁ EXCLUI-LÁ
                    if FileExists(ExtrairDirArquivoSalvo) Then begin
                      DeleteFile(ExtrairDirArquivoSalvo);
                    end;
                                        
                  end;

                  NovaImagem  := ''; //LIMPA A VARIAVEL NOVAIMAGEM
                  ImagemSalva := ''; //LIMPA A VARIAVEL IMAGEMSALVA

                end;

                //Commit(ibProdutos);

                ibProdutos.Close;
                ibProdutos.SQL.Clear;
                ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE IDPROD=''' + (lbl_edtCodigo.Text) + '''');
                ibProdutos.Open;
                (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat         := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
                (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

               // ExecSELECT;

              end;

              ibeaAlterar.Caption := '&Alterar';
              ibeaNovo.Enabled := True;
              ibeaExcluir.Enabled := True;
              DesabilitaCampos(False);
              lbl_edtQtdeEstoque.Enabled := False;
              lbl_edtEstoqueM.Enabled := False;
              lbl_edtVlrEstoque.Enabled := False;

            end else begin

              ibeaAlterar.Caption := '&Atualizar';
              DesabilitaCampos(True);
              lbl_edtQtdeEstoque.Enabled := True;
              lbl_edtEstoqueM.Enabled := True;
              lbl_edtVlrEstoque.Enabled := True;

            end; {if}

          end; {if}
          
       end;{if}

     end;{if}

    end;{if}

  end; {with}


end;

procedure TfrmProd_MPrima.ibeaExcluirClick(Sender: TObject);
begin

  with dmModule do begin

    ConfirmaMSG := Application.MessageBox('Você deseja Excluir esse Registro?','Notificação: Exclusão de Registro', MB_YESNO + mb_DefButton1+MB_ICONQUESTION);

    if ConfirmaMSG = 6 Then begin

      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('DELETE FROM CADPRODUTOS WHERE IDPROD=''' + InttoStr(IDProd) + '''');
      ibProdutos.Open;

      ibEntrProdEstoque.Close;
      ibEntrProdEstoque.SQL.Clear;
      ibEntrProdEstoque.SQL.Add('DELETE FROM TBLENTRADAESTOQUEPROD WHERE IDPROD=''' + InttoStr(IDProd) + '''');
      ibEntrProdEstoque.Open;

      ExecSELECT;

    end;{IF}

  end;{WITH}

end;

procedure TfrmProd_MPrima.lbl_edtCustoExit(Sender: TObject);

begin

  if (lbl_edtCusto.Text <> '') Then begin

    lbl_edtCusto.Text := StringReplace(lbl_edtCusto.Text,ThousandSeparator,'',[rfReplaceAll]);
    lbl_edtCusto.Text := FormatFloat(Casasdecimais('Produtos'),StrToFloat(lbl_edtCusto.Text));
                         
  end else begin

    lbl_edtCusto.Text := '0,00';

  end;//if
  
end;

procedure TfrmProd_MPrima.lbl_edtLucroExit(Sender: TObject);

   var
    Valor1 :Real;
    Valor2 :Real;
    Valor3 :Real;
    Valor4 :Real;
begin

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

end;//label custo


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
    
    if lbl_edtVendab.Text <> '' Then begin

      lbl_edtVendab.Text := StringReplace(lbl_edtVendab.Text,ThousandSeparator,'',[rfReplaceAll]);
      lbl_edtVendab.Text := FormatFloat(Casasdecimais('Produtos'),StrToFloat(lbl_edtVendab.Text));

    end else begin

      lbl_edtVendab.Text := '0,00';

    end;//if

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

      if lbl_edtVendac.Text <> '' Then begin

        lbl_edtVendac.Text := StringReplace(lbl_edtVendac.Text,ThousandSeparator,'',[rfReplaceAll]);
        lbl_edtVendac.Text := FormatFloat(Casasdecimais('Produtos'),StrToFloat(lbl_edtVendac.Text));

      end else begin

        lbl_edtVendac.Text := '0,00';

      end;//if

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

  {  ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE CODBARRAS=''' + lbl_edtCodP.Text + '''');
    ibProdutos.Open; }

    Commit(ibProdutos);
    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT CADPRODUTOS.*,'
    + 'TBLENTRADAESTOQUEPROD.ESTOQUEMIN,TBLENTRADAESTOQUEPROD.QUANTIDADE As QtdeEstoque,'
    + 'LOCALESTOCAGEM.NOME As Estoque FROM CADPRODUTOS '
    + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE '
    + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD WHERE CADPRODUTOS.CODBARRAS=''' + lbl_edtCodP.Text + '''');
    ibProdutos.Open;

    (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat         := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutos.FieldByName('QTDE')as TFloatField).DisplayFormat :='0';
    
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
    + 'TBLENTRADAESTOQUEPROD.ESTOQUEMIN,TBLENTRADAESTOQUEPROD.QUANTIDADE As QtdeEstoque,'
    + 'LOCALESTOCAGEM.NOME As Estoque FROM CADPRODUTOS '
    + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE '
    + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD WHERE CADPRODUTOS.REF=''' + lbl_edtNumRef.Text + '''');
    ibProdutos.Open;

    (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat         := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutos.FieldByName('QTDE')as TFloatField).DisplayFormat :='0';
    
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
    + 'TBLENTRADAESTOQUEPROD.ESTOQUEMIN,TBLENTRADAESTOQUEPROD.QUANTIDADE As QtdeEstoque,'
    + 'LOCALESTOCAGEM.NOME As Estoque FROM CADPRODUTOS '
    + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE '
    + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD WHERE CADPRODUTOS.NOME LIKE '+''''+'%'+lbl_edtNome.text+'%'+'''');
    ibProdutos.Open;


    (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat         := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutos.FieldByName('QTDE')as TFloatField).DisplayFormat :='0';
    
  end;{with}
  
end;

procedure TfrmProd_MPrima.sb_ord_nomeClick(Sender: TObject);
begin

  with dmModule do begin

    ExecSELECT;
    LimpaCampo;
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

          Application.MessageBox('Este produto não possui nenhuma imagem','Notificação: Produto sem Imagem', MB_OK + MB_ICONINFORMATION);
          ComImagem := False; //CASO NÂO TENHA A IMAGEM SETA A VARIAVEL COMO FALSE PARA NÂO EXIBIR O FORM

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

    (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat         := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutos.FieldByName('VLRPROM') as TFloatField).DisplayFormat            := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutos.FieldByName('QTDE') as TFloatField).DisplayFormat               := '0'; //CRIA UMA MASCARA PARA O CAMPO


      ExibeDados;

  end;{with}
  
end;

procedure TfrmProd_MPrima.dbgProdutosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

with dmModule do begin
  //SEGUNDA FORMA DE FAZER UMA DBGRID FICAR COLOCRIDA


 { if ibProdutos.FieldByName('QtdeEstoque').value > 0 Then begin
  dbgProdutos.Canvas.Brush.Color:= clBlue; // coloque aqui a cor desejada
  dbgProdutos.Canvas.Font.Color:= clWhite;
  dbgProdutos.DefaultDrawDataCell(Rect, dbgProdutos.columns[datacol].field, State);
  end else begin
  dbgProdutos.Canvas.Brush.Color:= clred; // coloque aqui a cor desejada
  dbgProdutos.Canvas.Font.Color:= clWhite;
  dbgProdutos.DefaultDrawDataCell(Rect, dbgProdutos.columns[datacol].field, State);
  end;  }




    If (dbgProdutos.DataSource.DataSet.RecNo div 2) =  (dbgProdutos.DataSource.DataSet.RecNo/2) Then begin

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

      dbgProdutos.Canvas.TextOut(Rect.Left+2,Rect.Top,Column.Field.AsString);

   end;{if}

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

  if key=#13 Then begin

    lbl_edtNomeProduto.SetFocus;

  end;

end;

procedure TfrmProd_MPrima.lbl_edtCodBarrasMPChange(Sender: TObject);
begin
  GeraCBMP.Text        := lbl_edtCodBarrasMP.Text;
  GeraCBMP.Top         := 0;
  GeraCBMP.Left        := 7;
  imgCodBarrasMP.Picture     := nil;
  GeraCBMP.DrawBarcode(imgCodBarrasMP.Canvas);

end;

procedure TfrmProd_MPrima.lbl_edtCodBarrasMPKeyPress(Sender: TObject;
  var Key: Char);
begin
         if not ( Key In ['0'..'9','.'] ) then
           Abort;
end;

procedure TfrmProd_MPrima.lbl_edtCustoMPExit(Sender: TObject);
begin

  if (lbl_edtCustoMP.Text <> '') Then begin

    lbl_edtCustoMP.Text := FormatFloat(CasasDecimais('Produtos'),StrToFloat(lbl_edtCustoMP.Text));

  end;//if

end;

procedure TfrmProd_MPrima.lbl_edtLucroMPExit(Sender: TObject);


   var
    Valor1 :Real;
    Valor2 :Real;
    Valor3 :Real;
    Valor4 :Real;
begin

if lbl_edtCustoMP.Text <> '' Then begin

  if lbl_edtLucroMP.Text <> '' Then begin// se for em branco executa rotina abaixo.

    if (Pos(',',lbl_edtLucroMP.Text)>0) and (lbl_edtLucroMP.Text <> '') Then begin

      Valor1 := StrToFloat(StringReplace(lbl_edtLucroMP.Text,ThousandSeparator,'',[rfReplaceAll]));
      Valor2 := StrToFloat(StringReplace(lbl_edtCustoMP.Text,ThousandSeparator,'',[rfReplaceAll]));
      Valor3 := Valor2 * Valor1;

      Valor4 := Valor3 /100;

      lbl_edtVendaaMP.Text := FormatFloat(',0.00',(Valor4 + Valor2));

    end else begin

      Valor1 := StrToFloat(StringReplace(lbl_edtLucroMP.Text,ThousandSeparator,'',[rfReplaceAll]));
      Valor2 := StrToFloat(StringReplace(lbl_edtCustoMP.Text,ThousandSeparator,'',[rfReplaceAll]));
      Valor3 := Valor2 * Valor1;

      Valor4 := Valor3 /100;

      lbl_edtVendaaMP.Text := FormatFloat(',0.00',(Valor4 + Valor2));

    end;{if}

  end;{if}

end;//label custo


end;

procedure TfrmProd_MPrima.lbl_edtVendaaMPExit(Sender: TObject);
begin

  if lbl_edtVendaaMP.Text <> '' Then begin

    with ConfigSiS do begin

    ConfigSiS := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Data\RunTime\sis.ini'); //Cria o vinculo com o Arquivo ini
    Casas := ReadInteger('Formatacoes','FormatoMoedaCasas',2);//atribui as chaves do arquivo ini na variavel

      if Casas = 2 Then begin
        FormatoMoeda := ',0.00';
      end else begin
        FormatoMoeda := ',0.000';
      end;

    lbl_edtVendaaMP.Text := FormatFloat(FormatoMoeda,StrToFloat(lbl_edtVendaaMP.Text));

    end;{with}
  end;{if}

end;

procedure TfrmProd_MPrima.lbl_edtVendabMPExit(Sender: TObject);
begin

  if lbl_edtVendabMP.Text <> '' Then begin

    with ConfigSiS do begin

    ConfigSiS := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Data\RunTime\sis.ini'); //Cria o vinculo com o Arquivo ini
    Casas := ReadInteger('Formatacoes','FormatoMoedaCasas',2);//atribui as chaves do arquivo ini na variavel

      if Casas = 2 Then begin
        FormatoMoeda := ',0.00';
      end else begin
        FormatoMoeda := ',0.000';
      end;

    lbl_edtVendabMP.Text := FormatFloat(FormatoMoeda,StrToFloat(lbl_edtVendabMP.Text));

    end;{with}
  end;{if}

end;

procedure TfrmProd_MPrima.lbl_edtVendacMPExit(Sender: TObject);
begin

  if lbl_edtVendacMP.Text <> '' Then begin

    with ConfigSiS do begin

    ConfigSiS := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Data\RunTime\sis.ini'); //Cria o vinculo com o Arquivo ini
    Casas := ReadInteger('Formatacoes','FormatoMoedaCasas',2);//atribui as chaves do arquivo ini na variavel

      if Casas = 2 Then begin
        FormatoMoeda := ',0.00';
      end else begin
        FormatoMoeda := ',0.000';
      end;

    lbl_edtVendacMP.Text := FormatFloat(FormatoMoeda,StrToFloat(lbl_edtVendacMP.Text));

    end;{with}
  end;{if}

end;

procedure TfrmProd_MPrima.lbl_edtLucroVendaMPExit(Sender: TObject);

   var
    Valor1 :Real;
    Valor2 :Real;
    Valor3 :Real;
    Valor4 :Real;
    Valor5 :Real;

begin
                            //       or (lbl_edtCusto.Text <> '') and
  if (lbl_edtCustoMP.Text > '0,00') and (lbl_edtVendaa.Text <> '') Then begin

    if lbl_edtCustoMP.Text <> '' Then begin// se for em branco executa rotina abaixo.

      if (Pos(',',lbl_edtCustoMP.Text)>0) and (lbl_edtCustoMP.Text <> '') Then begin

        Valor1 := StrToFloat(StringReplace(lbl_edtCustoMP.Text,ThousandSeparator,'',[rfReplaceAll]));
        Valor2 := StrToFloat(StringReplace(lbl_edtVendaaMP.Text,ThousandSeparator,'',[rfReplaceAll]));
        Valor3 := Valor2 - Valor1;
        Valor4 := Valor3 * 100;

        Valor5 := Valor4 / Valor1;

        lbl_edtLucroVendaMP.Text := FormatFloat(',0.00',(Valor5));

      end else begin

        Valor1 := StrToFloat(StringReplace(lbl_edtCustoMP.Text,ThousandSeparator,'',[rfReplaceAll]));
        Valor2 := StrToFloat(StringReplace(lbl_edtVendaaMP.Text,ThousandSeparator,'',[rfReplaceAll]));
        Valor3 := Valor2 - Valor1;
        Valor4 := Valor3 * 100;

        Valor5 := Valor4 / Valor1;

        lbl_edtLucroVendaMP.Text := FormatFloat(',0.00',(Valor5));

      end;{if}

    end;{if}

  end;//label custo


end;

procedure TfrmProd_MPrima.ibeaNovoMPClick(Sender: TObject);

var

ValorCustoMP,ValorVendaaMP,ValorVendabMP,ValorVendacMP,StringLocalEstoqueMP : String;
ValorTotalMP, QtdeProdEstoqueMP, EstoqueMinMP : String;
ClassLocalMP, IDClassGravaFornMP: TClasseCombo;
StringGravaFornMP : String;

begin

  with dmModule do begin

  {  ibMatPrima.Close;
    ibMatPrima.SQL.Clear;
    ibMatPrima.SQL.Add('SELECT * FROM TBLMATERIAPRIMA ORDER BY IDPRODMP DESC');
    ibMatPrima.Open;

    while not ibMatPrima.Eof do begin

      lbl_edtCodigo.Text := IntToStr(ibProdutos.FieldByName('IDPRODMP').AsInteger + 1);
      IDProdEstoque :=  StrToInt(lbl_edtCodigo.Text);
      ibProdutos.Last;   }

 //   end;{while}

    //rotina para cancelar ou nao a operacao
 {   if ibeaAlterar.Caption = '&Atualizar' Then begin

      ConfirmaMSG := Application.MessageBox('Deseja cancelar esta operação?'
                + #13 + 'Clique em Sim para cancelar e Não para continuar.','Notificação: Cancelar Operação', MB_YESNO + MB_ICONQUESTION);

      if ConfirmaMSG = 6 Then begin

        //RESTAURAR OS CAMPOS
        ibeaAlterar.Caption := '&Alterar';
        ibeaNovo.Enabled := True;
        ibeaNovo.Caption := '&Novo';
        ibeaExcluir.Enabled := True;
        DesabilitaCampos(False);
     //   lbl_edtQtdeEstoque.Enabled := False;
     //   lbl_edtEstoqueM.Enabled := False;
     //   lbl_edtVlrEstoque.Enabled := False;

        LimpaCampo; }

   //   end;{if}

      if ibeaNovoMP.Caption = '&Gravar' Then begin
       //  DesabilitaCampos(True);
        //////////////////////////////////////////////////////////////////////////////////////////////////
        //rotina para gravação do local e estoque

        LocalSelecionadoMP := -1; //atribui -1 para a variavel

        for i:=0 to ListLocalEstoqMP.Items.Count -1 do begin//para variavel i iniciar do zero os itens comecam no -1
          if ListLocalEstoqMP.Checked[i] = True Then begin //se o checked for verdadeiro
            LocalSelecionadoMP := i; //atribui o vlr da variavel i checada na variavel local selecionado
          end;{if}
        end;{for}


        If (LocalSelecionadoMP = -1) Then begin

           Application.MessageBox('Desculpe mas é necessário selecionar um Local de Estocagem.','Notificação: Dados Incompletos', MB_OK + MB_ICONWARNING);

        end else begin

          if (LocalSelecionadoMP < 0) Then begin
              StringLocalEstoqueMP      := ' '''','
          end else begin
            ClassLocalMP              := TClasseCombo( ListLocalEstoqMP.Items.Objects[LocalSelecionadoMP] );
            StringLocalEstoqueMP      := ' ''' + InttoStr( ClassLocalMP.ID ) + ''','
          end;

          ///////////////////////////////////////////////////////////////////////////////////


          If cboFornecedorMP.ItemIndex = -1 Then begin

            StringGravaFornMP    := ' ''0'',';

          end else begin
            IDClassGravaFornMP   := TClasseCombo(cboFornecedorMP.Items.Objects[cboFornecedorMP.ItemIndex] );            StringGravaFornMP    := ' ''' + InttoStr( IDClassGravaFornMP.ID ) + ''',';

          end;



            //atribui na variavel substituindo o ponto para vlr em branco
            ValorCustoMP := StringReplace(lbl_edtCustoMP.Text,ThousandSeparator,'',[rfReplaceAll]);
            //atribui a variavel o valor separando por ponto
            ValorCustoMP := StringReplace(ValorCustoMP,DecimalSeparator,'.',[rfReplaceAll]);
            if ValorCustoMP = '' Then
              ValorCustoMP := '0';


            ValorVendaaMP := StringReplace(lbl_edtVendaaMP.Text,ThousandSeparator,'',[rfReplaceAll]);
            ValorVendaaMP := StringReplace(ValorVendaaMP,DecimalSeparator,'.',[rfReplaceAll]);
            if ValorVendaaMP = '' Then
              ValorVendaaMP := '0';

            ValorVendabMP := StringReplace(lbl_edtVendabMP.Text,ThousandSeparator,'',[rfReplaceAll]);
            ValorVendabMP := StringReplace(ValorVendabMP,DecimalSeparator,'.',[rfReplaceAll]);
            if ValorVendabMP = '' Then
              ValorVendabMP := '0';

            ValorVendacMP := StringReplace(lbl_edtVendacMP.Text,ThousandSeparator,'',[rfReplaceAll]);
            ValorVendacMP := StringReplace(ValorVendacMP,DecimalSeparator,'.',[rfReplaceAll]);
            if ValorVendacMP = '' Then
              ValorVendacMP := '0';

         ///////////////////////////////////////////////////////////////////////
          ibMatPrima.Close;
          ibMatPrima.SQL.Clear;
          ibMatPrima.SQL.Add('INSERT INTO TBLMATERIAPRIMA '
          + '(NOME,CODBARRASMP,IDLOCAL,FABRFORN,VLRCUSTO,VLRVENDA,VLRVENDAB,'
          + 'VLRVENDAC,IDFORNECEDOR,LUCRO) values '
          + '(''' + lbl_edtNomeProdMP.Text + ''','
          + ' ''' + lbl_edtCodBarrasMP.Text + ''','
          + StringLocalEstoqueMP
          + ' ''' + lbl_edtFabrMP.Text + ''','
          + ' ''' + ValorCustoMP + ''',''' + ValorVendaaMP + ''','
          + ' ''' + ValorvendabMP + ''',''' + ValorvendacMP + ''','
          +StringGravaFornMP
          + ' ''' + lbl_edtLucroVendaMP.Text + ''')');
          ibMatPrima.ExecSQL;
          Commit(ibMatPrima);

        end;
////////////////////////////////////////////////////////////////////////////////

        if lbl_edtQtdeEntrEstMP.Text <> '' Then begin

          ValorTotalMP := StringReplace(lbl_edtVlrEntrEstMP.Text,ThousandSeparator,'',[rfReplaceAll]);
          ValorTotalMP := StringReplace(ValorTotalMP,DecimalSeparator,'.',[rfReplaceAll]);
          if ValorTotalMP = '' Then
            ValorTotalMP := '0';

          QtdeProdEstoqueMP := StringReplace(lbl_edtQtdeEntrEstMP.Text,ThousandSeparator,'',[rfReplaceAll]);
          QtdeProdEstoqueMP := StringReplace(QtdeProdEstoqueMP,DecimalSeparator,'.',[rfReplaceAll]);
          if QtdeProdEstoqueMP = '' Then
            QtdeProdEstoqueMP := '0';


          EstoqueMinMP := StringReplace(lbl_edtMinimoEstMP.Text,ThousandSeparator,'',[rfReplaceAll]);
          EstoqueMinMP := StringReplace(EstoqueMinMP,DecimalSeparator,'.',[rfReplaceAll]);
          if EstoqueMinMP = '' Then
            EstoqueMinMP := '0';

         {  ibEntrProdEstoque.Close;
          ibEntrProdEstoque.SQL.Clear;
          ibEntrProdEstoque.SQL.Add('SELECT * FROM TBLENTRADAESTOQUEPROD ORDER BY IDENTRADAPROD DESC');
          ibEntrProdEstoque.Open;  }

        //  IDEntrProdEstoque := (ibEntrProdEstoque.FieldByName('IDENTRADAPROD').AsInteger + 1);

          //grava os dados na tbl entrada de estoque de produtos.
          ibEntrProdEstoque.Close;
          ibEntrProdEstoque.SQL.Clear;
          ibEntrProdEstoque.SQL.Add('INSERT INTO TBLENTRADAESTOQUEPROD '
          + '(IDENTRADAPROD,QUANTIDADE,ESTOQUEMIN,IDPROD,VLRTOTAL,CODBARRAS) values '
          + '(''' + IntToStr(IDProdEstoque) + ''',''' + QtdeProdEstoqueMP + ''','
          + ' ''' + EstoqueMinMP + ''','
          + ' ''' + IntToStr(IDProdEstoque) + ''','
          + ' ''' + ValorTotalMP + ''','
          + ' ''' + lbl_edtCodbarra.Text + ''')');
          ibEntrProdEstoque.ExecSQL;

          Commit(ibEntrProdEstoque);

        end;// if lblqtdeentrestoque

////////////////////////////////////////////////////////////////////////////////


          ExecSELECTMP;

       //   end;{if tambem do tipo de produto}

          ibeaNovoMP.Caption := '&Novo';
          ibeaAlterarMP.Enabled := True;
          ibeaExcluirMP.Enabled := True;
          ListLocalEstoqMP.Enabled := False;
          lbl_edtQtdeEntrEstMP.Enabled := False;
          lbl_edtMinimoEstMP.Enabled := False;
          lbl_edtVlrEntrEstMP.Enabled := False;

    //    end;{if tipo prod}

      end else begin

        ibeaNovoMP.Caption := '&Gravar';
        lbl_edtQtdeEntrEstMP.Enabled := True;
        lbl_edtMinimoEstMP.Enabled := True;
        lbl_edtVlrEntrEstMP.Enabled := True;
        ListLocalEstoqMP.Enabled := True;
        lbl_edtCodBarrasMP.SetFocus;
        LimpaCamposMP;

      end;{if botão novo}

        ibMatPrima.Close;
        ibMatPrima.SQL.Clear;
        ibMatPrima.SQL.Add('SELECT TBLMATERIAPRIMA.NOME,TBLMATERIAPRIMA.FABRFORN,'
        + 'TBLMATERIAPRIMA.CODBARRASMP,TBLMATERIAPRIMA.VLRCUSTO,TBLMATERIAPRIMA.VLRVENDA,'
        + 'TBLMATERIAPRIMA.VLRVENDAB,TBLMATERIAPRIMA.VLRVENDAC,TBLMATERIAPRIMA.ECF,'
        + 'TBLMATERIAPRIMA.COMISSAO,TBLMATERIAPRIMA.IDLOCAL,TBLMATERIAPRIMA.IDPRODMP,'
        + 'TBLMATERIAPRIMA.IDFORNECEDOR,LOCALESTOCAGEM.NOME As Estoque FROM TBLMATERIAPRIMA '
        + 'INNER JOIN LOCALESTOCAGEM ON TBLMATERIAPRIMA.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE ORDER BY TBLMATERIAPRIMA.NOME');
        ibMatPrima.Open;

        (ibMatPrima.FieldByName('VLRCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
        (ibMatPrima.FieldByName('VLRVENDA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

        lbl_edtCodigoMP.Text := IntToStr(ibMatPrima.FieldByName('IDPRODMP').AsInteger + 1);

  end;{with}


end;

procedure TfrmProd_MPrima.pcProdutosChange(Sender: TObject);
begin

  with dmModule do begin

    if pcProdutos.ActivePageIndex = 0 Then begin

    LimpaCamposMP;

    end else if  pcProdutos.ActivePageIndex = 1 Then begin

    LimpaCampo;
    ExecSELECTMP;
    ExecSELECTEstoqueMP;
    ExecSELECTFornecedorMP;
  //    ExecSELECT;

      with dbgProdutosMP do begin

        if MontaColunasMP Then begin

           DataSource := dmModule.dtsMatPrima;
          //determina as colunas a serem montadas 0 codigo cliente, 1 razao Social, 2 endereço numero...
          Columns.Insert(0);
          Columns.Insert(1);
          Columns.Insert(2);
          Columns.Insert(3);
          Columns.Insert(4);
       //   Columns.Insert(5);


          //Parametros da Coluna que exibe o código de barras do produto
          Columns.Items[0].Title.Caption := 'Código de Barras';
          Columns.Items[0].FieldName     := 'CODBARRASMP';
          Columns.Items[0].Width         := 130;
          Columns.Items[0].Alignment     := taLeftJustify;

          // Parametros que exibe o nome do produto
          Columns.Items[1].Title.Caption := 'Descrição do Produto';
          Columns.Items[1].FieldName     := 'ProdutoMP';
          Columns.Items[1].Width         := 240;
          Columns.Items[1].Alignment     := taLeftJustify;

          // Parametros que exibe o valor de venda (a)
          Columns.Items[2].Title.Caption := 'Valor de Custo';
          Columns.Items[2].FieldName     := 'VLRCUSTO';
          Columns.Items[2].Width         := 110;
          Columns.Items[2].Alignment     := taLeftJustify;

         // Parametros que exibe o valor de venda (b)
          Columns.Items[3].Title.Caption := 'Valor de Venda (A)';
          Columns.Items[3].FieldName     := 'VLRVENDA';
          Columns.Items[3].Width         := 110;
          Columns.Items[3].Alignment     := taLeftJustify;

          // Parametros que exibe o valor de venda (c)
          Columns.Items[4].Title.Caption := 'Local de Estoque';
          Columns.Items[4].FieldName     := 'Estoque';
          Columns.Items[4].Width         := 110;
          Columns.Items[4].Alignment     := taLeftJustify;

          MontaColunasMP := False;

        end;{if monta colunasmp}

      end;//with dbgrid

    end else if pcProdutos.ActivePageIndex = 2 Then begin

    ExecSELECTKitMP;

      with dbgKit do begin

        if MontaColunasKit Then begin

           DataSource := dmModule.dtsKitComp;
          //determina as colunas a serem montadas 0 codigo cliente, 1 razao Social, 2 endereço numero...
          Columns.Insert(0);
          Columns.Insert(1);
          Columns.Insert(2);
          Columns.Insert(3);
          Columns.Insert(4);
          Columns.Insert(5);

          //Parametros da Coluna que exibe o Código do Produto
          Columns.Items[0].Title.Caption := 'Código Interno';
          Columns.Items[0].FieldName     := 'IDPRODMP';
          Columns.Items[0].Width         := 85;

          //Parametros da Coluna que exibe o código de barras do produto
          Columns.Items[1].Title.Caption := 'Código de Barras';
          Columns.Items[1].FieldName     := 'CODBARRASMP';
          Columns.Items[1].Width         := 130;

          // Parametros que exibe o nome do produto
          Columns.Items[2].Title.Caption := 'Descrição do Produto';
          Columns.Items[2].FieldName     := 'NOME';
          Columns.Items[2].Width         := 240;

          // Parametros que exibe o valor de venda (a)
          Columns.Items[3].Title.Caption := 'Valor de Custo';
          Columns.Items[3].FieldName     := 'VLRCUSTO';
          Columns.Items[3].Width         := 110;
          Columns.Items[3].Alignment     := taCenter;

         // Parametros que exibe o valor de venda (b)
          Columns.Items[4].Title.Caption := 'Valor de Venda (A)';
          Columns.Items[4].FieldName     := 'VLRVENDA';
          Columns.Items[4].Width         := 110;
          Columns.Items[4].Alignment     := taCenter;

          // Parametros que exibe o valor de venda (c)
          Columns.Items[5].Title.Caption := 'Local de Estoque';
          Columns.Items[5].FieldName     := 'Estoque';
          Columns.Items[5].Width         := 110;

          MontaColunasKit := False;

        end;{if monta colunasmp}

      end;//with dbgrid


    end;//if

  end;//with

end;

procedure TfrmProd_MPrima.dbgProdutosMPCellClick(Column: TColumn);
begin

with dmModule do begin

ExibeDadosMP;

end;//with

end;

procedure TfrmProd_MPrima.ibeaAlterarMPClick(Sender: TObject);
begin

  with dmModule do begin


    if ibeaNovoMP.Caption = '&Gravar' Then begin

      ConfirmaMSG := Application.MessageBox('Deseja cancelar esta operação?'
                + #13 + 'Clique em Sim para cancelar e Não para continuar.','Notificação: Cancelar Operação', MB_YESNO + MB_ICONQUESTION);

      if ConfirmaMSG = 6 Then begin

        ibeaNovoMP.Caption := '&Novo';
    //    DesabilitaCampos(False);
   //    lbl_edtQtde.Enabled := False;
  //     lbl_edtEstoqueM.Enabled := False;
  //      lbl_edtVlrEstoque.Enabled := False;

      end;{if}

      end else begin

      //////////////////////////////////////////////////////////////////////////


    if ibProdutos.RecordCount < 1 Then begin

      ConfirmaMSG := Application.MessageBox('Não existe registro para ser alterado!!'
              + #13 + 'Clique em Ok para Retornar a operação normal.','Notificação: Cancelar Operação', MB_OK + MB_ICONWARNING);

      ibeaNovoMP.Caption := '&Novo';
     // DesabilitaCampos(False);
   //   lbl_edtQtdeEstoque.Enabled := False;
  //    lbl_edtEstoqueM.Enabled := False;
  //    lbl_edtVlrEstoque.Enabled := False;

    end else begin

      if lbl_edtNomeProdMP.Text = '' Then begin
         ConfirmaMSG := Application.MessageBox('É necessário selecionar um registro abaixo para ser alterado!!'
                    + #13 + 'Clique em Ok para Retornar a operação normal.','Notificação: Cancelar Operação', MB_OK + MB_ICONWARNING);
        ibeaAlterarMP.Caption := '&Alterar';

      end else begin

////////////////////////////////////////////////////////////////////////////////  

          if pcProdutos.ActivePage.TabIndex = 1 Then begin

            if ibeaAlterarMP.Caption = '&Atualizar' Then begin


              ConfirmaMSG := Application.MessageBox('Alterar esse Registro?','Notificação: Exclusão de Registro', MB_YESNO + mb_Defbutton1+MB_ICONQUESTION);
              if ConfirmaMSG = 6 Then begin

                AlteraProdutoMP;
                AlterarEstoqueMP;


                Commit(ibMatPrima);

                ExecSELECTMP;

              end;

              ibeaAlterarMP.Caption := '&Alterar';
              ibeaNovoMP.Enabled := True;
              ibeaExcluirMP.Enabled := True;
            //  DesabilitaCampos(False);
              lbl_edtQtdeEntrEstMP.Enabled := False;
              lbl_edtMinimoEstMP.Enabled := False;
              lbl_edtVlrEntrEstMP.Enabled := False;

            end else begin

              ibeaAlterarMP.Caption := '&Atualizar';
             // DesabilitaCampos(True);
              lbl_edtQtdeEntrEstMP.Enabled := True;
              lbl_edtMinimoEstMP.Enabled := True;
              lbl_edtVlrEntrEstMP.Enabled := True;

            end; {if}

          end; {if}
          
       end;{if}

     end;{if}

    end;{if}

  end; {with}


end;

procedure TfrmProd_MPrima.ibeaExcluirMPClick(Sender: TObject);

var

ConfirmaExclusao : Integer;

begin

  with dmModule do begin

    ConfirmaExclusao := Application.MessageBox('Confirma a exclusão do registro?','Notificação:Exclusão de registro',+MB_YESNO + MB_ICONQUESTION);

    if ConfirmaExclusao = 6 Then begin

      ibMatPrima.Close;
      ibMatPrima.SQL.Clear;
      ibMatPrima.SQL.Add('DELETE FROM TBLMATERIAPRIMA WHERE IDPRODMP=''' +  IntToStr(IDProdutoMP)+ '''');
      ibMatPrima.Open;

      ExecSELECTMP;

   end;{if}

   LimpaCamposMP;

  end;{with}
  
end;

procedure TfrmProd_MPrima.ibaSairKitClick(Sender: TObject);
begin
Close;
end;

procedure TfrmProd_MPrima.cboProdKitChange(Sender: TObject);

var

IDVlrProdutoMP   : TClasseCombo;

begin

  with dmModule do begin

    if cboProdKit.Text <> '' Then begin

      lbl_ProdutoMP.Caption := cboProdKit.Text;

    end;

    if cboProdKit.ItemIndex <> - 1 Then begin

      IDVlrProdutoMP   := TClasseCombo( cboProdKit.Items.Objects[cboProdKit.ItemIndex] );

      ibMatPrima.Close;
      ibMatPrima.SQL.Clear;
      ibMatPrima.SQL.Add('SELECT * FROM TBLMATERIAPRIMA WHERE IDPRODMP=''' + InttoStr( IDVlrProdutoMP.ID ) + '''');
      ibMatPrima.Open;

      lbl_edtVendaKit.Text := FormatFloat(CasasDecimais('Produtos'),ibMatPrima.FieldByName('VLRVENDA').AsFloat);
      lbl_edtCustoKit.Text := FormatFloat(CasasDecimais('Produtos'),ibMatPrima.FieldByName('VLRCUSTO').AsFloat);

    end;{if cbo produto}

  end;{with}

end;

procedure TfrmProd_MPrima.ibeaIncluirKitClick(Sender: TObject);

var

Valor1, Valor2, Valor3, Valor4 : Real;
ConfirmaKit, ConfirmaGravacao, IDLocalProdMP : Integer;
IDGravaProdMP   : TClasseCombo;
StringGravaProdMP, VlrCustoKitCupom, VlrVendaKitCupom  : String;

begin

  with dmModule do begin

  if lbl_edtNomeKit.Text <> '' Then begin

    ConfirmaKit := Application.MessageBox('Confirma a inclusão do Produto?','Notificação: Incluir Produto', + MB_YESNO +MB_ICONQUESTION);

      if ConfirmaKit = 6 Then begin

////////////////////////////////////////////////////////////////////////////////


    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS ORDER BY IDPROD DESC');
    ibProdutos.Open;

    if ibProdutos.RecordCount = 0 Then begin

    IDProdutoKit := 1;

    end;//if


    while not ibProdutos.Eof do begin

      IDProdutoKit := (ibProdutos.FieldByName('IDPROD').AsInteger + 1);
      ibProdutos.Last;

    end;{while}


////////////////////////////////////////////////////////////////////////////////
       if (lbl_edtVendaKit.Text <> '') and (lbl_edtCustoKit.Text <> '')  Then begin

         if (Pos(',',lbl_edtVendaKit.Text)>0) and (lbl_edtVendaKit.Text <> '') and (Pos(',',lbl_edtCustoKit.Text)>0) and (lbl_edtCustoKit.Text <> '') Then begin

          Valor1 := StrToFloat(StringReplace(lbl_edtVendaKit.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor2 := StrToFloat(StringReplace(lbl_edtCustoKit.Text,ThousandSeparator,'',[rfReplaceAll]));

         end else begin

          Valor1 := StrToFloat(StringReplace(lbl_edtVendaKit.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor2 := StrToFloat(StringReplace(lbl_edtCustoKit.Text,ThousandSeparator,'',[rfReplaceAll]));

         end;

       end;
  ////////////////////////////////////////////////////////////////////////////////
       if (lbl_edtVlrKitTotal.Text <> '') and (lbl_edtVlrCustoTotal.Text <> '')  Then begin

         if (Pos(',',lbl_edtVlrKitTotal.Text)>0) and (lbl_edtVlrKitTotal.Text <> '') and (Pos(',',lbl_edtVlrCustoTotal.Text)>0) and (lbl_edtVlrCustoTotal.Text <> '') Then begin

          Valor3 := StrToFloat(StringReplace(lbl_edtVlrKitTotal.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor4 := StrToFloat(StringReplace(lbl_edtVlrCustoTotal.Text,ThousandSeparator,'',[rfReplaceAll]));


         end else begin

          Valor3 := StrToFloat(StringReplace(lbl_edtVlrKitTotal.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor4 := StrToFloat(StringReplace(lbl_edtVlrCustoTotal.Text,ThousandSeparator,'',[rfReplaceAll]));

         end;

       end;
  ////////////////////////////////////////////////////////////////////////////////

      if (lbl_edtVlrCustoTotal.Text = '') and (lbl_edtVlrKitTotal.Text = '') Then begin

        lbl_edtVlrCustoTotal.Text := lbl_edtCustoKit.Text; //FormatFloat(CasasDecimais('Produtos'),ibMatPrima.FieldByName('VLRCUSTO').AsFloat);
        lbl_edtVlrKitTotal.Text   := lbl_edtVendaKit.Text;//FormatFloat(CasasDecimais('Produtos'),ibMatPrima.FieldByName('VLRVENDA').AsFloat);

      end else begin

        lbl_edtVlrKitTotal.Text   := FormatFloat(',0.00',(Valor1 + Valor3));
        lbl_edtVlrCustoTotal.Text := FormatFloat(',0.00',(Valor2 + Valor4));

      end;

////////////////////////////////////////////////////////////////////////////////

        If cboProdKit.ItemIndex = -1 Then begin

          StringGravaProdMP          := ' '' 0 '',';

        //  Application.MessageBox('Por Favor selecione um Produto','Notificação:Produto não Selecionado', + MB_OK+MB_ICONQUESTION);

        end else begin

          IDGravaProdMP   := TClasseCombo( cboProdKit.Items.Objects[cboProdKit.ItemIndex] );
          StringGravaProdMP          := ' ''' + InttoStr( IDGravaProdMP.ID ) + ''',';

          ibMatPrima.Close;
          ibMatPrima.SQL.Clear;
          ibMatPrima.SQL.Add('SELECT * FROM TBLMATERIAPRIMA WHERE IDPRODMP=''' + InttoStr( IDGravaProdMP.ID ) + '''');
          ibMatPrima.Open;

          IDLocalProdMP := ibMatPrima.FieldByName('IDLOCAL').AsInteger;

        end;


          VlrCustoKitCupom := StringReplace(lbl_edtCustoKit.Text,ThousandSeparator,'',[rfReplaceAll]);
          VlrCustoKitCupom := StringReplace(VlrCustoKitCupom,DecimalSeparator,'.',[rfReplaceAll]);
          if VlrCustoKitCupom = '' Then
            VlrCustoKitCupom := '0';


          VlrVendaKitCupom := StringReplace(lbl_edtVendaKit.Text,ThousandSeparator,'',[rfReplaceAll]);
          VlrVendaKitCupom := StringReplace(VlrVendaKitCupom,DecimalSeparator,'.',[rfReplaceAll]);
          if VlrVendaKitCupom = '' Then
            VlrVendaKitCupom := '0';


         { if lbl_edtCodProdMP.Text <> '' Then begin

            IDProdutoMatPrima := StrToInt(lbl_edtCodProdMP.Text);

          end; }

          ibKitComp.Close;
          ibKitComp.SQL.Clear;
          ibKitComp.SQL.Add('INSERT INTO TBLKITCOMPOSICAO '
          + '(IDPRODUTO,IDPRODMP,VLRCUSTO,VLRVENDA,IDLOCAL,CODBARRASPROD,DATA) values '
          + '(''' + IntToStr(IDProdutoKit) + ''','
          + StringGravaProdMP
          + ' ''' + VlrCustoKitCupom + ''',''' + VlrVendaKitCupom + ''','
          + ' ''' + IntToStr(IDLocalProdMP) + ''','
          + ' ''' + lbl_edtCodBarrasKit.Text + ''','
          + ' ''' + FormatDateTime('mm-dd-yyyy',now) + ''')');
          ibKitComp.ExecSQL;
          Commit(ibKitComp);

          ibKitComp.Close;
          ibKitComp.SQL.Clear;
          ibKitComp.SQL.Add('SELECT TBLKITCOMPOSICAO.IDPRODUTO,TBLKITCOMPOSICAO.CODBARRASPROD,'
          + 'TBLKITCOMPOSICAO.VLRCUSTO,TBLKITCOMPOSICAO.VLRVENDA,TBLKITCOMPOSICAO.IDPRODMP,'
          + 'TBLKITCOMPOSICAO.IDLOCAL,TBLKITCOMPOSICAO.DATA,TBLMATERIAPRIMA.CODBARRASMP,'
          + 'TBLMATERIAPRIMA.NOME as ProdutoMP FROM TBLKITCOMPOSICAO '
          + 'INNER JOIN TBLMATERIAPRIMA ON TBLKITCOMPOSICAO.IDPRODMP=TBLMATERIAPRIMA.IDPRODMP '
          + 'WHERE TBLKITCOMPOSICAO.IDPRODUTO=''' + IntToStr(IDProdutoKit) + '''');
          ibKitComp.Open;

          LimpaCamposKit;

      {  if (lbl_edtVlrCustoTotal.Text = '') and (lbl_edtVlrKitTotal.Text = '') Then begin

           //atribui na variavel substituindo o ponto para vlr em branco
            ValorCusto := StringReplace(lbl_edtVlrCustoTotal.Text,ThousandSeparator,'',[rfReplaceAll]);
            //atribui a variavel o valor separando por ponto
            ValorCusto := StringReplace(ValorCusto,DecimalSeparator,'.',[rfReplaceAll]);
            if ValorCusto = '' Then
              ValorCusto := '0';

            ValorVendaa := StringReplace(lbl_edtVlrKitTotal.Text,ThousandSeparator,'',[rfReplaceAll]);
            ValorVendaa := StringReplace(ValorVendaa,DecimalSeparator,'.',[rfReplaceAll]);
            if ValorVendaa = '' Then
              ValorVendaa := '0';

         end;  }

     end;{if confirma msg}

      {   if (lbl_edtVlrCustoTotal.Text <> '') and (lbl_edtVlrKitTotal.Text <> '') Then begin

           //atribui na variavel substituindo o ponto para vlr em branco
            ValorCusto := StringReplace(lbl_edtVlrCustoTotal.Text,ThousandSeparator,'',[rfReplaceAll]);
            //atribui a variavel o valor separando por ponto
            ValorCusto := StringReplace(ValorCusto,DecimalSeparator,'.',[rfReplaceAll]);
            if ValorCusto = '' Then
              ValorCusto := '0';

            ValorVendaa := StringReplace(lbl_edtVlrKitTotal.Text,ThousandSeparator,'',[rfReplaceAll]);
            ValorVendaa := StringReplace(ValorVendaa,DecimalSeparator,'.',[rfReplaceAll]);
            if ValorVendaa = '' Then
              ValorVendaa := '0';

          end;}{if lblnomeprodmp}

          {  ibProdutos.Close;
            ibProdutos.SQL.Clear;
            ibProdutos.SQL.Add('UPDATE CADPRODUTOS SET '
            + ' VALORVENDAA = ''' + ValorVendaa + ''','
            + ' VALORCUSTO = ''' + ValorCusto + ''' WHERE IDPROD=''' + IntToStr(IDProdutoMatPrima) + '''');
            ibProdutos.ExecSQL;
            Commit(ibProdutos);
            ExecSELECT; }

  end else begin

  ConfirmaGravacao:=Application.MessageBox('Atenção o nome do kit encontra-se em branco, favor preencher??','Notificação: Incluir Produto', + MB_YESNO +MB_ICONQUESTION);

  end;//if label nome kit

  end;{with}


end;

procedure TfrmProd_MPrima.ibeaFinalizarClick(Sender: TObject);

var

ConfirmaGravacao : Integer;

begin

  with dmModule do begin

    ConfirmaGravacao := Application.MessageBox('Confirma a inclusão do Produto?','Notificação: Incluir Produto', + MB_YESNO +MB_ICONQUESTION);

    if ConfirmaGravacao = 6 Then begin

      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('INSERT INTO CADPRODUTOS '
      + '(NOME,IDPROD) values '
      + '(''' + lbl_edtNomeKit.Text + ''','
      + ' ''' + IntToStr(IDProdutoKit) + ''')');
      ibProdutos.ExecSQL;
      Commit(ibProdutos);

    end;//if confirmagravacao

    LimpaCamposKit;
    lbl_edtCodBarrasKit.Clear;
    lbl_edtRefKit.Clear;
    lbl_edtNomeKit.Clear;
    lbl_edtVlrCustoTotal.Text := '0,00';
    lbl_edtVlrKitTotal.Text := '0,00';

  end;//with
  
end;

procedure TfrmProd_MPrima.lbl_edtRefKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtCodBarra.SetFocus;

  end;

end;

procedure TfrmProd_MPrima.lbl_edtNomeProdutoKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    cboModalidade.SetFocus;

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
begin

  if key=#13 Then begin

    lbl_edtVendab.SetFocus;

  end;

end;

procedure TfrmProd_MPrima.lbl_edtVendabKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtVendac.SetFocus;

  end;

end;

procedure TfrmProd_MPrima.lbl_edtVendacKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtVendad.SetFocus;

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

procedure TfrmProd_MPrima.lbl_edtRefExit(Sender: TObject);

var

Ref : String;
ConfirmaMSG : Integer;

begin

  with dmModule do begin

    if lbl_edtRef.Text <> '' Then begin

      Commit(ibProdutos);
      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE REF=''' + lbl_edtRef.Text + '''');
      ibProdutos.Open;
      (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat         := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

      Ref := ibProdutos.FieldByName('REF').AsString;


      if lbl_edtRef.Text = Ref Then begin


        ConfirmaMSG := Application.MessageBox('Atenção esta referência já existe?'
                  + #13 + 'Clique em Sim para cancelar e Não para continuar.','Notificação: Cancelar Operação', MB_YESNO + MB_ICONQUESTION);

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

cboFornecedores.SetFocus;

end;

end;

procedure TfrmProd_MPrima.lbl_edtCodBarraExit(Sender: TObject);

var

CodBarras : String;
ConfirmaMSG : Integer;

begin

  with dmModule do begin

    if lbl_edtCodBarra.Text <> '' Then begin

      Commit(ibProdutos);
      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE CODBARRAS=''' + lbl_edtCodBarra.Text + '''');
      ibProdutos.Open;
      (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat         := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

      CodBarras := ibProdutos.FieldByName('CODBARRAS').AsString;

      if lbl_edtCodBarra.Text = CodBarras Then begin


        ConfirmaMSG := Application.MessageBox('Atenção o código de barras já existe?'
                  + #13 + 'Clique em Sim para cancelar e Não para continuar.','Notificação: Cancelar Operação', MB_YESNO + MB_ICONQUESTION);

       if ConfirmaMSG = 6 Then begin

         ibeaNovo.Caption := '&Novo';
         ibeaAlterar.Caption := '&Alterar';
         lbl_edtCodBarra.Clear;
         ExecSELECT;
         LimpaCampo;
         DesabilitaCampos(False);

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

    if lbl_edtNomeProduto.Text <> '' Then begin

      Commit(ibProdutos);
      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE NOME=''' + lbl_edtNomeProduto.Text + '''');
      ibProdutos.Open;
      (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat         := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

      NomeProd := ibProdutos.FieldByName('NOME').AsString;

      if lbl_edtNomeProduto.Text = NomeProd Then begin

     //Application.MessageBox('Atenção o nome já existe ','Atenção:Nome Existente no registro',MB_OK+MB_ICONWARNING);

        ConfirmaMSG := Application.MessageBox('Atenção o nome já existe?'
                  + #13 + 'Clique em Sim para cancelar e Não para continuar.','Notificação: Cancelar Operação', MB_YESNO + MB_ICONQUESTION);

       if ConfirmaMSG = 6 Then begin

         ibeaNovo.Caption := '&Novo';
         ibeaAlterar.Caption := '&Alterar';
         lbl_edtNomeProduto.Clear;
         ExecSELECT;
         LimpaCampo;
         DesabilitaCampos(False);

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

    Application.MessageBox('Por Favor selecione um Produto','Notificação:Produto não Selecionado', + MB_OK+MB_ICONQUESTION);

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
         MessageDlg('Ocorreu um erro ao tentar mostrar o Formulário: ' + E.Message,mtError,[mbOk],0);
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

  end;//if

end;

procedure TfrmProd_MPrima.ckDiminuirEstoqueCheck(Sender: TObject);
begin

  if ckDiminuirEstoque.Checked Then begin

    ckAcrescentarEstoq.Checked := False;

  end;//if

end;

procedure TfrmProd_MPrima.Pimaco60871Click(Sender: TObject);
begin
frmPimaco6087.ShowModal;
end;

procedure TfrmProd_MPrima.Pimaco60891Click(Sender: TObject);
begin
frmPimaco6089.ShowModal;
end;

procedure TfrmProd_MPrima.lbl_edtVendadExit(Sender: TObject);
begin

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

end.
