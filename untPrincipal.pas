unit untPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, ExtCtrls,  StdCtrls,
  ImgList, IniFiles, IBQuery, DB,
  classComboBox, ComObj, Buttons, jpeg, axCtrls, Vcl.Tabs, Vcl.DockTabSet,
  VCLTee.TeCanvas;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    mnuCadastro: TMenuItem;
    mnuClientes: TMenuItem;
    mnuProdutos: TMenuItem;
    N1: TMenuItem;
    mnuSair: TMenuItem;
    TimerPrincipal: TTimer;
    mnuEstoque: TMenuItem;
    mnuTabelas: TMenuItem;
    mnuGrupoSubgrupo: TMenuItem;
    mnuRelatorios: TMenuItem;
    mnuRelClientes: TMenuItem;
    mnuLocalEstocagem: TMenuItem;
    mnuFornecedores: TMenuItem;
    mnuProd: TMenuItem;
    mnuServicos: TMenuItem;
    mnuServLoja: TMenuItem;
    mnuFinanceiro: TMenuItem;
    mnuContasPR: TMenuItem;
    mnuRelEstoque: TMenuItem;
    FluxodeCaixaporPeriodo1: TMenuItem;
    mnuContasaPagar: TMenuItem;
    Geral1: TMenuItem;
    mnuContasaReceber: TMenuItem;
    mnuGeral2: TMenuItem;
    mnuSenhadeAcesso1: TMenuItem;
    mnuFluxoGeral2: TMenuItem;
    mnuFaturamento: TMenuItem;
    mnuPedidodeVenda1: TMenuItem;
    mnuManutenodeCuponsCaixa1: TMenuItem;
    Geral2: TMenuItem;
    VendidosporPerodo1: TMenuItem;
    FluxoDetalhado1: TMenuItem;
    Geral3: TMenuItem;
    FormatoExcel1: TMenuItem;
    Utilitrios1: TMenuItem;
    Sobre1: TMenuItem;
    Configuraes1: TMenuItem;
    DadosEmpresa1: TMenuItem;
    FrentedeCaixa1: TMenuItem;
    UnidadedeVenda1: TMenuItem;
    abeladePreos1: TMenuItem;
    mnuTblPGeral: TMenuItem;
    ProFornecedor1: TMenuItem;
    Grupo1: TMenuItem;
    SubGrupo1: TMenuItem;
    Grupo2: TMenuItem;
    ContasaPagar1: TMenuItem;
    CondiesdePagto1: TMenuItem;
    Produtoscomestoquemnimo1: TMenuItem;
    PorCarto1: TMenuItem;
    AtualizaodePreosporFornecedor1: TMenuItem;
    EstoqueRpido1: TMenuItem;
    Cores1: TMenuItem;
    amanho1: TMenuItem;
    EstoqueMnimoNegativoporFornecedor1: TMenuItem;
    PorDatadeCadastro1: TMenuItem;
    PorPerodo1: TMenuItem;
    Detalhado1: TMenuItem;
    PorFuncionario1: TMenuItem;
    ServiosaPagarCustoDirio1: TMenuItem;
    PorPerodoeBaixado1: TMenuItem;
    Etiquetas2: TMenuItem;
    N60892: TMenuItem;
    N60871: TMenuItem;
    FluxodePedido1: TMenuItem;
    FluxodoPedidodeVenda1: TMenuItem;
    PorFornecedor1: TMenuItem;
    rocasporPerodoeFuncionrio1: TMenuItem;
    Backup1: TMenuItem;
    ExecutarBackup1: TMenuItem;
    ZerartodooEstoque1: TMenuItem;
    amanhoGG1: TMenuItem;
    Configuraodeimpressodeetiquetas1: TMenuItem;
    Serviosporperodoefuncionrio1: TMenuItem;
    CadastrarServios1: TMenuItem;
    Vendaspornmerodecupom1: TMenuItem;
    Cotao1: TMenuItem;
    lbl_Usuario: TLabel;
    lbl_CodUsuario: TLabeledEdit;
    StatusLine: TStatusBar;
    EntradadeEstoqueporNF1: TMenuItem;
    EtiquetaTrmica1: TMenuItem;
    EtiquetasLoja1: TMenuItem;
    CadastrarCFOP1: TMenuItem;
    CadastrarCST1: TMenuItem;
    CadastrarCSOSN1: TMenuItem;
    Panel2: TPanel;
    sbCadastro: TSpeedButton;
    sbProdutos: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    sbFornecedores: TSpeedButton;
    pcPrincipal: TPageControl;
    tbsImgSistema: TTabSheet;
    tbsClientes: TTabSheet;
    ibeaProduto: TSpeedButton;
    ibeaFornecedores: TSpeedButton;
    ibeaCliente: TSpeedButton;
    ibeaPosVenda: TSpeedButton;
    btnSair: TSpeedButton;
    ibeaVendasLoja: TSpeedButton;
    pnlDataHora: TPanel;
    sbRestaurante: TSpeedButton;
    tbsFornecedores: TTabSheet;
    SpeedButton1: TSpeedButton;
    pnGravar: TPanel;
    sbGravar: TSpeedButton;
    pnAlterar: TPanel;
    sbAlterar: TSpeedButton;
    pnExcluir: TPanel;
    sbExcluir: TSpeedButton;
    Shape1: TShape;
    lbl_edtCodCliente: TLabeledEdit;
    lbl_edtNome: TLabeledEdit;
    lbl_edtCnpj_cpf: TLabeledEdit;
    lbl_edtIE_rg: TLabeledEdit;
    Label1: TLabel;
    dtpDataCli: TDateTimePicker;
    imgLogo: TImage;
    sbSair: TSpeedButton;
    FluxodeRestauranteMesasporperodo1: TMenuItem;
    procedure Tratar_RetornoSAT(iRetorno:integer);
    procedure Commit(IBQueryExec : TIBQuery);
    procedure mnuSairClick(Sender: TObject);
    procedure mnuClientesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TimerPrincipalTimer(Sender: TObject);
    procedure mnuProdutosClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure ibeaProdutoClick(Sender: TObject);
    procedure ibeaClienteClick(Sender: TObject);
    procedure mnuGrupoSubgrupoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mnuLocalEstocagemClick(Sender: TObject);
    procedure mnuFornecedoresClick(Sender: TObject);
    procedure mnuRelClientesClick(Sender: TObject);
    procedure mnuAbreCxClick(Sender: TObject);
    procedure mnuServLojaClick(Sender: TObject);
    procedure mnuFluxodeCaixaClick(Sender: TObject);
    procedure ibeaVendasLojaClick(Sender: TObject);
    procedure mnuContasPRClick(Sender: TObject);
    procedure Geral1Click(Sender: TObject);
    procedure mnuGeral2Click(Sender: TObject);
    procedure mnuMatPrima1Click(Sender: TObject);
    procedure mnuSenhadeAcesso1Click(Sender: TObject);
    procedure mnuFluxoGeral2Click(Sender: TObject);
    procedure mnuPedidodeVenda1Click(Sender: TObject);
    procedure mnuManutenodeCuponsCaixa1Click(Sender: TObject);
    procedure Geral2Click(Sender: TObject);
    procedure VendidosporPerodo1Click(Sender: TObject);
    procedure FluxoDetalhado1Click(Sender: TObject);
    procedure Geral3Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure DadosEmpresa1Click(Sender: TObject);
    procedure FrentedeCaixa1Click(Sender: TObject);
    procedure Configuraes1Click(Sender: TObject);
    procedure UnidadedeVenda1Click(Sender: TObject);
    procedure mnuTblPGeralClick(Sender: TObject);
    procedure ProFornecedor1Click(Sender: TObject);
    procedure ContasaPagar1Click(Sender: TObject);
    procedure CondiesdePagto1Click(Sender: TObject);
    procedure Produtoscomestoquemnimo1Click(Sender: TObject);
    procedure ibeaFornecedoresClick(Sender: TObject);
    procedure PorCarto1Click(Sender: TObject);
    procedure AtualizaodePreosporFornecedor1Click(Sender: TObject);
    procedure EstoqueRpido1Click(Sender: TObject);
    procedure Cores1Click(Sender: TObject);
    procedure amanho1Click(Sender: TObject);
    procedure EstoqueMnimoNegativoporFornecedor1Click(Sender: TObject);
    procedure PorDatadeCadastro1Click(Sender: TObject);
    procedure PorPerodo1Click(Sender: TObject);
    procedure Detalhado1Click(Sender: TObject);
    procedure PorFuncionario1Click(Sender: TObject);
    procedure ServiosaPagarCustoDirio1Click(Sender: TObject);
    procedure PorPerodoeBaixado1Click(Sender: TObject);
    procedure N60892Click(Sender: TObject);
    procedure FluxodePedido1Click(Sender: TObject);
    procedure FluxodoPedidodeVenda1Click(Sender: TObject);
    procedure PorFornecedor1Click(Sender: TObject);
    procedure rocasporPerodoeFuncionrio1Click(Sender: TObject);
    procedure ExecutarBackup1Click(Sender: TObject);
    procedure ZerartodooEstoque1Click(Sender: TObject);
    procedure amanhoGG1Click(Sender: TObject);
    procedure Configuraodeimpressodeetiquetas1Click(Sender: TObject);
    procedure Vendaspornmerodecupom1Click(Sender: TObject);
    procedure Cotao1Click(Sender: TObject);
    procedure mnuRelatoriosClick(Sender: TObject);
    procedure EntradadeEstoqueporNF1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EtiquetaTrmica1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EtiquetasLoja1Click(Sender: TObject);
    procedure CadastrarCFOP1Click(Sender: TObject);
    procedure CadastrarCST1Click(Sender: TObject);
    procedure CadastrarCSOSN1Click(Sender: TObject);
    procedure Grupo2Click(Sender: TObject);
    procedure sbCadastroClick(Sender: TObject);
    procedure sbProdutosClick(Sender: TObject);
    procedure sbFornecedoresClick(Sender: TObject);
    procedure lbl_edtNomeExit(Sender: TObject);
    procedure lbl_edtNomeEnter(Sender: TObject);
    procedure lbl_edtCnpj_cpfEnter(Sender: TObject);
    procedure lbl_edtCnpj_cpfExit(Sender: TObject);
    procedure lbl_edtIE_rgEnter(Sender: TObject);
    procedure lbl_edtIE_rgExit(Sender: TObject);
    procedure sbGravarMouseEnter(Sender: TObject);
    procedure sbGravarMouseLeave(Sender: TObject);
    procedure sbAlterarMouseEnter(Sender: TObject);
    procedure sbAlterarMouseLeave(Sender: TObject);
    procedure sbExcluirMouseEnter(Sender: TObject);
    procedure sbExcluirMouseLeave(Sender: TObject);
    procedure sbCadastroMouseEnter(Sender: TObject);
    procedure sbCadastroMouseLeave(Sender: TObject);
    procedure sbProdutosMouseEnter(Sender: TObject);
    procedure sbProdutosMouseLeave(Sender: TObject);
    procedure sbFornecedoresMouseEnter(Sender: TObject);
    procedure sbFornecedoresMouseLeave(Sender: TObject);
    procedure sbVendasClick(Sender: TObject);
    procedure sbRestauranteMouseEnter(Sender: TObject);
    procedure sbRestauranteMouseLeave(Sender: TObject);
    procedure sbRestauranteClick(Sender: TObject);
    procedure sbSairMouseEnter(Sender: TObject);
    procedure sbSairMouseLeave(Sender: TObject);
    procedure FluxodeRestauranteMesasporperodo1Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;
//  function eAtualizarFW_SAT_Daruma():Integer; StdCall; External 'DarumaFrameWork.dll';
  
var

  frmPrincipal: TfrmPrincipal;
  ConfirmaMsg : Integer;
  ConfigSiS : TIniFile;
  PathSistema : String;
  IDClassUsuarioAcesso : TClasseCombo;
  IDUsuarioLogin : Integer;
  ErroNF : Word;

    IDClassUsuarioSis : TClasseCombo;
    StringUsuarioSis : String;
    
implementation

uses unClientes, untdmModule,
  untLocalEstocagem, uGrupoeSubgrupo,
  Fornecedores, untRelClientes, untRelProd, funcPosto,
  untServicos, untRelEstoque, untFluxoCxP, 
  untRelContasaPagar, untFuncSenha,
  untSenha, untPedidoVenda, untManutCx, untProdutoVendidoP,
  untFluxoDetalhado, untRelEstoqueFornecedor, untSobre,
  untDadosEmpresa, untConfiguracoes, untSenhaCx,
  untContasaReceber, untProdutos_MPrima, untUnidVenda, untRelTblPreco,
  untrelTblPrecoForn, Cond_pagto,
  untRelEstMin, untTblPreco,
  untEstoqueRapido, untCores, untTamanho, untEstoqueMForn,
  untRelProdDataCad, untVendasDetalhado, untVendasFunc,
  untFormSplash, 
  untFluxoPedVenda, untPedidosLoja, untRelVendasFornecedor,
  untTrocaPeriodo, untConfigNota, untRClientes, untRProdutos,
  untBackup, untServicosCPagar,
  untEtiquetaGr, untConfigEtiquetaGr,untOrdemServico, untVendasCupom,
  untCotacao, untEntradadeEstoque, untEtiquetaTermica, untEtiquetasLoja,
  untEtiquetasLojaR, untCFOP, untCST, untCSOSN, untGrupoSubGrupoEstoque,
  Controller.Usuario,
  Model.Connection,
  Model.Usuario, untModuloRestaurante, untFluxoRestauranteP;


{$R *.dfm}

//procedure ChamarForm1; stdcall; external 'testedll.dll';

procedure TfrmPrincipal.Tratar_RetornoSAT(iRetorno:integer);
var
  Str_Msg: String;
begin
   Str_Msg:=StringOFChar(#0,300);

   if (iRetorno=1) then
   begin
     Str_Msg := 'Comando executado com sucesso!';
   end
   else
   begin
      case iRetorno of
         0: Str_Msg:= '[0] - M�todo n�o executado/ Tag inv�lida/ N�o foi poss�vel comunicar com impressora';
         //retorno 0, depende do m�todo que foi chamado tem significado diferente.
        -6: Str_Msg:= '[-6] - TimeOut, erro de comunica��o com o SAT';
        -7: Str_Msg:= '[-7] - Erro ao abrir comunica��o com o SAT';
        -40: Str_Msg:= '[-40] - Tag XML inv�lida';
        -50: Str_Msg:= '[-50] - Impressora off-Line';
        -51: Str_Msg:= '[-51] - Impressora sem papel';
        -99: Str_Msg:= '[-99] - Par�metro inv�lido ou ponteiro nulo de par�metro';
        -120: Str_Msg:= '[-120] - Encontrada tag inv�lida';
        -121: Str_Msg:= '[-121] - Estrutura Invalida';
        -122: Str_Msg:= '[-122] - Tag obrigat�ria n�o foi informada';
        -123: Str_Msg:= '[-123] - Tag obrigat�ria n�o tem valor preenchido';
        -130: Str_Msg:= '[-130] - CFe j� aberto';
        -131: Str_Msg:= '[-131] - CFe n�o aberto';
        -132: Str_Msg:= '[-132] - CFe n�o em fase de venda';
        -133: Str_Msg:= '[-133] - CFe n�o em fase de totaliza��o';
        -134: Str_Msg:= '[-134] - CFe n�o em fase de pagamento';
        -135: Str_Msg:= '[-135] - CFe n�o em fase de encerramento';
        -136: Str_Msg:= '[-136] - CFe em estado inv�lido para opera��o';
        -140: Str_Msg:= '[-140] - Biblioteca auxiliar SAT.dll n�o foi encontrada/carregada';
        -141: Str_Msg:= '[-141] - Impressora inv�lida (modelo deve ser DR700 ou vers�o incompativel)';
        -142: Str_Msg:= '[-142] - Resposta Incompleta do SAT';
        /// Os c�digos de erro abaixo s�o retornados pelo SAT  para verificar mais retornos consulte a Especifica��o de Requisitos do SAT vigente.
        1084: Str_Msg:= '[1084] - Formato do Certificado Inv�lido';
        1085: Str_Msg:= '[1085] - Assinatura do Aplicativo Comercial n�o confere';
        1218: Str_Msg:= '[1218] - CF-e-SAT J� est� cancelado';
        1412: Str_Msg:= '[1412] - CFe de cancelamento n�o corresponde a um CFe emitido nos 30 minutos anteriores ao pedido de cancelamento';
        1999: Str_Msg:= '[1999] - Erro desconhecido';
        6001: Str_Msg:= '[6001] - C�digo de ativa��o inv�lido';
        6002: Str_Msg:= '[6002] - SAT ainda n�o ativado';
        6003: Str_Msg:= '[6003] - SAT n�o vinculado ao AC';
        6004: Str_Msg:= '[6004] - Vincula��o do AC n�o confere';
        6005: Str_Msg:= '[6005] - Tamanho do CFe superior a 1500KB';
        6006: Str_Msg:= '[6006] - SAT bloqueado pelo contribuinte';
        6007: Str_Msg:= '[6007] - SAT bloqueado pela SEFAZ';
        6008: Str_Msg:= '[6008] - SAT bloqueado por falta de comunica��o';
        6009: Str_Msg:= '[6009] - SAT bloqueado, c�digo de ativa��o incorreto';
        6010: Str_Msg:= '[6010] - Erro de valida��o do conte�do';
        6098: Str_Msg:= '[6098] - SAT em processamento. Tente novamente';
        6099: Str_Msg:= '[6099] - Erro desconhecido';
        7001: Str_Msg:= '[7001] - C�digo de ativa��o inv�lido';
        7002: Str_Msg:= '[7002] - Cupom Inv�lido';
        7003: Str_Msg:= '[7003] - SAT bloqueado pelo contribuinte';
        7004: Str_Msg:= '[7004] - SAT bloqueado pela SEFAZ';
        7005: Str_Msg:= '[7005] - SAT bloqueado por falta de comunica��o';
        7006: Str_Msg:= '[7006] - SAT bloqueado, c�digo de ativa��o incorreto';
        7007: Str_Msg:= '[7007] - Erro de valida��o do conte�do';
        7098: Str_Msg:= '[7098] - SAT em processamento. Tente novamente';
        7099: Str_Msg:= '[7099] - Erro desconhecido';
        8098: Str_Msg:= '[8098] - SAT em processamento. Tente novamente';
        8099: Str_Msg:= '[8099] - Erro desconhecido';
        10001: Str_Msg:= '[10001] - C�digo de ativa��o inv�lido';
        10098: Str_Msg:= '[10098] - SAT em processamento. Tente novamente';
        10099: Str_Msg:= '[10099] - Erro desconhecido';
        13001: Str_Msg:= '[13001] - C�digo de ativa��o inv�lido';
        13002: Str_Msg:= '[13002] - Erro de comunica��o com a SEFAZ';
        13003: Str_Msg:= '[13003] - Assinatura fora do padr�o informado';
        13098: Str_Msg:= '[13098] - SAT em processamento. Tente novamente';
        13099: Str_Msg:= '[13099] - Erro desconhecido';

        else
          Str_Msg:= '['+ IntToStr(iRetorno)+'] - N�mero de Erro n�o identificado... Consulte a Especifica��o de Requisitos SAT vigente.';
      end;
 end;
 Application.MessageBox(pchar(Str_Msg), 'Daruma DLL Framework', MB_OK + MB_ICONINFORMATION);
end;

procedure TfrmPrincipal.Commit(IBQueryExec : TIBQuery);
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

procedure TfrmPrincipal.mnuSairClick(Sender: TObject);
begin

///  SkinData1.Active := False;

  ConfirmaMSG := Application.MessageBox('Voc� deseja realmente sair do Sistema?','Sair do Sistema', MB_YESNO + mb_DefButton1+MB_ICONQUESTION);

  if ConfirmaMSG = 6 Then begin

    Application.Terminate;

///  end else begin

  ///  SkinData1.Active := True;

  end;
  
end;

procedure TfrmPrincipal.mnuClientesClick(Sender: TObject);
begin

  with dmModule do begin

      IDUsuarioLogin := IDAcesso;

      ibUser.Close;
      ibUser.SQL.Clear;
      ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + IntToStr(IDUsuarioLogin) + '''');
      ibUser.Open;

      if ibUser.FieldByName('CADCLI').AsString = 'Bloqueado' Then begin

        ShowMessage('Acesso n�o permitido');
        frmClientes.Close;

      end else begin

         frmClientes.ShowModal;

     end;

  end;{with}



end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);

begin


 pcPrincipal.ActivePageIndex := 0;

  tbsImgSistema.TabVisible := false;
  tbsClientes.TabVisible := false;
  tbsFornecedores.TabVisible := false;

  PathSistema := ExtractFilePath(ParamStr(0));
  pnlDataHora.Parent := StatusLine;
  pnlDataHora.SetBounds(300,4,162,14);


//  imgPrincipal.Picture.(PathImagem);

  if FileExists(PathSistema + 'Data\RunTime\Imagens_Sistema\TELA.jpg') Then
    imgLogo.Picture.LoadFromFile(PathSistema + 'Data\RunTime\Imagens_Sistema\TELA.jpg');

  {if FileExists(PathSistema + 'Data\RunTime\imagens_Sistema\produtos.bmp') Then
    ibeaProduto.Glyph.LoadFromFile(PathSistema + 'Data\RunTime\imagens_Sistema\produtos.bmp');

  if FileExists(PathSistema + 'Data\RunTime\Imagens_Sistema\clientes.bmp') Then
    ibeaCliente.Glyph.LoadFromFile(PathSistema + 'Data\RunTime\Imagens_Sistema\clientes.bmp');

  if FileExists(PathSistema + 'Data\RunTime\Imagens_Sistema\mao.bmp') Then
    ibeaFornecedores.Glyph.LoadFromFile(PathSistema + 'Data\RunTime\Imagens_Sistema\mao.bmp');

  if FileExists(PathSistema + 'Data\RunTime\Imagens_Sistema\pedido.bmp') Then
    ibeaPedido.Glyph.LoadFromFile(PathSistema + 'Data\RunTime\Imagens_Sistema\pedido.bmp');

  if FileExists(PathSistema + 'Data\RunTime\Imagens_Sistema\CX.bmp') Then
    ibeaVendasLoja.Glyph.LoadFromFile(PathSistema + 'Data\RunTime\Imagens_Sistema\CX.bmp');

  if FileExists(PathSistema + 'Data\RunTime\Imagens_Sistema\posvenda.bmp') Then
    ibeaPosVenda.Glyph.LoadFromFile(PathSistema + 'Data\RunTime\Imagens_Sistema\posvenda.bmp');

  if FileExists(PathSistema + 'Data\RunTime\Imagens_Sistema\sair.bmp') Then
    btnSair.Glyph.LoadFromFile(PathSistema + 'Data\RunTime\Imagens_Sistema\sair.bmp'); }

  end;

procedure TfrmPrincipal.TimerPrincipalTimer(Sender: TObject);
begin

pnlDataHora.Caption := UpperCase(FormatDateTime('dd MMMM yyyy',Date)) + ' - ' + FormatDateTime('hh:mm:ss',Time);

end;

procedure TfrmPrincipal.mnuProdutosClick(Sender: TObject);

var

ProdutoEstoque : String;

begin

  with dmModule do begin

      Commit(ibConfig);
      ibConfig.Close;
      ibConfig.SQL.Clear;
      ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
      ibConfig.Open;

      ProdutoEstoque := ibConfig.FieldByName('PRODUTOESTOQUE').AsString;


      if ProdutoEstoque = 'Sim' Then begin

        IDUsuarioLogin := IDAcesso;

        ibUser.Close;
        ibUser.SQL.Clear;
        ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + IntToStr(IDUsuarioLogin) + '''');
        ibUser.Open;

        if ibUser.FieldByName('CADPROD').AsString = 'Bloqueado' Then begin

          ShowMessage('Acesso n�o permitido');
          frmProd_MPrima.Close;

        end else begin

         // try
          //   if frmProd_MPrima = Nil then
           //     frmProd_MPrima := TfrmProd_MPrima.Create(self);
        //  except
           //   ShowMessage('Erro na cria��o do formul�rio !!');
           //   exit;
         // end;

          frmProd_MPrima.ShowModal;
         // FreeAndNil(frmProd_MPrima);
       end;

      end else begin

        IDUsuarioLogin := IDAcesso;

        ibUser.Close;
        ibUser.SQL.Clear;
        ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + IntToStr(IDUsuarioLogin) + '''');
        ibUser.Open;

        if ibUser.FieldByName('CADPROD').AsString = 'Bloqueado' Then begin

          ShowMessage('Acesso n�o permitido');
          frmProd_MPrima.Close;

        end else begin

         // try
          //   if frmProd_MPrima = Nil then
          //      frmProd_MPrima := TfrmProd_MPrima.Create(self);
          //except
         //     ShowMessage('Erro na cria��o do formul�rio !!');
         //     exit;
         // end;

          frmProd_MPrima.ShowModal;
         // FreeAndNil(frmProd_MPrima);
       end;

      end;//if produtestoque

  end;{with}

end;

procedure TfrmPrincipal.btnSairClick(Sender: TObject);
begin

 /// SkinData1.Active := False;

  ConfirmaMSG := Application.MessageBox('Voc� deseja realmente sair do Sistema?','Sair do Sistema', MB_YESNO + mb_DefButton1+MB_ICONQUESTION);

  if ConfirmaMSG = 6 Then begin

    Application.Terminate;

 /// end else begin

 ///   SkinData1.Active := True;

  end;
  
end;

procedure TfrmPrincipal.ibeaProdutoClick(Sender: TObject);

var

ProdutoEstoque : String;

begin

  with dmModule do begin

      Commit(ibConfig);
      ibConfig.Close;
      ibConfig.SQL.Clear;
      ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
      ibConfig.Open;

      ProdutoEstoque := ibConfig.FieldByName('PRODUTOESTOQUE').AsString;


      if ProdutoEstoque = 'Sim' Then begin

        IDUsuarioLogin := IDAcesso;

        ibUser.Close;
        ibUser.SQL.Clear;
        ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + IntToStr(IDUsuarioLogin) + '''');
        ibUser.Open;

        if ibUser.FieldByName('CADPROD').AsString = 'Bloqueado' Then begin

          ShowMessage('Acesso n�o permitido');
          frmProd_MPrima.Close;

        end else begin
        //  try
          //   if frmProd_MPrima = Nil then
           //     frmProd_MPrima := TfrmProd_MPrima.Create(self);
         // except
           //   ShowMessage('Erro na cria��o do formul�rio !!');
           //   exit;
         // end;

          frmProd_MPrima.ShowModal;
         //FreeAndNil(frmProd_MPrima);
       end;

      end else begin

        IDUsuarioLogin := IDAcesso;

        ibUser.Close;
        ibUser.SQL.Clear;
        ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + IntToStr(IDUsuarioLogin) + '''');
        ibUser.Open;

        if ibUser.FieldByName('CADPROD').AsString = 'Bloqueado' Then begin

          ShowMessage('Acesso n�o permitido');
          frmProd_MPrima.Close;

        end else begin

        //  try
        //     if frmProd_MPrima = Nil then
          //      frmProd_MPrima := TfrmProd_MPrima.Create(self);
         // except
          //    ShowMessage('Erro na cria��o do formul�rio !!');
          //    exit;
        // end;

          frmProd_MPrima.ShowModal;
        //  FreeAndNil(frmProd_MPrima);

       end;

      end;//if produtestoque

  end;{with}
  
end;

procedure TfrmPrincipal.ibeaClienteClick(Sender: TObject);
begin

  with dmModule do begin

      IDUsuarioLogin := IDAcesso;

      ibUser.Close;
      ibUser.SQL.Clear;
      ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + IntToStr(IDUsuarioLogin) + '''');
      ibUser.Open;

      if ibUser.FieldByName('CADCLI').AsString = 'Bloqueado' Then begin

        ShowMessage('Acesso n�o permitido');
        frmClientes.Close;

      end else begin

         frmClientes.ShowModal;
         
     end;

  end;{with}

end;

procedure TfrmPrincipal.mnuGrupoSubgrupoClick(Sender: TObject);
begin
frmGrupoeSubgrupo.ShowModal;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);

///var
///CaminhoSkin, AtivarSkin : String;

begin

pcPrincipal.ActivePageIndex := 0;

  {  with CarregarSkin do begin

      CarregarSkin := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Data\RunTime\sis.ini'); //Cria o vinculo com o Arquivo ini

      AtivarSkin := ReadString('CarregarSkin','AtivarSkin','');

      if (AtivarSkin = 'Sim') Then begin

      if not SkinData1.Active Then SkinData1.Active := True;

        CaminhoSkin := ReadString('CarregarSkin','PathSkin','')+'\interface.skn';
        SkinData1.SkinFile := CaminhoSkin;
      //  SkinData1.SkinStore := CaminhoSkin;

      end;

    end;//with }

////////////////////////////////////////////////////////////////////////////////

       //ROTINA PARA EXIBIR A IMAGEM DO PRODUTO
     { if Not FileExists(ExtractFilePath(PathImagem) Then begin

        frmRelReceitaImagem.imgLogoReceita.Picture := Nil; //LIMPA A IMAGEM

      end else begin

        try

          frmRelReceitaImagem.imgLogoReceita.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+ '\Data\RunTime\ImgReceita\LogoReceita.jpg');

        finally
          fs.Free;
          OleGraphic.Free
        end;

       end; }
       
////////////////////////////////////////////////////////////////////////////////

  with ConfigSiS do begin

    ConfigSiS := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Data\RunTime\sis.ini'); //Cria o vinculo com o Arquivo ini
      with dmModule do begin

        frmPrincipal.Caption := ReadString('ConfigSiS','Titulo','');       //   + '\LOJAFACIL.fdb'
        dmModule.IBDGERAL.DatabaseName := ReadString('ConfigSiS','Banco',''); //Faz a leitura de uma String na se��o do arquivo ini
     ///   dmModule.IBDGERAL.Params.Add('user_name=SYSDBA');
    ///    dmModule.IBDGERAL.Params.Add('password=masterkey');
        dmModule.IBDGERAL.Connected := True; //Manda Conectar o Banco de Dados

        frmSenha.ShowModal;

        frmFormSplash.Close;
        frmFormSplash.Free;

        { frmSenha.ShowModal;

         if frmFormSplash.Showing Then begin

         frmFormSplash.Close;
         frmFormSplash.Free;

         end; }

       { if frmSenha.cboUsuario.ItemIndex <> -1 Then begin//SE HOUVER REGISTRO NO COMBO

          IDClassUsuarioAcesso := TClasseCombo( frmSenha.cboUsuario.Items.Objects[frmSenha.cboUsuario.ItemIndex] );//ATRIBUI A CLASSE COMBO NA VARIAVEL
          IDAcesso := IDClassUsuarioAcesso.ID;

        end;  }

        //ConfigImagens := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Data\RunTime\imagemsis.ini');
      //  frmPrincipal.imgPrincipal.Picture.LoadFromFile(imagens);
    lbl_Usuario.Caption := frmSenha.cboUsuario.Text;

    if frmSenha.cboUsuario.ItemIndex <> -1 Then begin//SE HOUVER REGISTRO NO COMBO
    IDClassUsuarioSis := TClasseCombo( frmSenha.cboUsuario.Items.Objects[frmSenha.cboUsuario.ItemIndex] );//ATRIBUI A CLASSE COMBO NA VARIAVEL
    StringUsuarioSis :=  InttoStr( IDClassUsuarioSis.ID );
    end;

    lbl_CodUsuario.Text := StringUsuarioSis;


      end; {with}
 // end;//with configsis
  end; {if}

end;

procedure TfrmPrincipal.mnuLocalEstocagemClick(Sender: TObject);
begin

  with dmModule do begin

      IDUsuarioLogin := IDAcesso;

      ibUser.Close;
      ibUser.SQL.Clear;
      ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + IntToStr(IDUsuarioLogin) + '''');
      ibUser.Open;

      if ibUser.FieldByName('CADLOCALESTOQUE').AsString = 'Bloqueado' Then begin

        ShowMessage('Acesso n�o permitido');
        frmLocalEstocagem.Close;

      end else begin

        frmLocalEstocagem.ShowModal;

     end;

  end;{with}


end;

procedure TfrmPrincipal.mnuFornecedoresClick(Sender: TObject);
begin

  with dmModule do begin

      IDUsuarioLogin := IDAcesso;

      ibUser.Close;
      ibUser.SQL.Clear;
      ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + IntToStr(IDUsuarioLogin) + '''');
      ibUser.Open;

      if ibUser.FieldByName('CADFORN').AsString = 'Bloqueado' Then begin

        ShowMessage('Acesso n�o permitido');
        frmFornecedores.Close;

      end else begin

        frmFornecedores.ShowModal;
        
     end;

  end;{with}

end;

procedure TfrmPrincipal.mnuRelClientesClick(Sender: TObject);
begin

frmRClientes.ShowModal;

end;

procedure TfrmPrincipal.mnuAbreCxClick(Sender: TObject);
begin
 // frmFrentedeCaixa.ShowModal;
end;

procedure TfrmPrincipal.mnuServLojaClick(Sender: TObject);

var

NomeFunc,TrocoInicialCx : String;

begin

// frmSenhaCx.ShowModal;

  with dmModule do begin

    Commit(ibConfig);
    ibConfig.Close;
    ibConfig.SQL.Clear;
    ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
    ibConfig.Open;

    TrocoInicialCx := ibConfig.FieldByName('TROCOINICIALCX').AsString;

    if TrocoInicialCx = 'Sim' Then begin

      frmSenhaCx.ShowModal;

    end else begin

      IDUsuarioLogin := IDAcesso;

      ibUser.Close;
      ibUser.SQL.Clear;
      ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + IntToStr(IDUsuarioLogin) + '''');
      ibUser.Open;

      if ibUser.FieldByName('CADFRENTECX').AsString = 'Bloqueado' Then begin

        ShowMessage('Acesso n�o permitido');
        frmVendasLoja.Close;

      end else begin

        NomeFunc := ibUser.FieldByName('NOME').AsString;
        frmVendasLoja.lbl_Func.Caption := NomeFunc;
        frmVendasLoja.ShowModal;

      end;

    end;//if trocoinicial

  end;{with}

end;

procedure TfrmPrincipal.mnuFluxodeCaixaClick(Sender: TObject);
begin

 { with dmModule do begin

      IDUsuarioLogin := IDAcesso;

      ibUser.Close;
      ibUser.SQL.Clear;
      ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + IntToStr(IDUsuarioLogin) + '''');
      ibUser.Open;

      if ibUser.FieldByName('CADFLUXOCX').AsString = 'Bloqueado' Then begin

        ShowMessage('Acesso n�o permitido');
        frmFluxoCX.Close;

      end else begin

       frmFluxoCx.ShowModal;

     end;}

//  end;{with}

end;

procedure TfrmPrincipal.ibeaVendasLojaClick(Sender: TObject);

var

NomeFunc,TrocoInicialCx : String;

begin

// frmSenhaCx.ShowModal;

  with dmModule do begin

    Commit(ibConfig);
    ibConfig.Close;
    ibConfig.SQL.Clear;
    ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
    ibConfig.Open;

    TrocoInicialCx := ibConfig.FieldByName('TROCOINICIALCX').AsString;

    if TrocoInicialCx = 'Sim' Then begin

      frmSenhaCx.ShowModal;

    end else begin

      IDUsuarioLogin := IDAcesso;

      ibUser.Close;
      ibUser.SQL.Clear;
      ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + IntToStr(IDUsuarioLogin) + '''');
      ibUser.Open;

      if ibUser.FieldByName('CADFRENTECX').AsString = 'Bloqueado' Then begin

        ShowMessage('Acesso n�o permitido');
        frmVendasLoja.Close;

      end else begin

        NomeFunc := ibUser.FieldByName('NOME').AsString;
        frmVendasLoja.lbl_Func.Caption := NomeFunc;
        frmVendasLoja.ShowModal;

      end;

    end;//if trocoinicial

  end;{with}

end;

procedure TfrmPrincipal.lbl_edtCnpj_cpfEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmPrincipal.lbl_edtCnpj_cpfExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
end;

procedure TfrmPrincipal.lbl_edtIE_rgEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmPrincipal.lbl_edtIE_rgExit(Sender: TObject);
begin
tedit(sender).color := clWindow;
end;

procedure TfrmPrincipal.lbl_edtNomeEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmPrincipal.lbl_edtNomeExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
end;

procedure TfrmPrincipal.mnuContasPRClick(Sender: TObject);
begin

  with dmModule do begin

      IDUsuarioLogin := IDAcesso;

      ibUser.Close;
      ibUser.SQL.Clear;
      ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + IntToStr(IDUsuarioLogin) + '''');
      ibUser.Open;

      if ibUser.FieldByName('CADPR').AsString = 'Bloqueado' Then begin

        ShowMessage('Acesso n�o permitido');
       // frmContasaReceber.Close;

      end else begin

      // frmContasaReceber.ShowModal;

     end;

  end;{with}

end;

procedure TfrmPrincipal.Geral1Click(Sender: TObject);
begin

  with dmModule do begin

    Commit(ibAPagar);
    ibAPagar.Close;
    ibAPagar.SQL.Clear;
    ibAPagar.SQL.Add('SELECT TBLCONTASAPAGAR.*,BANCOS.DESCRICAO As Bco,'
    + 'TBLSERVICOSAPAGAR.DESCRICAO As NomeServico,TBLCADASTRO.NOME As Cliente FROM TBLCONTASAPAGAR '
    + 'LEFT OUTER JOIN BANCOS ON TBLCONTASAPAGAR.IDBANCO=BANCOS.IDBCO '
    + 'LEFT OUTER JOIN  TBLSERVICOSAPAGAR ON TBLCONTASAPAGAR.IDSERVICOS=TBLSERVICOSAPAGAR.IDSERVICO '
    + 'LEFT OUTER JOIN TBLCADASTRO ON TBLCONTASAPAGAR.IDFORNECEDOR=TBLCADASTRO.IDCAD WHERE (TBLCONTASAPAGAR.BAIXADO is null)or (TBLCONTASAPAGAR.BAIXADO = '''')');
    ibAPagar.Open;

      Application.CreateForm(TfrmRelContasPagar, frmRelContasPagar);

    TRY

      with frmRelContasPagar do begin

        frmRelContasPagar.qrpContasPagar.DataSet := ibAPagar;


        //ATRIBUI OS NOMES DOS CAMPOS AOS QRDBTEXT DO QUICKREPORT

        qrdbForn.DataSet     := ibAPagar;
        qrdbForn.DataField   := ibAPagar.FieldByName('Cliente').FieldName;

        qrdbNumDoc.DataSet     := ibAPagar;
        qrdbNumDoc.DataField   := ibAPagar.FieldByName('NUMDOC').FieldName;

        qrdbNomeBco.DataSet     := ibAPagar;
        qrdbNomeBco.DataField   := ibAPagar.FieldByName('Bco').FieldName;


        qrdbEmissao.DataSet     := ibAPagar;
        qrdbEmissao.DataField   := ibAPagar.FieldByName('EMISSAO').FieldName;

        qrdbVcto.DataSet        := ibAPagar;
        qrdbVcto.DataField      := ibAPagar.FieldByName('VCTO').FieldName;

        qrdbLocalizacao.DataSet   := ibAPagar;
        qrdbLocalizacao.DataField := ibAPagar.FieldByName('LOCALIZACAO').FieldName;

        qrdbValor.DataSet       := ibAPagar;
        qrdbValor.DataField     := ibAPagar.FieldByName('VLREMITIDO').FieldName;
        //(ibLanctoF.FieldByName('VALOR') as TFloatField).DisplayFormat   := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO

        qrdbTipoServico.DataSet       := ibAPagar;
        qrdbTipoServico.DataField     := ibAPagar.FieldByName('NomeServico').FieldName;


       (ibAPagar.FieldByName('VLREMITIDO') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO

        qrpContasPagar.Preview;

      end; {if}


      EXCEPT
        on E : Exception do begin
           frmRelContasPagar.Release;
           MessageDlg('Ocorreu um erro ao tentar mostrar o Formul�rio: ' + E.Message,mtError,[mbOk],0);
        end;
      END;
    //////////////////////////////////////////////////////////////

  end;{with}

end;

procedure TfrmPrincipal.mnuGeral2Click(Sender: TObject);

begin
//frmCRGeralP.ShowModal;
end;

procedure TfrmPrincipal.mnuMatPrima1Click(Sender: TObject);
begin

{  with dmModule do begin

      IDUsuarioLogin := IDAcesso;

      ibUser.Close;
      ibUser.SQL.Clear;
      ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + IntToStr(IDUsuarioLogin) + '''');
      ibUser.Open;

      if ibUser.FieldByName('CADMP').AsString = 'Bloqueado' Then begin

        ShowMessage('Acesso n�o permitido');
        frmMateriaPrima.Close;

      end else begin

        frmMateriaPrima.ShowModal;

     end; }

//  end;{with}

end;

procedure TfrmPrincipal.mnuSenhadeAcesso1Click(Sender: TObject);
begin

  with dmModule do begin

      IDUsuarioLogin := IDAcesso;

      ibUser.Close;
      ibUser.SQL.Clear;
      ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + IntToStr(IDUsuarioLogin) + '''');
      ibUser.Open;

      if ibUser.FieldByName('CADSENHAACESSO').AsString = 'Bloqueado' Then begin

        ShowMessage('Acesso n�o permitido');
        frmFuncSenha.Close;

      end else begin

        frmFuncSenha.ShowModal;

     end;

  end;{with}

end;

procedure TfrmPrincipal.mnuFluxoGeral2Click(Sender: TObject);
begin

  with dmModule do begin

      IDUsuarioLogin := IDAcesso;

      ibUser.Close;
      ibUser.SQL.Clear;
      ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + IntToStr(IDUsuarioLogin) + '''');
      ibUser.Open;

      if ibUser.FieldByName('RELATORIOFLUXO').AsString = 'Bloqueado' Then begin

        ShowMessage('Acesso n�o permitido');
        frmFluxoCxP.Close;

      end else begin

        frmFluxoCxP.ShowModal;

     end;

  end;{with}

end;

procedure TfrmPrincipal.mnuPedidodeVenda1Click(Sender: TObject);
begin

  with dmModule do begin

      IDUsuarioLogin := IDAcesso;

      ibUser.Close;
      ibUser.SQL.Clear;
      ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + IntToStr(IDUsuarioLogin) + '''');
      ibUser.Open;

      if ibUser.FieldByName('CADPEDIDOVENDA').AsString = 'Bloqueado' Then begin

        ShowMessage('Acesso n�o permitido');
        //frmPedidodeVenda.Close;

      end else begin

       // frmPedidodeVenda.ShowModal;

     end;

  end;{with}

end;

procedure TfrmPrincipal.mnuManutenodeCuponsCaixa1Click(Sender: TObject);
begin

  with dmModule do begin

      IDUsuarioLogin := IDAcesso;

      ibUser.Close;
      ibUser.SQL.Clear;
      ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + IntToStr(IDUsuarioLogin) + '''');
      ibUser.Open;

      if ibUser.FieldByName('CADMANUTCUPONS').AsString = 'Bloqueado' Then begin

        ShowMessage('Acesso n�o permitido');
        frmManutCx.Close;

      end else begin

       frmManutCx.ShowModal;

     end;

  end;{with}

end;

procedure TfrmPrincipal.Geral2Click(Sender: TObject);

begin

frmRProdutos.ShowModal;

end;

procedure TfrmPrincipal.VendidosporPerodo1Click(Sender: TObject);
begin

  frmProdutosVendidos.ShowModal;

end;

procedure TfrmPrincipal.FluxoDetalhado1Click(Sender: TObject);
begin

  with dmModule do begin

      IDUsuarioLogin := IDAcesso;

      ibUser.Close;
      ibUser.SQL.Clear;
      ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + IntToStr(IDUsuarioLogin) + '''');
      ibUser.Open;

      if ibUser.FieldByName('FLUXOSCX').AsString = 'Bloqueado' Then begin

        ShowMessage('Acesso n�o permitido');
        frmFluxoDetalhado.Close;

      end else begin

       frmFluxoDetalhado.ShowModal;

     end;

  end;{with}

end;

procedure TfrmPrincipal.Geral3Click(Sender: TObject);

begin

  with dmModule do begin

    ibEntrProdEstoque.Close;
    ibEntrProdEstoque.SQL.Clear;
    ibEntrProdEstoque.SQL.Add('SELECT DISTINCT(TBLENTRADAESTOQUEPROD.IDPROD),TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.ESTOQUEMIN,'
    + 'CADPRODUTOS.CODBARRAS,CADPRODUTOS.IDLOCAL,'
    + 'CADPRODUTOS.NOME,TBLENTRADAESTOQUEPROD.QUANTIDADE,CADPRODUTOS.VALORCUSTO, '
    + 'CADPRODUTOS.REF,CADPRODUTOS.VALORVENDAA,CADPRODUTOS.CODIGOFABRICANTE FROM CADPRODUTOS '
    + 'INNER JOIN TBLENTRADAESTOQUEPROD ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD ORDER BY CADPRODUTOS.NOME');
    ibEntrProdEstoque.Open;

   Application.CreateForm(TfrmRelEstoque, frmRelEstoque);

    TRY

      with frmRelEstoque do begin

        frmRelEstoque.qrpRelEstoque.DataSet := ibEntrProdEstoque;


        //ATRIBUI OS NOMES DOS CAMPOS AOS QRDBTEXT DO QUICKREPORT
        qrdbRef.DataSet    := ibEntrProdEstoque;
        qrdbRef.DataField  := ibEntrProdEstoque.FieldByName('REF').FieldName;

        qrdbQtdeMinima.DataSet    := ibEntrProdEstoque;
        qrdbQtdeMinima.DataField  := ibEntrProdEstoque.FieldByName('ESTOQUEMIN').FieldName;

        qrdbDescricao.DataSet   := ibEntrProdEstoque;
        qrdbDescricao.DataField := ibEntrProdEstoque.FieldByName('NOME').FieldName;

        qrdbVlrUnit.DataSet     := ibEntrProdEstoque;
        qrdbVlrUnit.DataField   := ibEntrProdEstoque.FieldByName('VALORVENDAA').FieldName;
       (ibEntrProdEstoque.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO

        qrdbQtde.DataSet        := ibEntrProdEstoque;
        qrdbQtde.DataField      := ibEntrProdEstoque.FieldByName('QUANTIDADE').FieldName;
        (ibEntrProdEstoque.FieldByName('QUANTIDADE') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO

        qrdbCodFabr.DataSet        := ibEntrProdEstoque;
        qrdbCodFabr.DataField      := ibEntrProdEstoque.FieldByName('CODIGOFABRICANTE').FieldName;

        qrdbTotal.DataSet       := ibEntrProdEstoque;
        qrdbTotal.DataField     := ibEntrProdEstoque.FieldByName('VLRTOTAL').FieldName;
        (ibEntrProdEstoque.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO

       { qrdbData.DataSet    := ibVPistaProd;
        qrdbData.DataField  := ibVPistaProd.FieldByName('DATA').FieldName;

        qrdbHora.DataSet    := ibVPistaProd;
        qrdbHora.DataField  := ibVPistaProd.FieldByName('HORA').FieldName; }

        qrpRelEstoque.Preview;

      end; {if}


    EXCEPT
      on E : Exception do begin
         frmRelEstoque.Release;
         MessageDlg('Ocorreu um erro ao tentar mostrar o Formul�rio: ' + E.Message,mtError,[mbOk],0);
      end;
    END;
  //////////////////////////////////////////////////////////////

  end;{with}

end;

procedure TfrmPrincipal.Sobre1Click(Sender: TObject);
begin
frmSobre.ShowModal;
end;

procedure TfrmPrincipal.sbFornecedoresClick(Sender: TObject);
begin
//pcPrincipal.ActivePageIndex := 2;
frmFornecedores.ShowModal;
end;

procedure TfrmPrincipal.sbFornecedoresMouseEnter(Sender: TObject);
begin
sbFornecedores.Font.Color := clBlack;
end;

procedure TfrmPrincipal.sbFornecedoresMouseLeave(Sender: TObject);
begin
sbFornecedores.Font.Color := clWhite;
end;

procedure TfrmPrincipal.sbVendasClick(Sender: TObject);
begin

  frmVendasLoja.ShowModal;

end;

procedure TfrmPrincipal.sbExcluirMouseEnter(Sender: TObject);
begin
pnExcluir.Color := clWhite;
sbExcluir.Font.Color := clBlack;
end;

procedure TfrmPrincipal.sbExcluirMouseLeave(Sender: TObject);
begin
pnExcluir.Color := $00400080;
sbExcluir.Font.Color := clWhite;
end;

procedure TfrmPrincipal.DadosEmpresa1Click(Sender: TObject);
begin
frmDadosEmpresa.ShowModal;
end;

procedure TfrmPrincipal.FrentedeCaixa1Click(Sender: TObject);
begin
//frmCaixa.ShowModal;
end;

procedure TfrmPrincipal.Configuraes1Click(Sender: TObject);
begin
frmConfiguracoes.ShowModal;
end;

procedure TfrmPrincipal.UnidadedeVenda1Click(Sender: TObject);
begin
frmUnidVenda.ShowModal;
end;

procedure TfrmPrincipal.mnuTblPGeralClick(Sender: TObject);
begin
  with dmModule do begin

    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT CADPRODUTOS.*,TBLCADASTRO.NOME As NomeFornecedor,'
    + 'TBLUNIDADEDEVENDA.TIPODEUNIDADE,TBLUNIDADEDEVENDA.IDTIPOUNID FROM CADPRODUTOS '
    + 'INNER JOIN TBLCADASTRO ON CADPRODUTOS.FORNECEDOR=TBLCADASTRO.IDCAD '
    + 'INNER JOIN TBLUNIDADEDEVENDA ON CADPRODUTOS.IDUNIDVENDA=TBLUNIDADEDEVENDA.IDTIPOUNID ORDER BY CADPRODUTOS.NOME');
    ibProdutos.Open;

   Application.CreateForm(TfrmRelTblPreco, frmRelTblPreco);

    TRY

      with frmRelTblPreco do begin

        frmRelTblPreco.qrpRelTblPreco.DataSet := ibProdutos;


        //ATRIBUI OS NOMES DOS CAMPOS AOS QRDBTEXT DO QUICKREPORT
        qrdbRef.DataSet    := ibProdutos;
        qrdbRef.DataField  := ibProdutos.FieldByName('REF').FieldName;

        qrdbDescricao.DataSet   := ibProdutos;
        qrdbDescricao.DataField := ibProdutos.FieldByName('NOME').FieldName;

        qrdbUnidVenda.DataSet     := ibProdutos;
        qrdbUnidVenda.DataField   := ibProdutos.FieldByName('TIPODEUNIDADE').FieldName;
     //  (ibEntrProdEstoque.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO

        qrdbFornecedor.DataSet        := ibProdutos;
        qrdbFornecedor.DataField      := ibProdutos.FieldByName('NomeFornecedor').FieldName;


        qrdbValorVenda.DataSet       := ibProdutos;
        qrdbValorVenda.DataField     := ibProdutos.FieldByName('VALORVENDAA').FieldName;
        (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

       { qrdbData.DataSet    := ibVPistaProd;
        qrdbData.DataField  := ibVPistaProd.FieldByName('DATA').FieldName;

        qrdbHora.DataSet    := ibVPistaProd;
        qrdbHora.DataField  := ibVPistaProd.FieldByName('HORA').FieldName; }

      qrl_DatadeEmissao.Caption := FormatDateTime('dd/mm/yyyy',Now);

      ibDadosEmpresa.Close;
      ibDadosEmpresa.SQL.Clear;
      ibDadosEmpresa.SQL.Add('SELECT * FROM TBLDADOSEMPRESA');
      ibDadosEmpresa.Open;

      qrlEmpresa.Caption := ibDadosEmpresa.FieldByName('NOME').AsString;
      qrlEndereco.Caption := ibDadosEmpresa.FieldByName('ENDERECO').AsString;
      qrlNum.Caption := ibDadosEmpresa.FieldByName('NUMERO').AsString;
      qrlBairro.Caption := ibDadosEmpresa.FieldByName('BAIRRO').AsString;
      qrlEstado.Caption := ibDadosEmpresa.FieldByName('ESTADO').AsString;
      qrlDDDEmpresa.Caption := ibDadosEmpresa.FieldByName('DDD').AsString;
      qrlTelefoneEmpresa.Caption := ibDadosEmpresa.FieldByName('TELEFONE').AsString;




        qrpRelTblPreco.Preview;

      end; {if}


    EXCEPT
      on E : Exception do begin
         frmRelTblPreco.Release;
         MessageDlg('Ocorreu um erro ao tentar mostrar o Formul�rio: ' + E.Message,mtError,[mbOk],0);
      end;
    END;
  //////////////////////////////////////////////////////////////

  end;{with}

end;

procedure TfrmPrincipal.ProFornecedor1Click(Sender: TObject);
begin
frmTblPrecoForn.ShowModal;
end;

procedure TfrmPrincipal.ContasaPagar1Click(Sender: TObject);
begin

  {with dmModule do begin

      IDUsuarioLogin := IDAcesso;

      ibUser.Close;
      ibUser.SQL.Clear;
      ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + IntToStr(IDUsuarioLogin) + '''');
      ibUser.Open;

      if ibUser.FieldByName('CADPR').AsString = 'Bloqueado' Then begin

        ShowMessage('Acesso n�o permitido');
        frmContasApagar.Close;

      end else begin

       frmContasApagar.ShowModal;

     end;  }

  //end;{with}

end;

procedure TfrmPrincipal.CondiesdePagto1Click(Sender: TObject);
begin
frmCondpagto.ShowModal;
end;

procedure TfrmPrincipal.Produtoscomestoquemnimo1Click(Sender: TObject);
begin

  with dmModule do begin

    {ibEntrProdEstoque.Close;
    ibEntrProdEstoque.SQL.Clear;
    ibEntrProdEstoque.SQL.Add('SELECT DISTINCT(TBLENTRADAESTOQUEPROD.IDPROD),TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.ESTOQUEMIN,'
    + 'CADPRODUTOS.CODBARRAS,CADPRODUTOS.IDLOCAL,'
    + 'CADPRODUTOS.NOME,TBLENTRADAESTOQUEPROD.QUANTIDADE,CADPRODUTOS.VALORCUSTO, '
    + 'CADPRODUTOS.REF,CADPRODUTOS.VALORVENDAA,CADPRODUTOS.CODIGOFABRICANTE FROM CADPRODUTOS '
    + 'INNER JOIN TBLENTRADAESTOQUEPROD ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD ORDER BY CADPRODUTOS.NOME');
    ibEntrProdEstoque.Open;  }

    Commit(ibEntrProdEstoque);
    ibEntrProdEstoque.Close;
    ibEntrProdEstoque.SQL.Clear;
    ibEntrProdEstoque.SQL.Add('SELECT DISTINCT(TBLENTRADAESTOQUEPROD.IDPROD),TBLENTRADAESTOQUEPROD.VLRTOTAL,TBLENTRADAESTOQUEPROD.ESTOQUEMIN,'
    + 'TBLENTRADAESTOQUEPROD.QUANTIDADE,'
    + 'CADPRODUTOS.CODBARRAS,CADPRODUTOS.IDLOCAL,CADPRODUTOS.VALORCUSTO,'
    + 'CADPRODUTOS.NOME,CADPRODUTOS.REF,CADPRODUTOS.VALORVENDAA,'
    + 'CADPRODUTOS.FORNECEDOR,CADPRODUTOS.CODIGOFABRICANTE FROM CADPRODUTOS '
    + 'INNER JOIN TBLENTRADAESTOQUEPROD ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD WHERE  (TBLENTRADAESTOQUEPROD.QUANTIDADE<=TBLENTRADAESTOQUEPROD.ESTOQUEMIN) ORDER BY CADPRODUTOS.NOME');
    ibEntrProdEstoque.Open;                                                               //  TBLENTRADAESTOQUEPROD.ESTOQUEMIN=TBLENTRADAESTOQUEPROD.QUANTIDADE OR

   Application.CreateForm(TfrmRelEstoqueMin, frmRelEstoqueMin);

    TRY

      with frmRelEstoqueMin do begin

        frmRelEstoqueMin.qrpRelEstoquemin.DataSet := ibEntrProdEstoque;

        //ATRIBUI OS NOMES DOS CAMPOS AOS QRDBTEXT DO QUICKREPORT
        qrdbRef.DataSet    := ibEntrProdEstoque;
        qrdbRef.DataField  := ibEntrProdEstoque.FieldByName('REF').FieldName;

        qrdbQtdeMinima.DataSet    := ibEntrProdEstoque;
        qrdbQtdeMinima.DataField  := ibEntrProdEstoque.FieldByName('ESTOQUEMIN').FieldName;

        qrdbDescricao.DataSet   := ibEntrProdEstoque;
        qrdbDescricao.DataField := ibEntrProdEstoque.FieldByName('NOME').FieldName;

        qrdbVlrUnit.DataSet     := ibEntrProdEstoque;
        qrdbVlrUnit.DataField   := ibEntrProdEstoque.FieldByName('VALORVENDAA').FieldName;
       (ibEntrProdEstoque.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO

        qrdbQtde.DataSet        := ibEntrProdEstoque;
        qrdbQtde.DataField      := ibEntrProdEstoque.FieldByName('QUANTIDADE').FieldName;

      //  qrdbCodFabr.DataSet        := ibEntrProdEstoque;
     //   qrdbCodFabr.DataField      := ibEntrProdEstoque.FieldByName('CODIGOFABRICANTE').FieldName;

     //   qrdbTotal.DataSet       := ibEntrProdEstoque;
     //   qrdbTotal.DataField     := ibEntrProdEstoque.FieldByName('VLRTOTAL').FieldName;
     //   (ibEntrProdEstoque.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO

       { qrdbData.DataSet    := ibVPistaProd;
        qrdbData.DataField  := ibVPistaProd.FieldByName('DATA').FieldName;

        qrdbHora.DataSet    := ibVPistaProd;
        qrdbHora.DataField  := ibVPistaProd.FieldByName('HORA').FieldName; }

        qrpRelEstoquemin.Preview;

      end; {if}


    EXCEPT
      on E : Exception do begin
         frmRelEstoqueMin.Release;
         MessageDlg('Ocorreu um erro ao tentar mostrar o Formul�rio: ' + E.Message,mtError,[mbOk],0);
      end;
    END;
  //////////////////////////////////////////////////////////////

  end;{with}

end;

procedure TfrmPrincipal.ibeaFornecedoresClick(Sender: TObject);
begin

  with dmModule do begin

      IDUsuarioLogin := IDAcesso;

      ibUser.Close;
      ibUser.SQL.Clear;
      ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + IntToStr(IDUsuarioLogin) + '''');
      ibUser.Open;

      if ibUser.FieldByName('CADFORN').AsString = 'Bloqueado' Then begin

        ShowMessage('Acesso n�o permitido');
        frmFornecedores.Close;

      end else begin

        frmFornecedores.ShowModal;
        
     end;

  end;{with}

end;

procedure TfrmPrincipal.PorCarto1Click(Sender: TObject);
begin
//frmRelCRCartao.ShowModal;
end;

procedure TfrmPrincipal.AtualizaodePreosporFornecedor1Click(
  Sender: TObject);
begin
frmTblPreco.ShowModal;
end;

procedure TfrmPrincipal.EstoqueRpido1Click(Sender: TObject);
begin
frmEstoqueRapido.ShowModal;
end;

procedure TfrmPrincipal.Cores1Click(Sender: TObject);
begin
frmCores.ShowModal;
end;

procedure TfrmPrincipal.amanho1Click(Sender: TObject);
begin
frmTamanho.ShowModal;
end;

procedure TfrmPrincipal.EstoqueMnimoNegativoporFornecedor1Click(
  Sender: TObject);
begin
frmEstoqueMForn.ShowModal;
end;

procedure TfrmPrincipal.PorDatadeCadastro1Click(Sender: TObject);
begin
frmProdDataRegistro.ShowModal;
end;

procedure TfrmPrincipal.PorPerodo1Click(Sender: TObject);
begin
//frmContasaPagarP.ShowModal;
end;

procedure TfrmPrincipal.Detalhado1Click(Sender: TObject);
begin
frmVendasDetalhado.ShowModal;
end;

procedure TfrmPrincipal.PorFuncionario1Click(Sender: TObject);
begin
frmVendasFunc.ShowModal;
end;

procedure TfrmPrincipal.ServiosaPagarCustoDirio1Click(Sender: TObject);
begin
frmServicosCPagar.ShowModal;
end;

procedure TfrmPrincipal.PorPerodoeBaixado1Click(Sender: TObject);
begin
//frmCRPeriodo.ShowModal;
end;

procedure TfrmPrincipal.N60892Click(Sender: TObject);
begin
//frmPimaco6089Variada.ShowModal;
end;

procedure TfrmPrincipal.FluxodePedido1Click(Sender: TObject);
begin
//frmPedidoFunc.ShowModal;
end;

procedure TfrmPrincipal.FluxodeRestauranteMesasporperodo1Click(Sender: TObject);
begin
frmFluxoRestauranteP.ShowModal;
end;

procedure TfrmPrincipal.FluxodoPedidodeVenda1Click(Sender: TObject);
begin
frmFluxoPedVenda.ShowModal;
end;

procedure TfrmPrincipal.PorFornecedor1Click(Sender: TObject);
begin
frmVendasFornecedor.ShowModal;
end;

procedure TfrmPrincipal.rocasporPerodoeFuncionrio1Click(Sender: TObject);
begin
frm_TrocaP.ShowModal;
end;

procedure TfrmPrincipal.sbAlterarMouseEnter(Sender: TObject);
begin
pnAlterar.Color := clWhite;
sbAlterar.Font.Color := clBlack;
end;

procedure TfrmPrincipal.sbAlterarMouseLeave(Sender: TObject);
begin
pnAlterar.Color := $00408000;
sbAlterar.Font.Color := clWhite;
end;

procedure TfrmPrincipal.sbCadastroClick(Sender: TObject);
begin

frmClientes.ShowModal;
//pcPrincipal.ActivePageIndex := 1;
//tbsCadastro.TabVisible := false;
//tbsHistorico.TabVisible := True;
//pnlMenu.Visible := True;
end;

procedure TfrmPrincipal.sbCadastroMouseEnter(Sender: TObject);
begin
sbCadastro.Font.Color := clBlack;
end;

procedure TfrmPrincipal.sbCadastroMouseLeave(Sender: TObject);
begin
sbCadastro.Font.Color := clWhite;
end;

procedure TfrmPrincipal.sbGravarMouseEnter(Sender: TObject);
begin
pnGravar.Color := clWhite;
sbGravar.Font.Color := clBlack;
end;

procedure TfrmPrincipal.sbGravarMouseLeave(Sender: TObject);
begin
pnGravar.Color := $00FF8000;
sbGravar.Font.Color := clWhite;
end;

procedure TfrmPrincipal.sbProdutosClick(Sender: TObject);
begin

frmProd_MPrima.ShowModal;
//pcPrincipal.ActivePageIndex := 0;
//tbsCadastro.TabVisible := false;
//pnlMenu.Visible := True;
end;

procedure TfrmPrincipal.sbProdutosMouseEnter(Sender: TObject);
begin
sbProdutos.Font.Color := clBlack;
end;

procedure TfrmPrincipal.sbProdutosMouseLeave(Sender: TObject);
begin
sbProdutos.Font.Color := clWhite;
end;

procedure TfrmPrincipal.sbRestauranteClick(Sender: TObject);
begin
frmRestaurante.ShowModal;
end;

procedure TfrmPrincipal.sbRestauranteMouseEnter(Sender: TObject);
begin
sbRestaurante.Font.Color := clBlack;
end;

procedure TfrmPrincipal.sbRestauranteMouseLeave(Sender: TObject);
begin
sbRestaurante.Font.Color := clWhite;
end;

procedure TfrmPrincipal.sbSairMouseEnter(Sender: TObject);
begin
sbSair.Font.Color := clBlack;
end;

procedure TfrmPrincipal.sbSairMouseLeave(Sender: TObject);
begin
sbSair.Font.Color := clWhite;
end;

procedure TfrmPrincipal.ExecutarBackup1Click(Sender: TObject);
begin
frmBackup.ShowModal;
end;

procedure TfrmPrincipal.ZerartodooEstoque1Click(Sender: TObject);

var
ConfirmaProcedimento : Integer;

begin

  with dmModule do begin

    ConfirmaProcedimento := Application.MessageBox('Aten��o esse procedimento zera todo o Estoque?','ZERAR ESTOQUE GERAL',+MB_YESNO+MB_DEFBUTTON1+MB_ICONWARNING);

    if ConfirmaProcedimento = 6 Then begin

      ibEntrProdEstoque.Close;
      ibEntrProdEstoque.SQL.Clear;
      ibEntrProdEstoque.SQL.Add('UPDATE TBLENTRADAESTOQUEPROD SET '
      + 'QUANTIDADE=''' + '0' + ''','
      + 'ESTOQUEMIN=''' + '0' + ''','
      + 'VLRTOTAL=''' + '0,00' + ''','
      + 'TOTALCUSTO=''' + '0,00' + ''','
      + 'VALORCUSTO=''' + '0,00' + ''' WHERE (QUANTIDADE >=''0'')OR(QUANTIDADE <=''0'')');
      ibEntrProdEstoque.ExecSQL;
      Commit(ibEntrProdEstoque);

    end;//if confirmaprocedimento

  end;//with

end;

procedure TfrmPrincipal.amanhoGG1Click(Sender: TObject);
begin
frmEtiquetaGr.ShowModal;
end;

procedure TfrmPrincipal.Configuraodeimpressodeetiquetas1Click(
  Sender: TObject);
begin
frmConfigEtiquetaGr.ShowModal;
end;

procedure TfrmPrincipal.Vendaspornmerodecupom1Click(Sender: TObject);
begin
frmVendasCupom.ShowModal;
end;

procedure TfrmPrincipal.Cotao1Click(Sender: TObject);
begin
frmCotacao.ShowModal;
end;

procedure TfrmPrincipal.mnuRelatoriosClick(Sender: TObject);
begin

  with dmModule do begin

      IDUsuarioLogin := IDAcesso;

      ibUser.Close;
      ibUser.SQL.Clear;
      ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + IntToStr(IDUsuarioLogin) + '''');
      ibUser.Open;

      if ibUser.FieldByName('RELATORIOS').AsString = 'Bloqueado' Then begin

        ShowMessage('Acesso n�o permitido');
        frmProdDataRegistro.Close;

     end;

  end;{with}
  
end;

procedure TfrmPrincipal.EntradadeEstoqueporNF1Click(Sender: TObject);
begin
frmEntradadeEstoque.ShowModal;
end;

procedure TfrmPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

  var
  iRetorno : Integer;
  
begin

  case key of

    VK_F2 :begin

  /// frmProd_MPrima.ShowModal;

    end;
      
    VK_F4 :begin

    frmVendasLoja.ShowModal;

    end;

    VK_F5 :begin

    frmProd_MPrima.ShowModal;

    end;

    VK_F6 :begin

    frmEtiquetaTermica.ShowModal;

    end;

   { VK_F10 :begin

      iRetorno := eAtualizarFW_SAT_Daruma();
      Tratar_RetornoSAT(iRetorno);
      
    end; }

  end;


end;

procedure TfrmPrincipal.EtiquetaTrmica1Click(Sender: TObject);
begin
frmEtiquetaTermica.ShowModal;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

///  SkinData1.Active := False;

  ConfirmaMSG := Application.MessageBox('N�o esque�a de fazer o backup?','Sair do Sistema', MB_YESNO + mb_DefButton1+MB_ICONQUESTION);

  if ConfirmaMSG = 6 Then begin

    Application.Terminate;

///  end else begin

///    SkinData1.Active := True;

  end;

end;

procedure TfrmPrincipal.EtiquetasLoja1Click(Sender: TObject);
begin
frmEtiquetasLojaR.ShowModal;
end;

procedure TfrmPrincipal.CadastrarCFOP1Click(Sender: TObject);
begin
frmCFOP.ShowModal;
end;

procedure TfrmPrincipal.CadastrarCST1Click(Sender: TObject);
begin
frmCST.ShowModal;
end;

procedure TfrmPrincipal.CadastrarCSOSN1Click(Sender: TObject);
begin
frmCSOSN.ShowModal;
end;

procedure TfrmPrincipal.Grupo2Click(Sender: TObject);
begin
frmGrupoSubGrupoEstoque.ShowModal
end;

end.
