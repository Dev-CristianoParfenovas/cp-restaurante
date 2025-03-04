unit untFuncSenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, IBQuery,
  ActnList, CheckLst, BmsXPButton;


type
  TfrmFuncSenha = class(TForm)
    lbl_edtCodigo: TLabeledEdit;
    lbl_edtNome: TLabeledEdit;
    lbl_edtLogin: TLabeledEdit;
    lbl_edtSenha: TLabeledEdit;
    dbgFuncSenha: TDBGrid;
    lbl_edtEndereco: TLabeledEdit;
    lbl_edtBairro: TLabeledEdit;
    lbl_edtCidade: TLabeledEdit;
    lbl_edtEstado: TLabeledEdit;
    lbl_edtDDD: TLabeledEdit;
    lbl_edtFone: TLabeledEdit;
    lbl_edtCelular: TLabeledEdit;
    Label1: TLabel;
    lbl_edtCep: TLabeledEdit;
    lbl_edtNumero: TLabeledEdit;
    cklistAcesso: TCheckListBox;
    Shape1: TShape;
    grbTipoUsuario: TGroupBox;
    rbFuncionario: TRadioButton;
    rbAdm: TRadioButton;
    rbVendedor: TRadioButton;
    ibeaNovo: TBmsXPButton;
    ibeaAlterar: TBmsXPButton;
    ibeaExcluir: TBmsXPButton;
    ibeaSair: TBmsXPButton;
    procedure Commit(IBQueryExec : TIBQuery);
    procedure LimparCampos;
    procedure DesabilitarCampos(opcao : Boolean);
    procedure ExecSELECT;
    procedure lbl_edtSenhaChange(Sender: TObject);
    procedure ibeaSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ibeaNovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbgFuncSenhaCellClick(Column: TColumn);
    procedure ibeaAlterarClick(Sender: TObject);
    procedure lbl_edtCepExit(Sender: TObject);
    procedure lbl_edtFoneExit(Sender: TObject);
    procedure lbl_edtCelularExit(Sender: TObject);
    procedure ibeaExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFuncSenha: TfrmFuncSenha;

  //variaveis para cadstro de acesso ao sistema
  Cadastro : String;
  Operacional : String;
  Financeiro : String;

  MontaColunas : Boolean;

  IDUsuario : Integer;
  ConfirmaMSG : Integer;

implementation

uses untdmModule, DB;

{$R *.dfm}

procedure TfrmFuncSenha.Commit(IBQueryExec : TIBQuery);

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

procedure TfrmFuncSenha.LimparCampos;

begin

  //lbl_edtCodigo.Clear;
  lbl_edtNome.Clear;
  lbl_edtLogin.Clear;
  lbl_edtSenha.Clear;
  lbl_edtEndereco.Clear;
  lbl_edtNumero.Clear;
  lbl_edtBairro.Clear;
  lbl_edtCidade.Clear;
  lbl_edtEstado.Clear;
  lbl_edtCep.Clear;
  lbl_edtDDD.Clear;
  lbl_edtFone.Clear;
  lbl_edtCelular.Clear;
  cklistAcesso.Checked[0]  := False;
  cklistAcesso.Checked[1]  := False;
  cklistAcesso.Checked[2]  := False;
  cklistAcesso.Checked[3]  := False;
  cklistAcesso.Checked[4]  := False;
  cklistAcesso.Checked[5]  := False;
  cklistAcesso.Checked[6]  := False;
  cklistAcesso.Checked[7]  := False;
  cklistAcesso.Checked[8]  := False;
  cklistAcesso.Checked[9]  := False;
  cklistAcesso.Checked[10] := False;
  cklistAcesso.Checked[11] := False;
  cklistAcesso.Checked[12] := False;
  cklistAcesso.Checked[13] := False;
  cklistAcesso.Checked[14]  := False;
  cklistAcesso.Checked[15] := False;
  cklistAcesso.Checked[16] := False;
  cklistAcesso.Checked[17] := False;
  cklistAcesso.Checked[18] := False;
  cklistAcesso.Checked[19] := False;
  cklistAcesso.Checked[20] := False;
  cklistAcesso.Checked[21] := False;
  cklistAcesso.Checked[22] := False;
  cklistAcesso.Checked[23] := False;
  rbFuncionario.Checked := False;
  rbAdm.Checked := False;
  rbVendedor.Checked := False;
  
end;


procedure TfrmFuncSenha.DesabilitarCampos(opcao : Boolean);

begin

  lbl_edtCodigo.Enabled := opcao;
  lbl_edtNome.Enabled := opcao;
  lbl_edtLogin.Enabled := opcao;
  lbl_edtSenha.Enabled := opcao;
  lbl_edtEndereco.Enabled := opcao;
  lbl_edtNumero.Enabled := opcao;
  lbl_edtBairro.Enabled := opcao;
  lbl_edtCidade.Enabled := opcao;
  lbl_edtEstado.Enabled := opcao;
  lbl_edtCep.Enabled := opcao;
  lbl_edtDDD.Enabled := opcao;
  lbl_edtFone.Enabled := opcao;
  lbl_edtCelular.Enabled := opcao;
  cklistAcesso.Enabled := opcao;

end;

procedure TfrmFuncSenha.ExecSELECT;

begin

  with dmModule do begin

    ibUser.Close;
    ibUser.SQL.Clear;
    ibUser.SQL.Add('SELECT * FROM TBLUSER');
    ibUser.Open;

  end;{with}

end;


procedure TfrmFuncSenha.lbl_edtSenhaChange(Sender: TObject);
begin
  lbl_edtSenha.PasswordChar :='*';
end;

procedure TfrmFuncSenha.ibeaSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmFuncSenha.FormShow(Sender: TObject);
begin

  lbl_edtSenha.Clear;
  DesabilitarCampos(False);
  ibeaNovo.Caption := '&Novo';
  ibeaAlterar.Caption := '&Alterar';
  
  with dmModule do begin

  ExecSELECT;

  with dbgFuncSenha do begin

      if MontaColunas Then begin

      DataSource := dmModule.dtsUser;
      
        //determina as colunas a serem montadas
        Columns.Insert(0);
        Columns.Insert(1);
        Columns.Insert(2);
        Columns.Insert(3);
        Columns.Insert(4);

        //Parametros da Coluna que exibe o C�digo da entrada no estoque
        Columns.Items[0].Title.Caption := 'C�digo';
        Columns.Items[0].FieldName     := 'IDUSER';
        Columns.Items[0].Width         := 70;
        Columns.Items[0].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o Nome do produto que esta entrando no estoque.
        Columns.Items[1].Title.Caption := 'Nome';
        Columns.Items[1].FieldName     := 'NOME';
        Columns.Items[1].Width         := 220;
        Columns.Items[1].Alignment     := taLeftJustify;

        //parametros que exibe a qtde. de entrada no estoque
        Columns.Items[2].Title.Caption := 'Login';
        Columns.Items[2].FieldName     := 'LOGIN';
        Columns.Items[2].Width         := 100;
        Columns.Items[2].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o vlr unitario do produto.
        Columns.Items[3].Title.Caption := 'Fone';
        Columns.Items[3].FieldName     := 'FONERES';
        Columns.Items[3].Width         := 80;
        Columns.Items[3].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o vlr unitario do produto.
        Columns.Items[4].Title.Caption := 'Celuar';
        Columns.Items[4].FieldName     := 'CELULAR';
        Columns.Items[4].Width         := 80;
        Columns.Items[4].Alignment     := taLeftJustify;

        MontaColunas := False;

      end;{if}

    end;{with}


  end;{with}

end;

procedure TfrmFuncSenha.ibeaNovoClick(Sender: TObject);

var

CadClientes,CadFornecedores,CadProdutos,CadMP,CadEstoque,CadConsultaEStoque : String;
CadContasPR, CadGrupoSubgrupo,CadLocalEstoque,CadRecibo,CadPedVenda:String;
CadFrenteCx,CadManutCupom,CadFluxoCx,CadSenhaAcesso,TipoUsuario : String;
RelatorioFluxoCx,FluxosdeCaixa,RelatorioProdutos,Relatorios : String;
AlteracaodeProdutos,ConfigSistema,CustoProdutos,VlrProdPedido, SenhaSangria : String;
ExclusaodeProdutos : String;
Condicao : Boolean;

begin

  with dmModule do begin

  if ibeaNovo.Caption = '&Gravar' Then begin


     if cklistAcesso.Checked[0] Then begin

     CadClientes := 'Liberado';

     end else begin

      CadClientes := 'Bloqueado';

     end;

     if cklistAcesso.Checked[1] Then begin

       CadFornecedores := 'Liberado';

     end else begin

       CadFornecedores := 'Bloqueado';

     end;

     if cklistAcesso.Checked[2] Then begin

       CadProdutos := 'Liberado';

     end else begin

       CadProdutos := 'Bloqueado';

     end;

     if cklistAcesso.Checked[3] Then begin

       CadEstoque := 'Liberado';

     end else begin

       CadEstoque := 'Bloqueado';

     end;

     if cklistAcesso.Checked[4] Then begin

       CadConsultaEStoque := 'Liberado';

     end else begin

       CadConsultaEStoque := 'Bloqueado';

     end;

     if cklistAcesso.Checked[5] Then begin

       CadContasPR := 'Liberado';

     end else begin

       CadContasPR := 'Bloqueado';

     end;

     if cklistAcesso.Checked[6] Then begin

       CadGrupoSubgrupo := 'Liberado';

     end else begin

       CadGrupoSubgrupo := 'Bloqueado';

     end;

     if cklistAcesso.Checked[7] Then begin

       CadLocalEstoque := 'Liberado';

     end else begin

       CadLocalEstoque := 'Bloqueado';

     end;


     if cklistAcesso.Checked[8] Then begin

       CadRecibo := 'Liberado';

     end else begin

       CadRecibo := 'Bloqueado';

     end;

     if cklistAcesso.Checked[9] Then begin

       CadPedVenda := 'Liberado';

     end else begin

       CadPedVenda := 'Bloqueado';

     end;

     if cklistAcesso.Checked[10] Then begin

       CadFrenteCx := 'Liberado';

     end else begin

       CadFrenteCx := 'Bloqueado';

     end;

     if cklistAcesso.Checked[11] Then begin

       CadManutCupom := 'Liberado';

     end else begin

       CadManutCupom := 'Bloqueado';

     end;

     if cklistAcesso.Checked[12] Then begin

       CadFluxoCx := 'Liberado';

     end else begin

       CadFluxoCx := 'Bloqueado';

     end;

     if cklistAcesso.Checked[13] Then begin

       CadSenhaAcesso := 'Liberado';

     end else begin

       CadSenhaAcesso := 'Bloqueado';

     end;

     if cklistAcesso.Checked[14] Then begin

       RelatorioFluxoCx := 'Liberado';

     end else begin

       RelatorioFluxoCx := 'Bloqueado';

     end;

     if cklistAcesso.Checked[15] Then begin

       FluxosdeCaixa := 'Liberado';

     end else begin

       FluxosdeCaixa := 'Bloqueado';

     end;

     if cklistAcesso.Checked[16] Then begin

       RelatorioProdutos := 'Liberado';

     end else begin

       RelatorioProdutos := 'Bloqueado';

     end;

     if cklistAcesso.Checked[17] Then begin

       Relatorios := 'Liberado';

     end else begin

       Relatorios := 'Bloqueado';

     end;

     if cklistAcesso.Checked[18] Then begin

       AlteracaodeProdutos := 'Liberado';

     end else begin

       AlteracaodeProdutos := 'Bloqueado';

     end;

     if cklistAcesso.Checked[19] Then begin

       ConfigSistema := 'Liberado';

     end else begin

       ConfigSistema := 'Bloqueado';

     end;

     if cklistAcesso.Checked[20] Then begin

       CustoProdutos := 'Liberado';

     end else begin

       CustoProdutos := 'Bloqueado';

     end;

     if cklistAcesso.Checked[21] Then begin

       VlrProdPedido := 'Liberado';

     end else begin

       VlrProdPedido := 'Bloqueado';

     end;

     if cklistAcesso.Checked[22] Then begin

       SenhaSangria := 'Liberado';

     end else begin

       SenhaSangria := 'Bloqueado';

     end;


     if cklistAcesso.Checked[23] Then begin

       ExclusaodeProdutos := 'Liberado';

     end else begin

       ExclusaodeProdutos := 'Bloqueado';

     end;


////////////////////////////////////////////////////////////////////////////////
     if rbFuncionario.Checked Then begin

       TipoUsuario := 'Funcionario';

     end;

     if rbAdm.Checked Then begin

       TipoUsuario := 'Administrador';

     end;

     if rbVendedor.Checked Then begin

       TipoUsuario := 'Vendedor';

     end;

      ibUser.Close;
      ibUser.SQL.Clear;
      ibUser.SQL.Add('INSERT INTO TBLUSER '
      + '(NOME,LOGIN,SENHA,ENDERECO,NUMERO,BAIRRO,CIDADE,ESTADO,CEP,DDD,FONERES,'
      + 'CELULAR,CADCLI,CADFORN,CADPROD,CADESTOQUE,CADCONSESTOQUE,CADPR,CADGRUPOSUB,CADRECIBO,'
      + 'CADPEDIDOVENDA,CADFRENTECX,CADMANUTCUPONS,CADFLUXOCX,CADLOCALESTOQUE,'
      + 'RELATORIOFLUXO,FLUXOSCX,TIPOUSUARIO,RELATORIOPRODUTO,RELATORIOS,'
      + 'SENHACONFIGURACAO,CUSTOPRODUTOS,ALTERACAODEPRODUTOS,VLRPRODPEDIDO,'
      + 'SENHASANGRIA,EXCLUSAODEPRODUTOS,CADSENHAACESSO) values '
      + '(''' + lbl_edtNome.Text + ''',''' + lbl_edtLogin.Text + ''','
      + ' ''' + lbl_edtSenha.Text + ''','
      + ' ''' + lbl_edtEndereco.Text + ''',''' + lbl_edtNumero.Text + ''','
      + ' ''' + lbl_edtBairro.Text + ''','
      + ' ''' + lbl_edtCidade.Text + ''',''' + lbl_edtEstado.Text + ''','
      + ' ''' + lbl_edtCep.Text + ''',''' + lbl_edtDDD.Text + ''','
      + ' ''' + lbl_edtFone.Text + ''',''' + lbl_edtCelular.Text + ''','
      + ' ''' + CadClientes + ''',''' + CadFornecedores + ''','
      + ' ''' + CadProdutos + ''','
      + ' ''' + CadEstoque + ''',''' + CadConsultaEStoque + ''','
      + ' ''' + CadContasPR + ''',''' + CadGrupoSubgrupo + ''','
      + ' ''' + CadRecibo + ''',''' + CadPedVenda + ''','
      + ' ''' + CadFrenteCx + ''',''' + CadManutCupom + ''','
      + ' ''' + CadFluxoCx + ''','
      + ' ''' + CadLocalEstoque + ''','
      + ' ''' + RelatorioFluxoCx + ''','
      + ' ''' + FluxosdeCaixa + ''','
      + ' ''' + TipoUsuario + ''','
      + ' ''' + RelatorioProdutos + ''','
      + ' ''' + Relatorios + ''','
      + ' ''' + ConfigSistema + ''','
      + ' ''' + CustoProdutos + ''','
      + ' ''' + AlteracaodeProdutos + ''','
      + ' ''' + VlrProdPedido + ''','
      + ' ''' + SenhaSangria + ''','
      + ' ''' + ExclusaodeProdutos + ''','
      + ' ''' + CadSenhaAcesso + ''')');
      ibUser.ExecSQL;
      Commit(ibUser);

      ExecSELECT;

      ibeaNovo.Caption := '&Novo';
      DesabilitarCampos(False);
      LimparCampos;

    end else begin

      ibeaNovo.Caption := '&Gravar';
      DesabilitarCampos(True);
      LimparCampos;
      lbl_edtNome.SetFocus;

      ibUser.Close;
      ibUser.SQL.Clear;
      ibUser.SQL.Add('SELECT * FROM TBLUSER ORDER BY IDUSER DESC');
      ibUser.Open;

      lbl_edtCodigo.Text := IntToStr(ibUser.FieldByName('IDUSER').AsInteger + 1);

    end;{if ibea gravar}
    
  end;{with}

end;

procedure TfrmFuncSenha.FormCreate(Sender: TObject);
begin
 MontaColunas := True;
end;

procedure TfrmFuncSenha.FormKeyPress(Sender: TObject; var Key: Char);
begin
 Key := UpCase(Key); //Deixa todos os textos em maiusculo
  if Key = #13 Then begin
     Key := #0; //Desabilita processamento posterior da tecla
     Perform(WM_NEXTDLGCTL,0,0);//Simula o envio de Tab
  end;
end;

procedure TfrmFuncSenha.dbgFuncSenhaCellClick(Column: TColumn);
begin

  with dmModule do begin

  IDUsuario := ibUser.FieldByName('IDUSER').AsInteger;

  if ibUser.FieldByName('CADCLI').AsString = 'Liberado' Then begin

  cklistAcesso.Checked[0] := True;

  end else begin

  cklistAcesso.Checked[0] := False;

  end;
/////////////////////////////////////////////////////////////////////////

  if ibUser.FieldByName('CADFORN').AsString = 'Liberado' Then begin

  cklistAcesso.Checked[1] := True;

  end else begin

  cklistAcesso.Checked[1] := False;

  end;
/////////////////////////////////////////////////////////////////////////

  if ibUser.FieldByName('CADPROD').AsString = 'Liberado' Then begin

  cklistAcesso.Checked[2] := True;

  end else begin

  cklistAcesso.Checked[2] := False;

  end;
/////////////////////////////////////////////////////////////////////////


  if ibUser.FieldByName('CADESTOQUE').AsString = 'Liberado' Then begin

  cklistAcesso.Checked[3] := True;

  end else begin

  cklistAcesso.Checked[3] := False;

  end;
/////////////////////////////////////////////////////////////////////////

  if ibUser.FieldByName('CADCONSESTOQUE').AsString = 'Liberado' Then begin

  cklistAcesso.Checked[4] := True;

  end else begin

  cklistAcesso.Checked[4] := False;

  end;
/////////////////////////////////////////////////////////////////////////

  if ibUser.FieldByName('CADPR').AsString = 'Liberado' Then begin

  cklistAcesso.Checked[5] := True;

  end else begin

  cklistAcesso.Checked[5] := False;

  end;
/////////////////////////////////////////////////////////////////////////

  if ibUser.FieldByName('CADGRUPOSUB').AsString = 'Liberado' Then begin

  cklistAcesso.Checked[6] := True;

  end else begin

  cklistAcesso.Checked[6] := False;

  end;
/////////////////////////////////////////////////////////////////////////


  if ibUser.FieldByName('CADLOCALESTOQUE').AsString = 'Liberado' Then begin

  cklistAcesso.Checked[7] := True;

  end else begin

  cklistAcesso.Checked[7] := False;

  end;
/////////////////////////////////////////////////////////////////////////


  if ibUser.FieldByName('CADRECIBO').AsString = 'Liberado' Then begin

  cklistAcesso.Checked[8] := True;

  end else begin

  cklistAcesso.Checked[8] := False;

  end;
/////////////////////////////////////////////////////////////////////////


  if ibUser.FieldByName('CADPEDIDOVENDA').AsString = 'Liberado' Then begin

  cklistAcesso.Checked[9] := True;

  end else begin

  cklistAcesso.Checked[9] := False;

  end;
/////////////////////////////////////////////////////////////////////////


  if ibUser.FieldByName('CADFRENTECX').AsString = 'Liberado' Then begin

  cklistAcesso.Checked[10] := True;

  end else begin

  cklistAcesso.Checked[10] := False;

  end;
/////////////////////////////////////////////////////////////////////////


  if ibUser.FieldByName('CADMANUTCUPONS').AsString = 'Liberado' Then begin

  cklistAcesso.Checked[11] := True;

  end else begin

  cklistAcesso.Checked[11] := False;

  end;
/////////////////////////////////////////////////////////////////////////

  if ibUser.FieldByName('CADFLUXOCX').AsString = 'Liberado' Then begin

  cklistAcesso.Checked[12] := True;

  end else begin

  cklistAcesso.Checked[12] := False;

  end;

/////////////////////////////////////////////////////////////////////////

  if ibUser.FieldByName('CADSENHAACESSO').AsString = 'Liberado' Then begin

  cklistAcesso.Checked[13] := True;

  end else begin

  cklistAcesso.Checked[13] := False;

  end;

////////////////////////////////////////////////////////////////////////////////

  if ibUser.FieldByName('RELATORIOFLUXO').AsString = 'Liberado' Then begin

    cklistAcesso.Checked[14] := True;

  end else begin

     cklistAcesso.Checked[14] := False;

  end;

////////////////////////////////////////////////////////////////////////////////

  if ibUser.FieldByName('FLUXOSCX').AsString = 'Liberado' Then begin

    cklistAcesso.Checked[15] := True;

  end else begin

     cklistAcesso.Checked[15] := False;

  end;

////////////////////////////////////////////////////////////////////////////////

  if ibUser.FieldByName('RELATORIOPRODUTO').AsString = 'Liberado' Then begin

  cklistAcesso.Checked[16] := True;

  end else begin

  cklistAcesso.Checked[16] := False;

  end;
////////////////////////////////////////////////////////////////////////////////

  if ibUser.FieldByName('RELATORIOS').AsString = 'Liberado' Then begin

  cklistAcesso.Checked[17] := True;

  end else begin

  cklistAcesso.Checked[17] := False;

  end;

////////////////////////////////////////////////////////////////////////////////

  if ibUser.FieldByName('ALTERACAODEPRODUTOS').AsString = 'Liberado' Then begin

  cklistAcesso.Checked[18] := True;

  end else begin

  cklistAcesso.Checked[18] := False;

  end;

////////////////////////////////////////////////////////////////////////////////

  if ibUser.FieldByName('SENHACONFIGURACAO').AsString = 'Liberado' Then begin

  cklistAcesso.Checked[19] := True;

  end else begin

  cklistAcesso.Checked[19] := False;

  end;

////////////////////////////////////////////////////////////////////////////////

  if ibUser.FieldByName('CUSTOPRODUTOS').AsString = 'Liberado' Then begin

  cklistAcesso.Checked[20] := True;

  end else begin

  cklistAcesso.Checked[20] := False;

  end;

////////////////////////////////////////////////////////////////////////////////

  if ibUser.FieldByName('VLRPRODPEDIDO').AsString = 'Liberado' Then begin

  cklistAcesso.Checked[21] := True;

  end else begin

  cklistAcesso.Checked[21] := False;

  end;
////////////////////////////////////////////////////////////////////////////////

  if ibUser.FieldByName('SENHASANGRIA').AsString = 'Liberado' Then begin

  cklistAcesso.Checked[22] := True;

  end else begin

  cklistAcesso.Checked[22] := False;

  end;

////////////////////////////////////////////////////////////////////////////////

  if ibUser.FieldByName('EXCLUSAODEPRODUTOS').AsString = 'Liberado' Then begin

  cklistAcesso.Checked[23] := True;

  end else begin

  cklistAcesso.Checked[23] := False;

  end;

////////////////////////////////////////////////////////////////////////////////

  if ibUser.FieldByName('TIPOUSUARIO').AsString = 'Administrador' Then begin

    rbAdm.Checked := True;

  end else if ibUser.FieldByName('TIPOUSUARIO').AsString = 'Funcionario' Then begin

    rbFuncionario.Checked := True;

  end else if ibUser.FieldByName('TIPOUSUARIO').AsString = 'Vendedor' Then begin

    rbVendedor.Checked := True;

  end;

////////////////////////////////////////////////////////////////////////////////

  lbl_edtCodigo.Text        := IntToStr(ibUser.FieldByName('IDUSER').AsInteger);
  lbl_edtNome.Text          := ibUser.FieldByName('NOME').AsString;
  lbl_edtLogin.Text         := ibUser.FieldByName('LOGIN').AsString;
  lbl_edtSenha.Text         := ibUser.FieldByName('SENHA').AsString;
  lbl_edtEndereco.Text      := ibUser.FieldByName('ENDERECO').AsString;
  lbl_edtNumero.Text        := ibUser.FieldByName('NUMERO').AsString;
  lbl_edtBairro.Text        := ibUser.FieldByName('BAIRRO').AsString;
  lbl_edtCidade.Text        := ibUser.FieldByName('CIDADE').AsString;
  lbl_edtEstado.Text        := ibUser.FieldByName('ESTADO').AsString;
  lbl_edtCep.Text           := ibUser.FieldByName('CEP').AsString;
  lbl_edtDDD.Text           := ibUser.FieldByName('DDD').AsString;
  lbl_edtFone.Text          := ibUser.FieldByName('FONERES').AsString;
  lbl_edtCelular.Text       := ibUser.FieldByName('CELULAR').AsString;



  end;{with}

end;

procedure TfrmFuncSenha.ibeaAlterarClick(Sender: TObject);

var

CadClientes,CadFornecedores,CadProdutos,CadMP,CadEstoque,CadConsultaEStoque : String;
CadContasPR, CadGrupoSubgrupo,CadLocalEstoque,CadRecibo,CadPedVenda:String;
CadFrenteCx,CadManutCupom,CadFluxoCx,CadSenhaAcesso, TipoUsuario : String;
RelatorioFluxoCx,FluxosdeCaixa,RelatorioProdutos,Relatorios : String;
AlteracaodeProdutos,ConfigSistema,CustoProdutos,VlrProdPedido : String;
AltSenhaSangria,AltExclusaodeProdutos : String;

begin

  with dmModule do begin

  if ibeaAlterar.Caption = '&Atualizar' Then begin

    ConfirmaMSG := Application.MessageBox('Confirma a altera��o','Notifica��o: Alera��o de Registro',+ MB_YESNO + MB_ICONQUESTION);

    if ConfirmaMSG = 6 Then begin

       if cklistAcesso.Checked[0] Then begin

       CadClientes := 'Liberado';

       end else begin

        CadClientes := 'Bloqueado';

       end;

       if cklistAcesso.Checked[1] Then begin

         CadFornecedores := 'Liberado';

       end else begin

         CadFornecedores := 'Bloqueado';

       end;

       if cklistAcesso.Checked[2] Then begin

         CadProdutos := 'Liberado';

       end else begin

         CadProdutos := 'Bloqueado';

       end;


       if cklistAcesso.Checked[3] Then begin

         CadEstoque := 'Liberado';

       end else begin

         CadEstoque := 'Bloqueado';

       end;

       if cklistAcesso.Checked[4] Then begin

         CadConsultaEStoque := 'Liberado';

       end else begin

         CadConsultaEStoque := 'Bloqueado';

       end;

       if cklistAcesso.Checked[5] Then begin

         CadContasPR := 'Liberado';

       end else begin

         CadContasPR := 'Bloqueado';

       end;

       if cklistAcesso.Checked[6] Then begin

         CadGrupoSubgrupo := 'Liberado';

       end else begin

         CadGrupoSubgrupo := 'Bloqueado';

       end;

       if cklistAcesso.Checked[7] Then begin

         CadLocalEstoque := 'Liberado';

       end else begin

         CadLocalEstoque := 'Bloqueado';

       end;


       if cklistAcesso.Checked[8] Then begin

         CadRecibo := 'Liberado';

       end else begin

         CadRecibo := 'Bloqueado';

       end;

       if cklistAcesso.Checked[9] Then begin

         CadPedVenda := 'Liberado';

       end else begin

         CadPedVenda := 'Bloqueado';

       end;

       if cklistAcesso.Checked[10] Then begin

         CadFrenteCx := 'Liberado';

       end else begin

         CadFrenteCx := 'Bloqueado';

       end;

       if cklistAcesso.Checked[11] Then begin

         CadManutCupom := 'Liberado';

       end else begin

         CadManutCupom := 'Bloqueado';

       end;

       if cklistAcesso.Checked[12] Then begin

         CadFluxoCx := 'Liberado';

       end else begin

         CadFluxoCx := 'Bloqueado';

       end;

       if cklistAcesso.Checked[13] Then begin

         CadSenhaAcesso := 'Liberado';

       end else begin

         CadSenhaAcesso := 'Bloqueado';

       end;

       if cklistAcesso.Checked[14] Then begin

         RelatorioFluxoCx := 'Liberado';

       end else begin

         RelatorioFluxoCx := 'Bloqueado';

       end;

       if cklistAcesso.Checked[15] Then begin

         FluxosdeCaixa := 'Liberado';

       end else begin

         FluxosdeCaixa := 'Bloqueado';

       end;

     if cklistAcesso.Checked[16] Then begin

       RelatorioProdutos := 'Liberado';

     end else begin

       RelatorioProdutos := 'Bloqueado';

     end;

     if cklistAcesso.Checked[17] Then begin

       Relatorios := 'Liberado';

     end else begin

       Relatorios := 'Bloqueado';

     end;

     if cklistAcesso.Checked[18] Then begin

       AlteracaodeProdutos := 'Liberado';

     end else begin

       AlteracaodeProdutos := 'Bloqueado';

     end;

     if cklistAcesso.Checked[19] Then begin

       ConfigSistema := 'Liberado';

     end else begin

       ConfigSistema := 'Bloqueado';

     end;

     if cklistAcesso.Checked[20] Then begin

       CustoProdutos := 'Liberado';

     end else begin

       CustoProdutos := 'Bloqueado';

     end;

     if cklistAcesso.Checked[21] Then begin

       VlrProdPedido := 'Liberado';

     end else begin

       VlrProdPedido := 'Bloqueado';

     end;

     if cklistAcesso.Checked[22] Then begin

       AltSenhaSangria := 'Liberado';

     end else begin

       AltSenhaSangria := 'Bloqueado';

     end;

     if cklistAcesso.Checked[23] Then begin

       AltExclusaodeProdutos := 'Liberado';

     end else begin

       AltExclusaodeProdutos := 'Bloqueado';

     end;
////////////////////////////////////////////////////////////////////////////////

     if rbFuncionario.Checked Then begin

     TipoUsuario := 'Funcionario';

     end;

     if rbAdm.Checked Then begin

     TipoUsuario := 'Administrador';

     end;

     if rbVendedor.Checked Then begin

     TipoUsuario := 'Vendedor';

     end;

       ibUser.Close;
       ibUser.SQL.Clear;
       ibUser.SQL.Add('UPDATE TBLUSER SET '
       + 'CADCLI=''' + CadClientes + ''','
       + 'CADFORN=''' + CadFornecedores + ''','
       + 'CADPROD=''' + CadProdutos + ''','
       + 'CADESTOQUE=''' + CadEstoque + ''','
       + 'CADCONSESTOQUE=''' + CadConsultaEStoque + ''','
       + 'CADPR=''' + CadContasPR + ''','
       + 'CADGRUPOSUB=''' + CadGrupoSubgrupo + ''','
       + 'CADRECIBO=''' + CadRecibo + ''','
       + 'CADPEDIDOVENDA=''' + CadPedVenda + ''','
       + 'CADFRENTECX=''' + CadFrenteCx + ''','
       + 'CADMANUTCUPONS=''' + CadManutCupom + ''','
       + 'CADFLUXOCX=''' + CadFluxoCx + ''','
       + 'CADLOCALESTOQUE=''' + CadLocalEstoque + ''','
       + 'CADSENHAACESSO=''' + CadSenhaAcesso + ''','
       + 'NOME=''' + lbl_edtNome.Text + ''','
       + 'LOGIN=''' + lbl_edtLogin.Text + ''','
       + 'SENHA=''' + lbl_edtSenha.Text + ''','
       + 'ENDERECO=''' + lbl_edtEndereco.Text + ''','
       + 'NUMERO=''' + lbl_edtNumero.Text + ''','
       + 'BAIRRO=''' + lbl_edtBairro.Text + ''','
       + 'CIDADE=''' + lbl_edtCidade.Text + ''','
       + 'ESTADO='''+ lbl_edtEstado.Text + ''','
       + 'CEP=''' + lbl_edtCep.Text  + ''','
       + 'DDD='''+ lbl_edtDDD.Text + ''','
       + 'FONERES=''' + lbl_edtFone.Text + ''','
       + 'RELATORIOFLUXO=''' + RelatorioFluxoCx + ''','
       + 'FLUXOSCX=''' + FluxosdeCaixa + ''','
       + 'TIPOUSUARIO=''' + TipoUsuario + ''','
       + 'RELATORIOPRODUTO=''' + RelatorioProdutos + ''','
       + 'RELATORIOS=''' + Relatorios + ''','
       + 'ALTERACAODEPRODUTOS=''' + AlteracaodeProdutos + ''','
       + 'SENHACONFIGURACAO=''' + ConfigSistema + ''','
       + 'CUSTOPRODUTOS=''' + CustoProdutos + ''','
       + 'VLRPRODPEDIDO=''' + VlrProdPedido + ''','
       + 'SENHASANGRIA=''' + AltSenhaSangria + ''','
       + 'EXCLUSAODEPRODUTOS=''' + AltExclusaodeProdutos + ''','
       + 'CELULAR=''' + lbl_edtCelular.Text + ''' WHERE IDUSER=''' + InttoStr(IDUsuario) + '''');
       ibUser.ExecSQL;
       Commit(ibUser);

       ExecSELECT;

    end;{if confirmamsg}

    ibeaAlterar.Caption := '&Alterar';
    DesabilitarCampos(False);
    LimparCampos;
    

  end else begin

    ibeaAlterar.Caption := '&Atualizar';
    DesabilitarCampos(True);
    
    
  end;

  end;{with}

end;

procedure TfrmFuncSenha.lbl_edtCepExit(Sender: TObject);
begin

  if lbl_edtCep.Text <> '' Then begin

    lbl_edtCep.Text := StringReplace(lbl_edtCep.Text,'-','',[rfReplaceAll]);
    lbl_edtCep.Text := FormatFloat('00000-000',StrToFloat(lbl_edtCep.Text));

  end;

end;

procedure TfrmFuncSenha.lbl_edtFoneExit(Sender: TObject);
begin

  if lbl_edtFone.Text <> '' Then begin

    lbl_edtFone.Text := StringReplace(lbl_edtFone.Text,'-','',[rfReplaceAll]);
    lbl_edtFone.Text := FormatFloat('0000-0000',StrToFloat(lbl_edtFone.Text));

  end;

end;

procedure TfrmFuncSenha.lbl_edtCelularExit(Sender: TObject);
begin

  if lbl_edtCelular.Text <> '' Then begin

    lbl_edtCelular.Text := StringReplace(lbl_edtCelular.Text,'-','',[rfReplaceAll]);
    lbl_edtCelular.Text := FormatFloat('0000-0000',StrToFloat(lbl_edtCelular.Text));

  end;

end;

procedure TfrmFuncSenha.ibeaExcluirClick(Sender: TObject);

var

ConfirmaExclusao : Integer;

begin

  with dmModule do begin

  ConfirmaExclusao := Application.MessageBox('Confirma a exclus�o do registro?','Exclus�o de registro',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

    if ConfirmaExclusao = 6 Then begin

      ibUser.Close;
      ibUser.SQL.Clear;
      ibUser.SQL.Add('DELETE FROM TBLUSER WHERE IDUSER=''' + IntToStr(IDUsuario) + '''');
      ibUser.ExecSQL;
      Commit(ibUser);

      ExecSELECT;
      LimparCampos;

    end;//if

  end;//with

end;

end.
