unit untFluxoFuncP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls,
  IBQuery, classComboBox;

type
  TfrmFluxoFunc = class(TForm)
    imgFundo: TImage;
    lbl_De: TLabel;
    lbl_Ate: TLabel;
    lbl_edtFunc: TLabel;
    cboFunc: TComboBox;
    dtpDataIni: TDateTimePicker;
    dtpDataF: TDateTimePicker;
    procedure ibeaFecharClick(Sender: TObject);
    procedure Commit(IBQueryExec : TIBQuery);
    procedure SELECTFunc;
    procedure FormShow(Sender: TObject);
    procedure ibeaVisualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFluxoFunc: TfrmFluxoFunc;
  ClassFunc : TClasseCombo;

implementation

uses DB, untdmModule, untRelFluxoFunc, funcPosto;

{$R *.dfm}

procedure TfrmFluxoFunc.ibeaFecharClick(Sender: TObject);
begin
cboFunc.ClearSelection;
Close;
end;

procedure TfrmFluxoFunc.Commit(IBQueryExec : TIBQuery);

begin

  with dmModule do begin

    with IBQueryExec do begin

      SQL.Clear;
      SQL.Add('Commit');
      Open;
      Close;

    end;//with ibquery

  end;//with

end;

procedure TfrmFluxoFunc.SELECTFunc;

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

procedure TfrmFluxoFunc.FormShow(Sender: TObject);
begin

dtpDataIni.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
dtpDataF.DateTime   := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));

  with dmModule do begin

    SELECTFunc;

  end;//with

end;

procedure TfrmFluxoFunc.ibeaVisualizarClick(Sender: TObject);

var

IDClassFunc : TClasseCombo;
TrocoInicial : Real;
TotalTrocoIni,HoraAbertura,HoraFech : String;

begin

  with dmModule do begin

    if TrocoInicial > 0 Then begin

      TrocoInicial := 0;

    end;

    if TotalTrocoIni > '0' Then begin

      TotalTrocoIni := '0';

    end;

    if cboFunc.ItemIndex <> -1 Then begin

      IDClassFunc := TClasseCombo(cboFunc.Items.Objects[cboFunc.ItemIndex]);

      Commit(ibServsVenda);
      ibServsVenda.Close;
      ibServsVenda.SQL.Clear;
      ibServsVenda.SQL.Add('SELECT TBLSERVICOSVENDAS.*,'
      + 'CADPRODUTOS.NOME As Produto FROM TBLSERVICOSVENDAS '
      + 'INNER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD '
      + 'WHERE TBLSERVICOSVENDAS.IDFUNC=''' + IntToStr(IDClassFunc.ID) + '''and(TBLSERVICOSVENDAS.DATA between :ParamDataInicial and :ParamDataFinal)ORDER BY IDSERVSVENDA ASC');
      ibServsVenda.Open;
      //,TBLABERTURACX.HORAABERTURA,TBLABERTURACX.HORAFECH   + 'LEFT OUTER JOIN TBLABERTURACX ON TBLSERVICOSVENDAS.IDFUNC=TBLABERTURACX.IDFUNC '
      ibServsVenda.Close;
      ibServsVenda.ParamByName('ParamDataInicial').Value := dtpDataIni.DateTime;
      ibServsVenda.ParamByName('ParamDataFinal').Value := dtpDataF.DateTime;
      ibServsVenda.Open;

       { while not ibServsVenda.Eof do begin//enquanto nao for fim de registro

      Commit(ibServsVenda);
      ibServsVenda.Close;
      ibServsVenda.SQL.Clear;
      ibServsVenda.SQL.Add('SELECT  TBLSERVICOSVENDAS.*,TBLABERTURACX.TROCOINICIAL As TrocoIni,'
      + 'TBLABERTURACX.IDFUNC As IDFuncionario,CADPRODUTOS.NOME As Produto FROM TBLSERVICOSVENDAS '
      + 'INNER JOIN TBLABERTURACX ON TBLSERVICOSVENDAS.IDFUNC=TBLABERTURACX.IDFUNC '
      + 'INNER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD '
      + 'WHERE TBLSERVICOSVENDAS.IDFUNC=''' + IntToStr(IDClassFunc.ID) + '''and(TBLSERVICOSVENDAS.DATA between :ParamDataInicial and :ParamDataFinal)');
      ibServsVenda.Open;

          if (TrocoInicial = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
           TrocoInicial := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('TrocoIni').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            TotalTrocoIni := StringReplace(FloattoStr(ibServsVenda.FieldByName('TrocoIni').AsFloat),ThousandSeparator,'',[rfReplaceAll]);


            //atribui a variavel o valor separando por ponto
            TrocoInicial := TrocoInicial + StrtoFloat(StringReplace(TotalTrocoIni,ThousandSeparator,'',[rfReplaceAll]));

           end;}{if}


        //  ibServsVenda.Next;//vai para o pproximo registro pro looping nao ficar infinito.

        //end;{while}
     { Commit(ibServsVenda);
      ibServsVenda.Close;
      ibServsVenda.SQL.Clear;
      ibServsVenda.SQL.Add('SELECT TBLSERVICOSVENDAS.*,TBLABERTURACX.TROCOINICIAL,'
      + 'CADPRODUTOS.NOME As Produto FROM TBLSERVICOSVENDAS '
      + 'INNER JOIN TBLABERTURACX ON TBLSERVICOSVENDAS.IDFUNC=TBLABERTURACX.IDFUNC '
      + 'INNER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD '
      + 'WHERE TBLSERVICOSVENDAS.IDFUNC=''' + IntToStr(IDClassFunc.ID) + '''and(TBLSERVICOSVENDAS.DATA between :ParamDataInicial and :ParamDataFinal)');
      ibServsVenda.Open;

      ibServsVenda.Close;
      ibServsVenda.ParamByName('ParamDataInicial').Value := dtpDataIni.DateTime;
      ibServsVenda.ParamByName('ParamDataFinal').Value := dtpDataF.DateTime;
      ibServsVenda.Open; }
   // end;
////////////////////////////////////////////////////////////////////////////////

     Application.CreateForm(TfrmRelFluxoFunc, frmRelFluxoFunc);

      TRY

        with frmRelFluxoFunc do begin

          frmRelFluxoFunc.qrpFluxoCxFunc.DataSet := ibServsVenda;


          //ATRIBUI OS NOMES DOS CAMPOS AOS QRDBTEXT DO QUICKREPORT
          qrdbNCupom.DataSet    := ibServsVenda;
          qrdbNCupom.DataField  := ibServsVenda.FieldByName('IDSERVSVENDA').FieldName;

          qrdbProd.DataSet    := ibServsVenda;
          qrdbProd.DataField  := ibServsVenda.FieldByName('Produto').FieldName;

          qrdbVlrUnit.DataSet     := ibServsVenda;
          qrdbVlrUnit.DataField   := ibServsVenda.FieldByName('VLRUNIT').FieldName;
         (ibServsVenda.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

          qrdbQtde.DataSet        := ibServsVenda;
          qrdbQtde.DataField      := ibServsVenda.FieldByName('QTDE').FieldName;
          (ibServsVenda.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

          qrdbVlrA.DataSet       := ibServsVenda;
          qrdbVlrA.DataField     := ibServsVenda.FieldByName('VLRTOTAL').FieldName;
          (ibServsVenda.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

          qrdbData.DataSet    := ibServsVenda;
          qrdbData.DataField  := ibServsVenda.FieldByName('DATA').FieldName;

          qrdbDesc.DataSet    := ibServsVenda;
          qrdbDesc.DataField  := ibServsVenda.FieldByName('DESCONTO').FieldName;
          (ibServsVenda.FieldByName('DESCONTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

          qrdbAcrescimo.DataSet    := ibServsVenda;
          qrdbAcrescimo.DataField  := ibServsVenda.FieldByName('ACRESCIMO').FieldName;
          (ibServsVenda.FieldByName('ACRESCIMO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO


////////////////////////////////////////////////////////////////////////////////

        Commit(ibAberturaCX);
        ibAberturaCX.Close;
        ibAberturaCX.SQL.Clear;
        ibAberturaCX.SQL.Add('SELECT * FROM TBLABERTURACX WHERE TBLABERTURACX.IDFUNC=''' + IntToStr(IDClassFunc.ID) + '''and(TBLABERTURACX.DATAABERTURA between :ParamDataInicial and :ParamDataFinal)');
        ibAberturaCX.Open;

        ibAberturaCX.Close;
        ibAberturaCX.ParamByName('ParamDataInicial').Value := dtpDataIni.DateTime;
        ibAberturaCX.ParamByName('ParamDataFinal').Value := dtpDataF.DateTime;
        ibAberturaCX.Open;

          while not ibAberturaCX.Eof do begin//enquanto nao for fim de registro

            if (TrocoInicial = 0) Then begin//se variavel for igual a zero

              //atribui o vlr do campo abaixo na variavel
             TrocoInicial := StrtoFloat(StringReplace(FloattoStr(ibAberturaCX.FieldByName('TROCOINICIAL').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

            end else begin

              //atribui na variavel substituindo o ponto para vlr em branco
              TotalTrocoIni := StringReplace(FloattoStr(ibAberturaCX.FieldByName('TROCOINICIAL').AsFloat),FormatSettings.ThousandSeparator,'',[rfReplaceAll]);


              //atribui a variavel o valor separando por ponto
              TrocoInicial := TrocoInicial + StrtoFloat(StringReplace(TotalTrocoIni,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

             end;{if}


            ibAberturaCX.Next;//vai para o pproximo registro pro looping nao ficar infinito.

          end;{while}

            qrl_TotalTrocoini.Caption := FormatFloat('#,##0.00',TrocoInicial);
            qrl_NomeFunc.Caption := cboFunc.Text;

            HoraAbertura := TimeToStr(ibAberturaCX.FieldByName('HORAABERTURA').AsDateTime);
            HoraFech := TimeToStr(ibAberturaCX.FieldByName('HORAFECH').AsDateTime);


            if HoraAbertura <> '' Then begin
            qrl_HoraAbert.Caption := TimeToStr(ibAberturaCX.FieldByName('HORAABERTURA').AsDateTime);
            end else begin
            qrl_HoraAbert.Caption := '';
            end;

            if HoraFech <> '' Then begin
            qrl_HoraFech.Caption  := TimeToStr(ibAberturaCX.FieldByName('HORAFECH').AsDateTime);
            end else begin
            qrl_HoraFech.Caption := '';
            end;

////////////////////////////////////////////////////////////////////////////////

          qrpFluxoCxFunc.Preview;

        end; {if}


      EXCEPT
        on E : Exception do begin
           frmRelFluxoFunc.Release;
           MessageDlg('Ocorreu um erro ao tentar mostrar o Formulário: ' + E.Message,mtError,[mbOk],0);
        end;
      END;

////////////////////////////////////////////////////////////////////////////////
    end;//if cbofunc


//******************************************************************************

   { if cboFunc.Text = '' Then begin



      Commit(ibServsVenda);
      ibServsVenda.Close;
      ibServsVenda.SQL.Clear;
      ibServsVenda.SQL.Add('SELECT TBLSERVICOSVENDAS.*,'
      + 'CADPRODUTOS.NOME As Produto FROM TBLSERVICOSVENDAS '
      + 'INNER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD '
      + 'WHERE (TBLSERVICOSVENDAS.DATA between :ParamDataInicial and :ParamDataFinal)ORDER BY IDSERVSVENDA ASC');
      ibServsVenda.Open;
      //,TBLABERTURACX.HORAABERTURA,TBLABERTURACX.HORAFECH   + 'LEFT OUTER JOIN TBLABERTURACX ON TBLSERVICOSVENDAS.IDFUNC=TBLABERTURACX.IDFUNC '
      ibServsVenda.Close;
      ibServsVenda.ParamByName('ParamDataInicial').Value := dtpDataIni.DateTime;
      ibServsVenda.ParamByName('ParamDataFinal').Value := dtpDataF.DateTime;
      ibServsVenda.Open;

 ////////////////////////////////////////////////////////////////////////////////

     Application.CreateForm(TfrmRelFluxoFunc, frmRelFluxoFunc);

      TRY

        with frmRelFluxoFunc do begin

          frmRelFluxoFunc.qrpFluxoCxFunc.DataSet := ibServsVenda;


          //ATRIBUI OS NOMES DOS CAMPOS AOS QRDBTEXT DO QUICKREPORT
          qrdbNCupom.DataSet    := ibServsVenda;
          qrdbNCupom.DataField  := ibServsVenda.FieldByName('IDSERVSVENDA').FieldName;

          qrdbProd.DataSet    := ibServsVenda;
          qrdbProd.DataField  := ibServsVenda.FieldByName('Produto').FieldName;

          qrdbVlrUnit.DataSet     := ibServsVenda;
          qrdbVlrUnit.DataField   := ibServsVenda.FieldByName('VLRUNIT').FieldName;
         (ibServsVenda.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

          qrdbQtde.DataSet        := ibServsVenda;
          qrdbQtde.DataField      := ibServsVenda.FieldByName('QTDE').FieldName;
          (ibServsVenda.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

          qrdbVlrA.DataSet       := ibServsVenda;
          qrdbVlrA.DataField     := ibServsVenda.FieldByName('VLRTOTAL').FieldName;
          (ibServsVenda.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

          qrdbData.DataSet    := ibServsVenda;
          qrdbData.DataField  := ibServsVenda.FieldByName('DATA').FieldName;

          qrdbDesc.DataSet    := ibServsVenda;
          qrdbDesc.DataField  := ibServsVenda.FieldByName('DESCONTO').FieldName;
          (ibServsVenda.FieldByName('DESCONTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

          qrdbAcrescimo.DataSet    := ibServsVenda;
          qrdbAcrescimo.DataField  := ibServsVenda.FieldByName('ACRESCIMO').FieldName;
          (ibServsVenda.FieldByName('ACRESCIMO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO


////////////////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////////////////

          qrpFluxoCxFunc.Preview;

        end; //if


      EXCEPT
        on E : Exception do begin
           frmRelFluxoFunc.Release;
           MessageDlg('Ocorreu um erro ao tentar mostrar o Formulário: ' + E.Message,mtError,[mbOk],0);
        end;
      END;

////////////////////////////////////////////////////////////////////////////////

  //  end;//if cbofunc
    end;//if cbofunc  }


  end;//with

end;

end.
