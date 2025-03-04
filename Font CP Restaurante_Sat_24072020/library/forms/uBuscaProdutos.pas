unit uBuscaProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, 
  DB, IBQuery, classComboBox, jpeg, RxGIF, axCtrls, BmsXPButton,
  BmsXPCheckBox;

type
  TfrmBuscaProdutos = class(TForm)
    sb_ord_nome: TSpeedButton;
    dbgProd: TDBGrid;
    Bevel1: TBevel;
    sbLimpar: TSpeedButton;
    ibeaSair: TBmsXPButton;
    ibeaIncluir: TBmsXPButton;
    Image2: TImage;
    lbl_Info: TLabel;
    lbl_Forn: TLabel;
    ckPrecob: TBmsXPCheckBox;
    ckPrecoc: TBmsXPCheckBox;
    ckPrecoD: TBmsXPCheckBox;
    ckBuscaLetra: TBmsXPCheckBox;
    ckBuscaNome: TBmsXPCheckBox;
    lbl_F2: TLabel;
    cboFornecedores: TComboBox;
    lbl_edtIDProd: TLabeledEdit;
    lbl_edtCodBarrasAd: TLabeledEdit;
    lbl_edtCodInterno: TLabeledEdit;
    lbl_edtNome: TLabeledEdit;
    lbl_edtProduto: TLabeledEdit;
    lbl_edtQtdeEstoque: TLabeledEdit;
    lbl_edtPrecoVenda: TLabeledEdit;
    lbl_edtFabricanteProd: TLabeledEdit;
    procedure Commit(IBQueryExec : TIBQuery);
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
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ckBuscaLetraCheck(Sender: TObject);
    procedure ckBuscaNomeCheck(Sender: TObject);
    procedure dbgProdKeyPress(Sender: TObject; var Key: Char);
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

uses untdmModule, funcPosto, untCliente, untModuloRestaurante;

{$R *.dfm}

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

var
ClassForn    : TClasseCombo;
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
  ckPrecob.Checked := False;
  ckPrecoc.Checked := False;
  lbl_edtNome.SetFocus;
  ckBuscaNome.Checked := True;
  
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


    Commit(ibTempProdNome);
    ibTempProdNome.Close;
    ibTempProdNome.SQL.Clear;
    ibTempProdNome.SQL.Add('SELECT CADPRODUTOS.*,TBLCADASTRO.NOME FROM CADPRODUTOS '
    + 'LEFT OUTER JOIN TBLCADASTRO ON CADPRODUTOS.FORNECEDOR=TBLCADASTRO.IDCAD ORDER BY CADPRODUTOS.NOME');
    ibTempProdNome.Open;
    (ibTempProdNome.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibTempProdNome.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

    ExibeDados := False;

    with dbgProd do begin

      if MontaColunas Then begin

      DataSource := dtsTempProdNome;

        Columns.Insert(0);
        Columns.Insert(1);
        Columns.Insert(2);
        Columns.Insert(3);

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

        MontaColunas := False;

      end;{if}

    end;{with}

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

  with dmModule do begin

    Commit(ibTempProdNome);
    ibTempProdNome.Close;
    ibTempProdNome.SQL.Clear;
    ibTempProdNome.SQL.Add('SELECT CADPRODUTOS.*,TBLCADASTRO.NOME FROM CADPRODUTOS '
    + 'LEFT OUTER JOIN TBLCADASTRO ON CADPRODUTOS.FORNECEDOR=TBLCADASTRO.IDCAD ORDER BY CADPRODUTOS.CODBARRAS ASC');
    ibTempProdNome.Open;
    (ibTempProdNome.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibTempProdNome.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO


    {Commit(ibTempProdNome);
    ibTempProdNome.Close;
    ibTempProdNome.SQL.Clear;
    ibTempProdNome.SQL.Add('SELECT CADPRODUTOS.*,'
    + 'TBLENTRADAESTOQUEPROD.QUANTIDADE As TotalEstoque,TBLCADASTRO.NOME FROM CADPRODUTOS '
    + 'LEFT OUTER JOIN TBLCADASTRO ON CADPRODUTOS.FORNECEDOR=TBLCADASTRO.IDCAD '
    + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD ORDER BY CADPRODUTOS.NOME');
    ibTempProdNome.Open;}
    (ibTempProdNome.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibTempProdNome.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
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

  IDProdConsulta := ibTempProdNome.FieldByName('IDPROD').AsInteger;


    Commit(ibTempProdNome);
    ibTempProdNome.Close;                                                       //  
    ibTempProdNome.SQL.Clear;
    ibTempProdNome.SQL.Add('SELECT CADPRODUTOS.*,'
    + 'TBLCADASTRO.NOME  As Fornecedor FROM CADPRODUTOS '
    + 'LEFT OUTER JOIN TBLCADASTRO ON CADPRODUTOS.FORNECEDOR=TBLCADASTRO.IDCAD WHERE CADPRODUTOS.IDPROD=''' + IntToStr(IDProdConsulta) + '''');
    ibTempProdNome.Open;
    (ibTempProdNome.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibTempProdNome.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

    if ibTempProdNome.RecordCount > 0 Then begin

      lbl_edtNome.Text       := ibTempProdNome.FieldByName('NOME').AsString;
      lbl_edtProduto.Text    := ibTempProdNome.FieldByName('NOME').AsString;
      lbl_edtPrecoVenda.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProdNome.FieldByName('VALORVENDAA').AsFloat);{ibTempProd.FieldByName('VALORVENDAA').AsString;}//(ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      lbl_edtFabricanteProd.Text := ibTempProdNome.FieldByName('FABRICANTE').AsString;

      lbl_edtCodInterno.Text := ibTempProdNome.FieldByName('REF').AsString;
      lbl_edtIDProd.Text := IntToStr(IDProdConsulta);


    {  Commit(ibUser);
      ibUser.Close;
      ibUser.SQL.Clear;
      ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + IntToStr(intCodUsuario) + '''');
      ibUser.Open;

      if ibUser.FieldByName('CADESTOQUE').AsString = 'Liberado' Then begin  }

      ibEntrProdEstoque.Close;
      ibEntrProdEstoque.SQL.Clear;
      ibEntrProdEstoque.SQL.Add('SELECT IDPROD,QUANTIDADE FROM TBLENTRADAESTOQUEPROD WHERE IDPROD=''' + IntToStr(IDProd) + '''');
      ibEntrProdEstoque.Open;

      if ibEntrProdEstoque.RecordCount > 0 Then begin
      lbl_edtQtdeEstoque.Text := FormatFloat(CasasDecimais('Produtos'),ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat);
      end;

     /// end;

    end;//if label codbarras

 //  if lbl_edtCodInterno.Text <> '' Then begin

 //     RefConsulta := lbl_edtCodInterno.Text;

    {  Commit(ibTempProdNome);
      ibTempProdNome.Close;
      ibTempProdNome.SQL.Clear;
      ibTempProdNome.SQL.Add('SELECT CADPRODUTOS.*,'
      + 'TBLENTRADAESTOQUEPROD.QUANTIDADE As TotalEstoque,TBLCADASTRO.NOME FROM CADPRODUTOS '
      + 'LEFT OUTER JOIN TBLCADASTRO ON CADPRODUTOS.FORNECEDOR=TBLCADASTRO.IDCAD '
      + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD WHERE CADPRODUTOS.IDPROD=''' + IntToStr(IDProdConsulta) + '''');
      ibTempProdNome.Open;
      (ibTempProdNome.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibTempProdNome.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); }//CRIA UMA MASCARA PARA O CAMPO

     { if ibTempProdNome.RecordCount > 0 Then begin

        lbl_edtNome.Text       := ibTempProdNome.FieldByName('NOME').AsString;
        lbl_edtProduto.Text    := ibTempProdNome.FieldByName('NOME').AsString;
        lbl_edtPrecoVenda.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProdNome.FieldByName('VALORVENDAA').AsFloat);{ibTempProd.FieldByName('VALORVENDAA').AsString;}//(ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
       /// lbl_edtQtdeEstoque.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProdNome.FieldByName('QUANTIDADE').AsFloat);
      /// lbl_edtFabricanteProd.Text := ibTempProdNome.FieldByName('FABRICANTE').AsString;
    ///    lbl_edtCodInterno.Text := ibTempProdNome.FieldByName('REF').AsString;   //:= IntToStr(ibTempProdNome.FieldByName('IDPROD').AsInteger);
    ///   lbl_edtIDProd.Text := IntToStr(ibTempProdNome.FieldByName('IDPROD').AsInteger);

    ///  end;//if label codinterno }

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
cboFornecedores.ClearSelection;
lbl_edtIDProd.Text := '';

  with dmModule do begin

    Commit(ibTempProdNome);
    ibTempProdNome.Close;
    ibTempProdNome.SQL.Clear;
    ibTempProdNome.SQL.Add('SELECT CADPRODUTOS.*,TBLCADASTRO.NOME FROM CADPRODUTOS '
    + 'LEFT OUTER JOIN TBLCADASTRO ON CADPRODUTOS.FORNECEDOR=TBLCADASTRO.IDCAD ORDER BY CADPRODUTOS.NOME');
    ibTempProdNome.Open;
    (ibTempProdNome.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibTempProdNome.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO


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

i : Integer;
//OleGraphic: TOleGraphic;
//fs: TFileStream;

begin

  with dmModule do begin


   { if frmVendasLoja.Showing Then begin

      with frmVendasLoja do begin

        lbl_NomeProd.Caption := lbl_edtNome.Text;

        if ibTempProdNome.RecordCount > 0 Then begin

          frmVendasLoja.lbl_edtCodBarras.Text := lbl_edtCodBarrasAd.Text;

          frmVendasLoja.lbl_edtCodProd.Text := lbl_edtCodInterno.Text;


          if (ckPrecob.Checked = False)and(ckPrecoc.Checked = False) and(ckPrecod.Checked = False) Then begin

          frmVendasLoja.lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProdNome.FieldByName('VALORVENDAA').AsFloat);
          frmVendasLoja.lbl_edtVlrTotal.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProdNome.FieldByName('VALORVENDAA').AsFloat);

          end;

          if ckPrecob.Checked  Then begin

          frmVendasLoja.lbl_TipoPreco.Caption := 'Pre�o de Venda B';
          frmVendasLoja.lbl_edtVlrUnit.Text   := FormatFloat(CasasDecimais('Produtos'),ibTempProdNome.FieldByName('VALORVENDAB').AsFloat);
          frmVendasLoja.lbl_edtVlrTotal.Text  := FormatFloat(CasasDecimais('Produtos'),ibTempProdNome.FieldByName('VALORVENDAB').AsFloat);

          end;

          if ckPrecoc.Checked Then begin

          frmVendasLoja.lbl_TipoPreco.Caption  := 'Pre�o de Venda C';
          frmVendasLoja.lbl_edtVlrUnit.Text    := FormatFloat(CasasDecimais('Produtos'),ibTempProdNome.FieldByName('VALORVENDAC').AsFloat);
          frmVendasLoja.lbl_edtVlrTotal.Text   := FormatFloat(CasasDecimais('Produtos'),ibTempProdNome.FieldByName('VALORVENDAC').AsFloat);

          end;

          if ckPrecod.Checked Then begin

          frmVendasLoja.lbl_TipoPreco.Caption  := 'Pre�o de Venda D';
          frmVendasLoja.lbl_edtVlrUnit.Text    := FormatFloat(CasasDecimais('Produtos'),ibTempProdNome.FieldByName('VALORVENDAD').AsFloat);
          frmVendasLoja.lbl_edtVlrTotal.Text   := FormatFloat(CasasDecimais('Produtos'),ibTempProdNome.FieldByName('VALORVENDAD').AsFloat);

          end;

          frmVendasLoja.lbl_edtVlrTotal.SetFocus;

        end;

         frmVendasLoja.lbl_edtIDProdCX.Text := lbl_edtIDProd.Text;

         ibeaSairClick(Sender);

      end;

    end;//if frmvendasloja }

  { if frmPedidodeVenda.Showing Then begin

      with frmPedidodeVenda do begin


      Commit(ibProdutos);
      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT CADPRODUTOS.*,TBLCADASTRO.NOME As NomeFornecedor,'
      + 'TBLCADASTRO.IDCAD,CONDICOESPAGAMENTO.IDCONDPAGTO,CONDICOESPAGAMENTO.DESCRICAO FROM CADPRODUTOS '
      + 'LEFT OUTER JOIN TBLCADASTRO ON CADPRODUTOS.FORNECEDOR=TBLCADASTRO.IDCAD '
      + 'LEFT OUTER JOIN CONDICOESPAGAMENTO ON TBLCADASTRO.IDCONDPAGTO=CONDICOESPAGAMENTO.IDCONDPAGTO '
      + 'WHERE CADPRODUTOS.IDPROD=''' + lbl_edtIDProd.Text + ''' ORDER BY CADPRODUTOS.NOME');
      ibProdutos.Open;

     (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := ',0.00';
     (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := ',0.00';
     (ibProdutos.FieldByName('VALORVENDAB') as TFloatField).DisplayFormat := ',0.00';
     (ibProdutos.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat := ',0.00';
     (ibProdutos.FieldByName('VALORVENDAD') as TFloatField).DisplayFormat := ',0.00';

     if frmPedidodeVenda.pcPedidoVenda.ActivePage.TabIndex = 0 Then begin

        for i:=0 to frmPedidodeVenda.cboProduto.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
          if TClasseCombo( frmPedidodeVenda.cboProduto.Items.Objects[i]).ID = ibProdutos.FieldByName('IDPROD').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
            cboProduto.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
            Break;
          end else begin
            frmPedidodeVenda.cboProduto.ClearSelection;//LIMPA A SELECAO.}
        //// end;{if}
     ////   end;{for}


      { for i:=0 to frmPedidodeVenda.cboCondPagto.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
          if TClasseCombo( frmPedidodeVenda.cboCondPagto.Items.Objects[i]).ID = ibProdutos.FieldByName('IDCONDPAGTO').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
            frmPedidodeVenda.cboCondPagto.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
            Break;
          end else begin
            frmPedidodeVenda.cboCondPagto.ClearSelection;//LIMPA A SELECAO. }
        ////  end;{if}
      ////  end;{for}

      {  for i:=0 to frmPedidodeVenda.cboFornecedores.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
          if TClasseCombo( frmPedidodeVenda.cboFornecedores.Items.Objects[i]).ID = ibProdutos.FieldByName('IDCAD').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
            frmPedidodeVenda.cboFornecedores.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
            Break;
          end else begin
            frmPedidodeVenda.cboFornecedores.ClearSelection;//LIMPA A SELECAO. }
        ////  end;{if}
       //// end;{for}

     {   frmPedidodeVenda.lbl_edtRef.Text := ibProdutos.FieldByName('REF').AsString;
        frmPedidodeVenda.lbl_edtQtde.Text  := '1';

        if ibProdutos.RecordCount > 0 Then begin

          frmPedidodeVenda.lbl_edtCodBarras.Text := lbl_edtCodBarrasAd.Text;

          if (frmPedidodeVenda.lbl_TipoPreco.Caption = '') or (frmPedidodeVenda.lbl_TipoPreco.Caption = 'Pre�o de Venda(A)') Then begin

            frmPedidodeVenda.lbl_edtVlrProd.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);

          end;

          if frmPedidodeVenda.lbl_TipoPreco.Caption = 'Pre�o de Venda(B)' Then begin

            frmPedidodeVenda.lbl_edtVlrProd.Text  := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAB').AsFloat);

          end;

          if frmPedidodeVenda.lbl_TipoPreco.Caption = 'Pre�o de Venda(C)' Then begin

            frmPedidodeVenda.lbl_edtVlrProd.Text  := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAC').AsFloat);

          end;

        end;//if recordcount

          lbl_edtQtde.SetFocus;

     end;//if pcpedidodevenda }

////////////////////////////////////////////////////////////////////////////////

     { if frmPedidodeVenda.pcPedidoVenda.ActivePage.TabIndex = 1 Then begin


        for i:=0 to frmPedidodeVenda.cboProdM.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
          if TClasseCombo( frmPedidodeVenda.cboProdM.Items.Objects[i]).ID = ibProdutos.FieldByName('IDPROD').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
            cboProdM.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
            Break;
          end else begin
            frmPedidodeVenda.cboProdM.ClearSelection;//LIMPA A SELECAO. }
      ////   end;{if}
      ////  end;{for}


      {  for i:=0 to frmPedidodeVenda.cboFornecedorManutP.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
          if TClasseCombo( frmPedidodeVenda.cboFornecedorManutP.Items.Objects[i]).ID = ibProdutos.FieldByName('IDCAD').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
            frmPedidodeVenda.cboFornecedorManutP.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
            Break;
          end else begin
            frmPedidodeVenda.cboFornecedorManutP.ClearSelection;//LIMPA A SELECAO. }
        ////  end;{if}
       //// end;{for}

      {  frmPedidodeVenda.lbl_edtVlrProdM.Text   := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);
        frmPedidodeVenda.lbl_edtQtdeProdM.Text  := '1';
        frmPedidodeVenda.lbl_edtTotalProdM.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);
        frmPedidodeVenda.lbl_edtCodProd.Text    := IntToSTr(ibProdutos.FieldByName('IDPROD').AsInteger);

       lbl_edtQtdeProdM.SetFocus;

       end;//if pcpedidodevenda

       frmBuscaProdutos.ibeaSairClick(Sender);

      end;

    end;//if frmpedvenda  }

////////////////////////////////////////////////////////////////////////////////

    if frmCliente.Showing Then begin

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

          frmCliente.lbl_edtIDProdCX.Text := lbl_edtIDProd.Text;

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

         /// frmCliente.lbl_edtCodProd.Text   := ibTempProd.FieldByName('CODBARRAS').AsString;

         { if( ibTempProd.FieldByName('CODBARRAS').AsString <> '')and( ibTempProd.FieldByName('REF').AsString = '') Then begin

            frmCliente.lbl_edtCodProd.Text := ibTempProd.FieldByName('CODBARRAS').AsString;

          end; }

          if( ibTempProd.FieldByName('CODBARRAS').AsString <> '')and( ibTempProd.FieldByName('REF').AsString <> '') Then begin

            frmCliente.lbl_edtCodProd.Text := ibTempProd.FieldByName('REF').AsString;

          end;

            for i:=0 to frmCliente.cboProdutos.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
              if TClasseCombo( frmCliente.cboProdutos.Items.Objects[i]).ID = ibTempProd.FieldByName('IDPROD').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
                cboProdutos.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
                Break;
              end else begin
                frmCliente.cboProdutos.ClearSelection;//LIMPA A SELECAO.
             end;{if}
            end;{for}

        end;//if recordcount

         lbl_edtObs.SetFocus;
         lbl_edtQtde.Text := '1';
         frmBuscaProdutos.ibeaSairClick(Sender);

      end;//with

    end;//if

////////////////////////////////////////////////////////////////////////////////

    if frmRestaurante.Showing Then begin

      with frmRestaurante do begin

      frmRestaurante.lbl_edtIDProduto.Text := lbl_edtIDProd.Text;

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

          frmRestaurante.lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProd.FieldByName('VALORVENDAA').AsFloat);


         /// frmRestaurante.lbl_edtCodProd.Text   := ibTempProd.FieldByName('CODBARRAS').AsString;
          frmRestaurante.lbl_edtCodBarras.Text := ibTempProd.FieldByName('CODBARRAS').AsString;
          frmRestaurante.lbl_edtRef.Text := ibTempProd.FieldByName('REF').AsString;
          frmRestaurante.lbl_NomeProd.Caption := lbl_edtNome.Text;
          {  for i:=0 to frmRestaurante.cboProdutos.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
              if TClasseCombo( frmRestaurante.cboProdutos.Items.Objects[i]).ID = ibTempProd.FieldByName('IDPROD').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
                cboProdutos.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
                Break;
              end else begin
                frmRestaurante.cboProdutos.ClearSelection;//LIMPA A SELECAO.
          ///   end;{if}
          ///  end;{for}

        end;//if recordcount

         lbl_edtQtde.SetFocus;
         lbl_edtQtde.Text := '1';
         frmBuscaProdutos.ibeaSairClick(Sender);

      end;//with

    end;//if

  end;{with}


end;

procedure TfrmBuscaProdutos.lbl_edtCodBarrasAdChange(Sender: TObject);

var

CodBarraConsulta : String;

begin

  with dmModule do begin

    if lbl_edtCodBarrasAd.Text <> '' Then begin

      CodBarraConsulta := lbl_edtCodBarrasAd.Text;

      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT CADPRODUTOS.*,TBLCADASTRO.NOME FROM CADPRODUTOS '
      + 'LEFT OUTER JOIN TBLCADASTRO ON CADPRODUTOS.FORNECEDOR=TBLCADASTRO.IDCAD WHERE CADPRODUTOS.CODBARRAS=''' + CodBarraConsulta + '''');
      ibProdutos.Open;

      if ibProdutos.RecordCount > 0 Then begin

        lbl_edtNome.Text := ibProdutos.FieldByName('NOME').AsString;
        lbl_edtIDProd.Text := IntToStr(ibProdutos.FieldByName('IDPROD').AsInteger);

      end;//if recordcount

    end;//if


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

    Commit(ibTempProdNome);
    ibTempProdNome.Close;
    ibTempProdNome.SQL.Clear;
    ibTempProdNome.SQL.Add('SELECT * FROM CADPRODUTOS WHERE CADPRODUTOS.NOME LIKE '+''''+lbl_edtNome.text+'%'+''' ORDER BY NOME');
 //   + 'TBLENTRADAESTOQUEPROD.QUANTIDADE As TotalEstoque FROM CADPRODUTOS '//TBLCADASTRO.NOME  '
   // + 'INNER JOIN TBLCADASTRO ON CADPRODUTOS.FORNECEDOR=TBLCADASTRO.IDCAD '
  //  + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD '
  //  + 'WHERE CADPRODUTOS.NOME LIKE '+''''+lbl_edtNome.text+'%'+'''');
    ibTempProdNome.Open;          // '+''''+'%'+lbl_edtNome.text+'%'+'''
    (ibTempProdNome.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibTempProdNome.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
  //  (ibTempProdNome.FieldByName('TotalEstoque') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

    lbl_edtCodInterno.Text  := '';
    lbl_edtCodBarrasAd.Text := '';

    end;//if ckbuscaletra

    if (ckBuscaNome.Checked)Then begin

    Commit(ibTempProdNome);
    ibTempProdNome.Close;
    ibTempProdNome.SQL.Clear;
    ibTempProdNome.SQL.Add('SELECT * FROM CADPRODUTOS WHERE CADPRODUTOS.NOME LIKE '+''''+'%'+lbl_edtNome.text+'%'+''' ORDER BY NOME');
 //   + 'TBLENTRADAESTOQUEPROD.QUANTIDADE As TotalEstoque FROM CADPRODUTOS '//TBLCADASTRO.NOME  '
   // + 'INNER JOIN TBLCADASTRO ON CADPRODUTOS.FORNECEDOR=TBLCADASTRO.IDCAD '
  //  + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD '
  //  + 'WHERE CADPRODUTOS.NOME LIKE '+''''+lbl_edtNome.text+'%'+'''');
    ibTempProdNome.Open;          // '+''''+'%'+lbl_edtNome.text+'%'+'''
    (ibTempProdNome.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibTempProdNome.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
  //  (ibTempProdNome.FieldByName('TotalEstoque') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

    lbl_edtCodInterno.Text  := '';
    lbl_edtCodBarrasAd.Text := '';

    end;//if ckbuscanome

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

    Commit(ibTempProdNome);
    ibTempProdNome.Close;
    ibTempProdNome.SQL.Clear;
    ibTempProdNome.SQL.Add('SELECT CADPRODUTOS.*,TBLCADASTRO.NOME FROM CADPRODUTOS '
    + 'LEFT OUTER JOIN TBLCADASTRO ON CADPRODUTOS.FORNECEDOR=TBLCADASTRO.IDCAD WHERE CADPRODUTOS.FORNECEDOR='''+ IntToStr(IDClassSelectFornecedor.ID)+''' ORDER BY CADPRODUTOS.NOME');
    ibTempProdNome.Open;
    (ibTempProdNome.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibTempProdNome.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

  end;//with

end;

procedure TfrmBuscaProdutos.lbl_edtCodInternoExit(Sender: TObject);

var

Ref : String;

begin

  with dmModule do begin

    if lbl_edtCodInterno.Text <> '' Then begin

      Ref :=lbl_edtCodInterno.Text;

      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT CADPRODUTOS.*,TBLCADASTRO.NOME FROM CADPRODUTOS '
      + 'LEFT OUTER JOIN TBLCADASTRO ON CADPRODUTOS.FORNECEDOR=TBLCADASTRO.IDCAD WHERE CADPRODUTOS.REF=''' + Ref + '''');
      ibProdutos.Open;

      if ibProdutos.RecordCount > 0 Then begin

        lbl_edtNome.Text := ibProdutos.FieldByName('NOME').AsString;
        lbl_edtIDProd.Text := IntToStr(ibProdutos.FieldByName('IDPROD').AsInteger);
        
      end;//if recordcount

    end;//if

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

procedure TfrmBuscaProdutos.dbgProdKeyPress(Sender: TObject;
  var Key: Char);
begin

  with dmModule do begin

  IDProd := ibTempProdNome.FieldByName('IDPROD').AsInteger;

   { if lbl_edtCodInterno.Text <> '' Then begin

      RefConsulta := lbl_edtCodInterno.Text;

      Commit(ibTempProdNome);
      ibTempProdNome.Close;
      ibTempProdNome.SQL.Clear;
      ibTempProdNome.SQL.Add('SELECT CADPRODUTOS.*,'
      + 'TBLENTRADAESTOQUEPROD.QUANTIDADE As TotalEstoque,TBLCADASTRO.NOME FROM CADPRODUTOS '
      + 'LEFT OUTER JOIN TBLCADASTRO ON CADPRODUTOS.FORNECEDOR=TBLCADASTRO.IDCAD '
      + 'LEFT OUTER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD WHERE CADPRODUTOS.REF=''' + RefConsulta + '''');
      ibTempProdNome.Open;
      (ibTempProdNome.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibTempProdNome.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

      if ibTempProdNome.RecordCount > 0 Then begin

        lbl_edtNome.Text       := ibTempProdNome.FieldByName('NOME').AsString;
        lbl_edtProduto.Text    := ibTempProdNome.FieldByName('NOME').AsString;
        lbl_edtPrecoVenda.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProdNome.FieldByName('VALORVENDAA').AsFloat);{ibTempProd.FieldByName('VALORVENDAA').AsString;//(ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
        lbl_edtQtdeEstoque.Text := ibTempProdNome.FieldByName('TotalEstoque').AsString;
        lbl_edtFabricanteProd.Text := ibTempProdNome.FieldByName('FABRICANTE').AsString;
        lbl_edtCodInterno.Text := ibTempProdNome.FieldByName('REF').AsString;   //:= IntToStr(ibTempProdNome.FieldByName('IDPROD').AsInteger);
        lbl_edtIDProd.Text := IntToStr(ibProdutos.FieldByName('IDPROD').AsInteger);

      end;//if label codinterno

    end else begin }

    Commit(ibTempProdNome);
    ibTempProdNome.Close;                                                   //   As TotalEstoque
    ibTempProdNome.SQL.Clear;
    ibTempProdNome.SQL.Add('SELECT CADPRODUTOS.*,'
    + 'TBLCADASTRO.NOME  As Fornecedor FROM CADPRODUTOS '
    + 'LEFT OUTER JOIN TBLCADASTRO ON CADPRODUTOS.FORNECEDOR=TBLCADASTRO.IDCAD WHERE CADPRODUTOS.IDPROD=''' + IntToStr(IDProd) + '''');
    ibTempProdNome.Open;
    (ibTempProdNome.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibTempProdNome.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

    if ibTempProdNome.RecordCount > 0 Then begin

      lbl_edtNome.Text       := ibTempProdNome.FieldByName('NOME').AsString;
      lbl_edtProduto.Text    := ibTempProdNome.FieldByName('NOME').AsString;
      lbl_edtPrecoVenda.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProdNome.FieldByName('VALORVENDAA').AsFloat);{ibTempProd.FieldByName('VALORVENDAA').AsString;}//(ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      lbl_edtFabricanteProd.Text := ibTempProdNome.FieldByName('FABRICANTE').AsString;

      lbl_edtCodInterno.Text := ibTempProdNome.FieldByName('REF').AsString;
      lbl_edtIDProd.Text := IntToStr(IDProd);

     { Commit(ibUser);
      ibUser.Close;
      ibUser.SQL.Clear;
      ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + IntToStr(intCodUsuario) + '''');
      ibUser.Open;

      if ibUser.FieldByName('CADESTOQUE').AsString = 'Liberado' Then begin  }

      ibEntrProdEstoque.Close;
      ibEntrProdEstoque.SQL.Clear;
      ibEntrProdEstoque.SQL.Add('SELECT IDPROD,QUANTIDADE FROM TBLENTRADAESTOQUEPROD WHERE IDPROD=''' + IntToStr(IDProd) + '''');
      ibEntrProdEstoque.Open;

      if ibEntrProdEstoque.RecordCount > 0 Then begin
      lbl_edtQtdeEstoque.Text := FormatFloat(CasasDecimais('Produtos'),ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat);
      end;

    ///  end;

    end;//if label codbarras



  //  end;//if codinterno

       if ibTempProdNome.FieldByName('CODBARRAS').AsString <> '' Then begin

       lbl_edtCodBarrasAd.Text   := ibTempProdNome.FieldByName('CODBARRAS').AsString;

       end;

       lbl_edtnome.SetFocus;
////////////////////////////////////////////////////////////////////////////////


{ IDProd := ibTempProdNome.FieldByName('IDPROD').AsInteger;

    if key=#13 Then begin

        Commit(ibTempProdNome);
        ibTempProdNome.Close;
        ibTempProdNome.SQL.Clear;
        ibTempProdNome.SQL.Add('SELECT CADPRODUTOS.*,'
        + 'TBLENTRADAESTOQUEPROD.QUANTIDADE As TotalEstoque FROM CADPRODUTOS '
        + 'INNER JOIN TBLENTRADAESTOQUEPROD ON CADPRODUTOS.IDPROD=TBLENTRADAESTOQUEPROD.IDPROD WHERE CADPRODUTOS.IDPROD=''' + IntToStr(IDProd) + '''');
        ibTempProdNome.Open;
        (ibTempProdNome.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
        (ibTempProdNome.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

        if ibTempProdNome.RecordCount > 0 Then begin

          lbl_edtNome.Text       := ibTempProdNome.FieldByName('NOME').AsString;
          lbl_edtProduto.Text    := ibTempProdNome.FieldByName('NOME').AsString;
          lbl_edtPrecoVenda.Text := FormatFloat(CasasDecimais('Produtos'),ibTempProdNome.FieldByName('VALORVENDAA').AsFloat);
          lbl_edtQtdeEstoque.Text := (FormatFloat(CasasDecimais('Produtos'),StrToFloat(ibTempProdNome.FieldByName('TotalEstoque').AsString)));
          lbl_edtFabricanteProd.Text := ibTempProdNome.FieldByName('FABRICANTE').AsString;
          lbl_edtCodInterno.Text := ibTempProdNome.FieldByName('REF').AsString;   //:= IntToStr(ibTempProdNome.FieldByName('IDPROD').AsInteger);
          lbl_edtIDProd.Text := IntToStr(ibTempProdNome.FieldByName('IDPROD').AsInteger);

        end;//if label codinterno

    lbl_edtnome.SetFocus;

    end;//if ky#13 }

  end;//with

end;

end.
