unit untFluxoDetalhado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, classComboBox, ExtCtrls,
  DB, IBQuery, Buttons;

type
  TfrmFluxoDetalhado = class(TForm)
    dtpDataCaixaIni: TDateTimePicker;
    Label3: TLabel;
    dtpDataCaixa: TDateTimePicker;
    lbl_Data: TLabel;
    cboFuncionario: TComboBox;
    lblFuncionario: TLabel;
    lbl_edtDinheiro: TLabeledEdit;
    lbl_edtVisaDebito: TLabeledEdit;
    lbl_edtCheque: TLabeledEdit;
    lbl_edtVisaParcelado: TLabeledEdit;
    lbl_edtVisaCredito: TLabeledEdit;
    lbl_edtChequePre: TLabeledEdit;
    lbl_edtMastercardCredito: TLabeledEdit;
    lbl_edtMastercardDebito: TLabeledEdit;
    lbl_edtAmericanExpress: TLabeledEdit;
    lbl_edtMastercardParcelado: TLabeledEdit;
    lbl_edtTotalRecebido: TLabeledEdit;
    lbl_edtTotalPendente: TLabeledEdit;
    Bevel2: TBevel;
    lbl_edtTotalDescVisaCredito: TLabeledEdit;
    lbl_edtTotalDescVisaDebito: TLabeledEdit;
    lbl_edtTotalDescVisaParcelado: TLabeledEdit;
    lbl_edtTotalDescMastercardCredito: TLabeledEdit;
    lbl_edtTotalDescMastercardDebito: TLabeledEdit;
    lbl_edtTotalDescMastercardParcelado: TLabeledEdit;
    lbl_edtTxVisaCredito: TLabeledEdit;
    lbl_edtTxVisaDebito: TLabeledEdit;
    lbl_edtTxVisaParcelado: TLabeledEdit;
    lbl_edtTxMastercardCredito: TLabeledEdit;
    lbl_edtTxMastercardDebito: TLabeledEdit;
    lbl_edtTxMastercardParcelado: TLabeledEdit;
    lbl_edtTotalGeral: TLabeledEdit;
    lbl_edtSangria: TLabeledEdit;
    lbl_edtMargemLucro: TLabeledEdit;
    lbl_edtTotalRecebidoLucro: TLabeledEdit;
    lbl_edtSoroCred: TLabeledEdit;
    lbl_edtTxSoroCredParcelado: TLabeledEdit;
    lbl_edtTotalDescontoSoroCred: TLabeledEdit;
    lbl_edtSodex: TLabeledEdit;
    lbl_edtTotalAcrescimo: TLabeledEdit;
    ibeaLimparCombo: TSpeedButton;
    ibeabSair: TSpeedButton;
    lbl_edtHipercard: TLabeledEdit;
    lbl_edtTxHipercard: TLabeledEdit;
    lbl_edttotalDescHipercard: TLabeledEdit;
    lbl_edtHcParcelado: TLabeledEdit;
    lbl_edtTxHCParcelado: TLabeledEdit;
    lbl_edtTotalHCParcelado: TLabeledEdit;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    lbl_edtTotalCP: TLabeledEdit;
    lbl_edtTotalCR: TLabeledEdit;
    lbl_Cartoes: TLabel;
    lbl_edtTotalBrutoCartoes: TLabeledEdit;
    Label2: TLabel;
    Label4: TLabel;
    lbl_edtTotalLiq: TLabeledEdit;
    procedure ibeabSairClick(Sender: TObject);
    procedure Commit(IBQueryExec : TIBQuery);
    procedure ExecSELECTFuncionario;
    procedure FormShow(Sender: TObject);
    procedure dtpDataCaixaChange(Sender: TObject);
    procedure ibeaLimparComboClick(Sender: TObject);
    procedure cboFuncionarioChange(Sender: TObject);
    procedure lbl_edtMargemLucroExit(Sender: TObject);
    procedure lbl_edtMargemLucroKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var

  frmFluxoDetalhado : TfrmFluxoDetalhado;
  ClassFuncionario  : TClasseCombo;
  ClassFuncTotal    : TClasseCombo;
  
implementation

uses funcPosto, untdmModule;

{$R *.dfm}

procedure TfrmFluxoDetalhado.ibeabSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmFluxoDetalhado.Commit(IBQueryExec : TIBQuery);
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

procedure TfrmFluxoDetalhado.ExecSELECTFuncionario;


begin

  with dmModule do begin

   { ibClassificacao.Open;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Funcionario''');
    ibClassificacao.Open;
    IDClassfunc := ibClassificacao.FieldByName('IDCLASS').AsInteger; }

    //BUSCA TODOS OS FUNCIONARIOS QUE ESTEJAM NA CLASSIFICA��O DE FUNCIONARIOS
    ibUser.Open;
    ibUser.SQL.Clear;
    ibUser.SQL.Add('SELECT * FROM TBLUSER');// WHERE IDCLASS=''' + InttoStr(IDClassfunc) + ''' ORDER BY NOME');
    ibUser.Open;

    //traz dados do funcionario no combo
    cboFuncionario.Clear; //LIMPA O COMBOBOX
    while not ibUser.Eof do begin
      ClassFuncionario     := TClasseCombo.Create;//ATRIBUI A CLASSE CRIADA NA VARIAVEL
      ClassFuncionario.ID  := ibUser.FieldByName('IDUSER').AsInteger;//ATRIBUI A IDENTIFICACAO DO FUNCIONARIO ATRAVES DO ID NA VARIAVEL.
      cboFuncionario.Items.AddObject(ibUser.FieldByName('LOGIN').AsString,ClassFuncionario);//TRAZ OS ITENS ADICIONADOS AO OBJETO SELECIONADO NO COMBO E A DESCRICAO DO FUNCIONARIO.
      ibUser.Next;

    end;{while}

  end;{with}

end;



procedure TfrmFluxoDetalhado.FormShow(Sender: TObject);
begin

  dtpDataCaixa.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
  dtpDataCaixaIni.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));

  ibeaLimparComboClick(Sender);

  {lbl_edtTotalGeral.Text   := '';
  lbl_edtDinheiro.Text := '';
  lbl_edtCheque.Text   := '';
  lbl_edtChequePre.Text   := '';
  lbl_edtVisaCredito.Text   := '';
  lbl_edtVisaDebito.Text   := '';
  lbl_edtVisaParcelado.Text   := '';
  lbl_edtMastercardCredito.Text   := '';
  lbl_edtMastercardDebito.Text   := '';
  lbl_edtMastercardParcelado.Text   := '';
  lbl_edtAmericanExpress.Text   := '';
  lbl_edtTotalPendente.Text   := ''; }

  with dmModule do begin

    ExecSELECTFuncionario;

  end;{with}

end;

procedure TfrmFluxoDetalhado.dtpDataCaixaChange(Sender: TObject);

var

VlrDinheiro,VlrCheque,VlrChequePre : String;
TotalDinheiro,TotalCheque,TotalChequePre,TotalPendente : Real;
VlrNota,VlrVisaCredito,VlrVisaDebito,VlrVisaParcelado,VlrMastercardCredito : String;
TotalNota,TotalVisaCredito,TotalVisaDebito,TotalVisaParcelado,TotalMastercardCredito : Real;
VlrMastercardDebito,VlrHipercard,VlrMastercardParcelado,VlrAmericanExpress : String;
TotalMastercardParcelado,TotalHipercard,TotalAmericanExpress : Real;
VlrGeral,VlrPendente,VlrSoroCred : String;
TotalGeral,TotalMastercardDebito, TotalVendido, TotalLiquido,TotalSoroCred : Real;

IDDinheiro, IDCheque, IDChequePre,IDPendente,IDSodex : Integer;
IDVisaCredito, IDVisaDebito, IDVisaParcelado, IDMastercardCredito, IDMastercardDebito : Integer;
IDMastercardParcelado,IDHipercard, IDAmericanExpress,IDSoroCred: Integer;

VisaCredito1,VisaCredito2,VisaCredito3,VisaCredito4 : Real;
VisaDebito1,VisaDebito2,VisaDebito3,VisaDebito4 : Real;
VisaParcelado1,VisaParcelado2,VisaParcelado3,VisaParcelado4 : Real;

MastercardCredito1,MastercardCredito2,MastercardCredito3,MastercardCredito4 : Real;
MastercardDebito1,MastercardDebito2,MastercardDebito3,MastercardDebito4 : Real;
MastercardParcelado1,MastercardParcelado2,MastercardParcelado3,MastercardParcelado4 : Real;

TotalSangria, TotalSodex, TotalAcrescimo,VlrTotalHiperCard : Real;
VlrTotalHiperCard2,VlrTotalHiperCard3, VlrTotalHiperCard4 : Real;
VlrSangria, VlrPagoSodex, VlrAcrescimo : String;

VlrHipercardParc, VlrHipercardParc1, VlrHipercardParc2, VlrHipercardParc3, VlrHipercardParc4 : Real;
VlrHCParc : String;
IDHCParc : Integer;

// VARI�VEIS DO CONTAS A PAGAR E RECEBER

VlrCP,VlrCR : Real;
TotalCP,TotalCR : String;

CartoesTotal1,CartoesTotal2 : Real;

begin

  with dmModule do begin

////////////////////////////////////////////////////////////////////////////////

      Commit(ibAPagar);
     /// ibAPagar.Close;
      ibAPagar.SQL.Clear;
      ibAPagar.SQL.Add('SELECT * FROM TBLCONTASAPAGAR WHERE(TBLCONTASAPAGAR.VCTO between :ParamDataIni and :ParamDataF)and(TBLCONTASAPAGAR.BAIXADO = '''')');
      ibAPagar.Open;

      ibAPagar.Close;
      ibAPagar.ParamByName('ParamDataIni').Value      := dtpDataCaixaIni.DateTime;
      ibAPagar.ParamByName('ParamDataF').Value        := dtpDataCaixa.DateTime;
      ibAPagar.Open;

      (ibAPagar.FieldByName('VLREMITIDO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

      while not ibAPagar.Eof do begin

        if VlrCP = 0 Then begin

          VlrCP := StrToFloat(StringReplace(FloatToStr(ibAPagar.FieldByName('VLREMITIDO').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalCP := StringReplace(FloatToStr(ibAPagar.FieldByName('VLREMITIDO').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          VlrCP := VlrCP + StrtoFloat(StringReplace(TotalCP,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibAPagar.Next;

      end;//while

      lbl_edtTotalCP.Text := FormatFloat(CasasDecimais('Produtos'),VlrCP);

////////////////////////////////////////////////////////////////////////////////

        Commit(ibTempAReceber);
       ///ibTempAReceber.Close;
        ibTempAReceber.SQL.Clear;
        ibTempAReceber.SQL.Add('SELECT * FROM TBLCONTASARECEBER WHERE(TBLCONTASARECEBER.VCTO between :ParamDataInicial and :ParamDataF)and(TBLCONTASARECEBER.BAIXADO ='''')');
        ibTempAReceber.Open;

        ibTempAReceber.Close;
        ibTempAReceber.ParamByName('ParamDataInicial').Value := dtpDataCaixaIni.DateTime;
        ibTempAReceber.ParamByName('ParamDataF').Value := dtpDataCaixa.DateTime;
        ibTempAReceber.Open;

      while not ibTempAReceber.Eof do begin

        if VlrCR = 0 Then begin

          VlrCR := StrToFloat(StringReplace(FloatToStr(ibTempAReceber.FieldByName('VLREMITIDO').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalCR := StringReplace(FloatToStr(ibTempAReceber.FieldByName('VLREMITIDO').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          VlrCR := VlrCR + StrtoFloat(StringReplace(TotalCR,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibTempAReceber.Next;

      end;//while

      lbl_edtTotalCR.Text := FormatFloat(CasasDecimais('Produtos'),VlrCR);

////////////////////////////////////////////////////////////////////////////////


//    if cboFuncionario.ItemIndex = - 1 Then begin

     { Commit(ibRecVendas);
      ibRecVendas.Close;                                                                                           //  and SITUACAOVENDA<> ''Pendente''
      ibRecVendas.SQL.Clear;
      ibRecVendas.SQL.Add('SELECT * FROM TBLRECEBEVENDAS WHERE (DATA between :ParamDataInicial and :ParamDataFinal)');
      ibRecVendas.Open;

      ibRecVendas.Close;
      ibRecVendas.ParamByName('ParamDataInicial').Value      := dtpDataCaixaIni.DateTime;
      ibRecVendas.ParamByName('ParamDataFinal').Value        := dtpDataCaixa.DateTime;
      ibRecVendas.Open; }

      ////(ibRecVendas.FieldByName('TOTALVENDA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

   // end;//if cbo funcionario

      ibServsVenda.SQL.Clear;
      ibServsVenda.SQL.Add('SELECT  * FROM  TBLSERVICOSVENDAS WHERE (TBLSERVICOSVENDAS.DATA between :ParamDataInicial and :ParamDataFinal)');
      ibServsVenda.Open;

      ibServsVenda.Close;
      ibServsVenda.ParamByName('ParamDataInicial').Value      := dtpDataCaixaIni.DateTime;
      ibServsVenda.ParamByName('ParamDataFinal').Value        := dtpDataCaixa.DateTime;
      ibServsVenda.Open;


////////////////////////////////////////////////////////////////////////////////


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
      IDHCParc              := 16;
////////////////////////////////////////////////////////////////////////////////
      

      while not ibServsVenda.Eof do begin

        if TotalSangria = 0 Then begin

          TotalSangria := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRSANGRIA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

        end else begin

          VlrSangria := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRSANGRIA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          TotalSangria := TotalSangria + StrToFloat(StringReplace(VlrSangria,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

////////////////////////////////////////////////////////////////////////////////

         if ibServsVenda.FieldByName('VLRTOTAL').AsInteger > 0 Then begin

           if TotalGeral = 0 Then begin

             TotalGeral := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrGeral := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalGeral := TotalGeral + StrToFloat(StringReplace(VlrGeral,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         end;//if

        if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDDinheiro Then begin

          if TotalDinheiro = 0 Then begin

            TotalDinheiro := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            VlrDinheiro := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

            TotalDinheiro := TotalDinheiro + StrToFloat(StringReplace(VlrDinheiro,ThousandSeparator,'',[rfReplaceAll]));

          end;//if

         end;//if tipopagto dinheiro

////////////////////////////////////////////////////////////////////////////////

         if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDCheque Then begin

           if TotalCheque = 0 Then begin

             TotalCheque := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrCheque := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalCheque := TotalCheque + StrToFloat(StringReplace(VlrCheque,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         end;//if tipopagto cheque

////////////////////////////////////////////////////////////////////////////////

         if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDChequePre Then begin

           if TotalChequePre = 0 Then begin

             TotalChequePre := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrChequePre := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalChequePre := TotalChequePre + StrToFloat(StringReplace(VlrChequePre,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         end;//if tipopagto cheque

////////////////////////////////////////////////////////////////////////////////


         if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDVisaCredito Then begin

           if TotalVisaCredito = 0 Then begin

             TotalVisaCredito := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrVisaCredito := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalVisaCredito := TotalVisaCredito + StrToFloat(StringReplace(VlrVisaCredito,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         end;//if tipopagto cheque

////////////////////////////////////////////////////////////////////////////////

         if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDVisaDebito Then begin

           if TotalVisaDebito = 0 Then begin

             TotalVisaDebito := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrVisaDebito := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalVisaDebito := TotalVisaDebito + StrToFloat(StringReplace(VlrVisaDebito,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         end;//if tipopagto cheque

////////////////////////////////////////////////////////////////////////////////

         if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDVisaParcelado Then begin

           if TotalVisaParcelado = 0 Then begin

             TotalVisaParcelado := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrVisaParcelado := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalVisaParcelado := TotalVisaParcelado + StrToFloat(StringReplace(VlrVisaParcelado,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         end;//if tipopagto cheque

////////////////////////////////////////////////////////////////////////////////

         if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDMastercardCredito Then begin

           if TotalMastercardCredito = 0 Then begin

             TotalMastercardCredito := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrMastercardCredito := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalMastercardCredito := TotalMastercardCredito + StrToFloat(StringReplace(VlrMastercardCredito,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         end;//if tipopagto cheque

////////////////////////////////////////////////////////////////////////////////

       if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDMastercardParcelado Then begin

           if TotalMastercardParcelado = 0 Then begin

             TotalMastercardParcelado := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrMastercardParcelado := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalMastercardParcelado := TotalMastercardParcelado + StrToFloat(StringReplace(VlrMastercardParcelado,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         end;//if tipopagto cheque

////////////////////////////////////////////////////////////////////////////////


       if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDMastercardDebito Then begin

           if TotalMastercardDebito = 0 Then begin

             TotalMastercardDebito := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrMastercardDebito := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalMastercardDebito := TotalMastercardDebito + StrToFloat(StringReplace(VlrMastercardDebito,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         end;//if tipopagto cheque

////////////////////////////////////////////////////////////////////////////////

       if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDHipercard Then begin

           if TotalHipercard = 0 Then begin

             TotalHipercard := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrHipercard := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalHipercard := TotalHipercard + StrToFloat(StringReplace(VlrHipercard,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         end;//if tipopagto cheque

////////////////////////////////////////////////////////////////////////////////

       if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDHCParc Then begin

           if VlrHipercardParc = 0 Then begin

             VlrHipercardParc := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrHCParc := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             VlrHipercardParc := VlrHipercardParc + StrToFloat(StringReplace(VlrHCParc,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         end;//if tipopagto cheque

////////////////////////////////////////////////////////////////////////////////


       if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDAmericanExpress Then begin

           if TotalAmericanExpress = 0 Then begin

             TotalAmericanExpress := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrAmericanExpress := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalAmericanExpress := TotalAmericanExpress + StrToFloat(StringReplace(VlrAmericanExpress,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         end;//if tipopagto cheque

////////////////////////////////////////////////////////////////////////////////

       if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDSoroCred Then begin

           if TotalSoroCred = 0 Then begin

             TotalSoroCred := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrSoroCred := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalSoroCred := TotalSoroCred + StrToFloat(StringReplace(VlrSoroCred,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         end;//if tipopagto cheque

////////////////////////////////////////////////////////////////////////////////

       if ibServsVenda.FieldByName('IDTIPOPAGTO').AsInteger = IDPendente Then begin

           if TotalPendente = 0 Then begin

             TotalPendente := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrPendente := (StringReplace(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalPendente := TotalPendente + StrToFloat(StringReplace(VlrPendente,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         end;//if tipopagto cheque

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

////////////////////////////////////////////////////////////////////////////////


         if TotalAcrescimo = 0 Then begin

           TotalAcrescimo := StrToFloat(StringReplace(FloatToStr(ibServsVenda.FieldByName('ACRESCIMO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

         end else begin

           VlrAcrescimo := (StringReplace(FloatToStr(ibServsVenda.FieldByName('ACRESCIMO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           TotalAcrescimo := TotalAcrescimo + StrToFloat(StringReplace(VlrAcrescimo,ThousandSeparator,'',[rfReplaceAll]));

         end;//if

////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////

           // if TotalPendente <> 0 Then begin

              if TotalPendente > TotalGeral Then begin

              TotalLiquido := TotalPendente - TotalGeral;

              end else begin

              TotalLiquido := TotalGeral + TotalAcrescimo - TotalPendente;

              end;//if

           // end;//if

              TotalVendido := TotalGeral + TotalAcrescimo;




        ibServsVenda.Next;

      end;//while

      lbl_edtSangria.Text :=  FormatFloat(CasasDecimais('Produtos'),TotalSangria);



        lbl_edtTotalGeral.Text    := FormatFloat(CasasDecimais('Produtos'),TotalVendido);
        lbl_edtTotalRecebido.Text   := FormatFloat(CasasDecimais('Produtos'),TotalLiquido);
        lbl_edtTotalLiq.Text := FormatFloat(CasasDecimais('Produtos'),TotalLiquido - TotalSangria);
        lbl_edtDinheiro.Text := FormatFloat(CasasDecimais('Produtos'),TotalDinheiro);
        lbl_edtCheque.Text   := FormatFloat(CasasDecimais('Produtos'),TotalCheque);
        lbl_edtChequePre.Text   := FormatFloat(CasasDecimais('Produtos'),TotalChequePre);
        lbl_edtVisaCredito.Text   := FormatFloat(CasasDecimais('Produtos'),TotalVisaCredito);
        lbl_edtVisaDebito.Text   := FormatFloat(CasasDecimais('Produtos'),TotalVisaDebito);
        lbl_edtVisaParcelado.Text   := FormatFloat(CasasDecimais('Produtos'),TotalVisaParcelado);
        lbl_edtMastercardCredito.Text   := FormatFloat(CasasDecimais('Produtos'),TotalMastercardCredito);
        lbl_edtMastercardDebito.Text   := FormatFloat(CasasDecimais('Produtos'),TotalMastercardDebito);
        lbl_edtMastercardParcelado.Text   := FormatFloat(CasasDecimais('Produtos'),TotalMastercardParcelado);
        lbl_edtAmericanExpress.Text   := FormatFloat(CasasDecimais('Produtos'),TotalAmericanExpress);
        lbl_edtTotalPendente.Text   := FormatFloat(CasasDecimais('Produtos'),TotalPendente);
        lbl_edtSoroCred.Text        := FormatFloat(CasasDecimais('Produtos'),TotalSoroCred);
        lbl_edtSodex.Text := FormatFloat(CasasDecimais('Produtos'),TotalSodex);
        lbl_edtTotalAcrescimo.Text := FormatFloat(CasasDecimais('Produtos'),TotalAcrescimo);
        lbl_edtHipercard.Text      := FormatFloat(CasasDecimais('Produtos'),TotalHipercard);
        lbl_edtHcParcelado.Text    := FormatFloat(CasasDecimais('Produtos'),VlrHipercardParc);

        CartoesTotal1 := (TotalVisaCredito + TotalVisaDebito + TotalVisaParcelado + TotalMastercardCredito + TotalMastercardDebito + TotalMastercardParcelado);
        CartoesTotal2 := (TotalHipercard + VlrHipercardParc + TotalAmericanExpress + TotalSoroCred + TotalSodex);
        lbl_edtTotalBrutoCartoes.Text := FormatFloat(CasasDecimais('Produtos'),CartoesTotal1 + CartoesTotal2 );

//    end;//if cbofunc

//ABAIXO ROTINA PARA CALCULO DAS PORCENTAGENS DE CART�O DE CR�DITO.

////////////////////////////////////////////////////////////////////////////////

if (lbl_edtVisaCredito.Text <> '') or (lbl_edtVisaCredito.Text >'0,00') Then begin

  if lbl_edtTxVisaCredito.Text <> '' Then begin// se for em branco executa rotina abaixo.

    if (Pos(',',lbl_edtTxVisaCredito.Text)>0) and (lbl_edtTxVisaCredito.Text <> '') Then begin

      VisaCredito1 := StrToFloat(StringReplace(lbl_edtTxVisaCredito.Text,ThousandSeparator,'',[rfReplaceAll]));
      VisaCredito2 := StrToFloat(StringReplace(lbl_edtVisaCredito.Text,ThousandSeparator,'',[rfReplaceAll]));
      VisaCredito3 := VisaCredito2 * VisaCredito1;

      VisaCredito4 := VisaCredito3 /100;

      lbl_edtTotalDescVisaCredito.Text := FormatFloat(',0.00',(VisaCredito2 - VisaCredito4));

    end else begin

      VisaCredito1 := StrToFloat(StringReplace(lbl_edtTxVisaCredito.Text,ThousandSeparator,'',[rfReplaceAll]));
      VisaCredito2 := StrToFloat(StringReplace(lbl_edtVisaCredito.Text,ThousandSeparator,'',[rfReplaceAll]));
      VisaCredito3 := VisaCredito2 * VisaCredito1;

      VisaCredito4 := VisaCredito3 /100;

      lbl_edtTotalDescVisaCredito.Text := FormatFloat(',0.00',(VisaCredito2 - VisaCredito4));

    end;{if}

  end;{if}

end;//label custo


////////////////////////////////////////////////////////////////////////////////


if (lbl_edtVisaDebito.Text <> '') or (lbl_edtVisaDebito.Text >'0,00') Then begin

  if lbl_edtTxVisaDebito.Text <> '' Then begin// se for em branco executa rotina abaixo.

    if (Pos(',',lbl_edtTxVisaDebito.Text)>0) and (lbl_edtTxVisaDebito.Text <> '') Then begin

      VisaDebito1 := StrToFloat(StringReplace(lbl_edtTxVisaDebito.Text,ThousandSeparator,'',[rfReplaceAll]));
      VisaDebito2 := StrToFloat(StringReplace(lbl_edtVisaDebito.Text,ThousandSeparator,'',[rfReplaceAll]));
      VisaDebito3 := VisaDebito2 * VisaDebito1;

      VisaDebito4 := VisaDebito3 /100;

      lbl_edtTotalDescVisaDebito.Text := FormatFloat(',0.00',(VisaDebito2 - VisaDebito4));

    end else begin

      VisaDebito1 := StrToFloat(StringReplace(lbl_edtTxVisaDebito.Text,ThousandSeparator,'',[rfReplaceAll]));
      VisaDebito2 := StrToFloat(StringReplace(lbl_edtVisaDebito.Text,ThousandSeparator,'',[rfReplaceAll]));
      VisaDebito3 := VisaDebito2 * VisaDebito1;

      VisaDebito4 := VisaDebito3 /100;

      lbl_edtTotalDescVisaDebito.Text := FormatFloat(',0.00',(VisaDebito2 - VisaDebito4));

    end;{if}

  end;{if}

end;//label custo


////////////////////////////////////////////////////////////////////////////////

if (lbl_edtVisaParcelado.Text <> '') or (lbl_edtVisaParcelado.Text >'0,00') Then begin

  if lbl_edtTxVisaParcelado.Text <> '' Then begin// se for em branco executa rotina abaixo.

    if (Pos(',',lbl_edtTxVisaParcelado.Text)>0) and (lbl_edtTxVisaParcelado.Text <> '') Then begin

      VisaParcelado1 := StrToFloat(StringReplace(lbl_edtTxVisaParcelado.Text,ThousandSeparator,'',[rfReplaceAll]));
      VisaParcelado2 := StrToFloat(StringReplace(lbl_edtVisaParcelado.Text,ThousandSeparator,'',[rfReplaceAll]));
      VisaParcelado3 := VisaParcelado2 * VisaParcelado1;

      VisaParcelado4 := VisaParcelado3 /100;

      lbl_edtTotalDescVisaParcelado.Text := FormatFloat(',0.00',(VisaParcelado2 - VisaParcelado4));

    end else begin

      VisaParcelado1 := StrToFloat(StringReplace(lbl_edtTxVisaParcelado.Text,ThousandSeparator,'',[rfReplaceAll]));
      VisaParcelado2 := StrToFloat(StringReplace(lbl_edtVisaParcelado.Text,ThousandSeparator,'',[rfReplaceAll]));
      VisaParcelado3 := VisaParcelado2 * VisaParcelado1;

      VisaParcelado4 := VisaParcelado3 /100;

      lbl_edtTotalDescVisaParcelado.Text := FormatFloat(',0.00',(VisaParcelado2 - VisaParcelado4));

    end;{if}

  end;{if}

end;//label custo


////////////////////////////////////////////////////////////////////////////////


if (lbl_edtMastercardCredito.Text <> '') or (lbl_edtMastercardCredito.Text >'0,00') Then begin

  if lbl_edtTxMastercardCredito.Text <> '' Then begin// se for em branco executa rotina abaixo.

    if (Pos(',',lbl_edtTxMastercardCredito.Text)>0) and (lbl_edtTxMastercardCredito.Text <> '') Then begin

      MastercardCredito1 := StrToFloat(StringReplace(lbl_edtTxMastercardCredito.Text,ThousandSeparator,'',[rfReplaceAll]));
      MastercardCredito2 := StrToFloat(StringReplace(lbl_edtMastercardCredito.Text,ThousandSeparator,'',[rfReplaceAll]));
      MastercardCredito3 := MastercardCredito2 * MastercardCredito1;

      MastercardCredito4 := MastercardCredito3 /100;

      lbl_edtTotalDescMastercardCredito.Text := FormatFloat(',0.00',(MastercardCredito2 - MastercardCredito4));

    end else begin

      MastercardCredito1 := StrToFloat(StringReplace(lbl_edtTxMastercardCredito.Text,ThousandSeparator,'',[rfReplaceAll]));
      MastercardCredito2 := StrToFloat(StringReplace(lbl_edtMastercardCredito.Text,ThousandSeparator,'',[rfReplaceAll]));
      MastercardCredito3 := MastercardCredito2 * MastercardCredito1;

      MastercardCredito4 := MastercardCredito3 /100;

      lbl_edtTotalDescMastercardCredito.Text := FormatFloat(',0.00',(MastercardCredito2 - MastercardCredito4));

    end;{if}

  end;{if}

end;//label custo


////////////////////////////////////////////////////////////////////////////////

if (lbl_edtMastercardDebito.Text <> '') or (lbl_edtMastercardDebito.Text >'0,00') Then begin

  if lbl_edtTxMastercardDebito.Text <> '' Then begin// se for em branco executa rotina abaixo.

    if (Pos(',',lbl_edtTxMastercardDebito.Text)>0) and (lbl_edtTxMastercardDebito.Text <> '') Then begin

      MastercardDebito1 := StrToFloat(StringReplace(lbl_edtTxMastercardDebito.Text,ThousandSeparator,'',[rfReplaceAll]));
      MastercardDebito2 := StrToFloat(StringReplace(lbl_edtMastercardDebito.Text,ThousandSeparator,'',[rfReplaceAll]));
      MastercardDebito3 := MastercardDebito2 * MastercardDebito1;

      MastercardDebito4 := MastercardDebito3 /100;

      lbl_edtTotalDescMastercardDebito.Text := FormatFloat(',0.00',(MastercardDebito2 - MastercardDebito4));

    end else begin

      MastercardDebito1 := StrToFloat(StringReplace(lbl_edtTxMastercardDebito.Text,ThousandSeparator,'',[rfReplaceAll]));
      MastercardDebito2 := StrToFloat(StringReplace(lbl_edtMastercardDebito.Text,ThousandSeparator,'',[rfReplaceAll]));
      MastercardDebito3 := MastercardDebito2 * MastercardDebito1;

      MastercardDebito4 := MastercardDebito3 /100;

      lbl_edtTotalDescMastercardDebito.Text := FormatFloat(',0.00',(MastercardDebito2 - MastercardDebito4));

    end;{if}

  end;{if}

end;//label custo


////////////////////////////////////////////////////////////////////////////////

if (lbl_edtMastercardParcelado.Text <> '') or (lbl_edtMastercardParcelado.Text >'0,00') Then begin

  if lbl_edtTxMastercardParcelado.Text <> '' Then begin// se for em branco executa rotina abaixo.

    if (Pos(',',lbl_edtTxMastercardParcelado.Text)>0) and (lbl_edtTxMastercardParcelado.Text <> '') Then begin

      MastercardParcelado1 := StrToFloat(StringReplace(lbl_edtTxMastercardParcelado.Text,ThousandSeparator,'',[rfReplaceAll]));
      MastercardParcelado2 := StrToFloat(StringReplace(lbl_edtMastercardParcelado.Text,ThousandSeparator,'',[rfReplaceAll]));
      MastercardParcelado3 := MastercardParcelado2 * MastercardParcelado1;

      MastercardParcelado4 := MastercardParcelado3 /100;

      lbl_edtTotalDescMastercardParcelado.Text := FormatFloat(',0.00',(MastercardParcelado2 - MastercardParcelado4));

    end else begin

      MastercardParcelado1 := StrToFloat(StringReplace(lbl_edtTxMastercardParcelado.Text,ThousandSeparator,'',[rfReplaceAll]));
      MastercardParcelado2 := StrToFloat(StringReplace(lbl_edtMastercardParcelado.Text,ThousandSeparator,'',[rfReplaceAll]));
      MastercardParcelado3 := MastercardParcelado2 * MastercardParcelado1;

      MastercardParcelado4 := MastercardParcelado3 /100;

      lbl_edtTotalDescMastercardParcelado.Text := FormatFloat(',0.00',(MastercardParcelado2 - MastercardParcelado4));

    end;{if}

  end;{if}

end;//label custo


////////////////////////////////////////////////////////////////////////////////

if (lbl_edtHipercard.Text <> '') or (lbl_edtHipercard.Text >'0,00') Then begin

  if lbl_edtHipercard.Text <> '' Then begin// se for em branco executa rotina abaixo.

    if (Pos(',',lbl_edtHipercard.Text)>0) and (lbl_edtHipercard.Text <> '') Then begin

      VlrTotalHiperCard := StrToFloat(StringReplace(lbl_edtTxHipercard.Text,ThousandSeparator,'',[rfReplaceAll]));
      VlrTotalHiperCard2 := StrToFloat(StringReplace(lbl_edtHipercard.Text,ThousandSeparator,'',[rfReplaceAll]));
      VlrTotalHiperCard3 := VlrTotalHiperCard2 * VlrTotalHiperCard;

      VlrTotalHiperCard4 := VlrTotalHiperCard3 /100;

      lbl_edttotalDescHipercard.Text := FormatFloat(',0.00',(VlrTotalHiperCard2 - VlrTotalHiperCard4));

    end else begin

      VlrTotalHiperCard := StrToFloat(StringReplace(lbl_edtTxHipercard.Text,ThousandSeparator,'',[rfReplaceAll]));
      VlrTotalHiperCard2 := StrToFloat(StringReplace(lbl_edtHipercard.Text,ThousandSeparator,'',[rfReplaceAll]));
      VlrTotalHiperCard3 := VlrTotalHiperCard2 * VlrTotalHiperCard;

      VlrTotalHiperCard4 := VlrTotalHiperCard3 /100;

      lbl_edttotalDescHipercard.Text := FormatFloat(',0.00',(VlrTotalHiperCard2 - VlrTotalHiperCard4));

    end;{if}

  end;{if}

end;//label custo


////////////////////////////////////////////////////////////////////////////////

if (lbl_edtHCParcelado.Text <> '') or (lbl_edtHCParcelado.Text >'0,00') Then begin

  if lbl_edtHCParcelado.Text <> '' Then begin// se for em branco executa rotina abaixo.

    if (Pos(',',lbl_edtHCParcelado.Text)>0) and (lbl_edtHCParcelado.Text <> '') Then begin

      VlrHipercardParc1 := StrToFloat(StringReplace(lbl_edtTxHCParcelado.Text,ThousandSeparator,'',[rfReplaceAll]));
      VlrHipercardParc2 := StrToFloat(StringReplace(lbl_edtHCParcelado.Text,ThousandSeparator,'',[rfReplaceAll]));
      VlrHipercardParc3 := VlrHipercardParc2 * VlrHipercardParc1;

      VlrHipercardParc4 := VlrHipercardParc3 /100;

      lbl_edtTotalHCParcelado.Text := FormatFloat(',0.00',(VlrHipercardParc2 - VlrHipercardParc4));

    end else begin

      VlrHipercardParc1 := StrToFloat(StringReplace(lbl_edtTxHCParcelado.Text,ThousandSeparator,'',[rfReplaceAll]));
      VlrHipercardParc2 := StrToFloat(StringReplace(lbl_edtHCParcelado.Text,ThousandSeparator,'',[rfReplaceAll]));
      VlrHipercardParc3 := VlrHipercardParc2 * VlrHipercardParc1;

      VlrHipercardParc4 := VlrHipercardParc3 /100;

      lbl_edtTotalHCParcelado.Text := FormatFloat(',0.00',(VlrHipercardParc2 - VlrHipercardParc4));

    end;{if}

  end;{if}

end;//label custo


////////////////////////////////////////////////////////////////////////////////


  end;//with

end;

procedure TfrmFluxoDetalhado.ibeaLimparComboClick(Sender: TObject);
begin

  cboFuncionario.ClearSelection;
  lbl_edtTotalGeral.Text   := '';
  lbl_edtDinheiro.Text := '';
  lbl_edtCheque.Text   := '';
  lbl_edtChequePre.Text   := '';
  lbl_edtVisaCredito.Text   := '';
  lbl_edtVisaDebito.Text   := '';
  lbl_edtVisaParcelado.Text   := '';
  lbl_edtMastercardCredito.Text   := '';
  lbl_edtMastercardParcelado.Text   := '';
  lbl_edtAmericanExpress.Text   := '';
  lbl_edtTotalPendente.Text   := '';
  lbl_edtTotalBrutoCartoes.Text := '';
  lbl_edtTotalAcrescimo.Text := '';
  lbl_edtTotalRecebido.Text := '';
  lbl_edtSangria.Text := '';
  lbl_edtTotalLiq.Text := '';
  lbl_edtMargemLucro.Text := '';
  lbl_edtTotalRecebidoLucro.Text := '';
  lbl_edtTotalCP.Text := '';
  lbl_edtTotalCR.Text := '';
  lbl_edtMastercardDebito.Text := '';
  lbl_edtHipercard.Text := '';
  lbl_edtHcParcelado.Text := '';
  lbl_edtSoroCred.Text := '';
  lbl_edtSodex.Text := '';
  lbl_edtTotalDescVisaCredito.Text := '';
  lbl_edtTotalDescVisaDebito.Text := '';
  lbl_edtTotalDescVisaParcelado.Text := '';
  lbl_edtTotalDescMastercardCredito.Text := '';
  lbl_edtTotalDescMastercardDebito.Text := '';
  lbl_edtTotalDescMastercardParcelado.Text := '';
  lbl_edtTotalDescontoSoroCred.Text := '';
  lbl_edttotalDescHipercard.Text := '';
  lbl_edtTotalDescontoSoroCred.Text := '';
  lbl_edtTotalHCParcelado.Text := '';

end;


procedure TfrmFluxoDetalhado.cboFuncionarioChange(Sender: TObject);

var

VlrDinheiro,VlrCheque,VlrChequePre,VlrChequeEletr,VlrChequeEletrPre : String;
TotalDinheiro,TotalCheque,TotalChequePre,TotalChequeEletr,TotalChequeEletrPre : Real;
VlrNota,VlrVisa,VlrVisaElectron,VlrVisaElectronPre,VlrMastercard : String;
TotalNota,TotalVisa,TotalVisaElectron,TotalVisaElectronPre,TotalMastercard : Real;
VlrRedeShop,VlrHipercard,VlrAmericanExpress,VlrGoodCard,VlrDinners : String;
TotalRedeShop,TotalHipercard,TotalAmericanExpress,TotalGoodCard,TotalDinners : Real;
VlrTicketCar,VlrAura,VlrGeral,TotalCorrecao,VlrPagoSodex : String;
TotalTicketCar,TotalAura,TotalGeral,VlrCorrecao, TotalSodex : Real;

IDDinheiro, IDCheque, IDChequePre,IDChequeEletronico,IDChequeEletronicoPre : Integer;
IDVisa, IDVisaElectron, IDVisaElectronPre, IDMastercard, IDRedeShop : Integer;
IDHipercard, IDAmericanExpress, IDGoodCard,IDDinners, IDAura, IDSodex : Integer;

IDClassFuncComissao : TClasseCombo;

begin

  with dmModule do begin

    if cboFuncionario.ItemIndex <> - 1 Then begin

      IDClassFuncComissao := TClasseCombo(cboFuncionario.Items.Objects[cboFuncionario.ItemIndex]);

      Commit(ibRecVendas);
      ibRecVendas.Close;
      ibRecVendas.SQL.Clear;
      ibRecVendas.SQL.Add('SELECT * FROM TBLRECEBEVENDAS WHERE TBLRECEBEVENDAS.IDFUNCCOMISSAO=''' + IntToStr(IDClassFuncComissao.ID) + ''' and (TBLRECEBEVENDAS.DATA between :ParamDataInicial and :ParamDataFinal)');
      ibRecVendas.Open;

      ibRecVendas.Close;
      ibRecVendas.ParamByName('ParamDataInicial').Value      := dtpDataCaixaIni.DateTime;
      ibRecVendas.ParamByName('ParamDataFinal').Value        := dtpDataCaixa.DateTime;
      ibRecVendas.Open;

      (ibRecVendas.FieldByName('TOTALVENDA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

      IDDinheiro            :=  1;
      IDCheque              :=  2;
      IDChequePre           :=  3;
      IDChequeEletronico    :=  9;
      IDChequeEletronicoPre := 10;
      IDVisa                :=  4;
      IDVisaElectron        :=  5;
      IDVisaElectronPre     :=  6;
      IDMastercard          :=  7;
      IDRedeShop            :=  8;
      IDHipercard           := 15;
      IDAmericanExpress     := 12;
      IDGoodCard            := 13;
      IDDinners             := 11;
      IDAura                := 14;
      IDSodex               := 15;
/////////////////////////////////////////////////////////////////////////////////

      ibServsVenda.SQL.Clear;
      ibServsVenda.SQL.Add('SELECT  * FROM TBLSERVICOSVENDAS WHERE TBLSERVICOSVENDAS.IDFUNCCOMISSAO=''' + IntToStr(IDClassFuncComissao.ID) + ''' and (TBLSERVICOSVENDAS.DATA between :ParamDataInicial and :ParamDataFinal)');
      ibServsVenda.Open;

      ibServsVenda.Close;
      ibServsVenda.ParamByName('ParamDataInicial').Value      := dtpDataCaixaIni.DateTime;
      ibServsVenda.ParamByName('ParamDataFinal').Value        := dtpDataCaixa.DateTime;
      ibServsVenda.Open;

     end;//if cbofuncionario
////////////////////////////////////////////////////////////////////////////////

      while not ibRecVendas.Eof do begin

        if ibRecVendas.FieldByName('IDTIPOPAGTO').AsInteger = IDDinheiro Then begin

          if TotalDinheiro = 0 Then begin

            TotalDinheiro := StrToFloat(StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVENDA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            VlrDinheiro := (StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVENDA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

            TotalDinheiro := TotalDinheiro + StrToFloat(StringReplace(VlrDinheiro,ThousandSeparator,'',[rfReplaceAll]));

          end;//if



         end;//if tipopagto dinheiro

////////////////////////////////////////////////////////////////////////////////

         if ibRecVendas.FieldByName('IDTIPOPAGTO').AsInteger = IDCheque Then begin

           if TotalCheque = 0 Then begin

             TotalCheque := StrToFloat(StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVENDA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrCheque := (StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVENDA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalCheque := TotalCheque + StrToFloat(StringReplace(VlrCheque,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         //  lbl_edtCheque.Text   := FormatFloat(CasasDecimais('Produtos'),TotalCheque);

         end;//if tipopagto cheque

////////////////////////////////////////////////////////////////////////////////

         if ibRecVendas.FieldByName('IDTIPOPAGTO').AsInteger = IDChequePre Then begin

           if TotalChequePre = 0 Then begin

             TotalChequePre := StrToFloat(StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVENDA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrChequePre := (StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVENDA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalChequePre := TotalChequePre + StrToFloat(StringReplace(VlrChequePre,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         //  lbl_edtChequePre.Text   := FormatFloat(CasasDecimais('Produtos'),TotalChequePre);

         end;//if tipopagto cheque

////////////////////////////////////////////////////////////////////////////////


         if ibRecVendas.FieldByName('IDTIPOPAGTO').AsInteger = IDChequeEletronico Then begin

           if TotalChequeEletr = 0 Then begin

             TotalChequeEletr := StrToFloat(StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVENDA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrChequeEletr := (StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVENDA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalChequeEletr := TotalChequeEletr + StrToFloat(StringReplace(VlrChequeEletr,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         //  lbl_edtChequeEletronico.Text   := FormatFloat(CasasDecimais('Produtos'),TotalChequeEletr);

         end;//if tipopagto cheque

////////////////////////////////////////////////////////////////////////////////

         if ibRecVendas.FieldByName('IDTIPOPAGTO').AsInteger = IDChequeEletronicoPre Then begin

           if TotalChequeEletrPre = 0 Then begin

             TotalChequeEletrPre := StrToFloat(StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVENDA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrChequeEletrPre := (StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVENDA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalChequeEletrPre := TotalChequeEletrPre + StrToFloat(StringReplace(VlrChequeEletrPre,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         //  lbl_edtChequeEletronicoPre.Text   := FormatFloat(CasasDecimais('Produtos'),TotalChequeEletrPre);

         end;//if tipopagto cheque

////////////////////////////////////////////////////////////////////////////////

         if ibRecVendas.FieldByName('IDTIPOPAGTO').AsInteger = IDVisa Then begin

           if TotalVisa = 0 Then begin

             TotalVisa := StrToFloat(StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVENDA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrVisa := (StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVENDA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalVisa := TotalVisa + StrToFloat(StringReplace(VlrVisa,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

        //   lbl_edtVisa.Text   := FormatFloat(CasasDecimais('Produtos'),TotalVisa);

         end;//if tipopagto cheque

////////////////////////////////////////////////////////////////////////////////

         if ibRecVendas.FieldByName('IDTIPOPAGTO').AsInteger = IDVisaElectron Then begin

           if TotalVisaElectron = 0 Then begin

             TotalVisaElectron := StrToFloat(StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVENDA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrVisaElectron := (StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVENDA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalVisaElectron := TotalVisaElectron + StrToFloat(StringReplace(VlrVisaElectron,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

        //   lbl_edtVisaElectron.Text   := FormatFloat(CasasDecimais('Produtos'),TotalVisaElectron);

         end;//if tipopagto cheque

////////////////////////////////////////////////////////////////////////////////

         if ibRecVendas.FieldByName('IDTIPOPAGTO').AsInteger = IDVisaElectronPre Then begin

           if TotalVisaElectronPre = 0 Then begin

             TotalVisaElectronPre := StrToFloat(StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVENDA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrVisaElectronPre := (StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVENDA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalVisaElectronPre := TotalVisaElectronPre + StrToFloat(StringReplace(VlrVisaElectronPre,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         //  lbl_edtVisaElectronPre.Text   := FormatFloat(CasasDecimais('Produtos'),TotalVisaElectronPre);

         end;//if tipopagto cheque

////////////////////////////////////////////////////////////////////////////////

         if ibRecVendas.FieldByName('IDTIPOPAGTO').AsInteger = IDMastercard Then begin

           if TotalMastercard = 0 Then begin

             TotalMastercard := StrToFloat(StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVENDA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrMastercard := (StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVENDA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalMastercard := TotalMastercard + StrToFloat(StringReplace(VlrMastercard,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         //  lbl_edtMastercard.Text   := FormatFloat(CasasDecimais('Produtos'),TotalMastercard);

         end;//if tipopagto cheque

////////////////////////////////////////////////////////////////////////////////

       if ibRecVendas.FieldByName('IDTIPOPAGTO').AsInteger = IDRedeShop Then begin

           if TotalRedeShop = 0 Then begin

             TotalRedeShop := StrToFloat(StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVENDA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrRedeShop := (StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVENDA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalRedeShop := TotalRedeShop + StrToFloat(StringReplace(VlrRedeShop,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

        //   lbl_edtRedeShop.Text   := FormatFloat(CasasDecimais('Produtos'),TotalRedeShop);

         end;//if tipopagto cheque

////////////////////////////////////////////////////////////////////////////////

       if ibRecVendas.FieldByName('IDTIPOPAGTO').AsInteger = IDHipercard Then begin

           if TotalHipercard = 0 Then begin

             TotalHipercard := StrToFloat(StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVENDA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrHipercard := (StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVENDA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalHipercard := TotalHipercard + StrToFloat(StringReplace(VlrHipercard,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         //  lbl_edtHipercard.Text   := FormatFloat(CasasDecimais('Produtos'),TotalHipercard);

         end;//if tipopagto cheque

////////////////////////////////////////////////////////////////////////////////

       if ibRecVendas.FieldByName('IDTIPOPAGTO').AsInteger = IDAmericanExpress Then begin

           if TotalAmericanExpress = 0 Then begin

             TotalAmericanExpress := StrToFloat(StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVENDA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrAmericanExpress := (StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVENDA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalAmericanExpress := TotalAmericanExpress + StrToFloat(StringReplace(VlrAmericanExpress,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         //  lbl_edtAmericanExpress.Text   := FormatFloat(CasasDecimais('Produtos'),TotalAmericanExpress);

         end;//if tipopagto cheque

////////////////////////////////////////////////////////////////////////////////

       if ibRecVendas.FieldByName('IDTIPOPAGTO').AsInteger = IDGoodCard Then begin

           if TotalGoodCard = 0 Then begin

             TotalGoodCard := StrToFloat(StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVENDA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrGoodCard := (StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVENDA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalGoodCard := TotalGoodCard + StrToFloat(StringReplace(VlrGoodCard,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

          // lbl_edtGoodCard.Text   := FormatFloat(CasasDecimais('Produtos'),TotalGoodCard);

         end;//if tipopagto cheque

////////////////////////////////////////////////////////////////////////////////

       if ibRecVendas.FieldByName('IDTIPOPAGTO').AsInteger = IDDinners Then begin

           if TotalDinners = 0 Then begin

             TotalDinners := StrToFloat(StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVENDA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrDinners := (StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVENDA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalDinners := TotalDinners + StrToFloat(StringReplace(VlrDinners,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

        //   lbl_edtDinners.Text   := FormatFloat(CasasDecimais('Produtos'),TotalDinners);

         end;//if tipopagto cheque

////////////////////////////////////////////////////////////////////////////////

       if ibRecVendas.FieldByName('IDTIPOPAGTO').AsInteger = IDSodex Then begin

           if TotalSodex = 0 Then begin

             TotalSodex := StrToFloat(StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVENDA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrPagoSodex := (StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVENDA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalSodex := TotalSodex + StrToFloat(StringReplace(VlrPagoSodex,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         end;//if tipopagto cheque


////////////////////////////////////////////////////////////////////////////////

           if TotalGeral = 0 Then begin

             TotalGeral := StrToFloat(StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVENDA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrGeral := (StringReplace(FloatToStr(ibRecVendas.FieldByName('TOTALVENDA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalGeral := TotalGeral + StrToFloat(StringReplace(VlrGeral,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

        ibRecVendas.Next;


      end;//while


        lbl_edtTotalGeral.Text   := FormatFloat(CasasDecimais('Produtos'),TotalGeral + TotalNota + VlrCorrecao);
        lbl_edtDinheiro.Text := FormatFloat(CasasDecimais('Produtos'),TotalDinheiro);
        lbl_edtCheque.Text   := FormatFloat(CasasDecimais('Produtos'),TotalCheque);
        lbl_edtChequePre.Text   := FormatFloat(CasasDecimais('Produtos'),TotalChequePre);
 //       lbl_edtNota.Text   := FormatFloat(CasasDecimais('Produtos'),TotalNota);
        lbl_edtVisaCredito.Text   := FormatFloat(CasasDecimais('Produtos'),TotalVisa);
        lbl_edtVisaDebito.Text   := FormatFloat(CasasDecimais('Produtos'),TotalVisaElectron);
        lbl_edtVisaParcelado.Text   := FormatFloat(CasasDecimais('Produtos'),TotalVisaElectronPre);
        lbl_edtMastercardCredito.Text   := FormatFloat(CasasDecimais('Produtos'),TotalMastercard);
        lbl_edtMastercardDebito.Text   := FormatFloat(CasasDecimais('Produtos'),TotalRedeShop);
        lbl_edtMastercardParcelado.Text   := FormatFloat(CasasDecimais('Produtos'),TotalHipercard);
        lbl_edtAmericanExpress.Text   := FormatFloat(CasasDecimais('Produtos'),TotalAmericanExpress);
        lbl_edtSodex.Text := FormatFloat(CasasDecimais('Produtos'),TotalSodex);
        lbl_edtHipercard.Text      := FormatFloat(CasasDecimais('Produtos'),TotalHipercard);
   //     lbl_edtTotalPendente.Text   := FormatFloat(CasasDecimais('Produtos'),Totalp);


//    end;//if cbofunc


  end;//with

end;

procedure TfrmFluxoDetalhado.lbl_edtMargemLucroExit(Sender: TObject);

var

MargemLucro,TotalVendaBruta,VlrSomadoMargem,VlrTotalMargem : Real;

begin

if lbl_edtMargemLucro.Text <> '' Then begin

if (lbl_edtTotalRecebido.Text <> '') or (lbl_edtTotalRecebido.Text >'0,00') Then begin

  if lbl_edtTotalRecebido.Text <> '' Then begin// se for em branco executa rotina abaixo.

    if (Pos(',',lbl_edtMargemLucro.Text)>0) and (lbl_edtMargemLucro.Text <> '') Then begin

      TotalVendaBruta := StrToFloat(StringReplace(lbl_edtTotalRecebido.Text,ThousandSeparator,'',[rfReplaceAll]));
      MargemLucro := StrToFloat(StringReplace(lbl_edtMargemLucro.Text,ThousandSeparator,'',[rfReplaceAll]));
      VlrSomadoMargem := MargemLucro * TotalVendaBruta;

      VlrTotalMargem := VlrSomadoMargem /100;

      lbl_edtTotalRecebidoLucro.Text := FormatFloat(',0.00',(TotalVendaBruta - VlrTotalMargem));

    end else begin

      TotalVendaBruta := StrToFloat(StringReplace(lbl_edtTotalRecebido.Text,ThousandSeparator,'',[rfReplaceAll]));
      MargemLucro := StrToFloat(StringReplace(lbl_edtMargemLucro.Text,ThousandSeparator,'',[rfReplaceAll]));
      VlrSomadoMargem := MargemLucro * TotalVendaBruta;

      VlrTotalMargem := VlrSomadoMargem /100;

      lbl_edtTotalRecebidoLucro.Text := FormatFloat(',0.00',(TotalVendaBruta - VlrTotalMargem));

    end;{if}

  end;{if}

end;//label custo

end;//if margem lucro


end;

procedure TfrmFluxoDetalhado.lbl_edtMargemLucroKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtTotalRecebidoLucro.SetFocus;

  end;

end;

end.
