unit untVendasAberto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, Grids, DBGrids, ComCtrls, IBQuery, Buttons, StdCtrls, ExtCtrls, untClasse.VendasCX;

type
  TfrmVendasAberto = class(TForm)
    dbgVendasAberto: TDBGrid;
    dtpDataIni: TDateTimePicker;
    dtpDataF: TDateTimePicker;
    btIncluir: TSpeedButton;
    btSair: TSpeedButton;
    lbl_DTIni: TLabel;
    lbl_DTF: TLabel;
    lbl_edtVlrPagtoP: TLabeledEdit;
    lbl_edtNome: TLabeledEdit;
    lbl_edtTelefone: TLabeledEdit;
    btPagtoP: TSpeedButton;
    lbl_edtTotal: TLabeledEdit;
    lbl_edtVlrPendente: TLabeledEdit;
    lbl_edtVlrPagto: TLabeledEdit;
    rgTipoPagto: TRadioGroup;
    rbDinheiro: TRadioButton;
    rbCartaoCred: TRadioButton;
    rbCartaoDeb: TRadioButton;
    dbgDetalhePagtoP: TDBGrid;
    lbl_DetalheP: TLabel;
    procedure Commit(IBQueryExec : TIBQuery);
    procedure SelectVendas;
    procedure dbgVendasAbertoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dtpDataFChange(Sender: TObject);
    procedure dbgVendasAbertoCellClick(Column: TColumn);
    procedure btIncluirClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure lbl_edtNomeEnter(Sender: TObject);
    procedure lbl_edtTelefoneEnter(Sender: TObject);
    procedure lbl_edtVlrPagtoPEnter(Sender: TObject);
    procedure lbl_edtNomeExit(Sender: TObject);
    procedure lbl_edtTelefoneExit(Sender: TObject);
    procedure lbl_edtVlrPagtoPExit(Sender: TObject);
    procedure lbl_edtVlrPagtoEnter(Sender: TObject);
    procedure lbl_edtVlrPagtoExit(Sender: TObject);
    procedure lbl_edtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtTelefoneKeyPress(Sender: TObject; var Key: Char);
    procedure btPagtoPClick(Sender: TObject);
    procedure lbl_edtVlrPagtoKeyPress(Sender: TObject; var Key: Char);
    procedure dbgDetalhePagtoPDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendasAberto: TfrmVendasAberto;
  MontaColunas,MontaColPagtoParcial : boolean;
  intIDVendas : Integer;
implementation

uses untdmModule, funcPosto, DB, untModuloRestaurante;

{$R *.dfm}

procedure TfrmVendasAberto.Commit(IBQueryExec : TIBQuery);

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

procedure TfrmVendasAberto.SelectVendas;

begin

  with dmModule do begin

    Commit(ibVendasAberto);
    ibVendasAberto.Close;
    ibVendasAberto.SQL.Clear;
    ibVendasAberto.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE(TBLRESTAURANTE.DATA between :ParamDataInicial and :ParamDataFinal)and SITUACAOVENDA='' 0 ''');
    ibVendasAberto.Open;

    ibVendasAberto.Close;
    ibVendasAberto.ParamByName('ParamDataInicial').Value := dtpDataIni.DateTime;
    ibVendasAberto.ParamByName('ParamDataFinal').Value := dtpDataF.DateTime;
    ibVendasAberto.Open;

    (ibVendasAberto.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
    (ibVendasAberto.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
    (ibVendasAberto.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');


  end;//with

end;

procedure TfrmVendasAberto.dbgVendasAbertoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

    If (dbgVendasAberto.DataSource.DataSet.RecNo div 2) =  (dbgVendasAberto.DataSource.DataSet.RecNo/2) Then begin

    dbgVendasAberto.Canvas.Font.Color:= clBlack;
    dbgVendasAberto.Canvas.Brush.Color:= clskyBlue;

  end else begin

    dbgVendasAberto.Canvas.Font.Color:= clBlack;
    dbgVendasAberto.Canvas.Brush.Color:= clWhite;

  end;

      dbgVendasAberto.Canvas.FillRect(Rect);

    if Column.Field.DataType = ftFloat  Then begin

      dbgVendasAberto.Canvas.TextOut(Rect.Left+2,Rect.Top,FormatFloat(CasasDecimais('Produtos'), Column.Field.AsFloat));

    end else begin

      dbgVendasAberto.Canvas.TextOut(Rect.Left+2,Rect.Top,Column.Field.AsString);

   end;{if}
   
end;

procedure TfrmVendasAberto.FormShow(Sender: TObject);
begin

  dtpDataIni.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
  dtpDataF.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
  intIDVendas := 0;

  lbl_edtVlrPagto.Text := '0,00';
  lbl_edtVlrPagtoP.Text := '0,00';
  lbl_edtVlrPendente.Text := '0,00';
  lbl_edtTotal.Text := '0,00';
  lbl_edtNome.Clear;
  lbl_edtTelefone.Clear;

  with dmModule do begin

    SelectVendas;

    rbDinheiro.Checked := True;
    ibSomaVendasAberto.Close;
    ibPagtoParcial.Close;
    
    with dbgVendasAberto do begin        
      
      // monta as colunas abaixo se for verdadeiro
      if MontaColunas Then begin

        DataSource := dmModule.dtsVendasAberto;
        //determina as colunas a serem montadas 0 codigo cliente, 1 razao Social, 2 endere�o numero...
        Columns.Insert(0);
        Columns.Insert(1);
        Columns.Insert(2);
        Columns.Insert(3);
        Columns.Insert(4);
        Columns.Insert(5);
        Columns.Insert(6);

        //Parametros da Coluna que exibe o C�digo do Cadastro
        Columns.Items[0].Title.Caption := 'Cupom';
        Columns.Items[0].FieldName     := 'IDDETALHER';
        Columns.Items[0].Width         := 75;
        Columns.Items[0].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o Nome do cliente.
        Columns.Items[1].Title.Caption := 'Cliente';
        Columns.Items[1].FieldName     := 'NOMECLIENTE';
        Columns.Items[1].Width         := 280;
        Columns.Items[1].Alignment     := taLeftJustify;

        // Parametros que exibe o endere�o do cliente
        Columns.Items[2].Title.Caption := 'Produto';
        Columns.Items[2].FieldName     := 'NOMEPRODUTO';
        Columns.Items[2].Width         := 170;
        Columns.Items[2].Alignment     := taLeftJustify;

        // Parametros que exibe o endere�o do cliente
        Columns.Items[3].Title.Caption := 'Vlr.Unit�rio';
        Columns.Items[3].FieldName     := 'VLRUNIT';
        Columns.Items[3].Width         := 100;
        Columns.Items[3].Alignment     := taLeftJustify;

        // Parametros que exibe o endere�o do cliente
        Columns.Items[4].Title.Caption := 'Qtde.';
        Columns.Items[4].FieldName     := 'QTDE';
        Columns.Items[4].Width         := 70;
        Columns.Items[4].Alignment     := taLeftJustify;

        // Parametros que exibe o endere�o do cliente
        Columns.Items[5].Title.Caption := 'Total';
        Columns.Items[5].FieldName     := 'VLRTOTAL';
        Columns.Items[5].Width         := 100;
        Columns.Items[5].Alignment     := taLeftJustify;

        // Parametros que exibe o endere�o do cliente
        Columns.Items[6].Title.Caption := 'Data';
        Columns.Items[6].FieldName     := 'DATA';
        Columns.Items[6].Width         := 80;
        Columns.Items[6].Alignment     := taLeftJustify;

        MontaColunas := False;

     end;{if}

    end;{with dbgrid}
////////////////////////////////////////////////////////////////////////////////

      with dbgDetalhePagtoP do begin

      // monta as colunas abaixo se for verdadeiro
      if MontaColPagtoParcial Then begin

        DataSource := dmModule.dtsPagtoParcial;
        //determina as colunas a serem montadas 0 codigo cliente, 1 razao Social, 2 endere�o numero...
        Columns.Insert(0);
        Columns.Insert(1);
        Columns.Insert(2);
        Columns.Insert(3);


        //Parametros da Coluna que exibe o C�digo do Cadastro
        Columns.Items[0].Title.Caption := 'Nome';
        Columns.Items[0].FieldName     := 'NOMECLI';
        Columns.Items[0].Width         := 170;
        Columns.Items[0].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o Nome do cliente.
        Columns.Items[1].Title.Caption := 'Telefone';
        Columns.Items[1].FieldName     := 'TELEFONECLI';
        Columns.Items[1].Width         := 80;
        Columns.Items[1].Alignment     := taLeftJustify;

        // Parametros que exibe o endere�o do cliente
        Columns.Items[2].Title.Caption := 'Pagto.Parcial';
        Columns.Items[2].FieldName     := 'VLRPARCIAL';
        Columns.Items[2].Width         := 80;
        Columns.Items[2].Alignment     := taLeftJustify;

        // Parametros que exibe o endere�o do cliente
        Columns.Items[3].Title.Caption := 'Cupom';
        Columns.Items[3].FieldName     := 'IDDETALHER';
        Columns.Items[3].Width         := 80;
        Columns.Items[3].Alignment     := taLeftJustify;

        MontaColPagtoParcial := False;

     end;{if}

    end;{with dbgrid}

////////////////////////////////////////////////////////////////////////////////

  end;//with

end;

procedure TfrmVendasAberto.FormCreate(Sender: TObject);
begin

  MontaColunas := True;
  MontaColPagtoParcial := True;
  
  {btIncluir.Font.Style := [fsBold];
  btIncluir.Caption := 'Inserir'+#13+'no Caixa'+#13+'';

  btSair.Font.Style := [fsBold];
  btSair.Caption := 'Sair'+#13+''; }

end;

procedure TfrmVendasAberto.dtpDataFChange(Sender: TObject);
begin

  with dmModule do begin

    SelectVendas;

  end;//with

end;

procedure TfrmVendasAberto.dbgVendasAbertoCellClick(Column: TColumn);

var
rVlrPagtoParcial,rVlrPendente : TVendasCX;
rVlrTotalVenda : Real;
strTotalV : String;

begin

  intIDVendas := 0;
  rVlrTotalVenda := 0;
  
  with dmModule do begin

    intIDVendas := ibVendasAberto.FieldByName('IDDETALHER').AsInteger;

      if intIDVendas > 0 Then begin

        Commit(ibSomaVendasAberto);
        ibSomaVendasAberto.Close;
        ibSomaVendasAberto.SQL.Clear;
        ibSomaVendasAberto.SQL.Add('SELECT VLRTOTAL FROM TBLRESTAURANTE '
        + 'WHERE(TBLRESTAURANTE.IDDETALHER=''' + IntToStr(intIDVendas) + ''')');
        ibSomaVendasAberto.Open;//  (TBLRESTAURANTE.DATA between :ParamDataInicial and :ParamDataFinal)

       { ibSomaVendasAberto.Close;
        ibSomaVendasAberto.ParamByName('ParamDataInicial').Value := dtpDataIni.DateTime;
        ibSomaVendasAberto.ParamByName('ParamDataFinal').Value := dtpDataF.DateTime;
        ibSomaVendasAberto.Open;}

       // (ibVendasAberto.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
        //(ibVendasAberto.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
        (ibSomaVendasAberto.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');


        while not ibSomaVendasAberto.Eof do begin

          if rVlrTotalVenda = 0 Then begin

            rVlrTotalVenda := StrToFloat(StringReplace(FloatToStr(ibSomaVendasAberto.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

          end else begin

            strTotalV := StringReplace(FloatToStr(ibSomaVendasAberto.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            rVlrTotalVenda := rVlrTotalVenda + StrtoFloat(StringReplace(strTotalV,ThousandSeparator,'',[rfReplaceAll]));

          end;//if

           ibSomaVendasAberto.Next;

        end;//while

        lbl_edtTotal.Text := FormatFloat(CasasDecimais('Produtos'),rVlrTotalVenda);

       
        ibPagtoParcial.Close;
        ibPagtoParcial.SQL.Clear;
        ibPagtoParcial.SQL.Add('SELECT * FROM TBLPAGTOPARCIAL WHERE IDDETALHER=''' + IntToStr(intIDVendas) + '''');
        ibPagtoParcial.Open;

        (ibPagtoParcial.FieldByName('VLRPARCIAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

        if ibPagtoParcial.RecordCount > 0 Then begin

            //instanciando o obj
            rVlrPagtoParcial := TVendasCX.Create();
            rVlrPendente := TVendasCX.Create();

          try

            while not ibPagtoParcial.Eof do begin

              if rVlrPagtoParcial.VlrTotalPagoParcial = 0 then begin

                rVlrPagtoParcial.VlrTotalPagoParcial :=  StrToFloat(StringReplace(FloatToStr(ibPagtoParcial.FieldByName('VLRPARCIAL').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

              end else begin

                rVlrPagtoParcial.VlrTotalPagoParcial :=  rVlrPagtoParcial.VlrTotalPagoParcial+StrToFloat(StringReplace(FloatToStr(ibPagtoParcial.FieldByName('VLRPARCIAL').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

              end;

                ibPagtoParcial.Next;

                lbl_edtVlrPagtoP.Text := FormatFloat(CasasDecimais('Produtos'),rVlrPagtoParcial.VlrTotalPagoParcial);
              
            end;//while

            rVlrPendente.VlrPendente := rVlrTotalVenda - rVlrPagtoParcial.VlrTotalPagoParcial;
            lbl_edtVlrPendente.Text := FormatFloat(CasasDecimais('Produtos'),rVlrPendente.VlrPendente);
            
          finally

            rVlrPagtoParcial.Free;
            rVlrPendente.Free;
            
          end;

        end;//if pagtoparcial recordcount

      end;//if

  end;//with

end;

procedure TfrmVendasAberto.btIncluirClick(Sender: TObject);

var
ValorTotalMesas, ValorParcial : Real;
TotalMesas, TotalParcial : String;

begin

  with dmModule do begin

    //intIDVendas := ibRestaurante.FieldByName('IDDETALHER').AsInteger;

    Commit(ibRestaurante);
    ibRestaurante.Close;
    ibRestaurante.SQL.Clear;
    ibRestaurante.SQL.Add('SELECT * FROM TBLRESTAURANTE WHERE(TBLRESTAURANTE.IDDETALHER=''' + IntToStr(intIDVendas) + ''')');
    ibRestaurante.Open;

    (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
    (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
    (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      while not ibRestaurante.Eof do begin

        if ValorTotalMesas = 0 Then begin

          ValorTotalMesas := StrToFloat(StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalMesas := StringReplace(FloatToStr(ibRestaurante.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          ValorTotalMesas := ValorTotalMesas + StrtoFloat(StringReplace(TotalMesas,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibRestaurante.Next;

      end;//while

      ibPagtoParcial.Close;
      ibPagtoParcial.SQL.Clear;
      ibPagtoParcial.SQL.Add('SELECT * FROM TBLPAGTOPARCIAL WHERE IDDETALHER=''' + IntToStr(intIDVendas) + '''');
      ibPagtoParcial.Open;

      (ibPagtoParcial.FieldByName('VLRPARCIAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      if ibPagtoParcial.RecordCount > 0 Then begin

        while not ibPagtoParcial.Eof do begin

          if ValorParcial = 0 Then begin

            ValorParcial := StrToFloat(StringReplace(FloatToStr(ibPagtoParcial.FieldByName('VLRPARCIAL').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

          end else begin

            TotalParcial := StringReplace(FloatToStr(ibPagtoParcial.FieldByName('VLRPARCIAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            ValorParcial := ValorParcial + StrtoFloat(StringReplace(TotalParcial,ThousandSeparator,'',[rfReplaceAll]));

          end;//if

           ibPagtoParcial.Next;

        end;//while

          if ValorParcial > 0 Then begin

            frmRestaurante.lbl_ValorTotal.Caption := FormatFloat(CasasDecimais('Produtos'),ValorTotalMesas - ValorParcial);

          end else begin

            frmRestaurante.lbl_ValorTotal.Caption := FormatFloat(CasasDecimais('Produtos'),ValorTotalMesas);

          end;

      end;

      frmRestaurante.lbl_IDCli.Caption := IntToStr(ibRestaurante.FieldByName('IDCLIENTE').AsInteger);
      frmRestaurante.lbl_Cliente.Caption := ibRestaurante.FieldByName('NOMECLIENTE').AsString;
      frmRestaurante.lbl_edtIDDetalheMesa.Caption := IntToStr(ibRestaurante.FieldByName('IDDETALHER').AsInteger);
      
  end;//with

    btSairClick(Sender);

end;

procedure TfrmVendasAberto.btSairClick(Sender: TObject);
begin
Close;

  with dmModule do begin

    ibPagtoParcial.Close;
    ibSomaVendasAberto.Close;
    
  end;//with

end;

procedure TfrmVendasAberto.lbl_edtNomeEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmVendasAberto.lbl_edtTelefoneEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmVendasAberto.lbl_edtVlrPagtoPEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmVendasAberto.lbl_edtNomeExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
end;

procedure TfrmVendasAberto.lbl_edtTelefoneExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
end;

procedure TfrmVendasAberto.lbl_edtVlrPagtoPExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
end;

procedure TfrmVendasAberto.lbl_edtVlrPagtoEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmVendasAberto.lbl_edtVlrPagtoExit(Sender: TObject);


var

Valor1, Valor2, Valor3, Valor4 : Real;

begin
tedit(sender).color := clwindow;


  if (lbl_edtVlrPagto.Text <> '') Then begin

   lbl_edtVlrPagto.Text := FormatFloat(',0.00',StrToFloat(lbl_edtVlrPagto.Text));

  end else begin

   lbl_edtVlrPagto.Text := '0,00';

  end;//if

    if (lbl_edtVlrPagto.Text <> '')and(lbl_edtVlrPagto.Text > '0,01') Then begin

      if lbl_edtVlrPagto.Text <> '' Then begin// se for em branco executa rotina abaixo.

        if (Pos(',',lbl_edtVlrPagto.Text)>0) and (lbl_edtVlrPagto.Text <> '') Then begin

          if (lbl_edtVlrPagtoP.Text > '0')or(lbl_edtVlrPagtoP.Text > '0,00') Then begin

            Valor1 := StrToFloat(StringReplace(lbl_edtVlrPagto.Text,ThousandSeparator,'',[rfReplaceAll]));

            Valor2 := StrToFloat(StringReplace(lbl_edtVlrPagtoP.Text,ThousandSeparator,'',[rfReplaceAll]));

            lbl_edtVlrPagtoP.Text := FormatFloat(',0.00',(Valor2 + Valor1));

          end else begin

            lbl_edtVlrPagtoP.Text :=  FormatFloat(',0.00',StrToFloat(lbl_edtVlrPagto.Text));

          end;  

        end;

        if(lbl_edtVlrPendente.Text >'0')or(lbl_edtVlrPendente.Text >'0,00')then begin

          Valor3 := StrToFloat(StringReplace(lbl_edtTotal.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor4 := Valor1 + Valor2;
          
          if(Valor4 > Valor3)then begin

            lbl_edtVlrPendente.Text := FormatFloat(',0.00',(Valor4 - Valor3));

          end else begin

            lbl_edtVlrPendente.Text := FormatFloat(',0.00',(Valor3 - Valor4));

          end;

        end else begin

          lbl_edtVlrPendente.Text := FormatFloat(',0.00',(Valor1));

        end;//if vlrpendente

      end;{if}

    end;{if}

      lbl_edtVlrPagto.Text := (lbl_edtVlrPagto.Text);

end;

procedure TfrmVendasAberto.lbl_edtNomeKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtTelefone.SetFocus;

  end;

end;

procedure TfrmVendasAberto.lbl_edtTelefoneKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtVlrPagto.SetFocus;

  end;

end;

procedure TfrmVendasAberto.btPagtoPClick(Sender: TObject);

var

strVlrPagtoP, intIDVendacx : TVendasCX;
strNomeCli, strTelefoneCli : TVendasCX;
intIDTipoPagto, intConfirmaPagto : TVendasCX;
begin

  with dmModule do begin

    if(intIDVendas > 0 )Then begin


        //instanciando o obj
        strVlrPagtoP := TVendasCX.Create();
        strNomeCli   := TVendasCX.Create();
        strTelefoneCli := TVendasCX.Create();
        intIDVendacx := TVendasCX.Create();
        intIDTipoPagto := TVendasCX.Create();
        intConfirmaPagto := TVendasCX.Create();

        intConfirmaPagto.IntConfirmaPagto := Application.MessageBox('Confirma o Pagto.?','Pagto.Parcial',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

      if intConfirmaPagto.IntConfirmaPagto = 6 then begin

        try

          if(intIDVendas > 0 )then begin

            intIDVendacx.IDVendaCX := intIDVendas;

            strVlrPagtoP.VlrPagtoP := StringReplace(lbl_edtVlrPagto.Text,ThousandSeparator,'',[rfReplaceAll]);
            strVlrPagtoP.VlrPagtoP := StringReplace(strVlrPagtoP.VlrPagtoP,DecimalSeparator,'.',[rfReplaceAll]);
            if strVlrPagtoP.VlrPagtoP = '' Then
              strVlrPagtoP.VlrPagtoP := '0';

            strNomeCli.BuscaNome := lbl_edtNome.Text;
            strTelefoneCli.Telefone := lbl_edtTelefone.Text; 
            intIDTipoPagto.IDTipoPagto := 1;

            if rbDinheiro.Checked then

              intIDTipoPagto.IDTipoPagto := 1;

            if rbCartaoCred.Checked then

              intIDTipoPagto.IDTipoPagto := 2;

            if rbCartaoDeb.Checked then

              intIDTipoPagto.IDTipoPagto := 3;  

            ibPagtoParcial.Close;
            ibPagtoParcial.SQL.Clear;
            ibPagtoParcial.SQL.Add('INSERT INTO TBLPAGTOPARCIAL'
            + '(VLRPARCIAL,DATA,HORA,IDDETALHER,IDTIPOPAGTO,NOMECLI,TELEFONECLI) values '
            + '( ''' + strVlrPagtoP.VlrPagtoP + ''','
            + ' ''' +  FormatDateTime('mm-dd-yyyy',Now) + ''','
            + ' ''' +  FormatDateTime('hh:mm:ss',Now) + ''','
            + ' ''' + IntToStr(intIDVendacx.IDVendaCX) + ''','
            + ' ''' + IntToStr(intIDTipoPagto.IDTipoPagto) + ''','
            + ' ''' + strNomeCli.BuscaNome + ''','
            + ' ''' + strTelefoneCli.Telefone + ''')');
            ibPagtoParcial.Open;

          end;//if

        finally

          strNomeCli.Free;
          strVlrPagtoP.Free;
          strTelefoneCli.Free;
          intIDTipoPagto.Free;
        
        end;//finally

      end;//if confirmapagto

    end;//intidvendas

    lbl_edtVlrPagto.Text := '0,00';
    lbl_edtVlrPagtoP.Text := '0,00';
    lbl_edtVlrPendente.Text := '0,00';
    lbl_edtTotal.Text := '0,00';
    lbl_edtNome.Clear;
    lbl_edtTelefone.Clear;
    
  end;//with
  
end;

procedure TfrmVendasAberto.lbl_edtVlrPagtoKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key = #13 then begin

    lbl_edtVlrPagtoP.SetFocus;

  end;//if

end;

procedure TfrmVendasAberto.dbgDetalhePagtoPDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

  {  If (dbgDetalhePagtoP.DataSource.DataSet.RecNo div 2) =  (dbgDetalhePagtoP.DataSource.DataSet.RecNo/2) Then begin

    dbgDetalhePagtoP.Canvas.Font.Color:= clBlack;
    dbgDetalhePagtoP.Canvas.Brush.Color:= clskyBlue;

  end else begin

    dbgDetalhePagtoP.Canvas.Font.Color:= clBlack;
    dbgDetalhePagtoP.Canvas.Brush.Color:= clWhite;

  end;

      dbgDetalhePagtoP.Canvas.FillRect(Rect);

    if Column.Field.DataType = ftFloat  Then begin

      dbgDetalhePagtoP.Canvas.TextOut(Rect.Left+2,Rect.Top,FormatFloat(CasasDecimais('Produtos'), Column.Field.AsFloat));

    end else begin

      dbgDetalhePagtoP.Canvas.TextOut(Rect.Left+2,Rect.Top,Column.Field.AsString);

   end;//if}

end;

end.
