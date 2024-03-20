unit untProdutoVendidoP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, DB, Buttons;

type
  TfrmProdutosVendidos = class(TForm)
    Label3: TLabel;
    dtpDataIniGeral: TDateTimePicker;
    dtpDataFimGeral: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    lbl_edtCodBarra: TLabeledEdit;
    lbl_edtNome: TLabeledEdit;
    lbl_edtNomeOrdem: TLabeledEdit;
    ibeaSair: TSpeedButton;
    ibeaOk: TSpeedButton;
    ibeaLimpar: TSpeedButton;
    procedure ibeaOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ibeaSairClick(Sender: TObject);
    procedure ibeaLimparClick(Sender: TObject);
    procedure lbl_edtCodBarraChange(Sender: TObject);
    procedure lbl_edtNomeExit(Sender: TObject);
    procedure lbl_edtCodBarraKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdutosVendidos: TfrmProdutosVendidos;

implementation

uses untdmModule, untRelQtdeVendida, funcPosto;

{$R *.dfm}

procedure TfrmProdutosVendidos.ibeaOkClick(Sender: TObject);

var

Qtde : Real;
TotalQtde : String;

begin

  with dmModule do begin

  if  (lbl_edtNomeOrdem.Text <> '') and (lbl_edtNome.Text = '') Then begin

      {ibServsVenda.Close;                                                              //    ,VLRTOTAL   , SUM(QTDE)As QtdeProd                                              //
      ibServsVenda.SQL.Clear;
      ibServsVenda.SQL.Add('SELECT DISTINCT TBLSERVICOSVENDAS.VLRUNIT,'
      + 'SUM(TBLSERVICOSVENDAS.QTDE)As QtdeProd,SUM(TBLSERVICOSVENDAS.VLRTOTAL) As TotalVenda,'
      + 'CADPRODUTOS.NOME As NomeProduto FROM TBLSERVICOSVENDAS '
      + 'INNER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD '
      + 'WHERE (TBLSERVICOSVENDAS.DATA between :ParamDataInicial and :ParamDataFinal)and CADPRODUTOS.NOME LIKE '+''''+'%'+lbl_edtNomeOrdem.text+'%'+''' GROUP BY TBLSERVICOSVENDAS.VLRUNIT,CADPRODUTOS.NOME ORDER BY CADPRODUTOS.NOME');
      ibServsVenda.Open; }

      ibTempRestaurante.Close;                                                              //    ,VLRTOTAL   , SUM(QTDE)As QtdeProd                                              //
      ibTempRestaurante.SQL.Clear;
      ibTempRestaurante.SQL.Add('SELECT DISTINCT TBLRESTAURANTE.VLRUNIT,TBLRESTAURANTE.NOMEPRODUTO,'
      + 'SUM(TBLRESTAURANTE.QTDE)As QtdeProd,SUM(TBLRESTAURANTE.VLRTOTAL) As TotalVenda FROM TBLRESTAURANTE '
      + 'WHERE(TBLRESTAURANTE.DATA between :ParamDataInicial and :ParamDataFinal)and TBLRESTAURANTE.NOMEPRODUTO LIKE '+''''+'%'+lbl_edtNomeOrdem.text+'%'+''' GROUP BY TBLRESTAURANTE.VLRUNIT,TBLRESTAURANTE.NOMEPRODUTO ORDER BY TBLRESTAURANTE.NOMEPRODUTO');
      ibTempRestaurante.Open;


      ibTempRestaurante.Close;
      ibTempRestaurante.ParamByName('ParamDataInicial').Value := dtpDataIniGeral.DateTime;
      ibTempRestaurante.ParamByName('ParamDataFinal').Value   := dtpDataFimGeral.DateTime;
      ibTempRestaurante.Open;


   while not ibTempRestaurante.Eof do begin//enquanto nao for fim de registro

          if (Qtde = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
           Qtde := StrtoFloat(StringReplace(FloattoStr(ibTempRestaurante.FieldByName('QtdeProd').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            TotalQtde := StringReplace(FloattoStr(ibTempRestaurante.FieldByName('QtdeProd').AsFloat),ThousandSeparator,'',[rfReplaceAll]);


            //atribui a variavel o valor separando por ponto
            Qtde := Qtde + StrtoFloat(StringReplace(TotalQtde,ThousandSeparator,'',[rfReplaceAll]));

           end;{if}


          ibTempRestaurante.Next;//vai para o pproximo registro pro looping nao ficar infinito.

        end;{while}



     Application.CreateForm(TfrmRelQtdeVendida, frmRelQtdeVendida);

      TRY

        with frmRelQtdeVendida do begin

          frmRelQtdeVendida.qrpRelQtdeVendida.DataSet := ibTempRestaurante;


          //ATRIBUI OS NOMES DOS CAMPOS AOS QRDBTEXT DO QUICKREPORT
          qrdbProd.DataSet    := ibTempRestaurante;
          qrdbProd.DataField  := ibTempRestaurante.FieldByName('NOMEPRODUTO').FieldName;

          qrdbVlrUnit.DataSet     := ibTempRestaurante;
          qrdbVlrUnit.DataField   := ibTempRestaurante.FieldByName('VLRUNIT').FieldName;
         (ibTempRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

        qrdbQtde.DataSet        := ibTempRestaurante;
        qrdbQtde.DataField      := ibTempRestaurante.FieldByName('QtdeProd').FieldName;
        (ibTempRestaurante.FieldByName('QtdeProd') as TFloatField).DisplayFormat := '0'; //CRIA UMA MASCARA PARA O CAMPO

        qrdbVlrA.DataSet       := ibTempRestaurante;
        qrdbVlrA.DataField     := ibTempRestaurante.FieldByName('TotalVenda').FieldName;
        (ibTempRestaurante.FieldByName('TotalVenda') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

       //   qrdbData.DataSet    := ibServsVenda;
      //    qrdbData.DataField  := ibServsVenda.FieldByName('DATA').FieldName;

        //  qrlQtdeTotal.Caption := FloatToStr(Qtde);
          qrlDataIni.Caption := DateToStr(frmProdutosVendidos.dtpDataIniGeral.Date);
          qrlDataF.Caption   := DateToStr(frmProdutosVendidos.dtpDataFimGeral.Date);

          if Qtde > 0 Then begin

          qrl_QtdeTotalItens.Caption := FormatFloat('0',Qtde);

          end else begin

          qrl_QtdeTotalItens.Caption := '';

          end;
          
          qrpRelQtdeVendida.Preview;

        end; {if}


      EXCEPT
        on E : Exception do begin
           frmRelQtdeVendida.Release;
           MessageDlg('Ocorreu um erro ao tentar mostrar o Formulário: ' + E.Message,mtError,[mbOk],0);
        end;
      END;

  end;//if

////////////////////////////////////////////////////////////////////////////////

  if  (lbl_edtNome.Text <> '') Then begin

     { ibServsVenda.Close;                                                              //    ,VLRTOTAL   , SUM(QTDE)As QtdeProd                                              //
      ibServsVenda.SQL.Clear;
      ibServsVenda.SQL.Add('SELECT DISTINCT TBLSERVICOSVENDAS.VLRUNIT,'
      + 'SUM(TBLSERVICOSVENDAS.QTDE)As QtdeProd,SUM(TBLSERVICOSVENDAS.VLRTOTAL) As TotalVenda,'
      + 'CADPRODUTOS.NOME As NomeProduto FROM TBLSERVICOSVENDAS '
      + 'INNER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD '
      + 'WHERE (TBLSERVICOSVENDAS.DATA between :ParamDataInicial and :ParamDataFinal)and CADPRODUTOS.NOME=''' + lbl_edtNome.Text + ''' GROUP BY TBLSERVICOSVENDAS.VLRUNIT,CADPRODUTOS.NOME ORDER BY CADPRODUTOS.NOME');
      ibServsVenda.Open; }

      ibTempRestaurante.Close;                                                              //    ,VLRTOTAL   , SUM(QTDE)As QtdeProd                                              //
      ibTempRestaurante.SQL.Clear;
      ibTempRestaurante.SQL.Add('SELECT DISTINCT TBLRESTAURANTE.VLRUNIT,TBLRESTAURANTE.NOMEPRODUTO,'
      + 'SUM(TBLRESTAURANTE.QTDE)As QtdeProd,SUM(TBLRESTAURANTE.VLRTOTAL) As TotalVenda FROM TBLRESTAURANTE '
      + 'WHERE(TBLRESTAURANTE.DATA between :ParamDataInicial and :ParamDataFinal)and TBLRESTAURANTE.NOMEPRODUTO=''' + lbl_edtNome.Text + ''' GROUP BY TBLRESTAURANTE.VLRUNIT,TBLRESTAURANTE.NOMEPRODUTO ORDER BY TBLRESTAURANTE.NOMEPRODUTO');
      ibTempRestaurante.Open;


      ibTempRestaurante.Close;
      ibTempRestaurante.ParamByName('ParamDataInicial').Value := dtpDataIniGeral.DateTime;
      ibTempRestaurante.ParamByName('ParamDataFinal').Value   := dtpDataFimGeral.DateTime;
      ibTempRestaurante.Open;


   while not ibTempRestaurante.Eof do begin//enquanto nao for fim de registro

          if (Qtde = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
           Qtde := StrtoFloat(StringReplace(FloattoStr(ibTempRestaurante.FieldByName('QtdeProd').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            TotalQtde := StringReplace(FloattoStr(ibTempRestaurante.FieldByName('QtdeProd').AsFloat),ThousandSeparator,'',[rfReplaceAll]);


            //atribui a variavel o valor separando por ponto
            Qtde := Qtde + StrtoFloat(StringReplace(TotalQtde,ThousandSeparator,'',[rfReplaceAll]));

           end;{if}


          ibTempRestaurante.Next;//vai para o pproximo registro pro looping nao ficar infinito.

        end;{while}



     Application.CreateForm(TfrmRelQtdeVendida, frmRelQtdeVendida);

      TRY

        with frmRelQtdeVendida do begin

          frmRelQtdeVendida.qrpRelQtdeVendida.DataSet := ibTempRestaurante;


          //ATRIBUI OS NOMES DOS CAMPOS AOS QRDBTEXT DO QUICKREPORT
          qrdbProd.DataSet    := ibTempRestaurante;
          qrdbProd.DataField  := ibTempRestaurante.FieldByName('NOMEPRODUTO').FieldName;

          qrdbVlrUnit.DataSet     := ibTempRestaurante;
          qrdbVlrUnit.DataField   := ibTempRestaurante.FieldByName('VLRUNIT').FieldName;
         (ibTempRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

        qrdbQtde.DataSet        := ibTempRestaurante;
        qrdbQtde.DataField      := ibTempRestaurante.FieldByName('QtdeProd').FieldName;
        (ibTempRestaurante.FieldByName('QtdeProd') as TFloatField).DisplayFormat := '0'; //CRIA UMA MASCARA PARA O CAMPO

        qrdbVlrA.DataSet       := ibTempRestaurante;
        qrdbVlrA.DataField     := ibTempRestaurante.FieldByName('TotalVenda').FieldName;
        (ibTempRestaurante.FieldByName('TotalVenda') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

       //   qrdbData.DataSet    := ibServsVenda;
       //   qrdbData.DataField  := ibServsVenda.FieldByName('DATA').FieldName;

      //    qrlQtdeTotal.Caption := FloatToStr(Qtde);

          qrlDataIni.Caption := DateToStr(frmProdutosVendidos.dtpDataIniGeral.Date);
          qrlDataF.Caption   := DateToStr(frmProdutosVendidos.dtpDataFimGeral.Date);

          if Qtde > 0 Then begin

          qrl_QtdeTotalItens.Caption := FormatFloat('0',Qtde);

          end else begin

          qrl_QtdeTotalItens.Caption := '';

          end;

          qrpRelQtdeVendida.Preview;

        end; {if}


      EXCEPT
        on E : Exception do begin
           frmRelQtdeVendida.Release;
           MessageDlg('Ocorreu um erro ao tentar mostrar o Formulário: ' + E.Message,mtError,[mbOk],0);
        end;
      END;

  end;//if

/////////////////////////////////////////////////////////////////////////////////                                                                                                                                                              // WHERE (DATA between :ParamDataInicial and :ParamDataFinal)

   if (lbl_edtNome.Text = '') and (lbl_edtNomeOrdem.Text = '') Then begin

     { ibTempRestaurante.Close;                                                              //    ,VLRTOTAL   , SUM(QTDE)As QtdeProd                                              //
      ibTempRestaurante.SQL.Clear;
      ibTempRestaurante.SQL.Add('SELECT DISTINCT TBLRESTAURANTE.VLRUNIT,TBLRESTAURANTE.NOMEPRODUTO,'
      + 'SUM(TBLRESTAURANTE.QTDE)As QtdeProd,SUM(TBLRESTAURANTE.VLRTOTAL) As TotalVenda FROM TBLRESTAURANTE '
      + 'WHERE(TBLRESTAURANTE.DATA between :ParamDataInicial and :ParamDataFinal) GROUP BY TBLRESTAURANTE.VLRUNIT,TBLRESTAURANTE.NOMEPRODUTO ORDER BY TBLRESTAURANTE.NOMEPRODUTO');
      ibTempRestaurante.Open; 


      ibServsVenda.Close;
      ibServsVenda.SQL.Clear;
      ibServsVenda.SQL.Add('SELECT DISTINCT TBLSERVICOSVENDAS.DATA,TBLSERVICOSVENDAS.NOMEPROD,'
      +'TBLSERVICOSVENDAS.VLRUNIT,SUM(TBLSERVICOSVENDAS.QTDE)As QtdeProd,'
      +'SUM(TBLSERVICOSVENDAS.VLRTOTAL) As TotalVenda,TBLSERVICOSVENDAS.IDPROD,'
      +'CADPRODUTOS.NOME As NomeProduto FROM TBLSERVICOSVENDAS '
      +'INNER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD '
      +'WHERE (TBLSERVICOSVENDAS.DATA between :ParamDataInicial and :ParamDataFinal)GROUP BY TBLSERVICOSVENDAS.NOMEPROD,TBLSERVICOSVENDAS.VLRUNIT,TBLSERVICOSVENDAS.DATA,TBLSERVICOSVENDAS.IDPROD,CADPRODUTOS.NOME ORDER BY CADPRODUTOS.NOME');
      ibServsVenda.Open; }

      {ibServsVenda.Close;
      ibServsVenda.SQL.Clear;
      ibServsVenda.SQL.Add('SELECT SUM(TBLSERVICOSVENDAS.QTDE)As QtdeProd FROM TBLSERVICOSVENDAS '
      +'WHERE (TBLSERVICOSVENDAS.DATA between :ParamDataInicial and :ParamDataFinal)');//GROUP BY TBLSERVICOSVENDAS.NOMEPROD,TBLSERVICOSVENDAS.VLRUNIT,TBLSERVICOSVENDAS.DATA,TBLSERVICOSVENDAS.IDPROD,CADPRODUTOS.NOME ORDER BY CADPRODUTOS.NOME');
      ibServsVenda.Open; }

      ibServsVenda.Close;
      ibServsVenda.SQL.Clear;
      ibServsVenda.SQL.Add('SELECT DISTINCT TBLSERVICOSVENDAS.DATA,TBLSERVICOSVENDAS.NOMEPROD,'
      +'TBLSERVICOSVENDAS.VLRUNIT,SUM(TBLSERVICOSVENDAS.QTDE)As QtdeProd,'
      +'SUM(TBLSERVICOSVENDAS.VLRTOTAL) As TotalVenda,TBLSERVICOSVENDAS.IDPROD FROM TBLSERVICOSVENDAS WHERE(TBLSERVICOSVENDAS.DATA between :ParamDataInicial and :ParamDataFinal)GROUP BY TBLSERVICOSVENDAS.NOMEPROD,'
      +' TBLSERVICOSVENDAS.VLRUNIT,TBLSERVICOSVENDAS.DATA,TBLSERVICOSVENDAS.IDPROD ORDER BY TBLSERVICOSVENDAS.NOMEPROD ');
     // +'CADPRODUTOS.NOME As NomeProduto FROM TBLSERVICOSVENDAS '
      //+'INNER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD '                                                                                                               //  CADPRODUTOS.NOME  CADPRODUTOS.NOME
      //+'WHERE (TBLSERVICOSVENDAS.DATA between :ParamDataInicial and :ParamDataFinal)GROUP BY TBLSERVICOSVENDAS.NOMEPROD,TBLSERVICOSVENDAS.VLRUNIT,TBLSERVICOSVENDAS.DATA,TBLSERVICOSVENDAS.IDPROD ORDER BY TBLSERVICOSVENDAS.NOMEPROD ');
      ibServsVenda.Open;

      ibServsVenda.Close;
      ibServsVenda.ParamByName('ParamDataInicial').Value := dtpDataIniGeral.DateTime;
      ibServsVenda.ParamByName('ParamDataFinal').Value   := dtpDataFimGeral.DateTime;
      ibServsVenda.Open;


   while not ibServsVenda.Eof do begin//enquanto nao for fim de registro

          if (Qtde = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
           Qtde := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('QtdeProd').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            TotalQtde := StringReplace(FloattoStr(ibServsVenda.FieldByName('QtdeProd').AsFloat),ThousandSeparator,'',[rfReplaceAll]);


            //atribui a variavel o valor separando por ponto
            Qtde := Qtde + StrtoFloat(StringReplace(TotalQtde,ThousandSeparator,'',[rfReplaceAll]));

           end;{if}


          ibServsVenda.Next;//vai para o pproximo registro pro looping nao ficar infinito.

        end;{while}

    // while not ibServsVenda.Eof do begin



    //  end;{while}





 //  end;//if fields

     Application.CreateForm(TfrmRelQtdeVendida, frmRelQtdeVendida);

      TRY

        with frmRelQtdeVendida do begin

          frmRelQtdeVendida.qrpRelQtdeVendida.DataSet := ibServsVenda;


          //ATRIBUI OS NOMES DOS CAMPOS AOS QRDBTEXT DO QUICKREPORT
          qrdbProd.DataSet    := ibServsVenda;
          qrdbProd.DataField  := ibServsVenda.FieldByName('NOMEPROD').FieldName;

          qrdbVlrUnit.DataSet     := ibServsVenda;
          qrdbVlrUnit.DataField   := ibServsVenda.FieldByName('VLRUNIT').FieldName;
         (ibServsVenda.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

        qrdbQtde.DataSet        := ibServsVenda;
        qrdbQtde.DataField      := ibServsVenda.FieldByName('QtdeProd').FieldName;
        (ibServsVenda.FieldByName('QtdeProd') as TFloatField).DisplayFormat := '0'; //CRIA UMA MASCARA PARA O CAMPO

        qrdbVlrA.DataSet       := ibServsVenda;
        qrdbVlrA.DataField     := ibServsVenda.FieldByName('TotalVenda').FieldName;
        (ibServsVenda.FieldByName('TotalVenda') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

        //  qrdbData.DataSet    := ibServsVenda;
       //   qrdbData.DataField  := ibServsVenda.FieldByName('DATA').FieldName;

          qrlDataIni.Caption := DateToStr(frmProdutosVendidos.dtpDataIniGeral.Date);
          qrlDataF.Caption   := DateToStr(frmProdutosVendidos.dtpDataFimGeral.Date);

          if Qtde > 0 Then begin

          qrl_QtdeTotalItens.Caption := FormatFloat('0',Qtde);

          end else begin

          qrl_QtdeTotalItens.Caption := '';

          end;

          qrpRelQtdeVendida.Preview;

        end; {if}


      EXCEPT
        on E : Exception do begin
           frmRelQtdeVendida.Release;
           MessageDlg('Ocorreu um erro ao tentar mostrar o Formulário: ' + E.Message,mtError,[mbOk],0);
        end;
      END;
    //////////////////////////////////////////////////////////////
   end;//if

  end;{with}

end;

procedure TfrmProdutosVendidos.FormShow(Sender: TObject);
begin

  dtpDataIniGeral.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
  dtpDataFimGeral.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
  lbl_edtCodBarra.Text := '';
  lbl_edtNome.Text := '';

end;

procedure TfrmProdutosVendidos.ibeaSairClick(Sender: TObject);
begin
Close;
end;

procedure TfrmProdutosVendidos.ibeaLimparClick(Sender: TObject);
begin
lbl_edtCodBarra.Text := '';
lbl_edtNome.Text := '';
lbl_edtNomeOrdem.Text := '';
end;

procedure TfrmProdutosVendidos.lbl_edtCodBarraChange(Sender: TObject);
begin

  with dmModule do begin

    if lbl_edtCodBarra.Text <> '' Then begin

      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE CODBARRAS=''' + lbl_edtCodBarra.Text + '''');
      ibProdutos.Open;

      if ibProdutos.RecordCount > 0 Then begin

        lbl_edtNome.Text := ibProdutos.FieldByName('NOME').AsString;

      end;//if recordcount

    end;//if

  end;//with

end;

procedure TfrmProdutosVendidos.lbl_edtNomeExit(Sender: TObject);
begin

  with dmModule do begin

    if lbl_edtNome.Text <> '' Then begin

      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE CADPRODUTOS.NOME=''' + lbl_edtNome.Text + '''');
      ibProdutos.Open;

      if ibProdutos.RecordCount > 0 Then begin

        lbl_edtCodBarra.Text := ibProdutos.FieldByName('CODBARRAS').AsString;

      end;//if recordcount

    end;//if

  end;//with

end;

procedure TfrmProdutosVendidos.lbl_edtCodBarraKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key = #13 Then begin

    lbl_edtNome.SetFocus;

  end;

end;

procedure TfrmProdutosVendidos.lbl_edtNomeKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key = #13 Then begin

    lbl_edtCodBarra.SetFocus;

  end;
  
end;

procedure TfrmProdutosVendidos.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
 Key := UpCase(Key); //Deixa todos os textos em maiusculo
  if Key = #13 Then begin
     Key := #0; //Desabilita processamento posterior da tecla
     Perform(WM_NEXTDLGCTL,0,0);//Simula o envio de Tab
  end;
end;

end.
