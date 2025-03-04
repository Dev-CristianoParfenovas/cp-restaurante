unit untPimaco6089Variada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, classComboBox,
  IBQuery, ComCtrls, Data.DB;

type
  TfrmPimaco6089Variada = class(TForm)
    dbgProdutos: TDBGrid;
    GroupBox1: TGroupBox;
    ckEtiqueta1: TCheckBox;
    ckEtiqueta2: TCheckBox;
    ckEtiqueta3: TCheckBox;
    ckEtiqueta4: TCheckBox;
    ckEtiqueta5: TCheckBox;
    ckEtiqueta6: TCheckBox;
    ckEtiqueta7: TCheckBox;
    ckEtiqueta8: TCheckBox;
    ckEtiqueta9: TCheckBox;
    ckEtiqueta10: TCheckBox;
    ckEtiqueta16: TCheckBox;
    ckEtiqueta11: TCheckBox;
    ckEtiqueta17: TCheckBox;
    ckEtiqueta12: TCheckBox;
    ckEtiqueta18: TCheckBox;
    ckEtiqueta13: TCheckBox;
    ckEtiqueta19: TCheckBox;
    ckEtiqueta14: TCheckBox;
    ckEtiqueta20: TCheckBox;
    ckEtiqueta15: TCheckBox;
    ckEtiqueta26: TCheckBox;
    ckEtiqueta21: TCheckBox;
    ckEtiqueta27: TCheckBox;
    ckEtiqueta22: TCheckBox;
    ckEtiqueta28: TCheckBox;
    ckEtiqueta23: TCheckBox;
    ckEtiqueta29: TCheckBox;
    ckEtiqueta24: TCheckBox;
    ckEtiqueta30: TCheckBox;
    ckEtiqueta25: TCheckBox;
    ckEtiqueta46: TCheckBox;
    ckEtiqueta47: TCheckBox;
    ckEtiqueta41: TCheckBox;
    ckEtiqueta42: TCheckBox;
    ckEtiqueta48: TCheckBox;
    ckEtiqueta43: TCheckBox;
    ckEtiqueta49: TCheckBox;
    ckEtiqueta44: TCheckBox;
    ckEtiqueta50: TCheckBox;
    ckEtiqueta45: TCheckBox;
    ckEtiqueta36: TCheckBox;
    ckEtiqueta31: TCheckBox;
    ckEtiqueta37: TCheckBox;
    ckEtiqueta32: TCheckBox;
    ckEtiqueta38: TCheckBox;
    ckEtiqueta33: TCheckBox;
    ckEtiqueta39: TCheckBox;
    ckEtiqueta34: TCheckBox;
    ckEtiqueta40: TCheckBox;
    ckEtiqueta35: TCheckBox;
    ckEtiqueta56: TCheckBox;
    ckEtiqueta51: TCheckBox;
    ckEtiqueta57: TCheckBox;
    ckEtiqueta52: TCheckBox;
    ckEtiqueta58: TCheckBox;
    ckEtiqueta53: TCheckBox;
    ckEtiqueta59: TCheckBox;
    ckEtiqueta54: TCheckBox;
    ckEtiqueta60: TCheckBox;
    ckEtiqueta55: TCheckBox;
    cboProdutos: TComboBox;
    lbl_edtCodBarras: TLabeledEdit;
    lbl_edtRef: TLabeledEdit;
    lbl_edtVlrVenda: TLabeledEdit;
    lbl_VctoLote: TLabel;
    dtpVctoLote: TDateTimePicker;
    procedure ibeaSairClick(Sender: TObject);
    procedure Commit(IBQueryExec : TIBQuery);
    procedure LimpaCampo;
    procedure LimparBotoes;
    Procedure CriaCodigo(Cod : String; Imagem : TCanvas);
    procedure ExecSELECT;
    procedure ExecSELECTEtiquetas;
    procedure GravarEtiqueta;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lbl_edtRefExit(Sender: TObject);
    procedure lbl_edtRefKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtCodBarrasChange(Sender: TObject);
    procedure lbl_edtCodBarrasKeyPress(Sender: TObject; var Key: Char);
    procedure ibeaIncluirClick(Sender: TObject);
    procedure cboProdutosClick(Sender: TObject);
    procedure ibeaAbrirRelatorioClick(Sender: TObject);
    procedure ibeaApagarClick(Sender: TObject);
    procedure lbl_edtCodBarrasExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPimaco6089Variada: TfrmPimaco6089Variada;
  MontaColunas : Boolean;

implementation

uses untdmModule, untProdutos_MPrima, untEtiquetasPimaco6089, funcPosto;

{$R *.dfm}

procedure TfrmPimaco6089Variada.ibeaSairClick(Sender: TObject);
begin
Close;
end;

procedure TfrmPimaco6089Variada.Commit(IBQueryExec : TIBQuery);

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

procedure TfrmPimaco6089Variada.LimpaCampo;

begin

lbl_edtCodBarras.Clear;
lbl_edtRef.Clear;
lbl_edtVlrVenda.Clear;
cboProdutos.ClearSelection;

end;

procedure TfrmPimaco6089Variada.LimparBotoes;

begin

  ckEtiqueta1.Checked   := False;
  ckEtiqueta2.Checked   := False;
  ckEtiqueta3.Checked   := False;
  ckEtiqueta4.Checked   := False;
  ckEtiqueta5.Checked   := False;
  ckEtiqueta6.Checked   := False;
  ckEtiqueta7.Checked   := False;
  ckEtiqueta8.Checked   := False;
  ckEtiqueta9.Checked   := False;
  ckEtiqueta10.Checked  := False;
  ckEtiqueta11.Checked  := False;
  ckEtiqueta12.Checked  := False;
  ckEtiqueta13.Checked  := False;
  ckEtiqueta14.Checked  := False;
  ckEtiqueta15.Checked  := False;
  ckEtiqueta16.Checked  := False;
  ckEtiqueta17.Checked  := False;
  ckEtiqueta18.Checked  := False;
  ckEtiqueta19.Checked  := False;
  ckEtiqueta20.Checked  := False;
  ckEtiqueta21.Checked  := False;
  ckEtiqueta22.Checked  := False;
  ckEtiqueta23.Checked  := False;
  ckEtiqueta24.Checked  := False;
  ckEtiqueta25.Checked  := False;
  ckEtiqueta26.Checked  := False;
  ckEtiqueta27.Checked  := False;
  ckEtiqueta28.Checked  := False;
  ckEtiqueta29.Checked  := False;
  ckEtiqueta30.Checked  := False;
  ckEtiqueta31.Checked  := False;
  ckEtiqueta32.Checked  := False;
  ckEtiqueta33.Checked  := False;
  ckEtiqueta34.Checked  := False;
  ckEtiqueta35.Checked  := False;
  ckEtiqueta36.Checked  := False;
  ckEtiqueta37.Checked  := False;
  ckEtiqueta38.Checked  := False;
  ckEtiqueta39.Checked  := False;
  ckEtiqueta40.Checked  := False;
  ckEtiqueta41.Checked  := False;
  ckEtiqueta42.Checked  := False;
  ckEtiqueta43.Checked  := False;
  ckEtiqueta44.Checked  := False;
  ckEtiqueta45.Checked  := False;
  ckEtiqueta46.Checked  := False;
  ckEtiqueta47.Checked  := False;
  ckEtiqueta48.Checked  := False;
  ckEtiqueta49.Checked  := False;
  ckEtiqueta50.Checked  := False;
  ckEtiqueta51.Checked  := False;
  ckEtiqueta52.Checked  := False;
  ckEtiqueta53.Checked  := False;
  ckEtiqueta54.Checked  := False;
  ckEtiqueta55.Checked  := False;
  ckEtiqueta56.Checked  := False;
  ckEtiqueta57.Checked  := False;
  ckEtiqueta58.Checked  := False;
  ckEtiqueta59.Checked  := False;
  ckEtiqueta60.Checked  := False;

end;

Procedure TfrmPimaco6089Variada.CriaCodigo(Cod : String; Imagem : TCanvas);

Const
  digitos : array['0'..'9'] of string[5]= ('00110',
  '10001',
  '01001',
  '11000',
  '00101',
  '10100',
  '01100',
  '00011',
  '10010',
  '01010');
Var
  Numero : String;
  Cod1 : Array[1..1000] Of Char;
  Cod2 : Array[1..1000] Of Char;
  Codigo : Array[1..1000] Of Char;
  Digito : String;
  c1,c2 : Integer;
  x,y,z,h : LongInt;
  a,b,c,d : TPoint;
  I : Boolean;
Begin
  Numero := Cod;
  For x := 1 to 1000 Do
  Begin
    Cod1 [x] := #0;
    Cod2 [x] := #0;
    Codigo[x] := #0;
  End;
  c1 := 1;
  c2 := 1;
  x := 1;
  For y := 1 to Length(Numero) div 2 do
  Begin
    Digito := Digitos[Numero[x ]];
    For z := 1 to 5 do
    Begin
      Cod1[c1] := Digito[z];
      Inc(c1);
    End;
    Digito := Digitos[Numero[x+1]];
    For z := 1 to 5 do
    Begin
      Cod2[c2] := Digito[z];
      Inc(c2);
    End;
    Inc(x,2);
  End;
  y := 5;
  Codigo[1] := '0'; 
  Codigo[2] := '0';
  Codigo[3] := '0';
  Codigo[4] := '0'; { Inicio do Codigo }
  For x := 1 to c1-1 do
  begin
    Codigo[y] := Cod1[x]; Inc(y);
    Codigo[y] := Cod2[x]; Inc(y);
  end;
  Codigo[y] := '1'; Inc(y); { Final do Codigo }
  Codigo[y] := '0'; Inc(y);
  Codigo[y] := '0';
  Imagem.Pen .Width := 1;
  Imagem.Brush.Color := ClWhite;
  Imagem.Pen .Color := ClWhite;
  a.x := 1; a.y := 0;
  b.x := 1; b.y := 79;
  c.x := 2000; c.y := 79;
  d.x := 2000; d.y := 0;
  Imagem.Polygon([a,b,c,d]);
  Imagem.Brush.Color := ClBlack;
  Imagem.Pen .Color := ClBlack;
  x := 0;
  i := True;
  for y:=1 to 1000 do
  begin
    If Codigo[y] <> #0 Then
    Begin
      If Codigo[y] = '0' then 
        h := 1 
      Else 
        h := 3;
      a.x := x; a.y := 0;
      b.x := x; b.y := 79;
      c.x := x+h-1; c.y := 79;
      d.x := x+h-1; d.y := 0;
      If i Then 
        Imagem.Polygon([a,b,c,d]);
      i := Not(i);
      x := x + h;
    End;
  end;
end;

procedure TfrmPimaco6089Variada.ExecSELECT;

var
IDClassProduto : TClasseCombo;

begin
  with dmModule do begin


    Commit(ibProdutos);
    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS ORDER BY NOME');
    ibProdutos.Open;

    cboProdutos.Clear; //LIMPA O COMBOBOX
    while not ibProdutos.Eof do begin
      IDClassProduto     := TClasseCombo.Create;
      IDClassProduto.ID  := ibProdutos.FieldByName('IDPROD').AsInteger;
      cboProdutos.Items.AddObject(ibProdutos.FieldByName('NOME').AsString,IDClassProduto);
      ibProdutos.Next;
    end;

  end;
end;

procedure TfrmPimaco6089Variada.ExecSELECTEtiquetas;

begin

  with dmModule do begin

      Commit(ibTempEtiqueta6089);
      ibTempEtiqueta6089.Close;
      ibTempEtiqueta6089.SQL.Clear;
      ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089');
      ibTempEtiqueta6089.Open; 

    // (ibTempEtiqueta6089.FieldByName('VALOR') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

  //  while not ibTempEtiqueta6089.Eof do begin

    {  if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Sim') Then begin

        ckEtiqueta1.Checked := True;

      end else begin

        ckEtiqueta1.Checked := False;

      end;

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA2').AsString = 'Sim') Then begin

        ckEtiqueta2.Checked := True;

      end else begin

        ckEtiqueta2.Checked := False;

      end;

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA3').AsString = 'Sim') Then begin

        ckEtiqueta3.Checked := True;

      end else begin

        ckEtiqueta3.Checked := False;

      end;

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA4').AsString = 'Sim') Then begin

        ckEtiqueta4.Checked := True;

      end else begin

        ckEtiqueta4.Checked := False;

      end;

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA5').AsString = 'Sim') Then begin

        ckEtiqueta5.Checked := True;

      end else begin

        ckEtiqueta5.Checked := False;

      end;}

   //  ibTempEtiqueta6089.Next;

   // end;//while

  end;//with

end;

procedure TfrmPimaco6089Variada.GravarEtiqueta;

var
ClassGravaProd : TClasseCombo;
StringGravaProd,Valor : String;
Et1,Et2,Et3,Et4,Et5,Et6,Et7,Et8,Et9,Et10,Et11,Et12,Et13,Et14,Et15 : String;
Et16,Et17,Et18,Et19,Et20,Et21,Et22,Et23,Et24,Et25,Et26,Et27,Et28,Et29,Et30 : String;
Et31,Et32,Et33,Et34,Et35,Et36,Et37,Et38,Et39,Et40,Et41,Et42,Et43,Et44,Et45 : String;
Et46,Et47,Et48,Et49,Et50,Et51,Et52,Et53,Et54,Et55,Et56,Et57,Et58,Et59,Et60 : String;
begin

  with dmModule do begin

    if cboProdutos.ItemIndex = -1 Then begin

      StringGravaProd := ' ''0'',';

    end else begin

      ClassGravaProd  := TClasseCombo(cboProdutos.Items.Objects[cboProdutos.ItemIndex]);
      StringGravaProd := ' ''' + IntToStr(ClassGravaProd.ID) + ''','

    end;//if cboprodutos

    ibTempEtiqueta6089.Close;
    ibTempEtiqueta6089.SQL.Clear;
    ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089');// WHERE IDPROD=''' + IntToStr(ClassGravaProd.ID) + '''');
    ibTempEtiqueta6089.Open;




    if ckEtiqueta1.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = Null) Then begin

        Et1 := 'Sim';

      end else begin

        Et1 := 'Nao';

      end;

    end;

    if ckEtiqueta2.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA2').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA2').AsString = Null) Then begin

        Et2 := 'Sim';

      end else begin

        Et2 := 'Nao';

      end;

    end;

    if ckEtiqueta3.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA3').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA3').AsString = Null) Then begin

        Et3 := 'Sim';

      end else begin

        Et3 := 'Nao';

      end;

    end;

    if ckEtiqueta4.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA4').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA4').AsString = Null) Then begin

        Et4 := 'Sim';

      end else begin

        Et4 := 'Nao';

      end;

    end;

    if ckEtiqueta5.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA5').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA5').AsString = Null) Then begin

        Et5 := 'Sim';

      end else begin

        Et5 := 'Nao';

      end;

    end;

    if ckEtiqueta6.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA6').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA6').AsString = Null) Then begin

        Et6 := 'Sim';

      end else begin

        Et6 := 'Nao';

      end;

    end;

    if ckEtiqueta7.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA7').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA7').AsString = Null) Then begin

        Et7 := 'Sim';

      end else begin

        Et7 := 'Nao';

      end;

    end;

    if ckEtiqueta8.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA8').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA8').AsString = Null) Then begin

        Et8 := 'Sim';

      end else begin

        Et8 := 'Nao';

      end;

    end;


    if ckEtiqueta9.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA9').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA9').AsString = Null) Then begin

        Et9 := 'Sim';

      end else begin

        Et9 := 'Nao';

      end;

    end;


    if ckEtiqueta10.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA10').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA10').AsString = Null) Then begin

        Et10 := 'Sim';

      end else begin

        Et10 := 'Nao';

      end;

    end;

    if ckEtiqueta11.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA11').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA11').AsString = Null) Then begin

        Et11 := 'Sim';

      end else begin

        Et11 := 'Nao';

      end;

    end;

    if ckEtiqueta12.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA12').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA12').AsString = Null) Then begin

        Et12 := 'Sim';

      end else begin

        Et12 := 'Nao';

      end;

    end;

    if ckEtiqueta13.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA13').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA13').AsString = Null) Then begin

        Et13 := 'Sim';

      end else begin

        Et13 := 'Nao';

      end;

    end;

    if ckEtiqueta14.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA14').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA14').AsString = Null) Then begin

        Et14 := 'Sim';

      end else begin

        Et14 := 'Nao';

      end;

    end;

    if ckEtiqueta15.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA15').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA15').AsString = Null) Then begin

        Et15 := 'Sim';

      end else begin

        Et15 := 'Nao';

      end;

    end;


    if ckEtiqueta16.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA16').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA16').AsString = Null) Then begin

        Et16 := 'Sim';

      end else begin

        Et16 := 'Nao';

      end;

    end;

    if ckEtiqueta17.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA17').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA17').AsString = Null) Then begin

        Et17 := 'Sim';

      end else begin

        Et17 := 'Nao';

      end;

    end;

    if ckEtiqueta18.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA18').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA18').AsString = Null) Then begin

        Et18 := 'Sim';

      end else begin

        Et18 := 'Nao';

      end;

    end;

    if ckEtiqueta19.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA19').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA19').AsString = Null) Then begin

        Et19 := 'Sim';

      end else begin

        Et19 := 'Nao';

      end;

    end;

    if ckEtiqueta20.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA20').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA20').AsString = Null) Then begin

        Et20 := 'Sim';

      end else begin

        Et20 := 'Nao';

      end;

    end;

    if ckEtiqueta21.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA21').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA21').AsString = Null) Then begin

        Et21 := 'Sim';

      end else begin

        Et21 := 'Nao';

      end;

    end;

    if ckEtiqueta22.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA22').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA22').AsString = Null) Then begin

        Et22 := 'Sim';

      end else begin

        Et22 := 'Nao';

      end;

    end;

    if ckEtiqueta23.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA23').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA23').AsString = Null) Then begin

        Et23 := 'Sim';

      end else begin

        Et23 := 'Nao';

      end;

    end;

    if ckEtiqueta24.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA24').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA24').AsString = Null) Then begin

        Et24 := 'Sim';

      end else begin

        Et24 := 'Nao';

      end;

    end;

    if ckEtiqueta25.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA25').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA25').AsString = Null) Then begin

        Et25 := 'Sim';

      end else begin

        Et25 := 'Nao';

      end;

    end;

    if ckEtiqueta26.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA26').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA26').AsString = Null) Then begin

        Et26 := 'Sim';

      end else begin

        Et26 := 'Nao';

      end;

    end;

    if ckEtiqueta27.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA27').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA27').AsString = Null) Then begin

        Et27 := 'Sim';

      end else begin

        Et27 := 'Nao';

      end;

    end;

    if ckEtiqueta28.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA28').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA28').AsString = Null) Then begin

        Et28 := 'Sim';

      end else begin

        Et28 := 'Nao';

      end;

    end;

    if ckEtiqueta29.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA29').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA29').AsString = Null) Then begin

        Et29 := 'Sim';

      end else begin

        Et29 := 'Nao';

      end;

    end;

    if ckEtiqueta30.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA30').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA30').AsString = Null) Then begin

        Et30 := 'Sim';

      end else begin

        Et30 := 'Nao';

      end;

    end;

    if ckEtiqueta31.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA31').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA31').AsString = Null) Then begin

        Et31 := 'Sim';

      end else begin

        Et31 := 'Nao';

      end;

    end;

    if ckEtiqueta32.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA32').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA32').AsString = Null) Then begin

        Et32 := 'Sim';

      end else begin

        Et32 := 'Nao';

      end;

    end;

    if ckEtiqueta33.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA33').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA33').AsString = Null) Then begin

        Et33 := 'Sim';

      end else begin

        Et33 := 'Nao';

      end;

    end;

    if ckEtiqueta34.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA34').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA34').AsString = Null) Then begin

        Et34 := 'Sim';

      end else begin

        Et34 := 'Nao';

      end;

    end;

    if ckEtiqueta35.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA35').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA35').AsString = Null) Then begin

        Et35 := 'Sim';

      end else begin

        Et35 := 'Nao';

      end;

    end;

    if ckEtiqueta36.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA36').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA36').AsString = Null) Then begin

        Et36 := 'Sim';

      end else begin

        Et36 := 'Nao';

      end;

    end;

    if ckEtiqueta37.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA37').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA37').AsString = Null) Then begin

        Et37 := 'Sim';

      end else begin

        Et37 := 'Nao';

      end;

    end;

    if ckEtiqueta38.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA38').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA38').AsString = Null) Then begin

        Et38 := 'Sim';

      end else begin

        Et38 := 'Nao';

      end;

    end;

    if ckEtiqueta39.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA39').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA39').AsString = Null) Then begin

        Et39 := 'Sim';

      end else begin

        Et39 := 'Nao';

      end;

    end;

    if ckEtiqueta40.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA40').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA40').AsString = Null) Then begin

        Et40 := 'Sim';

      end else begin

        Et40 := 'Nao';

      end;

    end;

    if ckEtiqueta41.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA41').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA41').AsString = Null) Then begin

        Et41 := 'Sim';

      end else begin

        Et41 := 'Nao';

      end;

    end;

    if ckEtiqueta42.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA42').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA42').AsString = Null) Then begin

        Et42 := 'Sim';

      end else begin

        Et42 := 'Nao';

      end;

    end;

    if ckEtiqueta43.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA43').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA43').AsString = Null) Then begin

        Et43 := 'Sim';

      end else begin

        Et43 := 'Nao';

      end;

    end;

    if ckEtiqueta44.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA44').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA44').AsString = Null) Then begin

        Et44 := 'Sim';

      end else begin

        Et44 := 'Nao';

      end;

    end;

    if ckEtiqueta45.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA45').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA45').AsString = Null) Then begin

        Et45 := 'Sim';

      end else begin

        Et45 := 'Nao';

      end;

    end;

    if ckEtiqueta46.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA46').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA46').AsString = Null) Then begin

        Et46 := 'Sim';

      end else begin

        Et46 := 'Nao';

      end;

    end;

    if ckEtiqueta47.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA47').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA47').AsString = Null) Then begin

        Et47 := 'Sim';

      end else begin

        Et47 := 'Nao';

      end;

    end;

    if ckEtiqueta48.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA48').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA48').AsString = Null) Then begin

        Et48 := 'Sim';

      end else begin

        Et48 := 'Nao';

      end;

    end;

    if ckEtiqueta49.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA49').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA49').AsString = Null) Then begin

        Et49 := 'Sim';

      end else begin

        Et49 := 'Nao';

      end;

    end;

    if ckEtiqueta50.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA50').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA50').AsString = Null) Then begin

        Et50 := 'Sim';

      end else begin

        Et50 := 'Nao';

      end;

    end;

    if ckEtiqueta51.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA51').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA51').AsString = Null) Then begin

        Et51 := 'Sim';

      end else begin

        Et51 := 'Nao';

      end;

    end;

    if ckEtiqueta52.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA52').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA52').AsString = Null) Then begin

        Et52 := 'Sim';

      end else begin

        Et52 := 'Nao';

      end;

    end;

    if ckEtiqueta53.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA53').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA53').AsString = Null) Then begin

        Et53 := 'Sim';

      end else begin

        Et53 := 'Nao';

      end;

    end;

    if ckEtiqueta54.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA54').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA54').AsString = Null) Then begin

        Et54 := 'Sim';

      end else begin

        Et54 := 'Nao';

      end;

    end;

    if ckEtiqueta55.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA55').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA55').AsString = Null) Then begin

        Et55 := 'Sim';

      end else begin

        Et55 := 'Nao';

      end;

    end;

    if ckEtiqueta56.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA56').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA56').AsString = Null) Then begin

        Et56 := 'Sim';

      end else begin

        Et56 := 'Nao';

      end;

    end;

    if ckEtiqueta57.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA57').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA57').AsString = Null) Then begin

        Et57 := 'Sim';

      end else begin

        Et57 := 'Nao';

      end;

    end;

    if ckEtiqueta58.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA58').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA58').AsString = Null) Then begin

        Et58 := 'Sim';

      end else begin

        Et58 := 'Nao';

      end;

    end;

    if ckEtiqueta59.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA59').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA59').AsString = Null) Then begin

        Et59 := 'Sim';

      end else begin

        Et59 := 'Nao';

      end;

    end;

    if ckEtiqueta60.Checked Then begin

      if (ibTempEtiqueta6089.FieldByName('ETIQUETA60').AsString = '')or (ibTempEtiqueta6089.FieldByName('ETIQUETA60').AsString = Null) Then begin

        Et60 := 'Sim';

      end else begin

        Et60 := 'Nao';

      end;

    end;

    Valor := StringReplace(lbl_edtVlrVenda.Text,ThousandSeparator,'',[rfReplaceAll]);
    Valor := StringReplace(Valor,DecimalSeparator,'.',[rfReplaceAll]);
    if Valor = '' Then
    valor := '0';

    if (ckGravarVctoLote.Checked) Then begin

      ibTempEtiqueta6089.Close;
      ibTempEtiqueta6089.SQL.Clear;
      ibTempEtiqueta6089.SQL.Add('INSERT INTO TBLETIQUETA6089'
      +'(NOMEPROD,IDPROD,CODBARRAS,VALOR,REF,VCTOLOTE,ETIQUETA1,ETIQUETA2,'
      + 'ETIQUETA3,ETIQUETA4,ETIQUETA5,ETIQUETA6,ETIQUETA7,ETIQUETA8,ETIQUETA9,ETIQUETA10,'
      + 'ETIQUETA11,ETIQUETA12,ETIQUETA13,ETIQUETA14,ETIQUETA15,ETIQUETA16,'
      + 'ETIQUETA17,ETIQUETA18,ETIQUETA19,ETIQUETA20,ETIQUETA21,ETIQUETA22,'
      + 'ETIQUETA23,ETIQUETA24,ETIQUETA25,ETIQUETA26,ETIQUETA27,ETIQUETA28,'
      + 'ETIQUETA29,ETIQUETA30,ETIQUETA31,ETIQUETA32,ETIQUETA33,ETIQUETA34,'
      + 'ETIQUETA35,ETIQUETA36,ETIQUETA37,ETIQUETA38,ETIQUETA39,ETIQUETA40,'
      + 'ETIQUETA41,ETIQUETA42,ETIQUETA43,ETIQUETA44,ETIQUETA45,ETIQUETA46,'
      + 'ETIQUETA47,ETIQUETA48,ETIQUETA49,ETIQUETA50,ETIQUETA51,ETIQUETA52,'
      + 'ETIQUETA53,ETIQUETA54,ETIQUETA55,ETIQUETA56,ETIQUETA57,ETIQUETA58,'
      + 'ETIQUETA59,ETIQUETA60) values'
      + '(''' + cboProdutos.Text + ''','
      +StringGravaProd
      + ' ''' + lbl_edtCodBarras.Text + ''','
      + ' ''' + Valor + ''','
      + ' ''' + lbl_edtRef.Text + ''','
      + ' ''' + FormatDateTime('mm-dd-yyyy',dtpVctoLote.Date) + ''','
      + ' ''' + Et1 + ''',''' + Et2 + ''','
      + ' ''' + Et3 + ''',''' + Et4 + ''','
      + ' ''' + Et5 + ''',''' + Et6 + ''','
      + ' ''' + Et7 + ''',''' + Et8 + ''','
      + ' ''' + Et9 + ''',''' + Et10 + ''','
      + ' ''' + Et11 + ''',''' + Et12 + ''','
      + ' ''' + Et13 + ''',''' + Et14 + ''','
      + ' ''' + Et15 + ''',''' + Et16 + ''','
      + ' ''' + Et17 + ''',''' + Et18 + ''','
      + ' ''' + Et19 + ''',''' + Et20 + ''','
      + ' ''' + Et21 + ''',''' + Et22 + ''','
      + ' ''' + Et23 + ''',''' + Et24 + ''','
      + ' ''' + Et25 + ''',''' + Et26 + ''','
      + ' ''' + Et27 + ''',''' + Et28 + ''','
      + ' ''' + Et29 + ''',''' + Et30 + ''','
      + ' ''' + Et31 + ''',''' + Et32 + ''','
      + ' ''' + Et33 + ''',''' + Et34 + ''','
      + ' ''' + Et35 + ''',''' + Et36 + ''','
      + ' ''' + Et37 + ''',''' + Et38 + ''','
      + ' ''' + Et39 + ''',''' + Et40 + ''','
      + ' ''' + Et41 + ''',''' + Et42 + ''','
      + ' ''' + Et43 + ''',''' + Et44 + ''','
      + ' ''' + Et45 + ''',''' + Et46 + ''','
      + ' ''' + Et47 + ''',''' + Et48 + ''','
      + ' ''' + Et49 + ''',''' + Et50 + ''','
      + ' ''' + Et51 + ''',''' + Et52 + ''','
      + ' ''' + Et53 + ''',''' + Et54 + ''','
      + ' ''' + Et55 + ''',''' + Et56 + ''','
      + ' ''' + Et57 + ''',''' + Et58 + ''','
      + ' ''' + Et59 + ''',''' + Et60 + ''')');
      ibTempEtiqueta6089.ExecSQL;
      Commit(ibTempEtiqueta6089);

    end;//if gravar lote = sim

    if (ckGravarVctoLote.Checked = False) Then begin

      ibTempEtiqueta6089.Close;
      ibTempEtiqueta6089.SQL.Clear;
      ibTempEtiqueta6089.SQL.Add('INSERT INTO TBLETIQUETA6089'
      +'(NOMEPROD,IDPROD,CODBARRAS,VALOR,REF,ETIQUETA1,ETIQUETA2,ETIQUETA3,'
      + 'ETIQUETA4,ETIQUETA5,ETIQUETA6,ETIQUETA7,ETIQUETA8,ETIQUETA9,ETIQUETA10,'
      + 'ETIQUETA11,ETIQUETA12,ETIQUETA13,ETIQUETA14,ETIQUETA15,ETIQUETA16,'
      + 'ETIQUETA17,ETIQUETA18,ETIQUETA19,ETIQUETA20,ETIQUETA21,ETIQUETA22,'
      + 'ETIQUETA23,ETIQUETA24,ETIQUETA25,ETIQUETA26,ETIQUETA27,ETIQUETA28,'
      + 'ETIQUETA29,ETIQUETA30,ETIQUETA31,ETIQUETA32,ETIQUETA33,ETIQUETA34,'
      + 'ETIQUETA35,ETIQUETA36,ETIQUETA37,ETIQUETA38,ETIQUETA39,ETIQUETA40,'
      + 'ETIQUETA41,ETIQUETA42,ETIQUETA43,ETIQUETA44,ETIQUETA45,ETIQUETA46,'
      + 'ETIQUETA47,ETIQUETA48,ETIQUETA49,ETIQUETA50,ETIQUETA51,ETIQUETA52,'
      + 'ETIQUETA53,ETIQUETA54,ETIQUETA55,ETIQUETA56,ETIQUETA57,ETIQUETA58,'
      + 'ETIQUETA59,ETIQUETA60) values'
      + '(''' + cboProdutos.Text + ''','
      +StringGravaProd
      + ' ''' + lbl_edtCodBarras.Text + ''','
      + ' ''' + Valor + ''','
      + ' ''' + lbl_edtRef.Text + ''','
      + ' ''' + Et1 + ''',''' + Et2 + ''','
      + ' ''' + Et3 + ''',''' + Et4 + ''','
      + ' ''' + Et5 + ''',''' + Et6 + ''','
      + ' ''' + Et7 + ''',''' + Et8 + ''','
      + ' ''' + Et9 + ''',''' + Et10 + ''','
      + ' ''' + Et11 + ''',''' + Et12 + ''','
      + ' ''' + Et13 + ''',''' + Et14 + ''','
      + ' ''' + Et15 + ''',''' + Et16 + ''','
      + ' ''' + Et17 + ''',''' + Et18 + ''','
      + ' ''' + Et19 + ''',''' + Et20 + ''','
      + ' ''' + Et21 + ''',''' + Et22 + ''','
      + ' ''' + Et23 + ''',''' + Et24 + ''','
      + ' ''' + Et25 + ''',''' + Et26 + ''','
      + ' ''' + Et27 + ''',''' + Et28 + ''','
      + ' ''' + Et29 + ''',''' + Et30 + ''','
      + ' ''' + Et31 + ''',''' + Et32 + ''','
      + ' ''' + Et33 + ''',''' + Et34 + ''','
      + ' ''' + Et35 + ''',''' + Et36 + ''','
      + ' ''' + Et37 + ''',''' + Et38 + ''','
      + ' ''' + Et39 + ''',''' + Et40 + ''','
      + ' ''' + Et41 + ''',''' + Et42 + ''','
      + ' ''' + Et43 + ''',''' + Et44 + ''','
      + ' ''' + Et45 + ''',''' + Et46 + ''','
      + ' ''' + Et47 + ''',''' + Et48 + ''','
      + ' ''' + Et49 + ''',''' + Et50 + ''','
      + ' ''' + Et51 + ''',''' + Et52 + ''','
      + ' ''' + Et53 + ''',''' + Et54 + ''','
      + ' ''' + Et55 + ''',''' + Et56 + ''','
      + ' ''' + Et57 + ''',''' + Et58 + ''','
      + ' ''' + Et59 + ''',''' + Et60 + ''')');
      ibTempEtiqueta6089.ExecSQL;
      Commit(ibTempEtiqueta6089);

    end;//if gravar lote = sim


    LimpaCampo;

  end;//with

end;

procedure TfrmPimaco6089Variada.FormShow(Sender: TObject);
begin

 dtpVctoLote.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
 ckGravarVctoLote.Checked := False;
 
 with dmModule do begin

   lbl_edtCodBarras.Clear;
   lbl_edtRef.Clear;
   cboProdutos.ClearSelection;
   lbl_edtVlrVenda.Clear;

   ExecSELECT;
   ExecSELECTEtiquetas;
   
    with dbgProdutos do begin

      // monta as colunas abaixo se for verdadeiro
      if MontaColunas Then begin

         DataSource := dtsTempEtiqueta6089;

        //determina as colunas a serem montadas
        Columns.Insert(0);
        Columns.Insert(1);
        Columns.Insert(2);


        //Parametros da Coluna que exibe o C�digo da entrada no estoque
        Columns.Items[0].Title.Caption := 'Ref.';
        Columns.Items[0].FieldName     := 'REF';
        Columns.Items[0].Width         := 80;
        Columns.Items[0].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o Nome do produto que esta entrando no estoque.
        Columns.Items[1].Title.Caption := 'C�dBarras';
        Columns.Items[1].FieldName     := 'CODBARRAS';
        Columns.Items[1].Width         := 100;
        Columns.Items[1].Alignment     := taLeftJustify;


        //Parametros da Coluna que exibe o vlr unitario do produto.
        Columns.Items[2].Title.Caption := 'Descri��o do Produto';
        Columns.Items[2].FieldName     := 'NOMEPROD';
        Columns.Items[2].Width         := 350;
        Columns.Items[2].Alignment     := taLeftJustify;

        MontaColunas := False;

      end;{if}

    end;{with}

////////////////////////////////////////////////////////////////////////////////

 end;//with

end;

procedure TfrmPimaco6089Variada.FormCreate(Sender: TObject);
begin
MontaColunas := True;
end;

procedure TfrmPimaco6089Variada.lbl_edtRefExit(Sender: TObject);

var

i : Integer;

begin

  with dmModule do begin

    if lbl_edtRef.Text <> '' Then begin

      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE CADPRODUTOS.REF=''' + lbl_edtRef.Text + '''');
      ibProdutos.Open;

      (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

      lbl_edtRef.Text := ibProdutos.FieldByName('REF').asString;
      lbl_edtVlrVenda.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);


      if (ibProdutos.FieldByName('CODBARRASAD').AsString <> '')and(ibProdutos.FieldByName('CODBARRAS').AsString = '') Then begin

        lbl_edtCodBarras.Text := ibProdutos.FieldByName('CODBARRASAD').AsString;

      end else if (ibProdutos.FieldByName('CODBARRASAD').AsString <> '')and(ibProdutos.FieldByName('CODBARRAS').AsString <> '')Then begin

        lbl_edtCodBarras.Text := ibProdutos.FieldByName('CODBARRASAD').AsString;

      end else if (ibProdutos.FieldByName('CODBARRASAD').AsString = '')or(ibProdutos.FieldByName('CODBARRASAD').AsString = 'null')and(ibProdutos.FieldByName('CODBARRAS').AsString <> '')Then begin

        lbl_edtCodBarras.Text := ibProdutos.FieldByName('CODBARRAS').AsString;

      end;

      for i:=0 to cboProdutos.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
        if TClasseCombo( cboProdutos.Items.Objects[i]).ID = ibProdutos.FieldByName('IDPROD').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
          cboProdutos.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
          Break;
        end else begin
          cboProdutos.ClearSelection;//LIMPA A SELECAO.}
        end;{if}
      end;{for}

    end;//if

  end;//with


end;

procedure TfrmPimaco6089Variada.lbl_edtRefKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtCodBarras.SetFocus;

  end;//if

end;

procedure TfrmPimaco6089Variada.lbl_edtCodBarrasChange(Sender: TObject);

//var

//i : Integer;


begin

 { with dmModule do begin

    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE CADPRODUTOS.CODBARRAS=''' + lbl_edtCodBarras.Text + ''' or CADPRODUTOS.CODBARRASAD=''' + lbl_edtCodBarras.Text + '''');
    ibProdutos.Open;

    (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

    lbl_edtRef.Text := ibProdutos.FieldByName('REF').asString;
    lbl_edtVlrVenda.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);


    if (ibProdutos.FieldByName('CODBARRASAD').AsString <> '')and(ibProdutos.FieldByName('CODBARRAS').AsString = '') Then begin

      lbl_edtCodBarras.Text := ibProdutos.FieldByName('CODBARRASAD').AsString;

    end else if (ibProdutos.FieldByName('CODBARRASAD').AsString <> '')and(ibProdutos.FieldByName('CODBARRAS').AsString <> '')Then begin

      lbl_edtCodBarras.Text := ibProdutos.FieldByName('CODBARRASAD').AsString;

    end else if (ibProdutos.FieldByName('CODBARRASAD').AsString = '')or(ibProdutos.FieldByName('CODBARRASAD').AsString = 'null')and(ibProdutos.FieldByName('CODBARRAS').AsString <> '')Then begin

      lbl_edtCodBarras.Text := ibProdutos.FieldByName('CODBARRAS').AsString;

    end;  }

  {  for i:=0 to cboProdutos.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
      if TClasseCombo( cboProdutos.Items.Objects[i]).ID = ibProdutos.FieldByName('IDPROD').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
        cboProdutos.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
        Break;
      end else begin
        cboProdutos.ClearSelection;//LIMPA A SELECAO. }
   //   end;{if}
  //  end;{for}

 // end;{with}


end;

procedure TfrmPimaco6089Variada.lbl_edtCodBarrasKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtRef.SetFocus;

  end;//if

end;

procedure TfrmPimaco6089Variada.ibeaIncluirClick(Sender: TObject);
begin

  with dmModule do begin

    GravarEtiqueta;
    ExecSELECTEtiquetas;
    ckGravarVctoLote.Checked := False;
    
  end;//with

end;

procedure TfrmPimaco6089Variada.cboProdutosClick(Sender: TObject);

var

i : Integer;
IDDadosProd : TClasseCombo;
StringDadosProd : String;
begin

  with dmModule do begin

    if cboProdutos.ItemIndex <> - 1 Then begin

      IDDadosProd := TClasseCombo(cboProdutos.Items.Objects[cboProdutos.ItemIndex]);
      StringDadosProd := ' IDPROD=''' + IntToStr(IDDadosProd.ID) + '''';

    end;{if}

    ibProdutos.Close;
    ibProdutos.SQL.Clear;
    ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE CADPRODUTOS.IDPROD=''' + IntToStr(IDDadosProd.ID) + '''');
    ibProdutos.Open;

    (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
  //  (ibProdutos.FieldByName('VALORVENDAB') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
  //  (ibProdutos.FieldByName('VALORVENDAC') as TFloatField).DisplayFormat := CasasDecimais('Produtos');


    lbl_edtRef.Text := ibProdutos.FieldByName('REF').asString;
    lbl_edtVlrVenda.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);

    if (ibProdutos.FieldByName('CODBARRASAD').AsString <> '')and(ibProdutos.FieldByName('CODBARRAS').AsString = '') Then begin

      lbl_edtCodBarras.Text := ibProdutos.FieldByName('CODBARRASAD').AsString;

    end else if (ibProdutos.FieldByName('CODBARRASAD').AsString <> '')and(ibProdutos.FieldByName('CODBARRAS').AsString <> '')Then begin

      lbl_edtCodBarras.Text := ibProdutos.FieldByName('CODBARRASAD').AsString;

    end else if (ibProdutos.FieldByName('CODBARRASAD').AsString = '')or(ibProdutos.FieldByName('CODBARRASAD').AsString = 'null')and(ibProdutos.FieldByName('CODBARRAS').AsString <> '')Then begin

      lbl_edtCodBarras.Text := ibProdutos.FieldByName('CODBARRAS').AsString;

    end;

    {if (ibProdutos.FieldByName('CODBARRAS').AsString = '')and(ibProdutos.FieldByName('CODBARRASAD').AsString <> '')Then begin

      lbl_edtCodBarras.Text := ibProdutos.FieldByName('CODBARRASAD').AsString;

    end; }

    for i:=0 to cboProdutos.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
      if TClasseCombo( cboProdutos.Items.Objects[i]).ID = ibProdutos.FieldByName('IDPROD').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
        cboProdutos.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
        Break;
      end else begin
        cboProdutos.ClearSelection;//LIMPA A SELECAO. }
      end;{if}
    end;{for}

  end;{with}


end;

procedure TfrmPimaco6089Variada.ibeaAbrirRelatorioClick(Sender: TObject);

var

CodBarras1, NomeProd1, ValorProd1,Referencia1 : String;
CodBarras2,NomeProd2,ValorProd2,Referencia2 : String;
CodBarras3,NomeProd3,ValorProd3,Referencia3 : String;
CodBarras4,NomeProd4,ValorProd4,Referencia4 : String;
CodBarras5,NomeProd5,ValorProd5,Referencia5 : String;
CodBarras6,NomeProd6,ValorProd6,Referencia6 : String;
CodBarras7,NomeProd7,ValorProd7,Referencia7 : String;
CodBarras8,NomeProd8,ValorProd8,Referencia8 : String;
CodBarras9,NomeProd9,ValorProd9,Referencia9 : String;
CodBarras10,NomeProd10,ValorProd10,Referencia10 : String;
CodBarras11,NomeProd11,ValorProd11,Referencia11 : String;
CodBarras12,NomeProd12,ValorProd12,Referencia12 : String;
CodBarras13,NomeProd13,ValorProd13,Referencia13 : String;
CodBarras14,NomeProd14,ValorProd14,Referencia14 : String;
CodBarras15,NomeProd15,ValorProd15,Referencia15 : String;
CodBarras16,NomeProd16,ValorProd16,Referencia16 : String;
CodBarras17,NomeProd17,ValorProd17,Referencia17 : String;
CodBarras18,NomeProd18,ValorProd18,Referencia18 : String;
CodBarras19,NomeProd19,ValorProd19,Referencia19 : String;
CodBarras20,NomeProd20,ValorProd20,Referencia20 : String;
CodBarras21,NomeProd21,ValorProd21,Referencia21 : String;
CodBarras22,NomeProd22,ValorProd22,Referencia22 : String;
CodBarras23,NomeProd23,ValorProd23,Referencia23 : String;
CodBarras24,NomeProd24,ValorProd24,Referencia24 : String;
CodBarras25,NomeProd25,ValorProd25,Referencia25 : String;
CodBarras26,NomeProd26,ValorProd26,Referencia26 : String;
CodBarras27,NomeProd27,ValorProd27,Referencia27 : String;
CodBarras28,NomeProd28,ValorProd28,Referencia28 : String;
CodBarras29,NomeProd29,ValorProd29,Referencia29 : String;
CodBarras30,NomeProd30,ValorProd30,Referencia30 : String;
CodBarras31,NomeProd31,ValorProd31,Referencia31 : String;
CodBarras32,NomeProd32,ValorProd32,Referencia32 : String;
CodBarras33,NomeProd33,ValorProd33,Referencia33 : String;
CodBarras34,NomeProd34,ValorProd34,Referencia34 : String;
CodBarras35,NomeProd35,ValorProd35,Referencia35 : String;
CodBarras36,NomeProd36,ValorProd36,Referencia36 : String;
CodBarras37,NomeProd37,ValorProd37,Referencia37 : String;
CodBarras38,NomeProd38,ValorProd38,Referencia38 : String;
CodBarras39,NomeProd39,ValorProd39,Referencia39 : String;
CodBarras40,NomeProd40,ValorProd40,Referencia40 : String;
CodBarras41,NomeProd41,ValorProd41,Referencia41 : String;
CodBarras42,NomeProd42,ValorProd42,Referencia42 : String;
CodBarras43,NomeProd43,ValorProd43,Referencia43 : String;
CodBarras44,NomeProd44,ValorProd44,Referencia44 : String;
CodBarras45,NomeProd45,ValorProd45,Referencia45 : String;
CodBarras46,NomeProd46,ValorProd46,Referencia46 : String;
CodBarras47,NomeProd47,ValorProd47,Referencia47 : String;
CodBarras48,NomeProd48,ValorProd48,Referencia48 : String;
CodBarras49,NomeProd49,ValorProd49,Referencia49 : String;
CodBarras50,NomeProd50,ValorProd50,Referencia50 : String;
CodBarras51,NomeProd51,ValorProd51,Referencia51 : String;
CodBarras52,NomeProd52,ValorProd52,Referencia52 : String;
CodBarras53,NomeProd53,ValorProd53,Referencia53 : String;
CodBarras54,NomeProd54,ValorProd54,Referencia54 : String;
CodBarras55,NomeProd55,ValorProd55,Referencia55 : String;
CodBarras56,NomeProd56,ValorProd56,Referencia56 : String;
CodBarras57,NomeProd57,ValorProd57,Referencia57 : String;
CodBarras58,NomeProd58,ValorProd58,Referencia58 : String;
CodBarras59,NomeProd59,ValorProd59,Referencia59 : String;
CodBarras60,NomeProd60,ValorProd60,Referencia60 : String;
Etiqueta1,Etiqueta2,Etiqueta3,Etiqueta4,Etiqueta5 : String;
i : Integer;
begin

  with dmModule do begin

      Commit(ibTempEtiqueta6089);
      ibTempEtiqueta6089.Close;
      ibTempEtiqueta6089.SQL.Clear;
      ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089');
      ibTempEtiqueta6089.Open;

      (ibTempEtiqueta6089.FieldByName('VALOR') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO


      Application.CreateForm(TfrmEtiquetasPimaco6089,frmEtiquetasPimaco6089);

      TRY

        with frmEtiquetasPimaco6089 do begin

          frmEtiquetasPimaco6089.qrpPimaco6089.DataSet := ibTempEtiqueta6089;

          ///////////////////////////////////////////


                // for i:=1 to ibTempEtiqueta6089.RecordCount do begin

        //  For i:= 1 to (60- ibTempEtiqueta6089.recordCount)do begin
       //   while not ibTempEtiqueta6089.Eof do begin


          { if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Sim') Then begin

             Etiqueta1 := 'Sim';

           end; }

           if ckEtiqueta1.Checked Then begin//if Etiqueta1 = 'Sim' Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA1=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras1  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd1   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd1  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia1 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras1,qriCod1.Canvas);
             qrl_Referencia1.Caption  := NomeProd1;
             qrl_CodB1.Caption        := CodBarras1;
             qrl_Vlr1.Caption         := ValorProd1;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref1.Caption         := 'Vcto.';
                 qrl_Data1.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref1.Caption         := '';
                 qrl_Data1.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref1.Caption         := 'Ref.';
               qrl_Data1.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);
               end else begin
               qrl_Ref1.Caption         := '';
               qrl_Data1.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod1.Picture := nil;
             qrl_Referencia1.Caption  := '';
             qrl_CodB1.Caption        := '';
             qrl_Ref1.Caption         := '';
             qrl_Vlr1.Caption         := '';
             qrl_P1.Caption           := '';
             qrl_Data1.Caption        := '';

           end;

          ////////////////////////////////////////////
          { if (ibTempEtiqueta6089.FieldByName('ETIQUETA2').AsString = 'Sim') Then begin

             Etiqueta2 :='Sim';

           end;}

           if ckEtiqueta2.Checked Then begin//if Etiqueta2 = 'Sim' Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA2=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras2  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd2   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd2  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia2 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras2,qriCod2.Canvas);
             qrl_Referencia2.Caption  := NomeProd2 ;
             qrl_CodB2.Caption        := CodBarras2;
             qrl_Vlr2.Caption         := ValorProd2;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref2.Caption         := 'Vcto.';
                 qrl_Data2.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref2.Caption         := '';
                 qrl_Data2.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref2.Caption         := 'Ref.';
               qrl_Data2.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);
               end else begin
               qrl_Ref2.Caption         := '';
               qrl_Data2.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod2.Picture := nil;
             qrl_Referencia2.Caption  := '';
             qrl_CodB2.Caption        := '';
             qrl_Ref2.Caption         := '';
             qrl_Vlr2.Caption         := '';
             qrl_P2.Caption           := '';
             qrl_Data2.Caption        := '';

           end;

          ////////////////////////////////////////////
           {if (ibTempEtiqueta6089.FieldByName('ETIQUETA3').AsString = 'Sim') Then begin

             Etiqueta3 := 'Sim';

           end;}

           if ckEtiqueta3.Checked Then begin//if Etiqueta3 = 'Sim' Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA3=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras3  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd3   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd3  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia3 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras3,qriCod3.Canvas);
             qrl_Referencia3.Caption  := NomeProd3 ;
             qrl_CodB3.Caption        := CodBarras3;
             qrl_Vlr3.Caption         := ValorProd3;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref3.Caption         := 'Vcto.';
                 qrl_Data3.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref3.Caption         := '';
                 qrl_Data3.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref3.Caption         := 'Ref.';
               qrl_Data3.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);
               end else begin
               qrl_Ref3.Caption         := '';
               qrl_Data3.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod3.Picture := nil;
             qrl_Referencia3.Caption  := '';
             qrl_CodB3.Caption        := '';
             qrl_Ref3.Caption         := '';
             qrl_Vlr3.Caption         := '';
             qrl_P3.Caption           := '';
             qrl_Data3.Caption        := '';

           end;

          ////////////////////////////////////////////
          { if (ibTempEtiqueta6089.FieldByName('ETIQUETA4').AsString = 'Sim') Then begin

             Etiqueta4 := 'Sim';

           end;}

           if ckEtiqueta4.Checked Then begin//if Etiqueta4 = 'Sim' Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA4=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras4  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd4   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd4  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia4 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras4,qriCod4.Canvas);
             qrl_Referencia4.Caption  := NomeProd4 ;
             qrl_CodB4.Caption        := CodBarras4;
             qrl_Vlr4.Caption         := ValorProd4;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref4.Caption         := 'Vcto.';
                 qrl_Data4.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref4.Caption         := '';
                 qrl_Data4.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref4.Caption         := 'Ref.';
               qrl_Data4.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);
               end else begin
               qrl_Ref4.Caption         := '';
               qrl_Data4.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod4.Picture := nil;
             qrl_Referencia4.Caption  := '';
             qrl_CodB4.Caption        := '';
             qrl_Ref4.Caption         := '';
             qrl_Vlr4.Caption         := '';
             qrl_P4.Caption           := '';
             qrl_Data4.Caption        := '';

           end;

          ////////////////////////////////////////////
          { if (ibTempEtiqueta6089.FieldByName('ETIQUETA5').AsString = 'Sim') Then begin

             Etiqueta5 := 'Sim';

           end; }

           if ckEtiqueta5.Checked Then begin//if Etiqueta5 = 'Sim' Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA5=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras5  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd5   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd5  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia5 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras5,qriCod5.Canvas);
             qrl_Referencia5.Caption  := NomeProd5 ;
             qrl_CodB5.Caption        := CodBarras5;
             qrl_Vlr5.Caption         := ValorProd5;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref5.Caption         := 'Vcto.';
                 qrl_Data5.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref5.Caption         := '';
                 qrl_Data5.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref5.Caption         := 'Ref.';
               qrl_Data5.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);
               end else begin
               qrl_Ref5.Caption         := '';
               qrl_Data5.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod5.Picture := nil;
             qrl_Referencia5.Caption  := '';
             qrl_CodB5.Caption        := '';
             qrl_Ref5.Caption         := '';
             qrl_Vlr5.Caption         := '';
             qrl_P5.Caption           := '';
             qrl_Data5.Caption        := '';

           end;

          ////////////////////////////////////////////

     //   ibTempEtiqueta6089.Next;

    //  end;//while


           if ckEtiqueta6.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA6=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras6  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd6   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd6  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia6 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras6,qriCod6.Canvas);
             qrl_Referencia6.Caption  := NomeProd6 ;
             qrl_CodB6.Caption        := CodBarras6;
             qrl_Vlr6.Caption         := ValorProd6;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref6.Caption         := 'Vcto.';
                 qrl_Data6.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref6.Caption         := '';
                 qrl_Data6.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref6.Caption         := 'Ref.';
               qrl_Data6.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);
               end else begin
               qrl_Ref6.Caption         := '';
               qrl_Data6.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod6.Picture := nil;
             qrl_Referencia6.Caption  := '';
             qrl_CodB6.Caption        := '';
             qrl_Ref6.Caption         := '';
             qrl_Vlr6.Caption         := '';
             qrl_P6.Caption           := '';
             qrl_Data6.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta7.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA7=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras7  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd7   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd7  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia7 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras7,qriCod7.Canvas);
             qrl_Referencia7.Caption  := NomeProd7 ;
             qrl_CodB7.Caption        := CodBarras7;
             qrl_Vlr7.Caption         := ValorProd7;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref7.Caption         := 'Vcto.';
                 qrl_Data7.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref7.Caption         := '';
                 qrl_Data7.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref7.Caption         := 'Ref.';
               qrl_Data7.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref7.Caption         := '';
               qrl_Data7.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod7.Picture := nil;
             qrl_Referencia7.Caption  := '';
             qrl_CodB7.Caption        := '';
             qrl_Ref7.Caption         := '';
             qrl_Vlr7.Caption         := '';
             qrl_P7.Caption           := '';
             qrl_Data7.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta8.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA8=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras8  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd8   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd8  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia8 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras8,qriCod8.Canvas);
             qrl_Referencia8.Caption  := NomeProd8 ;
             qrl_CodB8.Caption        := CodBarras8;
             qrl_Vlr8.Caption         := ValorProd8;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref8.Caption         := 'Vcto.';
                 qrl_Data8.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref8.Caption         := '';
                 qrl_Data8.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref8.Caption         := 'Ref.';
               qrl_Data8.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref8.Caption         := '';
               qrl_Data8.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod8.Picture := nil;
             qrl_Referencia8.Caption  := '';
             qrl_CodB8.Caption        := '';
             qrl_Ref8.Caption         := '';
             qrl_Vlr8.Caption         := '';
             qrl_P8.Caption           := '';
             qrl_Data8.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta9.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA9=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras9  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd9   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd9  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia9 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras9,qriCod9.Canvas);
             qrl_Referencia9.Caption  := NomeProd9 ;
             qrl_CodB9.Caption        := CodBarras9;
             qrl_Vlr9.Caption         := ValorProd9;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref9.Caption         := 'Vcto.';
                 qrl_Data9.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref9.Caption         := '';
                 qrl_Data9.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref9.Caption         := 'Ref.';
               qrl_Data9.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref9.Caption         := '';
               qrl_Data9.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod9.Picture := nil;
             qrl_Referencia9.Caption  := '';
             qrl_CodB9.Caption        := '';
             qrl_Ref9.Caption         := '';
             qrl_Vlr9.Caption         := '';
             qrl_P9.Caption           := '';
             qrl_Data9.Caption        := '';


           end;
          ////////////////////////////////////////////

           if ckEtiqueta10.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA10=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras10  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd10   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd10  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia10 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras10,qriCod10.Canvas);
             qrl_Referencia10.Caption  := NomeProd10;
             qrl_CodB10.Caption        := CodBarras10;
             qrl_Vlr10.Caption         := ValorProd10;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref10.Caption         := 'Vcto.';
                 qrl_Data10.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref10.Caption         := '';
                 qrl_Data10.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref10.Caption         := 'Ref.';
               qrl_Data10.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref10.Caption         := '';
               qrl_Data10.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod10.Picture := nil;
             qrl_Referencia10.Caption  := '';
             qrl_CodB10.Caption        := '';
             qrl_Ref10.Caption         := '';
             qrl_Vlr10.Caption         := '';
             qrl_P10.Caption           := '';
             qrl_Data10.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta11.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA11=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras11  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd11   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd11  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia11 := (ibTempEtiqueta6089.FieldByName('REF').AsString);
             CriaCodigo(CodBarras11,qriCod11.Canvas);
             qrl_Referencia11.Caption  := NomeProd11;
             qrl_CodB11.Caption        := CodBarras11;
             qrl_Vlr11.Caption         := ValorProd11;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref11.Caption         := 'Vcto.';
                 qrl_Data11.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref11.Caption         := '';
                 qrl_Data11.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref11.Caption         := 'Ref.';
               qrl_Data11.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref11.Caption         := '';
               qrl_Data11.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod11.Picture := nil;
             qrl_Referencia11.Caption  := '';
             qrl_CodB11.Caption        := '';
             qrl_Ref11.Caption         := '';
             qrl_Vlr11.Caption         := '';
             qrl_P11.Caption           := '';
             qrl_Data11.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta12.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA12=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras12  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd12   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd12  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia12 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras12,qriCod12.Canvas);
             qrl_Referencia12.Caption  := NomeProd12;
             qrl_CodB12.Caption        := CodBarras12;
             qrl_Vlr12.Caption         := ValorProd12;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref12.Caption         := 'Vcto.';
                 qrl_Data12.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref12.Caption         := '';
                 qrl_Data12.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref12.Caption         := 'Ref.';
               qrl_Data12.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref12.Caption         := '';
               qrl_Data12.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod12.Picture := nil;
             qrl_Referencia12.Caption  := '';
             qrl_CodB12.Caption        := '';
             qrl_Ref12.Caption         := '';
             qrl_Vlr12.Caption         := '';
             qrl_P12.Caption           := '';
             qrl_Data12.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta13.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA13=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras13  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd13   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd13  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia13 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras13,qriCod13.Canvas);
             qrl_Referencia13.Caption  := NomeProd13;
             qrl_CodB13.Caption        := CodBarras13;
             qrl_Vlr13.Caption         := ValorProd13;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref13.Caption         := 'Vcto.';
                 qrl_Data13.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref13.Caption         := '';
                 qrl_Data13.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref13.Caption         := 'Ref.';
               qrl_Data13.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref13.Caption         := '';
               qrl_Data13.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod13.Picture := nil;
             qrl_Referencia13.Caption  := '';
             qrl_CodB13.Caption        := '';
             qrl_Ref13.Caption         := '';
             qrl_Vlr13.Caption         := '';
             qrl_P13.Caption           := '';
             qrl_Data13.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta14.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA14=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras14  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd14   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd14  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia14 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras14,qriCod14.Canvas);
             qrl_Referencia14.Caption  := NomeProd14;
             qrl_CodB14.Caption        := CodBarras14;
             qrl_Vlr14.Caption         := ValorProd14;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref14.Caption         := 'Vcto.';
                 qrl_Data14.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref14.Caption         := '';
                 qrl_Data14.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref14.Caption         := 'Ref.';
               qrl_Data14.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref14.Caption         := '';
               qrl_Data14.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod14.Picture := nil;
             qrl_Referencia14.Caption  := '';
             qrl_CodB14.Caption        := '';
             qrl_Ref14.Caption         := '';
             qrl_Vlr14.Caption         := '';
             qrl_P14.Caption           := '';
             qrl_Data14.Caption        := '';

           end;
          ////////////////////////////////////////////


           if ckEtiqueta15.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA15=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras15  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd15   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd15  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia15 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras15,qriCod15.Canvas);
             qrl_Referencia15.Caption  := NomeProd15;
             qrl_CodB15.Caption        := CodBarras15;
             qrl_Vlr15.Caption         := ValorProd15;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref15.Caption         := 'Vcto.';
                 qrl_Data15.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref15.Caption         := '';
                 qrl_Data15.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref15.Caption         := 'Ref.';
               qrl_Data15.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref15.Caption         := '';
               qrl_Data15.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod15.Picture := nil;
             qrl_Referencia15.Caption  := '';
             qrl_CodB15.Caption        := '';
             qrl_Ref15.Caption         := '';
             qrl_Vlr15.Caption         := '';
             qrl_P15.Caption           := '';
             qrl_Data15.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta16.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA16=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras16  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd16   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd16  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia16 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras16,qriCod16.Canvas);
             qrl_Referencia16.Caption  := NomeProd16;
             qrl_CodB16.Caption        := CodBarras16;
             qrl_Vlr16.Caption         := ValorProd16;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref16.Caption         := 'Vcto.';
                 qrl_Data16.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref16.Caption         := '';
                 qrl_Data16.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref16.Caption         := 'Ref.';
               qrl_Data16.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref16.Caption         := '';
               qrl_Data16.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod16.Picture := nil;
             qrl_Referencia16.Caption  := '';
             qrl_CodB16.Caption        := '';
             qrl_Ref16.Caption         := '';
             qrl_Vlr16.Caption         := '';
             qrl_P16.Caption           := '';
             qrl_Data16.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta17.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA17=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras17  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd17   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd17  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia17 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras17,qriCod17.Canvas);
             qrl_Referencia17.Caption  := NomeProd17;
             qrl_CodB17.Caption        := CodBarras17;
             qrl_Vlr17.Caption         := ValorProd17;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref17.Caption         := 'Vcto.';
                 qrl_Data17.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref17.Caption         := '';
                 qrl_Data17.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref17.Caption         := 'Ref.';
               qrl_Data17.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref17.Caption         := '';
               qrl_Data17.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod17.Picture := nil;
             qrl_Referencia17.Caption  := '';
             qrl_CodB17.Caption        := '';
             qrl_Ref17.Caption         := '';
             qrl_Vlr17.Caption         := '';
             qrl_P17.Caption           := '';
             qrl_Data17.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta18.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA18=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras18  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd18   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd18  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia18 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras18,qriCod18.Canvas);
             qrl_Referencia18.Caption  := NomeProd18;
             qrl_CodB18.Caption        := CodBarras18;
             qrl_Vlr18.Caption         := ValorProd18;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref18.Caption         := 'Vcto.';
                 qrl_Data18.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref18.Caption         := '';
                 qrl_Data18.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref18.Caption         := 'Ref.';
               qrl_Data18.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref18.Caption         := '';
               qrl_Data18.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod18.Picture := nil;
             qrl_Referencia18.Caption  := '';
             qrl_CodB18.Caption        := '';
             qrl_Ref18.Caption         := '';
             qrl_Vlr18.Caption         := '';
             qrl_P18.Caption           := '';
             qrl_Data18.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta19.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA19=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras19  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd19   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd19  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia19 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras19,qriCod19.Canvas);
             qrl_Referencia19.Caption  := NomeProd19;
             qrl_CodB19.Caption        := CodBarras19;
             qrl_Vlr19.Caption         := ValorProd19;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref19.Caption         := 'Vcto.';
                 qrl_Data19.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref19.Caption         := '';
                 qrl_Data19.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref19.Caption         := 'Ref.';
               qrl_Data19.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref19.Caption         := '';
               qrl_Data19.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod19.Picture := nil;
             qrl_Referencia19.Caption  := '';
             qrl_CodB19.Caption        := '';
             qrl_Ref19.Caption         := '';
             qrl_Vlr19.Caption         := '';
             qrl_P19.Caption           := '';
             qrl_Data19.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta20.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA20=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras20  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd20   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd20  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia20 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras20,qriCod20.Canvas);
             qrl_Referencia20.Caption  := NomeProd20;
             qrl_CodB20.Caption        := CodBarras20;
             qrl_Vlr20.Caption         := ValorProd20;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref20.Caption         := 'Vcto.';
                 qrl_Data20.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref20.Caption         := '';
                 qrl_Data20.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref20.Caption         := 'Ref.';
               qrl_Data20.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref20.Caption         := '';
               qrl_Data20.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod20.Picture := nil;
             qrl_Referencia20.Caption  := '';
             qrl_CodB20.Caption        := '';
             qrl_Ref20.Caption         := '';
             qrl_Vlr20.Caption         := '';
             qrl_P20.Caption           := '';
             qrl_Data20.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta21.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA21=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras21  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd21   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd21  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia21 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras21,qriCod21.Canvas);
             qrl_Referencia21.Caption  := NomeProd21;
             qrl_CodB21.Caption        := CodBarras21;
             qrl_Vlr21.Caption         := ValorProd21;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref21.Caption         := 'Vcto.';
                 qrl_Data21.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref21.Caption         := '';
                 qrl_Data21.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref21.Caption         := 'Ref.';
               qrl_Data21.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref21.Caption         := '';
               qrl_Data21.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod21.Picture := nil;
             qrl_Referencia21.Caption  := '';
             qrl_CodB21.Caption        := '';
             qrl_Ref21.Caption         := '';
             qrl_Vlr21.Caption         := '';
             qrl_P21.Caption           := '';
             qrl_Data21.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta22.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA22=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras22  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd22   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd22  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia22 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras22,qriCod22.Canvas);
             qrl_Referencia22.Caption  := NomeProd22;
             qrl_CodB22.Caption        := CodBarras22;
             qrl_Vlr22.Caption         := ValorProd22;


             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref22.Caption         := 'Vcto.';
                 qrl_Data22.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref22.Caption         := '';
                 qrl_Data22.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref22.Caption         := 'Ref.';
               qrl_Data22.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref22.Caption         := '';
               qrl_Data22.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod22.Picture := nil;
             qrl_Referencia22.Caption  := '';
             qrl_CodB22.Caption        := '';
             qrl_Ref22.Caption         := '';
             qrl_Vlr22.Caption         := '';
             qrl_P22.Caption           := '';
             qrl_Data22.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta23.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA23=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras23  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd23   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd23  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia23 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras23,qriCod23.Canvas);
             qrl_Referencia23.Caption  := NomeProd23;
             qrl_CodB23.Caption        := CodBarras23;
             qrl_Vlr23.Caption         := ValorProd23;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref23.Caption         := 'Vcto.';
                 qrl_Data23.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref23.Caption         := '';
                 qrl_Data23.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref23.Caption         := 'Ref.';
               qrl_Data23.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref23.Caption         := '';
               qrl_Data23.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod23.Picture := nil;
             qrl_Referencia23.Caption  := '';
             qrl_CodB23.Caption        := '';
             qrl_Ref23.Caption         := '';
             qrl_Vlr23.Caption         := '';
             qrl_P23.Caption           := '';
             qrl_Data23.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta24.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA24=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras24  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd24   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd24  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia24 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras24,qriCod24.Canvas);
             qrl_Referencia24.Caption  := NomeProd24;
             qrl_CodB24.Caption        := CodBarras24;
             qrl_Vlr24.Caption         := ValorProd24;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref24.Caption         := 'Vcto.';
                 qrl_Data24.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref24.Caption         := '';
                 qrl_Data24.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref24.Caption         := 'Ref.';
               qrl_Data24.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref24.Caption         := '';
               qrl_Data24.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod24.Picture := nil;
             qrl_Referencia24.Caption  := '';
             qrl_CodB24.Caption        := '';
             qrl_Ref24.Caption         := '';
             qrl_Vlr24.Caption         := '';
             qrl_P24.Caption           := '';
             qrl_Data24.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta25.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA25=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras25  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd25   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd25  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia25 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras25,qriCod25.Canvas);
             qrl_Referencia25.Caption  := NomeProd25;
             qrl_CodB25.Caption        := CodBarras25;
             qrl_Vlr25.Caption         := ValorProd25;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref25.Caption         := 'Vcto.';
                 qrl_Data25.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref25.Caption         := '';
                 qrl_Data25.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref25.Caption         := 'Ref.';
               qrl_Data25.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref25.Caption         := '';
               qrl_Data25.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod25.Picture := nil;
             qrl_Referencia25.Caption  := '';
             qrl_CodB25.Caption        := '';
             qrl_Ref25.Caption         := '';
             qrl_Vlr25.Caption         := '';
             qrl_P25.Caption           := '';
             qrl_Data25.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta26.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA26=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras26  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd26   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd26  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia26 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras26,qriCod26.Canvas);
             qrl_Referencia26.Caption  := NomeProd26;
             qrl_CodB26.Caption        := CodBarras26;
             qrl_Vlr26.Caption         := ValorProd26;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref26.Caption         := 'Vcto.';
                 qrl_Data26.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref26.Caption         := '';
                 qrl_Data26.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref26.Caption         := 'Ref.';
               qrl_Data26.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref26.Caption         := '';
               qrl_Data26.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod26.Picture := nil;
             qrl_Referencia26.Caption  := '';
             qrl_CodB26.Caption        := '';
             qrl_Ref26.Caption         := '';
             qrl_Vlr26.Caption         := '';
             qrl_P26.Caption           := '';
             qrl_Data26.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta27.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA27=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras27  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd27   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd27  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia27 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras27,qriCod27.Canvas);
             qrl_Referencia27.Caption  := NomeProd27;
             qrl_CodB27.Caption        := CodBarras27;
             qrl_Vlr27.Caption         := ValorProd27;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref27.Caption         := 'Vcto.';
                 qrl_Data27.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref27.Caption         := '';
                 qrl_Data27.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref27.Caption         := 'Ref.';
               qrl_Data27.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref27.Caption         := '';
               qrl_Data27.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod27.Picture := nil;
             qrl_Referencia27.Caption  := '';
             qrl_CodB27.Caption        := '';
             qrl_Ref27.Caption         := '';
             qrl_Vlr27.Caption         := '';
             qrl_P27.Caption           := '';
             qrl_Data27.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta28.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA28=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras28  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd28   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd28  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia28 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras28,qriCod28.Canvas);
             qrl_Referencia28.Caption  := NomeProd28;
             qrl_CodB28.Caption        := CodBarras28;
             qrl_Vlr28.Caption         := ValorProd28;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref28.Caption         := 'Vcto.';
                 qrl_Data28.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref28.Caption         := '';
                 qrl_Data28.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref28.Caption         := 'Ref.';
               qrl_Data28.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref28.Caption         := '';
               qrl_Data28.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod28.Picture := nil;
             qrl_Referencia28.Caption  := '';
             qrl_CodB28.Caption        := '';
             qrl_Ref28.Caption         := '';
             qrl_Vlr28.Caption         := '';
             qrl_P28.Caption           := '';
             qrl_Data28.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta29.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA29=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras29  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd29   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd29  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia29 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras29,qriCod29.Canvas);
             qrl_Referencia29.Caption  := NomeProd29;
             qrl_CodB29.Caption        := CodBarras29;
             qrl_Vlr29.Caption         := ValorProd29;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref29.Caption         := 'Vcto.';
                 qrl_Data29.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref29.Caption         := '';
                 qrl_Data29.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref29.Caption         := 'Ref.';
               qrl_Data29.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref29.Caption         := '';
               qrl_Data29.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod29.Picture := nil;
             qrl_Referencia29.Caption  := '';
             qrl_CodB29.Caption        := '';
             qrl_Ref29.Caption         := '';
             qrl_Vlr29.Caption         := '';
             qrl_P29.Caption           := '';
             qrl_Data29.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta30.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA30=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras30  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd30   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd30  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia30 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras30,qriCod30.Canvas);
             qrl_Referencia30.Caption  := NomeProd30;
             qrl_CodB30.Caption        := CodBarras30;
             qrl_Vlr30.Caption         := ValorProd30;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref30.Caption         := 'Vcto.';
                 qrl_Data30.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref30.Caption         := '';
                 qrl_Data30.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref30.Caption         := 'Ref.';
               qrl_Data30.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref30.Caption         := '';
               qrl_Data30.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod30.Picture := nil;
             qrl_Referencia30.Caption  := '';
             qrl_CodB30.Caption        := '';
             qrl_Ref30.Caption         := '';
             qrl_Vlr30.Caption         := '';
             qrl_P30.Caption           := '';
             qrl_Data30.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta31.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA31=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras31  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd31   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd31  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia31 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras31,qriCod31.Canvas);
             qrl_Referencia31.Caption  := NomeProd31;
             qrl_CodB31.Caption        := CodBarras31;
             qrl_Vlr31.Caption         := ValorProd31;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref31.Caption         := 'Vcto.';
                 qrl_Data31.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref31.Caption         := '';
                 qrl_Data31.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref31.Caption         := 'Ref.';
               qrl_Data31.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref31.Caption         := '';
               qrl_Data31.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod31.Picture := nil;
             qrl_Referencia31.Caption  := '';
             qrl_CodB31.Caption        := '';
             qrl_Ref31.Caption         := '';
             qrl_Vlr31.Caption         := '';
             qrl_P31.Caption           := '';
             qrl_Data31.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta32.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA32=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras32  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd32   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd32  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia32 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras32,qriCod32.Canvas);
             qrl_Referencia32.Caption  := NomeProd32;
             qrl_CodB32.Caption        := CodBarras32;
             qrl_Vlr32.Caption         := ValorProd32;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref32.Caption         := 'Vcto.';
                 qrl_Data32.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref32.Caption         := '';
                 qrl_Data32.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref32.Caption         := 'Ref.';
               qrl_Data32.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref32.Caption         := '';
               qrl_Data32.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod32.Picture := nil;
             qrl_Referencia32.Caption  := '';
             qrl_CodB32.Caption        := '';
             qrl_Ref32.Caption         := '';
             qrl_Vlr32.Caption         := '';
             qrl_P32.Caption           := '';
             qrl_Data32.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta33.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA33=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras33  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd33   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd33  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia33 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras33,qriCod33.Canvas);
             qrl_Referencia33.Caption  := NomeProd33;
             qrl_CodB33.Caption        := CodBarras33;
             qrl_Vlr33.Caption         := ValorProd33;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref33.Caption         := 'Vcto.';
                 qrl_Data33.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref33.Caption         := '';
                 qrl_Data33.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref33.Caption         := 'Ref.';
               qrl_Data33.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref33.Caption         := '';
               qrl_Data33.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod33.Picture := nil;
             qrl_Referencia33.Caption  := '';
             qrl_CodB33.Caption        := '';
             qrl_Ref33.Caption         := '';
             qrl_Vlr33.Caption         := '';
             qrl_P33.Caption           := '';
             qrl_Data33.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta34.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA34=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras34  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd34   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd34  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia34 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras34,qriCod34.Canvas);
             qrl_Referencia34.Caption  := NomeProd34;
             qrl_CodB34.Caption        := CodBarras34;
             qrl_Vlr34.Caption         := ValorProd34;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref34.Caption         := 'Vcto.';
                 qrl_Data34.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref34.Caption         := '';
                 qrl_Data34.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref34.Caption         := 'Ref.';
               qrl_Data34.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref34.Caption         := '';
               qrl_Data34.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod34.Picture := nil;
             qrl_Referencia34.Caption  := '';
             qrl_CodB34.Caption        := '';
             qrl_Ref34.Caption         := '';
             qrl_Vlr34.Caption         := '';
             qrl_P34.Caption           := '';
             qrl_Data34.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta35.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA35=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras35  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd35   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd35  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia35 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras35,qriCod35.Canvas);
             qrl_Referencia35.Caption  := NomeProd35;
             qrl_CodB35.Caption        := CodBarras35;
             qrl_Vlr35.Caption         := ValorProd35;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref35.Caption         := 'Vcto.';
                 qrl_Data35.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref35.Caption         := '';
                 qrl_Data35.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref35.Caption         := 'Ref.';
               qrl_Data35.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref35.Caption         := '';
               qrl_Data35.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod35.Picture := nil;
             qrl_Referencia35.Caption  := '';
             qrl_CodB35.Caption        := '';
             qrl_Ref35.Caption         := '';
             qrl_Vlr35.Caption         := '';
             qrl_P35.Caption           := '';
             qrl_Data35.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta36.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA36=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras36  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd36   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd36  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia36 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras36,qriCod36.Canvas);
             qrl_Referencia36.Caption  := NomeProd36;
             qrl_CodB36.Caption        := CodBarras36;
             qrl_Vlr36.Caption         := ValorProd36;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref36.Caption         := 'Vcto.';
                 qrl_Data36.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref36.Caption         := '';
                 qrl_Data36.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref36.Caption         := 'Ref.';
               qrl_Data36.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref36.Caption         := '';
               qrl_Data36.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod36.Picture := nil;
             qrl_Referencia36.Caption  := '';
             qrl_CodB36.Caption        := '';
             qrl_Ref36.Caption         := '';
             qrl_Vlr36.Caption         := '';
             qrl_P36.Caption           := '';
             qrl_Data36.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta37.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA37=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras37  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd37   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd37  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia37 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras37,qriCod37.Canvas);
             qrl_Referencia37.Caption  := NomeProd37;
             qrl_CodB37.Caption        := CodBarras37;
             qrl_Vlr37.Caption         := ValorProd37;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref37.Caption         := 'Vcto.';
                 qrl_Data37.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref37.Caption         := '';
                 qrl_Data37.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref37.Caption         := 'Ref.';
               qrl_Data37.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref37.Caption         := '';
               qrl_Data37.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod37.Picture := nil;
             qrl_Referencia37.Caption  := '';
             qrl_CodB37.Caption        := '';
             qrl_Ref37.Caption         := '';
             qrl_Vlr37.Caption         := '';
             qrl_P37.Caption           := '';
             qrl_Data37.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta38.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA38=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras38  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd38   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd38  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia38 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras38,qriCod38.Canvas);
             qrl_Referencia38.Caption  := NomeProd38;
             qrl_CodB38.Caption        := CodBarras38;
             qrl_Vlr38.Caption         := ValorProd38;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref38.Caption         := 'Vcto.';
                 qrl_Data38.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref38.Caption         := '';
                 qrl_Data38.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref38.Caption         := 'Ref.';
               qrl_Data38.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref38.Caption         := '';
               qrl_Data38.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod38.Picture := nil;
             qrl_Referencia38.Caption  := '';
             qrl_CodB38.Caption        := '';
             qrl_Ref38.Caption         := '';
             qrl_Vlr38.Caption         := '';
             qrl_P38.Caption           := '';
             qrl_Data38.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta39.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA39=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras39  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd39   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd39  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia39 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras39,qriCod39.Canvas);
             qrl_Referencia39.Caption  := NomeProd39;
             qrl_CodB39.Caption        := CodBarras39;
             qrl_Vlr39.Caption         := ValorProd39;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref39.Caption         := 'Vcto.';
                 qrl_Data39.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref39.Caption         := '';
                 qrl_Data39.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref39.Caption         := 'Ref.';
               qrl_Data39.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref39.Caption         := '';
               qrl_Data39.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod39.Picture := nil;
             qrl_Referencia39.Caption  := '';
             qrl_CodB39.Caption        := '';
             qrl_Ref39.Caption         := '';
             qrl_Vlr39.Caption         := '';
             qrl_P39.Caption           := '';
             qrl_Data39.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta40.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA40=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras40  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd40   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd40  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia40 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras40,qriCod40.Canvas);
             qrl_Referencia40.Caption  := NomeProd40;
             qrl_CodB40.Caption        := CodBarras40;
             qrl_Vlr40.Caption         := ValorProd40;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref40.Caption         := 'Vcto.';
                 qrl_Data40.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref40.Caption         := '';
                 qrl_Data40.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref40.Caption         := 'Ref.';
               qrl_Data40.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref40.Caption         := '';
               qrl_Data40.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod40.Picture := nil;
             qrl_Referencia40.Caption  := '';
             qrl_CodB40.Caption        := '';
             qrl_Ref40.Caption         := '';
             qrl_Vlr40.Caption         := '';
             qrl_P40.Caption           := '';
             qrl_Data40.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta41.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA41=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras41  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd41   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd41  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia41 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras41,qriCod41.Canvas);
             qrl_Referencia41.Caption  := NomeProd41;
             qrl_CodB41.Caption        := CodBarras41;
             qrl_Vlr41.Caption         := ValorProd41;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref41.Caption         := 'Vcto.';
                 qrl_Data41.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref41.Caption         := '';
                 qrl_Data41.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref41.Caption         := 'Ref.';
               qrl_Data41.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref41.Caption         := '';
               qrl_Data41.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod41.Picture := nil;
             qrl_Referencia41.Caption  := '';
             qrl_CodB41.Caption        := '';
             qrl_Ref41.Caption         := '';
             qrl_Vlr41.Caption         := '';
             qrl_P41.Caption           := '';
             qrl_Data41.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta42.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA42=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras42  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd42   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd42  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia42 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras42,qriCod42.Canvas);
             qrl_Referencia42.Caption  := NomeProd42;
             qrl_CodB42.Caption        := CodBarras42;
             qrl_Vlr42.Caption         := ValorProd42;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref42.Caption         := 'Vcto.';
                 qrl_Data42.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref42.Caption         := '';
                 qrl_Data42.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref42.Caption         := 'Ref.';
               qrl_Data42.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref42.Caption         := '';
               qrl_Data42.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod42.Picture := nil;
             qrl_Referencia42.Caption  := '';
             qrl_CodB42.Caption        := '';
             qrl_Ref42.Caption         := '';
             qrl_Vlr42.Caption         := '';
             qrl_P42.Caption           := '';
             qrl_Data42.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta43.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA43=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras43  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd43   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd43  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia43 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras43,qriCod43.Canvas);
             qrl_Referencia43.Caption  := NomeProd43;
             qrl_CodB43.Caption        := CodBarras43;
             qrl_Vlr43.Caption         := ValorProd43;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref43.Caption         := 'Vcto.';
                 qrl_Data43.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref43.Caption         := '';
                 qrl_Data43.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref43.Caption         := 'Ref.';
               qrl_Data43.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref43.Caption         := '';
               qrl_Data43.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod43.Picture := nil;
             qrl_Referencia43.Caption  := '';
             qrl_CodB43.Caption        := '';
             qrl_Ref43.Caption         := '';
             qrl_Vlr43.Caption         := '';
             qrl_P43.Caption           := '';
             qrl_Data43.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta44.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA44=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras44  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd44   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd44  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia44 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras44,qriCod44.Canvas);
             qrl_Referencia44.Caption  := NomeProd44;
             qrl_CodB44.Caption        := CodBarras44;
             qrl_Vlr44.Caption         := ValorProd44;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref44.Caption         := 'Vcto.';
                 qrl_Data44.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref44.Caption         := '';
                 qrl_Data44.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref44.Caption         := 'Ref.';
               qrl_Data44.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref44.Caption         := '';
               qrl_Data44.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod44.Picture := nil;
             qrl_Referencia44.Caption  := '';
             qrl_CodB44.Caption        := '';
             qrl_Ref44.Caption         := '';
             qrl_Vlr44.Caption         := '';
             qrl_P44.Caption           := '';
             qrl_Data44.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta45.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA45=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras45  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd45   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd45  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia45 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras45,qriCod45.Canvas);
             qrl_Referencia45.Caption  := NomeProd45;
             qrl_CodB45.Caption        := CodBarras45;
             qrl_Vlr45.Caption         := ValorProd45;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref45.Caption         := 'Vcto.';
                 qrl_Data45.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref45.Caption         := '';
                 qrl_Data45.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref45.Caption         := 'Ref.';
               qrl_Data45.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref45.Caption         := '';
               qrl_Data45.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod45.Picture := nil;
             qrl_Referencia45.Caption  := '';
             qrl_CodB45.Caption        := '';
             qrl_Ref45.Caption         := '';
             qrl_Vlr45.Caption         := '';
             qrl_P45.Caption           := '';
             qrl_Data45.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta46.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA46=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras46  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd46   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd46  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia46 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras46,qriCod46.Canvas);
             qrl_Referencia46.Caption  := NomeProd46;
             qrl_CodB46.Caption        := CodBarras46;
             qrl_Vlr46.Caption         := ValorProd46;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref46.Caption         := 'Vcto.';
                 qrl_Data46.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref46.Caption         := '';
                 qrl_Data46.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref46.Caption         := 'Ref.';
               qrl_Data46.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref46.Caption         := '';
               qrl_Data46.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod46.Picture := nil;
             qrl_Referencia46.Caption  := '';
             qrl_CodB46.Caption        := '';
             qrl_Ref46.Caption         := '';
             qrl_Vlr46.Caption         := '';
             qrl_P46.Caption           := '';
             qrl_Data46.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta47.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA47=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras47  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd47   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd47  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia47 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras47,qriCod47.Canvas);
             qrl_Referencia47.Caption  := NomeProd47;
             qrl_CodB47.Caption        := CodBarras47;
             qrl_Vlr47.Caption         := ValorProd47;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref47.Caption         := 'Vcto.';
                 qrl_Data47.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref47.Caption         := '';
                 qrl_Data47.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref47.Caption         := 'Ref.';
               qrl_Data47.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref47.Caption         := '';
               qrl_Data47.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod47.Picture := nil;
             qrl_Referencia47.Caption  := '';
             qrl_CodB47.Caption        := '';
             qrl_Ref47.Caption         := '';
             qrl_Vlr47.Caption         := '';
             qrl_P47.Caption           := '';
             qrl_Data47.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta48.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA48=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras48  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd48   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd48  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia48 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras48,qriCod48.Canvas);
             qrl_Referencia48.Caption  := NomeProd48;
             qrl_CodB48.Caption        := CodBarras48;
             qrl_Vlr48.Caption         := ValorProd48;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref48.Caption         := 'Vcto.';
                 qrl_Data48.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref48.Caption         := '';
                 qrl_Data48.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref48.Caption         := 'Ref.';
               qrl_Data48.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref48.Caption         := '';
               qrl_Data48.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod48.Picture := nil;
             qrl_Referencia48.Caption  := '';
             qrl_CodB48.Caption        := '';
             qrl_Ref48.Caption         := '';
             qrl_Vlr48.Caption         := '';
             qrl_P48.Caption           := '';
             qrl_Data48.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta49.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA49=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras49  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd49   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd49  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia49 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras49,qriCod49.Canvas);
             qrl_Referencia49.Caption  := NomeProd49;
             qrl_CodB49.Caption        := CodBarras49;
             qrl_Vlr49.Caption         := ValorProd49;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref49.Caption         := 'Vcto.';
                 qrl_Data49.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref49.Caption         := '';
                 qrl_Data49.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref49.Caption         := 'Ref.';
               qrl_Data49.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref49.Caption         := '';
               qrl_Data49.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod49.Picture := nil;
             qrl_Referencia49.Caption  := '';
             qrl_CodB49.Caption        := '';
             qrl_Ref49.Caption         := '';
             qrl_Vlr49.Caption         := '';
             qrl_P49.Caption           := '';
             qrl_Data49.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta50.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA50=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras50  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd50   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd50  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia50 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras50,qriCod50.Canvas);
             qrl_Referencia50.Caption  := NomeProd50;
             qrl_CodB50.Caption        := CodBarras50;
             qrl_Vlr50.Caption         := ValorProd50;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref50.Caption         := 'Vcto.';
                 qrl_Data50.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref50.Caption         := '';
                 qrl_Data50.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref50.Caption         := 'Ref.';
               qrl_Data50.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref50.Caption         := '';
               qrl_Data50.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod50.Picture := nil;
             qrl_Referencia50.Caption  := '';
             qrl_CodB50.Caption        := '';
             qrl_Ref50.Caption         := '';
             qrl_Vlr50.Caption         := '';
             qrl_P50.Caption           := '';
             qrl_Data50.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta51.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA51=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras51  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd51   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd51  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia51 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras51,qriCod51.Canvas);
             qrl_Referencia51.Caption  := NomeProd51;
             qrl_CodB51.Caption        := CodBarras51;
             qrl_Vlr51.Caption         := ValorProd51;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref51.Caption         := 'Vcto.';
                 qrl_Data51.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref51.Caption         := '';
                 qrl_Data51.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref51.Caption         := 'Ref.';
               qrl_Data51.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref51.Caption         := '';
               qrl_Data51.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod51.Picture := nil;
             qrl_Referencia51.Caption  := '';
             qrl_CodB51.Caption        := '';
             qrl_Ref51.Caption         := '';
             qrl_Vlr51.Caption         := '';
             qrl_P51.Caption           := '';
             qrl_Data51.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta52.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA52=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras52  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd52   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd52  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia52 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras52,qriCod52.Canvas);
             qrl_Referencia52.Caption  := NomeProd52;
             qrl_CodB52.Caption        := CodBarras52;
             qrl_Vlr52.Caption         := ValorProd52;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref52.Caption         := 'Vcto.';
                 qrl_Data52.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref52.Caption         := '';
                 qrl_Data52.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref52.Caption         := 'Ref.';
               qrl_Data52.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref52.Caption         := '';
               qrl_Data52.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod52.Picture := nil;
             qrl_Referencia52.Caption  := '';
             qrl_CodB52.Caption        := '';
             qrl_Ref52.Caption         := '';
             qrl_Vlr52.Caption         := '';
             qrl_P52.Caption           := '';
             qrl_Data52.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta53.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA53=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras53  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd53   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd53  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia53 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras53,qriCod53.Canvas);
             qrl_Referencia53.Caption  := NomeProd53;
             qrl_CodB53.Caption        := CodBarras53;
             qrl_Vlr53.Caption         := ValorProd53;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref53.Caption         := 'Vcto.';
                 qrl_Data53.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref53.Caption         := '';
                 qrl_Data53.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref53.Caption         := 'Ref.';
               qrl_Data53.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref53.Caption         := '';
               qrl_Data53.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod53.Picture := nil;
             qrl_Referencia53.Caption  := '';
             qrl_CodB53.Caption        := '';
             qrl_Ref53.Caption         := '';
             qrl_Vlr53.Caption         := '';
             qrl_P53.Caption           := '';
             qrl_Data53.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta54.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA54=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras54  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd54   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd54  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia54 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras54,qriCod54.Canvas);
             qrl_Referencia54.Caption  := NomeProd54;
             qrl_CodB54.Caption        := CodBarras54;
             qrl_Vlr54.Caption         := ValorProd54;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref54.Caption         := 'Vcto.';
                 qrl_Data54.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref54.Caption         := '';
                 qrl_Data54.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref54.Caption         := 'Ref.';
               qrl_Data54.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref54.Caption         := '';
               qrl_Data54.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod54.Picture := nil;
             qrl_Referencia54.Caption  := '';
             qrl_CodB54.Caption        := '';
             qrl_Ref54.Caption         := '';
             qrl_Vlr54.Caption         := '';
             qrl_P54.Caption           := '';
             qrl_Data54.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta55.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA55=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras55  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd55   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd55  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia55 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras55,qriCod55.Canvas);
             qrl_Referencia55.Caption  := NomeProd55;
             qrl_CodB55.Caption        := CodBarras55;
             qrl_Vlr55.Caption         := ValorProd55;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref55.Caption         := 'Vcto.';
                 qrl_Data55.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref55.Caption         := '';
                 qrl_Data55.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref55.Caption         := 'Ref.';
               qrl_Data55.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref55.Caption         := '';
               qrl_Data55.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod55.Picture := nil;
             qrl_Referencia55.Caption  := '';
             qrl_CodB55.Caption        := '';
             qrl_Ref55.Caption         := '';
             qrl_Vlr55.Caption         := '';
             qrl_P55.Caption           := '';
             qrl_Data55.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta56.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA56=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras56  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd56   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd56  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia56 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras56,qriCod56.Canvas);
             qrl_Referencia56.Caption  := NomeProd56;
             qrl_CodB56.Caption        := CodBarras56;
             qrl_Vlr56.Caption         := ValorProd56;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref56.Caption         := 'Vcto.';
                 qrl_Data56.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref56.Caption         := '';
                 qrl_Data56.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref56.Caption         := 'Ref.';
               qrl_Data56.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref56.Caption         := '';
               qrl_Data56.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod56.Picture := nil;
             qrl_Referencia56.Caption  := '';
             qrl_CodB56.Caption        := '';
             qrl_Ref56.Caption         := '';
             qrl_Vlr56.Caption         := '';
             qrl_P56.Caption           := '';
             qrl_Data56.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta57.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA57=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras57  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd57   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd57  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia57 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras57,qriCod57.Canvas);
             qrl_Referencia57.Caption  := NomeProd57;
             qrl_CodB57.Caption        := CodBarras57;
             qrl_Vlr57.Caption         := ValorProd57;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref57.Caption         := 'Vcto.';
                 qrl_Data57.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref57.Caption         := '';
                 qrl_Data57.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref57.Caption         := 'Ref.';
               qrl_Data57.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref57.Caption         := '';
               qrl_Data57.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod57.Picture := nil;
             qrl_Referencia57.Caption  := '';
             qrl_CodB57.Caption        := '';
             qrl_Ref57.Caption         := '';
             qrl_Vlr57.Caption         := '';
             qrl_P57.Caption           := '';
             qrl_Data57.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta58.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA58=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras58  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd58   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd58  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia58 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras58,qriCod58.Canvas);
             qrl_Referencia58.Caption  := NomeProd58;
             qrl_CodB58.Caption        := CodBarras58;
             qrl_Vlr58.Caption         := ValorProd58;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref58.Caption         := 'Vcto.';
                 qrl_Data58.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref58.Caption         := '';
                 qrl_Data58.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref58.Caption         := 'Ref.';
               qrl_Data58.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref58.Caption         := '';
               qrl_Data58.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod58.Picture := nil;
             qrl_Referencia58.Caption  := '';
             qrl_CodB58.Caption        := '';
             qrl_Ref58.Caption         := '';
             qrl_Vlr58.Caption         := '';
             qrl_P58.Caption           := '';
             qrl_Data58.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta59.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA59=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras59  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd59   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd59  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia59 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras59,qriCod59.Canvas);
             qrl_Referencia59.Caption  := NomeProd59;
             qrl_CodB59.Caption        := CodBarras59;
             qrl_Vlr59.Caption         := ValorProd59;

             if(ckEtiquetasRef.Checked = false)Then begin

               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref59.Caption         := 'Vcto.';
                 qrl_Data59.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref59.Caption         := '';
                 qrl_Data59.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref59.Caption         := 'Ref.';
               qrl_Data59.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref59.Caption         := '';
               qrl_Data59.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod59.Picture := nil;
             qrl_Referencia59.Caption  := '';
             qrl_CodB59.Caption        := '';
             qrl_Ref59.Caption         := '';
             qrl_Vlr59.Caption         := '';
             qrl_P59.Caption           := '';
             qrl_Data59.Caption        := '';

           end;
          ////////////////////////////////////////////

           if ckEtiqueta60.Checked Then begin

            Commit(ibTempEtiqueta6089);
            ibTempEtiqueta6089.Close;
            ibTempEtiqueta6089.SQL.Clear;
            ibTempEtiqueta6089.SQL.Add('SELECT * FROM TBLETIQUETA6089 WHERE ETIQUETA60=''Sim''');
            ibTempEtiqueta6089.Open;

             CodBarras60  := ibTempEtiqueta6089.FieldByName('CODBARRAS').AsString;
             NomeProd60   := (ibTempEtiqueta6089.FieldByName('NOMEPROD').AsString);
             ValorProd60  := FormatFloat(CasasDecimais('Produtos'),ibTempEtiqueta6089.FieldByName('VALOR').AsFloat);
             Referencia60 := (ibTempEtiqueta6089.FieldByName('REF').AsString);

             CriaCodigo(CodBarras60,qriCod60.Canvas);
             qrl_Referencia60.Caption  := NomeProd60;
             qrl_CodB60.Caption        := CodBarras60;
             qrl_Vlr60.Caption         := ValorProd60;

             if(ckEtiquetasRef.Checked = false)Then begin
             
               if (ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime > 0) Then begin

                 qrl_Ref60.Caption         := 'Vcto.';
                 qrl_Data60.Caption        := DateToStr(ibTempEtiqueta6089.FieldByName('VCTOLOTE').AsDateTime);

               end else begin

                 qrl_Ref60.Caption         := '';
                 qrl_Data60.Caption        := '';

               end;

             end;

             if (ckEtiquetasRef.Checked = true) Then begin

               qrl_Ref60.Caption         := 'Ref.';
               qrl_Data60.Caption        := (ibTempEtiqueta6089.FieldByName('REF').AsString);

               end else begin

               qrl_Ref60.Caption         := '';
               qrl_Data60.Caption        := '';

             end;

           end else begin//if (ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = 'Nao')or(ibTempEtiqueta6089.FieldByName('ETIQUETA1').AsString = '')Then begin

             qriCod60.Picture := nil;
             qrl_Referencia60.Caption  := '';
             qrl_CodB60.Caption        := '';
             qrl_Ref60.Caption         := '';
             qrl_Vlr60.Caption         := '';
             qrl_P60.Caption           := '';
             qrl_Data60.Caption        := '';

           end;
          ////////////////////////////////////////////

         // end;{if}


            qrpPimaco6089.Preview;


        end; {if}

      EXCEPT
        on E : Exception do begin
           frmEtiquetasPimaco6089.Release;
           MessageDlg('Ocorreu um erro ao tentar mostrar o Formul�rio: ' + E.Message,mtError,[mbOk],0);
        end;
      END;

/////////////////////////////////////////////////////////////

   end;

  end;//with

procedure TfrmPimaco6089Variada.ibeaApagarClick(Sender: TObject);
begin

  with dmModule do begin

    ibTempEtiqueta6089.Close;
    ibTempEtiqueta6089.SQL.Clear;
    ibTempEtiqueta6089.SQL.Add('DELETE FROM TBLETIQUETA6089');
    ibTempEtiqueta6089.ExecSQL;
    Commit(ibTempEtiqueta6089);

    ibEtiqueta6089.Close;

    LimparBotoes;

  end;//with

end;

procedure TfrmPimaco6089Variada.lbl_edtCodBarrasExit(Sender: TObject);

var

i : Integer;


begin

  with dmModule do begin

    if lbl_edtCodBarras.Text <> '' Then begin

      ibProdutos.Close;
      ibProdutos.SQL.Clear;
      ibProdutos.SQL.Add('SELECT * FROM CADPRODUTOS WHERE CADPRODUTOS.CODBARRAS=''' + lbl_edtCodBarras.Text + ''' or CADPRODUTOS.CODBARRASAD=''' + lbl_edtCodBarras.Text + '''');
      ibProdutos.Open;

      (ibProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO

      lbl_edtRef.Text := ibProdutos.FieldByName('REF').asString;
      lbl_edtVlrVenda.Text := FormatFloat(CasasDecimais('Produtos'),ibProdutos.FieldByName('VALORVENDAA').AsFloat);


      if (ibProdutos.FieldByName('CODBARRASAD').AsString <> '')and(ibProdutos.FieldByName('CODBARRAS').AsString = '') Then begin

        lbl_edtCodBarras.Text := ibProdutos.FieldByName('CODBARRASAD').AsString;

      end else if (ibProdutos.FieldByName('CODBARRASAD').AsString <> '')and(ibProdutos.FieldByName('CODBARRAS').AsString <> '')Then begin

        lbl_edtCodBarras.Text := ibProdutos.FieldByName('CODBARRASAD').AsString;

      end else if (ibProdutos.FieldByName('CODBARRASAD').AsString = '')or(ibProdutos.FieldByName('CODBARRASAD').AsString = 'null')and(ibProdutos.FieldByName('CODBARRAS').AsString <> '')Then begin

        lbl_edtCodBarras.Text := ibProdutos.FieldByName('CODBARRAS').AsString;

      end;

      for i:=0 to cboProdutos.Items.Count -1 do begin//COMECA O LOOPING DOS ITENS -1 ATRIBUINDO 0 A VARIAVEL PARA CONTAR 3 REGISTROS EXISTENTES NA TBL.
        if TClasseCombo( cboProdutos.Items.Objects[i]).ID = ibProdutos.FieldByName('IDPROD').AsInteger then begin//SE A CLASSE DO COMBO E OS OBJETOS DESSA VARIAVEL FOR IGUAL AOS DADOS DA TABELA
          cboProdutos.ItemIndex:= i;//COMECA O LOOPING DO REGISTRO
          Break;
        end else begin
          cboProdutos.ClearSelection;//LIMPA A SELECAO. }
        end;{if}
      end;{for}

    end;//if

  end;{with}


end;

end.
