unit untFluxoCxP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, IBQuery, DB, Buttons,
  BmsXPCheckBox;

type
  TfrmFluxoCxP = class(TForm)
    Image1: TImage;
    dtpDataIniGeral: TDateTimePicker;
    dtpDataFimGeral: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ibeaOk: TSpeedButton;
    ibeaSair: TSpeedButton;
    ckClientesBar: TBmsXPCheckBox;
    procedure Commit(IBQueryExec : TIBQuery);
    procedure ibeaSairClick(Sender: TObject);
    procedure ibeaOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFluxoCxP: TfrmFluxoCxP;

implementation

uses untdmModule, untRelFluxoCx, funcPosto, untFluxoPrecoA, untFluxoPrecoB,
  untFluxoPrecoC, untRelTotalFluxo, untFluxoPrecoD, untRVendasCliBar;

{$R *.dfm}

procedure TfrmFluxoCxP.Commit(IBQueryExec : TIBQuery);

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


procedure TfrmFluxoCxP.ibeaSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmFluxoCxP.ibeaOkClick(Sender: TObject);

var

VlrPendente, VlraPagar, VlraReceber, VlrCartoes, VlrChequePre : Real;
TotalPendente, TotalaPagar, TotalaReceber, TotalCartoes, TotalChequePre : String;
VlrTotalVenda, VlrTotalPagoPendente : Real;
TotalVenda, TotalPagoPendente : String;
VlrGeralSaida,VlrGeralEntrada : Real;

//referente ao segundo relatorio de total fluxo
VlrTotalFluxo, VlrTotalCustoFluxo, VlrAcrescimo, VlrDesconto : Real;
ValorTotalFluxo, ValorTotalCustoFluxo, TotalAcrescimo,TotalDesconto : String;

// Variáveis dos cartões

VlrVisaCredito,VlrVisaDebito,VlrVisaParc : Real;
VlrMastercardCredito,VlrMastercardDebito,VlrMastercardParc : Real;
VlrHipercard,VlrSoroCred,VlrAmericanExpress : Real;
VlrSodex,VlrVisaVale,VlrTR,VlrCheque,VlrSangria : Real;
TotalSodex,TotalVisaVale,TotalTR,TotalSangria : String;
TotalVisaCredito,TotalVisaDebito,TotalVisaParc : String;
TotalMastercardCredito,TotalMastercardDebito,TotalMastercardParc : String;
TotalHipercard,TotalSoroCred,TotalAmericanExpress, TotalCheque : String;

begin
  with dmModule do begin

    if VlrSangria > 0 Then begin

      VlrSangria := 0;

    end;

    if VlrCheque > 0 Then begin

      VlrCheque := 0;

    end;

    if TotalCheque > '0' Then begin

      TotalCheque := '0';

    end;


    if VlrVisaCredito > 0 Then begin

      VlrVisaCredito := 0;

    end;

    if VlrVisaDebito > 0 Then begin

      VlrVisaDebito := 0;

    end;

    if VlrVisaParc > 0 Then begin

      VlrVisaParc := 0;

    end;

    if VlrMastercardCredito > 0 Then begin

      VlrMastercardCredito := 0;

    end;

    if VlrMastercardDebito > 0 Then begin

      VlrMastercardDebito := 0;

    end;

    if VlrMastercardParc > 0 Then begin

      VlrMastercardParc := 0;

    end;

    if VlrHipercard > 0 Then begin

      VlrHipercard := 0;

    end;
        
    if VlrSoroCred > 0 Then begin

      VlrSoroCred := 0;

    end;

    if VlrAmericanExpress > 0 Then begin

      VlrAmericanExpress := 0;

    end;

    if TotalVisaCredito > '0' Then begin

      TotalVisaCredito := '0';

    end;

    if TotalVisaDebito > '0' Then begin

      TotalVisaDebito := '0';

    end;

    if TotalVisaParc > '0' Then begin

      TotalVisaParc := '0';

    end;

    if TotalMastercardCredito > '0' Then begin

      TotalMastercardCredito := '0';

    end;

    if TotalMastercardDebito > '0' Then begin

      TotalMastercardDebito := '0';

    end;

    if TotalMastercardParc > '0' Then begin

      TotalMastercardParc := '0';

    end;

    if TotalHipercard > '0' Then begin

      TotalHipercard := '0';

    end;

    if TotalSoroCred > '0' Then begin

      TotalSoroCred := '0';

    end;

    if TotalAmericanExpress > '0' Then begin

      TotalAmericanExpress := '0';

    end;


    if VlrPendente > 0 Then begin

      VlrPendente := 0;

    end;

    if TotalPendente > '0' Then begin

      TotalPendente := '0';

    end;

    if VlraPagar > 0 Then begin

      VlraPagar := 0;

    end;

    if TotalaPagar > '0' Then begin

      TotalaPagar := '0';

    end;

    if VlraReceber > 0 Then begin

      VlraReceber := 0;

    end;

    if TotalaReceber > '0' Then begin

      TotalaReceber := '0';

    end;

    if VlrTotalVenda > 0 Then begin

      VlrTotalVenda := 0;

    end;

    if TotalVenda > '0' Then begin

      TotalVenda := '0';

    end;

    if VlrTotalPagoPendente > 0 Then begin

      VlrTotalPagoPendente := 0;

    end;

    if TotalPagoPendente > '0' Then begin

      TotalPagoPendente := '0';

    end;

    if VlrCartoes > 0 Then begin

      VlrCartoes := 0;

    end;

    if TotalCartoes > '0' Then begin

      TotalCartoes := '0';

    end;

    if VlrChequePre > 0 Then begin

      VlrChequePre := 0;

    end;

    if TotalChequePre > '0' Then begin

      TotalChequePre := '0';

    end;

    if VlrGeralSaida > 0 Then begin

      VlrGeralSaida := 0;

    end;

    if VlrGeralEntrada > 0 Then begin

      VlrGeralEntrada := 0;

    end;

    if ckClientesBar.Checked = False Then begin


      Commit(ibServsVenda);
      ibServsVenda.Close;
      ibServsVenda.SQL.Clear;
      ibServsVenda.SQL.Add('SELECT TBLSERVICOSVENDAS.IDPROD,TBLSERVICOSVENDAS.IDSERVSVENDA,TBLSERVICOSVENDAS.ESTOQUE,TBLSERVICOSVENDAS.VLRSANGRIA,'
      + 'TBLSERVICOSVENDAS.QTDE,TBLSERVICOSVENDAS.HORA,TBLSERVICOSVENDAS.VLRUNIT,TBLSERVICOSVENDAS.VLRTOTAL,TBLSERVICOSVENDAS.DATA,'
      + 'TBLSERVICOSVENDAS.PENDENTEPAGO,TBLSERVICOSVENDAS.TIPOCOMPR,TBLSERVICOSVENDAS.TIPOVENDA,TBLSERVICOSVENDAS.VALORB,TBLSERVICOSVENDAS.TOTALCUSTO,TBLSERVICOSVENDAS.VLRTROCA,'
      + 'TBLSERVICOSVENDAS.NOMEVENDA,TBLSERVICOSVENDAS.IDTIPOPAGTO,TBLSERVICOSVENDAS.VALORC,TBLSERVICOSVENDAS.VALORD,TBLSERVICOSVENDAS.DESCONTO,TBLSERVICOSVENDAS.ACRESCIMO,TBLTIPOCOMPROMISSO.NOME As Compromisso,'
      + 'CADPRODUTOS.NOME As Produto,'
      + 'TBLTIPOPAGTOAVULSO.TIPOPAGTO As TipodePagto,TBLTIPOPAGTOAVULSO.IDTIPO As TipodeID,'
      + 'TBLTIPOPAGTOAVULSO.DESCRICAO As NomedoCartao FROM TBLSERVICOSVENDAS '
      + 'LEFT OUTER JOIN TBLTIPOCOMPROMISSO ON TBLSERVICOSVENDAS.TIPOCOMPR=TBLTIPOCOMPROMISSO.IDTIPO '
      + 'LEFT OUTER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD '
      + 'LEFT OUTER JOIN TBLTIPOPAGTOAVULSO ON TBLSERVICOSVENDAS.IDTIPOPAGTO=TBLTIPOPAGTOAVULSO.IDTIPO '
      + 'WHERE (TBLSERVICOSVENDAS.DATA between :ParamDataInicial and :ParamDataFinal)ORDER BY IDSERVSVENDA ASC');
      ibServsVenda.Open;

      ibServsVenda.Close;
      ibServsVenda.ParamByName('ParamDataInicial').Value := dtpDataIniGeral.DateTime;
      ibServsVenda.ParamByName('ParamDataFinal').Value := dtpDataFimGeral.DateTime;
      ibServsVenda.Open;

////////////////////////////////////////////////////////////////////////////////

        while not ibServsVenda.Eof do begin//enquanto nao for fim de registro

            if (VlrSangria = 0) Then begin//se variavel for igual a zero

              //atribui o vlr do campo abaixo na variavel
              VlrSangria   := strToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRSANGRIA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

            end else begin

              TotalSangria   := StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRSANGRIA').AsFloat),ThousandSeparator,'',[rfReplaceAll]);


              VlrSangria   := VlrSangria + StrToFloat(StringReplace(TotalSangria,ThousandSeparator,'',[rfReplaceall]));

             end;{if}
        
          if ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pendente' Then begin

            if (VlrPendente = 0) Then begin//se variavel for igual a zero

              //atribui o vlr do campo abaixo na variavel
              VlrPendente   := strToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

            end else begin

              TotalPendente   := StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);


              VlrPendente   := VlrPendente + StrToFloat(StringReplace(TotalPendente,ThousandSeparator,'',[rfReplaceall]));

             end;{if}

           end;//if tipovenda pendente

           if (ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = 1)and(ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then Begin

             if VlrTotalVenda = 0 Then begin

               VlrTotalVenda := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             end else begin

               TotalVenda := StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

               VlrTotalVenda := VlrTotalVenda + StrtoFloat(StringReplace(TotalVenda,ThousandSeparator,'',[rfReplaceAll]));

             end;//if vlrconsig

           end;//if

           if (ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = 2)and(ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pago') Then begin

             if VlrCheque = 0 Then begin

               VlrCheque := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             end else begin

               TotalCheque := StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

               VlrCheque := VlrCheque + StrtoFloat(StringReplace(TotalCheque,ThousandSeparator,'',[rfReplaceAll]));

             end;//if vlrconsig

           end;//if

           if (ibServsVenda.FieldByName('NOMEVENDA').AsString = 'Cheque Pre') Then begin

             if VlrChequePre = 0 Then begin

               VlrChequePre := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             end else begin

               TotalChequePre := StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

               VlrChequePre := VlrChequePre + StrtoFloat(StringReplace(TotalChequePre,ThousandSeparator,'',[rfReplaceAll]));

             end;//if vlrconsig

           end;//if

////////////////////////////////////////////////////////////////////////////////

           if ibServsVenda.FieldByName('TipodePagto').AsString = 'CARTAO' Then begin

              if VlrCartoes = 0 Then begin

                VlrCartoes := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

              end else begin

                TotalCartoes := StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

                VlrCartoes := VlrCartoes + StrtoFloat(StringReplace(TotalCartoes,ThousandSeparator,'',[rfReplaceAll]));

              end;//if vlrcartoes

              if ibServsVenda.FieldByName('NomedoCartao').AsString = 'VISA CREDITO' Then begin

                if VlrVisaCredito = 0 Then begin

                  VlrVisaCredito := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

                end else begin

                  TotalVisaCredito := StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

                  VlrVisaCredito := VlrVisaCredito + StrtoFloat(StringReplace(TotalVisaCredito,ThousandSeparator,'',[rfReplaceAll]));

                end;//if visa credito

              end;// nome visa credito

              if ibServsVenda.FieldByName('NomedoCartao').AsString = 'VISA DEBITO' Then begin

                if VlrVisaDebito = 0 Then begin

                  VlrVisaDebito := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

                end else begin

                  TotalVisaDebito := StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

                  VlrVisaDebito := VlrVisaDebito + StrtoFloat(StringReplace(TotalVisaDebito,ThousandSeparator,'',[rfReplaceAll]));

                end;//if visa credito

              end;// nome visa debito

              if ibServsVenda.FieldByName('NomedoCartao').AsString = 'VISA PARCELADO' Then begin

                if VlrVisaParc = 0 Then begin

                  VlrVisaParc := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

                end else begin

                  TotalVisaParc := StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

                  VlrVisaParc := VlrVisaParc + StrtoFloat(StringReplace(TotalVisaParc,ThousandSeparator,'',[rfReplaceAll]));

                end;//if visa credito

              end;// nome visa parcelado

              if ibServsVenda.FieldByName('NomedoCartao').AsString = 'MASTERCARD CREDITO' Then begin

                if VlrMastercardCredito = 0 Then begin

                  VlrMastercardCredito := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

                end else begin

                  TotalMastercardCredito := StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

                  VlrMastercardCredito := VlrMastercardCredito + StrtoFloat(StringReplace(TotalMastercardCredito,ThousandSeparator,'',[rfReplaceAll]));

                end;//if visa credito

              end;// nome mastercard credito

              if ibServsVenda.FieldByName('NomedoCartao').AsString = 'MASTERCARD DEBITO' Then begin

                if VlrMastercardDebito = 0 Then begin

                  VlrMastercardDebito := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

                end else begin

                  TotalMastercardDebito := StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

                  VlrMastercardDebito := VlrMastercardDebito + StrtoFloat(StringReplace(TotalMastercardDebito,ThousandSeparator,'',[rfReplaceAll]));

                end;//if visa credito

              end;// nome mastercard debito

              if ibServsVenda.FieldByName('NomedoCartao').AsString = 'MASTERCARD  PARCELADO' Then begin

                if VlrMastercardParc = 0 Then begin

                  VlrMastercardParc := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

                end else begin

                  TotalMastercardParc := StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

                  VlrMastercardParc := VlrMastercardParc + StrtoFloat(StringReplace(TotalMastercardParc,ThousandSeparator,'',[rfReplaceAll]));

                end;//if mastercard parc

              end;// nome mastercard parcelado

              if ibServsVenda.FieldByName('NomedoCartao').AsString = 'HIPERCARD' Then begin

                if VlrHipercard = 0 Then begin

                  VlrHipercard := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

                end else begin

                  TotalHipercard := StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

                  VlrHipercard := VlrHipercard + StrtoFloat(StringReplace(TotalHipercard,ThousandSeparator,'',[rfReplaceAll]));

                end;//if mastercard parc

              end;// nome hipercard

              if ibServsVenda.FieldByName('NomedoCartao').AsString = 'SOROCRED' Then begin

                if VlrSoroCred = 0 Then begin

                  VlrSoroCred := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

                end else begin

                  TotalSoroCred := StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

                  VlrSoroCred := VlrSoroCred + StrtoFloat(StringReplace(TotalSoroCred,ThousandSeparator,'',[rfReplaceAll]));

                end;//if mastercard parc

              end;// nome sorocred

              if ibServsVenda.FieldByName('NomedoCartao').AsString = 'AMERICAN EXPRESS' Then begin

                if VlrAmericanExpress = 0 Then begin

                  VlrAmericanExpress := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

                end else begin

                  TotalAmericanExpress := StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

                  VlrAmericanExpress := VlrAmericanExpress + StrtoFloat(StringReplace(TotalAmericanExpress,ThousandSeparator,'',[rfReplaceAll]));

                end;//if mastercard parc

              end;// nome american express

              if ibServsVenda.FieldByName('NomedoCartao').AsString = 'SODEX' Then begin

                if VlrSodex = 0 Then begin

                  VlrSodex := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

                end else begin

                  TotalSodex := StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

                  VlrSodex := VlrSodex + StrtoFloat(StringReplace(TotalSodex,ThousandSeparator,'',[rfReplaceAll]));

                end;//if mastercard parc

              end;// nome SODEX

              if ibServsVenda.FieldByName('NomedoCartao').AsString = 'VISA VALE' Then begin

                if VlrVisaVale = 0 Then begin

                  VlrVisaVale := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

                end else begin

                  TotalVisaVale := StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

                  VlrVisaVale := VlrVisaVale + StrtoFloat(StringReplace(TotalVisaVale,ThousandSeparator,'',[rfReplaceAll]));

                end;//if mastercard parc

              end;// nome VISA VALE

              if ibServsVenda.FieldByName('NomedoCartao').AsString = 'TICKET RESTAURANTE' Then begin

                if VlrTR = 0 Then begin

                  VlrTR := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

                end else begin

                  TotalTR := StringReplace(FloattoStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

                  VlrTR := VlrTR + StrtoFloat(StringReplace(TotalTR,ThousandSeparator,'',[rfReplaceAll]));

                end;//if mastercard parc

              end;// nome TR

            end;//if tipocartao

////////////////////////////////////////////////////////////////////////////////

        ibServsVenda.Next;

        end;//while
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////

          ibAPagar.Close;
          ibAPagar.SQL.Clear;
          ibAPagar.SQL.Add('SELECT * FROM TBLCONTASAPAGAR WHERE(TBLCONTASAPAGAR.DATADABAIXA between :ParamDataIni and :ParamDataF)and(TBLCONTASAPAGAR.BAIXADO = ''Sim'')');
          ibAPagar.Open;

          ibAPagar.Close;
          ibAPagar.ParamByName('ParamDataIni').Value      := dtpDataIniGeral.DateTime;
          ibAPagar.ParamByName('ParamDataF').Value        := dtpDataFimGeral.DateTime;
          ibAPagar.Open;

          (ibAPagar.FieldByName('VLREMITIDO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

          while not ibAPagar.Eof do begin

            if VlraPagar = 0 Then begin

              VlraPagar := StrtoFloat(StringReplace(FloattoStr(ibAPagar.FieldByName('VLREMITIDO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

            end else begin

              TotalaPagar := StringReplace(FloattoStr(ibAPagar.FieldByName('VLREMITIDO').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

              VlraPagar := VlraPagar + StrtoFloat(StringReplace(TotalaPagar,ThousandSeparator,'',[rfReplaceAll]));

            end;//if vlrconsig

          ibAPagar.Next;

          end;//while

////////////////////////////////////////////////////////////////////////////////

          Commit(ibAReceber);
          ibAReceber.Close;
          ibAReceber.SQL.Clear;
          ibAReceber.SQL.Add('SELECT * FROM TBLCONTASARECEBER WHERE (TBLCONTASARECEBER.DATADABAIXA between :ParamDataIni and :ParamDataF)and(TBLCONTASARECEBER.BAIXADO = ''Sim'')');
          ibAReceber.Open;

          ibAReceber.Close;
          ibAReceber.ParamByName('ParamDataIni').Value      := dtpDataIniGeral.DateTime;
          ibAReceber.ParamByName('ParamDataF').Value        := dtpDataFimGeral.DateTime;
          ibAReceber.Open;


          (ibAReceber.FieldByName('VLREMITIDO')as TFloatField).DisplayFormat := CasasDecimais('Produtos');

          while not ibAReceber.Eof do begin

            if VlraReceber = 0 Then begin

              VlraReceber := StrtoFloat(StringReplace(FloattoStr(ibAReceber.FieldByName('VLREMITIDO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

            end else begin

              TotalaReceber := StringReplace(FloattoStr(ibAReceber.FieldByName('VLREMITIDO').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

              VlraReceber := VlraReceber + StrtoFloat(StringReplace(TotalaReceber,ThousandSeparator,'',[rfReplaceAll]));

            end;//if vlrconsig

          ibAReceber.Next;

          end;//while

////////////////////////////////////////////////////////////////////////////////

          Commit(ibPagtoPendente);
          ibPagtoPendente.Close;
          ibPagtoPendente.SQL.Clear;
          ibPagtoPendente.SQL.Add('SELECT * FROM TBLPAGTOPENDENTE WHERE(TBLPAGTOPENDENTE.DATAPAGTO between :ParamDataIni and :ParamDataF)');
          ibPagtoPendente.Open;

          ibPagtoPendente.Close;
          ibPagtoPendente.ParamByName('ParamDataIni').Value      := dtpDataIniGeral.DateTime;
          ibPagtoPendente.ParamByName('ParamDataF').Value        := dtpDataFimGeral.DateTime;
          ibPagtoPendente.Open;


          (ibPagtoPendente.FieldByName('VLRPAGO')as TFloatField).DisplayFormat := CasasDecimais('Produtos');

          while not ibPagtoPendente.Eof do begin

            if VlrTotalPagoPendente = 0 Then begin

              VlrTotalPagoPendente := StrtoFloat(StringReplace(FloattoStr(ibPagtoPendente.FieldByName('VLRPAGO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

            end else begin

              TotalPagoPendente := StringReplace(FloattoStr(ibPagtoPendente.FieldByName('VLRPAGO').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

              VlrTotalPagoPendente := VlrTotalPagoPendente + StrtoFloat(StringReplace(TotalPagoPendente,ThousandSeparator,'',[rfReplaceAll]));

            end;//if vlrconsig

          ibPagtoPendente.Next;

          end;//while

////////////////////////////////////////////////////////////////////////////////

   //   (ibServsVenda.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

     Application.CreateForm(TfrmRelFluxoCx, frmRelFluxoCx);

      TRY

        with frmRelFluxoCx do begin

          frmRelFluxoCx.qrpFluxoCx.DataSet := ibServsVenda;


          //ATRIBUI OS NOMES DOS CAMPOS AOS QRDBTEXT DO QUICKREPORT
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

          qrdbNCupom.DataSet    := ibServsVenda;
          qrdbNCupom.DataField  := ibServsVenda.FieldByName('IDSERVSVENDA').FieldName;


          qrdbDesc.DataSet    := ibServsVenda;
          qrdbDesc.DataField  := ibServsVenda.FieldByName('DESCONTO').FieldName;
          (ibServsVenda.FieldByName('DESCONTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

          qrdbAcrescimo.DataSet    := ibServsVenda;
          qrdbAcrescimo.DataField  := ibServsVenda.FieldByName('ACRESCIMO').FieldName;
          (ibServsVenda.FieldByName('ACRESCIMO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

          qrlFuncionarioComissao.Caption := '';

          qrl_DataIni.Caption := DateToStr(dtpDataIniGeral.Date);
          qrl_DataF.Caption  := DateToStr(dtpDataFimGeral.Date);

       /////////////////////////////////////////////////////////////////////////

          if VlrPendente > 0 Then begin
          qrl_TotalPendente.Caption      := FormatFloat(CasasDecimais('Produtos'),VlrPendente);
          end else begin
          qrl_TotalPendente.Caption      := '0,00';
          end;

          if VlraPagar > 0 Then begin
          qrl_TotalaPagar.Caption        := FormatFloat(CasasDecimais('Produtos'),VlraPagar);
          end else begin
          qrl_TotalaPagar.Caption        := '0,00';
          end;

          if VlrSangria > 0 Then begin
          qrl_TotalSangria.Caption        := FormatFloat(CasasDecimais('Produtos'),VlrSangria);
          qrl_Total_Sangria.Caption       := FormatFloat(CasasDecimais('Produtos'),VlrSangria);
          end else begin
          qrl_TotalSangria.Caption        := '0,00';
          qrl_Total_Sangria.Caption       := '0,00';
          end;

          if VlraReceber > 0 Then begin
          qrl_TotalaReceber.Caption        := FormatFloat(CasasDecimais('Produtos'),VlraReceber);
          end else begin
          qrl_TotalaReceber.Caption        := '0,00';
          end;

          if VlrCartoes > 0 Then begin
          qrl_TotalCartoes.Caption        := FormatFloat(CasasDecimais('Produtos'),VlrCartoes);
          end else begin
          qrl_TotalCartoes.Caption        := '0,00';
          end;

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

          if VlrCheque > 0 Then begin
          qrl_TotalCheque.Caption        := FormatFloat(CasasDecimais('Produtos'),VlrCheque);
          end else begin
          qrl_TotalCheque.Caption        := '0,00';
          end;
                    
          //SOMA OS TOTAIS DE SAIDA
          qrl_TotalSaida.Caption := FormatFloat(CasasDecimais('Produtos'),VlraPagar);
          VlrGeralSaida := VlraPagar;                  ////+ VlrCustoLav + VlrConsig

          //SOMA OS TOTAIS DE ENTRADA
          qrl_TotalEntrada.Caption := FormatFloat(CasasDecimais('Produtos'),VlrTotalVenda + VlrCheque + VlraReceber + VlrTotalPagoPendente);
          VlrGeralEntrada := VlrTotalVenda + VlrCheque + VlraReceber + VlrTotalPagoPendente;

          if VlrSangria > 0 Then begin

          VlrGeralEntrada := VlrGeralEntrada - VlrSangria

          end else begin

          VlrGeralEntrada := VlrGeralEntrada;

          end;
          
          qrl_TotalVendas.Caption := FormatFloat(CasasDecimais('Produtos'),VlrTotalVenda);
          qrl_TotalPagtoPendente.Caption := FormatFloat(CasasDecimais('Produtos'),VlrTotalPagoPendente);

          if VlrGeralEntrada > VlrGeralSaida Then begin

            qrl_TotalLiquido.Font.Color := clBlue;
            qrl_TotalLiquido.Caption := FormatFloat(CasasDecimais('Produtos'),VlrGeralEntrada - VlrGeralSaida);

          end;

          if VlrGeralEntrada < VlrGeralSaida Then begin

            qrl_TotalLiquido.Font.Color := clRed;
            qrl_TotalLiquido.Caption := FormatFloat(CasasDecimais('Produtos'),VlrGeralEntrada - VlrGeralSaida);

          end;
       /////////////////////////////////////////////////////////////////////////



          qrpFluxoCx.Preview;

        end; {if}


      EXCEPT
        on E : Exception do begin
           frmRelFluxoCx.Release;
           MessageDlg('Ocorreu um erro ao tentar mostrar o Formulário: ' + E.Message,mtError,[mbOk],0);
        end;
      END;
    //////////////////////////////////////////////////////////////


      Commit(ibTempVendaLoja);
      ibTempVendaLoja.Close;
      ibTempVendaLoja.SQL.Clear;
      ibTempVendaLoja.SQL.Add('SELECT * FROM TBLSERVICOSVENDAS WHERE(TBLSERVICOSVENDAS.DATA between :ParamDataInicial and :ParamDataFinal)');
      ibTempVendaLoja.Open;

      ibTempVendaLoja.Close;
      ibTempVendaLoja.ParamByName('ParamDataInicial').Value := dtpDataIniGeral.DateTime;
      ibTempVendaLoja.ParamByName('ParamDataFinal').Value := dtpDataFimGeral.DateTime;
      ibTempVendaLoja.Open;

        while not ibTempVendaLoja.Eof do begin//enquanto nao for fim de registro

          if (VlrTotalFluxo = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            VlrTotalFluxo   := strToFloat(StringReplace(FloatToStr(ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            ValorTotalFluxo   := StringReplace(FloatToStr(ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);


            VlrTotalFluxo   := VlrTotalFluxo + StrToFloat(StringReplace(ValorTotalFluxo,ThousandSeparator,'',[rfReplaceall]));

           end;{if}

          if (VlrTotalCustoFluxo = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            VlrTotalCustoFluxo   := strToFloat(StringReplace(FloatToStr(ibTempVendaLoja.FieldByName('TOTALCUSTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            ValorTotalCustoFluxo   := StringReplace(FloatToStr(ibTempVendaLoja.FieldByName('TOTALCUSTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]);


            VlrTotalCustoFluxo   := VlrTotalCustoFluxo + StrToFloat(StringReplace(ValorTotalCustoFluxo,ThousandSeparator,'',[rfReplaceall]));

           end;{if}

          if (VlrAcrescimo = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            VlrAcrescimo   := strToFloat(StringReplace(FloatToStr(ibTempVendaLoja.FieldByName('ACRESCIMO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            TotalAcrescimo   := StringReplace(FloatToStr(ibTempVendaLoja.FieldByName('ACRESCIMO').AsFloat),ThousandSeparator,'',[rfReplaceAll]);


            VlrAcrescimo   := VlrAcrescimo + StrToFloat(StringReplace(TotalAcrescimo,ThousandSeparator,'',[rfReplaceall]));

           end;{if}

          if (VlrDesconto = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            VlrDesconto   := strToFloat(StringReplace(FloatToStr(ibTempVendaLoja.FieldByName('DESCONTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            TotalDesconto   := StringReplace(FloatToStr(ibTempVendaLoja.FieldByName('DESCONTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]);


            VlrDesconto   := VlrDesconto + StrToFloat(StringReplace(TotalDesconto,ThousandSeparator,'',[rfReplaceall]));

           end;{if}
           ibTempVendaLoja.Next;

        end;//while
     Application.CreateForm(TfrmRelTotalFluxo, frmRelTotalFluxo);

      TRY

        with frmRelTotalFluxo do begin

          frmRelTotalFluxo.qrpTotalFluxoCx.DataSet := ibTempVendaLoja;

          if VlrTotalCustoFluxo > 0 Then begin
          qrl_VlrTotalCustoFluxo.Caption        := FormatFloat(CasasDecimais('Produtos'),VlrTotalCustoFluxo);
          end else begin
          qrl_VlrTotalCustoFluxo.Caption        := '0,00';
          end;


          if VlrAcrescimo > 0 Then begin
          qrl_TotalAcrescimo.Caption        := FormatFloat(CasasDecimais('Produtos'),VlrAcrescimo);
          end else begin
          qrl_TotalAcrescimo.Caption        := '0,00';
          end;

          if VlrDesconto > 0 Then begin
          qrl_TotalDesconto.Caption        := FormatFloat(CasasDecimais('Produtos'),VlrDesconto);
          end else begin
          qrl_TotalDesconto.Caption        := '0,00';
          end;

          if VlrTotalFluxo > 0 Then begin
          qrl_VlrTotalFluxo.Caption        := FormatFloat(CasasDecimais('Produtos'),VlrTotalFluxo);
          qrl_VlrTotalPeriodo.Caption      := FormatFloat(CasasDecimais('Produtos'),VlrTotalFluxo - VlrTotalCustoFluxo + VlrAcrescimo - VlrDesconto - VlrSangria);
          end else begin
          qrl_VlrTotalFluxo.Caption        := '0,00';
          qrl_VlrTotalPeriodo.Caption      := '0,00';
          end;


          //ATRIBUI OS NOMES DOS CAMPOS AOS QRDBTEXT DO QUICKREPORT
        {  qrdbProd.DataSet    := ibServsVenda;
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

          qrdbVlrB.DataSet    := ibServsVenda;
          qrdbVlrB.DataField  := ibServsVenda.FieldByName('VALORB').FieldName;
          (ibServsVenda.FieldByName('VALORB') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

          qrdbVlrC.DataSet    := ibServsVenda;
          qrdbVlrC.DataField  := ibServsVenda.FieldByName('VALORC').FieldName;
          (ibServsVenda.FieldByName('VALORC') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

          qrdbDesc.DataSet    := ibServsVenda;
          qrdbDesc.DataField  := ibServsVenda.FieldByName('DESCONTO').FieldName;
          (ibServsVenda.FieldByName('DESCONTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos');} //CRIA UMA MASCARA PARA O CAMPO

          qrpTotalFluxoCx.Preview;

        end; {if}


      EXCEPT
        on E : Exception do begin
           frmRelTotalFluxo.Release;
           MessageDlg('Ocorreu um erro ao tentar mostrar o Formulário: ' + E.Message,mtError,[mbOk],0);
        end;
      END;
    //////////////////////////////////////////////////////////////
    end;//if ckclientes bar checked false
////////////////////////////////////////////////////////////////////////////////

    if ckClientesBar.Checked = True Then begin


      Commit(ibServsVenda);
      ibServsVenda.Close;
      ibServsVenda.SQL.Clear;
      ibServsVenda.SQL.Add('SELECT TBLSERVICOSVENDAS.IDPROD,TBLSERVICOSVENDAS.IDSERVSVENDA,TBLSERVICOSVENDAS.ESTOQUE,'
      + 'TBLSERVICOSVENDAS.QTDE,TBLSERVICOSVENDAS.HORA,TBLSERVICOSVENDAS.VLRUNIT,TBLSERVICOSVENDAS.VLRTOTAL,TBLSERVICOSVENDAS.DATA,'
      + 'TBLSERVICOSVENDAS.PENDENTEPAGO,TBLSERVICOSVENDAS.TIPOCOMPR,TBLSERVICOSVENDAS.TIPOVENDA,TBLSERVICOSVENDAS.VALORB,TBLSERVICOSVENDAS.TOTALCUSTO,TBLSERVICOSVENDAS.VLRTROCA,'
      + 'TBLSERVICOSVENDAS.NOMEVENDA,TBLSERVICOSVENDAS.VALORC,TBLSERVICOSVENDAS.VALORD,TBLSERVICOSVENDAS.DESCONTO,TBLSERVICOSVENDAS.ACRESCIMO,TBLTIPOCOMPROMISSO.NOME As Compromisso,'
      + 'CADPRODUTOS.NOME As Produto,TBLCADASTRO.NOME As Cliente,TBLCADASTRO.CLIENTEBAR FROM TBLSERVICOSVENDAS '
      + 'LEFT OUTER JOIN TBLTIPOCOMPROMISSO ON TBLSERVICOSVENDAS.TIPOCOMPR=TBLTIPOCOMPROMISSO.IDTIPO '
      + 'LEFT OUTER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD '
      + 'LEFT OUTER JOIN TBLCADASTRO ON TBLSERVICOSVENDAS.IDCLIENTE=TBLCADASTRO.IDCAD '
      + 'WHERE (TBLSERVICOSVENDAS.DATA between :ParamDataInicial and :ParamDataFinal)and(TBLCADASTRO.CLIENTEBAR=''Sim'')ORDER BY TBLCADASTRO.NOME');
      ibServsVenda.Open;

      ibServsVenda.Close;
      ibServsVenda.ParamByName('ParamDataInicial').Value := dtpDataIniGeral.DateTime;
      ibServsVenda.ParamByName('ParamDataFinal').Value := dtpDataFimGeral.DateTime;
      ibServsVenda.Open;


      Application.CreateForm(TfrmRVendasClientesBar, frmRVendasClientesBar);

      TRY

        with frmRVendasClientesBar do begin

          frmRVendasClientesBar.qrpVendasCliBar.DataSet := ibServsVenda;


          //ATRIBUI OS NOMES DOS CAMPOS AOS QRDBTEXT DO QUICKREPORT
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

          qrdbNCupom.DataSet    := ibServsVenda;
          qrdbNCupom.DataField  := ibServsVenda.FieldByName('IDSERVSVENDA').FieldName;

          qrdbCliente.DataSet    := ibServsVenda;
          qrdbCliente.DataField  := ibServsVenda.FieldByName('Cliente').FieldName;

          qrl_DataIni.Caption := DateToStr(dtpDataIniGeral.Date);
          qrl_DataF.Caption  := DateToStr(dtpDataFimGeral.Date);


          qrpVendasCliBar.Preview;

        end; {if}

                   
      EXCEPT
        on E : Exception do begin
           frmRVendasClientesBar.Release;
           MessageDlg('Ocorreu um erro ao tentar mostrar o Formulário: ' + E.Message,mtError,[mbOk],0);
        end;
      END;
    //////////////////////////////////////////////////////////////


      Commit(ibTempVendaLoja);
      ibTempVendaLoja.Close;
      ibTempVendaLoja.SQL.Clear;
      ibTempVendaLoja.SQL.Add('SELECT * FROM TBLSERVICOSVENDAS WHERE(TBLSERVICOSVENDAS.DATA between :ParamDataInicial and :ParamDataFinal)');
      ibTempVendaLoja.Open;

      ibTempVendaLoja.Close;
      ibTempVendaLoja.ParamByName('ParamDataInicial').Value := dtpDataIniGeral.DateTime;
      ibTempVendaLoja.ParamByName('ParamDataFinal').Value := dtpDataFimGeral.DateTime;
      ibTempVendaLoja.Open;

        while not ibTempVendaLoja.Eof do begin//enquanto nao for fim de registro

          if (VlrTotalFluxo = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            VlrTotalFluxo   := strToFloat(StringReplace(FloatToStr(ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            ValorTotalFluxo   := StringReplace(FloatToStr(ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);


            VlrTotalFluxo   := VlrTotalFluxo + StrToFloat(StringReplace(ValorTotalFluxo,ThousandSeparator,'',[rfReplaceall]));

           end;{if}

          if (VlrTotalCustoFluxo = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            VlrTotalCustoFluxo   := strToFloat(StringReplace(FloatToStr(ibTempVendaLoja.FieldByName('TOTALCUSTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            ValorTotalCustoFluxo   := StringReplace(FloatToStr(ibTempVendaLoja.FieldByName('TOTALCUSTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]);


            VlrTotalCustoFluxo   := VlrTotalCustoFluxo + StrToFloat(StringReplace(ValorTotalCustoFluxo,ThousandSeparator,'',[rfReplaceall]));

           end;{if}

          if (VlrAcrescimo = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            VlrAcrescimo   := strToFloat(StringReplace(FloatToStr(ibTempVendaLoja.FieldByName('ACRESCIMO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            TotalAcrescimo   := StringReplace(FloatToStr(ibTempVendaLoja.FieldByName('ACRESCIMO').AsFloat),ThousandSeparator,'',[rfReplaceAll]);


            VlrAcrescimo   := VlrAcrescimo + StrToFloat(StringReplace(TotalAcrescimo,ThousandSeparator,'',[rfReplaceall]));

           end;{if}

          if (VlrDesconto = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            VlrDesconto   := strToFloat(StringReplace(FloatToStr(ibTempVendaLoja.FieldByName('DESCONTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            TotalDesconto   := StringReplace(FloatToStr(ibTempVendaLoja.FieldByName('DESCONTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]);


            VlrDesconto   := VlrDesconto + StrToFloat(StringReplace(TotalDesconto,ThousandSeparator,'',[rfReplaceall]));

           end;{if}
           ibTempVendaLoja.Next;

        end;//while
     Application.CreateForm(TfrmRelTotalFluxo, frmRelTotalFluxo);

      TRY

        with frmRelTotalFluxo do begin

          frmRelTotalFluxo.qrpTotalFluxoCx.DataSet := ibTempVendaLoja;

          if VlrTotalCustoFluxo > 0 Then begin
          qrl_VlrTotalCustoFluxo.Caption        := FormatFloat(CasasDecimais('Produtos'),VlrTotalCustoFluxo);
          end else begin
          qrl_VlrTotalCustoFluxo.Caption        := '0,00';
          end;


          if VlrAcrescimo > 0 Then begin
          qrl_TotalAcrescimo.Caption        := FormatFloat(CasasDecimais('Produtos'),VlrAcrescimo);
          end else begin
          qrl_TotalAcrescimo.Caption        := '0,00';
          end;

          if VlrDesconto > 0 Then begin
          qrl_TotalDesconto.Caption        := FormatFloat(CasasDecimais('Produtos'),VlrDesconto);
          end else begin
          qrl_TotalDesconto.Caption        := '0,00';
          end;

          if VlrTotalFluxo > 0 Then begin
          qrl_VlrTotalFluxo.Caption        := FormatFloat(CasasDecimais('Produtos'),VlrTotalFluxo);
          qrl_VlrTotalPeriodo.Caption      := FormatFloat(CasasDecimais('Produtos'),VlrTotalFluxo - VlrTotalCustoFluxo + VlrAcrescimo - VlrDesconto);
          end else begin
          qrl_VlrTotalFluxo.Caption        := '0,00';
          qrl_VlrTotalPeriodo.Caption      := '0,00';
          end;


          //ATRIBUI OS NOMES DOS CAMPOS AOS QRDBTEXT DO QUICKREPORT
        {  qrdbProd.DataSet    := ibServsVenda;
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

          qrdbVlrB.DataSet    := ibServsVenda;
          qrdbVlrB.DataField  := ibServsVenda.FieldByName('VALORB').FieldName;
          (ibServsVenda.FieldByName('VALORB') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

          qrdbVlrC.DataSet    := ibServsVenda;
          qrdbVlrC.DataField  := ibServsVenda.FieldByName('VALORC').FieldName;
          (ibServsVenda.FieldByName('VALORC') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

          qrdbDesc.DataSet    := ibServsVenda;
          qrdbDesc.DataField  := ibServsVenda.FieldByName('DESCONTO').FieldName;
          (ibServsVenda.FieldByName('DESCONTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos');} //CRIA UMA MASCARA PARA O CAMPO

          qrpTotalFluxoCx.Preview;

        end; {if}


      EXCEPT
        on E : Exception do begin
           frmRelTotalFluxo.Release;
           MessageDlg('Ocorreu um erro ao tentar mostrar o Formulário: ' + E.Message,mtError,[mbOk],0);
        end;
      END;
    //////////////////////////////////////////////////////////////
    end;//if ckclientes bar checked true

  end;{with}

end;

procedure TfrmFluxoCxP.FormShow(Sender: TObject);
begin

  dtpDataIniGeral.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
  dtpDataFimGeral.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
  ckClientesBar.Checked := False;
  
end;

end.
