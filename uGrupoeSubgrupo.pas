unit uGrupoeSubgrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls,
  classComboBox, Menus, IBQuery, Buttons, Data.DB;

type
  TfrmGrupoeSubgrupo = class(TForm)
    Image1: TImage;
    lblGrupo: TLabel;
    lbl_edtGrupo: TLabeledEdit;
    lbl_edtSubgrupo: TLabeledEdit;
    Shape10: TShape;
    dbgGrupo: TDBGrid;
    Shape1: TShape;
    dbgSubgrupo: TDBGrid;
    lbl_edtCodigo: TLabeledEdit;
    cboGrupo: TComboBox;
    Label1: TLabel;
    Image5: TImage;
    Label2: TLabel;
    popMnuSubGrupo: TPopupMenu;
    AlterarSubGrupo: TMenuItem;
    ibeaNovo: TSpeedButton;
    ibeaPrimeiro: TSpeedButton;
    ibeaAnterior: TSpeedButton;
    ibeaProximo: TSpeedButton;
    ibeaUltimo: TSpeedButton;
    ibeaAlterar: TSpeedButton;
    ibeaExcluir: TSpeedButton;
    ibeaSair: TSpeedButton;
    ibeaIncluir: TSpeedButton;

    procedure Commit(IBQueryExec : TIBQuery);
    procedure DesabilitaGrupo (opcao : Boolean);
    procedure DesabilitaSubGrupo (opcao : Boolean);
    procedure ExibeGrupo;
    procedure ExibeSubgrupo;
    procedure AlteraCadastro;
    procedure AlteraSubgrupo;
    procedure ExecSELECT;
    procedure ExecSELECTSubgrupo;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ibeaSairClick(Sender: TObject);
    procedure ibeaNovoClick(Sender: TObject);
    procedure ibeaAlterarClick(Sender: TObject);
    procedure ibeaIncluirClick(Sender: TObject);
    procedure ibeaPrimeiroClick(Sender: TObject);
    procedure ibeaAnteriorClick(Sender: TObject);
    procedure ibeaProximoClick(Sender: TObject);
    procedure ibeaUltimoClick(Sender: TObject);
    procedure cboGrupoClick(Sender: TObject);
    procedure dbgGrupoCellClick(Column: TColumn);
    procedure dbgSubgrupoCellClick(Column: TColumn);
    procedure AlterarSubGrupoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGrupoeSubgrupo: TfrmGrupoeSubgrupo;
  MontaColunasGrupo : Boolean; //VARIAVEL USADA PARA DETERMINAR SE A COLUNA J� FOI CRIADA OU N�O
  MontaColunasSubGrupo : Boolean;
  ConfirmaMSG : Integer;
  IDGrupo : Integer;
  IDSubgrupo : Integer;
  IDSub : Integer;
  ClassGrupo : TClasseCombo;
  StringGrupo : String;
  Alterar : String;

implementation

uses funcPosto, untdmModule;

{$R *.dfm}

procedure TfrmGrupoeSubgrupo.Commit(IBQueryExec : TIBQuery);
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

procedure TfrmGrupoeSubgrupo.DesabilitaGrupo(opcao : Boolean);
begin

lbl_edtCodigo.Enabled := opcao;
lbl_edtGrupo.Enabled := opcao;

end;

procedure TfrmGrupoeSubgrupo.DesabilitaSubGrupo(opcao : Boolean);
begin

lbl_edtSubgrupo.Enabled := opcao;

end;

procedure TfrmGrupoeSubgrupo.ExibeGrupo;
//var
//i : Integer;

begin
 with dmModule do begin

  //TRAZ O GRUPO DO PRODUTO
  {  for i:=0 to cboGrupo.Items.Count -1 do begin
      if TClasseCombo( cboGrupo.Items.Objects[i]).ID = ibGrupo.FieldByName('IDGRUPO').AsInteger then begin
        cboGrupo.ItemIndex:= i;
        Break;
      end else begin
        cboGrupo.ClearSelection;
      end;
    end;}

     IDGrupo := ibGrupo.FieldByName('IDGRUPO').AsInteger;

     lbl_edtGrupo.Text          := ibGrupo.FieldByName('NOME').AsString;
     lbl_edtCodigo.Text         := IntToStr(ibGrupo.FieldByName('IDGRUPO').AsInteger);

     ibSubgrupo.Close;
     ibSubgrupo.SQL.Clear;
     ibSubgrupo.SQL.Add('SELECT IDSUB,IDGRUPO,NOMESUBGRUPO FROM TBLSUBGRUPO WHERE IDGRUPO=''' + IntToStr(IDGrupo) + '''');
     ibSubgrupo.Open;

 end;{with}

end;

procedure TfrmGrupoeSubgrupo.ExibeSubgrupo;
begin

  with dmModule do begin

    IDSubgrupo := ibSubgrupo.FieldByName('IDSUB').AsInteger;
    lbl_edtSubgrupo.Text       := ibSubgrupo.FieldByName('NOMESUBGRUPO').AsString;

  end;

end;

procedure TfrmGrupoeSubgrupo.AlteraCadastro;
begin
 with dmModule do begin

     if lbl_edtGrupo.Text <> '' Then begin

      ibGrupo.Close;
      ibGrupo.SQL.Clear;
      ibGrupo.SQL.Add('UPDATE TBLGRUPO SET '
      + 'NOME = ''' + lbl_edtGrupo.Text + ''' WHERE IDGRUPO=''' + IntToStr(IDGrupo) + '''');
      ibGrupo.ExecSQL;

     end;

  end;

end;

procedure TfrmGrupoeSubgrupo.AlteraSubgrupo;
begin

{  with dmModule do begin


      ibSubgrupo.Close;
      ibSubgrupo.SQL.Clear;
      ibSubgrupo.SQL.Add('UPDATE TBLSUBGRUPO SET '
      + 'NOMESUBGRUPO = ''' + lbl_edtSubgrupo.Text + '''  WHERE IDSUBGRUPO=''' + IntToStr(IDSubgrupo) + '''');
      ibSubgrupo.ExecSQL;


  end;{with}

end;

procedure TfrmGrupoeSubgrupo.ExecSELECT;
begin

  with dmModule do begin

   //BUSCA TODOS OS GRUPOS QUE ESTEJAM NA CLASSIFICA��O DE GRUPO

      ibGrupo.Close;
      ibGrupo.SQL.Clear;
      ibGrupo.SQL.Add('SELECT * FROM TBLGRUPO');
      ibGrupo.Open;

    cboGrupo.Clear; //LIMPA O COMBOBOX

    while not ibGrupo.Eof do begin

      ClassGrupo     := TClasseCombo.Create;
      ClassGrupo.ID  := ibGrupo.FieldByName('IDGRUPO').AsInteger;
      cboGrupo.Items.AddObject(ibGrupo.FieldByName('NOME').AsString,ClassGrupo);
      ibGrupo.Next;

    end;{while}


  end;{with}

end;

procedure TfrmGrupoeSubgrupo.ExecSELECTSubgrupo;
begin

 with dmModule do begin

   ibSubgrupo.Close;
   ibSubgrupo.SQL.Clear;
   ibSubgrupo.SQL.Add('SELECT * FROM TBLSUBGRUPO');
   ibSubgrupo.Open;

  end;{with}

end;

procedure TfrmGrupoeSubgrupo.FormShow(Sender: TObject);
begin

  cboGrupo.Enabled := False;
  lbl_edtSubgrupo.Clear;
  lbl_edtCodigo.Clear;
  //atribui o caption ao abir o form
  ibeaNovo.Caption := '&Novo';
  ibeaAlterar.Caption := '&Alterar';

  //habilita os botoes ao abrir o form
  ibeaNovo.Enabled := True;
  ibeaAlterar.Enabled := True;
  ibeaExcluir.Enabled := True;

  with dmModule do begin

    ExecSELECT;

    //desabilita os campos ao abrir formularo
    DesabilitaGrupo(False);
 //   dbgGrupo.Enabled := False;
    DesabilitaSubGrupo(False);
    dbgSubgrupo.Enabled := False;
    ibeaIncluir.Enabled := False;


      //Adiciona as Colunas com os dados do Grupo e Subgrupo
      with dbgGrupo do begin

      // monta as colunas abaixo se for verdadeiro
        if MontaColunasGrupo Then begin
          //determina as colunas a serem montadas 0 codigo cliente, 1 razao Social, 2 endere�o numero...
          Columns.Insert(0);

          //Parametros da Coluna que exibe o C�digo do Grupo e Subgrupo
          Columns.Items[0].Title.Caption := 'Nome do Grupo';
          Columns.Items[0].FieldName     := 'NOME';
          Columns.Items[0].Width         := 243;
          Columns.Items[0].Alignment     := taCenter;

          MontaColunasGrupo := False;
        end;{if}

      //Adiciona as Colunas com os dados do Grupo e Subgrupo

      with dbgSubgrupo do begin

        // monta as colunas abaixo se for verdadeiro
        if MontaColunasSubGrupo Then begin

          //determina as colunas a serem montadas 0 codigo cliente, 1 razao Social, 2 endere�o numero...
          Columns.Insert(0);

          //Parametros da Coluna que exibe o C�digo do Grupo e Subgrupo
          Columns.Items[0].Title.Caption := 'Nome do Subgrupo';
          Columns.Items[0].FieldName     := 'NOMESUBGRUPO';
          Columns.Items[0].Width         := 243;
          Columns.Items[0].Alignment     := taCenter;

          MontaColunasSubGrupo := False;

        end;{if}

      end;{with}

    end;{with}

  end;{with}
  
end;

procedure TfrmGrupoeSubgrupo.FormCreate(Sender: TObject);
begin

 MontaColunasGrupo := True;

 MontaColunasSubGrupo := True;

end;

procedure TfrmGrupoeSubgrupo.ibeaSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmGrupoeSubgrupo.ibeaNovoClick(Sender: TObject);
begin

  with dmModule do begin

    //rotina para cancelar ou nao a operacao

    if ibeaAlterar.Caption = '&Atualizar' Then begin

    ConfirmaMSG := Application.MessageBox('Deseja cancelar esta opera��o?'
              + #13 + 'Clique em Sim para cancelar e N�o para continuar.','Notifica��o: Cancelar Opera��o', MB_YESNO + MB_ICONQUESTION);

      if ConfirmaMSG = 6 Then begin

        //RESTAURAR OS CAMPOS
        ibeaAlterar.Caption := '&Alterar';
        ibeaNovo.Enabled := True;
        ibeaNovo.Caption := '&Novo';
        ibeaExcluir.Enabled := True;
        DesabilitaGrupo(False);
        DesabilitaSubGrupo(False);
        dbgGrupo.Enabled := False;
        dbgSubgrupo.Enabled := False;
        lbl_edtSubgrupo.Clear;
        lbl_edtCodigo.Clear;

      end;{if}

    end else begin

////////////////////////////////////////////////////////////////////////////////

      if ibeaNovo.Caption = '&Gravar' Then Begin

        ibGrupo.Close;
        ibGrupo.SQL.Clear;
        ibGrupo.SQL.Add('INSERT INTO TBLGRUPO'
        + '(NOME) values '
        + '(''' + lbl_edtGrupo.Text + ''')');
        ibGrupo.ExecSQL;

        Commit(ibGrupo);

        ExecSELECT;

        dbgGrupo.Enabled := True;
        ibeaNovo.Caption := '&Novo';
        DesabilitaGrupo(False);
        DesabilitaSubGrupo(False);
        dbgSubgrupo.Enabled := False;
        cboGrupo.Enabled := True;
        ibeaAlterar.Enabled := True;
        ibeaExcluir.Enabled := True;

        end else begin

          ibeaNovo.Caption := '&Gravar';
          lbl_edtGrupo.Clear;
          ibGrupo.Close;
          ibSubgrupo.Close;
          DesabilitaGrupo(True);
          ibeaAlterar.Enabled := True;
          ibeaExcluir.Enabled := True;

          //SELECT PARA TRAZER O CODIGO EM ORDEM CRESCENTE.
          ibGrupo.Close;
          ibGrupo.SQL.Clear;
          ibGrupo.SQL.Add('SELECT * FROM TBLGRUPO ORDER BY IDGRUPO DESC');
          ibGrupo.Open;

          lbl_edtCodigo.Text := IntToStr(ibGrupo.FieldByName('IDGRUPO').AsInteger + 1);

      end;{if}

    end;{if}

  end;{with}

end;

procedure TfrmGrupoeSubgrupo.ibeaAlterarClick(Sender: TObject);

begin

  with dmModule do begin


    if ibeaNovo.Caption = '&Gravar' Then begin

      ConfirmaMSG := Application.MessageBox('Deseja cancelar est� opera��o?'
                + #13 + 'Clique em Sim para cancelar e N�o para continuar.','Notifica��o: Cancelar Opera��o', MB_YESNO + MB_ICONQUESTION);

      if ConfirmaMSG = 6 Then begin

        lbl_edtCodigo.Text := '';
        ibeaNovo.Caption := '&Novo';
        DesabilitaGrupo(False);
        DesabilitaSubGrupo(False);

      end;{if}

      end else begin

  /////////////////////////////////////////////////////////////////////////////////

     //avisa se nao houver registro para alteracao
     if ibGrupo.RecordCount < 1 Then begin

     ConfirmaMSG := Application.MessageBox('N�o existe registro para ser alterado!!'
                + #13 + 'Clique em Ok para Retornar a opera��o normal.','Notifica��o: Cancelar Opera��o', MB_OK + MB_ICONWARNING);

      ibeaNovo.Caption := '&Novo';
      lbl_edtCodigo.Clear;
      DesabilitaGrupo(False);
      dbgGrupo.Enabled := False;
      dbgSubgrupo.Enabled := False;

     end else begin

  /////////////////////////////////////////////////////////////////////////////////

        if lbl_edtGrupo.Text = '' Then begin
           ConfirmaMSG := Application.MessageBox('� necess�rio selecionar um registro para ser alterado!!'
                      + #13 + 'Clique em Ok para Retornar a opera��o normal.','Notifica��o: Cancelar Opera��o', MB_OK + MB_ICONWARNING);
          ibeaAlterar.Caption := '&Alterar';

        end else begin


////////////////////////////////////////////////////////////////////////////////

      //rotina para cancelar ou nao a operacao
        if ibeaNovo.Caption = '&Gravar' Then begin

          ConfirmaMSG := Application.MessageBox('Deseja cancelar esta opera��o?'
                  + #13 + 'Clique em Sim para cancelar e N�o para continuar.','Notifica��o: Cancelar Opera��o', MB_YESNO + MB_ICONQUESTION);

          if ConfirmaMSG = 6 Then begin

            //RESTAURAR OS CAMPOS
            ibeaNovo.Caption := '&Novo';
            ibeaNovo.Enabled := True;
            ibeaExcluir.Enabled := True;
            DesabilitaGrupo(False);
            DesabilitaSubGrupo(False);
            dbgGrupo.Enabled := False;
            dbgSubgrupo.Enabled := False;
            lbl_edtSubgrupo.Clear;
            lbl_edtCodigo.Clear;

          end;{if}

        end else begin


    ////////////////////////////////////////////////////////////////////////////////

          if ibeaAlterar.Caption = '&Atualizar' Then begin

            ConfirmaMSG := Application.MessageBox('Alterar esse Registro?','Notifica��o:Exclus�o de Registro', MB_YESNO + mb_DefButton1+MB_ICONQUESTION);

            if ConfirmaMSG = 6 Then begin

              AlteraCadastro;

              Commit(ibGrupo);

              ExecSELECT;

              ibSubgrupo.Close;
              ibSubgrupo.SQL.Clear;
              ibSubgrupo.SQL.Add('SELECT IDSUB,IDSUBGRUPO,NOMESUBGRUPO FROM TBLSUBGRUPO WHERE IDSUBGRUPO=''' + IntToStr(IDGrupo) + '''');
              ibSubgrupo.Open;

            end;

            ibeaAlterar.Caption := '&Alterar';

          end else begin

            ibeaAlterar.Caption := '&Atualizar';
            DesabilitaGrupo(True);
            DesabilitaSubGrupo(True);


          end;{if}

        end;{if}

       end;{if}

      end;{if}

    end;{if}
    
  end;{with}

end;

procedure TfrmGrupoeSubgrupo.ibeaIncluirClick(Sender: TObject);
begin

  with dmModule do begin

   //grava no field idsubgrupo o vlr trazido na varivel idgrupo.


    ibSubgrupo.Close;
    ibSubgrupo.SQL.Clear;
    ibSubgrupo.SQL.Add('INSERT INTO TBLSUBGRUPO '
    + '(IDGRUPO,NOMESUBGRUPO) values'
    + ' (''' + IntToStr(IDGrupo) + ''',''' + lbl_edtSubgrupo.Text + ''')');
    ibSubgrupo.ExecSQL;

    Commit(ibSubgrupo);


    ExecSELECTSubgrupo;
    ExecSELECT;// traz na grid os dados do grupo

    lbl_edtSubgrupo.Clear;
    lbl_edtSubgrupo.SetFocus;

  end;{with}

end;

procedure TfrmGrupoeSubgrupo.ibeaPrimeiroClick(Sender: TObject);
begin
  with dmModule do begin

     if ibeaAlterar.Caption = '&Atualizar' Then begin

        ConfirmaMSG := Application.MessageBox('Deseja cancelar est� opera��o?'
                        + #13 + 'Clique em Sim para cancelar e N�o para continuar.','Notifica��o: Cancelar Opera��o', MB_YESNO + MB_ICONQUESTION);

      if ConfirmaMSG = 6 Then begin


        //RESTAURAR OS CAMPOS
        ibeaAlterar.Caption := '&Alterar';
        ibeaNovo.Enabled := True;
        ibeaExcluir.Enabled := True;
        DesabilitaGrupo(False);
        DesabilitaSubGrupo(False);
        dbgGrupo.Enabled := False;
        dbgSubgrupo.Enabled := False;
        lbl_edtSubgrupo.Clear;

      end;{if}

     end else begin

////////////////////////////////////////////////////////////////////////////////

        if ibeaNovo.Caption = '&Gravar' Then begin

          ConfirmaMSG := Application.MessageBox('Deseja cancelar est� opera��o?'
            + #13 + 'Clique em Sim para cancelar e N�o para continuar.','Notifica��o: Cancelar Opera��o', MB_YESNO + MB_ICONQUESTION);

        if ConfirmaMSG = 6 Then begin
          //RESTAURAR OS CAMPOS
          
          ibeaNovo.Caption := '&Novo';
          ibeaAlterar.Enabled := True;
          ibeaExcluir.Enabled := True;
          DesabilitaGrupo(False);
          DesabilitaSubGrupo(False);
          dbgGrupo.Enabled := False;
          dbgSubgrupo.Enabled := False;
          lbl_edtCodigo.Clear;

        end;{if}

            if (ibGrupo.Active) and (ibSubgrupo.Active) Then begin

              ibGrupo.First;
              ibSubgrupo.First;
              ExibeGrupo;
              ExibeSubgrupo;

           end;{if}

       end;{if}

     end;{if}

  end;{with}

end;

procedure TfrmGrupoeSubgrupo.ibeaAnteriorClick(Sender: TObject);
begin
  with dmModule do begin
     if ibeaAlterar.Caption = '&Atualizar' Then begin

        ConfirmaMSG := Application.MessageBox('Deseja cancelar est� opera��o?'
                        + #13 + 'Clique em Sim para cancelar e N�o para continuar.','Notifica��o: Cancelar Opera��o', MB_YESNO + MB_ICONQUESTION);

          if ConfirmaMSG = 6 Then begin


            //RESTAURAR OS CAMPOS
            ibeaAlterar.Caption := '&Alterar';
            DesabilitaGrupo(False);

          end;{if}

          end else begin
////////////////////////////////////////////////////////////////////////////////

        if ibeaNovo.Caption = '&Gravar' Then begin

          ConfirmaMSG := Application.MessageBox('Deseja cancelar est� opera��o?'
            + #13 + 'Clique em Sim para cancelar e N�o para continuar.','Notifica��o: Cancelar Opera��o', MB_YESNO + MB_ICONQUESTION);

        if ConfirmaMSG = 6 Then begin
          //RESTAURAR OS CAMPOS
          
          ibeaNovo.Caption := '&Novo';
          ibeaAlterar.Enabled := True;
          ibeaExcluir.Enabled := True;
          DesabilitaGrupo(False);
          DesabilitaSubGrupo(False);
          dbgGrupo.Enabled := False;
          dbgSubgrupo.Enabled := False;
          lbl_edtCodigo.Clear;

        end;{if}

            if (ibGrupo.Active) and (ibSubgrupo.Active) Then begin

              ibGrupo.Prior;
              ibSubgrupo.Prior;
              ExibeGrupo;
              ExibeSubgrupo;

           end;{if}

       end;{if}

     end;{if}

  end;{with}

end;

procedure TfrmGrupoeSubgrupo.ibeaProximoClick(Sender: TObject);
begin

  with dmModule do begin
     if ibeaAlterar.Caption = '&Atualizar' Then begin

        ConfirmaMSG := Application.MessageBox('Deseja cancelar est� opera��o?'
                        + #13 + 'Clique em Sim para cancelar e N�o para continuar.','Notifica��o: Cancelar Opera��o', MB_YESNO + MB_ICONQUESTION);

          if ConfirmaMSG = 6 Then begin


            //RESTAURAR OS CAMPOS
            ibeaAlterar.Caption := '&Alterar';
            DesabilitaGrupo(False);

          end;{if}

          end else begin
////////////////////////////////////////////////////////////////////////////////

        if ibeaNovo.Caption = '&Gravar' Then begin

          ConfirmaMSG := Application.MessageBox('Deseja cancelar est� opera��o?'
            + #13 + 'Clique em Sim para cancelar e N�o para continuar.','Notifica��o: Cancelar Opera��o', MB_YESNO + MB_ICONQUESTION);

        if ConfirmaMSG = 6 Then begin
          //RESTAURAR OS CAMPOS
          
          ibeaNovo.Caption := '&Novo';
          ibeaAlterar.Enabled := True;
          ibeaExcluir.Enabled := True;
          DesabilitaGrupo(False);
          DesabilitaSubGrupo(False);
          dbgGrupo.Enabled := False;
          dbgSubgrupo.Enabled := False;
          lbl_edtCodigo.Clear;

        end;{if}

            if (ibGrupo.Active) and (ibSubgrupo.Active) Then begin

              ibGrupo.Next;
              ibSubgrupo.Next;
              ExibeGrupo;
              ExibeSubgrupo;

           end;{if}

       end;{if}

     end;{if}

  end;{with}
  
end;

procedure TfrmGrupoeSubgrupo.ibeaUltimoClick(Sender: TObject);
begin

  with dmModule do begin

     if ibeaAlterar.Caption = '&Atualizar' Then begin

        ConfirmaMSG := Application.MessageBox('Deseja cancelar est� opera��o?'
                        + #13 + 'Clique em Sim para cancelar e N�o para continuar.','Notifica��o: Cancelar Opera��o', MB_YESNO + MB_ICONQUESTION);

          if ConfirmaMSG = 6 Then begin


            //RESTAURAR OS CAMPOS
            ibeaAlterar.Caption := '&Alterar';
            DesabilitaGrupo(False);

          end;{if}

          end else begin
////////////////////////////////////////////////////////////////////////////////

        if ibeaNovo.Caption = '&Gravar' Then begin

          ConfirmaMSG := Application.MessageBox('Deseja cancelar est� opera��o?'
            + #13 + 'Clique em Sim para cancelar e N�o para continuar.','Notifica��o: Cancelar Opera��o', MB_YESNO + MB_ICONQUESTION);

        if ConfirmaMSG = 6 Then begin
          //RESTAURAR OS CAMPOS
          
          ibeaNovo.Caption := '&Novo';
          ibeaAlterar.Enabled := True;
          ibeaExcluir.Enabled := True;
          DesabilitaGrupo(False);
          DesabilitaSubGrupo(False);
          dbgGrupo.Enabled := False;
          dbgSubgrupo.Enabled := False;
          lbl_edtCodigo.Clear;

        end;{if}

            if (ibGrupo.Active) and (ibSubgrupo.Active) Then begin

              ibGrupo.Last;
              ibSubgrupo.Last;
              ExibeGrupo;
              ExibeSubgrupo;

           end;{if}

       end;{if}

     end;{if}

  end;{with}

end;

procedure TfrmGrupoeSubgrupo.cboGrupoClick(Sender: TObject);
begin

  DesabilitaSubGrupo(True);
  ibeaIncluir.Enabled := True;
  
  with dmModule do begin


      If cboGrupo.ItemIndex = -1 Then begin //senao houver registro atribui 0 na variavel string

      //  Erro := True;

        StringGrupo       := ' ''0'',';

      end else begin  //senao atribui o item selecionado do combo na variavel classgrupo
        ClassGrupo         := TClasseCombo(cboGrupo.Items.Objects[cboGrupo.ItemIndex] );        StringGrupo        := ' ''' + InttoStr( ClassGrupo.ID ) + ''',';//converte o vlr armazenado na variavel classgrupo e atribui na variavel string

      end;{if}

      // ao clicar no combo sera feita a select do grupo selecionado onde o id da variavel classe  � igual ao vlr do field idgrupo
      ibGrupo.Close;
      ibGrupo.SQL.Clear;
      ibGrupo.SQL.Add('SELECT * FROM TBLGRUPO WHERE IDGRUPO=''' + IntToStr(ClassGrupo.ID) + '''');
      ibGrupo.Open;

      IDGrupo := ibGrupo.FieldByName('IDGRUPO').AsInteger;//atribui na variavel idgrupo o vlr da variavel classgrupo

  end;{with}

end;

procedure TfrmGrupoeSubgrupo.dbgGrupoCellClick(Column: TColumn);
begin
  with dmModule do begin

    ExibeGrupo;
    dbgSubgrupo.Enabled := True;
    cboGrupo.Enabled := True;
    ibeaIncluir.Enabled := True;


  end;{with}

end;

procedure TfrmGrupoeSubgrupo.dbgSubgrupoCellClick(Column: TColumn);
begin
  with dmModule do begin

    ExibeSubgrupo;

  end;{with}

end;

procedure TfrmGrupoeSubgrupo.AlterarSubGrupoClick(Sender: TObject);
var
StringSubGrupo : String;
begin


  with dmModule do begin

   StringSubGrupo := lbl_edtSubgrupo.Text;

   PromptString(Self,'Altera��o de SubGrupo','Informe o nome para o SubGrupo',StringSubGrupo);

       If (StringSubGrupo <> UpperCase(lbl_edtSubgrupo.Text)) Then begin
          ibSubgrupo.Close;
          ibSubgrupo.SQL.Clear;
          ibSubgrupo.SQL.Add('UPDATE TBLSUBGRUPO SET'
          + ' NOMESUBGRUPO = ''' + StringSubGrupo + ''' WHERE IDSUB=''' + IntToStr(IDSubgrupo) + '''');
          ibSubgrupo.ExecSQL;

          Commit(ibSubgrupo);

          //select para trazer o subgrupo atraves do id
          ibSubgrupo.Close;
          ibSubgrupo.SQL.Clear;
          ibSubgrupo.SQL.Add('SELECT IDSUB,IDSUBGRUPO,NOMESUBGRUPO FROM TBLSUBGRUPO WHERE IDSUBGRUPO=''' + IntToStr(IDGrupo) + '''');
          ibSubgrupo.Open;

          lbl_edtSubgrupo.Text := ibSubgrupo.FieldByName('NOMESUBGRUPO').AsString;

      end; {if}

   end;
   
end;

end.
