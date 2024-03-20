unit untConfiguracoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, BmsXPCheckBox,
  BmsXPButton, IBQuery, ExtCtrls, ComCtrls, BmsXPPageControl;

type
  TfrmConfiguracoes = class(TForm)
    ibeaIncluir: TBmsXPButton;
    ibeaSair: TBmsXPButton;
    pcConfiguracoes: TBmsXPPageControl;
    tbs_InfoCX: TTabSheet;
    TabSheet2: TTabSheet;
    tbsConfigImpressoras: TTabSheet;
    lbl_DesenhoDivisao: TLabel;
    lbl_edtCaminhoImpressora: TLabeledEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    ckSimEstoque: TBmsXPCheckBox;
    ckNaoEstoque: TBmsXPCheckBox;
    ckSimTrocoInicialCx: TBmsXPCheckBox;
    ckNaoTrocoInicialCx: TBmsXPCheckBox;
    ckCancelarItemSim: TBmsXPCheckBox;
    ckCancelarItemNao: TBmsXPCheckBox;
    ckSimCabCupom: TBmsXPCheckBox;
    ckNaoCabCupom: TBmsXPCheckBox;
    GroupBox5: TGroupBox;
    ckSimProdEstoque: TBmsXPCheckBox;
    ckNaoProdEstoque: TBmsXPCheckBox;
    GroupBox6: TGroupBox;
    lbl_edtPorcentagem: TLabeledEdit;
    Label1: TLabel;
    GroupBox17: TGroupBox;
    ckSimCupom: TBmsXPCheckBox;
    ckNaoCupom: TBmsXPCheckBox;
    GroupBox18: TGroupBox;
    ckNaoImprimirDireto: TBmsXPCheckBox;
    ckSimImprimirDireto: TBmsXPCheckBox;
    GroupBox7: TGroupBox;
    ckLpt1: TBmsXPCheckBox;
    ckCom1: TBmsXPCheckBox;
    memoDivisao: TMemo;
    GroupBox23: TGroupBox;
    memo_Frase: TMemo;
    ckNaoFrase: TBmsXPCheckBox;
    ckSimFrase: TBmsXPCheckBox;
    GroupBox22: TGroupBox;
    rb_1: TRadioButton;
    rb_2: TRadioButton;
    rb_3: TRadioButton;
    rb_4: TRadioButton;
    rb_5: TRadioButton;
    rb_6: TRadioButton;
    rb_7: TRadioButton;
    rb_8: TRadioButton;
    rb_9: TRadioButton;
    rb_10: TRadioButton;
    GroupBox21: TGroupBox;
    ckNaoCalcIBPT: TBmsXPCheckBox;
    ckSimCalcIBPT: TBmsXPCheckBox;
    GroupBox32: TGroupBox;
    ckSimSATDaruma: TBmsXPCheckBox;
    ckNaoSATDaruma: TBmsXPCheckBox;
    procedure btnSairClick(Sender: TObject);
    procedure LimparBotoes;
    procedure Commit(IBQueryExec : TIBQuery);
    procedure ibeaSairClick(Sender: TObject);
    procedure ExecSELECT;
    procedure ibeaIncluirClick(Sender: TObject);
    procedure ckSimEstoqueCheck(Sender: TObject);
    procedure ckNaoEstoqueCheck(Sender: TObject);
    procedure ckSimCupomCheck(Sender: TObject);
    procedure ckNaoCupomCheck(Sender: TObject);
    procedure ckSimProdEstoqueCheck(Sender: TObject);
    procedure ckNaoProdEstoqueCheck(Sender: TObject);
    procedure ckSimFraseCheck(Sender: TObject);
    procedure ckNaoFraseCheck(Sender: TObject);
    procedure ckCancelarItemSimCheck(Sender: TObject);
    procedure ckCancelarItemNaoCheck(Sender: TObject);
    procedure ckSimTrocoInicialCxCheck(Sender: TObject);
    procedure ckNaoTrocoInicialCxCheck(Sender: TObject);
    procedure ckSimImprimirDiretoCheck(Sender: TObject);
    procedure ckNaoImprimirDiretoCheck(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ckCom1Check(Sender: TObject);
    procedure ckLpt1Check(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfiguracoes: TfrmConfiguracoes;

implementation

uses untdmModule, DB;

{$R *.dfm}

procedure TfrmConfiguracoes.btnSairClick(Sender: TObject);
begin
Close;
end;

procedure TfrmConfiguracoes.LimparBotoes;

begin

ckSimEstoque.Checked         := False;
ckNaoEstoque.Checked         := False;
ckSimCupom.Checked           := False;
ckNaoCupom.Checked           := False;
ckSimProdEstoque.Checked     := False;
ckNaoProdEstoque.Checked     := False;
ckSimFrase.Checked           := False;
ckNaoFrase.Checked           := False;
ckCancelarItemSim.Checked    := False;
ckCancelarItemNao.Checked    := False;
ckSimTrocoInicialCx.Checked  := False;
ckNaoTrocoInicialCx.Checked  := False;
ckSimImprimirDireto.Checked  := False;
ckNaoImprimirDireto.Checked  := False;

lbl_edtPorcentagem.Text      := '';
end;

procedure TfrmConfiguracoes.Commit(IBQueryExec : TIBQuery);

begin

  with dmModule do begin

    with IBQueryExec do begin

       SQL.Clear;
       SQL.Add('Commit');
       Open;
       Close;

    end;//with ibquery

  end;//with

end;

procedure TfrmConfiguracoes.ibeaSairClick(Sender: TObject);
begin
Close;
end;

procedure TfrmConfiguracoes.ExecSELECT;

begin

  with dmModule do begin

    Commit(ibConfig);
    ibConfig.Close;
    ibConfig.SQL.Clear;
    ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
    ibConfig.Open;

    if ibConfig.FieldByName('CAMINHOIMPRESSORA').AsString <> '' Then begin

      lbl_edtCaminhoImpressora.Text := ibConfig.FieldByName('CAMINHOIMPRESSORA').AsString;

    end;  

////////////////////////////////////////////////////////////////////////////////

    if ibConfig.FieldByName('CABCUPOMCOMPL').AsString = 'Sim' Then begin

      ckSimCabCupom.Checked := True;
      ckNaoCabCupom.Checked := False;

    end else begin

      ckSimCabCupom.Checked := False;
      ckNaoCabCupom.Checked := True;

    end;
////////////////////////////////////////////////////////////////////////////////

    if ibConfig.FieldByName('ESTOQUEMINIMO').AsString = 'Sim' Then begin

      ckSimEstoque.Checked := True;
      ckNaoEstoque.Checked := False;

    end else begin

      ckSimEstoque.Checked := False;
      ckNaoEstoque.Checked := True;

    end;
////////////////////////////////////////////////////////////////////////////////

    if ibConfig.FieldByName('IMPRIMIRCUPOM').AsString = 'Sim' Then begin

      ckSimCupom.Checked := True;
      ckNaoCupom.Checked := False;

    end else begin

      ckSimCupom.Checked := False;
      ckNaoCupom.Checked := True;

    end;

////////////////////////////////////////////////////////////////////////////////

    if ibConfig.FieldByName('PRODUTOESTOQUE').AsString = 'Sim' Then begin

      ckSimProdEstoque.Checked := True;
      ckNaoProdEstoque.Checked := False;

    end else begin

      ckSimProdEstoque.Checked := False;
      ckNaoProdEstoque.Checked := True;

    end;

////////////////////////////////////////////////////////////////////////////////

    if ibConfig.FieldByName('CANCELARITEMCX').AsString = 'Sim' Then begin

      ckCancelarItemSim.Checked := True;
      ckCancelarItemNao.Checked := False;

    end else begin

      ckCancelarItemSim.Checked := False;
      ckCancelarItemNao.Checked := True;

    end;

////////////////////////////////////////////////////////////////////////////////

    if ibConfig.FieldByName('TROCOINICIALCX').AsString = 'Sim' Then begin

      ckSimTrocoInicialCx.Checked := True;
      ckNaoTrocoInicialCx.Checked := False;

    end else begin

      ckSimTrocoInicialCx.Checked := False;
      ckNaoTrocoInicialCx.Checked := True;

    end;

////////////////////////////////////////////////////////////////////////////////

    if ibConfig.FieldByName('IMPRIMIRDIRETO').AsString = 'Sim' Then begin

      ckSimImprimirDireto.Checked := True;
      ckNaoImprimirDireto.Checked := False;

    end else begin

      ckSimImprimirDireto.Checked := False;
      ckNaoImprimirDireto.Checked := True;

    end;

////////////////////////////////////////////////////////////////////////////////

    if ibConfig.FieldByName('FRASERODAPE').AsString = 'Sim' Then begin

      ckSimFrase.Checked := True;
      ckNaoFrase.Checked := False;

    end else begin

      ckSimFrase.Checked := False;
      ckNaoFrase.Checked := True;

    end;

////////////////////////////////////////////////////////////////////////////////

    if ibConfig.FieldByName('FRASE').AsString <> '' Then begin

      memo_Frase.Text := ibConfig.FieldByName('FRASE').AsString;

    end else begin

      memo_Frase.Text := '';

    end;

////////////////////////////////////////////////////////////////////////////////

    if ibConfig.FieldByName('DESENHODIVISAO').AsString <> '' Then begin

      memoDivisao.Text := ibConfig.FieldByName('DESENHODIVISAO').AsString;

    end else begin

      memoDivisao.Text := '';

    end;

////////////////////////////////////////////////////////////////////////////////

    if ibConfig.FieldByName('LPT1').AsString = 'Sim' Then begin

      ckLpt1.Checked := True;

    end else begin

      ckLpt1.Checked := False;

    end;

////////////////////////////////////////////////////////////////////////////////

    if ibConfig.FieldByName('COM1').AsString = 'Sim' Then begin

      ckCom1.Checked := True;

    end else begin

      ckCom1.Checked := False;

    end;

////////////////////////////////////////////////////////////////////////////////

  end;//with

end;

procedure TfrmConfiguracoes.ibeaIncluirClick(Sender: TObject);

var

EstoqueM,AvisaEstoque,ConfirmaCupom,AvisaCupom, ProdEstoque, ConfirmaFrase : String;
CancelarItemCx,TrocoInicialCx : String;
ConfirmaGravacao, Aviso, ConfirmaGravarCupom : Integer;

IDConfig,QtdeSaltos : Integer;

VlrPorcentagem,ImprimirDireto,FraseRodape,DesenhoDivisao : String;
LPT1,COM1,CabCupomCompl,CaminhoImpressora : string;

begin

  with dmModule do begin

    if ckSimCabCupom.Checked Then begin

      CabCupomCompl := 'Sim';

    end;

    if ckNaoCabCupom.Checked Then begin

      CabCupomCompl := 'Nao';

    end;

    if (ckSimCabCupom.Checked = False)and(ckNaoCabCupom.Checked = False) Then begin

    CabCupomCompl := 'Nao';

    end;

////////////////////////////////////////////////////////////////////////////////

    if ckSimEstoque.Checked Then begin

      EstoqueM := 'Sim';

    end;

    if ckNaoEstoque.Checked Then begin

      EstoqueM := 'Nao';

    end;

    if (ckSimEstoque.Checked = False)and(ckNaoEstoque.Checked = False) Then begin

    EstoqueM := 'Nao';

    end;
////////////////////////////////////////////////////////////////////////////////

    if ckSimCupom.Checked Then begin

    ConfirmaCupom := 'Sim';

    end;

    if ckNaoCupom.Checked Then begin

    ConfirmaCupom := 'Nao';

    end;

    if (ckSimCupom.Checked = False)and(ckNaoCupom.Checked = False) Then begin

    ConfirmaCupom := 'Nao';

    end;

////////////////////////////////////////////////////////////////////////////////

    if ckSimProdEstoque.Checked Then begin

    ProdEstoque := 'Sim';

    end;

    if ckNaoProdEstoque.Checked Then begin

    ProdEstoque := 'Nao';

    end;

    if (ckSimProdEstoque.Checked = False)and (ckNaoProdEstoque.Checked = False) Then begin

    ProdEstoque := 'Nao';

    end;

////////////////////////////////////////////////////////////////////////////////

    if ckSimFrase.Checked Then begin

    ConfirmaFrase := 'Sim';

    end;

    if ckNaoFrase.Checked Then begin

    ConfirmaFrase := 'Nao';

    end;

    if (ckSimFrase.Checked = False)and(ckNaoFrase.Checked = False) Then begin

    ConfirmaFrase := 'Nao';

    end;

////////////////////////////////////////////////////////////////////////////////

    if ckCancelarItemSim.Checked Then begin

      CancelarItemCx := 'Sim';

    end;

    if ckCancelarItemNao.Checked Then begin

      CancelarItemCx := 'Nao';

    end;

    if (ckCancelarItemSim.Checked = False)and(ckCancelarItemNao.Checked = False) Then begin

      CancelarItemCx := 'Nao';

    end;

////////////////////////////////////////////////////////////////////////////////

    if ckSimTrocoInicialCx.Checked Then begin

      TrocoInicialCx := 'Sim';

    end;

    if ckNaoTrocoInicialCx.Checked Then begin

      TrocoInicialCx := 'Nao';

    end;

    if (ckSimTrocoInicialCx.Checked = False)and(ckNaoTrocoInicialCx.Checked = False) Then begin

      TrocoInicialCx := 'Nao';

    end;

////////////////////////////////////////////////////////////////////////////////

    if ckSimImprimirDireto.Checked Then begin

      ImprimirDireto := 'Sim';

    end;

    if ckNaoImprimirDireto.Checked Then begin

      ImprimirDireto := 'Nao';

    end;

    if (ckSimImprimirDireto.Checked = False)and(ckNaoImprimirDireto.Checked = False) Then begin

      ImprimirDireto := 'Nao';

    end;

////////////////////////////////////////////////////////////////////////////////

    if ckLpt1.Checked Then begin

      LPT1 := 'Sim';

    end;

    if ckLpt1.Checked = False Then begin

      LPT1 := 'Nao';

    end;

////////////////////////////////////////////////////////////////////////////////

    if ckCom1.Checked Then begin

      COM1 := 'Sim';

    end;

    if ckCom1.Checked = False Then begin

      COM1 := 'Nao';

    end;

////////////////////////////////////////////////////////////////////////////////


    if rb_1.Checked Then begin

    QtdeSaltos := StrToInt('1');

    end;

    if rb_2.Checked Then begin

    QtdeSaltos := StrToInt('2');

    end;

    if rb_3.Checked Then begin

    QtdeSaltos := StrToInt('3');

    end;

    if rb_4.Checked Then begin

    QtdeSaltos := StrToInt('4');

    end;

    if rb_5.Checked Then begin

    QtdeSaltos := StrToInt('5');

    end;

    if rb_6.Checked Then begin

    QtdeSaltos := StrToInt('6');

    end;

    if rb_7.Checked Then begin

    QtdeSaltos := StrToInt('7');

    end;

    if rb_8.Checked Then begin

    QtdeSaltos := StrToInt('8');

    end;

    if rb_9.Checked Then begin

    QtdeSaltos := StrToInt('9');

    end;

    if rb_10.Checked Then begin

    QtdeSaltos := StrToInt('10');

    end;

    if (QtdeSaltos <= 0) Then begin

    QtdeSaltos := StrToInt('0');

    end;

////////////////////////////////////////////////////////////////////////////////

    if lbl_edtCaminhoImpressora.Text <> '' Then begin

      CaminhoImpressora := lbl_edtCaminhoImpressora.Text;

    end else begin

      CaminhoImpressora := '';

    end;     

////////////////////////////////////////////////////////////////////////////////

    VlrPorcentagem := StringReplace(lbl_edtPorcentagem.Text,ThousandSeparator,'',[rfReplaceAll]);
    VlrPorcentagem := StringReplace(VlrPorcentagem,DecimalSeparator,'.',[rfReplaceAll]);
    if VlrPorcentagem = '' Then
    VlrPorcentagem := '0';

////////////////////////////////////////////////////////////////////////////////

    Commit(ibConfig);
    ibConfig.Close;
    ibConfig.SQL.Clear;
    ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
    ibConfig.Open;

    IDConfig := ibConfig.FieldByName('IDCONFIG').AsInteger;

  //  AvisaEstoque := ibConfig.FieldByName('ESTOQUEMINIMO').AsString;
 //   AvisaCupom   := ibConfig.FieldByName('IMPRIMIRCUPOM').AsString;

  {  if (ckSimEstoque.Checked = False) and (ckNaoEstoque.Checked = False) Then begin

    EstoqueM := AvisaEstoque;

    end;

    if (ckSimCupom.Checked = False) and (ckNaoCupom.Checked = False) Then begin

    ConfirmaCupom := AvisaCupom;

    end; }



   ConfirmaGravacao := Application.MessageBox('Confirma a Opção?','Notificação: Opção de Configuração.',MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

   if ConfirmaGravacao = 6 Then begin


      if ibConfig.RecordCount > 0 Then begin

        ibConfig.Close;
        ibConfig.SQL.Clear;
        ibConfig.SQL.Add('UPDATE TBLCONFIGURACOES SET '
        + 'IMPRIMIRCUPOM=''' + ConfirmaCupom + ''','
        + 'PRODUTOESTOQUE=''' + ProdEstoque + ''','
        + 'FRASERODAPE=''' + ConfirmaFrase + ''','
        + 'CANCELARITEMCX=''' + CancelarItemCx + ''','
        + 'VLRPORCENTAGEM=''' + VlrPorcentagem + ''','
        + 'TROCOINICIALCX=''' + TrocoInicialCx + ''','
        + 'IMPRIMIRDIRETO=''' + ImprimirDireto + ''','
        + 'QTDESALTOS=''' + IntToStr(QtdeSaltos) + ''','
        + 'FRASE=''' + memo_Frase.Text + ''','
        + 'DESENHODIVISAO=''' + memoDivisao.Text + ''','
        + 'LPT1=''' + LPT1 + ''','
        + 'COM1=''' + COM1 + ''','
        + 'CABCUPOMCOMPL=''' + CabCupomCompl + ''','
        + 'CAMINHOIMPRESSORA=''' + CaminhoImpressora + ''','
        + 'ESTOQUEMINIMO=''' + EstoqueM + ''' WHERE IDCONFIG=''' + IntToStr(IDConfig) + '''');
        ibConfig.ExecSQL;
        Commit(ibConfig);

      end else begin

        ibConfig.Close;
        ibConfig.SQL.Clear;
        ibConfig.SQL.Add('INSERT INTO TBLCONFIGURACOES '
        + '(ESTOQUEMINIMO,PRODUTOESTOQUE,FRASERODAPE,CANCELARITEMCX,QTDESALTOS,'
        + 'VLRPORCENTAGEM,TROCOINICIALCX,IMPRIMIRDIRETO,FRASE,'
        + 'LPT1,COM1,DESENHODIVISAO,CABCUPOMCOMPL,CAMINHOIMPRESSORA,IMPRIMIRCUPOM) values '
        + '(''' + EstoqueM + ''','
        + ' ''' + ProdEstoque + ''','
        + ' ''' + ConfirmaFrase + ''','
        + ' ''' + CancelarItemCx + ''','
        + ' ''' + IntToStr(QtdeSaltos) + ''','
        + ' ''' + VlrPorcentagem + ''','
        + ' ''' + TrocoInicialCx + ''','
        + ' ''' + ImprimirDireto + ''','
        + ' ''' + memo_Frase.Text + ''','
        + ' ''' + LPT1 + ''','
        + ' ''' + COM1 + ''','
        + ' ''' + memoDivisao.Text + ''','
        + ' ''' + CabCupomCompl + ''','
        + ' ''' + CaminhoImpressora + ''','
        + ' ''' + ConfirmaCupom + ''')');
        ibConfig.ExecSQL;
        Commit(ibConfig);

      end;//if RECORDCOUNT

    end;//if confirmagravação

  //  LimparBotoes;

  end;//with

end;

procedure TfrmConfiguracoes.ckSimEstoqueCheck(Sender: TObject);
begin

  if ckSimEstoque.Checked Then begin

    ckNaoEstoque.Checked := False;

  end;//if

end;

procedure TfrmConfiguracoes.ckNaoEstoqueCheck(Sender: TObject);
begin

  if ckNaoEstoque.Checked Then begin

    ckSimEstoque.Checked := False;

  end;//if

end;

procedure TfrmConfiguracoes.ckSimCupomCheck(Sender: TObject);
begin

  if ckSimCupom.Checked Then begin

    ckNaoCupom.Checked := False;

  end;//if

end;

procedure TfrmConfiguracoes.ckNaoCupomCheck(Sender: TObject);
begin

  if ckNaoCupom.Checked Then begin

    ckSimCupom.Checked := False;

  end;//if

end;

procedure TfrmConfiguracoes.ckSimProdEstoqueCheck(Sender: TObject);
begin

  if ckSimProdEstoque.Checked Then begin

    ckNaoProdEstoque.Checked := False;

  end;

end;

procedure TfrmConfiguracoes.ckNaoProdEstoqueCheck(Sender: TObject);
begin

  if ckNaoProdEstoque.Checked Then begin

    ckSimProdEstoque.Checked := False;

  end;

end;

procedure TfrmConfiguracoes.ckSimFraseCheck(Sender: TObject);
begin

  if ckSimFrase.Checked Then begin

    ckNaoFrase.Checked := False;

  end;

end;

procedure TfrmConfiguracoes.ckNaoFraseCheck(Sender: TObject);
begin

  if ckNaoFrase.Checked Then begin

    ckSimFrase.Checked := False;

  end;

end;

procedure TfrmConfiguracoes.ckCancelarItemSimCheck(Sender: TObject);
begin

  if ckCancelarItemSim.Checked then begin

    ckCancelarItemNao.Checked := False;

  end;

end;

procedure TfrmConfiguracoes.ckCancelarItemNaoCheck(Sender: TObject);
begin

  if ckCancelarItemNao.Checked then begin

    ckCancelarItemSim.Checked := False;

  end;

end;

procedure TfrmConfiguracoes.ckSimTrocoInicialCxCheck(Sender: TObject);
begin

  if ckSimTrocoInicialCx.Checked Then begin

    ckNaoTrocoInicialCx.Checked := False;

  end;//if

end;

procedure TfrmConfiguracoes.ckNaoTrocoInicialCxCheck(Sender: TObject);
begin

  if ckNaoTrocoInicialCx.Checked Then begin

    ckSimTrocoInicialCx.Checked := False;

  end;//if

end;

procedure TfrmConfiguracoes.ckSimImprimirDiretoCheck(Sender: TObject);
begin

  if ckSimImprimirDireto.Checked Then begin

    ckNaoImprimirDireto.Checked := False;

  end;

end;

procedure TfrmConfiguracoes.ckNaoImprimirDiretoCheck(Sender: TObject);
begin

  if ckNaoImprimirDireto.Checked Then begin

    ckSimImprimirDireto.Checked := False;

  end;

end;

procedure TfrmConfiguracoes.FormShow(Sender: TObject);
begin
pcConfiguracoes.ActivePageIndex := 0;

  with dmModule do begin

    ExecSELECT;

  end;//with
  
end;

procedure TfrmConfiguracoes.ckCom1Check(Sender: TObject);
begin

  if ckCom1.Checked Then begin

    ckLpt1.Checked := False;

  end;//if

end;

procedure TfrmConfiguracoes.ckLpt1Check(Sender: TObject);
begin

  if ckLpt1.Checked Then begin

    ckCom1.Checked := False;

  end;//if

end;

end.
