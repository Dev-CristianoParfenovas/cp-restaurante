unit Produtos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Grids, DBGrids, classComboBox,
  RxGIF, CheckLst, IniFiles, IBQuery, DB, DBTables, Menus,jpeg,axCtrls,
  Barcode, Buttons;

type
  TfrmProdutos = class(TForm)
    pcProdutos: TPageControl;
    tbsProduto: TTabSheet;
    tbsEstoque: TTabSheet;
    lblDadosprod: TLabel;
    lbl_edtCodigo: TLabeledEdit;
    lbl_edtCodBarra: TLabeledEdit;
    Image3: TImage;
    Label1: TLabel;
    Image6: TImage;
    Label2: TLabel;
    lbl_edtCusto: TLabeledEdit;
    lbl_edtVendab: TLabeledEdit;
    lbl_edtVendaa: TLabeledEdit;
    lbl_edtVendac: TLabeledEdit;
    lbl_edtLucro: TLabeledEdit;
    lbl_edtComiss: TLabeledEdit;
    lbl_edtCodEcf: TLabeledEdit;
    lblDesc: TLabel;
    lbl_edtVlrestoq: TLabeledEdit;
    lbl_edtEstoqgeral: TLabeledEdit;
    lbl_edtEstMin: TLabeledEdit;
    Image13: TImage;
  //  ibeaNovo: TIBEAntialiasButton;
  {  ibeaAlterar: TIBEAntialiasButton;
    ibeaExcluir: TIBEAntialiasButton;
    ibeaPrimeiro: TIBEAntialiasButton;
    ibeaAnterior: TIBEAntialiasButton;
    ibeaProximo: TIBEAntialiasButton;
    ibeaUltimo: TIBEAntialiasButton;
    ibeaSair: TIBEAntialiasButton; }
    dbgProdutos: TDBGrid;
    lblLocaisestoq: TLabel;
    dbgLocalestocagem: TDBGrid;
    Label5: TLabel;
    lblMovEstoq: TLabel;
    dbgMovEst: TDBGrid;
    cboTipoProd: TComboBox;
    lbl_TipoProd: TLabel;
    ListLocalEstocagem: TCheckListBox;
    Shape8: TShape;
    Label7: TLabel;
    imgProduto: TImage;
    Shape2: TShape;
    lblAmpliarImagem: TLabel;
    imgAmpliar: TImage;
    Shape7: TShape;
    lblProcurarImagem: TLabel;
    imgProcurarImagem: TImage;
    Shape6: TShape;
   { btnGerarCodigo: TIBEAntialiasButton;
    btnImprimirCodigo: TIBEAntialiasButton;  }
    imgCodigoBarras: TImage;
    Shape1: TShape;
    Label15: TLabel;
    lbl_edtNomeProduto: TLabeledEdit;
    cboGrupo: TComboBox;
    cboSubgrupo: TComboBox;
    cboFornecedores: TComboBox;
    Shape5: TShape;
    Label4: TLabel;
    Image15: TImage;
    Shape9: TShape;
    Label6: TLabel;
    Image17: TImage;
    lbl_EntrEstoque: TLabel;
    StatusBar1: TStatusBar;
    Shape3: TShape;
    Label17: TLabel;
    Label14: TLabel;
    Label8: TLabel;
   // mxFlatPanel1: TmxFlatPanel;
    lblEstoqueCodBarrasProd: TLabel;
    lblTracoEstoque: TLabel;
    lblEstoqueNomeProd: TLabel;
    Label23: TLabel;
    Label30: TLabel;
    lblTotalRealizadaHoje: TLabel;
    lblTotalMovimentacao: TLabel;
    Label32: TLabel;
    Bevel1: TBevel;
    Label31: TLabel;
    lblEstadoEstoque: TLabel;
    Image19: TImage;
    Label24: TLabel;
    popMnuImagem: TPopupMenu;
    Scanner1: TMenuItem;
    mnuAdquirirIMG: TMenuItem;
    N1: TMenuItem;
    mnuSelecionarOrigem: TMenuItem;
    N2: TMenuItem;
    popmnuProcurar: TMenuItem;
    opDialogImagem: TOpenDialog;
    GeraCodigoBarra: TBarcode;
    lbl_edtMls: TLabeledEdit;
    Shape11: TShape;
    lbl_edtFabricante: TLabeledEdit;
    Label3: TLabel;
    lbl_edtIndicacao: TLabeledEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    lbl_edtQtdeEstoque: TLabeledEdit;
    lbl_edtEstoqueM: TLabeledEdit;
    lbl_edtVlrEstoque: TLabeledEdit;
    Label27: TLabel;
    Image1: TImage;
    GroupBox1: TGroupBox;
    sb_ord_nome: TSpeedButton;
    lbl_edtNome: TLabeledEdit;
    lbl_edtCodP: TLabeledEdit;
    lbl_edtLucroVenda: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    lbl_edtRef: TLabeledEdit;
    lbl_edtNumRef: TLabeledEdit;

    procedure Commit(IBQueryExec : TIBQuery);
    procedure ExecEstoque;
    procedure DesabilitaCampos(opcao:Boolean);
    procedure AlteraProduto;
    procedure AlteraEstoque;
    procedure LimpaCampo;
    procedure ExibeDados;
    procedure ExecSELECTTProd;
    procedure ExecSELECTGrupo;
    procedure ExecSELECTSubgrupo;
    procedure ExecSELECTFornecedor;
    procedure ExecSELECT;
    procedure FormShow(Sender: TObject);
    procedure ibeaSairClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ibeaNovoClick(Sender: TObject);
    procedure pcProdutosChange(Sender: TObject);
    procedure dbgProdutosCellClick(Column: TColumn);
    procedure ibeaPrimeiroClick(Sender: TObject);
    procedure ibeaAnteriorClick(Sender: TObject);
    procedure ibeaProximoClick(Sender: TObject);
    procedure ibeaUltimoClick(Sender: TObject);
    procedure ibeaAlterarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ibeaExcluirClick(Sender: TObject);
    procedure lbl_edtVendabExit(Sender: TObject);
    procedure lbl_edtCustoExit(Sender: TObject);
    procedure lbl_edtVendaaExit(Sender: TObject);
    procedure lbl_edtVendacExit(Sender: TObject);
    procedure ListLocalEstocagemClick(Sender: TObject);
    procedure cboGrupoChange(Sender: TObject);
    procedure imgAmpliarClick(Sender: TObject);
    procedure imgProcurarImagemClick(Sender: TObject);
    procedure mnuAdquirirIMGClick(Sender: TObject);
    procedure mnuSelecionarOrigemClick(Sender: TObject);
    procedure popmnuProcurarClick(Sender: TObject);
    procedure lbl_edtCodBarraChange(Sender: TObject);
    procedure lbl_edtCodBarraKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtLucroExit(Sender: TObject);
    procedure lbl_edtQtdeEstoqueExit(Sender: TObject);
    procedure btnGerarCodigoClick(Sender: TObject);
    procedure btnImprimirCodigoClick(Sender: TObject);
    procedure lbl_edtCodPExit(Sender: TObject);
    procedure lbl_edtCodPKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtNomeChange(Sender: TObject);
    procedure sb_ord_nomeClick(Sender: TObject);
    procedure dbgProdutosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure lbl_edtLucroVendaExit(Sender: TObject);
    procedure lbl_edtNumRefChange(Sender: TObject);
    procedure lbl_edtCustoChange(Sender: TObject);
    procedure lbl_edtVendaaChange(Sender: TObject);
    procedure lbl_edtVendabChange(Sender: TObject);
    procedure lbl_edtVendacChange(Sender: TObject);
    procedure lbl_edtQtdeEstoqueChange(Sender: TObject);
    procedure lbl_edtEstoqueMChange(Sender: TObject);
    procedure lbl_edtVlrEstoqueChange(Sender: TObject);
    procedure lbl_edtRefKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  procedure CarregarScanImage(Handle: THandle; AppName: ShortString; Param: String; imgProduto : TImage);
    
var
  frmProdutos: TfrmProdutos;
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
  ValorProm : String;
  TotalML : String;
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


implementation

uses  uBuscaProdutos, funcPosto, untdmModule, untGeraCodBarra,
  untRelCodBarrasAD;

procedure CarregarScanImage; external 'Data\RunTime\ICETwain.dll' index 1;
function ExtrairDirArquivoSalvo : String; external 'Data\RunTime\ICETwain.dll' index 2;

{$R *.dfm}

procedure TfrmProdutos.Commit(IBQueryExec : TIBQuery);
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

procedure TfrmProdutos.DesabilitaCampos(opcao:Boolean);
begin
  lbl_edtNomeProduto.Enabled := opcao;
  cboGrupo.Enabled := opcao;;
  cboSubgrupo.Enabled := opcao;
  cboTipoProd.Enabled := opcao;;
  cboFornecedores.Enabled := opcao;
  lbl_edtCodigo.Enabled := opcao;
//  lbl_edtEmb.Enabled := opcao;
//  lbl_edtUn.Enabled := opcao;
//  lbl_edtUncompra.Enabled := opcao;
  lbl_edtCusto.Enabled := opcao;
  lbl_edtCodBarra.Enabled := opcao;
  lbl_edtVendaa.Enabled := opcao;
  lbl_edtVendab.Enabled := opcao;
  lbl_edtVendac.Enabled := opcao;
  lbl_edtLucro.Enabled := opcao;
  lbl_edtCodEcf.Enabled := opcao;
  lbl_edtComiss.Enabled := opcao;
  lbl_edtEstoqgeral.Enabled := opcao;
  lbl_edtEstMin.Enabled := opcao;
  lbl_edtVlrestoq.Enabled := opcao;
//  lbl_edtLocPrateleira.Enabled := opcao;
 // lbl_edtQtde.Enabled := opcao;
//  lbl_edtVlr.Enabled := opcao;
  ListLocalEstocagem.Enabled := opcao;
  lbl_edtMls.Enabled := opcao;
  lbl_edtIndicacao.Enabled := opcao;
  lbl_edtFabricante.Enabled := opcao;
  lbl_edtLucroVenda.Enabled := opcao;
  lbl_edtRef.Enabled := opcao;


end;

procedure TfrmProdutos.AlteraProduto;


begin

// Erro := False;

  with dmModule do begin

    If cboTipoProd.ItemIndex = -1 Then begin

  //    Erro := True;

      StringTProd     := ' TIPOPROD= ''0'',';
      // Application.MessageBox('Informe o Tipo de Produto','Notifica��o: Funcion�rio n�o especificado',MB_OK+MB_ICONERROR);

    end else begin

      ClassTipoProd      := TClasseCombo( cboTipoProd.Items.Objects[cboTipoProd.ItemIndex] );
      StringTProd        := ' TIPOPROD=''' + InttoStr( ClassTipoProd.ID ) + ''',';

    end;


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
    ////////////////////////////////////////////////////////////////////////////////////////////////////

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

      ValorVendac := StringReplace(lbl_edtVendac.Text,ThousandSeparator,'',[rfReplaceAll]);
      ValorVendac := StringReplace(ValorVendac,DecimalSeparator,'.',[rfReplaceAll]);
      if ValorVendac = '' Then
        ValorVendac := '0';


    //  if Not Erro Then begin
      if ibProdutos.RecordCount > 0 Then begin

        //GRAVA AS ALTERACOES NA TABELA DE PRODUTOS.
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
     //   + ' MLS = ''' + lbl_edtMls.Text + ''','
        + ' REF = ''' + lbl_edtRef.Text + ''','
        + StringLocalEstoque
        + StringForn
        + StringGrupo
        + StringSubGrupo
        + StringTProd
        + ' LUCRO = ''' + lbl_edtLucro.Text + ''','
        + ' COMISSAO = ''' + lbl_edtComiss.Text + ''','
        + ' ECF = ''' + lbl_edtCodEcf.Text + ''','
        + ' INDICACAO = ''' + lbl_edtIndicacao.Text + ''','
        + ' FABRICANTE = ''' + lbl_edtFabricante.Text + ''' WHERE IDPROD=''' + InttoStr(IDProd) + '''');
        ibProdutos.ExecSQL;
        Commit(ibProdutos);

      end; {if recordcount}

    end;{if}

  end;{with}

end;

procedure TfrmProdutos.AlteraEstoque;

var
QtdeGeral,TotalQtdeGeralAlt,Minimo,TotalMinimoAlt,VlrGeral,VlrGeralAlt, NovoValor : Real;
TotalGeralQtde, TotalMinimo, TotalVlrEstoque, VlrTotalCusto : String;
VlrCusto,TotalCusto : Real;
QtdeProdEstoqueE,ValorTotalE, VlrCustoProd : String;

begin

  with dmModule do begin

    if lbl_edtNomeProduto.Text <> '' Then begin

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

          Commit(ibEntrProdEstoque);

        end;//if record count

       /////////////////////////////////////////////////////////////////////////

      end;//if

    end;//if lbl nomeprod

  lbl_edtQtdeEstoque.Clear;
  lbl_edtEstoqueM.Clear;
  lbl_edtVlrEstoque.Clear;

  end;//with

end;

procedure TfrmProdutos.LimpaCampo;//procedimento para limpar os campos ao abrir o formulario.
begin

  lbl_edtNomeProduto.Clear;
  lbl_edtCodigo.Clear;
//  lbl_edtEmb.Clear;
//  lbl_edtUn.Clear;
//  lbl_edtUncompra.Clear;
  lbl_edtCusto.Text := '0,00';
  lbl_edtCodBarra.Clear;
  lbl_edtVendaa.Text := '0,00';
  lbl_edtVendab.Text := '0,00';
  lbl_edtVendac.Text := '0,00';
  lbl_edtEstoqgeral.Clear;
  lbl_edtEstMin.Clear;
  lbl_edtVlrestoq.Clear;
  lbl_edtMls.Text := '0';
  lbl_edtIndicacao.Clear;
  lbl_edtFabricante.Clear;
  lbl_edtQtdeEstoque.Clear;
  lbl_edtEstoqueM.Clear;
  lbl_edtVlrEstoque.Clear;
  lbl_edtLucroVenda.Clear;
  lbl_edtRef.Clear;

end;

procedure TfrmProdutos.ExibeDados;//PROCEDIMENTO PARA EXIBIR OS DADOS DO PRODUTO.
var
  i : Integer;

  OleGraphic: TOleGraphic;
  fs: TFileStream;
begin

  with dmModule do begin

//    (ibProdutos.FieldByName('IDPROD') as TIntegerField).DisplayFormat := '0000000000';
    IDProd := ibProdutos.FieldByName('IDPROD').AsInteger;
    lbl_edtCodigo.Text     := FormatFloat('0',ibProdutos.FieldByName('IDPROD').AsInteger);

    for i:=0 to cboTipoProd.Items.Count -1 do begin
      if TClasseCombo( cboTipoProd.Items.Objects[i]).ID = ibProdutos.FieldByName('TIPOPROD').AsInteger then begin
        cboTipoProd.ItemIndex:= i;
        Break;
      end else begin
        cboTipoProd.ClearSelection;
      end;
    end;

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
    lbl_edtMls.Text                 := ibProdutos.FieldByName('MLS').AsString;
    lbl_edtLucro.Text               := ibProdutos.FieldByName('LUCRO').AsString;
    lbl_edtComiss.Text              := ibProdutos.FieldByName('COMISSAO').AsString;
    lbl_edtCodEcf.Text              := ibProdutos.FieldByName('ECF').AsString;
//    lbl_edtLocPrateleira.Text       := ibProdutos.FieldByName('LOCALIZACAO').AsString;
  //  lbl_edtVlr.Text                 := FormatFloat(CasasDecimais('Combustiveis'),ibProdutos.FieldByName('VLRPROM').AsFloat);
 //   lbl_edtQtde.Text                := ibProdutos.FieldByName('QTDEPROM').AsString;
    lbl_edtIndicacao.Text           := ibProdutos.FieldByName('INDICACAO').AsString;
    lbl_edtFabricante.Text          := ibProdutos.FieldByName('FABRICANTE').AsString;
    lbl_edtLucroVenda.Text          := ibProdutos.FieldByName('LUCROVENDA').AsString;
   // lbl_edtEstoqgeral.Text          := IntToStr( ibProdutos.FieldByName('ESTGERAL').AsInteger );
    //lbl_edtEstMin.Text              := IntToStr( ibProdutos.FieldByName('ESTMIN').AsInteger );
    //lbl_edtVlrestoq.Text            := ibProdutos.FieldByName('TOTALEST').AsString;
    //lbl_edtEstoqgeral.Text          :=  FormatFloat('###00,0',ibProdutos.FieldByName('QtdeEstoque').AsFloat);
    //lbl_edtEstMin.Text              :=  FormatFloat('0',ibProdutos.FieldByName('ESTOQUEMIN').AsFloat);


    ///////////////////////////////////////////////////////////////////////////////////////

    //ROTINA DE EXIBI��O DA IMAGEM DO PRODUTO
    if lbl_edtNomeProduto.Text <> '' Then begin
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
        
    //MOSTRA OUTRAS OP��ES NO CADASTRO
    lblEstoqueCodBarrasProd.Caption    := ibProdutos.FieldByName('CODBARRAS').AsString;
    lblTracoEstoque.Caption            := ' - ';
    lblEstoqueNomeProd.Caption         := ibProdutos.FieldByName('NOME').AsString;


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
    if ibEntrProdEstoque.RecordCount > 0 then begin

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
    ibMovEst.Open;


    (ibMovEst.FieldByName('SAIDA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

  end; {with}

end;

procedure TfrmProdutos.ExecEstoque;
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

procedure TfrmProdutos.ExecSELECTTProd;
begin

  with dmModule do begin

    ibTipoProd.Close;
    ibTipoProd.SQL.Clear;
    ibTipoProd.SQL.Add('SELECT * FROM TBLTIPOPRODUTO');
    ibTipoProd.Open;

    //traz dados do funcionario no combo
    cboTipoProd.Clear; //LIMPA O COMBOBOX
    while not ibTipoProd.Eof do begin
      ClassTipoProd    := TClasseCombo.Create;
      ClassTipoProd.ID  := ibTipoProd.FieldByName('IDTIPOPROD').AsInteger;
      cboTipoProd.Items.AddObject(ibTipoProd.FieldByName('NOME').AsString,ClassTipoProd);
      ibTipoProd.Next;
    end; {while}

  end; {with}

end;

procedure TfrmProdutos.ExecSELECTGrupo;
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

procedure TfrmProdutos.ExecSELECTSubgrupo;
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

procedure TfrmProdutos.ExecSELECTFornecedor;
begin
  with dmModule do begin

    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Fornecedores''');
    ibClassificacao.Open;
    IDClassForn := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICA��O DO FORNECEDOR NA VARIAVEL.

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

procedure TfrmProdutos.ExecSELECT;
begin
  with dmModule do begin

   { ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Produtos''');
    ibClassificacao.Open;
    IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger;} // ATRIBUI A IDENTIFICA��O DO FORNECEDOR NA VARIAVEL.


   //BUSCA TODOS OS PRODUTOS QUE ESTEJAM NA CLASSIFICA��O DE PRODUTOS
    Commit(ibProdutos);
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

  //  (ibProdutos.FieldByName('IDPROD') as TIntegerField).DisplayFormat           := '0000000000';
    (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat         := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutos.FieldByName('VLRPROM') as TFloatField).DisplayFormat            := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
  //  (ibProdutos.FieldByName('LUCROVENDA') as TFloatField).DisplayFormat                := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

  end;
end;

procedure TfrmProdutos.FormShow(Sender: TObject);
begin

 ListLocalEstocagem.Enabled := False;
 LimpaCampo;

 lbl_edtCodP.Text := '';
 lbl_edtNome.Text := '';


 //DEFINE COM QUE A PAGEINDEX FIQUE COMO 0
  pcProdutos.ActivePageIndex := 0;

 // ibeaNovo.Caption := '&Novo';
 // ibeaAlterar.Caption := '&Alterar';

  //habilita os botes ao abrir o form
//  ibeaNovo.Enabled := True;
//  ibeaAlterar.Enabled := True;
//  ibeaExcluir.Enabled := True;


  DesabilitaCampos(False);
  lbl_edtQtdeEstoque.Enabled := False;
  lbl_edtEstoqueM.Enabled := False;
  lbl_edtVlrEstoque.Enabled := False;

  with dmModule do begin

   ibEntrProdEstoque.Close;
   ibEntrProdEstoque.SQL.Clear;
   ibEntrProdEstoque.SQL.Add('SELECT QUANTIDADE FROM TBLENTRADAESTOQUEPROD');
   ibEntrProdEstoque.Open;


 // LimpaCampo;//procedimento para limpar os campos ao abrir o formulario.
    ExecEstoque;
    ExecSELECT;
    ExecSELECTGrupo;
    ExecSELECTSubgrupo;
    ExecSELECTTProd;
    ExecSELECTFornecedor;
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
        Columns.Items[0].Width         := 58;
        Columns.Items[0].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o c�digo de barras do produto
        Columns.Items[1].Title.Caption := 'C�digo de Barras';
        Columns.Items[1].FieldName     := 'CODBARRAS';
        Columns.Items[1].Width         := 130;
        Columns.Items[1].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o C�digo do Produto
        Columns.Items[2].Title.Caption := 'Ref.';
        Columns.Items[2].FieldName     := 'REF';
        Columns.Items[2].Width         := 75;
        Columns.Items[2].Alignment     := taLeftJustify;


        // Parametros que exibe o nome do produto
        Columns.Items[3].Title.Caption := 'Descri��o do Produto';
        Columns.Items[3].FieldName     := 'NOME';
        Columns.Items[3].Width         := 240;
        Columns.Items[3].Alignment     := taLeftJustify;


        // Parametros que exibe o valor de venda (a)
        Columns.Items[4].Title.Caption := 'Valor de Custo';
        Columns.Items[4].FieldName     := 'VALORCUSTO';
        Columns.Items[4].Width         := 88;
        Columns.Items[4].Alignment     := taLeftJustify;

       // Parametros que exibe o valor de venda (b)
        Columns.Items[5].Title.Caption := 'Valor de Venda (A)';
        Columns.Items[5].FieldName     := 'VALORVENDAA';
        Columns.Items[5].Width         := 95;
        Columns.Items[5].Alignment     := taLeftJustify;

        // Parametros que exibe o valor de venda (c)
        Columns.Items[6].Title.Caption := 'Qtde.Estoque';
        Columns.Items[6].FieldName     := 'QtdeEstoque';
        Columns.Items[6].Width         := 70;
        Columns.Items[6].Alignment     := taLeftJustify;

        // Parametros que exibe o valor de venda (c)
        Columns.Items[7].Title.Caption := 'Local de Estoque';
        Columns.Items[7].FieldName     := 'Estoque';
        Columns.Items[7].Width         := 100;
        Columns.Items[7].Alignment     := taLeftJustify;


        MontaColunas := False;

      end;
    end;
////////////////////////////////////////////////////////////////////////////////
  end;
  
end;

procedure TfrmProdutos.ibeaSairClick(Sender: TObject);
begin
  close;
end;

procedure TfrmProdutos.FormKeyPress(Sender: TObject; var Key: Char);
begin
 Key := UpCase(Key); //Deixa todos os textos em maiusculo
  if Key = #13 Then begin
     Key := #0; //Desabilita processamento posterior da tecla
     Perform(WM_NEXTDLGCTL,0,0);//Simula o envio de Tab
  end;
end;

procedure TfrmProdutos.ibeaNovoClick(Sender: TObject);
var
 NovaImagem: String;
 ImagemSalva : String;
begin

 // Erro := False;

  with dmModule do begin

   { ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS ORDER BY IDPROD DESC');
    ibProdutos.Open;}

    Commit(ibProdutos);
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
    + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD ORDER BY CADPRODUTOS.IDPROD DESC');
    ibProdutos.Open;


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


        if lbl_edtNomeProduto.Text <> '' Then begin

         { ibProdutos.Close;
          ibProdutos.SQL.Clear;
          ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE NOME=''' + lbl_edtNomeProduto.Text + '''');// and CODBARRAS=''' + lbl_edtCodBarra.Text + '''');
          ibProdutos.Open; }

          Commit(ibProdutos);
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


          if (lbl_edtNomeProduto.Text = ibProdutos.FieldByName('NOME').AsString) Then begin

            Application.MessageBox('Aten��o o nome j� existe!!','Notificacao:Registro existente',+ MB_OK+MB_ICONWARNING);



      {  if (lbl_edtCodBarra.Text = ibProdutos.FieldByName('CODBARRAS').AsString) Then begin

            Application.MessageBox('Aten��o o c�digo j� existe!!','Notificacao:Registro existente',+ MB_OK+MB_ICONWARNING);
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

            Commit(ibProdutos);
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
            + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD');
            ibProdutos.Open;

           // lbl_edtCodigo.Text := IntToStr(ibProdutos.FieldByName('IDPROD').AsInteger + 1);

            (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
            (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
            (ibProdutos.FieldByName('VLRPROM') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
        //    (ibProdutos.FieldByName('LUCROVENDA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

          end;//if lbl_nomeprod

        end;//if lblnomeprod <> ''

        if lbl_edtCodBarra.Text <> '' Then begin

         { ibProdutos.Close;
          ibProdutos.SQL.Clear;
          ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE CODBARRAS=''' + lbl_edtCodBarra.Text + '''');
          ibProdutos.Open; }

          Commit(ibProdutos);
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
          + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD WHERE CADPRODUTOS.CODBARRAS=''' + lbl_edtCodBarra.Text + '''');
          ibProdutos.Open;

        if (lbl_edtCodBarra.Text = ibProdutos.FieldByName('CODBARRAS').AsString) Then begin

            Application.MessageBox('Aten��o o c�digo j� existe!!','Notificacao:Registro existente',+ MB_OK+MB_ICONWARNING);


            //SELECT PARA TRAZER O CODIGO EM ORDEM CRESCENTE.
            Commit(ibProdutos);
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
            + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD');// ORDER BY CADPRODUTOS.NOME=''' + lbl_edtNomeProduto.Text + '''');
            ibProdutos.Open;

           // lbl_edtCodigo.Text := IntToStr(ibProdutos.FieldByName('IDPROD').AsInteger + 1);

            (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
            (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
            (ibProdutos.FieldByName('VLRPROM') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
          //  (ibProdutos.FieldByName('LUCROVENDA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

          end;//if lbl_codbarras

        end;//if lblcodbarras <> ''


////////////////////////////////////////////////////////////////////////////////


    ConfirmaMSG := Application.MessageBox('Confirma o registro','Notifica��o:Inclus�o de registro',+MB_YESNO+MB_ICONINFORMATION);

    ibeaNovo.Caption := '&Novo';

    if ConfirmaMSG = 6 Then begin


        //traz a identificacao do produto do item do objeto selecionado.
        If cboTipoProd.ItemIndex = -1 Then begin

         //   Erro := True;
         StringTProd     := ' ''0'',';
         Application.MessageBox('Informe o Tipo de Produto','Notifica��o:Produto n�o especificado',MB_OK+MB_ICONERROR);         DesabilitaCampos(True);
         lbl_edtQtdeEstoque.Enabled := True;
         lbl_edtEstoqueM.Enabled := True;
         lbl_edtVlrEstoque.Enabled := True;

        end else begin
          ClassTipoProd      := TClasseCombo(cboTipoProd.Items.Objects[cboTipoProd.ItemIndex] );          StringTProd        := ' ''' + InttoStr( ClassTipoProd.ID ) + ''',';

        //end;

          ////////////////////////////////////////////////////////////////////////////////////////////////

          If cboGrupo.ItemIndex = -1 Then begin

          //  Erro := True;

            StringGrupo       := ' ''0'',';

          end else begin
            ClassGrupo         := TClasseCombo(cboGrupo.Items.Objects[cboGrupo.ItemIndex] );            StringGrupo        := ' ''' + InttoStr( ClassGrupo.ID ) + ''',';

          end;

          ////////////////////////////////////////////////////////////////////////////////////////////////////

          If cboSubgrupo.ItemIndex = -1 Then begin

          //  Erro := True;
            StringSubGrupo    := ' ''0'',';

          end else begin
            ClassSubgrupo      := TClasseCombo(cboSubgrupo.Items.Objects[cboSubgrupo.ItemIndex] );            StringSubGrupo     := ' ''' + InttoStr( ClassSubgrupo.ID ) + ''',';

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

            ValorVendac := StringReplace(lbl_edtVendac.Text,ThousandSeparator,'',[rfReplaceAll]);
            ValorVendac := StringReplace(ValorVendac,DecimalSeparator,'.',[rfReplaceAll]);
            if ValorVendac = '' Then
              ValorVendac := '0';

          {  ValorProm := StringReplace(lbl_edtVlr.Text,ThousandSeparator,'',[rfReplaceAll]);
            ValorProm := StringReplace(ValorProm,DecimalSeparator,'.',[rfReplaceAll]);
            if ValorProm  = '' Then
               ValorProm := '0'; }

          {  TotalML := StringReplace(lbl_edtMls.Text,ThousandSeparator,'',[rfReplaceAll]);
            TotalML := StringReplace(TotalML,DecimalSeparator,'.',[rfReplaceAll]);
            if TotalML  = '' Then
               TotalML := '0'; }

            ibProdutos.Close;
            ibProdutos.SQL.Clear;
            ibProdutos.SQL.Add('INSERT INTO CADPRODUTOS '
            + '(NOME,TIPOPROD,IDGRUPO,IDSUBGRUPO,FORNECEDOR,IDLOCAL,'            + 'CODBARRAS,VALORCUSTO,VALORVENDAA,VALORVENDAB,VALORVENDAC,MLS,REF,'            + 'LUCRO,COMISSAO,ECF,LUCROVENDA,'            + 'INDICACAO,FABRICANTE) values '            + '(''' + lbl_edtNomeProduto.Text + ''','
            + StringTProd
            + StringGrupo
            + StringSubGrupo
            + StringForn
            + StringLocalEstoque
            + ' ''' + lbl_edtCodBarra.Text + ''','
            + ' ''' + ValorCusto + ''',''' + ValorVendaa + ''','
            + ' ''' + ValorVendab + ''',''' + ValorVendac + ''','
            + ' ''' + lbl_edtMls.Text + ''',''' + lbl_edtRef.Text + ''','
            + ' ''' + lbl_edtLucro.Text + ''',''' + lbl_edtComiss.Text + ''','
            + ' ''' + lbl_edtCodEcf.Text + ''',''' + lbl_edtLucroVenda.Text + ''','
            + ' ''' + lbl_edtIndicacao.Text + ''',''' + lbl_edtFabricante.Text + ''')');
            ibProdutos.ExecSQL;
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

            end;

            Commit(ibProdutos);

            ExecSELECT;

          end;{if tambem do tipo de produto}

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
        lbl_edtCodBarra.SetFocus;
        cboSubgrupo.Enabled := False;
        LimpaCampo;
        ExecSELECTTProd;
        ExecSELECTGrupo;
        ExecSELECTSubgrupo;
        ExecSELECTFornecedor;

      end;{if bot�o novo}

    end;{if local de estoque}

  end; {if do Atualizar}

    //SELECT PARA TRAZER O CODIGO EM ORDEM CRESCENTE.
    Commit(ibProdutos);
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
    + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD ORDER BY CADPRODUTOS.IDPROD DESC');
    ibProdutos.Open;

    lbl_edtCodigo.Text := IntToStr(ibProdutos.FieldByName('IDPROD').AsInteger + 1);

    (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutos.FieldByName('VLRPROM') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO
   // (ibProdutos.FieldByName('LUCROVENDA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

  end;{with}

end;

procedure TfrmProdutos.pcProdutosChange(Sender: TObject);
begin
//desabilita os botoes na mudanca pro botao estoque
ibeaNovo.Enabled    := False;
ibeaAlterar.Enabled := False;
ibeaExcluir.Enabled := False;

  with dmModule do begin

    if pcProdutos.ActivePage.TabIndex = 0 then begin
      //habilita os botoes ao voltar pro botao de produto
      ibeaNovo.Enabled := True;
      ibeaNovo.Caption := '&Novo';
      ibeaAlterar.Enabled := True;
      ibeaExcluir.Enabled := True;

    end else if pcProdutos.ActivePage.TabIndex = 1 Then begin

      ibeaNovo.Enabled := False;
      DesabilitaCampos(False);


       if (ibEntrProdEstoque.Active) and (ibMovEst.Active) Then begin

          ExibeDados;

       end else begin

          ibEntrProdEstoque.Close;
          ibMovEst.Close;

       end;



    with dbgLocalestocagem do begin
         // monta colunas do local estoque
          if MontaColunasLocalEst Then begin

            Columns.Insert(0);
            Columns.Insert(1);
            Columns.Insert(2);
            Columns.Insert(3);
            Columns.Insert(4);

            //Parametro para exibir o campo obs do cliente.
            Columns.Items[0].Title.Caption := 'Local de Estoque';
            Columns.Items[0].FieldName     := 'LocalEstoque';
            Columns.Items[0].Width         := 150;
            Columns.Items[0].Alignment     := taLeftJustify;

            Columns.Items[1].Title.Caption := 'C�digo de Barras';
            Columns.Items[1].FieldName     := 'CODBARRAS';
            Columns.Items[1].Width         := 150;
            Columns.Items[1].Alignment     := taLeftJustify;

            //Parametros da Coluna que exibe o Nome do cliente.
            Columns.Items[2].Title.Caption := 'Descri��o do Produto';
            Columns.Items[2].FieldName     := 'NOME';
            Columns.Items[2].Width         := 320;
            Columns.Items[2].Alignment     := taLeftJustify;

            // Parametros que exibe o nome fantasia do cliente
            Columns.Items[3].Title.Caption := 'Qtde em Estoque';
            Columns.Items[3].FieldName     := 'QUANTIDADE';
            Columns.Items[3].Width         := 100;
            Columns.Items[3].Alignment     := taLeftJustify;

            // Parametros que exibe o endere�o do cliente
            Columns.Items[4].Title.Caption := 'Estoque M�nimo';
            Columns.Items[4].FieldName     := 'ESTOQUEMIN';
            Columns.Items[4].Width         := 100;
            Columns.Items[4].Alignment     := taLeftJustify;

            MontaColunasLocalEst := False;

         end;{if}

        with dbgMovEst do begin
         // monta colunas do local estoque
          if MontaColunasMovEst Then begin

            Columns.Insert(0);
            Columns.Insert(1);
            Columns.Insert(2);
            Columns.Insert(3);

        //Parametro para exibir o campo obs do cliente.
            Columns.Items[0].Title.Caption := 'Data';
            Columns.Items[0].FieldName     := 'DATA';
            Columns.Items[0].Width         := 150;
            Columns.Items[0].Alignment     := taLeftJustify;

            //Parametros da Coluna que exibe o Nome do cliente.
            Columns.Items[1].Title.Caption := 'Entrada';
            Columns.Items[1].FieldName     := 'ENTRADA';
            Columns.Items[1].Width         := 100;
            Columns.Items[1].Alignment     := taLeftJustify;

            // Parametros que exibe o nome fantasia do cliente
            Columns.Items[2].Title.Caption := 'Sa�da';
            Columns.Items[2].FieldName     := 'SAIDA';
            Columns.Items[2].Width         := 100;
            Columns.Items[2].Alignment     := taLeftJustify;

            // Parametros que exibe o endere�o do cliente
            Columns.Items[3].Title.Caption := 'Hor�rio';
            Columns.Items[3].FieldName     := 'HORA';
            Columns.Items[3].Width         := 100;
            Columns.Items[3].Alignment     := taLeftJustify;

            MontaColunasMovEst := False;

          end;{if}

        end;{with dbg}

      end;{with}
////////////////////////////////////////////////////////////////////////////////
     end;
/////////////////////////////////////////////////////////////////////////////////
  end;{with}

end;

procedure TfrmProdutos.dbgProdutosCellClick(Column: TColumn);
begin

  with dmModule do begin

      ExibeDados;

  end;{with}

end;

procedure TfrmProdutos.ibeaPrimeiroClick(Sender: TObject);
begin

  with dmModule do begin

    if ibeaAlterar.Caption = '&Atualizar' Then begin

      ConfirmaMSG := Application.MessageBox('Deseja cancelar est� opera��o?'
                      + #13 + 'Clique em Sim para cancelar e N�o para continuar.','Notifica��o: Cancelar Opera��o', MB_YESNO + MB_ICONQUESTION);

      if ConfirmaMSG = 6 Then begin
        //RESTAURAR OS CAMPOS
        ibeaAlterar.Caption := '&Alterar';
        DesabilitaCampos(False);
        lbl_edtQtdeEstoque.Enabled := False;
        lbl_edtEstoqueM.Enabled := False;
        lbl_edtVlrEstoque.Enabled := False;
      end;{if}

    //////////////////////////////////////////////////////////////////////////////////////////

      end else begin

        if ibeaNovo.Caption = '&Gravar' Then begin

          ConfirmaMSG := Application.MessageBox('Deseja cancelar est� opera��o?'
                          + #13 + 'Clique em Sim para cancelar e N�o para continuar.','Notifica��o: Cancelar Opera��o', MB_YESNO + MB_ICONQUESTION);

          if ConfirmaMSG = 6 Then begin

            //RESTAURAR OS CAMPOS
            ibeaNovo.Caption := '&Novo';
            DesabilitaCampos(False);
            lbl_edtQtdeEstoque.Enabled := False;
            lbl_edtEstoqueM.Enabled := False;
            lbl_edtVlrEstoque.Enabled := False;
            ibeaAlterar.Enabled := True;
            ibeaExcluir.Enabled := True;

          end;

            end else begin

            if ibProdutos.Active Then begin

              ibProdutos.First;

            end;
          
          ExibeDados;

      end;{if}

    end;{if}

  end;{with}

end;

procedure TfrmProdutos.ibeaAnteriorClick(Sender: TObject);
begin

 with dmModule do begin

    if ibeaAlterar.Caption = '&Atualizar' Then begin

    ConfirmaMSG := Application.MessageBox('Deseja cancelar esta opera��o?'
                      + #13 + 'Clique em Sim para cancelar e N�o para continuar.','Notifica��o: Cancelar Opera��o', MB_YESNO + MB_ICONQUESTION);

      if ConfirmaMSG = 6 Then begin
        //RESTAURAR OS CAMPOS
        ibeaAlterar.Caption := '&Alterar';
        DesabilitaCampos(False);
        lbl_edtQtdeEstoque.Enabled := False;
        lbl_edtEstoqueM.Enabled := False;
        lbl_edtVlrEstoque.Enabled := False;
      end;{if}

//////////////////////////////////////////////////////////////////////////////////////////

      end else begin

        if ibeaNovo.Caption = '&Gravar' Then begin

          ConfirmaMSG := Application.MessageBox('Deseja cancelar est� opera��o?'
                          + #13 + 'Clique em Sim para cancelar e N�o para continuar.','Notifica��o: Cancelar Opera��o', MB_YESNO + MB_ICONQUESTION);

          if ConfirmaMSG = 6 Then begin

            //RESTAURAR OS CAMPOS
            ibeaNovo.Caption := '&Novo';
            DesabilitaCampos(False);
            lbl_edtQtdeEstoque.Enabled := False;
            lbl_edtEstoqueM.Enabled := False;
            lbl_edtVlrEstoque.Enabled := False;
            ibeaAlterar.Enabled := True;
            ibeaExcluir.Enabled := True;

          end;

            end else begin

            if ibProdutos.Active Then begin

              ibProdutos.Prior;

            end;

          ExibeDados;

      end;{if}

    end;{if}

  end;{with}

end;

procedure TfrmProdutos.ibeaProximoClick(Sender: TObject);
begin

 with dmModule do begin

    if ibeaAlterar.Caption = '&Atualizar' Then begin

    ConfirmaMSG := Application.MessageBox('Deseja cancelar est� opera��o?'
                      + #13 + 'Clique em Sim para cancelar e N�o para continuar.','Notifica��o: Cancelar Opera��o', MB_YESNO + MB_ICONQUESTION);

      if ConfirmaMSG = 6 Then begin
        //RESTAURAR OS CAMPOS
        ibeaAlterar.Caption := '&Alterar';
        DesabilitaCampos(False);
        lbl_edtQtdeEstoque.Enabled := False;
        lbl_edtEstoqueM.Enabled := False;
        lbl_edtVlrEstoque.Enabled := False;
      end;{if}

    //////////////////////////////////////////////////////////////////////////////////////////

      end else begin

        if ibeaNovo.Caption = '&Gravar' Then begin

          ConfirmaMSG := Application.MessageBox('Deseja cancelar est� opera��o?'
                          + #13 + 'Clique em Sim para cancelar e N�o para continuar.','Notifica��o: Cancelar Opera��o', MB_YESNO + MB_ICONQUESTION);

          if ConfirmaMSG = 6 Then begin

            //RESTAURAR OS CAMPOS
            ibeaNovo.Caption := '&Novo';
            DesabilitaCampos(False);
            lbl_edtQtdeEstoque.Enabled := False;
            lbl_edtEstoqueM.Enabled := False;
            lbl_edtVlrEstoque.Enabled := False;
            ibeaAlterar.Enabled := True;
            ibeaExcluir.Enabled := True;

          end;

            end else begin

            if ibProdutos.Active Then begin

              ibProdutos.Next;

            end;

          ExibeDados;

      end;{if}

    end;{if}

  end;{with}

end;


procedure TfrmProdutos.ibeaUltimoClick(Sender: TObject);
begin

 with dmModule do begin

    if ibeaAlterar.Caption = '&Atualizar' Then begin

    ConfirmaMSG := Application.MessageBox('Deseja cancelar est� opera��o?'
                      + #13 + 'Clique em Sim para cancelar e N�o para continuar.','Notifica��o: Cancelar Opera��o', MB_YESNO + MB_ICONQUESTION);

      if ConfirmaMSG = 6 Then begin

        //RESTAURAR OS CAMPOS
        ibeaAlterar.Caption := '&Alterar';
        DesabilitaCampos(False);
        lbl_edtQtdeEstoque.Enabled := False;
        lbl_edtEstoqueM.Enabled := False;
        lbl_edtVlrEstoque.Enabled := False;
      end;{if}

    //////////////////////////////////////////////////////////////////////////////////////////

      end else begin

        if ibeaNovo.Caption = '&Gravar' Then begin

          ConfirmaMSG := Application.MessageBox('Deseja cancelar est� opera��o?'
                          + #13 + 'Clique em Sim para cancelar e N�o para continuar.','Notifica��o: Cancelar Opera��o', MB_YESNO + MB_ICONQUESTION);

          if ConfirmaMSG = 6 Then begin

            //RESTAURAR OS CAMPOS
            ibeaNovo.Caption := '&Novo';
            DesabilitaCampos(False);
            lbl_edtQtdeEstoque.Enabled := False;
            lbl_edtEstoqueM.Enabled := False;
            lbl_edtVlrEstoque.Enabled := False;
            ibeaAlterar.Enabled := True;
            ibeaExcluir.Enabled := True;

          end;

            end else begin

            if ibProdutos.Active Then begin

              ibProdutos.Last;

            end;

          ExibeDados;

      end;{if}

    end;{if}

  end;{with}

end;


procedure TfrmProdutos.ibeaAlterarClick(Sender: TObject);
var
 NovaImagem: String;
 ImagemSalva : String;
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
        DesabilitaCampos(False);
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
      DesabilitaCampos(False);
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

            if ibeaAlterar.Caption = '&Atualizar' Then begin


              ConfirmaMSG := Application.MessageBox('Alterar esse Registro?','Notifica��o: Exclus�o de Registro', MB_YESNO + mb_Defbutton1+MB_ICONQUESTION);
              if ConfirmaMSG = 6 Then begin

                AlteraProduto;
                AlteraEstoque;

                //COPIA A IMAGEM DO PRODUTO PARA A PASTA DE IMAGENS
                if opDialogImagem.FileName <> '' Then begin

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

                end;

                Commit(ibProdutos);

                ExecSELECT;

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

procedure TfrmProdutos.FormCreate(Sender: TObject);
begin
  MontaColunas := True;
  MontaColunasLocalEst := True;
  MontaColunasMovEst := True;
end;

procedure TfrmProdutos.ibeaExcluirClick(Sender: TObject);
begin

  with dmModule do begin

    ConfirmaMSG := Application.MessageBox('Voc� deseja Excluir esse Registro?','Notifica��o: Exclus�o de Registro', MB_YESNO + mb_DefButton1+MB_ICONQUESTION);

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

procedure TfrmProdutos.lbl_edtVendabExit(Sender: TObject);
var
ConfigSiS : TIniFile;
FormatoMoeda : String;
Casas : Longint;
begin

  if lbl_edtVendab.Text <> '' Then begin

    with ConfigSiS do begin

    ConfigSiS := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Data\RunTime\sis.ini'); //Cria o vinculo com o Arquivo ini
    Casas := ReadInteger('Formatacoes','FormatoMoedaCasas',2);//atribui as chaves do arquivo ini na variavel

      if Casas = 2 Then begin
        FormatoMoeda := ',0.00';
      end else begin
        FormatoMoeda := ',0.000';
      end;

    lbl_edtVendab.Text := FormatFloat(FormatoMoeda,StrToFloat(lbl_edtVendab.Text));

    end;{with}
  end;{if}
end;

procedure TfrmProdutos.lbl_edtCustoExit(Sender: TObject);
{var
ConfigSiS : TIniFile;
FormatoMoeda : String;
Casas : Longint; }
begin

{  if (lbl_edtCusto.Text <> '')  or (lbl_edtCusto.Text = '') Then begin

    with ConfigSiS do begin

    ConfigSiS := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Data\RunTime\sis.ini'); //Cria o vinculo com o Arquivo ini
    Casas := ReadInteger('Formatacoes','FormatoMoedaCasas',2);//atribui as chaves do arquivo ini na variavel

      if Casas = 2 Then begin
        FormatoMoeda := ',0.00';
      end else begin
        FormatoMoeda := ',0.000';
      end;

    lbl_edtCusto.Text := FormatFloat(FormatoMoeda,StrToFloat(lbl_edtCusto.Text));

  //  end;}{with}

  if (lbl_edtCusto.Text <> '') Then begin

 //   lbl_edtCusto.Text := StringReplace(lbl_edtCusto.Text,',','',[rfReplaceAll]);
    lbl_edtCusto.Text := FormatFloat(CasasDecimais('Produtos'),StrToFloat(lbl_edtCusto.Text));
                                          //   ));
  end;//if

//  end;{if}

end;

procedure TfrmProdutos.lbl_edtVendaaExit(Sender: TObject);
var
ConfigSiS : TIniFile;
FormatoMoeda : String;
Casas : Longint;
begin

  if (lbl_edtVendaa.Text <> '') or (lbl_edtVendaa.Text = '') Then begin

    with ConfigSiS do begin

    ConfigSiS := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Data\RunTime\sis.ini'); //Cria o vinculo com o Arquivo ini
    Casas := ReadInteger('Formatacoes','FormatoMoedaCasas',2);//atribui as chaves do arquivo ini na variavel

      if Casas = 2 Then begin
        FormatoMoeda := ',0.00';
      end else begin
        FormatoMoeda := ',0.000';
      end;

    lbl_edtVendaa.Text := FormatFloat(FormatoMoeda,StrToFloat(lbl_edtVendaa.Text));

    end;{with}
  end;{if}
end;

procedure TfrmProdutos.lbl_edtVendacExit(Sender: TObject);
begin

  if lbl_edtVendac.Text <> '' Then begin

    with ConfigSiS do begin

    ConfigSiS := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Data\RunTime\sis.ini'); //Cria o vinculo com o Arquivo ini
    Casas := ReadInteger('Formatacoes','FormatoMoedaCasas',2);//atribui as chaves do arquivo ini na variavel

      if Casas = 2 Then begin
        FormatoMoeda := ',0.00';
      end else begin
        FormatoMoeda := ',0.000';
      end;

    lbl_edtVendac.Text := FormatFloat(FormatoMoeda,StrToFloat(lbl_edtVendac.Text));

    end;{with}
  end;{if}
end;

procedure TfrmProdutos.ListLocalEstocagemClick(Sender: TObject);
  procedure Limpa;
  var
    i: integer;
  begin
    for i := 0 to ListLocalEstocagem.Items.Count -1 do
      ListLocalEstocagem.Checked[i] := False
  end;
var
  index: integer;
begin
  if (ListLocalEstocagem.ItemIndex <> -1) Then begin
    index := ListLocalEstocagem.ItemIndex;
    Limpa;
    ListLocalEstocagem.Checked[index] := True;
  end;

end;


procedure TfrmProdutos.cboGrupoChange(Sender: TObject);
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

procedure TfrmProdutos.imgAmpliarClick(Sender: TObject);
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

procedure TfrmProdutos.imgProcurarImagemClick(Sender: TObject);
begin
  popmnuImagem.Popup(Self.Left + 154, Self.Top + 385);
end;

procedure TfrmProdutos.mnuAdquirirIMGClick(Sender: TObject);
begin

  CarregarScanImage(Application.Handle, Application.ExeName, 'Adquirir',imgProduto);

  Application.ProcessMessages;

end;

procedure TfrmProdutos.mnuSelecionarOrigemClick(Sender: TObject);
begin
  CarregarScanImage(Application.Handle, Application.ExeName, 'SelOrigem',imgProduto);
end;

procedure TfrmProdutos.popmnuProcurarClick(Sender: TObject);
begin
  opDialogImagem.Title := 'Procurar imagem para ' + lbl_edtNomeProduto.Text;
  if opDialogImagem.Execute then begin
    imgProduto.Picture.LoadFromFile(opDialogImagem.FileName);
  end;
end;

procedure TfrmProdutos.lbl_edtCodBarraChange(Sender: TObject);
begin
  GeraCodigoBarra.Text        := lbl_edtCodBarra.Text;
  GeraCodigoBarra.Top         := 0;
  GeraCodigoBarra.Left        := 7;
  imgCodigoBarras.Picture     := nil;
  GeraCodigoBarra.DrawBarcode(imgCodigoBarras.Canvas);
end;

procedure TfrmProdutos.lbl_edtCodBarraKeyPress(Sender: TObject;
  var Key: Char);
begin

         if not ( Key In ['0'..'9','.'] ) then
           Abort;
end;

procedure TfrmProdutos.lbl_edtLucroExit(Sender: TObject);
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

procedure TfrmProdutos.lbl_edtQtdeEstoqueExit(Sender: TObject);
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

end;

procedure TfrmProdutos.btnGerarCodigoClick(Sender: TObject);
begin

  if frmProdutos.lbl_edtNomeProduto.Text = '' Then begin

    Application.MessageBox('Por Favor selecione um Produto','Notifica��o:Produto n�o Selecionado', + MB_OK+MB_ICONQUESTION);
    frmCodBarrasAdicional.Close;

  end else begin

    frmCodBarrasAdicional.ShowModal;

  end;{if}

end;

procedure TfrmProdutos.btnImprimirCodigoClick(Sender: TObject);
begin

{  with dmModule do begin

  if frmProdutos.lbl_edtNomeProduto.Text = '' Then begin

    Application.MessageBox('Por Favor selecione um Produto','Notifica��o:Produto n�o Selecionado', + MB_OK+MB_ICONQUESTION);

  end else begin



    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE IDPROD=''' + lbl_edtCodigo.Text + '''');
    ibProdutos.Open;

    (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat         := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutos.FieldByName('VLRPROM') as TFloatField).DisplayFormat            := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO


    Application.CreateForm(TfrmRelCodBarrasAD,frmRelCodBarrasAD);

    TRY

      with frmRelCodBarrasAD do begin

        frmRelCodBarrasAD.qrpCodBarrasAD.DataSet := ibProdutos;

        if ibProdutos.FieldByName('CODBARRASAD').AsString <> '' Then begin

          GeraCodigoBarraAD.Text        := ibProdutos.FieldByName('CODBARRASAD').AsString;
          GeraCodigoBarraAD.Top         := 0;
          GeraCodigoBarraAD.Left        := 7;
       //  imgCodigoBarrasAD.Picture     := nil;

          GeraCodigoBarraAD.DrawBarcode(qriCod1.Canvas);
          GeraCodigoBarraAD.DrawBarcode(qriCod2.Canvas);
          GeraCodigoBarraAD.DrawBarcode(qriCod3.Canvas);
          GeraCodigoBarraAD.DrawBarcode(qriCod4.Canvas);

        end;{if}

       //   qrpCodBarrasAD.Preview;

    //  end; {if}


  {  EXCEPT
      on E : Exception do begin
         frmRelCodBarrasAD.Release;
         MessageDlg('Ocorreu um erro ao tentar mostrar o Formul�rio: ' + E.Message,mtError,[mbOk],0);
      end;
    END; }
  //////////////////////////////////////////////////////////////

// end;{if}

//  end;{with}

end;

procedure TfrmProdutos.lbl_edtCodPExit(Sender: TObject);
begin

  with dmModule do begin

  {  ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE CODBARRAS=''' + lbl_edtCodP.Text + '''');
    ibProdutos.Open; }

    Commit(ibProdutos);
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
    + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD WHERE CADPRODUTOS.CODBARRAS=''' + lbl_edtCodP.Text + '''');
    ibProdutos.Open;

    (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat         := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

  end;{with}

end;

procedure TfrmProdutos.lbl_edtCodPKeyPress(Sender: TObject; var Key: Char);
begin

  if key =#13 Then begin

    lbl_edtNome.SetFocus;

  end;//if//
  
end;

procedure TfrmProdutos.lbl_edtNomeChange(Sender: TObject);
begin

  with dmModule do begin

  {  ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE NOME LIKE '+''''+'%'+lbl_edtNome.text+'%'+'''');
    ibProdutos.Open; }


    Commit(ibProdutos);
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
    + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD WHERE CADPRODUTOS.NOME LIKE '+''''+'%'+lbl_edtNome.text+'%'+'''');
    ibProdutos.Open;


    (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat         := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

  end;{with}
  
end;

procedure TfrmProdutos.sb_ord_nomeClick(Sender: TObject);
begin

  with dmModule do begin

    ExecSELECT;

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

procedure TfrmProdutos.dbgProdutosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

with dmModule do begin
  //SEGUNDA FORMA DE FAZER UMA DBGRID FICAR COLOCRIDA


  if ibProdutos.FieldByName('QtdeEstoque').value > 0 Then begin
  dbgProdutos.Canvas.Brush.Color:= clBlue; // coloque aqui a cor desejada
  dbgProdutos.Canvas.Font.Color:= clWhite;
  dbgProdutos.DefaultDrawDataCell(Rect, dbgProdutos.columns[datacol].field, State);
  end else begin
  dbgProdutos.Canvas.Brush.Color:= clred; // coloque aqui a cor desejada
  dbgProdutos.Canvas.Font.Color:= clWhite;
  dbgProdutos.DefaultDrawDataCell(Rect, dbgProdutos.columns[datacol].field, State);
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

end;

procedure TfrmProdutos.lbl_edtLucroVendaExit(Sender: TObject);

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

procedure TfrmProdutos.lbl_edtNumRefChange(Sender: TObject);
begin

  with dmModule do begin

    Commit(ibProdutos);
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
    + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD WHERE CADPRODUTOS.REF=''' + lbl_edtNumRef.Text + '''');
    ibProdutos.Open;

    (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat         := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

  end;{with}

end;

procedure TfrmProdutos.lbl_edtCustoChange(Sender: TObject);
begin
    //     if not ( Key In ['0'..'9','.'] ) then
      //     Abort;
end;

procedure TfrmProdutos.lbl_edtVendaaChange(Sender: TObject);
begin
       //  if not ( Key In ['0'..'9','.'] ) then
       //    Abort;
end;

procedure TfrmProdutos.lbl_edtVendabChange(Sender: TObject);
begin
      //   if not ( Key In ['0'..'9','.'] ) then
     //      Abort;
end;

procedure TfrmProdutos.lbl_edtVendacChange(Sender: TObject);
begin
      //   if not ( Key In ['0'..'9','.'] ) then
     //      Abort;
end;

procedure TfrmProdutos.lbl_edtQtdeEstoqueChange(Sender: TObject);
begin
       //  if not ( Key In ['0'..'9','.'] ) then
      //     Abort;
end;

procedure TfrmProdutos.lbl_edtEstoqueMChange(Sender: TObject);
begin
      //   if not ( Key In ['0'..'9','.'] ) then
      //     Abort;
end;

procedure TfrmProdutos.lbl_edtVlrEstoqueChange(Sender: TObject);
begin
      //   if not ( Key In ['0'..'9','.'] ) then
     //      Abort;
end;

procedure TfrmProdutos.lbl_edtRefKeyPress(Sender: TObject; var Key: Char);
begin

  if key = #13 Then begin

    lbl_edtNome.SetFocus;

  end;

end;

end.



