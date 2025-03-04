unit untNFPaulista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ACBrBase, ACBrValidador, ExtCtrls;

type
  TfrmNFPaulista = class(TForm)
    lbl_Negrito: TLabel;
    ACBrValidador1: TACBrValidador;
    lbl_Nome: TLabeledEdit;
    lbl_Cpf: TLabeledEdit;
    lbl_Cnpj: TLabeledEdit;
    Label1: TLabel;
    procedure lbl_NomeKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_CpfKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_CnpjKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure lbl_NomeEnter(Sender: TObject);
    procedure lbl_CpfEnter(Sender: TObject);
    procedure lbl_CnpjEnter(Sender: TObject);
    procedure lbl_NomeExit(Sender: TObject);
    procedure lbl_CpfExit(Sender: TObject);
    procedure lbl_CnpjExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNFPaulista: TfrmNFPaulista;

implementation

uses untRecebeLoja, untModuloRestaurante;

{$R *.dfm}

procedure TfrmNFPaulista.lbl_NomeKeyPress(Sender: TObject; var Key: Char);
begin

  if key = #13 Then begin

    lbl_Cpf.SetFocus;

  end;

end;

procedure TfrmNFPaulista.lbl_CpfKeyPress(Sender: TObject; var Key: Char);
begin

  if key = #13 Then begin

    lbl_Cnpj.SetFocus;

    if lbl_Cnpj.Text <> '' Then begin

      lbl_Cnpj.Clear;

    end;

  end;

end;

procedure TfrmNFPaulista.lbl_CnpjKeyPress(Sender: TObject; var Key: Char);
begin

  if key = #13 Then begin

    lbl_Nome.SetFocus;

    if lbl_Cpf.Text <> '' Then begin

      lbl_Cpf.Clear;

    end;

  end;

end;

procedure TfrmNFPaulista.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

var

DocOK,DocInv : String;

begin

case key of

  VK_F1 :begin

    if frmRestaurante.Showing Then begin

       if lbl_Nome.Text <> '' Then begin

         frmRestaurante.lbl_Cliente.Caption := lbl_Nome.Text;

       end else begin

         frmRestaurante.lbl_Cliente.Caption := '';

       end;

       if lbl_Cpf.Text <> '' Then begin

          //formatar
          ACBrValidador1.TipoDocto := TACBrValTipoDocto( 0 ) ;
          ACBrValidador1.Documento   := lbl_Cpf.Text ;
          lbl_Cpf.Text := ACBrValidador1.Formatar ;

          frmRestaurante.lbl_edtCnpjCpf.Caption := lbl_Cpf.Text;
          frmRestaurante.lbl_CnpjCpfP.Caption := 'CPF:';

         //validar
          ACBrValidador1.Documento   := lbl_Cpf.Text ;

          ///DocOK  := 'Doc.OK';

          if ACBrValidador1.Validar then
        ///  ShowMessage('Ok')
            else
             DocInv  := ACBrValidador1.MsgErro;
             ShowMessage(DocInv);
             lbl_Cpf.Text := '';
        end;

       if lbl_Cnpj.Text <> '' Then begin


          //formatar
          ACBrValidador1.TipoDocto := TACBrValTipoDocto( 1 ) ;
          ACBrValidador1.Documento   := lbl_Cnpj.Text;
          lbl_Cnpj.Text := ACBrValidador1.Formatar;

          frmRestaurante.lbl_edtCnpjCpf.Caption := lbl_Cnpj.Text;
          frmRestaurante.lbl_CnpjCpfP.Caption := 'CNPJ:';

         //validar
          ACBrValidador1.Documento   := lbl_Cnpj.Text ;

          ///DocOK  := 'Doc.OK';

          if ACBrValidador1.Validar then
        ///  ShowMessage('Ok')
            else
             DocInv  := ACBrValidador1.MsgErro;
             ShowMessage(DocInv);
             lbl_Cnpj.Text := '';
       end;

       if DocInv = '' Then begin

         frmNFPaulista.Close;

       end else begin

         frmRestaurante.lbl_CnpjCpfP.Caption := '';
         frmRestaurante.lbl_edtCnpjCpf.Caption := '';
         frmRestaurante.lbl_CodCliente.Caption := '';

       end;

     end;//if frmvendaslojashowing

   { if frmRecebeLoja.Showing Then begin

       if lbl_Nome.Text <> '' Then begin

         frmRecebeLoja.lbl_Cliente.Caption := lbl_Nome.Text;

       end else begin

         frmRecebeLoja.lbl_Cliente.Caption := '.';

       end;

       if lbl_Cpf.Text <> '' Then begin

          //formatar
          ACBrValidador1.TipoDocto := TACBrValTipoDocto( 0 ) ;
          ACBrValidador1.Documento   := lbl_Cpf.Text ;
          lbl_Cpf.Text := ACBrValidador1.Formatar ;

          frmRecebeLoja.lbl_edtCnpjCpf.Caption := lbl_Cpf.Text;
          frmRecebeLoja.lbl_CnpjCpfP.Caption := 'CPF:';

         //validar
          ACBrValidador1.Documento   := lbl_Cpf.Text ;

          ///DocOK  := 'Doc.OK';

          if ACBrValidador1.Validar then
        ///  ShowMessage('Ok')
            else
             DocInv  := ACBrValidador1.MsgErro;
             ShowMessage(DocInv);
             lbl_Cpf.Text := '';
        end;

       if lbl_Cnpj.Text <> '' Then begin


          //formatar
          ACBrValidador1.TipoDocto := TACBrValTipoDocto( 1 ) ;
          ACBrValidador1.Documento   := lbl_Cnpj.Text;
          lbl_Cnpj.Text := ACBrValidador1.Formatar;

          frmRecebeLoja.lbl_edtCnpjCpf.Caption := lbl_Cnpj.Text;
          frmRecebeLoja.lbl_CnpjCpfP.Caption := 'CNPJ:';

         //validar
          ACBrValidador1.Documento   := lbl_Cnpj.Text ;

          ///DocOK  := 'Doc.OK';

          if ACBrValidador1.Validar then
        ///  ShowMessage('Ok')
            else
             DocInv  := ACBrValidador1.MsgErro;
             ShowMessage(DocInv);
             lbl_Cnpj.Text := '';
       end;

       if DocInv = '' Then begin

         frmNFPaulista.Close;

       end else begin

         frmRecebeLoja.lbl_CnpjCpfP.Caption := '';
         frmRecebeLoja.lbl_edtCnpjCpf.Caption := '';
         frmRecebeLoja.lbl_Cliente.Caption := '';

       end;

         frmRecebeLoja.lbl_edtValor.SetFocus;

     end;//if frmvendaslojashowing  }

   end;//begin

  VK_F2 :begin

    frmNFPaulista.Close;

    end;//begin

  VK_ESCAPE :begin

    Close;

    end;

  end;//case

end;

procedure TfrmNFPaulista.FormShow(Sender: TObject);
begin

lbl_Nome.SetFocus;
lbl_Nome.Clear;
lbl_Cpf.Clear;
lbl_Cnpj.Clear;

end;

procedure TfrmNFPaulista.lbl_NomeEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmNFPaulista.lbl_CpfEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmNFPaulista.lbl_CnpjEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmNFPaulista.lbl_NomeExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
end;

procedure TfrmNFPaulista.lbl_CpfExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
end;

procedure TfrmNFPaulista.lbl_CnpjExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
end;

end.
