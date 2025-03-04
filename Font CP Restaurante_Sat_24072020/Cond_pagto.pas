unit Cond_pagto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBEAntialiasButton, StdCtrls, ExtCtrls, Grids, DBGrids,
  ComCtrls, mxFlatControls, IBQuery, RxGIF;

type
  TfrmCondpagto = class(TForm)
    Image1: TImage;
    lblCondpagto: TLabel;
    ibeaNovo: TIBEAntialiasButton;
    ibeaAlterar: TIBEAntialiasButton;
    ibeaExcluir: TIBEAntialiasButton;
    ibeaSair: TIBEAntialiasButton;
    ibeaPrimeiro: TIBEAntialiasButton;
    ibeaAnterior: TIBEAntialiasButton;
    ibeaProximo: TIBEAntialiasButton;
    ibeaUltimo: TIBEAntialiasButton;
    lbl_edtDescricao: TLabeledEdit;
    lbl_edtAcrescimo: TLabeledEdit;
    lbl_edtDesconto: TLabeledEdit;
    Panel1: TPanel;
    dbgCondpagto: TDBGrid;
    StatusBar1: TStatusBar;

    procedure Commit(IBQueryExec : TIBQuery);
    procedure AlteraCadastro;
    procedure DesabilitaCampos(opcao: Boolean);
    procedure Limpacampo;
    procedure ExecSELECT;
    procedure ExibeDados;
    procedure ibeaSairClick(Sender: TObject);
    procedure ibeaNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ibeaAlterarClick(Sender: TObject);
    procedure ibeaPrimeiroClick(Sender: TObject);
    procedure ibeaAnteriorClick(Sender: TObject);
    procedure ibeaProximoClick(Sender: TObject);
    procedure ibeaUltimoClick(Sender: TObject);
    procedure dbgCondpagtoCellClick(Column: TColumn);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCondpagto: TfrmCondpagto;
  MontaColunas : Boolean;
  Condpagto : Integer;

implementation

uses DB, untdmModule;

{$R *.dfm}

procedure TfrmCondpagto.Commit(IBQueryExec : TIBQuery);
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

procedure TfrmCondpagto.AlteraCadastro;
begin
  with dmModule do begin
    ibCondicoesPagto.Close;
    ibCondicoesPagto.SQL.Clear;
    ibCondicoesPagto.SQl.Add('UPDATE CONDICOESPAGAMENTO SET '
    + 'DESCRICAO=''' + lbl_edtDescricao.Text + ''''
    + ',ACRESCIMO=''' + lbl_edtAcrescimo.Text + ''''
    + ',DESCONTO=''' + lbl_edtDesconto.Text + ''' WHERE IDCONDPAGTO=''' + IntToStr(Condpagto) + ''''); 
    ibCondicoesPagto.ExecSQL;
    TRCondicoesPagto.Commit;

  end;
end;

procedure TfrmCondpagto.DesabilitaCampos(opcao: Boolean);
begin
  lbl_edtDescricao.Enabled := opcao;
  lbl_edtAcrescimo.Enabled := opcao;
  lbl_edtDesconto.Enabled := opcao;
end;

procedure TfrmCondpagto.Limpacampo;
begin
  lbl_edtDescricao.Clear;
  lbl_edtAcrescimo.Clear;
  lbl_edtDesconto.Clear;
end;

procedure TfrmCondpagto.ExecSELECT;
begin
  with dmModule do begin
    ibCondicoesPagto.Close;
    ibCondicoesPagto.SQL.Clear;
    ibCondicoesPagto.SQL.Add('SELECT * FROM CONDICOESPAGAMENTO');
    ibCondicoesPagto.Open;
  end;
end;

procedure TfrmCondpagto.ExibeDados;
begin
  with dmModule do begin
    Condpagto := ibCondicoesPagto.FieldByName('IDCONDPAGTO').AsInteger;//ATRIBUI O VALOR DO ID NA VARIAVEL

    lbl_edtDescricao.Text    := ibCondicoesPagto.FieldByname('DESCRICAO').AsString;
    lbl_edtAcrescimo.Text    := ibCondicoesPagto.FieldByName('ACRESCIMO').AsString;
    lbl_edtDesconto.Text     := ibCondicoesPagto.FieldByName('DESCONTO').AsString;

  end;
end;

procedure TfrmCondpagto.ibeaSairClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCondpagto.ibeaNovoClick(Sender: TObject);

begin

  with dmModule do begin

    if ibeaNovo.Caption = '&Gravar' Then begin

      ibCondicoesPagto.Close;
      ibCondicoesPagto.SQL.Clear;
      ibCondicoesPagto.SQL.Add('INSERT INTO CONDICOESPAGAMENTO'
      + ' (DESCRICAO,ACRESCIMO,DESCONTO) values '
      + ' (''' + lbl_edtDescricao.Text + ''',''' + lbl_edtAcrescimo.Text + ''','
      + ' ''' + lbl_edtDesconto.Text + ''')');

      ibCondicoesPagto.ExecSQL;

      Commit(ibCondicoesPagto);

      ExecSELECT;


      ibeaNovo.Caption := '&Novo';
      DesabilitaCampos(False);

     end else begin
      ibeaNovo.Caption := '&Gravar';
      DesabilitaCampos(True);
      lbl_edtDescricao.SetFocus;
      Limpacampo;

    end;
  end;
end;

procedure TfrmCondpagto.FormShow(Sender: TObject);
begin

  ibeaNovo.Caption := '&Novo';
  DesabilitaCampos(False);

  with dmModule do begin
  ExecSELECT;

    with dbgCondpagto do begin

      // monta as colunas abaixo se for verdadeiro
      if MontaColunas Then begin

      DataSource := dtsCondicoesPagto;

        //determina as colunas a serem montadas
        Columns.Insert(0);
        Columns.Insert(1);
        Columns.Insert(2);

        //Parametros da Coluna que exibe a descricao
        Columns.Items[0].Title.Caption := 'Descri��o';
        Columns.Items[0].FieldName     := 'DESCRICAO';
        Columns.Items[0].Width         := 310;

        //Parametros da Coluna que exibe o acrescimo
        Columns.Items[1].Title.Caption := 'Acr�scimo';
        Columns.Items[1].FieldName     := 'ACRESCIMO';
        Columns.Items[1].Width         := 100;

        // Parametros que exibe o desconto
        Columns.Items[2].Title.Caption := 'Desconto';
        Columns.Items[2].FieldName     := 'DESCONTO';
        Columns.Items[2].Width         := 100;

        MontaColunas := False;

      end;{if}
    end;{with}
   end;{with}
end;


procedure TfrmCondpagto.FormCreate(Sender: TObject);
begin
  MontaColunas := True;
end;

procedure TfrmCondpagto.FormKeyPress(Sender: TObject; var Key: Char);
begin
 Key := UpCase(Key); //Deixa todos os textos em maiusculo
   if Key = #13 Then begin
      Key := #0; //Desabilita processamento posterior da tecla
      Perform(WM_NEXTDLGCTL,0,0);//Simula o envio de Tab
  end;
end;

procedure TfrmCondpagto.ibeaAlterarClick(Sender: TObject);
begin
  with dmModule do begin

    if ibeaAlterar.Caption = '&Atualizar' Then begin

    AlteraCadastro;

    Commit(ibCondicoesPagto);

    ExecSELECT;

    ibeaAlterar.Caption := '&Alterar';
    DesabilitaCampos(False);

    end else begin

      ibeaAlterar.Caption := '&Atualizar';
      DesabilitaCampos(True);

    end;{if}
  end;{with}
end;

procedure TfrmCondpagto.ibeaPrimeiroClick(Sender: TObject);
begin
  with dmModule do begin
    ibCondicoesPagto.First;
    ExibeDados;
  end;
end;

procedure TfrmCondpagto.ibeaAnteriorClick(Sender: TObject);
begin
  with dmModule do begin
    ibCondicoesPagto.Prior;
    ExibeDados;
  end;
end;

procedure TfrmCondpagto.ibeaProximoClick(Sender: TObject);
begin
  with dmModule do begin
    ibCondicoesPagto.Next;
    ExibeDados;
  end;
end;

procedure TfrmCondpagto.ibeaUltimoClick(Sender: TObject);
begin
  with dmModule do begin
    ibCondicoesPagto.Last;
    ExibeDados;
  end;
end;

procedure TfrmCondpagto.dbgCondpagtoCellClick(Column: TColumn);
begin
  ExibeDados;
end;

end.
