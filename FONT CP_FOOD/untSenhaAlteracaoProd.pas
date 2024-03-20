unit untSenhaAlteracaoProd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BmsXPButton, StdCtrls, ExtCtrls, IBQuery;

type
  TfrmSenhaAlteracaoProd = class(TForm)
    lbl_edtSenha: TLabeledEdit;
    ibeaOk: TBmsXPButton;
    ibeaSair: TBmsXPButton;
    procedure ibeaSairClick(Sender: TObject);
    procedure Commit(IBQueryExec : TIBQuery);
    procedure ibeaOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSenhaAlteracaoProd: TfrmSenhaAlteracaoProd;

implementation

uses untdmModule, untProdutos_MPrima;

{$R *.dfm}

procedure TfrmSenhaAlteracaoProd.ibeaSairClick(Sender: TObject);
begin
Close;
end;

procedure TfrmSenhaAlteracaoProd.Commit(IBQueryExec : TIBQuery);
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

procedure TfrmSenhaAlteracaoProd.ibeaOkClick(Sender: TObject);
begin

  with dmModule do begin

    if lbl_edtSenha.Text <> '' Then begin

      Commit(ibUser);
      ibUser.Close;
      ibUser.SQL.Clear;
      ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE SENHA=''' + lbl_edtSenha.Text + '''');
      ibUser.Open;

      if ibUser.RecordCount > 0 Then begin

        if frmProd_MPrima.Showing Then begin

          if ibUser.FieldByName('ALTERACAODEPRODUTOS').AsString = 'Bloqueado' Then begin

            ShowMessage('Alteração não permitida');
            frmSenhaAlteracaoProd.Close;
            frmProd_MPrima.Close;

          end else begin

            frmSenhaAlteracaoProd.Close;

          end;

        end;

      end else begin

          ShowMessage('Senha não existente');
          frmSenhaAlteracaoProd.Close;

      end;//if recordcount

    end;//if label senha

  end;//with

end;

end.
