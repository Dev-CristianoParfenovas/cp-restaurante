unit untDadosEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, IBQuery, Buttons, BmsXPButton, BmsXPTopBar;

type
  TfrmDadosEmpresa = class(TForm)
    lbl_edtNome: TLabeledEdit;
    lbl_edtEndereco: TLabeledEdit;
    lbl_edtNumero: TLabeledEdit;
    lbl_edtBairro: TLabeledEdit;
    lbl_edtEstado: TLabeledEdit;
    lbl_edtTelefone: TLabeledEdit;
    lbl_edtDDD: TLabeledEdit;
    lbl_edtNomeFantasia: TLabeledEdit;
    ibeaGravar: TBmsXPButton;
    ibeaAlterar: TBmsXPButton;
    ibeaSair: TSpeedButton;
    BmsXPTopBar1: TBmsXPTopBar;
    procedure Commit(IBQueryExec : TIBQuery);
    procedure ExecSELECT;
    procedure AlteraDados;
    procedure ibeaGravarClick(Sender: TObject);
    procedure ibeaSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ibeaAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDadosEmpresa: TfrmDadosEmpresa;
  ConfirmaDados : Integer;
  
implementation

uses untdmModule, DB;

{$R *.dfm}

procedure TfrmDadosEmpresa.Commit(IBQueryExec : TIBQuery);

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


procedure TfrmDadosEmpresa.ExecSELECT;

begin

  with dmModule do begin

    Commit(ibDadosEmpresa);
    ibDadosEmpresa.Close;
    ibDadosEmpresa.SQL.Clear;
    ibDadosEmpresa.SQL.Add('SELECT * FROM TBLDADOSEMPRESA');
    ibDadosEmpresa.Open;

    lbl_edtNome.Text       := ibDadosEmpresa.FieldByName('NOME').AsString;
    lbl_edtEndereco.Text   := ibDadosEmpresa.FieldByName('ENDERECO').AsString;
    lbl_edtNumero.Text     := ibDadosEmpresa.FieldByName('NUMERO').AsString;
    lbl_edtBairro.Text     := ibDadosEmpresa.FieldByName('BAIRRO').AsString;
    lbl_edtEstado.Text     := ibDadosEmpresa.FieldByName('ESTADO').AsString;
    lbl_edtDDD.Text        := ibDadosEmpresa.FieldByName('DDD').AsString;
    lbl_edtTelefone.Text   := ibDadosEmpresa.FieldByName('TELEFONE').AsString;

  end;//with

end;

procedure TfrmDadosEmpresa.AlteraDados;

begin

  with dmModule do begin

    ibDadosEmpresa.Close;
    ibDadosEmpresa.SQL.Clear;
    ibDadosEmpresa.SQL.Add('UPDATE TBLDADOSEMPRESA SET '
    + 'NOME = ''' + lbl_edtNome.Text + ''','
    + 'NOMEFANTASIA = ''' + lbl_edtNomeFantasia.Text + ''','
    + 'ENDERECO = ''' + lbl_edtEndereco.Text + ''','
    + 'NUMERO = ''' + lbl_edtNumero.Text + ''','
    + 'BAIRRO = ''' + lbl_edtBairro.Text + ''','
    + 'ESTADO = ''' + lbl_edtEstado.Text + ''','
    + 'DDD = ''' + lbl_edtDDD.Text + ''','
    + 'TELEFONE = ''' + lbl_edtTelefone.Text + '''');
    ibDadosEmpresa.ExecSQL;
    Commit(ibDadosEmpresa);

  end;//with

end;

procedure TfrmDadosEmpresa.ibeaGravarClick(Sender: TObject);
begin

  with dmModule do begin

    ibDadosEmpresa.Close;
    ibDadosEmpresa.SQL.Clear;
    ibDadosEmpresa.SQL.Add('SELECT * FROM TBLDADOSEMPRESA');
    ibDadosEmpresa.Open;

    if ibDadosEmpresa.RecordCount > 0 Then begin

      Application.MessageBox('Atenção já existe registro, para continuar clique em alterar','Notificação:registro existente',+MB_OK+MB_DEFBUTTON1+MB_ICONINFORMATION);

    end else begin

      ConfirmaDados := Application.MessageBox('Confirma Dados?','Dados da Empresa',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

      if ConfirmaDados = 6 Then begin

        ibDadosEmpresa.Close;
        ibDadosEmpresa.SQL.Clear;
        ibDadosEmpresa.SQL.Add('INSERT INTO TBLDADOSEMPRESA'
        + '(NOME,NOMEFANTASIA,ENDERECO,NUMERO,BAIRRO,ESTADO,DDD,TELEFONE) values '
        + ' (''' + lbl_edtNome.Text + ''',''' + lbl_edtNomeFantasia.Text + ''','
        + ' ''' + lbl_edtEndereco.Text + ''','
        + ' ''' + lbl_edtNumero.Text + ''',''' + lbl_edtBairro.Text + ''','
        + ' ''' + lbl_edtEstado.Text + ''',''' + lbl_edtDDD.Text + ''','
        + ' ''' + lbl_edtTelefone.Text + ''')');
        ibDadosEmpresa.ExecSQL;
        Commit(ibDadosEmpresa);

      end;//if confirma dados

    end;//if record count

  {  lbl_edtNome.Clear;
    lbl_edtEndereco.Clear;
    lbl_edtNumero.Clear;
    lbl_edtBairro.Clear;
    lbl_edtEstado.Clear;
    lbl_edtDDD.Clear;
    lbl_edtTelefone.Clear;  }

  end;//with

end;

procedure TfrmDadosEmpresa.ibeaSairClick(Sender: TObject);
begin
Close;
end;

procedure TfrmDadosEmpresa.FormShow(Sender: TObject);
begin

  with dmModule do begin

    ExecSELECT;

  end;//with

end;

procedure TfrmDadosEmpresa.ibeaAlterarClick(Sender: TObject);
begin

  with dmModule do begin

    ConfirmaDados := Application.MessageBox('Confirma Alteração?','Notificação: Alterar Dados',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

    if ConfirmaDados = 6 Then begin

      AlteraDados;

    end;//if confirma dados

  end;//with

end;

end.
