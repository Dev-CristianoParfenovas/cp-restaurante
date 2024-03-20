unit untCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, BmsXPButton, Grids, DBGrids,
  classComboBox, ExtCtrls, IBQuery, ComCtrls, BmsXPCheckBox, Menus;

type
  TfrmCliente = class(TForm)
    ibeaSair: TBmsXPButton;
    listboxCupom: TListBox;
    ListBoxDadosEmpresa: TListBox;
    Shape1: TShape;
    lbl_Cupom: TLabel;
    lbl_CodVenda: TLabel;
    TimerPrincipal: TTimer;
    StatusLine: TStatusBar;
    lbl_edtIDProdCX: TLabeledEdit;
    lbl_edtCodCli: TLabeledEdit;
    lbl_Funcionario: TLabel;
    lbl_Func: TLabel;
    lbl_edtIDFuncionario: TLabel;
    Label2: TLabel;
    lbl_Entregador: TLabel;
    pcPedidos: TPageControl;
    tbsLancamento: TTabSheet;
    tbsPendentes: TTabSheet;
    lbl_Prods: TLabel;
    lbl_TipoPreco: TLabel;
    MainMenu1: TMainMenu;
    Venda1: TMenuItem;
    MudarPreco1: TMenuItem;
    FecharCaixa1: TMenuItem;
    FluxoCaixa1: TMenuItem;
    ImprimirCupomDetalhado1: TMenuItem;
    CancelaCupomInteiro1: TMenuItem;
    CancelaltimoCupom1: TMenuItem;
    Sangria1: TMenuItem;
    BuscaCep1: TMenuItem;
    lbl_edtTotalPedido: TLabeledEdit;
    ibeaReceber: TBmsXPButton;
    ibeaExcluirItem: TBmsXPButton;
    ckVlrUnitario: TBmsXPCheckBox;
    dbgPendentes: TDBGrid;
    EncerraVenda1: TMenuItem;
    ibeaLimpaProd: TBmsXPButton;
    ibeaLimpar: TBmsXPButton;
    lbl_LimpaCampoProd: TLabel;
    Label4: TLabel;
    BmsXPButton2: TBmsXPButton;
    lbl_F1: TLabel;
    lbl_F2: TLabel;
    lbl_F3: TLabel;
    Label3: TLabel;
    lbl_F5: TLabel;
    lbl_F8: TLabel;
    lbl_F9: TLabel;
    Label1: TLabel;
    dbgPedido: TDBGrid;
    dbgPedidoDetalhado: TDBGrid;
    lbl_PDetalhado: TLabel;
    Label5: TLabel;
    lbl_edtTotalDetalhado: TLabeledEdit;
    btReceberBaixar: TBmsXPButton;
    lbl_CupomDetalhado: TLabel;
    cboTipoPagto: TComboBox;
    Label6: TLabel;
    cboEntregador: TComboBox;
    dtpDataLancto: TDateTimePicker;
    lbl_edtTelefone: TLabeledEdit;
    lbl_edtCelular: TLabeledEdit;
    lbl_edtNome: TLabeledEdit;
    lbl_edtEndereco: TLabeledEdit;
    lbl_edtNum: TLabeledEdit;
    lbl_edtCompl: TLabeledEdit;
    lbl_edtBairro: TLabeledEdit;
    lbl_edtCodProd: TLabeledEdit;
    lbl_edtCodBarras: TLabeledEdit;
    cboProdutos: TComboBox;
    lbl_edtObs: TLabeledEdit;
    lbl_edtQtde: TLabeledEdit;
    lbl_edtVlrUnit: TLabeledEdit;
    lbl_edtVlrTotal: TLabeledEdit;
    pnlDataHora: TPanel;
    procedure ibeaSairClick(Sender: TObject);
    procedure Commit(IBQueryExec : TIBQuery);
    procedure GravaPedido;
    procedure ExecSELECTTipoPagto;
    procedure ExecSELECTCliente;
    procedure ExecSELECTProdutos;
    procedure ExecSelectEntregador;
    procedure LimparCampos;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lbl_edtTelefoneExit(Sender: TObject);
    procedure lbl_edtTelefoneKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtCelularExit(Sender: TObject);
    procedure lbl_edtCelularKeyPress(Sender: TObject; var Key: Char);
    procedure dbgPedidoCellClick(Column: TColumn);
    procedure ibeaLimparClick(Sender: TObject);
    procedure lbl_edtQtdeExit(Sender: TObject);
    procedure cboProdutosClick(Sender: TObject);
    procedure lbl_edtCodBarrasChange(Sender: TObject);
    procedure lbl_edtQtdeKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtVlrTotalKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbl_edtCodBarrasKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtNomeCachorroKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtEnderecoKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtNumKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtComplKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtBairroExit(Sender: TObject);
    procedure lbl_edtBairroKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtCodProdExit(Sender: TObject);
    procedure lbl_edtCodProdKeyPress(Sender: TObject; var Key: Char);
    procedure TimerPrincipalTimer(Sender: TObject);
    procedure ibeaReceberClick(Sender: TObject);
    procedure ibeaExcluirItemClick(Sender: TObject);
    procedure BmsXPButton2Click(Sender: TObject);
    procedure ibeaLimpaProdClick(Sender: TObject);
    procedure lbl_edtObsKeyPress(Sender: TObject; var Key: Char);
    procedure ckVlrUnitarioCheck(Sender: TObject);
    procedure lbl_edtVlrUnitExit(Sender: TObject);
    procedure lbl_edtVlrUnitKeyPress(Sender: TObject; var Key: Char);
    procedure CTRLVVlrUnitrio1Click(Sender: TObject);
    procedure MudarPreco1Click(Sender: TObject);
    procedure lbl_edtNomeExit(Sender: TObject);
    procedure dbgPedidoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FecharCaixa1Click(Sender: TObject);
    procedure FluxoCaixa1Click(Sender: TObject);
    procedure ImprimirCupomDetalhado1Click(Sender: TObject);
    procedure cboProdutosChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CancelaCupomInteiro1Click(Sender: TObject);
    procedure CancelaltimoCupom1Click(Sender: TObject);
    procedure Sangria1Click(Sender: TObject);
    procedure BuscaCep1Click(Sender: TObject);
    procedure EncerraVenda1Click(Sender: TObject);
    procedure pcPedidosChange(Sender: TObject);
    procedure dbgPendentesCellClick(Column: TColumn);
    procedure btReceberBaixarClick(Sender: TObject);
    procedure lbl_edtTelefoneEnter(Sender: TObject);
    procedure lbl_edtCelularEnter(Sender: TObject);
    procedure lbl_edtNomeEnter(Sender: TObject);
    procedure cboEntregadorEnter(Sender: TObject);
    procedure cboEntregadorExit(Sender: TObject);
    procedure lbl_edtEnderecoExit(Sender: TObject);
    procedure lbl_edtEnderecoEnter(Sender: TObject);
    procedure lbl_edtNumEnter(Sender: TObject);
    procedure lbl_edtNumExit(Sender: TObject);
    procedure lbl_edtComplEnter(Sender: TObject);
    procedure lbl_edtComplExit(Sender: TObject);
    procedure lbl_edtBairroEnter(Sender: TObject);
    procedure lbl_edtCodProdEnter(Sender: TObject);
    procedure lbl_edtCodBarrasEnter(Sender: TObject);
    procedure lbl_edtCodBarrasExit(Sender: TObject);
    procedure cboProdutosEnter(Sender: TObject);
    procedure cboProdutosExit(Sender: TObject);
    procedure lbl_edtObsEnter(Sender: TObject);
    procedure lbl_edtObsExit(Sender: TObject);
    procedure lbl_edtQtdeEnter(Sender: TObject);
    procedure lbl_edtVlrUnitEnter(Sender: TObject);
    procedure lbl_edtVlrTotalEnter(Sender: TObject);
    procedure lbl_edtVlrTotalExit(Sender: TObject);
    procedure lbl_edtTotalDetalhadoEnter(Sender: TObject);
    procedure lbl_edtTotalDetalhadoExit(Sender: TObject);
    procedure cboTipoPagtoEnter(Sender: TObject);
    procedure cboTipoPagtoExit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCliente: TfrmCliente;
  MontaColunas,MontaColPendentes,MontaColDetalhe : Boolean;
  IDClassTelcom,IDClassTelcomAg : Integer;
  IDClassTelCel,IDClassTelCelAg : Integer;
  IDClassServicos,IDClassProdutos : TClasseCombo;
  InsereVenda : Boolean;
  IDServVenda : Integer;
  IDVendasServsPedido,IDExcProd,IDExcServs,IDPendente : Integer;
  
implementation

uses untdmModule, unClientes, DB, funcPosto, Daruma_Framework_Autenticar,
  Daruma_Framework_Impressora_Dual, Daruma_Framework_DUAL_ImprimirTexto,
  Daruma_Framework_Looping_Verificacao_Status,
  Daruma_Framework_Looping_Verificacao_Status_Doc,
  Daruma_Framework_Variaveis_Globais, uBuscaProdutos, 
  untRecebeLoja, untManutCx, untSenhaCx, untFluxoCaixa, untSangria,
  untBuscaCep;
Function Daruma_DUAL_ImprimirTexto( TextoLivre: String; TamanhoTexto: Integer ): Integer; StdCall; External 'Daruma32.dll'

{$R *.dfm}

procedure TfrmCliente.Commit(IBQueryExec : TIBQuery);

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

procedure TfrmCliente.ExecSELECTTipoPagto;

var

IDTipoPagto    : TClasseCombo;

begin

  with dmModule do begin

    ibTipoPagtoF.Close;
    ibTipoPagtoF.SQL.Clear;
    ibTipoPagtoF.SQL.Add('SELECT * FROM TBLTIPOPAGTOAVULSO');
    ibTipoPagtoF.Open;

    cboTipoPagto.Clear;

    while not ibTipoPagtoF.Eof do begin

      IDTipoPagto    := TClasseCombo.Create;
      IDTipoPagto.ID := ibTipoPagtoF.FieldByName('IDTIPO').AsInteger;
      cboTipoPagto.Items.AddObject(ibTipoPagtoF.FieldByName('DESCRICAO').AsString,IDTipoPagto);
      cboTipoPagto.ItemIndex := 0;
      ibTipoPagtoF.Next;

    end;{while}

  end;{with}

end;

procedure TfrmCliente.GravaPedido;

var

TipoVenda,TotalCusto,TipoSaida,NomeProduto,TotalQProdVendido,TotalPA : String;
ValorCustoE,QtdeProdutoV,QtdeVendida,ValorVendido,ValorTotalPA : Real;
QtdeEstoque,QtdeVenda,VlrProduto,Custo : Real;
EstoqueFinal,TotalProdEstoque,StringProd,LocalEstoque : String;
IDVendaCaixa,IDCliente : Integer;
CodVendaCx,Situacao,NomeVenda : String;
QtdeEstoqueVenda, TotaldaVenda, TotalConvertido : Real;
ValorUnit,ValorTotal,ValorB,ValorC,QtdeProd,PendentePagoVenda,PosVenda : String;
IDFuncionario,IDTipoPagtoVenda : Integer;
IDClassEntregador : TClasseCombo;
StrEntregador : String;

begin

  with dmModule do begin

      ibEntrProdEstoque.Close;
      ibEntrProdEstoque.SQL.Clear;
      ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,'
      + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,TBLENTRADAESTOQUEPROD.ESTOQUEMIN,'
      + 'CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORCUSTO,CADPRODUTOS.TIPOPROD FROM TBLENTRADAESTOQUEPROD '
      + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
      + 'WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + lbl_edtIDProdCX.Text + '''');
      ibEntrProdEstoque.Open;

////////////////////////////////////////////////////////////////////////////////

      //ROTINA ABAIXO PARA SOMAR TOTAL DO ESTQUE E QUANTIDADE DO ESTOQUE
     if lbl_edtIDProdCX.Text <> '' Then begin

       QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

       QtdeVenda   := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));

       QtdeEstoque := QtdeEstoque - QtdeVenda;

       EstoqueFinal := StringReplace(FloattoStr(QtdeEstoque),ThousandSeparator,'',[rfReplaceAll]);
       EstoqueFinal := StringReplace(EstoqueFinal,DecimalSeparator,'.',[rfReplaceAll]);

       //AQUI VAI O CALCULO DO TOTAL CONFORME VENDE O PRODUTO
       VlrProduto  := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORVENDAA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

       VlrProduto  := QtdeEstoque * VlrProduto;

       TotalProdEstoque := StringReplace(FloattoStr(VlrProduto),ThousandSeparator,'',[rfReplaceAll]);
       TotalProdEstoque := StringReplace(TotalProdEstoque,DecimalSeparator,'.',[rfReplaceAll]);

       ValorCustoE := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORCUSTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

       ValorCustoE := QtdeEstoque * ValorCustoE;

       TotalCusto := StringReplace(FloattoStr(ValorCustoE),ThousandSeparator,'',[rfReplaceAll]);
       TotalCusto := StringReplace(TotalCusto,DecimalSeparator,'.',[rfReplaceAll]);

       ibEntrProdEstoque.Close;
       ibEntrProdEstoque.SQL.Clear;
       ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
       +'TOTALCUSTO=''' + TotalCusto + ''','
       +'QUANTIDADE=''' + (EstoqueFinal) + ''','
       +'VLRTOTAL=''' + (TotalProdEstoque) +  ''' WHERE IDPROD=''' + lbl_edtIDProdCX.Text + '''');
       ibEntrProdEstoque.ExecSQL;
       Commit(ibEntrProdEstoque);

     end;//if label IDPRODCX


   if lbl_edtIDProdCX.Text = '' Then begin

      StringProd := ' '' 0 '',';
      TotalCusto := '0';

    end else begin

      StringProd          := lbl_edtIDProdCX.Text;

      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT CADPRODUTOS.*,'
      + 'LOCALESTOCAGEM.NOME As Estoque FROM CADPRODUTOS '
      + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE '
      + 'WHERE IDPROD=''' + StringProd + '''');
      ibProdutos.Open;

      LocalEstoque := ibProdutos.FieldByName('Estoque').AsString;
      NomeProduto  := ibProdutos.FieldByName('NOME').AsString;


      Custo := StrtoFloat(StringReplace(FloattoStr(ibProdutos.FieldByName('VALORCUSTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
      QtdeVendida := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));
      Custo := QtdeVendida * Custo;

      TotalCusto := StringReplace(FloattoStr(Custo),ThousandSeparator,'',[rfReplaceAll]);
      TotalCusto := StringReplace(TotalCusto,DecimalSeparator,'.',[rfReplaceAll]);

    end;

   { if lbl_Func.Caption <> '' Then begin

      ibUser.Close;
      ibUser.SQL.Clear;
      ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE NOME=''' + lbl_Func.Caption+ '''');
      ibUser.Open;

      IDFuncCX := ibUser.FieldByName('IDUSER').AsInteger;

    end;//if labelfunc }

    if InsereVenda Then begin

       ibServsVendasCli.Close;
       ibServsVendasCli.SQL.Clear;
       ibServsVendasCli.SQL.Add('INSERT INTO TBLSERVICOSVENDASCLI '
       + '(IDPROD,DATA) values '
       + '(''' + StringProd + ''','
       + ' ''' + FormatDateTime('mm-dd-yyyy',now) + ''')');
       ibServsVendasCli.ExecSQL;
       Commit(ibServsVendasCli);


       CodVendaCx := (lbl_CodVenda.Caption);

       IDVendaCaixa := StrToInt(CodVendaCx);

       //select para trazer o ultimo id
       ibServsVendasCli.Close;
       ibServsVendasCli.SQL.Clear;
       ibServsVendasCli.SQL.Add('SELECT * FROM TBLSERVICOSVENDASCLI WHERE IDSERVSVENDA=''' + IntToStr(IDVendaCaixa) + '''');
       ibServsVendasCli.Open;


           if lbl_CodVenda.Caption = '1' Then begin

            IDVendasServsPedido := 1;

          end else begin

            IDVendasServsPedido := ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger;

          end;

            InsereVenda := False;

    end;//if inserevenda

          ValorUnit := StringReplace(lbl_edtVlrUnit.Text,ThousandSeparator,'',[rfReplaceAll]);
          ValorUnit := StringReplace(ValorUnit,DecimalSeparator,'.',[rfReplaceAll]);
          if ValorUnit  = '' Then
             ValorUnit := '0';


          ValorTotal := StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]);
          ValorTotal := StringReplace(ValorTotal,DecimalSeparator,'.',[rfReplaceAll]);
          if ValorTotal = '' Then
          ValorTotal := '0';

        {  if lbl_TipoPreco.Caption = '' Then begin

          ValorTotal := StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]);
          ValorTotal := StringReplace(ValorTotal,DecimalSeparator,'.',[rfReplaceAll]);

          end else begin

             ValorTotal := '0';

          end;  }

      //    TotaldaVenda := StrToFloat(StringReplace(ValorTotal,ThousandSeparator,'',[rfReplaceAll]));
       //   TotalConvertido := StrToFloat(FormatFloat(',0.00',TotaldaVenda));

          if lbl_TipoPreco.Caption = 'Preço de Venda B' Then begin

          ValorB := StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]);
          ValorB := StringReplace(ValorB,DecimalSeparator,'.',[rfReplaceAll]);

          end else begin

             ValorB := '0';

          end;

         if lbl_TipoPreco.Caption = 'Preço de Venda C' Then begin

          ValorC := StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]);
          ValorC := StringReplace(ValorC,DecimalSeparator,'.',[rfReplaceAll]);

         end else begin

             ValorC := '0';

         end;


          QtdeProd := StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]);
          QtdeProd := StringReplace(QtdeProd,DecimalSeparator,'.',[rfReplaceAll]);
          if QtdeProd  = '' Then
             QtdeProd := '0';

          if lbl_edtCodCli.Text <> '' Then begin

            IDCliente := StrToInt(lbl_edtCodCli.Text);

          end else begin

            IDCliente := 0;

          end;

          Situacao := 'Pago';

          if lbl_edtIDFuncionario.Caption <> '' Then begin

            IDFuncionario := StrToInt(lbl_edtIDFuncionario.Caption);

          end else begin

            IDFuncionario := 0;

          end;

         NomeVenda := '';
         IDTipoPagtoVenda := 1;
         PosVenda := 'Pago';
         PendentePagoVenda := 'Pendente';

         if cboEntregador.ItemIndex = - 1 Then begin

           StrEntregador     := ' ''0'',';

         end else begin

           IDClassEntregador     := TClasseCombo( cboEntregador.Items.Objects[cboEntregador.ItemIndex] );
           StrEntregador  := ' ''' + InttoStr( IDClassEntregador.ID ) + ''',';

         end;

          ibServsVenda.Close;
          ibServsVenda.SQL.Clear;
          ibServsVenda.SQL.Add('INSERT INTO TBLSERVICOSVENDAS '
          + ' (IDPROD,VLRUNIT,VLRTOTAL,VALORB,VALORC,ESTOQUE,IDSERVSVENDA,'
          + 'TOTALCUSTO,NOMEPROD,QTDE,IDCLIENTE,PENDENTEPAGO,OBS,IDFUNC,'
          + 'NOMEFUNC,NOMEVENDA,IDTIPOPAGTO,POSVENDA,IDENTREGADOR,'
          + 'DATA,HORA) values '
          + ' (''' + StringProd  + ''','
          + ' ''' + ValorUnit + ''','
          + ' ''' + ValorTotal + ''','
          + ' ''' + ValorB + ''','
          + ' ''' + ValorC + ''','
          + ' ''' + LocalEstoque + ''','
          + ' ''' + IntToStr(IDVendasServsPedido) + ''','
          + ' ''' + TotalCusto + ''','
          + ' ''' + NomeProduto + ''','
          + ' ''' + QtdeProd + ''','
          + ' ''' + IntToStr(IDCliente) + ''','
          + ' ''' + Situacao + ''','
          + ' ''' + lbl_edtObs.Text + ''','
          + ' ''' + IntToStr(IDFuncionario) + ''','
          + ' ''' + lbl_Func.Caption + ''','
          + ' ''' + NomeVenda + ''','
          + ' ''' + IntToStr(IDTipoPagtoVenda) + ''','
          //+ ' ''' + PendentePagoVenda + ''','
          + ' ''' + PosVenda + ''','
          + StrEntregador
          + ' ''' + FormatDateTime('mm-dd-yyyy',dtpDataLancto.Date) + ''','
          + ' ''' + FormatDateTime('hh:mm:ss',now) + ''')');
          ibServsVenda.ExecSQL;

          Commit(ibServsVenda);

////////////////////////////////////////////////////////////////////////////////

          ibServsVenda.Close;
          ibServsVenda.SQL.Clear;
          ibServsVenda.SQL.Add('SELECT TBLSERVICOSVENDAS.*,'
          + 'CADPRODUTOS.NOME As Produto,CADPRODUTOS.CODBARRAS,CADPRODUTOS.REF FROM TBLSERVICOSVENDAS '
          + 'INNER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD WHERE IDSERVSVENDA=''' + IntToStr(IDVendasServsPedido) + '''');
          ibServsVenda.Open;

         (ibServsVenda.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := ',0.00';
         (ibServsVenda.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := ',0.00';
         (ibServsVenda.FieldByName('VALORB') as TFloatField).DisplayFormat := ',0.00';
         (ibServsVenda.FieldByName('VALORC') as TFloatField).DisplayFormat := ',0.00';


////////////////////////////////////////////////////////////////////////////////


  end;{with}


end;

procedure TfrmCliente.ExecSELECTCliente;

var
IDClass,IDClassTelcom : Integer;
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
    Commit(ibTempCadastro);
    ibTempCadastro.Close;
    ibTempCadastro.SQL.Clear;
    ibTempCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLLOGRADOURO.BAIRRO,TBLLOGRADOURO.ENDERECO,'
    + ' TBLCONTATO.CONTATO As Telefone,TBLCONTATO.TIPO FROM TBLCADASTRO '
    + ' LEFT OUTER JOIN TBLCONTATO ON TBLCADASTRO.IDCAD = TBLCONTATO.IDCAD '
    + ' LEFT OUTER JOIN TBLLOGRADOURO ON TBLCADASTRO.IDCAD = TBLLOGRADOURO.IDCAD '
    + ' WHERE TBLCADASTRO.idclass=''' + InttoStr(IDClass) + ''' and (TBLCONTATO.TIPO=''' + IntToStr(IDClassTelcom) + '''or TBLCONTATO.TIPO is null)   ORDER BY TBLCADASTRO.IDCAD DESC');
    ibTempCadastro.Open;

  end; {with}

end;


procedure TfrmCliente.ExecSELECTProdutos;

begin

  with dmModule do begin

    Commit(ibProdutos);
    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS ORDER BY IDPROD ASC');
    ibProdutos.Open;

    cboProdutos.Clear;

    while not ibProdutos.Eof do begin

      IDClassProdutos := TClasseCombo.Create;
      IDClassProdutos.ID := ibProdutos.FieldByName('IDPROD').AsInteger;
      cboProdutos.Items.AddObject(ibProdutos.FieldByName('NOME').AsString,IDClassProdutos);
      ibProdutos.Next;

    end;//while

  end;//with

end;

procedure TfrmCliente.ExecSelectEntregador;

var

IDClassEntregador : TClasseCombo;

begin

  with dmModule do begin

    Commit(ibUser);
    ibUser.Close;
    ibUser.SQL.Clear;
    ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE TIPOUSUARIO=''Funcionario''');
    ibUser.Open;

    cboEntregador.Clear;

    while not ibUser.Eof do begin

      IDClassEntregador := TClasseCombo.Create;
      IDClassEntregador.ID := ibUser.FieldByName('IDUSER').AsInteger;
      cboEntregador.Items.AddObject(ibUser.FieldByName('LOGIN').AsString,IDClassEntregador);
      ibUser.Next;

    end;//while

  end;//with

end;
procedure TfrmCliente.ibeaSairClick(Sender: TObject);
begin
Close;
listboxCupom.Clear;
ListBoxDadosEmpresa.Clear;

end;

procedure TfrmCliente.LimparCampos;

begin

lbl_edtTelefone.Clear;
lbl_edtCelular.Clear;
lbl_edtNome.Clear;
lbl_edtEndereco.Clear;
lbl_edtNum.Clear;
lbl_edtCompl.Clear;
lbl_edtBairro.Clear;
lbl_edtCodBarras.Clear;
lbl_edtQtde.Text := '1';
lbl_edtVlrUnit.Clear;
lbl_edtVlrTotal.Clear;
lbl_edtTotalPedido.Clear;
lbl_edtObs.Clear;
listboxCupom.Clear;
lbl_TipoPreco.Caption := '';
lbl_edtCodProd.Clear;

  if cboProdutos.Text <> '' Then begin

    cboProdutos.ClearSelection;

  end;//if

end;

procedure TfrmCliente.FormShow(Sender: TObject);

var

DadosEmpresa : Array[0..6] of String;
CabeCupomCompl : String;

begin

lbl_edtTelefone.SetFocus;
LimparCampos;
lbl_edtQtde.Text := '1';
lbl_CodVenda.Caption := '';
ckVlrUnitario.Checked := False;
dtpDataLancto.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
pcPedidos.ActivePageIndex := 0;

  if frmSenhaCx.Showing Then begin

    lbl_Func.Caption := frmSenhaCX.cboUsuario.Text;
    lbl_edtIDFuncionario.Caption := frmSenhaCX.lbl_edtIDFunc.Text;
    
  end;//if
  
  with dmModule do begin
    ibServsVenda.Close;
    ibTempVendaLoja.Close;
    ExecSELECTTipoPagto;
    ExecSELECTProdutos;
    ExecSelectEntregador;
  //  ExecSELECTCliente;

    with dbgPedido do begin

      ibServsVendasCli.Close;
      ibServsVendasCli.SQL.Clear;
      ibServsVendasCli.SQL.Add('SELECT IDSERVSVENDA FROM TBLSERVICOSVENDASCLI ORDER BY IDSERVSVENDA DESC');
      ibServsVendasCli.Open;

    if (ibServsVendasCli.RecordCount = 0) Then begin

      lbl_CodVenda.Caption := '1';

    end else begin

      lbl_CodVenda.Caption := IntToStr(ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger + 1);

      IDServVenda := (ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger + 1);

    end;{if}

      InsereVenda := True;

      if MontaColunas Then begin

        DataSource := dtsServsVenda;

        Columns.Insert(0);
        Columns.Insert(1);
        Columns.Insert(2);
        Columns.Insert(3);
        Columns.Insert(4);

        //Parametros da Coluna
        Columns.Items[0].Title.Caption := 'Nº Cupom';
        Columns.Items[0].FieldName     := 'IDSERVSVENDA';
        Columns.Items[0].Width         := 70;
        Columns.Items[0].Alignment     := taLeftJustify;

        //Parametros da Coluna
        Columns.Items[1].Title.Caption := 'Produto';
        Columns.Items[1].FieldName     := 'Produto';
        Columns.Items[1].Width         := 175;
        Columns.Items[1].Alignment     := taLeftJustify;

        Columns.Items[2].Title.Caption := 'Qtde';
        Columns.Items[2].FieldName     := 'QTDE';
        Columns.Items[2].Width         := 50;
        Columns.Items[2].Alignment     := taLeftJustify;

        //Parametros da Coluna
        Columns.Items[3].Title.Caption := 'Vlr.Unit.';
        Columns.Items[3].FieldName     := 'VLRUNIT';
        Columns.Items[3].Width         := 80;
        Columns.Items[3].Alignment     := taLeftJustify;

        Columns.Items[4].Title.Caption := 'Vlr.Total';
        Columns.Items[4].FieldName     := 'VLRTOTAL';
        Columns.Items[4].Width         := 80;
        Columns.Items[4].Alignment     := taLeftJustify;

        MontaColunas := False;  

      end;//if monta colunas

    end;;//whit dbgrid

////////////////////////////////////////////////////////////////////////////////

      Commit(ibTempVendasCli);
      ibTempVendasCli.Close;
      ibTempVendasCli.SQL.Clear;
      ibTempVendasCli.SQL.Add('SELECT * FROM TBLSERVICOSVENDASCLI WHERE TBLSERVICOSVENDASCLI.PENDENTE=''Sim'' ORDER BY IDSERVSVENDA ASC');
      ibTempVendasCli.Open;

      (ibTempVendasCli.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

    with dbgPendentes do begin

      if MontaColPendentes Then begin

        DataSource := dtsTempVendasCli;

        Columns.Insert(0);
        Columns.Insert(1);
        Columns.Insert(2);
        Columns.Insert(3);
        Columns.Insert(4);
        Columns.Insert(5);

        //Parametros da Coluna
        Columns.Items[0].Title.Caption := 'Nº Pedido';
        Columns.Items[0].FieldName     := 'IDSERVSVENDA';
        Columns.Items[0].Width         := 71;
        Columns.Items[0].Alignment     := taLeftJustify;

        //Parametros da Coluna
        Columns.Items[1].Title.Caption := 'Cliente';
        Columns.Items[1].FieldName     := 'NOMECLI';
        Columns.Items[1].Width         := 120;
        Columns.Items[1].Alignment     := taLeftJustify;

        Columns.Items[2].Title.Caption := 'Telefone';
        Columns.Items[2].FieldName     := 'FONECLI';
        Columns.Items[2].Width         := 70;
        Columns.Items[2].Alignment     := taLeftJustify;

        //Parametros da Coluna
        Columns.Items[3].Title.Caption := 'ENTREGADOR';
        Columns.Items[3].FieldName     := 'NOMEENTREGADOR';
        Columns.Items[3].Width         := 120;
        Columns.Items[3].Alignment     := taLeftJustify;

        Columns.Items[4].Title.Caption := 'Vlr.Total';
        Columns.Items[4].FieldName     := 'VLRTOTAL';
        Columns.Items[4].Width         := 70;
        Columns.Items[4].Alignment     := taLeftJustify;

        Columns.Items[5].Title.Caption := 'Horário';
        Columns.Items[5].FieldName     := 'HORA';
        Columns.Items[5].Width         := 80;
        Columns.Items[5].Alignment     := taLeftJustify;

        MontaColPendentes := False;  

      end;//if monta colunas

    end;;//whit dbgrid

////////////////////////////////////////////////////////////////////////////////

    with dbgPedidoDetalhado do begin

      if MontaColDetalhe Then begin

        DataSource := dtsTempVendaLoja;

        Columns.Insert(0);
        Columns.Insert(1);
        Columns.Insert(2);
        Columns.Insert(3);

        //Parametros da Coluna
        Columns.Items[0].Title.Caption := 'Descrição';
        Columns.Items[0].FieldName     := 'NOMEPROD';
        Columns.Items[0].Width         := 175;
        Columns.Items[0].Alignment     := taLeftJustify;

        Columns.Items[1].Title.Caption := 'Qtde';
        Columns.Items[1].FieldName     := 'QTDE';
        Columns.Items[1].Width         := 50;
        Columns.Items[1].Alignment     := taLeftJustify;

        //Parametros da Coluna
        Columns.Items[2].Title.Caption := 'Vlr.Unit.';
        Columns.Items[2].FieldName     := 'VLRUNIT';
        Columns.Items[2].Width         := 80;
        Columns.Items[2].Alignment     := taLeftJustify;

        Columns.Items[3].Title.Caption := 'Vlr.Total';
        Columns.Items[3].FieldName     := 'VLRTOTAL';
        Columns.Items[3].Width         := 80;
        Columns.Items[3].Alignment     := taLeftJustify;

        MontaColDetalhe := False;  

      end;//if monta colunas

    end;;//whit dbgrid

////////////////////////////////////////////////////////////////////////////////

      //rotina para cabeçalho do cupom
      Commit(ibConfig);
      ibConfig.Close;
      ibConfig.SQL.Clear;
      ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
      ibConfig.Open;

      CabeCupomCompl := ibConfig.FieldByName('CABCUPOMCOMPL').AsString;

      Commit(ibDadosEmpresa);
      ibDadosEmpresa.Close;
      ibDadosEmpresa.SQL.Clear;
      ibDadosEmpresa.SQL.Add('SELECT * FROM TBLDADOSEMPRESA');
      ibDadosEmpresa.Open;

      DadosEmpresa[0]:=ibDadosEmpresa.FieldByName('NOME').AsString;
      DadosEmpresa[1]:=ibDadosEmpresa.FieldByName('ENDERECO').AsString;
      DadosEmpresa[2]:=ibDadosEmpresa.FieldByName('NUMERO').AsString;
      DadosEmpresa[3]:=ibDadosEmpresa.FieldByName('BAIRRO').AsString;
      DadosEmpresa[4]:=ibDadosEmpresa.FieldByName('ESTADO').AsString;
      DadosEmpresa[5]:=ibDadosEmpresa.FieldByName('DDD').AsString;
      DadosEmpresa[6]:=ibDadosEmpresa.FieldByName('TELEFONE').AsString;

      with ListBoxDadosEmpresa do begin

        if CabeCupomCompl = 'Sim' Then begin

          ListBoxDadosEmpresa.Items.Add(DadosEmpresa[0]);
          ListBoxDadosEmpresa.Items.Add(DadosEmpresa[1]+','+DadosEmpresa[2]);
          ListBoxDadosEmpresa.Items.Add(DadosEmpresa[3]+'  '+'-'+'  '+DadosEmpresa[4]);
          ListBoxDadosEmpresa.Items.Add(DadosEmpresa[5]+' '+' '+DadosEmpresa[6]);

        end else begin

          ListBoxDadosEmpresa.Items.Add(DadosEmpresa[0]);
         // ListBoxDadosEmpresa.Items.Add(DadosEmpresa[1]+','+DadosEmpresa[2]);
        //  ListBoxDadosEmpresa.Items.Add(DadosEmpresa[3]+'  '+'-'+'  '+DadosEmpresa[4]);
       //   ListBoxDadosEmpresa.Items.Add(DadosEmpresa[5]+' '+' '+DadosEmpresa[6]);

       end;

     end;//with

  end;//with

end;

procedure TfrmCliente.FormCreate(Sender: TObject);
begin
MontaColunas := True;
MontaColPendentes := True;
MontaColDetalhe := True;
  pnlDataHora.Parent := StatusLine;
  pnlDataHora.SetBounds(188,4,162,14);

end;

procedure TfrmCliente.lbl_edtTelefoneExit(Sender: TObject);

var

DadosCupom : Array[0..8] of String;
PontoRef,DesenhodaDivisao : String;

begin

tedit(sender).color := clwindow;;
  with dmModule do begin

    if lbl_edtTelefone.Text <> '' Then begin

    ///  lbl_edtTelefone.Text := StringReplace(lbl_edtTelefone.Text,'-','',[rfReplaceAll]);
    ///  lbl_edtTelefone.Text := FormatFloat('0000-0000',StrToFloat(lbl_edtTelefone.Text));



    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
    ibClassificacao.Open;
    IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO FORNECEDOR NA VARIAVEL.

    Commit(ibTempCadastro);
    ibTempCadastro.Close;
    ibTempCadastro.SQL.Clear;
    ibTempCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLLOGRADOURO.BAIRRO,TBLLOGRADOURO.ENDERECO,'
    + ' TBLCONTATO.CONTATO As Telefone,TBLCONTATO.TIPO FROM TBLCADASTRO '
    + ' INNER JOIN TBLCONTATO ON TBLCADASTRO.IDCAD = TBLCONTATO.IDCAD '
    + ' LEFT OUTER JOIN TBLLOGRADOURO ON TBLCADASTRO.IDCAD = TBLLOGRADOURO.IDCAD '
    + 'WHERE IDCLASS=''' + InttoStr(IDClass) + ''' and TBLCONTATO.CONTATO=''' + lbl_edtTelefone.Text + '''');
    ibTempCadastro.Open;

    PontoRef := ibTempCadastro.FieldByName('PONTOREFERENCIA').AsString;

    if ibTempCadastro.RecordCount > 0 Then begin

        lbl_edtNome.Text := ibTempCadastro.FieldByName('NOME').AsString;
        lbl_edtEndereco.Text := ibTempCadastro.FieldByName('ENDERECO').AsString;
        lbl_edtNum.Text      := ibTempCadastro.FieldByName('NUMERO').AsString;
        lbl_edtCompl.Text    := ibTempCadastro.FieldByName('COMPL').AsString;
        lbl_edtBairro.Text   := ibTempCadastro.FieldByName('BAIRRO').AsString;
        lbl_edtCodCli.Text   := IntToStr(ibTempCadastro.FieldByName('IDCAD').AsInteger);

    end;//IF

    if (lbl_edtTelefone.Text <> '')and(lbl_edtNome.Text <> '') Then begin


      Commit(ibConfig);
      ibConfig.Close;
      ibConfig.SQL.Clear;
      ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
      ibConfig.Open;

      DesenhodaDivisao := ibConfig.FieldByName('DESENHODIVISAO').AsString;

      DadosCupom[0]:=lbl_edtNome.Text;
      DadosCupom[1]:=lbl_edtTelefone.Text;
      DadosCupom[2]:=lbl_edtEndereco.Text;
      DadosCupom[3]:=lbl_edtNum.Text;
      DadosCupom[4]:=lbl_edtCompl.Text;
      DadosCupom[5]:=lbl_edtBairro.Text;
      DadosCupom[6]:=PontoRef;
      DadosCupom[7]:=DesenhodaDivisao;

    {  if lbl_edtTelefone.Text <> '' Then begin

      DadosCupom[8]:=lbl_edtTelefone;

      end;

      if lbl_edtCelular.Text <> '' Then begin

      DadosCupom[8]:=lbl_edtCelular;

      end; }

      listboxCupom.Items.Add('Cliente:'+DadosCupom[0]);
      listboxCupom.Items.Add('Telefone:'+DadosCupom[1]);
      if lbl_edtEndereco.Text <> '' Then begin
      listboxCupom.Items.Add('End: '+DadosCupom[2]+','+DadosCupom[3]);
      end;
      if (lbl_edtCompl.Text <> '')or(lbl_edtBairro.Text <> '')Then begin
      listboxCupom.Items.Add('Compl:'+DadosCupom[4]+' '+'Bairro:'+DadosCupom[5]);
      end;
      if PontoRef <> '' Then begin
      listboxCupom.Items.Add('**'+DadosCupom[6]+'**');
      end;
      listboxCupom.Items.Add(DadosCupom[7]);

    end;//if inserirdados
    end;
  end;{With}

end;

procedure TfrmCliente.lbl_edtTelefoneKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key = #13 Then begin

    lbl_edtCodProd.SetFocus;

  end;//if

end;

procedure TfrmCliente.lbl_edtCelularExit(Sender: TObject);

var

DadosCupom : Array[0..7] of String;
PontoRef,DesenhodaDivisao : String;
begin

tedit(sender).color := clwindow;
  with dmModule do begin

    if lbl_edtCelular.Text <> '' Then begin

      lbl_edtCelular.Text := StringReplace(lbl_edtCelular.Text,'-','',[rfReplaceAll]);
      lbl_edtCelular.Text := FormatFloat('0000-0000',StrToFloat(lbl_edtCelular.Text));



    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
    ibClassificacao.Open;
    IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO FORNECEDOR NA VARIAVEL.

    Commit(ibTempCadastro);
    ibTempCadastro.Close;
    ibTempCadastro.SQL.Clear;
    ibTempCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLLOGRADOURO.BAIRRO,TBLLOGRADOURO.ENDERECO,'
    + ' TBLCONTATO.CONTATO As Telefone,TBLCONTATO.TIPO FROM TBLCADASTRO '
    + ' LEFT OUTER JOIN TBLCONTATO ON TBLCADASTRO.IDCAD = TBLCONTATO.IDCAD '
    + ' INNER JOIN TBLLOGRADOURO ON TBLCADASTRO.IDCAD = TBLLOGRADOURO.IDCAD '
    + 'WHERE IDCLASS=''' + InttoStr(IDClass) + ''' and TBLCONTATO.CONTATO=''' + lbl_edtCelular.Text + '''');
    ibTempCadastro.Open;

    PontoRef := ibTempCadastro.FieldByName('PONTOREFERENCIA').AsString;

    if ibTempCadastro.RecordCount > 0 Then begin

      lbl_edtNome.Text := ibTempCadastro.FieldByName('NOME').AsString;
      lbl_edtEndereco.Text := ibTempCadastro.FieldByName('ENDERECO').AsString;
      lbl_edtNum.Text      := ibTempCadastro.FieldByName('NUMERO').AsString;
      lbl_edtCompl.Text    := ibTempCadastro.FieldByName('COMPL').AsString;
      lbl_edtBairro.Text   := ibTempCadastro.FieldByName('BAIRRO').AsString;
      lbl_edtCodCli.Text   := IntToStr(ibTempCadastro.FieldByName('IDCAD').AsInteger);
      
    end;//IF

    if lbl_edtNome.Text <> '' Then begin

      Commit(ibConfig);
      ibConfig.Close;
      ibConfig.SQL.Clear;
      ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
      ibConfig.Open;

      DesenhodaDivisao := ibConfig.FieldByName('DESENHODIVISAO').AsString;


      DadosCupom[0]:=lbl_edtNome.Text;
      DadosCupom[1]:=lbl_edtCelular.Text;
      DadosCupom[2]:=lbl_edtEndereco.Text;
      DadosCupom[3]:=lbl_edtNum.Text;
      DadosCupom[4]:=lbl_edtCompl.Text;
      DadosCupom[5]:=lbl_edtBairro.Text;
      DadosCupom[6]:=PontoRef;
      DadosCupom[7]:=DesenhodaDivisao;

      listboxCupom.Items.Add('Cliente:'+DadosCupom[0]);
      listboxCupom.Items.Add('Celular:'+DadosCupom[1]);
      listboxCupom.Items.Add('End: '+DadosCupom[2]+','+DadosCupom[3]);
      listboxCupom.Items.Add('Compl:'+DadosCupom[4]+' '+'Bairro:'+DadosCupom[5]);
      listboxCupom.Items.Add('**'+DadosCupom[6]+'**');
      listboxCupom.Items.Add(DadosCupom[7]);

    end;//if
    end;
  end;{With}

end;

procedure TfrmCliente.lbl_edtCelularKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key = #13 Then begin

    lbl_edtCodProd.SetFocus;

  end;//if

end;

procedure TfrmCliente.dbgPedidoCellClick(Column: TColumn);

var

i : Integer;

begin

  with dmModule do begin

    if lbl_edtTotalPedido.Text > '0,00' Then begin


    IDExcProd  := ibServsVenda.FieldByName('IDPROD').AsInteger;
    IDExcServs := ibServsVenda.FieldByName('IDSERVS').AsInteger;
////////////////////////////////////////////////////////////////////////////////

    if ibServsVenda.RecordCount > 0 Then begin

      for i:=0 to cboProdutos.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
        if TClasseCombo( cboProdutos.Items.Objects[i]).ID = ibServsVenda.FieldByName('IDPROD').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
          cboProdutos.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
          Break;
        end else begin
          cboProdutos.ClearSelection;//LIMPA A SELECAO.
        end;{if}
      end;{for}

      lbl_edtCodProd.Text   := ibServsVenda.FieldByName('CODBARRAS').AsString;
      lbl_edtCodBarras.Text := ibServsVenda.FieldByName('CODBARRAS').AsString;
      lbl_edtQtde.Text      := FormatFloat('0',ibServsVenda.FieldByName('QTDE').AsFloat);
      lbl_edtVlrUnit.Text   := FormatFloat(CasasDecimais('Produtos'),ibServsVenda.FieldByName('VLRUNIT').AsFloat);
      lbl_edtVlrTotal.Text  := FormatFloat(CasasDecimais('Produtos'),ibServsVenda.FieldByName('VLRTOTAL').AsFloat);
      lbl_edtObs.Text       := ibServsVenda.FieldByName('OBS').AsString;

    end;//if record count

////////////////////////////////////////////////////////////////////////////////


 //   IDAnimalCliAg := ibAnimalCli.FieldByName('IDANIMALCLI').AsInteger;
 //   IDCadCliAg    := ibAnimalCli.FieldByName('IDCADCLI').AsInteger; //ATRIBUI O IDCAD DO CADASTRO A VARIAVEL

  {  if ibAnimalCli.RecordCount > 0 Then begin

      lbl_edtNome.Text          := ibAnimalCli.FieldByName('NOME').AsString;
      lbl_edtNomeCachorro.Text  := ibAnimalCli.FieldByName('NOMEANIMAL').AsString;
      lbl_edtEndereco.Text := ibAnimalCli.FieldByName('ENDERECO').AsString;
      lbl_edtNum.Text      := ibAnimalCli.FieldByName('NUMERO').AsString;
      lbl_edtCompl.Text    := ibAnimalCli.FieldByName('COMPL').AsString;
      lbl_edtBairro.Text   := ibAnimalCli.FieldByName('BAIRRO').AsString;

    end;  }


    //LOCALIZA O TELEFONE COMERCIAl
   { ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Tel Com''');
    ibClassificacao.Open;
    IDClassTelcom := ibClassificacao.FieldByName('IDCLASS').AsInteger;//atribui a identiicacao do contato de telefone coml. na variavel.

    ibContato.Close;
    ibContato.SQL.Clear;
    ibContato.SQL.Add('SELECT DDD,CONTATO FROM TBLCONTATO WHERE'
    + ' (IDCAD='''+ InttoStr(IDCadCliAg) + ''') And (TIPO=''' + InttoStr(IDClassTelcom) + ''')');
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
      + ' (IDCAD='''+ InttoStr(IDCadCliAg) + ''') And (TIPO=''' + InttoStr(IDClassTelCel) + ''')');
      ibContato.Open;

      //se tiver registro traz no campo
      if ibContato.RecordCount > 0 Then begin
         lbl_edtCelular.Text       := ibContato.FieldByName('CONTATO').AsString; //TRAZ O CONTATO (TELEFONE) CELULAR
       // limpa os campos se nao houver registro.
      end else begin
        lbl_edtCelular.Clear;
      end; }

    end;//if total pedido
    
  end;{with}

end;

procedure TfrmCliente.ibeaLimparClick(Sender: TObject);
begin

  with dmModule do begin

    LimparCampos;
    lbl_edtTelefone.SetFocus;
   // ExecSELECTCliente;
    
  end;//with

end;

procedure TfrmCliente.lbl_edtQtdeExit(Sender: TObject);

   var
    Valor1 :Real;
    Valor2 :Real;
    ValorReal :Real;
begin
tedit(sender).color := clwindow;
 if (cboProdutos.Text <> '') Then begin

  if lbl_edtQtde.Text <> '' Then begin// se for em branco executa rotina abaixo.

    if (Pos(',',lbl_edtQtde.Text)>0) and (lbl_edtQtde.Text <> '') Then begin

      Valor1 := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));
      Valor2 := StrToFloat(StringReplace(lbl_edtVlrUnit.Text,ThousandSeparator,'',[rfReplaceAll]));

      lbl_edtVlrTotal.Text := FormatFloat(',0.00',(Valor2 * Valor1));

    end else begin

      Valor1 := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));
      Valor2 := StrToFloat(StringReplace(lbl_edtVlrUnit.Text,ThousandSeparator,'',[rfReplaceAll]));
       lbl_edtVlrTotal.Text := FormatFloat(',0.00',(Valor2 * Valor1));

    end;{if}

  end;{if}

 end;{if cbo produto}


end;

procedure TfrmCliente.cboProdutosClick(Sender: TObject);

var

IDClassProduto : TClasseCombo;
Produto : Array[0..3] of String;
TipoPreco : String;

begin

  with dmModule do begin

    if cboProdutos.ItemIndex <> - 1 Then begin

      IDClassProduto := TClasseCombo(cboProdutos.Items.Objects[cboProdutos.ItemIndex]);

    end;

    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT CADPRODUTOS.*,LOCALESTOCAGEM.NOME As Estoque FROM CADPRODUTOS '
    + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE '
    + 'WHERE CADPRODUTOS.IDPROD=''' + IntToStr(IDClassProduto.ID) + '''');
    ibProdutos.Open;

////////////////////////////////////////////////////////////////////////////////

    if lbl_TipoPreco.Caption = '' Then begin

      TipoPreco := 'A';

    end;

    if lbl_TipoPreco.Caption = 'Preço de Venda(B)' Then begin

      TipoPreco := 'B';

    end;

    if lbl_TipoPreco.Caption = 'Preço de Venda(C)' Then begin

      TipoPreco := 'C';

    end;

    if  (TipoPreco = 'A') Then begin

      lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);

    end else if  (TipoPreco = 'B') Then begin

      lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAB').AsFloat);

    end else if  (TipoPreco = 'C') Then begin

      lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAC').AsFloat);

    end;

////////////////////////////////////////////////////////////////////////////////


    lbl_edtCodBarras.Text := ibProdutos.FieldByName('CODBARRAS').AsString;
    lbl_edtObs.SetFocus;
    lbl_edtQtde.Text := '1';

  end;{with}


end;

procedure TfrmCliente.lbl_edtCodBarrasChange(Sender: TObject);

var

i : Integer;

CodBarrasVenda, TipoPreco : String;

begin

  with dmModule do begin

    if lbl_edtCodBarras.Text <> '' Then begin

      CodBarrasVenda := lbl_edtCodBarras.Text;

    end;//if cod barras

    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE CADPRODUTOS.CODBARRAS=''' + CodBarrasVenda + ''' or CADPRODUTOS.CODBARRASAD=''' + CodBarrasVenda + '''');
    ibProdutos.Open;

    lbl_edtIDProdCX.Text := IntToStr(ibProdutos.FieldByName('IDPROD').AsInteger);

    if lbl_TipoPreco.Caption = '' Then begin

      TipoPreco := 'A';

    end;

    if lbl_TipoPreco.Caption = 'Preço de Venda(B)' Then begin

      TipoPreco := 'B';

    end;

    if lbl_TipoPreco.Caption = 'Preço de Venda(C)' Then begin

      TipoPreco := 'C';

    end;

  //  lbl_edtCodProd.Text := ibProdutos.FieldByName('IDPROD').AsString;
   // lbl_edtCodBarras.Text :=  ibProdutos.FieldByName('CODBARRAS').AsString;
   // lbl_NomeProd.Caption  :=  ibProdutos.FieldByName('NOME').AsString;
  //  lbl_edtEstoque.Text := ibProdutos.FieldByName('Estoque').AsString;

    if  (TipoPreco = 'A') Then begin

    lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);
   // lbl_Valor.Caption   := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);

    end else if  (TipoPreco = 'B') Then begin

   lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAB').AsFloat);
 //  lbl_Valor.Caption   := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);


    end else if  (TipoPreco = 'C') Then begin
 //
    lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAC').AsFloat);
  //  lbl_edtVlrTotal.Text   := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);

    end;

    for i:=0 to cboProdutos.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
      if TClasseCombo( cboProdutos.Items.Objects[i]).ID = ibProdutos.FieldByName('IDPROD').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
        cboProdutos.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
        Break;
      end else begin
        cboProdutos.ClearSelection;//LIMPA A SELECAO. }
      end;{if}
    end;{for}

    if lbl_edtQtde.Text = '0' then begin

     lbl_edtQtde.Text := '1';

    end;

     lbl_edtQtdeExit(Sender);

   // if (lbl_edtQtde.Text > '0') and () Then begin

  //   lbl_edtVlrTotal.SetFocus;

   //end;//if}

     { cboServicos.ClearSelection;
      cboProdutos.ClearSelection;
      lbl_edtCodBarras.Clear;
      lbl_edtQtde.Clear;
      lbl_edtVlrUnit.Clear;
      lbl_edtVlrTotal.Clear;
      lbl_TipoPreco.Caption := '';
      lbl_edtCodBarras.SetFocus;}
///  cboProdutos.DroppedDown := True;
  end;{with}

end;

procedure TfrmCliente.lbl_edtQtdeKeyPress(Sender: TObject; var Key: Char);
begin

  if Key = #13 Then begin

   lbl_edtVlrTotal.SetFocus;

   { if cboProdutos.Text = '' Then begin

      lbl_edtCodBarras.SetFocus;

    end else begin

      lbl_edtQtde.SetFocus; }

   // end;{if cbo produto}

   { if cboServicos.Text <> '' Then begin

      lbl_edtQtde.SetFocus;

    end;//if }

  end;

end;

procedure TfrmCliente.lbl_edtVlrTotalKeyPress(Sender: TObject;
  var Key: Char);

  var

DadosCupom : Array[0..7] of String;

Valor1, Valor2, Valor3, Valor4 : Real;

i : Integer;

begin

  if Key = #13 Then begin

  if lbl_CodVenda.Caption <> '' then begin

    if lbl_edtVlrTotal.Text > '0,00' Then begin

      DadosCupom[0]:=cboProdutos.Text;
      DadosCupom[1]:=lbl_edtQtde.Text;
      DadosCupom[2]:='X';
      DadosCupom[3]:=lbl_edtVlrUnit.Text;
      DadosCupom[4]:='=';
      DadosCupom[5]:=lbl_edtVlrTotal.Text;
      DadosCupom[6]:=lbl_edtCodBarras.Text;
      DadosCupom[7]:=lbl_edtObs.Text;

      if cboProdutos.Text <> '' Then begin

        if lbl_edtObs.Text <> '' Then begin

        //  listboxCupom.Items.Add('');
          listboxCupom.Items.Add(DadosCupom[0]);
          listboxCupom.Items.Add('-' +DadosCupom[7]);
          listboxCupom.Items.Add(DadosCupom[1] + ' ' + ' ' + ' ' + DadosCupom[2] + ' ' + ' ' + ' ' + DadosCupom[3] + ' ' + ' ' + ' ' + DadosCupom[4]  + ' ' + ' ' + ' ' + DadosCupom[5]);

        end else begin

         // listboxCupom.Items.Add('');
          listboxCupom.Items.Add(DadosCupom[0]);
          listboxCupom.Items.Add(DadosCupom[1] + ' ' + ' ' + ' ' + DadosCupom[2] + ' ' + ' ' + ' ' + DadosCupom[3] + ' ' + ' ' + ' ' + DadosCupom[4]  + ' ' + ' ' + ' ' + DadosCupom[5]);

        end;//if

      end;//if


        for i := 0 to listboxCupom.Items.Count-1 do begin

          SendMessage(listboxCupom.Handle,WM_VSCROLL,SB_LINEDOWN,0);

        end;//for

    //  lbl_TipoPreco.Caption := '';

/////////////////////////////////////////////////////////////////////////////////
      if lbl_edtVlrTotal.Text <> '' Then begin// se for em branco executa rotina abaixo.

        if (Pos(',',lbl_edtVlrTotal.Text)>0) and (lbl_edtVlrTotal.Text <> '') Then begin

          Valor1 := StrToFloat(StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]));

          if lbl_edtTotalPedido.Text = '' Then begin

          lbl_edtTotalPedido.Text := FormatFloat(',0.00',(Valor1));

          end else begin

          //Valor1 := StrToFloat(StringReplace(lbl_edtTotalPed.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor2 := StrToFloat(StringReplace(lbl_edtTotalPedido.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor3 := (Valor2 + Valor1);

          lbl_edtTotalPedido.Text := FormatFloat(',0.00',(Valor3));

          end;

          end else begin

          Valor1 := StrToFloat(StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]));

          if lbl_edtTotalPedido.Text = '' Then begin

          lbl_edtTotalPedido.Text := FormatFloat(',0.00',(Valor1));

          end else begin

          //Valor1 := StrToFloat(StringReplace(lbl_edtTotalPed.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor2 := StrToFloat(StringReplace(lbl_edtTotalPedido.Text,ThousandSeparator,'',[rfReplaceAll]));
          Valor3 := (Valor2 + Valor1);

          lbl_edtTotalPedido.Text := FormatFloat(',0.00',(Valor3));

          end;

        end;{if}

      end;//if
////////////////////////////////////////////////////////////////////////////////

  ////////////////////////////////////////////////////////////////////////////////
  {    if (lbl_edtTotalPedido.Text = '0,00') or (lbl_edtTotalPedido.Text = '') Then begin

      lbl_edtTotalPedido.Text  := lbl_edtVlrTotal.Text;

      Valor1 := StrToFloat(StringReplace(lbl_edtTotalPedido.Text,ThousandSeparator,'',[rfReplaceAll]));

     end else if lbl_edtTotalPedido.Text <> '0,00' Then begin

      Valor1 := StrToFloat(StringReplace(lbl_edtTotalPedido.Text,ThousandSeparator,'',[rfReplaceAll]));
      Valor2 := StrToFloat(StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]));
      Valor3 := StrToFloat(FormatFloat(',0.00',(Valor1)+ (Valor2)));
      lbl_edtTotalPedido.Text := FormatFloat(',0.00',(Valor3));

      end;//if    }

  ///////////////////////////////////////////////////////////////////////////////

    end else begin

      Application.MessageBox('Para concluir um lançamento selecione um produto?','Lançamento em branco',+MB_YESNO+MB_ICONQUESTION);

    end;//iflblvlrtotal

  with dmModule do begin

  GravaPedido;
  lbl_edtVlrTotal.Text   := '0,00';
  lbl_edtVlrUnit.Text := '0,00';
  lbl_TipoPreco.Caption := '';
  lbl_edtCodBarras.Clear;
  lbl_edtQtde.Text := '1';
  lbl_edtVlrUnit.Clear;
  lbl_edtVlrTotal.Clear;
  lbl_edtCodProd.Clear;
  lbl_edtObs.Clear;
  cboProdutos.ClearSelection;
  ckVlrUnitario.Checked := False;
  lbl_edtCodProd.SetFocus;

  end;//with

  end else begin

  Application.MessageBox('É preciso precionar f4 para emitir um cupom','AVISO',+MB_OK+MB_DEFBUTTON1+MB_ICONINFORMATION);


  end;//if 

  end;{if}


end;

procedure TfrmCliente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

with dmModule do begin
  case key of

    VK_F1:begin

      listboxCupom.Clear;
      lbl_TipoPreco.Caption := '';
      lbl_edtCodBarras.Clear;
      lbl_edtQtde.Text := '1';
      lbl_edtVlrUnit.Clear;
      lbl_edtVlrTotal.Clear;
      lbl_edtTotalPedido.Clear;
      lbl_TipoPreco.Caption := '';
      lbl_edtObs.Clear;
      lbl_edtCodBarras.SetFocus;
      cboProdutos.ClearSelection;
      lbl_edtCodProd.Clear;

    end;

    VK_F2:begin

      lbl_edtQtde.SetFocus;

    end;

    VK_F3:begin

      frmRecebeLoja.ShowModal;

    end;

    VK_F4:begin

        {  ibServsVendasCli.Close;
          ibServsVendasCli.SQL.Clear;
          ibServsVendasCli.SQL.Add('INSERT INTO TBLSERVICOSVENDASCLI '
          + '(DATA) values '
          + '(''' + FormatDateTime('mm-dd-yyyy',Now) + ''')');
          ibServsVendasCli.ExecSQL;
          Commit(ibServsVendasCli);
          ibServsVendasCli.Close;
          ibServsVendasCli.SQL.Clear;
          ibServsVendasCli.SQL.Add('SELECT IDSERVSVENDA FROM TBLSERVICOSVENDASCLI ORDER BY IDSERVSVENDA DESC');
          ibServsVendasCli.Open;


            Commit(ibServsVendasCli);
            ibServsVendasCli.Close;
            ibServsVendasCli.SQL.Clear;
            ibServsVendasCli.SQL.Add('SELECT * FROM TBLSERVICOSVENDASCLI ORDER BY IDSERVSVENDA DESC');
            ibServsVendasCli.Open;

            frmCliente.lbl_CodVenda.Caption := IntToStr(ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger);  }

    end;

    VK_F7:begin

      frmBuscaProdutos.ShowModal;

    end;

    VK_F5:begin

    frmManutCx.ShowModal;

    end;

    VK_F8:begin

      lbl_TipoPreco.Caption := 'Preço de Venda(B)';

    end;

    VK_F9:begin

      lbl_TipoPreco.Caption := 'Preço de Venda(C)';

    end;

  end;

  end;//with
  
end;

procedure TfrmCliente.lbl_edtCodBarrasKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key =#13 Then begin

    lbl_edtQtde.SetFocus;
    lbl_edtQtde.Text := '1';

  end;

end;

procedure TfrmCliente.lbl_edtNomeCachorroKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtCodBarras.SetFocus;

  end;//if

end;

procedure TfrmCliente.lbl_edtNomeKeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtCodProd.SetFocus;

  end;//if

end;

procedure TfrmCliente.lbl_edtEnderecoKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtNum.SetFocus;

  end;//if

end;

procedure TfrmCliente.lbl_edtNumKeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtCompl.SetFocus;

  end;//if

end;

procedure TfrmCliente.lbl_edtComplKeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtBairro.SetFocus;

  end;//if

end;

procedure TfrmCliente.lbl_edtBairroExit(Sender: TObject);

var

DadosCupom : Array[0..5] of String;

begin
tedit(sender).color := clwindow;
  if lbl_edtNome.Text <> '' Then begin

    DadosCupom[0]:=lbl_edtNome.Text;
    DadosCupom[1]:=lbl_edtTelefone.Text;
    DadosCupom[2]:=lbl_edtEndereco.Text;
    DadosCupom[3]:=lbl_edtNum.Text;
    DadosCupom[4]:=lbl_edtCompl.Text;
    DadosCupom[5]:=lbl_edtBairro.Text;

    listboxCupom.Items.Add('Cliente:'+DadosCupom[0]);
    listboxCupom.Items.Add('Telefone:'+DadosCupom[1]);
    listboxCupom.Items.Add('End: '+DadosCupom[2]+','+DadosCupom[3]);
    listboxCupom.Items.Add('Compl:'+DadosCupom[4]+' '+'Bairro:'+DadosCupom[5]);
    listboxCupom.Items.Add('------------------------------------------------');

  end;//if

end;

procedure TfrmCliente.lbl_edtBairroKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtNome.SetFocus;

  end;//if

end;

procedure TfrmCliente.lbl_edtCodProdExit(Sender: TObject);

var

i : Integer;

CodBarrasVenda, TipoPreco : String;

begin
tedit(sender).color := clwindow;
  with dmModule do begin

    if lbl_edtCodProd.Text <> '' Then begin

      CodBarrasVenda := lbl_edtCodProd.Text;

      Commit(ibProdutos);
      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE CADPRODUTOS.CODBARRAS=''' + CodBarrasVenda + ''' or CADPRODUTOS.REF=''' + CodBarrasVenda + '''');
      ibProdutos.Open;

      lbl_edtIDProdCX.Text := IntToStr(ibProdutos.FieldByName('IDPROD').AsInteger);

      if lbl_TipoPreco.Caption = '' Then begin

        TipoPreco := 'A';

      end;

      if lbl_TipoPreco.Caption = 'Preço de Venda(B)' Then begin

        TipoPreco := 'B';

      end;

      if lbl_TipoPreco.Caption = 'Preço de Venda(C)' Then begin

        TipoPreco := 'C';

      end;


      if  (TipoPreco = 'A') Then begin

      lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);

      end else if  (TipoPreco = 'B') Then begin

     lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAB').AsFloat);

      end else if  (TipoPreco = 'C') Then begin

      lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAC').AsFloat);

      end;

      for i:=0 to cboProdutos.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
        if TClasseCombo( cboProdutos.Items.Objects[i]).ID = ibProdutos.FieldByName('IDPROD').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
          cboProdutos.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
          Break;
        end else begin
          cboProdutos.ClearSelection;//LIMPA A SELECAO. }
        end;{if}
      end;{for}

      if lbl_edtQtde.Text = '0' then begin

       lbl_edtQtde.Text := '1';

      end;

       lbl_edtQtdeExit(Sender);

     // if (lbl_edtQtde.Text > '0') and () Then begin

    //   lbl_edtVlrTotal.SetFocus;

     //end;//if}

       { cboServicos.ClearSelection;
        cboProdutos.ClearSelection;
        lbl_edtCodBarras.Clear;
        lbl_edtQtde.Clear;
        lbl_edtVlrUnit.Clear;
        lbl_edtVlrTotal.Clear;
        lbl_TipoPreco.Caption := '';
        lbl_edtCodBarras.SetFocus;}

    end;//if codprod

  end;{with}


end;

procedure TfrmCliente.lbl_edtCodProdKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key =#13 Then begin

    lbl_edtObs.SetFocus;
    lbl_edtQtde.Text := '1';

  end;
  
end;

procedure TfrmCliente.TimerPrincipalTimer(Sender: TObject);
begin
pnlDataHora.Caption := UpperCase(FormatDateTime('dd MMMM yyyy',Date)) + ' - ' + FormatDateTime('hh:mm:ss',Time);
end;

procedure TfrmCliente.ibeaReceberClick(Sender: TObject);
begin
frmRecebeLoja.ShowModal;
//frmRecebePedido.ShowModal;
end;

procedure TfrmCliente.ibeaExcluirItemClick(Sender: TObject);

var

Valor1,Valor2,Valor3 : Real;
CancelaProd : Array[0..8] of string;
ConfirmaExclusao : Integer;

begin

  with dmModule do begin

    ConfirmaExclusao := Application.MessageBox('Deseja excluir este produto do pedido','Produto Excluído',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

    if ConfirmaExclusao = 6 Then begin

      if cboProdutos.Text <> '' Then begin

        if lbl_edtTotalPedido.Text > '0,00' Then begin

        Valor1  := StrToFloat(StringReplace(lbl_edtTotalPedido.Text,ThousandSeparator,'',[rfReplaceAll]));
        Valor2  := StrToFloat(StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]));
        Valor3  := StrToFloat(FormatFloat(',0.00',(Valor1)-(Valor2)));
        lbl_edtTotalPedido.Text := FormatFloat(',0.00',(Valor3));

       end else begin

        Valor1  := StrToFloat(StringReplace(lbl_edtTotalPedido.Text,ThousandSeparator,'',[rfReplaceAll]));
        Valor2  := StrToFloat(StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]));
        Valor3  := StrToFloat(FormatFloat(',0.00',(Valor1)-(Valor2)));
        lbl_edtTotalPedido.Text := FormatFloat(',0.00',(Valor3));

        end;{if}

        CancelaProd[0]:=lbl_edtCodProd.Text;
        CancelaProd[1]:=cboProdutos.Text;
        CancelaProd[2]:=lbl_edtQtde.Text;
        CancelaProd[3]:='X';
        CancelaProd[4]:=lbl_edtVlrUnit.Text;
        CancelaProd[5]:='=';
        CancelaProd[6]:=lbl_edtVlrTotal.Text;
        CancelaProd[7]:=lbl_edtCodBarras.Text;
        CancelaProd[8]:='Cancelado';

        listboxCupom.Items.Add(CancelaProd[8]);
        listboxCupom.Items.Add(CancelaProd[0] + ' ' + '-' + ' ' + CancelaProd[1]);
        listboxCupom.Items.Add(CancelaProd[2] + ' ' + ' ' + ' ' + CancelaProd[3] + ' ' + ' ' + ' ' + CancelaProd[4] + ' ' + ' ' + ' ' + CancelaProd[5]  + ' ' + ' ' + ' ' + CancelaProd[6]);



  ///////////////////////////////////////////////////////////////////////////////

        ibServsVenda.Close;
        ibServsVenda.SQL.Clear;
        ibServsVenda.SQL.Add('DELETE FROM TBLSERVICOSVENDAS WHERE IDSERVS=''' + IntToStr(IDExcServs) + '''');
        ibServsVenda.ExecSQL;
        Commit(ibServsVenda);

        ibServsVenda.Close;
        ibServsVenda.SQL.Clear;
        ibServsVenda.SQL.Add('SELECT TBLSERVICOSVENDAS.*,'
        + 'CADPRODUTOS.NOME As Produto,CADPRODUTOS.CODBARRAS FROM TBLSERVICOSVENDAS '
        + 'INNER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD WHERE IDSERVSVENDA=''' + (lbl_CodVenda.Caption) + '''');
        ibServsVenda.Open;

        (ibServsVenda.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := ',0.00';
        (ibServsVenda.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := ',0.00';
        (ibServsVenda.FieldByName('VALORB') as TFloatField).DisplayFormat := ',0.00';
        (ibServsVenda.FieldByName('VALORC') as TFloatField).DisplayFormat := ',0.00';

      end;//if cboproduto

      lbl_edtCodProd.Clear;
      lbl_edtCodBarras.Clear;
      cboProdutos.ClearSelection;
      lbl_edtQtde.Text := '1';
      lbl_edtVlrUnit.Text  := '0,00';
      lbl_edtVlrTotal.Text := '0,00';

    end;//confirma exclusao

  end;//with

end;

procedure TfrmCliente.BmsXPButton2Click(Sender: TObject);
begin
frmClientes.ShowModal;
end;

procedure TfrmCliente.ibeaLimpaProdClick(Sender: TObject);
begin

      lbl_TipoPreco.Caption := '';
      lbl_edtCodBarras.Clear;
      lbl_edtQtde.Text := '1';
      lbl_edtVlrUnit.Clear;
      lbl_edtVlrTotal.Clear;
      lbl_edtObs.Clear;
      cboProdutos.ClearSelection;
      lbl_edtCodProd.SetFocus;
      lbl_edtCodProd.Clear;
      
end;

procedure TfrmCliente.lbl_edtObsKeyPress(Sender: TObject; var Key: Char);
begin

  if key =#13 Then begin

    lbl_edtQtde.SetFocus;
    lbl_edtQtde.Text := '1';

  end;

end;

procedure TfrmCliente.ckVlrUnitarioCheck(Sender: TObject);
begin

  lbl_edtVlrUnit.SetFocus;
  
end;

procedure TfrmCliente.lbl_edtVlrUnitExit(Sender: TObject);
begin

tedit(sender).color := clwindow;

  if lbl_edtVlrUnit.Text >'0,00' Then begin

    lbl_edtVlrUnit.Text := FormatFloat(Casasdecimais('Produtos'),StrToFloat(lbl_edtVlrUnit.Text));

  end else begin

    lbl_edtVlrUnit.Text := '0,00';

  end;

end;

procedure TfrmCliente.lbl_edtVlrUnitKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtQtde.SetFocus;

  end;

end;

procedure TfrmCliente.CTRLVVlrUnitrio1Click(Sender: TObject);
begin

  ckVlrUnitario.Checked := True;
  lbl_edtVlrUnit.SetFocus;
  
end;

procedure TfrmCliente.MudarPreco1Click(Sender: TObject);
begin

  ckVlrUnitario.Checked := True;
  lbl_edtVlrUnit.SetFocus;
  
end;

procedure TfrmCliente.lbl_edtNomeExit(Sender: TObject);

var

DadosCupom : Array[0..8] of String;
PontoRef,DesenhodaDivisao : String;

begin

tedit(sender).color := clwindow;
  with dmModule do begin

    if lbl_edtNome.Text <> '' Then begin

    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
    ibClassificacao.Open;
    IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO FORNECEDOR NA VARIAVEL.

    Commit(ibTempCadastro);
    ibTempCadastro.Close;
    ibTempCadastro.SQL.Clear;
    ibTempCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLLOGRADOURO.BAIRRO,TBLLOGRADOURO.ENDERECO,'
    + ' TBLCONTATO.CONTATO As Telefone,TBLCONTATO.TIPO FROM TBLCADASTRO '
    + ' INNER JOIN TBLCONTATO ON TBLCADASTRO.IDCAD = TBLCONTATO.IDCAD '
    + ' INNER JOIN TBLLOGRADOURO ON TBLCADASTRO.IDCAD = TBLLOGRADOURO.IDCAD '
    + 'WHERE IDCLASS=''' + InttoStr(IDClass) + ''' and TBLCADASTRO.NOME=''' + lbl_edtNome.Text + '''');
    ibTempCadastro.Open;

    PontoRef := ibTempCadastro.FieldByName('PONTOREFERENCIA').AsString;

    if ibTempCadastro.RecordCount > 0 Then begin

        lbl_edtTelefone.Text := ibTempCadastro.FieldByName('TELEFONE').AsString;
        lbl_edtCelular.Text := ibTempCadastro.FieldByName('CELULAR').AsString;
        lbl_edtEndereco.Text := ibTempCadastro.FieldByName('ENDERECO').AsString;
        lbl_edtNum.Text      := ibTempCadastro.FieldByName('NUMERO').AsString;
        lbl_edtCompl.Text    := ibTempCadastro.FieldByName('COMPL').AsString;
        lbl_edtBairro.Text   := ibTempCadastro.FieldByName('BAIRRO').AsString;
        lbl_edtCodCli.Text   := IntToStr(ibTempCadastro.FieldByName('IDCAD').AsInteger);

    end;//IF

    if (lbl_edtTelefone.Text <> '')or(lbl_edtNome.Text <> '') Then begin


      Commit(ibConfig);
      ibConfig.Close;
      ibConfig.SQL.Clear;
      ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
      ibConfig.Open;

      DesenhodaDivisao := ibConfig.FieldByName('DESENHODIVISAO').AsString;

      DadosCupom[0]:=lbl_edtNome.Text;
      DadosCupom[1]:=lbl_edtTelefone.Text;
      DadosCupom[2]:=lbl_edtEndereco.Text;
      DadosCupom[3]:=lbl_edtNum.Text;
      DadosCupom[4]:=lbl_edtCompl.Text;
      DadosCupom[5]:=lbl_edtBairro.Text;
      DadosCupom[6]:=PontoRef;
      DadosCupom[7]:=DesenhodaDivisao;

    {  if lbl_edtTelefone.Text <> '' Then begin

      DadosCupom[8]:=lbl_edtTelefone;

      end;

      if lbl_edtCelular.Text <> '' Then begin

      DadosCupom[8]:=lbl_edtCelular;

      end; }

      listboxCupom.Items.Add('Cliente:'+DadosCupom[0]);
      listboxCupom.Items.Add('Telefone:'+DadosCupom[1]);
      if lbl_edtEndereco.Text <> '' Then begin
      listboxCupom.Items.Add('End: '+DadosCupom[2]+','+DadosCupom[3]);
      end;
      if (lbl_edtCompl.Text <> '')or(lbl_edtBairro.Text <> '')Then begin
      listboxCupom.Items.Add('Compl:'+DadosCupom[4]+' '+'Bairro:'+DadosCupom[5]);
      end;
      if PontoRef <> '' Then begin
      listboxCupom.Items.Add('**'+DadosCupom[6]+'**');
      end;
      listboxCupom.Items.Add(DadosCupom[7]);

    end;//if inserirdados

    end;//if label endereco <> ''

  end;{With}

end;

procedure TfrmCliente.dbgPedidoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

  with dmModule do begin

   { Commit(ibServsVenda);
    ibServsVenda.Close;
    ibServsVenda.SQL.Clear;
    ibServsVenda.SQL.Add('SELECT * FROM TBLSERVICOSVENDAS WHERE IDSERVSVENDA=''' + lbl_CodVenda.Caption + '''');
    ibServsVenda.Open;

    if ibServsVenda.RecordCount > 0 Then begin

      If (dbgPedido.DataSource.DataSet.RecNo div 2) =  (dbgPedido.DataSource.DataSet.RecNo/2) Then begin

      dbgPedido.Canvas.Font.Color:= clBlack;
      dbgPedido.Canvas.Brush.Color:= clskyBlue;

      end else begin

      dbgPedido.Canvas.Font.Color:= clBlack;
      dbgPedido.Canvas.Brush.Color:= clWhite;

      end;

        dbgPedido.Canvas.FillRect(Rect);

      if Column.Field.DataType = ftFloat  Then begin

        dbgPedido.Canvas.TextOut(Rect.Left+2,Rect.Top,FormatFloat(CasasDecimais('Produtos'), Column.Field.AsFloat));

      end else begin

        dbgPedido.Canvas.TextOut(Rect.Left+2,Rect.Top,Column.Field.AsString);

      end;{if}

   /// end;//if recordcount}

 end;//with

end;

procedure TfrmCliente.FecharCaixa1Click(Sender: TObject);

var

ConfirmaFechCX : Integer;

begin

  with dmModule do begin

    ConfirmaFechCX := Application.MessageBox ( PChar('Atenção!! o Caixa de: "' + lbl_Func.Caption
        + '" será fechado, deseja continuar'),'Notificação Fechamento de Caixa', MB_YESNO + mb_DefButton1+MB_ICONINFORMATION);

    if ConfirmaFechCX = 6 Then begin

      Commit(ibUser);
      ibUser.Close;
      ibUser.SQL.Clear;
      ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + lbl_edtIDFuncionario.Caption + '''');
      ibUser.Open;

      Commit(ibAberturaCX);
      ibAberturaCX.Close;
      ibAberturaCX.SQL.Clear;
      ibAberturaCX.SQL.Add('SELECT * FROM TBLABERTURACX WHERE IDFUNC = ''' + lbl_edtIDFuncionario.Caption + ''' and DATAABERTURA = ''' + FormatDateTime('mm-dd-yyyy',Now) + ''' ORDER BY IDABERTURACX DESC');
      ibAberturaCX.Open;

      ibAberturaCX.Close;
      ibAberturaCX.SQL.Clear;
      ibAberturaCX.SQL.Add('UPDATE TBLABERTURACX SET '
      + 'HORAFECH=''' + FormatDateTime('hh:mm:ss',now) + '''WHERE IDFUNC=''' + lbl_edtIDFuncionario.Caption + ''' and DATAABERTURA = ''' + FormatDateTime('mm-dd-yyyy',Now) + '''');
      ibAberturaCX.ExecSQL;
      Commit(ibAberturaCX);

    end;//if confirma fech

    frmCliente.Close;

  end;//with


end;

procedure TfrmCliente.FluxoCaixa1Click(Sender: TObject);
begin

  with dmModule do begin

    frmFluxoCaixa.ShowModal;

  end;//with

end;

procedure TfrmCliente.ImprimirCupomDetalhado1Click(Sender: TObject);

var

VlrDinheiro,VlrCheque,VlrChequePre,TotalSangria : String;
TotalDinheiro,TotalCheque,TotalChequePre,TotalPendente,VlrSangria : Real;
VlrNota,VlrVisaCredito,VlrVisaDebito,VlrVisaParcelado,VlrMastercardCredito : String;
TotalNota,TotalVisaCredito,TotalVisaDebito,TotalVisaParcelado,TotalMastercardCredito : Real;
VlrMastercardDebito,VlrHipercard,VlrMastercardParcelado,VlrAmericanExpress : String;
TotalMastercardParcelado,TotalHipercard,TotalAmericanExpress,TotalCartoes : Real;
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
ValorSodex : String;

TotalDesconto,TotalAcrescimo : Real;
VlrDesconto,VlrAcrescimo,QtdedeSaltos,CaminhoImpressora : String;
F : TextFile;

begin

  with dmModule do begin
      
      Commit(ibTempServicosVendas);
      ibTempServicosVendas.Close;                                                                                           //  and SITUACAOVENDA<> ''Pendente''
      ibTempServicosVendas.SQL.Clear;
      ibTempServicosVendas.SQL.Add('SELECT * FROM TBLSERVICOSVENDAS WHERE(DATA=''' + FormatDateTime('mm-dd-yyyy',Now) + ''') ');
      ibTempServicosVendas.Open;

     { ibServsVenda.Close;
      ibServsVenda.ParamByName('ParamDataInicial').Value      := dtpDataCaixaIni.DateTime;
      ibServsVenda.ParamByName('ParamDataFinal').Value        := dtpDataCaixa.DateTime;
      ibServsVenda.Open; (DATA between :ParamDataInicial and :ParamDataFinal)}

      (ibTempServicosVendas.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

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
     /// IDCartao              := 16;
////////////////////////////////////////////////////////////////////////////////

      while not ibTempServicosVendas.Eof do begin

           if VlrSangria = 0 Then begin

             VlrSangria := StrToFloat(StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('VLRSANGRIA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             TotalSangria := (StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('VLRSANGRIA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             VlrSangria := VlrSangria + StrToFloat(StringReplace(TotalSangria,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

       if (ibTempServicosVendas.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

         if ibTempServicosVendas.FieldByName('VLRTOTAL').AsInteger > 0 Then begin

           if TotalGeral = 0 Then begin

             TotalGeral := StrToFloat(StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrGeral := (StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalGeral := TotalGeral + StrToFloat(StringReplace(VlrGeral,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         end;//if

       end;

////////////////////////////////////////////////////////////////////////////////

      if (ibTempServicosVendas.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

        if ibTempServicosVendas.FieldByName('IDTIPOPAGTO').AsInteger = IDDinheiro Then begin

          if TotalDinheiro = 0 Then begin

            TotalDinheiro := StrToFloat(StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            VlrDinheiro := (StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

            TotalDinheiro := TotalDinheiro + StrToFloat(StringReplace(VlrDinheiro,ThousandSeparator,'',[rfReplaceAll]));

          end;//if

         end;//if tipopagto dinheiro

       end;

////////////////////////////////////////////////////////////////////////////////

       if (ibTempServicosVendas.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

         if ibTempServicosVendas.FieldByName('IDTIPOPAGTO').AsInteger = IDCheque Then begin

           if TotalCheque = 0 Then begin

             TotalCheque := StrToFloat(StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrCheque := (StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalCheque := TotalCheque + StrToFloat(StringReplace(VlrCheque,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         //  lbl_edtCheque.Text   := FormatFloat(CasasDecimais('Produtos'),TotalCheque);

         end;//if tipopagto cheque

       end;

////////////////////////////////////////////////////////////////////////////////

       if (ibTempServicosVendas.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

         if ibTempServicosVendas.FieldByName('IDTIPOPAGTO').AsInteger = IDChequePre Then begin

           if TotalChequePre = 0 Then begin

             TotalChequePre := StrToFloat(StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrChequePre := (StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalChequePre := TotalChequePre + StrToFloat(StringReplace(VlrChequePre,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         //  lbl_edtChequePre.Text   := FormatFloat(CasasDecimais('Produtos'),TotalChequePre);

         end;//if tipopagto cheque

       end;

////////////////////////////////////////////////////////////////////////////////

     {  if (ibTempServicosVendas.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

         if ibTempServicosVendas.FieldByName('IDTIPOPAGTO').AsInteger = IDCartao Then begin

           if TotalCartao = 0 Then begin

             TotalCartao := StrToFloat(StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrCartao := (StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalCartao := TotalCartao + StrToFloat(StringReplace(VlrCartao,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

        //   lbl_edtVisa.Text   := FormatFloat(CasasDecimais('Produtos'),TotalVisa);

         end;//if tipopagto cheque

       end; }

////////////////////////////////////////////////////////////////////////////////

       if (ibTempServicosVendas.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

         if ibTempServicosVendas.FieldByName('IDTIPOPAGTO').AsInteger = IDVisaCredito Then begin

           if TotalVisaCredito = 0 Then begin

             TotalVisaCredito := StrToFloat(StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrVisaCredito := (StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalVisaCredito := TotalVisaCredito + StrToFloat(StringReplace(VlrVisaCredito,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

        //   lbl_edtVisa.Text   := FormatFloat(CasasDecimais('Produtos'),TotalVisa);

         end;//if tipopagto cheque

       end;

////////////////////////////////////////////////////////////////////////////////

       if (ibTempServicosVendas.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

         if ibTempServicosVendas.FieldByName('IDTIPOPAGTO').AsInteger = IDVisaDebito Then begin

           if TotalVisaDebito = 0 Then begin

             TotalVisaDebito := StrToFloat(StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrVisaDebito := (StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalVisaDebito := TotalVisaDebito + StrToFloat(StringReplace(VlrVisaDebito,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

        //   lbl_edtVisaElectron.Text   := FormatFloat(CasasDecimais('Produtos'),TotalVisaElectron);

         end;//if tipopagto cheque

       end;

////////////////////////////////////////////////////////////////////////////////

       if (ibTempServicosVendas.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

         if ibTempServicosVendas.FieldByName('IDTIPOPAGTO').AsInteger = IDVisaParcelado Then begin

           if TotalVisaParcelado = 0 Then begin

             TotalVisaParcelado := StrToFloat(StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrVisaParcelado := (StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalVisaParcelado := TotalVisaParcelado + StrToFloat(StringReplace(VlrVisaParcelado,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         //  lbl_edtVisaElectronPre.Text   := FormatFloat(CasasDecimais('Produtos'),TotalVisaElectronPre);

         end;//if tipopagto cheque

       end;
////////////////////////////////////////////////////////////////////////////////

       if (ibTempServicosVendas.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

         if ibTempServicosVendas.FieldByName('IDTIPOPAGTO').AsInteger = IDMastercardCredito Then begin

           if TotalMastercardCredito = 0 Then begin

             TotalMastercardCredito := StrToFloat(StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrMastercardCredito := (StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalMastercardCredito := TotalMastercardCredito + StrToFloat(StringReplace(VlrMastercardCredito,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         //  lbl_edtMastercard.Text   := FormatFloat(CasasDecimais('Produtos'),TotalMastercard);

         end;//if tipopagto cheque

       end;
////////////////////////////////////////////////////////////////////////////////

     if (ibTempServicosVendas.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

       if ibTempServicosVendas.FieldByName('IDTIPOPAGTO').AsInteger = IDMastercardParcelado Then begin

           if TotalMastercardParcelado = 0 Then begin

             TotalMastercardParcelado := StrToFloat(StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrMastercardParcelado := (StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalMastercardParcelado := TotalMastercardParcelado + StrToFloat(StringReplace(VlrMastercardParcelado,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

        //   lbl_edtRedeShop.Text   := FormatFloat(CasasDecimais('Produtos'),TotalRedeShop);

         end;//if tipopagto cheque

       end;
////////////////////////////////////////////////////////////////////////////////

     if (ibTempServicosVendas.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

       if ibTempServicosVendas.FieldByName('IDTIPOPAGTO').AsInteger = IDMastercardDebito Then begin

           if TotalMastercardDebito = 0 Then begin

             TotalMastercardDebito := StrToFloat(StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrMastercardDebito := (StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalMastercardDebito := TotalMastercardDebito + StrToFloat(StringReplace(VlrMastercardDebito,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         end;//if tipopagto cheque
       end;

////////////////////////////////////////////////////////////////////////////////

     if (ibTempServicosVendas.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

       if ibTempServicosVendas.FieldByName('IDTIPOPAGTO').AsInteger = IDHipercard Then begin

           if TotalHipercard = 0 Then begin

             TotalHipercard := StrToFloat(StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrHipercard := (StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalHipercard := TotalHipercard + StrToFloat(StringReplace(VlrHipercard,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         //  lbl_edtHipercard.Text   := FormatFloat(CasasDecimais('Produtos'),TotalHipercard);

         end;//if tipopagto cheque

       end;
////////////////////////////////////////////////////////////////////////////////

     if (ibTempServicosVendas.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

       if ibTempServicosVendas.FieldByName('IDTIPOPAGTO').AsInteger = IDAmericanExpress Then begin

           if TotalAmericanExpress = 0 Then begin

             TotalAmericanExpress := StrToFloat(StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrAmericanExpress := (StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalAmericanExpress := TotalAmericanExpress + StrToFloat(StringReplace(VlrAmericanExpress,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         //  lbl_edtAmericanExpress.Text   := FormatFloat(CasasDecimais('Produtos'),TotalAmericanExpress);

         end;//if tipopagto cheque

       end;

////////////////////////////////////////////////////////////////////////////////

       if (ibTempServicosVendas.FieldByName('PENDENTEPAGO').AsString = 'Pago')Then begin

         if ibTempServicosVendas.FieldByName('IDTIPOPAGTO').AsInteger = IDSoroCred Then begin

             if TotalSoroCred = 0 Then begin

               TotalSoroCred := StrToFloat(StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             end else begin

               VlrSoroCred := (StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

               TotalSoroCred := TotalSoroCred + StrToFloat(StringReplace(VlrSoroCred,ThousandSeparator,'',[rfReplaceAll]));

             end;//if

           end;//if tipopagto cheque

         end;
////////////////////////////////////////////////////////////////////////////////

        if (ibTempServicosVendas.FieldByName('PENDENTEPAGO').AsString = 'Pago')or(ibTempServicosVendas.FieldByName('PENDENTEPAGO').AsString = 'Pendente')Then begin

         if TotalDesconto = 0 Then begin

           TotalDesconto := StrToFloat(StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('DESCONTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

         end else begin

           VlrDesconto := (StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('DESCONTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           TotalDesconto := TotalDesconto + StrToFloat(StringReplace(VlrDesconto,ThousandSeparator,'',[rfReplaceAll]));

         end;//if

       end;
////////////////////////////////////////////////////////////////////////////////


         if (ibTempServicosVendas.FieldByName('PENDENTEPAGO').AsString = 'Pago')or(ibTempServicosVendas.FieldByName('PENDENTEPAGO').AsString = 'Pendente')Then begin

           if TotalAcrescimo = 0 Then begin

             TotalAcrescimo := StrToFloat(StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('ACRESCIMO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrAcrescimo := (StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('ACRESCIMO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalAcrescimo := TotalAcrescimo + StrToFloat(StringReplace(VlrAcrescimo,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

         end;//if

////////////////////////////////////////////////////////////////////////////////

       if ibTempServicosVendas.FieldByName('PENDENTEPAGO').AsString = 'Pendente' Then begin

           if TotalPendente = 0 Then begin

             TotalPendente := StrToFloat(StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrPendente := (StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             TotalPendente := TotalPendente + StrToFloat(StringReplace(VlrPendente,ThousandSeparator,'',[rfReplaceAll]));

           end;//if

        end;//if

     //  end;//if
////////////////////////////////////////////////////////////////////////////////


       if ibTempServicosVendas.FieldByName('IDTIPOPAGTO').AsInteger = IDSodex Then begin

           if TotalSodex = 0 Then begin

             TotalSodex := StrToFloat(StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             ValorSodex := (StringReplace(FloatToStr(ibTempServicosVendas.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

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

        ibTempServicosVendas.Next;


      end;//while

      TotalCartoes  := TotalVisaCredito+TotalVisaDebito+TotalMastercardCredito+TotalMastercardDebito+TotalHipercard+TotalAmericanExpress+TotalSoroCred+TotalSodex;
      
           Commit(ibPagtoPendente);
           ibPagtoPendente.Close;
           ibPagtoPendente.SQL.Clear;
           ibPagtoPendente.SQL.Add('SELECT * FROM TBLPAGTOPENDENTE WHERE(DATAPAGTO=''' + FormatDateTime('mm-dd-yyyy',Now) + ''')');
           ibPagtoPendente.Open;

          { ibPagtoPendente.Close;
           ibPagtoPendente.ParamByName('ParamDataInicial').Value      := dtpDataCaixaIni.DateTime;
           ibPagtoPendente.ParamByName('ParamDataFinal').Value        := dtpDataCaixa.DateTime;
           ibPagtoPendente.Open;  (TBLPAGTOPENDENTE.DATAPAGTO between :ParamDataInicial and :ParamDataFinal)}

           if TotalPagoPendente = 0 Then begin

             TotalPagoPendente := StrToFloat(StringReplace(FloattoStr(ibPagtoPendente.FieldByName('VLRPAGO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

           end else begin

             VlrPagoPendente    := (StringReplace(FloatToStr(ibPagtoPendente.FieldByName('VLRPAGO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
             TotalPagoPendente  := TotalPagoPendente + StrToFloat(StringReplace(VlrPagoPendente,ThousandSeparator,'',[rfReplaceAll]));

           end;//if


            DataIni := FormatDateTime('DD/MM/YYYY',Now);
         ///   DataFim := FormatDateTime('DD/MM/YYYY',dtpDataCaixa.Date);
            //Hora           := FormatDateTime('hh:mm:ss',Now);
          Commit(ibConfig);
          ibConfig.Close;
          ibConfig.SQL.Clear;
          ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
          ibConfig.Open;

          if ibConfig.FieldByName('CAMINHOIMPRESSORA').AsString <> '' Then begin

            CaminhoImpressora := ibConfig.FieldByName('CAMINHOIMPRESSORA').AsString;

          end;
          
             AssignFile(F,CaminhoImpressora);
             Rewrite(F);


            Writeln(F,('--------------------------------------'));
            Writeln(F,('               *Fluxo Detalhado*'),0);
            Writeln(F,('Data: '+DataIni));
            Writeln(F,('--------------------------------------'));
            Writeln(F,('Total em Dinheiro  ..:(R$) '+ FormatFloat(CasasDecimais('Produtos'),TotalDinheiro) + ''));
            Writeln(F,('Total em Cheque    ..:(R$) '+ FormatFloat(CasasDecimais('Produtos'),TotalCheque) + ''));
            Writeln(F,('Total em Cheque Pre..:(R$) '+ FormatFloat(CasasDecimais('Produtos'),TotalChequePre) + ''));
            Writeln(F,('Total em Cartoes   ..:(R$) '+ FormatFloat(CasasDecimais('Produtos'),TotalVisaCredito+TotalVisaDebito+TotalMastercardCredito+TotalMastercardDebito+TotalHipercard+TotalAmericanExpress+TotalSoroCred+TotalSodex) + ''));
            Writeln(F,('Total em Pendentes ..:(R$) '+ FormatFloat(CasasDecimais('Produtos'),TotalPendente) + ''));
            Writeln(F,('Total em Sangria   ..:(R$) '+ FormatFloat(CasasDecimais('Produtos'),VlrSangria) + ''));
            Writeln(F,('Total em Taxas/Acrescimos ..:(R$) '+ FormatFloat(CasasDecimais('Produtos'),TotalAcrescimo) + ''));
            Writeln(F,('--------------------------------------'));
            Writeln(F,('TOTAL GERAL    ..:(R$) '+ FormatFloat(CasasDecimais('Produtos'),TotalVendido) + ''));
            Writeln(F,('PAGTO.PENDENTES..:(R$) '+ FormatFloat(CasasDecimais('Produtos'),TotalPagoPendente) + ''));
            Writeln(F,('TOTAL LIQUIDO  ..:(R$) '+ FormatFloat(CasasDecimais('Produtos'),TotalLiquido - VlrSangria + TotalCartoes) + ''));
            Writeln(F,(''));
             Writeln(F,(''));
              Writeln(F,(''));
               Writeln(F,(''));
                Writeln(F,(''));
                 Writeln(F,(''));
                  Writeln(F,(''));
                   Writeln(F,(''));

                CloseFile(F);

           // Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<tc>*</tc>'),0);
            //IPRIMINDO A VIGÉSIMA PRIMEIRA LINHA
           { if Int_Retorno = 1 Then
            begin
              Application.MessageBox('Impressao Concluida!!!', 'CP SISTEMAS', mb_ok + 32);
            end
            else
            begin
              Application.MessageBox('Erro!', 'Daruma Framework', mb_ok + 16);
            end;}

////////////////////////////////////////////////////////////////////////////////

  end;//with

end;

procedure TfrmCliente.cboProdutosChange(Sender: TObject);
begin

 { with dmModule do begin

   /// cboProdutos.ClearSelection;
    cboProdutos.DroppedDown := True;
    Commit(ibProdutos);
    ibProdutos.Close;                                                                                ///'%'+ %'+ ORDER BY NOME
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE CADPRODUTOS.NOME LIKE '+''''+cboProdutos.Text+'%'+'''ORDER BY NOME');
    ibProdutos.Open;
    (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

  end;//with }

end;

procedure TfrmCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin

listboxCupom.Clear;
ListBoxDadosEmpresa.Clear;

end;

procedure TfrmCliente.CancelaCupomInteiro1Click(Sender: TObject);

var

ConfirmaCancelamento, IDVendaCancela, IDProdutoDevolucao : Integer;
QtdeVendaDevolve, VlrProdutoDevolve, ValorCustoDevolve, QtdeEstoqueDevolve : Real;
EstoqueFinalDevolve, TotalProdEstoqueDevolve, TotalCustoDevolve : String;

begin

  with dmModule do begin

        ConfirmaCancelamento := Application.MessageBox('Confirma o cancelamento da venda?','Cancelar Venda',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

        if ConfirmaCancelamento = 6 Then begin

          IDVendaCancela := StrToInt(lbl_CodVenda.Caption);

////////////////////////////////////////////////////////////////////////////////

        ibServsVenda.Close;
        ibServsVenda.SQL.Clear;
        ibServsVenda.SQL.Add('SELECT * FROM TBLSERVICOSVENDAS WHERE IDSERVSVENDA=''' + IntToStr(IDVendaCancela) + '''');
        ibServsVenda.Open;

        while not ibServsVenda.Eof do begin

        IDProdutoDevolucao := ibServsVenda.FieldByName('IDPROD').AsInteger;

        QtdeVendaDevolve   := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('QTDE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

        ibEntrProdEstoque.Close;
        ibEntrProdEstoque.SQL.Clear;
        ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,'
        + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,TBLENTRADAESTOQUEPROD.ESTOQUEMIN,'
        + 'CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORCUSTO,CADPRODUTOS.TIPOPROD FROM TBLENTRADAESTOQUEPROD '
        + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
        + 'WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + IntToStr(IDProdutoDevolucao) + '''');
        ibEntrProdEstoque.Open;

      //ROTINA ABAIXO PARA SOMAR TOTAL DO ESTQUE E QUANTIDADE DO ESTOQUE

      //traz na variavel a qtde conf. prod da select identificado por id.
       QtdeEstoqueDevolve := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
     // QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),DecimalSeparator,',',[rfReplaceAll]));

     // QtdeVendaDevolve   := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));

       QtdeEstoqueDevolve := QtdeEstoqueDevolve + QtdeVendaDevolve;

       EstoqueFinalDevolve := StringReplace(FloattoStr(QtdeEstoqueDevolve),ThousandSeparator,'',[rfReplaceAll]);
       EstoqueFinalDevolve := StringReplace(EstoqueFinalDevolve,DecimalSeparator,'.',[rfReplaceAll]);

      //AQUI VAI O CALCULO DO TOTAL CONFORME VENDE O PRODUTO
       VlrProdutoDevolve  := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORVENDAA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

       VlrProdutoDevolve  := QtdeEstoqueDevolve * VlrProdutoDevolve;

       TotalProdEstoqueDevolve := StringReplace(FloattoStr(VlrProdutoDevolve),ThousandSeparator,'',[rfReplaceAll]);
       TotalProdEstoqueDevolve := StringReplace(TotalProdEstoqueDevolve,DecimalSeparator,'.',[rfReplaceAll]);


       ValorCustoDevolve := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORCUSTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

       ValorCustoDevolve := QtdeEstoqueDevolve * ValorCustoDevolve;

       TotalCustoDevolve := StringReplace(FloattoStr(ValorCustoDevolve),ThousandSeparator,'',[rfReplaceAll]);
       TotalCustoDevolve := StringReplace(TotalCustoDevolve,DecimalSeparator,'.',[rfReplaceAll]);

       //ROTINA PARA O ESTOQUE MINIMO
       if ibEntrProdEstoque.RecordCount > 0 Then begin

         ibEntrProdEstoque.Close;
         ibEntrProdEstoque.SQL.Clear;
         ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
         +'TOTALCUSTO=''' + TotalCustoDevolve + ''','
         +'VLRTOTAL=''' + (TotalProdEstoqueDevolve) +  ''','
         +'QUANTIDADE=''' + (EstoqueFinalDevolve) + ''' WHERE IDPROD=''' + IntToStr(IDProdutoDevolucao) + '''');
         ibEntrProdEstoque.ExecSQL;
         Commit(ibEntrProdEstoque);

       end;//if recordcount

       ibServsVenda.Next;

       end;//while
////////////////////////////////////////////////////////////////////////////////

          ibServsVenda.Close;
          ibServsVenda.SQL.Clear;
          ibServsVenda.SQL.Add('DELETE FROM TBLSERVICOSVENDAS WHERE IDSERVSVENDA=''' + IntToStr(IDVendaCancela) + '''');
          ibServsVenda.ExecSQL;
          Commit(ibServsVenda);
          
          //frmVendasLoja.lbl_CodVenda.Caption := IntToStr(ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger + 1);
          frmCliente.listboxCupom.Clear;
          frmCliente.lbl_edtTotalPedido.Text := '0,00';
          ///frmCliente.lbl_edtInformacao.Caption := 'Caixa Livre';

        end;//if confirma cancelamento

  end;//with


end;

procedure TfrmCliente.CancelaltimoCupom1Click(Sender: TObject);

var

ConfirmaCancelamento, IDVendaCancela, IDProdutoDevolucao, IDRecebeVendas : Integer;
QtdeVendaDevolve, VlrProdutoDevolve, ValorCustoDevolve, QtdeEstoqueDevolve : Real;
EstoqueFinalDevolve, TotalProdEstoqueDevolve, TotalCustoDevolve : String;

begin

  with dmModule do begin

        ConfirmaCancelamento := Application.MessageBox('Confirma o cancelamento da última venda efetuada?','Cancelar Venda',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

        if ConfirmaCancelamento = 6 Then begin


////////////////////////////////////////////////////////////////////////////////
        Commit(ibTempVendaLoja);
        ibTempVendaLoja.Close;
        ibTempVendaLoja.SQL.Clear;
        ibTempVendaLoja.SQL.Add('SELECT * FROM TBLSERVICOSVENDAS ORDER BY IDSERVS DESC');
        ibTempVendaLoja.Open;

        IDVendaCancela := ibTempVendaLoja.FieldByName('IDSERVSVENDA').AsInteger;   //StrToInt(lbl_CodVenda.Caption - 1);

        Commit(ibServsVenda);
        ibServsVenda.Close;
        ibServsVenda.SQL.Clear;
        ibServsVenda.SQL.Add('SELECT * FROM TBLSERVICOSVENDAS WHERE IDSERVSVENDA=''' + IntToStr(IDVendaCancela) + '''');
        ibServsVenda.Open;

        IDRecebeVendas := IDVendaCancela;

        while not ibServsVenda.Eof do begin

        IDProdutoDevolucao := ibServsVenda.FieldByName('IDPROD').AsInteger;

        QtdeVendaDevolve   := StrtoFloat(StringReplace(FloattoStr(ibServsVenda.FieldByName('QTDE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

        ibEntrProdEstoque.Close;
        ibEntrProdEstoque.SQL.Clear;
        ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.QUANTIDADE,'
        + 'TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.IDPROD,TBLENTRADAESTOQUEPROD.ESTOQUEMIN,'
        + 'CADPRODUTOS.VALORVENDAA,CADPRODUTOS.VALORCUSTO,CADPRODUTOS.TIPOPROD FROM TBLENTRADAESTOQUEPROD '
        + 'INNER JOIN CADPRODUTOS ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD '
        + 'WHERE TBLENTRADAESTOQUEPROD.IDPROD=''' + IntToStr(IDProdutoDevolucao) + '''');
        ibEntrProdEstoque.Open;

      //ROTINA ABAIXO PARA SOMAR TOTAL DO ESTQUE E QUANTIDADE DO ESTOQUE

      //traz na variavel a qtde conf. prod da select identificado por id.
       QtdeEstoqueDevolve := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
     // QtdeEstoque := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('QUANTIDADE').AsFloat),DecimalSeparator,',',[rfReplaceAll]));

     // QtdeVendaDevolve   := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));

       QtdeEstoqueDevolve := QtdeEstoqueDevolve + QtdeVendaDevolve;

       EstoqueFinalDevolve := StringReplace(FloattoStr(QtdeEstoqueDevolve),ThousandSeparator,'',[rfReplaceAll]);
       EstoqueFinalDevolve := StringReplace(EstoqueFinalDevolve,DecimalSeparator,'.',[rfReplaceAll]);

      //AQUI VAI O CALCULO DO TOTAL CONFORME VENDE O PRODUTO
       VlrProdutoDevolve  := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORVENDAA').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

       VlrProdutoDevolve  := QtdeEstoqueDevolve * VlrProdutoDevolve;

       TotalProdEstoqueDevolve := StringReplace(FloattoStr(VlrProdutoDevolve),ThousandSeparator,'',[rfReplaceAll]);
       TotalProdEstoqueDevolve := StringReplace(TotalProdEstoqueDevolve,DecimalSeparator,'.',[rfReplaceAll]);


       ValorCustoDevolve := StrtoFloat(StringReplace(FloattoStr(ibEntrProdEstoque.FieldByName('VALORCUSTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

       ValorCustoDevolve := QtdeEstoqueDevolve * ValorCustoDevolve;

       TotalCustoDevolve := StringReplace(FloattoStr(ValorCustoDevolve),ThousandSeparator,'',[rfReplaceAll]);
       TotalCustoDevolve := StringReplace(TotalCustoDevolve,DecimalSeparator,'.',[rfReplaceAll]);

       //ROTINA PARA O ESTOQUE MINIMO
       if ibEntrProdEstoque.RecordCount > 0 Then begin

         ibEntrProdEstoque.Close;
         ibEntrProdEstoque.SQL.Clear;
         ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
         +'TOTALCUSTO=''' + TotalCustoDevolve + ''','
         +'VLRTOTAL=''' + (TotalProdEstoqueDevolve) +  ''','
         +'QUANTIDADE=''' + (EstoqueFinalDevolve) + ''' WHERE IDPROD=''' + IntToStr(IDProdutoDevolucao) + '''');
         ibEntrProdEstoque.ExecSQL;
         Commit(ibEntrProdEstoque);

       end;//if recordcount

       ibServsVenda.Next;

       end;//while
////////////////////////////////////////////////////////////////////////////////

          ibServsVenda.Close;
          ibServsVenda.SQL.Clear;
          ibServsVenda.SQL.Add('DELETE FROM TBLSERVICOSVENDAS WHERE IDSERVSVENDA=''' + IntToStr(IDVendaCancela) + '''');
          ibServsVenda.ExecSQL;
          Commit(ibServsVenda);

          ibRecVendas.Close;
          ibRecVendas.SQL.Clear;
          ibRecVendas.SQL.Add('DELETE FROM TBLRECEBEVENDAS WHERE IDVENDA=''' + IntToStr(IDRecebeVendas) + '''');
          ibRecVendas.ExecSQL;
          Commit(ibRecVendas);
          
        end;//if confirma cancelamento

  end;//with

end;

procedure TfrmCliente.Sangria1Click(Sender: TObject);
begin
frmSangria.ShowModal;
end;

procedure TfrmCliente.BuscaCep1Click(Sender: TObject);
begin
frmBuscaCep.ShowModal;
end;

procedure TfrmCliente.EncerraVenda1Click(Sender: TObject);

var

ValorTotal,StrEntregador,Pendente : String;
IDClassEntregador : TClasseCombo;
IDCli,IDVenda,Confirma : Integer;

begin

  with dmModule do begin

    Confirma := Application.MessageBox('Confirma o Encerramento?','Encerra Pedido',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

    if Confirma = 6 Then begin

      lbl_edtTelefone.SetFocus;

      ValorTotal := StringReplace(lbl_edtTotalPedido.Text,ThousandSeparator,'',[rfReplaceAll]);
      ValorTotal := StringReplace(ValorTotal,DecimalSeparator,'.',[rfReplaceAll]);
      if ValorTotal = '' Then
      ValorTotal := '0';

        if cboEntregador.ItemIndex = - 1 Then begin

         StrEntregador     := ' IDENTREGADOR=''0'',';

        end else begin

         IDClassEntregador     := TClasseCombo( cboEntregador.Items.Objects[cboEntregador.ItemIndex] );
         StrEntregador  := ' IDENTREGADOR=''' + InttoStr( IDClassEntregador.ID ) + ''',';

        end;

        if lbl_edtCodCli.Text <> '' Then begin

          IDCli := StrToInt(lbl_edtCodCli.Text);

        end else begin

          IDCli := 0;

        end;

        Pendente := 'Sim';

        IDVenda := StrToInt(lbl_CodVenda.Caption);

        ibServsVendasCli.Close;
        ibServsVendasCli.SQL.Clear;
        ibServsVendasCli.SQL.Add('UPDATE TBLSERVICOSVENDASCLI SET '
        + 'VLRTOTAL = ''' + ValorTotal + ''','
        + StrEntregador
        + 'NOMEENTREGADOR =''' + cboEntregador.Text + ''','
        + 'IDCLI = ''' + IntToStr(IDCli) + ''','
        + 'FONECLI = ''' + lbl_edtTelefone.Text + ''','
        + 'NOMECLI = ''' + lbl_edtNome.Text + ''','
        + 'PENDENTE = ''' + Pendente + ''','
        + 'HORA = ''' + FormatDateTime('hh:mm:ss',now) + ''' WHERE IDSERVSVENDA=''' + IntToStr(IDVenda) + '''');
        ibServsVendasCli.ExecSQL;
        Commit(ibServsVendasCli);

      end;//if confirma

      ibServsVenda.Close;
      LimparCampos;
      
  end;//with

end;

procedure TfrmCliente.pcPedidosChange(Sender: TObject);
begin

  with dmModule do begin

    if pcPedidos.ActivePageIndex = 1 Then begin

      Commit(ibTempVendasCli);
      ibTempVendasCli.Close;
      ibTempVendasCli.SQL.Clear;
      ibTempVendasCli.SQL.Add('SELECT * FROM TBLSERVICOSVENDASCLI WHERE TBLSERVICOSVENDASCLI.PENDENTE=''Sim'' ORDER BY IDSERVSVENDA ASC');
      ibTempVendasCli.Open;

      (ibTempVendasCli.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

    end;

  end;//with

end;

procedure TfrmCliente.dbgPendentesCellClick(Column: TColumn);
begin

  with dmModule do begin

   // Commit(ibTempVendasCli);
  //  ibTempVendasCli.Close;
   // ibTempVendasCli.SQL.Clear;
  //  ibTempVendasCli.SQL.Add('SELECT * FROM TBLSERVICOSVENDASCLI WHERE TBLSERVICOSVENDASCLI.PENDENTE=''Sim'' ORDER BY IDSERVSVENDA ASC');
  //  ibTempVendasCli.Open;

  //  (ibTempVendasCli.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

    IDPendente := ibTempVendasCli.FieldByName('IDSERVSVENDA').AsInteger;
    lbl_CupomDetalhado.Caption := IntToStr(IDPendente);
    lbl_edtTotalDetalhado.Text := FormatFloat(CasasDecimais('Produtos'),ibTempVendasCli.FieldByName('VLRTOTAL').AsFloat);
    lbl_edtTotalPedido.Text    := FormatFloat(CasasDecimais('Produtos'),ibTempVendasCli.FieldByName('VLRTOTAL').AsFloat);

    ibTempVendaLoja.Close;
    ibTempVendaLoja.SQL.Clear;
    ibTempVendaLoja.SQL.Add('SELECT * FROM TBLSERVICOSVENDAS WHERE IDSERVSVENDA=''' + IntToStr(IDPendente) + '''');
    ibTempVendaLoja.Open;

    (ibTempVendaLoja.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
    (ibTempVendaLoja.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
    (ibTempVendaLoja.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

    

  end;//with
  
end;

procedure TfrmCliente.btReceberBaixarClick(Sender: TObject);

var

IDTipoPagto : TClasseCombo;
StrTipoPagto,PendentePago : String;

begin

  with dmModule do begin

    PendentePago := 'Pago';

    if cboTipoPagto.ItemIndex = - 1 Then begin

     StrTipoPagto     := ' IDTPOPAGTO=''1'',';

    end else begin

     IDTipoPagto     := TClasseCombo( cboTipoPagto.Items.Objects[cboTipoPagto.ItemIndex] );
     StrTipoPagto  := ' IDTPOPAGTO=''' + InttoStr( IDTipoPagto.ID ) + ''',';

    end;

    {ibTempVendaLoja.Close;
    ibTempVendaLoja.SQL.Clear;
    ibTempVendaLoja.SQL.Add('UPDATE TBLSERVICOSVENDAS SET '
    + StrTipoPagto
    + 'PENDENTEPAGTO = ''' + PendentePago + ''',' }

  end;//with

end;

procedure TfrmCliente.lbl_edtTelefoneEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmCliente.lbl_edtCelularEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmCliente.lbl_edtNomeEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmCliente.cboEntregadorEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmCliente.cboEntregadorExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
end;

procedure TfrmCliente.lbl_edtEnderecoExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
end;

procedure TfrmCliente.lbl_edtEnderecoEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmCliente.lbl_edtNumEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmCliente.lbl_edtNumExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
end;

procedure TfrmCliente.lbl_edtComplEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmCliente.lbl_edtComplExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
end;

procedure TfrmCliente.lbl_edtBairroEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmCliente.lbl_edtCodProdEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmCliente.lbl_edtCodBarrasEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmCliente.lbl_edtCodBarrasExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
end;

procedure TfrmCliente.cboProdutosEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmCliente.cboProdutosExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
end;

procedure TfrmCliente.lbl_edtObsEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmCliente.lbl_edtObsExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
end;

procedure TfrmCliente.lbl_edtQtdeEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmCliente.lbl_edtVlrUnitEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmCliente.lbl_edtVlrTotalEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmCliente.lbl_edtVlrTotalExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
end;

procedure TfrmCliente.lbl_edtTotalDetalhadoEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmCliente.lbl_edtTotalDetalhadoExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
end;

procedure TfrmCliente.cboTipoPagtoEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmCliente.cboTipoPagtoExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
end;

end.



