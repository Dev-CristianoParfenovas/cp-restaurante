unit BuscaClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls,
  classComboBox, IBQuery, Data.DB;

type
  TfrmBuscaClientes = class(TForm)
    sb_ord_nome: TSpeedButton;
    sb_ord_cod: TSpeedButton;
    lbl_edtNome: TLabeledEdit;
    dbgClientes: TDBGrid;
    lbl_edtTelefone: TLabeledEdit;
    lbl_edtCelular: TLabeledEdit;
    lbl_F1: TLabel;
    lbl_F2: TLabel;
    lbl_F3: TLabel;
    ibeaIncluir: TSpeedButton;
    ibeaSair: TSpeedButton;
    procedure Commit(IBQueryExec : TIBQuery);
    procedure ExibeDadosCliente;
    procedure ExibeDadosClienteCx;
    procedure FormShow(Sender: TObject);
    procedure sb_ord_codClick(Sender: TObject);
    procedure sb_ord_nomeClick(Sender: TObject);
    procedure dbgClientesCellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure lbl_edtNomeChange(Sender: TObject);
    procedure ibeaSairClick(Sender: TObject);
    procedure lbl_edtTelefoneExit(Sender: TObject);
    procedure lbl_edtTelefoneKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtCelularExit(Sender: TObject);
    procedure lbl_edtCelularKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure dbgClientesKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbl_edtTelefoneEnter(Sender: TObject);
    procedure lbl_edtCelularEnter(Sender: TObject);
    procedure lbl_edtNomeEnter(Sender: TObject);
    procedure lbl_edtNomeExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBuscaClientes: TfrmBuscaClientes;
  MontaColunas: Boolean;
  IDClass: Integer;
  IDCad : Integer;
  IDCadCliCx : Integer;
  IDClassTelcom : Integer;//variavel para armazenar a classificação do campo telcoml
  IDClassTelfax: Integer; //variavel para armazenar a classificação do campo telfax
  IDClassTelCel: Integer;//variável para armazenar a classificacao do campo celular.
  IDClassEmail: Integer;//variavel para armazenar a classificação do campo email
  IDClassSite: Integer;//variavel para armazenar a classificação do campo site
  IDClassContato: Integer;// variavel para armazenar a classificação do campo contato
  IDClassCnpj: Integer;//variavel para atribuir o cnpj_cpf.
  
  implementation

uses untdmModule, unClientes, untServicos, untContasaReceber,
  untRecebeLoja;

{$R *.dfm}

procedure TfrmBuscaClientes.Commit(IBQueryExec : TIBQuery);
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

procedure TfrmBuscaClientes.ExibeDadosCliente;

var
i : Integer;
begin
  with dmModule do begin

 //   lbl_edtNome.Text       := ibCadastro.FieldByName('NOME').AsString;

    IDCad := ibCadastro.FieldByName('IDCAD').AsInteger; //ATRIBUI O IDCAD DO CADASTRO A VARIAVEL

    // ROTINA PARA TRAZER OS DADOS DE CONTATO DO CLIENTE
    frmClientes.lbl_edtNomerazao.Text       := ibCadastro.FieldByName('NOME').AsString;
    frmClientes.lbl_edtCep.Text             := FormatFloat('00000-000',ibCadastro.FieldByName('CEP').AsInteger);
    frmClientes.lbl_edtPontoreferencia.Text := ibCadastro.FieldByName('PONTOREFERENCIA').AsString;
    frmClientes.lbl_edtObs.Text             := ibCadastro.FieldByName('OBS').AsString;
    frmClientes.lbl_edtNumero.Text          := ibCadastro.FieldByName('NUMERO').AsString;
    frmClientes.lbl_edtComplemento.Text     := ibCadastro.FieldByName('COMPL').AsString;
    frmClientes.dtpDataCli.Date             := ibCadastro.FieldByName('DATA').AsDateTime;

  {  for i:=0 to frmVendasLoja.cboCliente.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
      if TClasseCombo( frmVendasLoja.cboCliente.Items.Objects[i]).ID = ibCadastro.FieldByName('IDCAD').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
        frmVendasLoja.cboCliente.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
        Break;
      end else begin
        frmVendasLoja.cboCliente.ClearSelection;//LIMPA A SELECAO.  }
    //  end;{if}
  // end;{for}


    //LOCALIZA O TELEFONE COMERCIAl
    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Com''');
    ibClassificacao.Open;
    IDClassTelcom := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identiicacao do contato de telefone coml. na variavel.

    Commit(ibContato);
    ibContato.Close;
    ibContato.SQL.Clear;
    ibContato.SQL.Add('SELECT DDD,CONTATO FROM TBLCONTATO WHERE'
    + ' (IDCAD='''+ InttoStr(IDCad) + ''') And (TIPO=''' + InttoStr(IDClassTelcom) + ''')');
    ibContato.Open;

      //se tiver registro traz no campo
      if ibContato.RecordCount > 0 Then begin
         frmClientes.lbl_edtDDD.Text          := ibContato.FieldByName('DDD').AsString; //TRAZ O DDD DO TELEFONE COMERCIAL
         frmClientes.lbl_edtTelCom.Text       := ibContato.FieldByName('CONTATO').AsString; //TRAZ O CONTATO (TELEFONE) COMERCIAL
      // limpa os campos se nao houver registro.
      end else begin
        frmClientes.lbl_edtDDD.Clear;
        frmClientes.lbl_edtTelcom.Clear;
      end;

      //LOCALIZA O TELEFONE FAX
      ibClassificacao.Close;
      ibClassificacao.SQL.Clear;
      ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Fax''');
      ibClassificacao.Open;
      IDClassTelfax := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identiicacao do contato de telefone coml. na variavel.

      Commit(ibContato);
      ibContato.Close;
      ibContato.SQL.Clear;
      ibContato.SQL.Add('SELECT DDD,CONTATO FROM TBLCONTATO WHERE'
      + ' (IDCAD='''+ InttoStr(IDCad) + ''') And (TIPO=''' + InttoStr(IDClassTelfax) + ''')');
      ibContato.Open;

      //se tiver registro traz no campo
      if ibContato.RecordCount > 0 Then begin
         frmClientes.lbl_edtDDDFax.Text       := ibContato.FieldByName('DDD').AsString; //TRAZ O DDD DO TELEFONE FAX
         frmClientes.lbl_edtTelFax.Text       := ibContato.FieldByName('CONTATO').AsString; //TRAZ O CONTATO (TELEFONE) FAX
       // limpa os campos se nao houver registro.
     end else begin
       frmClientes.lbl_edtDDDFax.Clear;
       frmClientes.lbl_edtTelFax.Clear;
      end;

      //LOCALIZA O TELEFONE CELULAR
      ibClassificacao.Close;
      ibClassificacao.SQL.Clear;
      ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Cel''');
      ibClassificacao.Open;
      IDClassTelCel := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identiicacao do contato de telefone celular na variavel.

      Commit(ibContato);
      ibContato.Close;
      ibContato.SQL.Clear;
      ibContato.SQL.Add('SELECT DDD,CONTATO FROM TBLCONTATO WHERE'
      + ' (IDCAD='''+ InttoStr(IDCad) + ''') And (TIPO=''' + InttoStr(IDClassTelCel) + ''')');
      ibContato.Open;

      //se tiver registro traz no campo
      if ibContato.RecordCount > 0 Then begin
         frmClientes.lbl_edtCelular.Text       := ibContato.FieldByName('CONTATO').AsString; //TRAZ O CONTATO (TELEFONE) CELULAR
       // limpa os campos se nao houver registro.
      end else begin
        frmClientes.lbl_edtCelular.Clear;
      end;

          //LOCALIZA O SITE DO CLIENTE
          ibClassificacao.Close;
          ibClassificacao.SQL.Clear;
          ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''WebSite''');
          ibClassificacao.Open;
          IDClassSite := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identiicacao do site na variavel.

          Commit(ibContato);
          ibContato.Close;
          ibContato.SQL.Clear;
          ibContato.SQL.Add('SELECT DDD,CONTATO FROM TBLCONTATO WHERE'
          + ' (IDCAD='''+ InttoStr(IDCad) + ''') And (TIPO=''' + InttoStr(IDClassSite) + ''')');
          ibContato.Open;

        //LOCALIZA O EMAIL DO CLIENTE
        ibClassificacao.Close;
        ibClassificacao.SQL.Clear;
        ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Email''');
        ibClassificacao.Open;
        IDClassEmail := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identificacao do email na variavel.

        Commit(ibContato);
        ibContato.Close;
        ibContato.SQL.Clear;
        ibContato.SQL.Add('SELECT DDD,CONTATO FROM TBLCONTATO WHERE'
        + ' (IDCAD='''+ IntToStr(IDCad) + ''') And (Tipo=''' + IntToStr(IDClassEmail) + ''')');
        ibContato.Open;

       // LOCALIZA O CONTATO DO CLIENTE.
        ibClassificacao.Close;
        ibClassificacao.SQL.Clear;
        ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Contato''');
        ibClassificacao.Open;
        IDClassContato := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identiicacao do site na variavel.

        Commit(ibContato);
        ibContato.Close;
        ibContato.SQL.Clear;
        ibContato.SQL.Add('SELECT DDD,CONTATO FROM TBLCONTATO WHERE'
        + ' (IDCAD=''' + IntToStr(IDCad) + ''') And (Tipo=''' + IntToStr(IDClassContato) + ''')');
        ibContato.Open;

       //LOCALIZA OS DADOS DA TBLCADDOCUMENTACAO DO CLIENTE.
        Commit(ibDocumentacao);
        ibDocumentacao.Close;
        ibDocumentacao.SQL.Clear;
        ibDocumentacao.SQL.Add('SELECT IE_RG,CODIGO,CNPJ_CPF FROM TBLCADDOCUMENTACAO WHERE'
        + ' IDCAD=''' + IntToStr(IDCad) + '''');
        ibDocumentacao.Open;


      //se tiver registro traz no campo
      if ibDocumentacao.RecordCount > 0 Then begin

      frmClientes.lbl_edtIE_rg.Text            := ibDocumentacao.FieldByName('IE_RG').AsString;//TRAZ A IE OU  O RG DO CLIENTE.
      frmClientes.lbl_edtCnpj_cpf.Text         := ibDocumentacao.FieldByName('CNPJ_CPF').AsString;//TRAZ O CNPJ DO CLIENTE.
      frmClientes.lbl_edtCodCliente.Text       := ibDocumentacao.FieldByName('CODIGO').AsString;


      // limpa os campos se nao houver registro.
      end else begin
      //  lbl_edtNomeusual.Clear;
        frmClientes.lbl_edtCnpj_cpf.Clear;
        frmClientes.lbl_edtIE_rg.Clear;
      end;


        //LOCALIZA OS DADOS DA TBLLOGRADOURO DO CLIENTE.
        Commit(ibLogradouro);
        ibLogradouro.Close;
        ibLogradouro.SQL.Clear;
        ibLogradouro.SQL.Add('SELECT ENDERECO,BAIRRO,CIDADE,ESTADO FROM TBLLOGRADOURO WHERE'
        + ' IDCAD=''' + IntToStr(IDCad) + '''');
        ibLogradouro.Open;

         //se tiver registro traz no campo
        if ibLogradouro.RecordCount > 0 Then begin
          frmClientes.lbl_edtEndereco.Text        := ibLogradouro.FieldByName('ENDERECO').AsString;//TRAZ O ENDERECO.
          frmClientes.lbl_edtBairro.Text          := ibLogradouro.FieldByName('BAIRRO').AsString;//TRAZ O BAIRRO.
          frmClientes.lbl_edtCidade.Text          := ibLogradouro.FieldByName('CIDADE').AsString;//TRAZ A CIDADE.
          frmClientes.lbl_edtEstado.Text          := ibLogradouro.FieldByName('ESTADO').AsString;//TRAZ O ESTADO.
        //limpa os campos se nao houver registro.
        end else begin
          frmClientes.lbl_edtEndereco.Clear;
          frmClientes.lbl_edtBairro.Clear;
          frmClientes.lbl_edtCidade.Clear;
          frmClientes.lbl_edtEstado.Clear;
       end;

  end;

end;

procedure TfrmBuscaClientes.ExibeDadosClienteCx;

//var

//i : Integer;

begin

//  with dmModule do begin

 //   IDCadCliCx := ibCadastro.FieldByName('IDCAD').AsInteger; //ATRIBUI O IDCAD DO CADASTRO A VARIAVEL

 {   ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
    ibClassificacao.Open;
    IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO FORNECEDOR NA VARIAVEL.


    ibCadastro.Close;                                                                                    //  and TBLCADASTRO.NOME LIKE '+''''+'%'+lbl_edtNome.text+'%'+'''
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLCADDOCUMENTACAO.CODIGO FROM TBLCADASTRO '
  //  + 'LEFT OUTER JOIN TBLCONTATO ON TBLCADASTRO.IDCAD=TBLCONTATO.IDCAD '
    + 'LEFT OUTER JOIN TBLCADDOCUMENTACAO ON TBLCADASTRO.IDCAD=TBLCADDOCUMENTACAO.IDCAD '
    + 'WHERE TBLCADASTRO.IDCLASS=''' + IntToStr(IDClass) + ''' and TBLCADASTRO.IDCAD=''' + IntToStr(IDCadCliCx) + ''' ORDER BY TBLCADDOCUMENTACAO.CODIGO DESC');
    ibCadastro.Open; }

  { for i:=0 to frmVendasLoja.cboCliente.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
      if TClasseCombo( frmVendasLoja.cboCliente.Items.Objects[i]).ID = ibCadastro.FieldByName('IDCAD').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
        frmVendasLoja.cboCliente.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
        Break;
      end else begin
        frmVendasLoja.cboCliente.ClearSelection;}//LIMPA A SELECAO.
   //   end;{if}
  //  end;{for}

//  end;//with


end;

procedure TfrmBuscaClientes.FormShow(Sender: TObject);

//var
//IDClassTelCel : Integer;

begin
  with dmModule do begin

    lbl_edtTelefone.SetFocus;
    
        Commit(ibClassificacao);

        ibClassificacao.Close;
        ibClassificacao.SQL.Clear;
        ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
        ibClassificacao.Open;
        IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO CLIENTE NA VARIAVEL.

        //LOCALIZA O TELEFONE COMERCIAl
       { ibClassificacao.Close;
        ibClassificacao.SQL.Clear;
        ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Com''');
        ibClassificacao.Open;
        IDClassTelcom := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identiicacao do contato de telefone coml. na variavel.

        //LOCALIZA O TELEFONE COMERCIAl
        ibClassificacao.Close;
        ibClassificacao.SQL.Clear;
        ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Cel''');
        ibClassificacao.Open;
        IDClassTelCel := ibClassificacao.FieldByName('IDCLASS').AsInteger;}//atribui a identiicacao do contato de telefone coml. na variavel.

        //BUSCA TODOS OS CLIENTES QUE ESTEJAM NA CLASSIFICAÇÃO DE CLIENTES
        Commit(ibCadastro);
        ibCadastro.Close;
        ibCadastro.SQL.Clear;
        ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLCADDOCUMENTACAO.CODIGO,'
        + 'TBLCADDOCUMENTACAO.IE_RG FROM TBLCADASTRO '
        + ' INNER JOIN TBLCADDOCUMENTACAO ON TBLCADASTRO.IDCAD = TBLCADDOCUMENTACAO.IDCAD '
        + ' WHERE TBLCADASTRO.idclass=''' + InttoStr(IDClass) + '''ORDER BY TBLCADASTRO.IDCAD DESC');
        ibCadastro.Open;

        // and (TBLCONTATO.TIPO=''' + IntToStr(IDClassTelcom) + '''or TBLCONTATO.TIPO=''' + IntToStr(IDClassTelCel) + ''')

       //Adiciona as Colunas com os dados do Clientes
    with dbgClientes do begin

      // monta as colunas abaixo se for verdadeiro
      if MontaColunas Then begin
        //determina as colunas a serem montadas 0 codigo cliente, 1 razao Social, 2 endereço numero...
        Columns.Insert(0);
        Columns.Insert(1);
        Columns.Insert(2);
      //  Columns.Insert(3);
       // Columns.Insert(4);

        //Parametros da Coluna que exibe o Código do Cadastro
        Columns.Items[0].Title.Caption := 'Código';
        Columns.Items[0].FieldName     := 'CODIGO';
        Columns.Items[0].Width         := 75;
        Columns.Items[0].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o Nome do cliente.
        Columns.Items[1].Title.Caption := 'Razão Social';
        Columns.Items[1].FieldName     := 'NOME';
        Columns.Items[1].Width         := 280;
        Columns.Items[1].Alignment     := taLeftJustify;

        // Parametros que exibe o endereço do cliente
        Columns.Items[2].Title.Caption := 'Telefone';
        Columns.Items[2].FieldName     := 'Telefone';
        Columns.Items[2].Width         := 170;
        Columns.Items[2].Alignment     := taLeftJustify;

        MontaColunas := False;

     end;{if}

    end;{with dbgrid}

  end;{with}

end;

procedure TfrmBuscaClientes.sb_ord_codClick(Sender: TObject);
begin
  with dmModule do begin
  { IBDGeral.Connected := True;
   ibClientes.Active := True;
    TRClientes.Active := True;

    ibClientes.Close;
   ibClientes.SQL.Clear;
    ibClientes.SQL.Add('SELECT * FROM CADCLIENTES ORDER BY CODCLI');
  ibClientes.Open;}

   //   IDCad := 0;

    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
    ibClassificacao.Open;
    IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO CLIENTE NA VARIAVEL.

    //LOCALIZA O TELEFONE COMERCIAl
    {ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Com''');
    ibClassificacao.Open; }
  //  IDClassTelcom := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identiicacao do contato de telefone coml. na variavel.


    //BUSCA TODOS OS CLIENTES QUE ESTEJAM NA CLASSIFICAÇÃO DE CLIENTES
    Commit(ibCadastro);
    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLCADDOCUMENTACAO.CODIGO,'
    + 'TBLCADDOCUMENTACAO.IE_RG FROM TBLCADASTRO '
    + ' INNER JOIN TBLCADDOCUMENTACAO ON TBLCADASTRO.IDCAD = TBLCADDOCUMENTACAO.IDCAD '
    + ' WHERE (TBLCADASTRO.idclass=''' + InttoStr(IDClass) + ''')ORDER BY TBLCADDOCUMENTACAO.CODIGO ASC');
    ibCadastro.Open;


  end;

     lbl_edtTelefone.Clear;
     lbl_edtCelular.Clear;
     lbl_edtNome.Clear;

end;

procedure TfrmBuscaClientes.sb_ord_nomeClick(Sender: TObject);
begin
  with dmModule do begin
  //  IBDGeral.Connected := True;
  //  ibClientes.Active := True;
  //  TRClientes.Active := True;

    IDCad := 0;

        ibClassificacao.Close;
        ibClassificacao.SQL.Clear;
        ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
        ibClassificacao.Open;
        IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO CLIENTE NA VARIAVEL.

        //LOCALIZA O TELEFONE COMERCIAl
      {  ibClassificacao.Close;
        ibClassificacao.SQL.Clear;
        ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Com''');
        ibClassificacao.Open; }
        IDClassTelcom := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identiicacao do contato de telefone coml. na variavel.

        //BUSCA TODOS OS CLIENTES QUE ESTEJAM NA CLASSIFICAÇÃO DE CLIENTES
        Commit(ibCadastro);
        ibCadastro.Close;
        ibCadastro.SQL.Clear;
        ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLCADDOCUMENTACAO.CODIGO,'
        + 'TBLCADDOCUMENTACAO.IE_RG FROM TBLCADASTRO '
        + ' INNER JOIN TBLCADDOCUMENTACAO ON TBLCADASTRO.IDCAD = TBLCADDOCUMENTACAO.IDCAD '
        + ' WHERE TBLCADASTRO.idclass=''' + InttoStr(IDClass) + ''' ORDER BY TBLCADASTRO.NOME');
        ibCadastro.Open;

  end;

     lbl_edtTelefone.Clear;
     lbl_edtCelular.Clear;
     lbl_edtNome.Clear;

end;

procedure TfrmBuscaClientes.dbgClientesCellClick(Column: TColumn);
begin


  with dmModule do begin

    IDCad := ibCadastro.FieldByName('IDCAD').AsInteger;
    //IDCadCliCx := ibCadastro.FieldByName('IDCAD').AsInteger; //ATRIBUI O IDCAD DO CADASTRO A VARIAVEL

    if ibCadastro.RecordCount > 0 Then begin

      lbl_edtNome.Text     := ibCadastro.FieldByName('NOME').AsString;
    //  lbl_edtTelefone.Text := ibCadastro.FieldByName('CONTATO').AsString;

    end;


    //LOCALIZA O TELEFONE COMERCIAl
    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Com''');
    ibClassificacao.Open;
    IDClassTelcom := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identiicacao do contato de telefone coml. na variavel.

    Commit(ibContato);
    ibContato.Close;
    ibContato.SQL.Clear;
    ibContato.SQL.Add('SELECT DDD,CONTATO FROM TBLCONTATO WHERE'
    + '(IDCAD='''+ InttoStr(IDCad) + ''') And  (TIPO=''' + InttoStr(IDClassTelcom) + ''')');
    ibContato.Open;

      //se tiver registro traz no campo
    if ibContato.RecordCount > 0 Then begin
      // lbl_edtDDD.Text          := ibContato.FieldByName('DDD').AsString; //TRAZ O DDD DO TELEFONE COMERCIAL
       lbl_edtTelefone.Text       := ibContato.FieldByName('CONTATO').AsString; //TRAZ O CONTATO (TELEFONE) COMERCIAL
    // limpa os campos se nao houver registro.
    end else begin
   //   lbl_edtDDD.Clear;
      lbl_edtTelefone.Clear;
    end;

      //LOCALIZA O TELEFONE CELULAR
      ibClassificacao.Close;
      ibClassificacao.SQL.Clear;
      ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Cel''');
      ibClassificacao.Open;
      IDClassTelCel := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identiicacao do contato de telefone celular na variavel.

      Commit(ibContato);
      ibContato.Close;
      ibContato.SQL.Clear;
      ibContato.SQL.Add('SELECT DDD,CONTATO FROM TBLCONTATO WHERE'
      + '(IDCAD='''+ InttoStr(IDCad) + ''') And (TIPO=''' + InttoStr(IDClassTelCel) + ''')');
      ibContato.Open;

      //se tiver registro traz no campo
      if ibContato.RecordCount > 0 Then begin
         lbl_edtCelular.Text       := ibContato.FieldByName('CONTATO').AsString; //TRAZ O CONTATO (TELEFONE) CELULAR
       // limpa os campos se nao houver registro.
      end else begin
        lbl_edtCelular.Clear;
      end;

        //BUSCA TODOS OS CLIENTES QUE ESTEJAM NA CLASSIFICAÇÃO DE CLIENTES
        Commit(ibCadastro);
        ibCadastro.Close;
        ibCadastro.SQL.Clear;
        ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLCADDOCUMENTACAO.CODIGO,TBLCADDOCUMENTACAO.IE_RG,'
        + ' TBLCONTATO.CONTATO As Telefone,TBLCONTATO.TIPO FROM TBLCADASTRO '
        + ' INNER JOIN TBLCONTATO ON TBLCADASTRO.IDCAD = TBLCONTATO.IDCAD '
        + ' INNER JOIN TBLCADDOCUMENTACAO ON TBLCADASTRO.IDCAD = TBLCADDOCUMENTACAO.IDCAD '
        + ' WHERE TBLCADASTRO.idclass=''' + InttoStr(IDClass) + ''' and (TBLCONTATO.TIPO=''' + IntToStr(IDClassTelcom) + '''or TBLCONTATO.TIPO is null) ORDER BY TBLCADASTRO.NOME');
        ibCadastro.Open;


  end;{with}

  lbl_edtNome.SetFocus;

end;

procedure TfrmBuscaClientes.FormCreate(Sender: TObject);
begin
 MontaColunas := True;
end;

procedure TfrmBuscaClientes.lbl_edtNomeChange(Sender: TObject);
begin

  with dmModule do begin

    if lbl_edtNome.text <> '' Then begin

      ibClassificacao.Close;
      ibClassificacao.SQL.Clear;
      ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
      ibClassificacao.Open;
      IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO FORNECEDOR NA VARIAVEL.

      Commit(ibCadastro);
      ibCadastro.Close;                                                                                    //  and TBLCADASTRO.NOME LIKE '+''''+'%'+lbl_edtNome.text+'%'+'''
      ibCadastro.SQL.Clear;
      ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLCADDOCUMENTACAO.CODIGO FROM TBLCADASTRO '
      + 'INNER JOIN TBLCADDOCUMENTACAO ON TBLCADASTRO.IDCAD=TBLCADDOCUMENTACAO.IDCAD '
      + 'WHERE IDCLASS=''' + InttoStr(IDClass) + ''' and TBLCADASTRO.NOME LIKE '+''''+'%'+lbl_edtNome.text+'%'+'''');
      ibCadastro.Open;

    end;

  end;{With}

end;

procedure TfrmBuscaClientes.ibeaSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmBuscaClientes.lbl_edtTelefoneExit(Sender: TObject);
begin

  with dmModule do begin

    tedit(sender).color := clwindow;

      if lbl_edtTelefone.Text <> '' Then begin

        lbl_edtTelefone.Text := StringReplace(lbl_edtTelefone.Text,'-','',[rfReplaceAll]);
        lbl_edtTelefone.Text := FormatFloat('0000-0000',StrToFloat(lbl_edtTelefone.Text));



    {  ibClassificacao.Close;
      ibClassificacao.SQL.Clear;
      ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
      ibClassificacao.Open;
      IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger;} // ATRIBUI A IDENTIFICAÇÃO DO FORNECEDOR NA VARIAVEL.

      Commit(ibCadastro);
      ibCadastro.Close;                                                                                    //  and TBLCADASTRO.NOME LIKE '+''''+'%'+lbl_edtNome.text+'%'+'''
      ibCadastro.SQL.Clear;
      ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE TBLCADASTRO.TELEFONE=''' + lbl_edtTelefone.Text + '''');
      ibCadastro.Open;

      {Commit(ibCadastro);
      ibCadastro.Close;                                                                                    //  and TBLCADASTRO.NOME LIKE '+''''+'%'+lbl_edtNome.text+'%'+'''
      ibCadastro.SQL.Clear;
      ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLCONTATO.CONTATO FROM TBLCADASTRO '
      + 'INNER JOIN TBLCONTATO ON TBLCADASTRO.IDCAD=TBLCONTATO.IDCAD '
      + 'WHERE IDCLASS=''' + InttoStr(IDClass) + ''' and TBLCONTATO.CONTATO=''' + lbl_edtTelefone.Text + '''');
      ibCadastro.Open;}

      if ibCadastro.RecordCount > 0 Then begin

        lbl_edtNome.Text := ibCadastro.FieldByName('NOME').AsString;

      end;//IF

    end;

  end;{With}

end;

procedure TfrmBuscaClientes.lbl_edtTelefoneKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key =#13 Then begin

    lbl_edtCelular.SetFocus;

  end;

end;

procedure TfrmBuscaClientes.lbl_edtCelularExit(Sender: TObject);
begin

  with dmModule do begin

    tedit(sender).color := clwindow;

      if lbl_edtCelular.Text <> '' Then begin

        lbl_edtCelular.Text := StringReplace(lbl_edtCelular.Text,'-','',[rfReplaceAll]);
        lbl_edtCelular.Text := FormatFloat('0000-0000',StrToFloat(lbl_edtCelular.Text));



      Commit(ibCadastro);
      ibCadastro.Close;                                                                                    //  and TBLCADASTRO.NOME LIKE '+''''+'%'+lbl_edtNome.text+'%'+'''
      ibCadastro.SQL.Clear;
      ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE TBLCADASTRO.CELULAR=''' + lbl_edtCelular.Text + '''');
      ibCadastro.Open;

      if ibCadastro.RecordCount > 0 Then begin

        lbl_edtNome.Text := ibCadastro.FieldByName('NOME').AsString;

      end;//IF

      end;

  end;{With}

end;

procedure TfrmBuscaClientes.lbl_edtCelularKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key =#13 Then begin

    lbl_edtNome.SetFocus;

  end;

end;

procedure TfrmBuscaClientes.lbl_edtNomeKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    //ibeaIncluirClick(Sender);
    ibeaSairClick(Sender);

  end;

end;

procedure TfrmBuscaClientes.dbgClientesKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key =#13 Then begin

    with dmModule do begin

      IDCad := ibCadastro.FieldByName('IDCAD').AsInteger;
      IDCadCliCx := ibCadastro.FieldByName('IDCAD').AsInteger; //ATRIBUI O IDCAD DO CADASTRO A VARIAVEL

      if ibCadastro.RecordCount > 0 Then begin

        lbl_edtNome.Text     := ibCadastro.FieldByName('NOME').AsString;
      //  lbl_edtTelefone.Text := ibCadastro.FieldByName('CONTATO').AsString;

      end;


      //LOCALIZA O TELEFONE COMERCIAl
      ibClassificacao.Close;
      ibClassificacao.SQL.Clear;
      ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Com''');
      ibClassificacao.Open;
      IDClassTelcom := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identiicacao do contato de telefone coml. na variavel.

      Commit(ibContato);
      ibContato.Close;
      ibContato.SQL.Clear;
      ibContato.SQL.Add('SELECT DDD,CONTATO FROM TBLCONTATO WHERE'
      + '(IDCAD='''+ InttoStr(IDCad) + ''') And  (TIPO=''' + InttoStr(IDClassTelcom) + ''')');
      ibContato.Open;

        //se tiver registro traz no campo
      if ibContato.RecordCount > 0 Then begin
        // lbl_edtDDD.Text          := ibContato.FieldByName('DDD').AsString; //TRAZ O DDD DO TELEFONE COMERCIAL
         lbl_edtTelefone.Text       := ibContato.FieldByName('CONTATO').AsString; //TRAZ O CONTATO (TELEFONE) COMERCIAL
      // limpa os campos se nao houver registro.
      end else begin
     //   lbl_edtDDD.Clear;
        lbl_edtTelefone.Clear;
      end;

        //LOCALIZA O TELEFONE CELULAR
        ibClassificacao.Close;
        ibClassificacao.SQL.Clear;
        ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Cel''');
        ibClassificacao.Open;
        IDClassTelCel := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identiicacao do contato de telefone celular na variavel.

        Commit(ibContato);
        ibContato.Close;
        ibContato.SQL.Clear;
        ibContato.SQL.Add('SELECT DDD,CONTATO FROM TBLCONTATO WHERE'
        + '(IDCAD='''+ InttoStr(IDCad) + ''') And (TIPO=''' + InttoStr(IDClassTelCel) + ''')');
        ibContato.Open;

        //se tiver registro traz no campo
        if ibContato.RecordCount > 0 Then begin
           lbl_edtCelular.Text       := ibContato.FieldByName('CONTATO').AsString; //TRAZ O CONTATO (TELEFONE) CELULAR
         // limpa os campos se nao houver registro.
        end else begin
          lbl_edtCelular.Clear;
        end;

          //BUSCA TODOS OS CLIENTES QUE ESTEJAM NA CLASSIFICAÇÃO DE CLIENTES
          Commit(ibCadastro);
          ibCadastro.Close;
          ibCadastro.SQL.Clear;
          ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLCADDOCUMENTACAO.CODIGO,TBLCADDOCUMENTACAO.IE_RG,'
          + ' TBLCONTATO.CONTATO As Telefone,TBLCONTATO.TIPO FROM TBLCADASTRO '
          + ' INNER JOIN TBLCONTATO ON TBLCADASTRO.IDCAD = TBLCONTATO.IDCAD '
          + ' INNER JOIN TBLCADDOCUMENTACAO ON TBLCADASTRO.IDCAD = TBLCADDOCUMENTACAO.IDCAD '
          + ' WHERE TBLCADASTRO.idclass=''' + InttoStr(IDClass) + ''' and (TBLCONTATO.TIPO=''' + IntToStr(IDClassTelcom) + '''or TBLCONTATO.TIPO is null) ORDER BY TBLCADASTRO.NOME');
          ibCadastro.Open;

          //ibeaIncluirClick(Sender);
          ibeaSairClick(Sender);
        
    end;{with}

  end;//if key

end;

procedure TfrmBuscaClientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  case key of

    VK_F1 :begin

      sb_ord_nomeClick(Sender);
      lbl_edtNome.SetFocus;
      
    end;//begin

    VK_F2 :begin

      ibeaSairClick(Sender);

    end;//begin

    VK_F3 :begin

      dbgClientes.SetFocus;

    end;//begin

  end;//case

end;

procedure TfrmBuscaClientes.lbl_edtTelefoneEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmBuscaClientes.lbl_edtCelularEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmBuscaClientes.lbl_edtNomeEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmBuscaClientes.lbl_edtNomeExit(Sender: TObject);
begin

  tedit(sender).color := clwindow;
  
end;

end.
