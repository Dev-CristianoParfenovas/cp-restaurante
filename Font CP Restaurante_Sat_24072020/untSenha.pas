unit untSenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, classComboBox, RxGIF, IniFiles,
  IBQuery, BmsXPButton, jpeg, axCtrls, Menus;

type
  TfrmSenha = class(TForm)
    cboUsuario: TComboBox;
    lbl_Usuario: TLabel;
    imgChave: TImage;
    imgFundo: TImage;
    lbl_edtSenha: TLabeledEdit;
    ibeaOK: TBmsXPButton;
    ibeaCancelar: TBmsXPButton;
    procedure Commit(IBQueryExec : TIBQuery);
    procedure ExecSELECT;
    procedure FormShow(Sender: TObject);
    procedure ibeaOkClick(Sender: TObject);
    procedure cboUsuarioChange(Sender: TObject);
    procedure ibeaCancelarClick(Sender: TObject);
    procedure lbl_edtSenhaChange(Sender: TObject);
    procedure lbl_edtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSenha: TfrmSenha;
  IDLogin : TClasseCombo;
  IDClassUsuario : TClasseCombo;
  Numero,Senha : string;
  IDCad : Integer;
  IDAcesso, ConfirmaMSG : Integer;
  CarregarSkin : TIniFile;


implementation

uses untdmModule, untFormSplash, untPrincipal, DB, funcPosto,
  untChaveAcessoSis;

{$R *.dfm}

Function GetStateK (Key: integer): boolean;

begin

  Result := Odd (GetKeyState (Key));

end;

procedure TfrmSenha.Commit(IBQueryExec : TIBQuery);

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

procedure TfrmSenha.ExecSELECT;

begin

  with dmModule do begin

    Commit(ibUser);
    ibUser.Close;
    ibUser.SQL.Clear;
    ibUser.SQL.Add('SELECT * FROM TBLUSER');
    ibUser.Open;

    cboUsuario.Clear;

    while not ibUser.Eof do begin

      IDLogin     := TClasseCombo.Create;
      IDLogin.ID  := ibUser.FieldByName('IDUSER').AsInteger;//ATRIBUI A IDENTIFICACAO DO FUNCIONARIO ATRAVES DO ID NA VARIAVEL.
      cboUsuario.Items.AddObject(ibUser.FieldByName('LOGIN').AsString,IDLogin);//TRAZ OS ITENS ADICIONADOS AO OBJETO SELECIONADO NO COMBO E A DESCRICAO DO FUNCIONARIO.
      ibUser.Next;

    end;

  end;{with}

end;

procedure TfrmSenha.FormShow(Sender: TObject);

var

OleGraphic: TOleGraphic;
fs: TFileStream;
CaminhoSkin, AtivarSkin : String;

///VARIAVEIS REF. AO ACESSO DO SISTEMA
///DataSistema,DataDia : TDateTime;
///SenhaGerada : TDate;
///IDConvertData, i : Integer;
///Chave, Acesso, NAcesso : String;
///IDAcessoSis : Integer;

begin
lbl_edtSenha.Clear;
if frmFormSplash.Showing Then begin
frmFormSplash.Close;
frmFormSplash.Free;
end;//if
  with dmModule do begin

   { Commit(ibDataSistema);
    ibDataSistema.Close;
    ibDataSistema.SQL.Clear;
    ibDataSistema.SQL.Add('SELECT * FROM TBLDATASISTEMA');
    ibDataSistema.Open;

    DataSistema := (ibDataSistema.FieldByName('DATA').AsDateTime);    
    DataDia := StrToDate(FormatDateTime('dd/mm/yyyy',Now));

    Commit(ibAcessoSis);
    ibAcessoSis.Close;
    ibAcessoSis.SQL.Clear;
    ibAcessoSis.SQL.Add('SELECT * FROM TBLACESSOSIS');
    ibAcessoSis.Open;

    NAcesso := ibAcessoSis.FieldByName('ACESSO').AsString;
    IDAcessoSis := StrToInt(ibAcessoSis.FieldByName('ACESSO').AsString);

    if (DataSistema = DataDia) or (NAcesso >'70' ) Then begin

      Chave := '';
      Acesso := '77';

      ibAcessoSis.Close;
      ibAcessoSis.SQL.Clear;
      ibAcessoSis.SQL.Add('UPDATE TBLACESSOSIS SET '
      + 'CHAVE=''' + Chave + ''','
      + 'ACESSO=''' + Acesso + ''' WHERE IDACESSO= ''1'' ');
      ibAcessoSis.ExecSQL;
      Commit(ibAcessoSis);

      ibDataSistema.Close;
      ibDataSistema.SQL.Clear;
      ibDataSistema.SQL.Add('UPDATE TBLDATASISTEMA SET '
      + 'DATA=''' + FormatDateTime('mm-dd-yyyy',Now) + ''' WHERE IDDATASIS= ''1'' ');
      ibDataSistema.ExecSQL;  ///
      Commit(ibDataSistema);
      
    end;//if }

   { if (DataSistema > DataDia) or (NAcesso > '50' ) Then begin

     /// Chave := '';
      Acesso := IntToStr(IDAcessoSis + 1);

      ibAcessoSis.Close;
      ibAcessoSis.SQL.Clear;
      ibAcessoSis.SQL.Add('UPDATE TBLACESSOSIS SET '
     /// + 'CHAVE=''' + Chave + ''','
      + 'ACESSO=''' + Acesso + ''' WHERE IDACESSO= ''1'' ');
      ibAcessoSis.ExecSQL;
      Commit(ibAcessoSis); }

      {ibDataSistema.Close;
      ibDataSistema.SQL.Clear;
      ibDataSistema.SQL.Add('UPDATE TBLDATASISTEMA SET '
      + 'DATA=''' + FormatDateTime('mm-dd-yyyy',Now) + ''' WHERE IDDATASIS= ''1'' ');
      ibDataSistema.ExecSQL;  ///
      Commit(ibDataSistema);}
      
   /// end;//if

  { with CarregarSkin do begin

      CarregarSkin := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Data\RunTime\sis.ini'); //Cria o vinculo com o Arquivo ini

      AtivarSkin := ReadString('CarregarSkin','AtivarSkin','');

      if (AtivarSkin = 'Sim') Then begin

      if not SkinData1.Active Then SkinData1.Active := True;

        CaminhoSkin := ReadString('CarregarSkin','PathSkin','')+'\interface.skn';
        SkinData1.SkinFile := CaminhoSkin;
      //  SkinData1.SkinStore := CaminhoSkin;

      end;

    end;//with }

    ExecSELECT;
////////////////////////////////////////////////////////////////////////////////


      //ROTINA PARA EXIBIR A IMAGEM DO PRODUTO
      if Not FileExists(ExtractFilePath(Application.ExeName) + 'Data\RunTime\Imagens_Sistema\TelaSenha2008.gif' ) Then begin

        imgFundo.Picture := Nil; //LIMPA A IMAGEM

      end else begin

        try

          imgFundo.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+ '\Data\RunTime\Imagens_Sistema\TelaSenha2008.gif');

        finally
          fs.Free;
          OleGraphic.Free
        end;

       end;

////////////////////////////////////////////////////////////////////////////////

  end;{with}

end;

procedure TfrmSenha.ibeaOkClick(Sender: TObject);

var

DataSistema,DataDia : TDateTime;
DiaSistema,MesSistema,AnoSistema, DiaAtual,MesAtual,AnoAtual : Word;
intContador : Integer;

///VARIÁVEIS DE ACESSO

Controle : Integer;
NAcesso : Integer;
AcessoSis, Chave, Acesso,AvisoAcesso : String;

begin

  with dmModule do begin

    Commit(ibConfig);
    ibConfig.Close;
    ibConfig.SQL.Clear;
    ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
    ibConfig.Open;

    AvisoAcesso := ibConfig.FieldByName('AVISOACESSO').AsString;

       Commit(ibDataSistema);

       ibDataSistema.Close;
       ibDataSistema.SQL.Clear;
       ibDataSistema.SQL.Add('SELECT * FROM TBLDATASISTEMA');
       ibDataSistema.Open;

       DataSistema := (ibDataSistema.FieldByName('DATA').AsDateTime);
       DataDia := StrToDate(FormatDateTime('dd/mm/yyyy',Now));

       DecodeDate(DataSistema,AnoSistema,MesSistema,DiaSistema);
       DecodeDate(DataDia,AnoAtual,MesAtual,DiaAtual);

        Commit(ibAcessoSis);
        ibAcessoSis.Close;
        ibAcessoSis.SQL.Clear;
        ibAcessoSis.SQL.Add('SELECT * FROM TBLACESSOSIS');
        ibAcessoSis.Open;

        Controle := ibAcessoSis.FieldByName('CONTROLE').AsInteger;

        NAcesso  := StrToInt(ibAcessoSis.FieldByName('ACESSO').AsString);

        AcessoSis := IntToStr(NAcesso + 1);

       /// if AcessoSis > '150' Then begin

       ///   Application.MessageBox('Atenção!!Os Acessos ao sistema estão expirando,contate o suporte','AVISO DE ACESSO',+MB_OK+MB_DEFBUTTON1+MB_ICONINFORMATION);

       /// end;//if

        if (DataSistema = DataDia)or (NAcesso > 177 ) Then begin

          Chave := '';
          Acesso := '178';

          ibAcessoSis.Close;
          ibAcessoSis.SQL.Clear;
          ibAcessoSis.SQL.Add('UPDATE TBLACESSOSIS SET '
          + 'CHAVE=''' + Chave + ''','
          + 'ACESSO=''' + Acesso + ''' WHERE IDACESSO= ''1'' ');
          ibAcessoSis.ExecSQL;
          Commit(ibAcessoSis);

          ibDataSistema.Close;
          ibDataSistema.SQL.Clear;
          ibDataSistema.SQL.Add('UPDATE TBLDATASISTEMA SET '
          + 'DATA=''' + FormatDateTime('mm-dd-yyyy',Now) + ''' WHERE IDDATASIS= ''1'' ');
          ibDataSistema.ExecSQL;  ///
          Commit(ibDataSistema);

        end else begin

          ibAcessoSis.Close;
          ibAcessoSis.SQL.Clear;
          ibAcessoSis.SQL.Add('UPDATE TBLACESSOSIS SET '
          + 'ACESSO=''' + AcessoSis + ''' WHERE IDACESSO= ''1'' ');
          ibAcessoSis.ExecSQL;
          Commit(ibAcessoSis);

        end;//if


        if (Controle >= 3)or(NAcesso > 177) Then begin

        // SkinData1.Active := False;
          Application.MessageBox('Favor entrar em contato com nosso suporte no telefone(011)7643-6630','Notificação de Sistema', + MB_OK);
          Application.Terminate;

        end;

        if (Controle < 3)and(NAcesso < 178) Then begin

          if (AnoSistema=AnoAtual)and(MesSistema=MesAtual)and(DiaSistema=DiaAtual) Then begin

          Application.MessageBox('Favor entrar em contato com nosso suporte no telefone(011)7643-6630','Notificação de Sistema', + MB_OK);
          Application.Terminate;

          end;

          if (AnoSistema=AnoAtual)and(MesAtual>MesSistema)Then begin

          Application.MessageBox('Favor entrar em contato com nosso suporte no telefone(011)7643-6630','Notificação de Sistema', + MB_OK);
          Application.Terminate;

          end;

          if (AnoSistema=AnoAtual)and(MesAtual=MesSistema)and(DiaAtual>DiaSistema)Then begin

          Application.MessageBox('Favor entrar em contato com nosso suporte no telefone(011)7643-6630','Notificação de Sistema', + MB_OK);
          Application.Terminate;

          end;

          if (AnoAtual > AnoSistema)Then begin

          Application.MessageBox('Favor entrar em contato com nosso suporte no telefone(011)7643-6630','Notificação de Sistema', + MB_OK);
          Application.Terminate;

          end;

          if cboUsuario.ItemIndex <> -1 Then begin//SE HOUVER REGISTRO NO COMBO
          IDClassUsuario := TClasseCombo( cboUsuario.Items.Objects[cboUsuario.ItemIndex] );//ATRIBUI A CLASSE COMBO NA VARIAVEL
          end;

          ibUser.Close;
          ibUser.SQL.Clear;
          ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + IntToStr(IDClassUsuario.ID) + '''');
          ibUser.Open;

          IDAcesso := (IDClassUsuario.ID);

          Senha  := ibUser.FieldByName('SENHA').AsString;
          IDCad  := ibUser.FieldByName('IDUSER').AsInteger;
          Numero := lbl_edtSenha.Text;


          if Senha = Numero Then begin

          ShowMessage('Senha Liberada!!');

          frmSenha.Close;

          end else begin

         // SkinData1.Active := False;

          ShowMessage('Senha Incorreta?');

          end;

         { if SkinData1.Active = False Then begin

          Application.Terminate;

          end; }

        end;//if controle



  ///  end;

   // end;//if label senha




  {  if intContador = 3 Then begin

    ShowMessage('Senha Incorreta?3');
    Application.Terminate;

    end;

    intContador := intContador + 1;

   Next;}

  ///  end;

 ///  end;



  end;{with}

end;

procedure TfrmSenha.cboUsuarioChange(Sender: TObject);
begin
  lbl_edtSenha.SetFocus;
end;

procedure TfrmSenha.ibeaCancelarClick(Sender: TObject);
begin

 // SkinData1.Active := False;

  ConfirmaMSG := Application.MessageBox('Você deseja realmente sair do Sistema?','Sair do Sistema', MB_YESNO + mb_DefButton1+MB_ICONQUESTION);

  if ConfirmaMSG = 6 Then begin

    Application.Terminate;

 // end else begin

 //   SkinData1.Active := True;

  end;

//Application.Terminate;

end;

procedure TfrmSenha.lbl_edtSenhaChange(Sender: TObject);
begin
//  lbl_edtSenha.PasswordChar :='*';
end;

procedure TfrmSenha.lbl_edtSenhaKeyPress(Sender: TObject; var Key: Char);
begin

  if Key= #13 Then begin

    ibeaOkClick(Sender);

  end;

end;

procedure TfrmSenha.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  case key of

    VK_F1 :begin

      frmChaveAcesso.ShowModal;

    end;  

    VK_F4 :begin

   // SkinData1.Active := False;
    frmSenha.Close;

    if frmPrincipal.showing Then begin

      frmPrincipal.Close;

    end;

  end;    

  end;

end;

end.
