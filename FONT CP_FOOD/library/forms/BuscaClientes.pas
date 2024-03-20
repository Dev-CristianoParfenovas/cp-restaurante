unit BuscaClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, 
  classComboBox, untClasse.Cadastro;

type
  TfrmBuscaClientes = class(TForm)
    sb_ord_nome: TSpeedButton;
    sb_ord_cod: TSpeedButton;
    lbl_edtNome: TLabeledEdit;
    dbgClientes: TDBGrid;
    lbl_edtTelefone: TLabeledEdit;
    lbl_edtCelular: TLabeledEdit;
    ibeaIncluir: TSpeedButton;
    ibeaSair: TSpeedButton;
    lbl_IDCli: TLabel;
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
    procedure ibeaIncluirClick(Sender: TObject);
    procedure lbl_edtCelularExit(Sender: TObject);
    procedure lbl_edtCelularKeyPress(Sender: TObject; var Key: Char);
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

uses untdmModule, DB, unClientes, untContasaReceber,
  untRecebeLoja, untModuloRestaurante;

{$R *.dfm}

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

        ibContato.Close;
        ibContato.SQL.Clear;
        ibContato.SQL.Add('SELECT DDD,CONTATO FROM TBLCONTATO WHERE'
        + ' (IDCAD=''' + IntToStr(IDCad) + ''') And (Tipo=''' + IntToStr(IDClassContato) + ''')');
        ibContato.Open;

       //LOCALIZA OS DADOS DA TBLCADDOCUMENTACAO DO CLIENTE.
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
begin
  with dmModule do begin


        ibClassificacao.Close;
        ibClassificacao.SQL.Clear;
        ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
        ibClassificacao.Open;
        IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO CLIENTE NA VARIAVEL.

        //LOCALIZA O TELEFONE COMERCIAl
        ibClassificacao.Close;
        ibClassificacao.SQL.Clear;
        ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Com''');
        ibClassificacao.Open;
        IDClassTelcom := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identiicacao do contato de telefone coml. na variavel.

        //BUSCA TODOS OS CLIENTES QUE ESTEJAM NA CLASSIFICAÇÃO DE CLIENTES
        ibCadastro.Close;
        ibCadastro.SQL.Clear;
        ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLCADDOCUMENTACAO.CODIGO,TBLCADDOCUMENTACAO.IE_RG,'
        + ' TBLCONTATO.CONTATO As Telefone,TBLCONTATO.TIPO FROM TBLCADASTRO '
        + ' LEFT OUTER JOIN TBLCONTATO ON TBLCADASTRO.IDCAD = TBLCONTATO.IDCAD '
        + ' LEFT OUTER JOIN TBLCADDOCUMENTACAO ON TBLCADASTRO.IDCAD = TBLCADDOCUMENTACAO.IDCAD '
        + ' WHERE TBLCADASTRO.idclass=''' + InttoStr(IDClass) + ''' and (TBLCONTATO.TIPO=''' + IntToStr(IDClassTelcom) + '''or TBLCONTATO.TIPO is null) ORDER BY TBLCADASTRO.IDCAD DESC');
        ibCadastro.Open;



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
    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Com''');
    ibClassificacao.Open;
    IDClassTelcom := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identiicacao do contato de telefone coml. na variavel.


    //BUSCA TODOS OS CLIENTES QUE ESTEJAM NA CLASSIFICAÇÃO DE CLIENTES
    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLCADDOCUMENTACAO.CODIGO,TBLCADDOCUMENTACAO.IE_RG,'
    + ' TBLCONTATO.CONTATO As Telefone,TBLCONTATO.TIPO FROM TBLCADASTRO '
    + ' INNER JOIN TBLCADDOCUMENTACAO ON TBLCADASTRO.IDCAD = TBLCADDOCUMENTACAO.IDCAD '
    + ' LEFT OUTER JOIN TBLCONTATO ON TBLCADASTRO.IDCAD = TBLCONTATO.IDCAD '
    + ' WHERE (TBLCADASTRO.idclass=''' + InttoStr(IDClass) + ''') and (TBLCONTATO.TIPO=''' + IntToStr(IDClassTelcom) + '''or TBLCONTATO.TIPO is null) ORDER BY TBLCADDOCUMENTACAO.CODIGO ASC');
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
        ibClassificacao.Close;
        ibClassificacao.SQL.Clear;
        ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Com''');
        ibClassificacao.Open;
        IDClassTelcom := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identiicacao do contato de telefone coml. na variavel.

        //BUSCA TODOS OS CLIENTES QUE ESTEJAM NA CLASSIFICAÇÃO DE CLIENTES
        ibCadastro.Close;
        ibCadastro.SQL.Clear;
        ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLCADDOCUMENTACAO.CODIGO,TBLCADDOCUMENTACAO.IE_RG,'
        + ' TBLCONTATO.CONTATO As Telefone,TBLCONTATO.TIPO FROM TBLCADASTRO '
        + ' LEFT OUTER JOIN TBLCONTATO ON TBLCADASTRO.IDCAD = TBLCONTATO.IDCAD '
        + ' LEFT OUTER JOIN TBLCADDOCUMENTACAO ON TBLCADASTRO.IDCAD = TBLCADDOCUMENTACAO.IDCAD '
        + ' WHERE TBLCADASTRO.idclass=''' + InttoStr(IDClass) + ''' and (TBLCONTATO.TIPO=''' + IntToStr(IDClassTelcom) + '''or TBLCONTATO.TIPO is null) ORDER BY TBLCADASTRO.NOME');
        ibCadastro.Open;

  end;

     lbl_edtTelefone.Clear;
     lbl_edtCelular.Clear;
     lbl_edtNome.Clear;

end;

procedure TfrmBuscaClientes.dbgClientesCellClick(Column: TColumn);

begin

  { ExibeDados;
   //exibe os dados no form do posto
   frmPosto.ExibeDados;
   frmPosto.lbl_edtCodCartao.SetFocus;
   frmPosto.cboClienteChange(frmPosto);
 //  frmPosto.DesabilitaCli(True);
 //  frmPosto.DesabilitaProd(True);
 //  frmPosto.TrazerProdAP;
   frmPosto.TrazerVeiculoAP;
   //exibe os dados no form do cliente
   frmclientes.ExibeDadosCliente;  }

  with dmModule do begin

    IDCad := ibCadastro.FieldByName('IDCAD').AsInteger;
    IDCadCliCx := ibCadastro.FieldByName('IDCAD').AsInteger; //ATRIBUI O IDCAD DO CADASTRO A VARIAVEL
    lbl_IDCli.Caption := intToStr(IDCad);
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

    ibContato.Close;
    ibContato.SQL.Clear;
    ibContato.SQL.Add('SELECT DDD,CONTATO FROM TBLCONTATO WHERE'
    + ' (IDCAD='''+ InttoStr(IDCad) + ''') And (TIPO=''' + InttoStr(IDClassTelcom) + ''')');
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

      ibContato.Close;
      ibContato.SQL.Clear;
      ibContato.SQL.Add('SELECT DDD,CONTATO FROM TBLCONTATO WHERE'
      + ' (IDCAD='''+ InttoStr(IDCad) + ''') And (TIPO=''' + InttoStr(IDClassTelCel) + ''')');
      ibContato.Open;

      //se tiver registro traz no campo
      if ibContato.RecordCount > 0 Then begin
         lbl_edtCelular.Text       := ibContato.FieldByName('CONTATO').AsString; //TRAZ O CONTATO (TELEFONE) CELULAR
       // limpa os campos se nao houver registro.
      end else begin
        lbl_edtCelular.Clear;
      end;

  end;{with}


end;

procedure TfrmBuscaClientes.FormCreate(Sender: TObject);
begin
 MontaColunas := True;
end;

procedure TfrmBuscaClientes.lbl_edtNomeChange(Sender: TObject);
begin

  with dmModule do begin

    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
    ibClassificacao.Open;
    IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO FORNECEDOR NA VARIAVEL.

    ibCadastro.Close;                                                                                    //  and TBLCADASTRO.NOME LIKE '+''''+'%'+lbl_edtNome.text+'%'+'''
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLCADDOCUMENTACAO.CODIGO FROM TBLCADASTRO '
    + 'LEFT OUTER JOIN TBLCADDOCUMENTACAO ON TBLCADASTRO.IDCAD=TBLCADDOCUMENTACAO.IDCAD '
    + 'WHERE IDCLASS=''' + InttoStr(IDClass) + ''' and TBLCADASTRO.NOME LIKE '+''''+'%'+lbl_edtNome.text+'%'+'''');
    ibCadastro.Open;

  end;{With}

end;

procedure TfrmBuscaClientes.ibeaSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmBuscaClientes.lbl_edtTelefoneExit(Sender: TObject);
begin

  with dmModule do begin

    if lbl_edtTelefone.Text <> '' Then begin

      lbl_edtTelefone.Text := StringReplace(lbl_edtTelefone.Text,'-','',[rfReplaceAll]);
      lbl_edtTelefone.Text := FormatFloat('0000-0000',StrToFloat(lbl_edtTelefone.Text));

    end;

    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
    ibClassificacao.Open;
    IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO FORNECEDOR NA VARIAVEL.

    ibCadastro.Close;                                                                                    //  and TBLCADASTRO.NOME LIKE '+''''+'%'+lbl_edtNome.text+'%'+'''
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLCONTATO.CONTATO FROM TBLCADASTRO '
    + 'LEFT OUTER JOIN TBLCONTATO ON TBLCADASTRO.IDCAD=TBLCONTATO.IDCAD '
    + 'WHERE IDCLASS=''' + InttoStr(IDClass) + ''' and TBLCONTATO.CONTATO=''' + lbl_edtTelefone.Text + '''');
    ibCadastro.Open;

    if ibCadastro.RecordCount > 0 Then begin

      lbl_edtNome.Text := ibCadastro.FieldByName('NOME').AsString;

    end;//IF

  end;{With}

end;

procedure TfrmBuscaClientes.lbl_edtTelefoneKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key =#13 Then begin

    lbl_edtNome.SetFocus;

  end;

end;

procedure TfrmBuscaClientes.ibeaIncluirClick(Sender: TObject);

var

IDClassCli,IDClassTelCom,IDClassCelular,i : Integer;
strNomeCliente : TCliente;
intIDCliente : TCliente;
begin

  with dmModule do begin

    with frmClientes do begin

      if pcCadastrodeclientes.ActivePage.TabIndex = 0 Then begin

     {   if (ibCadastro.Active) and (ibContato.Active) and (ibDocumentacao.Active) Then begin
          ibCadastro.First;
          ibContato.First;
          ibDocumentacao.First;
        end; }
        ExibeDadosCliente;

      end;{if pc cadclientes}

    end;//with ficha anicli

    if frmContasareceber.Showing Then begin

      with FrmContasaReceber do begin

      ibClassificacao.Close;
      ibClassificacao.SQL.Clear;
      ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
      ibClassificacao.Open;
      IDClassCli := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO FORNECEDOR NA VARIAVEL.

      ibCadastro.Close;
      ibCadastro.SQL.Clear;
      ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + IntToStr(IDClassCli) + ''' and IDCAD=''' + IntToStr(IDCad) + '''');
      ibCadastro.Open;

      lbl_edtNumero.Text := ibCadastro.FieldByName('NUMERO').AsString;

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


      for i:=0 to frmContasaReceber.cboCliente.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
        if TClasseCombo( frmContasaReceber.cboCliente.Items.Objects[i]).ID = ibCadastro.FieldByName('IDCAD').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
          frmContasaReceber.cboCliente.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
          Break;
        end else begin
          frmContasaReceber.cboCliente.ClearSelection;//LIMPA A SELECAO.
        end;{if}
      end;{for}

////////////////////////////////////////////////////////////////////////////////
    //ROTINA PARA TRAZER O TELEFONE COMERCIAL OU RESIDENCIAL
    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Com''');
    ibClassificacao.Open;
    IDClassTelCom := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO FORNECEDOR NA VARIAVEL.

    ibContato.Close;
    ibContato.SQL.Clear;
    ibContato.SQL.Add('SELECT CONTATO FROM TBLCONTATO WHERE TIPO=''' + IntToStr(IDClassTelCom) + ''' and IDCAD=''' + IntToStr(IDCad) + '''');
    ibContato.Open;

    frmContasaReceber.lbl_edtTelefone.Text  := ibContato.FieldByName('CONTATO').AsString;

////////////////////////////////////////////////////////////////////////////////
     //ROTINA PARA TRAZER O ENDERECO E O BAIRRO
     ibLogradouro.Close;
     ibLogradouro.SQL.Clear;
     ibLogradouro.SQL.Add('SELECT * FROM TBLLOGRADOURO WHERE IDCAD=''' + IntToStr(IDCad) + '''');
     ibLogradouro.Open;

     frmContasaReceber.lbl_edtEndereco.Text  := ibLogradouro.FieldByName('ENDERECO').AsString;
     frmContasaReceber.lbl_edtBairro.Text    := ibLogradouro.FieldByName('BAIRRO').AsString;

////////////////////////////////////////////////////////////////////////////////


      end;//with

    end;//if

////////////////////////////////////////////////////////////////////////////////


  if frmRestaurante.Showing then begin

    //instanciando o obj

    try

      strNomeCliente := TCliente.Create();
      intIDCliente   := TCliente.Create();
      strNomeCliente.Nome := lbl_edtNome.Text;
      intIDCliente.ID := StrToInt(lbl_IDCli.Caption);

      frmRestaurante.lbl_IDCli.Caption := IntToStr(intIDCliente.ID);
      frmRestaurante.lbl_Cliente.Caption := strNomeCliente.Nome;

    finally

      strNomeCliente.Free;
      intIDCliente.Free;
      frmBuscaClientes.Close;
      
    end;

  end;//if

////////////////////////////////////////////////////////////////////////////////
{  if frmPedidodeVenda.Showing Then begin

    with frmPedidodeVenda do begin

      ibClassificacao.Close;
      ibClassificacao.SQL.Clear;
      ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
      ibClassificacao.Open;
      IDClassCli := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO FORNECEDOR NA VARIAVEL.

      ibCadastro.Close;
      ibCadastro.SQL.Clear;
      ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + IntToStr(IDClassCli) + ''' and IDCAD=''' + IntToStr(IDCad) + '''');
      ibCadastro.Open;

      lbl_edtNumero.Text := ibCadastro.FieldByName('NUMERO').AsString;

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////


      for i:=0 to frmPedidodeVenda.cboCliente.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
        if TClasseCombo( frmPedidodeVenda.cboCliente.Items.Objects[i]).ID = ibCadastro.FieldByName('IDCAD').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
          frmPedidodeVenda.cboCliente.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
          Break;
        end else begin
          frmPedidodeVenda.cboCliente.ClearSelection;//LIMPA A SELECAO.
        end;//
      end;//

////////////////////////////////////////////////////////////////////////////////
    //ROTINA PARA TRAZER O TELEFONE COMERCIAL OU RESIDENCIAL
    if frmPedidodeVenda.lbl_edtTelefone.Text = '' Then begin

    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Com''');
    ibClassificacao.Open;
    IDClassTelCom := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO FORNECEDOR NA VARIAVEL.

    ibContato.Close;
    ibContato.SQL.Clear;
    ibContato.SQL.Add('SELECT CONTATO FROM TBLCONTATO WHERE TIPO=''' + IntToStr(IDClassTelCom) + ''' and IDCAD=''' + IntToStr(IDCad) + '''');
    ibContato.Open;

    frmPedidodeVenda.lbl_edtTelefone.Text  := ibContato.FieldByName('CONTATO').AsString;

    end;//if
////////////////////////////////////////////////////////////////////////////////

    if frmPedidodeVenda.lbl_edtCelular.Text = '' Then begin

    //ROTINA PARA TRAZER O TELEFONE CELULAR
    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Cel''');
    ibClassificacao.Open;
    IDClassCelular := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO FORNECEDOR NA VARIAVEL.

    ibContato.Close;
    ibContato.SQL.Clear;
    ibContato.SQL.Add('SELECT CONTATO FROM TBLCONTATO WHERE TIPO=''' + IntToStr(IDClassCelular) + ''' and IDCAD=''' + IntToStr(IDCad) + '''');
    ibContato.Open;

    frmPedidodeVenda.lbl_edtCelular.Text  := ibContato.FieldByName('CONTATO').AsString;

    end;//if

////////////////////////////////////////////////////////////////////////////////
     //ROTINA PARA TRAZER O ENDERECO E O BAIRRO
     ibLogradouro.Close;
     ibLogradouro.SQL.Clear;
     ibLogradouro.SQL.Add('SELECT * FROM TBLLOGRADOURO WHERE IDCAD=''' + IntToStr(IDCad) + '''');
     ibLogradouro.Open;

     frmPedidodeVenda.lbl_edtEndereco.Text  := ibLogradouro.FieldByName('ENDERECO').AsString;
     frmPedidodeVenda.lbl_edtBairro.Text    := ibLogradouro.FieldByName('BAIRRO').AsString;

////////////////////////////////////////////////////////////////////////////////


      end;//with

    end;//if }



////////////////////////////////////////////////////////////////////////////////

   { if frmRecebeLoja.Showing Then begin

    with frmRecebeLoja do begin

      //BUSCA TODOS OS CLIENTES QUE ESTEJAM NA CLASSIFICAÇÃO DE CLIENTES
      ibTempCadastro.Close;
      ibTempCadastro.SQL.Clear;
      ibTempCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE TBLCADASTRO.IDCAD=''' + InttoStr(IDCad) + '''');
      ibTempCadastro.Open;

      frmRecebeLoja.lbl_edtCodCli.Text   := IntToStr(ibTempCadastro.FieldByName('IDCAD').AsInteger);
      frmRecebeLoja.lbl_edtNomeCliente.Text   := ibTempCadastro.FieldByName('NOME').AsString;

    end;//with


    end;//if }

     lbl_edtTelefone.Clear;
     lbl_edtCelular.Clear;
     lbl_edtNome.Clear;
         
  end;//with

end;

procedure TfrmBuscaClientes.lbl_edtCelularExit(Sender: TObject);
begin

  with dmModule do begin

    if lbl_edtCelular.Text <> '' Then begin

      lbl_edtCelular.Text := StringReplace(lbl_edtCelular.Text,'-','',[rfReplaceAll]);
      lbl_edtCelular.Text := FormatFloat('0000-0000',StrToFloat(lbl_edtCelular.Text));

    end;

    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
    ibClassificacao.Open;
    IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO FORNECEDOR NA VARIAVEL.

    ibCadastro.Close;                                                                                    //  and TBLCADASTRO.NOME LIKE '+''''+'%'+lbl_edtNome.text+'%'+'''
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLCONTATO.CONTATO FROM TBLCADASTRO '
    + 'LEFT OUTER JOIN TBLCONTATO ON TBLCADASTRO.IDCAD=TBLCONTATO.IDCAD '
    + 'WHERE IDCLASS=''' + InttoStr(IDClass) + ''' and TBLCONTATO.CONTATO=''' + lbl_edtCelular.Text + '''');
    ibCadastro.Open;

    if ibCadastro.RecordCount > 0 Then begin

      lbl_edtNome.Text := ibCadastro.FieldByName('NOME').AsString;

    end;//IF

  end;{With}

end;

procedure TfrmBuscaClientes.lbl_edtCelularKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key =#13 Then begin

    lbl_edtNome.SetFocus;

  end;
  
end;

end.
