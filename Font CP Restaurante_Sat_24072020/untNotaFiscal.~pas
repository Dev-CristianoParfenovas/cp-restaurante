unit untNotaFiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BmsXPCheckBox, mxFlatControls, StdCtrls, ExtCtrls,
  IBEAntialiasButton, Grids, DBGrids, ComCtrls, classComboBox, IBQuery;

type
  TfrmNotaFiscal = class(TForm)
    lbl_edtNumeroNF: TLabeledEdit;
    ibeaNovo: TIBEAntialiasButton;
    ibeaAlterar: TIBEAntialiasButton;
    ibeaExcluir: TIBEAntialiasButton;
    ibeaSair: TIBEAntialiasButton;
    GroupBox1: TGroupBox;
    lbl_edtCodCliente: TLabeledEdit;
    lbl_edtCnpjCpf: TLabeledEdit;
    lbl_edtIE: TLabeledEdit;
    lbl_edtEnd: TLabeledEdit;
    lbl_edtNumero: TLabeledEdit;
    lbl_edtUF: TLabeledEdit;
    lbl_edtBairro: TLabeledEdit;
    lbl_edtCep: TLabeledEdit;
    cboCliente: TComboBox;
    lbl_Cliente: TLabel;
    lbl_edtDDD: TLabeledEdit;
    lbl_edtTelefone: TLabeledEdit;
    GroupBox2: TGroupBox;
    lbl_Prod: TLabel;
    lbl_edtCodBarras: TLabeledEdit;
    lbl_edtQtde: TLabeledEdit;
    lbl_edtVlrUnitario: TLabeledEdit;
    cboProd: TComboBox;
    lbl_edtCodProd: TLabeledEdit;
    cboNatureza: TComboBox;
    lbl_Natureza: TLabel;
    ckSaida: TCheckBox;
    ckEntrada: TCheckBox;
    Label1: TLabel;
    cboCondPagto: TComboBox;
    lbl_CondPagto: TLabel;
    lbl_edtDesc: TLabeledEdit;
    lbl_edtAcrescimo: TLabeledEdit;
    lbl_edtTotal: TLabeledEdit;
    cboTransportadora: TComboBox;
    lbl_Transp: TLabel;
    dbgNotaFiscal: TDBGrid;
    ibeaBuscaCli: TIBEAntialiasButton;
    ibeaAbreRelatorio: TIBEAntialiasButton;
    dtpDataEmissao: TDateTimePicker;
    lbl_edtTotalGeral: TLabeledEdit;
    lbl_edtFrete: TLabeledEdit;
    cboEspecie: TComboBox;
    lbl_Especie: TLabel;
    lbl_CodNatureza: TLabel;
    lbl_Emissao: TLabel;
    ibeaIncluir: TIBEAntialiasButton;
    procedure ibeaSairClick(Sender: TObject);
    procedure Commit(IBQueryExec : TIBQuery);
    procedure LimpaNotaFiscal;
    procedure ExecSELECTNota;
    procedure ExecSELECTNatureza;
    procedure ExecSELECTCliente;
    procedure ExecSELECTCondPagto;
    procedure ExecSELECTProdutos;
    procedure FormShow(Sender: TObject);
    procedure cboNaturezaClick(Sender: TObject);
    procedure ibeaBuscaCliClick(Sender: TObject);
    procedure ibeaNovoClick(Sender: TObject);
    procedure ibeaIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNotaFiscal: TfrmNotaFiscal;
  MontaColunas : Boolean;
implementation

uses untdmModule, DB, BuscaClientes;

{$R *.dfm}

procedure TfrmNotaFiscal.ibeaSairClick(Sender: TObject);
begin

  if (lbl_edtNumeroNF.Text <> '')Then begin

    Application.MessageBox('É necessário finalizar a nota clicando no botão gravar','Nota não finalizada',+MB_OK+MB_DEFBUTTON1+MB_ICONINFORMATION);

  end else begin

    Close;

  end;

end;

procedure TfrmNotaFiscal.Commit(IBQueryExec : TIBQuery);

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
procedure TfrmNotaFiscal.LimpaNotaFiscal;

begin

lbl_edtNumeroNF.Clear;
lbl_edtCodCliente.Clear;
lbl_edtDDD.Clear;
lbl_edtTelefone.Clear;
cboCliente.ClearSelection;
lbl_edtCnpjCpf.Clear;
lbl_edtIE.Clear;
lbl_edtEnd.Clear;
lbl_edtNumero.Clear;
lbl_edtCep.Clear;
lbl_edtBairro.Clear;
lbl_edtUF.Clear;
lbl_CodNatureza.Caption := '';
cboNatureza.ClearSelection;
cboCondPagto.ClearSelection;
cboTransportadora.ClearSelection;
lbl_edtFrete.Clear;
cboEspecie.ClearSelection;
ckSaida.Checked := False;
ckEntrada.Checked := False;
lbl_edtCodBarras.Clear;
lbl_edtCodProd.Clear;
cboProd.ClearSelection;
lbl_edtQtde.Text := '1';
lbl_edtVlrUnitario.Text := '0,00';
lbl_edtDesc.Clear;
lbl_edtAcrescimo.Clear;
lbl_edtTotal.Text := '0,00';
lbl_edtTotalGeral.Text := '0,00';

end;

procedure TfrmNotaFiscal.ExecSELECTNota;

begin

  with dmModule do begin

    Commit(ibNotaFiscal);
    ibNotaFiscal.Close;
    ibNotaFiscal.SQL.Clear;
    ibNotaFiscal.SQL.Add('SELECT TBLNOTAFISCAL.*,TBLCADASTRO.NOME As Cliente,'
    + 'CADPRODUTOS.NOME As Produto,NATUREZA.DESCRICAO As TipoNatureza,'
    + 'CONDICOESPAGAMENTO.DESCRICAO As CondPagto FROM TBLNOTAFISCAL '
    + 'INNER JOIN TBLCADASTRO ON TBLNOTAFISCAL.IDCLINOTA=TBLCADASTRO.IDCAD '
    + 'INNER JOIN CADPRODUTOS ON TBLNOTAFISCAL.IDPRODNOTA=CADPRODUTOS.IDPROD '
    + 'INNER JOIN NATUREZA ON TBLNOTAFISCAL.IDNATUREZA=NATUREZA.IDNATUREZA '
    + 'INNER JOIN CONDICOESPAGAMENTO ON TBLNOTAFISCAL.IDCONDPAGTO=CONDICOESPAGAMENTO.IDCONDPAGTO');
    ibNotaFiscal.Open;

  end;//with

end;

procedure TfrmNotaFiscal.ExecSELECTNatureza;

var
  IDClassNatureza    : TClasseCombo;

begin

  with dmModule do begin

     //SELECT PARA TRAZER OS DADOS DA TABELA
      ibNatureza.Close;
      ibNatureza.SQL.Clear;
      ibNatureza.SQL.Add('SELECT * FROM NATUREZA');
      ibNatureza.Open;

      cboNatureza.Clear;//LIMPA A SELECAO DO COMBO

    while not ibNatureza.Eof do begin//TRAZ A IDENTIFICACAO NO COMBO ATRAVES DO IDENQUANTO NAO FOR FIM DOS REGISTROS

      IDClassNatureza    := TClasseCombo.Create;// ATRIBUI A CLASSE CRIADA NA VARIAVEL.
      IDClassNatureza.ID := ibNatureza.FieldByName('IDNATUREZA').AsInteger;//ATRIBUI A IDENTIFICACAO DO CAMPO DA TABELA NA VARIAVEL
      cboNatureza.Items.AddObject(ibNatureza.FieldByName('DESCRICAO').AsString,IDClassNatureza);//ADICIONA O OBJETO OU ITEM CONTENTO TEXTO VINDOS DE UMA TABELA.
      ibNatureza.Next;

    end;{while}

  end;{with}

end;

procedure TfrmNotaFiscal.ExecSELECTCliente;

var
  IDClassCliente : TClasseCombo;
  IDClassCli : Integer;

begin

  with dmModule do begin

     //SELECT PARA TRAZER OS DADOS DA TABELA
      ibClassificacao.Close;
      ibClassificacao.SQL.Clear;
      ibClassificacao.SQL.Add('SELECT * FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
      ibClassificacao.Open;
      IDClassCli := ibClassificacao.FieldByName('IDCLASS').AsInteger;

      ibCadastro.Close;
      ibCadastro.SQL.Clear;
      ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE IDCAD=''' + IntToStr(IDClassCli) + '''');
      ibCadastro.Open;

      cboCliente.Clear;//LIMPA A SELECAO DO COMBO

    while not ibCadastro.Eof do begin//TRAZ A IDENTIFICACAO NO COMBO ATRAVES DO IDENQUANTO NAO FOR FIM DOS REGISTROS

      IDClassCliente    := TClasseCombo.Create;// ATRIBUI A CLASSE CRIADA NA VARIAVEL.
      IDClassCliente.ID := ibCadastro.FieldByName('IDCAD').AsInteger;//ATRIBUI A IDENTIFICACAO DO CAMPO DA TABELA NA VARIAVEL
      cboCliente.Items.AddObject(ibCadastro.FieldByName('NOME').AsString,IDClassCliente);//ADICIONA O OBJETO OU ITEM CONTENTO TEXTO VINDOS DE UMA TABELA.
      ibCadastro.Next;

    end;{while}

  end;{with}

end;

procedure TfrmNotaFiscal.ExecSELECTCondPagto;

var
IDClassCondPagto : TClasseCombo;

begin

  with dmModule do begin

    //TRAZ NO COMBO SOMENTE OS COMBUSTIVEIS DO CADASTRO DE PRODUTOS.
    ibCondicoesPagto.Close;
    ibCondicoesPagto.SQL.Clear;
    ibCondicoesPagto.SQL.Add('SELECT * FROM CONDICOESPAGAMENTO');
    ibCondicoesPagto.Open;

    cboCondPagto.Clear;

    while not ibCondicoesPagto.Eof do begin//TRAZ A IDENTIFICACAO NO COMBO ATRAVES DO IDENQUANTO NAO FOR FIM DOS REGISTROS

      IDClassCondPagto := TClasseCombo.Create;// ATRIBUI A CLASSE CRIADA NA VARIAVEL.
      IDClassCondPagto.ID := ibCondicoesPagto.FieldByName('IDCONDPAGTO').AsInteger;//ATRIBUI A IDENTIFICACAO DO CAMPO DA TABELA NA VARIAVEL
      cboCondPagto.Items.AddObject(ibCondicoesPagto.FieldByName('DESCRICAO').AsString,IDClassCondPagto);//ADICIONA O OBJETO OU ITEM CONTENTO TEXTO VINDOS DE UMA TABELA.
      ibCondicoesPagto.Next;

    end;

  end;{with}

end;

procedure TfrmNotaFiscal.ExecSELECTProdutos;

var

IDClassProd : TClasseCombo;

begin

  with dmModule do begin

     //SELECT PARA TRAZER OS DADOS DA TABELA
      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS');
      ibProdutos.Open;

      cboProd.Clear;//LIMPA A SELECAO DO COMBO

    while not ibProdutos.Eof do begin//TRAZ A IDENTIFICACAO NO COMBO ATRAVES DO IDENQUANTO NAO FOR FIM DOS REGISTROS

      IDClassProd    := TClasseCombo.Create;// ATRIBUI A CLASSE CRIADA NA VARIAVEL.
      IDClassProd.ID := ibProdutos.FieldByName('IDPROD').AsInteger;//ATRIBUI A IDENTIFICACAO DO CAMPO DA TABELA NA VARIAVEL
      cboProd.Items.AddObject(ibProdutos.FieldByName('NOME').AsString,IDClassProd);//ADICIONA O OBJETO OU ITEM CONTENTO TEXTO VINDOS DE UMA TABELA.
      ibProdutos.Next;

    end;{while}

  end;{with}

end;

procedure TfrmNotaFiscal.FormShow(Sender: TObject);
begin

dtpDataEmissao.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));

  with dmModule do begin

    ExecSELECTCliente;
    ExecSELECTProdutos;
    ExecSELECTNatureza;
    ExecSELECTCondPagto;

    with dbgNotaFiscal do begin

      // monta as colunas abaixo se for verdadeiro
      if MontaColunas Then begin

         DataSource := dtsNotaFiscal;

        //determina as colunas a serem montadas
        Columns.Insert(0);
        Columns.Insert(1);
        Columns.Insert(2);
        Columns.Insert(3);

        //Parametros da Coluna que exibe o Código da entrada no estoque
        Columns.Items[0].Title.Caption := 'Produto';
        Columns.Items[0].FieldName     := 'Produto';
        Columns.Items[0].Width         := 170;
        Columns.Items[0].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o Nome do produto que esta entrando no estoque.
        Columns.Items[1].Title.Caption := 'Valor';
        Columns.Items[1].FieldName     := 'VLRUNIT';
        Columns.Items[1].Width         := 70;
        Columns.Items[1].Alignment     := taLeftJustify;


        //Parametros da Coluna que exibe o vlr unitario do produto.
        Columns.Items[2].Title.Caption := 'Qtde.';
        Columns.Items[2].FieldName     := 'QTDE';
        Columns.Items[2].Width         := 50;
        Columns.Items[2].Alignment     := taLeftJustify;

        //parametros que exibe a qtde. de entrada no estoque
        Columns.Items[3].Title.Caption := 'Total';
        Columns.Items[3].FieldName     := 'VLRTOTAL';
        Columns.Items[3].Width         := 70;
        Columns.Items[3].Alignment     := taLeftJustify;

        MontaColunas := False;

      end;{if}

    end;{with dbg nota fiscal}

  end;//with

end;

procedure TfrmNotaFiscal.cboNaturezaClick(Sender: TObject);

var

IDClassNaturezaCod : TClasseCombo;
StringNatureza : String;

begin

with dmModule do begin

    if cboNatureza.ItemIndex <> -1 Then begin//SE HOUVER REGISTRO NO COMBO
      IDClassNaturezaCod     := TClasseCombo( cboNatureza.Items.Objects[cboNatureza.ItemIndex] );//ATRIBUI A CLASSE COMBO NA VARIAVEL
      StringNatureza    := ' IDNATUREZA=''' + InttoStr( IDClassNaturezaCod.ID ) + '''';//ATRIBUI O ID DO FIELD NA VARIAVEL STRING.

      //TRAZ NO COMBO SOMENTE OS COMBUSTIVEIS DO CADASTRO DE PRODUTOS REFERENTE AO ESTOQUE SELECIONADO.
      ibNatureza.Close;
      ibNatureza.SQL.Clear;
      ibNatureza.SQL.Add('SELECT * FROM NATUREZA WHERE ' + StringNatureza);
      ibNatureza.Open;

      lbl_CodNatureza.Caption := ibNatureza.FieldByName('NATUREZA_COD').AsString;

    end;{if}

  end;{with}

end;

procedure TfrmNotaFiscal.ibeaBuscaCliClick(Sender: TObject);
begin
frmBuscaClientes.ShowModal;
end;

procedure TfrmNotaFiscal.ibeaNovoClick(Sender: TObject);

var

IDClassGravaCli : TClasseCombo;
StringGravaCli : String;

begin

  with dmModule do begin

  if ibeaNovo.Caption = '&Gravar' Then begin

    if cboCliente.ItemIndex = -1 Then begin

    StringGravaCli  := ' ''0'',';

    end else begin

    IDClassGravaCli := TClasseCombo(cboCliente.Items.Objects[cboCliente.ItemIndex]);
    StringGravaCli  := ' ''' + IntToStr(IDClassGravaCli.ID) + ''',';

    end;

    ibDetalheNota.Close;
    ibDetalheNota.SQL.Clear;
    ibDetalheNota.SQL.Add('INSERT INTO TBLDETALHENOTA'
    + '(DATA,IDCLIDETALHE,HORA) values '
    + '(''' + FormatDateTime('mm-dd-yyyy',Now) + ''','
    +StringGravaCli
    + ' ''' + FormatDateTime('hh:mm:ss',Now) + ''')');
    ibDetalheNota.ExecSQL;
    Commit(ibDetalheNota);

    ibeaNovo.Caption := '&Novo';
    LimpaNotaFiscal;
    {lbl_edtNumPedido.Clear;
    cboTipoPagto.ClearSelection;
    cboCliente.ClearSelection;
    lbl_edtTotalPed.Clear;
    lbl_edtTotalGeral.Clear;
    lbl_edtTelefone.Clear;
    lbl_edtCpf.Clear;
    lbl_edtRg.Clear;
  //  cboProduto.Clear;
    lbl_edtVlrProd.Clear;
    lbl_edtQtde.Clear;
    lbl_edtTotalProd.Clear;
    lbl_edtDesc.Clear;
    lbl_edtAcresc.Clear;
    lbl_edtTotalPed.Clear;
    lbl_CodBarras.Caption := '';
    lbl_NomeProd.Caption := '';
    lbl_Valor.Caption := '';
    lbl_edtEndereco.Clear;
    lbl_edtNumero.Clear;
    lbl_edtCompl.Clear;
    lbl_edtBairro.Clear;
    lbl_edtCidade.Clear;}

    end else begin

    ibeaNovo.Caption := '&Gravar';
   // cboTipoPagto.ClearSelection;
    cboCliente.ClearSelection;
   { lbl_edtComissao.Clear;
    lbl_edtTelefone.Clear;
    lbl_edtCpf.Clear;
    lbl_edtRg.Clear;
    lbl_edtTotalPed.Clear;
    lbl_edtTelefone.SetFocus; }

    ibDetalheNota.Close;
    ibDetalheNota.SQL.Clear;
    ibDetalheNota.SQL.Add('SELECT * FROM TBLDETALHENOTA ORDER BY IDDETALHE DESC');
    ibDetalheNota.Open;

    lbl_edtNumeroNF.Text := IntToStr(ibDetalheNota.FieldByName('IDDETALHE').AsInteger + 1);

    end;

  end;{with}

end;

procedure TfrmNotaFiscal.ibeaIncluirClick(Sender: TObject);

var

StringGravaCondPagto,StringGravaCli : String;
IDClassGravaCondPagto,IDClassGravaCli : TClasseCombo;
StringGravaProd,StringGravaNatureza,StringGravaTransp : String;
IDClassGravaProd,IDClassGravaNatureza,IDClassGravaTransp : TClasseCombo;
StringGravaEsp : String;
IDClassGravaEsp : TClasseCombo;
TipoSaidaEntrada,IDDetalheNota,IDFrete,IDCodCli : Integer;
Qtde,VlrUnit,VlrTotal,Desconto,Acrescimo : String;

begin

  with dmModule do begin

  if (lbl_edtNumeroNF.Text <> '')and(cboCliente.Text <> '')Then begin

   IDDetalheNota := StrToInt(lbl_edtNumeroNF.Text);
////////////////////////////////////////////////////////////////////////////////

    if cboCliente.ItemIndex = -1 Then begin

      StringGravaCli  := ' ''0'',';

    end else begin

      IDClassGravaCli := TClasseCombo(cboCliente.Items.Objects[cboCliente.ItemIndex]);
      StringGravaCli  := ' ''' + IntToStr(IDClassGravaCli.ID) + ''',';

    end;{ifcbocliente}

    if cboProd.ItemIndex = -1 Then begin

      StringGravaProd := ' '' 0 '',';

    end else begin

      IDClassGravaProd   := TClasseCombo( cboProd.Items.Objects[cboProd.ItemIndex] );
      StringGravaProd          := ' ''' + InttoStr( IDClassGravaProd.ID ) + ''',';

    end;//cboprod

    if cboCondPagto.ItemIndex = -1 Then begin

      StringGravaCondPagto := ' ''0'',';

    end else begin

      IDClassGravaCondPagto   := TClasseCombo( cboCondPagto.Items.Objects[cboCondPagto.ItemIndex] );
      StringGravaCondPagto  := ' ''' + InttoStr( IDClassGravaCondPagto.ID ) + ''',';

    end;{ifcbotipopagto}

    if cboNatureza.ItemIndex = -1 Then begin

      StringGravaNatureza := ' ''0'',';

    end else begin

      IDClassGravaNatureza   := TClasseCombo( cboNatureza.Items.Objects[cboNatureza.ItemIndex] );
      StringGravaNatureza  := ' ''' + InttoStr( IDClassGravaNatureza.ID ) + ''',';

    end;{ifcbotipopagto}

    if cboTransportadora.ItemIndex = -1 Then begin

      StringGravaTransp := ' ''0'',';

    end else begin

      IDClassGravaTransp   := TClasseCombo( cboTransportadora.Items.Objects[cboTransportadora.ItemIndex] );
      StringGravaTransp  := ' ''' + InttoStr( IDClassGravaTransp.ID ) + ''',';

    end;{ifcbotipopagto}

    if cboEspecie.ItemIndex = -1 Then begin

      StringGravaEsp := ' ''0'',';

    end else begin

      IDClassGravaEsp   := TClasseCombo( cboEspecie.Items.Objects[cboEspecie.ItemIndex] );
      StringGravaEsp  := ' ''' + InttoStr( IDClassGravaEsp.ID ) + ''',';

    end;{ifcbotipopagto}

    if ckSaida.Checked Then begin

      TipoSaidaEntrada := StrToInt('1');

    end;

    if ckEntrada.Checked Then begin

      TipoSaidaEntrada := StrToInt('2');

    end;

    Qtde := StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]);
    Qtde := StringReplace(Qtde,DecimalSeparator,'.',[rfReplaceAll]);
    if Qtde = '' Then
    Qtde := '0';

    VlrUnit := StringReplace(lbl_edtVlrUnitario.Text,ThousandSeparator,'',[rfReplaceAll]);
    VlrUnit := StringReplace(VlrUnit,DecimalSeparator,'.',[rfReplaceAll]);
    if VlrUnit = '' Then
       VlrUnit := '0';

    VlrTotal := StringReplace(lbl_edtTotal.Text,ThousandSeparator,'',[rfReplaceAll]);
    VlrTotal := StringReplace(VlrTotal,DecimalSeparator,'.',[rfReplaceAll]);
    if VlrTotal = '' Then
    VlrTotal := '0';

    Desconto := StringReplace(lbl_edtDesc.Text,ThousandSeparator,'',[rfReplaceAll]);
    Desconto := StringReplace(Desconto,DecimalSeparator,'.',[rfReplaceAll]);
    if Desconto = '' Then
       Desconto := '0';

    Acrescimo := StringReplace(lbl_edtAcrescimo.Text,ThousandSeparator,'',[rfReplaceAll]);
    Acrescimo := StringReplace(Acrescimo,DecimalSeparator,'.',[rfReplaceAll]);
    if Acrescimo = '' Then
    Acrescimo := '0';

    if lbl_edtFrete.Text <> '' Then begin

      IDFrete := StrToInt(lbl_edtFrete.Text);

    end else begin

      IDFrete := StrToInt('0');

    end;

    if lbl_edtCodCliente.Text <> '' Then begin

      IDCodCli := StrToInt(lbl_edtCodCliente.Text);

    end else begin

      IDCodCli := StrToInt('0');

    end;

    ibNotaFiscal.Close;
    ibNotaFiscal.SQL.Clear;
    ibNotaFiscal.SQL.Add('INSERT INTO TBLNOTAFISCAL'
    + '(CODCLI,IDCLINOTA,IDPRODNOTA,IDCONDPAGTO,IDNATUREZA,IDTRANSPORTADORA,'
    + 'IDESPECIE,IDDETALHENOTA,FRETE,QTDE,VLRUNIT,DESCONTO,ACRESCIMO,'
    + 'VLRTOTAL) values '
    + '(''' + IntToStr(IDCodCli) + ''','
    +StringGravaCli
    +StringGravaProd
    +StringGravaCondPagto
    +StringGravaNatureza
    +StringGravaTransp
    +StringGravaEsp
    + ' ''' + IntToStr(IDDetalheNota) + ''','
    + ' ''' + IntToStr(IDFrete) + ''','
    + ' ''' + Qtde + ''','
    + ' ''' + VlrUnit + ''','
    + ' ''' + Desconto + ''','
    + ' ''' + Acrescimo + ''','
    + ' ''' + VlrTotal + ''')');
    ibNotaFiscal.ExecSQL;
    Commit(ibNotaFiscal);
////////////////////////////////////////////////////////////////////////////////

    Commit(ibNotaFiscal);
    ibNotaFiscal.Close;
    ibNotaFiscal.SQL.Clear;
    ibNotaFiscal.SQL.Add('SELECT TBLNOTAFISCAL.*,TBLCADASTRO.NOME As Cliente,'
    + 'CADPRODUTOS.NOME As Produto,NATUREZA.DESCRICAO As TipoNatureza,'
    + 'CONDICOESPAGAMENTO.DESCRICAO As CondPagto FROM TBLNOTAFISCAL '
    + 'INNER JOIN TBLCADASTRO ON TBLNOTAFISCAL.IDCLINOTA=TBLCADASTRO.IDCAD '
    + 'INNER JOIN CADPRODUTOS ON TBLNOTAFISCAL.IDPRODNOTA=CADPRODUTOS.IDPROD '
    + 'INNER JOIN NATUREZA ON TBLNOTAFISCAL.IDNATUREZA=NATUREZA.IDNATUREZA '
    + 'INNER JOIN CONDICOESPAGAMENTO ON TBLNOTAFISCAL.IDCONDPAGTO=CONDICOESPAGAMENTO.IDCONDPAGTO WHERE TBLNOTAFISCAL.IDDETALHENOTA=''' + IntToStr(IDDetalheNota) + '''');
    ibNotaFiscal.Open;

////////////////////////////////////////////////////////////////////////////////

  end;//if labelnota e cbocliente em branco


  end;//with

end;

procedure TfrmNotaFiscal.FormCreate(Sender: TObject);
begin
MontaColunas := True;
end;

end.
