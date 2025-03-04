unit untTamanho;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, IBEAntialiasButton, IBQuery;

type
  TfrmTamanho = class(TForm)
    ibeaIncluiVacina: TIBEAntialiasButton;
    ibeaAlterar: TIBEAntialiasButton;
    ibeaExcluir: TIBEAntialiasButton;
    ibeaSair: TIBEAntialiasButton;
    lbl_edtNome: TLabeledEdit;
    dbgTamanho: TDBGrid;
    procedure Commit(IBQueryExec : TIBQuery);
    procedure ExecSELECT;
    procedure GravaTamanho;
    procedure AlterarTamanho;
    procedure DeletarTamanho;
    procedure ExibeDados;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgTamanhoCellClick(Column: TColumn);
    procedure ibeaIncluiVacinaClick(Sender: TObject);
    procedure ibeaAlterarClick(Sender: TObject);
    procedure ibeaExcluirClick(Sender: TObject);
    procedure ibeaSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTamanho: TfrmTamanho;
  MontaColunas : Boolean;
  IDTamanho : Integer;
implementation

uses untdmModule, DB;

{$R *.dfm}

procedure TfrmTamanho.Commit(IBQueryExec : TIBQuery);
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

procedure TfrmTamanho.ExecSELECT;

begin

  with dmModule do begin

    Commit(ibTamanho);
    ibTamanho.Close;
    ibTamanho.SQL.Clear;
    ibTamanho.SQL.Add('SELECT * FROM TBLTAMANHO ORDER BY TAMANHO');
    ibTamanho.Open;

  end;//with

end;

procedure TfrmTamanho.GravaTamanho;

var

ConfirmaGravacao : Integer;

begin

  with dmModule do begin

  ConfirmaGravacao := Application.MessageBox('Confirma o Lan�amento','Grava Registro',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

    if ConfirmaGravacao = 6 Then begin

      ibTamanho.Close;
      ibTamanho.SQL.Clear;
      ibTamanho.SQL.Add('INSERT INTO TBLTAMANHO'
      + '(TAMANHO) values '
      +' (''' + lbl_edtNome.Text + ''')');
      ibTamanho.ExecSQL;
      Commit(ibTamanho);

      ExecSELECT;
      lbl_edtNome.Clear;

    end;//if

  end;//with

end;

procedure TfrmTamanho.AlterarTamanho;

var

ConfirmaAlteracao : Integer;

begin

  with dmModule do begin

  ConfirmaAlteracao := Application.MessageBox('Confirma a altera��o','Altera��o de Registro',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

    if ConfirmaAlteracao = 6 Then begin

      ibTamanho.Close;
      ibTamanho.SQL.Clear;
      ibTamanho.SQL.Add('UPDATE TBLTAMANHO SET '
      + 'TAMANHO = ''' + lbl_edtNome.Text + ''' WHERE IDTAMANHO=''' + IntToStr(IDTamanho) + '''');
      ibTamanho.ExecSQL;
      Commit(ibTamanho);
      ExecSELECT;
      lbl_edtNome.Clear;

    end;//if

  end;//with

end;

procedure TfrmTamanho.DeletarTamanho;

var
ConfirmaExclusao : Integer;

begin

  with dmModule do begin

  ConfirmaExclusao := Application.MessageBox('Confirma Exclus�o do registro?','Exclus�o de registro',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

    if ConfirmaExclusao = 6 Then begin

      ibTamanho.Close;
      ibTamanho.SQL.Clear;
      ibTamanho.SQL.Add('DELETE FROM TBLTAMANHO WHERE IDTAMANHO=''' + IntToStr(IDTamanho) + '''');
      ibTamanho.ExecSQL;

    end;//if

    ExecSELECT;

    lbl_edtNome.Clear;

  end;//with

end;

procedure TfrmTamanho.ExibeDados;

begin

  with dmModule do begin

  IDTamanho := ibTamanho.FieldByName('IDTAMANHO').AsInteger;

    if ibTamanho.RecordCount > 0 Then begin

      lbl_edtNome.Text := ibTamanho.FieldByName('TAMANHO').AsString;

    end;//if

  end;//with

end;

procedure TfrmTamanho.FormShow(Sender: TObject);
begin

  lbl_edtNome.Clear;
  
  with dmModule do begin

    ExecSELECT;

    with dbgTamanho do begin

      if MontaColunas Then begin

      DataSource := dmModule.dtsTamanho;

        //determina as colunas a serem montadas
        Columns.Insert(0);
        Columns.Insert(1);
       // Columns.Insert(2);
      //  Columns.Insert(3);
      //  Columns.Insert(4);

        //Parametros da Coluna que exibe o C�digo da entrada no estoque
        Columns.Items[0].Title.Caption := 'C�digo';
        Columns.Items[0].FieldName     := 'IDTAMANHO';
        Columns.Items[0].Width         := 70;
        Columns.Items[0].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o vlr unitario do produto.
        Columns.Items[1].Title.Caption := 'Tamanho';
        Columns.Items[1].FieldName     := 'TAMANHO';
        Columns.Items[1].Width         := 120;
        Columns.Items[1].Alignment     := taLeftJustify;

        MontaColunas := False;

      end;//if monta colunas;

    end;//with

  end;//with

end;

procedure TfrmTamanho.FormCreate(Sender: TObject);
begin
MontaColunas := True;
end;

procedure TfrmTamanho.dbgTamanhoCellClick(Column: TColumn);
begin

  with dmModule do begin

    ExibeDados;

  end;//with

end;

procedure TfrmTamanho.ibeaIncluiVacinaClick(Sender: TObject);
begin

  with dmModule do begin

    GravaTamanho;

  end;//with

end;

procedure TfrmTamanho.ibeaAlterarClick(Sender: TObject);
begin

  with dmModule do begin

    AlterarTamanho;

  end;//with

end;

procedure TfrmTamanho.ibeaExcluirClick(Sender: TObject);
begin

  with dmModule do begin

    DeletarTamanho;

  end;//with

end;

procedure TfrmTamanho.ibeaSairClick(Sender: TObject);
begin
Close;
end;

end.
