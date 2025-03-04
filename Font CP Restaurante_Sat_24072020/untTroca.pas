unit untTroca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, BmsXPTopBar, StdCtrls, mxFlatControls, IBQuery,
  classComboBox, Grids, DBGrids, BmsXPButton;

type
  TfrmTrocaMercadoria = class(TForm)
    lbl_edtCodBarraTroca: TLabeledEdit;
    lbl_edtNomeProdTroca: TLabeledEdit;
    lbl_edtVlrVendaTroca: TLabeledEdit;
    lbl_edtCodBarras: TLabeledEdit;
    lbl_edtNomeProd: TLabeledEdit;
    lbl_edtVlrVenda: TLabeledEdit;
    lbl_edtVlrDiferenca: TLabeledEdit;
    cboTipoPagto: TComboBox;
    lbl_TipoPagto: TLabel;
    lbl_ProdD: TLabel;
    lbl_ProdT: TLabel;
    lbl_Inf: TLabel;
    lbl_edtQtde: TLabeledEdit;
    dbgEstoque: TDBGrid;
    lbl_edtCodProdTroca: TLabeledEdit;
    lbl_edtCodProd: TLabeledEdit;
    memoObs: TMemo;
    lbl_Obs: TLabel;
    dbgProdTroca: TDBGrid;
    Bevel1: TBevel;
    ibeaSair: TBmsXPButton;
    lbl_edtQtdeRetirada: TLabeledEdit;
    lbl_F7: TLabel;
    lbl_edtTotalVenda: TLabeledEdit;
    lbl_edtTotalDevolvido: TLabeledEdit;
    lbl_edtFuncComissao: TLabeledEdit;
    lbl_NomeFuncComissao: TLabel;
    lbl_edtNumCupom: TLabeledEdit;
    lbl_edtTotalRetirado: TLabeledEdit;
    lbl_edtRefTroca: TLabeledEdit;
    lbl_edtRef: TLabeledEdit;

    procedure Commit(IBQueryExec : TIBQuery);
    procedure LimpaCampos;
    procedure ExecSELECTTipoPagto;
    procedure GravaTroca;
    procedure FormShow(Sender: TObject);
    procedure lbl_edtCodBarraTrocaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure lbl_edtCodBarrasChange(Sender: TObject);
    procedure lbl_edtCodBarrasExit(Sender: TObject);
    procedure lbl_edtCodBarrasKeyPress(Sender: TObject; var Key: Char);
    procedure ibeaSairClick(Sender: TObject);
    procedure lbl_edtQtdeRetiradaExit(Sender: TObject);
    procedure lbl_edtQtdeRetiradaKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtQtdeExit(Sender: TObject);
    procedure lbl_edtQtdeKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtTotalDevolvidoExit(Sender: TObject);
    procedure lbl_edtTotalDevolvidoKeyPress(Sender: TObject;
      var Key: Char);
    procedure lbl_edtCodBarraTrocaKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtTotalVendaKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtFuncComissaoExit(Sender: TObject);
    procedure lbl_edtFuncComissaoKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtTotalRetiradoExit(Sender: TObject);
    procedure lbl_edtTotalVendaExit(Sender: TObject);
    procedure cboTipoPagtoClick(Sender: TObject);
    procedure lbl_edtRefTrocaExit(Sender: TObject);
    procedure lbl_edtRefExit(Sender: TObject);
    procedure lbl_edtRefKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtRefTrocaKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTrocaMercadoria: TfrmTrocaMercadoria;
  IDTipoPagto : TClasseCombo;
  MontaColunas,MontaColProd : Boolean;
  NovoCupom,InsereVenda : Boolean;
  IDVenda : Integer;

implementation

uses untdmModule, DB, funcPosto, untServicos;

{$R *.dfm}

procedure TfrmTrocaMercadoria.Commit(IBQueryExec : TIBQuery);
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

procedure TfrmTrocaMercadoria.LimpaCampos;

begin

lbl_edtCodBarraTroca.Clear;
lbl_edtNomeProdTroca.Clear;
lbl_edtVlrVendaTroca.Text := '0,00';
lbl_edtCodProdTroca.Clear;
lbl_edtCodBarras.Clear;
lbl_edtNomeProd.Clear;
lbl_edtVlrVenda.Text := '0,00';
lbl_edtVlrDiferenca.Text := '0,00';
cboTipoPagto.ClearSelection;
memoObs.Clear;

end;

procedure TfrmTrocaMercadoria.ExecSELECTTipoPagto;

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

procedure TfrmTrocaMercadoria.GravaTroca;

var

QtdeTotalEstoqueVenda,QtdeMinimaEstoque,EstoqueFinal,TrocaMercadoria : String;
TotalProdEstoque,TotalCusto,StringProd,TotalCustoProduto,InfoEstoqueMinimo : String;
LocalEstoque,NomeProduto,ValorDif,ValorUnit,SituacaoCliente : String;
QtdeEstoqueVenda,QtdeEstoque,QtdeVenda,VlrProduto,ValorCustoE,Custo : Real;
QtdeVendida : Real;
TotaldoEstoque,ConfirmaTroca,IDProd,TotaldoMinimo,IDFuncComissao : Integer;

begin

  with dmModule do begin

  ConfirmaTroca := Application.MessageBox('Confirma o Lan�amento de Troca?','Troca de Mercadoria',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

    if ConfirmaTroca = 6 Then begin

      NovoCupom := True;

      ibEntrProdEstoque.Close;
      ibEntrProdEstoque.SQL.Clear;
      ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,'
      + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,TBLENTRADAESTOQUEPROD.ESTOQUEMIN,'
      + 'CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORCUSTO,CADPRODUTOS.TIPOPROD FROM TBLENTRADAESTOQUEPROD '
      + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + lbl_edtCodProd.Text + '''');
      ibEntrProdEstoque.Open;

       //ROTINA PARA O ESTOQUE MINIMO
       if ibEntrProdEstoque.RecordCount > 0 Then begin

         QtdeEstoqueVenda := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

         QtdeTotalEstoqueVenda := StringReplace(FloattoStr(QtdeEstoqueVenda),ThousandSeparator,'',[rfReplaceAll]);
         QtdeTotalEstoqueVenda := StringReplace(QtdeTotalEstoqueVenda,DecimalSeparator,'.',[rfReplaceAll]);

         TotaldoEstoque := StrToInt(QtdeTotalEstoqueVenda);

         QtdeMinimaEstoque := (ibEntrProdEstoque.FieldByName('ESTOQUEMIN').AsString);

        ibConfig.Close;
        ibConfig.SQL.Clear;
        ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
        ibConfig.Open;

        InfoEstoqueMinimo := ibConfig.FieldByName('ESTOQUEMINIMO').AsString;

        TotaldoMinimo := StrToInt(QtdeMinimaEstoque);

          if InfoEstoqueMinimo = 'Sim' Then begin

            if (TotaldoMinimo >= TotaldoEstoque) Then begin

              Application.MessageBox('Aten��o o Estoque est� em sua Quantidade M�nima!!!','Notifica��o: Estoque inferior ao m�nimo.',+MB_OK+MB_ICONWARNING);

            end;//if

          end;//if

       end;{if recordcount}



        //ROTINA ABAIXO PARA SOMAR TOTAL DO ESTQUE E QUANTIDADE DO ESTOQUE
       if lbl_edtCodProd.Text <> '' Then begin

         //traz na variavel a qtde conf. prod da select identificado por id.
         QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
         // QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),DecimalSeparator,',',[rfReplaceAll]));

         QtdeVenda   := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));

         QtdeEstoque := QtdeEstoque - QtdeVenda;

         EstoqueFinal := StringReplace(FloattoStr(QtdeEstoque),ThousandSeparator,'',[rfReplaceAll]);
         EstoqueFinal := StringReplace(EstoqueFinal,DecimalSeparator,'.',[rfReplaceAll]);

         //AQUI VAI O CALCULO DO TOTAL CONFORME VENDE O PRODUTO
         VlrProduto  := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORVENDAA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

         VlrProduto  := QtdeEstoque * VlrProduto;

         TotalProdEstoque := StringReplace(FloattoStr(VlrProduto),ThousandSeparator,'',[rfReplaceAll]);
         TotalProdEstoque := StringReplace(TotalProdEstoque,DecimalSeparator,'.',[rfReplaceAll]);

         ValorCustoE := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORCUSTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

         ValorCustoE := QtdeEstoque * ValorCustoE;

         TotalCusto := StringReplace(FloattoStr(ValorCustoE),ThousandSeparator,'',[rfReplaceAll]);
         TotalCusto := StringReplace(TotalCusto,DecimalSeparator,'.',[rfReplaceAll]);

         ibEntrProdEstoque.Close;
         ibEntrProdEstoque.SQL.Clear;
         ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
         +'TOTALCUSTO=''' + TotalCusto + ''','
         +'QUANTIDADE=''' + (EstoqueFinal) + ''','
         +'VLRTOTAL=''' + (TotalProdEstoque) +  ''' WHERE IDPROD=''' + lbl_edtCodProd.Text + '''');
         ibEntrProdEstoque.ExecSQL;
         Commit(ibEntrProdEstoque);

       end;//if label IDPRODCX

  ////////////////////////////////////////////////////////////////////////////////

  //ROTINA para CAlculo do custo vendido

     if lbl_edtNomeProd.Text = '' Then begin

        StringProd := ' '' 0 '',';
        TotalCusto := '0';

      end else begin

      //  ClassVendaProduto   := TClasseCombo( cboProduto.Items.Objects[cboProduto.ItemIndex] );
        StringProd          := lbl_edtCodProd.Text;

        ibProdutos.Close;
        ibProdutos.SQL.Clear;
        ibProdutos.SQL.Add('SELECT CADPRODUTOS.*,'
        + 'LOCALESTOCAGEM.NOME As Estoque FROM CADPRODUTOS '
        + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE '
        + 'WHERE IDPROD=''' + StringProd + '''');
        ibProdutos.Open;

        LocalEstoque := ibProdutos.FieldByName('Estoque').AsString;
        NomeProduto  := ibProdutos.FieldByName('NOME').AsString;
        IDProd       := ibProdutos.FieldByName('IDPROD').AsInteger;

        Custo := StrtoFloat(StringReplace(FloattoStr(ibProdutos.FieldByName('VALORCUSTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
        QtdeVendida := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));
        Custo := QtdeVendida * Custo;

        TotalCustoProduto := StringReplace(FloattoStr(Custo),ThousandSeparator,'',[rfReplaceAll]);
        TotalCustoProduto := StringReplace(TotalCustoProduto,DecimalSeparator,'.',[rfReplaceAll]);


      end;

       if InsereVenda Then begin

         ibServsVendasCli.Close;
         ibServsVendasCli.SQL.Clear;
         ibServsVendasCli.SQL.Add('INSERT INTO TBLSERVICOSVENDASCLI '
         + '(IDPROD,DATA) values '
         + '(''' + StringProd + ''','
       //  + ' ''' + IntToStr(IDFuncCX) + ''',' IDFUNC,
         + ' ''' + FormatDateTime('mm-dd-yyyy',now) + ''')');
         ibServsVendasCli.ExecSQL;
         Commit(ibServsVendasCli);


         //select para trazer o ultimo id
         ibServsVendasCli.Close;
         ibServsVendasCli.SQL.Clear;
         ibServsVendasCli.SQL.Add('SELECT * FROM TBLSERVICOSVENDASCLI ORDER BY IDSERVSVENDA DESC');
         ibServsVendasCli.Open;


         IDVenda := ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger;

           if lbl_edtNumCupom.Text = '1' Then begin

            IDVenda := 1;

          end else begin

            IDVenda := ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger;

          end;

            InsereVenda := False;

       end;//if inserre venda

           { ValorUnit := StringReplace(lbl_edtVlrVenda.Text,ThousandSeparator,'',[rfReplaceAll]);
            ValorUnit := StringReplace(ValorUnit,DecimalSeparator,'.',[rfReplaceAll]);
            if ValorUnit  = '' Then
               ValorUnit := '0';}

           { ValorDif := StringReplace(lbl_edtVlrDiferenca.Text,ThousandSeparator,'',[rfReplaceAll]);
            ValorDif := StringReplace(ValorDif,DecimalSeparator,'.',[rfReplaceAll]);
            if ValorDif  = '' Then
               ValorDif := '0';}


            if lbl_edtFuncComissao.Text <> '' Then begin

              IDFuncComissao := StrToInt(lbl_edtFuncComissao.Text);

            end;

            TrocaMercadoria := 'Sim';

            ibServsVenda.Close;
            ibServsVenda.SQL.Clear;
            ibServsVenda.SQL.Add('INSERT INTO TBLSERVICOSVENDAS '
            + ' (IDPROD,ESTOQUE,IDSERVSVENDA,'
            + 'NOMEPROD,OBS,IDFUNCCOMISSAO,TROCAMERCADORIA,DATA,HORA) values '
            + ' (''' + StringProd  + ''','
          //  + ' ''' + ValorUnit + ''','VLRUNIT,
           // + ' ''' + ValorDif + ''',' VLRTOTAL,
            + ' ''' + LocalEstoque + ''','
            + ' ''' + IntToStr(IDVenda) + ''','
          // + ' ''' + TotalCusto + ''',' TOTALCUSTO,
            + ' ''' + NomeProduto + ''','
            + ' ''' + memoObs.Text + ''','
            + ' ''' + IntToStr(IDFuncComissao) + ''','
            + ' ''' + TrocaMercadoria + ''','
            + ' ''' + FormatDateTime('mm-dd-yyyy',now) + ''','
            + ' ''' + FormatDateTime('hh:mm:ss',now) + ''')');
            ibServsVenda.ExecSQL;

            Commit(ibServsVenda);

            ibServsVenda.Close;
            ibServsVenda.SQL.Clear;
            ibServsVenda.SQL.Add('SELECT TBLSERVICOSVENDAS.*,CADPRODUTOS.NOME As Produto FROM TBLSERVICOSVENDAS '
            + 'LEFT OUTER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD '
            + 'WHERE TBLSERVICOSVENDAS.IDPROD=''' + lbl_edtCodProd.Text + '''and TBLSERVICOSVENDAS.IDSERVSVENDA=''' + IntToStr(IDVenda) + '''');
            ibServsVenda.Open;

////////////////////////////////////////////////////////////////////////////////

          TotalSaidaEstoque := StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]);
          TotalSaidaEstoque := StringReplace(TotalSaidaEstoque,DecimalSeparator,'.',[rfReplaceAll]);
          if TotalSaidaEstoque  = '' Then
           TotalSaidaEstoque := '0';

          ibMovEst.Close;
          ibMovEst.SQL.Clear;
          ibMovEst.SQL.Add('INSERT INTO TBLMOVESTOQUE '
          + '(IDPROD,DATA,HORA,IDVENDA,SAIDA) values '
          + ' (''' + IntToStr(IDProdMovEstoque) + ''','
          + ' ''' + FormatDateTime('mm-dd-yyyy',now) + ''','
          + ' ''' + FormatDateTime('hh:mm:ss',now) + ''','
          + ' ''' + IntToStr(IDVendasServs) + ''','
          + ' ''' + TotalSaidaEstoque + ''')');
          ibMovEst.ExecSQL;
          Commit(ibMovEst);

    end else begin

      NovoCupom := False;

    end;//if confirmatroca



  end;//with

end;


procedure TfrmTrocaMercadoria.FormShow(Sender: TObject);
begin

    lbl_edtCodBarraTroca.SetFocus;
    lbl_edtFuncComissao.Clear;
    lbl_NomeFuncComissao.Caption := '';
    lbl_edtVlrVendaTroca.Text := '0,00';
    lbl_edtVlrVenda.Text := '0,00';
    LimpaCampos;
    
  with dmModule do begin

    ExecSELECTTipoPagto;
////////////////////////////////////////////////////////////////////////////////
    ibEntrProdEstoque.Close;

    ibServsVendasCli.Close;
    ibServsVendasCli.SQL.Clear;
    ibServsVendasCli.SQL.Add('SELECT IDSERVSVENDA FROM TBLSERVICOSVENDASCLI ORDER BY IDSERVSVENDA DESC');
    ibServsVendasCli.Open;

    if (ibServsVendasCli.RecordCount = 0) Then begin

      lbl_edtNumCupom.Text := '1';

    end else begin

      lbl_edtNumCupom.Text := IntToStr(ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger + 1);

      IDVenda := (ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger + 1);

    end;{if}

    InsereVenda := True;

////////////////////////////////////////////////////////////////////////////////

   with dbgEstoque do begin

      // monta as colunas abaixo se for verdadeiro
      if MontaColunas Then begin

      DataSource := dmModule.dtsEntrProdEstoque;

        //determina as colunas a serem montadas
        Columns.Insert(0);
        Columns.Insert(1);
        Columns.Insert(2);
        Columns.Insert(3);
        Columns.Insert(4);

        //Parametros da Coluna que exibe o C�digo da entrada no estoque
        Columns.Items[0].Title.Caption := 'Produto';
        Columns.Items[0].FieldName     := 'NomeProd';
        Columns.Items[0].Width         := 230;
        Columns.Items[0].Alignment     := taLeftJustify;

       //Parametros da Coluna que exibe o Nome do produto que esta entrando no estoque.
        Columns.Items[1].Title.Caption := 'Vlr.Venda';
        Columns.Items[1].FieldName     := 'VALORVENDAA';
        Columns.Items[1].Width         := 100;
        Columns.Items[1].Alignment     := taLeftJustify;

        //parametros que exibe a qtde. de entrada no estoque
        Columns.Items[2].Title.Caption := 'Qtde.Estoque';
        Columns.Items[2].FieldName     := 'QUANTIDADE';
        Columns.Items[2].Width         := 110;
        Columns.Items[2].Alignment     := taLeftJustify;


        //Parametros da Coluna que exibe o vlr unitario do produto.
        Columns.Items[3].Title.Caption := 'Total';
        Columns.Items[3].FieldName     := 'VLRTOTAL';
        Columns.Items[3].Width         := 100;
        Columns.Items[3].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o vlr unitario do produto.
        Columns.Items[4].Title.Caption := 'Estoque M�nimo';
        Columns.Items[4].FieldName     := 'ESTOQUEMIN';
        Columns.Items[4].Width         := 120;
        Columns.Items[4].Alignment     := taLeftJustify;

        MontaColunas := False;

      end;{if}

    end;{with}
////////////////////////////////////////////////////////////////////////////////

   with dbgProdTroca do begin

      // monta as colunas abaixo se for verdadeiro
      if MontaColProd Then begin

      DataSource := dmModule.dtsServsVenda;

        //determina as colunas a serem montadas
        Columns.Insert(0);
        Columns.Insert(1);
        Columns.Insert(2);
        Columns.Insert(3);

        //Parametros da Coluna que exibe o C�digo da entrada no estoque
        Columns.Items[0].Title.Caption := 'Produto';
        Columns.Items[0].FieldName     := 'Produto';
        Columns.Items[0].Width         := 230;
        Columns.Items[0].Alignment     := taLeftJustify;

        //parametros que exibe a qtde. de entrada no estoque
        Columns.Items[1].Title.Caption := 'Vlr.Venda';
        Columns.Items[1].FieldName     := 'VLRUNIT';
        Columns.Items[1].Width         := 110;
        Columns.Items[1].Alignment     := taLeftJustify;

       //Parametros da Coluna que exibe o Nome do produto que esta entrando no estoque.
        Columns.Items[2].Title.Caption := 'Qtde.';
        Columns.Items[2].FieldName     := 'QTDE';
        Columns.Items[2].Width         := 80;
        Columns.Items[2].Alignment     := taLeftJustify;


        //Parametros da Coluna que exibe o vlr unitario do produto.
        Columns.Items[3].Title.Caption := 'Total';
        Columns.Items[3].FieldName     := 'VLRTOTAL';
        Columns.Items[3].Width         := 100;
        Columns.Items[3].Alignment     := taLeftJustify;

        MontaColProd := False;

      end;{if}

    end;{with}
////////////////////////////////////////////////////////////////////////////////

  end;//with

end;

procedure TfrmTrocaMercadoria.lbl_edtCodBarraTrocaChange(Sender: TObject);

{var

QtdeEstoque,VlrProduto,ValorCustoE,QtdeVenda,QtdeVendaProd,ValorCustoProd  : Real;
VlrProdutoProd : Real;
TotalCustoProd : String;
EstoqueFinal,TotalProdEstoque,TotalCusto,EstoqueFinalProd,TotalProdEstoqueProd : String;
IDProdQtdeEstoque, IDLocalEstoque : Integer;}

begin

  with dmModule do begin

      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE CODBARRAS=''' + lbl_edtCodBarraTroca.Text + '''');
      ibProdutos.Open;

    //  IDProdQtdeEstoque := ibProdutos.FieldByName('IDPROD').AsInteger;
   //   IDLocalEstoque    := ibProdutos.FieldByName('IDLOCAL').AsInteger;

      lbl_edtNomeProdTroca.Text := ibProdutos.FieldByName('NOME').AsString;
      lbl_edtVlrVendaTroca.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);
      lbl_edtCodProdTroca.Text  := IntToStr(ibProdutos.FieldByName('IDPROD').AsInteger);

      lbl_edtQtdeExit(Sender);


    {if lbl_edtCodBarraTroca.Text <> '' Then begin

      ibEntrProdEstoque.Close;
      ibEntrProdEstoque.SQL.Clear;
      ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,TBLENTRADAESTOQUEPROD.IDLOCAL,'
      + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,TBLENTRADAESTOQUEPROD.ESTOQUEMIN,'
      + 'CADPRODUTOS.IDLOCAL As Estoque,CADPRODUTOS.NOME As NomeProd,CADPRODUTOS.VALORVENDAA,'
      + 'CADPRODUTOS.VALORCUSTO,CADPRODUTOS.TIPOPROD,CADPRODUTOS.CODBARRAS,CADPRODUTOS.CODBARRASAD FROM TBLENTRADAESTOQUEPROD '
      + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
      + 'WHERE CADPRODUTOS.CODBARRAS=''' + lbl_edtCodBarraTroca.Text + ''' OR CADPRODUTOS.CODBARRASAD=''' + lbl_edtCodBarraTroca.Text + '''');
      ibEntrProdEstoque.Open;


      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE CODBARRAS=''' + lbl_edtCodBarraTroca.Text + '''');
      ibProdutos.Open;

      IDProdQtdeEstoque := ibProdutos.FieldByName('IDPROD').AsInteger;
      IDLocalEstoque    := ibProdutos.FieldByName('IDLOCAL').AsInteger;

      lbl_edtNomeProdTroca.Text := ibEntrProdEstoque.FieldByName('NomeProd').AsString;
      lbl_edtVlrVendaTroca.Text := FormatFloat(CasasDecimais('Produtos'),ibEntrProdEstoque.FieldByName('VALORVENDAA').AsFloat);
      lbl_edtCodProdTroca.Text  := IntToStr(ibEntrProdEstoque.FieldByName('IDPROD').AsInteger);

   // end;  //ROTINA ABAIXO PARA SOMAR TOTAL DO ESTQUE E QUANTIDADE DO ESTOQUE

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


      ValorCustoE := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORCUSTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

      ValorCustoE := QtdeEstoque * ValorCustoE;

      TotalCusto := StringReplace(FloattoStr(ValorCustoE),ThousandSeparator,'',[rfReplaceAll]);
      TotalCusto := StringReplace(TotalCusto,DecimalSeparator,'.',[rfReplaceAll]);


       //se houver registro ele atribui na alteracao o vlr da variavel

       if ibEntrProdEstoque.RecordCount > 0 Then begin

         ibEntrProdEstoque.Close;
         ibEntrProdEstoque.SQL.Clear;
         ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
         +'QUANTIDADE=''' + (EstoqueFinal) + ''','
         +'TOTALCUSTO=''' + TotalCusto + ''','
         +'VLRTOTAL=''' + (TotalProdEstoque) +  ''' WHERE IDPROD=''' + IntToStr(IDProdQtdeEstoque) + '''');
         ibEntrProdEstoque.ExecSQL;


         ibEntrProdEstoque.Close;
         ibEntrProdEstoque.SQL.Clear;
         ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,'
         + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,TBLENTRADAESTOQUEPROD.ESTOQUEMIN,'
         + 'CADPRODUTOS.NOME As NomeProd,CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORCUSTO,'
         + 'CADPRODUTOS.TIPOPROD,CADPRODUTOS.CODBARRAS,CADPRODUTOS.CODBARRASAD FROM TBLENTRADAESTOQUEPROD '
         + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
         + 'WHERE CADPRODUTOS.CODBARRAS=''' + lbl_edtCodBarraTroca.Text + '''OR CADPRODUTOS.CODBARRASAD=''' + lbl_edtCodBarraTroca.Text + '''');
         ibEntrProdEstoque.Open;

         (ibEntrProdEstoque.FieldByName('VLRTOTAL')as TFloatField).DisplayFormat := CasasDecimais('Produtos');
         (ibEntrProdEstoque.FieldByName('VALORVENDAA')as TFloatField).DisplayFormat := CasasDecimais('Produtos');



       // lbl_edtQtde.SetFocus;

         if lbl_edtQtde.Text <> '' Then begin

         lbl_edtQtde.SetFocus;
         //  lbl_edtCodBarras.SetFocus;
      //   lbl_edtCodBarraTroca.Clear;

         end;//if


       end else begin


         QtdeVendaProd   := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));

         EstoqueFinalProd := StringReplace(FloattoStr(QtdeVendaProd),ThousandSeparator,'',[rfReplaceAll]);
         EstoqueFinalProd := StringReplace(EstoqueFinalProd,DecimalSeparator,'.',[rfReplaceAll]);

         //AQUI VAI O CALCULO DO TOTAL CONFORME VENDE O PRODUTO
         VlrProdutoProd  := StrtoFloat(StringReplace(FloattoStr(ibProdutos.FieldByName('VALORVENDAA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

         VlrProdutoProd  := QtdeVendaProd * VlrProdutoProd;

         TotalProdEstoqueProd := StringReplace(FloattoStr(VlrProdutoProd),ThousandSeparator,'',[rfReplaceAll]);
         TotalProdEstoqueProd := StringReplace(TotalProdEstoqueProd,DecimalSeparator,'.',[rfReplaceAll]);

         ValorCustoProd := StrtoFloat(StringReplace(FloattoStr(ibProdutos.FieldByName('VALORCUSTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

         ValorCustoProd := QtdeVendaProd * ValorCustoProd;

         TotalCustoProd := StringReplace(FloattoStr(ValorCustoProd),ThousandSeparator,'',[rfReplaceAll]);
         TotalCustoProd := StringReplace(TotalCustoProd,DecimalSeparator,'.',[rfReplaceAll]);

         ibEntrProdEstoque.Close;
         ibEntrProdEstoque.SQL.Clear;
         ibEntrProdEstoque.SQL.Add('INSERT INTO TBLENTRADAESTOQUEPROD'
         + '(IDPROD,QUANTIDADE,TOTALCUSTO,VLRTOTAL,CODBARRAS,IDLOCAL) values '
         + '(''' + IntToStr(IDProdQtdeEstoque) + ''','
         + ' ''' + EstoqueFinalProd + ''','
         + ' ''' + TotalCustoProd + ''','
         + ' ''' + TotalProdEstoqueProd + ''','
         + ' ''' + lbl_edtCodBarraTroca.Text + ''','
         + ' ''' + IntToStr(IDLocalEstoque) + ''')');
         ibEntrProdEstoque.ExecSQL;


         ibEntrProdEstoque.Close;
         ibEntrProdEstoque.SQL.Clear;
         ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,'
         + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,TBLENTRADAESTOQUEPROD.ESTOQUEMIN,'
         + 'CADPRODUTOS.TIPOPROD,CADPRODUTOS.CODBARRAS,CADPRODUTOS.CODBARRASAD,'
         + 'CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORCUSTO FROM TBLENTRADAESTOQUEPROD '
         + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
         + 'WHERE CADPRODUTOS.CODBARRAS=''' + lbl_edtCodBarraTroca.Text + '''OR CADPRODUTOS.CODBARRASAD=''' + lbl_edtCodBarraTroca.Text + '''');
         ibEntrProdEstoque.Open;

         (ibEntrProdEstoque.FieldByName('VLRTOTAL')as TFloatField).DisplayFormat := CasasDecimais('Produtos');
         (ibEntrProdEstoque.FieldByName('VALORVENDAA')as TFloatField).DisplayFormat := CasasDecimais('Produtos'); }


         //  lbl_edtCodBarras.Clear;


         {lbl_edtQtde.SetFocus;

         if lbl_edtQtde.Text <> '' Then begin

           lbl_edtCodBarras.SetFocus;

         end;}

    //  end;

  //  end;//if label codbarras

//  end;//with


////////////////////////////////////////////////////////////////////////////////
 { with dmModule do begin

    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT CADPRODUTOS.*,LOCALESTOCAGEM.NOME As Estoque FROM CADPRODUTOS '
    + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE '
    + 'WHERE CADPRODUTOS.CODBARRAS=''' + lbl_edtCodBarraTroca.Text + ''' or CADPRODUTOS.CODBARRASAD=''' + lbl_edtCodBarraTroca.Text + '''');
    ibProdutos.Open;

    (ibProdutos.FieldByName('VALORVENDAA')as TFloatField).DisplayFormat  := CasasDecimais('Produtos');

    lbl_edtNomeProdTroca.Text := ibProdutos.FieldByName('NOME').AsString;
    lbl_edtVlrVendaTroca.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);

  end;}//with

  end;//with

end;

procedure TfrmTrocaMercadoria.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

var

SituacaoCliente,ValorDif : String;
IDTipoPagamento  : TClasseCombo;
StringTipoPagamento,TrocaMercadoria : String;
ConfirmaRecebimento,IDServs : Integer;
begin

  with dmModule do begin

    case Key of

      VK_F1 :begin

        lbl_edtFuncComissao.Clear;
        lbl_NomeFuncComissao.Caption := '';

        if (lbl_edtNomeProdTroca.Text <> '')or(lbl_edtNomeProd.Text <> '') Then begin

        frmTrocaMercadoria.Close;

        end else begin

        Application.MessageBox('Para sair com F1 � necess�rio efetuar o lan�amento de troca, caso contr�rio clique no bot�o sair','Aviso de Procedimento',+MB_OK+MB_DEFBUTTON1+MB_ICONINFORMATION);

        end;

       { if NovoCupom Then begin

          ibServsVendasCli.Close;
          ibServsVendasCli.SQL.Clear;
          ibServsVendasCli.SQL.Add('SELECT IDSERVSVENDA FROM TBLSERVICOSVENDASCLI ORDER BY IDSERVSVENDA DESC');
          ibServsVendasCli.Open;

          frmVendasLoja.lbl_CodVenda.Caption := IntToStr(ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger + 1);

        end;//if novocupom }

      end;//begin

      VK_F7 :begin

////////////////////////////////////////////////////////////////////////////////

      ConfirmaRecebimento := Application.MessageBox('Confirma o Recebimento','Recebimento de Troca',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

        if ConfirmaRecebimento = 6 Then begin

          SituacaoCliente := 'Pago';

          ValorDif := StringReplace(lbl_edtVlrDiferenca.Text,ThousandSeparator,'',[rfReplaceAll]);
          ValorDif := StringReplace(ValorDif,DecimalSeparator,'.',[rfReplaceAll]);
          if ValorDif  = '' Then
             ValorDif := '0';

////////////////////////////////////////////////////////////////////////////////

          if cboTipoPagto.ItemIndex = - 1 Then begin

            StringTipoPagamento        := ' ''0'',';

          end else begin

            IDTipoPagamento  := TClasseCombo( cboTipoPagto.Items.Objects[cboTipoPagto.ItemIndex] );
            StringTipoPagamento  := ' ''' + InttoStr( IDTipoPagamento.ID ) + ''',';

          end;

////////////////////////////////////////////////////////////////////////////////

          TrocaMercadoria := 'Sim';

          ibRecVendas.Close;
          ibRecVendas.SQL.Clear;
          ibRecVendas.SQL.Add('INSERT INTO TBLRECEBEVENDAS'
          + '(IDVENDA,TOTALVENDA,VLRPAGO,IDTIPOPAGTO,'
          + 'SITUACAOVENDA,TROCAMERCADORIA,DATA,HORA) values '
          + '(''' + IntToStr(IDVenda) + ''','
          + ' ''' + ValorDif + ''',''' + ValorDif + ''','
          + StringTipoPagamento
          + ' ''' + SituacaoCliente + ''','
          + ' ''' + TrocaMercadoria + ''','
          + ' ''' + FormatDateTime('mm-dd-yyyy',now) + ''','
          + ' ''' + FormatDateTime('hh:mm:ss',now) + ''')');
          ibRecVendas.ExecSQL;
          Commit(ibRecVendas);

////////////////////////////////////////////////////////////////////////////////

          ibServsVenda.Close;
          ibServsVenda.SQL.Clear;
          ibServsVenda.SQL.Add('SELECT IDSERVS FROM TBLSERVICOSVENDAS ORDER BY IDSERVS DESC');
          ibServsVenda.Open;

          IDServs := ibServsVenda.FieldByName('IDSERVS').AsInteger;

          ibServsVenda.Close;
          ibServsVenda.SQL.Clear;
          ibServsVenda.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
          + 'VLRTROCA = ''' + ValorDif + ''' WHERE IDSERVS=''' + IntToStr(IDServs) + '''');
          ibServsVenda.ExecSQL;
          Commit(ibServsVenda);
          
////////////////////////////////////////////////////////////////////////////////

          ibServsVendasCli.Close;
          ibServsVendasCli.SQL.Clear;
          ibServsVendasCli.SQL.Add('SELECT IDSERVSVENDA FROM TBLSERVICOSVENDASCLI ORDER BY IDSERVSVENDA DESC');
          ibServsVendasCli.Open;

          frmVendasLoja.lbl_CodVenda.Caption := IntToStr(ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger + 1);
          lbl_edtNumCupom.Text := IntToStr(ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger + 1);

          cboTipoPagto.ClearSelection;
          lbl_edtVlrDiferenca.Text  := '0,00';
          lbl_edtTotalRetirado.Text := '0,00';

          ibServsVenda.Close;

        end;//if confirma recebimento

////////////////////////////////////////////////////////////////////////////////

      end;//begin

    end;//case

  end;//with

end;

procedure TfrmTrocaMercadoria.FormCreate(Sender: TObject);
begin
MontaColunas := True;
MontaColProd := True;
end;

procedure TfrmTrocaMercadoria.lbl_edtCodBarrasChange(Sender: TObject);

begin

  with dmModule do begin

    if lbl_edtCodBarras.Text <> '' Then begin

      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT CADPRODUTOS.*,LOCALESTOCAGEM.NOME As Estoque FROM CADPRODUTOS '
      + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE '
      + 'WHERE CADPRODUTOS.CODBARRAS=''' + lbl_edtCodBarras.Text + ''' or CADPRODUTOS.CODBARRASAD=''' + lbl_edtCodBarras.Text + '''');
      ibProdutos.Open;

      (ibProdutos.FieldByName('VALORVENDAA')as TFloatField).DisplayFormat  := CasasDecimais('Produtos');

      lbl_edtNomeProd.Text := ibProdutos.FieldByName('NOME').AsString;
      lbl_edtVlrVenda.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);
      lbl_edtCodProd.Text  := IntToStr(ibProdutos.FieldByName('IDPROD').AsInteger);

    end;//if

  end;//with

end;

procedure TfrmTrocaMercadoria.lbl_edtCodBarrasExit(Sender: TObject);

//var

//Valor1,Valor2,Valor3 : Real;

begin

 { if lbl_edtVlrVendaTroca.Text <> '' Then begin// se for em branco executa rotina abaixo.

    if (Pos(',',lbl_edtVlrVendaTroca.Text)>0) and (lbl_edtVlrVendaTroca.Text <> '') Then begin

      Valor1 := StrToFloat(StringReplace(lbl_edtVlrVendaTroca.Text,ThousandSeparator,'',[rfReplaceAll]));
      Valor2 := StrToFloat(StringReplace(lbl_edtVlrVenda.Text,ThousandSeparator,'',[rfReplaceAll]));

      if Valor1 > Valor2 Then begin

        Valor3 := Valor1 - Valor2;

      end else begin

        Valor3 := Valor2 - Valor1;

      end;


      lbl_edtVlrDiferenca.Text := FormatFloat(',0.00',(Valor3));

    end else begin

      Valor1 := StrToFloat(StringReplace(lbl_edtVlrVendaTroca.Text,ThousandSeparator,'',[rfReplaceAll]));
      Valor2 := StrToFloat(StringReplace(lbl_edtVlrVenda.Text,ThousandSeparator,'',[rfReplaceAll]));

      if Valor1 > Valor2 Then begin

        Valor3 := Valor1 - Valor2;

      end else begin

        Valor3 := Valor2 - Valor1;

      end;

      lbl_edtVlrDiferenca.Text := FormatFloat(',0.00',(Valor3)); }

  //  end;{if}


//  end;{if}

end;

procedure TfrmTrocaMercadoria.lbl_edtCodBarrasKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

  lbl_edtQtdeRetirada.SetFocus;
   // lbl_edtVlrDiferenca.SetFocus;
   // GravaTroca;

  end;//if

end;

procedure TfrmTrocaMercadoria.ibeaSairClick(Sender: TObject);
begin
Close;
end;

procedure TfrmTrocaMercadoria.lbl_edtQtdeRetiradaExit(Sender: TObject);

var

Valor1,Valor2,Valor3,Valor4,Valor5,ValorDiferenca :Real;

begin

 if (lbl_edtNomeProd.Text <> '') Then begin

  if lbl_edtQtdeRetirada.Text <> '' Then begin// se for em branco executa rotina abaixo.

    if (Pos(',',lbl_edtQtdeRetirada.Text)>0) and (lbl_edtQtdeRetirada.Text <> '') Then begin

      Valor1 := StrToFloat(StringReplace(lbl_edtQtdeRetirada.Text,ThousandSeparator,'',[rfReplaceAll]));
      Valor2 := StrToFloat(StringReplace(lbl_edtVlrVenda.Text,ThousandSeparator,'',[rfReplaceAll]));

      if lbl_edtTotalVenda.Text > '0,00' Then begin

        Valor3 := StrToFloat(StringReplace(lbl_edtTotalVenda.Text,ThousandSeparator,'',[rfReplaceAll]));
        lbl_edtTotalVenda.Text := FormatFloat(',0.00',(Valor2 * Valor1 + Valor3));

      end else begin

        lbl_edtTotalVenda.Text := FormatFloat(',0.00',(Valor2 * Valor1));

      end;
////////////////////////////////////////////////////////////////////////////////

       {   Valor4 := StrToFloat(StringReplace(lbl_edtTotalVenda.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor5 := StrToFloat(StringReplace(lbl_edtTotalDevolvido.Text,ThousandSeparator,'',[rfReplaceAll]));

          if Valor4 > Valor5 Then begin

            ValorDiferenca := Valor4 - Valor5;

            lbl_edtVlrDiferenca.Text := FormatFloat(',0.00',(ValorDiferenca));

          end; }

////////////////////////////////////////////////////////////////////////////////

    end else begin

      Valor1 := StrToFloat(StringReplace(lbl_edtQtdeRetirada.Text,ThousandSeparator,'',[rfReplaceAll]));
      Valor2 := StrToFloat(StringReplace(lbl_edtVlrVenda.Text,ThousandSeparator,'',[rfReplaceAll]));

      if lbl_edtTotalVenda.Text > '0,00' Then begin

        Valor3 := StrToFloat(StringReplace(lbl_edtTotalVenda.Text,ThousandSeparator,'',[rfReplaceAll]));
        lbl_edtTotalVenda.Text := FormatFloat(',0.00',(Valor2 * Valor1 + Valor3));

      end else begin

        lbl_edtTotalVenda.Text := FormatFloat(',0.00',(Valor2 * Valor1));

      end;

////////////////////////////////////////////////////////////////////////////////

        {  Valor4 := StrToFloat(StringReplace(lbl_edtTotalVenda.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor5 := StrToFloat(StringReplace(lbl_edtTotalDevolvido.Text,ThousandSeparator,'',[rfReplaceAll]));

          if Valor4 > Valor5 Then begin

            ValorDiferenca := Valor4 - Valor5;

            lbl_edtVlrDiferenca.Text := FormatFloat(',0.00',(ValorDiferenca));

          end;  }

////////////////////////////////////////////////////////////////////////////////


    end;{if}

  end;{if}

 end;{if cbo produto}


end;

procedure TfrmTrocaMercadoria.lbl_edtQtdeRetiradaKeyPress(Sender: TObject;
  var Key: Char);
begin

  if Key = #13 Then begin

    if lbl_edtNomeProd.Text = '' Then begin

      lbl_edtCodBarras.SetFocus;

   end else begin

      lbl_edtTotalVenda.SetFocus;

    end;{if cbo produto}

  end;

end;

procedure TfrmTrocaMercadoria.lbl_edtQtdeExit(Sender: TObject);

   var
    Valor1 :Real;
    Valor2 :Real;
    Valor3 :Real;
begin

 if (lbl_edtNomeProdTroca.Text <> '') Then begin

  if lbl_edtQtde.Text <> '' Then begin// se for em branco executa rotina abaixo.

    if (Pos(',',lbl_edtQtde.Text)>0) and (lbl_edtQtde.Text <> '') Then begin

      Valor1 := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));
      Valor2 := StrToFloat(StringReplace(lbl_edtVlrVendaTroca.Text,ThousandSeparator,'',[rfReplaceAll]));

      if lbl_edtTotalDevolvido.Text > '0,00' Then begin

        Valor3 := StrToFloat(StringReplace(lbl_edtTotalDevolvido.Text,ThousandSeparator,'',[rfReplaceAll]));
        lbl_edtTotalDevolvido.Text := FormatFloat(',0.00',(Valor2 * Valor1 + Valor3));

      end else begin

        lbl_edtTotalDevolvido.Text := FormatFloat(',0.00',(Valor2 * Valor1));

      end;

    end else begin

      Valor1 := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));
      Valor2 := StrToFloat(StringReplace(lbl_edtVlrVendaTroca.Text,ThousandSeparator,'',[rfReplaceAll]));

      if lbl_edtTotalDevolvido.Text > '0,00' Then begin

        Valor3 := StrToFloat(StringReplace(lbl_edtTotalDevolvido.Text,ThousandSeparator,'',[rfReplaceAll]));
        lbl_edtTotalDevolvido.Text := FormatFloat(',0.00',(Valor2 * Valor1 + Valor3));

      end else begin

        lbl_edtTotalDevolvido.Text := FormatFloat(',0.00',(Valor2 * Valor1));

      end;
      
    end;{if}

  end;{if}

 end;{if cbo produto}


end;

procedure TfrmTrocaMercadoria.lbl_edtQtdeKeyPress(Sender: TObject;
  var Key: Char);
begin

if key=#13 Then begin

lbl_edtTotalDevolvido.SetFocus;

end;

end;

procedure TfrmTrocaMercadoria.lbl_edtTotalDevolvidoExit(Sender: TObject);

var

QtdeEstoque,VlrProduto,ValorCustoE,QtdeVenda,QtdeVendaProd,ValorCustoProd  : Real;
VlrProdutoProd : Real;
TotalCustoProd : String;
EstoqueFinal,TotalProdEstoque,TotalCusto,EstoqueFinalProd,TotalProdEstoqueProd : String;
IDProdQtdeEstoque, IDLocalEstoque : Integer;
ConfirmaDevolucao : Integer;

begin

  with dmModule do begin

  ConfirmaDevolucao := Application.MessageBox('Confirma a Devolu��o do Produto','Produto Devolvido para Troca',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

    if ConfirmaDevolucao = 6 Then begin

      if lbl_edtCodBarraTroca.Text <> '' Then begin

        ibEntrProdEstoque.Close;
        ibEntrProdEstoque.SQL.Clear;
        ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,TBLENTRADAESTOQUEPROD.IDLOCAL,'
        + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,TBLENTRADAESTOQUEPROD.ESTOQUEMIN,'
        + 'CADPRODUTOS.IDLOCAL As Estoque,CADPRODUTOS.NOME As NomeProd,CADPRODUTOS.VALORVENDAA,'
        + 'CADPRODUTOS.VALORCUSTO,CADPRODUTOS.TIPOPROD,CADPRODUTOS.CODBARRAS,CADPRODUTOS.CODBARRASAD FROM TBLENTRADAESTOQUEPROD '
        + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
        + 'WHERE CADPRODUTOS.CODBARRAS=''' + lbl_edtCodBarraTroca.Text + ''' OR CADPRODUTOS.CODBARRASAD=''' + lbl_edtCodBarraTroca.Text + '''');
        ibEntrProdEstoque.Open;


        ibProdutos.Close;
        ibProdutos.SQL.Clear;
        ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE CODBARRAS=''' + lbl_edtCodBarraTroca.Text + '''');
        ibProdutos.Open;

        IDProdQtdeEstoque := ibProdutos.FieldByName('IDPROD').AsInteger;
        IDLocalEstoque    := ibProdutos.FieldByName('IDLOCAL').AsInteger;

        lbl_edtNomeProdTroca.Text := ibEntrProdEstoque.FieldByName('NomeProd').AsString;
        lbl_edtVlrVendaTroca.Text := FormatFloat(CasasDecimais('Produtos'),ibEntrProdEstoque.FieldByName('VALORVENDAA').AsFloat);
        lbl_edtCodProdTroca.Text  := IntToStr(ibEntrProdEstoque.FieldByName('IDPROD').AsInteger);

     // end;  //ROTINA ABAIXO PARA SOMAR TOTAL DO ESTQUE E QUANTIDADE DO ESTOQUE

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


        ValorCustoE := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORCUSTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

        ValorCustoE := QtdeEstoque * ValorCustoE;

        TotalCusto := StringReplace(FloattoStr(ValorCustoE),ThousandSeparator,'',[rfReplaceAll]);
        TotalCusto := StringReplace(TotalCusto,DecimalSeparator,'.',[rfReplaceAll]);


         //se houver registro ele atribui na alteracao o vlr da variavel

         if ibEntrProdEstoque.RecordCount > 0 Then begin

           ibEntrProdEstoque.Close;
           ibEntrProdEstoque.SQL.Clear;
           ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
           +'QUANTIDADE=''' + (EstoqueFinal) + ''','
           +'TOTALCUSTO=''' + TotalCusto + ''','
           +'VLRTOTAL=''' + (TotalProdEstoque) +  ''' WHERE IDPROD=''' + IntToStr(IDProdQtdeEstoque) + '''');
           ibEntrProdEstoque.ExecSQL;


           ibEntrProdEstoque.Close;
           ibEntrProdEstoque.SQL.Clear;
           ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,'
           + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,TBLENTRADAESTOQUEPROD.ESTOQUEMIN,'
           + 'CADPRODUTOS.NOME As NomeProd,CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORCUSTO,'
           + 'CADPRODUTOS.TIPOPROD,CADPRODUTOS.CODBARRAS,CADPRODUTOS.CODBARRASAD FROM TBLENTRADAESTOQUEPROD '
           + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
           + 'WHERE CADPRODUTOS.CODBARRAS=''' + lbl_edtCodBarraTroca.Text + '''OR CADPRODUTOS.CODBARRASAD=''' + lbl_edtCodBarraTroca.Text + '''');
           ibEntrProdEstoque.Open;

           (ibEntrProdEstoque.FieldByName('VLRTOTAL')as TFloatField).DisplayFormat := CasasDecimais('Produtos');
           (ibEntrProdEstoque.FieldByName('VALORVENDAA')as TFloatField).DisplayFormat := CasasDecimais('Produtos');



         // lbl_edtQtde.SetFocus;

         //  if lbl_edtQtde.Text <> '' Then begin

           //lbl_edtQtde.SetFocus;
         //    lbl_edtCodBarras.SetFocus;
        //   lbl_edtCodBarraTroca.Clear;

         //  end;//if


         end else begin


           QtdeVendaProd   := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));

           EstoqueFinalProd := StringReplace(FloattoStr(QtdeVendaProd),ThousandSeparator,'',[rfReplaceAll]);
           EstoqueFinalProd := StringReplace(EstoqueFinalProd,DecimalSeparator,'.',[rfReplaceAll]);

           //AQUI VAI O CALCULO DO TOTAL CONFORME VENDE O PRODUTO
           VlrProdutoProd  := StrtoFloat(StringReplace(FloattoStr(ibProdutos.FieldByName('VALORVENDAA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           VlrProdutoProd  := QtdeVendaProd * VlrProdutoProd;

           TotalProdEstoqueProd := StringReplace(FloattoStr(VlrProdutoProd),ThousandSeparator,'',[rfReplaceAll]);
           TotalProdEstoqueProd := StringReplace(TotalProdEstoqueProd,DecimalSeparator,'.',[rfReplaceAll]);

           ValorCustoProd := StrtoFloat(StringReplace(FloattoStr(ibProdutos.FieldByName('VALORCUSTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           ValorCustoProd := QtdeVendaProd * ValorCustoProd;

           TotalCustoProd := StringReplace(FloattoStr(ValorCustoProd),ThousandSeparator,'',[rfReplaceAll]);
           TotalCustoProd := StringReplace(TotalCustoProd,DecimalSeparator,'.',[rfReplaceAll]);

           ibEntrProdEstoque.Close;
           ibEntrProdEstoque.SQL.Clear;
           ibEntrProdEstoque.SQL.Add('INSERT INTO TBLENTRADAESTOQUEPROD'
           + '(IDPROD,QUANTIDADE,TOTALCUSTO,VLRTOTAL,CODBARRAS,IDLOCAL) values '
           + '(''' + IntToStr(IDProdQtdeEstoque) + ''','
           + ' ''' + EstoqueFinalProd + ''','
           + ' ''' + TotalCustoProd + ''','
           + ' ''' + TotalProdEstoqueProd + ''','
           + ' ''' + lbl_edtCodBarraTroca.Text + ''','
           + ' ''' + IntToStr(IDLocalEstoque) + ''')');
           ibEntrProdEstoque.ExecSQL;


           ibEntrProdEstoque.Close;
           ibEntrProdEstoque.SQL.Clear;
           ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,'
           + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,TBLENTRADAESTOQUEPROD.ESTOQUEMIN,'
           + 'CADPRODUTOS.TIPOPROD,CADPRODUTOS.CODBARRAS,CADPRODUTOS.CODBARRASAD,'
           + 'CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORCUSTO FROM TBLENTRADAESTOQUEPROD '
           + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
           + 'WHERE CADPRODUTOS.CODBARRAS=''' + lbl_edtCodBarraTroca.Text + '''OR CADPRODUTOS.CODBARRASAD=''' + lbl_edtCodBarraTroca.Text + '''');
           ibEntrProdEstoque.Open;

           (ibEntrProdEstoque.FieldByName('VLRTOTAL')as TFloatField).DisplayFormat := CasasDecimais('Produtos');
           (ibEntrProdEstoque.FieldByName('VALORVENDAA')as TFloatField).DisplayFormat := CasasDecimais('Produtos');


           //  lbl_edtCodBarras.Clear;


           {lbl_edtQtde.SetFocus;

           if lbl_edtQtde.Text <> '' Then begin

             lbl_edtCodBarras.SetFocus;

           end;}

         end;

      end;//if label codbarras

////////////////////////////////////////////////////////////////////////////////

      if lbl_edtRefTroca.Text <> '' Then begin

        ibEntrProdEstoque.Close;
        ibEntrProdEstoque.SQL.Clear;
        ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,TBLENTRADAESTOQUEPROD.IDLOCAL,'
        + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,TBLENTRADAESTOQUEPROD.ESTOQUEMIN,'
        + 'CADPRODUTOS.IDLOCAL As Estoque,CADPRODUTOS.NOME As NomeProd,CADPRODUTOS.VALORVENDAA,CADPRODUTOS.REF,'
        + 'CADPRODUTOS.VALORCUSTO,CADPRODUTOS.TIPOPROD,CADPRODUTOS.CODBARRAS,CADPRODUTOS.CODBARRASAD FROM TBLENTRADAESTOQUEPROD '
        + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
        + 'WHERE CADPRODUTOS.REF=''' + lbl_edtRefTroca.Text + '''');
        ibEntrProdEstoque.Open;


        ibProdutos.Close;
        ibProdutos.SQL.Clear;
        ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE REF=''' + lbl_edtRefTroca.Text + '''');
        ibProdutos.Open;

        IDProdQtdeEstoque := ibProdutos.FieldByName('IDPROD').AsInteger;
        IDLocalEstoque    := ibProdutos.FieldByName('IDLOCAL').AsInteger;

        lbl_edtNomeProdTroca.Text := ibEntrProdEstoque.FieldByName('NomeProd').AsString;
        lbl_edtVlrVendaTroca.Text := FormatFloat(CasasDecimais('Produtos'),ibEntrProdEstoque.FieldByName('VALORVENDAA').AsFloat);
        lbl_edtCodProdTroca.Text  := IntToStr(ibEntrProdEstoque.FieldByName('IDPROD').AsInteger);

     // end;  //ROTINA ABAIXO PARA SOMAR TOTAL DO ESTQUE E QUANTIDADE DO ESTOQUE

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


        ValorCustoE := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORCUSTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

        ValorCustoE := QtdeEstoque * ValorCustoE;

        TotalCusto := StringReplace(FloattoStr(ValorCustoE),ThousandSeparator,'',[rfReplaceAll]);
        TotalCusto := StringReplace(TotalCusto,DecimalSeparator,'.',[rfReplaceAll]);


         //se houver registro ele atribui na alteracao o vlr da variavel

         if ibEntrProdEstoque.RecordCount > 0 Then begin

           ibEntrProdEstoque.Close;
           ibEntrProdEstoque.SQL.Clear;
           ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
           +'QUANTIDADE=''' + (EstoqueFinal) + ''','
           +'TOTALCUSTO=''' + TotalCusto + ''','
           +'VLRTOTAL=''' + (TotalProdEstoque) +  ''' WHERE IDPROD=''' + IntToStr(IDProdQtdeEstoque) + '''');
           ibEntrProdEstoque.ExecSQL;


           ibEntrProdEstoque.Close;
           ibEntrProdEstoque.SQL.Clear;
           ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,'
           + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,TBLENTRADAESTOQUEPROD.ESTOQUEMIN,'
           + 'CADPRODUTOS.NOME As NomeProd,CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORCUSTO,CADPRODUTOS.REF,'
           + 'CADPRODUTOS.TIPOPROD,CADPRODUTOS.CODBARRAS,CADPRODUTOS.CODBARRASAD FROM TBLENTRADAESTOQUEPROD '
           + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
           + 'WHERE CADPRODUTOS.REF=''' + lbl_edtRefTroca.Text + '''');
           ibEntrProdEstoque.Open;

           (ibEntrProdEstoque.FieldByName('VLRTOTAL')as TFloatField).DisplayFormat := CasasDecimais('Produtos');
           (ibEntrProdEstoque.FieldByName('VALORVENDAA')as TFloatField).DisplayFormat := CasasDecimais('Produtos');


         end else begin


           QtdeVendaProd   := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));

           EstoqueFinalProd := StringReplace(FloattoStr(QtdeVendaProd),ThousandSeparator,'',[rfReplaceAll]);
           EstoqueFinalProd := StringReplace(EstoqueFinalProd,DecimalSeparator,'.',[rfReplaceAll]);

           //AQUI VAI O CALCULO DO TOTAL CONFORME VENDE O PRODUTO
           VlrProdutoProd  := StrtoFloat(StringReplace(FloattoStr(ibProdutos.FieldByName('VALORVENDAA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           VlrProdutoProd  := QtdeVendaProd * VlrProdutoProd;

           TotalProdEstoqueProd := StringReplace(FloattoStr(VlrProdutoProd),ThousandSeparator,'',[rfReplaceAll]);
           TotalProdEstoqueProd := StringReplace(TotalProdEstoqueProd,DecimalSeparator,'.',[rfReplaceAll]);

           ValorCustoProd := StrtoFloat(StringReplace(FloattoStr(ibProdutos.FieldByName('VALORCUSTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           ValorCustoProd := QtdeVendaProd * ValorCustoProd;

           TotalCustoProd := StringReplace(FloattoStr(ValorCustoProd),ThousandSeparator,'',[rfReplaceAll]);
           TotalCustoProd := StringReplace(TotalCustoProd,DecimalSeparator,'.',[rfReplaceAll]);

           ibEntrProdEstoque.Close;
           ibEntrProdEstoque.SQL.Clear;
           ibEntrProdEstoque.SQL.Add('INSERT INTO TBLENTRADAESTOQUEPROD'
           + '(IDPROD,QUANTIDADE,TOTALCUSTO,VLRTOTAL,CODBARRAS,IDLOCAL) values '
           + '(''' + IntToStr(IDProdQtdeEstoque) + ''','
           + ' ''' + EstoqueFinalProd + ''','
           + ' ''' + TotalCustoProd + ''','
           + ' ''' + TotalProdEstoqueProd + ''','
           + ' ''' + lbl_edtCodBarraTroca.Text + ''','
           + ' ''' + IntToStr(IDLocalEstoque) + ''')');
           ibEntrProdEstoque.ExecSQL;


           ibEntrProdEstoque.Close;
           ibEntrProdEstoque.SQL.Clear;
           ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,'
           + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,TBLENTRADAESTOQUEPROD.ESTOQUEMIN,'
           + 'CADPRODUTOS.TIPOPROD,CADPRODUTOS.CODBARRAS,CADPRODUTOS.CODBARRASAD,CADPRODUTOS.REF,'
           + 'CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORCUSTO FROM TBLENTRADAESTOQUEPROD '
           + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
           + 'WHERE CADPRODUTOS.REF=''' + lbl_edtRefTroca.Text + '''');
           ibEntrProdEstoque.Open;

           (ibEntrProdEstoque.FieldByName('VLRTOTAL')as TFloatField).DisplayFormat := CasasDecimais('Produtos');
           (ibEntrProdEstoque.FieldByName('VALORVENDAA')as TFloatField).DisplayFormat := CasasDecimais('Produtos');


         end;

      end;//if label codbarras

////////////////////////////////////////////////////////////////////////////////

    end else begin

    lbl_edtTotalDevolvido.Text := '0,00';

    end;//if confirma devolu��o

  end;//with

end;

procedure TfrmTrocaMercadoria.lbl_edtTotalDevolvidoKeyPress(
  Sender: TObject; var Key: Char);
begin

if key=#13 Then begin

lbl_edtCodBarraTroca.SetFocus;
lbl_edtNomeProdTroca.Clear;
lbl_edtQtde.Text := '1';
lbl_edtCodBarraTroca.Clear;
lbl_edtCodProdTroca.Clear;

end;

end;

procedure TfrmTrocaMercadoria.lbl_edtCodBarraTrocaKeyPress(Sender: TObject;
  var Key: Char);
begin

if key=#13 Then begin

lbl_edtTotalDevolvido.SetFocus;

end;

end;

procedure TfrmTrocaMercadoria.lbl_edtTotalVendaKeyPress(Sender: TObject;
  var Key: Char);

  var
  Valor1,Valor2,Valor3,Valor4 : Real;

begin

  with dmModule do begin

    if key=#13 Then begin

      GravaTroca;

      lbl_edtCodBarras.SetFocus;
      lbl_edtCodProd.Clear;
      lbl_edtCodBarras.Clear;
      lbl_edtRef.Clear;
      lbl_edtNomeProd.Clear;
      lbl_edtQtdeRetirada.Text := '1';
      lbl_edtVlrVenda.Clear;
      lbl_edtTotalVenda.Text := '0,00';

    end;//if

  end;//with

end;

procedure TfrmTrocaMercadoria.lbl_edtFuncComissaoExit(Sender: TObject);
begin

  with dmModule do begin

    Commit(ibUser);
    ibUser.Close;
    ibUser.SQL.Clear;
    ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + lbl_edtFuncComissao.Text + '''');
    ibUser.Open;

    if ibUser.RecordCount > 0 Then begin

      lbl_NomeFuncComissao.Caption := 'Funcion�rio:'+ibUser.FieldByName('LOGIN').AsString;

    end;//if

  end;//with

end;

procedure TfrmTrocaMercadoria.lbl_edtFuncComissaoKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtCodBarraTroca.SetFocus;

  end;//if

end;

procedure TfrmTrocaMercadoria.lbl_edtTotalRetiradoExit(Sender: TObject);

var
Valor1,Valor2,Valor3 : Real;

begin

  if lbl_edtTotalRetirado.Text <> '' Then begin// se for em branco executa rotina abaixo.

    if (Pos(',',lbl_edtTotalRetirado.Text)>0) and (lbl_edtTotalRetirado.Text <> '') Then begin

      Valor1 := StrToFloat(StringReplace(lbl_edtTotalRetirado.Text,ThousandSeparator,'',[rfReplaceAll]));
      Valor2 := StrToFloat(StringReplace(lbl_edtTotalDevolvido.Text,ThousandSeparator,'',[rfReplaceAll]));

      if Valor1 > Valor2 Then begin

        Valor3 := Valor1 - Valor2;

        lbl_edtVlrDiferenca.Text := FormatFloat(',0.00',(Valor3));

      end;


    end else begin

      Valor1 := StrToFloat(StringReplace(lbl_edtTotalRetirado.Text,ThousandSeparator,'',[rfReplaceAll]));
      Valor2 := StrToFloat(StringReplace(lbl_edtTotalDevolvido.Text,ThousandSeparator,'',[rfReplaceAll]));

      if Valor1 > Valor2 Then begin

        Valor3 := Valor1 - Valor2;

        lbl_edtVlrDiferenca.Text := FormatFloat(',0.00',(Valor3));

      end;

    end;{if}

  end;{if}

end;

procedure TfrmTrocaMercadoria.lbl_edtTotalVendaExit(Sender: TObject);

var

Valor1,Valor2,Valor3 : Real;

begin

  if lbl_edtTotalVenda.Text <> '' Then begin// se for em branco executa rotina abaixo.

    if (Pos(',',lbl_edtTotalVenda.Text)>0) and (lbl_edtTotalVenda.Text <> '') Then begin

      Valor1 := StrToFloat(StringReplace(lbl_edtTotalVenda.Text,ThousandSeparator,'',[rfReplaceAll]));

        if lbl_edtTotalRetirado.Text > '0,00' Then begin

          Valor2 := StrToFloat(StringReplace(lbl_edtTotalRetirado.Text,ThousandSeparator,'',[rfReplaceAll]));

          Valor3:= Valor1 + Valor2;

          lbl_edtTotalRetirado.Text := FormatFloat(',0.00',(Valor3));

        end else begin

          lbl_edtTotalRetirado.Text := FormatFloat(',0.00',(Valor1));

        end;//if

    end else begin

      Valor1 := StrToFloat(StringReplace(lbl_edtTotalVenda.Text,ThousandSeparator,'',[rfReplaceAll]));

        if lbl_edtTotalRetirado.Text > '0,00' Then begin

          Valor2 := StrToFloat(StringReplace(lbl_edtTotalRetirado.Text,ThousandSeparator,'',[rfReplaceAll]));

          Valor3:= Valor1 + Valor2;

          lbl_edtTotalRetirado.Text := FormatFloat(',0.00',(Valor3));

        end else begin

          lbl_edtTotalRetirado.Text := FormatFloat(',0.00',(Valor1));

        end;//if

    end;{if}

  end;{if}

end;

procedure TfrmTrocaMercadoria.cboTipoPagtoClick(Sender: TObject);
begin
lbl_edtTotalRetiradoExit(Sender);
end;

procedure TfrmTrocaMercadoria.lbl_edtRefTrocaExit(Sender: TObject);
begin

  with dmModule do begin

      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE REF=''' + lbl_edtRefTroca.Text + '''');
      ibProdutos.Open;

      lbl_edtNomeProdTroca.Text := ibProdutos.FieldByName('NOME').AsString;
      lbl_edtVlrVendaTroca.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);
      lbl_edtCodProdTroca.Text  := IntToStr(ibProdutos.FieldByName('IDPROD').AsInteger);

      lbl_edtQtdeExit(Sender);

  end;//with

end;

procedure TfrmTrocaMercadoria.lbl_edtRefExit(Sender: TObject);
begin

  with dmModule do begin

      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE REF=''' + lbl_edtRef.Text + '''');
      ibProdutos.Open;

      lbl_edtNomeProd.Text := ibProdutos.FieldByName('NOME').AsString;
      lbl_edtVlrVenda.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);
      lbl_edtCodProd.Text  := IntToStr(ibProdutos.FieldByName('IDPROD').AsInteger);

  end;//with
  
end;

procedure TfrmTrocaMercadoria.lbl_edtRefKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtQtdeRetirada.SetFocus;

  end;//if

end;

procedure TfrmTrocaMercadoria.lbl_edtRefTrocaKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtQtde.SetFocus;

  end;//if

end;

end.
