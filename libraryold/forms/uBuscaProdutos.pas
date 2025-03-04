unit uBuscaProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, 
  DB, IBQuery, classComboBox, jpeg, axCtrls;
  

type
  TfrmBuscaProdutos = class(TForm)
    sb_ord_nome: TSpeedButton;
    dbgProd: TDBGrid;
    Bevel1: TBevel;
    sbLimpar: TSpeedButton;
    Image2: TImage;
    lbl_Info: TLabel;
    lbl_Forn: TLabel;
    lbl_F3: TLabel;
    lbl_F2: TLabel;
    lbl_edtIDProd: TLabeledEdit;
    lbl_edtCodBarrasAd: TLabeledEdit;
    lbl_edtCodInterno: TLabeledEdit;
    lbl_edtValor: TLabeledEdit;
    lbl_edtNome: TLabeledEdit;
    lbl_edtNCM: TLabeledEdit;
    lbl_edtProduto: TLabeledEdit;
    lbl_edtQtdeEstoque: TLabeledEdit;
    lbl_edtPrecoVenda: TLabeledEdit;
    lbl_edtFabricanteProd: TLabeledEdit;
    cboFornecedores: TComboBox;
    lbl_edtLocalProd: TLabeledEdit;
    ibeaIncluir: TSpeedButton;
    ibeaSair: TSpeedButton;
    ckBuscaLetra: TCheckBox;
    ckBuscaNome: TCheckBox;
    ckPrecob: TCheckBox;
    ckPrecoc: TCheckBox;
    ckPrecoD: TCheckBox;
    procedure Commit(IBQueryExec : TIBQuery);
    procedure TrimAppMemorySize;
    procedure ExecSELECTFornecedor;
    procedure FormShow(Sender: TObject);
    procedure sb_ord_nomeClick(Sender: TObject);
    procedure dbgProdCellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure sbLimparClick(Sender: TObject);
    procedure dbgProdDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ibeaSairClick(Sender: TObject);
    procedure ibeaIncluirClick(Sender: TObject);
    procedure lbl_edtCodBarrasAdChange(Sender: TObject);
    procedure lbl_edtCodBarrasAdKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtCodInternoKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtNomeChange(Sender: TObject);
    procedure lbl_edtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure cboFornecedoresClick(Sender: TObject);
    procedure lbl_edtCodInternoExit(Sender: TObject);
    procedure ckPrecobCheck(Sender: TObject);
    procedure ckPrecocCheck(Sender: TObject);
    procedure dbgProdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgProdKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgProdKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbl_edtValorChange(Sender: TObject);
    procedure lbl_edtValorKeyPress(Sender: TObject; var Key: Char);
    procedure ckBuscaLetraCheck(Sender: TObject);
    procedure ckBuscaNomeCheck(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBuscaProdutos: TfrmBuscaProdutos;
  MontaColunas : Boolean;
  IDProd : Integer;

  ibTempProdNome : TIBQuery;

  IDEstoqueConsGeral         : TClasseCombo;
  StringEstoqueConsGeral     : String;
  ImagemProduto : String;

  ExibeDados : Boolean;

  IDClassForn : Integer;
  IDClassSelectFornecedor : TClasseCombo;
  RefProd : String;
  IDProdConsulta : Integer;
  
implementation
                           // untServicos, untCliente,  untPosVenda,
uses untdmModule, funcPosto, 
  untPedidoVenda,   untTroca,
  untCotacao, 
  untEntradadeEstoque, untProdutos_MPrima, untServicos, untPosVenda;

{$R *.dfm}

procedure TfrmBuscaProdutos.TrimAppMemorySize;
var
MainHandle : THandle;
begin
try
MainHandle := OpenProcess(PROCESS_ALL_ACCESS, false, GetCurrentProcessID) ;
SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF) ;
CloseHandle(MainHandle) ;
except
end;
Application.ProcessMessages;
end;

procedure TfrmBuscaProdutos.Commit(IBQueryExec : TIBQuery);

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

procedure TfrmBuscaProdutos.ExecSELECTFornecedor;

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

procedure TfrmBuscaProdutos.FormShow(Sender: TObject);
begin

  lbl_edtNome.Clear;
  lbl_edtProduto.Clear;
  lbl_edtFabricanteProd.Clear;
  lbl_edtQtdeEstoque.Clear;
  lbl_edtPrecoVenda.Clear;
  lbl_edtCodBarrasAd.Clear;
  lbl_edtCodInterno.Clear;
  lbl_edtValor.Clear;
  ckPrecob.Checked := False;
  ckPrecoc.Checked := False;
  lbl_edtNome.SetFocus;
  lbl_edtIDProd.Clear;
  ckBuscaNome.Checked := True;
  ckBuscaLetra.Checked := False;

  
  with dmModule do begin

  ExecSELECTFornecedor;

  {  ibTempProdNome.Close;
    ibTempProdNome.SQL.Clear;
    ibTempProdNome.SQL.Add('SELECT CADPRODUTOS.*,'
    + 'TBLENTRADAESTOQUEPROD.QUANTIDADE As TotalEstoque FROM CADPRODUTOS '
    + 'left outer join TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD');
    ibTempProdNome.Open;
    (ibTempProdNome.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibTempProdNome.FieldByName('TotalEstoque') as TFloatField).DisplayFormat := CasasDecimais('Produtos');} //CRIA UMA MASCARA PARA O CAMPO

  {  Commit(ibTempProdNome);
    ibTempProdNome.Close;
    ibTempProdNome.SQL.Clear;
    ibTempProdNome.SQL.Add('SELECT CADPRODUTOS.CODBARRAS,CADPRODUTOS.NOME,CADPRODUTOS.MLS,'
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
    ibTempProdNome.Open;
    (ibTempProdNome.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); }//CRIA UMA MASCARA PARA O CAMPO


    Commit(ibProdutosEquivalentes);
    ibProdutosEquivalentes.Close;
    ibProdutosEquivalentes.SQL.Clear;
    ibProdutosEquivalentes.SQL.Add('SELECT IDPROD,VALORCUSTO,VALORVENDAA,VALORVENDAB,VALORVENDAC,'
    + 'REF,CODBARRAS,NOME,NCM,FABRICANTE FROM CADPRODUTOS ORDER BY CADPRODUTOS.NOME');//.*,TBLCADASTRO.NOME FROM CADPRODUTOS '
  //  + 'INNER JOIN TBLCADASTRO ON CADPRODUTOS.FORNECEDOR=TBLCADASTRO.IDCAD ORDER BY CADPRODUTOS.NOME');
    ibProdutosEquivalentes.Open;
    (ibProdutosEquivalentes.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutosEquivalentes.FieldByName('VALORVENDAB') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutosEquivalentes.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutosEquivalentes.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

    ExibeDados := False;

    with dbgProd do begin

      if MontaColunas Then begin

      DataSource := dtsProdutosEquivalentes;

        Columns.Insert(0);
        Columns.Insert(1);
        Columns.Insert(2);
        Columns.Insert(3);
        Columns.Insert(4);
        Columns.Insert(5);

        //Parametros da Coluna que exibe o C�digo do Cadastro
        Columns.Items[0].Title.Caption := 'C�d.Interno';
        Columns.Items[0].FieldName     := 'IDPROD';
        Columns.Items[0].Width         := 58;
        Columns.Items[0].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o C�digo do Produto
        Columns.Items[1].Title.Caption := 'Ref.';
        Columns.Items[1].FieldName     := 'REF';
        Columns.Items[1].Width         := 70;
        Columns.Items[1].Alignment     := taLeftJustify;
        Columns.Items[1].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o Nome do cliente.
        Columns.Items[2].Title.Caption := 'Nome do Produto';
        Columns.Items[2].FieldName     := 'NOME';
        Columns.Items[2].Width         := 257;
        Columns.Items[2].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o Nome do cliente.
        Columns.Items[3].Title.Caption := 'Valor';
        Columns.Items[3].FieldName     := 'VALORVENDAA';
        Columns.Items[3].Width         := 83;
        Columns.Items[3].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o Nome do cliente.
        Columns.Items[4].Title.Caption := 'Valor(B)';
        Columns.Items[4].FieldName     := 'VALORVENDAB';
        Columns.Items[4].Width         := 83;
        Columns.Items[4].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o Nome do cliente.
        Columns.Items[5].Title.Caption := 'Valor(C)';
        Columns.Items[5].FieldName     := 'VALORVENDAC';
        Columns.Items[5].Width         := 83;
        Columns.Items[5].Alignment     := taLeftJustify;

        MontaColunas := False;

      end;{if}

    end;{with}

    TrimAppMemorySize;
    
  end;{with}

end;

procedure TfrmBuscaProdutos.sb_ord_nomeClick(Sender: TObject);
begin

lbl_edtCodBarrasAd.Text := '';
lbl_edtNome.Text := '';
lbl_edtCodInterno.Text := '';
lbl_edtProduto.Text := '';
lbl_edtQtdeEstoque.Text := '';
lbl_edtPrecoVenda.Text := '';
lbl_edtFabricanteProd.Text := '';
cboFornecedores.ClearSelection;
lbl_edtIDProd.Text := '';
lbl_edtLocalProd.Text := '';

  with dmModule do begin

   /// Commit(ibProdutosEquivalentes);
    ibProdutosEquivalentes.Close;
    ibProdutosEquivalentes.SQL.Clear;
    ibProdutosEquivalentes.SQL.Add('SELECT CADPRODUTOS.*,TBLCADASTRO.NOME FROM CADPRODUTOS '
    + 'LEFT OUTER JOIN TBLCADASTRO ON CADPRODUTOS.FORNECEDOR=TBLCADASTRO.IDCAD ORDER BY CADPRODUTOS.NOME');
    ibProdutosEquivalentes.Open;
    (ibProdutosEquivalentes.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutosEquivalentes.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO


    {Commit(ibTempProdNome);
    ibTempProdNome.Close;
    ibTempProdNome.SQL.Clear;
    ibTempProdNome.SQL.Add('SELECT CADPRODUTOS.*,'
    + 'TBLENTRADAESTOQUEPROD.QUANTIDADE As TotalEstoque,TBLCADASTRO.NOME FROM CADPRODUTOS '
    + 'LEFT OUTER JOIN TBLCADASTRO ON CADPRODUTOS.FORNECEDOR=TBLCADASTRO.IDCAD '
    + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD ORDER BY CADPRODUTOS.NOME');
    ibTempProdNome.Open;}
    (ibProdutosEquivalentes.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutosEquivalentes.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
   // (ibTempProdNome.FieldByName('TotalEstoque') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

  end;

end;

procedure TfrmBuscaProdutos.dbgProdCellClick(Column: TColumn);

var

RefConsulta,CodBarraConsulta : String;
// OleGraphic: TOleGraphic;
//  fs: TFileStream;

begin
  ExibeDados := True;
  with dmModule do begin

  IDProdConsulta := ibProdutosEquivalentes.FieldByName('IDPROD').AsInteger;

 //  if lbl_edtCodInterno.Text <> '' Then begin

 //     RefConsulta := lbl_edtCodInterno.Text;

      Commit(ibProdutosEquivalentes);
      ibProdutosEquivalentes.Close;
      ibProdutosEquivalentes.SQL.Clear;
      ibProdutosEquivalentes.SQL.Add('SELECT CADPRODUTOS.CODBARRAS,CADPRODUTOS.IDPROD,CADPRODUTOS.NCM,CADPRODUTOS.LOCALIZACAOPROD,'
      + 'CADPRODUTOS.VALORCUSTO,CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORVENDAB,CADPRODUTOS.NOME,'
      + 'CADPRODUTOS.FABRICANTE,CADPRODUTOS.VALORVENDAC,CADPRODUTOS.VALORVENDAD,CADPRODUTOS.REF,CADPRODUTOS.FORNECEDOR FROM CADPRODUTOS WHERE CADPRODUTOS.IDPROD=''' + IntToStr(IDProdConsulta) + '''');
    //  + 'TBLENTRADAESTOQUEPROD.QUANTIDADE As TotalEstoque FROM CADPRODUTOS '//TBLCADASTRO.NOME FROM CADPRODUTOS '
    //  + 'LEFT OUTER JOIN TBLCADASTRO ON CADPRODUTOS.FORNECEDOR=TBLCADASTRO.IDCAD '
    //  + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD WHERE CADPRODUTOS.IDPROD=''' + IntToStr(IDProdConsulta) + '''');
      ibProdutosEquivalentes.Open;
      (ibProdutosEquivalentes.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutosEquivalentes.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

      if ibProdutosEquivalentes.RecordCount > 0 Then begin

        lbl_edtNome.Text       := ibProdutosEquivalentes.FieldByName('NOME').AsString;
        lbl_edtProduto.Text    := lbl_edtNome.Text;//ibProdutosEquivalentes.FieldByName('NOME').AsString;
        lbl_edtPrecoVenda.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutosEquivalentes.FieldByName('VALORVENDAA').AsFloat);//(ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
       // lbl_edtQtdeEstoque.Text := (FormatFloat(CasasDecimais('Produtos'),StrToFloat(ibTempProdNome.FieldByName('TotalEstoque').AsString)));
       // lbl_edtFabricanteProd.Text := ibProdutosEquivalentes.FieldByName('FABRICANTE').AsString;
        lbl_edtCodInterno.Text := ibProdutosEquivalentes.FieldByName('REF').AsString;   //:= IntToStr(ibTempProdNome.FieldByName('IDPROD').AsInteger);
        lbl_edtIDProd.Text := IntToStr(ibProdutosEquivalentes.FieldByName('IDPROD').AsInteger);
        lbl_edtCodBarrasAd.Text   := ibProdutosEquivalentes.FieldByName('CODBARRAS').AsString;
        lbl_edtNCM.Text   := ibProdutosEquivalentes.FieldByName('NCM').AsString;
        lbl_edtLocalProd.Text := ibProdutosEquivalentes.FieldByName('LOCALIZACAOPROD').AsString;
      end;//if label codinterno

      ibEntrProdEstoque.Close;
      ibEntrProdEstoque.SQL.Clear;
      ibEntrProdEstoque.SQL.Add('SELECT IDPROD,QUANTIDADE FROM TBLENTRADAESTOQUEPROD WHERE IDPROD=''' + IntToStr(IDProdConsulta) + '''');
      ibEntrProdEstoque.Open;

      if ibEntrProdEstoque.RecordCount > 0 Then begin
      lbl_edtQtdeEstoque.Text := FormatFloat(CasasDecimais('Produtos'),ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat);
      end;
            
  {  end else begin

    IDProd := ibTempProdNome.FieldByName('IDPROD').AsInteger;
    Commit(ibTempProdNome);
    ibTempProdNome.Close;
    ibTempProdNome.SQL.Clear;
    ibTempProdNome.SQL.Add('SELECT CADPRODUTOS.*,'
    + 'TBLENTRADAESTOQUEPROD.QUANTIDADE As TotalEstoque,TBLCADASTRO.NOME FROM CADPRODUTOS '
    + 'LEFT OUTER JOIN TBLCADASTRO ON CADPRODUTOS.FORNECEDOR=TBLCADASTRO.IDCAD '
    + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD WHERE CADPRODUTOS.IDPROD=''' + IntToStr(IDProd) + '''');
    ibTempProdNome.Open;
    (ibTempProdNome.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibTempProdNome.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

    if ibTempProdNome.RecordCount > 0 Then begin

      lbl_edtNome.Text       := ibTempProdNome.FieldByName('NOME').AsString;
      lbl_edtProduto.Text    := ibTempProdNome.FieldByName('NOME').AsString;
      lbl_edtPrecoVenda.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProdNome.FieldByName('VALORVENDAA').AsFloat);//ibTempProd.FieldByName('VALORVENDAA').AsString;(ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      lbl_edtQtdeEstoque.Text := ibTempProdNome.FieldByName('TotalEstoque').AsString;                                    
      lbl_edtFabricanteProd.Text := ibTempProdNome.FieldByName('FABRICANTE').AsString;

      lbl_edtCodInterno.Text := ibTempProdNome.FieldByName('REF').AsString;
      lbl_edtIDProd.Text := IntToStr(ibTempProdNome.FieldByName('IDPROD').AsInteger);

    end;//if label codbarras



    end;//if codinterno

       if ibTempProdNome.FieldByName('CODBARRAS').AsString <> '' Then begin

       lbl_edtCodBarrasAd.Text   := ibTempProdNome.FieldByName('CODBARRAS').AsString;

       end; }

////////////////////////////////////////////////////////////////////////////////

   { if lbl_edtCodBarrasAd.Text <> '' Then begin

      CodBarraConsulta := lbl_edtCodBarrasAd.Text;

      Commit(ibTempProdNome);
      ibTempProdNome.Close;
      ibTempProdNome.SQL.Clear;
      ibTempProdNome.SQL.Add('SELECT CADPRODUTOS.*,'
      + 'TBLENTRADAESTOQUEPROD.QUANTIDADE As TotalEstoque,TBLCADASTRO.NOME FROM CADPRODUTOS '
      + 'LEFT OUTER JOIN TBLCADASTRO ON CADPRODUTOS.FORNECEDOR=TBLCADASTRO.IDCAD '
      + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD WHERE CADPRODUTOS.CODBARRAS=''' + CodBarraConsulta + '''');
      ibTempProdNome.Open;
      (ibTempProdNome.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibTempProdNome.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

      if ibTempProdNome.RecordCount > 0 Then begin

        lbl_edtNome.Text       := ibTempProdNome.FieldByName('NOME').AsString;
        lbl_edtProduto.Text    := ibTempProdNome.FieldByName('NOME').AsString;
        lbl_edtPrecoVenda.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProdNome.FieldByName('VALORVENDAA').AsFloat);//ibTempProd.FieldByName('VALORVENDAA').AsString;(ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
        lbl_edtQtdeEstoque.Text := ibTempProdNome.FieldByName('TotalEstoque').AsString;
        lbl_edtFabricanteProd.Text := ibTempProdNome.FieldByName('FABRICANTE').AsString;

        lbl_edtCodInterno.Text := ibTempProdNome.FieldByName('REF').AsString;
        lbl_edtIDProd.Text := IntToStr(ibProdutos.FieldByName('IDPROD').AsInteger);

      end;//if

    end else begin

    IDProd := ibTempProdNome.FieldByName('IDPROD').AsInteger;
    Commit(ibTempProdNome);
    ibTempProdNome.Close;
    ibTempProdNome.SQL.Clear;
    ibTempProdNome.SQL.Add('SELECT CADPRODUTOS.*,'
    + 'TBLENTRADAESTOQUEPROD.QUANTIDADE As TotalEstoque,TBLCADASTRO.NOME FROM CADPRODUTOS '
    + 'LEFT OUTER JOIN TBLCADASTRO ON CADPRODUTOS.FORNECEDOR=TBLCADASTRO.IDCAD '
    + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD WHERE CADPRODUTOS.IDPROD=''' + IntToStr(IDProd) + '''');
    ibTempProdNome.Open;
    (ibTempProdNome.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibTempProdNome.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

    if ibTempProdNome.RecordCount > 0 Then begin

      lbl_edtNome.Text       := ibTempProdNome.FieldByName('NOME').AsString;
      lbl_edtProduto.Text    := ibTempProdNome.FieldByName('NOME').AsString;
      lbl_edtPrecoVenda.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProdNome.FieldByName('VALORVENDAA').AsFloat);//ibTempProd.FieldByName('VALORVENDAA').AsString;(ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      lbl_edtQtdeEstoque.Text := ibTempProdNome.FieldByName('TotalEstoque').AsString;
      lbl_edtFabricanteProd.Text := ibTempProdNome.FieldByName('FABRICANTE').AsString;

      lbl_edtCodInterno.Text := ibTempProdNome.FieldByName('REF').AsString;
      lbl_edtIDProd.Text := IntToStr(ibProdutos.FieldByName('IDPROD').AsInteger);

    end;//if label codbarras
    end; }
////////////////////////////////////////////////////////////////////////////////



    { if ibTempProdNome.FieldByName('CODBARRASAD').AsString <> '' Then begin

     lbl_edtCodBarrasAd.Text   := ibTempProdNome.FieldByName('CODBARRASAD').AsString;

     end; }

 //   end;{if}
    ///////////////////////////////////////////////////////////////////////////////////////

    //ROTINA DE EXIBI��O DA IMAGEM DO PRODUTO
  //  if lbl_edtProduto.Text <> '' Then begin
    {  imgAmpliar.Enabled        := True;
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
    end; }

    //ROTINA PARA EXIBIR A IMAGEM DO PRODUTO    
   { if Not FileExists(ExtractFilePath(Application.ExeName) + 'Data\RunTime\ProdImagens\' + lbl_edtProduto.Text + '.jpg') Then begin

      imgProduto.Picture := Nil; //LIMPA A IMAGEM
      ImagemProduto := '';

    end else begin

      try
        OleGraphic := TOleGraphic.Create;
        fs         := TFileStream.Create(ExtractFilePath(Application.ExeName) //EXIBE A IMAGEM DO PRODUTO
                                        + 'Data\RunTime\ProdImagens\' + lbl_edtProduto.Text + '.jpg', fmOpenRead or fmSharedenyNone);
        OleGraphic.LoadFromStream(fs);
        imgProduto.Picture.Assign(OleGraphic);

       // imgProduto.Picture.LoadFromFile();

        ImagemProduto := ExtractFilePath(Application.ExeName) //EXIBE A IMAGEM DO PRODUTO
                                        + 'Data\RunTime\ProdImagens\' + lbl_edtProduto.Text + '.jpg';

      finally
        fs.Free;
        OleGraphic.Free
      end;

     end; }

     lbl_edtNome.SetFocus;

     TrimAppMemorySize;
     
  end;{with}


end;

procedure TfrmBuscaProdutos.FormCreate(Sender: TObject);
begin
  MontaColunas := True;
end;

procedure TfrmBuscaProdutos.sbLimparClick(Sender: TObject);
begin
ckPrecob.Checked := False;
ckPrecoc.Checked := False;
lbl_edtCodBarrasAd.Text := '';
lbl_edtNome.Text := '';
lbl_edtCodInterno.Text := '';
lbl_edtProduto.Text := '';
lbl_edtQtdeEstoque.Text := '';
lbl_edtPrecoVenda.Text := '';
lbl_edtFabricanteProd.Text := '';
lbl_edtValor.Text := '';
cboFornecedores.ClearSelection;
lbl_edtIDProd.Text := '';
lbl_edtLocalProd.Text := '';

  with dmModule do begin

  /// Commit(ibProdutosEquivalentes);
    ibProdutosEquivalentes.Close;
    ibProdutosEquivalentes.SQL.Clear;
    ibProdutosEquivalentes.SQL.Add('SELECT CADPRODUTOS.*,TBLCADASTRO.NOME FROM CADPRODUTOS '
    + 'LEFT OUTER JOIN TBLCADASTRO ON CADPRODUTOS.FORNECEDOR=TBLCADASTRO.IDCAD ORDER BY CADPRODUTOS.NOME');
    ibProdutosEquivalentes.Open;
    (ibProdutosEquivalentes.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutosEquivalentes.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO


  end;//with

end;

procedure TfrmBuscaProdutos.dbgProdDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

//with dmModule do begin
  //SEGUNDA FORMA DE FAZER UMA DBGRID FICAR COLOCRIDA


 { if ibTempProdNome.FieldByName('QtdeEstoque').value > 0 Then begin
  dbgProd.Canvas.Brush.Color:= clBlue; // coloque aqui a cor desejada
  dbgProd.Canvas.Font.Color:= clWhite;
  dbgProd.DefaultDrawDataCell(Rect, dbgProd.columns[datacol].field, State);
  end else begin
  dbgProd.Canvas.Brush.Color:= clred; // coloque aqui a cor desejada
  dbgProd.Canvas.Font.Color:= clWhite;
  dbgProd.DefaultDrawDataCell(Rect, dbgProd.columns[datacol].field, State);
  end; }
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
//end;

end;

procedure TfrmBuscaProdutos.ibeaSairClick(Sender: TObject);
begin
Close;
end;

procedure TfrmBuscaProdutos.ibeaIncluirClick(Sender: TObject);

var

i, intIdProd : Integer;
strCodBarras : String;
//OleGraphic: TOleGraphic;
//fs: TFileStream;

begin

  with dmModule do begin

    IDProdConsulta := ibProdutosEquivalentes.FieldByName('IDPROD').AsInteger;

    if (frmVendasLoja = Nil)or(frmVendasLoja.Showing = False)Then begin

   ///    ShowMessage('FAROFA,FABIO,FACULDADE'); or(frmVendasLoja.Showing)

    end else begin

      with frmVendasLoja do begin


        if (frmVendasLoja.lbl_edtCodBarras.Enabled = True)and(frmVendasLoja.lbl_edtCodProd.Enabled = True)Then begin


          lbl_NomeProd.Caption := lbl_edtNome.Text;

          if ibProdutosEquivalentes.RecordCount > 0 Then begin

            frmVendasLoja.lbl_edtCodBarras.Text := lbl_edtCodBarrasAd.Text;

            frmVendasLoja.lbl_edtCodProd.Text := lbl_edtCodInterno.Text;

            if frmVendasLoja.lbl_edtCodProd.Text = '' then begin

              frmVendasLoja.lbl_edtCodProd.Text := IntToStr(IDProdConsulta);

            end;

            if (frmVendasLoja.lbl_TipoPreco.Caption = '') Then begin

            frmVendasLoja.lbl_edtVlrUnit.Text   := FormatFloat(CasasDecimais('Produtos'),ibProdutosEquivalentes.FieldByName('VALORVENDAA').AsFloat);
            frmVendasLoja.lbl_edtVlrTotal.Text  := FormatFloat(CasasDecimais('Produtos'),ibProdutosEquivalentes.FieldByName('VALORVENDAA').AsFloat);

            end;

            if (frmVendasLoja.lbl_TipoPreco.Caption = 'Pre�o de Venda B')or(ckPrecob.Checked) Then begin

            frmVendasLoja.lbl_edtVlrUnit.Text   := FormatFloat(CasasDecimais('Produtos'),ibProdutosEquivalentes.FieldByName('VALORVENDAB').AsFloat);
            frmVendasLoja.lbl_edtVlrTotal.Text  := FormatFloat(CasasDecimais('Produtos'),ibProdutosEquivalentes.FieldByName('VALORVENDAB').AsFloat);
            frmVendasLoja.lbl_TipoPreco.Caption := 'Pre�o de Venda B';

            end;

            if (frmVendasLoja.lbl_TipoPreco.Caption = 'Pre�o de Venda C')or(ckPrecoc.Checked) Then begin

            frmVendasLoja.lbl_edtVlrUnit.Text   := FormatFloat(CasasDecimais('Produtos'),ibProdutosEquivalentes.FieldByName('VALORVENDAC').AsFloat);
            frmVendasLoja.lbl_edtVlrTotal.Text  := FormatFloat(CasasDecimais('Produtos'),ibProdutosEquivalentes.FieldByName('VALORVENDAC').AsFloat);
            frmVendasLoja.lbl_TipoPreco.Caption := 'Pre�o de Venda C';
            
            end;  

           {  if lbl_edtPacoteFardo.Caption = '' Then begin

               Commit(ibConfig);
               ibConfig.Close;
               ibConfig.SQL.Clear;
               ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
               ibConfig.Open;


              if (ckPrecob.Checked = False)and(ckPrecoc.Checked = False) and(ckPrecod.Checked = False) Then begin

                if(frmVendasLoja.lbl_TipoPreco.Caption = '')Then begin

                  if ibConfig.FieldByName('TRESCASASDECIMAIS').AsString = 'Sim' Then begin

                    frmVendasLoja.lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Combustiveis'),ibProdutosEquivalentes.FieldByName('VALORVENDAA').AsFloat);
                    frmVendasLoja.lbl_edtVlrTotal.Text := FormatFloat(CasasDecimais('Combustiveis'),ibProdutosEquivalentes.FieldByName('VALORVENDAA').AsFloat);
                    frmVendasLoja.lbl_edtQtde.Text := '1';

                  end else begin

                    frmVendasLoja.lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutosEquivalentes.FieldByName('VALORVENDAA').AsFloat);
                    frmVendasLoja.lbl_edtVlrTotal.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutosEquivalentes.FieldByName('VALORVENDAA').AsFloat);
                    frmVendasLoja.lbl_edtQtde.Text := '1';

                  end;

                end;

              end;

              if (ckPrecob.Checked)or(frmVendasLoja.lbl_TipoPreco.Caption = 'Pre�o de Venda B')  Then begin

                frmVendasLoja.lbl_TipoPreco.Caption := 'Pre�o de Venda B';

                  if ibConfig.FieldByName('TRESCASASDECIMAIS').AsString = 'Sim' Then begin

                    frmVendasLoja.lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Combustiveis'),ibProdutosEquivalentes.FieldByName('VALORVENDAB').AsFloat);
                    frmVendasLoja.lbl_edtVlrTotal.Text := FormatFloat(CasasDecimais('Combustiveis'),ibProdutosEquivalentes.FieldByName('VALORVENDAB').AsFloat);
                    frmVendasLoja.lbl_edtQtde.Text := '1';

                  end else begin

                    frmVendasLoja.lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutosEquivalentes.FieldByName('VALORVENDAB').AsFloat);
                    frmVendasLoja.lbl_edtVlrTotal.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutosEquivalentes.FieldByName('VALORVENDAB').AsFloat);
                    frmVendasLoja.lbl_edtQtde.Text := '1';

                  end;

              end;

              if (ckPrecoc.Checked)or(frmVendasLoja.lbl_TipoPreco.Caption = 'Pre�o de Venda C') Then begin

                frmVendasLoja.lbl_TipoPreco.Caption  := 'Pre�o de Venda C';

                  if ibConfig.FieldByName('TRESCASASDECIMAIS').AsString = 'Sim' Then begin

                    frmVendasLoja.lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Combustiveis'),ibProdutosEquivalentes.FieldByName('VALORVENDAC').AsFloat);
                    frmVendasLoja.lbl_edtVlrTotal.Text := FormatFloat(CasasDecimais('Combustiveis'),ibProdutosEquivalentes.FieldByName('VALORVENDAC').AsFloat);
                    frmVendasLoja.lbl_edtQtde.Text := '1';

                  end else begin

                    frmVendasLoja.lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutosEquivalentes.FieldByName('VALORVENDAC').AsFloat);
                    frmVendasLoja.lbl_edtVlrTotal.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutosEquivalentes.FieldByName('VALORVENDAC').AsFloat);
                    frmVendasLoja.lbl_edtQtde.Text := '1';

                  end;

              end;

              if ckPrecod.Checked Then begin

                frmVendasLoja.lbl_TipoPreco.Caption  := 'Pre�o de Venda D';

                  if ibConfig.FieldByName('TRESCASASDECIMAIS').AsString = 'Sim' Then begin

                    frmVendasLoja.lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Combustiveis'),ibProdutosEquivalentes.FieldByName('VALORVENDAD').AsFloat);
                    frmVendasLoja.lbl_edtVlrTotal.Text := FormatFloat(CasasDecimais('Combustiveis'),ibProdutosEquivalentes.FieldByName('VALORVENDAD').AsFloat);
                    frmVendasLoja.lbl_edtQtde.Text := '1';

                  end else begin

                    frmVendasLoja.lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutosEquivalentes.FieldByName('VALORVENDAD').AsFloat);
                    frmVendasLoja.lbl_edtVlrTotal.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutosEquivalentes.FieldByName('VALORVENDAD').AsFloat);
                    frmVendasLoja.lbl_edtQtde.Text := '1';

                  end;

              end;

            end;//if pacote fardo = '' }

          {  if lbl_edtPacoteFardo.Caption <> '' Then begin

              frmVendasLoja.lbl_edtQtde.Text := FormatFloat('0',ibProdutosEquivalentes.FieldByName('QTDEPACOTEFARDO').AsFloat);
              frmVendasLoja.lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutosEquivalentes.FieldByName('VLRPACOTEFARDO').AsFloat);

            end;//if pacote fardo <> '' }

           // frmVendasLoja.lbl_edtVlrUnit.Text  := lbl_edtPrecoVenda.Text;
           // frmVendasLoja.lbl_edtVlrTotal.Text := lbl_edtPrecoVenda.Text;
            frmVendasLoja.lbl_edtVlrUnit.SetFocus;



          {  for i:=0 to cboProduto.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
              if TClasseCombo( cboProduto.Items.Objects[i]).ID = ibTempProdNome.FieldByName('IDPROD').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
                cboProduto.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
                Break;
              end else begin
                cboProduto.ClearSelection;//LIMPA A SELECAO. }
          //    end;{if}
          //  end;{for}

            //ROTINA PARA EXIBIR A IMAGEM DO PRODUTO
         {   if Not FileExists(ExtractFilePath(Application.ExeName) + 'Data\RunTime\ProdImagens\' + lbl_NomeProd.Caption + '.jpg') Then begin

              frmVendasLoja.imgProduto.Picture := Nil; //LIMPA A IMAGEM
              ImagemProduto := '';

            end else begin

              try
                OleGraphic := TOleGraphic.Create;
                fs         := TFileStream.Create(ExtractFilePath(Application.ExeName) //EXIBE A IMAGEM DO PRODUTO
                                                + 'Data\RunTime\ProdImagens\' + lbl_NomeProd.Caption + '.jpg', fmOpenRead or fmSharedenyNone);
                OleGraphic.LoadFromStream(fs);
                frmVendasLoja.imgProduto.Picture.Assign(OleGraphic);

               // imgProduto.Picture.LoadFromFile();

                ImagemProduto := ExtractFilePath(Application.ExeName) //EXIBE A IMAGEM DO PRODUTO
                                                + 'Data\RunTime\ProdImagens\' + lbl_NomeProd.Caption + '.jpg';

              finally
                fs.Free;
                OleGraphic.Free
              end;

             end;   }


          end;{IF LBL_CODINTERNO}

           frmVendasLoja.lbl_edtIDProdCX.Text := IntToStr(IDProdConsulta); //lbl_edtIDProd.Text;

           ibeaSairClick(Sender);

        end;//if cod barras e codprod true

      end;{WITH VRM VENDAS LOJA}

    end;//if frmvendasloja

////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////

   { if frmCliente.Showing Then begin

      with frmCliente do begin

      Commit(ibTempProd);
      ibTempProd.Close;
      ibTempProd.SQL.Clear;
      ibTempProd.SQL.Add('SELECT * FROM CADPRODUTOS WHERE CADPRODUTOS.IDPROD=''' + lbl_edtIDProd.Text + '''');
      ibTempProd.Open;

     (ibTempProd.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := ',0.00';
     (ibTempProd.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := ',0.00';
     (ibTempProd.FieldByName('VALORVENDAB') as TFloatField).DisplayFormat := ',0.00';
     (ibTempProd.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat := ',0.00';
     (ibTempProd.FieldByName('VALORVENDAD') as TFloatField).DisplayFormat := ',0.00';

        if ibTempProd.RecordCount > 0 Then begin


         if (frmCliente.lbl_TipoPreco.Caption = '') or (frmCliente.lbl_TipoPreco.Caption = 'Pre�o de Venda(A)') Then begin

            frmCliente.lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProd.FieldByName('VALORVENDAA').AsFloat);

          end;

          if frmCliente.lbl_TipoPreco.Caption = 'Pre�o de Venda(B)' Then begin

            frmCliente.lbl_edtVlrUnit.Text  := FormatFloat(CasasDecimais('Produtos'),ibTempProd.FieldByName('VALORVENDAB').AsFloat);

          end;

          if frmCliente.lbl_TipoPreco.Caption = 'Pre�o de Venda(C)' Then begin

            frmCliente.lbl_edtVlrUnit.Text  := FormatFloat(CasasDecimais('Produtos'),ibTempProd.FieldByName('VALORVENDAC').AsFloat);

          end;

          if frmCliente.lbl_TipoPreco.Caption = 'Pre�o de Venda(D)' Then begin

            frmCliente.lbl_edtVlrUnit.Text  := FormatFloat(CasasDecimais('Produtos'),ibTempProd.FieldByName('VALORVENDAD').AsFloat);

          end;

            for i:=0 to frmCliente.cboProdutos.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
              if TClasseCombo( frmCliente.cboProdutos.Items.Objects[i]).ID = ibTempProd.FieldByName('IDPROD').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
                cboProdutos.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
                Break;
              end else begin
                frmCliente.cboProdutos.ClearSelection;//LIMPA A SELECAO.
             end;//if
            end;//for

        end;//if recordcount

         lbl_edtQtde.SetFocus;
         lbl_edtQtde.Text := '1';
         frmBuscaProdutos.ibeaSairClick(Sender);

      end;//with

    end;//if  }

////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////

  { if frmNotaFiscal.Showing Then begin

      with frmNotaFiscal do begin

      Commit(ibTempProd);
      ibTempProd.Close;
      ibTempProd.SQL.Clear;
      ibTempProd.SQL.Add('SELECT * FROM CADPRODUTOS WHERE CADPRODUTOS.IDPROD=''' + lbl_edtIDProd.Text + '''');
      ibTempProd.Open;

     (ibTempProd.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := ',0.00';
     (ibTempProd.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := ',0.00';
     (ibTempProd.FieldByName('VALORVENDAB') as TFloatField).DisplayFormat := ',0.00';
     (ibTempProd.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat := ',0.00';
     (ibTempProd.FieldByName('VALORVENDAD') as TFloatField).DisplayFormat := ',0.00';

        if ibTempProd.RecordCount > 0 Then begin


            frmNotaFiscal.lbl_edtVlrUnitario.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProd.FieldByName('VALORVENDAA').AsFloat);
            frmNotaFiscal.lbl_edtRef.Text       := ibTempProd.FieldByName('REF').AsString;
            frmNotaFiscal.lbl_edtCodBarras.Text := ibTempProd.FieldByName('CODBARRAS').AsString;

            for i:=0 to frmNotaFiscal.cboProd.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
              if TClasseCombo( frmNotaFiscal.cboProd.Items.Objects[i]).ID = ibTempProd.FieldByName('IDPROD').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
                cboProd.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
                Break;
              end else begin
                frmNotaFiscal.cboProd.ClearSelection;//LIMPA A SELECAO.  
             end;//if
            end;//for

        end;//if recordcount

         frmNotaFiscal.lbl_edtQtde.SetFocus;
         frmNotaFiscal.lbl_edtQtde.Text := '1';
         frmBuscaProdutos.ibeaSairClick(Sender);

      end;//with

    end;//if   }

////////////////////////////////////////////////////////////////////////////////



  // if frmCotacao.Showing Then begin

   //   with frmCotacao do begin

    {  Commit(ibTempProd);
      ibTempProd.Close;
      ibTempProd.SQL.Clear;
      ibTempProd.SQL.Add('SELECT * FROM CADPRODUTOS WHERE CADPRODUTOS.IDPROD=''' + lbl_edtIDProd.Text + '''');
      ibTempProd.Open;

     (ibTempProd.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := ',0.00';
     (ibTempProd.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := ',0.00';
     (ibTempProd.FieldByName('VALORVENDAB') as TFloatField).DisplayFormat := ',0.00';
     (ibTempProd.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat := ',0.00';
     (ibTempProd.FieldByName('VALORVENDAD') as TFloatField).DisplayFormat := ',0.00';

        if ibTempProd.RecordCount > 0 Then begin  }

        //  frmCotacao.lbl_edtNomeProd.Text := ibTempProdNome.FieldByName('NOME').AsString;
       //   frmCotacao.lbl_edtIDProd.Text   := IntToStr(ibTempProdNome.FieldByName('IDPROD').AsInteger);

       // end;//if recordcount
       //  frmCotacao.lbl_edtQtde.Text := '1';
        // frmCotacao.lbl_edtVlrCotacao.SetFocus;
       // frmBuscaProdutos.ibeaSairClick(Sender);

    //  end;//with

   // end;//if

////////////////////////////////////////////////////////////////////////////////

   { if frmEtiquetasNomePrat.showing Then begin

      Commit(ibTempProd);
      ibTempProd.Close;
      ibTempProd.SQL.Clear;
      ibTempProd.SQL.Add('SELECT * FROM CADPRODUTOS WHERE CADPRODUTOS.IDPROD=''' + lbl_edtIDProd.Text + '''');
      ibTempProd.Open;

     (ibTempProd.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := ',0.00';
     (ibTempProd.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := ',0.00';
     (ibTempProd.FieldByName('VALORVENDAB') as TFloatField).DisplayFormat := ',0.00';
     (ibTempProd.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat := ',0.00';
     (ibTempProd.FieldByName('VALORVENDAD') as TFloatField).DisplayFormat := ',0.00';


      if (frmEtiquetasNomePrat.lbl_edtNome1.Text = '') Then begin

        frmEtiquetasNomePrat.lbl_edtNome1.Text := lbl_edtNome.Text;
        frmEtiquetasNomePrat.lbl_edtVlr1.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProd.FieldByName('VALORVENDAA').AsFloat);

        sbLimparClick(Sender);

      end;

      if (frmBuscaProdutos.lbl_edtNome.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome1.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome2.Text = '') Then begin

        frmEtiquetasNomePrat.lbl_edtNome2.Text := lbl_edtNome.Text;
        frmEtiquetasNomePrat.lbl_edtVlr2.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProd.FieldByName('VALORVENDAA').AsFloat);
        sbLimparClick(Sender);

      end;

      if (frmBuscaProdutos.lbl_edtNome.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome2.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome3.Text = '') Then begin

        frmEtiquetasNomePrat.lbl_edtNome3.Text := lbl_edtNome.Text;
        frmEtiquetasNomePrat.lbl_edtVlr3.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProd.FieldByName('VALORVENDAA').AsFloat);
        sbLimparClick(Sender);
        
      end;

      if (frmBuscaProdutos.lbl_edtNome.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome3.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome4.Text = '') Then begin

        frmEtiquetasNomePrat.lbl_edtNome4.Text := lbl_edtNome.Text;
        frmEtiquetasNomePrat.lbl_edtVlr4.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProd.FieldByName('VALORVENDAA').AsFloat);
        sbLimparClick(Sender);

      end;

      if (frmBuscaProdutos.lbl_edtNome.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome4.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome5.Text = '') Then begin

        frmEtiquetasNomePrat.lbl_edtNome5.Text := lbl_edtNome.Text;
        frmEtiquetasNomePrat.lbl_edtVlr5.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProd.FieldByName('VALORVENDAA').AsFloat);
        sbLimparClick(Sender);

      end;

      if (frmBuscaProdutos.lbl_edtNome.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome5.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome6.Text = '') Then begin

        frmEtiquetasNomePrat.lbl_edtNome6.Text := lbl_edtNome.Text;
        frmEtiquetasNomePrat.lbl_edtVlr6.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProd.FieldByName('VALORVENDAA').AsFloat);
        sbLimparClick(Sender);

      end;

      if (frmBuscaProdutos.lbl_edtNome.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome6.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome7.Text = '') Then begin

        frmEtiquetasNomePrat.lbl_edtNome7.Text := lbl_edtNome.Text;
        frmEtiquetasNomePrat.lbl_edtVlr7.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProd.FieldByName('VALORVENDAA').AsFloat);
        sbLimparClick(Sender);

      end;

      if (frmBuscaProdutos.lbl_edtNome.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome7.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome8.Text = '') Then begin

        frmEtiquetasNomePrat.lbl_edtNome8.Text := lbl_edtNome.Text;
        frmEtiquetasNomePrat.lbl_edtVlr8.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProd.FieldByName('VALORVENDAA').AsFloat);
        sbLimparClick(Sender);

      end;

      if (frmBuscaProdutos.lbl_edtNome.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome8.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome9.Text = '') Then begin

        frmEtiquetasNomePrat.lbl_edtNome9.Text := lbl_edtNome.Text;
        frmEtiquetasNomePrat.lbl_edtVlr9.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProd.FieldByName('VALORVENDAA').AsFloat);
        sbLimparClick(Sender);

      end;

      if (frmBuscaProdutos.lbl_edtNome.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome9.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome10.Text = '') Then begin

        frmEtiquetasNomePrat.lbl_edtNome10.Text := lbl_edtNome.Text;
        frmEtiquetasNomePrat.lbl_edtVlr10.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProd.FieldByName('VALORVENDAA').AsFloat);
        sbLimparClick(Sender);

      end;

      if (frmBuscaProdutos.lbl_edtNome.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome10.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome11.Text = '') Then begin

        frmEtiquetasNomePrat.lbl_edtNome11.Text := lbl_edtNome.Text;
        frmEtiquetasNomePrat.lbl_edtVlr11.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProd.FieldByName('VALORVENDAA').AsFloat);
        sbLimparClick(Sender);

      end;

      if (frmBuscaProdutos.lbl_edtNome.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome11.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome12.Text = '') Then begin

        frmEtiquetasNomePrat.lbl_edtNome12.Text := lbl_edtNome.Text;
        frmEtiquetasNomePrat.lbl_edtVlr12.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProd.FieldByName('VALORVENDAA').AsFloat);
        sbLimparClick(Sender);

      end;

      if (frmBuscaProdutos.lbl_edtNome.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome12.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome13.Text = '') Then begin

        frmEtiquetasNomePrat.lbl_edtNome13.Text := lbl_edtNome.Text;
        frmEtiquetasNomePrat.lbl_edtVlr13.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProd.FieldByName('VALORVENDAA').AsFloat);
        sbLimparClick(Sender);

      end;

      if (frmBuscaProdutos.lbl_edtNome.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome13.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome14.Text = '') Then begin

        frmEtiquetasNomePrat.lbl_edtNome14.Text := lbl_edtNome.Text;
        frmEtiquetasNomePrat.lbl_edtVlr14.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProd.FieldByName('VALORVENDAA').AsFloat);
        sbLimparClick(Sender);

      end;

      if (frmBuscaProdutos.lbl_edtNome.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome14.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome15.Text = '') Then begin

        frmEtiquetasNomePrat.lbl_edtNome15.Text := lbl_edtNome.Text;
        frmEtiquetasNomePrat.lbl_edtVlr15.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProd.FieldByName('VALORVENDAA').AsFloat);
        sbLimparClick(Sender);

      end;

      if (frmBuscaProdutos.lbl_edtNome.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome15.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome16.Text = '') Then begin

        frmEtiquetasNomePrat.lbl_edtNome16.Text := lbl_edtNome.Text;
        frmEtiquetasNomePrat.lbl_edtVlr16.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProd.FieldByName('VALORVENDAA').AsFloat);
        sbLimparClick(Sender);

      end;

      if (frmBuscaProdutos.lbl_edtNome.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome16.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome17.Text = '') Then begin

        frmEtiquetasNomePrat.lbl_edtNome17.Text := lbl_edtNome.Text;
        frmEtiquetasNomePrat.lbl_edtVlr17.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProd.FieldByName('VALORVENDAA').AsFloat);
        sbLimparClick(Sender);

      end;

      if (frmBuscaProdutos.lbl_edtNome.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome17.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome18.Text = '') Then begin

        frmEtiquetasNomePrat.lbl_edtNome18.Text := lbl_edtNome.Text;
        frmEtiquetasNomePrat.lbl_edtVlr18.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProd.FieldByName('VALORVENDAA').AsFloat);
        sbLimparClick(Sender);

      end;

      if (frmBuscaProdutos.lbl_edtNome.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome18.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome19.Text = '') Then begin

        frmEtiquetasNomePrat.lbl_edtNome19.Text := lbl_edtNome.Text;
        frmEtiquetasNomePrat.lbl_edtVlr19.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProd.FieldByName('VALORVENDAA').AsFloat);
        sbLimparClick(Sender);

      end;

      if (frmBuscaProdutos.lbl_edtNome.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome19.Text <> '')and(frmEtiquetasNomePrat.lbl_edtNome20.Text = '') Then begin

        frmEtiquetasNomePrat.lbl_edtNome20.Text := lbl_edtNome.Text;
        frmEtiquetasNomePrat.lbl_edtVlr20.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProd.FieldByName('VALORVENDAA').AsFloat);
        sbLimparClick(Sender);

      end;

    end;//if frmetiquetas nome prat  }

////////////////////////////////////////////////////////////////////////////////

   if frmEntradadeEstoque.Showing = True Then begin

      with frmEntradadeEstoque do begin

      Commit(ibTempProd);
      ibTempProd.Close;
      ibTempProd.SQL.Clear;
      ibTempProd.SQL.Add('SELECT * FROM CADPRODUTOS WHERE CADPRODUTOS.IDPROD=''' + lbl_edtIDProd.Text + '''');
      ibTempProd.Open;

     (ibTempProd.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := ',0.00';
     (ibTempProd.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := ',0.00';
     (ibTempProd.FieldByName('VALORVENDAB') as TFloatField).DisplayFormat := ',0.00';
     (ibTempProd.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat := ',0.00';
     (ibTempProd.FieldByName('VALORVENDAD') as TFloatField).DisplayFormat := ',0.00';

        if ibTempProd.RecordCount > 0 Then begin


            frmEntradadeEstoque.lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProd.FieldByName('VALORCUSTO').AsFloat);
            frmEntradadeEstoque.lbl_edtRef.Text       := ibTempProd.FieldByName('REF').AsString;
            frmEntradadeEstoque.lbl_edtCodBarras.Text := ibTempProd.FieldByName('CODBARRAS').AsString;
            frmEntradadeEstoque.lbl_edtIDProduto.Text := IntToStr(ibTempProd.FieldByName('IDPROD').AsInteger);
            
            for i:=0 to frmEntradadeEstoque.cboProdutos.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
              if TClasseCombo( frmEntradadeEstoque.cboProdutos.Items.Objects[i]).ID = ibTempProd.FieldByName('IDPROD').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
                frmEntradadeEstoque.cboProdutos.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
                Break;
              end else begin
                frmEntradadeEstoque.cboProdutos.ClearSelection;//LIMPA A SELECAO.  }
             end;{if}
            end;{for}

        end;//if recordcount

         frmEntradadeEstoque.lbl_edtQtde.SetFocus;
         frmEntradadeEstoque.lbl_edtQtde.Text := '1';
         frmBuscaProdutos.ibeaSairClick(Sender);

      end;//with

    end;//if

////////////////////////////////////////////////////////////////////////////////

  { if frmProd_MPrima.Showing Then begin

      with frmProd_MPrima do begin

      Commit(ibProdutosEquivalentes);
      ibProdutosEquivalentes.Close;
      ibProdutosEquivalentes.SQL.Clear;
      ibProdutosEquivalentes.SQL.Add('SELECT * FROM CADPRODUTOS WHERE CADPRODUTOS.IDPROD=''' + lbl_edtIDProd.Text + '''');
      ibProdutosEquivalentes.Open;

     (ibProdutosEquivalentes.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := ',0.00';
     (ibProdutosEquivalentes.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := ',0.00';
     (ibProdutosEquivalentes.FieldByName('VALORVENDAB') as TFloatField).DisplayFormat := ',0.00';
     (ibProdutosEquivalentes.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat := ',0.00';
     (ibProdutosEquivalentes.FieldByName('VALORVENDAD') as TFloatField).DisplayFormat := ',0.00';

        if ibProdutosEquivalentes.RecordCount > 0 Then begin

          if frmProd_MPrima.pcCadProdutos.ActivePage.TabIndex = 3 Then begin

            frmProd_MPrima.lbl_edtIDProdEquivalente.Text   := IntToStr(ibProdutosEquivalentes.FieldByName('IDPROD').AsInteger);
            frmProd_MPrima.lbl_edtNomeProdEquivalente.Text := ibProdutosEquivalentes.FieldByName('NOME').AsString;

          end;//if   

        end;//if recordcount 

          Commit(ibProdEquivalente);
          ibProdEquivalente.Close;
          ibProdEquivalente.SQL.Clear;
          ibProdEquivalente.SQL.Add('SELECT TBLPRODEQUIVALENTE.*,CADPRODUTOS.VALORVENDAA,'
          + 'TBLENTRADAESTOQUEPROD.QUANTIDADE FROM TBLPRODEQUIVALENTE '
          + 'INNER JOIN CADPRODUTOS ON TBLPRODEQUIVALENTE.IDPROD=CADPRODUTOS.IDPROD '
          + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON TBLPRODEQUIVALENTE.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD WHERE IDPRODDETALHEE=''' + frmProd_MPrima.lbl_edtCodigo.Text + '''');
          ibProdEquivalente.Open;

          (ibProdEquivalente.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

        frmBuscaProdutos.ibeaSairClick(Sender);

      end;//with

    end;//if }

////////////////////////////////////////////////////////////////////////////////

  end;{with}


end;

procedure TfrmBuscaProdutos.lbl_edtCodBarrasAdChange(Sender: TObject);

var

CodBarraConsulta : String;

begin

  with dmModule do begin

    if lbl_edtCodBarrasAd.Text <> '' Then begin

      CodBarraConsulta := lbl_edtCodBarrasAd.Text;

      ibProdutosEquivalentes.Close;
      ibProdutosEquivalentes.SQL.Clear;
      ibProdutosEquivalentes.SQL.Add('SELECT CADPRODUTOS.CODBARRAS,CADPRODUTOS.IDPROD,CADPRODUTOS.NCM,CADPRODUTOS.LOCALIZACAOPROD,'
      + 'CADPRODUTOS.VALORCUSTO,CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORVENDAB,CADPRODUTOS.NOME,CADPRODUTOS.FABRICANTE,'
      + 'CADPRODUTOS.VALORVENDAC,CADPRODUTOS.VALORVENDAD,CADPRODUTOS.REF,CADPRODUTOS.FORNECEDOR FROM CADPRODUTOS WHERE CADPRODUTOS.CODBARRAS=''' + CodBarraConsulta + '''');//.*,TBLCADASTRO.NOME FROM CADPRODUTOS '
     // + 'LEFT OUTER JOIN TBLCADASTRO ON CADPRODUTOS.FORNECEDOR=TBLCADASTRO.IDCAD WHERE CADPRODUTOS.CODBARRAS=''' + CodBarraConsulta + '''');
      ibProdutosEquivalentes.Open;
      (ibProdutosEquivalentes.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutosEquivalentes.FieldByName('VALORVENDAB') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutosEquivalentes.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

      if ibProdutosEquivalentes.RecordCount > 0 Then begin

        lbl_edtNome.Text := ibProdutosEquivalentes.FieldByName('NOME').AsString;
        lbl_edtIDProd.Text := IntToStr(ibProdutosEquivalentes.FieldByName('IDPROD').AsInteger);

      end;//if recordcount

    end;//if

    TrimAppMemorySize;
    
  end;//with
  
end;

procedure TfrmBuscaProdutos.lbl_edtCodBarrasAdKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key = #13 Then begin

    lbl_edtCodInterno.SetFocus;

  end;;//if
  
end;

procedure TfrmBuscaProdutos.lbl_edtCodInternoKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key = #13 Then begin

    lbl_edtNome.SetFocus;

  end;
  
end;

procedure TfrmBuscaProdutos.lbl_edtNomeChange(Sender: TObject);
begin

  with dmModule do begin


    if (ckBuscaLetra.Checked)Then begin

    Commit(ibProdutosEquivalentes);
    ibProdutosEquivalentes.Close;
    ibProdutosEquivalentes.SQL.Clear;
    ibProdutosEquivalentes.SQL.Add('SELECT CADPRODUTOS.CODBARRAS,CADPRODUTOS.IDPROD,CADPRODUTOS.NCM,CADPRODUTOS.LOCALIZACAOPROD,'
      + 'CADPRODUTOS.VALORCUSTO,CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORVENDAB,CADPRODUTOS.NOME,'
      + 'CADPRODUTOS.VALORVENDAC,CADPRODUTOS.VALORVENDAD,CADPRODUTOS.REF,CADPRODUTOS.FORNECEDOR FROM CADPRODUTOS WHERE CADPRODUTOS.NOME LIKE '+''''+lbl_edtNome.text+'%'+''' ORDER BY NOME');
 //   + 'TBLENTRADAESTOQUEPROD.QUANTIDADE As TotalEstoque FROM CADPRODUTOS '//TBLCADASTRO.NOME  '
   // + 'INNER JOIN TBLCADASTRO ON CADPRODUTOS.FORNECEDOR=TBLCADASTRO.IDCAD '
  //  + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD '
  //  + 'WHERE CADPRODUTOS.NOME LIKE '+''''+lbl_edtNome.text+'%'+'''');
    ibProdutosEquivalentes.Open;          // '+''''+'%'+lbl_edtNome.text+'%'+'''
    (ibProdutosEquivalentes.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutosEquivalentes.FieldByName('VALORVENDAB') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutosEquivalentes.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutosEquivalentes.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
  //  (ibTempProdNome.FieldByName('TotalEstoque') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

    lbl_edtCodInterno.Text  := '';
    lbl_edtCodBarrasAd.Text := '';

    end;//if ckbuscaletra

    if (ckBuscaNome.Checked)Then begin

    Commit(ibProdutosEquivalentes);
    ibProdutosEquivalentes.Close;
    ibProdutosEquivalentes.SQL.Clear;
    ibProdutosEquivalentes.SQL.Add('SELECT CADPRODUTOS.CODBARRAS,CADPRODUTOS.IDPROD,CADPRODUTOS.NCM,CADPRODUTOS.LOCALIZACAOPROD,'
      + 'CADPRODUTOS.VALORCUSTO,CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORVENDAB,CADPRODUTOS.NOME,'
      + 'CADPRODUTOS.VALORVENDAC,CADPRODUTOS.VALORVENDAD,CADPRODUTOS.REF,CADPRODUTOS.FORNECEDOR FROM CADPRODUTOS WHERE CADPRODUTOS.NOME LIKE '+''''+'%'+lbl_edtNome.text+'%'+''' ORDER BY NOME');
 //   + 'TBLENTRADAESTOQUEPROD.QUANTIDADE As TotalEstoque FROM CADPRODUTOS '//TBLCADASTRO.NOME  '
   // + 'INNER JOIN TBLCADASTRO ON CADPRODUTOS.FORNECEDOR=TBLCADASTRO.IDCAD '
  //  + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD '
  //  + 'WHERE CADPRODUTOS.NOME LIKE '+''''+lbl_edtNome.text+'%'+'''');
    ibProdutosEquivalentes.Open;          // '+''''+'%'+lbl_edtNome.text+'%'+'''
    (ibProdutosEquivalentes.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutosEquivalentes.FieldByName('VALORVENDAB') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutosEquivalentes.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutosEquivalentes.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
  //  (ibTempProdNome.FieldByName('TotalEstoque') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

    lbl_edtCodInterno.Text  := '';
    lbl_edtCodBarrasAd.Text := '';

    end;//if ckbuscanome

    TrimAppMemorySize;
    
  end;{with}
  
end;

procedure TfrmBuscaProdutos.lbl_edtNomeKeyPress(Sender: TObject;
  var Key: Char);
begin

  if (lbl_edtNome.Text <> '') Then begin

    if key = #13 Then begin

    ibeaIncluirClick(Sender);

    end;//if

  end;//if
  
end;

procedure TfrmBuscaProdutos.cboFornecedoresClick(Sender: TObject);
begin

  with dmModule do begin

    if cboFornecedores.ItemIndex >-1 Then begin

      IDClassSelectFornecedor := TClasseCombo(cboFornecedores.Items.Objects[cboFornecedores.ItemIndex]);

    end;//if

    Commit(ibProdutosEquivalentes);
    ibProdutosEquivalentes.Close;
    ibProdutosEquivalentes.SQL.Clear;
    ibProdutosEquivalentes.SQL.Add('SELECT CADPRODUTOS.*,TBLCADASTRO.NOME FROM CADPRODUTOS '
    + 'LEFT OUTER JOIN TBLCADASTRO ON CADPRODUTOS.FORNECEDOR=TBLCADASTRO.IDCAD WHERE CADPRODUTOS.FORNECEDOR='''+ IntToStr(IDClassSelectFornecedor.ID)+''' ORDER BY CADPRODUTOS.NOME');
    ibProdutosEquivalentes.Open;
    (ibProdutosEquivalentes.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutosEquivalentes.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

  end;//with

end;

procedure TfrmBuscaProdutos.lbl_edtCodInternoExit(Sender: TObject);

var

Ref : String;

begin

  with dmModule do begin

    if lbl_edtCodInterno.Text <> '' Then begin

      Ref :=lbl_edtCodInterno.Text;

      ibProdutosEquivalentes.Close;
      ibProdutosEquivalentes.SQL.Clear;
      ibProdutosEquivalentes.SQL.Add('SELECT CADPRODUTOS.CODBARRAS,CADPRODUTOS.IDPROD,CADPRODUTOS.NCM,CADPRODUTOS.LOCALIZACAOPROD,'
      + 'CADPRODUTOS.VALORCUSTO,CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORVENDAB,CADPRODUTOS.NOME,CADPRODUTOS.FABRICANTE,'
      + 'CADPRODUTOS.VALORVENDAC,CADPRODUTOS.VALORVENDAD,CADPRODUTOS.REF,CADPRODUTOS.FORNECEDOR FROM CADPRODUTOS WHERE CADPRODUTOS.REF=''' + Ref + '''');//.*,TBLCADASTRO.NOME FROM CADPRODUTOS '
    //  + 'LEFT OUTER JOIN TBLCADASTRO ON CADPRODUTOS.FORNECEDOR=TBLCADASTRO.IDCAD WHERE CADPRODUTOS.REF=''' + Ref + '''');
      ibProdutosEquivalentes.Open;
      (ibProdutosEquivalentes.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutosEquivalentes.FieldByName('VALORVENDAB') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutosEquivalentes.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

      if ibProdutosEquivalentes.RecordCount > 0 Then begin

        lbl_edtNome.Text := ibProdutosEquivalentes.FieldByName('NOME').AsString;
        lbl_edtIDProd.Text := IntToStr(ibProdutosEquivalentes.FieldByName('IDPROD').AsInteger);
        
      end;//if recordcount

    end;//if

    TrimAppMemorySize;
    
  end;//with


end;

procedure TfrmBuscaProdutos.ckPrecobCheck(Sender: TObject);
begin

  if ckPrecob.Checked Then begin

    ckPrecoc.Checked := False;

  end;//if

end;

procedure TfrmBuscaProdutos.ckPrecocCheck(Sender: TObject);
begin

  if ckPrecoc.Checked Then begin

    ckPrecob.Checked := False;

  end;//if

end;

procedure TfrmBuscaProdutos.dbgProdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//dbgProd.SetFocus;

{  with dmModule do begin

      Commit(ibTempProdNome);
      ibTempProdNome.Close;
      ibTempProdNome.SQL.Clear;
      ibTempProdNome.SQL.Add('SELECT CADPRODUTOS.*,'
      + 'TBLENTRADAESTOQUEPROD.QUANTIDADE As TotalEstoque FROM CADPRODUTOS '
      + 'INNER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD');// WHERE CADPRODUTOS.IDPROD=''' + IntToStr(IDProdConsulta) + '''');
      ibTempProdNome.Open;
      (ibTempProdNome.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibTempProdNome.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

      if ibTempProdNome.RecordCount > 0 Then begin

        lbl_edtNome.Text       := ibTempProdNome.FieldByName('NOME').AsString;
        lbl_edtProduto.Text    := ibTempProdNome.FieldByName('NOME').AsString;
        lbl_edtPrecoVenda.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProdNome.FieldByName('VALORVENDAA').AsFloat);//CRIA UMA MASCARA PARA O CAMPO
       { lbl_edtQtdeEstoque.Text := (FormatFloat(CasasDecimais('Produtos'),StrToFloat(ibTempProdNome.FieldByName('TotalEstoque').AsString)));
        lbl_edtFabricanteProd.Text := ibTempProdNome.FieldByName('FABRICANTE').AsString;
        lbl_edtCodInterno.Text := ibTempProdNome.FieldByName('REF').AsString;   //:= IntToStr(ibTempProdNome.FieldByName('IDPROD').AsInteger);
        lbl_edtIDProd.Text := IntToStr(ibTempProdNome.FieldByName('IDPROD').AsInteger);

      end;//if label codinterno



  //lbl_edtnome.SetFocus;

  end;//with   }

end;

procedure TfrmBuscaProdutos.dbgProdKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//dbgProd.SetFocus;

{  with dmModule do begin

      Commit(ibTempProdNome);
      ibTempProdNome.Close;
      ibTempProdNome.SQL.Clear;
      ibTempProdNome.SQL.Add('SELECT CADPRODUTOS.*,'
      + 'TBLENTRADAESTOQUEPROD.QUANTIDADE As TotalEstoque FROM CADPRODUTOS '
      + 'INNER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD');// WHERE CADPRODUTOS.IDPROD=''' + IntToStr(IDProdConsulta) + '''');
      ibTempProdNome.Open;
      (ibTempProdNome.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibTempProdNome.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

      if ibTempProdNome.RecordCount > 0 Then begin

        lbl_edtNome.Text       := ibTempProdNome.FieldByName('NOME').AsString;
        lbl_edtProduto.Text    := ibTempProdNome.FieldByName('NOME').AsString;
        lbl_edtPrecoVenda.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProdNome.FieldByName('VALORVENDAA').AsFloat);//CRIA UMA MASCARA PARA O CAMPO
       { lbl_edtQtdeEstoque.Text := (FormatFloat(CasasDecimais('Produtos'),StrToFloat(ibTempProdNome.FieldByName('TotalEstoque').AsString)));
        lbl_edtFabricanteProd.Text := ibTempProdNome.FieldByName('FABRICANTE').AsString;
        lbl_edtCodInterno.Text := ibTempProdNome.FieldByName('REF').AsString;   //:= IntToStr(ibTempProdNome.FieldByName('IDPROD').AsInteger);
        lbl_edtIDProd.Text := IntToStr(ibTempProdNome.FieldByName('IDPROD').AsInteger);

      end;//if label codinterno



  //lbl_edtnome.SetFocus;

  end;//with   }

end;

procedure TfrmBuscaProdutos.dbgProdKeyPress(Sender: TObject;
  var Key: Char);
begin

//dbgProd.SetFocus;

  with dmModule do begin

 IDProdConsulta := ibProdutosEquivalentes.FieldByName('IDPROD').AsInteger;

    if key=#13 Then begin

        Commit(ibProdutosEquivalentes);
        ibProdutosEquivalentes.Close;
        ibProdutosEquivalentes.SQL.Clear;
        ibProdutosEquivalentes.SQL.Add('SELECT CADPRODUTOS.CODBARRAS,CADPRODUTOS.IDPROD,CADPRODUTOS.NCM,CADPRODUTOS.LOCALIZACAOPROD,'
      + 'CADPRODUTOS.VALORCUSTO,CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORVENDAB,CADPRODUTOS.NOME,CADPRODUTOS.FABRICANTE,'
      + 'CADPRODUTOS.VALORVENDAC,CADPRODUTOS.VALORVENDAD,CADPRODUTOS.REF,CADPRODUTOS.FORNECEDOR FROM CADPRODUTOS WHERE CADPRODUTOS.IDPROD=''' + IntToStr(IDProdConsulta) + '''');
    //   + 'TBLENTRADAESTOQUEPROD.QUANTIDADE As TotalEstoque FROM CADPRODUTOS '
    //    + 'INNER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD WHERE CADPRODUTOS.IDPROD=''' + IntToStr(IDProdConsulta) + '''');
        ibProdutosEquivalentes.Open;
        (ibProdutosEquivalentes.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
        (ibProdutosEquivalentes.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

        if ibProdutosEquivalentes.RecordCount > 0 Then begin

          lbl_edtNome.Text       := ibProdutosEquivalentes.FieldByName('NOME').AsString;
          lbl_edtProduto.Text    := lbl_edtNome.Text;//ibProdutosEquivalentes.FieldByName('NOME').AsString;
          lbl_edtPrecoVenda.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutosEquivalentes.FieldByName('VALORVENDAA').AsFloat);{ibTempProd.FieldByName('VALORVENDAA').AsString;}//(ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
        //  lbl_edtQtdeEstoque.Text := (FormatFloat(CasasDecimais('Produtos'),StrToFloat(ibTempProdNome.FieldByName('TotalEstoque').AsString)));
       //   lbl_edtFabricanteProd.Text := ibTempProdNome.FieldByName('FABRICANTE').AsString;
          lbl_edtCodInterno.Text := ibProdutosEquivalentes.FieldByName('REF').AsString;   //:= IntToStr(ibTempProdNome.FieldByName('IDPROD').AsInteger);
          lbl_edtIDProd.Text := IntToStr(ibProdutosEquivalentes.FieldByName('IDPROD').AsInteger);
          lbl_edtCodBarrasAd.Text   := ibProdutosEquivalentes.FieldByName('CODBARRAS').AsString;
          lbl_edtNCM.Text   := ibProdutosEquivalentes.FieldByName('NCM').AsString;
          
        end;//if label codinterno

      ibEntrProdEstoque.Close;
      ibEntrProdEstoque.SQL.Clear;
      ibEntrProdEstoque.SQL.Add('SELECT IDPROD,QUANTIDADE FROM TBLENTRADAESTOQUEPROD WHERE IDPROD=''' + IntToStr(IDProdConsulta) + '''');
      ibEntrProdEstoque.Open;

      if ibEntrProdEstoque.RecordCount > 0 Then begin
      lbl_edtQtdeEstoque.Text := FormatFloat(CasasDecimais('Produtos'),ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat);
      end;
              
    lbl_edtNome.SetFocus;

    end;//if ky#13

    TrimAppMemorySize;
    
  end;//with

end;

procedure TfrmBuscaProdutos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  case key of

    VK_F2 :begin

      frmBuscaProdutos.Close;

    end;//begin

    VK_F3 :begin

      dbgProd.SetFocus;

    end;//begin

    VK_F4 :begin

      lbl_edtCodBarrasAd.SetFocus;

    end;//begin

    VK_F5 :begin

      ckBuscaLetra.Checked := True;
      ckBuscaNome.Checked := False;
      lbl_edtNome.SetFocus;

    end;//begin

    VK_F6 :begin

      ckBuscaNome.Checked := True;
      ckBuscaLetra.Checked := False;
      lbl_edtNome.SetFocus;
      
    end;//begin

  end;//case

end;

procedure TfrmBuscaProdutos.lbl_edtValorChange(Sender: TObject);

var

Valor : Real;
ValorProduto : String;

begin

  with dmModule do begin

    if lbl_edtValor.Text <> '' Then begin

      Valor := StrToFloat(StringReplace(lbl_edtValor.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
      ValorProduto := StringReplace(FloatToStr(Valor),FormatSettings.DecimalSeparator,'.',[rfReplaceAll]);

      ibProdutosEquivalentes.Close;
      ibProdutosEquivalentes.SQL.Clear;
      ibProdutosEquivalentes.SQL.Add('SELECT CADPRODUTOS.CODBARRAS,CADPRODUTOS.IDPROD,CADPRODUTOS.NCM,CADPRODUTOS.LOCALIZACAOPROD,'
      + 'CADPRODUTOS.VALORCUSTO,CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORVENDAB,CADPRODUTOS.NOME,CADPRODUTOS.FABRICANTE,'
      + 'CADPRODUTOS.VALORVENDAC,CADPRODUTOS.VALORVENDAD,CADPRODUTOS.REF,CADPRODUTOS.FORNECEDOR FROM CADPRODUTOS WHERE CADPRODUTOS.VALORVENDAA ='''+ ValorProduto +'''');
      ibProdutosEquivalentes.Open;
      (ibProdutosEquivalentes.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutosEquivalentes.FieldByName('VALORVENDAB') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibProdutosEquivalentes.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

     { if ibTempProdNome.RecordCount > 0 Then begin

        lbl_edtNome.Text := ibTempProdNome.FieldByName('NOME').AsString;
        lbl_edtIDProd.Text := IntToStr(ibTempProdNome.FieldByName('IDPROD').AsInteger);

      end;//if recordcount }

    end;//if

    TrimAppMemorySize;
    
  end;//with


end;

procedure TfrmBuscaProdutos.lbl_edtValorKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtCodInterno.SetFocus

  end;//if
  
end;

procedure TfrmBuscaProdutos.ckBuscaLetraCheck(Sender: TObject);
begin

  if ckBuscaLetra.Checked Then begin

    ckBuscaNome.Checked := False;
    lbl_edtNome.SetFocus;
    
  end;

end;

procedure TfrmBuscaProdutos.ckBuscaNomeCheck(Sender: TObject);
begin

  if ckBuscaNome.Checked Then begin

    ckBuscaLetra.Checked := False;
    lbl_edtNome.SetFocus;

  end;

end;

end.
