unit untRClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BmsXPCheckBox, BmsXPButton, StdCtrls, ExtCtrls, IBQuery, QRExport,
  ComObj;

type
  TfrmRClientes = class(TForm)
    ibeaSair: TBmsXPButton;
    ibeaVisualizar: TBmsXPButton;
    lbl_edtPorLetra: TLabeledEdit;
    ibeaLimpar: TBmsXPButton;
    ckGeral: TBmsXPCheckBox;
    ckClientesBar: TBmsXPCheckBox;
    procedure ibeaSairClick(Sender: TObject);
    procedure Commit(IBQueryExec : TIBQuery);
    procedure FormShow(Sender: TObject);
    procedure ibeaVisualizarClick(Sender: TObject);
    procedure ibeaLimparClick(Sender: TObject);
    procedure lbl_edtPorLetraChange(Sender: TObject);
    procedure ckGeralCheck(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRClientes: TfrmRClientes;

implementation

uses untdmModule, untRelClientes, DB;

{$R *.dfm}

procedure TfrmRClientes.ibeaSairClick(Sender: TObject);
begin
Close;
end;

procedure TfrmRClientes.Commit(IBQueryExec : TIBQuery);

begin

  with IBQueryExec do begin

    with dmModule do begin

      SQL.Clear;
      SQL.Add('Commit');
      Open;
      Close;

    end;//with dmmodule

  end;//with ibquery exec

end;


procedure TfrmRClientes.FormShow(Sender: TObject);
begin
ckGeral.Checked := False;
lbl_edtPorLetra.Clear;
end;

procedure TfrmRClientes.ibeaVisualizarClick(Sender: TObject);

var

ConfirmaRelatorioWord,ConfirmaRelatorioExcel : Integer;
Excel,MSWord : Variant;
Linha,Coluna:Integer;
IDClass : Integer;
RelatorioWord,RelatorioExcel : String;
begin

  with dmModule do begin

    if (ckGeral.Checked = True)and(ckClientesBar.Checked = False) Then begin

      ibClassificacao.Close;
      ibClassificacao.SQL.Clear;
      ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
      ibClassificacao.Open;
      IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO CLIENTE NA VARIAVEL.

     { ibClassificacao.Close;
      ibClassificacao.SQL.Clear;
      ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Com''');
      ibClassificacao.Open; }
  //    IDClassTelCom := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO CLIENTE NA VARIAVEL.

      {ibClassificacao.Close;
      ibClassificacao.SQL.Clear;
      ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Celular''');
      ibClassificacao.Open;
      IDClassCelular := ibClassificacao.FieldByName('IDCLASS').AsInteger;} // ATRIBUI A IDENTIFICAÇÃO DO CLIENTE NA VARIAVEL.

      //SELECT PARA TRAZER OS DADOS PRO RELATORIO

     { Commit(ibCadastro);
      ibCadastro.Close;
      ibCadastro.SQL.Clear;
      ibCadastro.SQL.Add('SELECT TBLCADASTRO.NOME,TBLCADASTRO.NUMERO,'
      + 'TBLCADDOCUMENTACAO.CODIGO,TBLLOGRADOURO.ENDERECO,'
      + 'TBLCONTATO.CONTATO As Telefone,TBLCONTATO.TIPO FROM TBLCADASTRO '
      + 'INNER JOIN TBLCADDOCUMENTACAO ON TBLCADASTRO.IDCAD=TBLCADDOCUMENTACAO.IDCAD '
      + 'INNER JOIN TBLLOGRADOURO ON TBLCADASTRO.IDCAD=TBLLOGRADOURO.IDCAD '                                      //   or TBLCONTATO.TIPO=''' + IntToStr(IDClassCelular) + '''
      + 'INNER JOIN TBLCONTATO ON TBLCADASTRO.IDCAD=TBLCONTATO.IDCAD '
      + 'WHERE TBLCADASTRO.IDCLASS=''' + IntToStr(IDClass) + ''' and TBLCONTATO.TIPO=''' + IntToStr(IDClassTelCom) + '''   ORDER BY TBLCADASTRO.NOME');
      ibCadastro.Open; }

      Commit(ibCadastro);
      ibCadastro.Close;
      ibCadastro.SQL.Clear;
      ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLLOGRADOURO.ENDERECO FROM TBLCADASTRO '
      + 'LEFT OUTER JOIN TBLLOGRADOURO ON TBLCADASTRO.IDCAD=TBLLOGRADOURO.IDCAD '                                      //   or TBLCONTATO.TIPO=''' + IntToStr(IDClassCelular) + '''
      + 'WHERE(TBLCADASTRO.IDCLASS=''' + IntToStr(IDClass) + ''')ORDER BY TBLCADASTRO.NOME');
      ibCadastro.Open;

     //   ibTempCep := TIBQuery.Create(Self); //CRIA O COMPONENTE NO FORMULARIO ATUAL

     { with ibTempCep do begin

        //faz select da tbl cep atraves do componente criado
        ibTempCep.Database := IBDCep;
        ibTempCep.SQL.Clear;
        ibTempCep.SQL.Add('SELECT LOCAL,BAIRRO,CIDADE,UF,CEP FROM TBLCEP WHERE CEP=''' + IntToStr(IDClass) + '''');
        ibTempCep.Open;   }

     // end;{with}

      Application.CreateForm(TfrmRelClientes, frmRelClientes);

      TRY

        with frmRelClientes do begin

          frmRelClientes.qrpRelClientes.DataSet := ibCadastro;
        //  frmRelClientes.qrpClientes.DataSet := ibDocumentacao;
        //  frmRelClientes.qrpClientes.DataSet := ibLogradouro;


          qrdbCodigoCli.DataSet     := ibCadastro;
          qrdbCodigoCli.DataField   := ibCadastro.FieldByName('CODIGO').FieldName;

          //ATRIBUI OS NOMES DOS CAMPOS AOS QRDBTEXT DO QUICKREPORT
          qrdbNomeCliente.DataSet    := ibCadastro;
          qrdbNomeCliente.DataField  := ibCadastro.FieldByName('NOME').FieldName;

          qrdbEndCli.DataSet   := ibCadastro;
          qrdbEndCli.DataField := ibCadastro.FieldByName('ENDERECO').FieldName;


          qrdbTelefone.DataSet     := ibCadastro;
          qrdbTelefone.DataField   := ibCadastro.FieldByName('CEP').FieldName;

       //  qrdbCel.DataSet     := ibCadastro;
       //   qrdbCel.DataField   := ibCadastro.FieldByName('Telefone').FieldName;


          qrdbNumeroCli.DataSet     := ibCadastro;
          qrdbNumeroCli.DataField   := ibCadastro.FieldByName('NUMERO').FieldName;

  ////////////////////////////////////////////////////////////////////////////////

  ////Excel := CreateOleObject('Excel.Application');
  ////Excel.Visible :=True;
  ////Excel.Workbooks.Add;
  ////Fdp:=ibCadastro.FieldByName('NOME').asstring[Coluna-1];
  ////Caralho.cells[Linha+2,coluna]:=Fdp;

  //Excel.WorkBooks.Open('D:\Gerar.xls');
  //Excel.WorkBooks[1].Sheets[1].Cells[2,7]:=Now;
  ////Excel.WorkBooks[1].Sheets[1].Cells[3,2]:=ibCadastro.FieldByName('NOME').AsString;}
  {Excel.WorkBooks[1].Sheets[1].Cells[3,5]:=DMCotacao.TBLiberaColeta.Value +
  '-' +DMCotacao.TBLiberaUF_Coleta.Value;
  Excel.WorkBooks[1].Sheets[1].Cells[4,2]:=DMCotacao.TBLiberaDestinatario.Value;
  Excel.WorkBooks[1].Sheets[1].Cells[4,5]:=DMCotacao.TBLiberaDestino.Value +
  '-' +DMCotacao.TBLiberaUF_Destino.Value;
  Excel.WorkBooks[1].Sheets[1].Cells[5,2]:=DMCotacao.TBLiberaQuantidade.AsString;
  Excel.WorkBooks[1].Sheets[1].Cells[5,5]:=DMCotacao.TBLiberaFreteEmpresa.AsString;
  Excel.WorkBooks[1].Sheets[1].Cells[5,7]:=DMCotacao.TBLiberaContrato.AsString;
  Excel.WorkBooks[1].Sheets[1].Cells[6,2]:=FormCTEmbarque.Edit2.Text;
  Excel.WorkBooks[1].Sheets[1].Cells[6,5]:=FormCTEmbarque.Edit3.Text;
  Excel.WorkBooks[1].Sheets[1].Cells[6,7]:=FormCTEmbarque.Edit4.Text;
  Excel.WorkBooks[1].Sheets[1].Cells[7,2]:=DMCotacao.TBLiberaObservacao.Value;
  DmCotacao.QCTEmbarque.Open;}
  ////Linha:=10;
  ////While not ibCadastro.Eof do
  ////Begin
  ////Excel.WorkBooks[1].Sheets[1].Cells[Linha,2]:=ibCadastro.FieldByName('NOME').AsString;
  {Excel.WorkBooks[1].Sheets[1].Cells[Linha,3]:=DMCotacao.QCTEmbarqueNotaFiscal.Value;
  Excel.WorkBooks[1].Sheets[1].Cells[Linha,4]:=DMCotacao.QCTEmbarquePeso.Value;
  Excel.WorkBooks[1].Sheets[1].Cells[Linha,5]:=DMCotacao.QCTEmbarquePlaca.Value;
  Excel.WorkBooks[1].Sheets[1].Cells[Linha,6]:=DMCotacao.QCTEmbarqueData.Value;}
  ////ibCadastro.Next;
  ////Linha:=Linha+1;
  ////end;
  ////Excel.WorkBooks[1].SaveAs('D:\ControleTeste.xls');
  //DMCotacao.TBCotacao.Refresh;
  //end;



  //qrpRelClientes.dataset.First;
  {try
  for linha:=0 to qrpRelClientes.RecordCount-1 do
  begin
  for coluna:=1 to qrpRelClientes.DataSet.FieldCount do
  begin
  valor:= qrpRelClientes.DataSet.Fields[coluna-1].AsString; excel.cells [linha+3,coluna]:=valor;
  end;
  qrpRelClientes.DataSet.Next;
  end;
  for coluna:=1 to qrpRelClientes.dataset.FieldCount do
  begin
  valor:= qrpRelClientes.dataset.Fields[coluna-1].DisplayLabel;
  excel.cells[1,coluna]:=valor;
  end;
  excel.columns.AutoFit;
  excel.visible:=true;
  except
  Application.MessageBox ('Aconteceu um erro desconhecido durante a conversão'+
  'da tabela para o Ms-Excel','Erro',MB_OK+MB_ICONEXCLAMATION);
  end;}



  ////////////////////////////////////////////////////////////////////////////////

  //ConfirmaRelatorio := Application.MessageBox('Deseja Emitir Relatório para o excel?','relatório para excel',+MB_YESNO+MB_ICONQUESTION);

  //if ConfirmaRelatorio = 6 Then begin


  //qrpRelClientes.ExportToFilter(TQRAsciiExportFilter.Create('D:\Clientes.xls'));

  //end;//if

          qrpRelClientes.Preview;

        end; {if}

      EXCEPT
        on E : Exception do begin
           frmRelClientes.Release;
           MessageDlg('Ocorreu um erro ao tentar mostrar o Formulário: ' + E.Message,mtError,[mbOk],0);
        end;
      END;

    end;//if ck geral

////////////////////////////////////////////////////////////////////////////////

    if (ckClientesBar.Checked = True)and(ckGeral.Checked = True) Then begin

      ibClassificacao.Close;
      ibClassificacao.SQL.Clear;
      ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
      ibClassificacao.Open;
      IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO CLIENTE NA VARIAVEL.

     { ibClassificacao.Close;
      ibClassificacao.SQL.Clear;
      ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Com''');
      ibClassificacao.Open; }
  //    IDClassTelCom := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO CLIENTE NA VARIAVEL.

      {ibClassificacao.Close;
      ibClassificacao.SQL.Clear;
      ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Celular''');
      ibClassificacao.Open;
      IDClassCelular := ibClassificacao.FieldByName('IDCLASS').AsInteger;} // ATRIBUI A IDENTIFICAÇÃO DO CLIENTE NA VARIAVEL.

      //SELECT PARA TRAZER OS DADOS PRO RELATORIO

     { Commit(ibCadastro);
      ibCadastro.Close;
      ibCadastro.SQL.Clear;
      ibCadastro.SQL.Add('SELECT TBLCADASTRO.NOME,TBLCADASTRO.NUMERO,'
      + 'TBLCADDOCUMENTACAO.CODIGO,TBLLOGRADOURO.ENDERECO,'
      + 'TBLCONTATO.CONTATO As Telefone,TBLCONTATO.TIPO FROM TBLCADASTRO '
      + 'INNER JOIN TBLCADDOCUMENTACAO ON TBLCADASTRO.IDCAD=TBLCADDOCUMENTACAO.IDCAD '
      + 'INNER JOIN TBLLOGRADOURO ON TBLCADASTRO.IDCAD=TBLLOGRADOURO.IDCAD '                                      //   or TBLCONTATO.TIPO=''' + IntToStr(IDClassCelular) + '''
      + 'INNER JOIN TBLCONTATO ON TBLCADASTRO.IDCAD=TBLCONTATO.IDCAD '
      + 'WHERE TBLCADASTRO.IDCLASS=''' + IntToStr(IDClass) + ''' and TBLCONTATO.TIPO=''' + IntToStr(IDClassTelCom) + '''   ORDER BY TBLCADASTRO.NOME');
      ibCadastro.Open; }

      Commit(ibCadastro);
      ibCadastro.Close;
      ibCadastro.SQL.Clear;
      ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLLOGRADOURO.ENDERECO FROM TBLCADASTRO '
      + 'LEFT OUTER JOIN TBLLOGRADOURO ON TBLCADASTRO.IDCAD=TBLLOGRADOURO.IDCAD '                                      //   or TBLCONTATO.TIPO=''' + IntToStr(IDClassCelular) + '''
      + 'WHERE(TBLCADASTRO.IDCLASS=''' + IntToStr(IDClass) + ''')and(TBLCADASTRO.CLIENTEBAR=''Sim'')ORDER BY TBLCADASTRO.NOME');
      ibCadastro.Open;

     //   ibTempCep := TIBQuery.Create(Self); //CRIA O COMPONENTE NO FORMULARIO ATUAL

     { with ibTempCep do begin

        //faz select da tbl cep atraves do componente criado
        ibTempCep.Database := IBDCep;
        ibTempCep.SQL.Clear;
        ibTempCep.SQL.Add('SELECT LOCAL,BAIRRO,CIDADE,UF,CEP FROM TBLCEP WHERE CEP=''' + IntToStr(IDClass) + '''');
        ibTempCep.Open;   }

     // end;{with}

      Application.CreateForm(TfrmRelClientes, frmRelClientes);

      TRY

        with frmRelClientes do begin

          frmRelClientes.qrpRelClientes.DataSet := ibCadastro;
        //  frmRelClientes.qrpClientes.DataSet := ibDocumentacao;
        //  frmRelClientes.qrpClientes.DataSet := ibLogradouro;


          qrdbCodigoCli.DataSet     := ibCadastro;
          qrdbCodigoCli.DataField   := ibCadastro.FieldByName('CODIGO').FieldName;

          //ATRIBUI OS NOMES DOS CAMPOS AOS QRDBTEXT DO QUICKREPORT
          qrdbNomeCliente.DataSet    := ibCadastro;
          qrdbNomeCliente.DataField  := ibCadastro.FieldByName('NOME').FieldName;

          qrdbEndCli.DataSet   := ibCadastro;
          qrdbEndCli.DataField := ibCadastro.FieldByName('ENDERECO').FieldName;


          qrdbTelefone.DataSet     := ibCadastro;
          qrdbTelefone.DataField   := ibCadastro.FieldByName('CEP').FieldName;

       //  qrdbCel.DataSet     := ibCadastro;
       //   qrdbCel.DataField   := ibCadastro.FieldByName('Telefone').FieldName;


          qrdbNumeroCli.DataSet     := ibCadastro;
          qrdbNumeroCli.DataField   := ibCadastro.FieldByName('NUMERO').FieldName;

  ////////////////////////////////////////////////////////////////////////////////

  ////Excel := CreateOleObject('Excel.Application');
  ////Excel.Visible :=True;
  ////Excel.Workbooks.Add;
  ////Fdp:=ibCadastro.FieldByName('NOME').asstring[Coluna-1];
  ////Caralho.cells[Linha+2,coluna]:=Fdp;

  //Excel.WorkBooks.Open('D:\Gerar.xls');
  //Excel.WorkBooks[1].Sheets[1].Cells[2,7]:=Now;
  ////Excel.WorkBooks[1].Sheets[1].Cells[3,2]:=ibCadastro.FieldByName('NOME').AsString;}
  {Excel.WorkBooks[1].Sheets[1].Cells[3,5]:=DMCotacao.TBLiberaColeta.Value +
  '-' +DMCotacao.TBLiberaUF_Coleta.Value;
  Excel.WorkBooks[1].Sheets[1].Cells[4,2]:=DMCotacao.TBLiberaDestinatario.Value;
  Excel.WorkBooks[1].Sheets[1].Cells[4,5]:=DMCotacao.TBLiberaDestino.Value +
  '-' +DMCotacao.TBLiberaUF_Destino.Value;
  Excel.WorkBooks[1].Sheets[1].Cells[5,2]:=DMCotacao.TBLiberaQuantidade.AsString;
  Excel.WorkBooks[1].Sheets[1].Cells[5,5]:=DMCotacao.TBLiberaFreteEmpresa.AsString;
  Excel.WorkBooks[1].Sheets[1].Cells[5,7]:=DMCotacao.TBLiberaContrato.AsString;
  Excel.WorkBooks[1].Sheets[1].Cells[6,2]:=FormCTEmbarque.Edit2.Text;
  Excel.WorkBooks[1].Sheets[1].Cells[6,5]:=FormCTEmbarque.Edit3.Text;
  Excel.WorkBooks[1].Sheets[1].Cells[6,7]:=FormCTEmbarque.Edit4.Text;
  Excel.WorkBooks[1].Sheets[1].Cells[7,2]:=DMCotacao.TBLiberaObservacao.Value;
  DmCotacao.QCTEmbarque.Open;}
  ////Linha:=10;
  ////While not ibCadastro.Eof do
  ////Begin
  ////Excel.WorkBooks[1].Sheets[1].Cells[Linha,2]:=ibCadastro.FieldByName('NOME').AsString;
  {Excel.WorkBooks[1].Sheets[1].Cells[Linha,3]:=DMCotacao.QCTEmbarqueNotaFiscal.Value;
  Excel.WorkBooks[1].Sheets[1].Cells[Linha,4]:=DMCotacao.QCTEmbarquePeso.Value;
  Excel.WorkBooks[1].Sheets[1].Cells[Linha,5]:=DMCotacao.QCTEmbarquePlaca.Value;
  Excel.WorkBooks[1].Sheets[1].Cells[Linha,6]:=DMCotacao.QCTEmbarqueData.Value;}
  ////ibCadastro.Next;
  ////Linha:=Linha+1;
  ////end;
  ////Excel.WorkBooks[1].SaveAs('D:\ControleTeste.xls');
  //DMCotacao.TBCotacao.Refresh;
  //end;



  //qrpRelClientes.dataset.First;
  {try
  for linha:=0 to qrpRelClientes.RecordCount-1 do
  begin
  for coluna:=1 to qrpRelClientes.DataSet.FieldCount do
  begin
  valor:= qrpRelClientes.DataSet.Fields[coluna-1].AsString; excel.cells [linha+3,coluna]:=valor;
  end;
  qrpRelClientes.DataSet.Next;
  end;
  for coluna:=1 to qrpRelClientes.dataset.FieldCount do
  begin
  valor:= qrpRelClientes.dataset.Fields[coluna-1].DisplayLabel;
  excel.cells[1,coluna]:=valor;
  end;
  excel.columns.AutoFit;
  excel.visible:=true;
  except
  Application.MessageBox ('Aconteceu um erro desconhecido durante a conversão'+
  'da tabela para o Ms-Excel','Erro',MB_OK+MB_ICONEXCLAMATION);
  end;}



  ////////////////////////////////////////////////////////////////////////////////

  //ConfirmaRelatorio := Application.MessageBox('Deseja Emitir Relatório para o excel?','relatório para excel',+MB_YESNO+MB_ICONQUESTION);

  //if ConfirmaRelatorio = 6 Then begin


  //qrpRelClientes.ExportToFilter(TQRAsciiExportFilter.Create('D:\Clientes.xls'));

  //end;//if

          qrpRelClientes.Preview;

        end; {if}

      EXCEPT
        on E : Exception do begin
           frmRelClientes.Release;
           MessageDlg('Ocorreu um erro ao tentar mostrar o Formulário: ' + E.Message,mtError,[mbOk],0);
        end;
      END;

    end;//if ck geral

////////////////////////////////////////////////////////////////////////////////


    if (ckGeral.Checked = False)and(lbl_edtPorLetra.Text <> '') Then begin

      ibClassificacao.Close;
      ibClassificacao.SQL.Clear;
      ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
      ibClassificacao.Open;
      IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO CLIENTE NA VARIAVEL.

     { ibClassificacao.Close;
      ibClassificacao.SQL.Clear;
      ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Com''');
      ibClassificacao.Open; }
  //    IDClassTelCom := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO CLIENTE NA VARIAVEL.

      {ibClassificacao.Close;
      ibClassificacao.SQL.Clear;
      ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Celular''');
      ibClassificacao.Open;
      IDClassCelular := ibClassificacao.FieldByName('IDCLASS').AsInteger;} // ATRIBUI A IDENTIFICAÇÃO DO CLIENTE NA VARIAVEL.

      //SELECT PARA TRAZER OS DADOS PRO RELATORIO

     { Commit(ibCadastro);
      ibCadastro.Close;
      ibCadastro.SQL.Clear;
      ibCadastro.SQL.Add('SELECT TBLCADASTRO.NOME,TBLCADASTRO.NUMERO,'
      + 'TBLCADDOCUMENTACAO.CODIGO,TBLLOGRADOURO.ENDERECO,'
      + 'TBLCONTATO.CONTATO As Telefone,TBLCONTATO.TIPO FROM TBLCADASTRO '
      + 'INNER JOIN TBLCADDOCUMENTACAO ON TBLCADASTRO.IDCAD=TBLCADDOCUMENTACAO.IDCAD '
      + 'INNER JOIN TBLLOGRADOURO ON TBLCADASTRO.IDCAD=TBLLOGRADOURO.IDCAD '                                      //   or TBLCONTATO.TIPO=''' + IntToStr(IDClassCelular) + '''
      + 'INNER JOIN TBLCONTATO ON TBLCADASTRO.IDCAD=TBLCONTATO.IDCAD '
      + 'WHERE TBLCADASTRO.IDCLASS=''' + IntToStr(IDClass) + ''' and TBLCONTATO.TIPO=''' + IntToStr(IDClassTelCom) + '''   ORDER BY TBLCADASTRO.NOME');
      ibCadastro.Open; }

      Commit(ibCadastro);
      ibCadastro.Close;
      ibCadastro.SQL.Clear;
      ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLLOGRADOURO.ENDERECO FROM TBLCADASTRO '
      + 'LEFT OUTER JOIN TBLLOGRADOURO ON TBLCADASTRO.IDCAD=TBLLOGRADOURO.IDCAD '                                      //   or TBLCONTATO.TIPO=''' + IntToStr(IDClassCelular) + '''
      + 'WHERE TBLCADASTRO.IDCLASS=''' + IntToStr(IDClass) + '''and TBLCADASTRO.NOME LIKE '+''''+lbl_edtPorLetra.text+'%'+''' ORDER BY TBLCADASTRO.NOME');
      ibCadastro.Open;

     //   ibTempCep := TIBQuery.Create(Self); //CRIA O COMPONENTE NO FORMULARIO ATUAL

     { with ibTempCep do begin

        //faz select da tbl cep atraves do componente criado
        ibTempCep.Database := IBDCep;
        ibTempCep.SQL.Clear;
        ibTempCep.SQL.Add('SELECT LOCAL,BAIRRO,CIDADE,UF,CEP FROM TBLCEP WHERE CEP=''' + IntToStr(IDClass) + '''');
        ibTempCep.Open;   }

     // end;{with}

      Application.CreateForm(TfrmRelClientes, frmRelClientes);

      TRY

        with frmRelClientes do begin

          frmRelClientes.qrpRelClientes.DataSet := ibCadastro;
        //  frmRelClientes.qrpClientes.DataSet := ibDocumentacao;
        //  frmRelClientes.qrpClientes.DataSet := ibLogradouro;


        //  qrdbCodigoCli.DataSet     := ibCadastro;
       //   qrdbCodigoCli.DataField   := ibCadastro.FieldByName('CODIGO').FieldName;

          //ATRIBUI OS NOMES DOS CAMPOS AOS QRDBTEXT DO QUICKREPORT
          qrdbNomeCliente.DataSet    := ibCadastro;
          qrdbNomeCliente.DataField  := ibCadastro.FieldByName('NOME').FieldName;

          qrdbEndCli.DataSet   := ibCadastro;
          qrdbEndCli.DataField := ibCadastro.FieldByName('ENDERECO').FieldName;


          qrdbTelefone.DataSet     := ibCadastro;
          qrdbTelefone.DataField   := ibCadastro.FieldByName('CEP').FieldName;

       //  qrdbCel.DataSet     := ibCadastro;
       //   qrdbCel.DataField   := ibCadastro.FieldByName('Telefone').FieldName;


          qrdbNumeroCli.DataSet     := ibCadastro;
          qrdbNumeroCli.DataField   := ibCadastro.FieldByName('NUMERO').FieldName;

////////////////////////////////////////////////////////////////////////////////

         { Commit(ibConfig);
          ibConfig.Close;
          ibConfig.SQL.Clear;
          ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
          ibConfig.Open;

          RelatorioWord   := ibConfig.FieldByName('RWORD').AsString;
          RelatorioExcel  := ibConfig.FieldByName('REXCEL').AsString; }

////////////////////////////////////////////////////////////////////////////////

 { if RelatorioWord = 'Sim' Then begin

    ConfirmaRelatorioWord := Application.MessageBox('Deseja Emitir Relatório para o Word?','Relatório para Word',+MB_YESNO+MB_ICONQUESTION);

    if ConfirmaRelatorioWord = 6 Then begin

      MSWord:= CreateOleObject('Word.Basic');
      MSWord.AppShow;//mostra o word
      MSWord.FileNew;//inicia um novo documento
      MSWord.FontSize(24);//muda o tamanho da fonte
      MSWord.italic;//coloca italico
      MSWord.bold;//coloca negrito
      MSWord.underline;//sublina
      MSWord.insert(#13+'Relação de Clientes');//pula a linha e escreve novamente
      MSWord.FontSize(10);//muda o tamanho da fonte
      MSWord.Font('Verdana');//muda a fonte usada
      MSWord.underline(false);//retira o sublinhado
      MSWord.italic(false);//retira o italico
      MSWord.bold(false);//retira o bold
      MSWord.insert(#13 +'');

      while not ibCadastro.Eof do begin

        MSWord.insert(#13+ibCadastro.FieldByName('NOME').AsString +' '+' '+' '+ ' - ' + ibCadastro.FieldByName('ENDERECO').AsString + '' + ','+ibCadastro.FieldByName('NUMERO').AsString);//insere algo de uma tabela
        MSWord.insert(#13'----------------------------------------------------------------------------------------');
        ibCadastro.Next;

      end;//while

    end;//confirma

  end;//if relatorio word  }

////////////////////////////////////////////////////////////////////////////////

 { if RelatorioExcel = 'Sim' Then begin

    ConfirmaRelatorioExcel := Application.MessageBox('Deseja Emitir Relatório para o Excel?','Relatório para Excel',+MB_YESNO+MB_ICONQUESTION);

    if ConfirmaRelatorioExcel = 6 Then begin

        Excel := CreateOleObject('Excel.Application');
        Excel.Visible :=True;
        Excel.Workbooks.Add;

        Linha := 2;
        ibCadastro.First;
        while not ibCadastro.Eof do
        begin
        for Coluna := 1 to ibCadastro.FieldCount - 1 do
        begin          //
        Excel.Cells[Linha,Coluna] := ibCadastro.Fields[Coluna].AsString;
        end;
        Inc(Linha);
        ibCadastro.Next;
        end;
        Excel.Columns.AutoFit;

      end;

    end;//if relatorio excel }

////////////////////////////////////////////////////////////////////////////////


          qrpRelClientes.Preview;

        end; {if}

      EXCEPT
        on E : Exception do begin
           frmRelClientes.Release;
           MessageDlg('Ocorreu um erro ao tentar mostrar o Formulário: ' + E.Message,mtError,[mbOk],0);
        end;
      END;
    //////////////////////////////////////////////////////////////

    end;//if ck geral

  end;{with}

end;

procedure TfrmRClientes.ibeaLimparClick(Sender: TObject);
begin
ckGeral.Checked := False;
lbl_edtPorLetra.Clear;
end;

procedure TfrmRClientes.lbl_edtPorLetraChange(Sender: TObject);
begin
ckGeral.Checked := False;
end;

procedure TfrmRClientes.ckGeralCheck(Sender: TObject);
begin
  if ckGeral.Checked = True Then begin

    lbl_edtPorLetra.Clear;

  end;

end;

end.
