unit untPosVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, IBEAntialiasButton,
  classComboBox;

type
  TfrmPosVenda = class(TForm)
    dbgPosVenda: TDBGrid;
    lbl_edtCodCartao: TLabeledEdit;
    lbl_edtCodBarras: TLabeledEdit;
    cboProd: TComboBox;
    lbl_Prod: TLabel;
    ibeaSair: TIBEAntialiasButton;
    lbl_edtQtde: TLabeledEdit;
    lbl_edtVlrUnit: TLabeledEdit;
    lbl_edtVlrTotal: TLabeledEdit;
    ibeaIncluir: TIBEAntialiasButton;
    ibeaExcluir: TIBEAntialiasButton;
    ibeaConsulta: TIBEAntialiasButton;
    procedure ibeaSairClick(Sender: TObject);
    procedure ibeaConsultaClick(Sender: TObject);
    procedure ExecSELECTProdutos;
    procedure FormShow(Sender: TObject);
    procedure lbl_edtCodBarrasChange(Sender: TObject);
    procedure lbl_edtCodBarrasKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtQtdeExit(Sender: TObject);
    procedure ibeaIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPosVenda: TfrmPosVenda;
  IDClassProd : TClasseCombo;
  ClassVendaProduto   : TClasseCombo;
  StringProd          : String;
  ValorUnit           : String;
  ValorTotal          : String;
  Qtde                : String;
  ConfirmaGravacao    : Integer;
  LocalEstoque : String;

implementation

uses Produtos, untdmModule, DB, funcPosto;

{$R *.dfm}

procedure TfrmPosVenda.ibeaSairClick(Sender: TObject);
begin
Close;
end;

procedure TfrmPosVenda.ibeaConsultaClick(Sender: TObject);
begin
frmProdutos.ShowModal;
end;

procedure TfrmPosVenda.ExecSELECTProdutos;

begin

  with dmModule do begin

    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS');
    ibProdutos.Open;

    cboProd.Clear;

    while not ibProdutos.Eof do begin

      IDClassProd := TClasseCombo.Create;
      IDClassProd.ID := ibProdutos.FieldByName('IDPROD').AsInteger;
      cboProd.Items.AddObject(ibProdutos.FieldByName('NOME').AsString,IDClassProd);
      ibProdutos.Next;

    end;//while

  end;//with

end;

procedure TfrmPosVenda.FormShow(Sender: TObject);
begin

  with dmModule do begin

    ExecSELECTProdutos;

  end;//with

end;

procedure TfrmPosVenda.lbl_edtCodBarrasChange(Sender: TObject);

var
i : Integer;

begin

  with dmModule do begin

    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE CADPRODUTOS.CODBARRAS=''' + lbl_edtCodBarras.Text + '''');
    ibProdutos.Open;

    lbl_edtVlrUnit.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);

 //   lbl_edtCodProd.Text := ibProdutos.FieldByName('IDPROD').AsString;
  //  lbl_edtEstoque.Text := ibProdutos.FieldByName('Estoque').AsString;

    for i:=0 to cboProd.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
      if TClasseCombo( cboProd.Items.Objects[i]).ID = ibProdutos.FieldByName('IDPROD').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
        cboProd.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
        Break;
      end else begin
        cboProd.ClearSelection;//LIMPA A SELECAO. }
      end;{if}
    end;{for}

  end;//with

end;

procedure TfrmPosVenda.lbl_edtCodBarrasKeyPress(Sender: TObject;
  var Key: Char);
begin

 if key=#13 Then begin

   lbl_edtQtde.SetFocus;

 end;//if

end;

procedure TfrmPosVenda.lbl_edtQtdeExit(Sender: TObject);

   var
    Valor1 :Real;
    Valor2 :Real;

begin

 if (cboProd.Text <> '') Then begin

  if lbl_edtQtde.Text <> '' Then begin// se for em branco executa rotina abaixo.

    if (Pos(',',lbl_edtQtde.Text)>0) and (lbl_edtQtde.Text <> '') Then begin

      Valor1 := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));
      Valor2 := StrToFloat(StringReplace(lbl_edtVlrUnit.Text,ThousandSeparator,'',[rfReplaceAll]));

      lbl_edtVlrTotal.Text := FormatFloat(',0.00',(Valor2 * Valor1));

    end else begin

      Valor1 := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));
      Valor2 := StrToFloat(StringReplace(lbl_edtVlrUnit.Text,ThousandSeparator,'',[rfReplaceAll]));
       lbl_edtVlrTotal.Text := FormatFloat(',0.00',(Valor2 * Valor1));

    end;{if}

  end;{if}

 end;{if cbo produto}

end;

procedure TfrmPosVenda.ibeaIncluirClick(Sender: TObject);

var
NomeProduto, TotalCusto : String;
QtdeVendida, Custo : Real;

begin

  with dmModule do begin

    ConfirmaGravacao := Application.MessageBox('Confirma Lançamentos','Notificação: Inclusão de Produtos',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

    if ConfirmaGravacao = 6 Then begin


    If cboProd.ItemIndex = -1 Then begin

      StringProd := ' '' 0 '',';
      TotalCusto := '0';

    end else begin

      ClassVendaProduto   := TClasseCombo( cboProd.Items.Objects[cboProd.ItemIndex] );
      StringProd          := ' ''' + InttoStr( ClassVendaProduto.ID ) + ''',';


      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT CADPRODUTOS.*,'
      + 'LOCALESTOCAGEM.NOME As Estoque FROM CADPRODUTOS '
      + 'INNER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL=LOCALESTOCAGEM.IDESTOQUE '
      + 'WHERE IDPROD=''' + InttoStr( ClassVendaProduto.ID ) + '''');
      ibProdutos.Open;

      LocalEstoque := ibProdutos.FieldByName('Estoque').AsString;
      NomeProduto  := ibProdutos.FieldByName('NOME').AsString;


      Custo := StrtoFloat(StringReplace(FloattoStr(ibProdutos.FieldByName('VALORCUSTO').AsFloat),ThousandSeparator,'',[rfReplaceAll]));
      QtdeVendida := StrToFloat(StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]));
      Custo := QtdeVendida * Custo;

      TotalCusto := StringReplace(FloattoStr(Custo),ThousandSeparator,'',[rfReplaceAll]);
      TotalCusto := StringReplace(TotalCusto,DecimalSeparator,'.',[rfReplaceAll]);


    end;


      ValorUnit := StringReplace(lbl_edtVlrUnit.Text,ThousandSeparator,'',[rfReplaceAll]);
      ValorUnit := StringReplace(ValorUnit,DecimalSeparator,'.',[rfReplaceAll]);
      if ValorUnit  = '' Then
         ValorUnit := '0';

      ValorTotal := StringReplace(lbl_edtVlrTotal.Text,ThousandSeparator,'',[rfReplaceAll]);
      ValorTotal := StringReplace(ValorTotal,DecimalSeparator,'.',[rfReplaceAll]);
      if ValorTotal  = '' Then
         ValorTotal := '0';


      Qtde := StringReplace(lbl_edtQtde.Text,ThousandSeparator,'',[rfReplaceAll]);
      Qtde := StringReplace(Qtde,DecimalSeparator,'.',[rfReplaceAll]);
      if Qtde  = '' Then
         Qtde := '0';

      ibPosVenda.Close;
      ibPosVenda.SQL.Clear;
      ibPosVenda.SQL.Add('INSERT INTO TBLPOSVENDA'
      + '(CODCARTAO,IDPROD,NOMEPROD,VLRUNITARIO,QTDE,VLRTOTAL,DATA) values '
      + '(''' + lbl_edtCodCartao.Text +  ''','
      +StringProd
      + ' ''' + cboProd.Text + ''','
      + ' ''' + ValorUnit + ''','
      + ' ''' + Qtde + ''','
      + ' ''' + ValorTotal + ''','
      + ' ''' + FormatDateTime('mm-dd-yyyy',Now) + ''')');
      ibPosVenda.ExecSQL;

////////////////////////////////////////////////////////////////////////////////

      //    NOMEANIMAL,
          ibServsVenda.Close;
          ibServsVenda.SQL.Clear;
          ibServsVenda.SQL.Add('INSERT INTO TBLSERVICOSVENDAS '
          + ' (DATA,HORA,IDPROD,ESTOQUE,VLRTOTAL,VLRUNIT,TOTALCUSTO,'
          + 'NOMEPROD,CODPOSVENDA,QTDE) values '
          + ' (''' + FormatDateTime('mm-dd-yyyy',now) + ''','
          + ' ''' + FormatDateTime('hh:mm:ss',now) + ''','
          + StringProd
          + ' ''' + LocalEstoque + ''','
          + ' ''' + ValorTotal + ''','
          + ' ''' + ValorUnit + ''','
          + ' ''' + TotalCusto + ''','
          + ' ''' + NomeProduto + ''','
          + ' ''' + lbl_edtCodCartao.Text + ''','
          + ' ''' + Qtde + ''')');
          ibServsVenda.ExecSQL;
        //  Commit(ibServsVenda);

////////////////////////////////////////////////////////////////////////////////



    end;//if confirmagravacao

  end;//with

end;

end.
