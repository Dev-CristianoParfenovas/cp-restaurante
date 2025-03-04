unit untTblPreco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IBQuery, classComboBox, BmsXPButton,
  BmsXPCheckBox, ComCtrls, ExtCtrls;

type
  TfrmTblPreco = class(TForm)
    ibeaAtualizar: TBmsXPButton;
    ProgressBar1: TProgressBar;
    StatusBar1: TStatusBar;
    ibeaCorrecao: TBmsXPButton;
    ibeaSair: TBmsXPButton;
    cboFornecedores: TComboBox;
    GroupBox1: TGroupBox;
    ckPorcentagem: TBmsXPCheckBox;
    ckValor: TBmsXPCheckBox;
    lbl_edtPorcentagem: TLabeledEdit;
    Label1: TLabel;
    lbl_edtFabricante: TLabel;
    procedure Commit(IBQueryExec : TIBQuery);
    procedure ExecSELECTFornecedor;
    procedure AtualizarPreco;
    procedure EstornarLancto;
    procedure FormShow(Sender: TObject);
    procedure ibeaAtualizarClick(Sender: TObject);
    procedure ckPorcentagemCheck(Sender: TObject);
    procedure ckValorCheck(Sender: TObject);
    procedure StatusBar1DrawPanel(StatusBar: TStatusBar;
      Panel: TStatusPanel; const Rect: TRect);
    procedure ibeaCorrecaoClick(Sender: TObject);
    procedure ibeaSairClick(Sender: TObject);
    procedure cboFornecedoresChange(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTblPreco: TfrmTblPreco;
  ClassForn : TClasseCombo;
  IDClassForn : Integer;

implementation

uses untdmModule, funcPosto, DB;

{$R *.dfm}


procedure TfrmTblPreco.Commit(IBQueryExec : TIBQuery);
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

procedure TfrmTblPreco.ExecSELECTFornecedor;
begin
  with dmModule do begin

    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Fornecedores''');
    ibClassificacao.Open;
    IDClassForn := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICA��O DO FORNECEDOR NA VARIAVEL.

    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE IDCLASS=' + IntToStr(IDClassForn));//('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + InttoStr(IDClass) + ''' ORDER BY NOME');
    ibCadastro.Open;

    {ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT CADPRODUTOS.*,TBLCADASTRO.NOME As Fornecedor FROM CADPRODUTOS '
    + 'INNER JOIN TBLCADASTRO ON CADPRODUTOS.FORNECEDOR=TBLCADASTRO.IDCAD');
    ibProdutos.Open;}

    cboFornecedores.Clear; //LIMPA O COMBOBOX
    while not ibCadastro.Eof do begin
      ClassForn    := TClasseCombo.Create;
      ClassForn.ID  := ibCadastro.FieldByName('IDCAD').AsInteger;
      cboFornecedores.Items.AddObject(ibCadastro.FieldByName('NOME').AsString,ClassForn);
      ibCadastro.Next;
    end;
  end;
end;

procedure TfrmTblPreco.AtualizarPreco;

var

IDFornecedor, IDFornecedorProd : TClasseCombo;
ValorVenda, ValorPorcentagem, Valor1, Valor2, VaLor3, Valor4, Valor5  : Real;
ValorAlteracao, Valor6, Valor7, Valor8 : Real;
StringFornecedor, Total, TotalSomado, Fabricante, TotalEstoque : String;
IDProduto : Integer;
QtdeEstoque : Real;
ConfirmaEstoque : Integer;
AutorizaAutEstoque : Boolean;

begin

  with dmModule do begin

    if cboFornecedores.ItemIndex > -1 Then begin

      IDFornecedor := TClasseCombo(cboFornecedores.Items.Objects[cboFornecedores.ItemIndex]);
      StringFornecedor :=  InttoStr( IDFornecedor.ID );

    Commit(ibProdutos);
    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE FORNECEDOR='''+ IntToStr(IDFornecedor.ID) +'''');
    ibProdutos.Open;

    (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos');


    end;

    if lbl_edtFabricante.Caption <> '' Then begin

      Fabricante :=  lbl_edtFabricante.Caption;

    Commit(ibProdutos);
    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE FABRICANTE=''' + Fabricante + '''');
    ibProdutos.Open;

    (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos');


    end;//if


    ConfirmaEstoque := Application.MessageBox('Este procedimento tamb�m atualiza o valor de estoque, clique em sim para atualizar ou n�o para bloquear o procedimento','Atualizar Valor de Estoque',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

    if ConfirmaEstoque = 6 Then begin

    AutorizaAutEstoque := True;

    end;

////////////////////////////////////////////////////////////////////////////////

    if ckPorcentagem.Checked Then begin

    while not ibProdutos.Eof do begin

      IDProduto := ibProdutos.FieldByName('IDPROD').AsInteger;


      if lbl_edtPorcentagem.Text <> '' Then begin

        if lbl_edtPorcentagem.Text <> '' Then begin// se for em branco executa rotina abaixo.

          if (Pos(',',lbl_edtPorcentagem.Text)>0) and (lbl_edtPorcentagem.Text <> '') Then begin

            ValorPorcentagem := StrToFloat(StringReplace(lbl_edtPorcentagem.Text,ThousandSeparator,'',[rfReplaceAll]));
            ValorVenda := StrToFloat(StringReplace(FloatToStr(ibProdutos.FieldByName('VALORVENDAA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
            Valor3 := ValorVenda * ValorPorcentagem;

            Valor4 := Valor3 /100;

            Valor5 := (Valor4 + ValorVenda);

            Total := StringReplace(FloattoStr(Valor5),ThousandSeparator,'',[rfReplaceAll]);
            Total := StringReplace(Total,DecimalSeparator,'.',[rfReplaceAll]);

          end else begin

            ValorPorcentagem := StrToFloat(StringReplace(lbl_edtPorcentagem.Text,ThousandSeparator,'',[rfReplaceAll]));
            ValorVenda := StrToFloat(StringReplace(FloatToStr(ibProdutos.FieldByName('VALORVENDAA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
            Valor3 := ValorVenda * ValorPorcentagem;

            Valor4 := Valor3 /100;

            Valor5 := (Valor4 + ValorVenda);

            Total := StringReplace(FloattoStr(Valor5),ThousandSeparator,'',[rfReplaceAll]);
            Total := StringReplace(Total,DecimalSeparator,'.',[rfReplaceAll]);

          end;{if}

        end;{if}

      end;//label custo

       if IDProduto > 0 Then begin

          ibTempProd.Close;
          ibTempProd.SQL.Clear;
          ibTempProd.SQL.Add('UPDATE CADPRODUTOS SET '
          + 'VALORVENDAA = ''' + Total + ''' WHERE IDPROD=''' + IntToStr(IDProduto) + '''');
          ibTempProd.ExecSQL;

          Commit(ibTempProd);


          if AutorizaAutEstoque Then begin

            ibEntrProdEstoque.Close;
            ibEntrProdEstoque.SQL.Clear;
            ibEntrProdEstoque.SQL.Add('SELECT * FROM TBLENTRADAESTOQUEPROD WHERE IDPROD=''' + IntToStr(IDProduto) + '''');
            ibEntrProdEstoque.Open;

            QtdeEstoque := StrToFloat(StringReplace(FloatToStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

            QtdeEstoque := QtdeEstoque * Valor5;

            TotalEstoque := StringReplace(FloattoStr(QtdeEstoque),ThousandSeparator,'',[rfReplaceAll]);
            TotalEstoque := StringReplace(TotalEstoque,DecimalSeparator,'.',[rfReplaceAll]);

            ibEntrProdEstoque.Close;
            ibEntrProdEstoque.SQL.Clear;
            ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
            + 'VLRTOTAL = ''' + TotalEstoque + ''' WHERE IDPROD=''' + IntToStr(IDProduto) + '''');
            ibEntrProdEstoque.ExecSQL;

            Commit(ibEntrProdEstoque);

          end;//if autoriza estoque

       end;//if
    ibProdutos.Next;

    end;//WHILE
  ////////////////////////////////////////////////////////////////////////////////

    end;//if ck porcentagem

////////////////////////////////////////////////////////////////////////////////

    if ckValor.Checked Then begin

      while not ibProdutos.Eof do begin

        IDProduto := ibProdutos.FieldByName('IDPROD').AsInteger;


        if lbl_edtPorcentagem.Text <> '' Then begin

          if lbl_edtPorcentagem.Text <> '' Then begin// se for em branco executa rotina abaixo.

            if (Pos(',',lbl_edtPorcentagem.Text)>0) and (lbl_edtPorcentagem.Text <> '') Then begin

              ValorAlteracao := StrToFloat(StringReplace(lbl_edtPorcentagem.Text,ThousandSeparator,'',[rfReplaceAll]));
              Valor6 := StrToFloat(StringReplace(FloatToStr(ibProdutos.FieldByName('VALORVENDAA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
              Valor7 := Valor6 + ValorAlteracao;

              Valor8 := Valor7;

              TotalSomado := StringReplace(FloattoStr(Valor8),ThousandSeparator,'',[rfReplaceAll]);
              TotalSomado := StringReplace(TotalSomado,DecimalSeparator,'.',[rfReplaceAll]);

            end else begin

              ValorAlteracao := StrToFloat(StringReplace(lbl_edtPorcentagem.Text,ThousandSeparator,'',[rfReplaceAll]));
              Valor6 := StrToFloat(StringReplace(FloatToStr(ibProdutos.FieldByName('VALORVENDAA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
              Valor7 := Valor6 + ValorAlteracao;

              Valor8 := Valor7;

              TotalSomado := StringReplace(FloattoStr(Valor8),ThousandSeparator,'',[rfReplaceAll]);
              TotalSomado := StringReplace(TotalSomado,DecimalSeparator,'.',[rfReplaceAll]);

            end;{if}

          end;{if}

        end;//label custo

         if IDProduto > 0 Then begin

            ibTempProd.Close;
            ibTempProd.SQL.Clear;
            ibTempProd.SQL.Add('UPDATE CADPRODUTOS SET '
            + 'VALORVENDAA = ''' + TotalSomado + ''' WHERE IDPROD=''' + IntToStr(IDProduto) + '''');
            ibTempProd.ExecSQL;

            Commit(ibTempProd);


            if AutorizaAutEstoque Then begin

              ibEntrProdEstoque.Close;
              ibEntrProdEstoque.SQL.Clear;
              ibEntrProdEstoque.SQL.Add('SELECT * FROM TBLENTRADAESTOQUEPROD WHERE IDPROD=''' + IntToStr(IDProduto) + '''');
              ibEntrProdEstoque.Open;

              QtdeEstoque := StrToFloat(StringReplace(FloatToStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

              QtdeEstoque := QtdeEstoque * Valor8;

              TotalEstoque := StringReplace(FloattoStr(QtdeEstoque),ThousandSeparator,'',[rfReplaceAll]);
              TotalEstoque := StringReplace(TotalEstoque,DecimalSeparator,'.',[rfReplaceAll]);

              ibEntrProdEstoque.Close;
              ibEntrProdEstoque.SQL.Clear;
              ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
              + 'VLRTOTAL = ''' + TotalEstoque + ''' WHERE IDPROD=''' + IntToStr(IDProduto) + '''');
              ibEntrProdEstoque.ExecSQL;

              Commit(ibEntrProdEstoque);

            end;//if autoriza estoque

    ////////////////////////////////////////////////////////////////////////////////

        ibProdutos.Next;

         end;//if prod >0

      end;//while

    end;//if ckvalor

  end;//with

end;

procedure TfrmTblPreco.EstornarLancto;

var

IDFornecedor, IDFornecedorProd : TClasseCombo;
ValorVenda, ValorPorcentagem, Valor1, Valor2, VaLor3, Valor4, Valor5  : Real;
ValorAlteracao, Valor6, Valor7, Valor8 : Real;
StringFornecedor, Total, TotalSomado, Fabricante, TotalEstoque : String;
IDProduto : Integer;
QtdeEstoque : Real;
ConfirmaEstoque : Integer;
AutorizaAutEstoque : Boolean;

begin

  with dmModule do begin

    if cboFornecedores.ItemIndex > -1 Then begin

      IDFornecedor := TClasseCombo(cboFornecedores.Items.Objects[cboFornecedores.ItemIndex]);
      StringFornecedor :=  InttoStr( IDFornecedor.ID );

    Commit(ibProdutos);
    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE FORNECEDOR='''+ IntToStr(IDFornecedor.ID) +'''');
    ibProdutos.Open;

    (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos');


    end;

    if lbl_edtFabricante.Caption <> '' Then begin

      Fabricante :=  lbl_edtFabricante.Caption;

    Commit(ibProdutos);
    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE FABRICANTE=''' + Fabricante + '''');
    ibProdutos.Open;

    (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos');


    end;//if


    ConfirmaEstoque := Application.MessageBox('Este procedimento tamb�m atualiza o valor de estoque, clique em sim para atualizar ou n�o para bloquear o procedimento','Atualizar Valor de Estoque',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

    if ConfirmaEstoque = 6 Then begin

    AutorizaAutEstoque := True;

    end;

////////////////////////////////////////////////////////////////////////////////

    if ckPorcentagem.Checked Then begin

    while not ibProdutos.Eof do begin

      IDProduto := ibProdutos.FieldByName('IDPROD').AsInteger;


      if lbl_edtPorcentagem.Text <> '' Then begin

        if lbl_edtPorcentagem.Text <> '' Then begin// se for em branco executa rotina abaixo.

          if (Pos(',',lbl_edtPorcentagem.Text)>0) and (lbl_edtPorcentagem.Text <> '') Then begin

            ValorPorcentagem := StrToFloat(StringReplace(lbl_edtPorcentagem.Text,ThousandSeparator,'',[rfReplaceAll]));
            ValorVenda := StrToFloat(StringReplace(FloatToStr(ibProdutos.FieldByName('VALORVENDAA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
            Valor3 := ValorVenda * ValorPorcentagem;

            Valor4 := Valor3 /100;

            Valor5 := (ValorVenda - Valor4);

            Total := StringReplace(FloattoStr(Valor5),ThousandSeparator,'',[rfReplaceAll]);
            Total := StringReplace(Total,DecimalSeparator,'.',[rfReplaceAll]);

          end else begin

            ValorPorcentagem := StrToFloat(StringReplace(lbl_edtPorcentagem.Text,ThousandSeparator,'',[rfReplaceAll]));
            ValorVenda := StrToFloat(StringReplace(FloatToStr(ibProdutos.FieldByName('VALORVENDAA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
            Valor3 := ValorVenda * ValorPorcentagem;

            Valor4 := Valor3 /100;

            Valor5 := (ValorVenda - Valor4);

            Total := StringReplace(FloattoStr(Valor5),ThousandSeparator,'',[rfReplaceAll]);
            Total := StringReplace(Total,DecimalSeparator,'.',[rfReplaceAll]);

          end;{if}

        end;{if}

      end;//label custo

       if IDProduto > 0 Then begin

          ibTempProd.Close;
          ibTempProd.SQL.Clear;
          ibTempProd.SQL.Add('UPDATE CADPRODUTOS SET '
          + 'VALORVENDAA = ''' + Total + ''' WHERE IDPROD=''' + IntToStr(IDProduto) + '''');
          ibTempProd.ExecSQL;

          Commit(ibTempProd);

          if AutorizaAutEstoque Then begin

            ibEntrProdEstoque.Close;
            ibEntrProdEstoque.SQL.Clear;
            ibEntrProdEstoque.SQL.Add('SELECT * FROM TBLENTRADAESTOQUEPROD WHERE IDPROD=''' + IntToStr(IDProduto) + '''');
            ibEntrProdEstoque.Open;

            QtdeEstoque := StrToFloat(StringReplace(FloatToStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

            QtdeEstoque := QtdeEstoque * Valor5;

            TotalEstoque := StringReplace(FloattoStr(QtdeEstoque),ThousandSeparator,'',[rfReplaceAll]);
            TotalEstoque := StringReplace(TotalEstoque,DecimalSeparator,'.',[rfReplaceAll]);

            ibEntrProdEstoque.Close;
            ibEntrProdEstoque.SQL.Clear;
            ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
            + 'VLRTOTAL = ''' + TotalEstoque + ''' WHERE IDPROD=''' + IntToStr(IDProduto) + '''');
            ibEntrProdEstoque.ExecSQL;

            Commit(ibEntrProdEstoque);

          end;//if autoriza estoque

       end;//if
    ibProdutos.Next;

    end;//WHILE
  ////////////////////////////////////////////////////////////////////////////////

    end;//if ck porcentagem

////////////////////////////////////////////////////////////////////////////////

    if ckValor.Checked Then begin

    while not ibProdutos.Eof do begin

      IDProduto := ibProdutos.FieldByName('IDPROD').AsInteger;


      if lbl_edtPorcentagem.Text <> '' Then begin

        if lbl_edtPorcentagem.Text <> '' Then begin// se for em branco executa rotina abaixo.

          if (Pos(',',lbl_edtPorcentagem.Text)>0) and (lbl_edtPorcentagem.Text <> '') Then begin

            ValorAlteracao := StrToFloat(StringReplace(lbl_edtPorcentagem.Text,ThousandSeparator,'',[rfReplaceAll]));
            Valor6 := StrToFloat(StringReplace(FloatToStr(ibProdutos.FieldByName('VALORVENDAA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
            Valor7 := Valor6 - ValorAlteracao;

            Valor8 := Valor7;

            TotalSomado := StringReplace(FloattoStr(Valor8),ThousandSeparator,'',[rfReplaceAll]);
            TotalSomado := StringReplace(TotalSomado,DecimalSeparator,'.',[rfReplaceAll]);

          end else begin

            ValorAlteracao := StrToFloat(StringReplace(lbl_edtPorcentagem.Text,ThousandSeparator,'',[rfReplaceAll]));
            Valor6 := StrToFloat(StringReplace(FloatToStr(ibProdutos.FieldByName('VALORVENDAA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
            Valor7 := Valor6 - ValorAlteracao;

            Valor8 := Valor7;

            TotalSomado := StringReplace(FloattoStr(Valor8),ThousandSeparator,'',[rfReplaceAll]);
            TotalSomado := StringReplace(TotalSomado,DecimalSeparator,'.',[rfReplaceAll]);

          end;{if}

        end;{if}

      end;//label custo

       if IDProduto > 0 Then begin

          ibTempProd.Close;
          ibTempProd.SQL.Clear;
          ibTempProd.SQL.Add('UPDATE CADPRODUTOS SET '
          + 'VALORVENDAA = ''' + TotalSomado + ''' WHERE IDPROD=''' + IntToStr(IDProduto) + '''');
          ibTempProd.ExecSQL;

          Commit(ibTempProd);

          if AutorizaAutEstoque Then begin

            ibEntrProdEstoque.Close;
            ibEntrProdEstoque.SQL.Clear;
            ibEntrProdEstoque.SQL.Add('SELECT * FROM TBLENTRADAESTOQUEPROD WHERE IDPROD=''' + IntToStr(IDProduto) + '''');
            ibEntrProdEstoque.Open;

            QtdeEstoque := StrToFloat(StringReplace(FloatToStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

            QtdeEstoque := QtdeEstoque * Valor8;

            TotalEstoque := StringReplace(FloattoStr(QtdeEstoque),ThousandSeparator,'',[rfReplaceAll]);
            TotalEstoque := StringReplace(TotalEstoque,DecimalSeparator,'.',[rfReplaceAll]);

            ibEntrProdEstoque.Close;
            ibEntrProdEstoque.SQL.Clear;
            ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
            + 'VLRTOTAL = ''' + TotalEstoque + ''' WHERE IDPROD=''' + IntToStr(IDProduto) + '''');
            ibEntrProdEstoque.ExecSQL;

            Commit(ibEntrProdEstoque);

          end;//if autoriza estoque

       end;//if

  ////////////////////////////////////////////////////////////////////////////////

      ibProdutos.Next;

      end;//while

    end;//if ckvalor

  end;//with

end;


procedure TfrmTblPreco.FormShow(Sender: TObject);
begin

  ckPorcentagem.Checked := False;
  ckValor.Checked := False;
  lbl_edtPorcentagem.Text := '';
  cboFornecedores.ClearSelection;

  with dmModule do begin

    ExecSELECTFornecedor;

  end;//with

end;

procedure TfrmTblPreco.ibeaAtualizarClick(Sender: TObject);

var

ConfirmaAtualizacao : Integer;
i : Integer;

begin

  with dmModule do begin

    if (ckPorcentagem.Checked = False) and (ckValor.Checked = False) Then begin

      Application.MessageBox('Aten��o � necess�rio clicar em porcentagem ou valor','Notifica��o:Op��o n�o escolhida',+MB_OK+MB_DEFBUTTON1+MB_ICONERROR);

    end else begin

      if (lbl_edtPorcentagem.Text = '') or (lbl_edtPorcentagem.Text = '0') Then begin


        Application.MessageBox('O campo valor/porcentagem est� sem valor para altera��o??','Notifica��o:Campo em branco ou com valor zero',+MB_OK+MB_DEFBUTTON1+MB_ICONERROR);

      end else begin

        ConfirmaAtualizacao :=Application.MessageBox(Pchar('Este procedimento atualiza todos os pre�os do Fornecedor:"' + cboFornecedores.Text
          +'"deseja continuar?'),'Notifica��o:Atualiza��o de pre�os',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);


        if ConfirmaAtualizacao = 6 Then begin

          AtualizarPreco;

          for I := ProgressBar1.Min to ProgressBar1.Max do begin
          { Atualiza a posi��o da ProgressBar }
          ProgressBar1.Position := I;
          { Repinta a StatusBar para for�ar a atualiza��o visual }
          StatusBar1.Repaint;
          { Aguarda 50 milisegundos }
          Sleep(50);
          end;

          { Aguarde 500 milisegundos }
          Sleep(500);
          { Reseta (zera) a ProgressBar }
          ProgressBar1.Position := ProgressBar1.Min;
          { Repinta a StatusBar para for�ar a atualiza��o visual }
          StatusBar1.Repaint;

          Application.MessageBox('Procedimento realizado com sucesso!!','Notifica��o:Pre�os atualizados',+MB_OK+MB_DEFBUTTON1+MB_ICONINFORMATION);

          ckPorcentagem.Checked := False;
          ckValor.Checked := False;
          lbl_edtPorcentagem.Text := '';
          cboFornecedores.ClearSelection;

        end;//if

      end;//if campo porcentagem

    end;//if campo porcentagem valor em branco

  end;//with

end;

procedure TfrmTblPreco.ckPorcentagemCheck(Sender: TObject);
begin

  if ckPorcentagem.Checked Then begin

    ckValor.Checked := False;

  end;

end;

procedure TfrmTblPreco.ckValorCheck(Sender: TObject);
begin

  if ckValor.Checked Then begin

    ckPorcentagem.Checked := False;

  end;

end;

procedure TfrmTblPreco.StatusBar1DrawPanel(StatusBar: TStatusBar;
  Panel: TStatusPanel; const Rect: TRect);
begin
  { Se for o primeiro painel... }
  if Panel.Index = 0 then begin
  { Ajusta a tamanho da ProgressBar de acordo com
  o tamanho do painel }
  ProgressBar1.Width := Rect.Right - Rect.Left +1;
  ProgressBar1.Height := Rect.Bottom - Rect.Top +1;
  { Pinta a ProgressBar no DC (device-context) da StatusBar }
  ProgressBar1.PaintTo(StatusBar.Canvas.Handle, Rect.Left, Rect.Top);
  end;
end;

procedure TfrmTblPreco.ibeaCorrecaoClick(Sender: TObject);

var

ConfirmaAtualizacao : Integer;
i : Integer;

begin

  with dmModule do begin

    if (ckPorcentagem.Checked = False) and (ckValor.Checked = False) Then begin

      Application.MessageBox('Aten��o � necess�rio clicar em porcentagem ou valor','Notifica��o:Op��o n�o escolhida',+MB_OK+MB_DEFBUTTON1+MB_ICONERROR);

    end else begin


      if (lbl_edtPorcentagem.Text = '') or (lbl_edtPorcentagem.Text = '0') Then begin


        Application.MessageBox('O campo valor/porcentagem est� sem valor para altera��o??','Notifica��o:Campo em branco ou com valor zero',+MB_OK+MB_DEFBUTTON1+MB_ICONERROR);

      end else begin

        ConfirmaAtualizacao :=Application.MessageBox(Pchar('Este procedimento Estorna todos os pre�os do Fornecedor:"' + cboFornecedores.Text
          +'"deseja continuar?'),'Notifica��o:Estorno de pre�os',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);


        if ConfirmaAtualizacao = 6 Then begin

          EstornarLancto;

          for I := ProgressBar1.Min to ProgressBar1.Max do begin
          { Atualiza a posi��o da ProgressBar }
          ProgressBar1.Position := I;
          { Repinta a StatusBar para for�ar a atualiza��o visual }
          StatusBar1.Repaint;
          { Aguarda 50 milisegundos }
          Sleep(50);
          end;

          { Aguarde 500 milisegundos }
          Sleep(500);
          { Reseta (zera) a ProgressBar }
          ProgressBar1.Position := ProgressBar1.Min;
          { Repinta a StatusBar para for�ar a atualiza��o visual }
          StatusBar1.Repaint;

          Application.MessageBox('Procedimento realizado com sucesso!!','Notifica��o:Pre�os atualizados',+MB_OK+MB_DEFBUTTON1+MB_ICONINFORMATION);

          ckPorcentagem.Checked := False;
          ckValor.Checked := False;
          lbl_edtPorcentagem.Text := '';
          cboFornecedores.ClearSelection;

        end;//if

      end;//if campo porcentagem

    end;//if campo porcentagem valor

  end;//with


end;

procedure TfrmTblPreco.ibeaSairClick(Sender: TObject);
begin
Close;
end;

procedure TfrmTblPreco.cboFornecedoresChange(Sender: TObject);
begin

  if lbl_edtFabricante.Caption <> '' Then begin

    lbl_edtFabricante.Caption := '';

  end;//if

end;



end.
