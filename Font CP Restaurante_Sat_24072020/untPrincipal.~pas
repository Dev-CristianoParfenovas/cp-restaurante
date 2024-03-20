unit untPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, SCXPMenu, ComCtrls, ExtCtrls, StdCtrls,
  ImgList, IniFiles, IBQuery, DB, Barcode, RxGIF, jpeg, Buttons,
  classComboBox, ComObj, BmsXPButton, QRExport, WinSkinData;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    XPMenu1: TXPMenu;
    mnuCadastro: TMenuItem;
    mnuClientes: TMenuItem;
    mnuProdutos: TMenuItem;
    N1: TMenuItem;
    mnuSair: TMenuItem;
    TimerPrincipal: TTimer;
    StatusLine: TStatusBar;
    mnuEstoque: TMenuItem;
    mnuEntradaMercadoria: TMenuItem;
    mnuTabelas: TMenuItem;
    mnuGrupoSubgrupo: TMenuItem;
    mnuRelatorios: TMenuItem;
    mnuRelClientes: TMenuItem;
    mnuLocalEstocagem: TMenuItem;
    mnuFornecedores: TMenuItem;
    mnuProd: TMenuItem;
    mnuServicos: TMenuItem;
    mnuFinanceiro: TMenuItem;
    mnuContasPR: TMenuItem;
    mnuRelEstoque: TMenuItem;
    FluxodeCaixaporPeriodo1: TMenuItem;
    imgPrincipal: TImage;
    mnuContasaPagar: TMenuItem;
    Geral1: TMenuItem;
    mnuContasaReceber: TMenuItem;
    mnuGeral2: TMenuItem;
    mnuSenhadeAcesso1: TMenuItem;
    mnuFluxoGeral2: TMenuItem;
    mnuManutenodeCuponsCaixa1: TMenuItem;
    Geral2: TMenuItem;
    VendidosporPerodo1: TMenuItem;
    FluxoDetalhado1: TMenuItem;
    Geral3: TMenuItem;
    Utilitrios1: TMenuItem;
    Sobre1: TMenuItem;
    Configuraes1: TMenuItem;
    DadosEmpresa1: TMenuItem;
    UnidadedeVenda1: TMenuItem;
    abeladePreos1: TMenuItem;
    mnuTblPGeral: TMenuItem;
    ProFornecedor1: TMenuItem;
    Grupo2: TMenuItem;
    SubGrupo2: TMenuItem;
    Pendentes1: TMenuItem;
    ContasaPagar1: TMenuItem;
    CondiesdePagto1: TMenuItem;
    Produtoscomestoquemnimo1: TMenuItem;
    PorCarto1: TMenuItem;
    AtualizaodePreosporFornecedor1: TMenuItem;
    EstoqueRpido1: TMenuItem;
    EstoqueMnimoNegativoporFornecedor1: TMenuItem;
    PorDatadeCadastro1: TMenuItem;
    PorPerodo1: TMenuItem;
    Detalhado1: TMenuItem;
    PorFuncionario1: TMenuItem;
    ServiosaPagarCustoDirio1: TMenuItem;
    PorPerodoeBaixado1: TMenuItem;
    Pendentes2: TMenuItem;
    PendenteDetalhado1: TMenuItem;
    PorFuncionriocomtrocoinicia1: TMenuItem;
    FluxodeRestauranteporPerodo1: TMenuItem;
    lbl_CodUsuario: TLabeledEdit;
    lbl_Usuario: TLabel;
    pnlDataHora: TPanel;
    ibeaCliente: TSpeedButton;
    ibeaProduto: TSpeedButton;
    ibeaFornecedores: TSpeedButton;
    ibeaClientePedido: TSpeedButton;
    ibeaRestaurante: TSpeedButton;
    sbCaixa: TSpeedButton;
    btnSair: TBitBtn;
    SkinData1: TSkinData;
    procedure Commit(IBQueryExec : TIBQuery);
    procedure mnuSairClick(Sender: TObject);
    procedure mnuClientesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TimerPrincipalTimer(Sender: TObject);
    procedure mnuProdutosClick(Sender: TObject);
    procedure ibeaProdutoClick(Sender: TObject);
    procedure ibeaClienteClick(Sender: TObject);
    procedure mnuGrupoSubgrupoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mnuLocalEstocagemClick(Sender: TObject);
    procedure mnuFornecedoresClick(Sender: TObject);
    procedure mnuFluxodeCaixaClick(Sender: TObject);
    procedure mnuReciboClick(Sender: TObject);
    procedure mnuContasPRClick(Sender: TObject);
    procedure Geral1Click(Sender: TObject);
    procedure mnuGeral2Click(Sender: TObject);
    procedure mnuSenhadeAcesso1Click(Sender: TObject);
    procedure mnuFluxoGeral2Click(Sender: TObject);
    procedure mnuManutenodeCuponsCaixa1Click(Sender: TObject);
    procedure Geral2Click(Sender: TObject);
    procedure VendidosporPerodo1Click(Sender: TObject);
    procedure FluxoDetalhado1Click(Sender: TObject);
    procedure Geral3Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure DadosEmpresa1Click(Sender: TObject);
    procedure FrentedeCaixa1Click(Sender: TObject);
    procedure Configuraes1Click(Sender: TObject);
    procedure BmsXPButton1Click(Sender: TObject);
    procedure UnidadedeVenda1Click(Sender: TObject);
    procedure mnuTblPGeralClick(Sender: TObject);
    procedure ProFornecedor1Click(Sender: TObject);
    procedure ContasaPagar1Click(Sender: TObject);
    procedure Produtoscomestoquemnimo1Click(Sender: TObject);
    procedure ibeaFornecedoresClick(Sender: TObject);
    procedure PorCarto1Click(Sender: TObject);
    procedure AtualizaodePreosporFornecedor1Click(Sender: TObject);
    procedure EstoqueRpido1Click(Sender: TObject);
    procedure EstoqueMnimoNegativoporFornecedor1Click(Sender: TObject);
    procedure PorDatadeCadastro1Click(Sender: TObject);
    procedure PorPerodo1Click(Sender: TObject);
    procedure Detalhado1Click(Sender: TObject);
    procedure PorFuncionario1Click(Sender: TObject);
    procedure ServiosaPagarCustoDirio1Click(Sender: TObject);
    procedure ibeaClientePedidoClick(Sender: TObject);
    procedure PorPerodoeBaixado1Click(Sender: TObject);
    procedure Pendentes2Click(Sender: TObject);
    procedure PendenteDetalhado1Click(Sender: TObject);
    procedure Clientesteste1Click(Sender: TObject);
    procedure mnuRelClientesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSairClick(Sender: TObject);
    procedure PorFuncionriocomtrocoinicia1Click(Sender: TObject);
    procedure ibeaRestauranteClick(Sender: TObject);
    procedure FluxodeRestauranteporPerodo1Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var

  frmPrincipal: TfrmPrincipal;
  ConfirmaMsg : Integer;
  ConfigSiS, CarregarSkin : TIniFile;
  PathSistema : String;
  IDClassUsuarioAcesso : TClasseCombo;
  IDUsuarioLogin : Integer;
  IDClassUsuarioSis : TClasseCombo;
  StringUsuarioSis : String;
  
implementation

uses unClientes, untdmModule, untLocalEstocagem, uGrupoeSubgrupo,
  Fornecedores, untRelClientes, untRelProd, funcPosto,
  untFluxoCx, untRelEstoque, 
  untRelContasaPagar, untRelContasaReceber, untFuncSenha,
  untSenha, untManutCx, untProdutoVendidoP,
  untFluxoDetalhado, untRelEstoqueFornecedor, untSobre,
  untDadosEmpresa, untConfiguracoes, 
  untContasaReceber, untProdutos_MPrima, untRelTblPreco,
  untrelTblPrecoForn, untLanctoContasaPagar,
  untRelEstMin, untRelCRCartao, untCRGeralP, untCRPeriodo, untTblPreco,
  untEstoqueRapido, untEstoqueMForn,
  untRelProdDataCad, untContasaPagarP, untVendasDetalhado,
  untFormSplash, untCliente, 
  untServicosCPagar, untFluxoCxP, untUnidVenda, untVendasFunc,
  untRelPendentes, untRelPendente, untRelatPendenteDetalhado, untRClientes,
  untSenhaCx, untFluxoFuncP, untModuloRestaurante, untFluxoRestauranteP;


{$R *.dfm}

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

 // SkinData1.Active := False;

  ConfirmaMSG := Application.MessageBox('Você deseja realmente sair do Sistema?','Sair do Sistema', MB_YESNO + mb_DefButton1+MB_ICONQUESTION);

  if ConfirmaMSG = 6 Then begin

    Application.Terminate;

//  end else begin

   // SkinData1.Active := True;

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

        ShowMessage('Acesso não permitido');
        frmClientes.Close;

      end else begin

         frmClientes.ShowModal;

     end;

  end;{with}



end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin

  PathSistema := ExtractFilePath(ParamStr(0));
  pnlDataHora.Parent := StatusLine;
  pnlDataHora.SetBounds(188,4,162,14);
  if FileExists(PathSistema + 'Data\RunTime\Imagens_Sistema\TelaPrincipal_Nova.jpg') Then
    imgPrincipal.Picture.LoadFromFile(PathSistema + 'Data\RunTime\Imagens_Sistema\TelaPrincipal_Nova.jpg');

  if FileExists(PathSistema + 'Data\RunTime\imagens_Sistema\produtos.bmp') Then
    ibeaProduto.Glyph.LoadFromFile(PathSistema + 'Data\RunTime\imagens_Sistema\produtos.bmp');

  if FileExists(PathSistema + 'Data\RunTime\Imagens_Sistema\clientes.bmp') Then
    ibeaCliente.Glyph.LoadFromFile(PathSistema + 'Data\RunTime\Imagens_Sistema\clientes.bmp');

  if FileExists(PathSistema + 'Data\RunTime\Imagens_Sistema\mao.bmp') Then
    ibeaFornecedores.Glyph.LoadFromFile(PathSistema + 'Data\RunTime\Imagens_Sistema\mao.bmp');

  if FileExists(PathSistema + 'Data\RunTime\Imagens_Sistema\cliped.bmp') Then
    ibeaClientePedido.Glyph.LoadFromFile(PathSistema + 'Data\RunTime\Imagens_Sistema\cliped.bmp');

  if FileExists(PathSistema + 'Data\RunTime\Imagens_Sistema\sair.bmp') Then
    btnSair.Glyph.LoadFromFile(PathSistema + 'Data\RunTime\Imagens_Sistema\sair.bmp');

  if FileExists(PathSistema + 'Data\RunTime\Imagens_Sistema\RestauranteAzul2.bmp') Then
    ibeaRestaurante.Glyph.LoadFromFile(PathSistema + 'Data\RunTime\Imagens_Sistema\RestauranteAzul2.bmp');


end;

procedure TfrmPrincipal.TimerPrincipalTimer(Sender: TObject);
begin

pnlDataHora.Caption := UpperCase(FormatDateTime('dd MMMM yyyy',Date)) + ' - ' + FormatDateTime('hh:mm:ss',Time);
end;

procedure TfrmPrincipal.mnuProdutosClick(Sender: TObject);
begin
  

  with dmModule do begin
    frmProd_MPrima.ShowModal;
     { IDUsuarioLogin := IDAcesso;

      ibUser.Close;
      ibUser.SQL.Clear;
      ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + IntToStr(IDUsuarioLogin) + '''');
      ibUser.Open;

      if ibUser.FieldByName('CADPROD').AsString = 'Bloqueado' Then begin

        ShowMessage('Acesso não permitido');
        frmProdutos.Close;

      end else begin

        frmProdutos.ShowModal;

     end;  }

  end;{with}

end;

procedure TfrmPrincipal.ibeaProdutoClick(Sender: TObject);

//var

//ProdutoEstoque : String;

begin

  with dmModule do begin

    frmProd_MPrima.ShowModal;
    {  Commit(ibConfig);
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

          ShowMessage('Acesso não permitido');
          frmProd_MPrima.Close;

        end else begin

          frmProd_MPrima.ShowModal;

        end;

      end else begin

        IDUsuarioLogin := IDAcesso;

        ibUser.Close;
        ibUser.SQL.Clear;
        ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + IntToStr(IDUsuarioLogin) + '''');
        ibUser.Open;

        if ibUser.FieldByName('CADPROD').AsString = 'Bloqueado' Then begin

          ShowMessage('Acesso não permitido');
          frmProd_MPrima.Close;

        end else begin

         frmProd_MPrima.ShowModal;

       end;

      end;//if produtestoque  }

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

        ShowMessage('Acesso não permitido');
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

var

CaminhoSkin, AtivarSkin : String;

//DataSistema,DataDia : TDateTime;
//Dia,Mes,Ano, DiaAtual,MesAtual,AnoAtual : Word;
{var

OleGraphic: TOleGraphic;
fs: TFileStream; }
begin

   { with CarregarSkin do begin

      CarregarSkin := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Data\RunTime\sis.ini'); //Cria o vinculo com o Arquivo ini

      AtivarSkin := ReadString('CarregarSkin','AtivarSkin','');

      if (AtivarSkin = 'Sim') Then begin

      if not SkinData1.Active Then SkinData1.Active := True;

        CaminhoSkin := ReadString('CarregarSkin','PathSkin','')+'\interface.skn';
        SkinData1.SkinFile := CaminhoSkin;
      //  SkinData1.SkinStore := CaminhoSkin;

      end;

    end;//with  }
    
  with ConfigSiS do begin

    ConfigSiS := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Data\RunTime\sis.ini'); //Cria o vinculo com o Arquivo ini

      with dmModule do begin

        frmPrincipal.Caption := ReadString('ConfigSiS','Titulo','');  
        dmModule.IBDGERAL.DatabaseName := ReadString('ConfigSiS','Banco',''); //+ '\LANCHONETE.fdb'; //Faz a leitura de uma String na seção do arquivo ini
       /// dmModule.IBDGERAL.Params.Add('user_name=SYSDBA');
       /// dmModule.IBDGERAL.Params.Add('password=masterkey');
        dmModule.IBDGERAL.Connected := True; //Manda Conectar o Banco de Dados

        frmSenha.ShowModal;


////////////////////////////////////////////////////////////////////////////////


      //ROTINA PARA EXIBIR A IMAGEM DO PRODUTO
   ////   if Not FileExists(ExtractFilePath(Application.ExeName) + 'Data\RunTime\Imagens_Sistema\TelaEntrada.jpg' ) Then begin

      ////  imgPrincipal.Picture := Nil; //LIMPA A IMAGEM
       // ImagemProduto := '';

     //// end else begin

     ////   try
        {  OleGraphic := TOleGraphic.Create;
          fs         := TFileStream.Create(ExtractFilePath(Application.ExeName) //EXIBE A IMAGEM DO PRODUTO
                                          + 'Data\RunTime\img_Tela_Sistema\Pet.jpg' , fmOpenRead or fmSharedenyNone);
          OleGraphic.LoadFromStream(fs);
          imgPrincipal.Picture.Assign(OleGraphic);  }                          //

        ////  imgPrincipal.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+ '\Data\RunTime\img_Tela_Sistema\Pet.jpg');

        //  ImagemProduto := ExtractFilePath(Application.ExeName) //EXIBE A IMAGEM DO PRODUTO
                                      //    + 'Data\RunTime\img_Tela_Sistema\Pet.jpg' ;

       { finally
          fs.Free;
          OleGraphic.Free
        end;

       end;}

////////////////////////////////////////////////////////////////////////////////

      //  frmFormSplash.Close;
      //  frmFormSplash.Free;

        { frmSenha.ShowModal;

         if frmFormSplash.Showing Then begin

         frmFormSplash.Close;
         frmFormSplash.Free;

         end; }
      {   Commit(ibDataSistema);
         ibDataSistema.Close;
         ibDataSistema.SQL.Clear;
         ibDataSistema.SQL.Add('SELECT * FROM TBLDATASISTEMA');
         ibDataSistema.Open;


         DataSistema := (ibDataSistema.FieldByName('DATA').AsDateTime);
         DataDia := StrToDate(FormatDateTime('dd/mm/yyyy',Now));

         DecodeDate(DataSistema,ano,mes,dia);
         DecodeDate(DataDia,AnoAtual,MesAtual,DiaAtual);

         if (ano=AnoAtual)and(mes=MesAtual)and(dia=DiaAtual) Then begin

         Application.MessageBox('Sistema desatualizado, favor entrar em contato com nosso suporte no telefone(011)7643-6630','Notificação de Sistema', + MB_OK);
         Application.Terminate;

         end;

         if (AnoAtual>Ano) Then begin

         Application.MessageBox('Sistema desatualizado, favor entrar em contato com nosso suporte no telefone(011)7643-6630','Notificação de Sistema', + MB_OK);
         Application.Terminate;

         end;

         if (DiaAtual>Dia) and (MesAtual > Mes) Then begin

         Application.MessageBox('Sistema desatualizado, favor entrar em contato com nosso suporte no telefone(011)7643-6630','Notificação de Sistema', + MB_OK);
         Application.Terminate;

         end;

        if frmSenha.cboUsuario.ItemIndex <> -1 Then begin//SE HOUVER REGISTRO NO COMBO

          IDClassUsuarioAcesso := TClasseCombo( frmSenha.cboUsuario.Items.Objects[frmSenha.cboUsuario.ItemIndex] );//ATRIBUI A CLASSE COMBO NA VARIAVEL
          IDAcesso := IDClassUsuarioAcesso.ID;

        end;  }

      lbl_Usuario.Caption := frmSenha.cboUsuario.Text;

      if frmSenha.cboUsuario.ItemIndex <> -1 Then begin//SE HOUVER REGISTRO NO COMBO
      IDClassUsuarioSis := TClasseCombo( frmSenha.cboUsuario.Items.Objects[frmSenha.cboUsuario.ItemIndex] );//ATRIBUI A CLASSE COMBO NA VARIAVEL
      StringUsuarioSis :=  InttoStr( IDClassUsuarioSis.ID );
      end;

      lbl_CodUsuario.Text := StringUsuarioSis;

      end; {with}

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

        ShowMessage('Acesso não permitido');
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

        ShowMessage('Acesso não permitido');
        frmFornecedores.Close;

      end else begin

        frmFornecedores.ShowModal;
        
     end;

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

        ShowMessage('Acesso não permitido');
        frmFluxoCX.Close;

      end else begin

       frmFluxoCx.ShowModal;

     end;}

//  end;{with}

end;

procedure TfrmPrincipal.mnuReciboClick(Sender: TObject);
begin

{  with dmModule do begin

      IDUsuarioLogin := IDAcesso;

      ibUser.Close;
      ibUser.SQL.Clear;
      ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + IntToStr(IDUsuarioLogin) + '''');
      ibUser.Open;

      if ibUser.FieldByName('CADRECIBO').AsString = 'Bloqueado' Then begin

        ShowMessage('Acesso não permitido');
        frmRecibo.Close;

      end else begin

       frmRecibo.ShowModal;

     end; }

 // end;{with}

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

        ShowMessage('Acesso não permitido');
        frmContasaReceber.Close;

      end else begin

       frmContasaReceber.ShowModal;

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
    + 'TBLSERVICOSAPAGAR.TIPO As NomeServico,TBLCADASTRO.NOME As Cliente FROM TBLCONTASAPAGAR '
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
           MessageDlg('Ocorreu um erro ao tentar mostrar o Formulário: ' + E.Message,mtError,[mbOk],0);
        end;
      END;
    //////////////////////////////////////////////////////////////

  end;{with}

end;

procedure TfrmPrincipal.mnuGeral2Click(Sender: TObject);

begin
frmCRGeralP.ShowModal;
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

        ShowMessage('Acesso não permitido');
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

        ShowMessage('Acesso não permitido');
        frmFluxoCxP.Close;

      end else begin

        frmFluxoCxP.ShowModal;

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

        ShowMessage('Acesso não permitido');
        frmManutCx.Close;

      end else begin

       frmManutCx.ShowModal;

     end;

  end;{with}

end;

procedure TfrmPrincipal.Geral2Click(Sender: TObject);

var

ConfirmaRelatorio : Integer;

begin

  with dmModule do begin

    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS ORDER BY NOME');
    ibProdutos.Open;

//    (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO

    Application.CreateForm(TfrmRelProd, frmRelProd);

    TRY

      with frmRelProd do begin

        frmRelProd.qrpProdutos.DataSet := ibProdutos;


        //ATRIBUI OS NOMES DOS CAMPOS AOS QRDBTEXT DO QUICKREPORT
        qrdbCodigo.DataSet    := ibProdutos;
        qrdbCodigo.DataField  := ibProdutos.FieldByName('REF').FieldName;

       { qrdbCodbarras.DataSet     := ibProdutos;
        qrdbCodBarras.DataField   := ibProdutos.FieldByName('CODBARRAS').FieldName; }

        qrdbDescricao.DataSet       := ibProdutos;
        qrdbDescricao.DataField     := ibProdutos.FieldByName('NOME').FieldName;

    //    qrdbVlrUnit.DataSet       := ibProdutos;
  //     qrdbVlrUnit.DataField     := ibProdutos.FieldByName('VALORCUSTO').FieldName;

        qrdbValorVenda.DataSet    := ibProdutos;
        qrdbValorVenda.DataField  := ibProdutos.FieldByName('VALORVENDAA').FieldName;

      // (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
        (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO }

{ConfirmaRelatorio := Application.MessageBox('Deseja criar Relatório no Excel??','Relatório criado no Excel',+MB_YESNO+MB_ICONQUESTION);

if ConfirmaRelatorio = 6 Then begin

qrpProdutos.ExportToFilter(TQRHTMLDocumentFilter.Create(

'C:\Relatorio de Produtos.xls'));

qrpProdutos.ExportFilter.Free;

end;//if }

        qrpProdutos.Preview;
       // qrpProdutos
      end; {if}


    EXCEPT
      on E : Exception do begin
         frmRelProd.Release;
         MessageDlg('Ocorreu um erro ao tentar mostrar o Formulário: ' + E.Message,mtError,[mbOk],0);
      end;
    END;
  //////////////////////////////////////////////////////////////



  end;{with}

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

        ShowMessage('Acesso não permitido');
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
    ibEntrProdEstoque.SQL.Add('SELECT CADPRODUTOS.CODBARRAS,CADPRODUTOS.IDLOCAL,'
   + 'CADPRODUTOS.NOME,TBLENTRADAESTOQUEPROD.QUANTIDADE,CADPRODUTOS.VALORCUSTO, '
   + 'CADPRODUTOS.VALORVENDAA,TBLENTRADAESTOQUEPROD.VLRTOTAL,'
   + 'TBLENTRADAESTOQUEPROD.ESTOQUEMIN FROM CADPRODUTOS '
   + 'INNER JOIN TBLENTRADAESTOQUEPROD ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD ORDER BY CADPRODUTOS.NOME');
    ibEntrProdEstoque.Open;

   Application.CreateForm(TfrmRelEstoque, frmRelEstoque);

    TRY

      with frmRelEstoque do begin

        frmRelEstoque.qrpRelEstoque.DataSet := ibEntrProdEstoque;


        //ATRIBUI OS NOMES DOS CAMPOS AOS QRDBTEXT DO QUICKREPORT
        qrdbQtdeMinima.DataSet    := ibEntrProdEstoque;
        qrdbQtdeMinima.DataField  := ibEntrProdEstoque.FieldByName('ESTOQUEMIN').FieldName;

        qrdbDescricao.DataSet   := ibEntrProdEstoque;
        qrdbDescricao.DataField := ibEntrProdEstoque.FieldByName('NOME').FieldName;

        qrdbVlrUnit.DataSet     := ibEntrProdEstoque;
        qrdbVlrUnit.DataField   := ibEntrProdEstoque.FieldByName('VALORVENDAA').FieldName;
       (ibEntrProdEstoque.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Combustiveis'); //CRIA UMA MASCARA PARA O CAMPO

        qrdbQtde.DataSet        := ibEntrProdEstoque;
        qrdbQtde.DataField      := ibEntrProdEstoque.FieldByName('QUANTIDADE').FieldName;


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
         MessageDlg('Ocorreu um erro ao tentar mostrar o Formulário: ' + E.Message,mtError,[mbOk],0);
      end;
    END;
  //////////////////////////////////////////////////////////////

  end;{with}

end;

procedure TfrmPrincipal.Sobre1Click(Sender: TObject);
begin
frmSobre.ShowModal;
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

procedure TfrmPrincipal.BmsXPButton1Click(Sender: TObject);
begin
//frmProd_MPrima.showmodal;
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
         MessageDlg('Ocorreu um erro ao tentar mostrar o Formulário: ' + E.Message,mtError,[mbOk],0);
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

  with dmModule do begin

      IDUsuarioLogin := IDAcesso;

      ibUser.Close;
      ibUser.SQL.Clear;
      ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + IntToStr(IDUsuarioLogin) + '''');
      ibUser.Open;

      if ibUser.FieldByName('CADPR').AsString = 'Bloqueado' Then begin

        ShowMessage('Acesso não permitido');
        frmContasApagar.Close;

      end else begin

       frmContasApagar.ShowModal;

     end;

  end;{with}

end;

procedure TfrmPrincipal.Produtoscomestoquemnimo1Click(Sender: TObject);
begin

  with dmModule do begin

    Commit(ibEntrProdEstoque);
    ibEntrProdEstoque.Close;
    ibEntrProdEstoque.SQL.Clear;
    ibEntrProdEstoque.SQL.Add('SELECT TBLENTRADAESTOQUEPROD.*,CADPRODUTOS.CODBARRAS,CADPRODUTOS.IDLOCAL,'
    + 'CADPRODUTOS.NOME,CADPRODUTOS.REF,CADPRODUTOS.VALORVENDAA,CADPRODUTOS.FORNECEDOR FROM CADPRODUTOS '
    + 'INNER JOIN TBLENTRADAESTOQUEPROD ON TBLENTRADAESTOQUEPROD.IDPROD=CADPRODUTOS.IDPROD WHERE  (TBLENTRADAESTOQUEPROD.QUANTIDADE<TBLENTRADAESTOQUEPROD.ESTOQUEMIN) ORDER BY CADPRODUTOS.NOME');
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
         MessageDlg('Ocorreu um erro ao tentar mostrar o Formulário: ' + E.Message,mtError,[mbOk],0);
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

        ShowMessage('Acesso não permitido');
        frmFornecedores.Close;

      end else begin

        frmFornecedores.ShowModal;
        
     end;

  end;{with}

end;

procedure TfrmPrincipal.PorCarto1Click(Sender: TObject);
begin
frmRelCRCartao.ShowModal;
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
frmContasaPagarP.ShowModal;
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

procedure TfrmPrincipal.ibeaClientePedidoClick(Sender: TObject);

var

NomeFunc,TrocoInicialCx : String;

begin
///frmCliente.ShowModal;
  with dmModule do begin

    Commit(ibConfig);
    ibConfig.Close;
    ibConfig.SQL.Clear;
    ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
    ibConfig.Open;

    TrocoInicialCx := ibConfig.FieldByName('TROCOINICIALCX').AsString;

    if TrocoInicialCx = 'Sim' Then begin

     // frmSenhaCx.ShowModal;

   ///  Application.CreateForm(TfrmSenhaCx, frmSenhaCx);
      frmSenhaCx.ShowModal; // no meu caso uso sempre modal
    ///  FreeAndNil(frmSenhaCx); // efetua o Free no Form e também limpa o setor de memoria que foi alocado por ele


    end else begin

      IDUsuarioLogin := IDAcesso;

      ibUser.Close;
      ibUser.SQL.Clear;
      ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + IntToStr(IDUsuarioLogin) + '''');
      ibUser.Open;

      if ibUser.FieldByName('CADFRENTECX').AsString = 'Bloqueado' Then begin

        ShowMessage('Acesso não permitido');
        frmCliente.Close;

      end else begin

     ///   NomeFunc := ibUser.FieldByName('NOME').AsString;
        frmCliente.lbl_Func.Caption := '';
        frmCliente.lbl_edtIDFuncionario.Caption := '';
        frmCliente.ShowModal;

      end;

    end;//if trocoinicial

  end;{with}

end;

procedure TfrmPrincipal.PorPerodoeBaixado1Click(Sender: TObject);
begin
frmCRPeriodo.ShowModal;
end;

procedure TfrmPrincipal.Pendentes2Click(Sender: TObject);

var

ValorParcial, TotaldoPendente  : Real;
ValorParcialPago : String;
  ValorGeralCX : Real;
  ValorTotalCX : String;
  ValorPendente : Real;
  ValorTotalPen : String;
  VlrPago : Real;
  TotalPago : String;
  SaldoDevedor : Real;
  VlrAcrescimo : Real;
  TotalAcrescimo : String;

begin

  with dmModule do begin

    if ValorGeralCX > 0 Then begin

      ValorGeralCX := 0;

    end;

    if ValorTotalCX > '0' Then begin

      ValorTotalCX := '0';

    end;

    if ValorPendente > 0 Then begin

      ValorPendente := 0;

    end;

    if ValorTotalPen > '0' Then begin

      ValorTotalPen := '0';

    end;

    if VlrPago > 0 Then begin

      VlrPago := 0;

    end;

    if TotalPago > '0' Then begin

      TotalPago := '0';

    end;

    if VlrAcrescimo > 0 Then begin

      VlrAcrescimo := 0;

    end;

    if TotalAcrescimo > '0' Then begin

      TotalAcrescimo := '0';

    end;

////////////////////////////////////////////////////////////////////////////////

  ////  if (frmClientes.lbl_edtNomeCliH.Text <> '') Then begin

    {ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
    ibClassificacao.Open;
    IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO CLIENTE NA VARIAVEL.


    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLCADDOCUMENTACAO.CODIGO FROM TBLCADASTRO '
    + 'LEFT OUTER JOIN TBLCADDOCUMENTACAO ON TBLCADASTRO.IDCAD=TBLCADDOCUMENTACAO.IDCAD WHERE TBLCADASTRO.IDCLASS=''' + IntToStr(IDClass) + ''' and TBLCADDOCUMENTACAO.IDCAD=''' + IntToStr(IDCad) + '''');
    ibCadastro.Open; }

  ////  IDClienteHistorico := ibCadastro.FieldByName('IDCAD').AsInteger;

  //   TBLCADASTRO.NOME=''' + lbl_edtNomeCliH.Text + ''' and
    Commit(ibTempVendaLoja);
    ibTempVendaLoja.Close;
    ibTempVendaLoja.SQL.Clear;
    ibTempVendaLoja.SQL.Add('SELECT TBLSERVICOSVENDAS.*,'
    + 'CADPRODUTOS.NOME As Produto,TBLCADASTRO.NOME As Cliente FROM TBLSERVICOSVENDAS '
    + 'LEFT OUTER JOIN TBLCADASTRO ON TBLSERVICOSVENDAS.IDCLIENTE=TBLCADASTRO.IDCAD '
    + 'LEFT OUTER JOIN CADPRODUTOS ON TBLSERVICOSVENDAS.IDPROD=CADPRODUTOS.IDPROD '
    + 'WHERE  TBLSERVICOSVENDAS.POSVENDA=''Pago''and TBLSERVICOSVENDAS.PENDENTEPAGO=''Pendente'' ORDER BY TBLCADASTRO.NOME');
    ibTempVendaLoja.Open;                        //  IntToStr(IDCad)  TBLSERVICOSVENDAS.IDCLIENTE=''' + frmClientes.lbl_edtCodCliH.Text + ''' and

    (ibTempVendaLoja.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibTempVendaLoja.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibTempVendaLoja.FieldByName('PAGTOPARCIAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
    (ibTempVendaLoja.FieldByName('VLRPENDENTE') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO


    Commit(ibPagtoPendente);
    ibPagtoPendente.Close;
    ibPagtoPendente.SQL.Clear;                        //  WHERE IDCLI=''' + frmClientes.lbl_edtCodCliH.Text + '''
    ibPagtoPendente.SQL.Add('SELECT * FROM TBLPAGTOPENDENTE ');
    ibPagtoPendente.Open;

    while not ibPagtoPendente.Eof do begin

      if ibPagtoPendente.FieldByName('SITUACAO').AsString <> 'Pago' Then begin

        if (VlrPago = 0)Then begin

          VlrPago := StrToFloat(StringReplace(FloatToStr(ibPagtoPendente.FieldByName('VLRPAGO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

        end else begin

          TotalPago := StringReplace(FloatToStr(ibPagtoPendente.FieldByName('VLRPAGO').AsFloat),ThousandSeparator,'',[rfReplaceAll]);
          VlrPago := VlrPago + StrToFloat(StringReplace(TotalPago,ThousandSeparator,'',[rfReplaceAll]));

        end;

      end;

      ibPagtoPendente.Next

    end;//while


  //// end;//if label cod cli  TBLCADASTRO.NOME=''' + lbl_edtNomeCliH.Text + ''' and

////////////////////////////////////////////////////////////////////////////////


    while not ibTempVendaLoja.Eof do begin//enquanto nao for fim de registro


          if (ValorGeralCX = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorGeralCX := StrtoFloat(StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorTotalCX := StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorGeralCX := ValorGeralCX + StrtoFloat(StringReplace(ValorTotalCX,ThousandSeparator,'',[rfReplaceAll]));

           end;{if}

////////////////////////////////////////////////////////////////////////////////
           if ibTempVendaLoja.FieldByName('PENDENTEPAGO').AsString = 'Pendente' Then begin

             if (ValorPendente = 0) Then begin//se variavel for igual a zero

              //atribui o vlr do campo abaixo na variavel
              ValorPendente := StrtoFloat(StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

             end else begin

              //atribui na variavel substituindo o ponto para vlr em branco
              ValorTotalPen := StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

              //atribui a variavel o valor separando por ponto
              ValorPendente := ValorPendente + StrtoFloat(StringReplace(ValorTotalPen,ThousandSeparator,'',[rfReplaceAll]));

             end;{if}

            if (VlrAcrescimo = 0) Then begin//se variavel for igual a zero

              //atribui o vlr do campo abaixo na variavel
              VlrAcrescimo := StrtoFloat(StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('ACRESCIMO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

            end else begin

              //atribui na variavel substituindo o ponto para vlr em branco
              TotalAcrescimo := StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('ACRESCIMO').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

              //atribui a variavel o valor separando por ponto
              VlrAcrescimo := VlrAcrescimo + StrtoFloat(StringReplace(TotalAcrescimo,ThousandSeparator,'',[rfReplaceAll]));

             end;{if}

           end;//if
////////////////////////////////////////////////////////////////////////////////

           if (ValorParcial = 0) Then begin//se variavel for igual a zero

            //atribui o vlr do campo abaixo na variavel
            ValorParcial := StrtoFloat(StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('PAGTOPARCIAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]));

          end else begin

            //atribui na variavel substituindo o ponto para vlr em branco
            ValorParcialPago := StringReplace(FloattoStr(ibTempVendaLoja.FieldByName('PAGTOPARCIAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

            //atribui a variavel o valor separando por ponto
            ValorParcial := ValorParcial + StrtoFloat(StringReplace(ValorParcialPago,ThousandSeparator,'',[rfReplaceAll]));

           end;{if}


          if ValorParcial > 0 Then begin

          TotaldoPendente := ValorPendente - ValorParcial;

          end else begin

          TotaldoPendente := ValorPendente;

          end;//if



////////////////////////////////////////////////////////////////////////////////


          ibTempVendaLoja.Next;//vai para o pproximo registro pro looping nao ficar infinito.

        end;{while}

     //  if lbl_edtTotal.Text = '0,00' Then begin

        //lbl_edtTotal.Text := FormatFloat(CasasDecimais('Produtos'),ValorGeralCX);
       // lbl_edtTotalPendente.Text := FormatFloat(CasasDecimais('Produtos'),TotaldoPendente);
       // lbl_edtTotalPago.Text :=  FormatFloat(CasasDecimais('Produtos'),ValorParcial);


        if VlrPago > 0 Then begin

          if TotaldoPendente > VlrPago Then begin

            SaldoDevedor := TotaldoPendente - VlrPago;

          end;

          if TotaldoPendente < VlrPago Then begin

            SaldoDevedor := VlrPago - TotaldoPendente;

          end;

          if TotaldoPendente = 0 Then begin

            SaldoDevedor := 0

          end;

        end;


////////////////////////////////////////////////////////////////////////////////


   Application.CreateForm(TfrmRelatorioPendentes, frmRelatorioPendentes);

    TRY

      with frmRelatorioPendentes do begin

        frmRelatorioPendentes.qrpPendentes.DataSet := ibTempVendaLoja;


        //ATRIBUI OS NOMES DOS CAMPOS AOS QRDBTEXT DO QUICKREPORT
        qrdbNCupom.DataSet    := ibTempVendaLoja;
        qrdbNCupom.DataField  := ibTempVendaLoja.FieldByName('IDSERVSVENDA').FieldName;

        qrdb_NomeCliente.DataSet    := ibTempVendaLoja;
        qrdb_NomeCliente.DataField  := ibTempVendaLoja.FieldByName('Cliente').FieldName;

        qrdbProd.DataSet    := ibTempVendaLoja;
        qrdbProd.DataField  := ibTempVendaLoja.FieldByName('NOMEPROD').FieldName;

        qrdbQtde.DataSet     := ibTempVendaLoja;
        qrdbQtde.DataField   := ibTempVendaLoja.FieldByName('QTDE').FieldName;


        qrdbVlrUnit.DataSet   := ibTempVendaLoja;
        qrdbVlrUnit.DataField := ibTempVendaLoja.FieldByName('VLRUNIT').FieldName;
        (ibTempVendaLoja.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

        qrdbTotal.DataSet   := ibTempVendaLoja;
        qrdbTotal.DataField := ibTempVendaLoja.FieldByName('VLRTOTAL').FieldName;
        (ibTempVendaLoja.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

        qrdbTaxa.DataSet   := ibTempVendaLoja;
        qrdbTaxa.DataField := ibTempVendaLoja.FieldByName('ACRESCIMO').FieldName;
        (ibTempVendaLoja.FieldByName('ACRESCIMO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO


        qrdbData.DataSet        := ibTempVendaLoja;
        qrdbData.DataField      := ibTempVendaLoja.FieldByName('DATA').FieldName;

        if TotaldoPendente > 0 Then begin

          qrl_VlrTotalP.Caption :=  FormatFloat(CasasDecimais('Produtos'),TotaldoPendente + VlrAcrescimo);

        end else begin

          qrl_VlrTotalP.Caption := '0,00';

        end;

        if SaldoDevedor > 0 Then begin

          if ValorParcial = 0 Then begin

          qrl_SaldoDevedor.Caption := FormatFloat(CasasDecimais('Produtos'),SaldoDevedor + VlrAcrescimo);

          end;

          if ValorParcial > 0 Then begin

          qrl_SaldoDevedor.Caption := FormatFloat(CasasDecimais('Produtos'),SaldoDevedor);

          end;

        end else begin

          qrl_SaldoDevedor.Caption := '0,00';

        end;

        if VlrPago > 0 Then begin

          qrl_PagtoParcial.Caption := FormatFloat(CasasDecimais('Produtos'),VlrPago);

        end else begin

          qrl_PagtoParcial.Caption := '0,00';

        end;

        qrpPendentes.Preview;

      end; {if}


    EXCEPT
      on E : Exception do begin
         frmRelatorioPendentes.Release;
         MessageDlg('Ocorreu um erro ao tentar mostrar o Formulário: ' + E.Message,mtError,[mbOk],0);
      end;
    END;
  //////////////////////////////////////////////////////////////

  end;{with}


end;

procedure TfrmPrincipal.PendenteDetalhado1Click(Sender: TObject);

var

ValorParcial, TotaldoPendente  : Real;
ValorParcialPago : String;
  ValorGeralCX : Real;
  ValorTotalCX : String;
  ValorPendente : Real;
  ValorTotalPen : String;
  VlrPago : Real;
  TotalPago : String;
  SaldoDevedor : Real;
  VlrAcrescimo : Real;
  TotalAcrescimo : String;

begin

  with dmModule do begin

   ibCadastro.Close;
   ibCadastro.SQL.Clear;
   ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE TBLCADASTRO.PENDENTEPAGO=''Pendente'' ORDER BY TBLCADASTRO.NOME');
   ibCadastro.Open;

  { ibCadastro.Close;
   ibCadastro.SQL.Clear;
   ibCadastro.SQL.Add('SELECT DISTINCT TBLCADASTRO.NOME As Cliente,'
   + 'SUM(TBLSERVICOSVENDAS.VLRTOTAL)As TotalVenda FROM TBLCADASTRO '
   + 'INNER JOIN TBLSERVICOSVENDAS ON  TBLCADASTRO.IDCAD=TBLSERVICOSVENDAS.IDCLIENTE WHERE TBLCADASTRO.PENDENTEPAGO=''Pendente'' GROUP BY TBLCADASTRO.NOME,TBLSERVICOSVENDAS.VLRTOTAL');
   ibCadastro.Open; }

   Application.CreateForm(TfrmPendentesDetalhado, frmPendentesDetalhado);

    TRY

      with frmPendentesDetalhado do begin

        frmPendentesDetalhado.qrpPendentes.DataSet := ibCadastro;


        //ATRIBUI OS NOMES DOS CAMPOS AOS QRDBTEXT DO QUICKREPORT
        qrdbCliente.DataSet    := ibCadastro;
        qrdbCliente.DataField  := ibCadastro.FieldByName('NOME').FieldName;

        qrdbTelefone.DataSet    := ibCadastro;
        qrdbTelefone.DataField  := ibCadastro.FieldByName('TELEFONE').FieldName;

     //   qrdbTotal.DataSet   := ibCadastro;
     //   qrdbTotal.DataField := ibCadastro.FieldByName('TotalVenda').FieldName;
    //    (ibCadastro.FieldByName('TotalVenda') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

     //   qrdbTaxa.DataSet   := ibTempVendaLoja;
      //  qrdbTaxa.DataField := ibTempVendaLoja.FieldByName('ACRESCIMO').FieldName;
    //    (ibTempVendaLoja.FieldByName('ACRESCIMO') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

        qrpPendentes.Preview;

      end; {if}


    EXCEPT
      on E : Exception do begin
         frmPendentesDetalhado.Release;
         MessageDlg('Ocorreu um erro ao tentar mostrar o Formulário: ' + E.Message,mtError,[mbOk],0);
      end;
    END;
  //////////////////////////////////////////////////////////////

  end;{with}

end;

procedure TfrmPrincipal.Clientesteste1Click(Sender: TObject);
begin
frmRClientes.ShowModal;
end;

procedure TfrmPrincipal.mnuRelClientesClick(Sender: TObject);
begin
frmRClientes.ShowModal;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

 //SkinData1.Active := False;

  ConfirmaMSG := Application.MessageBox('Você deseja realmente sair do Sistema?','Sair do Sistema', MB_YESNO + mb_DefButton1+MB_ICONQUESTION);

  if ConfirmaMSG = 6 Then begin

    Application.Terminate;

  //end else begin

    //SkinData1.Active := True;

  end;
  
end;

procedure TfrmPrincipal.btnSairClick(Sender: TObject);
begin

 // SkinData1.Active := False;

  ConfirmaMSG := Application.MessageBox('Você deseja realmente sair do Sistema?','Sair do Sistema', MB_YESNO + mb_DefButton1+MB_ICONQUESTION);

  if ConfirmaMSG = 6 Then begin

    Application.Terminate;

// end else begin

  //  SkinData1.Active := True;

  end;
  
end;

procedure TfrmPrincipal.PorFuncionriocomtrocoinicia1Click(Sender: TObject);
begin
frmFluxoFunc.ShowModal;
end;

procedure TfrmPrincipal.ibeaRestauranteClick(Sender: TObject);
begin
frmRestaurante.ShowModal;
end;

procedure TfrmPrincipal.FluxodeRestauranteporPerodo1Click(Sender: TObject);
begin
frmFluxoRestauranteP.ShowModal;
end;

end.
