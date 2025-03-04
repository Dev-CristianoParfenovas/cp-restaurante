unit untEstoqueMForn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, BmsXPButton, classComboBox, DB, IBQuery,
  BmsXPCheckBox;

type
  TfrmEstoqueMForn = class(TForm)
    ibeaVisualizar: TBmsXPButton;
    ibeaSair: TBmsXPButton;
    Label1: TLabel;
    ckGeral: TBmsXPCheckBox;
    ckEstoqueN: TBmsXPCheckBox;
    cboFornecedores: TComboBox;

    procedure Commit(IBQueryExec : TIBQuery);
    procedure ExecSELECTFornecedor;
    procedure ibeaSairClick(Sender: TObject);
    procedure ibeaVisualizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ckGeralCheck(Sender: TObject);
    procedure ckEstoqueNCheck(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstoqueMForn: TfrmEstoqueMForn;

implementation

uses untdmModule, untRelEstMin, funcPosto;

{$R *.dfm}

procedure TfrmEstoqueMForn.Commit(IBQueryExec : TIBQuery);
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

procedure TfrmEstoqueMForn.ExecSELECTFornecedor;

var

IDClassForn : Integer;
ClassForn : TClasseCombo;

begin
  with dmModule do begin

    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Fornecedores''');
    ibClassificacao.Open;
    IDClassForn := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO FORNECEDOR NA VARIAVEL.

    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + IntToStr(IDClassForn) + '''ORDER BY NOME');//('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + InttoStr(IDClass) + ''' ORDER BY NOME');
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

procedure TfrmEstoqueMForn.ibeaSairClick(Sender: TObject);
begin
Close;
end;

procedure TfrmEstoqueMForn.ibeaVisualizarClick(
  Sender: TObject);
var

IDClassFornecedor : TClasseCombo;
begin

  with dmModule do begin

    if cboFornecedores.ItemIndex <> -1 Then begin

      IDClassFornecedor := TClasseCombo(cboFornecedores.Items.Objects[cboFornecedores.ItemIndex]);

    end;

      if (ckGeral.Checked)and(cboFornecedores.Text<> '') Then begin

        Commit(ibEntrProdEstoque);
        ibEntrProdEstoque.Close;
        ibEntrProdEstoque.SQL.Clear;
        ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.*,CADPRODUTOS.CODBARRAS,CADPRODUTOS.IDLOCAL,'
       + 'CADPRODUTOS.NOME,CADPRODUTOS.REF,CADPRODUTOS.VALORVENDAA,CADPRODUTOS.FORNECEDOR FROM CADPRODUTOS '
       + 'INNER JOIN TBLENTRADAESTOQUEPROD ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD WHERE CADPRODUTOS.FORNECEDOR=''' + IntToStr(IDClassFornecedor.ID) + ''' ORDER BY CADPRODUTOS.NOME');
        ibEntrProdEstoque.Open;

       Application.CreateForm(TfrmRelEstoqueMin, frmRelEstoqueMin);

        TRY

          with frmRelEstoqueMin do begin

            frmRelEstoqueMin.qrpRelEstoquemin.DataSet := ibEntrProdEstoque;

            //ATRIBUI OS NOMES DOS CAMPOS AOS QRDBTEXT DO QUICKREPORT
            qrdbRef.DataSet    := ibEntrProdEstoque;
            qrdbRef.DataField  := ibEntrProdEstoque.FieldByName('REF').FieldName;

            qrdbQtdeMinima.DataSet    := ibEntrProdEstoque;
            qrdbQtdeMinima.DataField  := ibEntrProdEstoque.FieldByName('ESTOQUEMIN').FieldName;

            qrdbDescricao.DataSet   := ibEntrProdEstoque;
            qrdbDescricao.DataField := ibEntrProdEstoque.FieldByName('NOME').FieldName;

            qrdbVlrUnit.DataSet     := ibEntrProdEstoque;
            qrdbVlrUnit.DataField   := ibEntrProdEstoque.FieldByName('VALORVENDAA').FieldName;
           (ibEntrProdEstoque.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO

            qrdbQtde.DataSet        := ibEntrProdEstoque;
            qrdbQtde.DataField      := ibEntrProdEstoque.FieldByName('QUANTIDADE').FieldName;


      //      qrdbTotal.DataSet       := ibEntrProdEstoque;
     //       qrdbTotal.DataField     := ibEntrProdEstoque.FieldByName('VLRTOTAL').FieldName;
     //      (ibEntrProdEstoque.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO


            qrpRelEstoquemin.Preview;

          end; {if}
          

        EXCEPT
          on E : Exception do begin
             frmRelEstoqueMin.Release;
             MessageDlg('Ocorreu um erro ao tentar mostrar o Formulário: ' + E.Message,mtError,[mbOk],0);
          end;
        END;
    //////////////////////////////////////////////////////////////

        end;//if ckbotoes


      if (ckEstoqueN.Checked)and(cboFornecedores.Text<> '') Then begin

        Commit(ibEntrProdEstoque);
        ibEntrProdEstoque.Close;
        ibEntrProdEstoque.SQL.Clear;
        ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.*,CADPRODUTOS.CODBARRAS,CADPRODUTOS.IDLOCAL,'
       + 'CADPRODUTOS.NOME,CADPRODUTOS.REF,CADPRODUTOS.VALORVENDAA,CADPRODUTOS.FORNECEDOR FROM CADPRODUTOS '
       + 'INNER JOIN TBLENTRADAESTOQUEPROD ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD WHERE CADPRODUTOS.FORNECEDOR=''' + IntToStr(IDClassFornecedor.ID) + ''' and TBLENTRADAESTOQUEPROD.QUANTIDADE < TBLENTRADAESTOQUEPROD.ESTOQUEMIN ORDER BY CADPRODUTOS.NOME');
        ibEntrProdEstoque.Open;                          //TBLENTRADAESTOQUEPROD.ESTOQUEMIN=TBLENTRADAESTOQUEPROD.QUANTIDADE OR TBLENTRADAESTOQUEPROD.QUANTIDADE<TBLENTRADAESTOQUEPROD.ESTOQUEMIN and


       Application.CreateForm(TfrmRelEstoqueMin, frmRelEstoqueMin);

        TRY

          with frmRelEstoqueMin do begin

            frmRelEstoqueMin.qrpRelEstoquemin.DataSet := ibEntrProdEstoque;

if  (ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat)<(ibEntrProdEstoque.FieldByName('ESTOQUEMIN').AsFloat) Then begin


            //ATRIBUI OS NOMES DOS CAMPOS AOS QRDBTEXT DO QUICKREPORT
            qrdbRef.DataSet    := ibEntrProdEstoque;
            qrdbRef.DataField  := ibEntrProdEstoque.FieldByName('REF').FieldName;

            qrdbQtdeMinima.DataSet    := ibEntrProdEstoque;
            qrdbQtdeMinima.DataField  := ibEntrProdEstoque.FieldByName('ESTOQUEMIN').FieldName;

            qrdbDescricao.DataSet   := ibEntrProdEstoque;
            qrdbDescricao.DataField := ibEntrProdEstoque.FieldByName('NOME').FieldName;

            qrdbVlrUnit.DataSet     := ibEntrProdEstoque;
            qrdbVlrUnit.DataField   := ibEntrProdEstoque.FieldByName('VALORVENDAA').FieldName;
           (ibEntrProdEstoque.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO

            qrdbQtde.DataSet        := ibEntrProdEstoque;
            qrdbQtde.DataField      := ibEntrProdEstoque.FieldByName('QUANTIDADE').FieldName;


        //    qrdbTotal.DataSet       := ibEntrProdEstoque;
        //    qrdbTotal.DataField     := ibEntrProdEstoque.FieldByName('VLRTOTAL').FieldName;
       //     (ibEntrProdEstoque.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO

            qrpRelEstoquemin.Preview;
            end;
           end; {if}


        EXCEPT
          on E : Exception do begin
             frmRelEstoqueMin.Release;
             MessageDlg('Ocorreu um erro ao tentar mostrar o Formulário: ' + E.Message,mtError,[mbOk],0);
          end;
        END;
    //////////////////////////////////////////////////////////////
     // end;//if cbo fornecedores
        end;//if ckbotoes


  end;{with}

end;

procedure TfrmEstoqueMForn.FormShow(Sender: TObject);
begin

ckGeral.Checked    := False;
ckEstoqueN.Checked := False;

  with dmModule do begin

    ExecSELECTFornecedor;

  end;//with

end;

procedure TfrmEstoqueMForn.ckGeralCheck(Sender: TObject);
begin

  if ckGeral.Checked Then begin

    ckEstoqueN.Checked := False;

  end;

end;

procedure TfrmEstoqueMForn.ckEstoqueNCheck(Sender: TObject);
begin

  if ckEstoqueN.Checked Then begin

    ckGeral.Checked := False;

  end;

end;

end.
