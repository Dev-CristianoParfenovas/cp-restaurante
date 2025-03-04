unit untManutCx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls,
  ComCtrls, DB, IBQuery, Buttons, classComboBox;

type
  TfrmManutCx = class(TForm)
    imgBarraSist: TImage;
    lbl_Cupom: TLabel;
    lbl_DTInicio: TLabel;
    lbl_DtFinal: TLabel;
    lbl_edtProduto: TLabeledEdit;
    lbl_edtQtde: TLabeledEdit;
    lbl_edtVlrUnit: TLabeledEdit;
    lbl_edtVlrTotal: TLabeledEdit;
    dbgDetalheProd: TDBGrid;
    lbl_edtTotalCaixa: TLabeledEdit;
    lbl_edtNumCupom: TLabeledEdit;
    ibeaAlterar: TSpeedButton;
    ibeaExcluir: TSpeedButton;
    ibeaSair: TSpeedButton;
    ibeaImprimirCupom: TSpeedButton;
    cboFunc: TComboBox;
    Label1: TLabel;
    dtpDataIni: TDateTimePicker;
    dtpDataFinal: TDateTimePicker;
    procedure Commit(IBQueryExec : TIBQuery);
    procedure LimpaCampos;
    procedure ibeaSairClick(Sender: TObject);
    procedure dtpDataFinalChange(Sender: TObject);
    procedure SELECTFunc;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgDetalheProdCellClick(Column: TColumn);
    procedure ibeaAlterarClick(Sender: TObject);
    procedure lbl_edtQtdeExit(Sender: TObject);
    procedure ibeaExcluirClick(Sender: TObject);
    procedure ibeaImprimirCupomClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmManutCx: TfrmManutCx;
  ValorGeralCX : Real;
  ValorB : Real;
  ValorC : Real;
  ValorAcrescimo : Real;
  TotalAcrescimo : String;
  ValorTotalCX : String;
  ValorGeral : Real;
  TotalBC : Real;
  MontaCol : Boolean;
  TotalB : String;
  TotalC : String;
  IDRestaurante: Integer;
  ConfirmaMSG : Integer;
  QtdeAlterada : String;
  VlrTotalAlteradoA : String;
  VlrTotalAlteradoB : String;
  VlrTotalAlteradoC : String;
  TipoPreco : String;
  IDDetalheR : Integer;
  IDProdutoMCX : Integer;

implementation

uses untdmModule, funcPosto, Daruma_Framework_Autenticar,
  Daruma_Framework_DUAL_ImprimirTexto, Daruma_Framework_Exemplo_Dual_01,
  Daruma_Framework_Exemplo_DUAL_02, Daruma_Framework_Impressora_Dual,
  Daruma_Framework_Looping_Verificacao_Status,
  Daruma_Framework_Looping_Verificacao_Status_Doc,
  Daruma_Framework_Variaveis_Globais;
Function Daruma_DUAL_ImprimirTexto( TextoLivre: String; TamanhoTexto: Integer ): Integer; StdCall; External 'Daruma32.dll'

{$R *.dfm}

procedure TfrmManutCX.Commit(IBQueryExec : TIBQuery);

begin

  with dmModule do begin

    with IBQueryExec do begin

      SQL.Clear;
      SQL.Add('Commit');
      Open;
      Close;

    end;{with query exec}

  end;{with}

end;

procedure TfrmManutCX.LimpaCampos;

begin

  lbl_edtTotalCaixa.Text := '0,00';
  lbl_edtProduto.Text := '';
  lbl_edtQtde.Text := '0';
  lbl_edtVlrUnit.Text := '0,00';
  lbl_edtVlrTotal.Text := '0,00';

end;

procedure TfrmManutCx.ibeaSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmManutCx.SELECTFunc;

var

ClassFunc : TClasseCombo;

begin

  with dmModule do begin

    ibUser.Close;
    ibUser.SQL.Clear;
    ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE(TIPOUSUARIO=''Funcionario'')or(TIPOUSUARIO=''Vendedor'')ORDER BY LOGIN');
    ibUser.Open;

    cboFunc.Clear;

    while not ibUser.Eof do begin

      ClassFunc     := TClasseCombo.Create;
      ClassFunc.ID  := ibUser.FieldByName('IDUSER').AsInteger;//ATRIBUI A IDENTIFICACAO DO FUNCIONARIO ATRAVES DO ID NA VARIAVEL.
      cboFunc.Items.AddObject(ibUser.FieldByName('LOGIN').AsString,ClassFunc);//TRAZ OS ITENS ADICIONADOS AO OBJETO SELECIONADO NO COMBO E A DESCRICAO DO FUNCIONARIO.
      ibUser.Next;

    end;

  end;{with}

end;

procedure TfrmManutCx.dtpDataFinalChange(Sender: TObject);

var

ValorCx    : Real;
ValorTroco : Real;
ValorVenda : Real;
ValorSangria,VlrSubTotal : Real;
GeralCx :  String;
GeralTroco : String;
GeralVenda : String;
GeralSangria, TipoSaida : String;

begin

  with dmModule do begin

      Commit(ibTempRestaurante);
      ibTempRestaurante.Close;
      ibTempRestaurante.SQL.Clear;
      ibTempRestaurante.SQL.Add('SELECT TBLRESTAURANTE.*,'
      + 'TBLTIPOPAGTOAVULSO.TIPOPAGTO As TipodePagto,'
      + 'TBLTIPOPAGTOAVULSO.DESCRICAO As NomedoCartao,'
      + 'TBLRECEBERESTAURANTE.VLRDESCONTO,TBLRECEBERESTAURANTE.VLRACRESCIMO FROM TBLRESTAURANTE '
      + 'LEFT OUTER JOIN TBLRECEBERESTAURANTE ON TBLRESTAURANTE.IDDETALHER=TBLRECEBERESTAURANTE.IDDETALHER '
      + 'INNER JOIN TBLTIPOPAGTOAVULSO ON TBLRESTAURANTE.IDTIPOPAGTOR=TBLTIPOPAGTOAVULSO.IDTIPO WHERE(TBLRESTAURANTE.DATA Between :ParamDataIni and :ParamDataF) ORDER BY TBLRESTAURANTE.IDDETALHER ASC');
      ibTempRestaurante.Open;

      ibTempRestaurante.Close;
      ibTempRestaurante.ParamByName('ParamDataIni').Value := dtpDataIni.DateTime;
      ibTempRestaurante.ParamByName('ParamDataF').Value := dtpDataFinal.DateTime;
      ibTempRestaurante.Open;

     (ibTempRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
     (ibTempRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
     (ibTempRestaurante.FieldByName('VLRSANGRIA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO



    while not ibTempRestaurante.Eof do begin//enquanto nao for fim de registro and (ValorB = 0) and (ValorC = 0)and(ValorAcrescimo = 0)

          if (ValorGeralCX = 0)  Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorGeralCX := StrtoFloat(StringReplace(FloattoStr(ibTempRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

         //   ValorB := StrToFloat(StringReplace(FloatToStr(ibTempVendaLoja.FieldByName('VALORB').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

         //   ValorC := StrToFloat(StringReplace(FloatToStr(ibTempVendaLoja.FieldByName('VALORC').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           // ValorAcrescimo := StrToFloat(StringReplace(FloatToStr(ibTempVendaLoja.FieldByName('ACRESCIMO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorTotalCX := StringReplace(FloattoStr(ibTempRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

           // TotalB := StringReplace(FloatToStr(ibTempVendaLoja.FieldByName('VALORB').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

           // TotalC := StringReplace(FloatToStr(ibTempVendaLoja.FieldByName('VALORC').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          //  TotalAcrescimo := StringReplace(FloatToStr(ibTempVendaLoja.FieldByName('ACRESCIMO').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorGeralCX := ValorGeralCX + StrtoFloat(StringReplace(ValorTotalCX,ThousandSeparator,'',[rfReplaceAll]));

         //   ValorB := ValorB + StrToFloat(StringReplace(TotalB,ThousandSeparator,'',[rfReplaceAll]));

           // ValorC := ValorC + StrToFloat(StringReplace(TotalC,ThousandSeparator,'',[rfReplaceAll]));

          //  ValorAcrescimo := ValorAcrescimo + StrToFloat(StringReplace(TotalAcrescimo,ThousandSeparator,'',[rfReplaceAll]));

           end;{if}

         //  TotalBC := ValorB + ValorC;

         //   if (TotalBC = 0)  Then begin


              ValorGeral :=  ValorGeralCX;

          //  end else begin

           //   ValorGeral := TotalBC + ValorGeralCX;

           // end;


          ibTempRestaurante.Next;//vai para o pproximo registro pro looping nao ficar infinito.

        end;{while}

       if lbl_edtTotalCaixa.Text = '0,00' Then begin

       ///  if ValorAcrescimo > 0 Then begin

         lbl_edtTotalCaixa.Text := FormatFloat(CasasDecimais('Produtos'),ValorGeral);

      ///   end else begin

       ///  lbl_edtTotalCaixa.Text := FormatFloat(CasasDecimais('Produtos'),ValorGeral);

       ///  end;

       end;


/////////////////////////////////////////////////////////////////////////////////

    { lbl_edtTotalCx.Text := FormatFloat(CasasDecimais('Produtos'),ValorCx);
     lbl_edtTotalTroco.Text := FormatFloat(CasasDecimais('Produtos'),ValorTroco);
     lbl_edtSubTotal.Text := FormatFloat(CasasDecimais('Produtos'),ValorVenda);
     lbl_edtSangria.Text := FormatFloat(CasasDecimais('Produtos'),ValorSangria);
     lbl_edtTotalPeriodo.Text := FormatFloat(CasasDecimais('Produtos'),VlrSubTotal);}


  end;{with}

end;

procedure TfrmManutCx.FormShow(Sender: TObject);
begin

  dtpDataIni.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
  dtpDataFinal.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
//  lbl_TipoPreco.Caption := '';
  TipoPreco := '';

  ValorGeralCX := 0;
//  ValorB := 0;
//  ValorC := 0;
    lbl_edtProduto.Text := '';
    lbl_edtQtde.Text := '';
    lbl_edtVlrUnit.Text := '';
    lbl_edtVlrTotal.Text := '';
  LimpaCampos;
  
  with dmModule do begin

    SELECTFunc;

    ibTempRestaurante.Close;

    //Adiciona as Colunas com os dados do Clientes
    with dbgDetalheProd do begin

      // monta as colunas abaixo se for verdadeiro
      if MontaCol Then begin

         DataSource := dmModule.dtsTempRestaurante;

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
        ///Columns.Insert(10);

        //Parametros da Coluna que exibe o Nome do cliente.

        Columns.Items[0].Title.Caption := 'N�Cupom ';
        Columns.Items[0].FieldName     := 'IDDETALHER';
        Columns.Items[0].Width         := 50;
        Columns.Items[0].Alignment     := taLeftJustify;

        Columns.Items[1].Title.Caption := 'Produto';
        Columns.Items[1].FieldName     := 'NOMEPRODUTO';
        Columns.Items[1].Width         := 180;
        Columns.Items[1].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o Nome do cliente.
        Columns.Items[2].Title.Caption := 'Qtde.';
        Columns.Items[2].FieldName     := 'QTDE';
        Columns.Items[2].Width         := 70;
        Columns.Items[2].Alignment     := taLeftJustify;

       // Parametros que exibe o compl. do cliente
        Columns.Items[3].Title.Caption := 'Vlr.Unit.';
        Columns.Items[3].FieldName     := 'VLRUNIT';
        Columns.Items[3].Width         := 80;
        Columns.Items[3].Alignment     := taLeftJustify;

       // Parametros que exibe o compl. do cliente
        Columns.Items[4].Title.Caption := 'Valor Venda';
        Columns.Items[4].FieldName     := 'VLRTOTAL';
        Columns.Items[4].Width         := 80;
        Columns.Items[4].Alignment     := taLeftJustify;

       // Parametros que exibe o compl. do cliente
        Columns.Items[5].Title.Caption := 'Data';
        Columns.Items[5].FieldName     := 'DATA';
        Columns.Items[5].Width         := 70;
        Columns.Items[5].Alignment     := taLeftJustify;

       // Parametros que exibe o compl. do cliente
        Columns.Items[6].Title.Caption := 'Hora';
        Columns.Items[6].FieldName     := 'HORA';
        Columns.Items[6].Width         := 70;
        Columns.Items[6].Alignment     := taLeftJustify;

       // Parametros que exibe o compl. do cliente
        Columns.Items[7].Title.Caption := 'Mesa(s)';
        Columns.Items[7].FieldName     := 'MESAS';
        Columns.Items[7].Width         := 70;
        Columns.Items[7].Alignment     := taLeftJustify;

        Columns.Items[8].Title.Caption := 'Vlr.Sangria';
        Columns.Items[8].FieldName     := 'VLRSANGRIA';
        Columns.Items[8].Width         := 80;
        Columns.Items[8].Alignment     := taLeftJustify;

        Columns.Items[9].Title.Caption := 'Obs.';
        Columns.Items[9].FieldName     := 'OBS';
        Columns.Items[9].Width         := 180;
        Columns.Items[9].Alignment     := taLeftJustify;


        MontaCol := False;

      end; {if}

    end; {with do db grid}
////////////////////////////////////////////////////////////////////////////////


  end;{with}

end;

procedure TfrmManutCx.FormCreate(Sender: TObject);
begin
  MontaCol := True;
end;

procedure TfrmManutCx.dbgDetalheProdCellClick(Column: TColumn);

///var

///TotalCupom : Real;
///VlrTotalCupom : String;
///i : Integer;

begin

  with dmModule do begin

    IDRestaurante  := ibTempRestaurante.FieldByName('IDRESTAURANTE').AsInteger;
    IDDetalheR     := ibTempRestaurante.FieldByName('IDDETALHER').AsInteger;
    IDProdutoMCX   := ibTempRestaurante.FieldByName('IDPRODUTO').AsInteger;

    if ibTempRestaurante.RecordCount > 0 Then begin

    lbl_edtProduto.Text     := ibTempRestaurante.FieldByName('NOMEPRODUTO').AsString;
    lbl_edtQtde.Text := FormatFloat('0',ibTempRestaurante.FieldByName('QTDE').AsFloat);
    lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibTempRestaurante.FieldByName('VLRUNIT').AsFloat);

  {  if ibTempRestaurante.FieldByName('VLRTOTAL').AsFloat <> 0 Then begin
   
   lbl_edtVlrTotal.Text := FormatFloat(CasasDecimais('Produtos'),ibTempRestaurante.FieldByName('VLRTOTAL').AsFloat);
  //  lbl_TipoPreco.Caption := 'Pre�o (A)';
    TipoPreco := 'A';

    end else if ibTempRestaurante.FieldByName('VALORB').AsFloat <> 0 Then begin

    lbl_edtVlrTotal.Text := FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VALORB').AsFloat);
  //  lbl_TipoPreco.Caption := 'Pre�o (B)';
    TipoPreco := 'B';

    end else if ibTempVendaLoja.FieldByName('VALORC').AsFloat <> 0 Then begin

    lbl_edtVlrTotal.Text := FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VALORC').AsFloat);
  //  lbl_TipoPreco.Caption := 'Pre�o (C)';
    TipoPreco := 'C';

    end;}  

    end; 


////////////////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////////////////


  end;{with}

end;

procedure TfrmManutCx.ibeaAlterarClick(Sender: TObject);
begin

 { with dmModule do begin

  ConfirmaMSG := Application.MessageBox('Confirma Altera��o?','Notifica��o:Altera��o de Registro', + MB_YESNO + MB_ICONQUESTION);

    if ConfirmaMSG = 6 Then begin


      QtdeAlterada := StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]);
      QtdeAlterada := StringReplace(QtdeAlterada,DecimalSeparator,'.',[rfReplaceAll]);
      if QtdeAlterada = '' Then
      QtdeAlterada := '0';


      if TipoPreco = 'A' Then begin

        VlrTotalAlteradoA := StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]);
        VlrTotalAlteradoA := StringReplace(VlrTotalAlteradoA,DecimalSeparator,'.',[rfReplaceAll]);

      end else begin

        VlrTotalAlteradoA := '0';

      end;


      if TipoPreco = 'B' Then begin

        VlrTotalAlteradoB := StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]);
        VlrTotalAlteradoB := StringReplace(VlrTotalAlteradoB,DecimalSeparator,'.',[rfReplaceAll]);

      end else begin

        VlrTotalAlteradoB := '0';

      end;


      if TipoPreco = 'C' Then begin

        VlrTotalAlteradoC := StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]);
        VlrTotalAlteradoC := StringReplace(VlrTotalAlteradoC,DecimalSeparator,'.',[rfReplaceAll]);

      end else begin

        VlrTotalAlteradoC := '0';

      end;

      ibTempVendaLoja.Close;
      ibTempVendaLoja.SQL.Clear;
      ibTempVendaLoja.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
      + 'QTDE=''' + QtdeAlterada + ''','
      + 'VLRTOTAL=''' + VlrTotalAlteradoA + ''','
      + 'VALORB='''+ VlrTotalAlteradoB + ''','
      + 'VALORC=''' + VlrTotalAlteradoC + ''' WHERE IDSERVS=''' + IntToStr(IDServs) + '''');
      ibTempVendaLoja.ExecSQL;
      Commit(ibTempVendaLoja);


      Commit(ibTempVendaLoja);
      ibTempVendaLoja.Close;
      ibTempVendaLoja.SQL.Clear;
      ibTempVendaLoja.SQL.Add('SELECT TBLSERVICOSVENDAS.IDPROD,TBLSERVICOSVENDAS.CONDICOESPAGTOSERV,TBLSERVICOSVENDAS.IDSERVSVENDA,TBLSERVICOSVENDAS.ESTOQUE,'
      + 'TBLSERVICOSVENDAS.QTDE,TBLSERVICOSVENDAS.NUMEROCUPOM,TBLSERVICOSVENDAS.HORA,TBLSERVICOSVENDAS.VLRUNIT,TBLSERVICOSVENDAS.VLRTOTAL,TBLSERVICOSVENDAS.DATA,'
      + 'TBLSERVICOSVENDAS.VLRSANGRIA,TBLSERVICOSVENDAS.VALORB,TBLSERVICOSVENDAS.VALORC,'
      + 'TBLSERVICOSVENDAS.VLRPARCIAL,TBLSERVICOSVENDAS.TOTALPARCIAL,TBLSERVICOSVENDAS.NOMEPROD,'
      + 'TBLSERVICOSVENDAS.IDSERVS,TBLSERVICOSVENDAS.NOMESERVICO,TBLRECEBEVENDAS.VLRPAGO,'
      + 'TBLRECEBEVENDAS.TROCO,TBLRECEBEVENDAS.TOTALVENDA FROM TBLSERVICOSVENDAS '
      + 'LEFT OUTER JOIN TBLRECEBEVENDAS ON TBLSERVICOSVENDAS.IDSERVS=TBLRECEBEVENDAS.IDVENDA '
      + 'WHERE TBLSERVICOSVENDAS.IDSERVSVENDA=''' + IntToStr(IDServsVenda) + ''' and (TBLSERVICOSVENDAS.DATA between :ParamDataInicial and :ParamDataFinal) ORDER BY TBLSERVICOSVENDAS.IDSERVSVENDA');
      ibTempVendaLoja.Open;

      ibTempVendaLoja.Close;
      ibTempVendaLoja.ParamByName('ParamDataInicial').Value := dtpDataIni.DateTime;
      ibTempVendaLoja.ParamByName('ParamDataFinal').Value := dtpDataFinal.DateTime;
      ibTempVendaLoja.Open;

     (ibTempVendaLoja.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
     (ibTempVendaLoja.FieldByName('VALORB') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
     (ibTempVendaLoja.FieldByName('VALORC') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
     (ibTempVendaLoja.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); }//CRIA UMA MASCARA PARA O CAMPO


   /// end;{if confirmamsg}
    
 /// end;{with}

end;

procedure TfrmManutCx.lbl_edtQtdeExit(Sender: TObject);

var

Valor1,Valor2 : Real;

begin

  if (lbl_edtQtde.Text <> '') Then begin// se for em branco executa rotina abaixo.

    if (Pos(',',lbl_edtQtde.Text)>0) and (lbl_edtQtde.Text <> '') Then begin
      
      Valor1 := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));

      Valor2 := StrToFloat(StringReplace(lbl_edtVlrUnit.Text,ThousandSeparator,'',[rfReplaceAll]));

      lbl_edtVlrTotal.Text := FormatFloat(',0.00',(Valor2 * Valor1));

    end else begin

      Valor1 := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));
      Valor2 := StrToFloat(StringReplace(lbl_edtVlrUnit.Text,ThousandSeparator,'',[rfReplaceAll]));
      lbl_edtVlrTotal.Text := FormatFloat(',0.00',(Valor2 * Valor1));


    {  if (lbl_edtQuantidade.Text <> '') and (lbl_edtQtdeProd.Text <> '') Then begin// se for diferente de branco executa rotina abaixo.

       Valor1 := StrToFloat(StringReplace(lbl_edtQuantidade.Text,ThousandSeparator,'',[rfReplaceAll]));
       Valor2 := StrToFloat(StringReplace(lbl_edtVlrunit.Text,ThousandSeparator,'',[rfReplaceAll]));
       Valor3 := StrToFloat(StringReplace(lbl_edtQtdeProd.Text,ThousandSeparator,'',[rfReplaceAll]));

       Valor4 := (Valor1 + Valor3);

       lbl_edtQtdeProd.Text := FormatFloat(',0.00',(Valor4));

       lbl_edtTotalEstoque.Text := FormatFloat(',0.00',(Valor4 * Valor2));

      end; }

    end;{if}

  end;{if}

end;

procedure TfrmManutCx.ibeaExcluirClick(Sender: TObject);

var

ValorVendaCx,ValorCancelado, TotalCancelado : Real;
TotaldoCupom : String;
QtdeEstoque, VlrProduto, ValorCustoE : Real;
QtdeVenda : Real;
EstoqueFinal, TotalProdEstoque, TotalCusto : String;

ValorCxCancelado,ValorBCancelado,ValorCCancelado : Real;
TotalCXCancelado,TotalBCancelado,TotalCCancelado : String;
TotalBCCancelado,ValorGeralCancelado,TotalGBC : Real;

//** variavies para cancelaento do cupom inteiro

IDProdutoDevolucao, ConfirmaCupomInteiro : Integer;
QtdeVendaDevolve, VlrProdutoDevolve, ValorCustoDevolve, QtdeEstoqueDevolve : Real;
EstoqueFinalDevolve, TotalProdEstoqueDevolve, TotalCustoDevolve : String;


begin

  if ValorCxCancelado > 0 Then begin

    ValorCxCancelado := 0;

  end;

 { if ValorBCancelado > 0 Then begin

    ValorBCancelado := 0;

  end;

  if ValorCCancelado > 0 Then begin

    ValorCCancelado := 0;

  end;

  if TotalGBC > 0 Then begin

    TotalGBC := 0;

  end;

  if TotalBCCancelado > 0 Then begin

    TotalBCCancelado := 0;

  end;  }

  if ValorGeralCX > 0 Then begin

    ValorGeralCX := 0;

  end;

  if ValorGeralCancelado > 0 Then begin

    ValorGeralCancelado := 0;

  end;

  if TotalCXCancelado > '0' Then begin

    TotalCXCancelado := '0';

  end;

{  if TotalBCancelado > '0' Then begin

    TotalBCancelado := '0';

  end;

  if TotalCCancelado > '0' Then begin

    TotalCCancelado := '0';

  end; }


  with dmModule do begin

  ConfirmaMSG := Application.MessageBox('Deseja Excluir?','Notifica��o:Exclus�o de Registro', + MB_YESNO + MB_ICONQUESTION);

    if ConfirmaMSG = 6 Then begin


      if lbl_edtVlrTotal.Text <> '' Then begin

        ibRecebeRestaurante.Close;
        ibRecebeRestaurante.SQL.Clear;
        ibRecebeRestaurante.SQL.Add('SELECT * FROM TBLRECEBERESTAURANTE WHERE IDDETALHER=''' + IntToStr(IDDetalheR) + '''');
        ibRecebeRestaurante.Open;

        ValorVendaCx := StrtoFloat(StringReplace(FloattoStr(ibRecebeRestaurante.FieldByName('VLRTOTALVENDA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

        ValorCancelado   := StrToFloat(StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]));

        ValorVendaCx := ValorVendaCx - ValorCancelado;

        TotaldoCupom := StringReplace(FloattoStr(ValorVendaCx),ThousandSeparator,'',[rfReplaceAll]);
        TotaldoCupom := StringReplace(TotaldoCupom,DecimalSeparator,'.',[rfReplaceAll]);

        if TotaldoCupom > '0' Then begin

          ibRecebeRestaurante.Close;
          ibRecebeRestaurante.SQL.Clear;
          ibRecebeRestaurante.SQL.Add('UPDATE TBLRECEBERESTAURANTE SET '
          + 'VLRTOTALVENDA = ''' + TotaldoCupom + ''' WHERE IDDETALHER=''' + IntToStr(IDDetalheR) + '''');
          ibRecebeRestaurante.ExecSQL;
          Commit(ibRecebeRestaurante);

        end;//if totalcupom >0

        if TotaldoCupom = '0' Then begin

          ibRecebeRestaurante.Close;
          ibRecebeRestaurante.SQL.Clear;
          ibRecebeRestaurante.SQL.Add('DELETE FROM TBLRECEBERESTAURANTE WHERE IDDETALHER=''' + IntToStr(IDDetalheR) + '''');
          ibRecebeRestaurante.Open;

        end;//if totalcupom = 0

      end;//if lbl vlrtotal




      if lbl_edtNumCupom.Text = '' Then begin

        ibTempRestaurante.Close;
        ibTempRestaurante.SQL.Clear;
        ibTempRestaurante.SQL.Add('DELETE FROM TBLRESTAURANTE WHERE IDRESTAURANTE=''' + InttoStr(IDRestaurante) + '''');
        ibTempRestaurante.Open;

////////////////////////////////////////////////////////////////////////////////


      ibEntrProdEstoque.Close;
      ibEntrProdEstoque.SQL.Clear;
      ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,'
      + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,'
      + 'CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORCUSTO,CADPRODUTOS.TIPOPROD FROM TBLENTRADAESTOQUEPROD '
      + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
      + 'WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + IntToStr(IDProdutoMCX) + '''');
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
         +'VLRTOTAL=''' + (TotalProdEstoque) +  ''' WHERE IDPROD=''' + IntToStr(IDProdutoMCX) + '''');
         ibEntrProdEstoque.ExecSQL;
         Commit(ibEntrProdEstoque);

       end;{if}

////////////////////////////////////////////////////////////////////////////////

      end;//if n cupom


      if lbl_edtNumCupom.Text > '0' Then begin

        ConfirmaCupomInteiro := Application.MessageBox('Aten��o esta opera��o cancela o cupom inteiro, clique em sim pra continuar e n�o pra cancelar.','Cancelamento de Cupom',+MB_YESNO+MB_DEFBUTTON1+MB_ICONINFORMATION);

          ibTempRestaurante.Close;
          ibTempRestaurante.SQL.Clear;
          ibTempRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE IDRESTAURANTE=''' + lbl_edtNumCupom.Text + '''');
          ibTempRestaurante.Open;

        if ConfirmaCupomInteiro = 6 Then begin

          while not ibTempRestaurante.Eof do begin

          IDProdutoDevolucao := ibTempRestaurante.FieldByName('IDPRODUTO').AsInteger;

          QtdeVendaDevolve   := StrtoFloat(StringReplace(FloattoStr(ibTempRestaurante.FieldByName('QTDE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

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

         ibTempVendaLoja.Next;

         end;//while

          ibTempRestaurante.Close;
          ibTempRestaurante.SQL.Clear;
          ibTempRestaurante.SQL.Add('DELETE FROM TBLRESTAURANTE WHERE IDRESTAURANTE=''' + lbl_edtNumCupom.Text + '''');
          ibTempRestaurante.Open;


       end;//if  

       lbl_edtNumCupom.Clear;

      end;//if

      ibRecebeRestaurante.Close;
      ibRecebeRestaurante.SQL.Clear;
      ibRecebeRestaurante.SQL.Add('DELETE FROM TBLRECEBERESTAURANTE WHERE IDDETALHER=''' + InttoStr(IDDetalheR) + '''');
      ibRecebeRestaurante.Open;



      Commit(ibTempRestaurante);
      ibTempRestaurante.Close;
      ibTempRestaurante.SQL.Clear;
      ibTempRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE (TBLRESTAURANTE.DATA between :ParamDataInicial and :ParamDataFinal) ORDER BY TBLRESTAURANTE.IDRESTAURANTE');
      ibTempRestaurante.Open;

      ibTempRestaurante.Close;
      ibTempRestaurante.ParamByName('ParamDataInicial').Value := dtpDataIni.DateTime;
      ibTempRestaurante.ParamByName('ParamDataFinal').Value := dtpDataFinal.DateTime;
      ibTempRestaurante.Open;

     (ibTempRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
     (ibTempRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO


////////////////////////////////////////////////////////////////////////////////

        while not ibTempRestaurante.Eof do begin//enquanto nao for fim de registro   and (ValorBCancelado = 0) and (ValorCCancelado = 0)

          if (ValorCxCancelado = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorCxCancelado := StrtoFloat(StringReplace(FloattoStr(ibTempRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          //  ValorBCancelado := StrToFloat(StringReplace(FloatToStr(ibTempVendaLoja.FieldByName('VALORB').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          //  ValorCCancelado := StrToFloat(StringReplace(FloatToStr(ibTempVendaLoja.FieldByName('VALORC').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            TotalCXCancelado := StringReplace(FloattoStr(ibTempRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

           // TotalBCancelado := StringReplace(FloatToStr(ibTempVendaLoja.FieldByName('VALORB').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          //  TotalCCancelado := StringReplace(FloatToStr(ibTempVendaLoja.FieldByName('VALORC').AsFloat),ThousandSeparator,'',[rfReplaceAll]);


            //atribui a variavel o valor separando por ponto
            ValorCxCancelado := ValorCxCancelado + StrtoFloat(StringReplace(TotalCXCancelado,ThousandSeparator,'',[rfReplaceAll]));

           // ValorBCancelado := ValorBCancelado + StrToFloat(StringReplace(TotalBCancelado,ThousandSeparator,'',[rfReplaceAll]));

           // ValorCCancelado := ValorCCancelado + StrToFloat(StringReplace(TotalCCancelado,ThousandSeparator,'',[rfReplaceAll]));

           end;{if}

          // TotalBCCancelado := ValorBCancelado + ValorCCancelado;

         //   if (TotalBCCancelado = 0)  Then begin


              ValorGeralCancelado :=  ValorCxCancelado;

          //  end else begin

            //  ValorGeralCancelado := TotalBCCancelado + ValorCxCancelado;

          //  end;


          ibTempRestaurante.Next;//vai para o pproximo registro pro looping nao ficar infinito.

        end;{while}

      // if lbl_edtTotalCaixa.Text = '0,00' Then begin

       lbl_edtTotalCaixa.Text := FormatFloat(CasasDecimais('Produtos'),ValorGeralCancelado);

     // end;

    lbl_edtProduto.Text := '';
    lbl_edtQtde.Text := '';
    lbl_edtVlrUnit.Text := '';
    lbl_edtVlrTotal.Text := '';

    end;{if confirmamsg}

  end;{with}

end;

procedure TfrmManutCx.ibeaImprimirCupomClick(Sender: TObject);

var

NumeroCupom, NomeEmpresa : String;
NomeProduto,Qtde,Vlr,Total,DataConvertida,Hora : String;
VlrPago,Troco,TotalVenda,TXAcrescimo : String;
QtdedeSaltos,NomePagto : String;
begin

{  with dmModule do begin

    ibDadosEmpresa.Close;
    ibDadosEmpresa.SQL.Clear;
    ibDadosEmpresa.SQL.Add('SELECT * FROM TBLDADOSEMPRESA');
    ibDadosEmpresa.Open;

    Commit(ibConfig);
    ibConfig.Close;
    ibConfig.SQL.Clear;
    ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
    ibConfig.Open;

    QtdedeSaltos     := IntToStr(ibConfig.FieldByName('QTDESALTOS').AsInteger);


    if ibDadosEmpresa.RecordCount > 0 Then begin

    NomeEmpresa := ibDadosEmpresa.FieldByName('NOME').AsString;

    if lbl_edtNumCupom.Text <> '' Then begin

    NumeroCupom := lbl_edtNumCupom.Text;

    end;


      Commit(ibTempVendaLoja);
      ibTempVendaLoja.Close;
      ibTempVendaLoja.SQL.Clear;
      ibTempVendaLoja.SQL.Add('SELECT TBLSERVICOSVENDAS.IDPROD,TBLSERVICOSVENDAS.IDSERVSVENDA,TBLSERVICOSVENDAS.ESTOQUE,'
      + 'TBLSERVICOSVENDAS.QTDE,TBLSERVICOSVENDAS.HORA,TBLSERVICOSVENDAS.VLRUNIT,TBLSERVICOSVENDAS.VLRTOTAL,TBLSERVICOSVENDAS.DATA,'
      + 'TBLSERVICOSVENDAS.VLRSANGRIA,TBLSERVICOSVENDAS.VALORB,TBLSERVICOSVENDAS.VALORC,'
      + 'TBLSERVICOSVENDAS.NOMEPROD,TBLSERVICOSVENDAS.ACRESCIMO,TBLSERVICOSVENDAS.NOMEPAGTO,'
      + 'TBLSERVICOSVENDAS.IDSERVS,TBLSERVICOSVENDAS.OBS,TBLRECEBEVENDAS.VLRPAGO,'
      + 'TBLRECEBEVENDAS.TROCO,TBLRECEBEVENDAS.TOTALVENDA,TBLCADDOCUMENTACAO.CODIGO As CodCli,'
      + 'TBLCADASTRO.NOME As Cliente,TBLCADASTRO.NUMERO,TBLCADASTRO.PONTOREFERENCIA,'
      + 'TBLCADASTRO.TELEFONE,TBLCADASTRO.CELULAR,TBLCADASTRO.COMPL,'
      + 'TBLLOGRADOURO.ENDERECO,TBLLOGRADOURO.BAIRRO FROM TBLSERVICOSVENDAS '
      + 'LEFT OUTER JOIN TBLRECEBEVENDAS ON TBLSERVICOSVENDAS.IDSERVS=TBLRECEBEVENDAS.IDVENDA '
      + 'LEFT OUTER JOIN TBLCADDOCUMENTACAO ON TBLSERVICOSVENDAS.IDCLIENTE=TBLCADDOCUMENTACAO.IDCAD '
      + 'LEFT OUTER JOIN TBLCADASTRO ON TBLSERVICOSVENDAS.IDCLIENTE=TBLCADASTRO.IDCAD '
      + 'LEFT OUTER JOIN TBLLOGRADOURO ON TBLSERVICOSVENDAS.IDCLIENTE=TBLLOGRADOURO.IDCAD '
      + 'WHERE TBLSERVICOSVENDAS.IDSERVSVENDA=''' + NumeroCupom + '''');
      ibTempVendaLoja.Open;

      DataConvertida := FormatDateTime('DD/MM/YYYY',ibTempVendaLoja.FieldByName('DATA').AsDateTime);
      Hora           := FormatDateTime('hh:mm:ss',ibTempVendaLoja.FieldByName('HORA').AsDateTime);
      NomePagto      := ibTempVendaLoja.FieldByName('NOMEPAGTO').AsString;

      if NomePagto = '' Then begin

        NomePagto := 'DINHEIRO';

      end;  

      Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sp>1</sp>'+NomeEmpresa+ ''),0);
      Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tc>_</tc>'),0);
      Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Cupom N�.:<sp>1</sp>'+lbl_edtNumCupom.Text+ '<sp>1</sp>Data:<sp>1</sp>'+DataConvertida+ '<sp>1</sp>Hora:<sp>1</sp>'+Hora+ ''),0);
      if cboFunc.Text <>'' Then begin
      Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Entregador:<sp>1</sp>'+cboFunc.Text+ ''),0);
      end;
      Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tc>_</tc>'),0);


      if ibTempVendaLoja.RecordCount > 0 Then begin

      Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Cliente: '+ibTempVendaLoja.FieldByName('Cliente').AsString),0);
      if ibTempVendaLoja.FieldByName('TELEFONE').AsString <> '' Then begin
      Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Telefone: '+ibTempVendaLoja.FieldByName('TELEFONE').AsString +' '+'Celular: '+ibTempVendaLoja.FieldByName('CELULAR').AsString),0);
      end;

      if ibTempVendaLoja.FieldByName('ENDERECO').AsString <> '' Then begin
      Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Endere�o: '+ibTempVendaLoja.FieldByName('ENDERECO').AsString),0);
      end;

      if ibTempVendaLoja.FieldByName('COMPL').AsString <> '' Then begin
      Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Compl.: '+ibTempVendaLoja.FieldByName('COMPL').AsString),0);
      end;

      if ibTempVendaLoja.FieldByName('PONTOREFERENCIA').AsString <> '' Then begin
      Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Ponto Ref.: '+ibTempVendaLoja.FieldByName('PONTOREFERENCIA').AsString),0);
      end;

      Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tc>_</tc>'),0);
      
        while not ibTempVendaLoja.Eof do begin

            NomeProduto := ibTempVendaLoja.FieldByName('NOMEPROD').AsString;
            Qtde        := FormatFloat('0',ibTempVendaLoja.FieldByName('QTDE').AsFloat);
            Vlr         := FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRUNIT').AsFloat);
            Total       := FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat);

            Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sp>1</sp>'+NomeProduto+ ''),0);

              if ibTempVendaLoja.FieldByName('OBS').AsString <> '' Then begin
              Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar(ibTempVendaLoja.FieldByName('OBS').AsString),0);
              end;

            Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sp>1</sp>'+Qtde+''+'X'+ '<sp>1</sp>'+Vlr+''+'='+ '<sp>1</sp>'+Total+''),0);


         ibTempVendaLoja.Next;


        end;//if

        end;//while

      //  TXAcrescimo := FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('ACRESCIMO').AsFloat);
        if (ibTempVendaLoja.FieldByName('ACRESCIMO').AsFloat) > 0 Then begin
        Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Taxa de Entrega: '+ FormatFloat(CasasDecimais('Produtos'),ibTempVendaLoja.FieldByName('ACRESCIMO').AsFloat) + ''),0);
        end;
        
            Commit(ibServsVenda);
            ibRecVendas.Close;
            ibRecVendas.SQL.Clear;
            ibRecVendas.SQL.Add('SELECT * FROM TBLRECEBEVENDAS WHERE TBLRECEBEVENDAS.IDVENDA=''' + NumeroCupom + '''');
            ibRecVendas.Open;

            TotalVenda     := FormatFloat(CasasDecimais('Produtos'),ibRecVendas.FieldByName('TOTALVENDA').AsFloat);
            VlrPago        := FormatFloat(CasasDecimais('Produtos'),ibRecVendas.FieldByName('VLRPAGO').AsFloat);
            Troco          := FormatFloat(CasasDecimais('Produtos'),ibRecVendas.FieldByName('TROCO').AsFloat);


            Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tc>_</tc>'),0);
            Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL DA VENDA:<sp>1</sp>'+TotalVenda+ ''),0);
            Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('PAGTO.:<sp>1</sp>'+NomePagto+ ''),0);
            Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('VLR.PAGO:<sp>1</sp>'+VlrPago+ ''),0);
            Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TROCO:<sp>1</sp>'+Troco+ ''),0);

            Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tc>_</tc>'),0);
            Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sl>'+QtdedeSaltos+'</sl>'), 0);
            //IPRIMINDO A VIG�SIMA PRIMEIRA LINHA
            if Int_Retorno = 1 Then
            begin
              Application.MessageBox('Impressao Concluida!!!', 'CP SISTEMAS', mb_ok + 32);
            end
            else
            begin
              Application.MessageBox('Erro!', 'Daruma Framework', mb_ok + 16);
            end;


      end;//if record count

  end;//with  }

end;

end.
