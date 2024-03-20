unit untEntradadeEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, ComCtrls, classComboBox,
  IBQuery, Data.DB;

type
  TfrmEntradadeEstoque = class(TForm)
    pcEstoque: TPageControl;
    tbsEntrada: TTabSheet;
    tbsManut: TTabSheet;
    lbl_Fornecedor: TLabel;
    btnSair: TBitBtn;
    lbl_edtNLancto: TLabeledEdit;
    lbl_edtNNota: TLabeledEdit;
    cboFornecedor: TComboBox;
    btnNovo: TBitBtn;
    btnExcluir: TBitBtn;
    dbgEntradaEstoque: TDBGrid;
    lbl_edtCodBarras: TLabeledEdit;
    lbl_edtRef: TLabeledEdit;
    cboProdutos: TComboBox;
    lbl_Prod: TLabel;
    lbl_edtQtde: TLabeledEdit;
    lbl_edtVlrUnit: TLabeledEdit;
    lbl_edtVlrTotal: TLabeledEdit;
    lbl_edtTotal: TLabeledEdit;
    btnIncluir: TBitBtn;
    lbl_edtIDProduto: TLabeledEdit;
    dtpDataEmissao: TDateTimePicker;
    lbl_DtaEmissao: TLabel;
    dbgDetalheLancto: TDBGrid;
    dtpDataBuscaNF: TDateTimePicker;
    lbl_edtBuscaNF: TLabeledEdit;
    lbl_EmissaoBuscaNF: TLabel;
    dbgHistoricoNF: TDBGrid;
    lbl_edtTotalHistorico: TLabeledEdit;
    cboFornecedorDetalhe: TComboBox;
    lbl_Forn: TLabel;
    btnLimpar: TBitBtn;
    btnSairDetalhe: TBitBtn;
    btnRelatorio: TBitBtn;
    lbl_edtIDFornecedor: TLabeledEdit;
    btnExcluirNota: TBitBtn;
    procedure Commit(IBQueryExec : TIBQuery);
    procedure ExecSELECTDetalheLancto;
    procedure ExecSELECTFornecedor;
    procedure ExecSELECTFornecedorDetalhe;
    procedure ExecSELECTHistorico;
    procedure ExecSELECTProdutos;
    procedure FormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnNovoClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure lbl_edtQtdeExit(Sender: TObject);
    procedure lbl_edtQtdeKeyPress(Sender: TObject; var Key: Char);
    procedure dbgEntradaEstoqueCellClick(Column: TColumn);
    procedure btnExcluirClick(Sender: TObject);
    procedure pcEstoqueChange(Sender: TObject);
    procedure dtpDataBuscaNFChange(Sender: TObject);
    procedure cboFornecedorDetalheClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnSairDetalheClick(Sender: TObject);
    procedure dbgDetalheLanctoCellClick(Column: TColumn);
    procedure lbl_edtCodBarrasChange(Sender: TObject);
    procedure lbl_edtCodBarrasKeyPress(Sender: TObject; var Key: Char);
    procedure btnRelatorioClick(Sender: TObject);
    procedure lbl_edtVlrTotalExit(Sender: TObject);
    procedure lbl_edtVlrTotalKeyPress(Sender: TObject; var Key: Char);
    procedure cboFornecedorChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEntradadeEstoque: TfrmEntradadeEstoque;
  PathSistema : String;
  MontaColunas,MontaColDetalheLancto,MontaColHistoricoNF : Boolean;
  NLancto, IDProduto,IDDetalhe : Integer;
  
implementation

uses funcPosto, untdmModule, uBuscaProdutos, untRelEstoque,
  untREstoqueNF, untGravarCP;

{$R *.dfm}

procedure TfrmEntradadeEstoque.Commit(IBQueryExec : TIBQuery);

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

procedure TfrmEntradadeEstoque.ExecSELECTDetalheLancto;

begin

  with dmModule do begin

    Commit(ibDetalheEntrEstoque);
    ibDetalheEntrEstoque.Close;
    ibDetalheEntrEstoque.SQL.Clear;
    ibDetalheEntrEstoque.SQL.Add('SELECT * FROM TBLDETALHEENTRESTOQUE WHERE(DATA=''' + FormatDateTime('MM/DD/YYYY',dtpDataBuscaNF.Date) + ''')ORDER BY IDENTRADA ASC');
    ibDetalheEntrEstoque.Open;

    (ibDetalheEntrEstoque.FieldByName('VLRTOTAL')as TFloatField).DisplayFormat := CasasDecimais('Produtos');

  end;//with

end;
  
procedure TfrmEntradadeEstoque.ExecSELECTFornecedor;

var
IDClassForn : Integer;
ClassForn : TClasseCombo;

begin

  with dmModule do begin

    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Fornecedores''');
    ibClassificacao.Open;
    IDClassForn := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICA��O DO FORNECEDOR NA VARIAVEL.

    Commit(ibCadastro);
    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE IDCLASS=' + IntToStr(IDClassForn));//('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + InttoStr(IDClass) + ''' ORDER BY NOME');
    ibCadastro.Open;

    cboFornecedor.Clear; //LIMPA O COMBOBOX

    while not ibCadastro.Eof do begin

      ClassForn    := TClasseCombo.Create;
      ClassForn.ID  := ibCadastro.FieldByName('IDCAD').AsInteger;
      cboFornecedor.Items.AddObject(ibCadastro.FieldByName('NOME').AsString,ClassForn);
      ibCadastro.Next;

    end;{WHILE}

  end;{WITH}

end;

procedure TfrmEntradadeEstoque.ExecSELECTFornecedorDetalhe;

var
IDClassFornDetalhe : Integer;
ClassFornDetalhe : TClasseCombo;

begin

  with dmModule do begin

    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Fornecedores''');
    ibClassificacao.Open;
    IDClassFornDetalhe := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICA��O DO FORNECEDOR NA VARIAVEL.

    Commit(ibCadastro);
    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE IDCLASS=' + IntToStr(IDClassFornDetalhe));//('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + InttoStr(IDClass) + ''' ORDER BY NOME');
    ibCadastro.Open;

    cboFornecedorDetalhe.Clear; //LIMPA O COMBOBOX

    while not ibCadastro.Eof do begin

      ClassFornDetalhe    := TClasseCombo.Create;
      ClassFornDetalhe.ID  := ibCadastro.FieldByName('IDCAD').AsInteger;
      cboFornecedorDetalhe.Items.AddObject(ibCadastro.FieldByName('NOME').AsString,ClassFornDetalhe);
      ibCadastro.Next;

    end;{WHILE}

  end;{WITH}

end;

procedure TfrmEntradadeEstoque.ExecSELECTHistorico;

var

TotalTbl : Real;
TotalNF : String;

begin

  if TotalTbl > 0 then begin

    TotalTbl := 0;

  end;

  if TotalNF > '0' Then begin

    TotalNF := '0';

  end;
  
  with dmModule do begin

    Commit(ibHistoricoEstoqueNF);
    ibHistoricoEstoqueNF.Close;
    ibHistoricoEstoqueNF.SQL.Clear;
    ibHistoricoEstoqueNF.SQL.Add('SELECT TBLHISTORICOESTOQUENF.*,'
    + 'CADPRODUTOS.REF,CADPRODUTOS.CODBARRAS,CADPRODUTOS.CODBARRASAD FROM TBLHISTORICOESTOQUENF '
    + 'LEFT OUTER JOIN CADPRODUTOS ON TBLHISTORICOESTOQUENF.IDPRODUTO=CADPRODUTOS.IDPROD WHERE TBLHISTORICOESTOQUENF.NLANCTO=''' + IntToStr(IDDetalhe) + ''' ORDER BY TBLHISTORICOESTOQUENF.NOMEPRODUTO');
    ibHistoricoEstoqueNF.Open;

    (ibHistoricoEstoqueNF.FieldByName('QTDE')as TFloatField).DisplayFormat := CasasDecimais('Produtos');
    (ibHistoricoEstoqueNF.FieldByName('VLRUNIT')as TFloatField).DisplayFormat := CasasDecimais('Produtos');
    (ibHistoricoEstoqueNF.FieldByName('TOTAL')as TFloatField).DisplayFormat := CasasDecimais('Produtos');

////////////////////////////////////////////////////////////////////////////////

      while not ibHistoricoEstoqueNF.Eof do begin

        if TotalTbl = 0 Then begin

          TotalTbl := StrToFloat(StringReplace(FloatToStr(ibHistoricoEstoqueNF.FieldByName('TOTAL').AsFloat),FormatSettings.ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalNF := StringReplace(FloatToStr(ibHistoricoEstoqueNF.FieldByName('TOTAL').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);

          TotalTbl := TotalTbl + StrtoFloat(StringReplace(TotalNF,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibHistoricoEstoqueNF.Next;

      end;//while

      lbl_edtTotalHistorico.Text := FormatFloat(CasasDecimais('Produtos'),TotalTbl);
////////////////////////////////////////////////////////////////////////////////


  end;//with

end;
  
procedure TfrmEntradadeEstoque.ExecSELECTProdutos;

var

ClassProduto : TClasseCombo;

begin

  with dmModule do begin

    Commit(ibProdutos);
    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT VALORVENDAA,VALORCUSTO,IDPROD,NOME,CODBARRAS,REF FROM CADPRODUTOS ORDER BY NOME');
    ibProdutos.Open;

    cboProdutos.Clear; //LIMPA O COMBOBOX

    while not ibProdutos.Eof do begin

      ClassProduto    := TClasseCombo.Create;
      ClassProduto.ID  := ibProdutos.FieldByName('IDPROD').AsInteger;
      cboProdutos.Items.AddObject(ibProdutos.FieldByName('NOME').AsString,ClassProduto);
      ibProdutos.Next;

    end;{WHILE}

  end;{WITH}

end;

procedure TfrmEntradadeEstoque.FormCreate(Sender: TObject);
begin

  MontaColunas := True;
  MontaColHistoricoNF := True;
  MontaColDetalheLancto := True;

  PathSistema := ExtractFilePath(ParamStr(0));

  if FileExists(PathSistema + 'Data\RunTime\Imagens_Sistema\sair.bmp') Then
    btnSair.Glyph.LoadFromFile(PathSistema + 'Data\RunTime\Imagens_Sistema\sair.bmp');

  if FileExists(PathSistema + 'Data\RunTime\Imagens_Sistema\sair.bmp') Then
    btnSairDetalhe.Glyph.LoadFromFile(PathSistema + 'Data\RunTime\Imagens_Sistema\sair.bmp');

  if FileExists(PathSistema + 'Data\RunTime\Imagens_Sistema\novo.bmp') Then
    btnNovo.Glyph.LoadFromFile(PathSistema + 'Data\RunTime\Imagens_Sistema\novo.bmp');

 { if FileExists(PathSistema + 'Data\RunTime\Imagens_Sistema\alterar.bmp') Then
    btnAlterar.Glyph.LoadFromFile(PathSistema + 'Data\RunTime\Imagens_Sistema\alterar.bmp'); }

  if FileExists(PathSistema + 'Data\RunTime\Imagens_Sistema\excluir.bmp') Then
    btnExcluir.Glyph.LoadFromFile(PathSistema + 'Data\RunTime\Imagens_Sistema\excluir.bmp');

  if FileExists(PathSistema + 'Data\RunTime\Imagens_Sistema\excluir.bmp') Then
    btnExcluirNota.Glyph.LoadFromFile(PathSistema + 'Data\RunTime\Imagens_Sistema\excluir.bmp');

  if FileExists(PathSistema + 'Data\RunTime\Imagens_Sistema\incluir.bmp') Then
    btnIncluir.Glyph.LoadFromFile(PathSistema + 'Data\RunTime\Imagens_Sistema\incluir.bmp');

  if FileExists(PathSistema + 'Data\RunTime\Imagens_Sistema\Relatorio.bmp') Then
    btnRelatorio.Glyph.LoadFromFile(PathSistema + 'Data\RunTime\Imagens_Sistema\Relatorio.bmp');

end;

procedure TfrmEntradadeEstoque.btnSairClick(Sender: TObject);
begin
frmEntradadeEstoque.Close;
end;

procedure TfrmEntradadeEstoque.FormShow(Sender: TObject);
begin

  pcEstoque.ActivePageIndex := 0;
  btnNovo.Caption := 'Novo';
  dtpDataEmissao.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
  dtpDataBuscaNF.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
  
  with dmModule do begin

    ExecSELECTFornecedor;
    ExecSELECTProdutos;

    with dbgEntradaEstoque do begin

      // monta as colunas abaixo se for verdadeiro
      if MontaColunas Then begin

         DataSource := dtsHistoricoEstoqueNF;

        //determina as colunas a serem montadas
        Columns.Insert(0);
        Columns.Insert(1);
        Columns.Insert(2);
        Columns.Insert(3);
        Columns.Insert(4);
        Columns.Insert(5);
        Columns.Insert(6);

        //Parametros da Coluna que exibe o C�digo da entrada no estoque
        Columns.Items[0].Title.Caption := 'Ref.';
        Columns.Items[0].FieldName     := 'REF';
        Columns.Items[0].Width         := 50;
        Columns.Items[0].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o Nome do produto que esta entrando no estoque.
        Columns.Items[1].Title.Caption := 'Descri��o do Produto';
        Columns.Items[1].FieldName     := 'NOME';
        Columns.Items[1].Width         := 280;
        Columns.Items[1].Alignment     := taLeftJustify;

        //parametros que exibe a qtde. de entrada no estoque
        Columns.Items[2].Title.Caption := 'Qtde.NF';
        Columns.Items[2].FieldName     := 'QTDE';
        Columns.Items[2].Width         := 50;
        Columns.Items[2].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o vlr unitario do produto.
        Columns.Items[3].Title.Caption := 'Vlr.Unit.';
        Columns.Items[3].FieldName     := 'VALORCUSTO';
        Columns.Items[3].Width         := 80;
        Columns.Items[3].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o vlr unitario do produto.
        Columns.Items[4].Title.Caption := 'Total NF';
        Columns.Items[4].FieldName     := 'TOTAL';
        Columns.Items[4].Width         := 80;
        Columns.Items[4].Alignment     := taLeftJustify;

        //parametros que exibe a qtde. de entrada no estoque
        Columns.Items[5].Title.Caption := 'Qtde.de Estoque';
        Columns.Items[5].FieldName     := 'QUANTIDADE';
        Columns.Items[5].Width         := 100;
        Columns.Items[5].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o vlr unitario do produto.
        Columns.Items[6].Title.Caption := 'Total em Estoque';
        Columns.Items[6].FieldName     := 'VLRTOTAL';
        Columns.Items[6].Width         := 110;
        Columns.Items[6].Alignment     := taLeftJustify;

        MontaColunas := False;

      end;{if}

    end;{with}

////////////////////////////////////////////////////////////////////////////////

    with dbgDetalheLancto do begin

      // monta as colunas abaixo se for verdadeiro
      if MontaColDetalheLancto Then begin

         DataSource := dtsDetalheEntrEstoque;

        //determina as colunas a serem montadas
        Columns.Insert(0);
        Columns.Insert(1);
        Columns.Insert(2);
        Columns.Insert(3);
        Columns.Insert(4);

        //Parametros da Coluna que exibe o C�digo da entrada no estoque
        Columns.Items[0].Title.Caption := 'N� NF';
        Columns.Items[0].FieldName     := 'NUMERONF';
        Columns.Items[0].Width         := 70;
        Columns.Items[0].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o Nome do produto que esta entrando no estoque.
        Columns.Items[1].Title.Caption := 'Fornecedor';
        Columns.Items[1].FieldName     := 'NOMEFORNECEDOR';
        Columns.Items[1].Width         := 250;
        Columns.Items[1].Alignment     := taLeftJustify;

        //parametros que exibe a qtde. de entrada no estoque
        Columns.Items[2].Title.Caption := 'Vlr.Total';
        Columns.Items[2].FieldName     := 'VLRTOTAL';
        Columns.Items[2].Width         := 70;
        Columns.Items[2].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o vlr unitario do produto.
        Columns.Items[3].Title.Caption := 'Data';
        Columns.Items[3].FieldName     := 'DATA';
        Columns.Items[3].Width         := 70;
        Columns.Items[3].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o vlr unitario do produto.
        Columns.Items[4].Title.Caption := 'Hor�rio';
        Columns.Items[4].FieldName     := 'HORA';
        Columns.Items[4].Width         := 70;
        Columns.Items[4].Alignment     := taLeftJustify;

        MontaColDetalheLancto := False;

      end;{if}

    end;{with}

////////////////////////////////////////////////////////////////////////////////

    with dbgHistoricoNF do begin

      // monta as colunas abaixo se for verdadeiro
      if MontaColHistoricoNF Then begin

         DataSource := dtsHistoricoEstoqueNF;

        //determina as colunas a serem montadas
        Columns.Insert(0);
        Columns.Insert(1);
        Columns.Insert(2);
        Columns.Insert(3);
        Columns.Insert(4);
        Columns.Insert(5);

        Columns.Items[0].Title.Caption := 'C�d.Barras';
        Columns.Items[0].FieldName     := 'CODBARRAS';
        Columns.Items[0].Width         := 80;
        Columns.Items[0].Alignment     := taLeftJustify;

        Columns.Items[1].Title.Caption := 'Ref.';
        Columns.Items[1].FieldName     := 'REF';
        Columns.Items[1].Width         := 70;
        Columns.Items[1].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o C�digo da entrada no estoque
        Columns.Items[2].Title.Caption := 'Produto';
        Columns.Items[2].FieldName     := 'NOMEPRODUTO';
        Columns.Items[2].Width         := 190;
        Columns.Items[2].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o Nome do produto que esta entrando no estoque.
        Columns.Items[3].Title.Caption := 'Qtde';
        Columns.Items[3].FieldName     := 'QTDE';
        Columns.Items[3].Width         := 70;
        Columns.Items[3].Alignment     := taLeftJustify;

        //parametros que exibe a qtde. de entrada no estoque
        Columns.Items[4].Title.Caption := 'Vlr.Unit.';
        Columns.Items[4].FieldName     := 'VLRUNIT';
        Columns.Items[4].Width         := 70;
        Columns.Items[4].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o vlr unitario do produto.
        Columns.Items[5].Title.Caption := 'Total';
        Columns.Items[5].FieldName     := 'TOTAL';
        Columns.Items[5].Width         := 70;
        Columns.Items[5].Alignment     := taLeftJustify;

        MontaColHistoricoNF := False;

      end;{if}

    end;{with}

////////////////////////////////////////////////////////////////////////////////

  end;//with

end;

procedure TfrmEntradadeEstoque.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  with dmModule do begin

    case key of

      VK_f7:begin

      ///   Application.CreateForm(TfrmBuscaProdutos, frmBuscaProdutos);
         frmBuscaProdutos.ShowModal; // no meu caso uso sempre modal
     ///    FreeAndNil(frmBuscaProdutos); // efetua o Free no Form e tamb�m limpa o setor de memoria que foi alocado por ele

      end;{begin}

    end;//case

  end;//with
  
end;

procedure TfrmEntradadeEstoque.btnNovoClick(Sender: TObject);

var

IDClassFornecedor : TClasseCombo;
VlrTotal, StringGravaForn : String;
ConfirmaLancto, ConfirmaContasaPagar : Integer;

begin

  with dmModule do begin

    if btnNovo.Caption = 'Novo' then begin

      btnNovo.Caption := 'Gravar';

      ibDetalheEntrEstoque.Close;
      ibDetalheEntrEstoque.SQL.Clear;
      ibDetalheEntrEstoque.SQL.Add('INSERT INTO TBLDETALHEENTRESTOQUE'
      +'(DATA) values '
      + '(''' + FormatDateTime('mm-dd-yyyy',dtpDataEmissao.Date) + ''')');
      ibDetalheEntrEstoque.ExecSQL;
      Commit(ibDetalheEntrEstoque);

      ibDetalheEntrEstoque.Close;
      ibDetalheEntrEstoque.SQL.Clear;
      ibDetalheEntrEstoque.SQL.Add('SELECT * FROM TBLDETALHEENTRESTOQUE ORDER BY IDENTRADA DESC');
      ibDetalheEntrEstoque.Open;

      lbl_edtNLancto.Text := IntToStr(ibDetalheEntrEstoque.FieldByName('IDENTRADA').AsInteger);
      lbl_edtNNota.SetFocus;

    end else begin

      if (lbl_edtNLancto.Text <> '')and(lbl_edtTotal.Text > '0') Then begin

        VlrTotal := StringReplace(lbl_edtTotal.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
        VlrTotal := StringReplace(VlrTotal,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);
        if VlrTotal = '' Then
        VlrTotal := '0';

        If cboFornecedor.ItemIndex = -1 Then begin

          StringGravaForn := ' ''0'',';

        end else begin

          IDClassFornecedor   := TClasseCombo( cboFornecedor.Items.Objects[cboFornecedor.ItemIndex] );
          StringGravaForn  := ' ''' + InttoStr( IDClassFornecedor.ID ) + ''',';

        end;{ifcbotipopagto}

        Commit(ibDetalheEntrEstoque);
        ibDetalheEntrEstoque.Close;
        ibDetalheEntrEstoque.SQL.Clear;
        ibDetalheEntrEstoque.SQL.Add('SELECT * FROM TBLDETALHEENTRESTOQUE WHERE IDENTRADA=''' + lbl_edtNLancto.Text + '''');
        ibDetalheEntrEstoque.Open;

        ibDetalheEntrEstoque.Close;
        ibDetalheEntrEstoque.SQL.Clear;
        ibDetalheEntrEstoque.SQL.Add('UPDATE TBLDETALHEENTRESTOQUE SET '
        + 'DATA= ''' + FormatDateTime('mm-dd-yyyy',dtpDataEmissao.Date) + ''','
        + 'HORA= ''' + FormatDateTime('hh:mm:ss',Now) + ''','
        + 'IDFORNECEDOR = ''' + InttoStr( IDClassFornecedor.ID ) + ''','
        + 'NUMERONF = ''' + lbl_edtNNota.Text + ''','
        + 'NOMEFORNECEDOR = ''' + cboFornecedor.Text + ''','
        + 'VLRTOTAL= ''' + VlrTotal + ''' WHERE IDENTRADA=''' + lbl_edtNLancto.Text + '''');
        ibDetalheEntrEstoque.ExecSQL;
        Commit(ibDetalheEntrEstoque);

        ConfirmaContasaPagar := Application.MessageBox('Lan�ar no Contas a Pagar?','Lan�amento no Contas a Pagar',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

        if ConfirmaContasaPagar = 6 Then begin

        frmGravarCP.ShowModal;

        end;

        ConfirmaLancto := Application.MessageBox('Deseja Encerrar o Lan�amento?','Encerrar Lancamento',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

        if ConfirmaLancto = 6 Then begin

          btnNovo.Caption := 'Novo';
          lbl_edtNLancto.Clear;
          lbl_edtNNota.Clear;
          cboFornecedor.ClearSelection;
          cboProdutos.ClearSelection;
          lbl_edtVlrUnit.Text := '0,00';
          lbl_edtTotal.Clear;
          lbl_edtVlrTotal.Text := '0,00';
          ibHistoricoEstoqueNF.Close;

        end;//if confirma lancto

      end;//if

    end;

  end;//with

end;

procedure TfrmEntradadeEstoque.btnIncluirClick(Sender: TObject);

var

QtdeEstoque,VlrProduto,ValorCustoE,QtdeVenda,QtdeVendaProd,ValorCustoProd  : Real;
VlrProdutoProd : Real;
TotalCustoProd : String;
EstoqueFinal,TotalProdEstoque,TotalCusto,EstoqueFinalProd,TotalProdEstoqueProd : String;
IDProdQtdeEstoque, IDLocalEstoque : Integer;
Valor1,Valor2,Valor3 : Real;
IDClassFornecedor : TClasseCombo;
StringGravaForn, QtdeGravaProd, TotalProdHist, VlrUnitHistorico : String;
TotalTbl : Real;
TotalNF,ValorCusto : String;

begin

  if TotalTbl > 0 then begin

    TotalTbl := 0;

  end;

  if TotalNF > '0' Then begin

    TotalNF := '0';

  end;

  with dmModule do begin

    if (lbl_edtIDProduto.Text <> '')and(cboProdutos.Text <> '') Then begin

      ibEntrProdEstoque.Close;
      ibEntrProdEstoque.SQL.Clear;
      ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,TBLENTRADAESTOQUEPROD.IDLOCAL,'
      + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,TBLENTRADAESTOQUEPROD.ESTOQUEMIN,'
      + 'CADPRODUTOS.REF,CADPRODUTOS.IDLOCAL As Estoque,CADPRODUTOS.NOME As NomeProd,CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORCUSTO,CADPRODUTOS.TIPOPROD,CADPRODUTOS.CODBARRAS FROM TBLENTRADAESTOQUEPROD '
      + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
      + 'WHERE CADPRODUTOS.IDPROD=''' + lbl_edtIDProduto.Text + '''');
      ibEntrProdEstoque.Open;

      ValorCusto := StringReplace(lbl_edtVlrUnit.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
      ValorCusto := StringReplace(ValorCusto,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);
      if ValorCusto = '' Then
      ValorCusto := '0';

      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('UPDATE CADPRODUTOS SET '
      + 'VALORCUSTO=''' + ValorCusto + ''' WHERE IDPROD=''' + lbl_edtIDProduto.Text + '''');
      ibProdutos.ExecSQL;
      Commit(ibProdutos);

      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE IDPROD=''' + lbl_edtIDProduto.Text + '''');
      ibProdutos.Open;

      IDProdQtdeEstoque := ibProdutos.FieldByName('IDPROD').AsInteger;
      IDLocalEstoque    := ibProdutos.FieldByName('IDLOCAL').AsInteger;



   // end;  //ROTINA ABAIXO PARA SOMAR TOTAL DO ESTQUE E QUANTIDADE DO ESTOQUE

      //traz na variavel a qtde conf. prod da select identificado por id.
      QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
     // QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),DecimalSeparator,',',[rfReplaceAll]));

      QtdeVenda   := StrToFloat(StringReplace(lbl_edtQtde.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

      QtdeEstoque := QtdeEstoque + QtdeVenda;

      EstoqueFinal := StringReplace(FloattoStr(QtdeEstoque),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
      EstoqueFinal := StringReplace(EstoqueFinal,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

      //AQUI VAI O CALCULO DO TOTAL CONFORME VENDE O PRODUTO
      VlrProduto  := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORVENDAA').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

      VlrProduto  := QtdeEstoque * VlrProduto;

      TotalProdEstoque := StringReplace(FloattoStr(VlrProduto),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
      TotalProdEstoque := StringReplace(TotalProdEstoque,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);


      ValorCustoE := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORCUSTO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

      ValorCustoE := QtdeEstoque * ValorCustoE;

      TotalCusto := StringReplace(FloattoStr(ValorCustoE),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
      TotalCusto := StringReplace(TotalCusto,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

/////////////////////////////////////////////////////////////////////////////////
     { if lbl_edtVlrTotal.Text <> '' Then begin// se for em branco executa rotina abaixo.

        if (Pos(',',lbl_edtVlrTotal.Text)>0) and (lbl_edtVlrTotal.Text <> '') Then begin

          Valor1 := StrToFloat(StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]));

          if lbl_edtTotal.Text = '' Then begin

            lbl_edtTotal.Text := FormatFloat(',0.00',(Valor1));

          end else begin

            //Valor1 := StrToFloat(StringReplace(lbl_edtTotalPed.Text,ThousandSeparator,'',[rfReplaceAll]));
            Valor2 := StrToFloat(StringReplace(lbl_edtTotal.Text,ThousandSeparator,'',[rfReplaceAll]));
            Valor3 := (Valor2 + Valor1);

            lbl_edtTotal.Text := FormatFloat(',0.00',(Valor3));

          end;

          end else begin

            Valor1 := StrToFloat(StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]));

          if lbl_edtTotal.Text = '' Then begin

            lbl_edtTotal.Text := FormatFloat(',0.00',(Valor1));

          end else begin

            //Valor1 := StrToFloat(StringReplace(lbl_edtTotalPed.Text,ThousandSeparator,'',[rfReplaceAll]));
            Valor2 := StrToFloat(StringReplace(lbl_edtTotal.Text,ThousandSeparator,'',[rfReplaceAll]));
            Valor3 := (Valor2 + Valor1);

            lbl_edtTotal.Text := FormatFloat(',0.00',(Valor3));

          end;

        end;//if

      end;  }
////////////////////////////////////////////////////////////////////////////////


       //se houver registro ele atribui na alteracao o vlr da variavel

       if ibEntrProdEstoque.RecordCount > 0 Then begin

         ibEntrProdEstoque.Close;
         ibEntrProdEstoque.SQL.Clear;
         ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
         +'QUANTIDADE=''' + (EstoqueFinal) + ''','
         +'TOTALCUSTO=''' + TotalCusto + ''','
         +'VLRTOTAL=''' + (TotalProdEstoque) +  ''' WHERE IDPROD=''' + IntToStr(IDProdQtdeEstoque) + '''');
         ibEntrProdEstoque.ExecSQL;
         Commit(ibEntrProdEstoque);
         
         lbl_edtQtde.SetFocus;

        { if lbl_edtQtde.Text <> '' Then begin

         lbl_edtCodBarras.SetFocus;
         lbl_edtCodBarras.Clear;

         end;//if }


       end else begin


         QtdeVendaProd   := StrToFloat(StringReplace(lbl_edtQtde.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

         EstoqueFinalProd := StringReplace(FloattoStr(QtdeVendaProd),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
         EstoqueFinalProd := StringReplace(EstoqueFinalProd,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

         //AQUI VAI O CALCULO DO TOTAL CONFORME VENDE O PRODUTO
         VlrProdutoProd  := StrtoFloat(StringReplace(FloattoStr(ibProdutos.FieldByName('VALORVENDAA').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

         VlrProdutoProd  := QtdeVendaProd * VlrProdutoProd;

         TotalProdEstoqueProd := StringReplace(FloattoStr(VlrProdutoProd),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
         TotalProdEstoqueProd := StringReplace(TotalProdEstoqueProd,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

         ValorCustoProd := StrtoFloat(StringReplace(FloattoStr(ibProdutos.FieldByName('VALORCUSTO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

         ValorCustoProd := QtdeVendaProd * ValorCustoProd;

         TotalCustoProd := StringReplace(FloattoStr(ValorCustoProd),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
         TotalCustoProd := StringReplace(TotalCustoProd,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

         ibEntrProdEstoque.Close;
         ibEntrProdEstoque.SQL.Clear;
         ibEntrProdEstoque.SQL.Add('INSERT INTO TBLENTRADAESTOQUEPROD'
         + '(IDPROD,QUANTIDADE,TOTALCUSTO,VLRTOTAL,CODBARRAS,IDLOCAL) values '
         + '(''' + IntToStr(IDProdQtdeEstoque) + ''','
         + ' ''' + EstoqueFinalProd + ''','
         + ' ''' + TotalCustoProd + ''','
         + ' ''' + TotalProdEstoqueProd + ''','
         + ' ''' + lbl_edtCodBarras.Text + ''','
         + ' ''' + IntToStr(IDLocalEstoque) + ''')');
         ibEntrProdEstoque.ExecSQL;
         Commit(ibEntrProdEstoque);
         
       end;//if recordcount

          If cboFornecedor.ItemIndex = -1 Then begin

            StringGravaForn := ' ''0'',';
         ///   IDClassFornecedor :=  TClasseCombo( cboFornecedor.Items.Objects[cboFornecedor.ItemIndex] );

          end else begin

            IDClassFornecedor   := TClasseCombo( cboFornecedor.Items.Objects[cboFornecedor.ItemIndex] );
            StringGravaForn  := ' ''' + InttoStr( IDClassFornecedor.ID ) + ''',';

          end;{ifcbotipopagto}

          QtdeGravaProd := StringReplace(lbl_edtQtde.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          QtdeGravaProd := StringReplace(QtdeGravaProd,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);
          if QtdeGravaProd = '' Then
          QtdeGravaProd := '0';

          VlrUnitHistorico := StringReplace(lbl_edtVlrUnit.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          VlrUnitHistorico := StringReplace(VlrUnitHistorico,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);
          if VlrUnitHistorico = '' Then
          VlrUnitHistorico := '0';

          TotalProdHist := StringReplace(lbl_edtVlrTotal.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
          TotalProdHist := StringReplace(TotalProdHist,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);
          if TotalProdHist = '' Then
          TotalProdHist := '0';

          ibHistoricoEstoqueNF.Close;
          ibHistoricoEstoqueNF.SQL.Clear;
          ibHistoricoEstoqueNF.SQL.Add('INSERT INTO TBLHISTORICOESTOQUENF'
          +'(DATA,IDPRODUTO,IDFORNECEDOR,NLANCTO,NUMERONF,QTDE,VLRUNIT,TOTAL,'
          + 'NOMEFORNECEDOR,NOMEPRODUTO) values '
          + '(''' + FormatDateTime('mm-dd-yyyy',dtpDataEmissao.Date) + ''','
          + ' ''' + IntToStr(IDProdQtdeEstoque) + ''','
          + StringGravaForn
          + ' ''' + lbl_edtNLancto.Text + ''','
          + ' ''' + lbl_edtNNota.Text + ''','
          + ' ''' + (QtdeGravaProd) + ''','
          + ' ''' + VlrUnitHistorico + ''','
          + ' ''' + TotalProdHist + ''','
          + ' ''' + cboFornecedor.Text + ''','
          + ' ''' + cboProdutos.Text + ''')');
          ibHistoricoEstoqueNF.ExecSQL;

         cboProdutos.ClearSelection;
         lbl_edtQtde.Text := '1';
         lbl_edtVlrUnit.Clear;
         lbl_edtVlrTotal.Clear;
         lbl_edtCodBarras.Clear;
         lbl_edtRef.Clear;
         lbl_edtIDProduto.Clear;

         if lbl_edtNLancto.Text <> '' Then begin

         cboProdutos.ClearSelection;
         lbl_edtQtde.Text := '1';
         lbl_edtVlrUnit.Clear;
         lbl_edtVlrTotal.Clear;
         lbl_edtCodBarras.Clear;
         lbl_edtRef.Clear;
         lbl_edtIDProduto.Clear;
                  
           Commit(ibHistoricoEstoqueNF);
           ibHistoricoEstoqueNF.Close;
           ibHistoricoEstoqueNF.SQL.Clear;
           ibHistoricoEstoqueNF.SQL.Add('SELECT TBLHISTORICOESTOQUENF.*,'
           + 'TBLENTRADAESTOQUEPROD.QUANTIDADE,TBLENTRADAESTOQUEPROD.TOTALCUSTO,CADPRODUTOS.REF,'
           + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,CADPRODUTOS.NOME,CADPRODUTOS.VALORVENDAA,CADPRODUTOS.CODBARRAS,'
           + 'CADPRODUTOS.VALORCUSTO,CADPRODUTOS.IDPROD as ProdutoID FROM TBLHISTORICOESTOQUENF '
           + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON TBLHISTORICOESTOQUENF.IDPRODUTO=TBLENTRADAESTOQUEPROD.IDPROD '
           + 'INNER JOIN CADPRODUTOS ON TBLHISTORICOESTOQUENF.IDPRODUTO=CADPRODUTOS.IDPROD WHERE TBLHISTORICOESTOQUENF.NLANCTO=''' + lbl_edtNLancto.Text + '''');
           ibHistoricoEstoqueNF.Open;

           (ibHistoricoEstoqueNF.FieldByName('VLRTOTAL')as TFloatField).DisplayFormat := CasasDecimais('Produtos');
           (ibHistoricoEstoqueNF.FieldByName('VALORVENDAA')as TFloatField).DisplayFormat := CasasDecimais('Produtos');
           (ibHistoricoEstoqueNF.FieldByName('VALORCUSTO')as TFloatField).DisplayFormat := CasasDecimais('Produtos');
           (ibHistoricoEstoqueNF.FieldByName('QTDE')as TFloatField).DisplayFormat := CasasDecimais('Produtos');
           (ibHistoricoEstoqueNF.FieldByName('TOTAL')as TFloatField).DisplayFormat := CasasDecimais('Produtos');

         cboProdutos.ClearSelection;
         lbl_edtQtde.Text := '1';
         lbl_edtVlrUnit.Clear;
         lbl_edtVlrTotal.Clear;
         lbl_edtCodBarras.Clear;
         lbl_edtRef.Clear;
         lbl_edtIDProduto.Clear;           
////////////////////////////////////////////////////////////////////////////////

            while not ibHistoricoEstoqueNF.Eof do begin

              if TotalTbl = 0 Then begin

                TotalTbl := StrToFloat(StringReplace(FloatToStr(ibHistoricoEstoqueNF.FieldByName('TOTAL').AsFloat),FormatSettings.ThousandSeparator,'',[rfreplaceAll]));

              end else begin

                TotalNF := StringReplace(FloatToStr(ibHistoricoEstoqueNF.FieldByName('TOTAL').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);

                TotalTbl := TotalTbl + StrtoFloat(StringReplace(TotalNF,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

              end;//if

               ibHistoricoEstoqueNF.Next;

            end;//while

            lbl_edtTotal.Text := FormatFloat(CasasDecimais('Produtos'),TotalTbl);
////////////////////////////////////////////////////////////////////////////////

         end;//if

    end;//if label produto

  end;//with
  
end;

procedure TfrmEntradadeEstoque.lbl_edtQtdeExit(Sender: TObject);

var

Valor1,Valor2,Valor3,Valor4 : Real;

begin

  if (lbl_edtNLancto.Text <> '') Then begin

    if (lbl_edtQtde.Text <> '')and(lbl_edtVlrUnit.Text <> '') Then begin// se for em branco executa rotina abaixo.

      if (Pos(',',lbl_edtQtde.Text)>0) and (lbl_edtQtde.Text <> '') Then begin

        Valor1 := StrToFloat(StringReplace(lbl_edtQtde.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
        Valor2 := StrToFloat(StringReplace(lbl_edtVlrUnit.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

        lbl_edtVlrTotal.Text := FormatFloat(',0.00',(Valor2 * Valor1));

      end else begin

        Valor1 := StrToFloat(StringReplace(lbl_edtQtde.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
        Valor2 := StrToFloat(StringReplace(lbl_edtVlrUnit.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
        lbl_edtVlrTotal.Text := FormatFloat(',0.00',(Valor2 * Valor1));

      end;{if}

    end;{if}

  end;//if lbl_numpedido


end;

procedure TfrmEntradadeEstoque.lbl_edtQtdeKeyPress(Sender: TObject;
  var Key: Char);

begin

  if Key = #13 Then begin

    lbl_edtVlrTotal.SetFocus;

  end;{if}

end;

procedure TfrmEntradadeEstoque.dbgEntradaEstoqueCellClick(Column: TColumn);

var

i : Integer;

begin

  with dmModule do begin

    NLancto := StrToInt(lbl_edtNLancto.Text);
    IDProduto := (ibHistoricoEstoqueNF.FieldByName('IDPRODUTO').AsInteger);
       {  if lbl_edtNLancto.Text <> '' Then begin

           ibHistoricoEstoqueNF.Close;
           ibHistoricoEstoqueNF.SQL.Clear;
           ibHistoricoEstoqueNF.SQL.Add('SELECT TBLHISTORICOESTOQUENF.*,'
           + 'TBLENTRADAESTOQUEPROD.QUANTIDADE,TBLENTRADAESTOQUEPROD.TOTALCUSTO,'
           + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,CADPRODUTOS.NOME,CADPRODUTOS.VALORVENDAA,CADPRODUTOS.CODBARRAS,'
           + 'CADPRODUTOS.REF,CADPRODUTOS.VALORCUSTO,CADPRODUTOS.IDPROD as ProdutoID FROM TBLHISTORICOESTOQUENF '
           + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON TBLHISTORICOESTOQUENF.IDPRODUTO=TBLENTRADAESTOQUEPROD.IDPROD '
           + 'INNER JOIN CADPRODUTOS ON TBLHISTORICOESTOQUENF.IDPRODUTO=CADPRODUTOS.IDPROD WHERE TBLHISTORICOESTOQUENF.NLANCTO=''' + lbl_edtNLancto.Text + '''');
           ibHistoricoEstoqueNF.Open;

           (ibHistoricoEstoqueNF.FieldByName('VLRTOTAL')as TFloatField).DisplayFormat := CasasDecimais('Produtos');
           (ibHistoricoEstoqueNF.FieldByName('VALORVENDAA')as TFloatField).DisplayFormat := CasasDecimais('Produtos');
           (ibHistoricoEstoqueNF.FieldByName('VALORCUSTO')as TFloatField).DisplayFormat := CasasDecimais('Produtos');
           (ibHistoricoEstoqueNF.FieldByName('QTDE')as TFloatField).DisplayFormat := CasasDecimais('Produtos');
           (ibHistoricoEstoqueNF.FieldByName('TOTAL')as TFloatField).DisplayFormat := CasasDecimais('Produtos');

         end;//if  }

    if ibHistoricoEstoqueNF.RecordCount > 0 Then begin

      lbl_edtRef.Text       := ibHistoricoEstoqueNF.FieldByName('REF').AsString;
      lbl_edtCodBarras.Text := ibHistoricoEstoqueNF.FieldByName('CODBARRAS').AsString;
      lbl_edtVlrUnit.Text   := FormatFloat(CasasDecimais('Produtos'),ibHistoricoEstoqueNF.FieldByName('VALORCUSTO').AsFloat);
      lbl_edtQtde.Text      := FormatFloat(CasasDecimais('Produtos'),ibHistoricoEstoqueNF.FieldByName('QTDE').AsFloat);
      lbl_edtVlrTotal.Text := FormatFloat(CasasDecimais('Produtos'),ibHistoricoEstoqueNF.FieldByName('TOTAL').AsFloat);
      lbl_edtIDProduto.Text := IntToStr(ibHistoricoEstoqueNF.FieldByName('IDPRODUTO').AsInteger);

      for i:=0 to cboFornecedor.Items.Count -1 do begin
        if TClasseCombo( cboFornecedor.Items.Objects[i]).ID = ibHistoricoEstoqueNF.FieldByName('IDFORNECEDOR').AsInteger then begin
          cboFornecedor.ItemIndex:= i;
          Break;
        end else begin
          cboFornecedor.ClearSelection;
        end;
      end;//for

      for i:=0 to cboProdutos.Items.Count -1 do begin
        if TClasseCombo( cboProdutos.Items.Objects[i]).ID = ibHistoricoEstoqueNF.FieldByName('IDPRODUTO').AsInteger then begin
          cboProdutos.ItemIndex:= i;
          Break;
        end else begin
          cboProdutos.ClearSelection;
        end;
      end;//for

    end;//if recordcount

  end;//with

end;

procedure TfrmEntradadeEstoque.btnExcluirClick(Sender: TObject);

var

ConfirmaExclusao : integer;
TotalTbl : Real;
TotalNF : String;
QtdeEstoque,VlrProduto,ValorCustoE,QtdeVenda,QtdeVendaProd,ValorCustoProd  : Real;
VlrProdutoProd : Real;
TotalCustoProd : String;
EstoqueFinal,TotalProdEstoque,TotalCusto,EstoqueFinalProd,TotalProdEstoqueProd : String;
IDProdQtdeEstoque, IDLocalEstoque : Integer;

begin

  if TotalTbl > 0 then begin

    TotalTbl := 0;

  end;

  if TotalNF > '0' Then begin

    TotalNF := '0';

  end;

  with dmModule do begin

    ConfirmaExclusao := Application.MessageBox('Confirma a exclus�o do registro?','Exclus�o de Registro',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

    if ConfirmaExclusao = 6 Then begin

      ibHistoricoEstoqueNF.Close;
      ibHistoricoEstoqueNF.SQL.Clear;
      ibHistoricoEstoqueNF.SQL.Add('DELETE FROM TBLHISTORICOESTOQUENF WHERE(NLANCTO=''' + IntToStr(NLancto) + ''')and(IDPRODUTO=''' + IntToStr(IDProduto) + ''')');
      ibHistoricoEstoqueNF.ExecSQL;

       if lbl_edtNLancto.Text <> '' Then begin

         Commit(ibHistoricoEstoqueNF);
         ibHistoricoEstoqueNF.Close;
         ibHistoricoEstoqueNF.SQL.Clear;
         ibHistoricoEstoqueNF.SQL.Add('SELECT TBLHISTORICOESTOQUENF.*,'
         + 'TBLENTRADAESTOQUEPROD.QUANTIDADE,TBLENTRADAESTOQUEPROD.TOTALCUSTO,CADPRODUTOS.REF,'
         + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,CADPRODUTOS.NOME,CADPRODUTOS.VALORVENDAA,CADPRODUTOS.CODBARRAS,'
         + 'CADPRODUTOS.VALORCUSTO,CADPRODUTOS.IDPROD as ProdutoID FROM TBLHISTORICOESTOQUENF '
         + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON TBLHISTORICOESTOQUENF.IDPRODUTO=TBLENTRADAESTOQUEPROD.IDPROD '
         + 'INNER JOIN CADPRODUTOS ON TBLHISTORICOESTOQUENF.IDPRODUTO=CADPRODUTOS.IDPROD WHERE TBLHISTORICOESTOQUENF.NLANCTO=''' + lbl_edtNLancto.Text + '''');
         ibHistoricoEstoqueNF.Open;

         (ibHistoricoEstoqueNF.FieldByName('VLRTOTAL')as TFloatField).DisplayFormat := CasasDecimais('Produtos');
         (ibHistoricoEstoqueNF.FieldByName('VALORVENDAA')as TFloatField).DisplayFormat := CasasDecimais('Produtos');
         (ibHistoricoEstoqueNF.FieldByName('VALORCUSTO')as TFloatField).DisplayFormat := CasasDecimais('Produtos');
         (ibHistoricoEstoqueNF.FieldByName('QTDE')as TFloatField).DisplayFormat := CasasDecimais('Produtos');
         (ibHistoricoEstoqueNF.FieldByName('TOTAL')as TFloatField).DisplayFormat := CasasDecimais('Produtos');

////////////////////////////////////////////////////////////////////////////////

          while not ibHistoricoEstoqueNF.Eof do begin

            if TotalTbl = 0 Then begin

              TotalTbl := StrToFloat(StringReplace(FloatToStr(ibHistoricoEstoqueNF.FieldByName('TOTAL').AsFloat),FormatSettings.ThousandSeparator,'',[rfreplaceAll]));

            end else begin

              TotalNF := StringReplace(FloatToStr(ibHistoricoEstoqueNF.FieldByName('TOTAL').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);

              TotalTbl := TotalTbl + StrtoFloat(StringReplace(TotalNF,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

            end;//if

             ibHistoricoEstoqueNF.Next;

          end;//while

          lbl_edtTotal.Text := FormatFloat(CasasDecimais('Produtos'),TotalTbl);
////////////////////////////////////////////////////////////////////////////////

       end;// if nlancto

      if (lbl_edtIDProduto.Text <> '')and(cboProdutos.Text <> '') Then begin

        ibEntrProdEstoque.Close;
        ibEntrProdEstoque.SQL.Clear;
        ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,TBLENTRADAESTOQUEPROD.IDLOCAL,'
        + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,TBLENTRADAESTOQUEPROD.ESTOQUEMIN,'
        + 'CADPRODUTOS.REF,CADPRODUTOS.IDLOCAL As Estoque,CADPRODUTOS.NOME As NomeProd,CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORCUSTO,CADPRODUTOS.TIPOPROD,CADPRODUTOS.CODBARRAS FROM TBLENTRADAESTOQUEPROD '
        + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
        + 'WHERE CADPRODUTOS.IDPROD=''' + lbl_edtIDProduto.Text + '''');
        ibEntrProdEstoque.Open;


        ibProdutos.Close;
        ibProdutos.SQL.Clear;
        ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE IDPROD=''' + lbl_edtIDProduto.Text + '''');
        ibProdutos.Open;

        IDProdQtdeEstoque := ibProdutos.FieldByName('IDPROD').AsInteger;
        IDLocalEstoque    := ibProdutos.FieldByName('IDLOCAL').AsInteger;



     // end;  //ROTINA ABAIXO PARA SOMAR TOTAL DO ESTQUE E QUANTIDADE DO ESTOQUE

        //traz na variavel a qtde conf. prod da select identificado por id.
        QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
       // QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),DecimalSeparator,',',[rfReplaceAll]));

        QtdeVenda   := StrToFloat(StringReplace(lbl_edtQtde.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

        QtdeEstoque := QtdeEstoque - QtdeVenda;

        EstoqueFinal := StringReplace(FloattoStr(QtdeEstoque),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
        EstoqueFinal := StringReplace(EstoqueFinal,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

        //AQUI VAI O CALCULO DO TOTAL CONFORME VENDE O PRODUTO
        VlrProduto  := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORVENDAA').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

        VlrProduto  := QtdeEstoque * VlrProduto;

        TotalProdEstoque := StringReplace(FloattoStr(VlrProduto),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
        TotalProdEstoque := StringReplace(TotalProdEstoque,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);


        ValorCustoE := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORCUSTO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

        ValorCustoE := QtdeEstoque * ValorCustoE;

        TotalCusto := StringReplace(FloattoStr(ValorCustoE),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
        TotalCusto := StringReplace(TotalCusto,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);


         //se houver registro ele atribui na alteracao o vlr da variavel

         if ibEntrProdEstoque.RecordCount > 0 Then begin

           ibEntrProdEstoque.Close;
           ibEntrProdEstoque.SQL.Clear;
           ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
           +'QUANTIDADE=''' + (EstoqueFinal) + ''','
           +'TOTALCUSTO=''' + TotalCusto + ''','
           +'VLRTOTAL=''' + (TotalProdEstoque) +  ''' WHERE IDPROD=''' + IntToStr(IDProdQtdeEstoque) + '''');
           ibEntrProdEstoque.ExecSQL;
           Commit(ibEntrProdEstoque);

           lbl_edtQtde.SetFocus;

         end else begin

           QtdeVendaProd   := StrToFloat(StringReplace(lbl_edtQtde.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

           EstoqueFinalProd := StringReplace(FloattoStr(QtdeVendaProd),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
           EstoqueFinalProd := StringReplace(EstoqueFinalProd,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

           //AQUI VAI O CALCULO DO TOTAL CONFORME VENDE O PRODUTO
           VlrProdutoProd  := StrtoFloat(StringReplace(FloattoStr(ibProdutos.FieldByName('VALORVENDAA').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

           VlrProdutoProd  := QtdeVendaProd * VlrProdutoProd;

           TotalProdEstoqueProd := StringReplace(FloattoStr(VlrProdutoProd),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
           TotalProdEstoqueProd := StringReplace(TotalProdEstoqueProd,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

           ValorCustoProd := StrtoFloat(StringReplace(FloattoStr(ibProdutos.FieldByName('VALORCUSTO').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

           ValorCustoProd := QtdeVendaProd * ValorCustoProd;

           TotalCustoProd := StringReplace(FloattoStr(ValorCustoProd),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);
           TotalCustoProd := StringReplace(TotalCustoProd,FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

           ibEntrProdEstoque.Close;
           ibEntrProdEstoque.SQL.Clear;
           ibEntrProdEstoque.SQL.Add('INSERT INTO TBLENTRADAESTOQUEPROD'
           + '(IDPROD,QUANTIDADE,TOTALCUSTO,VLRTOTAL,CODBARRAS,IDLOCAL) values '
           + '(''' + IntToStr(IDProdQtdeEstoque) + ''','
           + ' ''' + EstoqueFinalProd + ''','
           + ' ''' + TotalCustoProd + ''','
           + ' ''' + TotalProdEstoqueProd + ''','
           + ' ''' + lbl_edtCodBarras.Text + ''','
           + ' ''' + IntToStr(IDLocalEstoque) + ''')');
           ibEntrProdEstoque.ExecSQL;
           Commit(ibEntrProdEstoque);

         end;//if recordcount

      end;//ifidproduto

    end;//if confirma exclusao

  end;//with

end;

procedure TfrmEntradadeEstoque.pcEstoqueChange(Sender: TObject);
begin

  with dmModule do begin

    if pcEstoque.ActivePageIndex = 0 Then begin

      ibDetalheEntrEstoque.Close;
      lbl_edtTotalHistorico.Clear;

    end;//if

    if pcEstoque.ActivePageIndex = 1 Then begin

      ExecSELECTDetalheLancto;
      ExecSELECTFornecedorDetalhe;
      
    end;//if

  end;//with

end;

procedure TfrmEntradadeEstoque.dtpDataBuscaNFChange(Sender: TObject);
begin

  with dmModule do begin

    ExecSELECTDetalheLancto;

  end;//with

end;

procedure TfrmEntradadeEstoque.cboFornecedorDetalheClick(Sender: TObject);

var

IDClassFornecedorDetalhe : TClasseCombo;

begin

  with dmModule do begin

    if cboFornecedorDetalhe.ItemIndex <> - 1 Then begin

      IDClassFornecedorDetalhe := TClasseCombo(cboFornecedorDetalhe.Items.Objects[cboFornecedorDetalhe.ItemIndex]);

      Commit(ibDetalheEntrEstoque);
      ibDetalheEntrEstoque.Close;
      ibDetalheEntrEstoque.SQL.Clear;
      ibDetalheEntrEstoque.SQL.Add('SELECT * FROM TBLDETALHEENTRESTOQUE WHERE(DATA=''' + FormatDateTime('MM/DD/YYYY',dtpDataBuscaNF.Date) + ''')and(IDFORNECEDOR=''' + IntToStr(IDClassFornecedorDetalhe.ID) + ''')ORDER BY IDENTRADA ASC');
      ibDetalheEntrEstoque.Open;

      (ibDetalheEntrEstoque.FieldByName('VLRTOTAL')as TFloatField).DisplayFormat := CasasDecimais('Produtos');

    end;
      
  end;//with

end;

procedure TfrmEntradadeEstoque.btnLimparClick(Sender: TObject);
begin

  with dmModule do begin

    cboFornecedorDetalhe.ClearSelection;
    ExecSELECTDetalheLancto;

  end;//with
  
end;

procedure TfrmEntradadeEstoque.btnSairDetalheClick(Sender: TObject);
begin
Close;
end;

procedure TfrmEntradadeEstoque.dbgDetalheLanctoCellClick(Column: TColumn);
begin

  with dmModule do begin

    IDDetalhe := (ibDetalheEntrEstoque.FieldByName('IDENTRADA').AsInteger);
    lbl_edtBuscaNF.Text := ibDetalheEntrEstoque.FieldByName('NUMERONF').AsString;
    ExecSELECTHistorico;

  end;//with

end;

procedure TfrmEntradadeEstoque.lbl_edtCodBarrasChange(Sender: TObject);

var

i :Integer;

begin

  with dmModule do begin

    if lbl_edtCodBarras.Text <> '' Then begin

      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT CADPRODUTOS.*,LOCALESTOCAGEM.NOME As Estoque FROM CADPRODUTOS '
      + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE '
      + 'WHERE CADPRODUTOS.CODBARRAS=''' + lbl_edtCodBarras.Text + ''' OR CADPRODUTOS.CODBARRASAD =''' + lbl_edtCodBarras.Text + '''');
      ibProdutos.Open;

      if ibProdutos.RecordCount > 0 Then begin

        for i:=0 to cboProdutos.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
          if TClasseCombo( cboProdutos.Items.Objects[i]).ID = ibProdutos.FieldByName('IDPROD').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
            cboProdutos.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
            Break;
          end else begin
            cboProdutos.ClearSelection;//LIMPA A SELECAO. }
          end;{if}
        end;{for}

        lbl_edtRef.Text := ibProdutos.FieldByName('REF').AsString;
        lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORCUSTO').AsFloat);
        lbl_edtIDProduto.Text := IntToStr(ibProdutos.FieldByName('IDPROD').AsInteger);

      end;//if recordcount

    end;//if

  end;//with

end;

procedure TfrmEntradadeEstoque.lbl_edtCodBarrasKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtQtde.SetFocus;

  end;//if

end;

procedure TfrmEntradadeEstoque.btnRelatorioClick(Sender: TObject);
begin

  with dmModule do begin

    Commit(ibHistoricoEstoqueNF);
    ibHistoricoEstoqueNF.Close;
    ibHistoricoEstoqueNF.SQL.Clear;
    ibHistoricoEstoqueNF.SQL.Add('SELECT TBLHISTORICOESTOQUENF.*,'
    + 'CADPRODUTOS.REF,CADPRODUTOS.CODBARRAS,CADPRODUTOS.CODBARRASAD,'
    + 'TBLENTRADAESTOQUEPROD.QUANTIDADE FROM TBLHISTORICOESTOQUENF '
    + 'INNER JOIN TBLENTRADAESTOQUEPROD ON TBLHISTORICOESTOQUENF.IDPRODUTO=TBLENTRADAESTOQUEPROD.IDPROD '
    + 'LEFT OUTER JOIN CADPRODUTOS ON TBLHISTORICOESTOQUENF.IDPRODUTO=CADPRODUTOS.IDPROD WHERE TBLHISTORICOESTOQUENF.NLANCTO=''' + IntToStr(IDDetalhe) + ''' ORDER BY TBLHISTORICOESTOQUENF.NOMEPRODUTO');
    ibHistoricoEstoqueNF.Open;

    (ibHistoricoEstoqueNF.FieldByName('QTDE')as TFloatField).DisplayFormat := CasasDecimais('Produtos');
    (ibHistoricoEstoqueNF.FieldByName('VLRUNIT')as TFloatField).DisplayFormat := CasasDecimais('Produtos');
    (ibHistoricoEstoqueNF.FieldByName('TOTAL')as TFloatField).DisplayFormat := CasasDecimais('Produtos');

   Application.CreateForm(TfrmRelEstoque, frmRelEstoque);

 //  qrpRelEstoque.ExportToFilter(TQRCommaSeparatedFilter.Create('d:\testeexcel.xls'));

    TRY

      with frmREstoqueNF do begin

        frmREstoqueNF.qrpREstoqueNF.DataSet := ibHistoricoEstoqueNF;


        //ATRIBUI OS NOMES DOS CAMPOS AOS QRDBTEXT DO QUICKREPORT
        qrdbDescricao.DataSet   := ibHistoricoEstoqueNF;
        qrdbDescricao.DataField := ibHistoricoEstoqueNF.FieldByName('NOMEPRODUTO').FieldName;

        qrdbCodAd.DataSet        := ibHistoricoEstoqueNF;
        qrdbCodAd.DataField      := ibHistoricoEstoqueNF.FieldByName('CODBARRASAD').FieldName;

        qrdbVlrUnit.DataSet     := ibHistoricoEstoqueNF;
        qrdbVlrUnit.DataField   := ibHistoricoEstoqueNF.FieldByName('VLRUNIT').FieldName;
       (ibHistoricoEstoqueNF.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO

        qrdbQtde.DataSet        := ibHistoricoEstoqueNF;
        qrdbQtde.DataField      := ibHistoricoEstoqueNF.FieldByName('QTDE').FieldName;

        qrdbQtdeEstoque.DataSet        := ibHistoricoEstoqueNF;
        qrdbQtdeEstoque.DataField      := ibHistoricoEstoqueNF.FieldByName('QUANTIDADE').FieldName;

        qrdbTotal.DataSet       := ibHistoricoEstoqueNF;
        qrdbTotal.DataField     := ibHistoricoEstoqueNF.FieldByName('TOTAL').FieldName;
        (ibHistoricoEstoqueNF.FieldByName('TOTAL') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO

       { qrdbData.DataSet    := ibVPistaProd;
        qrdbData.DataField  := ibVPistaProd.FieldByName('DATA').FieldName;

        qrdbHora.DataSet    := ibVPistaProd;
        qrdbHora.DataField  := ibVPistaProd.FieldByName('HORA').FieldName; }

        if ibHistoricoEstoqueNF.FieldByName('NOMEFORNECEDOR').AsString <> '' Then begin

          qrl_NomeFornecedor.Caption := ibHistoricoEstoqueNF.FieldByName('NOMEFORNECEDOR').AsString;

        end else begin

          qrl_NomeFornecedor.Caption := '';

        end;

        qrl_Data.Caption := FormatDateTime('dd/mm/yyyy',(ibHistoricoEstoqueNF.FieldByName('DATA').AsDateTime));

        qrpREstoqueNF.Preview;

      end; {if}


    EXCEPT
      on E : Exception do begin
         frmREstoqueNF.Release;
         MessageDlg('Ocorreu um erro ao tentar mostrar o Formul�rio: ' + E.Message,mtError,[mbOk],0);
      end;
    END;
  //////////////////////////////////////////////////////////////

  end;{with}

end;

procedure TfrmEntradadeEstoque.lbl_edtVlrTotalExit(Sender: TObject);

var

Valor1,Valor2,Valor3,Valor4 : Real;
ConfirmaLancto : Integer;

begin

  with dmModule do begin

    if (lbl_edtQtde.Text <> '')and(lbl_edtVlrTotal.Text <> '') Then begin// se for em branco executa rotina abaixo.

      if (Pos(',',lbl_edtQtde.Text)>0) and (lbl_edtQtde.Text <> '') Then begin

        Valor1 := StrToFloat(StringReplace(lbl_edtQtde.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
        Valor2 := StrToFloat(StringReplace(lbl_edtVlrTotal.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

        lbl_edtVlrUnit.Text := FormatFloat(',0.00',(Valor2 / Valor1));

      end else begin

        Valor1 := StrToFloat(StringReplace(lbl_edtQtde.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
        Valor2 := StrToFloat(StringReplace(lbl_edtVlrTotal.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

        lbl_edtVlrUnit.Text := FormatFloat(',0.00',(Valor2 / Valor1));

      end;{if}

    end;{if}

    ConfirmaLancto := Application.MessageBox('Confirma Lan�amento?','Lan�amento de Estoque',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

    if ConfirmaLancto = 6 Then begin

      btnIncluirClick(Sender);

    end else begin

      lbl_edtQtde.SetFocus;

    end;  

  end;//with

end;

procedure TfrmEntradadeEstoque.lbl_edtVlrTotalKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key =#13 Then begin

    lbl_edtQtde.SetFocus;

  end;  

end;

procedure TfrmEntradadeEstoque.cboFornecedorChange(Sender: TObject);

var

IDClassForn : TClasseCombo;
StringForn : String;
IDFornecedor : Integer;

begin

  with dmModule do begin


    if cboFornecedor.ItemIndex <> - 1 Then begin

      IDClassForn   := TClasseCombo( cboFornecedor.Items.Objects[cboFornecedor.ItemIndex] );//ATRIBUI A CLASSE COMBO NA VARIAVEL
      StringForn          := ' IDCAD=''' + InttoStr( IDClassForn.ID ) + '''';//ATRIBUI O ID DO FIELD NA VARIAVEL STRING.

      { ibClassificacao.Close;
      ibClassificacao.SQL.Clear;
      ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Fornecedores''');
      ibClassificacao.Open;
      IDClassForn := ibClassificacao.FieldByName('IDCLASS').AsInteger; }// ATRIBUI A IDENTIFICA��O DO FORNECEDOR NA VARIAVEL.

      Commit(ibCadastro);
      ibCadastro.Close;
      ibCadastro.SQL.Clear;
      ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE ' + StringForn);//('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + InttoStr(IDClass) + ''' ORDER BY NOME');
      ibCadastro.Open;

        if ibCadastro.RecordCount > 0 Then begin

        IDFornecedor := (ibCadastro.FieldByName('IDCAD').AsInteger);
        lbl_edtIDFornecedor.Text := IntToStr(IDFornecedor);

        end;//if

      end;

  end;//with

end;

end.
