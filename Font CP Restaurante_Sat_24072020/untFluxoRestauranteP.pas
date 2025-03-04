unit untFluxoRestauranteP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BmsXPButton, ComCtrls, IBQuery, StdCtrls, classComboBox,
  ExportPack;

type
  TfrmFluxoRestauranteP = class(TForm)
    btSair: TBmsXPButton;
    btVisualizar: TBmsXPButton;
    lbl_edtDe: TLabel;
    lbl_Ate: TLabel;
    dtpDataIni: TDateTimePicker;
    dtpDataF: TDateTimePicker;
    cboFunc: TComboBox;
    lbl_Func: TLabel;
    ExportQR1: TExportQR;
    procedure btSairClick(Sender: TObject);
    procedure SELECTFunc;
    procedure Commit(IBQueryExec : TIBQuery);
    procedure FormShow(Sender: TObject);
    procedure btVisualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFluxoRestauranteP: TfrmFluxoRestauranteP;

implementation

uses untdmModule, funcPosto, DB, untRFluxoRestaurante;

{$R *.dfm}

procedure TfrmFluxoRestauranteP.btSairClick(Sender: TObject);
begin
Close;
end;

procedure TfrmFluxoRestauranteP.Commit(IBQueryExec : TIBQuery);

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

procedure TfrmFluxoRestauranteP.SELECTFunc;

var
ClassFunc     : TClasseCombo;

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

procedure TfrmFluxoRestauranteP.FormShow(Sender: TObject);
begin

dtpDataIni.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
dtpDataF.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));

  with dmModule do begin

    SELECTFunc;

  end;//with

end;

procedure TfrmFluxoRestauranteP.btVisualizarClick(Sender: TObject);

var

VlrGeralSaida,VlrGeralEntrada : Real;

//referente ao segundo relatorio de total fluxo
VlrTotalFluxo, VlrTotalCustoFluxo, VlrAcrescimo, VlrDesconto : Real;
ValorTotalFluxo, ValorTotalCustoFluxo, TotalAcrescimo,TotalDesconto : String;

VlrCartoes, VlrChequePre, VlrTotalVenda : Real;
TotalCartoes, TotalChequePre, TotalVenda, TotalPendente : String;

// Vari�veis dos cart�es

VlrVisaCredito,VlrVisaDebito,VlrVisaParc, VlrPendente : Real;
VlrMastercardCredito,VlrMastercardDebito,VlrMastercardParc : Real;
VlrHipercard,VlrSoroCred,VlrAmericanExpress : Real;
VlrSodex,VlrVisaVale,VlrTR : Real;
TotalSodex,TotalVisaVale,TotalTR : String;
TotalVisaCredito,TotalVisaDebito,TotalVisaParc : String;
TotalMastercardCredito,TotalMastercardDebito,TotalMastercardParc : String;
TotalHipercard,TotalSoroCred,TotalAmericanExpress : String;
IDClassFuncComissao : TClasseCombo;
TotalCartaoCredito,TotalCartaoDebito : String;
VlrTotalCartaoCredito,VlrTotalCartaoDebito : Real;
ConfirmaPdfCX : Integer;
DataIniVendasCX,DataFVendasCX : String;

begin

    if VlrPendente > 0 Then begin

      VlrPendente := 0;

    end;

    if TotalPendente > '0' Then begin

      TotalPendente := '0';

    end;

    if VlrTotalCartaoCredito > 0 Then begin

      VlrTotalCartaoCredito := 0;

    end;

    if TotalCartaoCredito > '0' Then begin

      TotalCartaoCredito := '0';

    end;

    if VlrTotalCartaoDebito > 0 Then begin

      VlrTotalCartaoDebito := 0;

    end;

    if TotalCartaoDebito > '0' Then begin

      TotalCartaoDebito := '0';

    end;
    
  with dmModule do begin

    if cboFunc.ItemIndex <> - 1 Then begin

      IDClassFuncComissao := TClasseCombo(cboFunc.Items.Objects[cboFunc.ItemIndex]);

        Commit(ibRestaurante);
        ibRestaurante.Close;
        ibRestaurante.SQL.Clear;
        ibRestaurante.SQL.Add('SELECT TBLRESTAURANTE.*,'
        + 'TBLTIPOPAGTOAVULSO.TIPOPAGTO As TipodePagto,'
        + 'TBLTIPOPAGTOAVULSO.DESCRICAO As NomedoCartao,'
        + 'TBLRECEBERESTAURANTE.VLRDESCONTO,TBLRECEBERESTAURANTE.VLRACRESCIMO FROM TBLRESTAURANTE '
        + 'LEFT OUTER JOIN TBLRECEBERESTAURANTE ON TBLRESTAURANTE.IDDETALHER=TBLRECEBERESTAURANTE.IDDETALHER '
        + 'INNER JOIN TBLTIPOPAGTOAVULSO ON TBLRESTAURANTE.IDTIPOPAGTOR=TBLTIPOPAGTOAVULSO.IDTIPO WHERE TBLRESTAURANTE.IDFUNC=''' + IntToStr(IDClassFuncComissao.ID) + ''' and(TBLRESTAURANTE.DATA Between :ParamDataIni and :ParamDataF)ORDER BY TBLRESTAURANTE.IDDETALHER ASC');
        ibRestaurante.Open;

        ibRestaurante.Close;
        ibRestaurante.ParamByName('ParamDataIni').Value := dtpDataIni.DateTime;
        ibRestaurante.ParamByName('ParamDataF').Value := dtpDataF.DateTime;
        ibRestaurante.Open;

    end else begin

        Commit(ibRestaurante);
        ibRestaurante.Close;
        ibRestaurante.SQL.Clear;
        ibRestaurante.SQL.Add('SELECT TBLRESTAURANTE.*,'
        + 'TBLTIPOPAGTOAVULSO.TIPOPAGTO As TipodePagto,'
        + 'TBLTIPOPAGTOAVULSO.DESCRICAO As NomedoCartao,'
        + 'TBLRECEBERESTAURANTE.VLRDESCONTO,TBLRECEBERESTAURANTE.VLRACRESCIMO FROM TBLRESTAURANTE '
        + 'LEFT OUTER JOIN TBLRECEBERESTAURANTE ON TBLRESTAURANTE.IDDETALHER=TBLRECEBERESTAURANTE.IDDETALHER '
        + 'INNER JOIN TBLTIPOPAGTOAVULSO ON TBLRESTAURANTE.IDTIPOPAGTOR=TBLTIPOPAGTOAVULSO.IDTIPO WHERE(TBLRESTAURANTE.DATA Between :ParamDataIni and :ParamDataF) ORDER BY TBLRESTAURANTE.IDDETALHER ASC');
        ibRestaurante.Open;

        ibRestaurante.Close;
        ibRestaurante.ParamByName('ParamDataIni').Value := dtpDataIni.DateTime;
        ibRestaurante.ParamByName('ParamDataF').Value := dtpDataF.DateTime;
        ibRestaurante.Open;

    end;

    while not ibRestaurante.Eof do begin

      if (ibRestaurante.FieldByName('NOMETIPOPAGTOR').AsString = 'CHEQUE PRE') Then begin

       if VlrChequePre = 0 Then begin

         VlrChequePre := StrtoFloat(StringReplace(FloattoStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

       end else begin

         TotalChequePre := StringReplace(FloattoStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

         VlrChequePre := VlrChequePre + StrtoFloat(StringReplace(TotalChequePre,ThousandSeparator,'',[rfReplaceAll]));

       end;//if vlrconsig

      end;//if

      if (ibRestaurante.FieldByName('TipodePagto').AsString = 'DINHEIRO') Then begin

             if VlrTotalVenda = 0 Then begin

               VlrTotalVenda := StrtoFloat(StringReplace(FloattoStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             end else begin

               TotalVenda := StringReplace(FloattoStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

               VlrTotalVenda := VlrTotalVenda + StrtoFloat(StringReplace(TotalVenda,ThousandSeparator,'',[rfReplaceAll]));

             end;//if vlrconsig

      end;//if
////////////////////////////////////////////////////////////////////////////////

      if (ibRestaurante.FieldByName('IDTIPOPAGTOR').AsInteger = 12) Then begin

             if VlrPendente = 0 Then begin

               VlrPendente := StrtoFloat(StringReplace(FloattoStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             end else begin

               TotalPendente := StringReplace(FloattoStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

               VlrPendente := VlrPendente + StrtoFloat(StringReplace(TotalPendente,ThousandSeparator,'',[rfReplaceAll]));

             end;//if vlrconsig

      end;//if
////////////////////////////////////////////////////////////////////////////////
           if ibRestaurante.FieldByName('TipodePagto').AsString = 'CARTAOC' Then begin

            if (VlrTotalCartaoCredito = 0) Then begin//se variavel for igual a zero

              //atribui o vlr do campo abaixo na variavel
              VlrTotalCartaoCredito   := strToFloat(StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

            end else begin

              TotalCartaoCredito   := StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);


              VlrTotalCartaoCredito   := VlrTotalCartaoCredito + StrToFloat(StringReplace(TotalCartaoCredito,ThousandSeparator,'',[rfReplaceall]));

             end;{if}

           end;//if cartaoc

           if ibRestaurante.FieldByName('TipodePagto').AsString = 'CARTAOD' Then begin

            if (VlrTotalCartaoDebito = 0) Then begin//se variavel for igual a zero

              //atribui o vlr do campo abaixo na variavel
              VlrTotalCartaoDebito   := strToFloat(StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

            end else begin

              TotalCartaoDebito   := StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);


              VlrTotalCartaoDebito   := VlrTotalCartaoDebito + StrToFloat(StringReplace(TotalCartaoDebito,ThousandSeparator,'',[rfReplaceall]));

             end;{if}

           end;//if cartaod

////////////////////////////////////////////////////////////////////////////////
           if (ibRestaurante.FieldByName('TipodePagto').AsString = 'CARTAO')or(ibRestaurante.FieldByName('TipodePagto').AsString = 'CARTAOC')or(ibRestaurante.FieldByName('TipodePagto').AsString = 'CARTAOD') Then begin

              if VlrCartoes = 0 Then begin

                VlrCartoes := StrtoFloat(StringReplace(FloattoStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

              end else begin

                TotalCartoes := StringReplace(FloattoStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

                VlrCartoes := VlrCartoes + StrtoFloat(StringReplace(TotalCartoes,ThousandSeparator,'',[rfReplaceAll]));

              end;//if vlrcartoes

              if ibRestaurante.FieldByName('NomedoCartao').AsString = 'VISA CREDITO' Then begin

                if VlrVisaCredito = 0 Then begin

                  VlrVisaCredito := StrtoFloat(StringReplace(FloattoStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

                end else begin

                  TotalVisaCredito := StringReplace(FloattoStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

                  VlrVisaCredito := VlrVisaCredito + StrtoFloat(StringReplace(TotalVisaCredito,ThousandSeparator,'',[rfReplaceAll]));

                end;//if visa credito

              end;// nome visa credito

              if ibRestaurante.FieldByName('NomedoCartao').AsString = 'VISA DEBITO' Then begin

                if VlrVisaDebito = 0 Then begin

                  VlrVisaDebito := StrtoFloat(StringReplace(FloattoStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

                end else begin

                  TotalVisaDebito := StringReplace(FloattoStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

                  VlrVisaDebito := VlrVisaDebito + StrtoFloat(StringReplace(TotalVisaDebito,ThousandSeparator,'',[rfReplaceAll]));

                end;//if visa credito

              end;// nome visa debito

              if ibRestaurante.FieldByName('NomedoCartao').AsString = 'VISA PARCELADO' Then begin

                if VlrVisaParc = 0 Then begin

                  VlrVisaParc := StrtoFloat(StringReplace(FloattoStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

                end else begin

                  TotalVisaParc := StringReplace(FloattoStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

                  VlrVisaParc := VlrVisaParc + StrtoFloat(StringReplace(TotalVisaParc,ThousandSeparator,'',[rfReplaceAll]));

                end;//if visa credito

              end;// nome visa parcelado

              if ibRestaurante.FieldByName('NomedoCartao').AsString = 'MASTERCARD CREDITO' Then begin

                if VlrMastercardCredito = 0 Then begin

                  VlrMastercardCredito := StrtoFloat(StringReplace(FloattoStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

                end else begin

                  TotalMastercardCredito := StringReplace(FloattoStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

                  VlrMastercardCredito := VlrMastercardCredito + StrtoFloat(StringReplace(TotalMastercardCredito,ThousandSeparator,'',[rfReplaceAll]));

                end;//if visa credito

              end;// nome mastercard credito

              if ibRestaurante.FieldByName('NomedoCartao').AsString = 'MASTERCARD DEBITO' Then begin

                if VlrMastercardDebito = 0 Then begin

                  VlrMastercardDebito := StrtoFloat(StringReplace(FloattoStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

                end else begin

                  TotalMastercardDebito := StringReplace(FloattoStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

                  VlrMastercardDebito := VlrMastercardDebito + StrtoFloat(StringReplace(TotalMastercardDebito,ThousandSeparator,'',[rfReplaceAll]));

                end;//if visa credito

              end;// nome mastercard debito

              if ibRestaurante.FieldByName('NomedoCartao').AsString = 'MASTERCARD  PARCELADO' Then begin

                if VlrMastercardParc = 0 Then begin

                  VlrMastercardParc := StrtoFloat(StringReplace(FloattoStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

                end else begin

                  TotalMastercardParc := StringReplace(FloattoStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

                  VlrMastercardParc := VlrMastercardParc + StrtoFloat(StringReplace(TotalMastercardParc,ThousandSeparator,'',[rfReplaceAll]));

                end;//if mastercard parc

              end;// nome mastercard parcelado

              if ibRestaurante.FieldByName('NomedoCartao').AsString = 'HIPERCARD' Then begin

                if VlrHipercard = 0 Then begin

                  VlrHipercard := StrtoFloat(StringReplace(FloattoStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

                end else begin

                  TotalHipercard := StringReplace(FloattoStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

                  VlrHipercard := VlrHipercard + StrtoFloat(StringReplace(TotalHipercard,ThousandSeparator,'',[rfReplaceAll]));

                end;//if mastercard parc

              end;// nome hipercard

              if ibRestaurante.FieldByName('NomedoCartao').AsString = 'SOROCRED' Then begin

                if VlrSoroCred = 0 Then begin

                  VlrSoroCred := StrtoFloat(StringReplace(FloattoStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

                end else begin

                  TotalSoroCred := StringReplace(FloattoStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

                  VlrSoroCred := VlrSoroCred + StrtoFloat(StringReplace(TotalSoroCred,ThousandSeparator,'',[rfReplaceAll]));

                end;//if mastercard parc

              end;// nome sorocred

              if ibRestaurante.FieldByName('NomedoCartao').AsString = 'AMERICAN EXPRESS' Then begin

                if VlrAmericanExpress = 0 Then begin

                  VlrAmericanExpress := StrtoFloat(StringReplace(FloattoStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

                end else begin

                  TotalAmericanExpress := StringReplace(FloattoStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

                  VlrAmericanExpress := VlrAmericanExpress + StrtoFloat(StringReplace(TotalAmericanExpress,ThousandSeparator,'',[rfReplaceAll]));

                end;//if mastercard parc

              end;// nome american express

              if ibRestaurante.FieldByName('NomedoCartao').AsString = 'SODEX' Then begin

                if VlrSodex = 0 Then begin

                  VlrSodex := StrtoFloat(StringReplace(FloattoStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

                end else begin

                  TotalSodex := StringReplace(FloattoStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

                  VlrSodex := VlrSodex + StrtoFloat(StringReplace(TotalSodex,ThousandSeparator,'',[rfReplaceAll]));

                end;//if mastercard parc

              end;// nome SODEX

              if ibRestaurante.FieldByName('NomedoCartao').AsString = 'VISA VALE' Then begin

                if VlrVisaVale = 0 Then begin

                  VlrVisaVale := StrtoFloat(StringReplace(FloattoStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

                end else begin

                  TotalVisaVale := StringReplace(FloattoStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

                  VlrVisaVale := VlrVisaVale + StrtoFloat(StringReplace(TotalVisaVale,ThousandSeparator,'',[rfReplaceAll]));

                end;//if mastercard parc

              end;// nome VISA VALE

              if ibRestaurante.FieldByName('NomedoCartao').AsString = 'TICKET RESTAURANTE' Then begin

                if VlrTR = 0 Then begin

                  VlrTR := StrtoFloat(StringReplace(FloattoStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

                end else begin

                  TotalTR := StringReplace(FloattoStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

                  VlrTR := VlrTR + StrtoFloat(StringReplace(TotalTR,ThousandSeparator,'',[rfReplaceAll]));

                end;//if mastercard parc

              end;// nome TR

            end;//if tipocartao

////////////////////////////////////////////////////////////////////////////////


    ibRestaurante.Next;

    end;//while

     Application.CreateForm(TfrmRFluxoRestaurante, frmRFluxoRestaurante);

      TRY

        with frmRFluxoRestaurante do begin

          frmRFluxoRestaurante.qrpFluxoCxRestaurante.DataSet := ibRestaurante;


          //ATRIBUI OS NOMES DOS CAMPOS AOS QRDBTEXT DO QUICKREPORT
          qrdbNCupom.DataSet    := ibRestaurante;
          qrdbNCupom.DataField  := ibRestaurante.FieldByName('IDDETALHER').FieldName;

          qrdbNMesa.DataSet    := ibRestaurante;
          qrdbNMesa.DataField  := ibRestaurante.FieldByName('MESAS').FieldName;

          qrdbProd.DataSet    := ibRestaurante;
          qrdbProd.DataField  := ibRestaurante.FieldByName('NOMEPRODUTO').FieldName;

          qrdbVlrUnit.DataSet     := ibRestaurante;
          qrdbVlrUnit.DataField   := ibRestaurante.FieldByName('VLRUNIT').FieldName;
         (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

          qrdbQtde.DataSet        := ibRestaurante;
          qrdbQtde.DataField      := ibRestaurante.FieldByName('QTDE').FieldName;
          (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

          qrdbVlrTotal.DataSet       := ibRestaurante;
          qrdbVlrTotal.DataField     := ibRestaurante.FieldByName('VLRTOTAL').FieldName;
          (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

          qrdbData.DataSet    := ibRestaurante;
          qrdbData.DataField  := ibRestaurante.FieldByName('DATA').FieldName;

          qrdbDesc.DataSet    := ibRestaurante;
          qrdbDesc.DataField  := ibRestaurante.FieldByName('VLRDESCONTO').FieldName;
          (ibRestaurante.FieldByName('VLRDESCONTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

          qrdbAcrescimo.DataSet    := ibRestaurante;
          qrdbAcrescimo.DataField  := ibRestaurante.FieldByName('VLRACRESCIMO').FieldName;
          (ibRestaurante.FieldByName('VLRACRESCIMO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

        ///  qrlFuncionarioComissao.Caption := '';

          qrl_DataIni.Caption := DateToStr(dtpDataIni.Date);
          qrl_DataF.Caption  := DateToStr(dtpDataF.Date);

       /////////////////////////////////////////////////////////////////////////

         { if VlrPendente > 0 Then begin
          qrl_TotalPendente.Caption      := FormatFloat(CasasDecimais('Produtos'),VlrPendente);
          end else begin
          qrl_TotalPendente.Caption      := '0,00';
          end; 

          if VlraPagar > 0 Then begin
          qrl_TotalaPagar.Caption        := FormatFloat(CasasDecimais('Produtos'),VlraPagar);
          end else begin
          qrl_TotalaPagar.Caption        := '0,00';
          end;

          if VlraReceber > 0 Then begin
          qrl_TotalaReceber.Caption        := FormatFloat(CasasDecimais('Produtos'),VlraReceber);
          end else begin
          qrl_TotalaReceber.Caption        := '0,00';
          end;}

         { if VlrCartoes > 0 Then begin
          qrl_TotalCartoes.Caption        := FormatFloat(CasasDecimais('Produtos'),VlrCartoes);
          end else begin
          qrl_TotalCartoes.Caption        := '0,00';
          end;  }

          if VlrVisaCredito > 0 Then begin
          qrl_TotalVisaCredito.Caption        := FormatFloat(CasasDecimais('Produtos'),VlrVisaCredito);
          end else begin                                                           //  + VlrTotalVendaBCartoes + VlrTotalVendaCCartoes
          qrl_TotalVisaCredito.Caption        := '0,00';
          end;

          if VlrVisaDebito > 0 Then begin
          qrl_TotalVisaDebito.Caption        := FormatFloat(CasasDecimais('Produtos'),VlrVisaDebito);
          end else begin                                                           //  + VlrTotalVendaBCartoes + VlrTotalVendaCCartoes
          qrl_TotalVisaDebito.Caption        := '0,00';
          end;

          if VlrVisaParc > 0 Then begin
          qrl_TotalVisaParc.Caption        := FormatFloat(CasasDecimais('Produtos'),VlrVisaParc);
          end else begin                                                           //  + VlrTotalVendaBCartoes + VlrTotalVendaCCartoes
          qrl_TotalVisaParc.Caption        := '0,00';
          end;

          if VlrMastercardCredito > 0 Then begin
          qrl_TotalMastercardCredito.Caption        := FormatFloat(CasasDecimais('Produtos'),VlrMastercardCredito);
          end else begin                                                           //  + VlrTotalVendaBCartoes + VlrTotalVendaCCartoes
          qrl_TotalMastercardCredito.Caption        := '0,00';
          end;

          if VlrMastercardDebito > 0 Then begin
          qrl_TotalMastercardDebito.Caption        := FormatFloat(CasasDecimais('Produtos'),VlrMastercardDebito);
          end else begin                                                           //  + VlrTotalVendaBCartoes + VlrTotalVendaCCartoes
          qrl_TotalMastercardDebito.Caption        := '0,00';
          end;

          if VlrMastercardParc > 0 Then begin
          qrl_TotalMastercardParcelado.Caption        := FormatFloat(CasasDecimais('Produtos'),VlrMastercardParc);
          end else begin                                                           //  + VlrTotalVendaBCartoes + VlrTotalVendaCCartoes
          qrl_TotalMastercardParcelado.Caption        := '0,00';
          end;

          if VlrHipercard > 0 Then begin
          qrl_TotalHipercard.Caption        := FormatFloat(CasasDecimais('Produtos'),VlrHipercard);
          end else begin                                                           //  + VlrTotalVendaBCartoes + VlrTotalVendaCCartoes
          qrl_TotalHipercard.Caption        := '0,00';
          end;

          if VlrSoroCred > 0 Then begin
          qrl_TotalSorocred.Caption        := FormatFloat(CasasDecimais('Produtos'),VlrSoroCred);
          end else begin                                                           //  + VlrTotalVendaBCartoes + VlrTotalVendaCCartoes
          qrl_TotalSorocred.Caption        := '0,00';
          end;

          if VlrAmericanExpress > 0 Then begin
          qrl_TotalAmericanExpress.Caption        := FormatFloat(CasasDecimais('Produtos'),VlrAmericanExpress);
          end else begin                                                           //  + VlrTotalVendaBCartoes + VlrTotalVendaCCartoes
          qrl_TotalAmericanExpress.Caption        := '0,00';
          end;

          if VlrSodex > 0 Then begin
          qrl_TotalSodex.Caption        := FormatFloat(CasasDecimais('Produtos'),VlrSodex);
          end else begin                                                           //  + VlrTotalVendaBCartoes + VlrTotalVendaCCartoes
          qrl_TotalSodex.Caption        := '0,00';
          end;

          if VlrVisaVale > 0 Then begin
          qrl_TotalVisaVale.Caption        := FormatFloat(CasasDecimais('Produtos'),VlrVisaVale);
          end else begin                                                           //  + VlrTotalVendaBCartoes + VlrTotalVendaCCartoes
          qrl_TotalVisaVale.Caption        := '0,00';
          end;

          if VlrTR > 0 Then begin
          qrl_TotalTR.Caption        := FormatFloat(CasasDecimais('Produtos'),VlrTR);
          end else begin                                                           //  + VlrTotalVendaBCartoes + VlrTotalVendaCCartoes
          qrl_TotalTR.Caption        := '0,00';
          end;

          if VlrChequePre > 0 Then begin
          qrl_TotalChequePre.Caption        := FormatFloat(CasasDecimais('Produtos'),VlrChequePre);
          end else begin
          qrl_TotalChequePre.Caption        := '0,00';
          end;

          if VlrTotalCartaoCredito > 0 Then begin
          qrl_TotalCartaoCredito.Caption        := FormatFloat(CasasDecimais('Produtos'),VlrTotalCartaoCredito);
          end else begin                                                           //  + VlrTotalVendaBCartoes + VlrTotalVendaCCartoes
          qrl_TotalCartaoCredito.Caption        := '0,00';
          end;

          if VlrTotalCartaoDebito > 0 Then begin
          qrl_TotalCartaoDebito.Caption        := FormatFloat(CasasDecimais('Produtos'),VlrTotalCartaoDebito);
          end else begin                                                           //  + VlrTotalVendaBCartoes + VlrTotalVendaCCartoes
          qrl_TotalCartaoDebito.Caption        := '0,00';
          end;

          if VlrPendente > 0 Then begin
          qrl_TotalPendente.Caption        := FormatFloat(CasasDecimais('Produtos'),VlrPendente);
          qrl_Pendentes.Caption            := FormatFloat(CasasDecimais('Produtos'),VlrPendente);
          end else begin
          qrl_TotalPendente.Caption        := '0,00';
          qrl_Pendentes.Caption        := '0,00';
          end;
          //SOMA OS TOTAIS DE SAIDA

          //SOMA OS TOTAIS DE ENTRADA
          qrl_TotalEntrada.Caption := FormatFloat(CasasDecimais('Produtos'),VlrTotalVenda + VlrTotalCartaoCredito + VlrTotalCartaoDebito + VlrPendente);
          VlrGeralEntrada := VlrTotalVenda;

          qrl_TotalVendas.Caption := FormatFloat(CasasDecimais('Produtos'),VlrTotalVenda);
          qrl_TotalLiquido.Caption := FormatFloat(CasasDecimais('Produtos'),VlrTotalVenda + VlrTotalCartaoCredito + VlrTotalCartaoDebito);
         // qrl_VlrLiquido.Caption   := FormatFloat(CasasDecimais('Produtos'),VlrTotalVenda + VlrTotalCartaoCredito + VlrTotalCartaoDebito - VlrPendente);
        {  if VlrGeralEntrada > VlrGeralSaida Then begin

            qrl_TotalLiquido.Font.Color := clBlue;
            qrl_TotalLiquido.Caption := FormatFloat(CasasDecimais('Produtos'),VlrGeralEntrada - VlrGeralSaida);

          end;

          if VlrGeralEntrada < VlrGeralSaida Then begin

            qrl_TotalLiquido.Font.Color := clRed;
            qrl_TotalLiquido.Caption := FormatFloat(CasasDecimais('Produtos'),VlrGeralEntrada - VlrGeralSaida);

          end;  }
       /////////////////////////////////////////////////////////////////////////

          if cboFunc.Text <> '' Then begin

            frmRFluxoRestaurante.qrl_Funcionario.Caption := 'Funcion�ro: ';
            frmRFluxoRestaurante.qrl_NomeFunc.Caption := cboFunc.Text;

          end;

          //qrpFluxoCxRestaurante.ExportToFilter(TQRPDFDocumentFilter.Create('C:\Relatorio Vendas'));

////////////////////////////////////////////////////////////////////////////////

           ConfirmaPdfCX := Application.MessageBox('Gerar para PDF?','Gera em PDF',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

           DataIniVendasCX := FormatDateTime('dd.mm.yyyy',dtpDataIni.DateTime);
           DataFVendasCX   := FormatDateTime('dd.mm.yyyy',dtpDataF.DateTime);

           if ConfirmaPdfCX = 6 Then begin

             qrpFluxoCxRestaurante.Prepare;
             ExportQR1.Report := frmRFluxoRestaurante.qrpFluxoCxRestaurante;
             ExportQR1.ExportQRPDF('C:\Relatorio Vendas\''De_'+DataIniVendasCX+' At�_'+DataFVendasCX,false);
            // ExportQR1.ExportQRPDF('C:\Relat�rio_FluxoCX\''De: '+DataIniVendasCX+' at�:'+DataFVendasCX ,false);

           end;

////////////////////////////////////////////////////////////////////////////////

          qrpFluxoCxRestaurante.Preview;

        end; {if}


      EXCEPT
        on E : Exception do begin
           frmRFluxoRestaurante.Release;
           MessageDlg('Ocorreu um erro ao tentar mostrar o Formul�rio: ' + E.Message,mtError,[mbOk],0);
        end;
      END;
    //////////////////////////////////////////////////////////////


  end;
  
end;

end.
