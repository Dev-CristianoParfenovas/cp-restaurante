unit untRelEstoqueFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, IBQuery, classComboBox, Buttons;

type
  TfrmRelEstoqueFornecedor = class(TForm)
    lbl_edtNome: TLabeledEdit;
    cboFornecedores: TComboBox;
    lbl_Fornecedores: TLabel;
    ibeaOk: TSpeedButton;
    ibeaLimpar: TSpeedButton;
    ibeaSair: TSpeedButton;
    procedure ibeaSairClick(Sender: TObject);
    procedure Commit(IBQueryExec : TIBQuery);
    procedure ExecSELECTFornecedor;
    procedure ibeaOkClick(Sender: TObject);
    procedure ibeaLimparClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cboFornecedoresChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelEstoqueFornecedor: TfrmRelEstoqueFornecedor;
  ClassForn : TClasseCombo;
  IDClassForn : Integer;
  IDFornecedorEstoque : TClasseCombo;
  StringFornecedorEstoque, QtdeCompra : String;
  
implementation

uses untRelEstoque, funcPosto, untdmModule;

{$R *.dfm}

procedure TfrmRelEstoqueFornecedor.ibeaSairClick(Sender: TObject);
begin
Close;
end;

procedure TfrmRelEstoqueFornecedor.Commit(IBQueryExec : TIBQuery);
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

procedure TfrmRelEstoqueFornecedor.ExecSELECTFornecedor;
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

procedure TfrmRelEstoqueFornecedor.ibeaOkClick(Sender: TObject);

var

QtdeCompra : String;
QtdeEstoque,QtdeMinima, QtdeParaComprar : Real;
IDProdEstoque : Integer;

begin

  with dmModule do begin

    if (lbl_edtNome.Text <> '') Then begin


      Commit(ibEntrProdEstoque);
      ibEntrProdEstoque.Close;
      ibEntrProdEstoque.SQL.Clear;
      ibEntrProdEstoque.SQL.Add('SELECT CADPRODUTOS.IDLOCAL,CADPRODUTOS.FORNECEDOR,'
     + 'CADPRODUTOS.NOME,CADPRODUTOS.VALORCUSTO,CADPRODUTOS.VALORVENDAA,CADPRODUTOS.FABRICANTE, '
     + 'TBLENTRADAESTOQUEPROD.QUANTIDADE,TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,'
     + 'TBLENTRADAESTOQUEPROD.ESTOQUEMIN,TBLENTRADAESTOQUEPROD.SUGESTAODECOMPRA,TBLCADASTRO.NOME As Fornecedor FROM CADPRODUTOS '
     + 'INNER JOIN TBLENTRADAESTOQUEPROD ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
     + 'INNER JOIN TBLENTRADAESTOQUEPROD ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD WHERE CADPRODUTOS.FABRICANTE LIKE '+''''+'%'+lbl_edtNome.text+'%'+''' ORDER BY CADPRODUTOS.NOME');
      ibEntrProdEstoque.Open;


     Application.CreateForm(TfrmRelEstoque, frmRelEstoque);

   //  qrpRelEstoque.ExportToFilter(TQRCommaSeparatedFilter.Create('d:\testeexcel.xls'));

      TRY

      with frmRelEstoque do begin

        frmRelEstoque.qrpRelEstoque.DataSet := ibEntrProdEstoque;


        //ATRIBUI OS NOMES DOS CAMPOS AOS QRDBTEXT DO QUICKREPORT
        qrdbQtdeMinima.DataSet    := ibEntrProdEstoque;
        qrdbQtdeMinima.DataField  := ibEntrProdEstoque.FieldByName('ESTOQUEMIN').FieldName;

        qrdbDescricao.DataSet   := ibEntrProdEstoque;
        qrdbDescricao.DataField := ibEntrProdEstoque.FieldByName('NOME').FieldName;

        qrdbVlrUnit.DataSet     := ibEntrProdEstoque;
        qrdbVlrUnit.DataField   := ibEntrProdEstoque.FieldByName('VALORVENDAA').FieldName;
       (ibEntrProdEstoque.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO

        qrdbQtde.DataSet        := ibEntrProdEstoque;
        qrdbQtde.DataField      := ibEntrProdEstoque.FieldByName('QUANTIDADE').FieldName;


        qrdbTotal.DataSet       := ibEntrProdEstoque;
        qrdbTotal.DataField     := ibEntrProdEstoque.FieldByName('VLRTOTAL').FieldName;
        (ibEntrProdEstoque.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO

       { qrdbData.DataSet    := ibVPistaProd;
        qrdbData.DataField  := ibVPistaProd.FieldByName('DATA').FieldName;

        qrdbHora.DataSet    := ibVPistaProd;
        qrdbHora.DataField  := ibVPistaProd.FieldByName('HORA').FieldName; }

        qrpRelEstoque.Preview;

      end; {if}


    EXCEPT
      on E : Exception do begin
         frmRelEstoque.Release;
         MessageDlg('Ocorreu um erro ao tentar mostrar o Formulário: ' + E.Message,mtError,[mbOk],0);
      end;
    END;
  //////////////////////////////////////////////////////////////

    end;//if lbl_nome

    if cboFornecedores.ItemIndex <> -1 Then begin

      IDFornecedorEstoque      := TClasseCombo( cboFornecedores.Items.Objects[cboFornecedores.ItemIndex] );//ATRIBUI A CLASSE COMBO NA VARIAVEL
      StringFornecedorEstoque  := ' FORNECEDOR=''' + InttoStr( IDFornecedorEstoque.ID ) + '''';//ATRIBUI O ID DO FIELD NA VARIAVEL STRING.

    end;

      Commit(ibEntrProdEstoque);
      ibEntrProdEstoque.Close;
      ibEntrProdEstoque.SQL.Clear;
      ibEntrProdEstoque.SQL.Add('SELECT CADPRODUTOS.IDLOCAL,CADPRODUTOS.FORNECEDOR,'
     + 'CADPRODUTOS.NOME,CADPRODUTOS.VALORCUSTO,CADPRODUTOS.VALORVENDAA,CADPRODUTOS.FABRICANTE, '
     + 'TBLENTRADAESTOQUEPROD.QUANTIDADE,TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,'
     + 'TBLENTRADAESTOQUEPROD.ESTOQUEMIN,TBLENTRADAESTOQUEPROD.SUGESTAODECOMPRA,TBLCADASTRO.NOME As Fornecedor FROM CADPRODUTOS '
     + 'INNER JOIN TBLENTRADAESTOQUEPROD ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
     + 'INNER JOIN TBLCADASTRO ON TBLCADASTRO.IDCAD=CADPRODUTOS.FORNECEDOR WHERE CADPRODUTOS.FORNECEDOR= ''' + IntToStr(IDFornecedorEstoque.ID) + ''' ORDER BY CADPRODUTOS.NOME');
     ibEntrProdEstoque.Open;

    
  {   while not ibEntrProdEstoque.Eof do begin


     IDProdEstoque := ibEntrProdEstoque.FieldByName('IDPROD').AsInteger;



      if QtdeEstoque = 0 Then begin


      QtdeEstoque := StrToFloat(StringReplace(FloatToStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

      end;

      if QtdeMinima = 0 Then begin

      QtdeMinima  := StrToFloat(StringReplace(FloatToStr(ibEntrProdEstoque.FieldByName('ESTOQUEMIN').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

      end;

   //  if (QtdeEstoque >-1) Then begin

      if (QtdeEstoque >=0 )and(QtdeEstoque < QtdeMinima) Then begin

      QtdeParaComprar := QtdeMinima - QtdeEstoque;

      end;


      if (QtdeEstoque<0) Then begin

      QtdeParaComprar := QtdeMinima;

      end;

      if QtdeParaComprar > 0 Then begin

      QtdeCompra := StringReplace(FloatToStr(QtdeParaComprar),ThousandSeparator,'',[rfReplaceAll]);
      QtdeCompra := StringReplace(QtdeCompra,DecimalSeparator,'.',[rfReplaceAll]);

      end else begin

      QtdeCompra := '0';

      end;//if

      ibTempProdEstoque.Close;
      ibTempProdEstoque.SQL.Clear;
      ibTempProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
      + 'SUGESTAODECOMPRA = ''' + QtdeCompra + ''' WHERE IDPROD=''' + IntToStr(IDProdEstoque) + '''');
      ibTempProdEstoque.ExecSQL;
      Commit(ibTempProdEstoque);


      QtdeEstoque := 0;
      QtdeMinima  := 0;

      ibEntrProdEstoque.Next;

     end;}//while

     Application.CreateForm(TfrmRelEstoque, frmRelEstoque);

   //  qrpRelEstoque.ExportToFilter(TQRCommaSeparatedFilter.Create('d:\testeexcel.xls'));

      TRY

      with frmRelEstoque do begin

        frmRelEstoque.qrpRelEstoque.DataSet := ibEntrProdEstoque;


        //ATRIBUI OS NOMES DOS CAMPOS AOS QRDBTEXT DO QUICKREPORT
        qrdbQtdeMinima.DataSet    := ibEntrProdEstoque;
        qrdbQtdeMinima.DataField  := ibEntrProdEstoque.FieldByName('ESTOQUEMIN').FieldName;

        qrdbDescricao.DataSet   := ibEntrProdEstoque;
        qrdbDescricao.DataField := ibEntrProdEstoque.FieldByName('NOME').FieldName;

        qrdbVlrUnit.DataSet     := ibEntrProdEstoque;
        qrdbVlrUnit.DataField   := ibEntrProdEstoque.FieldByName('VALORVENDAA').FieldName;
       (ibEntrProdEstoque.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO

        qrdbQtde.DataSet        := ibEntrProdEstoque;
        qrdbQtde.DataField      := ibEntrProdEstoque.FieldByName('QUANTIDADE').FieldName;


        qrdbTotal.DataSet       := ibEntrProdEstoque;
        qrdbTotal.DataField     := ibEntrProdEstoque.FieldByName('VLRTOTAL').FieldName;
        (ibEntrProdEstoque.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO

        qrdbSugetaoCompra.DataSet       := ibEntrProdEstoque;
        qrdbSugetaoCompra.DataField     := ibEntrProdEstoque.FieldByName('SUGESTAODECOMPRA').FieldName;
        (ibEntrProdEstoque.FieldByName('SUGESTAODECOMPRA') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO


       { qrdbData.DataSet    := ibVPistaProd;
        qrdbData.DataField  := ibVPistaProd.FieldByName('DATA').FieldName;

        qrdbHora.DataSet    := ibVPistaProd;
        qrdbHora.DataField  := ibVPistaProd.FieldByName('HORA').FieldName; }

       // qrl_Compra.Caption := (QtdeCompra);

        qrpRelEstoque.Preview;

      end; {if}


    EXCEPT
      on E : Exception do begin
         frmRelEstoque.Release;
         MessageDlg('Ocorreu um erro ao tentar mostrar o Formulário: ' + E.Message,mtError,[mbOk],0);
      end;
    END;
  //////////////////////////////////////////////////////////////

  //  end;//if lbl_nome

  end;{with}

end;

procedure TfrmRelEstoqueFornecedor.ibeaLimparClick(Sender: TObject);
begin
lbl_edtNome.Clear;
cboFornecedores.ClearSelection;
end;

procedure TfrmRelEstoqueFornecedor.FormShow(Sender: TObject);
begin

  with dmModule do begin

    ExecSELECTFornecedor;

  end;//with

end;

procedure TfrmRelEstoqueFornecedor.cboFornecedoresChange(Sender: TObject);

var

QtdeCompra : String;
QtdeEstoque,QtdeMinima, QtdeParaComprar : Real;
IDProdEstoque : Integer;

begin

  with dmModule do begin

    if cboFornecedores.ItemIndex <> -1 Then begin

      IDFornecedorEstoque      := TClasseCombo( cboFornecedores.Items.Objects[cboFornecedores.ItemIndex] );//ATRIBUI A CLASSE COMBO NA VARIAVEL
      StringFornecedorEstoque  := ' FORNECEDOR=''' + InttoStr( IDFornecedorEstoque.ID ) + '''';//ATRIBUI O ID DO FIELD NA VARIAVEL STRING.

    end;

      Commit(ibEntrProdEstoque);
      ibEntrProdEstoque.Close;
      ibEntrProdEstoque.SQL.Clear;
      ibEntrProdEstoque.SQL.Add('SELECT CADPRODUTOS.IDLOCAL,CADPRODUTOS.FORNECEDOR,'
     + 'CADPRODUTOS.NOME,CADPRODUTOS.VALORCUSTO,CADPRODUTOS.VALORVENDAA,CADPRODUTOS.FABRICANTE, '
     + 'TBLENTRADAESTOQUEPROD.QUANTIDADE,TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,'
     + 'TBLENTRADAESTOQUEPROD.ESTOQUEMIN,TBLENTRADAESTOQUEPROD.SUGESTAODECOMPRA,TBLCADASTRO.NOME As Fornecedor FROM CADPRODUTOS '
     + 'INNER JOIN TBLENTRADAESTOQUEPROD ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
     + 'INNER JOIN TBLCADASTRO ON TBLCADASTRO.IDCAD=CADPRODUTOS.FORNECEDOR WHERE CADPRODUTOS.FORNECEDOR= ''' + IntToStr(IDFornecedorEstoque.ID) + ''' ORDER BY CADPRODUTOS.NOME');
     ibEntrProdEstoque.Open;


     while not ibEntrProdEstoque.Eof do begin


     IDProdEstoque := ibEntrProdEstoque.FieldByName('IDPROD').AsInteger;



      if QtdeEstoque = 0 Then begin


      QtdeEstoque := StrToFloat(StringReplace(FloatToStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

      end;

      if QtdeMinima = 0 Then begin

      QtdeMinima  := StrToFloat(StringReplace(FloatToStr(ibEntrProdEstoque.FieldByName('ESTOQUEMIN').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

      end;

   //  if (QtdeEstoque >-1) Then begin

      if (QtdeEstoque >=0 )and(QtdeEstoque < QtdeMinima) Then begin

      QtdeParaComprar := QtdeMinima - QtdeEstoque;

      end;


      if (QtdeEstoque<0) Then begin

      QtdeParaComprar := QtdeMinima;

      end;

      if QtdeParaComprar > 0 Then begin

      QtdeCompra := StringReplace(FloatToStr(QtdeParaComprar),ThousandSeparator,'',[rfReplaceAll]);
      QtdeCompra := StringReplace(QtdeCompra,DecimalSeparator,'.',[rfReplaceAll]);

      end else begin

      QtdeCompra := '0';

      end;//if

      ibTempProdEstoque.Close;
      ibTempProdEstoque.SQL.Clear;
      ibTempProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
      + 'SUGESTAODECOMPRA = ''' + QtdeCompra + ''' WHERE IDPROD=''' + IntToStr(IDProdEstoque) + '''');
      ibTempProdEstoque.ExecSQL;

      Commit(ibTempProdEstoque);

      QtdeEstoque := 0;
      QtdeMinima  := 0;

      ibEntrProdEstoque.Next;

     end;//while



  end;//with

end;

end.
