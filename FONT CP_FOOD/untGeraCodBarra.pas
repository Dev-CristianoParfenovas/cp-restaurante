unit untGeraCodBarra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Barcode, DB, IBQuery;

type
  TfrmCodBarrasAdicional = class(TForm)
    imgCodigoBarrasAD: TImage;
    Shape1: TShape;
    Label15: TLabel;
    lbl_edtNomeProduto: TLabeledEdit;
    lbl_edtCodBarra: TLabeledEdit;
    lbl_edtCodigo: TLabeledEdit;
    Image1: TImage;
    //ibeaIncluiCodBarras: TIBEAntialiasButton;
  //  ibeaSair: TIBEAntialiasButton;
    GeraCodigoBarraAD: TBarcode;

    procedure Commit(IBQueryExec : TIBQuery);
    procedure ibeaSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lbl_edtCodBarraChange(Sender: TObject);
    procedure ibeaIncluiCodBarrasClick(Sender: TObject);
    procedure lbl_edtCodBarraKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCodBarrasAdicional: TfrmCodBarrasAdicional;
  IDProduto : Integer;
  ConfirmaMSG : Integer;

implementation

uses untdmModule, funcPosto, untProdutos_MPrima;

{$R *.dfm}

procedure TfrmCodBarrasAdicional.Commit(IBQueryExec : TIBQuery);
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

procedure TfrmCodBarrasAdicional.ibeaSairClick(Sender: TObject);
begin
Close;
end;

procedure TfrmCodBarrasAdicional.FormShow(Sender: TObject);
begin

  lbl_edtCodBarra.SetFocus;
  lbl_edtCodBarra.Clear;
  lbl_edtCodigo.Clear;
  lbl_edtNomeProduto.Clear;

 // with dmModule do begin

   // if frmProdutos.Showing Then begin

   //   if frmProdutos.lbl_edtNomeProduto.Text <> '' Then begin

      //  lbl_edtCodigo.Text := frmProdutos.lbl_edtCodigo.Text;
      //  lbl_edtNomeProduto.Text := frmProdutos.lbl_edtNomeProduto.Text;

     // end;{if}

   // end;//if


   // if frmProd_MPrima.Showing Then begin

   //   if frmProd_MPrima.lbl_edtNomeProduto.Text <> '' Then begin
   //
  //      lbl_edtCodigo.Text := frmProd_MPrima.lbl_edtCodigo.Text;
  //      lbl_edtNomeProduto.Text := frmProd_MPrima.lbl_edtNomeProduto.Text;

  //    end;{if}

 //   end;//if

  //end;{with}

end;

procedure TfrmCodBarrasAdicional.lbl_edtCodBarraChange(Sender: TObject);
begin

  GeraCodigoBarraAD.Text        := lbl_edtCodBarra.Text;
  GeraCodigoBarraAD.Top         := 0;
  GeraCodigoBarraAD.Left        := 7;
  imgCodigoBarrasAD.Picture     := nil;
  GeraCodigoBarraAD.DrawBarcode(imgCodigoBarrasAD.Canvas);

end;

procedure TfrmCodBarrasAdicional.ibeaIncluiCodBarrasClick(Sender: TObject);

var

CodBarrasAd : String;

begin

  with dmModule do begin

    if lbl_edtCodBarra.Text <> '' Then begin

      Commit(ibProdutos);
      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE CODBARRASAD=''' + lbl_edtCodBarra.Text + '''');
      ibProdutos.Open;

      CodBarrasAd := ibProdutos.FieldByName('CODBARRASAD').AsString;

      if lbl_edtCodBarra.Text = CodBarrasAd Then begin

      Application.MessageBox('ATEN��O este c�digo j� existe em outro produto,digite um novo n�mero','C�digo existente',+MB_OK+MB_DEFBUTTON1+MB_ICONWARNING);
      lbl_edtCodBarra.SetFocus;

      end else if lbl_edtCodBarra.Text <> CodBarrasAd Then begin



        Commit(ibProdutos);
        ibProdutos.Close;
        ibProdutos.SQL.Clear;
        ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE IDPROD=''' + lbl_edtCodigo.Text + '''');
        ibProdutos.Open;


        if ibProdutos.FieldByName('CODBARRASAD').AsString = '' Then begin

          ConfirmaMSG := Application.MessageBox( Pchar('C�digo adicional gerado para o Produto: "' + lbl_edtNomeProduto.Text
           +'"'),'Notifica��o:Inclus�o de C�digo de Barras Adicional', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION);


          ibProdutos.Close;
          ibProdutos.SQL.Clear;
          ibProdutos.SQL.Add('UPDATE CADPRODUTOS SET '
          + 'CODBARRASAD = ''' + lbl_edtCodBarra.Text + ''' WHERE IDPROD=''' + (lbl_edtCodigo.Text) + '''');
          ibProdutos.ExecSQL;
          Commit(ibProdutos);

          lbl_edtCodBarra.Clear;

        end else begin

          ConfirmaMSG := Application.MessageBox( Pchar('O Produto: "' + lbl_edtNomeProduto.Text
           +'" j� cont�m C�digo de Barras Adicional, deseja alterar? Se Sim Clique em ok'),'Notifica��o:Alterar��o de C�digo de Barras Adicional', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION);

          if ConfirmaMSG = 6 Then begin

            ibProdutos.Close;
            ibProdutos.SQL.Clear;
            ibProdutos.SQL.Add('UPDATE CADPRODUTOS SET '
            + 'CODBARRASAD = ''' + lbl_edtCodBarra.Text + ''' WHERE IDPROD=''' + (lbl_edtCodigo.Text) + '''');
            ibProdutos.ExecSQL;
            Commit(ibProdutos);

          end;{if confirma msg}

        end;{if}

      end;//if confirmacodigo

    end;

        ibProdutos.Close;
        ibProdutos.SQL.Clear;
        ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS ORDER BY CADPRODUTOS.NOME');
        ibProdutos.Open;

        (ibProdutos.FieldByName('IDPROD') as TIntegerField).DisplayFormat           := ('0');
        (ibProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat         := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
        (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
        (ibProdutos.FieldByName('VLRPROM') as TFloatField).DisplayFormat            := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

////////////////////////////////////////////////////////////////////////////////

  end;{with}

end;

procedure TfrmCodBarrasAdicional.lbl_edtCodBarraKeyPress(Sender: TObject;
  var Key: Char);
begin
         if not ( Key In ['0'..'9','.'] ) then
           Abort;

end;

end.
