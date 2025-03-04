unit untServicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, 
  classComboBox, IBQuery, DB, mxFlatControls, axCtrls, jpeg, RxGIF,
  Buttons;

type
  TfrmVendasLoja = class(TForm)
    imgFundoCx: TImage;
    lbl_CodVenda: TLabel;
    Shape1: TShape;
    listboxCupom: TListBox;
    lbl_F2: TLabel;
    lbl_F3: TLabel;
    lbl_F4: TLabel;
    lbl_F7: TLabel;
    lbl_f9: TLabel;
    lbl_f8: TLabel;
    lbl_Cupom: TLabel;
    lbl_F1: TLabel;
    lbl_edtSubTotal: TLabel;
    lbl_TipoPreco: TLabel;
    lbl_edtCodCartao: TLabeledEdit;
    lbl_edtCodBarras: TLabeledEdit;
    lbl_edtCodProd: TLabeledEdit;
    lbl_edtQtde: TLabeledEdit;
    lbl_X: TLabel;
    lbl_edtVlrUnit: TLabeledEdit;
    lbl_edtIgual: TLabel;
    lbl_edtVlrTotal: TLabeledEdit;
    ListBoxDadosEmpresa: TListBox;
    lbl_edtInformacao: TLabel;
    lbl_CancelaItem: TLabel;
    lbl_Data: TLabel;
    lbl_Func: TLabel;
    Shape2: TShape;
    lbl_Dt: TLabel;
    Label2: TLabel;
    lbl_F5: TLabel;
    lbl_F6: TLabel;
    lbl_VendaMetro: TLabel;
    Label1: TLabel;
    lbl_edtIDProdCX: TLabeledEdit;
    Shape3: TShape;
    lbl_NomeProd: TLabel;
    lbl_TotalVendido: TLabel;
    Shape5: TShape;
    lbl_Sangria: TLabel;
    lbl_edtFuncComissao: TLabeledEdit;
    lbl_NomeFuncComissao: TLabel;
    ibeaExcluirVenda: TSpeedButton;

    procedure DesabilitaCampos(opcao : Boolean);
    procedure LimpaVariavel;
    procedure LimpaCampos;
    procedure Commit(IBQueryExec : TIBQuery);
    procedure GravaCx;
    procedure GravaCancelamento;
    procedure ExecSELECTTipoVenda;
    procedure ExecSELECTProdutos;
    procedure ExecSELECTCliente;
    procedure FormShow(Sender: TObject);
    procedure cboClienteClick(Sender: TObject);
    procedure cboProdutoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgServsCellClick(Column: TColumn);
    procedure lbl_edtQtdeExit(Sender: TObject);
    procedure lbl_edtQtdeKeyPress(Sender: TObject; var Key: Char);
    procedure ibeaExcluirVendaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbl_edtCodProdExit(Sender: TObject);
    procedure lbl_edtCodProdKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtVlrTotalKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtCodBarrasChange(Sender: TObject);
    procedure lbl_edtCodBarrasKeyPress(Sender: TObject; var Key: Char);
    procedure cboTipoCompromissoChange(Sender: TObject);
    procedure lbl_edtVlrSangriaKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtCodBarrasExit(Sender: TObject);
    procedure lbl_edtDescVendaExit(Sender: TObject);
    procedure lbl_edtDescVendaKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtCodCartaoExit(Sender: TObject);
    procedure lbl_edtFuncComissaoKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtFuncComissaoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendasLoja: TfrmVendasLoja;
  MontaColunas : Boolean;

  //variaveis para select do cliente
  IDClass : Integer;
  IDCliente : TClasseCombo;

  //variavel para select dos produtos
  IDProduto : TClasseCombo;



  IDAnimalOc : TClasseCombo;
  IDClienteOc         : TClasseCombo;
  StringClienteOc     : String;
  IDTipoProd : TClasseCombo;

  //variaveis para trazer o produto ao clicar no tipo prod do combo
  ClassTipoProd : TClasseCombo;
  StringTipoProd : String;

  //variavel para trazer os dados do produto ao clicar no combo produto.
  IDClassProduto : TClasseCombo;

  ConfirmaMSG : Integer;

  //variaveis para abater do entrada estoque se tiver estoque do mesmo.
  ClassProdEstoque    : TClasseCombo;
  StringProdEstoque   :String;
  ProdutosEstoque : Integer;


  //variaveis para calcular  a saida do estoque nas vendas 
  QtdeEstoque : Real;
  QtdeVenda   : Real;
  EstoqueFinal : String;
  VlrProduto  :Real;
  TotalProdEstoque : String;

  IncluiProd : Boolean;

  ClassVendaProduto   : TClasseCombo;
  StringProd          : String;
  ValorVendaAlteracao : String;
  QtdeVendaPista : String;
  InsereVenda : Boolean;
  IDCli            : TClasseCombo;
  StringCli        : String;
  ValorUnit: String;
  ValorTotal : String;
  ValorA : String;
  ValorB : String;
  ValorC : String;
  ValorD : String;
  ValorMT : String;
  QtdeProd : String;
  TotalSaidaEstoque : String;
  IDProdMovEstoque : Integer;
  ClassGravaAnimal : TClasseCombo;
  StringGravaAnimal : String;
  IDAlteraProduto : Integer;

  ClassTipoProduto : TClasseCombo;
  StringTipoProduto : String;

  //variavel para trazer o tipo de produto e gravar na vendaloja
  ProdutoLoja : Integer;

  //variavel para deletar o produto refente oa id da venda
  IDServVenda : Integer;

  //variaveis para devolver a qtde do produto em estoque caso o cliente cancele a compra.
  ClassCancProdEstoq : TClasseCombo;
  IDProdCancelado : Integer;
  //ref a qtde do estoque
  QtdeProdEstoq : Real;
  QtdeCanc : Real;
  QtdeEstoq : String;
  //ref ao valor total do produto
  VlrProdestoq : Real;
  TotalProdEstoq : String;

  IDVendasServs : Integer;
  TipodoProduto : Integer;
  IDGravaProd : Integer;

  IDVenda : Integer;

  //variaveia ara alterar na venda
  QtdeVendaLoja : String;

  LimpaProdVenda : String;

  ClassProdEstoqueC : TClasseCombo;//variavel para devolver no estoque em caso de cancelamento do pedido

  IDTipoCompr : TClasseCombo;//variavel para select do tipo de compromisso

  //variaveis para gravar na tabela de servicos o tipo de compromisso
  ClassTipoCompr : TClasseCombo;
  StringTipoCompr : String;

  IDVendaLoja : Integer;


  ClassTipoVenda : TClasseCombo;
  Custo : Real;
  QtdeVendida : Real;

  ValorSangria : String;

  PathSistema : String;

  TipoPreco : String;

  CancelarProduto : Boolean;
  ImagemProduto : String;
  LocalEstoque : String;

  ValorDesconto : String;

  IDProdAltera : TClasseCombo;

  IDSelectAnimal : TClasseCombo;

  IDUsuarioLoginNomeProd : String;

  ConfirmaVendaCx : Boolean;

  IDProdVenda : Integer;

implementation

uses untdmModule,funcPosto, untRecebeLoja, uBuscaProdutos, BuscaClientes,
 unClientes, untManutCx, untProdutos_MPrima, untSangria, untTroca;
  //untEstoqueRapido;

{$R *.dfm}

procedure TfrmVendasLoja.DesabilitaCampos(opcao : Boolean);

begin

//  lbl_edtCodCli.Enabled := opcao;
//  cboCliente.Enabled := opcao;
 //lbl_edtConvenio.Enabled := opcao;
  lbl_edtCodBarras.Enabled := opcao;
  lbl_edtCodProd.Enabled := opcao;
//  cboProduto.Enabled := opcao;
 // lbl_edtEstoque.Enabled := opcao;
  lbl_edtQtde.Enabled := opcao;
  lbl_edtVlrUnit.Enabled := opcao;
  lbl_edtVlrTotal.Enabled := opcao;
//  lbl_edtDescVenda.Enabled := opcao;

end;

procedure TfrmVendasLoja.LimpaVariavel;

begin

LimpaProdVenda := '0';


end;

procedure TfrmVendasLoja.LimpaCampos;

begin

 // lbl_edtCodCli.Clear;
//  cboCliente.ClearSelection;
  //  lbl_edtConvenio.Clear;
//  cboProduto.ClearSelection;
  lbl_edtCodBarras.Clear;
 // lbl_edtEstoque.Clear;
  lbl_edtCodProd.Clear;
  lbl_TipoPreco.Caption := '';
 // lbl_Sangria.Caption := '';
 lbl_CancelaItem.Caption := '';
 
end;

procedure TfrmVendasLoja.Commit(IBQueryExec : TIBQuery);

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

procedure TfrmVendasLoja.GravaCx;

var

TipoVenda,TotalCusto,TipoSaida,NomeProduto,TotalQProdVendido,TotalPA : String;
ValorCustoE,QtdeProdutoV,QtdeVendida,QtdeLabel,ValorVendido,ValorTotalPA : Real;

TotalPB,TotalPC,QtdeMinimaEstoque,QtdeTotalEstoqueVenda,CodVendaCx,InfoEstoqueMinimo : String;
ValorTotalPB,ValorTotalPC,TotalPALabel,TotalPBLabel,TotalPCLabel,QtdeEstoqueVenda : Real;
IDVendaCaixa,IDFuncCX,IDFuncComissao : Integer;

MinimoTabela : Real;
MetroRestante : String;

begin

  with dmModule do begin

  //ROTINA PARA ABATER DO ESTOQUE CONFORME VENDE.
  // if cboProduto.ItemIndex > -1 Then begin  
//    if lbl_CancelaItem.Caption = '' Then begin

 //   ClassProdEstoque    := TClasseCombo( cboProduto.Items.Objects[cboProduto.ItemIndex] );
   // StringProdEstoque   := ' ''' + InttoStr( ClassProdEstoque.ID ) + ''',';

//    if  lbl_CodVenda.Caption <> '' Then  begin


      ibEntrProdEstoque.Close;      
      ibEntrProdEstoque.SQL.Clear;
      ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,'
      + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,TBLENTRADAESTOQUEPROD.ESTOQUEMIN,'
      + 'CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORCUSTO,CADPRODUTOS.TIPOPROD FROM TBLENTRADAESTOQUEPROD '
      + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
      + 'WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + lbl_edtIDProdCX.Text + '''');
      ibEntrProdEstoque.Open;

////////////////////////////////////////////////////////////////////////////////

//ESTRUTURA PARA AVISO DO ESTOQUE M�NIMO

     if ibEntrProdEstoque.RecordCount > 0 Then begin

       QtdeEstoqueVenda := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

       QtdeTotalEstoqueVenda := StringReplace(FloattoStr(QtdeEstoqueVenda),ThousandSeparator,'',[rfReplaceAll]);
       QtdeTotalEstoqueVenda := StringReplace(QtdeTotalEstoqueVenda,DecimalSeparator,'.',[rfReplaceAll]);

       //  TotaldoEstoque := StrToInt(FormatFloat(CasasDecimais('Produtos'),QtdeTotalEstoqueVenda));

       MinimoTabela := StrToFloat(StringReplace(FloatToStr(ibEntrProdEstoque.FieldByName('ESTOQUEMIN').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

       QtdeMinimaEstoque := StringReplace(FloatToStr(MinimoTabela),ThousandSeparator,'',[rfReplaceAll]);
       QtdeMinimaEstoque := StringReplace(QtdeMinimaEstoque,DecimalSeparator,'.',[rfReplaceAll]);


       ibConfig.Close;
       ibConfig.SQL.Clear;
       ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
       ibConfig.Open;

       InfoEstoqueMinimo := ibConfig.FieldByName('ESTOQUEMINIMO').AsString;

     //  TotaldoMinimo := StrToInt(QtdeMinimaEstoque);

       if InfoEstoqueMinimo = 'Sim' Then begin

         if (QtdeMinimaEstoque >= QtdeTotalEstoqueVenda) Then begin

           Application.MessageBox('Aten��o o Estoque est� em sua Quantidade M�nima!!!','Notifica��o: Estoque inferior ao m�nimo.',+MB_OK+MB_ICONWARNING);

         end;//if

       end;//if

     end;{if recordcount}

////////////////////////////////////////////////////////////////////////////////


      //ROTINA ABAIXO PARA SOMAR TOTAL DO ESTQUE E QUANTIDADE DO ESTOQUE
     if lbl_edtIDProdCX.Text <> '' Then begin

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
       +'VLRTOTAL=''' + (TotalProdEstoque) +  ''' WHERE IDPROD=''' + lbl_edtIDProdCX.Text + '''');
       ibEntrProdEstoque.ExecSQL;
       Commit(ibEntrProdEstoque);

     end;//if label IDPRODCX




   {  if lbl_TipoPreco.Caption = 'Venda por MT' Then begin

     ibProdutos.Close;
     ibProdutos.SQL.Clear;
     ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE IDPROD=''' + lbl_edtIDProdCX.Text + '''');
     ibProdutos.Open;

     MetroProd      :=  StrtoFloat(StringReplace(FloattoStr(ibProdutos.FieldByName('MTS').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
     MetroVendido   :=  StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));

     MetroProd := MetroProd - MetroVendido;

     MetroRestante := StringReplace(FloattoStr(MetroProd),ThousandSeparator,'',[rfReplaceAll]);
     MetroRestante := StringReplace(MetroRestante,DecimalSeparator,'.',[rfReplaceAll]);

     if ibProdutos.RecordCount > 0 Then begin

     ibProdutos.Close;
     ibProdutos.SQL.Clear;
     ibProdutos.SQL.Add('UPDATE CADPRODUTOS SET '
     + 'MTS = ''' + MetroRestante + ''' WHERE IDPROD=''' + lbl_edtIDProdCX.Text + '''');
     ibProdutos.Open;

     end;//if recordcount produtos

     end;}//if

//   end;//if cod prod

   //ROTINA PARA CALCULO DO CUSTO VENDIDO
  //  If cboProduto.ItemIndex = -1 Then begin

   if lbl_NomeProd.Caption = '' Then begin

      StringProd := ' '' 0 '',';
      TotalCusto := '0';

    end else begin

    //  ClassVendaProduto   := TClasseCombo( cboProduto.Items.Objects[cboProduto.ItemIndex] );
      StringProd          := lbl_edtIDProdCX.Text;


      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT CADPRODUTOS.*,'
      + 'LOCALESTOCAGEM.NOME As Estoque FROM CADPRODUTOS '
      + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE '
      + 'WHERE IDPROD=''' + StringProd + '''');
      ibProdutos.Open;

      LocalEstoque := ibProdutos.FieldByName('Estoque').AsString;
      NomeProduto  := ibProdutos.FieldByName('NOME').AsString;


      Custo := StrtoFloat(StringReplace(FloattoStr(ibProdutos.FieldByName('VALORCUSTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
      QtdeVendida := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));
      Custo := QtdeVendida * Custo;

      TotalCusto := StringReplace(FloattoStr(Custo),ThousandSeparator,'',[rfReplaceAll]);
      TotalCusto := StringReplace(TotalCusto,DecimalSeparator,'.',[rfReplaceAll]);


    end;

    if lbl_Func.Caption <> '' Then begin

      ibUser.Close;
      ibUser.SQL.Clear;
      ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE NOME=''' + lbl_Func.Caption+ '''');
      ibUser.Open;

      IDFuncCX := ibUser.FieldByName('IDUSER').AsInteger;

    end;//if labelfunc

    if InsereVenda Then begin

       ibServsVendasCli.Close;
       ibServsVendasCli.SQL.Clear;
       ibServsVendasCli.SQL.Add('INSERT INTO TBLSERVICOSVENDASCLI '
       + '(IDPROD,IDFUNC,DATA) values '
       + '(''' + StringProd + ''','
       + ' ''' + IntToStr(IDFuncCX) + ''','
       + ' ''' + FormatDateTime('mm-dd-yyyy',now) + ''')');
       ibServsVendasCli.ExecSQL;
       Commit(ibServsVendasCli);
 //    + ' ''' + FormatDateTime('hh:mm:ss',now) + ''')');   ,HORA


       CodVendaCx := (lbl_CodVenda.Caption);

       IDVendaCaixa := StrToInt(CodVendaCx);

       //select para trazer o ultimo id
       ibServsVendasCli.Close;
       ibServsVendasCli.SQL.Clear;
       ibServsVendasCli.SQL.Add('SELECT * FROM TBLSERVICOSVENDASCLI WHERE IDSERVSVENDA=''' + IntToStr(IDVendaCaixa) + '''');
       ibServsVendasCli.Open;


       //   TipodoProduto := ibServsVenda.FieldByName('IDTIPOPROD').AsInteger;
       //  IDGravaProd   := ibServsVenda.FieldByName('IDPROD').AsInteger;
       //   lbl_CodVenda.Caption := IntToStr(ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger);


           if lbl_CodVenda.Caption = '1' Then begin

            IDVendasServs := 1;

          end else begin

            IDVendasServs := ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger;

          end;

            InsereVenda := False;

    end;//if inserevenda

          ValorUnit := StringReplace(lbl_edtVlrUnit.Text,ThousandSeparator,'',[rfReplaceAll]);
          ValorUnit := StringReplace(ValorUnit,DecimalSeparator,'.',[rfReplaceAll]);
          if ValorUnit  = '' Then
             ValorUnit := '0';


         { if lbl_TipoPreco.Caption = '' Then begin

          TipoPreco := 'A';

          end;}

          if lbl_TipoPreco.Caption = '' Then begin

          ValorTotal := StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]);
          ValorTotal := StringReplace(ValorTotal,DecimalSeparator,'.',[rfReplaceAll]);

          end else begin

             ValorTotal := '0';

          end;

          if lbl_TipoPreco.Caption = 'Pre�o de Venda B' Then begin

          ValorB := StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]);
          ValorB := StringReplace(ValorB,DecimalSeparator,'.',[rfReplaceAll]);

          end else begin

             ValorB := '0';

          end;

         if lbl_TipoPreco.Caption = 'Pre�o de Venda C' Then begin

          ValorC := StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]);
          ValorC := StringReplace(ValorC,DecimalSeparator,'.',[rfReplaceAll]);

         end else begin

             ValorC := '0';

         end;

         if lbl_TipoPreco.Caption = 'Pre�o de Venda D' Then begin

          ValorD := StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]);
          ValorD := StringReplace(ValorD,DecimalSeparator,'.',[rfReplaceAll]);

         end else begin

             ValorD := '0';

         end;

        { if TipoPreco = 'MT' Then begin

          ValorMT := StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]);
          ValorMT := StringReplace(ValorMT,DecimalSeparator,'.',[rfReplaceAll]);

         end else begin

             ValorMT := '0';

         end;}

          QtdeProd := StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]);
          QtdeProd := StringReplace(QtdeProd,DecimalSeparator,'.',[rfReplaceAll]);
          if QtdeProd  = '' Then
             QtdeProd := '0';


       {   if lbl_TipoPreco.Caption = 'SANGRIA' Then begin

            TipoSaida := lbl_TipoPreco.Caption;

          end;

          ValorSangria := StringReplace(lbl_edtVlrSangria.Text,ThousandSeparator,'',[rfReplaceAll]);
          ValorSangria := StringReplace(ValorSangria,DecimalSeparator,'.',[rfReplaceAll]);
          if ValorSangria  = '' Then
             ValorSangria := '0'; }


          if lbl_NomeFuncComissao.Caption <> '' Then begin

            IDFuncComissao := StrToInt(lbl_edtFuncComissao.Text);

          end;

          ibServsVenda.Close;
          ibServsVenda.SQL.Clear;
          ibServsVenda.SQL.Add('INSERT INTO TBLSERVICOSVENDAS '
          + ' (IDPROD,VLRUNIT,VLRTOTAL,VALORB,VALORC,VALORD,ESTOQUE,IDSERVSVENDA,'
          + 'TOTALCUSTO,NOMEPROD,QTDE,IDFUNC,IDFUNCCOMISSAO,DATA,HORA) values '
          + ' (''' + StringProd  + ''','
          + ' ''' + ValorUnit + ''','
          + ' ''' + ValorTotal + ''','
          + ' ''' + ValorB + ''','
          + ' ''' + ValorC + ''','
          + ' ''' + ValorD + ''','
          + ' ''' + LocalEstoque + ''','
          + ' ''' + IntToStr(IDVendasServs) + ''','
          + ' ''' + TotalCusto + ''','
          + ' ''' + NomeProduto + ''','
          + ' ''' + QtdeProd + ''','
          + ' ''' + IntToStr(IDFuncCX) + ''','
          + ' ''' + IntToStr(IDFuncComissao) + ''','
          + ' ''' + FormatDateTime('mm-dd-yyyy',now) + ''','
          + ' ''' + FormatDateTime('hh:mm:ss',now) + ''')');
          ibServsVenda.ExecSQL;

          Commit(ibServsVenda);

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

   //     IDGravaProd   := ibServsVenda.FieldByName('IDPROD').AsInteger;

        lbl_edtCodBarras.Clear;
        lbl_edtCodProd.Clear;
//    end;//if label cancela item

  end;{with}

end;

procedure TfrmVendasLoja.GravaCancelamento;

var

QtdeEstoque, QtdeVenda, QtdeEstoqueVenda : Real;
EstoqueFinal, QtdeTotalEstoqueVenda : String;

begin

  with dmModule do begin

    ibServsVenda.Close;
    ibServsVenda.SQL.Clear;
    ibServsVenda.SQL.Add('DELETE FROM TBLSERVICOSVENDAS WHERE IDSERVSVENDA=''' + lbl_CodVenda.Caption + ''' and TBLSERVICOSVENDAS.IDPROD=''' + lbl_edtIDProdCX.Text + '''');
    ibServsVenda.Open;

    ibMovEst.Close;                                //
    ibMovEst.SQL.Clear;
    ibMovEst.SQL.Add('DELETE FROM TBLMOVESTOQUE WHERE IDVENDA=''' + lbl_CodVenda.Caption + ''' and IDPROD=''' + lbl_edtIDProdCX.Text + '''');
    ibMovEst.Open;

    ibAReceber.Close;                                     //
    ibAReceber.SQL.Clear;
    ibAReceber.SQL.Add('DELETE FROM TBLCONTASARECEBER WHERE IDSERVSVENDA =''' + lbl_CodVenda.Caption + ''' and IDPROD=''' + lbl_edtIDProdCX.Text + '''');
    ibAReceber.Open;


//    if lbl_edtCodProd.Text <> '' Then begin

    ibEntrProdEstoque.Close;
    ibEntrProdEstoque.SQL.Clear;
    ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,'
    + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,TBLENTRADAESTOQUEPROD.ESTOQUEMIN,'
    + 'CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORCUSTO,CADPRODUTOS.TIPOPROD FROM TBLENTRADAESTOQUEPROD '
    + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
    + 'WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + lbl_edtIDProdCX.Text + '''');
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
  {  VlrProduto  := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORVENDAA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

    VlrProduto  := QtdeEstoque * VlrProduto;

    TotalProdEstoque := StringReplace(FloattoStr(VlrProduto),ThousandSeparator,'',[rfReplaceAll]);
    TotalProdEstoque := StringReplace(TotalProdEstoque,DecimalSeparator,'.',[rfReplaceAll]);


    ValorCustoE := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORCUSTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

    ValorCustoE := QtdeEstoque * ValorCustoE;

    TotalCusto := StringReplace(FloattoStr(ValorCustoE),ThousandSeparator,'',[rfReplaceAll]);
    TotalCusto := StringReplace(TotalCusto,DecimalSeparator,'.',[rfReplaceAll]); }

     //ROTINA PARA O ESTOQUE MINIMO
     if ibEntrProdEstoque.RecordCount > 0 Then begin

       QtdeEstoqueVenda := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

       QtdeTotalEstoqueVenda := StringReplace(FloattoStr(QtdeEstoqueVenda),ThousandSeparator,'',[rfReplaceAll]);
       QtdeTotalEstoqueVenda := StringReplace(QtdeTotalEstoqueVenda,DecimalSeparator,'.',[rfReplaceAll]);

    //   TotaldoEstoque := StrToInt(QtdeTotalEstoqueVenda);

       ibEntrProdEstoque.Close;
       ibEntrProdEstoque.SQL.Clear;
       ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
       +'QUANTIDADE=''' + (EstoqueFinal) + ''' WHERE IDPROD=''' + lbl_edtIDProdCX.Text + '''');
     //  +'TOTALCUSTO=''' + TotalCusto + ''','
     //  +'VLRTOTAL=''' + (TotalProdEstoque) +  ''' 
       ibEntrProdEstoque.ExecSQL;
       Commit(ibEntrProdEstoque);

     end;//if recordcount

//    end;{if lblcodprod}

////////////////////////////////////////////////////////////////////////////////


  end;//with

end;

procedure TfrmVendasLoja.ExecSELECTTipoVenda;

begin

 { with dmModule do begin

    ibTipoVenda.Close;
    ibTipoVenda.SQL.Clear;
    ibTipoVenda.SQL.Add('SELECT * FROM TBLTIPOVENDA');
    ibTipoVenda.Open;

    cboTipoVenda.Clear;

    while not ibTipoVenda.Eof do begin

      ClassTipoVenda := TClasseCombo.Create;
      ClassTipoVenda.ID := ibTipoVenda.FieldByName('IDTIPOVENDA').AsInteger;
      cboTipoVenda.Items.AddObject(ibTipoVenda.FieldByName('TIPOVENDA').AsString,ClassTipoVenda);
      ibTipoVenda.Next; }
      
 //   end;{while}

//  end;{with}

end;


procedure TfrmVendasLoja.ExecSELECTProdutos;

begin

{  with dmModule do begin

    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS ORDER BY NOME');
  // + 'INNER JOIN TBLTIPOPRODUTO ON CADPRODUTOS.TIPOPROD=TBLTIPOPRODUTO.IDTIPOPROD WHERE TBLTIPOPRODUTO.NOME=''LOJA''');
    ibProdutos.Open;

    cboProduto.Clear;

    while not ibProdutos.Eof do begin

      IDProduto    := TClasseCombo.Create;
      IDProduto.ID := ibProdutos.FieldByName('IDPROD').AsInteger;
      cboProduto.Items.AddObject(ibProdutos.FieldByName('NOME').AsString,IDProduto);
      ibProdutos.Next;  }

  //  end;{while}

 // end;{with}

end;

procedure TfrmVendasLoja.ExecSELECTCliente;

begin

{  with dmModule do begin

    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
    ibClassificacao.Open;
    IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICA��O DO CLIENTE NA VARIAVEL.

    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + IntToStr(IDClass) + '''');
    ibCadastro.Open;

    cboCliente.Clear;

    while not ibCadastro.Eof do begin

      IDCliente := TClasseCombo.Create;
      IDCliente.ID := ibCadastro.FieldByName('IDCAD').AsInteger;
      cboCliente.Items.AddObject(ibCadastro.FieldByName('NOME').AsString,IDCliente);
      ibCadastro.Next; }

 //   end;{while}

 // end;{whit}

end;

procedure TfrmVendasLoja.FormShow(Sender: TObject);

var

//OleGraphic: TOleGraphic;
//fs: TFileStream;
DadosEmpresa : Array[0..6] of String;

begin

  ListBoxDadosEmpresa.Clear;

  ConfirmaVendaCx := True;

  lbl_edtCodBarras.SetFocus;

//  imgProduto.Picture := Nil; //LIMPA A IMAGEM
  lbl_edtInformacao.Caption := 'Caixa Livre';

  listboxCupom.Items.Clear;
  lbl_Data.Caption := FormatDateTime('dd/mm/yyyy',Now);

  lbl_edtVlrTotal.Text   := '0,00';
  lbl_edtSubTotal.Caption := '0,00';
  lbl_edtVlrUnit.Text := '0,00';
  lbl_TipoPreco.Caption := '';
  lbl_CodVenda.Caption := '';
  lbl_NomeFuncComissao.Caption := '';

  with dmModule do begin

    ibServsVenda.Close;
    
          //SELECT PARA TRAZER O ULTIMO ID NA ABERTURA DO FORM

       { ibServsVendasCli.Close;
        ibServsVendasCli.SQL.Clear;
        ibServsVendasCli.SQL.Add('SELECT IDSERVSVENDA FROM TBLSERVICOSVENDAS ORDER BY IDSERVSVENDA DESC');
        ibServsVendasCli.Open;

        //atribui o id de vendas pista no label.
        if (ibServsVendasCli.RecordCount = 0) Then begin

          lbl_CodVenda.Caption := '1';

        end else begin

          lbl_CodVenda.Caption := IntToStr(ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger + 1);

          IDServVenda := (ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger + 1);  }


      //  end;{if}
////////////////////////////////////////////////////////////////////////////////


          listboxCupom.Clear;

         lbl_edtSubTotal.Caption := '0,00';
         lbl_edtVlrUnit.Text  := '0,00';
         lbl_edtVlrTotal.Text := '0,00';

         if lbl_TipoPreco.Caption = '' Then begin

          TipoPreco := 'A';

          end;


          ibServsVendasCli.Close;
          ibServsVendasCli.SQL.Clear;
          ibServsVendasCli.SQL.Add('SELECT IDSERVSVENDA FROM TBLSERVICOSVENDASCLI ORDER BY IDSERVSVENDA DESC');
          ibServsVendasCli.Open;

        if (ibServsVendasCli.RecordCount = 0) Then begin

          lbl_CodVenda.Caption := '1';

        end else begin

          lbl_CodVenda.Caption := IntToStr(ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger + 1);

          IDServVenda := (ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger + 1);

        end;{if}

          InsereVenda := True;

       //   lbl_CodVenda.Caption := IntToStr(ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger + 1);

      //    IDServVenda := (ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger + 1);

        //  lbl_edtQtde.Text := '1';


////////////////////////////////////////////////////////////////////////////////

      //rotina para cabe�alho do cupom
      
      ibDadosEmpresa.Close;
      ibDadosEmpresa.SQL.Clear;
      ibDadosEmpresa.SQL.Add('SELECT * FROM TBLDADOSEMPRESA');
      ibDadosEmpresa.Open;

      DadosEmpresa[0]:=ibDadosEmpresa.FieldByName('NOME').AsString;
      DadosEmpresa[1]:=ibDadosEmpresa.FieldByName('ENDERECO').AsString;
      DadosEmpresa[2]:=ibDadosEmpresa.FieldByName('NUMERO').AsString;
      DadosEmpresa[3]:=ibDadosEmpresa.FieldByName('BAIRRO').AsString;
      DadosEmpresa[4]:=ibDadosEmpresa.FieldByName('ESTADO').AsString;
      DadosEmpresa[5]:=ibDadosEmpresa.FieldByName('DDD').AsString;
      DadosEmpresa[6]:=ibDadosEmpresa.FieldByName('TELEFONE').AsString;

      with ListBoxDadosEmpresa do begin

   //  ListBoxDadosEmpresa.Columns[0];

   //   Columns.Items[0].Alignment     := taLeftJustify;


      ListBoxDadosEmpresa.Items.Add(DadosEmpresa[0]);
      ListBoxDadosEmpresa.Items.Add(DadosEmpresa[1]+','+DadosEmpresa[2]);
      ListBoxDadosEmpresa.Items.Add(DadosEmpresa[3]+'  '+'-'+'  '+DadosEmpresa[4]);
      ListBoxDadosEmpresa.Items.Add(DadosEmpresa[5]+'  '+'  '+DadosEmpresa[6]);

     end;//with

////////////////////////////////////////////////////////////////////////////////

    //Adiciona as Colunas com os dados do Clientes
  {  with dbgServs do begin

      // monta as colunas abaixo se for verdadeiro
      if MontaColunas Then begin

         DataSource := dmModule.dtsServsVenda;

        //determina as colunas a serem montadas 0 codigo cliente, 1 razao Social, 2 endere�o numero...
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
        Columns.Insert(10);

        //Parametros da Coluna que exibe o C�digo do Cadastro
        Columns.Items[0].Title.Caption := 'C�digo';
        Columns.Items[0].FieldName     := 'CODIGO';
        Columns.Items[0].Width         := 50;
        Columns.Items[0].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o Nome do cliente.
        Columns.Items[1].Title.Caption := 'Produto';
        Columns.Items[1].FieldName     := 'PRODUTO';
        Columns.Items[1].Width         := 220;
        Columns.Items[1].Alignment     := taLeftJustify;

        // Parametros que exibe o nome fantasia do cliente
        Columns.Items[2].Title.Caption := 'Qtde.';
        Columns.Items[2].FieldName     := 'QTDE';
        Columns.Items[2].Width         := 50;
        Columns.Items[2].Alignment     := taLeftJustify;

        // Parametros que exibe o numero do cliente
        Columns.Items[3].Title.Caption := 'Vlr.Unit�rio';
        Columns.Items[3].FieldName     := 'VLRUNIT';
        Columns.Items[3].Width         := 80;
        Columns.Items[3].Alignment     := taLeftJustify;

       // Parametros que exibe o compl. do cliente
        Columns.Items[4].Title.Caption := 'Vlr.Total';
        Columns.Items[4].FieldName     := 'VLRTOTAL';
        Columns.Items[4].Width         := 80;
        Columns.Items[4].Alignment     := taLeftJustify;

       // Parametros que exibe o compl. do cliente
        Columns.Items[5].Title.Caption := 'Cliente';
        Columns.Items[5].FieldName     := 'CLIENTE';
        Columns.Items[5].Width         := 100;
        Columns.Items[5].Alignment     := taLeftJustify;

       // Parametros que exibe o compl. do cliente
        Columns.Items[6].Title.Caption := 'Animal';
        Columns.Items[6].FieldName     := 'NOMEANIMAL';
        Columns.Items[6].Width         := 170;
        Columns.Items[6].Alignment     := taLeftJustify;

       // Parametros que exibe o compl. do cliente
        Columns.Items[7].Title.Caption := 'Data';
        Columns.Items[7].FieldName     := 'DATA';
        Columns.Items[7].Width         := 70;
        Columns.Items[7].Alignment     := taLeftJustify;

       // Parametros que exibe o compl. do cliente
        Columns.Items[8].Title.Caption := 'Hora';
        Columns.Items[8].FieldName     := 'HORA';
        Columns.Items[8].Width         := 70;
        Columns.Items[8].Alignment     := taLeftJustify;

        Columns.Items[9].Title.Caption:= 'Tipo de Sa�da';
        Columns.Items[9].FieldName    := 'TIPOSAIDA';
        Columns.Items[9].Width        := 80;
        Columns.Items[9].Alignment    := taLeftJustify;

        Columns.Items[10].Title.Caption:= 'Vlr.Sangria';
        Columns.Items[10].FieldName    := 'VLRSANGRIA';
        Columns.Items[10].Width        := 70;
        Columns.Items[10].Alignment    := taLeftJustify;

        MontaColunas := False;  }

    //  end; {if}

   // end; {with do db grid}

 //  lbl_edtCodCli.Text := '';
//   cboCliente.ClearSelection;
//  lbl_edtConvenio.Text := '';
   lbl_edtCodBarras.Text := '';
   lbl_edtCodProd.Text := '';
//   cboProduto.ClearSelection;
 //  lbl_edtVlrSangria.Text := '0,00';
  // lbl_Sangria.Caption := '';
   lbl_edtQtde.Text := '1';
   lbl_edtVlrUnit.Text := '0,00';
   lbl_edtVlrTotal.Text := '0,00';
   lbl_edtSubTotal.Caption := '0,00';
//   lbl_CodBarras.Caption := '';
   lbl_NomeProd.Caption := '';
//   lbl_Valor.Caption := '';


  end;{with}

end;

procedure TfrmVendasLoja.cboClienteClick(Sender: TObject);

{var

IDCli     : TClasseCombo;
StringCli : String;   }

begin

{  with dmModule do begin

    if cboCliente.ItemIndex <> -1 Then begin//SE HOUVER REGISTRO NO COMBO

      IDClienteOc         := TClasseCombo( cboCliente.Items.Objects[cboCliente.ItemIndex] );//ATRIBUI A CLASSE COMBO NA VARIAVEL
      StringClienteOc     := ' IDCAD=''' + InttoStr( IDClienteOc.ID ) + '''';//ATRIBUI O ID DO FIELD NA VARIAVEL STRING.


      //TRAZ NO COMBO SOMENTE OS COMBUSTIVEIS DO CADASTRO DE PRODUTOS REFERENTE AO ESTOQUE SELECIONADO.
      ibCadastro.Close;
      ibCadastro.SQL.Clear;
      ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE ' + StringClienteOc);
      ibCadastro.Open;  }

//    end;{if}

//  end;{with}

end;

procedure TfrmVendasLoja.cboProdutoClick(Sender: TObject);

{var

//i : Integer;
OleGraphic: TOleGraphic;
fs: TFileStream;

Produto : Array[0..3] of String;   }

begin

{  with dmModule do begin

    if cboProduto.ItemIndex <> - 1 Then begin

      IDClassProduto := TClasseCombo(cboProduto.Items.Objects[cboProduto.ItemIndex]);

    end;

    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT CADPRODUTOS.*,LOCALESTOCAGEM.NOME As Estoque FROM CADPRODUTOS '
    + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE '
    + 'WHERE CADPRODUTOS.IDPROD=''' + IntToStr(IDClassProduto.ID) + '''');
    ibProdutos.Open;

////////////////////////////////////////////////////////////////////////////////

    if lbl_TipoPreco.Caption = '' Then begin

      TipoPreco := 'A';

    end;


    lbl_edtCodProd.Text := ibProdutos.FieldByName('IDPROD').AsString;
   // lbl_edtEstoque.Text := ibProdutos.FieldByName('Estoque').AsString;

    if  (TipoPreco = 'A') Then begin

    lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);

    end else if  (TipoPreco = 'B') Then begin

    lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAB').AsFloat);

    end else if  (TipoPreco = 'C') Then begin

    lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAC').AsFloat);

    end;

////////////////////////////////////////////////////////////////////////////////


    lbl_edtCodBarras.Text := ibProdutos.FieldByName('CODBARRAS').AsString;
    lbl_edtCodProd.Text := ibProdutos.FieldByName('IDPROD').AsString;
  //  lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);
 //   lbl_edtEstoque.Text := ibProdutos.FieldByName('Estoque').AsString;


    lbl_edtQtde.SetFocus;


    //ROTINA PARA EXIBIR A IMAGEM DO PRODUTO
    if Not FileExists(ExtractFilePath(Application.ExeName) + 'Data\RunTime\ProdImagens\' + cboProduto.Text + '.jpg') Then begin

      imgProduto.Picture := Nil; //LIMPA A IMAGEM
      ImagemProduto := '';

    end else begin

      try
        OleGraphic := TOleGraphic.Create;
        fs         := TFileStream.Create(ExtractFilePath(Application.ExeName) //EXIBE A IMAGEM DO PRODUTO
                                        + 'Data\RunTime\ProdImagens\' + cboProduto.Text + '.jpg', fmOpenRead or fmSharedenyNone);
        OleGraphic.LoadFromStream(fs);
        imgProduto.Picture.Assign(OleGraphic);

       // imgProduto.Picture.LoadFromFile();

        ImagemProduto := ExtractFilePath(Application.ExeName) //EXIBE A IMAGEM DO PRODUTO
                                        + 'Data\RunTime\ProdImagens\' + cboProduto.Text + '.jpg';

      finally
        fs.Free;
        OleGraphic.Free
      end;

     end;

    if cboProduto.Text <> '' Then begin

    Produto[0]:=lbl_edtCodBarras.Text;
    Produto[1]:=cboProduto.Text;
    Produto[2]:=lbl_edtVlrUnit.Text;
  //  Produto[4]:=lbl_X.Caption;



    lbl_CodBarras.Caption := Produto[0];
    lbl_Traco.Caption := '-';
    lbl_NomeProd.Caption := Produto[1];
    lbl_Valor.Caption := Produto[2];

    end;  }

//  end;{with}

end;

procedure TfrmVendasLoja.FormCreate(Sender: TObject);

begin

  InsereVenda := True;
 // MontaColunas := True;

//  PathSistema := ExtractFilePath(ParamStr(0));

 // if FileExists(PathSistema + 'Data\RunTime\imagens\FundoCX.gif') Then
 //   imgFundoCx.Picture.LoadFromFile(PathSistema + 'Data\RunTime\imagens\FundoCX.gif');


end;

procedure TfrmVendasLoja.dbgServsCellClick(Column: TColumn);

var

i : Integer;

begin

  with dmModule do begin


  IDAlteraProduto := ibServsVenda.FieldByName('IDPROD').AsInteger;
  IDServVenda := ibServsVenda.FieldByName('IDSERVSVENDA').AsInteger;



  if ibServsVenda.RecordCount > 0 Then begin

  lbl_edtVlrUnit.Text  := FormatFloat(CasasDecimais('Produtos'),ibServsVenda.FieldByName('VLRUNIT').AsFloat);
  lbl_edtVlrTotal.Text := FormatFloat(CasasDecimais('Produtos'),ibServsVenda.FieldByName('VLRTOTAL').AsFloat);
  lbl_edtQtde.Text     := FormatFloat(CasasDecimais('Produtos'),ibServsVenda.FieldByName('QTDE').AsFloat);
//  lbl_edtEstoque.Text  := ibServsVenda.FieldByName('ESTOQUE').AsString;

 { for i:=0 to cboCliente.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
    if TClasseCombo( cboCliente.Items.Objects[i]).ID = ibServsVenda.FieldByName('IDCLIENTE').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
      cboCliente.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
      Break;
    end else begin
      cboCliente.ClearSelection;//LIMPA A SELECAO. }
 //  end;{if}
 // end;{for}


   { for i:=0 to cboProduto.Items.Count -1 do begin
      if TClasseCombo( cboProduto.Items.Objects[i]).ID = ibServsVenda.FieldByName('IDPROD').AsInteger then begin
        cboProduto.ItemIndex:= i;
        Break;
      end else begin
        cboProduto.ClearSelection;
      end;
    end; }

  end;{if record count}
  
  end;{with}

end;

procedure TfrmVendasLoja.lbl_edtQtdeExit(Sender: TObject);
   var
    Valor1 :Real;
    Valor2 :Real;
begin

 if (lbl_NomeProd.Caption <> '') Then begin

  if lbl_edtQtde.Text <> '' Then begin// se for em branco executa rotina abaixo.

    if (Pos(',',lbl_edtQtde.Text)>0) and (lbl_edtQtde.Text <> '') Then begin

      Valor1 := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));
      Valor2 := StrToFloat(StringReplace(lbl_edtVlrUnit.Text,ThousandSeparator,'',[rfReplaceAll]));

      lbl_edtVlrTotal.Text := FormatFloat(',0.00',(Valor2 * Valor1));

    end else begin

      Valor1 := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));
      Valor2 := StrToFloat(StringReplace(lbl_edtVlrUnit.Text,ThousandSeparator,'',[rfReplaceAll]));
       lbl_edtVlrTotal.Text := FormatFloat(',0.00',(Valor2 * Valor1));

    end;{if}

  end;{if}

 end;{if cbo produto}

end;

procedure TfrmVendasLoja.lbl_edtQtdeKeyPress(Sender: TObject; var Key: Char);
begin

  if Key = #13 Then begin

    if lbl_NomeProd.Caption = '' Then begin

      lbl_edtCodBarras.SetFocus;

   end else begin

      lbl_edtVlrTotal.SetFocus;

    end;{if cbo produto}

  end;

end;

procedure TfrmVendasLoja.ibeaExcluirVendaClick(Sender: TObject);

var

Valor1,Valor2,Valor3 : Real;
CancelaProd : Array [0..10] of String;

ValorCustoE : Real;
TotalCusto : String;

begin

  with dmModule do begin

    ConfirmaMSG := Application.MessageBox('Confirma o cancelamento da venda?','Notifica��o:Cancelamento de venda', +MB_YESNO+MB_ICONINFORMATION);

    if ConfirmaMSG = 6 Then begin



     {   ibTotalVendasPista.Close;
        ibTotalVendasPista.SQL.Clear;
        ibTotalVendasPista.SQL.Add('SELECT * FROM TBLTOTALVENDASPISTA '
        + 'WHERE TBLTOTALVENDASPISTA.IDBICO=''' + IntToStr(BicoCombustivel) + '''');
        ibTotalVendasPista.Open;

        //para calculo da qtde.
        QtdeTblVendaPista     := StrtoFloat(StringReplace(FloattoStr(ibTotalVendasPista.FieldByName('QTDE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

        QtdeTblVendaPista := QtdeTblVendaPista -  QtdeTotalVendaPista;

        EncerranteFinalTotal := QtdeTblVendaPista;

        if ibTotalVendasPista.RecordCount > 0 Then begin

          ibTotalVendasPista.Close;
          ibTotalVendasPista.SQL.Clear;
          ibTotalVendasPista.SQL.Add('UPDATE TBLTOTALVENDASPISTA SET '
          +'NUMFINAL=''' + FloatToStr(EncerranteFinalTotal) + ''''
          +',QTDE=''' + FloatToStr(QtdeTblVendaPista) + ''' WHERE TBLTOTALVENDASPISTA.IDSERVSVENDA=''' + IntToStr(ClassVendaProduto.ID) + '''');
          ibTotalVendasPista.ExecSQL;
          Commit(ibTotalVendasPista);

        end; }


////////////////////////////////////////////////////////////////////////////////
    if lbl_edtSubTotal.Caption > '0,00' Then begin

    Valor1  := StrToFloat(StringReplace(lbl_edtSubTotal.Caption,ThousandSeparator,'',[rfReplaceAll]));
    Valor2  := StrToFloat(StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]));
    Valor3  := StrToFloat(FormatFloat(',0.00',(Valor1)-(Valor2)));
    lbl_edtSubTotal.Caption := FormatFloat(',0.00',(Valor3));

   end else begin

    Valor1 := StrToFloat(StringReplace(lbl_edtSubTotal.Caption,ThousandSeparator,'',[rfReplaceAll]));
    Valor2 := StrToFloat(StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]));
    Valor3 := StrToFloat(FormatFloat(',0.00',(Valor1)- (Valor2)));
    lbl_edtSubTotal.Caption := FormatFloat(',0.00',(Valor3));

    end;{if}


    CancelaProd[0]:=lbl_edtCodProd.Text;
  //  CancelaProd[1]:=cboProduto.Text;
    CancelaProd[2]:=lbl_edtQtde.Text;
    CancelaProd[3]:=lbl_X.Caption;
    CancelaProd[4]:=lbl_edtVlrUnit.Text;
    CancelaProd[5]:=lbl_edtIgual.Caption;
    CancelaProd[6]:=lbl_edtVlrTotal.Text;
    CancelaProd[7]:=lbl_edtCodBarras.Text;
    CancelaProd[8]:='Cancelado';

    listboxCupom.Items.Add(CancelaProd[8]);
    listboxCupom.Items.Add(CancelaProd[0] + ' ' + '-' + ' ' + CancelaProd[1]);
    listboxCupom.Items.Add(CancelaProd[2] + ' ' + ' ' + ' ' + CancelaProd[3] + ' ' + ' ' + ' ' + CancelaProd[4] + ' ' + ' ' + ' ' + CancelaProd[5]  + ' ' + ' ' + ' ' + CancelaProd[6]);



///////////////////////////////////////////////////////////////////////////////



      ibServsVenda.Close;                                    //   
      ibServsVenda.SQL.Clear;
      ibServsVenda.SQL.Add('DELETE FROM TBLSERVICOSVENDAS WHERE IDSERVSVENDA=''' + lbl_CodVenda.Caption + ''' and TBLSERVICOSVENDAS.IDPROD=''' + IntToStr(IDAlteraProduto) + '''');
      ibServsVenda.Open;

    {  ibServsVendasCli.Close;                                             //   
      ibServsVendasCli.SQL.Clear;
      ibServsVendasCli.SQL.Add('DELETE FROM TBLSERVICOSVENDASCLI WHERE IDSERVSVENDA=''' + lbl_CodVenda.Caption + ''' and TBLSERVICOSVENDASCLI.IDPROD=''' + IntToStr(IDAlteraProduto) + '''');
      ibServsVendasCli.Open; }

      ibMovEst.Close;                                //
      ibMovEst.SQL.Clear;
      ibMovEst.SQL.Add('DELETE FROM TBLMOVESTOQUE WHERE IDVENDA=''' + lbl_CodVenda.Caption + ''' and IDPROD=''' + IntToStr(IDAlteraProduto) + '''');
      ibMovEst.Open;

      ibAReceber.Close;                                     //
      ibAReceber.SQL.Clear;
      ibAReceber.SQL.Add('DELETE FROM TBLCONTASARECEBER WHERE IDSERVSVENDA =''' + lbl_CodVenda.Caption + ''' and IDPROD=''' + IntToStr(IDAlteraProduto) + '''');
      ibAReceber.Open;


      CancelarProduto := True;


      if CancelarProduto Then begin

      Commit(ibServsVenda);
      ibServsVenda.Close;
      ibServsVenda.SQL.Clear;
      ibServsVenda.SQL.Add('SELECT TBLSERVICOSVENDAS.QTDE,TBLSERVICOSVENDAS.VLRTOTAL,'
      + 'TBLSERVICOSVENDAS.IDPROD,CADPRODUTOS.NOME As PRODUTO FROM TBLSERVICOSVENDAS '
      + 'INNER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD = CADPRODUTOS.IDPROD '
      + 'WHERE TBLSERVICOSVENDAS.IDSERVSVENDA=''' + lbl_CodVenda.Caption + '''');
      ibServsVenda.Open;  //   TBLSERVICOSVENDAS.IDPROD=''' + IntToStr(IDAlteraProduto) + '''

     // (ibServsVenda.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibServsVenda.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
      (ibServsVenda.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO  

      
     end;


      {  if (ibServsVendasCli.RecordCount = 0) Then begin

          lbl_CodVenda.Caption := '1';

        end else begin

          lbl_CodVenda.Caption := IntToStr(ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger + 1);

          IDVendasServs := (ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger + 1);  }

     //   end;{if}

    {  ibServsVenda.Close;
      ibServsVenda.SQL.Clear;
      ibServsVenda.SQL.Add('SELECT TBLSERVICOSVENDAS.IDPROD,TBLSERVICOSVENDAS.VLRUNIT,'
      + 'TBLSERVICOSVENDAS.QTDE,TBLSERVICOSVENDAS.DATA,'
      + 'TBLSERVICOSVENDAS.HORA,TBLSERVICOSVENDAS.VLRTOTAL,TBLSERVICOSVENDAS.IDTIPOPROD,'
      + 'CADPRODUTOS.NOME As PRODUTO FROM TBLSERVICOSVENDAS '
     // + 'TBLCADASTRO.NOME As CLIENTE 
  //    + 'LEFT OUTER JOIN TBLANIMALCLI ON TBLSERVICOSVENDAS.IDANIMAL=TBLANIMALCLI.IDANIMAL '
      + 'INNER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDTIPOPROD=CADPRODUTOS.IDPROD WHERE TBLSERVICOSVENDAS.IDTIPOPROD=''' + IntToStr(ProdutoLoja) + '''');
      //  + 'LEFT OUTER JOIN TBLCADASTRO on TBLSERVICOSVENDAS.IDCLIENTE=TBLCADASTRO.IDCAD WHERE  TBLSERVICOSVENDAS.IDTIPOPROD=''' + IntToStr(ProdutoLoja) + '''');
      ibServsVenda.Open; }

 //    if cboProduto.ItemIndex > -1 Then begin

//     ClassProdEstoqueC    := TClasseCombo( cboProduto.Items.Objects[cboProduto.ItemIndex] );
     // StringProdEstoque   := ' ''' + InttoStr( ClassProdEstoque.ID ) + ''',';

     if lbl_NomeProd.Caption <> '' Then begin

      ibEntrProdEstoque.Close;
      ibEntrProdEstoque.SQL.Clear;
      ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,'
      + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,'
      + 'CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORCUSTO,CADPRODUTOS.TIPOPROD FROM TBLENTRADAESTOQUEPROD '
      + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
      + 'WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + lbl_edtCodProd.Text + '''');
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
         +'VLRTOTAL=''' + (TotalProdEstoque) +  ''' WHERE IDPROD=''' + IntToStr(ClassProdEstoqueC.ID) + '''');
         ibEntrProdEstoque.ExecSQL;
         Commit(ibEntrProdEstoque);

       end;{if}

     end;{if cbo produto}

    end;{if confirma msg}

  end;{with}

end;

procedure TfrmVendasLoja.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

var

ConfirmaSaida, IDFuncionarioCX, ConfirmaFechCx, IDVendaCancela : Integer;
DataAtual : TDateTime;
ProdutoEstoque, CancelarItemCaixa : String;
ConfirmaCancelamento : Integer;
QtdeEstoqueVendaDevolve,VlrProdutoDevolve,QtdeEstoqueDevolve,QtdeVendaDevolve,ValorCustoDevolve : Real;
TotalCusto,TotalProdEstoqueDevolve,EstoqueFinalDevolve,TotalCustoDevolve : String;
IDProdutoDevolucao : Integer;

begin

  with dmModule do begin

    case key of

      VK_f1:begin

        ConfirmaVendaCx := True;
        LimpaCampos;
        lbl_edtQtde.Text := '1';
        lbl_edtVlrUnit.Text := '0,00';
        lbl_edtVlrTotal.Text := '0,00';
        lbl_NomeFuncComissao.Caption := '';
        lbl_edtFuncComissao.Text := '';
        //  cboProduto.ClearSelection;
        //  lbl_CodBarras.Caption := '';
        lbl_NomeProd.Caption := '';
        //  lbl_Valor.Caption := '';
        //  lbl_edtDescVenda.Text := '0,00';
        //  imgProduto.Picture := Nil; //LIMPA A IMAGEM
        lbl_edtCodBarras.SetFocus;


     //   lbl_edtDescVenda.SetFocus;  }
     end;//begin


       VK_f2:Begin

       if lbl_edtCodBarras.Enabled = True Then begin

       lbl_edtQtde.SetFocus;

       end;

       end;{begin}


      VK_f3:begin

      if lbl_edtSubTotal.Caption <> '0,00' Then begin

      IDVenda := IDVendasServs;
      frmRecebeLoja.ShowModal;
      
      end;

    end;

      VK_f4:begin

   {   if lbl_edtCodBarras.Enabled = True Then begin

      ConfirmaMSG := Application.MessageBox('� preciso finalizar a venda para gerar um novo cupom','Notifica��o:Cupom em aberto',+MB_OK+MB_DEFBUTTON1+MB_ICONWARNING);

     end else begin }
   //   if ConfirmaMSG = 6 Then begin

       if lbl_edtInformacao.Caption <> '' Then begin

         ConfirmaSaida := Application.MessageBox('Deseja realmente sair do caixa?','Notifica��o: Confirma��o de sa�da.',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

         if ConfirmaSaida = 6 Then begin

           ListBoxDadosEmpresa.Clear;
           frmVendasLoja.Close;

         end;//ifconfirmasaida

       end else begin

       Application.MessageBox('� necess�rio finalizar a venda para sair do caixa','Notifica��o:Venda n�o finalizada.',+MB_OK+MB_DEFBUTTON1+MB_ICONINFORMATION);

       end;
  //      CancelarProduto := False;

     {  lbl_edtSubTotal.Caption := '0,00';
       lbl_edtVlrUnit.Text  := '0,00';
       lbl_edtVlrTotal.Text := '0,00';


       if lbl_TipoPreco.Caption = '' Then begin

        TipoPreco := 'A';

        end; }


     //   DesabilitaCampos(True);


       {   ibServsVendasCli.Close;
          ibServsVendasCli.SQL.Clear;
          ibServsVendasCli.SQL.Add('SELECT IDSERVSVENDA FROM TBLSERVICOSVENDASCLI ORDER BY IDSERVSVENDA DESC');
          ibServsVendasCli.Open;

          lbl_CodVenda.Caption := IntToStr(ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger + 1);

          IDVendasServs := (ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger + 1);

       lbl_edtQtde.Text := '1';
       lbl_edtCodBarras.SetFocus; }
    //  end;//if label cod barras

      end;{begin}

       VK_f5:Begin

      Commit(ibConfig);
      ibConfig.Close;
      ibConfig.SQL.Clear;
      ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
      ibConfig.Open;

      ProdutoEstoque := ibConfig.FieldByName('PRODUTOESTOQUE').AsString;


      if ProdutoEstoque = 'Sim' Then begin

      {  IDUsuarioLogin := IDAcesso;

        ibUser.Close;
        ibUser.SQL.Clear;
        ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + IntToStr(IDUsuarioLogin) + '''');
        ibUser.Open;

        if ibUser.FieldByName('CADPROD').AsString = 'Bloqueado' Then begin

          ShowMessage('Acesso n�o permitido'); }
       //  frmProdutos.ShowModal;

        //  frmProd_MPrima.Close;

        end else begin

          frmProd_MPrima.ShowModal;

      {  IDUsuarioLogin := IDAcesso;

        ibUser.Close;
        ibUser.SQL.Clear;
        ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + IntToStr(IDUsuarioLogin) + '''');
        ibUser.Open;

        if ibUser.FieldByName('CADPROD').AsString = 'Bloqueado' Then begin

          ShowMessage('Acesso n�o permitido');
          frmProdutos.Close;

        end else begin

         frmProd_MPrima.ShowModal;

       end; }
       
      end;//if produtestoque



      // frmProdutos.ShowModal;

    //  frmProd_MPrima.ShowModal;

       end;{begin}

       VK_f6:Begin

       Commit(ibConfig);
       ibConfig.Close;
       ibConfig.SQL.Clear;
       ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
       ibConfig.Open;

       CancelarItemCaixa := ibConfig.FieldByName('CANCELARITEMCX').AsString;

       if CancelarItemCaixa = 'Sim' Then begin

       lbl_CancelaItem.Caption := 'Cancelar Item';
       ConfirmaVendaCx := False;

       end else if CancelarItemCaixa = 'Nao' Then begin

        ConfirmaCancelamento := Application.MessageBox('Confirma o cancelamento da venda?','Cancelar Venda',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

        if ConfirmaCancelamento = 6 Then begin

          IDVendaCancela := StrToInt(lbl_CodVenda.Caption);

////////////////////////////////////////////////////////////////////////////////

        ibServsVenda.Close;
        ibServsVenda.SQL.Clear;
        ibServsVenda.SQL.Add('SELECT * FROM TBLSERVICOSVENDAS WHERE IDSERVSVENDA=''' + IntToStr(IDVendaCancela) + '''');
        ibServsVenda.Open;

        while not ibServsVenda.Eof do begin

        IDProdutoDevolucao := ibServsVenda.FieldByName('IDPROD').AsInteger;

        QtdeVendaDevolve   := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('QTDE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

        ibEntrProdEstoque.Close;
        ibEntrProdEstoque.SQL.Clear;
        ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,'
        + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,TBLENTRADAESTOQUEPROD.ESTOQUEMIN,'
        + 'CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORCUSTO,CADPRODUTOS.TIPOPROD FROM TBLENTRADAESTOQUEPROD '
        + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
        + 'WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + IntToStr(IDProdutoDevolucao) + '''');
        ibEntrProdEstoque.Open;

      //ROTINA ABAIXO PARA SOMAR TOTAL DO ESTQUE E QUANTIDADE DO ESTOQUE

      //traz na variavel a qtde conf. prod da select identificado por id.
       QtdeEstoqueDevolve := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
     // QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),DecimalSeparator,',',[rfReplaceAll]));

     // QtdeVendaDevolve   := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));

       QtdeEstoqueDevolve := QtdeEstoqueDevolve + QtdeVendaDevolve;

       EstoqueFinalDevolve := StringReplace(FloattoStr(QtdeEstoqueDevolve),ThousandSeparator,'',[rfReplaceAll]);
       EstoqueFinalDevolve := StringReplace(EstoqueFinalDevolve,DecimalSeparator,'.',[rfReplaceAll]);

      //AQUI VAI O CALCULO DO TOTAL CONFORME VENDE O PRODUTO
       VlrProdutoDevolve  := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORVENDAA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

       VlrProdutoDevolve  := QtdeEstoqueDevolve * VlrProdutoDevolve;

       TotalProdEstoqueDevolve := StringReplace(FloattoStr(VlrProdutoDevolve),ThousandSeparator,'',[rfReplaceAll]);
       TotalProdEstoqueDevolve := StringReplace(TotalProdEstoqueDevolve,DecimalSeparator,'.',[rfReplaceAll]);


       ValorCustoDevolve := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORCUSTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

       ValorCustoDevolve := QtdeEstoqueDevolve * ValorCustoDevolve;

       TotalCustoDevolve := StringReplace(FloattoStr(ValorCustoDevolve),ThousandSeparator,'',[rfReplaceAll]);
       TotalCustoDevolve := StringReplace(TotalCustoDevolve,DecimalSeparator,'.',[rfReplaceAll]);

       //ROTINA PARA O ESTOQUE MINIMO
       if ibEntrProdEstoque.RecordCount > 0 Then begin

         ibEntrProdEstoque.Close;
         ibEntrProdEstoque.SQL.Clear;
         ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
         +'TOTALCUSTO=''' + TotalCustoDevolve + ''','
         +'VLRTOTAL=''' + (TotalProdEstoqueDevolve) +  ''','
         +'QUANTIDADE=''' + (EstoqueFinalDevolve) + ''' WHERE IDPROD=''' + IntToStr(IDProdutoDevolucao) + '''');
         ibEntrProdEstoque.ExecSQL;
         Commit(ibEntrProdEstoque);

       end;//if recordcount

       ibServsVenda.Next;

       end;//while
////////////////////////////////////////////////////////////////////////////////

          ibServsVenda.Close;
          ibServsVenda.SQL.Clear;
          ibServsVenda.SQL.Add('DELETE FROM TBLSERVICOSVENDAS WHERE IDSERVSVENDA=''' + IntToStr(IDVendaCancela) + '''');
          ibServsVenda.Open;

          //frmVendasLoja.lbl_CodVenda.Caption := IntToStr(ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger + 1);
          frmVendasLoja.listboxCupom.Clear;
          frmVendasLoja.lbl_edtSubTotal.Caption := '0,00';
          frmVendasLoja.lbl_edtInformacao.Caption := 'Caixa Livre';

        end;//if confirma cancelamento

       end;//if cancelar item cx

       end;{begin}



       VK_f7:begin

        frmBuscaProdutos.ShowModal;
      // lbl_edtInformacao.Caption := '';
        end;{begin}


      VK_f8 :begin

      // frmEstoqueRapido.ShowModal;
       frmTrocaMercadoria.ShowModal;

     { if lbl_edtCodBarras.Enabled = True Then begin

       lbl_TipoPreco.Caption := 'Pre�o de Venda B';

      end;

       if lbl_TipoPreco.Caption = 'Pre�o de Venda B' Then begin

       TipoPreco := 'B';

       end else begin

       TipoPreco := 'A';

       end;

      lbl_edtCodBarras.SetFocus;
      lbl_edtQtde.Text := '1';  }


       end;{begin}


      VK_f9 :begin

      lbl_edtFuncComissao.SetFocus;

    {   ibProdutos.Close;
       ibProdutos.SQL.Clear;
       ibProdutos.SQl.Add('SELECT * FROM CADPRODUTOS WHERE IDPROD=''' + lbl_edtCodProd.Text + '''');
       ibProdutos.Open;

       (ibProdutos.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat  := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

       lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Combustiveis'),ibProdutos.FieldByName('VALORVENDAC').AsFloat);  }

    //  lbl_edtQtde.SetFocus;

    {  if lbl_edtCodBarras.Enabled = True Then begin

       lbl_TipoPreco.Caption := 'Pre�o de Venda C';

      end;


       if lbl_TipoPreco.Caption = 'Pre�o de Venda C' Then begin

       TipoPreco := 'C';

       end else begin

       TipoPreco := 'A';

       end;

      lbl_edtCodBarras.SetFocus;
      lbl_edtQtde.Text := '1';  }

       end;{begin}


       VK_f10:begin

        if lbl_edtCodBarras.Enabled = True Then begin

       // lbl_TipoPreco.Caption.Color := clRed;
      //  lbl_TipoPreco.Caption := 'SANGRIA';
        frmSangria.ShowModal;

        end;

        if lbl_TipoPreco.Caption = 'SANGRIA' Then begin

        TipoPreco := 'SANGRIA';

        end else begin

        TipoPreco := 'A';

        end;

        lbl_edtCodBarras.SetFocus;
        lbl_edtQtde.Text := '1';

        end;{begin}

       VK_f11:begin

        frmManutCx.ShowModal;

        end;{begin}

       VK_f12:begin


          if lbl_Func.Caption <> '' Then begin//SE HOUVER REGISTRO NO COMBO

            ibUser.Close;
            ibUser.SQL.Clear;
            ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE NOME=''' + lbl_Func.Caption + '''');
            ibUser.Open;

            IDFuncionarioCX := ibAberturaCX.FieldByName('IDFUNC').AsInteger;

          end;

          ibUser.Close;
          ibUser.SQL.Clear;
          ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + IntToStr(IDFuncionarioCX) + '''');
          ibUser.Open;

          ibAberturaCX.Close;
          ibAberturaCX.SQL.Clear;
          ibAberturaCX.SQL.Add('SELECT * FROM TBLABERTURACX WHERE IDFUNC=''' + InttoStr(IDFuncionarioCX) + ''' and DATAABERTURA=''' + FormatDateTime('mm/dd/yyyy',Now) + '''');
          ibAberturaCX.Open;

  //       if ibAberturaCX.FieldByName('HORAFECH').AsDateTime = 0 Then begin


            ConfirmaFechCx :=  Application.MessageBox ( PChar('Confirma o Fechamento do Caixa de: "' + lbl_Func.Caption
                + '"'),'Notifica��o Fechamento de Caixa', MB_YESNO + mb_DefButton1+MB_ICONINFORMATION);

            if ConfirmaFechCx = 6 Then begin

              ibAberturaCX.Close;
              ibAberturaCX.SQL.Clear;
              ibAberturaCX.SQL.Add('SELECT * FROM TBLABERTURACX WHERE IDFUNC=''' + InttoStr(IDFuncionarioCX) + '''');
              ibAberturaCX.Open;

              DataAtual    := StrToDate(FormatDateTime('dd/mm/yyyy',now));

              if ibAberturaCX.RecordCount > 0 Then begin

                ibAberturaCX.Close;
                ibAberturaCX.SQL.Clear;
                ibAberturaCX.SQL.Add('UPDATE TBLABERTURACX SET '
                + 'HORAFECH=''' + FormatDateTime('hh:mm:ss',now) + ''' WHERE IDFUNC=''' + InttoStr(IDFuncionarioCX) + ''' and DATAABERTURA=''' + FormatDateTime('mm/dd/yyyy',DataAtual) + '''');
                ibAberturaCX.ExecSQL;

              end;{if record count}


            frmVendasLoja.Close;

            end;{if confirma msg}

       //  end else begin

        //  Application.MessageBox(PChar('Aten��o o Caixa de: "' + lbl_Funcionario.Text
        //        + '"''j� se encontra fechado'),'Notifica��o Fechamento de Caixa', MB_OK + mb_DefButton1+MB_ICONINFORMATION);
       //
       //   end;//if

        end;{F11 begin}

    end;{begin}

  end;{with}

end;

procedure TfrmVendasLoja.lbl_edtCodProdExit(Sender: TObject);

var

i : Integer;
//OleGraphic: TOleGraphic;
//fs: TFileStream;
Produto : Array[0..3] of String;

begin

  with dmModule do begin

   if lbl_edtCodProd.Text <> ''Then begin

    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT CADPRODUTOS.*,LOCALESTOCAGEM.NOME As Estoque FROM CADPRODUTOS '
    + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE '
    + 'WHERE CADPRODUTOS.REF=''' + lbl_edtCodProd.Text + '''');
    ibProdutos.Open;

    lbl_edtIDProdCX.Text := IntToStr(ibProdutos.FieldByName('IDPROD').AsInteger);
    
    if lbl_TipoPreco.Caption = '' Then begin

      TipoPreco := 'A';

    end;


    lbl_edtCodProd.Text := ibProdutos.FieldByName('REF').AsString;
    lbl_edtCodBarras.Text := ibProdutos.FieldByName('CODBARRAS').AsString;
    lbl_NomeProd.Caption  := ibProdutos.FieldByName('NOME').AsString;


    if  (TipoPreco = 'A') Then begin

    lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);

    end else if  (TipoPreco = 'B') Then begin

    lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAB').AsFloat);

    end else if  (TipoPreco = 'C') Then begin

    lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAC').AsFloat);

    end else if (TipoPreco = 'MT') Then begin

    lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORMETRO').AsFloat);

    end;



{  for i:=0 to cboProduto.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
      if TClasseCombo( cboProduto.Items.Objects[i]).ID = ibProdutos.FieldByName('IDPROD').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
        cboProduto.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
        Break;
      end else begin
        cboProduto.ClearSelection;//LIMPA A SELECAO.  }
  //    end;{if}
  //  end;{for}

 //   Produto[0]:=lbl_edtCodBarras.Text;
 //   Produto[1]:=cboProduto.Text;
//    Produto[2]:=lbl_edtVlrUnit.Text;
  //  Produto[4]:=lbl_X.Caption;



//    lbl_CodBarras.Caption := Produto[0];
 //   lbl_Traco.Caption := '-';
 //   lbl_NomeProd.Caption := Produto[1];
//    lbl_Valor.Caption := Produto[2];


    if lbl_NomeProd.Caption <> '' Then begin

    lbl_edtInformacao.Caption := '';

    end;

   end;{if lblcodprod}


    //ROTINA PARA EXIBIR A IMAGEM DO PRODUTO
 {   if Not FileExists(ExtractFilePath(Application.ExeName) + 'Data\RunTime\ProdImagens\' + lbl_NomeProd.Caption + '.jpg') Then begin

      imgProduto.Picture := Nil; //LIMPA A IMAGEM
      ImagemProduto := '';

    end else begin

      try
        OleGraphic := TOleGraphic.Create;
        fs         := TFileStream.Create(ExtractFilePath(Application.ExeName) //EXIBE A IMAGEM DO PRODUTO
                                        + 'Data\RunTime\ProdImagens\' + lbl_NomeProd.Caption + '.jpg', fmOpenRead or fmSharedenyNone);
        OleGraphic.LoadFromStream(fs);
        imgProduto.Picture.Assign(OleGraphic);

       // imgProduto.Picture.LoadFromFile();

        ImagemProduto := ExtractFilePath(Application.ExeName) //EXIBE A IMAGEM DO PRODUTO
                                        + 'Data\RunTime\ProdImagens\' + lbl_NomeProd.Caption + '.jpg';

      finally
        fs.Free;
        OleGraphic.Free
      end;

     end; }

  end;{with}


end;

procedure TfrmVendasLoja.lbl_edtCodProdKeyPress(Sender: TObject;
  var Key: Char);

begin

  if Key = #13 Then begin

    lbl_edtQtde.Text := '1';
    lbl_edtQtde.SetFocus;

  end;{if}

end;

procedure TfrmVendasLoja.lbl_edtVlrTotalKeyPress(Sender: TObject;
  var Key: Char);

var

Produto : Array[0..8] of String;

Valor1, Valor2, Valor3, Valor4 : Real;

i : Integer;

begin

  if Key = #13 Then begin

    if lbl_edtVlrTotal.Text > '0,00' Then begin

      Produto[0]:=lbl_edtCodProd.Text;
      Produto[1]:=lbl_NomeProd.Caption;
      Produto[3]:=lbl_edtQtde.Text;
      Produto[4]:=lbl_X.Caption;
      Produto[5]:=lbl_edtVlrUnit.Text;
      Produto[6]:=lbl_edtIgual.Caption;
      Produto[7]:=lbl_edtVlrTotal.Text;
      Produto[8]:='/Cancelado';

      if lbl_CancelaItem.Caption = '' Then begin

      listboxCupom.Items.Add(Produto[0] + ' ' + '-' + ' ' + Produto[1]);
      listboxCupom.Items.Add(Produto[3] + ' ' + ' ' + ' ' + Produto[4] + ' ' + ' ' + ' ' + Produto[5] + ' ' + ' ' + ' ' + Produto[6]  + ' ' + ' ' + ' ' + Produto[7]);

        for i := 0 to listboxCupom.Items.Count-1 do begin

          SendMessage(listboxCupom.Handle,WM_VSCROLL,SB_LINEDOWN,0);

        end;//for

      end;//if


      if lbl_CancelaItem.Caption <> '' Then begin

      listboxCupom.Items.Add(Produto[0] + ' ' + '-' + ' ' + Produto[1]+ ' ' + Produto[8]);
      listboxCupom.Items.Add(Produto[3] + ' ' + ' ' + ' ' + Produto[4] + ' ' + ' ' + ' ' + Produto[5] + ' ' + ' ' + ' ' + Produto[6]  + ' ' + ' ' + ' ' + Produto[7]);

        for i := 0 to listboxCupom.Items.Count-1 do begin

          SendMessage(listboxCupom.Handle,WM_VSCROLL,SB_LINEDOWN,0);

        end;//for

      end;//if

  ////////////////////////////////////////////////////////////////////////////////
      if (lbl_edtSubTotal.Caption = '0,00') and (lbl_CancelaItem.Caption = '') Then begin

        lbl_edtSubTotal.Caption  := lbl_edtVlrTotal.Text;

     end else

     if (lbl_edtSubTotal.Caption > '0,00') and (lbl_CancelaItem.Caption = '') Then begin

        Valor1 := StrToFloat(StringReplace(lbl_edtSubTotal.Caption,ThousandSeparator,'',[rfReplaceAll]));
        Valor2 := StrToFloat(StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]));
        Valor3 := (Valor1)+ (Valor2);
        lbl_edtSubTotal.Caption := FormatFloat(',0.00',(Valor3));

      end;{if}

    {  if lbl_edtSubTotal.Text = '0,00' Then begin

      lbl_edtSubTotal.Text  := lbl_Valor.Caption;

      Valor1 := StrToFloat(StringReplace(lbl_edtSubTotal.Text,ThousandSeparator,'',[rfReplaceAll]));

     end else begin

      Valor1 := StrToFloat(StringReplace(lbl_edtSubTotal.Text,ThousandSeparator,'',[rfReplaceAll]));
      Valor2 := StrToFloat(lbl_Valor.Caption);
      Valor3 := StrToFloat(FormatFloat(',0.00',(Valor1)+ (Valor2)));
      lbl_edtSubTotal.Text := FormatFloat(',0.00',(Valor3));   }

   //  end;{if}

////////////////////////////////////////////////////////////////////////////////
             
     if  (lbl_CancelaItem.Caption <> '') Then begin

        Valor1 := StrToFloat(StringReplace(lbl_edtSubTotal.Caption,ThousandSeparator,'',[rfReplaceAll]));
        Valor2 := StrToFloat(StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]));
        Valor3 := (Valor1)-(Valor2);
        lbl_edtSubTotal.Caption := FormatFloat(',0.00',(Valor3));
        lbl_CancelaItem.Caption := '';

      end;{if}

////////////////////////////////////////////////////////////////////////////////

     if ConfirmaVendaCx = True Then begin

       GravaCx;//procedimento para gravar a venda

     end else if ConfirmaVendaCx = False Then begin

       GravaCancelamento;

     end;

      lbl_edtQtde.Text := '1';
      lbl_edtVlrTotal.Text   := '0,00';
      lbl_edtVlrUnit.Text := '0,00';
      lbl_TipoPreco.Caption := '';
      lbl_edtCodBarras.SetFocus;
      lbl_NomeProd.Caption := '';

    end else begin

      Application.MessageBox('Para concluir um lan�amento selecione um produto ou servi�o?','Lan�amento em branco',+MB_YESNO+MB_ICONQUESTION);

    end;//iflblvlrtotal

  end;{if}

end;

procedure TfrmVendasLoja.lbl_edtCodBarrasChange(Sender: TObject);

var

i : Integer;

OleGraphic: TOleGraphic;
fs: TFileStream;

begin

  with dmModule do begin

    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT CADPRODUTOS.*,LOCALESTOCAGEM.NOME As Estoque FROM CADPRODUTOS '
    + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE '
    + 'WHERE CADPRODUTOS.CODBARRAS=''' + lbl_edtCodBarras.Text + ''' or CADPRODUTOS.CODBARRASAD=''' + lbl_edtCodBarras.Text + '''');
    ibProdutos.Open;

    lbl_edtIDProdCX.Text := IntToStr(ibProdutos.FieldByName('IDPROD').AsInteger);

    if lbl_TipoPreco.Caption = '' Then begin

      TipoPreco := 'A';

    end;


    IDProdVenda := ibProdutos.FieldByName('IDPROD').AsInteger;
  //  lbl_edtEstoque.Text := ibProdutos.FieldByName('Estoque').AsString;

    if  (TipoPreco = 'A') Then begin

    lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);

    end else if  (TipoPreco = 'B') Then begin

    lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAB').AsFloat);

    end else if  (TipoPreco = 'C') Then begin

    lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAC').AsFloat);

    end else if  (TipoPreco = 'D') Then begin

    lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAD').AsFloat);


    end;

    lbl_NomeProd.Caption := ibProdutos.FieldByName('NOME').AsString;


    if lbl_edtQtde.Text = '0' then begin

     lbl_edtQtde.Text := '1';

    end;

     lbl_edtQtdeExit(Sender);

    if (lbl_edtQtde.Text > '0')  and (lbl_edtVlrTotal.Text > '0,00')  Then begin

     lbl_edtVlrTotal.SetFocus;
     lbl_edtInformacao.Caption := '';
     
    end;{if}

  //  if lbl_nomeprod.Caption <> '' Then begin

  //    lbl_edtVlrTotal.SetFocus;

      //ROTINA PARA EXIBIR A IMAGEM DO PRODUTO
   {   if Not FileExists(ExtractFilePath(Application.ExeName) + 'Data\RunTime\ProdImagens\' + lbl_NomeProd.Caption + '.jpg') Then begin

        imgProduto.Picture := Nil; //LIMPA A IMAGEM
        ImagemProduto := '';

      end else begin

        try
          OleGraphic := TOleGraphic.Create;
          fs         := TFileStream.Create(ExtractFilePath(Application.ExeName) //EXIBE A IMAGEM DO PRODUTO
                                          + 'Data\RunTime\ProdImagens\' + lbl_NomeProd.Caption + '.jpg', fmOpenRead or fmSharedenyNone);
          OleGraphic.LoadFromStream(fs);
          imgProduto.Picture.Assign(OleGraphic);

         // imgProduto.Picture.LoadFromFile();

          ImagemProduto := ExtractFilePath(Application.ExeName) //EXIBE A IMAGEM DO PRODUTO
                                          + 'Data\RunTime\ProdImagens\' + lbl_NomeProd.Caption + '.jpg';

        finally
          fs.Free;
          OleGraphic.Free
        end;  }

   //    end;

 //    end;

    {   if lbl_NomeProd.Caption <> '' Then begin
      //ROTINA PARA EXIBIR A IMAGEM DO PRODUTO
      if Not FileExists(ExtractFilePath(Application.ExeName) + 'Data\RunTime\ProdImagens\' + lbl_NomeProd.Caption + '.jpg') Then begin

        imgProduto.Picture := Nil; //LIMPA A IMAGEM
        ImagemProduto := '';

      end else begin

        try
          OleGraphic := TOleGraphic.Create;
          fs         := TFileStream.Create(ExtractFilePath(Application.ExeName) //EXIBE A IMAGEM DO PRODUTO
                                          + 'Data\RunTime\ProdImagens\' + lbl_NomeProd.Caption + '.jpg', fmOpenRead or fmSharedenyNone);
          OleGraphic.LoadFromStream(fs);
          imgProduto.Picture.Assign(OleGraphic);

         // imgProduto.Picture.LoadFromFile();

          ImagemProduto := ExtractFilePath(Application.ExeName) //EXIBE A IMAGEM DO PRODUTO
                                          + 'Data\RunTime\ProdImagens\' + lbl_NomeProd.Caption + '.jpg';

        finally
          fs.Free;
          OleGraphic.Free
        end;  }

      // end;


  //   end;{cboproduto}


  end;{with}

end;

procedure TfrmVendasLoja.lbl_edtCodBarrasKeyPress(Sender: TObject;
  var Key: Char);

var

Produto : Array[0..3] of String;

begin

  if Key = #13 Then begin

    if lbl_edtCodBarras.Text <> '' Then begin

    Produto[0]:=lbl_edtCodBarras.Text;
    Produto[1]:=lbl_NomeProd.Caption;
    Produto[2]:=lbl_edtVlrUnit.Text;
  //  Produto[4]:=lbl_X.Caption;



 //  lbl_CodBarras.Caption := Produto[0];
//    lbl_Traco.Caption := '-';
    lbl_NomeProd.Caption := Produto[1];
 //   lbl_Valor.Caption := Produto[2];


      lbl_edtQtde.Text := '1';
      lbl_edtQtde.SetFocus;

    end else begin

    lbl_edtCodProd.SetFocus;

    end;

  end;

end;

procedure TfrmVendasLoja.cboTipoCompromissoChange(Sender: TObject);
begin
  lbl_edtVlrTotal.SetFocus;
end;

procedure TfrmVendasLoja.lbl_edtVlrSangriaKeyPress(Sender: TObject;
  var Key: Char);
var

Produto : Array[0..2] of String;

begin

  if Key = #13 Then begin

 //   Produto[0]:=lbl_Sangria.Caption;
 //   Produto[1]:=lbl_edtVlrSangria.Text;
  {  Produto[2]:=cboTipoCompromisso.Text;
    Produto[3]:=lbl_edtQtde.Text;
    Produto[4]:=lbl_X.Caption;
    Produto[5]:=lbl_edtVlrUnit.Text;
    Produto[6]:=lbl_edtIgual.Caption;
    Produto[7]:=lbl_edtVlrTotal.Text;}


  //  listboxCupom.Items.Add(Produto[0] + ' ' + '-' + ' ' + ' ' + 'R$' + ' ' + Produto[1]);
  //  listboxCupom.Items.Add(Produto[3] + ' ' + ' ' + ' ' + Produto[4] + ' ' + ' ' + ' ' + Produto[5] + ' ' + ' ' + ' ' + Produto[6]  + ' ' + ' ' + ' ' + Produto[7]);


  //  ibeaOkProdClick(Sender);


  end;{if}


end;

procedure TfrmVendasLoja.lbl_edtCodBarrasExit(Sender: TObject);

//var

//i : Integer;
//OleGraphic: TOleGraphic;
//fs: TFileStream;

begin

  with dmModule do begin

      //ROTINA PARA EXIBIR A IMAGEM DO PRODUTO
   {   if Not FileExists(ExtractFilePath(Application.ExeName) + 'Data\RunTime\ProdImagens\' + lbl_NomeProd.Caption + '.jpg') Then begin

        imgProduto.Picture := Nil; //LIMPA A IMAGEM
        ImagemProduto := '';

      end else begin

        try
          OleGraphic := TOleGraphic.Create;
          fs         := TFileStream.Create(ExtractFilePath(Application.ExeName) //EXIBE A IMAGEM DO PRODUTO
                                          + 'Data\RunTime\ProdImagens\' + lbl_NomeProd.Caption + '.jpg', fmOpenRead or fmSharedenyNone);
          OleGraphic.LoadFromStream(fs);
          imgProduto.Picture.Assign(OleGraphic);

         // imgProduto.Picture.LoadFromFile();

          ImagemProduto := ExtractFilePath(Application.ExeName) //EXIBE A IMAGEM DO PRODUTO
                                          + 'Data\RunTime\ProdImagens\' + lbl_NomeProd.Caption + '.jpg';

        finally
          fs.Free;
          OleGraphic.Free
        end;

       end;  }

  end;{with}

end;

procedure TfrmVendasLoja.lbl_edtDescVendaExit(Sender: TObject);

var

Valor1,Valor2 : Real;


begin
 { with dmModule do begin

   if lbl_edtDescVenda.Text <> '' Then begin //se for em branco executa rotina abaixo.

      if (Pos(',',lbl_edtDescVenda.Text)>0) and (lbl_edtDescVenda.Text <> '') Then begin

        Valor1 := StrToFloat(StringReplace(lbl_edtDescVenda.Text,ThousandSeparator,'',[rfReplaceAll]));
        Valor2 := StrToFloat(StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]));
        lbl_edtVlrTotal.Text := FormatFloat(',0.00',(Valor2 - Valor1));


      end else begin

        Valor1 := StrToFloat(StringReplace(lbl_edtDescVenda.Text,ThousandSeparator,'',[rfReplaceAll]));
        Valor2 := StrToFloat(StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]));
        lbl_edtVlrTotal.Text := FormatFloat(',0.00',(Valor2 - Valor1)); }


     // end;{if}

  //  end;{if}

 //   lbl_edtDescVenda.Text} := FormatFloat(CasasDecimais('Produtos'),StrToFloat(lbl_edtDescVenda.Text)); //FormatFloat(casa',0.00',StrToFloat(lbl_edtValor.Text));

//  end;{with}


end;

procedure TfrmVendasLoja.lbl_edtDescVendaKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtVlrTotal.SetFocus;

  end;//if//

end;

procedure TfrmVendasLoja.lbl_edtCodCartaoExit(Sender: TObject);

var

ValorPosVenda : Real;
TotalPosVenda,VlrTotalPosVenda : String;

begin

  with dmModule do begin

    ibServsVenda.Close;
    ibServsVenda.SQL.Clear;
    ibServsVenda.SQL.Add('SELECT TBLSERVICOSVENDAS.IDPROD,TBLSERVICOSVENDAS.VLRUNIT,'
    + 'TBLSERVICOSVENDAS.QTDE,TBLSERVICOSVENDAS.DATA,TBLSERVICOSVENDAS.ESTOQUE,'
    + 'TBLSERVICOSVENDAS.HORA,TBLSERVICOSVENDAS.VLRTOTAL,'
    + 'TBLSERVICOSVENDAS.VALORB,TBLSERVICOSVENDAS.VALORC,CADPRODUTOS.NOME As PRODUTO,'
    + 'TBLSERVICOSVENDAS.IDSERVSVENDA FROM TBLSERVICOSVENDAS '
    + 'LEFT OUTER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD '
    + 'WHERE  TBLSERVICOSVENDAS.CODPOSVENDA=''' + lbl_edtCodCartao.Text + '''');
    ibServsVenda.Open;

    while not ibServsVenda.Eof do begin//enquanto nao for fim de registro

      if ValorPosVenda = 0 Then begin//se variavel for igual a zero

        //atribui o vlr do campo abaixo na variavel
        ValorPosVenda := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

      end else begin

        //atribui na variavel substituindo o ponto para vlr em branco
        TotalPosVenda := StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);
        //atribui a variavel o valor separando por ponto
        ValorPosVenda := ValorPosVenda + StrtoFloat(StringReplace(TotalPosVenda,ThousandSeparator,'',[rfReplaceAll]));

      end;{if}

     ibServsVenda.Next;

    end;//while

    lbl_edtSubTotal.Caption := FormatFloat(',0.00',ValorPosVenda);

  end;//with

end;

procedure TfrmVendasLoja.lbl_edtFuncComissaoKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtCodBarras.SetFocus;

  end;//if

end;

procedure TfrmVendasLoja.lbl_edtFuncComissaoExit(Sender: TObject);
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

end.
