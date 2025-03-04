unit untrelTblPrecoForn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BmsXPButton, StdCtrls, classComboBox;

type
  TfrmTblPrecoForn = class(TForm)
    lbl_Forn: TLabel;
    ibeaSair: TBmsXPButton;
    ibeaAbrir: TBmsXPButton;
    cboFornecedores: TComboBox;
    procedure ibeaSairClick(Sender: TObject);
    procedure ExecSELECTFornecedor;
    procedure FormShow(Sender: TObject);
    procedure ibeaAbrirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTblPrecoForn: TfrmTblPrecoForn;
  ClassForn : TClasseCombo;
  IDClassForn : Integer;
  ClassAbreForn : TClasseCombo;

implementation

uses untdmModule, untRelTblPreco, funcPosto,DB;

{$R *.dfm}

procedure TfrmTblPrecoForn.ibeaSairClick(Sender: TObject);
begin
Close;
end;

procedure TfrmTblPrecoForn.ExecSELECTFornecedor;

begin

  with dmModule do begin

    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Fornecedores''');
    ibClassificacao.Open;
    IDClassForn := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO FORNECEDOR NA VARIAVEL.

    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + IntToStr(IDClassForn) + '''ORDER BY TBLCADASTRO.NOME');//('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + InttoStr(IDClass) + ''' ORDER BY NOME');
    ibCadastro.Open;

    cboFornecedores.Clear; //LIMPA O COMBOBOX
    while not ibCadastro.Eof do begin
      ClassForn    := TClasseCombo.Create;
      ClassForn.ID  := ibCadastro.FieldByName('IDCAD').AsInteger;
      cboFornecedores.Items.AddObject(ibCadastro.FieldByName('NOME').AsString,ClassForn);
      ibCadastro.Next;
    end;
  end;

end;

procedure TfrmTblPrecoForn.FormShow(Sender: TObject);
begin

  with dmModule do begin

    ExecSELECTFornecedor;

  end;//with

end;

procedure TfrmTblPrecoForn.ibeaAbrirClick(Sender: TObject);
begin

  with dmModule do begin

    if cboFornecedores.ItemIndex <>-1 Then begin

    ClassAbreForn := TClasseCombo( cboFornecedores.Items.Objects[cboFornecedores.ItemIndex] );

    end;//if

    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT CADPRODUTOS.*,TBLCADASTRO.NOME As NomeFornecedor,'
    + 'TBLUNIDADEDEVENDA.TIPODEUNIDADE,TBLUNIDADEDEVENDA.IDTIPOUNID FROM CADPRODUTOS '
    + 'INNER JOIN TBLCADASTRO ON CADPRODUTOS.FORNECEDOR=TBLCADASTRO.IDCAD '
    + 'INNER JOIN TBLUNIDADEDEVENDA ON CADPRODUTOS.IDUNIDVENDA=TBLUNIDADEDEVENDA.IDTIPOUNID WHERE CADPRODUTOS.FORNECEDOR=''' + IntToStr(ClassAbreForn.ID) + ''' ORDER BY CADPRODUTOS.NOME');
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

       qrl_DatadeEmissao.Caption := FormatDateTime('dd/mm/yyyy',Now);

       { qrdbData.DataSet    := ibVPistaProd;
        qrdbData.DataField  := ibVPistaProd.FieldByName('DATA').FieldName;

        qrdbHora.DataSet    := ibVPistaProd;
        qrdbHora.DataField  := ibVPistaProd.FieldByName('HORA').FieldName; }

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

end.
