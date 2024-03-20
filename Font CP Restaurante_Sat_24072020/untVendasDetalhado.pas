unit untVendasDetalhado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, BmsXPButton, DB, IBQuery;

type
  TfrmVendasDetalhado = class(TForm)
    lbl_DTIni: TLabel;
    lbl_DTF: TLabel;
    ibeaVisualizar: TBmsXPButton;
    BmsXPButton2: TBmsXPButton;
    ibeaImprimirCupom: TBmsXPButton;
    dtpDataCaixaIni: TDateTimePicker;
    dtpDataCaixa: TDateTimePicker;
    procedure BmsXPButton2Click(Sender: TObject);
    procedure Commit(IBQueryExec : TIBQuery);
    procedure ibeaVisualizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ibeaImprimirCupomClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendasDetalhado: TfrmVendasDetalhado;

implementation

uses funcPosto, untdmModule, untRelFluxoDetalhado, untProdutoVendidoP,
  Daruma_Framework_DUAL_ImprimirTexto,
  Daruma_Framework_Looping_Verificacao_Status,
  Daruma_Framework_Looping_Verificacao_Status_Doc,
  Daruma_Framework_Variaveis_Globais, Daruma_Framework_Autenticar;
Function Daruma_DUAL_ImprimirTexto( TextoLivre: String; TamanhoTexto: Integer ): Integer; StdCall; External 'Daruma32.dll'
{$R *.dfm}

procedure TfrmVendasDetalhado.BmsXPButton2Click(Sender: TObject);
begin
Close;
end;

procedure TfrmVendasDetalhado.Commit(IBQueryExec : TIBQuery);

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

procedure TfrmVendasDetalhado.ibeaVisualizarClick(Sender: TObject);
var

VlrDinheiro,VlrCheque,VlrChequePre : String;
TotalDinheiro,TotalCheque,TotalChequePre,TotalPendente : Real;
VlrNota,VlrVisaCredito,VlrVisaDebito,VlrVisaParcelado,VlrMastercardCredito : String;
TotalNota,TotalVisaCredito,TotalVisaDebito,TotalVisaParcelado,TotalMastercardCredito : Real;
VlrMastercardDebito,VlrHipercard,VlrMastercardParcelado,VlrAmericanExpress : String;
TotalMastercardParcelado,TotalHipercard,TotalAmericanExpress : Real;
VlrGeral,VlrPendente : String;
TotalGeral,TotalMastercardDebito, TotalVendido, TotalLiquido : Real;

IDDinheiro, IDCheque, IDChequePre,IDPendente,IDSodex : Integer;
IDVisaCredito, IDVisaDebito, IDVisaParcelado, IDMastercardCredito, IDMastercardDebito : Integer;
IDMastercardParcelado,IDHipercard, IDAmericanExpress: Integer;

VisaCredito1,VisaCredito2,VisaCredito3,VisaCredito4 : Real;
VisaDebito1,VisaDebito2,VisaDebito3,VisaDebito4 : Real;
VisaParcelado1,VisaParcelado2,VisaParcelado3,VisaParcelado4 : Real;

MastercardCredito1,MastercardCredito2,MastercardCredito3,MastercardCredito4 : Real;
MastercardDebito1,MastercardDebito2,MastercardDebito3,MastercardDebito4 : Real;
MastercardParcelado1,MastercardParcelado2,MastercardParcelado3,MastercardParcelado4 : Real;

TotalPagoPendente, TotalSoroCred, TotalSodex : Real;
VlrPagoPendente, VlrSoroCred, VlrPagoSodex : String;
IDSoroCred : Integer;
TotalDesconto,TotalAcrescimo : Real;
VlrDesconto,VlrAcrescimo : String;
begin

  with dmModule do begin
      
//    if cboFuncionario.ItemIndex = - 1 Then begin

    //  Commit(ibRecVendas);
    {  ibRecVendas.Close;                                                                                           //  and SITUACAOVENDA<> ''Pendente''
      ibRecVendas.SQL.Clear;
      ibRecVendas.SQL.Add('SELECT TBLRECEBEVENDAS.IDTIPOPAGTO,SUM(TBLRECEBEVENDAS.TOTALVENDA),'
      + 'TBLSERVICOSVENDAS.DESCONTO,TBLSERVICOSVENDAS.ACRESCIMO FROM TBLRECEBEVENDAS '
      + 'LEFT OUTER JOIN TBLSERVICOSVENDAS ON TBLRECEBEVENDAS.IDVENDA=TBLSERVICOSVENDAS.IDSERVSVENDA WHERE (TBLRECEBEVENDAS.DATA between :ParamDataInicial and :ParamDataFinal) GROUP BY TBLRECEBEVENDAS.TOTALVENDA,'
      + 'TBLRECEBEVENDAS.IDTIPOPAGTO,TBLSERVICOSVENDAS.DESCONTO,TBLSERVICOSVENDAS.ACRESCIMO');
      ibRecVendas.Open;

      ibRecVendas.Close;
      ibRecVendas.ParamByName('ParamDataInicial').Value      := dtpDataCaixaIni.DateTime;
      ibRecVendas.ParamByName('ParamDataFinal').Value        := dtpDataCaixa.DateTime;
      ibRecVendas.Open; }

 //     (ibRecVendas.FieldByName('TOTALVENDA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

   // end;//if cbo funcionario
      ibServsVenda.Close;
      ibServsVenda.SQL.Clear;
      ibServsVenda.SQL.Add('SELECT  * FROM  TBLSERVICOSVENDAS WHERE (TBLSERVICOSVENDAS.DATA between :ParamDataInicial and :ParamDataFinal)');
      ibServsVenda.Open;

      ibServsVenda.Close;
      ibServsVenda.ParamByName('ParamDataInicial').Value      := dtpDataCaixaIni.DateTime;
      ibServsVenda.ParamByName('ParamDataFinal').Value        := dtpDataCaixa.DateTime;
      ibServsVenda.Open;

      IDDinheiro            :=  1;
      IDCheque              :=  2;
      IDChequePre           :=  3;
      IDVisaCredito         :=  4;
      IDVisaDebito          :=  5;
      IDVisaParcelado       :=  6;
      IDMastercardCredito   :=  7;
      IDMastercardDebito    :=  8;
      IDMastercardParcelado :=  9;
      IDHipercard           := 10;
      IDAmericanExpress     := 11;
      IDPendente            := 12;
      IDSoroCred            := 14;
      IDSodex               := 15;


    {  if ibRecVendas.FieldByName('IDTIPOPAGTO').AsInteger = 1 Then begin

            VlrDinheiro := (StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVENDA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

            TotalDinheiro := TotalDinheiro + StrToFloat(StringReplace(VlrDinheiro,ThousandSeparator,'',[rfReplaceAll]));
     end; }
////////////////////////////////////////////////////////////////////////////////

      while not ibServsVenda.Eof do begin


       if (ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

         if ibServsVenda.FieldByName('VLRTOTAL').AsInteger > 0 Then begin

           if TotalGeral = 0 Then begin

             TotalGeral := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrGeral := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalGeral := TotalGeral + StrToFloat(StringReplace(VlrGeral,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         end;//if

       end;

////////////////////////////////////////////////////////////////////////////////

      if (ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

        if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDDinheiro Then begin

          if TotalDinheiro = 0 Then begin

            TotalDinheiro := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            VlrDinheiro := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

            TotalDinheiro := TotalDinheiro + StrToFloat(StringReplace(VlrDinheiro,ThousandSeparator,'',[rfReplaceAll]));

          end;//if

         end;//if tipopagto dinheiro

       end;

////////////////////////////////////////////////////////////////////////////////

       if (ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

         if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDCheque Then begin

           if TotalCheque = 0 Then begin

             TotalCheque := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrCheque := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalCheque := TotalCheque + StrToFloat(StringReplace(VlrCheque,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         //  lbl_edtCheque.Text   := FormatFloat(CasasDecimais('Produtos'),TotalCheque);

         end;//if tipopagto cheque

       end;

////////////////////////////////////////////////////////////////////////////////

       if (ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

         if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDChequePre Then begin

           if TotalChequePre = 0 Then begin

             TotalChequePre := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrChequePre := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalChequePre := TotalChequePre + StrToFloat(StringReplace(VlrChequePre,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         //  lbl_edtChequePre.Text   := FormatFloat(CasasDecimais('Produtos'),TotalChequePre);

         end;//if tipopagto cheque

       end;

////////////////////////////////////////////////////////////////////////////////

       if (ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

         if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDVisaCredito Then begin

           if TotalVisaCredito = 0 Then begin

             TotalVisaCredito := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrVisaCredito := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalVisaCredito := TotalVisaCredito + StrToFloat(StringReplace(VlrVisaCredito,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

        //   lbl_edtVisa.Text   := FormatFloat(CasasDecimais('Produtos'),TotalVisa);

         end;//if tipopagto cheque

       end;

////////////////////////////////////////////////////////////////////////////////

       if (ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

         if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDVisaDebito Then begin

           if TotalVisaDebito = 0 Then begin

             TotalVisaDebito := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrVisaDebito := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalVisaDebito := TotalVisaDebito + StrToFloat(StringReplace(VlrVisaDebito,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

        //   lbl_edtVisaElectron.Text   := FormatFloat(CasasDecimais('Produtos'),TotalVisaElectron);

         end;//if tipopagto cheque

       end;

////////////////////////////////////////////////////////////////////////////////

       if (ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

         if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDVisaParcelado Then begin

           if TotalVisaParcelado = 0 Then begin

             TotalVisaParcelado := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrVisaParcelado := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalVisaParcelado := TotalVisaParcelado + StrToFloat(StringReplace(VlrVisaParcelado,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         //  lbl_edtVisaElectronPre.Text   := FormatFloat(CasasDecimais('Produtos'),TotalVisaElectronPre);

         end;//if tipopagto cheque

       end;
////////////////////////////////////////////////////////////////////////////////

       if (ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

         if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDMastercardCredito Then begin

           if TotalMastercardCredito = 0 Then begin

             TotalMastercardCredito := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrMastercardCredito := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalMastercardCredito := TotalMastercardCredito + StrToFloat(StringReplace(VlrMastercardCredito,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         //  lbl_edtMastercard.Text   := FormatFloat(CasasDecimais('Produtos'),TotalMastercard);

         end;//if tipopagto cheque

       end;
////////////////////////////////////////////////////////////////////////////////

     if (ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

       if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDMastercardParcelado Then begin

           if TotalMastercardParcelado = 0 Then begin

             TotalMastercardParcelado := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrMastercardParcelado := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalMastercardParcelado := TotalMastercardParcelado + StrToFloat(StringReplace(VlrMastercardParcelado,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

        //   lbl_edtRedeShop.Text   := FormatFloat(CasasDecimais('Produtos'),TotalRedeShop);

         end;//if tipopagto cheque

       end;
////////////////////////////////////////////////////////////////////////////////

     if (ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

       if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDMastercardDebito Then begin

           if TotalMastercardDebito = 0 Then begin

             TotalMastercardDebito := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrMastercardDebito := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalMastercardDebito := TotalMastercardDebito + StrToFloat(StringReplace(VlrMastercardDebito,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         end;//if tipopagto cheque
       end;

////////////////////////////////////////////////////////////////////////////////

     if (ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

       if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDHipercard Then begin

           if TotalHipercard = 0 Then begin

             TotalHipercard := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrHipercard := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalHipercard := TotalHipercard + StrToFloat(StringReplace(VlrHipercard,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         //  lbl_edtHipercard.Text   := FormatFloat(CasasDecimais('Produtos'),TotalHipercard);

         end;//if tipopagto cheque

       end;
////////////////////////////////////////////////////////////////////////////////

     if (ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

       if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDAmericanExpress Then begin

           if TotalAmericanExpress = 0 Then begin

             TotalAmericanExpress := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrAmericanExpress := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalAmericanExpress := TotalAmericanExpress + StrToFloat(StringReplace(VlrAmericanExpress,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         //  lbl_edtAmericanExpress.Text   := FormatFloat(CasasDecimais('Produtos'),TotalAmericanExpress);

         end;//if tipopagto cheque

       end;

////////////////////////////////////////////////////////////////////////////////

       if (ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

         if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDSoroCred Then begin

             if TotalSoroCred = 0 Then begin

               TotalSoroCred := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             end else begin

               VlrSoroCred := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

               TotalSoroCred := TotalSoroCred + StrToFloat(StringReplace(VlrSoroCred,ThousandSeparator,'',[rfReplaceAll]));

             end;//if

           end;//if tipopagto cheque

         end;
////////////////////////////////////////////////////////////////////////////////

        if (ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pago')or(ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pendente')Then begin

         if TotalDesconto = 0 Then begin

           TotalDesconto := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('DESCONTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

         end else begin

           VlrDesconto := (StringReplace(FloatToStr(ibServsVenda.FieldByName('DESCONTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           TotalDesconto := TotalDesconto + StrToFloat(StringReplace(VlrDesconto,ThousandSeparator,'',[rfReplaceAll]));

         end;//if

       end;
////////////////////////////////////////////////////////////////////////////////


         if (ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pago')or(ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pendente')Then begin

           if TotalAcrescimo = 0 Then begin

             TotalAcrescimo := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('ACRESCIMO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrAcrescimo := (StringReplace(FloatToStr(ibServsVenda.FieldByName('ACRESCIMO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalAcrescimo := TotalAcrescimo + StrToFloat(StringReplace(VlrAcrescimo,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         end;//if

////////////////////////////////////////////////////////////////////////////////

       if ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pendente' Then begin

           if TotalPendente = 0 Then begin

             TotalPendente := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrPendente := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalPendente := TotalPendente + StrToFloat(StringReplace(VlrPendente,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

        end;//if

     //  end;//if
////////////////////////////////////////////////////////////////////////////////


       if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDSodex Then begin

           if TotalSodex = 0 Then begin

             TotalSodex := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrPagoSodex := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalSodex := TotalSodex + StrToFloat(StringReplace(VlrPagoSodex,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         end;//if tipopagto cheque


////////////////////////////////////////////////////////////////////////////////

           // if TotalPendente <> 0 Then begin

              if TotalPendente > TotalGeral Then begin

              TotalLiquido := TotalPendente - TotalGeral;

              end else begin

              TotalLiquido := TotalGeral - TotalPendente;

              end;//if

           // end;//if

              TotalVendido := TotalGeral + TotalPendente + TotalAcrescimo;
              TotalLiquido := TotalDinheiro + TotalCheque + TotalPagoPendente - TotalDesconto;

        ibServsVenda.Next;


      end;//while

          // Commit(ibPagtoPendente);


           ibPagtoPendente.Close;
           ibPagtoPendente.SQL.Clear;
           ibPagtoPendente.SQL.Add('SELECT * FROM TBLPAGTOPENDENTE WHERE (TBLPAGTOPENDENTE.DATAPAGTO between :ParamDataInicial and :ParamDataFinal)');
           ibPagtoPendente.Open;

           ibPagtoPendente.Close;
           ibPagtoPendente.ParamByName('ParamDataInicial').Value      := dtpDataCaixaIni.DateTime;
           ibPagtoPendente.ParamByName('ParamDataFinal').Value        := dtpDataCaixa.DateTime;
           ibPagtoPendente.Open;

           while not ibPagtoPendente.Eof do begin

             if TotalPagoPendente = 0 Then begin

               TotalPagoPendente := StrToFloat(StringReplace(FloattoStr(ibPagtoPendente.FieldByName('VLRPAGO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             end else begin

               VlrPagoPendente    := (StringReplace(FloatToStr(ibPagtoPendente.FieldByName('VLRPAGO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
               TotalPagoPendente  := TotalPagoPendente + StrToFloat(StringReplace(VlrPagoPendente,ThousandSeparator,'',[rfReplaceAll]));

             end;//if

             ibPagtoPendente.Next

           end;//while
             
     Application.CreateForm(TfrmRelFluxoDetalhado, frmRelFluxoDetalhado);

      TRY

        with frmRelFluxoDetalhado do begin

          frmRelFluxoDetalhado.qrpFluxoCx.DataSet := ibServsVenda;


        qrl_Dinheiro.Caption       := FormatFloat(CasasDecimais('Produtos'),TotalDinheiro);
        qrl_Cheque.Caption         := FormatFloat(CasasDecimais('Produtos'),TotalCheque);
        qrl_ChequePre.Caption      := FormatFloat(CasasDecimais('Produtos'),TotalChequePre);
        qrl_Cartoes.Caption        := FormatFloat(CasasDecimais('Produtos'),TotalVisaCredito+TotalVisaDebito+TotalMastercardCredito+TotalMastercardDebito+TotalHipercard+TotalAmericanExpress+TotalSodex);
        qrl_Pendentes.Caption      := FormatFloat(CasasDecimais('Produtos'),TotalPendente);
        qrl_Geral.Caption          := FormatFloat(CasasDecimais('Produtos'),TotalVendido);
        qrl_PagtoPendentes.Caption := FormatFloat(CasasDecimais('Produtos'),TotalPagoPendente);
        qrl_Recebido.Caption       := FormatFloat(CasasDecimais('Produtos'),TotalLiquido);
        qrl_VlrDesconto.Caption    := FormatFloat(CasasDecimais('Produtos'),TotalDesconto);
        qrl_VlrAcrescimos.Caption   := FormatFloat(CasasDecimais('Produtos'),TotalAcrescimo);

        qrlDataIni.Caption := DateToStr(frmVendasDetalhado.dtpDataCaixaIni.Date);
        qrlDataF.Caption   := DateToStr(frmVendasDetalhado.dtpDataCaixa.Date);

        {lbl_edtVisaDebito.Text   := FormatFloat(CasasDecimais('Produtos'),TotalVisaDebito);
        lbl_edtVisaParcelado.Text   := FormatFloat(CasasDecimais('Produtos'),TotalVisaParcelado);
        lbl_edtMastercardCredito.Text   := FormatFloat(CasasDecimais('Produtos'),TotalMastercardCredito);
        lbl_edtMastercardDebito.Text   := FormatFloat(CasasDecimais('Produtos'),TotalMastercardDebito);
        lbl_edtMastercardParcelado.Text   := FormatFloat(CasasDecimais('Produtos'),TotalHipercard);
        lbl_edtAmericanExpress.Text   := FormatFloat(CasasDecimais('Produtos'),TotalAmericanExpress);
        lbl_edtTotalPendente.Text   := FormatFloat(CasasDecimais('Produtos'),TotalPendente);
        lbl_edtTotalGeral.Text    := FormatFloat(CasasDecimais('Produtos'),TotalVendido);
        lbl_edtPagtoPendente.Text := FormatFloat(CasasDecimais('Produtos'),TotalPagoPendente);
        lbl_edtTotalRecebido.Text   := FormatFloat(CasasDecimais('Produtos'),TotalLiquido); }



////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////



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
          (ibServsVenda.FieldByName('DESCONTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

          qrdbAcrescimo.DataSet    := ibServsVenda;
          qrdbAcrescimo.DataField  := ibServsVenda.FieldByName('ACRESCIMO').FieldName;
          (ibServsVenda.FieldByName('ACRESCIMO') as TFloatField).DisplayFormat := CasasDecimais('Produtos');} //CRIA UMA MASCARA PARA O CAMPO


          qrpFluxoCx.Preview;

        end; {if}


      EXCEPT
        on E : Exception do begin
           frmRelFluxoDetalhado.Release;
           MessageDlg('Ocorreu um erro ao tentar mostrar o Formulário: ' + E.Message,mtError,[mbOk],0);
        end;
      END;
    //////////////////////////////////////////////////////////////

  end;//with

end;

procedure TfrmVendasDetalhado.FormShow(Sender: TObject);
begin
  dtpDataCaixaIni.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
  dtpDataCaixa.DateTime    := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));

end;

procedure TfrmVendasDetalhado.ibeaImprimirCupomClick(Sender: TObject);

var

VlrDinheiro,VlrCheque,VlrChequePre : String;
TotalDinheiro,TotalCheque,TotalChequePre,TotalPendente : Real;
VlrNota,VlrVisaCredito,VlrVisaDebito,VlrVisaParcelado,VlrMastercardCredito : String;
TotalNota,TotalVisaCredito,TotalVisaDebito,TotalVisaParcelado,TotalMastercardCredito : Real;
VlrMastercardDebito,VlrHipercard,VlrMastercardParcelado,VlrAmericanExpress : String;
TotalMastercardParcelado,TotalHipercard,TotalAmericanExpress : Real;
VlrGeral,VlrPendente : String;
TotalGeral,TotalMastercardDebito, TotalVendido, TotalLiquido : Real;

IDDinheiro, IDCheque, IDChequePre,IDPendente : Integer;
IDVisaCredito, IDVisaDebito, IDVisaParcelado, IDMastercardCredito, IDMastercardDebito : Integer;
IDMastercardParcelado,IDHipercard, IDAmericanExpress, IDSoroCred: Integer;

VisaCredito1,VisaCredito2,VisaCredito3,VisaCredito4 : Real;
VisaDebito1,VisaDebito2,VisaDebito3,VisaDebito4 : Real;
VisaParcelado1,VisaParcelado2,VisaParcelado3,VisaParcelado4 : Real;

MastercardCredito1,MastercardCredito2,MastercardCredito3,MastercardCredito4 : Real;
MastercardDebito1,MastercardDebito2,MastercardDebito3,MastercardDebito4 : Real;
MastercardParcelado1,MastercardParcelado2,MastercardParcelado3,MastercardParcelado4 : Real;

TotalPagoPendente, TotalSoroCred : Real;
VlrPagoPendente, VlrSoroCred : String;

DadosCupom : Array[0..5] of String;
DataIni, DataFim : String;
IDSodex : Integer;
TotalSodex : Real;
ValorSodex, QtdedeSaltos : String;

TotalDesconto,TotalAcrescimo : Real;
VlrDesconto,VlrAcrescimo : String;
begin

  with dmModule do begin
      
      Commit(ibServsVenda);
      ibServsVenda.Close;                                                                                           //  and SITUACAOVENDA<> ''Pendente''
      ibServsVenda.SQL.Clear;
      ibServsVenda.SQL.Add('SELECT * FROM TBLSERVICOSVENDAS WHERE (DATA between :ParamDataInicial and :ParamDataFinal)');
      ibServsVenda.Open;

      ibServsVenda.Close;
      ibServsVenda.ParamByName('ParamDataInicial').Value      := dtpDataCaixaIni.DateTime;
      ibServsVenda.ParamByName('ParamDataFinal').Value        := dtpDataCaixa.DateTime;
      ibServsVenda.Open;

      (ibServsVenda.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

      IDDinheiro            :=  1;
      IDCheque              :=  2;
      IDChequePre           :=  3;
      IDVisaCredito         :=  4;
      IDVisaDebito          :=  5;
      IDVisaParcelado       :=  6;
      IDMastercardCredito   :=  7;
      IDMastercardDebito    :=  8;
      IDMastercardParcelado :=  9;
      IDHipercard           := 10;
      IDAmericanExpress     := 11;
      IDPendente            := 12;
      IDSoroCred            := 14;
      IDSodex               := 15;
////////////////////////////////////////////////////////////////////////////////

      while not ibServsVenda.Eof do begin


       if (ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

         if ibServsVenda.FieldByName('VLRTOTAL').AsInteger > 0 Then begin

           if TotalGeral = 0 Then begin

             TotalGeral := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrGeral := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalGeral := TotalGeral + StrToFloat(StringReplace(VlrGeral,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         end;//if

       end;

////////////////////////////////////////////////////////////////////////////////

      if (ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

        if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDDinheiro Then begin

          if TotalDinheiro = 0 Then begin

            TotalDinheiro := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            VlrDinheiro := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

            TotalDinheiro := TotalDinheiro + StrToFloat(StringReplace(VlrDinheiro,ThousandSeparator,'',[rfReplaceAll]));

          end;//if

         end;//if tipopagto dinheiro

       end;

////////////////////////////////////////////////////////////////////////////////

       if (ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

         if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDCheque Then begin

           if TotalCheque = 0 Then begin

             TotalCheque := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrCheque := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalCheque := TotalCheque + StrToFloat(StringReplace(VlrCheque,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         //  lbl_edtCheque.Text   := FormatFloat(CasasDecimais('Produtos'),TotalCheque);

         end;//if tipopagto cheque

       end;

////////////////////////////////////////////////////////////////////////////////

       if (ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

         if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDChequePre Then begin

           if TotalChequePre = 0 Then begin

             TotalChequePre := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrChequePre := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalChequePre := TotalChequePre + StrToFloat(StringReplace(VlrChequePre,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         //  lbl_edtChequePre.Text   := FormatFloat(CasasDecimais('Produtos'),TotalChequePre);

         end;//if tipopagto cheque

       end;

////////////////////////////////////////////////////////////////////////////////

       if (ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

         if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDVisaCredito Then begin

           if TotalVisaCredito = 0 Then begin

             TotalVisaCredito := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrVisaCredito := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalVisaCredito := TotalVisaCredito + StrToFloat(StringReplace(VlrVisaCredito,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

        //   lbl_edtVisa.Text   := FormatFloat(CasasDecimais('Produtos'),TotalVisa);

         end;//if tipopagto cheque

       end;

////////////////////////////////////////////////////////////////////////////////

       if (ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

         if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDVisaDebito Then begin

           if TotalVisaDebito = 0 Then begin

             TotalVisaDebito := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrVisaDebito := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalVisaDebito := TotalVisaDebito + StrToFloat(StringReplace(VlrVisaDebito,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

        //   lbl_edtVisaElectron.Text   := FormatFloat(CasasDecimais('Produtos'),TotalVisaElectron);

         end;//if tipopagto cheque

       end;

////////////////////////////////////////////////////////////////////////////////

       if (ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

         if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDVisaParcelado Then begin

           if TotalVisaParcelado = 0 Then begin

             TotalVisaParcelado := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrVisaParcelado := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalVisaParcelado := TotalVisaParcelado + StrToFloat(StringReplace(VlrVisaParcelado,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         //  lbl_edtVisaElectronPre.Text   := FormatFloat(CasasDecimais('Produtos'),TotalVisaElectronPre);

         end;//if tipopagto cheque

       end;
////////////////////////////////////////////////////////////////////////////////

       if (ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

         if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDMastercardCredito Then begin

           if TotalMastercardCredito = 0 Then begin

             TotalMastercardCredito := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrMastercardCredito := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalMastercardCredito := TotalMastercardCredito + StrToFloat(StringReplace(VlrMastercardCredito,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         //  lbl_edtMastercard.Text   := FormatFloat(CasasDecimais('Produtos'),TotalMastercard);

         end;//if tipopagto cheque

       end;
////////////////////////////////////////////////////////////////////////////////

     if (ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

       if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDMastercardParcelado Then begin

           if TotalMastercardParcelado = 0 Then begin

             TotalMastercardParcelado := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrMastercardParcelado := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalMastercardParcelado := TotalMastercardParcelado + StrToFloat(StringReplace(VlrMastercardParcelado,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

        //   lbl_edtRedeShop.Text   := FormatFloat(CasasDecimais('Produtos'),TotalRedeShop);

         end;//if tipopagto cheque

       end;
////////////////////////////////////////////////////////////////////////////////

     if (ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

       if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDMastercardDebito Then begin

           if TotalMastercardDebito = 0 Then begin

             TotalMastercardDebito := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrMastercardDebito := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalMastercardDebito := TotalMastercardDebito + StrToFloat(StringReplace(VlrMastercardDebito,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         end;//if tipopagto cheque
       end;

////////////////////////////////////////////////////////////////////////////////

     if (ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

       if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDHipercard Then begin

           if TotalHipercard = 0 Then begin

             TotalHipercard := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrHipercard := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalHipercard := TotalHipercard + StrToFloat(StringReplace(VlrHipercard,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         //  lbl_edtHipercard.Text   := FormatFloat(CasasDecimais('Produtos'),TotalHipercard);

         end;//if tipopagto cheque

       end;
////////////////////////////////////////////////////////////////////////////////

     if (ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

       if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDAmericanExpress Then begin

           if TotalAmericanExpress = 0 Then begin

             TotalAmericanExpress := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrAmericanExpress := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalAmericanExpress := TotalAmericanExpress + StrToFloat(StringReplace(VlrAmericanExpress,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         //  lbl_edtAmericanExpress.Text   := FormatFloat(CasasDecimais('Produtos'),TotalAmericanExpress);

         end;//if tipopagto cheque

       end;

////////////////////////////////////////////////////////////////////////////////

       if (ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

         if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDSoroCred Then begin

             if TotalSoroCred = 0 Then begin

               TotalSoroCred := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             end else begin

               VlrSoroCred := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

               TotalSoroCred := TotalSoroCred + StrToFloat(StringReplace(VlrSoroCred,ThousandSeparator,'',[rfReplaceAll]));

             end;//if

           end;//if tipopagto cheque

         end;
////////////////////////////////////////////////////////////////////////////////

        if (ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pago')or(ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pendente')Then begin

         if TotalDesconto = 0 Then begin

           TotalDesconto := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('DESCONTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

         end else begin

           VlrDesconto := (StringReplace(FloatToStr(ibServsVenda.FieldByName('DESCONTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           TotalDesconto := TotalDesconto + StrToFloat(StringReplace(VlrDesconto,ThousandSeparator,'',[rfReplaceAll]));

         end;//if

       end;
////////////////////////////////////////////////////////////////////////////////


         if (ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pago')or(ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pendente')Then begin

           if TotalAcrescimo = 0 Then begin

             TotalAcrescimo := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('ACRESCIMO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrAcrescimo := (StringReplace(FloatToStr(ibServsVenda.FieldByName('ACRESCIMO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalAcrescimo := TotalAcrescimo + StrToFloat(StringReplace(VlrAcrescimo,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         end;//if

////////////////////////////////////////////////////////////////////////////////

       if ibServsVenda.FieldByName('PENDENTEPAGO').AsString = 'Pendente' Then begin

           if TotalPendente = 0 Then begin

             TotalPendente := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrPendente := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalPendente := TotalPendente + StrToFloat(StringReplace(VlrPendente,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

        end;//if

     //  end;//if
////////////////////////////////////////////////////////////////////////////////


       if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDSodex Then begin

           if TotalSodex = 0 Then begin

             TotalSodex := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             ValorSodex := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalSodex := TotalSodex + StrToFloat(StringReplace(ValorSodex,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         end;//if tipopagto cheque


////////////////////////////////////////////////////////////////////////////////

           // if TotalPendente <> 0 Then begin

              if TotalPendente > TotalGeral Then begin

              TotalLiquido := TotalPendente - TotalGeral;

              end else begin

              TotalLiquido := TotalGeral - TotalPendente;

              end;//if

           // end;//if

              TotalVendido := TotalGeral + TotalPendente + TotalAcrescimo;
              TotalLiquido := TotalDinheiro + TotalCheque + TotalPagoPendente - TotalDesconto;

        ibServsVenda.Next;


      end;//while

           Commit(ibPagtoPendente);
           ibPagtoPendente.Close;
           ibPagtoPendente.SQL.Clear;
           ibPagtoPendente.SQL.Add('SELECT * FROM TBLPAGTOPENDENTE WHERE (TBLPAGTOPENDENTE.DATAPAGTO between :ParamDataInicial and :ParamDataFinal)');
           ibPagtoPendente.Open;

           ibPagtoPendente.Close;
           ibPagtoPendente.ParamByName('ParamDataInicial').Value      := dtpDataCaixaIni.DateTime;
           ibPagtoPendente.ParamByName('ParamDataFinal').Value        := dtpDataCaixa.DateTime;
           ibPagtoPendente.Open;

           if TotalPagoPendente = 0 Then begin

             TotalPagoPendente := StrToFloat(StringReplace(FloattoStr(ibPagtoPendente.FieldByName('VLRPAGO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrPagoPendente    := (StringReplace(FloatToStr(ibPagtoPendente.FieldByName('VLRPAGO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
             TotalPagoPendente  := TotalPagoPendente + StrToFloat(StringReplace(VlrPagoPendente,ThousandSeparator,'',[rfReplaceAll]));

           end;//if


            DataIni := FormatDateTime('DD/MM/YYYY',dtpDataCaixaIni.Date);
            DataFim := FormatDateTime('DD/MM/YYYY',dtpDataCaixa.Date);
            //Hora           := FormatDateTime('hh:mm:ss',Now);

            Commit(ibConfig);
            ibConfig.Close;
            ibConfig.SQL.Clear;
            ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
            ibConfig.Open;

            QtdedeSaltos       := IntToStr(ibConfig.FieldByName('QTDESALTOS').AsInteger);

            Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tc>_</tc>'),0);
            Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sp>1</sp><ce><e><b>*Fluxo Detalhado*</ce></e></b>'),0);
            Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Data Inicial:<sp>1</sp>'+DataIni+'<sp>1</sp>Data Final:<sp>1</sp>'+DataFim+''),0);
            Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tc>_</tc>'),0);
            Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Total em Dinheiro  ..:(R$)<sp>1</sp>'+ FormatFloat(CasasDecimais('Produtos'),TotalDinheiro) + ''),0);
            Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Total em Cheque    ..:(R$)<sp>1</sp>'+ FormatFloat(CasasDecimais('Produtos'),TotalCheque) + ''),0);
            Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Total em Cheque Pre..:(R$)<sp>1</sp>'+ FormatFloat(CasasDecimais('Produtos'),TotalChequePre) + ''),0);
            Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Total em Cartoes   ..:(R$)<sp>1</sp>'+ FormatFloat(CasasDecimais('Produtos'),TotalVisaCredito+TotalVisaDebito+TotalMastercardCredito+TotalMastercardDebito+TotalHipercard+TotalAmericanExpress+TotalSoroCred+TotalSodex) + ''),0);
            Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Total em Pendentes ..:(R$)<sp>1</sp>'+ FormatFloat(CasasDecimais('Produtos'),TotalPendente) + ''),0);
            Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('Total em Taxas/Acrescimos ..:(R$)<sp>1</sp>'+ FormatFloat(CasasDecimais('Produtos'),TotalAcrescimo) + ''),0);
            Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tc>_</tc>'),0);
            Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL GERAL    ..:(R$)<sp>1</sp>'+ FormatFloat(CasasDecimais('Produtos'),TotalVendido) + ''),0);
            Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('PAGTO.PENDENTES..:(R$)<sp>1</sp>'+ FormatFloat(CasasDecimais('Produtos'),TotalPagoPendente) + ''),0);
            Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('TOTAL LIQUIDO  ..:(R$)<sp>1</sp>'+ FormatFloat(CasasDecimais('Produtos'),TotalLiquido) + ''),0);
            Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sl>'+QtdedeSaltos+'</sl>'), 0);
            
           // Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tc>*</tc>'),0);
            //IPRIMINDO A VIGÉSIMA PRIMEIRA LINHA
            if Int_Retorno = 1 Then
            begin
              Application.MessageBox('Impressao Concluida!!!', 'CP SISTEMAS', mb_ok + 32);
            end
            else
            begin
              Application.MessageBox('Erro!', 'Daruma Framework', mb_ok + 16);
            end;

////////////////////////////////////////////////////////////////////////////////

  end;//with

end;

end.
